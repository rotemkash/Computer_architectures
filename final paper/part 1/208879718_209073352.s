	.file	1 "208879718_209073352.c"
	.rdata
	.align	2
$LC0:
	.word	23
	.word	67
	.word	-12
	.word	89
	.word	3
	.word	150
	.word	-45
	.text
	.align	2
	.globl	main
	.ent	main
main:
	.frame	$fp,72,$31		# vars= 48, regs= 2/0, args= 16, extra= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	subu	$sp,$sp,72
	sw	$31,68($sp)
	sw	$fp,64($sp)
	move	$fp,$sp
	jal	__main
	lw	$2,$LC0
	sw	$2,16($fp)
	lw	$2,$LC0+4
	sw	$2,20($fp)
	lw	$2,$LC0+8
	sw	$2,24($fp)
	lw	$2,$LC0+12
	sw	$2,28($fp)
	lw	$2,$LC0+16
	sw	$2,32($fp)
	lw	$2,$LC0+20
	sw	$2,36($fp)
	lw	$2,$LC0+24
	sw	$2,40($fp)
	li	$2,7			# 0x7
	sw	$2,48($fp)
	lw	$2,16($fp)
	sw	$2,56($fp)
	li	$2,1			# 0x1
	sw	$2,52($fp)
$L2:
	lw	$2,52($fp)
	lw	$3,48($fp)
	slt	$2,$2,$3
	bne	$2,$0,$L5
	j	$L3
$L5:
	lw	$2,52($fp)
	sll	$3,$2,2
	addu	$2,$fp,16
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,56($fp)
	slt	$2,$2,$3
	beq	$2,$0,$L4
	lw	$2,52($fp)
	sll	$3,$2,2
	addu	$2,$fp,16
	addu	$2,$3,$2
	lw	$2,0($2)
	sw	$2,56($fp)
$L4:
	lw	$2,52($fp)
	addu	$2,$2,1
	sw	$2,52($fp)
	j	$L2
$L3:
	move	$2,$0
	move	$sp,$fp
	lw	$31,68($sp)
	lw	$fp,64($sp)
	addu	$sp,$sp,72
	j	$31
	.end	main
