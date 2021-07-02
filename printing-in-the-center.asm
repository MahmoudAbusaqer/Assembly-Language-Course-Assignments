name 'Q5-printing-in-the-center'    

.model small

.stack 

.data  
    str1 db "aaaa$"
    str2 db "aaa$"
    str3 db "aa$" 
;0ah,0dh,    
    newLine db 0ah,0dh," $"
.code
    mov ax,DATA
    mov ds,ax 
    
    ;print horizontal tab 
    mov ah,02h
    mov dl,09h
    int 21h
    mov dl,09h
    int 21h
    mov dl,09h
    int 21h
    mov dl,09h
    int 21h
    
    ;print the first string
    mov ah,09h
    lea dx,str1
    int 21h
    
    ;print new line
    mov ah,09h
    lea dx,newLine
    int 21h
    
    ;print horizontal tab 
    mov ah,02h
    mov dl,09h
    int 21h
    mov dl,09h
    int 21h
    mov dl,09h
    int 21h
    mov dl,09h
    int 21h
    
    ;print the second string
    mov ah,09h
    lea dx,str2
    int 21h
    
    ;print new line
    mov ah,09h
    lea dx,newLine
    int 21h
    
    ;print horizontal tab 
    mov ah,02h
    mov dl,09h
    int 21h
    mov dl,09h
    int 21h
    mov dl,09h
    int 21h
    mov dl,09h
    int 21h
    
    ;print the third string
    mov ah,09h
    lea dx,str3
    int 21h
    
    ;print new line
    mov ah,09h
    lea dx,newLine
    int 21h
    
    ;print horizontal tab 
    mov ah,02h
    mov dl,09h
    int 21h
    mov dl,09h
    int 21h
    mov dl,09h
    int 21h
    mov dl,09h
    int 21h
    
    ;print the third string
    mov ah,02h
    mov dl,'a'
    int 21h
  
 
    
EXIT:
   mov ah,4ch
   int 21h
   
end   
