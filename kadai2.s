	.text
	.globl  _mrn
	.p2align 4, 0x90
_mrn:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $0, %rsp
#||
	movq    $0x0, %rax
	pushq   %rax
	pushq   %rdi
	popq   %rax
	popq   %rbx
	cmpq   %rax, %rbx
	pushq   $1
	ja    label3
	pushq   %rax
	pushq   $0
label3:
	popq   %rax
	cmpq   $0, %rax
	pushq   %rax
	ja    label2
	popq   %rax
	movq    $0x0, %rax
	pushq   %rax
	pushq   %rdi
	popq   %rax
	popq   %rbx
	cmpq   %rax, %rbx
	sete   %al
	movzbq   %al, %rax
	pushq   %rax
	popq   %rax
	cmpq   $0, %rax
	pushq   %rax
label2:
	popq   %rax
	cmpq   $0, %rax
	jbe    label0
	movq    $0x0, %rax
	pushq   %rax
	addq    $8, %rsp
	jmp    label1
label0:
	pushq   %rdi
# save callee-saved registers
	pushq   %rbx
	pushq   %rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	pushq   %r15
	movq    $0x1, %rax
	pushq   %rax
	pushq   %rdi
	popq   %rax
	popq   %rbx
	subq   %rbx, %rax
	pushq   %rax
	leaq    _mrn(%rip), %rax
	pushq   %rax
	popq    %r11
	popq    %rdi
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
	movq    $0xa, %rax
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   $0, %rdx
	imulq   %rbx
	pushq   %rax
	popq   %rax
	popq   %rbx
	addq   %rbx, %rax
	pushq   %rax
	addq    $8, %rsp
label1:
L.XCC.RE.mrn:
	movq    %rbp, %rsp
	popq    %rbp
	retq
	.text
L.XCC.STR0:
	.ascii  "mrn(%ld) = %ld\n\0"
	.text
	.globl  _main
	.p2align 4, 0x90
_main:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $16, %rsp
	movq    $0x0, %rax
	pushq   %rax
	popq    -8(%rbp)	# i, 0
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	addq    $8, %rsp
label4:
	movq    $0xb, %rax
	pushq   %rax
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	popq   %rax
	popq   %rbx
	cmpq   %rax, %rbx
	pushq   $1
	ja    label6
	pushq   %rax
	pushq   $0
label6:
	popq   %rax
	cmpq   $0, %rax
	jbe    label5
# save callee-saved registers
	pushq   %rbx
	pushq   %rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	pushq   %r15
# save callee-saved registers
	pushq   %rbx
	pushq   %rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	pushq   %r15
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	leaq    _mrn(%rip), %rax
	pushq   %rax
	popq    %r11
	popq    %rdi
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
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	leaq    L.XCC.STR0(%rip), %rax 	# "mrn(%ld) = %ld\n"
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
	popq   %rbx
	pushq   %rax
	addq    $8, %rsp
	movq    $0x1, %rax
	pushq   %rax
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	popq   %rax
	popq   %rbx
	addq   %rbx, %rax
	pushq   %rax
	popq    -8(%rbp)	# i, 0
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	addq    $8, %rsp
	jmp    label4
label5:
L.XCC.RE.main:
	movq    %rbp, %rsp
	popq    %rbp
	movl  $0, %edi
	callq  _exit