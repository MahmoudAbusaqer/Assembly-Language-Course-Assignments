name 'Ass2-Q2'

.model small

.data 
    msg1 db "Enter any number from 0 to 9: $"
    msg2 db 0ah,0dh ,"Press any key to exit.. $"
    error db 0ah,0dh, "ERROR: program terminates $"
    spase db 0ah,0dh, "$"
    
    input db ?
    num db 0
     
.code 
    mov ax ,DATA;move data to data segment
    mov ds,ax
      
    ;print msg1
    mov ah,09h
    lea dx,msg1
    int 21h
   
    mov ah, 01h
    int 21h
    sub al,30h
    mov cl,al
    
    ;if start
    cmp cl,00h ;0
    jb printError
    cmp cl,09h ;9
    ja printError
    ;print new line
    mov ah,09h
    lea dx,spase
    int 21h   
    ;start of loop to print *
    top:
    cmp num,cl
    je pressExit
    mov ah,02h
    mov dl,'*'
    int 21h
    inc num
    jmp top 
    
    printError:
    ;print error
    mov ah,09h
    lea dx,error
    int 21h 
    
    pressExit:
    ;print msg2
    mov ah,09h
    lea dx,msg2
    int 21h
    ;key pressed from the keyboard
    mov ah,0
    int 16h
    ;print the pressed key
    mov ah,0eh
    int 10h   
     
EXIT:
  mov ah,4ch
  int 21h 
end        