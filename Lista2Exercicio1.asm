.data
	dolar: .asciiz "Digite o valor em dólares: $"
	reais: .asciiz "O valor em reais é igual a: R$"
.text
main:
	li $v0, 4
	la $a0, dolar
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $t1, 5
	mul $t2, $t0, $t1
	
	li $v0, 4
	la $a0, reais
	syscall
	
	move $a0, $t2
	li $v0, 1
	syscall