name 'print-character'               

mov ah, 06h      

mov dl, 065
int 21h          

mov dl, 20h
int 21h
        
          
mov dl, 62h
int 21h