name 'read-character'   

.model small  

.stack

.data 
    var db ?  
    var1 db ?

.code     
    mov ah, 01h
    int 21h
    mov var, al
    
    int 21h
    mov var1,al
    
    mov ah,02h
    mov dl, var
    int 21h    
                
    mov dl,var1
    int 21h            

EXIT:
    mov al,4ch
    int 21h

end