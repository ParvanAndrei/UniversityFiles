.data 
	vect: .half 2, 3, 4, 5, 6
	lungime: .word 5
	
.text
.globl main 

main: 
	la $a0, vect
	li $t0, 0 #Maxim
	li $t1, 0 #counter
	lw $t2, lungime #lungimea vectorului
	jal max
	li $t0, 0
	

max: 
	subu $sp, $sp, 64 #aloc stivei 64 bytes
	sw $ra,20($sp)
	sw $t0,16($sp)
	
	beq $t1, $t2, afisare_max
	lh $s3, 0($a0)
	addi $a0, $a0, 2 #next element
	addi $t1, $t1, 1 #next counter
	sltu $s1, $t0, $s3
	bne $s1, 1, max
	add $t0, $0, $s3
	j max
	
afisare_max:
	jal print
	lw $ra,20($sp)
	lw $t0,16($sp)
	
	addu $sp, $sp, 32
	jr $ra
	
print: 
	addu $a1, $0, $t0
	li $v0, 1
	syscall
	
	li $a1, 13
	li $v0, 11
	syscall
	jr $ra
	
exit:
	li $v0, 10
	syscall
	
	