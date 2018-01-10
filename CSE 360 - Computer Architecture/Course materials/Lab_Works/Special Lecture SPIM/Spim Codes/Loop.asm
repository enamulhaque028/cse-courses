## Program Loop Found/Not found

        .data
	i:	.word	0		
	j1:      .word   24
var2:   .word   21 20 20 24 23

	.text
	.globl main

main:
	lw	$s3, i		# load contents of RAM location into register $s3:  $s3 = i
	lw	$s5, j1
	la 	$s6, var2
Loop:
	add $t1, $s3, $s3
	add $t1, $t1, $t1
	add $t1, $t1, $s6
	
	 lw $t0, 0($t1)
	 beq $t0, $s5, Exit
	addi $s3, $s3, 1
	j Loop
Exit:	
	la 	$s6, var2
#done
