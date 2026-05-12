.data
	a: .asciiz "Digite o valor de A: "
	b: .asciiz "Digite o valor de B: "
	c: .asciiz "Digite o valor de C: "
	delta: .asciiz "Seu delta: "
	maior_zero: .asciiz "\nDuas raízes reais!"
	igual_zero: .asciiz "\nUma raíz real!"
	menor_zero: .asciiz "\nNão existem raízes reais!"
.text
main:
	li $v0, 4
	la $a0, a
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, b
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $v0, 4
	la $a0, c
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0
	
	mul $t4, $t1, $t1

	li $t3, 4
	mul $t5, $t3, $t0
	mul $t6, $t5, $t2
	
	sub $t7, $t4, $t6
	
	li $v0, 4
	la $a0, delta
	syscall
	
	move $a0, $t7
	li $v0, 1
	syscall
	
	bgtz $t7, se_maior_zero
	beqz $t7, se_igual_zero
	bltz $t7, se_menor_zero
	
se_menor_zero:
	li $v0, 4
	la $a0, menor_zero
	syscall
	
	li $v0, 10
	syscall
	
se_igual_zero:
	li $v0, 4
	la $a0, igual_zero
	syscall
	
	li $v0, 10
	syscall
	
se_maior_zero:
	li $v0, 4
	la $a0, maior_zero
	syscall
	
	li $v0, 10
	syscall
	