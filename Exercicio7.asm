# Exercício 7: Se par -> + 5; senao -> +8
.data
	entrada: .asciiz "Digite um número inteiro: "
	par: .asciiz "O número digitado é par"
	impar: .asciiz "O número digitado é ímpar"
	final: .asciiz "\nValor final: "
.text
main:
	# Print entrada
	li $v0, 4
	la $a0, entrada
	syscall
	
	# Input entrada
	li $v0, 5
	syscall
	move $t0, $v0
	
	# Se valor digitado % 2 == 0 -> par
	li $t3, 2
	div $t0, $t3
	mfhi $t4
	beq $t4, 0, se
	j senao
se:
	# Print par
	li $v0, 4
	la $a0, par
	syscall

	# Soma + 5
	add $t2, $t0, 5
	j fimse
senao:
	# Print ímpar
	li $v0, 4
	la $a0, impar
	syscall
	
	# Soma + 8
	add $t2, $t0, 8
fimse:
	# Print valor final
	li $v0, 4
	la $a0, final
	syscall
	
	move $a0, $t2
	li $v0, 1
	syscall