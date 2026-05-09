.data
	valor1: .asciiz "Digite um primeiro valor inteiro (x): "
	valor2: .asciiz "Digite um segundo valor inteiro (y): "
	trocando_msg: .asciiz "Trocando..."
	troca: .asciiz "\nApós a troca:"
	x: .asciiz "\nX = "
	y: .asciiz "\nY = "
.text
main:
	li $v0, 4
	la $a0, valor1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, valor2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $v0, 4
	la $a0, trocando_msg
	syscall
	
	move $t2, $t1
	move $t3, $t0
	
	li $v0, 4
	la $a0, troca
	syscall
	
	li $v0, 4
	la $a0, x
	syscall
	
	move $a0, $t2
	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, y
	syscall
	
	move $a0, $t3
	li $v0, 1
	syscall