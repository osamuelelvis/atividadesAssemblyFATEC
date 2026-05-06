.data
	altura: .asciiz "Digite a altura em centímetros: "
	maior_saida: .asciiz "Maior altura do grupo: "
	menor_saida: .asciiz "\nMenor altura do grupo: "
.text

main:
	li $v0, 4
	la $a0, altura
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	move $t1, $t0
	move $t2, $t0

	li $t3, 14
	
enquanto:
	beq $t3, 0, fim_enquanto

	li $v0, 4
	la $a0, altura
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	blt $t0, $t1, atualiza_menor
	
verifica_maior:
	bgt $t0, $t2, atualiza_maior

continua:
	addi $t3, $t3, -1
	j enquanto
	
atualiza_menor:
    move $t1, $t0
    j verifica_maior

atualiza_maior:
    move $t2, $t0
    j continua
    
fim_enquanto:
	li $v0, 4
	la $a0, maior_saida
	syscall
	
	move $a0, $t2
	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, menor_saida
	syscall
	
	move $a0, $t1
	li $v0, 1
	syscall
