    MAC EMPTY_ROOM
    
    ; Skip 3 scanlines with no PF set
    ldx #0
    stx PF0
    stx PF1
    stx PF2
    REPEAT 3
        sta WSYNC
    REPEND

    ; Set the PF0 to 1110 (LSB first) and PF1-PF2 as 1111 1111
    ldx #%00010000
    stx PF0
    ldx #%00000000
    stx PF1
    stx PF2
    REPEAT 7
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND    
    
    
    ldx #%00100000
    stx PF0
    ldx #%00000000
    stx PF1
    stx PF2
    REPEAT 7
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND
    
        ; Set the PF0 to 1110 (LSB first) and PF1-PF2 as 1111 1111
    ldx #%01000000
    stx PF0
    ldx #%00000000
    stx PF1
    stx PF2
    REPEAT 7
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND
    
    ldx #%10000000
    stx PF0
    ldx #%00000000
    stx PF1
    stx PF2
    REPEAT 7
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND
    
    ldx #%00000000
    stx PF0
    ldx #%10000000
    stx PF1
    ldx #%00000000
    stx PF2
    REPEAT 7
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND
    
    ldx #%00000000
    stx PF0
    ldx #%01000000
    stx PF1
    ldx #%00000000
    stx PF2
    REPEAT 7
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND
    
    ldx #%00000000
    stx PF0
    ldx #%00100000
    stx PF1
    ldx #%00000000
    stx PF2
    REPEAT 7
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND

    ; Set the next 164 lines only with PF0 third bit enabled
    ldx #%00000000
    stx PF0
    ldx #%00011111
    stx PF1
    ldx #%11111111
    stx PF2
    REPEAT 7
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND
    ;56
    ldx #%00000000
    stx PF0
    ldx #%00010000
    stx PF1
    ldx #%00000000
    stx PF2
    REPEAT 77
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;    
    ldx #%00000000
    stx PF0
    ldx #%00011111
    stx PF1
    ldx #%11111111
    stx PF2
    REPEAT 7
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
    ldx #%00000000
    stx PF0
    ldx #%00100000
    stx PF1
    ldx #%00000000
    stx PF2
    REPEAT 7
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND
   

    ldx #%01000000
    stx PF1
    ldx #%00000000
    stx PF2
    REPEAT 7
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND  


    ldx #%10000000
    stx PF1
    ldx #%00000000
    stx PF2
    REPEAT 7
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND 
    
    ldx #%10000000
    stx PF0
    ldx #%00000000
    stx PF1
    stx PF2
    REPEAT 7
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND  

    ldx #%01000000
    stx PF0
    ldx #%00000000
    stx PF1
    stx PF2
    REPEAT 7
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND 
   
    ldx #%00100000
    stx PF0
    ldx #%00000000
    stx PF1
    stx PF2
    REPEAT 7
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND 
    
    ldx #%00010000
    stx PF0
    ldx #%00000000
    stx PF1
    stx PF2
    REPEAT 7
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Output 30 more VBLANK overscan lines to complete our frame
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    lda #2
    sta VBLANK     ; enable VBLANK back again
    REPEAT 30
       sta WSYNC   ; output the 30 recommended overscan lines
    REPEND

    ENDM