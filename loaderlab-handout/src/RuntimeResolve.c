#include <elf.h>
#include <stdlib.h>
#include <stdio.h>

#include "Link.h"
#include "LoaderInternal.h"

Elf64_Addr __attribute__((visibility("hidden"))) // this makes trampoline to call it w/o plt
runtimeResolve(LinkMap *lib, Elf64_Word reloc_entry)
{
    printf("Resolving address for entry %u\n", reloc_entry);
    Elf64_Sym *dynsym = (Elf64_Sym *)lib->dynInfo[DT_SYMTAB]->d_un.d_ptr;
    uint64_t dynstr = lib->dynInfo[DT_STRTAB]->d_un.d_ptr;
    Elf64_Rela *rela = (Elf64_Rela *)lib->dynInfo[DT_JMPREL]->d_un.d_ptr;
    Elf64_Sym *sym = dynsym + (rela->r_info >> 32);
    char *sym_name = sym->st_name + (char *)dynstr;
    uint64_t addr = (uint64_t)symbolLookup(lib->searchlist, sym_name);
    return addr;
}
