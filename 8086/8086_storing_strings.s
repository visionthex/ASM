; Write a program to store the string "Don't Print This. Print This."
; starting at 0x20000 the program should then pring out only the "Print This."
; portion of the string

set 0x20000
string: db "Don't Print This. Print This."

start:
    mov AH, 0x13
    mov CX, 11
    mov BX, 0x20000
    mov ES, BX
    mov BP, 18
    int 0x10