name 'Q3-addition'

.model small

.data 
    val1 db ?
    val2 db 23
    str1 db 0ah,0dh ,"val1= (-al+bl)-val2=> $ "

.code 
    mov ax ,DATA
    mov ds,ax
      
    ;calculation
    mov al,17
    mov bl,29
    sub bl,al
    sub bl,val2
    mov val1,bl
  
    ;print 
    mov ah,02h
    mov dl,val1 
    int 21h  
  
EXIT:
  mov ah,4ch
  int 21h 
end        