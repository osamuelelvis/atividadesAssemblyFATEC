# Exercício 5: Cálculo da hipotenusa
.data

	cateto1: .asciiz "Digite o valor do cateto 1: "
	cateto2: .asciiz "Digite o valor do cateto 2: "
	hipotenusa: .asciiz "Valor da hipotenusa: "

.text
main:
	# Print cateto 1
	li $v0, 4
	la $a0, cateto1
	syscall
	
	# Input cateto 1
	li $v0, 5
	syscall
	move $t0, $v0 
	# --------------
	# Print cateto 2
	li $v0, 4
	la $a0, cateto2
	syscall
	
	# Input cateto 2
	li $v0, 5
	syscall
	move $t1, $v0
	# --------------
	# Cálculo da hipotenusa
	mul $t5, $t0, $t0
	mul $t6, $t1, $t1
	add $t7, $t5, $t6
	mtc1 $t7, $f0
	cvt.s.w $f0, $f0
	sqrt.s $f2, $f0
	
	# Print hipotenusa
	li $v0, 4
	la $a0, hipotenusa
	syscall
	
	mov.s $f12, $f2
	li $v0, 2
	syscall