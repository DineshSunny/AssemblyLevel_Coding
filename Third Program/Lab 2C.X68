*-----------------------------------------------------------
* Title      :Lab 2C
* Written by :Dinesh Seveti
* Date       :2/15/2025
* Description:To implement memory manipulation and 
              *register operations in assembly.
*-----------------------------------------------------------
  
    
START: ; first instruction of program


 LEA.L $002468FA,A3
 LEA.L $00002544,A4
 LEA.L $00002518,A6


 

 MOVE.L #$44334241, $00002518
 MOVE.L #$00000000, $0000251C
 MOVE.L #$25530000, $00002520
 MOVE.L #$01EFABCD, $00002524
 MOVE.L #$5467CC22, $00002528
 MOVE.L #$FF3412FF, $0000252C
 MOVE.L #$A2671FEE, $00002544
 MOVE.L #$FFFFFFFF, $00002548
 MOVE.L #$01000000, $0000254C
 MOVE.L #$ABCDFFFF, $00002550
 MOVE.L #$00000000, $00002554
 
 MOVE.L $00000000, D3
 MOVE.L $FFFFFFFF, D5
 MOVE.L $00000000, D6
 
 MOVE.B 3(A6) ,D3
 MOVE.B 4(A4) ,6(A6)
 MOVE.B (A6)+,D5
 MOVE.B (A4)+,$002522
 MOVE.B $00252E, -(A4)
 LEA.L $00252A, A3
 MOVE.W (A3),D6
 
 SIMHALT ; halt simulator


 END START ; last line of source






*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
