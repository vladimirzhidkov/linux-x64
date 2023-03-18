.global _write

.text
/*
Writes a string to the specified file

Input:
    rdi - file descriptor (stdout = 1)
    rsi - string address
    rdx - string length
 */
_write:
    mov     $1, %rax        # __x64_sys_write
    syscall                 # call kernel (64bit interruption)
    ret
