.data

	hora_normal: .asciiz "\nDigite a quantidade de horas trabalhadas: "
	hora_extra: .asciiz "Digite a quantidade de horas extras trabalhadas (caso houver): "
	desconto: .asciiz "Digite o desconto a ser calculado no salário líquido: "
	total_bruto: .asciiz "Total bruto: "
	total_liquido: .asciiz "Total líquido: "

.text

main:
	# Print hora normal
	li $v0, 4
	la $a0, hora_normal
	syscall
	
	# Input hora normal
	li $v0, 5
	syscall
	move $t0, $v0
	# ----------------
	# Print hora extra
	li $v0, 4
	la $a0, hora_extra
	syscall
	
	# Input hora extra
	li $v0, 5
	syscall
	move $t1, $v0
	# ----------------
	li $t3, 10
	li $t6, 15
	mul $t4, $t3, $t0
	mul $t5, $t6, $t1
	add $t7, $t5, $t4
	
	li $v0, 4
	la $a0, total_bruto
	syscall
	
	move $a0, $t7
	li $v0, 1
	syscall