        AREA mycode, CODE, READONLY
        EXPORT start

start
        
        LDR R0, =psp_stack     
        MSR PSP, R0

        MRS R1, CONTROL        
        ORR R1, R1, #2
        ORR R1, R1, #1
        MSR CONTROL, R1        
        ISB                    


        
        LDR R0, =0x12345678    

        MOV R1, R0            
        AND R1, R1, #0x00FF0000
        LSL R1, R1, #8         

        LDR R3, =0x000000FF
        AND R3, R0, R3         
        ORR R1, R1, R3, LSL #24

        
        MOV R2, R0
        AND R2, R2, #0x0000FF00 
        LSR R2, R2, #8

        LDR R4, =0x00FF0000    
        AND R4, R0, R4         
        ORR R2, R2, R4, LSR #16

        
        BX LR                  

        AREA mycode, DATA, READWRITE
psp_stack
        SPACE 0x100          

        END
