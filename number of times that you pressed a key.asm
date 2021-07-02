name 'Ass2-Q1'

.model small

.data 
    msg1 db "Enter any key: $"
    msg2 db 0ah,0dh ,"The number of times that you pressed the key is: $ "
    
    ;input db ?
    num db 0
     
.code 
    mov ax ,DATA;move data to data segment
    mov ds,ax
      
    ;print msg1
    mov ah,09h
    lea dx,msg1
    int 21h
    
    ;start the count
    mov cl, num 
    
    ;start of a loop   
    top:
    ;Keyboard Services 
    mov ah,0
    int 16h
    ;check if the input = Enter key     
    cmp al,0Dh
    je next
    ;print the key pressed
    mov ah,0eh
    int 10h
    add cl,1
    jne top
    next:
    ;print msg2
    mov ah,09h
    lea dx,msg2
    int 21h
    ;print the number of key pressed
    add cl, 30h
    mov ah,02h
    mov dl,cl
    int 21h
    
  
EXIT:
  mov ah,4ch
  int 21h 
end        