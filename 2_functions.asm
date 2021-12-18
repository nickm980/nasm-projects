%include "io.inc"

section .text
global CMAIN

CMAIN:
    mov ebp, esp; for correct debugging
    call function
    ret

function:
    PRINT_STRING "Function was called"
    ret ; Must call ret