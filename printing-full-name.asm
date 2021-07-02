name 'Q4-printing-full-name'  

.model small


.stack  

   

.data        
    str1 db "Mahmoud$"
    str2 db 0ah,"M.K.$"
    str3 db 0ah,"Abusaqer$"

.code          
    mov ax, seg str1
    mov ds,ax   
    
    mov ah, 09h
    lea dx, str1
    int 21h    
    
    mov ax, seg str2
    mov ds,ax   
    
    mov ah, 09h
    lea dx, str2
    int 21h
    
    mov ax, seg str3
    mov ds,ax   
    
    mov ah, 09h
    lea dx, str3
    int 21h


EXIT:
   mov ah, 4ch
   int 21h

end