*-----------------------------------------------------------
* Title      :Lab Assignment 2
* Written by :DINESH SEVETI
* Date       :02/08/2025
* Description:The Program prints my name and the SSN number
*-----------------------------------------------------------
  ORG $2000
  DC.B 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  ORG $2020
  DC.B 'abcdefghijklmnopqrstuvwxyz'
  ORG $2040
  DC.B '0123456789'
  

START:                     
    LEA.L $002000,A2  ; Load uppercase letters
    LEA.L $002020,A3  ; Load lowercase letters
    LEA.L $002040,A4  ; Load digits
    LEA.L $002100,A1  ; Destination for name

    ; Store "Dinesh Seveti" at $02100
    MOVE.B 3(A2),(A1)+    ; D
    MOVE.B 8(A3),(A1)+    ; i
    MOVE.B 13(A3),(A1)+   ; n
    MOVE.B 4(A3),(A1)+    ; e
    MOVE.B 18(A3),(A1)+   ; s
    MOVE.B 7(A3),(A1)+    ; h
    MOVE.B #32,(A1)+      ; Space
    MOVE.B 18(A2),(A1)+   ; S
    MOVE.B 4(A3),(A1)+    ; e
    MOVE.B 21(A3),(A1)+   ; v
    MOVE.B 4(A3),(A1)+    ; e
    MOVE.B 19(A3),(A1)+   ; t
    MOVE.B 8(A3),(A1)+    ; i
    
    LEA.L $002160,A1  ; Destination for SSN
    
    ; Store "123-45-6789" at $02160
    MOVE.B (A4),(A1)+    ; 1
    MOVE.B 1(A4),(A1)+   ; 2
    MOVE.B 2(A4),(A1)+   ; 3
    MOVE.B #45,(A1)+     ; -
    MOVE.B 4(A4),(A1)+   ; 4
    MOVE.B 5(A4),(A1)+   ; 5
    MOVE.B #45,(A1)+     ; -
    MOVE.B 6(A4),(A1)+   ; 6
    MOVE.B 7(A4),(A1)+   ; 7
    MOVE.B 8(A4),(A1)+   ; 8
    MOVE.B 9(A4),(A1)+   ; 9
    
    SIMHALT              ; halt simulator
    END    START         ; last line of source




*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
