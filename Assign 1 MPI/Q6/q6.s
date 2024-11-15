        AREA mycode, CODE, READONLY   
        EXPORT start                 
        ENTRY                         

        
        AREA mydata, DATA, READWRITE  
num1    DCD 20                        
num2    DCD 5                        

        AREA mycode, CODE, READONLY  

start
        LDR R0, =num1                 
        LDR R0, [R0]
        LDR R1, =num2
        LDR R1, [R1]                  


        BL add_32bit


        BL sub_32bit

        
        BL mul_32bit

        
        BL div_32bit


stop   B stop


add_32bit
        ADD R2, R0, R1                
        BX LR                        

sub_32bit
        SUB R3, R0, R1               
        BX LR                         


mul_32bit
        MUL R4, R0, R1                
        BX LR
		
div_32bit
        MOV R5, R0                   
        CMP R1, #0                   
        BEQ divide_by_zero            
        BL __udiv                     
        BX LR                         

divide_by_zero
        MOV R5, #-1                   
        BX LR

__udiv
        MOV R5, #0                  
        BX LR

        END