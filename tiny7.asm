# No difference for x86_64?
bits 64
global _start
section .text
_start:
    xor eax, eax
    inc eax
    mov bl, 42
    int 0x80
