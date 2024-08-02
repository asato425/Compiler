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
	popq    -8(%rbp)	# tmp, 0
	movq    -8(%rbp), %rax 	# tmp, 0
	pushq   %rax
	addq    $8, %rsp
	addq    $8, %rsp
	popq    -8(%rbp)	# tmp, 0
	movq    -8(%rbp), %rax 	# tmp, 0
	pushq   %rax
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
	popq    -8(%rbp)	# i, 0
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	addq    $8, %rsp
label0:
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	movq    $0x0, %rax
	pushq   %rax
	popq   %rax
	popq   %rbx
#<
	cmpq   %rax, %rbx
	pushq   $1
	ja    label2
	pushq   %rax
	pushq   $0
label2:
	popq   %rax
	cmpq   $0, %rax
	jbe    label1
	movq    $0x0, %rax
	pushq   %rax
	popq    -16(%rbp)	# j, 8
	movq    -16(%rbp), %rax 	# j, 8
	pushq   %rax
	addq    $8, %rsp
label3:
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	movq    -16(%rbp), %rax 	# j, 8
	pushq   %rax
	popq   %rax
	popq   %rbx
#<
	cmpq   %rax, %rbx
	pushq   $1
	ja    label5
	pushq   %rax
	pushq   $0
label5:
	popq   %rax
	cmpq   $0, %rax
	jbe    label4
	popq   %rax
	popq   %rbx
#<
	cmpq   %rax, %rbx
	pushq   $1
	ja    label8
	pushq   %rax
	pushq   $0
label8:
	popq   %rax
	cmpq   $0, %rax
	jbe    label6
global:   bubble_sort, swap, mod, atol, random, srandom, malloc, printf, 
arg:      size, data, 
label:    
string:   
local[0]: j, i, 
local[1]: 
local[2]: 
# save callee-saved registers
	pushq   %rbx
	pushq   %rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	pushq   %r15
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
	addq   %rbx, %rax
	pushq   %rax
	movq    -16(%rbp), %rax 	# j, 8
	pushq   %rax
	pushq   %rdi
	popq   %rax
	popq   %rbx
#+
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
	popq   %r15
	popq   %r14
	popq   %r13
	popq   %r12
	popq   %rbx
	popq   %rbx
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
	popq    -16(%rbp)	# j, 8
	movq    -16(%rbp), %rax 	# j, 8
	pushq   %rax
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
	popq    -8(%rbp)	# i, 0
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
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
	popq    -8(%rbp)	# i, 0
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	addq    $8, %rsp
global:   make_array, bubble_sort, swap, mod, atol, random, srandom, malloc, printf, 
arg:      seed, size, data, 
label:    
string:   
local[0]: i, 
# save callee-saved registers
	pushq   %rbx
	pushq   %rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	pushq   %r15
	pushq   %rdx
	movq    _srandom@GOTPCREL(%rip), %rax
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
	addq    $8, %rsp
label9:
	pushq   %rsi
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	popq   %rax
	popq   %rbx
#<
	cmpq   %rax, %rbx
	pushq   $1
	ja    label11
	pushq   %rax
	pushq   $0
label11:
	popq   %rax
	cmpq   $0, %rax
	jbe    label10
global:   make_array, bubble_sort, swap, mod, atol, random, srandom, malloc, printf, 
arg:      seed, size, data, 
label:    
string:   
local[0]: i, 
local[1]: j, 
# save callee-saved registers
	pushq   %rbx
	pushq   %rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	pushq   %r15
	movq    _random@GOTPCREL(%rip), %rax
	pushq   %rax
	popq    %r11
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
	popq    -16(%rbp)	# j, 8
	movq    -16(%rbp), %rax 	# j, 8
	pushq   %rax
	addq    $8, %rsp
global:   make_array, bubble_sort, swap, mod, atol, random, srandom, malloc, printf, 
arg:      seed, size, data, 
label:    
string:   
local[0]: i, 
local[1]: j, 
# save callee-saved registers
	pushq   %rbx
	pushq   %rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	pushq   %r15
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
#+
	addq   %rbx, %rax
	pushq   %rax
	popq    -8(%rbp)	# i, 0
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
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
global:   main, make_array, bubble_sort, swap, mod, atol, random, srandom, malloc, printf, 
arg:      argv, argc, 
label:    
string:   %ld\n (STR0), 
local[0]: size, p, i, 
# save callee-saved registers
	pushq   %rbx
	pushq   %rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	pushq   %r15
	movq    _atol@GOTPCREL(%rip), %rax
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
	popq    -24(%rbp)	# size, 16
	movq    -24(%rbp), %rax 	# size, 16
	pushq   %rax
	addq    $8, %rsp
global:   main, make_array, bubble_sort, swap, mod, atol, random, srandom, malloc, printf, 
arg:      argv, argc, 
label:    
string:   %ld\n (STR0), 
local[0]: size, p, i, 
# save callee-saved registers
	pushq   %rbx
	pushq   %rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	pushq   %r15
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
	popq   %r15
	popq   %r14
	popq   %r13
	popq   %r12
	popq   %rbx
	popq   %rbx
	pushq   %rax
	popq    -16(%rbp)	# p, 8
	movq    -16(%rbp), %rax 	# p, 8
	pushq   %rax
	addq    $8, %rsp
global:   main, make_array, bubble_sort, swap, mod, atol, random, srandom, malloc, printf, 
arg:      argv, argc, 
label:    
string:   %ld\n (STR0), 
local[0]: size, p, i, 
# save callee-saved registers
	pushq   %rbx
	pushq   %rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	pushq   %r15
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
	popq   %r15
	popq   %r14
	popq   %r13
	popq   %r12
	popq   %rbx
	popq   %rbx
	pushq   %rax
	addq    $8, %rsp
global:   main, make_array, bubble_sort, swap, mod, atol, random, srandom, malloc, printf, 
arg:      argv, argc, 
label:    
string:   %ld\n (STR0), 
local[0]: size, p, i, 
# save callee-saved registers
	pushq   %rbx
	pushq   %rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	pushq   %r15
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
label12:
	movq    -24(%rbp), %rax 	# size, 16
	pushq   %rax
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	popq   %rax
	popq   %rbx
#<
	cmpq   %rax, %rbx
	pushq   $1
	ja    label14
	pushq   %rax
	pushq   $0
label14:
	popq   %rax
	cmpq   $0, %rax
	jbe    label13
global:   main, make_array, bubble_sort, swap, mod, atol, random, srandom, malloc, printf, 
arg:      argv, argc, 
label:    
string:   %ld\n (STR0), 
local[0]: size, p, i, 
local[1]: 
# save callee-saved registers
	pushq   %rbx
	pushq   %rbx
	pushq   %r12
	pushq   %r13
	pushq   %r14
	pushq   %r15
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
#+
	addq   %rbx, %rax
	pushq   %rax
	popq    -8(%rbp)	# i, 0
	movq    -8(%rbp), %rax 	# i, 0
	pushq   %rax
	addq    $8, %rsp
	jmp    label12
label13:
L.XCC.RE.main:
	movq    %rbp, %rsp
	popq    %rbp
	movl  $0, %edi
	callq  _exit
