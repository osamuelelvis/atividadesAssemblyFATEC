.data

	a: .asciiz "Digite um primeiro valor inteiro: "
	b: .asciiz "Digite um segundo valor inteiro: "
	c: .asciiz "Valor final: "

.text
main:

	li $v0, 4
	la $a0, a
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, b
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	beq $t0, $t1, se
	j senao
se:
	add $t5, $t0, $t1
	j fimse
senao:
	mul $t5, $t0, $t1
fimse:
	li $v0, 4
	la $a0, c
	syscall
	
	move $a0, $t5
	li $v0, 1
	syscall