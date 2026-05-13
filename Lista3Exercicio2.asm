.data
	raio: .asciiz "Digite o raio da circunferência: "
	comprimento: .asciiz "O comprimento da circunferência é de: "
.text
main:
	li $t0, 3 # pi = 3
	li $t1, 2
	
	li $v0, 4
	la $a0, raio
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0

	mul $t3, $t1, $t0 # C = 2 * pi * raio
	mul $t4, $t3, $t2 

	li $v0, 4
	la $a0, comprimento
	syscall

	move $a0, $t4
	li $v0, 1
	syscall