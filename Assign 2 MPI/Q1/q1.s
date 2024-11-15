   

    AREA mycode, CODE, READONLY   
    EXPORT start                  

start
    
    LDR R0, =0x20002000           
    MSR MSP, R0                  

    
    LDR R0, =0x20003000           
    MSR PSP, R0                   

    MOV R0, #0xAAAA             
    MOV R1, #0xBBBB               
    MOV R2, #0xCCCC               
    MOV R3, #0xDDDD               
    MOV R4, #0xEEEE               
    MOV R5, #0xFFFF               
    LDR R14, =0x12345678      

    MRS R6, PSR                  

    PUSH {R0-R5, R14, R6}         

   
    MOV SP, R0                  

   
    POP {R7-R12, R14}             
    MSR PSR, R6                  

    
end_loop
    B end_loop                   

    END                           
