.data 
	myMsg: .asciiz "Hello World!"
	
.text
.globl main

main: 
	li $v0, 0
	la $a0, myMsg