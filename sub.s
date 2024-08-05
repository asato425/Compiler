	.text
	.globl  _swap
	.p2align 4, 0x90
_swap:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $16, %rsp
	pushq   %rdi
	popq   %rax
	movq   0(%rax), %rax
	pushq   %rax
	movq    -8(%rbp), %rax 	# tmp, 0
	leaq    -8(%rbp), %rax	# tmp, 0
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
	pushq   %rsi
	popq   %rax
	movq   0(%rax), %rax
	pushq   %rax
	pushq   %rdi
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
	movq    -8(%rbp), %rax 	# tmp, 0
	pushq   %rax
	pushq   %rsi
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
L.XCC.RE.swap:
	movq    %rbp, %rsp
	popq    %rbp
	retq
	.text
	.globl  _bubble_sort
	.p2align 4, 0x90
_bubble_sort:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $16, %rsp
	movq    $0x1, %rax
	pushq   %rax
	pushq   %rsi
	popq   %rax
	popq   %rbx
#-
	subq   %rbx, %rax
	pushq   %rax
	movq    -8(%rbp), %rax 	# i, 0
	leaq    -8(%rbp), %rax	# i, 0
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
label0:
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	movq    $0x0, %rax
	pushq   %rax
	popq   %rax
	popq   %rbx
#<
	pushq   $1
	cmpq   %rax, %rbx
	jg    label2
	popq   %rax
	pushq   $0
label2:
	popq   %rax
	cmpq   $0, %rax
	jbe    label1
	movq    $0x0, %rax
	pushq   %rax
	movq    -16(%rbp), %rax 	# j, 8
	leaq    -16(%rbp), %rax	# j, 8
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
label3:
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	movq    -16(%rbp), %rax 	# j, 8
	pushq   %rax
	popq   %rax
	popq   %rbx
#<
	pushq   $1
	cmpq   %rax, %rbx
	jg    label5
	popq   %rax
	pushq   $0
label5:
	popq   %rax
	cmpq   $0, %rax
	jbe    label4
#(expression)
	movq    -16(%rbp), %rax 	# j, 8
	pushq   %rax
	pushq   %rdi
	popq   %rax
	popq   %rbx
#+
	imulq   $8, %rbx
	addq   %rbx, %rax
	pushq   %rax
	popq   %rax
	movq   0(%rax), %rax
	pushq   %rax
#(expression)
#(expression)
	movq    $0x1, %rax
	pushq   %rax
	movq    -16(%rbp), %rax 	# j, 8
	pushq   %rax
	popq   %rax
	popq   %rbx
#+
	addq   %rbx, %rax
	pushq   %rax
	pushq   %rdi
	popq   %rax
	popq   %rbx
#+
	imulq   $8, %rbx
	addq   %rbx, %rax
	pushq   %rax
	popq   %rax
	movq   0(%rax), %rax
	pushq   %rax
	popq   %rax
	popq   %rbx
#<
	pushq   $1
	cmpq   %rax, %rbx
	jg    label8
	popq   %rax
	pushq   $0
label8:
	popq   %rax
	cmpq   $0, %rax
	jbe    label6
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
	movq    $0x1, %rax
	pushq   %rax
	movq    -16(%rbp), %rax 	# j, 8
	pushq   %rax
	popq   %rax
	popq   %rbx
#+
	addq   %rbx, %rax
	pushq   %rax
	pushq   %rdi
	popq   %rax
	popq   %rbx
#+
	imulq   $8, %rbx
	addq   %rbx, %rax
	pushq   %rax
	movq    -16(%rbp), %rax 	# j, 8
	pushq   %rax
	pushq   %rdi
	popq   %rax
	popq   %rbx
#+
	imulq   $8, %rbx
	addq   %rbx, %rax
	pushq   %rax
	leaq    _swap(%rip), %rax
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
	jmp    label7
label6:
label7:
	movq    $0x1, %rax
	pushq   %rax
	movq    -16(%rbp), %rax 	# j, 8
	pushq   %rax
	popq   %rax
	popq   %rbx
#+
	addq   %rbx, %rax
	pushq   %rax
	movq    -16(%rbp), %rax 	# j, 8
	leaq    -16(%rbp), %rax	# j, 8
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
	jmp    label3
label4:
	movq    $0x1, %rax
	pushq   %rax
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	popq   %rax
	popq   %rbx
#-
	subq   %rbx, %rax
	pushq   %rax
	movq    -8(%rbp), %rax 	# i, 0
	leaq    -8(%rbp), %rax	# i, 0
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
	jmp    label0
label1:
L.XCC.RE.bubble_sort:
	movq    %rbp, %rsp
	popq    %rbp
	retq
	.text
L.XCC.STR0:
	.ascii  "p[%ld]=%ld\n\0"
	.text
	.globl  _main
	.p2align 4, 0x90
_main:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $32, %rsp
	movq    $0x0, %rax
	pushq   %rax
	movq    -24(%rbp), %rax 	# i, 16
	leaq    -24(%rbp), %rax	# i, 16
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
	movq    $0x5, %rax
	pushq   %rax
	movq    -16(%rbp), %rax 	# n, 8
	leaq    -16(%rbp), %rax	# n, 8
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
	movq    -16(%rbp), %rax 	# n, 8
	pushq   %rax
	movq    $0x8, %rax
	pushq   %rax
	popq   %rax
	popq   %rbx
#*
	movq   $0, %rdx
	imulq   %rbx
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
	movq    -8(%rbp), %rax 	# p, 0
	leaq    -8(%rbp), %rax	# p, 0
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
label9:
	movq    -16(%rbp), %rax 	# n, 8
	pushq   %rax
	movq    -24(%rbp), %rax 	# i, 16
	pushq   %rax
	popq   %rax
	popq   %rbx
#<
	pushq   $1
	cmpq   %rax, %rbx
	jg    label11
	popq   %rax
	pushq   $0
label11:
	popq   %rax
	cmpq   $0, %rax
	jbe    label10
#(expression)
	movq    -24(%rbp), %rax 	# i, 16
	pushq   %rax
	movq    -16(%rbp), %rax 	# n, 8
	pushq   %rax
	popq   %rax
	popq   %rbx
#-
	subq   %rbx, %rax
	pushq   %rax
#(expression)
	movq    -24(%rbp), %rax 	# i, 16
	pushq   %rax
	movq    -16(%rbp), %rax 	# n, 8
	pushq   %rax
	popq   %rax
	popq   %rbx
#-
	subq   %rbx, %rax
	pushq   %rax
	popq   %rax
	popq   %rbx
#*
	movq   $0, %rdx
	imulq   %rbx
	pushq   %rax
#(expression)
	movq    -24(%rbp), %rax 	# i, 16
	pushq   %rax
	movq    -8(%rbp), %rax 	# p, 0
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
	movq    -24(%rbp), %rax 	# i, 16
	pushq   %rax
	popq   %rax
	popq   %rbx
#+
	addq   %rbx, %rax
	pushq   %rax
	movq    -24(%rbp), %rax 	# i, 16
	leaq    -24(%rbp), %rax	# i, 16
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
	jmp    label9
label10:
	movq    $0x0, %rax
	pushq   %rax
	movq    -24(%rbp), %rax 	# i, 16
	leaq    -24(%rbp), %rax	# i, 16
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
label12:
	movq    -16(%rbp), %rax 	# n, 8
	pushq   %rax
	movq    -24(%rbp), %rax 	# i, 16
	pushq   %rax
	popq   %rax
	popq   %rbx
#<
	pushq   $1
	cmpq   %rax, %rbx
	jg    label14
	popq   %rax
	pushq   $0
label14:
	popq   %rax
	cmpq   $0, %rax
	jbe    label13
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
	movq    -24(%rbp), %rax 	# i, 16
	pushq   %rax
	movq    -8(%rbp), %rax 	# p, 0
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
	movq    -24(%rbp), %rax 	# i, 16
	pushq   %rax
	leaq    L.XCC.STR0(%rip), %rax 	# "p[%ld]=%ld\n"
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
	movq    $0x1, %rax
	pushq   %rax
	movq    -24(%rbp), %rax 	# i, 16
	pushq   %rax
	popq   %rax
	popq   %rbx
#+
	addq   %rbx, %rax
	pushq   %rax
	movq    -24(%rbp), %rax 	# i, 16
	leaq    -24(%rbp), %rax	# i, 16
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
	jmp    label12
label13:
	movq    $0x0, %rax
	pushq   %rax
	movq    -24(%rbp), %rax 	# i, 16
	leaq    -24(%rbp), %rax	# i, 16
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
	movq    -16(%rbp), %rax 	# n, 8
	pushq   %rax
	movq    -8(%rbp), %rax 	# p, 0
	pushq   %rax
	leaq    _bubble_sort(%rip), %rax
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
label15:
	movq    -16(%rbp), %rax 	# n, 8
	pushq   %rax
	movq    -24(%rbp), %rax 	# i, 16
	pushq   %rax
	popq   %rax
	popq   %rbx
#<
	pushq   $1
	cmpq   %rax, %rbx
	jg    label17
	popq   %rax
	pushq   $0
label17:
	popq   %rax
	cmpq   $0, %rax
	jbe    label16
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
	movq    -24(%rbp), %rax 	# i, 16
	pushq   %rax
	movq    -8(%rbp), %rax 	# p, 0
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
	movq    -24(%rbp), %rax 	# i, 16
	pushq   %rax
	leaq    L.XCC.STR0(%rip), %rax 	# "p[%ld]=%ld\n"
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
	movq    $0x1, %rax
	pushq   %rax
	movq    -24(%rbp), %rax 	# i, 16
	pushq   %rax
	popq   %rax
	popq   %rbx
#+
	addq   %rbx, %rax
	pushq   %rax
	movq    -24(%rbp), %rax 	# i, 16
	leaq    -24(%rbp), %rax	# i, 16
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
	jmp    label15
label16:
L.XCC.RE.main:
	movq    %rbp, %rsp
	popq    %rbp
	movl  $0, %edi
	callq  _exit
