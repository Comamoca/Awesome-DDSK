	.intel_syntax noprefix
.LC0:
	.string	""
.LC1:
	.string	"\3510"
	.string	""
	.string	"\3260"
	.string	""
	.string	"\350l"
	.string	""
	.string	"eQ"
	.string	""
	.string	"a&"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
.LC2:
	.string	"\n"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
.LC3:
	.string	"%"
	.string	""
	.string	""
	.string	"l"
	.string	""
	.string	""
	.string	"s"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.globl	main
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 288
	mov	DWORD PTR -276[rbp], edi
	mov	QWORD PTR -288[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, .LC0[rip]
	mov	rsi, rax
	mov	edi, 6
	call	setlocale
	mov	DWORD PTR -264[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -264[rbp]
	cdqe
	mov	DWORD PTR -224[rbp+rax*4], 32
	add	DWORD PTR -264[rbp], 1
.L2:
	cmp	DWORD PTR -264[rbp], 23
	jle	.L3
	movabs	rax, 53639846572233
	mov	QWORD PTR -240[rbp], rax
	movabs	rax, 53545357291705
	mov	QWORD PTR -232[rbp], rax
	mov	DWORD PTR -248[rbp], 0
	movabs	rax, 53639846572233
	movabs	rdx, 53545357291705
	mov	QWORD PTR -112[rbp], rax
	mov	QWORD PTR -104[rbp], rdx
	movabs	rsi, 53545357291705
	movabs	rdi, 53545357291705
	mov	QWORD PTR -96[rbp], rsi
	mov	QWORD PTR -88[rbp], rdi
	mov	QWORD PTR -80[rbp], rax
	mov	QWORD PTR -72[rbp], rdx
	mov	QWORD PTR -64[rbp], rsi
	mov	QWORD PTR -56[rbp], rdi
	mov	QWORD PTR -48[rbp], rax
	mov	QWORD PTR -40[rbp], rdx
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -16[rbp], 0
	mov	DWORD PTR -260[rbp], 0
	jmp	.L4
.L14:
	call	rand
	cdq
	shr	edx, 31
	add	eax, edx
	and	eax, 1
	sub	eax, edx
	mov	DWORD PTR -244[rbp], eax
	cmp	DWORD PTR -260[rbp], 23
	jle	.L5
	mov	DWORD PTR -252[rbp], 1
	mov	DWORD PTR -256[rbp], 0
	jmp	.L6
.L8:
	mov	eax, DWORD PTR -256[rbp]
	cdqe
	mov	edx, DWORD PTR -224[rbp+rax*4]
	mov	eax, DWORD PTR -256[rbp]
	cdqe
	mov	eax, DWORD PTR -112[rbp+rax*4]
	cmp	edx, eax
	jne	.L7
	sal	DWORD PTR -252[rbp]
.L7:
	add	DWORD PTR -256[rbp], 1
.L6:
	cmp	DWORD PTR -256[rbp], 23
	jle	.L8
	cmp	DWORD PTR -252[rbp], 16777216
	jne	.L9
	mov	DWORD PTR -248[rbp], 1
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	wprintf
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	wprintf
	jmp	.L10
.L9:
	mov	DWORD PTR -256[rbp], 0
	jmp	.L11
.L12:
	mov	eax, DWORD PTR -256[rbp]
	add	eax, 2
	cdqe
	mov	edx, DWORD PTR -224[rbp+rax*4]
	mov	eax, DWORD PTR -256[rbp]
	cdqe
	mov	DWORD PTR -224[rbp+rax*4], edx
	mov	eax, DWORD PTR -256[rbp]
	lea	edx, 3[rax]
	mov	eax, DWORD PTR -256[rbp]
	lea	ecx, 1[rax]
	movsx	rax, edx
	mov	edx, DWORD PTR -224[rbp+rax*4]
	movsx	rax, ecx
	mov	DWORD PTR -224[rbp+rax*4], edx
	add	DWORD PTR -256[rbp], 2
.L11:
	cmp	DWORD PTR -256[rbp], 23
	jle	.L12
	mov	eax, DWORD PTR -244[rbp]
	cdqe
	mov	eax, DWORD PTR -240[rbp+rax*8]
	mov	DWORD PTR -136[rbp], eax
	mov	eax, DWORD PTR -244[rbp]
	cdqe
	mov	eax, DWORD PTR -236[rbp+rax*8]
	mov	DWORD PTR -132[rbp], eax
	jmp	.L13
.L5:
	cmp	DWORD PTR -260[rbp], 23
	jg	.L13
	mov	eax, DWORD PTR -244[rbp]
	cdqe
	mov	edx, DWORD PTR -240[rbp+rax*8]
	mov	eax, DWORD PTR -260[rbp]
	cdqe
	mov	DWORD PTR -224[rbp+rax*4], edx
	mov	eax, DWORD PTR -260[rbp]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -244[rbp]
	cdqe
	mov	edx, DWORD PTR -236[rbp+rax*8]
	movsx	rax, ecx
	mov	DWORD PTR -224[rbp+rax*4], edx
	add	DWORD PTR -260[rbp], 2
.L13:
	lea	rax, -224[rbp]
	mov	rsi, rax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	wprintf
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	wprintf
.L4:
	cmp	DWORD PTR -248[rbp], 0
	je	.L14
.L10:
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L16
	call	__stack_chk_fail
.L16:
	leave
	ret
