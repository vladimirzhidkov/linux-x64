.global _exit

.text

/*
Input:
    rdi - exit return value
 */
_exit:
        mov     $60, %rax       # __x64_sys_exit
        syscall                 # call kernel (64bit interruption)
