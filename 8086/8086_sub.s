; Program to demonstrate substraction instruction

start:
    mov AL, 250
    sub AL, 200
    mov BX, 25000
    sub BX, 20000
    mov word[0x00], 25000
    sub word[0x00], BX