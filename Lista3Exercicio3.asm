.data
	valor1: .asciiz "Digite o primeiro valor inteiro: "
	valor2: .asciiz "Digite o segundo valor inteiro: "
	maior: .asciiz "Maior: "
	menor: .asciiz "Menor: "
	diferenca: .asciiz "A diferença do maior para o menor número é igual a: "
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
	
	