	.file	"IA.c"
	.comm	a,162,32
	.text
	.globl	change
	.type	change, @function
change:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L2
.L3:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movw	%ax, -18(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	addq	%rax, %rax
	subq	$2, %rax
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	movw	%ax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	addq	%rax, %rax
	subq	$2, %rax
	addq	%rax, %rdx
	movzwl	-18(%rbp), %eax
	movw	%ax, (%rdx)
	addq	$1, -16(%rbp)
.L2:
	movq	-8(%rbp), %rax
	shrq	%rax
	cmpq	-16(%rbp), %rax
	ja	.L3
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	change, .-change
	.globl	comp
	.type	comp, @function
comp:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jbe	.L5
	movl	$1, %eax
	jmp	.L6
.L5:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L7
	movl	$0, %eax
	jmp	.L6
.L7:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.L8
.L11:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	jbe	.L9
	movl	$1, %eax
	jmp	.L6
.L9:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	cmpw	%ax, %dx
	jnb	.L10
	movl	$0, %eax
	jmp	.L6
.L10:
	subq	$1, -8(%rbp)
.L8:
	cmpq	$9999998, -8(%rbp)
	jbe	.L11
	movl	$1, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	comp, .-comp
	.globl	cp
	.type	cp, @function
cp:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	16(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	$0, -8(%rbp)
	jmp	.L13
.L14:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	movw	%ax, (%rdx)
	addq	$1, -8(%rbp)
.L13:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-8(%rbp), %rax
	ja	.L14
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	cp, .-cp
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d\n"
	.text
	.globl	print
	.type	print, @function
print:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$-1, %eax
	jne	.L16
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$1, %rax
	jne	.L17
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	je	.L16
.L17:
	movl	$45, %edi
	call	putchar
.L16:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.L18
.L19:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	subq	$1, -8(%rbp)
.L18:
	cmpq	$0, -8(%rbp)
	jne	.L19
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	print, .-print
	.section	.rodata
.LC2:
	.string	"%d "
	.text
	.globl	in
	.type	in, @function
in:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L21
.L91:
	movq	-88(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-96(%rbp), %rax
	movl	$1, 16(%rax)
	cmpb	$43, -67(%rbp)
	jne	.L22
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L23
.L22:
	cmpb	$45, -67(%rbp)
	jne	.L24
	movq	-88(%rbp), %rax
	movl	$-1, 16(%rax)
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L23
.L24:
	cmpb	$47, -67(%rbp)
	jle	.L25
	cmpb	$57, -67(%rbp)
	jle	.L23
.L25:
	movl	$0, %eax
	call	err
	jmp	.L26
.L27:
	call	getchar
	movb	%al, -67(%rbp)
.L26:
	cmpb	$10, -67(%rbp)
	jne	.L27
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L28
.L29:
	call	getchar
	movb	%al, -67(%rbp)
.L28:
	cmpb	$10, -67(%rbp)
	jne	.L29
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L30
.L31:
	call	getchar
	movb	%al, -67(%rbp)
.L30:
	cmpb	$10, -67(%rbp)
	jne	.L31
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L21
.L23:
	movq	$0, -64(%rbp)
	jmp	.L32
.L42:
	cmpb	$47, -67(%rbp)
	jle	.L33
	cmpb	$57, -67(%rbp)
	jg	.L33
	cmpq	$99999, -64(%rbp)
	jbe	.L34
.L33:
	movl	$0, %eax
	call	err
	jmp	.L35
.L36:
	call	getchar
	movb	%al, -67(%rbp)
.L35:
	cmpb	$10, -67(%rbp)
	jne	.L36
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L37
.L38:
	call	getchar
	movb	%al, -67(%rbp)
.L37:
	cmpb	$10, -67(%rbp)
	jne	.L38
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L39
.L40:
	call	getchar
	movb	%al, -67(%rbp)
.L39:
	cmpb	$10, -67(%rbp)
	jne	.L40
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L41
.L34:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movsbw	-67(%rbp), %dx
	subl	$48, %edx
	movw	%dx, (%rax)
	call	getchar
	movb	%al, -67(%rbp)
	addq	$1, -64(%rbp)
.L32:
	cmpb	$10, -67(%rbp)
	jne	.L42
.L41:
	cmpb	$10, -67(%rbp)
	je	.L43
	jmp	.L21
.L43:
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rax)
	call	getchar
	movb	%al, -67(%rbp)
	cmpb	$43, -67(%rbp)
	jne	.L44
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L45
.L44:
	cmpb	$45, -67(%rbp)
	jne	.L46
	movq	-96(%rbp), %rax
	movl	$-1, 16(%rax)
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L45
.L46:
	cmpb	$47, -67(%rbp)
	jle	.L47
	cmpb	$57, -67(%rbp)
	jle	.L45
.L47:
	movl	$0, %eax
	call	err
	jmp	.L48
.L49:
	call	getchar
	movb	%al, -67(%rbp)
.L48:
	cmpb	$10, -67(%rbp)
	jne	.L49
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L50
.L51:
	call	getchar
	movb	%al, -67(%rbp)
.L50:
	cmpb	$10, -67(%rbp)
	jne	.L51
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L21
.L45:
	movq	$0, -56(%rbp)
	jmp	.L52
.L60:
	cmpb	$47, -67(%rbp)
	jle	.L53
	cmpb	$57, -67(%rbp)
	jg	.L53
	cmpq	$99999, -56(%rbp)
	jbe	.L54
.L53:
	movl	$0, %eax
	call	err
	jmp	.L55
.L56:
	call	getchar
	movb	%al, -67(%rbp)
.L55:
	cmpb	$10, -67(%rbp)
	jne	.L56
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L57
.L58:
	call	getchar
	movb	%al, -67(%rbp)
.L57:
	cmpb	$10, -67(%rbp)
	jne	.L58
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L59
.L54:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movsbw	-67(%rbp), %dx
	subl	$48, %edx
	movw	%dx, (%rax)
	call	getchar
	movb	%al, -67(%rbp)
	addq	$1, -56(%rbp)
.L52:
	cmpb	$10, -67(%rbp)
	jne	.L60
.L59:
	cmpb	$10, -67(%rbp)
	je	.L61
	jmp	.L21
.L61:
	movq	-96(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	call	getchar
	movb	%al, -67(%rbp)
	cmpb	$10, -67(%rbp)
	je	.L62
	call	getchar
	movw	%ax, -66(%rbp)
	cmpw	$10, -66(%rbp)
	je	.L64
	jmp	.L93
.L62:
	movl	$0, %eax
	call	err
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L21
.L93:
	movl	$0, %eax
	call	err
	jmp	.L65
.L66:
	call	getchar
	movw	%ax, -66(%rbp)
.L65:
	cmpw	$10, -66(%rbp)
	jne	.L66
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L21
.L64:
	cmpb	$43, -67(%rbp)
	je	.L67
	cmpb	$45, -67(%rbp)
	je	.L67
	cmpb	$42, -67(%rbp)
	je	.L67
	cmpb	$47, -67(%rbp)
	je	.L67
	movl	$0, %eax
	call	err
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L21
.L67:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	change
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	change
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	clear
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	clear
	cmpb	$43, -67(%rbp)
	jne	.L68
	movl	$24, %edi
	call	malloc
	movq	%rax, -8(%rbp)
	movl	$2, %esi
	movl	$100001, %edi
	call	calloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	jne	.L69
	movq	-96(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	jne	.L69
	movq	-8(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	add
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
.L69:
	movq	-88(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$-1, %eax
	jne	.L70
	movq	-96(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$-1, %eax
	jne	.L70
	movq	-8(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	add
	movq	-8(%rbp), %rax
	movl	$-1, 16(%rax)
.L70:
	movq	-88(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	jne	.L71
	movq	-96(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$-1, %eax
	jne	.L71
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	comp
	cmpl	$1, %eax
	jne	.L72
	movq	-8(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sub
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
	jmp	.L71
.L72:
	movq	-8(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sub
	movq	-8(%rbp), %rax
	movl	$-1, 16(%rax)
.L71:
	movq	-88(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$-1, %eax
	jne	.L73
	movq	-96(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	jne	.L73
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	comp
	cmpl	$1, %eax
	jne	.L74
	movq	-8(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sub
	movq	-8(%rbp), %rax
	movl	$-1, 16(%rax)
	jmp	.L73
.L74:
	movq	-8(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sub
	movq	-8(%rbp), %rax
	movl	$1, 16(%rax)
.L73:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	print
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
	jmp	.L75
.L68:
	cmpb	$45, -67(%rbp)
	jne	.L76
	movl	$24, %edi
	call	malloc
	movq	%rax, -16(%rbp)
	movl	$2, %esi
	movl	$100001, %edi
	call	calloc
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-96(%rbp), %rax
	movl	16(%rax), %eax
	negl	%eax
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-88(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	jne	.L77
	movq	-96(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	jne	.L77
	movq	-16(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	add
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
.L77:
	movq	-88(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$-1, %eax
	jne	.L78
	movq	-96(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$-1, %eax
	jne	.L78
	movq	-16(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	add
	movq	-16(%rbp), %rax
	movl	$-1, 16(%rax)
.L78:
	movq	-88(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	jne	.L79
	movq	-96(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$-1, %eax
	jne	.L79
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	comp
	cmpl	$1, %eax
	jne	.L80
	movq	-16(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sub
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
	jmp	.L79
.L80:
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sub
	movq	-16(%rbp), %rax
	movl	$-1, 16(%rax)
.L79:
	movq	-88(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$-1, %eax
	jne	.L81
	movq	-96(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	jne	.L81
	movq	-96(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	comp
	cmpl	$1, %eax
	jne	.L82
	movq	-16(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sub
	movq	-16(%rbp), %rax
	movl	$-1, 16(%rax)
	jmp	.L81
.L82:
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sub
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
.L81:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	print
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	jmp	.L75
.L76:
	cmpb	$42, -67(%rbp)
	jne	.L83
	movl	$24, %edi
	call	malloc
	movq	%rax, -24(%rbp)
	movl	$2, %esi
	movl	$200010, %edi
	call	calloc
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	multi
	movq	-88(%rbp), %rax
	movl	16(%rax), %edx
	movq	-96(%rbp), %rax
	movl	16(%rax), %eax
	imull	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	print
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free
	jmp	.L75
.L83:
	cmpb	$47, -67(%rbp)
	jne	.L75
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$1, %rax
	jne	.L84
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	je	.L85
.L84:
	movq	-88(%rbp), %rax
	movl	16(%rax), %edx
	movq	-96(%rbp), %rax
	movl	16(%rax), %eax
	addl	%edx, %eax
	cmpl	$2, %eax
	je	.L86
.L85:
	movl	$0, %eax
	call	err
	call	getchar
	movb	%al, -67(%rbp)
	jmp	.L21
.L86:
	movl	$24, %edi
	call	malloc
	movq	%rax, -40(%rbp)
	movl	$2, %esi
	movl	$100000, %edi
	call	calloc
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$24, %edi
	call	malloc
	movq	%rax, -32(%rbp)
	movl	$2, %esi
	movl	$100000, %edi
	call	calloc
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	div
	movq	-40(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$-1, %eax
	jne	.L87
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$1, %rax
	jne	.L88
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	je	.L87
.L88:
	movl	$45, %edi
	call	putchar
.L87:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.L89
.L90:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	subq	$1, -48(%rbp)
.L89:
	cmpq	$0, -48(%rbp)
	jne	.L90
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	print
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
.L75:
	call	getchar
	movb	%al, -67(%rbp)
.L21:
	cmpb	$-1, -67(%rbp)
	jne	.L91
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	in, .-in
	.section	.rodata
.LC3:
	.string	"/home/xhz/data"
.LC4:
	.string	"w"
.LC5:
	.string	"\346\227\240\346\263\225\346\211\223\345\274\200\346\226\207\344\273\266"
	.text
	.globl	test
	.type	test, @function
test:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	$.LC3, -16(%rbp)
	movb	$50, -25(%rbp)
	movq	-16(%rbp), %rax
	movl	$.LC4, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L95
	movl	$.LC5, %edi
	call	puts
	movl	$0, %edi
	call	exit
.L95:
	movq	$0, -24(%rbp)
	jmp	.L96
.L97:
	movsbl	-25(%rbp), %eax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc
	addq	$1, -24(%rbp)
.L96:
	cmpq	$99999, -24(%rbp)
	jle	.L97
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	test, .-test
	.globl	clear
	.type	clear, @function
clear:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	jmp	.L100
.L102:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
.L100:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rax, %rax
	subq	$2, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	testw	%ax, %ax
	jne	.L103
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$1, %rax
	jne	.L102
.L103:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	clear, .-clear
	.section	.rodata
.LC6:
	.string	"Error Input!"
	.text
	.globl	err
	.type	err, @function
err:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$.LC6, %edi
	call	puts
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	err, .-err
	.globl	add
	.type	add, @function
add:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movw	$0, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L107
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.L107
.L110:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %edx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	addl	%eax, %edx
	movzwl	-36(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -34(%rbp)
	cmpw	$9, -34(%rbp)
	jbe	.L108
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	-34(%rbp), %edx
	subl	$10, %edx
	movw	%dx, (%rax)
	movw	$1, -36(%rbp)
	jmp	.L109
.L108:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movzwl	-34(%rbp), %eax
	movw	%ax, (%rdx)
	movw	$0, -36(%rbp)
.L109:
	addq	$1, -32(%rbp)
.L107:
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L110
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L111
	cmpw	$1, -36(%rbp)
	jne	.L111
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movw	$1, (%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L112
.L111:
	cmpw	$1, -36(%rbp)
	jne	.L123
	jmp	.L114
.L118:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	addl	$1, %eax
	movw	%ax, (%rdx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	cmpw	$10, %ax
	jne	.L126
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movw	$0, (%rax)
	addq	$1, -32(%rbp)
.L114:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L118
	jmp	.L117
.L126:
	nop
.L117:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.L119
	cmpw	$1, -36(%rbp)
	jne	.L119
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movw	$1, (%rax)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L112
.L119:
	addq	$1, -32(%rbp)
	jmp	.L121
.L122:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	movw	%ax, (%rdx)
	addq	$1, -32(%rbp)
.L121:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L122
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L105
.L124:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	movw	%ax, (%rdx)
	addq	$1, -32(%rbp)
.L123:
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jb	.L124
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L112:
	nop
.L105:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	add, .-add
	.globl	sub
	.type	sub, @function
sub:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$56, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movw	$0, -28(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L128
.L131:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %edx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	subw	-28(%rbp), %ax
	movw	%ax, -26(%rbp)
	cmpw	$10, -26(%rbp)
	jbe	.L129
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	-26(%rbp), %edx
	addl	$10, %edx
	movw	%dx, (%rax)
	movw	$1, -28(%rbp)
	jmp	.L130
.L129:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movzwl	-26(%rbp), %eax
	movw	%ax, (%rdx)
	movw	$0, -28(%rbp)
.L130:
	addq	$1, -24(%rbp)
.L128:
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jb	.L131
	cmpw	$1, -28(%rbp)
	jne	.L141
	jmp	.L133
.L137:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	subl	$1, %eax
	movw	%ax, (%rdx)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	cmpw	$10, %ax
	jbe	.L144
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movw	$9, (%rax)
	addq	$1, -24(%rbp)
.L133:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L137
	jmp	.L136
.L144:
	nop
.L136:
	addq	$1, -24(%rbp)
	jmp	.L138
.L139:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	movw	%ax, (%rdx)
	addq	$1, -24(%rbp)
.L138:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L139
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L140
.L142:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	movw	%ax, (%rdx)
	addq	$1, -24(%rbp)
.L141:
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jb	.L142
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L140:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	clear
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	sub, .-sub
	.globl	multi
	.type	multi, @function
multi:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$72, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L146
.L152:
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	cmpq	$1000000000, %rax
	ja	.L147
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	$1, %rax
	jmp	.L148
.L147:
	movl	$0, %eax
.L148:
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L149
.L151:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	imulq	%rdx, %rax
	addq	%rax, -40(%rbp)
	addq	$1, -24(%rbp)
	movq	-8(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.L149:
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	ja	.L150
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-24(%rbp), %rax
	jbe	.L150
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	ja	.L151
.L150:
	movq	-40(%rbp), %rax
	movabsq	$-3689348814741910323, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdx
	leaq	(%rax,%rdx), %rsi
	movq	-40(%rbp), %rcx
	movabsq	$-3689348814741910323, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	shrq	$3, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movl	%edx, %eax
	movw	%ax, (%rsi)
	addq	$1, -8(%rbp)
.L146:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	addq	%rdx, %rax
	subq	$2, %rax
	cmpq	-8(%rbp), %rax
	jnb	.L152
	cmpq	$0, -32(%rbp)
	jne	.L153
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	clear
	jmp	.L145
.L153:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movw	%dx, (%rax)
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	clear
	nop
.L145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	multi, .-multi
	.globl	div
	.type	div, @function
div:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	comp
	testl	%eax, %eax
	jne	.L156
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movw	$0, (%rax)
	movq	-72(%rbp), %rax
	movq	$1, 8(%rax)
	movq	-72(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-80(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cp
	jmp	.L155
.L156:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	$24, %edi
	call	malloc
	movq	%rax, -16(%rbp)
	movl	$2, %esi
	movl	$100000, %edi
	call	calloc
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	199998(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.L158
.L159:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-40(%rbp), %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rdx
	movzwl	(%rdx), %edx
	movw	%dx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-2(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	subq	$1, -40(%rbp)
.L158:
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jle	.L159
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	$0, -48(%rbp)
.L164:
	movq	$0, -40(%rbp)
	jmp	.L160
.L161:
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	sub
	addq	$1, -40(%rbp)
.L160:
	movq	-64(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	comp
	cmpl	$1, %eax
	je	.L161
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	subq	-48(%rbp), %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	-40(%rbp), %rdx
	movw	%dx, (%rax)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L166
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	-2(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	-32(%rbp), %rdx
	subq	-24(%rbp), %rdx
	subq	-48(%rbp), %rdx
	addq	%rdx, %rdx
	subq	$2, %rdx
	addq	%rcx, %rdx
	movzwl	(%rdx), %edx
	movw	%dx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	clear
	addq	$1, -48(%rbp)
	jmp	.L164
.L166:
	nop
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-80(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	cp
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	clear
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	clear
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	nop
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	div, .-div
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$24, %edi
	call	malloc
	movq	%rax, -16(%rbp)
	movl	$24, %edi
	call	malloc
	movq	%rax, -8(%rbp)
	movl	$2, %esi
	movl	$100000, %edi
	call	calloc
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$2, %esi
	movl	$100000, %edi
	call	calloc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	in
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
