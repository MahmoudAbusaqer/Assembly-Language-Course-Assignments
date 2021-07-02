name 'multiply-two-digit'

.model small

.data 
    msg1 db "Enter First Number: $"
    msg2 db 0ah,0dh ,"Enter second Number: $ "
    msg3 db 0ah,0dh ,"Result of multiply is: $ "
    
    num1 db ?
    num2 db ?
    result db ?
     
.code 
    mov ax ,DATA;move data to data segment
    mov ds,ax
      
    ;print msg1
    mov ah,09h
    lea dx,msg1
    int 21h 
    
    ;read character 1
    mov ah,01h
    int 21h
    ;store char to num1
    mov num1,al        
    
    ;print msg2
    mov ah,09h
    lea dx,msg2
    int 21h
    
    ;read character2
    mov ah,01h
    int 21h
    ;store char to num2
    mov num2,al 
    
    ;multiply
    mov al,num1 
    sub al,30h  ;convert to decimal
    mov bl,num2  
    sub bl,30h  ;convert to decimal
    
    mul bl  
    
    add al,30h ;convert to ascii code
    
    mov result,al
    
    ;print msg3
    mov ah,09h
    lea dx,msg3
    int 21h
    
    ;print result
    mov ah,02h
    mov dl,result
    int 21h
    
  
EXIT:
  mov ah,4ch
  int 21h 
end        