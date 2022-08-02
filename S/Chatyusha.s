	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 3	sdk_version 11, 3
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #320                    ; =320
	stp	x28, x27, [sp, #288]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #304]            ; 16-byte Folded Spill
	add	x29, sp, #304                   ; =304
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	sub	x8, x29, #144                   ; =144
	adrp	x9, ___stack_chk_guard@GOTPAGE
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x9, [x9]
	stur	x9, [x29, #-24]
	mov	w10, #0
	str	wzr, [sp, #56]
	str	w0, [sp, #52]
	str	x1, [sp, #40]
	mov	x0, x10
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	_setlocale
	adrp	x8, l___const.main.DDSK@PAGE
	add	x8, x8, l___const.main.DDSK@PAGEOFF
	ldr	q0, [x8]
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	q0, [x8]
	str	wzr, [sp, #36]
	add	x9, sp, #60                     ; =60
	mov	x0, x9
	adrp	x1, l___const.main.DDSKTemp@PAGE
	add	x1, x1, l___const.main.DDSKTemp@PAGEOFF
	mov	x2, #100
	bl	_memcpy
	str	wzr, [sp, #32]
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
                                        ;     Child Loop BB0_12 Depth 2
	ldr	w8, [sp, #36]
	cbnz	w8, LBB0_20
; %bb.2:                                ;   in Loop: Header=BB0_1 Depth=1
	bl	_rand
	mov	w8, #2
	sdiv	w9, w0, w8
	mul	w8, w9, w8
	subs	w8, w0, w8
	str	w8, [sp, #28]
	ldr	w8, [sp, #32]
	cmp	w8, #24                         ; =24
	b.lt	LBB0_16
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	str	w8, [sp, #20]
	str	wzr, [sp, #24]
LBB0_4:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #24]
	cmp	w8, #24                         ; =24
	b.ge	LBB0_9
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=2
	ldrsw	x8, [sp, #24]
	sub	x9, x29, #120                   ; =120
	ldr	w10, [x9, x8, lsl #2]
	ldrsw	x8, [sp, #24]
	add	x9, sp, #60                     ; =60
	ldr	w11, [x9, x8, lsl #2]
	subs	w10, w10, w11
	b.ne	LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_4 Depth=2
	ldr	w8, [sp, #20]
	lsl	w8, w8, #1
	str	w8, [sp, #20]
LBB0_7:                                 ;   in Loop: Header=BB0_4 Depth=2
; %bb.8:                                ;   in Loop: Header=BB0_4 Depth=2
	ldr	w8, [sp, #24]
	add	w8, w8, #1                      ; =1
	str	w8, [sp, #24]
	b	LBB0_4
LBB0_9:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	mov	w9, #16777216
	subs	w8, w8, w9
	b.ne	LBB0_11
; %bb.10:
	mov	w8, #1
	str	w8, [sp, #36]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_wprintf
	adrp	x9, l_.str.2@PAGE
	add	x9, x9, l_.str.2@PAGEOFF
	mov	x0, x9
	bl	_printf
	b	LBB0_20
LBB0_11:                                ;   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #24]
LBB0_12:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #24]
	cmp	w8, #24                         ; =24
	b.ge	LBB0_15
; %bb.13:                               ;   in Loop: Header=BB0_12 Depth=2
	ldr	w8, [sp, #24]
	add	w8, w8, #2                      ; =2
	sub	x9, x29, #120                   ; =120
	ldr	w8, [x9, w8, sxtw #2]
	ldrsw	x10, [sp, #24]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #24]
	add	w8, w8, #3                      ; =3
	ldr	w8, [x9, w8, sxtw #2]
	ldr	w11, [sp, #24]
	add	w11, w11, #1                    ; =1
	str	w8, [x9, w11, sxtw #2]
; %bb.14:                               ;   in Loop: Header=BB0_12 Depth=2
	ldr	w8, [sp, #24]
	add	w8, w8, #2                      ; =2
	str	w8, [sp, #24]
	b	LBB0_12
LBB0_15:                                ;   in Loop: Header=BB0_1 Depth=1
	ldrsw	x8, [sp, #28]
	lsl	x8, x8, #3
	sub	x9, x29, #144                   ; =144
	ldr	w10, [x9, x8]
	stur	w10, [x29, #-32]
	ldrsw	x8, [sp, #28]
	add	x8, x9, x8, lsl #3
	ldr	w10, [x8, #4]
	stur	w10, [x29, #-28]
	b	LBB0_19
LBB0_16:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #32]
	cmp	w8, #24                         ; =24
	b.ge	LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_1 Depth=1
	ldrsw	x8, [sp, #28]
	lsl	x8, x8, #3
	sub	x9, x29, #144                   ; =144
	ldr	w10, [x9, x8]
	ldrsw	x8, [sp, #32]
	sub	x11, x29, #120                  ; =120
	str	w10, [x11, x8, lsl #2]
	ldrsw	x8, [sp, #28]
	add	x8, x9, x8, lsl #3
	ldr	w10, [x8, #4]
	ldr	w12, [sp, #32]
	add	w12, w12, #1                    ; =1
	str	w10, [x11, w12, sxtw #2]
	ldr	w10, [sp, #32]
	add	w10, w10, #2                    ; =2
	str	w10, [sp, #32]
LBB0_18:                                ;   in Loop: Header=BB0_1 Depth=1
LBB0_19:                                ;   in Loop: Header=BB0_1 Depth=1
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	mov	x8, sp
	sub	x9, x29, #120                   ; =120
	str	x9, [x8]
	bl	_wprintf
	adrp	x8, l_.str.2@PAGE
	add	x8, x8, l_.str.2@PAGEOFF
	mov	x0, x8
	bl	_printf
	b	LBB0_1
LBB0_20:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.ne	LBB0_22
; %bb.21:
	mov	w8, #0
	mov	x0, x8
	ldp	x29, x30, [sp, #304]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #288]            ; 16-byte Folded Reload
	add	sp, sp, #320                    ; =320
	ret
LBB0_22:
	bl	___stack_chk_fail
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.space	1

	.section	__TEXT,__literal16,16byte_literals
	.p2align	2                               ; @__const.main.DDSK
l___const.main.DDSK:
	.long	12489                           ; 0x30c9
	.long	12489                           ; 0x30c9
	.long	12473                           ; 0x30b9
	.long	12467                           ; 0x30b3

	.section	__TEXT,__const
	.p2align	2                               ; @__const.main.DDSKTemp
l___const.main.DDSKTemp:
	.long	12489                           ; 0x30c9
	.long	12489                           ; 0x30c9
	.long	12473                           ; 0x30b9
	.long	12467                           ; 0x30b3
	.long	12473                           ; 0x30b9
	.long	12467                           ; 0x30b3
	.long	12473                           ; 0x30b9
	.long	12467                           ; 0x30b3
	.long	12489                           ; 0x30c9
	.long	12489                           ; 0x30c9
	.long	12473                           ; 0x30b9
	.long	12467                           ; 0x30b3
	.long	12473                           ; 0x30b9
	.long	12467                           ; 0x30b3
	.long	12473                           ; 0x30b9
	.long	12467                           ; 0x30b3
	.long	12489                           ; 0x30c9
	.long	12489                           ; 0x30c9
	.long	12473                           ; 0x30b9
	.long	12467                           ; 0x30b3
	.long	12473                           ; 0x30b9
	.long	12467                           ; 0x30b3
	.long	12473                           ; 0x30b9
	.long	12467                           ; 0x30b3
	.long	0                               ; 0x0

	.p2align	2                               ; @.str.1
l_.str.1:
	.long	12521                           ; 0x30e9
	.long	12502                           ; 0x30d6
	.long	27880                           ; 0x6ce8
	.long	20837                           ; 0x5165
	.long	9825                            ; 0x2661
	.long	0                               ; 0x0

	.section	__TEXT,__cstring,cstring_literals
l_.str.2:                               ; @.str.2
	.asciz	"\n"

	.section	__TEXT,__const
	.p2align	2                               ; @.str.3
l_.str.3:
	.long	37                              ; 0x25
	.long	108                             ; 0x6c
	.long	115                             ; 0x73
	.long	10                              ; 0xa
	.long	0                               ; 0x0

.subsections_via_symbols
