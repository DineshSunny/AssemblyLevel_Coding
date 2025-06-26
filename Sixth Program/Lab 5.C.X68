*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
START: ; first instruction of program
* Put program code here
 MOVE.L #$41414141, $74A8
 MOVE.L #$000074D0, $74AC
 MOVE.L #$00000000, $74B0
 MOVE.L #$00000000, $74B4
 MOVE.L #$43434343, $74B8
 MOVE.L #$000074C0, $74BC
 MOVE.L #$44444444, $74C0
 MOVE.L #$00000000, $74C4
 MOVE.L #$00000000, $74C8
 MOVE.L #$00000000, $74CC
 MOVE.L #$42424242, $74D0
 MOVE.L #$000074B8, $74D4
 LEA.L $00000000, A1
 LEA.L $00000000, A2
 LEA.L $00000000, A6
 LEA.L $00000000, A5
 LEA.L $00000000, A3
 LEA.L $000074A8,A6
 MOVE.L 4(A6),A1
 MOVE.L 4(A1),A2
 LEA.L $000074B0,A5
 MOVE.L A2,4(A5)
 MOVE.L A5,4(A1)
 SIMHALT ; halt simulator
* Put variables and constants here
 END START ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
