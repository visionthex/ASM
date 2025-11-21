; Program to deonstrate int 0x21 sub function 0x01
number: db 0x00

start:
    mov AH, 0x01
    int 0x21
    mov byte[offset number], AL
    