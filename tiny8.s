# tiny.s
.globl _start
.text
_start:
        xorl    %eax, %eax
        incl    %eax
        movb    $42, %bl
        int     $0x80
