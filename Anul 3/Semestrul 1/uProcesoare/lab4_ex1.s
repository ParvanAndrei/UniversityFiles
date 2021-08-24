.data
s: .asciiz "Ana"
s1: .asciiz "Sectiunea de Calculatoare"
s2: .asciiz "-"


.text
.globl main
main:
la $a0, s #memory address for the start of the string
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
subu $sp,$sp,32 # Se alocă 32 bytes in stivă
sw $ra,20($sp) # Se salvează adresa de revenire curentă
sw $a0,24($sp)
sw $a1,28($sp)
strlen_loop:
lb $a3, 0($a0)
beq $a3, $0, strlen_end #if memory value is 0 (nullstring),branch out of loop
addi $a0, 1 #increment memory address to get the next element
addi $a1, 1 #increment counter
j strlen_loop

strlen_end:
jal printf
lw $ra,20($sp)
lw $a0,24($sp)
lw $a1,28($sp)
addu $sp,$sp,32
jr $ra

printf:
li $v0 , 1
add $a0, $a1, $0
syscall

li $v0 , 11
li $a0 , 13
syscall
jr $ra