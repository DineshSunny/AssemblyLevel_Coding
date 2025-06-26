    ORG     $1000          ; Start of the program

image:  DC.W    1, 2, 3    ; 3x3 image row 1
        DC.W    4, 5, 6    ; 3x3 image row 2
        DC.W    7, 8, 9    ; 3x3 image row 3

kernel: DC.W    1, 0       ; 2x2 kernel row 1
        DC.W    0, -1      ; 2x2 kernel row 2

result: DS.W    4          ; Space for 2x2 result matrix

    ; Calculate result[0][0]
    MOVE.W  image, D0      ; D0 = image[0][0] = 1
    MOVE.W  kernel, D1     ; D1 = kernel[0][0] = 1
    MULS    D1, D0         ; D0 = D0 * D1 = 1 * 1 = 1

    MOVE.W  image+2, D2    ; D2 = image[0][1] = 2
    MOVE.W  kernel+2, D3   ; D3 = kernel[0][1] = 0
    MULS    D3, D2         ; D2 = D2 * D3 = 2 * 0 = 0
    ADD.W   D2, D0         ; D0 = D0 + D2 = 1 + 0 = 1

    MOVE.W  image+6, D2    ; D2 = image[1][0] = 4
    MOVE.W  kernel+4, D3   ; D3 = kernel[1][0] = 0
    MULS    D3, D2         ; D2 = D2 * D3 = 4 * 0 = 0
    ADD.W   D2, D0         ; D0 = D0 + D2 = 1 + 0 = 1

    MOVE.W  image+8, D2    ; D2 = image[1][1] = 5
    MOVE.W  kernel+6, D3   ; D3 = kernel[1][1] = -1
    MULS    D3, D2         ; D2 = D2 * D3 = 5 * -1 = -5
    ADD.W   D2, D0         ; D0 = D0 + D2 = 1 + (-5) = -4
    MOVE.W  D0, result     ; result[0][0] = -4

    ; Calculate result[0][1]
    MOVE.W  image+2, D0    ; D0 = image[0][1] = 2
    MOVE.W  kernel, D1     ; D1 = kernel[0][0] = 1
    MULS    D1, D0         ; D0 = D0 * D1 = 2 * 1 = 2

    MOVE.W  image+4, D2    ; D2 = image[0][2] = 3
    MOVE.W  kernel+2, D3   ; D3 = kernel[0][1] = 0
    MULS    D3, D2         ; D2 = D2 * D3 = 3 * 0 = 0
    ADD.W   D2, D0         ; D0 = D0 + D2 = 2 + 0 = 2

    MOVE.W  image+8, D2    ; D2 = image[1][1] = 5
    MOVE.W  kernel+4, D3   ; D3 = kernel[1][0] = 0
    MULS    D3, D2         ; D2 = D2 * D3 = 5 * 0 = 0
    ADD.W   D2, D0         ; D0 = D0 + D2 = 2 + 0 = 2

    MOVE.W  image+10, D2   ; D2 = image[1][2] = 6
    MOVE.W  kernel+6, D3   ; D3 = kernel[1][1] = -1
    MULS    D3, D2         ; D2 = D2 * D3 = 6 * -1 = -6
    ADD.W   D2, D0         ; D0 = D0 + D2 = 2 + (-6) = -4
    MOVE.W  D0, result+2   ; result[0][1] = -4

    ; Calculate result[1][0]
    MOVE.W  image+6, D0    ; D0 = image[1][0] = 4
    MOVE.W  kernel, D1     ; D1 = kernel[0][0] = 1
    MULS    D1, D0         ; D0 = D0 * D1 = 4 * 1 = 4

    MOVE.W  image+8, D2    ; D2 = image[1][1] = 5
    MOVE.W  kernel+2, D3   ; D3 = kernel[0][1] = 0
    MULS    D3, D2         ; D2 = D2 * D3 = 5 * 0 = 0
    ADD.W   D2, D0         ; D0 = D0 + D2 = 4 + 0 = 4

    MOVE.W  image+12, D2   ; D2 = image[2][0] = 7
    MOVE.W  kernel+4, D3   ; D3 = kernel[1][0] = 0
    MULS    D3, D2         ; D2 = D2 * D3 = 7 * 0 = 0
    ADD.W   D2, D0         ; D0 = D0 + D2 = 4 + 0 = 4

    MOVE.W  image+14, D2   ; D2 = image[2][1] = 8
    MOVE.W  kernel+6, D3   ; D3 = kernel[1][1] = -1
    MULS    D3, D2         ; D2 = D2 * D3 = 8 * -1 = -8
    ADD.W   D2, D0         ; D0 = D0 + D2 = 4 + (-8) = -4
    MOVE.W  D0, result+4   ; result[1][0] = -4

    ; Calculate result[1][1]
    MOVE.W  image+8, D0    ; D0 = image[1][1] = 5
    MOVE.W  kernel, D1     ; D1 = kernel[0][0] = 1
    MULS    D1, D0         ; D0 = D0 * D1 = 5 * 1 = 5

    MOVE.W  image+10, D2   ; D2 = image[1][2] = 6
    MOVE.W  kernel+2, D3   ; D3 = kernel[0][1] = 0
    MULS    D3, D2         ; D2 = D2 * D3 = 6 * 0 = 0
    ADD.W   D2, D0         ; D0 = D0 + D2 = 5 + 0 = 5

    MOVE.W  image+14, D2   ; D2 = image[2][1] = 8
    MOVE.W  kernel+4, D3   ; D3 = kernel[1][0] = 0
    MULS    D3, D2         ; D2 = D2 * D3 = 8 * 0 = 0
    ADD.W   D2, D0         ; D0 = D0 + D2 = 5 + 0 = 5

    MOVE.W  image+16, D2   ; D2 = image[2][2] = 9
    MOVE.W  kernel+6, D3   ; D3 = kernel[1][1] = -1
    MULS    D3, D2         ; D2 = D2 * D3 = 9 * -1 = -9
    ADD.W   D2, D0         ; D0 = D0 + D2 = 5 + (-9) = -4
    MOVE.W  D0, result+6   ; result[1][1] = -4

    ; End of program
    SIMHALT                 ; Halt the simulator

    END $1110               ; End of program, set starting address



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
