   

    AREA mycode, CODE, READONLY   
    EXPORT start                 

start
   
    LDR R0, =0x20000100           

    
    LDR R1, =0x20000200          

  
    MOV R2, #16                  

transfer_loop
    
    LDRB R3, [R0], #1             
    
    STRB R3, [R1], #1             

    
    SUBS R2, R2, #1               
    BNE transfer_loop            

  
end_loop
    B end_loop                   

    END                         
