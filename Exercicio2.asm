# Exercício 2: Valor arrecadado de vendas de camisetas
.data
	peq: .asciiz "\nDigite o número de camisetas pequenas vendidas: "
	med: .asciiz "\nDigite o número de camisetas médias vendidas: "
	gra: .asciiz "\nDigite o número de camisetas grandes vendidas: "
	respeq: .asciiz "\nValor arrecadado com camisetas pequenas: R$"
	resmed: .asciiz "\nValor arrecadado com camisetas médias: R$"
	resgra: .asciiz "\nValor arrecadado com camisetas grandes: R$"
	total: .asciiz "\nValor arrecadado: R$"
.text
main:
	# Print camisetas pequenas
	li $v0, 4
	la $a0, peq
	syscall
	
	# Input camisetas pequenas
	li $v0, 5
	syscall
	move $t0, $v0
	
	# ----------------------
	
	# Print camisetas médias
	li $v0, 4
	la $a0, med
	syscall
	
	# Input camisetas médias
	li $v0, 5
	syscall
	move $t1, $v0
	
	# -----------------------
	
	# Print camisetas grandes
	li $v0, 4
	la $a0, gra
	syscall
	
	# Input camisetas grandes
	li $v0, 5
	syscall
	move $t2, $v0
	
	# -----------------------
	# Cálculo camisetas pequenas
	li $t6, 10
	mul $t3, $t0, $t6
	
	# Cálculo camisetas média
	li $t7, 12
	mul $t4, $t1, $t7
	
	# Cálculo camisetas grandes
	li $t8, 15
	mul $t5, $t2, $t8
	
	# Print resultado camisetas pequenas
	li $v0, 4
	la $a0, respeq
	syscall
	
	move $a0, $t3
	li $v0, 1
	syscall
	
	# Print resultado camisetas médias
	li $v0, 4
	la $a0, resmed
	syscall
	
	move $a0, $t4
	li $v0, 1
	syscall
	
	# Print resultado camisetas grandes
	li $v0, 4
	la $a0, resgra
	syscall
	
	move $a0, $t5
	li $v0, 1
	syscall
	
	# Cálculo valor parcial e total
	add $t9, $t3, $t4
	add $t9, $t9, $t5
	
	# Print valor total
	li $v0, 4
	la $a0, total
	syscall
	
	move $a0, $t9
	li $v0, 1
	syscall