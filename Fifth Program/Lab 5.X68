*-----------------------------------------------------------
* Title      : Lab Assignmet 5
* Written by : Dinesh Seveti 
* Date       : 3/1/2025
* Description: Study of instruction set, registers and memory of 68K CISC processor
*-----------------------------------------------------------

START: ; first instruction of program

 MOVE.L #00000000, D0
 MOVE.L #00000000, D1
 MOVE.L #00000000, D2
 MOVE.L #00000000, D3
 MOVE.L #00000000, D4
 MOVE.L #00000000, D5
 MOVE.L #00000000, D6
 MOVE.L #00000000, D7
 MOVE.L #$44434241, $2100
 MOVE.L #$00000000, $2104
 MOVE.L #$25530000, $2108
 MOVE.L #$01EF0000, $210C
 MOVE.L #$FFFFCCCC, $2110
 MOVE.L #$87652222, $2114
 MOVE.L #$BBBB3333, $2118
 MOVE.L #$ABCDEF00, $211C
 LEA.L $00002100,A1
 MOVE.L #10,D7
 MOVEQ.L #27,D0
 MOVE.B #27,D1
 MOVE.B #-28,D2
 MOVE.W #1001,D3
 MOVE.L #16843009,D4
 MOVE.B 16(A1,D7),D5
 MOVE.B $00002110(PC),D6
 SIMHALT ; halt simulator

 END START ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
