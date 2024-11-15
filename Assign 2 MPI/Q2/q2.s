   

    AREA mycode, CODE, READONLY   
    EXPORT start                   

start
    LDR R0, =0x20000100           
    LDR R1, =0x20000600            
    
    MOV R2, #10                   
    MOV R3, #0                    
    MOV R4, #0                    

sum_loop
    LDRB R5, [R0], #1             
    ADDS R3, R3, R5               
    ADC R4, R4, #0                 
    SUBS R2, R2, #1                
    BNE sum_loop                  


   
    STR R3, [R1]                 
    STR R4, [R1, #4]             

  
end_loop
    B end_loop                   
    END                             
