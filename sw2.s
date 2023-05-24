	.text
	.file	"axpy.cu"
	.section	.text.startup,"ax",@progbits
	.p2align	2                               // -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  // @__cxx_global_var_init
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	adrp	x19, _ZStL8__ioinit
	add	x19, x19, :lo12:_ZStL8__ioinit
	mov	x0, x19
	bl	_ZNSt8ios_base4InitC1Ev
	adrp	x0, :got:_ZNSt8ios_base4InitD1Ev
	adrp	x2, __dso_handle
	add	x2, x2, :lo12:__dso_handle
	mov	x1, x19
	ldr	x0, [x0, :got_lo12:_ZNSt8ios_base4InitD1Ev]
	bl	__cxa_atexit
	.cfi_def_cfa wsp, 32
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        // -- End function
	.text
	.globl	_Z19__device_stub__axpyfPfS_    // -- Begin function _Z19__device_stub__axpyfPfS_
	.p2align	2
	.type	_Z19__device_stub__axpyfPfS_,@function
_Z19__device_stub__axpyfPfS_:           // @_Z19__device_stub__axpyfPfS_
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	s0, [x29, #-4]
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	sub	x8, x29, #4
	str	x8, [sp]
	sub	x8, x29, #16
	str	x8, [sp, #8]
	sub	x8, x29, #24
	str	x8, [sp, #16]
	sub	x0, x29, #40
	sub	x1, x29, #56
	add	x2, sp, #64
	add	x3, sp, #56
	bl	__cudaPopCallConfiguration
	ldr	x6, [sp, #64]
	ldr	x7, [sp, #56]
	ldur	x8, [x29, #-40]
	ldur	w9, [x29, #-32]
	str	w9, [sp, #48]
	str	x8, [sp, #40]
	ldr	x2, [sp, #48]
	ldr	x1, [sp, #40]
	ldur	x8, [x29, #-56]
	ldur	w9, [x29, #-48]
	str	w9, [sp, #32]
	str	x8, [sp, #24]
	ldr	x4, [sp, #32]
	ldr	x3, [sp, #24]
	adrp	x0, _Z19__device_stub__axpyfPfS_
	add	x0, x0, :lo12:_Z19__device_stub__axpyfPfS_
	mov	x5, sp
	bl	cudaLaunchKernel
// %bb.1:
	.cfi_def_cfa wsp, 144
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end1:
	.size	_Z19__device_stub__axpyfPfS_, .Lfunc_end1-_Z19__device_stub__axpyfPfS_
	.cfi_endproc
                                        // -- End function
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, #144]            // 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	mov	w8, #4                          // =0x4
	stur	w8, [x29, #-20]
	mov	w8, #1073741824                 // =0x40000000
	stur	w8, [x29, #-24]
	adrp	x8, .L__const.main.host_x
	add	x8, x8, :lo12:.L__const.main.host_x
	ldr	q0, [x8]
	stur	q0, [x29, #-48]
	add	x0, sp, #72
	mov	w1, #16                         // =0x10
	bl	_ZL10cudaMallocIfE9cudaErrorPPT_m
	add	x0, sp, #64
	mov	w1, #16                         // =0x10
	bl	_ZL10cudaMallocIfE9cudaErrorPPT_m
	ldr	x0, [sp, #72]
	sub	x1, x29, #48
	mov	w2, #16                         // =0x10
	mov	w3, #1                          // =0x1
	bl	cudaMemcpy
	add	x0, sp, #52
	mov	w1, #1                          // =0x1
	mov	w2, #1                          // =0x1
	mov	w3, #1                          // =0x1
	bl	_ZN4dim3C2Ejjj
	add	x0, sp, #40
	mov	w1, #4                          // =0x4
	mov	w2, #1                          // =0x1
	mov	w3, #1                          // =0x1
	bl	_ZN4dim3C2Ejjj
	ldur	x8, [sp, #52]
	ldr	w9, [sp, #60]
	str	w9, [sp, #32]
	str	x8, [sp, #24]
	ldr	x1, [sp, #32]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #48]
	str	w9, [sp, #16]
	str	x8, [sp, #8]
	ldr	x3, [sp, #16]
	ldr	x2, [sp, #8]
	mov	x4, xzr
	mov	x5, xzr
	bl	__cudaPushCallConfiguration
	cbnz	w0, .LBB2_2
// %bb.1:
	ldur	s0, [x29, #-24]
	ldr	x0, [sp, #72]
	ldr	x1, [sp, #64]
	bl	_Z19__device_stub__axpyfPfS_
.LBB2_2:
	bl	cudaDeviceSynchronize
	ldr	x1, [sp, #64]
	sub	x0, x29, #64
	mov	x2, #16                         // =0x10
	mov	w3, #2                          // =0x2
	bl	cudaMemcpy
	str	wzr, [sp, #4]
.LBB2_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	cmp	w8, #4
	b.ge	.LBB2_6
// %bb.4:                               //   in Loop: Header=BB2_3 Depth=1
	adrp	x8, :got:_ZSt4cout
	ldr	x0, [x8, :got_lo12:_ZSt4cout]
	adrp	x8, .L.str
	add	x1, x8, :lo12:.L.str
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldr	w1, [sp, #4]
	bl	_ZNSolsEi
	adrp	x8, .L.str.1
	add	x1, x8, :lo12:.L.str.1
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	ldrsw	x8, [sp, #4]
	sub	x9, x29, #64
	mov	x10, #4                         // =0x4
	madd	x8, x8, x10, x9
	ldr	s0, [x8]
	bl	_ZNSolsEf
	adrp	x8, .L.str.2
	add	x1, x8, :lo12:.L.str.2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
// %bb.5:                               //   in Loop: Header=BB2_3 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB2_3
.LBB2_6:
	bl	cudaDeviceReset
	mov	w0, wzr
	.cfi_def_cfa wsp, 160
	ldp	x29, x30, [sp, #144]            // 16-byte Folded Reload
	add	sp, sp, #160
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function _ZL10cudaMallocIfE9cudaErrorPPT_m
	.type	_ZL10cudaMallocIfE9cudaErrorPPT_m,@function
_ZL10cudaMallocIfE9cudaErrorPPT_m:      // @_ZL10cudaMallocIfE9cudaErrorPPT_m
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	cudaMalloc
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end3:
	.size	_ZL10cudaMallocIfE9cudaErrorPPT_m, .Lfunc_end3-_ZL10cudaMallocIfE9cudaErrorPPT_m
	.cfi_endproc
                                        // -- End function
	.section	.text._ZN4dim3C2Ejjj,"axG",@progbits,_ZN4dim3C2Ejjj,comdat
	.weak	_ZN4dim3C2Ejjj                  // -- Begin function _ZN4dim3C2Ejjj
	.p2align	2
	.type	_ZN4dim3C2Ejjj,@function
_ZN4dim3C2Ejjj:                         // @_ZN4dim3C2Ejjj
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	w1, [sp, #20]
	str	w2, [sp, #16]
	str	w3, [sp, #12]
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #20]
	str	w9, [x8]
	ldr	w9, [sp, #16]
	str	w9, [x8, #4]
	ldr	w9, [sp, #12]
	str	w9, [x8, #8]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end4:
	.size	_ZN4dim3C2Ejjj, .Lfunc_end4-_ZN4dim3C2Ejjj
	.cfi_endproc
                                        // -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	2                               // -- Begin function _GLOBAL__sub_I_axpy.cu
	.type	_GLOBAL__sub_I_axpy.cu,@function
_GLOBAL__sub_I_axpy.cu:                 // @_GLOBAL__sub_I_axpy.cu
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__cxx_global_var_init
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end5:
	.size	_GLOBAL__sub_I_axpy.cu, .Lfunc_end5-_GLOBAL__sub_I_axpy.cu
	.cfi_endproc
                                        // -- End function
	.type	_ZStL8__ioinit,@object          // @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	gg,@object                      // @gg
	.local	gg
	.comm	gg,4,4
	.type	.L__const.main.host_x,@object   // @__const.main.host_x
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
.L__const.main.host_x:
	.word	0x3f800000                      // float 1
	.word	0x40000000                      // float 2
	.word	0x40400000                      // float 3
	.word	0x40800000                      // float 4
	.size	.L__const.main.host_x, 16

	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"y["
	.size	.L.str, 3

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"] = "
	.size	.L.str.1, 5

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"\n"
	.size	.L.str.2, 2

	.section	.init_array,"aw",@init_array
	.p2align	3
	.xword	_GLOBAL__sub_I_axpy.cu
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git d4de7c2e1e7954ea03545f1551fda9f6bb9387cf)"
	.section	".note.GNU-stack","",@progbits
