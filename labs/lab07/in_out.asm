;---------------   slen  -------------------
; Функция вычисления длины сообщения
slen:                     
    push    ebx             
    mov     ebx, eax        
    
nextchar:                   
    cmp     byte [eax], 0   
    jz      finished        
    inc     eax             
    jmp     nextchar        
    
finished:
    sub     eax, ebx
    pop     ebx             
    ret                     


;---------------  sprint  -------------------
; Функция печати сообщения
; входные данные: mov eax,<message>
sprint:
    push    edx
    push    ecx
    push    ebx
    push    eax
    call    slen
    
    mov     edx, eax
    pop     eax
    
    mov     ecx, eax
    mov     ebx, 1
    mov     eax, 4
    int     80h

    pop     ebx
    pop     ecx
    pop     edx
    ret


;----------------  sprintLF  ----------------
; Функция печати сообщения с переводом строки
; входные данные: mov eax,<message>
sprintLF:
    call    sprint

    push    eax
    mov     eax, 0AH
    push    eax
    mov     eax, esp
    call    sprint
    pop     eax
    pop     eax
    ret

;---------------  sread  ----------------------
; Функция считывания сообщения
; входные данные: mov eax,<buffer>, mov ebx,<N>
sread:
    push    ebx
    push    eax
   
    mov     ebx, 0
    mov     eax, 3
    int     80h

    pop     ebx
    pop     ecx
    ret
    
;------------- iprint  ---------------------
; Функция вывода на экран чисел в формате ASCII
; входные данные: mov eax,<int>
iprint:
    push    eax             
    push    ecx             
    push    edx             
    push    esi             
    mov     ecx, 0          
    
divideLoop:
    inc     ecx             
    mov     edx, 0          
    mov     esi, 10  
    idiv    esi    
    add     edx, 48  
    push    edx   
    cmp     eax, 0   
    jnz     divideLoop  

printLoop:
    dec     ecx       
    mov     eax, esp  
    call    sprint   
    pop     eax    
    cmp     ecx, 0   
    jnz     printLoop  

    pop     esi   
    pop     edx    
    pop     ecx   
    pop     eax           
    ret


;--------------- iprintLF   --------------------
; Функция вывода на экран чисел в формате ASCII
; входные данные: mov eax,<int>
iprintLF:
    call    iprint          

    push    eax             
    mov     eax, 0Ah        
    push    eax             
    mov     eax, esp       
    call    sprint          
    pop     eax             
    pop     eax             
    ret

;----------------- atoi ---------------------
; Функция преобразования ascii-код символа в целое число
; входные данные: mov eax,<адрес строки>
atoi:
    push    ebx             
    push    ecx             
    push    edx             
    push    esi             
    mov     esi, eax        ; Указатель на строку
    mov     eax, 0          ; Результат
    mov     ecx, 0          ; Индекс

.multiplyLoop:
    xor     ebx, ebx        
    mov     bl, [esi + ecx] ; Получаем текущий символ
    cmp     bl, 0           ; Проверяем конец строки
    je      .finished       ; Если конец строки, завершаем

    cmp     bl, '0' 
    jl      .finished 
    cmp     bl, '9'  
    jg      .finished 

    sub     bl, '0'         ; Преобразуем ASCII в число
    add     eax, ebx        ; Добавляем к результату
    mov     ebx, 10  
    mul     ebx             ; Умножаем на 10
    inc     ecx             ; Переходим к следующему символу
    jmp     .multiplyLoop  

.finished:
    pop     esi   
    pop     edx    
    pop     ecx  
    pop     ebx 
    ret


;------------- quit   ---------------------
; Функция завершения программы
quit:
    mov     ebx, 0      
    mov     eax, 1      
    int     80h
    ret
