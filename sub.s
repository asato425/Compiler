	.text
L.XCC.STR0:
	.ascii  "%d\n\0"
	.text
	.globl  _main
	.p2align 4, 0x90
_main:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $16, %rsp
	movq    $0x2, %rax
	pushq   %rax
	popq    -8(%rbp)	# i, 0
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	addq    $8, %rsp
label0:
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	movq    $0x1, %rax
	pushq   %rax
	popq   %rax
	popq   %rbx
	cmpq   %rax, %rbx
	jle    label1
# save callee-saved registers
	pushq   %rbx
	pushq   %rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	pushq   %r15
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	leaq    L.XCC.STR0(%rip), %rax 	# "%d\n"
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
	movq    $0x0, %rax
	pushq   %rax
	popq    -8(%rbp)	# i, 0
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	addq    $8, %rsp
	jmp    label0
label1:
# save callee-saved registers
	pushq   %rbx
	pushq   %rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	pushq   %r15
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	leaq    L.XCC.STR0(%rip), %rax 	# "%d\n"
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
L.XCC.RE.main:
	movq    %rbp, %rsp
	popq    %rbp
	movl  $0, %edi
	callq  _exit
