.data
	var1: .word 7
	var2: .word 3
	a2: .space 4
.text
.globl main

main:
	lw $a0, var1
	lw $a1, var2
	slt $t1, $a0, $a1
	beq $t1, $0, THENIF
	lw $s2, $a0, $0
	j IFCOND
	
THENIF:
	lw $a2, $0, $a1

IFCOND:
	addi $s2, $s2, 1
	lw $a2, $0, $a0
	fr $ra