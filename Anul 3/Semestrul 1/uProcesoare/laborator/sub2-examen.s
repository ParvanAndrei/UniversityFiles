.data
	vector: .half 1, 2, 3, 4, 5, 6, 7
	n: .word 7
	N: .word 3
.text

.globl main

main:
	la $a0, vector #adresa de memorie a vectorului
	lw $a1, n # lungimea vectorului
	lw $a2, N # pozitia N
	li $t3, 0 #counter
	sltu $s1, $a2, $a1
	bne $s1, 1, print_gresit
	jal afisare
	j exit
	
	
afisare:
	subu $sp,$sp,32 # Se alocă 32 bytes in stivă
	sw $ra,20($sp) # Se salvează adresa de revenire curentă
	sw $a0,16($sp)
	sw $a1,12($sp)
	sw $a2,8($sp)
	
	addu $t2, $0, $a0
	sleu $s2, $t3, $a2
	beq $s2, 1, print_numar
	addi $a0, $a0, 1
	addi $t3, $t3, 1 #incrementam counter
	j afisare
	
print_numar:
	jal print
	lw $ra,20($sp)
	lw $a0,16($sp)
	lw $a1,12($sp)
	lw $a2,8($sp)
	addu $sp, $sp, 32
	
	jr $ra
	
print_gresit:
	
	li $t2, -1
	jal print
	
	jr $ra
print:
	addu $a0, $0, $t2
	li $v0, 1
	syscall
	
	jr $ra
exit:
	li $v0, 10
	syscall
	