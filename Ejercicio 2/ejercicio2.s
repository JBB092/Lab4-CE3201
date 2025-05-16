			MOV		R0, #5			
			MOV		R1, #1			
			MOV		R2, #1			

Loop:
			CMP		R2, R0			
			BGT		End_Loop

			MUL		R1, R1, R2		
			ADD		R2, R2, #1		

			B		Loop

End_Loop:
			MOV		R3, R1			
