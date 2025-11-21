;Write a program to ask a user to input a number between 0-9 and then print that number back.
;After accepting the input, it should be returned by printing the following string
;"The number you input is: " followed with the number input
;The second output including the number should all be on the same line printed with one interrupt 
 
message1: db "Pick a number between 0-9"
message2: db "The number you selected is: "
char: db 0x00 

start:
    mov CX, offset message2
    sub CX, offset message1
    mov AH, 0x13
    mov BX, 0
    mov ES, BX
    mov BP, offset message1
    int 0x10
    mov AH, 1
    int 0x21
    mov byte[offset char], AL
    mov CX, offset char
    sub CX, offset message2
    add CX, 1
    mov AH, 0x13
    mov BX, 0
    mov ES, BX
    mov BP, offset message2
    int 0x10