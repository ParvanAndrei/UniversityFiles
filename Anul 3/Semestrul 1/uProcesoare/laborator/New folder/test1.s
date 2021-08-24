.data 
	primul: .word 5
	doi: .word 6
	
.text

.globl main

main:
	lw $t0, primul
	lw $t1, doi
	mul $t2, $t0, $t1
	sw $t2, a
	jr $ra