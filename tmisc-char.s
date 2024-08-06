	.text
L.XCC.STR2:
	.ascii  "%s\n\0"
L.XCC.STR1:
	.ascii  "%c\n\0"
L.XCC.STR0:
	.ascii  "%ld\n\0"
	.text
	.globl  _main
	.p2align 4, 0x90
_main:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $16, %rsp
# save callee-saved registers
	pushq   %rcx
	pushq   %rdx
	pushq   %rdi
	pushq   %rsi
	pushq   %r8
	pushq   %r9
	pushq   %r10
	pushq   %r11
	movq    $0x1b, %rax
	pushq   %rax
	movq    _malloc@GOTPCREL(%rip), %rax
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
	movq    -8(%rbp), %rax 	# c, 0
	leaq    -8(%rbp), %rax	# c, 0
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
	movq    $0x0, %rax
	pushq   %rax
	movq    -16(%rbp), %rax 	# d, 8
	leaq    -16(%rbp), %rax	# d, 8
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
label1000:
	movq    $0x1a, %rax
	pushq   %rax
	movq    -16(%rbp), %rax 	# d, 8
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
	movq    $0x61, %rax
	pushq   %rax
	movq    -16(%rbp), %rax 	# d, 8
	pushq   %rax
	popq   %rax
	popq   %rbx
#+
	addq   %rbx, %rax
	pushq   %rax
#(expression)
	movq    -16(%rbp), %rax 	# d, 8
	pushq   %rax
	movq    -8(%rbp), %rax 	# c, 0
	pushq   %rax
	popq   %rax
	popq   %rbx
#+
	imulq   $8, %rbx
	addq   %rbx, %rax
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
	movq    $0x1, %rax
	pushq   %rax
	movq    -16(%rbp), %rax 	# d, 8
	pushq   %rax
	popq   %rax
	popq   %rbx
#+
	addq   %rbx, %rax
	pushq   %rax
	movq    -16(%rbp), %rax 	# d, 8
	leaq    -16(%rbp), %rax	# d, 8
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
# save callee-saved registers
	pushq   %rcx
	pushq   %rdx
	pushq   %rdi
	pushq   %rsi
	pushq   %r8
	pushq   %r9
	pushq   %r10
	pushq   %r11
	movq    -16(%rbp), %rax 	# d, 8
	pushq   %rax
	leaq    L.XCC.STR0(%rip), %rax 	# "%ld\n"
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
# save callee-saved registers
	pushq   %rcx
	pushq   %rdx
	pushq   %rdi
	pushq   %rsi
	pushq   %r8
	pushq   %r9
	pushq   %r10
	pushq   %r11
#(expression)
	movq    -16(%rbp), %rax 	# d, 8
	pushq   %rax
	movq    -8(%rbp), %rax 	# c, 0
	pushq   %rax
	popq   %rax
	popq   %rbx
#+
	imulq   $8, %rbx
	addq   %rbx, %rax
	pushq   %rax
	popq   %rax
	movq   0(%rax), %rax
	pushq   %rax
	leaq    L.XCC.STR1(%rip), %rax 	# "%c\n"
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
	jmp    label1000
label1001:
	movq    $0x0, %rax
	pushq   %rax
#(expression)
	movq    $0x1a, %rax
	pushq   %rax
	movq    -8(%rbp), %rax 	# c, 0
	pushq   %rax
	popq   %rax
	popq   %rbx
#+
	imulq   $8, %rbx
	addq   %rbx, %rax
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
# save callee-saved registers
	pushq   %rcx
	pushq   %rdx
	pushq   %rdi
	pushq   %rsi
	pushq   %r8
	pushq   %r9
	pushq   %r10
	pushq   %r11
	movq    -8(%rbp), %rax 	# c, 0
	pushq   %rax
	leaq    L.XCC.STR2(%rip), %rax 	# "%s\n"
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
