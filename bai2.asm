; multi-segment executable file template.



code segment
start:
; set segment registers:
    MOV al,01h
    INT 21h
    
    cmp al,'y'
    je THEN
    cmp al,'Y'
    je THEN
    jmp ELSE
    
    THEN:
        mov dl,al
        mov ah,01h
        int 21h
       
    ELSE:
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
