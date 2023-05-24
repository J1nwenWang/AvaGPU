//
// Generated by LLVM NVPTX Back-End
//

.version 4.1
.target sm_52
.address_size 64

	// .globl	_Z6KernelP4NodePiPbS2_S2_S1_i // -- Begin function _Z6KernelP4NodePiPbS2_S2_S1_i
.global .align 1 .b8 blockIdx[1];
.global .align 1 .b8 threadIdx[1];
                                        // @_Z6KernelP4NodePiPbS2_S2_S1_i
.visible .entry _Z6KernelP4NodePiPbS2_S2_S1_i(
	.param .u64 _Z6KernelP4NodePiPbS2_S2_S1_i_param_0,
	.param .u64 _Z6KernelP4NodePiPbS2_S2_S1_i_param_1,
	.param .u64 _Z6KernelP4NodePiPbS2_S2_S1_i_param_2,
	.param .u64 _Z6KernelP4NodePiPbS2_S2_S1_i_param_3,
	.param .u64 _Z6KernelP4NodePiPbS2_S2_S1_i_param_4,
	.param .u64 _Z6KernelP4NodePiPbS2_S2_S1_i_param_5,
	.param .u32 _Z6KernelP4NodePiPbS2_S2_S1_i_param_6
)
{
	.local .align 8 .b8 	__local_depot0[64];
	.reg .b64 	%SP;
	.reg .b64 	%SPL;
	.reg .pred 	%p<5>;
	.reg .b16 	%rs<7>;
	.reg .b32 	%r<18>;
	.reg .b64 	%rd<50>;

// %bb.0:
	mov.u64 	%SPL, __local_depot0;
	cvta.local.u64 	%SP, %SPL;
	ld.param.u32 	%r1, [_Z6KernelP4NodePiPbS2_S2_S1_i_param_6];
	ld.param.u64 	%rd6, [_Z6KernelP4NodePiPbS2_S2_S1_i_param_5];
	ld.param.u64 	%rd5, [_Z6KernelP4NodePiPbS2_S2_S1_i_param_4];
	ld.param.u64 	%rd4, [_Z6KernelP4NodePiPbS2_S2_S1_i_param_3];
	ld.param.u64 	%rd3, [_Z6KernelP4NodePiPbS2_S2_S1_i_param_2];
	ld.param.u64 	%rd2, [_Z6KernelP4NodePiPbS2_S2_S1_i_param_1];
	ld.param.u64 	%rd1, [_Z6KernelP4NodePiPbS2_S2_S1_i_param_0];
	cvta.to.global.u64 	%rd7, %rd6;
	cvta.global.u64 	%rd8, %rd7;
	cvta.to.global.u64 	%rd9, %rd5;
	cvta.global.u64 	%rd10, %rd9;
	cvta.to.global.u64 	%rd11, %rd4;
	cvta.global.u64 	%rd12, %rd11;
	cvta.to.global.u64 	%rd13, %rd3;
	cvta.global.u64 	%rd14, %rd13;
	cvta.to.global.u64 	%rd15, %rd2;
	cvta.global.u64 	%rd16, %rd15;
	cvta.to.global.u64 	%rd17, %rd1;
	cvta.global.u64 	%rd18, %rd17;
	st.u64 	[%SP+0], %rd18;
	st.u64 	[%SP+8], %rd16;
	st.u64 	[%SP+16], %rd14;
	st.u64 	[%SP+24], %rd12;
	st.u64 	[%SP+32], %rd10;
	st.u64 	[%SP+40], %rd8;
	st.u32 	[%SP+48], %r1;
	mov.u32 	%r2, %ctaid.x;
	shl.b32 	%r3, %r2, 9;
	mov.u32 	%r4, %tid.x;
	add.s32 	%r5, %r3, %r4;
	st.u32 	[%SP+52], %r5;
	ld.u32 	%r6, [%SP+52];
	ld.u32 	%r7, [%SP+48];
	setp.ge.s32 	%p1, %r6, %r7;
	@%p1 bra 	$L__BB0_9;
	bra.uni 	$L__BB0_1;
$L__BB0_1:
	ld.u64 	%rd19, [%SP+16];
	ld.s32 	%rd20, [%SP+52];
	add.s64 	%rd21, %rd19, %rd20;
	ld.u8 	%rs1, [%rd21];
	and.b16  	%rs2, %rs1, 1;
	setp.eq.b16 	%p2, %rs2, 1;
	@!%p2 bra 	$L__BB0_9;
	bra.uni 	$L__BB0_2;
$L__BB0_2:
	ld.u64 	%rd22, [%SP+16];
	ld.s32 	%rd23, [%SP+52];
	add.s64 	%rd24, %rd22, %rd23;
	mov.u16 	%rs3, 0;
	st.u8 	[%rd24], %rs3;
	ld.u64 	%rd25, [%SP+0];
	ld.s32 	%rd26, [%SP+52];
	shl.b64 	%rd27, %rd26, 3;
	add.s64 	%rd28, %rd25, %rd27;
	ld.u32 	%r8, [%rd28];
	st.u32 	[%SP+56], %r8;
	bra.uni 	$L__BB0_3;
$L__BB0_3:                              // =>This Inner Loop Header: Depth=1
	ld.u32 	%r9, [%SP+56];
	ld.u64 	%rd29, [%SP+0];
	ld.s32 	%rd30, [%SP+52];
	shl.b64 	%rd31, %rd30, 3;
	add.s64 	%rd32, %rd29, %rd31;
	ld.u32 	%r10, [%rd32+4];
	ld.u32 	%r11, [%rd32];
	add.s32 	%r12, %r10, %r11;
	setp.ge.s32 	%p3, %r9, %r12;
	@%p3 bra 	$L__BB0_8;
	bra.uni 	$L__BB0_4;
$L__BB0_4:                              //   in Loop: Header=BB0_3 Depth=1
	ld.u64 	%rd33, [%SP+8];
	ld.s32 	%rd34, [%SP+56];
	shl.b64 	%rd35, %rd34, 2;
	add.s64 	%rd36, %rd33, %rd35;
	ld.u32 	%r13, [%rd36];
	st.u32 	[%SP+60], %r13;
	ld.u64 	%rd37, [%SP+32];
	ld.s32 	%rd38, [%SP+60];
	add.s64 	%rd39, %rd37, %rd38;
	ld.u8 	%rs4, [%rd39];
	and.b16  	%rs5, %rs4, 1;
	setp.eq.b16 	%p4, %rs5, 1;
	@%p4 bra 	$L__BB0_6;
	bra.uni 	$L__BB0_5;
$L__BB0_5:                              //   in Loop: Header=BB0_3 Depth=1
	ld.u64 	%rd40, [%SP+40];
	ld.s32 	%rd41, [%SP+52];
	shl.b64 	%rd42, %rd41, 2;
	add.s64 	%rd43, %rd40, %rd42;
	ld.u32 	%r14, [%rd43];
	add.s32 	%r15, %r14, 1;
	ld.s32 	%rd44, [%SP+60];
	shl.b64 	%rd45, %rd44, 2;
	add.s64 	%rd46, %rd40, %rd45;
	st.u32 	[%rd46], %r15;
	ld.u64 	%rd47, [%SP+24];
	ld.s32 	%rd48, [%SP+60];
	add.s64 	%rd49, %rd47, %rd48;
	mov.u16 	%rs6, 1;
	st.u8 	[%rd49], %rs6;
	bra.uni 	$L__BB0_6;
$L__BB0_6:                              //   in Loop: Header=BB0_3 Depth=1
	bra.uni 	$L__BB0_7;
$L__BB0_7:                              //   in Loop: Header=BB0_3 Depth=1
	ld.u32 	%r16, [%SP+56];
	add.s32 	%r17, %r16, 1;
	st.u32 	[%SP+56], %r17;
	bra.uni 	$L__BB0_3;
$L__BB0_8:
	bra.uni 	$L__BB0_9;
$L__BB0_9:
	ret;
                                        // -- End function
}
	// .globl	_Z7Kernel2PbS_S_S_i     // -- Begin function _Z7Kernel2PbS_S_S_i
.visible .entry _Z7Kernel2PbS_S_S_i(
	.param .u64 _Z7Kernel2PbS_S_S_i_param_0,
	.param .u64 _Z7Kernel2PbS_S_S_i_param_1,
	.param .u64 _Z7Kernel2PbS_S_S_i_param_2,
	.param .u64 _Z7Kernel2PbS_S_S_i_param_3,
	.param .u32 _Z7Kernel2PbS_S_S_i_param_4
)                                       // @_Z7Kernel2PbS_S_S_i
{
	.local .align 8 .b8 	__local_depot1[40];
	.reg .b64 	%SP;
	.reg .b64 	%SPL;
	.reg .pred 	%p<3>;
	.reg .b16 	%rs<5>;
	.reg .b32 	%r<8>;
	.reg .b64 	%rd<26>;

// %bb.0:
	mov.u64 	%SPL, __local_depot1;
	cvta.local.u64 	%SP, %SPL;
	ld.param.u32 	%r1, [_Z7Kernel2PbS_S_S_i_param_4];
	ld.param.u64 	%rd4, [_Z7Kernel2PbS_S_S_i_param_3];
	ld.param.u64 	%rd3, [_Z7Kernel2PbS_S_S_i_param_2];
	ld.param.u64 	%rd2, [_Z7Kernel2PbS_S_S_i_param_1];
	ld.param.u64 	%rd1, [_Z7Kernel2PbS_S_S_i_param_0];
	cvta.to.global.u64 	%rd5, %rd4;
	cvta.global.u64 	%rd6, %rd5;
	cvta.to.global.u64 	%rd7, %rd3;
	cvta.global.u64 	%rd8, %rd7;
	cvta.to.global.u64 	%rd9, %rd2;
	cvta.global.u64 	%rd10, %rd9;
	cvta.to.global.u64 	%rd11, %rd1;
	cvta.global.u64 	%rd12, %rd11;
	st.u64 	[%SP+0], %rd12;
	st.u64 	[%SP+8], %rd10;
	st.u64 	[%SP+16], %rd8;
	st.u64 	[%SP+24], %rd6;
	st.u32 	[%SP+32], %r1;
	mov.u32 	%r2, %ctaid.x;
	shl.b32 	%r3, %r2, 9;
	mov.u32 	%r4, %tid.x;
	add.s32 	%r5, %r3, %r4;
	st.u32 	[%SP+36], %r5;
	ld.u32 	%r6, [%SP+36];
	ld.u32 	%r7, [%SP+32];
	setp.ge.s32 	%p1, %r6, %r7;
	@%p1 bra 	$L__BB1_3;
	bra.uni 	$L__BB1_1;
$L__BB1_1:
	ld.u64 	%rd13, [%SP+8];
	ld.s32 	%rd14, [%SP+36];
	add.s64 	%rd15, %rd13, %rd14;
	ld.u8 	%rs1, [%rd15];
	and.b16  	%rs2, %rs1, 1;
	setp.eq.b16 	%p2, %rs2, 1;
	@!%p2 bra 	$L__BB1_3;
	bra.uni 	$L__BB1_2;
$L__BB1_2:
	ld.u64 	%rd16, [%SP+0];
	ld.s32 	%rd17, [%SP+36];
	add.s64 	%rd18, %rd16, %rd17;
	mov.u16 	%rs3, 1;
	st.u8 	[%rd18], %rs3;
	ld.u64 	%rd19, [%SP+16];
	ld.s32 	%rd20, [%SP+36];
	add.s64 	%rd21, %rd19, %rd20;
	st.u8 	[%rd21], %rs3;
	ld.u64 	%rd22, [%SP+24];
	st.u8 	[%rd22], %rs3;
	ld.u64 	%rd23, [%SP+8];
	ld.s32 	%rd24, [%SP+36];
	add.s64 	%rd25, %rd23, %rd24;
	mov.u16 	%rs4, 0;
	st.u8 	[%rd25], %rs4;
	bra.uni 	$L__BB1_3;
$L__BB1_3:
	ret;
                                        // -- End function
}