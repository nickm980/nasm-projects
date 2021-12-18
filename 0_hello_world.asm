%include "io.inc"

section .text

global CMAIN

CMAIN:
    PRINT_STRING "Hello world"  ; Prints the message
    ret