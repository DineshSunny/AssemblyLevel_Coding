*-----------------------------------------------------------
* Title      :Lab Assignment 2O
* Written by :Dinesh Seveti
* Date       :2/22/2025
* Description:Displaying a Vector
*-----------------------------------------------------------O
 ORG $1500
START: ; first instruction of program
 LEA.L $004AC4, A1
 LEA.L $004ACE, A2
 LEA.L $004AE0, A3
 LEA.L $004AEA, A4
 MOVE.B (A1)+, D0
 MOVE.B -(A2), (A3)+
 MOVE.B D0, -(A4)
 MOVE.B (A1)+, D0
 MOVE.B -(A2), (A3)+
 MOVE.B D0, -(A4)
 MOVE.B (A1)+, D0
 MOVE.B -(A2), (A3)+
 MOVE.B D0, -(A4)
 MOVE.B (A1)+, D0
 MOVE.B -(A2), (A3)+
 MOVE.B D0, -(A4)
 MOVE.B (A1)+, D0
 MOVE.B -(A2), (A3)+
 MOVE.B D0, -(A4)
           ; halt simulator
           * Variables and Strings
 ORG $004AC4
 DC.L 'ABCDEFGHIJ'
 END START ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
