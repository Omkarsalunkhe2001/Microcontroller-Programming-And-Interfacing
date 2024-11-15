    
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT start
		
start PROC

      MOV R0, #10
	  MOV R2, #50
	  MOV R3, #25
	  
	  
	  ADDS R4, R0, R2
	  ADC  R5, R1, R3
	  
	  B .
	  
	  ENDP
		  
	  END	  