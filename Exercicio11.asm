.data
	valor: .asciiz "\nDigite um valor entre 0 e 100: "
	fora_intervalo: .asciiz "Valor fora do intervalo!"
	intervalos_025: .asciiz "\nValores entre 0-25: "
	intervalos_2650: .asciiz "\nValores entre 26-50: "
	intervalos_5175: .asciiz "\nValores entre 51-75: "
	intervalos_76100: .asciiz "\nValores entre 76-100: "
.text
main:
	li $t1, 0
	li $t2, 0
	li $t3, 0
	li $t4, 0
loop:
	li $v0, 4
	la $a0, valor
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	bltz $t0, fim_loop
	bgt $t0, 100, invalido
	
	ble $t0, 25, intervalo1
	ble $t0, 50, intervalo2
	ble $t0, 75, intervalo3
	j intervalo4
	
intervalo1:
	addi $t1, $t1, 1
	j loop

intervalo2:
	addi $t2, $t2, 1
	j loop

intervalo3:
	addi $t3, $t3, 1
	j loop

intervalo4:
	addi $t4, $t4, 1
	j loop
	
invalido:
	li $v0, 4
	la $a0, fora_intervalo
	syscall
	j loop
	
fim_loop:
	li $v0, 4
	la $a0, intervalos_025
	syscall
	
	move $a0, $t1
	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, intervalos_2650
	syscall
	
	move $a0, $t2
	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, intervalos_5175
	syscall
	
	move $a0, $t3
	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, intervalos_76100
	syscall
	
	move $a0, $t4
	li $v0, 1
	syscall
