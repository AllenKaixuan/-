	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"sylib.c"
	.text
	.global	_sysy_start
	.bss
	.align	2
	.type	_sysy_start, %object
	.size	_sysy_start, 8
_sysy_start:
	.space	8
	.global	_sysy_end
	.align	2
	.type	_sysy_end, %object
	.size	_sysy_end, 8
_sysy_end:
	.space	8
	.global	_sysy_l1
	.align	2
	.type	_sysy_l1, %object
	.size	_sysy_l1, 4096
_sysy_l1:
	.space	4096
	.global	_sysy_l2
	.align	2
	.type	_sysy_l2, %object
	.size	_sysy_l2, 4096
_sysy_l2:
	.space	4096
	.global	_sysy_h
	.align	2
	.type	_sysy_h, %object
	.size	_sysy_h, 4096
_sysy_h:
	.space	4096
	.global	_sysy_m
	.align	2
	.type	_sysy_m, %object
	.size	_sysy_m, 4096
_sysy_m:
	.space	4096
	.global	_sysy_s
	.align	2
	.type	_sysy_s, %object
	.size	_sysy_s, 4096
_sysy_s:
	.space	4096
	.global	_sysy_us
	.align	2
	.type	_sysy_us, %object
	.size	_sysy_us, 4096
_sysy_us:
	.space	4096
	.global	_sysy_idx
	.align	2
	.type	_sysy_idx, %object
	.size	_sysy_idx, 4
_sysy_idx:
	.space	4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d\000"
	.text
	.align	1
	.global	getint
	.syntax unified
	.thumb
	.thumb_func
	.type	getint, %function
getint:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	ldr	r2, .L4
.LPIC1:
	add	r2, pc
	ldr	r3, .L4+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #4]
	mov	r3, #0
	mov	r3, r7
	mov	r1, r3
	ldr	r3, .L4+8
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldr	r3, [r7]
	ldr	r1, .L4+12
.LPIC2:
	add	r1, pc
	ldr	r2, .L4+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L3
	bl	__stack_chk_fail(PLT)
.L3:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L5:
	.align	2
.L4:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC0+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.size	getint, .-getint
	.section	.rodata
	.align	2
.LC1:
	.ascii	"%c\000"
	.text
	.align	1
	.global	getch
	.syntax unified
	.thumb
	.thumb_func
	.type	getch, %function
getch:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	ldr	r2, .L9
.LPIC4:
	add	r2, pc
	ldr	r3, .L9+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #4]
	mov	r3, #0
	adds	r3, r7, #3
	mov	r1, r3
	ldr	r3, .L9+8
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	ldr	r1, .L9+12
.LPIC5:
	add	r1, pc
	ldr	r2, .L9+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L8
	bl	__stack_chk_fail(PLT)
.L8:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC1-(.LPIC3+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.size	getch, .-getch
	.section	.rodata
	.align	2
.LC2:
	.ascii	"%a\000"
	.text
	.align	1
	.global	getfloat
	.syntax unified
	.thumb
	.thumb_func
	.type	getfloat, %function
getfloat:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	ldr	r2, .L14
.LPIC7:
	add	r2, pc
	ldr	r3, .L14+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #4]
	mov	r3, #0
	mov	r3, r7
	mov	r1, r3
	ldr	r3, .L14+8
.LPIC6:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldr	r3, [r7]	@ float
	vmov	s15, r3
	ldr	r2, .L14+12
.LPIC8:
	add	r2, pc
	ldr	r3, .L14+4
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L13
	bl	__stack_chk_fail(PLT)
.L13:
	vmov.f32	s0, s15
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L15:
	.align	2
.L14:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC2-(.LPIC6+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
	.size	getfloat, .-getfloat
	.align	1
	.global	getarray
	.syntax unified
	.thumb
	.thumb_func
	.type	getarray, %function
getarray:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L21
.LPIC11:
	add	r2, pc
	ldr	r3, .L21+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	mov	r3, #0
	add	r3, r7, #12
	mov	r1, r3
	ldr	r3, .L21+8
.LPIC9:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L17
.L18:
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	mov	r1, r3
	ldr	r3, .L21+12
.LPIC10:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L17:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #16]
	cmp	r2, r3
	blt	.L18
	ldr	r3, [r7, #12]
	ldr	r1, .L21+16
.LPIC12:
	add	r1, pc
	ldr	r2, .L21+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #20]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L20
	bl	__stack_chk_fail(PLT)
.L20:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L22:
	.align	2
.L21:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC9+4)
	.word	.LC0-(.LPIC10+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+4)
	.size	getarray, .-getarray
	.align	1
	.global	getfarray
	.syntax unified
	.thumb
	.thumb_func
	.type	getfarray, %function
getfarray:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L28
.LPIC15:
	add	r2, pc
	ldr	r3, .L28+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	mov	r3, #0
	add	r3, r7, #12
	mov	r1, r3
	ldr	r3, .L28+8
.LPIC13:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L24
.L25:
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	mov	r1, r3
	ldr	r3, .L28+12
.LPIC14:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L24:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #16]
	cmp	r2, r3
	blt	.L25
	ldr	r3, [r7, #12]
	ldr	r1, .L28+16
.LPIC16:
	add	r1, pc
	ldr	r2, .L28+4
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #20]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L27
	bl	__stack_chk_fail(PLT)
.L27:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L29:
	.align	2
.L28:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC15+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC13+4)
	.word	.LC2-(.LPIC14+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC16+4)
	.size	getfarray, .-getfarray
	.align	1
	.global	putint
	.syntax unified
	.thumb
	.thumb_func
	.type	putint, %function
putint:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, [r7, #4]
	ldr	r3, .L31
.LPIC17:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L32:
	.align	2
.L31:
	.word	.LC0-(.LPIC17+4)
	.size	putint, .-putint
	.align	1
	.global	putch
	.syntax unified
	.thumb
	.thumb_func
	.type	putch, %function
putch:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	putchar(PLT)
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	putch, .-putch
	.section	.rodata
	.align	2
.LC3:
	.ascii	"%d:\000"
	.align	2
.LC4:
	.ascii	" %d\000"
	.text
	.align	1
	.global	putarray
	.syntax unified
	.thumb
	.thumb_func
	.type	putarray, %function
putarray:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r1, [r7, #4]
	ldr	r3, .L37
.LPIC18:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L35
.L36:
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, .L37+4
.LPIC19:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L35:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L36
	movs	r0, #10
	bl	putchar(PLT)
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L38:
	.align	2
.L37:
	.word	.LC3-(.LPIC18+4)
	.word	.LC4-(.LPIC19+4)
	.size	putarray, .-putarray
	.align	1
	.global	putfloat
	.syntax unified
	.thumb
	.thumb_func
	.type	putfloat, %function
putfloat:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	vstr.32	s0, [r7, #4]
	vldr.32	s15, [r7, #4]
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, .L40
.LPIC20:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L41:
	.align	2
.L40:
	.word	.LC2-(.LPIC20+4)
	.size	putfloat, .-putfloat
	.section	.rodata
	.align	2
.LC5:
	.ascii	" %a\000"
	.text
	.align	1
	.global	putfarray
	.syntax unified
	.thumb
	.thumb_func
	.type	putfarray, %function
putfarray:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r1, [r7, #4]
	ldr	r3, .L45
.LPIC21:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L43
.L44:
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	vldr.32	s15, [r3]
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, .L45+4
.LPIC22:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L43:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L44
	movs	r0, #10
	bl	putchar(PLT)
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L46:
	.align	2
.L45:
	.word	.LC3-(.LPIC21+4)
	.word	.LC5-(.LPIC22+4)
	.size	putfarray, .-putfarray
	.align	1
	.global	putf
	.syntax unified
	.thumb
	.thumb_func
	.type	putf, %function
putf:
	@ args = 4, pretend = 16, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r0, r1, r2, r3}
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	ldr	r3, [r7, #24]
	str	r3, [r7, #4]
	ldr	r2, .L49
.LPIC23:
	add	r2, pc
	ldr	r1, .L49+4
.LPIC24:
	add	r1, pc
	ldr	r3, .L49+8
	ldr	r3, [r1, r3]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	mov	r3, #0
	add	r3, r7, #28
	str	r3, [r7, #8]
	ldr	r3, .L49+12
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	vfprintf(PLT)
	nop
	ldr	r2, .L49+16
.LPIC25:
	add	r2, pc
	ldr	r3, .L49+8
	ldr	r3, [r2, r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	eors	r2, r3, r2
	mov	r3, #0
	beq	.L48
	bl	__stack_chk_fail(PLT)
.L48:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, lr}
	add	sp, sp, #16
	bx	lr
.L50:
	.align	2
.L49:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC23+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC24+4)
	.word	__stack_chk_guard(GOT)
	.word	stdout(GOT)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC25+4)
	.size	putf, .-putf
	.align	1
	.global	before_main
	.syntax unified
	.thumb
	.thumb_func
	.type	before_main, %function
before_main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L52
.L53:
	ldr	r3, .L54
.LPIC26:
	add	r3, pc
	ldr	r2, [r7, #4]
	movs	r1, #0
	str	r1, [r3, r2, lsl #2]
	ldr	r3, .L54+4
.LPIC27:
	add	r3, pc
	ldr	r2, [r7, #4]
	ldr	r1, [r3, r2, lsl #2]
	ldr	r3, .L54+8
.LPIC28:
	add	r3, pc
	ldr	r2, [r7, #4]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, .L54+12
.LPIC29:
	add	r3, pc
	ldr	r2, [r7, #4]
	ldr	r1, [r3, r2, lsl #2]
	ldr	r3, .L54+16
.LPIC30:
	add	r3, pc
	ldr	r2, [r7, #4]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, .L54+20
.LPIC31:
	add	r3, pc
	ldr	r2, [r7, #4]
	ldr	r1, [r3, r2, lsl #2]
	ldr	r3, .L54+24
.LPIC32:
	add	r3, pc
	ldr	r2, [r7, #4]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L52:
	ldr	r3, [r7, #4]
	cmp	r3, #1024
	blt	.L53
	ldr	r3, .L54+28
.LPIC33:
	add	r3, pc
	movs	r2, #1
	str	r2, [r3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L55:
	.align	2
.L54:
	.word	_sysy_us-(.LPIC26+4)
	.word	_sysy_us-(.LPIC27+4)
	.word	_sysy_s-(.LPIC28+4)
	.word	_sysy_s-(.LPIC29+4)
	.word	_sysy_m-(.LPIC30+4)
	.word	_sysy_m-(.LPIC31+4)
	.word	_sysy_h-(.LPIC32+4)
	.word	_sysy_idx-(.LPIC33+4)
	.size	before_main, .-before_main
	.section	.init_array,"aw",%init_array
	.align	2
	.word	before_main(target1)
	.section	.rodata
	.align	2
.LC6:
	.ascii	"Timer@%04d-%04d: %dH-%dM-%dS-%dus\012\000"
	.align	2
.LC7:
	.ascii	"TOTAL: %dH-%dM-%dS-%dus\012\000"
	.text
	.align	1
	.global	after_main
	.syntax unified
	.thumb
	.thumb_func
	.type	after_main, %function
after_main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #16
	ldr	r4, .L59
.LPIC34:
	add	r4, pc
	movs	r3, #1
	str	r3, [r7, #12]
	b	.L57
.L58:
	ldr	r3, .L59+4
	ldr	r3, [r4, r3]
	ldr	r6, [r3]
	ldr	r3, .L59+8
.LPIC35:
	add	r3, pc
	ldr	r2, [r7, #12]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #4]
	ldr	r3, .L59+12
.LPIC36:
	add	r3, pc
	ldr	r2, [r7, #12]
	ldr	r1, [r3, r2, lsl #2]
	str	r1, [r7]
	ldr	r3, .L59+16
.LPIC37:
	add	r3, pc
	ldr	r2, [r7, #12]
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, .L59+20
.LPIC38:
	add	r2, pc
	ldr	r1, [r7, #12]
	ldr	r2, [r2, r1, lsl #2]
	ldr	r1, .L59+24
.LPIC39:
	add	r1, pc
	ldr	r0, [r7, #12]
	ldr	r1, [r1, r0, lsl #2]
	ldr	r0, .L59+28
.LPIC40:
	add	r0, pc
	ldr	r5, [r7, #12]
	ldr	r0, [r0, r5, lsl #2]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	ldr	r1, .L59+32
.LPIC41:
	add	r1, pc
	mov	r0, r6
	bl	fprintf(PLT)
	ldr	r3, .L59+36
.LPIC42:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L59+40
.LPIC43:
	add	r3, pc
	ldr	r1, [r7, #12]
	ldr	r3, [r3, r1, lsl #2]
	add	r2, r2, r3
	ldr	r3, .L59+44
.LPIC44:
	add	r3, pc
	str	r2, [r3]
	ldr	r3, .L59+48
.LPIC45:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L59+52
.LPIC46:
	add	r3, pc
	ldr	r1, [r7, #12]
	ldr	r3, [r3, r1, lsl #2]
	add	r2, r2, r3
	ldr	r3, .L59+56
.LPIC47:
	add	r3, pc
	str	r2, [r3]
	ldr	r3, .L59+60
.LPIC48:
	add	r3, pc
	ldr	r2, [r3]
	movw	r3, #56963
	movt	r3, 17179
	smull	r1, r3, r3, r2
	asrs	r1, r3, #18
	asrs	r3, r2, #31
	subs	r3, r1, r3
	movw	r1, #16960
	movt	r1, 15
	mul	r3, r1, r3
	subs	r3, r2, r3
	ldr	r2, .L59+64
.LPIC49:
	add	r2, pc
	str	r3, [r2]
	ldr	r3, .L59+68
.LPIC50:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L59+72
.LPIC51:
	add	r3, pc
	ldr	r1, [r7, #12]
	ldr	r3, [r3, r1, lsl #2]
	add	r2, r2, r3
	ldr	r3, .L59+76
.LPIC52:
	add	r3, pc
	str	r2, [r3]
	ldr	r3, .L59+80
.LPIC53:
	add	r3, pc
	ldr	r3, [r3]
	movw	r2, #34953
	movt	r2, 34952
	smull	r1, r2, r2, r3
	add	r2, r2, r3
	asrs	r1, r2, #5
	asrs	r2, r3, #31
	subs	r2, r1, r2
	movs	r1, #60
	mul	r2, r1, r2
	subs	r2, r3, r2
	ldr	r3, .L59+84
.LPIC54:
	add	r3, pc
	str	r2, [r3]
	ldr	r3, .L59+88
.LPIC55:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L59+92
.LPIC56:
	add	r3, pc
	ldr	r1, [r7, #12]
	ldr	r3, [r3, r1, lsl #2]
	add	r2, r2, r3
	ldr	r3, .L59+96
.LPIC57:
	add	r3, pc
	str	r2, [r3]
	ldr	r3, .L59+100
.LPIC58:
	add	r3, pc
	ldr	r3, [r3]
	movw	r2, #34953
	movt	r2, 34952
	smull	r1, r2, r2, r3
	add	r2, r2, r3
	asrs	r1, r2, #5
	asrs	r2, r3, #31
	subs	r2, r1, r2
	movs	r1, #60
	mul	r2, r1, r2
	subs	r2, r3, r2
	ldr	r3, .L59+104
.LPIC59:
	add	r3, pc
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L57:
	ldr	r3, .L59+108
.LPIC60:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	cmp	r2, r3
	blt	.L58
	ldr	r3, .L59+4
	ldr	r3, [r4, r3]
	ldr	r0, [r3]
	ldr	r3, .L59+112
.LPIC61:
	add	r3, pc
	ldr	r1, [r3]
	ldr	r3, .L59+116
.LPIC62:
	add	r3, pc
	ldr	r4, [r3]
	ldr	r3, .L59+120
.LPIC63:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, .L59+124
.LPIC64:
	add	r2, pc
	ldr	r2, [r2]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	mov	r2, r1
	ldr	r1, .L59+128
.LPIC65:
	add	r1, pc
	bl	fprintf(PLT)
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L60:
	.align	2
.L59:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC34+4)
	.word	stderr(GOT)
	.word	_sysy_l1-(.LPIC35+4)
	.word	_sysy_l2-(.LPIC36+4)
	.word	_sysy_h-(.LPIC37+4)
	.word	_sysy_m-(.LPIC38+4)
	.word	_sysy_s-(.LPIC39+4)
	.word	_sysy_us-(.LPIC40+4)
	.word	.LC6-(.LPIC41+4)
	.word	_sysy_us-(.LPIC42+4)
	.word	_sysy_us-(.LPIC43+4)
	.word	_sysy_us-(.LPIC44+4)
	.word	_sysy_s-(.LPIC45+4)
	.word	_sysy_s-(.LPIC46+4)
	.word	_sysy_s-(.LPIC47+4)
	.word	_sysy_us-(.LPIC48+4)
	.word	_sysy_us-(.LPIC49+4)
	.word	_sysy_m-(.LPIC50+4)
	.word	_sysy_m-(.LPIC51+4)
	.word	_sysy_m-(.LPIC52+4)
	.word	_sysy_s-(.LPIC53+4)
	.word	_sysy_s-(.LPIC54+4)
	.word	_sysy_h-(.LPIC55+4)
	.word	_sysy_h-(.LPIC56+4)
	.word	_sysy_h-(.LPIC57+4)
	.word	_sysy_m-(.LPIC58+4)
	.word	_sysy_m-(.LPIC59+4)
	.word	_sysy_idx-(.LPIC60+4)
	.word	_sysy_h-(.LPIC61+4)
	.word	_sysy_m-(.LPIC62+4)
	.word	_sysy_s-(.LPIC63+4)
	.word	_sysy_us-(.LPIC64+4)
	.word	.LC7-(.LPIC65+4)
	.size	after_main, .-after_main
	.section	.fini_array,"aw",%fini_array
	.align	2
	.word	after_main(target1)
	.text
	.align	1
	.global	_sysy_starttime
	.syntax unified
	.thumb
	.thumb_func
	.type	_sysy_starttime, %function
_sysy_starttime:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L62
.LPIC66:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L62+4
.LPIC67:
	add	r3, pc
	ldr	r1, [r7, #4]
	str	r1, [r3, r2, lsl #2]
	movs	r1, #0
	ldr	r3, .L62+8
.LPIC68:
	add	r3, pc
	mov	r0, r3
	bl	gettimeofday(PLT)
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L63:
	.align	2
.L62:
	.word	_sysy_idx-(.LPIC66+4)
	.word	_sysy_l1-(.LPIC67+4)
	.word	_sysy_start-(.LPIC68+4)
	.size	_sysy_starttime, .-_sysy_starttime
	.align	1
	.global	_sysy_stoptime
	.syntax unified
	.thumb
	.thumb_func
	.type	_sysy_stoptime, %function
_sysy_stoptime:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r1, #0
	ldr	r3, .L65
.LPIC69:
	add	r3, pc
	mov	r0, r3
	bl	gettimeofday(PLT)
	ldr	r3, .L65+4
.LPIC70:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L65+8
.LPIC71:
	add	r3, pc
	ldr	r1, [r7, #4]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, .L65+12
.LPIC72:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L65+16
.LPIC73:
	add	r3, pc
	ldr	r1, [r3, r2, lsl #2]
	ldr	r3, .L65+20
.LPIC74:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L65+24
.LPIC75:
	add	r3, pc
	ldr	r3, [r3]
	subs	r2, r2, r3
	movw	r3, #16960
	movt	r3, 15
	mul	r2, r3, r2
	ldr	r3, .L65+28
.LPIC76:
	add	r3, pc
	ldr	r3, [r3, #4]
	add	r2, r2, r3
	ldr	r3, .L65+32
.LPIC77:
	add	r3, pc
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	ldr	r2, .L65+36
.LPIC78:
	add	r2, pc
	ldr	r2, [r2]
	add	r1, r1, r3
	ldr	r3, .L65+40
.LPIC79:
	add	r3, pc
	str	r1, [r3, r2, lsl #2]
	ldr	r3, .L65+44
.LPIC80:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L65+48
.LPIC81:
	add	r3, pc
	ldr	r1, [r3, r2, lsl #2]
	ldr	r3, .L65+52
.LPIC82:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L65+56
.LPIC83:
	add	r3, pc
	ldr	r2, [r3, r2, lsl #2]
	movw	r3, #56963
	movt	r3, 17179
	smull	r0, r3, r3, r2
	asrs	r0, r3, #18
	asrs	r3, r2, #31
	subs	r3, r0, r3
	ldr	r2, .L65+60
.LPIC84:
	add	r2, pc
	ldr	r2, [r2]
	add	r1, r1, r3
	ldr	r3, .L65+64
.LPIC85:
	add	r3, pc
	str	r1, [r3, r2, lsl #2]
	ldr	r3, .L65+68
.LPIC86:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L65+72
.LPIC87:
	add	r3, pc
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, .L65+76
.LPIC88:
	add	r3, pc
	ldr	r0, [r3]
	movw	r3, #56963
	movt	r3, 17179
	smull	r1, r3, r3, r2
	asrs	r1, r3, #18
	asrs	r3, r2, #31
	subs	r3, r1, r3
	movw	r1, #16960
	movt	r1, 15
	mul	r3, r1, r3
	subs	r3, r2, r3
	ldr	r2, .L65+80
.LPIC89:
	add	r2, pc
	str	r3, [r2, r0, lsl #2]
	ldr	r3, .L65+84
.LPIC90:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L65+88
.LPIC91:
	add	r3, pc
	ldr	r1, [r3, r2, lsl #2]
	ldr	r3, .L65+92
.LPIC92:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L65+96
.LPIC93:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	movw	r2, #34953
	movt	r2, 34952
	smull	r0, r2, r2, r3
	add	r2, r2, r3
	asrs	r2, r2, #5
	asrs	r3, r3, #31
	subs	r3, r2, r3
	ldr	r2, .L65+100
.LPIC94:
	add	r2, pc
	ldr	r2, [r2]
	add	r1, r1, r3
	ldr	r3, .L65+104
.LPIC95:
	add	r3, pc
	str	r1, [r3, r2, lsl #2]
	ldr	r3, .L65+108
.LPIC96:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L65+112
.LPIC97:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, .L65+116
.LPIC98:
	add	r2, pc
	ldr	r1, [r2]
	movw	r2, #34953
	movt	r2, 34952
	smull	r0, r2, r2, r3
	add	r2, r2, r3
	asrs	r0, r2, #5
	asrs	r2, r3, #31
	subs	r2, r0, r2
	movs	r0, #60
	mul	r2, r0, r2
	subs	r2, r3, r2
	ldr	r3, .L65+120
.LPIC99:
	add	r3, pc
	str	r2, [r3, r1, lsl #2]
	ldr	r3, .L65+124
.LPIC100:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L65+128
.LPIC101:
	add	r3, pc
	ldr	r1, [r3, r2, lsl #2]
	ldr	r3, .L65+132
.LPIC102:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L65+136
.LPIC103:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	movw	r2, #34953
	movt	r2, 34952
	smull	r0, r2, r2, r3
	add	r2, r2, r3
	asrs	r2, r2, #5
	asrs	r3, r3, #31
	subs	r3, r2, r3
	ldr	r2, .L65+140
.LPIC104:
	add	r2, pc
	ldr	r2, [r2]
	add	r1, r1, r3
	ldr	r3, .L65+144
.LPIC105:
	add	r3, pc
	str	r1, [r3, r2, lsl #2]
	ldr	r3, .L65+148
.LPIC106:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L65+152
.LPIC107:
	add	r3, pc
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, .L65+156
.LPIC108:
	add	r2, pc
	ldr	r1, [r2]
	movw	r2, #34953
	movt	r2, 34952
	smull	r0, r2, r2, r3
	add	r2, r2, r3
	asrs	r0, r2, #5
	asrs	r2, r3, #31
	subs	r2, r0, r2
	movs	r0, #60
	mul	r2, r0, r2
	subs	r2, r3, r2
	ldr	r3, .L65+160
.LPIC109:
	add	r3, pc
	str	r2, [r3, r1, lsl #2]
	ldr	r3, .L65+164
.LPIC110:
	add	r3, pc
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, .L65+168
.LPIC111:
	add	r3, pc
	str	r2, [r3]
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L66:
	.align	2
.L65:
	.word	_sysy_end-(.LPIC69+4)
	.word	_sysy_idx-(.LPIC70+4)
	.word	_sysy_l2-(.LPIC71+4)
	.word	_sysy_idx-(.LPIC72+4)
	.word	_sysy_us-(.LPIC73+4)
	.word	_sysy_end-(.LPIC74+4)
	.word	_sysy_start-(.LPIC75+4)
	.word	_sysy_end-(.LPIC76+4)
	.word	_sysy_start-(.LPIC77+4)
	.word	_sysy_idx-(.LPIC78+4)
	.word	_sysy_us-(.LPIC79+4)
	.word	_sysy_idx-(.LPIC80+4)
	.word	_sysy_s-(.LPIC81+4)
	.word	_sysy_idx-(.LPIC82+4)
	.word	_sysy_us-(.LPIC83+4)
	.word	_sysy_idx-(.LPIC84+4)
	.word	_sysy_s-(.LPIC85+4)
	.word	_sysy_idx-(.LPIC86+4)
	.word	_sysy_us-(.LPIC87+4)
	.word	_sysy_idx-(.LPIC88+4)
	.word	_sysy_us-(.LPIC89+4)
	.word	_sysy_idx-(.LPIC90+4)
	.word	_sysy_m-(.LPIC91+4)
	.word	_sysy_idx-(.LPIC92+4)
	.word	_sysy_s-(.LPIC93+4)
	.word	_sysy_idx-(.LPIC94+4)
	.word	_sysy_m-(.LPIC95+4)
	.word	_sysy_idx-(.LPIC96+4)
	.word	_sysy_s-(.LPIC97+4)
	.word	_sysy_idx-(.LPIC98+4)
	.word	_sysy_s-(.LPIC99+4)
	.word	_sysy_idx-(.LPIC100+4)
	.word	_sysy_h-(.LPIC101+4)
	.word	_sysy_idx-(.LPIC102+4)
	.word	_sysy_m-(.LPIC103+4)
	.word	_sysy_idx-(.LPIC104+4)
	.word	_sysy_h-(.LPIC105+4)
	.word	_sysy_idx-(.LPIC106+4)
	.word	_sysy_m-(.LPIC107+4)
	.word	_sysy_idx-(.LPIC108+4)
	.word	_sysy_m-(.LPIC109+4)
	.word	_sysy_idx-(.LPIC110+4)
	.word	_sysy_idx-(.LPIC111+4)
	.size	_sysy_stoptime, .-_sysy_stoptime
	.ident	"GCC: (Ubuntu 11.2.0-17ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",%progbits
