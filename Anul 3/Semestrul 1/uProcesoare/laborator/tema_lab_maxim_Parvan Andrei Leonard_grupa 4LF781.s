.data 
	s: .half 6, 7, 8, 9, 10
	s1: .half 22, 62, 33, 12, 5
	s2: .half 24, 15, 1, 2, 3
	n: .word 5
.text
.globl main

main:
	
	la $a1, s #reprezinta adresa de memorie pentru inceputul vectorului
	li $t2, 0 #max-ul
	li $t0, 0 #iterator-ul
	lw $t1, n #reprezinta lungimea sirurilor
	jal maxim #
	li $t2, 0

	la $a1, s1 #se repeta instructiunile pentru ceilalti vectori
	li $t2, 0 
	li $t0, 0 
	lw $t1, n 
	jal maxim 
	li $t2, 0

	la $a1, s2 #se repeta instructiunile pentru ceilalti vectori
	li $t2, 0 
	li $t0, 0 
	lw $t1, n 
	jal maxim 
	j exit

maxim: 

	subu $sp, $sp, 64 #aloc stivei 64 bytes
	sw $ra,20($sp)
	sw $t2,16($sp)

	beq $t0, $t1, max_print
	lh $s3, 0($a1)
	addi $a1, $a1, 2 #pentru a obtine urmatoruul element din vector
	addi $t0, $t0, 1 
	sltu $s1, $t2, $s3 #compar maximul cu elementul din sir
	bne $s1, 1, maxim
	add $t2, $0, $s3 #maximul devine noua valoare
	j maxim

max_print:
	jal print
	lw $ra,20($sp)
	lw $t2,16($sp)

	addu $sp, $sp, 32
	jr $ra

exit:
	li $v0, 10
	syscall

print: 
	li $v0 , 1
	addu $a0, $0, $t2
	syscall

	li $v0, 11
	li $a0, 13
	syscall
	jr $ra