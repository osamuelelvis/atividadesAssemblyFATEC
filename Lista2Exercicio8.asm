.data
	valor_compra: .asciiz "Digite o valor da compra: "
	valor_parcela: .asciiz "Digite o valor da parcela a ser paga: "
	msg_erro_compra: .asciiz "Não são permitidos produtos abaixo de 1000 reais e maior que 9999 reais.\n"
	msg_erro_parcela: .asciiz "Não são permitidos parcelas abaixo de 100 reais e maior que 500 reais.\n"
	msg_parcelas: .asciiz "Quantidade de parcelas: "
.text
main:

leCompra:
	li $v0, 4
	la $a0, valor_compra
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	blt $t0, 1000, mostraErroCompra
	bgt $t0, 9999, mostraErroCompra
	j leParcela
	
mostraErroCompra:
	li $v0, 4
	la $a0, msg_erro_compra
	syscall
	j leCompra
	
leParcela:
	li $v0, 4
	la $a0, valor_parcela
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	blt $t1, 100, mostraErroParcela
	bgt $t1, 500, mostraErroParcela
	j calcula
	
mostraErroParcela:
	li $v0, 4
	la $a0, msg_erro_parcela
	syscall
	
	j leParcela
	
calcula:
	div $t0, $t1
	
	mflo $t2
	mfhi $t3
	
	beq $t3, $zero, imprime
	
	addi $t2, $t2, 1
	
imprime:
	li $v0, 4
	la $a0, msg_parcelas
	syscall
	
	move $a0, $t2
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall