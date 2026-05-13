.data
	numero: .asciiz "Digite um número inteiro entre 100 e 999: "
	msg_erro: .asciiz "Não são permitidos valores abaixo de 100 e maior que 999.\n"
	centena: .asciiz "\nCentena: "
	dezena: .asciiz "\nDezena: "
	unidade: .asciiz "\nUnidade: "
.text
main:
	li $v0, 4
	la $a0, numero
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	blt $t0, 100, mostraErro
	bgt $t0, 999, mostraErro
	j continua
	
mostraErro:
	li $v0, 4
	la $a0, msg_erro
	syscall
	
continua:
	li $t1, 100
	
	div $t0, $t1
	
	mflo $t2
	mfhi $t3
	
	li $t1, 10
	
	div $t3, $t1
	
	mflo $t4
	mfhi $t5
	
	li $v0, 4
	la $a0, centena
	syscall
	
	move $a0, $t2
	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, dezena
	syscall
	
	move $a0, $t4
	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, unidade
	syscall
	
	move $a0, $t5
	li $v0, 1
	syscall