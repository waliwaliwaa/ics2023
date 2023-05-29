# PLT trampoline for lazy binding
    .text
    .globl trampoline
    .hidden trampoline
    .type trampoline, @function
    .align 16

trampoline:

# Your code here

    #push   %rax                                                                                                                        
    #push   %rcx                                                                                                                       
    #push   %rdx                                                                                                                       
    #mov    0x10(%rsp),%rdx                                                                                                            
    #mov    0xc(%rsp),%rax                                                                                                              
    #call runtimeResolve                                                                                                
    #pop    %rdx                                                                                                                       
    #mov    (%rsp),%rcx                                                                                                                 
    #mov    %rax,(%rsp)                                                                                                               
    #mov    0x4(%rsp),%rax                                                                                                              
    #ret    $0xc

    push %rbp
    call runtimeResolve
    pop %rbp
    ret
