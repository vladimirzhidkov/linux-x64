.global _print

/*
_print(rdi, rsi)
Print a string to stdout
Input:
    rdi - string address
    rsi - string length
*/
_print:
    mov     %rsi,   %rdx        # string length
    mov     %rdi,   %rsi        # string address
    mov     $1,     %rdi        # file descriptor (stdout = 1)
    mov     $1,     %rax        # __x64_sys_write (rdi - fd, rsi - string addr, rdx - length)
    syscall                     # call kernel (64bit interruption)
    ret
