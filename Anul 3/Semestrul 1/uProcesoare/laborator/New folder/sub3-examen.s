.data 
	N: .word 5
	M: .word 23
	
.text
.globl main

main:
	lw $t0, N 
	lw $t1, M
	li $t4, 5 #counter
	sltu $s1, $t0, $t1
	bne $s1, 1, inversare
	addu $a1, $0, $t0
	addu $a2, $0, $t1
	jal divizor
	j exit
	
	
divizor:
	subu $sp, $sp, 32
	sw $ra, 20($sp)
	sw $a1, 16($sp)
	sw $a2, 12($sp)
	sw $t4, 8($sp)
	
	li $s2, 3
	div $a1, $s2
	mfhi $s3
	beq $s3, $0, afisare
	addi $a1, $a1, 1
	addi $t4, $t4, 1
	sgt $s3, $t4, $a2
	beq $s3, 1, exit
	j divizor

	
	
	
afisare:
	addu $t5, $0, $a1
	jal print
	lw $ra, 20($sp)
	lw $a1, 16($sp)
	lw $a2, 12($sp)
	lw $t4, 8($sp)
	
	addu $sp, $sp, 32
	
	jr $ra


print:
	addu $a0, $0, $t5
	li $v0, 1
	syscall
	
	li $v1, 11
	li $a0, 13
	syscall
	
	jr $ra
	
inversare:
	addu $t2, $0, $t0
	addu $t3, $0, $t1
	
	addu $a1, $0, $t3
	addu $a2, $0, $t2
	
	jr $ra
	
exit:
	li $v0, 10
	syscall