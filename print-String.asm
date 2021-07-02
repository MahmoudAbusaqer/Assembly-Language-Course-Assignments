.model small


.stack  

   

.data        
    str db "Hello" , ' ', "World" , '$'


.code          
    mov ax, seg str
    mov ds,ax   
    
    mov ah, 09h
    lea dx, str
    int 21h


EXIT:
   mov ah, 4ch
   int 21h

end