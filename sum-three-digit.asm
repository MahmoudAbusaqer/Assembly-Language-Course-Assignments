name 'Q1-sum-three-digit'

.model small  

.stack

.data
    num1 db ? 
    num2 db ?
    num3 db ? 
    sum db ?
    
    str1 db "Enter First Course Grade: $"
    str2 db 0ah,0dh,"Enter Secend Course Grade: $" 
    str3 db 0ah,0dh,"Enter Third Course Grade: $"
    str4 db 0ah,0dh,"Sum: $"
    
    
.code        
    ;mov dara to ds        
    mov ax,DATA
    mov ds,ax      
         
    ;print str1     
    mov ah,09h
    lea dx,str1
    int 21h
       
     ;read num1
     mov ah,01h
     int 21h   
     
     sub al,30h
     mov num1,al
     
     ;print str2
     mov ah,09h
     lea dx,str2
     int 21h
     
     ;read num2
     mov ah,01h
     int 21h
     
     sub al,30h
     mov num2,al
     
     ;print str3
     mov ah,09h
     lea dx,str3
     int 21h
     
     ;read num3
     mov ah,01h
     int 21h
     
     sub al,30h
     mov num3,al
     
     ;print str4
     mov ah,09h
     lea dx,str4
     int 21h
     
     ;sum
     mov al,num1
     add al,num2
     add al,num3 

     add al,30h

     mov sum,al
     
     ;print result
     mov ah,02h
     mov dl,sum
     int 21h



EXIT:
    mov ah,4ch
    int 21h
end