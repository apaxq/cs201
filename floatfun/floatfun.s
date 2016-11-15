	.file	"floatfun.c"
	.text
.Ltext0:
	.globl	printAsBinary
	.type	printAsBinary, @function
printAsBinary:
.LFB2:
	.file 1 "floatfun.c"
	.loc 1 18 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
.LBB2:
	.loc 1 19 0
	movl	$31, -8(%rbp)
	jmp	.L2
.L6:
.LBB3:
	.loc 1 20 0
	movl	-8(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 1 21 0
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L3
	.loc 1 22 0
	movl	$49, %edi
	call	putchar
	jmp	.L4
.L3:
	.loc 1 24 0
	movl	$48, %edi
	call	putchar
.L4:
	.loc 1 26 0
	movl	-8(%rbp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	.L5
	.loc 1 27 0
	movl	$32, %edi
	call	putchar
.L5:
.LBE3:
	.loc 1 19 0 discriminator 2
	subl	$1, -8(%rbp)
.L2:
	.loc 1 19 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)
	jns	.L6
.LBE2:
	.loc 1 30 0 is_stmt 1
	movl	$10, %edi
	call	putchar
	.loc 1 31 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	printAsBinary, .-printAsBinary
	.globl	getSignBit
	.type	getSignBit, @function
getSignBit:
.LFB3:
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	.loc 1 40 0
	movl	-20(%rbp), %eax
	sarl	$31, %eax
	movl	%eax, -4(%rbp)
	.loc 1 41 0
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L8
	.loc 1 42 0
	movl	$1, %eax
	jmp	.L9
.L8:
	.loc 1 44 0
	movl	$0, %eax
.L9:
	.loc 1 46 0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	getSignBit, .-getSignBit
	.globl	getExpbits
	.type	getExpbits, @function
getExpbits:
.LFB4:
	.loc 1 54 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 55 0
	movl	$0, -12(%rbp)
.LBB4:
	.loc 1 56 0
	movl	$30, -8(%rbp)
	jmp	.L11
.L13:
.LBB5:
	.loc 1 57 0
	movl	-8(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 1 58 0
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L12
	.loc 1 59 0
	pxor	%xmm2, %xmm2
	cvtsi2sd	-12(%rbp), %xmm2
	movsd	%xmm2, -32(%rbp)
	movl	-8(%rbp), %eax
	subl	$23, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movabsq	$4611686018427387904, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	call	pow
	addsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
.L12:
.LBE5:
	.loc 1 56 0 discriminator 2
	subl	$1, -8(%rbp)
.L11:
	.loc 1 56 0 is_stmt 0 discriminator 1
	cmpl	$23, -8(%rbp)
	jg	.L13
.LBE4:
	.loc 1 62 0 is_stmt 1
	movl	-12(%rbp), %eax
	.loc 1 63 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	getExpbits, .-getExpbits
	.globl	getFraction
	.type	getFraction, @function
getFraction:
.LFB5:
	.loc 1 71 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	.loc 1 72 0
	movl	$0, -12(%rbp)
.LBB6:
	.loc 1 73 0
	movl	$23, -8(%rbp)
	jmp	.L16
.L18:
.LBB7:
	.loc 1 74 0
	movl	-8(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
	.loc 1 75 0
	movl	-4(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L17
	.loc 1 76 0
	pxor	%xmm2, %xmm2
	cvtsi2sd	-12(%rbp), %xmm2
	movsd	%xmm2, -32(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sd	-8(%rbp), %xmm0
	movabsq	$4611686018427387904, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -40(%rbp)
	movsd	-40(%rbp), %xmm0
	call	pow
	addsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -12(%rbp)
.L17:
.LBE7:
	.loc 1 73 0 discriminator 2
	subl	$1, -8(%rbp)
.L16:
	.loc 1 73 0 is_stmt 0 discriminator 1
	cmpl	$0, -8(%rbp)
	jns	.L18
.LBE6:
	.loc 1 79 0 is_stmt 1
	movl	-12(%rbp), %eax
	.loc 1 80 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	getFraction, .-getFraction
	.section	.rodata
.LC1:
	.string	"Usage: %s float_value\n"
.LC2:
	.string	"Austin Parrish\n"
.LC3:
	.string	"float val:\t\t%f\n"
.LC4:
	.string	"in hex:\t\t\t%#08x\t"
.LC5:
	.string	"sign: %d\t"
.LC6:
	.string	"\t\t%#08x\t"
.LC7:
	.string	"expbits: %d\t\t"
.LC8:
	.string	"%#08x\t"
.LC9:
	.string	"fraction: %d\t"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.loc 1 82 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	.loc 1 82 0
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 83 0
	cmpl	$2, -20(%rbp)
	je	.L21
	.loc 1 84 0
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	.loc 1 85 0
	movl	$-1, %eax
	jmp	.L22
.L21:
	.loc 1 88 0
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atof
	cvtsd2ss	%xmm0, %xmm1
	movd	%xmm1, %eax
	movl	%eax, -12(%rbp)
	.loc 1 90 0
	movl	$.LC2, %edi
	call	puts
	.loc 1 92 0
	movss	-12(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.LC3, %edi
	movl	$1, %eax
	call	printf
	.loc 1 93 0
	leaq	-12(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	.loc 1 94 0
	leaq	-12(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	printAsBinary
	.loc 1 95 0
	movl	$10, %edi
	call	putchar
	.loc 1 97 0
	leaq	-12(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	getSignBit
	movl	%eax, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	.loc 1 98 0
	leaq	-12(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	getSignBit
	movl	%eax, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	.loc 1 99 0
	leaq	-12(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	getSignBit
	movl	%eax, %edi
	call	printAsBinary
	.loc 1 101 0
	leaq	-12(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	getExpbits
	movl	%eax, %esi
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	.loc 1 102 0
	leaq	-12(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	getExpbits
	movl	%eax, %esi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	.loc 1 103 0
	leaq	-12(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	getExpbits
	movl	%eax, %edi
	call	printAsBinary
	.loc 1 105 0
	leaq	-12(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	getFraction
	movl	%eax, %esi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	.loc 1 106 0
	leaq	-12(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	getFraction
	movl	%eax, %esi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	.loc 1 107 0
	leaq	-12(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	getFraction
	movl	%eax, %edi
	call	printAsBinary
	movl	$0, %eax
.L22:
	.loc 1 108 0
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L23
	call	__stack_chk_fail
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x27a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF21
	.byte	0x1
	.long	.LASF22
	.long	.LASF23
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.long	0x72
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF12
	.uleb128 0x5
	.long	.LASF24
	.byte	0x1
	.byte	0x12
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xfd
	.uleb128 0x6
	.long	.LASF13
	.byte	0x1
	.byte	0x12
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x7
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x13
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x8
	.string	"j"
	.byte	0x1
	.byte	0x14
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF14
	.byte	0x1
	.byte	0x27
	.long	0x57
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x139
	.uleb128 0xa
	.string	"num"
	.byte	0x1
	.byte	0x27
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x8
	.string	"j"
	.byte	0x1
	.byte	0x28
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	.LASF15
	.byte	0x1
	.byte	0x36
	.long	0x57
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b3
	.uleb128 0xa
	.string	"num"
	.byte	0x1
	.byte	0x36
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.long	.LASF16
	.byte	0x1
	.byte	0x37
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x38
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x8
	.string	"j"
	.byte	0x1
	.byte	0x39
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0x47
	.long	0x57
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x22d
	.uleb128 0xa
	.string	"num"
	.byte	0x1
	.byte	0x47
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.long	.LASF16
	.byte	0x1
	.byte	0x48
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x7
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x49
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x7
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x8
	.string	"j"
	.byte	0x1
	.byte	0x4a
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.byte	0x52
	.long	0x57
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x277
	.uleb128 0x6
	.long	.LASF19
	.byte	0x1
	.byte	0x52
	.long	0x57
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.long	.LASF20
	.byte	0x1
	.byte	0x52
	.long	0x277
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x8
	.string	"y"
	.byte	0x1
	.byte	0x58
	.long	0x87
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x4
	.byte	0x8
	.long	0x6c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"long long int"
.LASF3:
	.string	"unsigned int"
.LASF18:
	.string	"main"
.LASF24:
	.string	"printAsBinary"
.LASF0:
	.string	"long unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF21:
	.string	"GNU C 4.9.2 -mtune=generic -march=x86-64 -g -std=gnu99 -fstack-protector-strong"
.LASF23:
	.string	"/home/aparrish"
.LASF8:
	.string	"char"
.LASF15:
	.string	"getExpbits"
.LASF14:
	.string	"getSignBit"
.LASF1:
	.string	"unsigned char"
.LASF16:
	.string	"result"
.LASF6:
	.string	"long int"
.LASF12:
	.string	"double"
.LASF13:
	.string	"numToPrint"
.LASF19:
	.string	"argc"
.LASF2:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF22:
	.string	"floatfun.c"
.LASF20:
	.string	"argv"
.LASF11:
	.string	"float"
.LASF5:
	.string	"short int"
.LASF17:
	.string	"getFraction"
.LASF7:
	.string	"sizetype"
	.ident	"GCC: (Ubuntu 4.9.2-10ubuntu13) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
