.data

	base_maior: .asciiz "Digite o valor da base maior do trapézio: "
	base_menor: .asciiz "Digite o valor da base menor do trapézio: "
	altura: .asciiz "Digite a altura do trapézio: "
	area: .asciiz "Área do trapézio: "

.text
main:
	# Print base maior
	li $v0, 4
	la $a0, base_maior
	syscall
	
	# Input base maior
	li $v0, 5
	syscall
	move $t0, $v0
	
	# Print base menor
	li $v0, 4
	la $a0, base_menor
	syscall
	
	# Input base menor
	li $v0, 5
	syscall
	move $t1, $v0
	
	# Print altura
	li $v0, 4
	la $a0, altura
	syscall
	
	# Input altura
	li $v0, 5
	syscall
	move $t2, $v0
	
	# A = (Base maior + base menor) * altura / 2
	add $t5, $t0, $t1
	mul $t6, $t5, $t2
	div $t7, $t6, 2
	
	# Print área
	li $v0, 4
	la $a0, area
	syscall
	
	move $a0, $t7
	li $v0, 1
	syscall