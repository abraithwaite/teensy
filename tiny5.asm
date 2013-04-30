bits 64
global _start
extern _exit
section .text
_start:
    push dword 42
    call _exit
