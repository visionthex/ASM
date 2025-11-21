; Algorithm for div instruction on 8086
; --------------------------------------------------
; When we're dividing by a byte do the following:
; AL = AX / operand
; AH = remainder
; When we're dividing by a word
; AX = DX AX / operand
; DX = remainder
; --------------------------------------------------

; Program to demonstrate div instruction on 8086
start:
mov AX, 0115
mov BL, 10
div BL    
mov AX, 0xabcd
mov DX, 0xa
mov BX, 0xabc3
div BX