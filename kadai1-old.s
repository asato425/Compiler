	.globl  _i
	 .data
_i:
	.skip   4

	.globl  _sum
	 .data
_sum:
	.skip   4

	.text
L.XCC.STR1:
	.ascii  "sum = %d\n\0"
L.XCC.STR0:
	.ascii  "i = %d\n\0"
	.text
	.globl  _main
	.p2align 4, 0x90
_main:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $0, %rsp
	movq    $0x5, %rax
	pushq   %rax
	leaq    _i(%rip), %rax
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
	movq    $0x0, %rax
	pushq   %rax
	leaq    _sum(%rip), %rax
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
label1000:
	pushq   _i(%rip)
	movq    $0x0, %rax
	pushq   %rax
	popq   %rax
	popq   %rbx
#<
	pushq   $1
	cmpq   %rax, %rbx
	jg    label1002
	popq   %rax
	pushq   $0
label1002:
	popq   %rax
	cmpq   $0, %rax
	jbe    label1001
# save callee-saved registers
	pushq   %rcx
	pushq   %rdx
	pushq   %rdi
	pushq   %rsi
	pushq   %r8
	pushq   %r9
	pushq   %r10
	pushq   %r11
	pushq   _i(%rip)
	leaq    L.XCC.STR0(%rip), %rax 	# "i = %d\n"
	pushq   %rax
	movq    _printf@GOTPCREL(%rip), %rax
	pushq   %rax
	popq    %r11
	popq    %rdi
	popq    %rsi
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
	pushq   _i(%rip)
	pushq   _sum(%rip)
	popq   %rax
	popq   %rbx
#+
	addq   %rbx, %rax
	pushq   %rax
	leaq    _sum(%rip), %rax
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
	movq    $0x1, %rax
	pushq   %rax
	pushq   _i(%rip)
	popq   %rax
	popq   %rbx
#-
	subq   %rbx, %rax
	pushq   %rax
	leaq    _i(%rip), %rax
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
	jmp    label1000
label1001:
# save callee-saved registers
	pushq   %rcx
	pushq   %rdx
	pushq   %rdi
	pushq   %rsi
	pushq   %r8
	pushq   %r9
	pushq   %r10
	pushq   %r11
	pushq   _sum(%rip)
	leaq    L.XCC.STR1(%rip), %rax 	# "sum = %d\n"
	pushq   %rax
	movq    _printf@GOTPCREL(%rip), %rax
	pushq   %rax
	popq    %r11
	popq    %rdi
	popq    %rsi
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
