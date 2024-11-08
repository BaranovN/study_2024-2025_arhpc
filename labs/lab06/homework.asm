%include 'in_out.asm'

SECTION .data
msg: DB 'Введите x: ',0
rem: DB 'Результат: ',0

SECTION .bss
rez: RESB 80 
x: RESB 80 

SECTION .text
GLOBAL _start

_start:
    mov eax, msg
    call sprintLF

    mov ecx, x
    mov edx, 80
    call sread

    mov eax, x
    call atoi

    add eax, 2        

    mov ebx, eax      
    mul ebx           

    mov [rez], eax
    
    mov eax, rem
    call sprintLF

    mov eax, [rez]
    call iprintLF

    call quit

