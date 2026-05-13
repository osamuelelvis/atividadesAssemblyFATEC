.data
	input: .asciiz "Digite um número: "	
	msg_negativo: .asciiz "Número negativo! Necessário ser um número inteiro.\n"
	maior: .asciiz "Maior: "
	menor: .asciiz "\nMenor: "
.text
main:
	li $t0, 0
enquanto:
	beq $t0, 10, fim
	
	li $v0, 4
	la $a0, input
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	bltz $t1, negativo
	beq $t0, 0, primeiro
	
	bgt $t1, $t2, novoMaior
	blt $t1, $t3, novoMenor
	
continua:
	addi $t0, $t0, 1
	j enquanto
	
negativo: 
	li $v0, 4
	la $a0, msg_negativo
	syscall
	
	j enquanto
	
primeiro:
	move $t2, $t1
	move $t3, $t1
	
	j continua
	
novoMaior:
	move $t2, $t1
	j verificaMenor
	
novoMenor:
	move $t3, $t1
	j continua
	
verificaMenor:
	blt $t1, $t3, novoMenor
	j continua
	
fim:
	li $v0, 4
	la $a0, maior
	syscall
	
	move $a0, $t2
	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, menor
	syscall
	
	move $a0, $t3
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall
	