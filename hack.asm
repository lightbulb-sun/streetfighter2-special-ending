lorom

; make the game think you're on difficulty 7
; for the decision tree that determines the type of ending
org $00a9db
        lda     #$07
        nop
        nop

org $00aa04
        jsr     my_code

; increment the real difficulty, not the difficulty 7 from above
org $00fac0
my_code:
        lda     $7f7f50
        inc
        cmp     #$08
        rts
