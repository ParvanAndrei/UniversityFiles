.text
main:

li $v0, 5 # încărcarea codului read_int în $v0
syscall
addu $t0, $0, $v0 # mutarea numărului citit în $t0
li $v0, 10
syscall