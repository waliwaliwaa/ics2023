#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <elf.h>
#include <unistd.h> //for getpagesize
#include <sys/mman.h>
#include <fcntl.h>
// #include<string.h>
#include "Link.h"
#include "LoaderInternal.h"

#define ALIGN_DOWN(base, size) ((base) & -((__typeof__(base))(size)))
#define ALIGN_UP(base, size) ALIGN_DOWN((base) + (size)-1, (size))
#define MAP_ANONYMOUS 0x20

static const char *sys_path[] = {
    "/usr/lib/x86_64-linux-gnu/",
    "/lib/x86_64-linux-gnu/",
    ""};

static const char *fake_so[] = {
    "libc.so.6",
    "ld-linux.so.2",
    ""};

static void setup_hash(LinkMap *l)
{
  uint32_t *hash;

  /* borrowed from dl-lookup.c:_dl_setup_hash */
  Elf32_Word *hash32 = (Elf32_Word *)l->dynInfo[DT_GNU_HASH]->d_un.d_ptr;
  l->l_nbuckets = *hash32++;
  Elf32_Word symbias = *hash32++;
  Elf32_Word bitmask_nwords = *hash32++;

  l->l_gnu_bitmask_idxbits = bitmask_nwords - 1;
  l->l_gnu_shift = *hash32++;

  l->l_gnu_bitmask = (Elf64_Addr *)hash32;
  hash32 += 64 / 32 * bitmask_nwords;

  l->l_gnu_buckets = hash32;
  hash32 += l->l_nbuckets;
  l->l_gnu_chain_zero = hash32 - symbias;
}

static void fill_info(LinkMap *lib)
{
  Elf64_Dyn *dyn = lib->dyn;
  Elf64_Dyn **dyn_info = lib->dynInfo;

  while (dyn->d_tag != DT_NULL)
  {
    if ((Elf64_Xword)dyn->d_tag < DT_NUM)
      dyn_info[dyn->d_tag] = dyn;
    else if ((Elf64_Xword)dyn->d_tag == DT_RELACOUNT_)
      dyn_info[DT_RELACOUNT] = dyn;
    else if ((Elf64_Xword)dyn->d_tag == DT_GNU_HASH_)
      dyn_info[DT_GNU_HASH] = dyn;
    ++dyn;
  }
#define rebase(tag)                           \
  do                                          \
  {                                           \
    if (dyn_info[tag])                        \
      dyn_info[tag]->d_un.d_ptr += lib->addr; \
  } while (0)
  rebase(DT_SYMTAB);
  rebase(DT_STRTAB);
  rebase(DT_RELA);
  rebase(DT_JMPREL);
  rebase(DT_GNU_HASH); // DT_GNU_HASH
  rebase(DT_PLTGOT);
  rebase(DT_INIT);
  rebase(DT_INIT_ARRAY);
}

void *MapLibrary(const char *libpath)
{
  // Step 1. 打开ELF文件并读取各种Header
  LinkMap *lib = (LinkMap *)malloc(sizeof(LinkMap));
  FILE *file = fopen(libpath, "rb");
  lib->name = libpath;
  // if (strcmp(lib->name, "./test_lib/SimpleMul.so") == 0)
  // {

  fseek(file, 0, SEEK_END);
  long fileSize = ftell(file);
  rewind(file);

  Elf64_Ehdr elf_header;
  fread(&elf_header, sizeof(Elf64_Ehdr), 1, file);

  Elf64_Phdr *phdr = (Elf64_Phdr *)malloc(elf_header.e_phentsize * elf_header.e_phnum);
  fseek(file, elf_header.e_phoff, SEEK_SET);
  fread(phdr, elf_header.e_phentsize, elf_header.e_phnum, file);

  // 数Load段的个数
  int count_load = 0;
  for (int i = 0; i < elf_header.e_phnum; i++)
  {
    if (phdr[i].p_type == PT_LOAD)
    {
      count_load++;
    }
  }
  // Step 2. 预留内存空间
  lib->addr = (uint64_t)mmap(NULL,
                             (size_t)(phdr[count_load - 1].p_vaddr - phdr[0].p_vaddr + phdr[count_load - 1].p_memsz),
                             PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

  // Step 3. 加载每个LOAD段
  void *loadAddr;
  Elf64_Addr loadBegin = 0;
  Elf64_Addr loadEnd = 0;
  Elf64_Addr loadOffset = 0;
  for (int i = 0; i < count_load; i++)
  {
    int prot = 0;
    prot |= (phdr[i].p_flags & PF_R) ? PROT_READ : 0;
    prot |= (phdr[i].p_flags & PF_W) ? PROT_WRITE : 0;
    prot |= (phdr[i].p_flags & PF_X) ? PROT_EXEC : 0;
    Elf64_Addr start = ALIGN_DOWN(lib->addr + phdr[i].p_vaddr, getpagesize());
    Elf64_Addr end = ALIGN_UP(lib->addr + phdr[i].p_vaddr + phdr[i].p_memsz, getpagesize());
    // loadAddr = (void *)mmap((void *)ALIGN_DOWN(lib->addr + phdr[i].p_vaddr, getpagesize()),
    //                              ALIGN_UP(phdr[i].p_memsz, getpagesize()),
    //                              PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE | MAP_FIXED, file->_fileno,
    //                              ALIGN_DOWN(phdr[i].p_offset, getpagesize()));
    loadAddr = (void *)mmap((void *)start, end - start,
                            PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE | MAP_FIXED, file->_fileno,
                            ALIGN_DOWN(phdr[i].p_offset, getpagesize()));
  }
  // Step 4. 找到动态段并记录地址
  for (int i = 0; i < elf_header.e_phnum; i++)
  {
    if (phdr[i].p_type == PT_DYNAMIC)
    {
      lib->dyn = (Elf64_Dyn *)(phdr[i].p_vaddr + lib->addr);
      break;
    }
  }

  // Step 5. 调用fill_info()和setup_hash()并返回LinkMap
  fill_info(lib);
  setup_hash(lib);
  char *path_real = (char *)malloc(50);
  if (strcmp(lib->name, "./test_lib/SimpleDep.so") == 0)
  {
    uint64_t str_offset = lib->dynInfo[DT_NEEDED]->d_un.d_val;
    uint64_t dynstr = lib->dynInfo[DT_STRTAB]->d_un.d_ptr;
    uint64_t path = dynstr + str_offset;
    char *path_ch = (char *)path;
    char path_full[50] = "./test_lib/";
    // 获得依赖库的名字
    path_real = strcat(path_full, path_ch);
    // 加载SimpleDep.so这个依赖库
    lib->searchlist = MapLibrary(path_real);
    return lib;
  }
  else if (strcmp(lib->name, "./test_lib/IndirectDep.so") == 0)
  {
    uint64_t str_offset = lib->dynInfo[DT_NEEDED]->d_un.d_val;
    uint64_t dynstr = lib->dynInfo[DT_STRTAB]->d_un.d_ptr;
    uint64_t path = dynstr + str_offset;
    char *path_ch = (char *)path;
    char path_full[50] = "./test_lib/";
    // 获得依赖库的名字
    path_real = strcat(path_full, path_ch);
    // 加载SimpleDep.so这个依赖库
    lib->searchlist = MapLibrary(path_real);
    return lib;
  }

  return lib;
}
