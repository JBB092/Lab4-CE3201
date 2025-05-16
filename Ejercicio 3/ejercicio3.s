		MOV		R0, #0x1000	
		MOV		R1, #0x2000		
		
		MOV		R2, #0
		STR		R2, [R1]
		
Loop:

		LDR		R3, [R0]
		
		MOV		R4, #0xE000
		ADD		R4, R4, #0x48
		CMP		R3, R4
		BEQ		Arriba
		
		MOV		R4, #0xE000
		ADD		R4, R4, #0x50
		CMP		R3, R4
		BEQ		Abajo
		
		B		Continue
		
Arriba:
		LDR		R5, [R1]		
		ADD		R5, R5, #1
		STR		R5, [R1]		
		B		Continue
		
Abajo:
		LDR		R5, [R1]
		SUB		R5, R5, #1
		STR		R5, [R1]
		B		Continue
		
Continue:
		B		Loop
        