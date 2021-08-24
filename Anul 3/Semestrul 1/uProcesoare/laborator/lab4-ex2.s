.text
main:
li $t2, 300
addu $a0, $0, $t2 # mutarea numărului a fi printat în $a0
li $v0, 1 # încărcarea codului print_int în $v0
syscall
li $v0, 10
syscall
