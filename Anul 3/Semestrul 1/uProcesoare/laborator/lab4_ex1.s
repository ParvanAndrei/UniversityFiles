.data
s0: .asciiz "Ana"
s1: .asciiz "Sectia de Calculatoare"
s2: .asciiz "-"

.text
.globl main
main:
	la $a0, s0 #memory address for the start of the string
	li $a1, 0 #counter for string length
	jal strlen

	la $a0, s1 #memory address for the start of the string
	li $a1, 0 #counter for string length
	jal strlen

	la $a0, s2 #memory address for the start of the string
	li $a1, 0 #counter for string length
	jal strlen

exit:
	li $v0, 10
	syscall

strlen:
	lb $a3, 0($a0)
	beq $a3, $0, strlen_end #if memory value is 0 (null string), branch out of loop
	addi $a0, 1 #increment memory address to get the next element
	addi $a1, 1 #increment counter
	j strlen
strlen_end:

	jr $ra

