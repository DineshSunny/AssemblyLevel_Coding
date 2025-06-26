*-----------------------------------------------------------
* Title      :CSCI 592 Lab 1.C
* Written by :DINESH SEVETI
* Date       :01-25-2025
* Description:EASY68K Assembler to create data in memory and execute a small program.
*----------------------------------------------------------- 
 ORG $2000
 DC.B 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'   
 ORG $2020
 DC.B 'abcdefghijklmnopqrstuvwxyz'   
 ORG $2040
 DC.B '0123456789'                  
START:                  
 LEA $2000,A2       
 LEA $2020,A3       
 LEA $2040,A4       
 LEA $2200,A1       


 MOVE.B 15(A2),(A1)+    
 MOVE.B 4(A3),(A1)+     
 MOVE.B 19(A3),(A1)+    
 MOVE.B 19(A3),(A1)+    
 MOVE.B 4(A3),(A1)+      
 MOVE.B 17(A3),(A1)+    
 MOVE.B 13(A3),(A1)+     
 MOVE.B #32,(A1)+       


 MOVE.B 18(A3),(A1)+    
 MOVE.B 4(A3),(A1)+     
 MOVE.B #32,(A1)+       

 MOVE.B 2(A2),(A1)+     
 MOVE.B 14(A2),(A1)+    
 MOVE.B 2(A2),(A1)+     
 MOVE.B 7(A2),(A1)+     
 MOVE.B #32,(A1)+       


 MOVE.B 3(A4),(A1)+    
 MOVE.B 2(A4),(A1)+     
 MOVE.B 1(A4),(A1)+     

 
 MOVE.B #33,(A1)+       
 MOVE.B #33,(A1)+       
 MOVE.B #33,(A1)+       

 SIMHALT                

 END START              






*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
