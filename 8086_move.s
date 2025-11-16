; Write a program that sets the registers as the following: 
; AX=0ff0, BX=f00f, CX=0ff0, DX=f00f. 
; The program can only use an immediate (hard coded number) once in the code. 

start:
    mov AX, 0x0ff0
    mov BX, 0xf00f
    mov CX, AX
    mov DX, BX