 
    .text
	.align	1
	.global	main
	.syntax unified
	
	
    .type	main, %function
main:
   push {fp,lr}
   mov fp, sp
   sub sp, sp, #16
   mov r0 , #2
   str r0, [fp, #-4]
   mov r0, #1
   str r0, [fp, #-8]

   bl getint(PLT)
   str r0, [sp, #0]

   ldr r0, [sp, #0]
   ldr r1, [sp, #12]
   cmp r0 ,r1
   blt r0_lower
    b loop
    



   r0_lower:
   mov r0, #97
   bl putch(PLT)
   b end

loop:
    ldr r0, [sp, #0]
    ldr r1, [fp, #-4]
    cmp r1, r0
    bhi end2
    ldr r2, [sp, #8]
    mul r2, r2, r1
    add r1, r1, #1
    str r2, [sp, #8]
    str r1, [fp, #-4]
    b loop


end:
    mov r0,#0
    mov sp,fp
    pop {fp,lr}
    bx lr

end2:
    ldr r0, [sp, #8]
    bl putint(PLT)
    mov r0, #10
    bl putchar(PLT)
    b end

