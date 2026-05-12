.data
	valor1: .asciiz "Digite o primeiro valor inteiro: "
	valor2: .asciiz "Digite o segundo valor inteiro: "
	iguais: .asciiz "Os valores são iguais!"
	diferentes: .asciiz "Os valores são diferentes!"
	msg_maior: .asciiz "\nMaior: "
	msg_menor: .asciiz "\nMenor: "
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
	
	beq $t1, $t0, se_iguais
	
se_diferentes:
	li $v0, 4
	la $a0, diferentes
	syscall
	
	bgt $t0, $t1, t0_maior
	
se_iguais:
	li $v0, 4
	la $a0, iguais
	syscall
	
	li $v0, 10
	syscall