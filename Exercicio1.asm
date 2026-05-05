# Exercício 1: Área do terreno
.data
	lado: .asciiz "\nDigite o lado do terreno: "
	resultado: .asciiz "Área do terreno: "
.text
main:
	# Print lado terreno
	li $v0, 4
	la $a0, lado
	syscall
	
	# Input lado terreno
	li $v0, 5
	syscall
	addi $t0, $v0, 0
	
	#Área = lado * lado
	mul $t2, $t0, $t0
	
	# Print resultado
	li $v0, 4
	la $a0, resultado
	syscall
	
	move $a0, $t2
	li $v0, 1
	syscall
