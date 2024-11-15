  
   AREA mycode, CODE, READONLY
	   ENTRY
	   EXPORT start
		   
		   
start PROC
	
	  MOV R0, #50
	  MOV R1, #30
	  MOV R2, #20
	  
	  SUBS R4, R0, R2
	  SBC R5, R1, R3
	  
	  B .
	  
	  ENDP
		  
	  END	  
	  
	  
			   