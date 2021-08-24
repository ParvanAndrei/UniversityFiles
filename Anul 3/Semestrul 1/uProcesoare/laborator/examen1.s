#Sa se realizeze un program in limbaj de asamblare care pentru un numar n va calcula primele n numere din sirul lui fibonacci, unde n este mai mare sau egal cu 2.
#F(n) = F(n-1) + F(n-2)


.data
	n: .word 9

.text
main:

	lw $a1, n
	li $t0, 1
	li $t1, 1
	li $t2, 2
	beq $a1, $t0, print1
	beq $a1, $t2, print1
	li $t3, 2 #counter

loop:
	beq $a1, $t3, print2
	add $t2, $t1, $t0
	move $t0, $t1
	move $t1, $t2
	addi $t3, 1
	j loop

print1:

	move $a0, $t0
	li $v0, 1
	syscall
print2:
	move $a0, $t2
	li $v0, 1
	syscall

li $v0, 10
syscall		
	