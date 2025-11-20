; Unsigned Vs. Signed Numbers in Binary
; -----------------------------------------------------------------------------------------------
; Unsigned Byte Range = 0 -> 255 (0x00 -> 0xff)
; Signed Byte Range = -128 -> 0 -> 127 (0x00 -> 0xff)
; Signed Byte Range Positive Side: 0 -> 127 (0x00 -> 0x7F)
; Signed Byte Range Negative Side: -128 -> -1 (0x80 -> 0xff)
; Unsigned Word Range = 0 -> 63,535 (0x0000 -> 0xffff)
; Signed Word Range =  -32,768 -> 0 -> 32,767 (0x0000 -> 0xffff)
; Signed Word Range Positive Side: 0 -> 32,767 (0x0000 -> 0x7fff)
; Signed Word Range Positive Side: -32,768 -> -1 (0x7fff -> 0xffff)
; -----------------------------------------------------------------------------------------------

;Program to demonstrate subtraction with borrow flag

start:
    mov AL, -128
    mov AL, 0x00
    mov AL, 128
    mov AL, 200
    sub AL, 250
    mov BX, 20000
    sub BX, 25000