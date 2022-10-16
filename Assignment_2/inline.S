	.text
	.file	"main.c"
	.globl	output                          # -- Begin function output
	.p2align	4, 0x90
	.type	output,@function
output:                                 # @output
	.cfi_startproc
# %bb.0:
	movl	%edi, %edx
	movl	$.L.str, %edi
	xorl	%eax, %eax
	jmp	printf@PLT                      # TAILCALL
.Lfunc_end0:
	.size	output, .Lfunc_end0-output
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	leaq	4(%rsp), %rsi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	__isoc99_scanf@PLT
	movl	4(%rsp), %esi
	testl	%esi, %esi
	jle	.LBB1_1
# %bb.2:
	leaq	-1(%rsi), %rcx
	movl	%esi, %r9d
	andl	$7, %r9d
	cmpq	$7, %rcx
	jae	.LBB1_4
# %bb.3:
	movl	$1, %edx
	movq	%rsi, %rcx
	testq	%r9, %r9
	jne	.LBB1_8
	jmp	.LBB1_9
.LBB1_1:
	movl	$1, %edx
	jmp	.LBB1_9
.LBB1_4:
	movl	%esi, %r8d
	andl	$-8, %r8d
	negq	%r8
	movl	$1, %edx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	leaq	(%rsi,%rcx), %rdi
	imulq	%rdx, %rdi
	leaq	(%rsi,%rcx), %rdx
	addq	$-1, %rdx
	leaq	(%rsi,%rcx), %rax
	addq	$-2, %rax
	imulq	%rdx, %rax
	imulq	%rdi, %rax
	leaq	(%rsi,%rcx), %rdi
	addq	$-3, %rdi
	leaq	(%rsi,%rcx), %rdx
	addq	$-4, %rdx
	imulq	%rdi, %rdx
	leaq	(%rsi,%rcx), %rdi
	addq	$-5, %rdi
	imulq	%rdx, %rdi
	imulq	%rax, %rdi
	leaq	(%rsi,%rcx), %rax
	addq	$-6, %rax
	leaq	(%rsi,%rcx), %rdx
	addq	$-7, %rdx
	imulq	%rax, %rdx
	imulq	%rdi, %rdx
	addq	$-8, %rcx
	cmpq	%rcx, %r8
	jne	.LBB1_5
# %bb.6:                                # %.loopexit1
	addq	%rsi, %rcx
	testq	%r9, %r9
	je	.LBB1_9
	.p2align	4, 0x90
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	imulq	%rcx, %rdx
	addq	$-1, %rcx
	addq	$-1, %r9
	jne	.LBB1_8
.LBB1_9:
	movl	$.L.str, %edi
                                        # kill: def $esi killed $esi killed $rsi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	printf@PLT
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d !=  %ld"
	.size	.L.str, 11

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\350\257\267\350\276\223\345\205\245\344\275\240\350\246\201\346\261\202\347\232\204\351\230\266\344\271\230\357\274\232"
	.size	.L.str.1, 31

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1"
	.section	".note.GNU-stack","",@progbits
