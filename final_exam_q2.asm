.data
    prompt: .asciiz "Enter the number of rows for the triangle: "
    newline: .asciiz "\n"
    star: .asciiz "*"
    
.text
.globl main

main:
    li $v0, 4
    la $a0, prompt
    syscall

    li $v0, 5
    syscall
    move $t0, $v0

    li $t1, 1

row_loop:
    bgt $t1, $t0, end_loop
    li $t2, 0

star_loop:
    bge $t2, $t1, new_row
    li $v0, 4
    la $a0, star
    syscall

    addi $t2, $t2, 1
    j star_loop

new_row:
    li $v0, 4
    la $a0, newline
    syscall

    addi $t1, $t1, 1
    j row_loop

end_loop:
    li $v0, 10
    syscall
