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
    mov     $1, %rax
    syscall
    ret
