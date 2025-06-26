        ORG $1000
START:  
        MOVE.L #0,D2
        MOVE.L #0,D3
        MOVE.L #0,D4
        MOVE.L #0,D5
        MOVE.L #0,D6
        MOVE.L #0,D7

        MOVE.B #11,$00002400
        LEA.L $00002400,A0
        MOVE.B (A0),D1

        MOVE.L #1,D2
        MOVE.L #2,D3
        MOVE.L #4,D4
        MOVE.L #8,D5

        AND.W D1,D2
        AND.W D1,D3
        AND.W D1,D4
        AND.W D1,D5

        LSR.W #1,D3
        LSR.W #2,D4
        LSR.W #3,D5

        MOVE.B D5,D0
        EOR.W D4,D5
        EOR.W D3,D5

        LSR.W #1,D1
        LSL.W #1,D1
        EOR.W D5,D1

        LSL.W #1,D1
        EOR.W D2,D1

        EOR.W D0,D4
        EOR.W D2,D4

        EOR.W D0,D3
        EOR.W D2,D3

        EOR.W D4,D1
        LSL.W #1,D1
        EOR.W D3,D1

        SIMHALT
        END START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
