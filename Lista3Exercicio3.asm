.data
	valor1: .asciiz "Digite o primeiro valor inteiro: "
	valor2: .asciiz "Digite o segundo valor inteiro: "
	maior: .asciiz "Maior: "
	menor: .asciiz "\nMenor: "
	diferenca: .asciiz "\nA diferença do maior para o menor número é igual a: "
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
	
	bgt $t0, $t1, t0_maior
	
t1_maior:
	li $v0, 4
	la $a0, maior
	syscall
	
	move $a0, $t1
	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, menor
	syscall
	
	move $a0, $t0
	li $v0, 1
	syscall
	
	sub $t2, $t1, $t0
	
	li $v0, 4
	la $a0, diferenca
	syscall
	
	move $a0, $t2
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall

t0_maior:
	li $v0, 4
	la $a0, maior
	syscall
	
	move $a0, $t0
	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, menor
	syscall
	
	move $a0, $t1
	li $v0, 1
	syscall
	
	sub $t2, $t0, $t1
	
	li $v0, 4
	la $a0, diferenca
	syscall
	
	move $a0, $t2
	li $v0, 1
	syscall