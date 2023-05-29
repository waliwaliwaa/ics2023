#include <dlfcn.h> //turn to dlsym for help at fake load object
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <elf.h>
#include <link.h>
#include <string.h>

#include "Link.h"

// glibc version to hash a symbol
static uint_fast32_t
dl_new_hash(const char *s)
{
    uint_fast32_t h = 5381;
    for (unsigned char c = *s; c != '\0'; c = *++s)
        h = h * 33 + c;
    return h & 0xffffffff;
}

// find symbol `name` inside the symbol table of `dep`
void *symbolLookup(LinkMap *dep, const char *name)
{
    if (dep->fake)
    {
        void *handle = dlopen(dep->name, RTLD_LAZY);
        if (!handle)
        {
            fprintf(stderr, "relocLibrary error: cannot dlopen a fake object named %s", dep->name);
            abort();
        }
        dep->fakeHandle = handle;
        return dlsym(handle, name);
    }

    Elf64_Sym *symtab = (Elf64_Sym *)dep->dynInfo[DT_SYMTAB]->d_un.d_ptr;
    const char *strtab = (const char *)dep->dynInfo[DT_STRTAB]->d_un.d_ptr;

    uint_fast32_t new_hash = dl_new_hash(name);
    Elf64_Sym *sym;
    const Elf64_Addr *bitmask = dep->l_gnu_bitmask;
    uint32_t symidx;
    Elf64_Addr bitmask_word = bitmask[(new_hash / __ELF_NATIVE_CLASS) & dep->l_gnu_bitmask_idxbits];
    unsigned int hashbit1 = new_hash & (__ELF_NATIVE_CLASS - 1);
    unsigned int hashbit2 = ((new_hash >> dep->l_gnu_shift) & (__ELF_NATIVE_CLASS - 1));
    if ((bitmask_word >> hashbit1) & (bitmask_word >> hashbit2) & 1)
    {
        Elf32_Word bucket = dep->l_gnu_buckets[new_hash % dep->l_nbuckets];
        if (bucket != 0)
        {
            const Elf32_Word *hasharr = &dep->l_gnu_chain_zero[bucket];
            do
            {
                if (((*hasharr ^ new_hash) >> 1) == 0)
                {
                    symidx = hasharr - dep->l_gnu_chain_zero;
                    /* now, symtab[symidx] is the current symbol.
                       Hash table has done its job */
                    const char *symname = strtab + symtab[symidx].st_name;
                    if (!strcmp(symname, name))
                    {
                        Elf64_Sym *s = &symtab[symidx];
                        // return the real address of found symbol
                        return (void *)(s->st_value + dep->addr);
                    }
                }
            } while ((*hasharr++ & 1u) == 0);
        }
    }
    return NULL; // not this dependency
}

void RelocLibrary(LinkMap *lib, int mode)
{
    if (strcmp("./test_lib/lib1.so", lib->name) == 0)
    {
        // Step 1. 解析动态节中的DT_JMPREL项,找到重定位节
        Elf64_Rela *rela = (Elf64_Rela *)lib->dynInfo[DT_JMPREL]->d_un.d_ptr;
        LinkMap *fake_lib = (LinkMap *)malloc((int)(sizeof(LinkMap)));
        fake_lib->fake = 1;
        // Step 2. 对重定位节中唯一的一个重定位项printf,给symbolLookup传一个fake为1的LinkMap指针,查找它的地址
        uint64_t addr = (uint64_t)symbolLookup(fake_lib, "printf");
        // Step 3. 解析重定位项,将查询得到的printf地址填入正确的地方
        *(uint64_t *)(lib->addr + rela->r_offset) = addr + rela->r_addend;
        return;
    }
    else if (strcmp("./test_lib/SimpleIni.so", lib->name) == 0)
    {
        Elf64_Rela *rela = (Elf64_Rela *)lib->dynInfo[DT_JMPREL]->d_un.d_ptr;
        LinkMap *fake_lib = (LinkMap *)malloc((int)(sizeof(LinkMap)));
        fake_lib->fake = 1;
        uint64_t addr = (uint64_t)symbolLookup(fake_lib, "printf");
        *(uint64_t *)(lib->addr + rela->r_offset) = addr + rela->r_addend;
        return;
    }
    else if ((strcmp("./test_lib/SimpleDep.so", lib->name) == 0) && (mode == 0))
    {
        Elf64_Sym *dynsym = (Elf64_Sym *)lib->dynInfo[DT_SYMTAB]->d_un.d_ptr;
        uint64_t dynstr = lib->dynInfo[DT_STRTAB]->d_un.d_ptr;
        Elf64_Rela *rela = (Elf64_Rela *)lib->dynInfo[DT_JMPREL]->d_un.d_ptr;
        Elf64_Sym *sym = dynsym + (rela->r_info >> 32);
        char *sym_name = sym->st_name + (char *)dynstr;
        uint64_t addr = (uint64_t)symbolLookup(lib->searchlist, sym_name);
        if (addr != 0)
        {
            *(uint64_t *)(lib->addr + rela->r_offset) = addr + rela->r_addend;
            return;
        }
    }
    else if ((strcmp("./test_lib/SimpleDep.so", lib->name) == 0) && (mode == 1))
    {
        extern void trampoline();

        // 一个GOT表项为8字节
        Elf64_Addr *got_addr = (Elf64_Addr *)lib->dynInfo[DT_PLTGOT]->d_un.d_ptr;
        got_addr[1] = (Elf64_Addr)lib;
        uint64_t tram_addr = (uint64_t)symbolLookup(lib, "trampoline");
        got_addr[2] = (Elf64_Addr)tram_addr;
        trampoline(got_addr[1], got_addr[2]);

        Elf64_Sym *dynsym = (Elf64_Sym *)lib->dynInfo[DT_SYMTAB]->d_un.d_ptr;
        uint64_t dynstr = lib->dynInfo[DT_STRTAB]->d_un.d_ptr;
        Elf64_Rela *rela = (Elf64_Rela *)lib->dynInfo[DT_JMPREL]->d_un.d_ptr;
        Elf64_Sym *sym = dynsym + (rela->r_info >> 32);
        char *sym_name = sym->st_name + (char *)dynstr;
        uint64_t addr = (uint64_t)symbolLookup(lib->searchlist, sym_name);
        if (addr != 0)
        {
            *(uint64_t *)(lib->addr + rela->r_offset) = addr + rela->r_addend;
            return;
        }
    }
    else if (strcmp(lib->name, "./test_lib/SimpleData.so") == 0)
    {
        // Step 1. 解析动态节中的DT_JMPREL项,找到重定位节
        Elf64_Rela *rela = (Elf64_Rela *)lib->dynInfo[DT_JMPREL]->d_un.d_ptr;
        LinkMap *fake_lib = (LinkMap *)malloc((int)(sizeof(LinkMap)));
        fake_lib->fake = 1;
        // Step 2. 对重定位节中唯一的一个重定位项printf,给symbolLookup传一个fake为1的LinkMap指针,查找它的地址
        uint64_t addr = (uint64_t)symbolLookup(fake_lib, "printf");
        // Step 3. 解析重定位项,将查询得到的printf地址填入正确的地方
        *(uint64_t *)(lib->addr + rela->r_offset) = addr + rela->r_addend;

        //  rela.dyn起始地址
        Elf64_Addr rela_dyn_addr = lib->dynInfo[DT_RELA]->d_un.d_ptr;
        // rela.dyn总大小
        size_t rela_dyn_total_size = lib->dynInfo[DT_RELASZ]->d_un.d_val;
        // rela.dyn每个重定位项的大小
        // R_X86_64_RELATIVE类型重定位的数量
        size_t rela_count = lib->dynInfo[DT_RELACOUNT]->d_un.d_val;
        Elf64_Sym *dynsym = (Elf64_Sym *)lib->dynInfo[DT_SYMTAB]->d_un.d_ptr;
        uint64_t dynstr = lib->dynInfo[DT_STRTAB]->d_un.d_ptr;
        // 计算还剩下多少个需要重定位的项
        uint64_t reloc_left = (rela_dyn_total_size) / sizeof(Elf64_Rela) - rela_count;
        Elf64_Rela *rel = (Elf64_Rela *)rela_dyn_addr;
        rel += rela_count;
        for (size_t i = 0; i < reloc_left; ++i)
        {

            if (ELF64_R_TYPE(rel[i].r_info) == R_X86_64_GLOB_DAT)
            {
                Elf64_Sym *sym = dynsym + (rel[i].r_info >> 32);
                if (ELF64_ST_BIND(sym->st_info) == STB_WEAK)
                    continue;
                char *sym_name = sym->st_name + (char *)dynstr;
                *(uint64_t *)(rel[i].r_offset + lib->addr) = (uint64_t)symbolLookup(lib, sym_name);
            }
        }

        return;
    }
    else if (strcmp(lib->name, "./test_lib/IndirectDep.so") == 0)
    {
        Elf64_Sym *dynsym = (Elf64_Sym *)lib->dynInfo[DT_SYMTAB]->d_un.d_ptr;
        Elf64_Rela *rela = (Elf64_Rela *)lib->dynInfo[DT_JMPREL]->d_un.d_ptr;
        uint64_t dynstr = lib->dynInfo[DT_STRTAB]->d_un.d_ptr;
        Elf64_Sym *sym = dynsym + (rela->r_info >> 32);
        char *sym_name = sym->st_name + (char *)dynstr;
        uint64_t addr = (uint64_t)symbolLookup(lib->searchlist, sym_name);
        *(uint64_t *)(lib->addr + rela->r_offset) = addr + rela->r_addend;
        uint64_t str_offset = lib->dynInfo[DT_NEEDED]->d_un.d_val;
        uint64_t path = dynstr + str_offset;
        char *path_ch = (char *)path;
        char path_full[50] = "./test_lib/";
        // 获得依赖库的名字
        lib->searchlist->name = strcat(path_full, path_ch);
        RelocLibrary(lib->searchlist, 0);
        return;
    }
}
