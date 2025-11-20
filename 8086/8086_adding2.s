; Program to demonstrate carry flag 8086

start:
    mov AL, 250
    add AL, 200
    clc
    mov AH, 20
    add AH, 30
    mov BX, 0xfff0
    add BX, 0x00fb