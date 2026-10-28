.LBB0_134:
	s_or_b32 exec_lo, exec_lo, s26
	v_cmp_eq_u32_e64 s0, 0, v0
	s_waitcnt lgkmcnt(0)
	s_waitcnt_vscnt null, 0x0
	s_barrier
	buffer_gl0_inv
	s_and_saveexec_b32 s1, s0
	s_cbranch_execz .LBB0_138
; %bb.135:
	s_mov_b32 s3, exec_lo
	s_mov_b32 s2, exec_lo
	v_mbcnt_lo_u32_b32 v1, s3, 0
                                        ; implicit-def: $vgpr2
	s_delay_alu instid0(VALU_DEP_1)
	v_cmpx_eq_u32_e32 0, v1
	s_cbranch_execz .LBB0_137
; %bb.136:
	s_ashr_i32 s15, s14, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b64 s[4:5], s[14:15], 2
	s_add_u32 s4, s12, s4
	s_addc_u32 s5, s13, s5
	s_bcnt1_i32_b32 s3, s3
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, s3
	global_atomic_add_u32 v2, v2, v3, s[4:5] glc
	s_waitcnt vmcnt(0)
	buffer_gl1_inv
	buffer_gl0_inv
.LBB0_137:
	s_or_b32 exec_lo, exec_lo, s2
	v_readfirstlane_b32 s2, v2
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v2, 0 :: v_dual_add_nc_u32 v1, s2, v1
	s_add_i32 s2, s22, -1
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	v_cmp_eq_u32_e32 vcc_lo, s2, v1
	v_cndmask_b32_e64 v1, 0, 1, vcc_lo
	ds_store_b32 v2, v1 offset:32
.LBB0_138:
	s_or_b32 exec_lo, exec_lo, s1
	v_mov_b32_e32 v4, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_gl0_inv
	ds_load_b32 v1, v4 offset:32
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	s_cbranch_vccnz .LBB0_154
; %bb.139:
	s_ashr_i32 s15, s14, 31
	s_mov_b32 s1, exec_lo
	s_lshl_b64 s[4:5], s[14:15], 2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_u32 s2, s12, s4
	s_addc_u32 s3, s13, s5
	global_load_b32 v1, v4, s[2:3] glc
	s_waitcnt vmcnt(0)
	buffer_gl1_inv
	buffer_gl0_inv
	v_cmpx_gt_i32_e64 s16, v0
	s_cbranch_execz .LBB0_146
; %bb.140:
	v_mad_u64_u32 v[1:2], null, s24, s16, v[0:1]
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, v0
	s_cmp_gt_i32 s22, 0
	s_mov_b32 s7, 0
	s_cselect_b32 s6, -1, 0
	s_set_inst_prefetch_distance 0x1
	s_branch .LBB0_142
	.p2align	6
.LBB0_141:                              ;   in Loop: Header=BB0_142 Depth=1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v4, v4, v6 :: v_dual_add_nc_u32 v5, s23, v5
	v_add_nc_u32_e32 v1, s23, v1
	v_cmp_le_i32_e32 vcc_lo, s16, v5
	s_or_b32 s7, vcc_lo, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s7
	s_cbranch_execz .LBB0_145
.LBB0_142:                              ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_144 Depth 2
	v_mov_b32_e32 v6, 0xff800000
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_141
; %bb.143:                              ;   in Loop: Header=BB0_142 Depth=1
	v_mov_b32_e32 v2, v1
	s_mov_b32 s12, s22
	.p2align	6
.LBB0_144:                              ;   Parent Loop BB0_142 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_ashrrev_i32_e32 v3, 31, v2
	s_add_i32 s12, s12, -1
	s_cmp_eq_u32 s12, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b64 v[7:8], 2, v[2:3]
	v_add_nc_u32_e32 v2, s16, v2
	v_add_co_u32 v7, vcc_lo, s10, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, s11, v8, vcc_lo
	global_load_b32 v3, v[7:8], off
	s_waitcnt vmcnt(0)
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v3, v3, v3
	v_max_f32_e32 v6, v6, v3
	s_cbranch_scc0 .LBB0_144
	s_branch .LBB0_141
.LBB0_145:
	s_set_inst_prefetch_distance 0x2
	s_or_b32 exec_lo, exec_lo, s7
.LBB0_146:
	s_delay_alu instid0(SALU_CYCLE_1)
	s_or_b32 exec_lo, exec_lo, s1
	v_lshl_or_b32 v1, v54, 2, 64
	v_cmp_gt_u32_e32 vcc_lo, 24, v54
	s_mov_b32 s1, exec_lo
	ds_bpermute_b32 v3, v1, v4
	v_cndmask_b32_e64 v2, 0, 8, vcc_lo
	v_cmp_gt_u32_e32 vcc_lo, 28, v54
	s_delay_alu instid0(VALU_DEP_2)
	v_add_lshl_u32 v2, v2, v54, 2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v4, v4, v3
	v_cndmask_b32_e64 v3, 0, 4, vcc_lo
	v_cmp_gt_u32_e32 vcc_lo, 30, v54
	ds_bpermute_b32 v5, v2, v4
	v_add_lshl_u32 v3, v3, v54, 2
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v4, v5
	v_cndmask_b32_e64 v4, 0, 2, vcc_lo
	v_cmp_ne_u32_e32 vcc_lo, 31, v54
	ds_bpermute_b32 v6, v3, v5
	v_add_lshl_u32 v4, v4, v54, 2
	v_add_co_ci_u32_e64 v7, null, 0, v54, vcc_lo
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v5, v5, v6
	ds_bpermute_b32 v6, v4, v5
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v6, v5, v6 :: v_dual_lshlrev_b32 v5, 2, v7
	v_and_b32_e32 v7, 31, v0
	ds_bpermute_b32 v8, v5, v6
	v_cmpx_eq_u32_e32 0, v7
	s_cbranch_execz .LBB0_148
; %bb.147:
	v_lshrrev_b32_e32 v9, 3, v0
	s_waitcnt lgkmcnt(0)
	v_add_f32_e32 v6, v6, v8
	ds_store_b32 v9, v6
.LBB0_148:
	s_or_b32 exec_lo, exec_lo, s1
	s_lshr_b32 s1, s23, 5
	v_mov_b32_e32 v6, 0
	v_cmp_gt_u32_e32 vcc_lo, s1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_gl0_inv
	s_and_saveexec_b32 s1, vcc_lo
; %bb.149:
	v_lshlrev_b32_e32 v6, 2, v7
	ds_load_b32 v6, v6
; %bb.150:
	s_or_b32 exe