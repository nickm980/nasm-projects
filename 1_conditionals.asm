%include "io.inc"

section .data   ; Define constant variables
    msg db "Hello world", 0

section .text

global CMAIN

CMAIN:
    mov ebp, esp    ; for correct debugging
    mov eax, 0
    
    cmp eax, 0  ; First compare
    JE is_equal ; Then Jump if it is Equal. JE opcode. The operand is where to jump to
    
    is_equal:
        PRINT_STRING msg  
        
    cmp eax, 1
    JE is_not_equal
        
    is_not_equal:   ; Will not print because 0 is not equal to 1
        PRINT_STRING msg
    
    
    ret