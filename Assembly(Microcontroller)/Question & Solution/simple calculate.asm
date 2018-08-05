
.data
msg db ' VALOR A PAGAR: R$'
msg2 db '   $'  

.code

main proc
    
    ; initialize data segment
    mov ax,@data
    mov ds,ax 
    
    
     mov ah,1
    int 21h
    
    mov bl,al
    sub bl, 30h
    
    
    
    mov ah,2
    mov dl,9
    int 21h
    
    
    
    
    
    
    
    
    
    
    
    
    
    
     ; input first number that is used as data
    mov ah,1
    int 21h
    
    mov bl,al
    sub bl, 30h
    
    
    
    mov ah,2
    mov dl,9
    int 21h
    
    
    ;mov bh,al
    
    
    ; input second number that is used as loop counter
    
    
    
    mov ah,1
    int 21h
    
    
    
    
    mov cl,al
    sub cl,30h
    
    
    
    
    and dx,0
    
    @LOOP:    
    
          add dl,bl
    
    
    
    
    LOOP @LOOP
    
    
    
        mov bh,dl
        
        add bh,30h
        
        
         
        ;print newline
        
        mov ah,2
        mov dl,13
        int 21h
        mov dl,10
        int 21h
        
        
         
    
    
    
    
    
    
    
     ; input third number that is used as data
     
     
     mov ah,1
    int 21h
    
    mov bl,al
    sub bl, 30h
    
    
    
    mov ah,2
    mov dl,9
    int 21h
     
     
     
     
     
     
     
    mov ah,1
    int 21h
    
    mov bl,al
    sub bl, 30h
    
    
    
    mov ah,2
    mov dl,9
    int 21h
    
    
    ;mov bh,al
    
    
    
    
     
    
    
    
    
    
    ; input fourth number that is used as loop counter
    
    
    
    mov ah,1
    int 21h
    
    
    
    
    mov cl,al
    sub cl,30h
    
    
    
    
    and dx,0
    
    @LOOPc:    
    
          add dl,bl
    
    
    
    
    LOOP @LOOPc
    
    
    
        mov ch,dl
        
        add ch,30h
        
        
         
        ;print newline
        
        mov ah,2
        mov dl,13
        int 21h
        mov dl,10
        int 21h
    
    
    
    
    
    add bh,ch
    sub bh,30h
    
    
    
    
    
         
         
         ; print output message
        mov ah,9
        lea dx,msg 
        int 21h
        mov ah,2
        mov dl,'$'
        int 21h
        
         mov ah,9
        lea dx,msg2 
        int 21h
        
          mov ah,2
          mov dl,bh
    
          int 21h
          
          
          main endp
end main
    
    
    