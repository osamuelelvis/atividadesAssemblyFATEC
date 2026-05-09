.data
	salario_atual: .asciiz "Digite o salário atual do funcionário: "
	salario_novo: .asciiz "Salário novo do funcionário: R$"
.text
main:
	li $v0, 4
	la $a0, salario_atual
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $t1, 25
	li $t2, 100
	
	mul $t3, $t0, $t1
	div $t4, $t3, $t2
	add $t5, $t4, $t0
	
	li $v0, 4
	la $a0, salario_novo
	syscall
	
	move $a0, $t5
	li $v0, 1
	syscall