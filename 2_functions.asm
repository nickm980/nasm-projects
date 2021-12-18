%include "io.inc"

section .text
global CMAIN

CMAIN:
    call function
    ret

function:
    PRINT_STRING "Function was called"
    ret ; Must call ret