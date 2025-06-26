        ORG $1100
DECODER:
        MOVE.L #0,D0
        MOVE.L #0,D1
        MOVE.L #0,D2
        MOVE.L #0,D3
        MOVE.L #0,D4
        MOVE.L #0,D5
        MOVE.L #0,D6
        MOVE.L #0,D7

        MOVE.B #$55, $002500
        LEA.L $002500,A0
        MOVE.B (A0),D1

        MOVE.B D1,D2
        ANDI.B #$80,D2
        LSR.B  #7,D2

        MOVE.B D1,D3
        ANDI.B #$40,D3
        LSR.B  #6,D3

        MOVE.B D1,D4
        ANDI.B #$20,D4
        LSR.B  #5,D4

        MOVE.B D1,D5
        ANDI.B #$10,D5
        LSR.B  #4,D5

        MOVE.B D1,D6
        ANDI.B #$08,D6
        LSR.B  #3,D6

        MOVE.B D1,D7
        ANDI.B #$04,D7
        LSR.B  #2,D7

        MOVE.B D1,D0
        ANDI.B #$02,D0
        LSR.B  #1,D0

        MOVE.B D2,D1
        EOR.B  D3,D1
        EOR.B  D4,D1
        EOR.B  D6,D1
        CMP.B  D1,D5
        BEQ    R_OK
        MOVE.B #4,D5
R_OK:   TST.B  D5

        MOVE.B D2,D1
        EOR.B  D3,D1
        EOR.B  D6,D1
        CMP.B  D1,D7
        BEQ    S_OK
        ADDI.B #2,D5
S_OK:   TST.B  D5

        MOVE.B D2,D1
        EOR.B  D4,D1
        EOR.B  D6,D1
        CMP.B  D1,D0
        BEQ    T_OK
        ADDI.B #1,D5
T_OK:   MOVE.B D5,D0

        SIMHALT
        END DECODER


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
