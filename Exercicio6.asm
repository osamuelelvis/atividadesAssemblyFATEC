# Exercício 6: Se A = B -> soma; senao -> multiplica
.data

	a: .asciiz "Digite um primeiro valor inteiro: "
	b: .asciiz "Digite um segundo valor inteiro: "
	c: .asciiz "Valor final: "

.text
main:
	# Print A
	li $v0, 4
	la $a0, a
	syscall
	
	# Input A
	li $v0, 5
	syscall
	move $t0, $v0
	
	# Print B
	li $v0, 4
	la $a0, b
	syscall
	
	# Input B
	li $v0, 5
	syscall
	move $t1, $v0
	
	# Se (A == B) Faça
	beq $t0, $t1, se
	j senao
se:
	# Soma de A e B
	add $t2, $t0, $t1
	j fimse
senao:
	# Multiplicação de A e B
	mul $t2, $t0, $t1
fimse:
	# Print C
	li $v0, 4
	la $a0, c
	syscall
	
	move $a0, $t2
	li $v0, 1
	syscall