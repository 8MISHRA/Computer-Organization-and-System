.text
	.globl main
main:   li $v0, 5 # syscall 5 (read_int)
	syscall
	addi $a0, $v0, 0 # print_int argument
	li $v0, 1 # syscall 1 (print_int)
	syscall # print the string
	jr $ra # retrun to caller