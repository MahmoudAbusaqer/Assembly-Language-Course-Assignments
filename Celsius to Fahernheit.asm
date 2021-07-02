name 'From-Celsius-to-Fahrenheit'

.model small

.data
    val1 db 9h
    val2 db 5h
    val3 db 32h
    
    tc db ? 
    tf db ?
    reminder db ?
    
    msg1 db "Enter your Celsius temperature: $"
    msg2 db 0ah,0dh ,"The temperature in Fahernheit: $ "
    msg3 db 0ah,0dh ,"The fraction: $ "  
    
    ;Formula (C * 9/5) + 32 = F 
.code
    ;move data to data segment 
    mov ax ,DATA
    mov ds,ax
      
    ;print msg1
    mov ah,09h
    lea dx,msg1
    int 21h 
    
    ;read tc
    mov ah,01h
    int 21h 
    
    ;store number 1 to num1
    sub al,30h  ;convert to decimal
    mov tc,al     
    
    ;print msg2
    mov ah,09h
    lea dx,msg2
    int 21h
    
    
    ;multiply & divid
    mov al,tc
    mul val1
    mov ah,00
    div val2
    add al,val3
    mov tf,al
    
    ;multiply the reminder by 2
    mov reminder,ah
    mov al,reminder
    mov bl,02h
    mul bl
    
    mov reminder,al 
    add reminder,30h  ;convert to ascii code

      
    ;print the result
    mov ah,02h
    mov dl,tf
    int 21h  
    
    ;print '.' between the result and the reminder
    mov ah,02h
    mov dl,'.'
    int 21h 

    
    ;print the reminder
    mov ah,02h
    mov dl,reminder
    int 21h
    
    
  
EXIT:
  mov ah,4ch
  int 21h 
end      

//////////////////// 
;the decimal number for the output is the right temperature in Fahrenheit 
name 'From-Celsius-to-Fahrenheit'

.model small
                         
.data
    val1 db 9h
    val2 db 5h
    val3 db 32h

    tc db ? 
    tf db ?
    reminder db ?
    
    msg1 db "Enter your Celsius temperature: $"
    msg2 db 0ah,0dh ,"The temperature in Fahernheit: $ "
    msg3 db 0ah,0dh ,"The fraction: $ "  
    
    ;Formula (C * 9/5) + 32 = F 
.code
    ;move data to data segment 
    mov ax ,DATA
    mov ds,ax
      
    ;print msg1
    mov ah,09h
    lea dx,msg1
    int 21h 
    
    ;read tc
    mov ah,01h
    int 21h 
    
    ;store number 1 to num1
    sub al,30h  ;convert to decimal
    mov tc,al     
    
    ;print msg2
    mov ah,09h
    lea dx,msg2
    int 21h
    
       
    ;multiply & divid
    mov al,tc
    mul val1
    mov ah,00
    div val2
    add al,val3
    sub al,018 ;subtract 18 in decimal to get the exact result like for 1 it is 33 
    mov tf,al
    
    ;multiply the reminder by 2
    mov reminder,ah
    mov al,reminder
    mov bl,02h
    mul bl
    
    mov reminder,al 
    add reminder,30h  ;convert to ascii code

      
    ;print the result
    mov ah,02h
    mov dl,tf
    int 21h  
    
    ;print '.' between the result and the reminder
    mov ah,02h
    mov dl,'.'
    int 21h 

    ;print the reminder
    mov ah,02h
    mov dl,reminder
    int 21h
    
    
  
EXIT:
  mov ah,4ch
  int 21h 
end           

          