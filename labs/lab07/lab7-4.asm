%include 'in_out.asm'

SECTION .data
   msg1: DB 'Введите x: ',0h
   msg2: DB 'Введите a: ',0h
   ans: DB 'Результат: ',0h

SECTION .bss
   x: RESB 80
   a: RESB 80
   res: RESB 80

SECTION .text
   GLOBAL _start

_start:
   mov  eax, msg1
   call sprint
   mov ecx, x
   mov  edx, 80
   call sread

   mov eax, x
   call atoi
   mov  [x], eax

   mov  eax, msg2
   call sprint
   mov ecx, a
   mov edx, 80
   call sread

   mov eax, a
   call atoi
   mov [a], eax

   cmp eax, [x]
   jg A

   mov ecx, [x]
   sub ecx, [a]
   mov eax, ecx
   add ecx, eax

   xor edx, edx
   mov eax, ecx
   mov ebx, 10
   div ebx
   mov [res], eax
   jmp fin
A:
   mov ecx, 15
   mov [res], ecx
fin:
   mov eax, ans
   call sprint
   mov eax, [res]
   call iprintLF
   call quit

