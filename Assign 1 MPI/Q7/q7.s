       

        AREA mycode, CODE, READONLY
        EXPORT start

start
        LDR R0, =inputString   
        MOV R2, #0

convert_loop
        LDRB R1, [R0, R2]      
        CMP R1, #0
        BEQ end

        CMP R1, #'a'           
        BLT next_char         
        CMP R1, #'z'           
        BGT next_char          

        SUB R1, R1, #32
        STRB R1, [R0, R2]      

next_char
        ADD R2, R2, #1         
        B convert_loop

end
        BX LR                 

       
        AREA mycode, DATA, READONLY
inputString
        DCB "hello world", 0    
        END
