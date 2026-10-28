.LBB0_134:
	s_or_b32 exec_lo, exec_lo, s25
	s_waitcnt lgkmcnt(0)
	s_waitcnt_vscnt null, 0x0
	s_barrier
	buffer_gl0_inv
	s_mov_b32 s0, exec_lo
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_146
; %bb.135:
	s_mov_b32 s4, exec_lo
	s_ashr_i32 s15, s14, 31
	v_mbcnt_lo_u32_b32 v0, s4, 0
	s_lshl_b64 s[2:3], s[14:15], 2
	s_mov_b32 s5, exec_lo
	s_add_u32 s0, s12, s2
	s_addc_u32 s1, s13, s3
                                        ; implicit-def: $vgpr1
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_137
; %bb.136:
	s_bcnt1_i32_b32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, s4
	global_atomic_add_u32 v1, v1, v2, s[0:1] glc
	s_waitcnt vmcnt(0)
	buffer_gl1_inv
	buffer_gl0_inv
.LBB0_137:
	s_or_b32 exec_lo, exec_lo, s5
	v_readfirstlane_b32 s4, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, s4, v0
	s_add_i32 s4, s22, -1
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	v_cmp_eq_u32_e32 vcc_lo, s4, v0
	s_and_b32 exec_lo, exec_lo, vcc_lo
	s_cbranch_execz .LBB0_146
; %bb.138:
	s_cmp_lt_i32 s16, 1
	s_cbranch_scc1 .LBB0_144
; %bb.139:
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v0, 0
	s_cmp_gt_i32 s22, 0
	s_mov_b32 s7, 0
	s_cselect_b32 s6, -1, 0
	s_mul_i32 s12, s23, s16
	s_set_inst_prefetch_distance 0x1
	s_branch .LBB0_141
	.p2align	6
.LBB0_140:                