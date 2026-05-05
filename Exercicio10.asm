.data
	valor1: .asciiz "Digite o primeiro valor: "
	valor2: .asciiz "Digite o segundo valor: "
	resto: .asciiz "Resto da divisão: "
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
	
	bgt $t0, $t1, se
	
senao:
	move $t2, $t1
	move $t3, $t0
	j fimse
	
se:
	move $t2, $t0
	move $t3, $t1
	
fimse:
	div $t2, $t3
	mflo $t4
	
	mul $t5, $t4, $t3
	
	sub $t6, $t2, $t5
	
	li $v0, 4
	la $a0, resto
	syscall
	
	move $a0, $t6
	li $v0, 1
	syscall