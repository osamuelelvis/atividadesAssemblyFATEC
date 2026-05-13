.data
	comprimento: .asciiz "Digite o comprimento do paralelepípedo: "
	largura: .asciiz "Digite a largura: "
	altura: .asciiz "Por fim, digite a altura: "
	volume: .asciiz "O volume do paralelepípedo é de: "
.text
main:
	li $v0, 4
	la $a0, comprimento
	syscall

	li $v0, 5
	syscall
	move $t0, $v0

	li $v0, 4
	la $a0, largura
	syscall

	li $v0, 5
	syscall
	move $t1, $v0

	li $v0, 4
	la $a0, altura
	syscall

	li $v0, 5
	syscall
	move $t2, $v0

	mul $t3, $t0, $t1
	mul $t4, $t2, $t3

	li $v0, 4
	la $a0, volume
	syscall

	move $a0, $t4
	li $v0, 1
	syscall