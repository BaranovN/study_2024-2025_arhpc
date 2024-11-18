%include 'in_out.asm'

section .data
    msg1 db 'Наименьшее значение: ', 0
    A dd 54
    B dd 62
    C dd 87
section .bss
    min resb 10
section .text
    global _start
_start:
    mov eax, [A]
    mov [min], eax
_B:
    mov eax, [min]
    cmp eax, [B]
    jg min_b
fin:
    ; Сравниваем min с C
    mov eax, [min]
    cmp eax, [C]
    jg min_c
_result:
    mov eax, msg1
    call sprint
    mov eax, [min]
    call iprintLF
    call quit
min_b:
    mov eax, [B]
    mov [min], eax
    jmp fin

min_c:
    mov eax, [C]
    mov [min], eax
    jmp _result
