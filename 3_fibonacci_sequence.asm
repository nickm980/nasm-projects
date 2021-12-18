%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp    ; for correct debugging
    mov edx, 1
    call fibonacci_sequence
    
    ret
    
fibonacci_sequence:
    PRINT_STRING "number"
    INC edx ;   Loop counter
    
    ;eax - orignal. ecx - result.
    mov ecx, 1
    mul ecx    
   
    mov ecx, eax

    cmp eax, 10
    
    JNE fibonacci_sequence

    PRINT_STRING "b"
    ret