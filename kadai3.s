	.text
	.globl  _mod
	.p2align 4, 0x90
_mod:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $0, %rsp
	pushq   %rsi
#(expression)
	pushq   %rsi
	pushq   %rdi
	popq   %rax
	popq   %rbx
#/
	cltd
	divq   %rbx
	pushq   %rax
	popq   %rax
	popq   %rbx
#*
	movq   $0, %rdx
	imulq   %rbx
	pushq   %rax
	pushq   %rdi
	popq   %rax
	popq   %rbx
#-
	subq   %rbx, %rax
	pushq   %rax
	addq    $8, %rsp
L.XCC.RE.mod:
	movq    %rbp, %rsp
	popq    %rbp
	retq
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
	.globl  _make_array
	.p2align 4, 0x90
_make_array:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $16, %rsp
	movq    $0x0, %rax
	pushq   %rax
	movq    -8(%rbp), %rax 	# i, 0
	leaq    -8(%rbp), %rax	# i, 0
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
	pushq   %rdx
	movq    _srandom@GOTPCREL(%rip), %rax
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
	addq    $8, %rsp
label9:
	pushq   %rsi
	movq    -8(%rbp), %rax 	# i, 0
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
# save callee-saved registers
	pushq   %rcx
	pushq   %rdx
	pushq   %rdi
	pushq   %rsi
	pushq   %r8
	pushq   %r9
	pushq   %r10
	pushq   %r11
	movq    _random@GOTPCREL(%rip), %rax
	pushq   %rax
	popq    %r11
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
	movq    -16(%rbp), %rax 	# j, 8
	leaq    -16(%rbp), %rax	# j, 8
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
	pushq   %rsi
	movq    -16(%rbp), %rax 	# j, 8
	pushq   %rax
	leaq    _mod(%rip), %rax
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
#(expression)
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	pushq   %rdi
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
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	popq   %rax
	popq   %rbx
#+
	addq   %rbx, %rax
	pushq   %rax
	movq    -8(%rbp), %rax 	# i, 0
	leaq    -8(%rbp), %rax	# i, 0
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
	jmp    label9
label10:
L.XCC.RE.make_array:
	movq    %rbp, %rsp
	popq    %rbp
	retq
	.text
L.XCC.STR0:
	.ascii  "%ld\n\0"
	.text
	.globl  _main
	.p2align 4, 0x90
_main:
	pushq   %rbp
	movq    %rsp, %rbp
	subq    $32, %rsp
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
	pushq   %rsi
	popq   %rax
	popq   %rbx
#+
	imulq   $8, %rbx
	addq   %rbx, %rax
	pushq   %rax
	popq   %rax
	movq   0(%rax), %rax
	pushq   %rax
	movq    _atol@GOTPCREL(%rip), %rax
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
	movq    -24(%rbp), %rax 	# size, 16
	leaq    -24(%rbp), %rax	# size, 16
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
	movq    -24(%rbp), %rax 	# size, 16
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
	movq    -16(%rbp), %rax 	# p, 8
	leaq    -16(%rbp), %rax	# p, 8
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
	movq    $0x0, %rax
	pushq   %rax
	movq    -24(%rbp), %rax 	# size, 16
	pushq   %rax
	movq    -16(%rbp), %rax 	# p, 8
	pushq   %rax
	leaq    _make_array(%rip), %rax
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
# save callee-saved registers
	pushq   %rcx
	pushq   %rdx
	pushq   %rdi
	pushq   %rsi
	pushq   %r8
	pushq   %r9
	pushq   %r10
	pushq   %r11
	movq    -24(%rbp), %rax 	# size, 16
	pushq   %rax
	movq    -16(%rbp), %rax 	# p, 8
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
	movq    $0x0, %rax
	pushq   %rax
	movq    -8(%rbp), %rax 	# i, 0
	leaq    -8(%rbp), %rax	# i, 0
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
label12:
	movq    -24(%rbp), %rax 	# size, 16
	pushq   %rax
	movq    -8(%rbp), %rax 	# i, 0
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
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	movq    -16(%rbp), %rax 	# p, 8
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
	movq    $0x1, %rax
	pushq   %rax
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	popq   %rax
	popq   %rbx
#+
	addq   %rbx, %rax
	pushq   %rax
	movq    -8(%rbp), %rax 	# i, 0
	leaq    -8(%rbp), %rax	# i, 0
	pushq   %rax
	popq   %rax
	popq   %rbx
	movq   %rbx, 0(%rax)
	pushq   %rbx
	addq    $8, %rsp
	jmp    label12
label13:
L.XCC.RE.main:
	movq    %rbp, %rsp
	popq    %rbp
	movl  $0, %edi
	callq  _exit
