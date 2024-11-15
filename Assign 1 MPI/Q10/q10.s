        AREA mycode, CODE, READONLY
        EXPORT start

start
        LDR R0, =0x2200001C    
        MOV R1, #1
        STR R1, [R0]
		
        BX LR

        END
