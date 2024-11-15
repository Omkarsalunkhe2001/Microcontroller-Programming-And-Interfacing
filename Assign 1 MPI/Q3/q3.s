
  AREA MyCode, CODE, READONLY
    ENTRY
	EXPORT start 
		
strat PROC		

start
    LDR R0, =0x10      
    LDR R1, =0x20     

    BL add_subroutine   
  

    LDR R0, =0x30     
    LDR R1, =0x10      

    BL sub_subroutine 
   

    B stop             


add_subroutine
    ADD R2, R0, R1     
    BX LR              


sub_subroutine
    SUB R3, R0, R1     
    BX LR               

stop
    B stop             

    END