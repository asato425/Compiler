	.globl  _i
	 .data
	.p2align  3
_i:
	.skip   8

	.text
L.XCC.STR0:
	.ascii  "i = %ld\n\0"
	.text
	.globl  _main
	.p2align 4, 0x90
_main:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $0, %rsp
	movq    $0x0, %rax
	pushq   %rax
	popq   _i(%rip)
	pushq   _i(%rip)
	addq    $8, %rsp
label0:
	pushq   _i(%rip)
	movq    $0x0, %rax
	pushq   %rax
	popq   %rax
	popq   %rbx
	subq   %rax, %rbx
	pushq   %rbx
	popq   %rax
	cmpq   $0, %rax
	jbe    label1
# save callee-saved registers
	pushq   %rbx
	pushq   %rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	pushq   %r15
	pushq   _i(%rip)
	leaq    L.XCC.STR0(%rip), %rax 	# "i = %ld\n"
	pushq   %rax
	movq    _printf@GOTPCREL(%rip), %rax
	pushq   %rax
	popq    %r11
	popq    %rdi
	popq    %rsi
	movb    $0, %al
	call    *%r11
# restore callee-saved registers
	popq   %r15
	popq   %r14
	popq   %r13
	popq   %r12
	popq   %rbx
	popq   %rbx
	pushq   %rax
	addq    $8, %rsp
	movq    $0x1, %rax
	pushq   %rax
	pushq   _i(%rip)
	popq   %rax
	popq   %rbx
	subq   %rbx, %rax
	pushq   %rax
	popq   _i(%rip)
	pushq   _i(%rip)
	addq    $8, %rsp
	jmp    label0
label1:
L.XCC.RE.main:
	movq    %rbp, %rsp
	popq    %rbp
	movl  $0, %edi
	callq  _exit
