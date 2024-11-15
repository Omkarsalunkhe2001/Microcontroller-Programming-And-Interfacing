       

   AREA mycode, CODE, READONLY   
        EXPORT start                  
        ENTRY

start
        
        LDR R0, =0xFFFFFFF6
        LDR R1, =0x00000005

        
        BL add_32bit_signed

        
        BL sub_32bit_signed

stop   B stop                         


add_32bit_signed
        ADDS R2, R0, R1              
        BX LR


sub_32bit_signed
        SUBS R2, R0, R1               
        BX LR

        END
