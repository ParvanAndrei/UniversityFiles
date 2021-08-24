.data
	s0: .half 3, 8, 1, 9, 3

	s1: .half 21, 33, 56, 12, 98

	s2: .half 3, 12, 28, 24, 59

	n0: .word 5


.text
.globl main


main:

	la $a0, s0 
	li $t2, 0  
	li $t0, 0  
	lw $t1, n0 
	jal sub_max
	li $t2, 0


	la $a0, s1 
	li $t2, 0  
	li $t0, 0  
	lw $t1, n0 
	jal sub_max
	li $t2, 0


	la $a0, s2 
	li $t2, 0  
	li $t0, 0  
	lw $t1, n0 
	jal sub_max
	j exit



sub_max:

	subu $sp, $sp, 64 
	sw $ra,20($sp)    
	sw $t2,16($sp)    
	beq $t0, $t1, sub_max_print
	lh $s3, 0($a0)
	addi $a0, $a0, 2   
	addi $t0, $t0, 1   
	sltu $s1, $t2, $s3 
	bne $s1, 1, sub_max
	add $t2, $0, $s3   
	j sub_max




sub_max_print:

	jal print

	lw $ra,20($sp)
	lw $t2,16($sp)
	
	addu $sp, $sp, 32

	jr $ra



exit:

	li $v0, 10
	syscall



print:

	addu $a0, $0, $t2 
	li $v0, 1 		 
	syscall

	li $a0, 13 
	li $v0, 11 
	syscall

	jr $ra

































#RusCristin-Liviu