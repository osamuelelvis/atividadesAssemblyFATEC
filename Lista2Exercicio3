.data
	mes_nascimento: .asciiz "Digite seu mês de nascimento: "
	ano_nascimento: .asciiz "Digite seu ano de nascimento: "
	mes_atual: .asciiz "Digite o mês atual: "
	ano_atual: .asciiz "Digite o ano atual: "
	idade: .asciiz "Sua idade em meses é de cerca de: "
.text
main:
	li $v0, 4
	la $a0, mes_nascimento
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, ano_nascimento
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $v0, 4
	la $a0, mes_atual
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0
	
	li $v0, 4
	la $a0, ano_atual
	syscall
	
	li $v0, 5
	syscall
	move $t3, $v0
	
	li $t4, 12
	sub $t5, $t3, $t1
	sub $t6, $t2, $t0
	mul $t7, $t5, $t4
	add $t8, $t7, $t6
	
	
	# Pro final - nao faz parte ainda
	li $v0, 4
	la $a0, idade
	syscall
	
	move $a0, $t8
	li $v0, 1
	syscall