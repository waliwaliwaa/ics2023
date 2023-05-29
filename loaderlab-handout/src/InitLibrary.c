#include <stdlib.h>
#include <stdio.h>
#include <elf.h>
#include <stdint.h>

#include "Link.h"
#include "LoaderInternal.h"

void InitLibrary(LinkMap *l)
{
    // if (strcmp("./test_lib/SimpleIni.so", l->name) == 0)
    //{
    //   初始化函数地址
    Elf64_Addr func_init = l->dynInfo[DT_INIT]->d_un.d_ptr;
    // rela.dyn起始地址
    Elf64_Addr rela_dyn_addr = l->dynInfo[DT_RELA]->d_un.d_ptr;
    // rela.dyn总大小
    size_t rela_dyn_total_size = l->dynInfo[DT_RELASZ]->d_un.d_val;
    // rela.dyn每个重定位项的大小
    size_t rela_dyn_size = l->dynInfo[DT_RELAENT]->d_un.d_val;
    // R_X86_64_RELATIVE类型重定位的数量
    size_t rela_count = l->dynInfo[DT_RELACOUNT]->d_un.d_val;
    for (size_t i = 0; i < rela_count; ++i)
    {
        Elf64_Rela *rel = (Elf64_Rela *)rela_dyn_addr /* + i * rela_dyn_size*/;
        if (ELF64_R_TYPE(rel[i].r_info) == R_X86_64_RELATIVE)
        {
            *(uint64_t *)(rel[i].r_offset + l->addr) = (uint64_t)l->addr + rel[i].r_addend;
        }
    }

    void (*init)(void) = (void (*)(void))l->dynInfo[DT_INIT]->d_un.d_ptr;
    init();

    void **init_array = (void *)l->dynInfo[DT_INIT_ARRAY]->d_un.d_ptr;
    size_t init_arraysz = l->dynInfo[DT_INIT_ARRAYSZ]->d_un.d_val;
    size_t size = sizeof(void *);
    for (size_t i = 0; i < init_arraysz / sizeof(void *); i++)
    {
        void (*f)(void) = init_array[i];
        f();
    }
}
