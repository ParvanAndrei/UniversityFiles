#.data
#	suma: .word 0
	
.text
.globl main

main:
	li $v0, 5 #citirea din consola
	syscall
	li $t0, 4 #counter
	li $t3, 5 #divizorul
	addu $t1, $0, $v0 #numarul
	li $t2, 2 #pragul
	li $t5, 0 #initializam suma cu 0
	li $t6, 1 #decrement
	sge $s1, $t1, $t2  #verificarea ca numarul sa fie mai mare sau egal cu 2
	beq $s1, 1, divizare
	

divizare:
	subu $sp, $sp, 32 #alocare de 32 de bytes in stiva
	sw $ra, 20($sp)	#salvare in stiva
#	sw $t0, 18($sp)
#	sw $t1, 16($sp)
#	sw $t2, 14($sp)
#	sw $t3, 12($sp)
#	sw $t5, 8 ($sp)
	div $t1, $t3 # impartim la divizor luam valoarea din hi
	mfhi $t4
	subu $t1, $t1, $t6 #decrementam numar cu 1
	beq $t4, $0 suma #intra in suma doar daca in HI este 0 restul impartirii..
	beq $t0, $t1, exit #conditia de iesire
	
	j divizare  #reapelam functia
	
suma: 
	addu $t5, $t5, $t1 #suma = suma + numar 
	jal print #afisam
	lw $ra, 20($sp)
#	lw $t0, 18($sp)
#	lw $t1, 16($sp)
#	lw $t2, 14($sp)
#	lw $t3, 12($sp)
#	lw $t5, 8 ($sp)
	
	addu $sp, $sp, 32
	
	jr $ra
	
print:

	addu $a0, $0, $t5
	li $v0, 1
	syscall
	
	li $v0, 11
	li $a1, 13
	syscall
	jr $ra
	
exit:
	li $v0, 10
	syscall