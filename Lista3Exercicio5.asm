.data
	valor1: .asciiz "Digite o primeiro valor inteiro: "
	valor2: .asciiz "Digite o segundo valor inteiro: "
	somatoria: .asciiz "A somatória dos números ímpares entre os número informados é igual a: "
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
	
	li $t2, 0
	
	move $t3, $t0
	
LOOP:
	bgt $t3, $t1, FIM
	
	li $t4, 2
	div $t3, $t4
	mfhi $t5
	
	bne $t5, $zero, SOMAR
	
	j CONTINUAR
	
SOMAR:
	add $t2, $t2, $t3
	
CONTINUAR:
	addi $t3, $t3, 1
	j LOOP
	
FIM:
	li $v0, 4
	la $a0, somatoria
	syscall
	
	move $a0, $t2
	li $v0, 1
	syscall