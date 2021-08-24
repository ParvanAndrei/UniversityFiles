.data
vec0: .word 7, 5, 8918, 1, 4, 5, 35, 70
n0: .byte 8

vec1: .word 91181, 728, 81, 70, 64, 18923
n1: .byte 6

.text
main: li $s1, 7


la $a1, vec0
lb $a2, n0
li $s0, 0 #contor parcurgere vector
li $a3, 0 #contor nr divizibile cu 7
jal divizor

la $a1, vec1
lb $a2, n1
li $s0, 0 #contor parcurgere vector
li $a3, 0 #contor nr divizibile cu 7
jal divizor

exit: li $v0, 10
syscall






divizor:
subu $sp,$sp,32 # Se alocă 32 bytes in stivă
sw $ra,20($sp) # Se salvează adresa de revenire curentă

beq $s0, $a2, divEnd
lw $t0, 0($a1)
div $t0, $s1 #divide current element with 7
mfhi $t1 #move remainder from HI to t1
bne $t1, $0, increment #sarim instructiunea de contor divizibila cu 7, daca restul nu e 0
addi $a3, $a3, 1

increment:
addi $a1, $a1, 4
addi $s0, $s0, 1
j divizor

divEnd:
li $v0, 1
add $a0, $a3, $0
syscall

li $v0, 11
li $a0, 13
syscall

lw $ra, 20($sp)
add $sp, $sp, 32
jr $ra