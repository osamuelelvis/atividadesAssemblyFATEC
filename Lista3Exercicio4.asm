.data
	nota1: .asciiz "Digite a primeira nota do aluno: "
	nota2: .asciiz "Digite a segunda nota do aluno: "
	nota3: .asciiz "Digite a terceira nota do aluno: "
	nota4: .asciiz "Digite a quarta nota do aluno: "
	
	msg_media: .asciiz "Média do aluno: "
	msg_aprovado: .asciiz "\nAPROVADO!"
	msg_exame: .asciiz "\nEXAME!"
	msg_retido: .asciiz "\nRETIDO!"
.text
main:
	li $v0, 4
	la $a0, nota1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, nota2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $v0, 4
	la $a0, nota3
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0
	
	li $v0, 4
	la $a0, nota4
	syscall
	
	li $v0, 5
	syscall
	move $t3, $v0
	
	add $t5, $t0, $t1
	add $t5, $t5, $t2
	add $t5, $t5, $t3
	
	li $t4, 4
	div $t5, $t4
	mflo $t6
	
	li $v0, 4
	la $a0, msg_media
	syscall
	
	move $a0, $t6
	li $v0, 1
	syscall
	
	li $t7, 6
	bge $t6, $t7, APROVADO
	
	li $t7, 3
	bge $t6, $t7, EXAME
	
	j RETIDO
	
APROVADO:
	li $v0, 4
	la $a0, msg_aprovado
	syscall 
	j FIM
	
EXAME:
	li $v0, 4
	la $a0, msg_exame
	syscall
	j FIM
	
RETIDO:
	li $v0, 4
	la $a0, msg_retido
	syscall
	
FIM: