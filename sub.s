	.globl  _i
	 .data
	.p2align  3
_i:
	.skip   8

	.text
L.XCC.STR2:
	.ascii  "else\0"
L.XCC.STR1:
	.ascii  "if\0"
L.XCC.STR0:
	.ascii  "%s\n\0"
	.text
	.globl  _main
	.p2align 4, 0x90
_main:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $0, %rsp
	movq    $0x5, %rax
	pushq   %rax
	popq   _i(%rip)
	pushq   _i(%rip)
	addq    $8, %rsp
#||
	pushq   _i(%rip)
	movq    $0x6, %rax
	pushq   %rax
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
	pushq   _i(%rip)
	movq    $0x9, %rax
	pushq   %rax
	popq   %rax
	popq   %rbx
	cmpq   %rax, %rbx
	pushq   $1
	ja    label4
	pushq   %rax
	pushq   $0
label4:
	popq   %rax
	cmpq   $0, %rax
	pushq   %rax
label2:
	popq   %rax
	cmpq   $0, %rax
	jbe    label0
# save callee-saved registers
	pushq   %rbx
	pushq   %rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	pushq   %r15
	leaq    L.XCC.STR1(%rip), %rax 	# "if"
	pushq   %rax
	leaq    L.XCC.STR0(%rip), %rax 	# "%s\n"
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
	jmp    label1
label0:
# save callee-saved registers
	pushq   %rbx
	pushq   %rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	pushq   %r15
	leaq    L.XCC.STR2(%rip), %rax 	# "else"
	pushq   %rax
	leaq    L.XCC.STR0(%rip), %rax 	# "%s\n"
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
label1:
	movq    $0x0, %rax
	pushq   %rax
	addq    $8, %rsp
L.XCC.RE.main:
	movq    %rbp, %rsp
	popq    %rbp
	movl  $0, %edi
	callq  _exit
