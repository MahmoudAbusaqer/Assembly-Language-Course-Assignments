name 'Division-two-digit'

.model small

.data 
    msg1 db "Enter First Number: $"
    msg2 db 0ah,0dh ,"Enter second Number: $ "
    msg3 db 0ah,0dh ,"Result of division is: $ " 
    msg4 db 0ah,0dh ,"The Reminder of division is: $ " 
    
    num1 db ?
    num2 db ?
    result db ?
    reminder db ?
     
.code 
    mov ax ,DATA;move data to data segment
    mov ds,ax
      
    ;print msg1
    mov ah,09h
    lea dx,msg1
    int 21h 
    
    ;read number 1
    mov ah,01h
    int 21h
    ;store number 1 to num1
    sub al,30h  ;convert to decimal
    mov num1,al        
    
    ;print msg2
    mov ah,09h
    lea dx,msg2
    int 21h
    
    ;read number 2
    mov ah,01h
    int 21h
    ;store number 2 to num2 
    sub al,30h  ;convert to decimal
    mov num2,al 
    
    ;division
    mov al,num1
    mov ah,00
    div num2  
     
    add al,30h  ;convert to ascii code                                   
    mov result,al
    add ah,30h  ;convert to ascii code  
    mov reminder,ah
    
    ;print msg3
    mov ah,09h
    lea dx,msg3
    int 21h
    
    ;print result
    mov ah,02h
    mov dl,result
    int 21h  
    
    ;print msg4
    mov ah,09h
    lea dx,msg4
    int 21h
    
    ;print reminder
    mov ah,02h
    mov dl,reminder
    int 21h
    
  
EXIT:
  mov ah,4ch
  int 21h 
end        