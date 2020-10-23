   
    MAC DOOR_ROOM
    ; Skip 5 scanlines with no PF set
    ldx #0
    stx PF0
    stx PF1
    stx PF2
    REPEAT 5
        sta WSYNC
    REPEND


    ; Set the PF0 to...
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
       sta WSYNC   
    REPEND

        
    ldx #%01000000
    stx PF0
    ldx #%00000000
    stx PF1
    stx PF2
    REPEAT 7
       sta WSYNC   
    REPEND
   
    ldx #%10000000
    stx PF0
    ldx #%00000000
    stx PF1
    stx PF2
    REPEAT 7
       sta WSYNC  
    REPEND

    ldx #%00000000
    stx PF0
    ldx #%10000000
    stx PF1
    ldx #%00000000
    stx PF2
    REPEAT 7
       sta WSYNC  
    REPEND
 
    ldx #%00000000
    stx PF0
    ldx #%01000000
    stx PF1
    ldx #%00000000
    stx PF2
    REPEAT 7
       sta WSYNC   
    REPEND
    
    ldx #%00000000
    stx PF0
    ldx #%00100000
    stx PF1
    ldx #%00000000
    stx PF2
    REPEAT 7
       sta WSYNC   ;
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


    ldx #%00000000
    stx PF0
    ldx #%00010000
    stx PF1
    ldx #%00000000
    stx PF2
    REPEAT 21
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND 
    
    ;82

    ldx #%00000000
    stx PF0
    ldx #%00010000
    stx PF1
    ldx #%11110000
    stx PF2
    REPEAT 7
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND
    

    ldx #%00000000
    stx PF0
    ldx #%00010000
    stx PF1
    ldx #%00010000
    stx PF2
    REPEAT 35
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND

    ldx #%00000000
    stx PF0
    ldx #%00010000
    stx PF1
    ldx #%00010000
    stx PF2
    REPEAT 7
       sta WSYNC   ; repeat PF config for 7 scanlines
    REPEND    
    
 ;152

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

;187

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Output 30 more VBLANK overscan lines to complete our frame
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    lda #2
    sta VBLANK     ; enable VBLANK back again
    REPEAT 30
       sta WSYNC   ; output the 30 recommended overscan lines
    REPEND

    ENDM