# Exercício 9: Se segundo valor informado = zero -> solicita de novo
.data
	valor1: .asciiz "Digite o primeiro número inteiro: "
	valor2: .asciiz "Digite o segundo valor inteiro: "
	valor2_se_zero: .asciiz "O segundo valor digitado não pode ser igual a zero. Por favor, digite novamente: "
	resultado: .asciiz "O resultado da divisão é igual a: "
.text
main:
	# Print valor 1
	li $v0, 4
	la $a0, valor1
	syscall
	
	# Input valor 1
	li $v0, 5
	syscall
	move $t0, $v0
	
	# Print valor 2
	li $v0, 4
	la $a0, valor2
	syscall
	
	# Input valor 2
	li $v0, 5
	syscall
	move $t1, $v0
	
	# Se valor 2 = zero -> pede a entrada de novo
	beqz $t1, se
	j senao
se:
	# Print valor 2 não pode ser igual a zero
	li $v0, 4
	la $a0, valor2_se_zero
	syscall
	
	# Pede input do valor 2 de novo
	li $v0, 5
	syscall
	move $t1, $v0
	
	# Repete caso o segundo número informado ainda for igual a zero
	beqz $t1, se
senao:
	# Divisão
	div $t2, $t0, $t1
	
	# Print resultado
	li $v0, 4
	la $a0, resultado
	syscall
	
	move $a0, $t2
	li $v0, 1
	syscall
fimse: