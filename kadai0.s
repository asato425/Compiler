	.text
L.XCC.STR0:
	.ascii  "hello, world, %d, %d\n\0"
	.text
	.globl  _main
	.p2align 4, 0x90
_main:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $0, %rsp
# save callee-saved registers
	pushq   %rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	pushq   %r15
	movq    $0x14, %rax
	pushq   %rax
	movq    $0xa, %rax
	pushq   %rax
	leaq    L.XCC.STR0(%rip), %rax 	# "hello, world, %d, %d\n"
	pushq   %rax
	movq    _printf@GOTPCREL(%rip), %rax
	pushq   %rax
	popq    %r11
	popq    %rdi
	popq    %rsi
	popq    %rdx
	movb    $0, %al
	call    *%r11
# restore callee-saved registers
	popq   %r15
	popq   %r14
	popq   %r13
	popq   %r12
	popq   %rbx
	pushq   %rax
	addq    $8, %rsp
L.XCC.RE.main:
	movq    %rbp, %rsp
	popq    %rbp
	retq
