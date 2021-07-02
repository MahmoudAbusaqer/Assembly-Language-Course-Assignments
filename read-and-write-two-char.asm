 name 'Q2-read-and-write-two-char'

.model small

.stack 


.data  
   char1 db ?
   char2 db ?   
   
    str1 db "Enter your initial name (only first char)",'$'        
    str2 db 0ah,0dh,"Enter your family name (only first char)",'$'
    str3 db 0ah,0dh,"Hello $"  
 
 
.code 
   mov ax,DATA
   mov ds,ax  
   
   ;print str
   mov ah,09h  
   lea dx,str1
   int 21h
   
   
   ;read char1
   mov ah,01h
   int 21h   
   mov char1,al
   ;int 21h
    
   ;print str2 
    mov ah,09h  
   lea dx,str2
   int 21h
  
   ;read char2
   mov ah,01h
   int 21h 
   mov char2,al     
   
   ;print str3      
   mov ah,09h  
   lea dx,str3
   int 21h
        
   ;print char1 & char2
   mov ah,02h
   mov dl,char1     
   int 21h
   mov dl,char2
   int 21h 
    

EXIT:
   mov ah,4ch
   int 21h
   
end 