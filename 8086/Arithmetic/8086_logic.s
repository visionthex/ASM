; Program to demonstrate bitwise boolean logic

start:
mov AL, 0b1011
mov AH, 0b1101
and AL, AH           ; AL & AH with result into AL

mov AL, 0b1001
mov AH, 0b0101
or AL, AH            ; AL || AH with result into AL

mov AL, 0b00001001   ; !AL with result into AL
not AL

; XOR Truth Table
; 0 xor 0 = 0
; 1 xor 0 = 1
; 0 xor 1 = 1
; 1 xor 1 = 0

mov AL, 0b1001
mov AH, 0b0101
xor AL, AH            ; AL xor AH with result into AL

xor AL, AL            ; xor a register with itself to zero it out
mov AL, 0             ; this is the equivalent of xor AL, AL however xor is more efficient