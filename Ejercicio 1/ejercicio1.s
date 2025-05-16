            MOV		R0, #0x0100      
			
			MOV		R1, #0
InitLoop:
			CMP		R1, #10
			BEQ		InitDone
			MOV		R2, R1
			STR		R2, [R0, R1, LSL #2] 
			ADD		R1, R1, #1
			B		InitLoop
InitDone:
			
			MOV		R6, #5
			
			MOV		R1, #0
			
Loop:
			CMP		R1, #10
			BEQ		End_Loop
			
			
			MOV		R2, R1, LSL #2
			LDR		R3, [R0, R2]      
			
			CMP		R3, R6
			BLT		ElseBranch
			
ThenBranch:
            MUL			R4,		R3, R6        
			STR		R4, [R0, R2]
			B		Continue
			
ElseBranch:
			ADD		R4, R3, R6        
			STR		R4, [R0, R2]
			
Continue:
			ADD		R1, R1, #1
			B		Loop
			
End_Loop:
			LDR		R5,  [R0, #0x00]
			LDR		R6,  [R0, #0x04]
			LDR		R7,  [R0, #0x08]
			LDR		R8,  [R0, #0x0C]
			LDR		R9,  [R0, #0x10]
			LDR		R10, [R0, #0x14]
			LDR		R11, [R0, #0x18]
			LDR		R12, [R0, #0x1C]
			LDR		R13, [R0, #0x20]
			LDR		R14, [R0, #0x24]
            