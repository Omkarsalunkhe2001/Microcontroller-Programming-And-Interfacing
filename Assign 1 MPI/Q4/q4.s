      

  AREA mycode, CODE, READONLY   
        EXPORT start
        ENTRY                        

start PROC
        
        LDR R0, =0x0000000A           
        LDR R1, =0x00000005           

        
        BL add_32bit

        
        BL sub_32bit

stop

       B stop                       

add_32bit
        ADD R2, R0, R1                
        BX LR


sub_32bit
        SUB R4, R0, R1
        BX LR                        

        END