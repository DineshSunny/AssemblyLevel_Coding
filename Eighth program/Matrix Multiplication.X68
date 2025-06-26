

 
  ORG $1000

 MOVE.L  #matrix1,A0    ; Load address of matrix1 into A0
 MOVE.L  #matrix2,A1    ; Load address of matrix2 into A1
 MOVE.L  #result,A2     ; Load address of result matrix into A2

 ; Calculate result[0][0]
 MOVE.L  0(A0),D0       ; D0 = matrix1[0][0]
 MOVE.L  0(A1),D1       ; D1 = matrix2[0][0]
 MULS    D1,D0          ; D0 *= D1

 MOVE.L  4(A0),D2       ; D2 = matrix1[0][1]
 MOVE.L  12(A1),D3      ; D3 = matrix2[1][0]
 MULS    D3,D2
 ADD.L   D2,D0          

 MOVE.L  8(A0),D4       
 MOVE.L  24(A1),D5      
 MULS    D5,D4
 ADD.L   D4,D0          
 MOVE.L  D0,0(A2)       

 ; Calculate result[0][1]
 MOVE.L  0(A0),D0       
 MOVE.L  4(A1),D1       
 MULS    D1,D0          

 MOVE.L  4(A0),D2       
 MOVE.L  16(A1),D3      
 MULS    D3,D2
 ADD.L   D2,D0          

 MOVE.L  8(A0),D4       
 MOVE.L  28(A1),D5      
 MULS    D5,D4
 ADD.L   D4,D0          
 MOVE.L  D0,4(A2)       

 ; Calculate result[0][2]
 MOVE.L  0(A0),D0       
 MOVE.L  8(A1),D1       
 MULS    D1,D0          

 MOVE.L  4(A0),D2       
 MOVE.L  20(A1),D3      
 MULS    D3,D2
 ADD.L   D2,D0          

 MOVE.L  8(A0),D4       
 MOVE.L  32(A1),D5      
 MULS    D5,D4
 ADD.L   D4,D0          
 MOVE.L  D0,8(A2)       

 ;Calculate result[1][0]
 MOVE.L  12(A0),D0      
 MOVE.L  0(A1),D1       
 MULS    D1,D0          

 MOVE.L  16(A0),D2      
 MOVE.L  12(A1),D3      
 MULS    D3,D2
 ADD.L   D2,D0          

 MOVE.L  20(A0),D4      
 MOVE.L  24(A1),D5      
 MULS    D5,D4
 ADD.L   D4,D0          
 MOVE.L  D0,12(A2)      

 ;Calculate result[1][1]
 MOVE.L  12(A0),D0      
 MOVE.L  4(A1),D1       
 MULS    D1,D0          

 MOVE.L  16(A0),D2      
 MOVE.L  16(A1),D3      
 MULS    D3,D2
 ADD.L   D2,D0          

 MOVE.L  20(A0),D4      
 MOVE.L  28(A1),D5      
 MULS    D5,D4
 ADD.L   D4,D0          
 MOVE.L  D0,16(A2)      

 ;Calculate result[1][2]
 MOVE.L  12(A0),D0      
 MOVE.L  8(A1),D1       
 MULS    D1,D0          

 MOVE.L  16(A0),D2      
 MOVE.L  20(A1),D3      
 MULS    D3,D2
 ADD.L   D2,D0          

 MOVE.L  20(A0),D4      
 MOVE.L  32(A1),D5      
 MULS    D5,D4
 ADD.L   D4,D0          
 MOVE.L  D0,20(A2)      

 ;Calculate result[2][0]
 MOVE.L  24(A0),D0      
 MOVE.L  0(A1),D1       
 MULS    D1,D0          

 MOVE.L  28(A0),D2      
 MOVE.L  12(A1),D3      
 MULS    D3,D2
 ADD.L   D2,D0          

 MOVE.L  32(A0),D4      
 MOVE.L  24(A1),D5      
 MULS    D5,D4
 ADD.L   D4,D0          
 MOVE.L  D0,24(A2)      

 ;Calculate result[2][1]
 MOVE.L  24(A0),D0      
 MOVE.L  4(A1),D1       
 MULS    D1,D0          

 MOVE.L  28(A0),D2      
 MOVE.L  16(A1),D3      
 MULS    D3,D2
 ADD.L   D2,D0          

 MOVE.L  32(A0),D4      
 MOVE.L  28(A1),D5      
 MULS    D5,D4
 ADD.L   D4,D0          
 MOVE.L  D0,28(A2)      

 ;Calculate result[2][2]
 MOVE.L  24(A0),D0      
 MOVE.L  8(A1),D1       
 MULS    D1,D0          

 MOVE.L  28(A0),D2      
 MOVE.L  20(A1),D3      
 MULS    D3,D2
 ADD.L   D2,D0          

 MOVE.L  32(A0),D4      
 MOVE.L  32(A1),D5      
 MULS    D5,D4
 ADD.L   D4,D0          
 MOVE.L  D0,32(A2)      

 TRAP    #15   ; Exit

matrix1:
 DC.L    2, 1, 3
 DC.L    3, 4, 1
 DC.L    5, 2, 3

matrix2:
 DC.L    1, 2, 0
 DC.L    4, 1, 2
 DC.L    3, 2, 1
 
result:
 DS.L    9      ; Allocate space for result matrix
 SIMHALT        ; halt simulator
 END $1000      ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
