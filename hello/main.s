.global _start

.data
msg:    .ascii "hello!!!\n"
msg_length = . - msg

.text
_start:
        # write(stdout, msg, msg_length)
        mov     $1,             %rdi        # file descriptor (stdout = 1)
        mov     $msg,           %rsi        # string address
        mov     $msg_length,    %rdx        # string length
        call _write        

        # exit(0)
        mov     $0,     %rdi        # exit return value
        call    _exit
