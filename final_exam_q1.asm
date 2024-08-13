.data
    message: .asciiz "Enter the number: "
    result_msg: .asciiz "The 2's complement of the number is: "
    
.text
.globl main

main:
    li $v0, 4
    la $a0, message
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    not $t0, $t0
    addi $t0, $t0, 1

    li $v0, 4
    la $a0, result_msg
    syscall

    li $v0, 1
    move $a0, $t0
    syscall
    
    li $v0, 10
    syscall
