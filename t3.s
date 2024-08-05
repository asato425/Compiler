	.text
	.globl  _fact
	.p2align 4, 0x90
_fact:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $0, %rsp
#||
	movq    $0x0, %rax
	pushq   %rax
	pushq   %rdi
	popq   %rax
	popq   %rbx
#<
	pushq   $1
	cmpq   %rax, %rbx
	jg    label3
	popq   %rax
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
#==
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
	movq    $0x1, %rax
	pushq   %rax
	addq    $8, %rsp
	jmp    label1
label0:
# save callee-saved registers
	pushq   %rcx
	pushq   %rdx
	pushq   %rdi
	pushq   %rsi
	pushq   %r8
	pushq   %r9
	pushq   %r10
	pushq   %r11
	movq    $0x1, %rax
	pushq   %rax
	pushq   %rdi
	popq   %rax
	popq   %rbx
#-
	subq   %rbx, %rax
	pushq   %rax
	leaq    _fact(%rip), %rax
	pushq   %rax
	popq    %r11
	popq    %rdi
	movb    $0, %al
	call    *%r11
# restore callee-saved registers
	popq   %r11
	popq   %r10
	popq   %r9
	popq   %r8
	popq   %rsi
	popq   %rdi
	popq   %rdx
	popq   %rcx
	pushq   %rax
	pushq   %rdi
	popq   %rax
	popq   %rbx
#*
	movq   $0, %rdx
	imulq   %rbx
	pushq   %rax
	addq    $8, %rsp
label1:
L.XCC.RE.fact:
	movq    %rbp, %rsp
	popq    %rbp
	retq
	.text
L.XCC.STR0:
	.ascii  "fact (%d) = %ld\n\0"
	.text
	.globl  _main
	.p2align 4, 0x90
_main:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $0, %rsp
# save callee-saved registers
	pushq   %rcx
	pushq   %rdx
	pushq   %rdi
	pushq   %rsi
	pushq   %r8
	pushq   %r9
	pushq   %r10
	pushq   %r11
# save callee-saved registers
	pushq   %rcx
	pushq   %rdx
	pushq   %rdi
	pushq   %rsi
	pushq   %r8
	pushq   %r9
	pushq   %r10
	pushq   %r11
	movq    $0xa, %rax
	pushq   %rax
	leaq    _fact(%rip), %rax
	pushq   %rax
	popq    %r11
	popq    %rdi
	movb    $0, %al
	call    *%r11
# restore callee-saved registers
	popq   %r11
	popq   %r10
	popq   %r9
	popq   %r8
	popq   %rsi
	popq   %rdi
	popq   %rdx
	popq   %rcx
	pushq   %rax
	movq    $0xa, %rax
	pushq   %rax
	leaq    L.XCC.STR0(%rip), %rax 	# "fact (%d) = %ld\n"
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
	popq   %r11
	popq   %r10
	popq   %r9
	popq   %r8
	popq   %rsi
	popq   %rdi
	popq   %rdx
	popq   %rcx
	pushq   %rax
	addq    $8, %rsp
L.XCC.RE.main:
	movq    %rbp, %rsp
	popq    %rbp
	movl  $0, %edi
	callq  _exit
