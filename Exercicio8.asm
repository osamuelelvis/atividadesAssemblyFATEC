# Exercício 8: Se positivo -> multiplicar por 2; se negativo -> multiplicar por 3
.data
	valor: .asciiz "Digite um número inteiro positivo ou negativo: "
	positivo: .asciiz "O número digitado é positivo"
	negativo: .asciiz "O número digitado é negativo"
	dobro: .asciiz "\nO dobro do número positivo informado é igual a: "
	triplo: .asciiz "\nO triplo do número negativo informado é igual a: "
.text
main:
	# Print inserção de valor
	li $v0, 4
	la $a0, valor
	syscall
	
	# Input valor
	li $v0, 5
	syscall
	move $t0, $v0
	
	# Se valor informado >= 0 -> multiplica por 2
	bgez $t0, se
	
	# Senão -> multiplica por 3
	j senao
se:
	# Print positivo
	li $v0, 4
	la $a0, positivo
	syscall
	
	# Valor informado * 2
	mul $t1, $t0, 2
	
	# Print resultado positivo
	li $v0, 4
	la $a0, dobro
	syscall
	
	move $a0, $t1
	li $v0, 1
	syscall
	
	j fimse
senao:
	# Print negativo
	li $v0, 4
	la $a0, negativo
	syscall
	
	# Valor informado * 3
	mul $t1, $t0, 3
	
	# Print resultado negativo
	li $v0, 4
	la $a0, triplo
	syscall
	
	move $a0, $t1
	li $v0, 1
	syscall 
fimse: