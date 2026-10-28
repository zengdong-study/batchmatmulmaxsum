
/root/batchmatmulmaxsum/implement/hip/results/s0_20261028/code_objects/_code_object0004.o:	file format elf64-amdgpu

Disassembly of section .text:

0000000000100a00 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_>:
	s_clause 0x3                                               // 000000100A00: BF850003
	s_load_b128 s[8:11], s[0:1], 0x20                          // 000000100A04: F4080200 F8000020
	s_load_b32 s2, s[0:1], 0x30                                // 000000100A0C: F4000080 F8000030
	s_load_b32 s26, s[0:1], 0x14c                              // 000000100A14: F4000680 F800014C
	s_load_b32 s3, s[0:1], 0x18                                // 000000100A1C: F40000C0 F8000018
	v_and_b32_e32 v1, 0x3ff, v0                                // 000000100A24: 360200FF 000003FF
	v_bfe_u32 v0, v0, 10, 10                                   // 000000100A2C: D6100000 02291500
	s_mov_b32 s6, -1                                           // 000000100A34: BE8600C1
	s_waitcnt lgkmcnt(0)                                       // 000000100A38: BF89FC07
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000100A3C: BF870112
	v_mul_lo_u32 v2, s11, v1                                   // 000000100A40: D72C0002 0002020B
	v_mul_lo_u32 v3, s2, v0                                    // 000000100A48: D72C0003 00020002
	s_add_i32 s11, s26, -1                                     // 000000100A50: 810BC11A
	s_mul_i32 s3, s3, s14                                      // 000000100A54: 96030E03
	s_cmp_gt_u32 s11, 1                                        // 000000100A58: BF08810B
	s_cselect_b32 s27, -1, 0                                   // 000000100A5C: 981B80C1
	s_cmp_lt_u32 s11, 2                                        // 000000100A60: BF0A820B
	s_delay_alu instid0(VALU_DEP_1)                            // 000000100A64: BF870001
	v_add3_u32 v10, v3, v2, s3                                 // 000000100A68: D655000A 000E0503
	s_cbranch_scc1 145                                         // 000000100A70: BFA20091 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2b8>
	s_cmp_lg_u32 s26, 0                                        // 000000100A74: BF07801A
	s_mov_b32 s6, 0                                            // 000000100A78: BE860080
	s_cbranch_scc0 92                                          // 000000100A7C: BFA1005C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1f0>
	s_min_u32 s12, s11, 15                                     // 000000100A80: 898C8F0B
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000100A84: BF870009
	s_add_i32 s12, s12, 1                                      // 000000100A88: 810C810C
	s_cmp_eq_u32 s11, 2                                        // 000000100A8C: BF06820B
	s_cbranch_scc1 89                                          // 000000100A90: BFA20059 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1f8>
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v2, v10             // 000000100A94: CA100080 0302010A
	s_and_b32 s7, s12, 28                                      // 000000100A9C: 8B079C0C
	s_add_u32 s2, s0, 0x214                                    // 000000100AA0: 8002FF00 00000214
	s_addc_u32 s3, s1, 0                                       // 000000100AA8: 82038001
	s_mov_b32 s13, 0                                           // 000000100AAC: BE8D0080
	s_mov_b64 s[4:5], s[0:1]                                   // 000000100AB0: BE840100
	s_clause 0x1                                               // 000000100AB4: BF850001
	s_load_b256 s[16:23], s[4:5], 0x150                        // 000000100AB8: F40C0402 F8000150
	s_load_b128 s[28:31], s[4:5], 0x170                        // 000000100AC0: F4080702 F8000170
	s_add_i32 s13, s13, 4                                      // 000000100AC8: 810D840D
	s_waitcnt lgkmcnt(0)                                       // 000000100ACC: BF89FC07
	v_mul_hi_u32 v4, s17, v2                                   // 000000100AD0: D72D0004 00020411
	s_load_b32 s17, s[2:3], null                               // 000000100AD8: F4000441 F8000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000100AE0: BF870091
	v_add_nc_u32_e32 v4, v2, v4                                // 000000100AE4: 4A080902
	v_lshrrev_b32_e32 v4, s18, v4                              // 000000100AE8: 32080812
	s_delay_alu instid0(VALU_DEP_1)                            // 000000100AEC: BF870001
	v_mul_hi_u32 v5, s20, v4                                   // 000000100AF0: D72D0005 00020814
	v_mul_lo_u32 v8, v4, s16                                   // 000000100AF8: D72C0008 00002104
	s_clause 0x2                                               // 000000100B00: BF850002
	s_load_b32 s16, s[2:3], 0x8                                // 000000100B04: F4000401 F8000008
	s_load_b32 s18, s[2:3], 0x10                               // 000000100B0C: F4000481 F8000010
	s_load_b32 s20, s[2:3], 0x18                               // 000000100B14: F4000501 F8000018
	s_add_u32 s2, s2, 32                                       // 000000100B1C: 8002A002
	s_addc_u32 s3, s3, 0                                       // 000000100B20: 82038003
	s_add_u32 s4, s4, 48                                       // 000000100B24: 8004B004
	s_addc_u32 s5, s5, 0                                       // 000000100B28: 82058005
	v_add_nc_u32_e32 v5, v4, v5                                // 000000100B2C: 4A0A0B04
	v_sub_nc_u32_e32 v8, v2, v8                                // 000000100B30: 4C101102
	s_cmp_lg_u32 s7, s13                                       // 000000100B34: BF070D07
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000100B38: BF870122
	v_lshrrev_b32_e32 v5, s21, v5                              // 000000100B3C: 320A0A15
	s_waitcnt lgkmcnt(0)                                       // 000000100B40: BF89FC07
	v_mul_lo_u32 v8, v8, s17                                   // 000000100B44: D72C0008 00002308
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000100B4C: BF870122
	v_mul_hi_u32 v6, s23, v5                                   // 000000100B50: D72D0006 00020A17
	v_mul_lo_u32 v9, v5, s19                                   // 000000100B58: D72C0009 00002705
	v_add_nc_u32_e32 v6, v5, v6                                // 000000100B60: 4A0C0D05
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000100B64: BF870112
	v_sub_nc_u32_e32 v4, v4, v9                                // 000000100B68: 4C081304
	v_lshrrev_b32_e32 v6, s28, v6                              // 000000100B6C: 320C0C1C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000100B70: BF870112
	v_mul_lo_u32 v4, v4, s16                                   // 000000100B74: D72C0004 00002104
	v_mul_hi_u32 v7, s30, v6                                   // 000000100B7C: D72D0007 00020C1E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000100B84: BF870112
	v_add3_u32 v3, v8, v3, v4                                  // 000000100B88: D6550003 04120708
	v_add_nc_u32_e32 v7, v6, v7                                // 000000100B90: 4A0E0F06
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000100B94: BF870121
	v_lshrrev_b32_e32 v2, s31, v7                              // 000000100B98: 32040E1F
	v_mul_lo_u32 v7, v6, s22                                   // 000000100B9C: D72C0007 00002D06
	v_mul_lo_u32 v11, v2, s29                                  // 000000100BA4: D72C000B 00003B02
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000100BAC: BF870112
	v_sub_nc_u32_e32 v5, v5, v7                                // 000000100BB0: 4C0A0F05
	v_sub_nc_u32_e32 v6, v6, v11                               // 000000100BB4: 4C0C1706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000100BB8: BF870112
	v_mul_lo_u32 v5, v5, s18                                   // 000000100BBC: D72C0005 00002505
	v_mul_lo_u32 v6, v6, s20                                   // 000000100BC4: D72C0006 00002906
	s_delay_alu instid0(VALU_DEP_1)                            // 000000100BCC: BF870001
	v_add3_u32 v3, v5, v3, v6                                  // 000000100BD0: D6550003 041A0705
	s_cbranch_scc1 65462                                       // 000000100BD8: BFA2FFB6 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xb4>
	s_and_b32 s12, s12, 3                                      // 000000100BDC: 8B0C830C
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000100BE0: BF870009
	s_cmp_eq_u32 s12, 0                                        // 000000100BE4: BF06800C
	s_cbranch_scc0 10                                          // 000000100BE8: BFA1000A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x214>
	s_branch 50                                                // 000000100BEC: BFA00032 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2b8>
	v_mov_b32_e32 v3, 0                                        // 000000100BF0: 7E060280
	s_branch 48                                                // 000000100BF4: BFA00030 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2b8>
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v2, v10             // 000000100BF8: CA100080 0302010A
	s_mov_b32 s7, 0                                            // 000000100C00: BE870080
	s_and_b32 s12, s12, 3                                      // 000000100C04: 8B0C830C
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000100C08: BF870009
	s_cmp_eq_u32 s12, 0                                        // 000000100C0C: BF06800C
	s_cbranch_scc1 41                                          // 000000100C10: BFA20029 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2b8>
	s_lshl_b32 s2, s7, 3                                       // 000000100C14: 84028307
	s_mul_i32 s4, s7, 12                                       // 000000100C18: 96048C07
	s_add_u32 s2, s0, s2                                       // 000000100C1C: 80020200
	s_addc_u32 s3, s1, 0                                       // 000000100C20: 82038001
	s_add_u32 s2, s2, 0x214                                    // 000000100C24: 8002FF02 00000214
	s_addc_u32 s3, s3, 0                                       // 000000100C2C: 82038003
	s_add_u32 s4, s0, s4                                       // 000000100C30: 80040400
	s_addc_u32 s5, s1, 0                                       // 000000100C34: 82058001
	s_nop 0                                                    // 000000100C38: BF800000
	s_nop 0                                                    // 000000100C3C: BF800000
	s_clause 0x1                                               // 000000100C40: BF850001
	s_load_b64 s[16:17], s[4:5], 0x150                         // 000000100C44: F4040402 F8000150
	s_load_b32 s7, s[4:5], 0x158                               // 000000100C4C: F40001C2 F8000158
	s_load_b32 s13, s[2:3], null                               // 000000100C54: F4000341 F8000000
	s_add_u32 s2, s2, 8                                        // 000000100C5C: 80028802
	s_addc_u32 s3, s3, 0                                       // 000000100C60: 82038003
	s_add_u32 s4, s4, 12                                       // 000000100C64: 80048C04
	s_addc_u32 s5, s5, 0                                       // 000000100C68: 82058005
	s_add_i32 s12, s12, -1                                     // 000000100C6C: 810CC10C
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 000000100C70: BF8700B9
	s_cmp_lg_u32 s12, 0                                        // 000000100C74: BF07800C
	s_waitcnt lgkmcnt(0)                                       // 000000100C78: BF89FC07
	v_mul_hi_u32 v4, s17, v2                                   // 000000100C7C: D72D0004 00020411
	v_add_nc_u32_e32 v4, v2, v4                                // 000000100C84: 4A080902
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000100C88: BF870091
	v_lshrrev_b32_e32 v6, s7, v4                               // 000000100C8C: 320C0807
	v_mul_lo_u32 v4, v6, s16                                   // 000000100C90: D72C0004 00002106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000100C98: BF870091
	v_sub_nc_u32_e32 v2, v2, v4                                // 000000100C9C: 4C040902
	v_mad_u64_u32 v[4:5], null, v2, s13, v[3:4]                // 000000100CA0: D6FE7C04 040C1B02
	s_delay_alu instid0(VALU_DEP_1)                            // 000000100CA8: BF870001
	v_dual_mov_b32 v2, v6 :: v_dual_mov_b32 v3, v4             // 000000100CAC: CA100106 02020104
	s_cbranch_scc1 65506                                       // 000000100CB4: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x240>
	s_and_not1_b32 vcc_lo, exec_lo, s6                         // 000000100CB8: 916A067E
	s_cbranch_vccnz 39                                         // 000000100CBC: BFA40027 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x35c>
	s_clause 0x1                                               // 000000100CC0: BF850001
	s_load_b128 s[4:7], s[0:1], 0x150                          // 000000100CC4: F4080100 F8000150
	s_load_b32 s2, s[0:1], 0x214                               // 000000100CCC: F4000080 F8000214
	s_cmp_lt_u32 s26, 2                                        // 000000100CD4: BF0A821A
	s_waitcnt lgkmcnt(0)                                       // 000000100CD8: BF89FC07
	v_mul_hi_u32 v2, s5, v10                                   // 000000100CDC: D72D0002 00021405
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000100CE4: BF870091
	v_add_nc_u32_e32 v2, v10, v2                               // 000000100CE8: 4A04050A
	v_lshrrev_b32_e32 v2, s6, v2                               // 000000100CEC: 32040406
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000100CF0: BF870091
	v_mul_lo_u32 v3, v2, s4                                    // 000000100CF4: D72C0003 00000902
	v_sub_nc_u32_e32 v3, v10, v3                               // 000000100CFC: 4C06070A
	s_delay_alu instid0(VALU_DEP_1)                            // 000000100D00: BF870001
	v_mul_lo_u32 v3, v3, s2                                    // 000000100D04: D72C0003 00000503
	s_cbranch_scc1 19                                          // 000000100D0C: BFA20013 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x35c>
	s_clause 0x1                                               // 000000100D10: BF850001
	s_load_b128 s[4:7], s[0:1], 0x15c                          // 000000100D14: F4080100 F800015C
	s_load_b32 s2, s[0:1], 0x21c                               // 000000100D1C: F4000080 F800021C
	s_waitcnt lgkmcnt(0)                                       // 000000100D24: BF89FC07
	v_mul_hi_u32 v4, s5, v2                                    // 000000100D28: D72D0004 00020405
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000100D30: BF870091
	v_add_nc_u32_e32 v4, v2, v4                                // 000000100D34: 4A080902
	v_lshrrev_b32_e32 v4, s6, v4                               // 000000100D38: 32080806
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000100D3C: BF870091
	v_mul_lo_u32 v4, v4, s4                                    // 000000100D40: D72C0004 00000904
	v_sub_nc_u32_e32 v2, v2, v4                                // 000000100D48: 4C040902
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000100D4C: BF870091
	v_mad_u64_u32 v[4:5], null, v2, s2, v[3:4]                 // 000000100D50: D6FE7C04 040C0502
	v_mov_b32_e32 v3, v4                                       // 000000100D58: 7E060304
	s_load_b64 s[6:7], s[0:1], 0xc                             // 000000100D5C: F4040180 F800000C
	v_mul_lo_u32 v4, s8, v1                                    // 000000100D64: D72C0004 00020208
	v_mul_lo_u32 v5, s9, v0                                    // 000000100D6C: D72C0005 00020009
	s_mul_i32 s34, s10, s15                                    // 000000100D74: 96220F0A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000100D78: BF870091
	v_add_nc_u32_e32 v2, v5, v4                                // 000000100D7C: 4A040905
	v_add_nc_u32_e32 v2, s34, v2                               // 000000100D80: 4A040422
	s_waitcnt lgkmcnt(0)                                       // 000000100D84: BF89FC07
	v_cmp_gt_u32_e32 vcc_lo, s7, v10                           // 000000100D88: 7C981407
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 000000100D8C: BF8704A2
	v_cmp_gt_u32_e64 s2, s6, v2                                // 000000100D90: D44C0002 00020406
	s_and_b32 s2, vcc_lo, s2                                   // 000000100D98: 8B02026A
	s_and_saveexec_b32 s28, s2                                 // 000000100D9C: BE9C2002
	s_cbranch_execz 2106                                       // 000000100DA0: BFA5083A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x248c>
	s_clause 0x1                                               // 000000100DA4: BF850001
	s_load_b64 s[2:3], s[0:1], 0x290                           // 000000100DA8: F4040080 F8000290
	s_load_b32 s4, s[0:1], 0x40                                // 000000100DB0: F4000100 F8000040
	s_waitcnt lgkmcnt(0)                                       // 000000100DB8: BF89FC07
	v_add_co_u32 v7, s2, s2, v3                                // 000000100DBC: D7000207 00020602
	s_delay_alu instid0(VALU_DEP_1)                            // 000000100DC4: BF870001
	v_add_co_ci_u32_e64 v8, null, s3, 0, s2                    // 000000100DC8: D5207C08 00090003
	s_bitcmp0_b32 s4, 0                                        // 000000100DD0: BF0C8004
	s_cbranch_scc0 777                                         // 000000100DD4: BFA10309 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xffc>
	s_clause 0x3                                               // 000000100DD8: BF850003
	s_load_b32 s35, s[0:1], 0x10c                              // 000000100DDC: F40008C0 F800010C
	s_load_b32 s36, s[0:1], 0x48                               // 000000100DE4: F4000900 F8000048
	s_load_b32 s29, s[0:1], 0x14                               // 000000100DEC: F4000740 F8000014
	s_load_b32 s31, s[0:1], 0x4                                // 000000100DF4: F40007C0 F8000004
	s_add_u32 s12, s0, 0x10c                                   // 000000100DFC: 800CFF00 0000010C
	s_addc_u32 s13, s1, 0                                      // 000000100E04: 820D8001
	s_waitcnt lgkmcnt(0)                                       // 000000100E08: BF89FC07
	s_lshr_b32 s33, s35, 2                                     // 000000100E0C: 85218223
	s_cmp_lg_u32 s36, 1                                        // 000000100E10: BF078124
	s_mul_i32 s30, s29, 3                                      // 000000100E14: 961E831D
	s_cselect_b32 s3, -1, 0                                    // 000000100E18: 980380C1
	s_cmp_eq_u32 s36, 1                                        // 000000100E1C: BF068124
	v_add_nc_u32_e32 v6, s30, v2                               // 000000100E20: 4A0C041E
	s_cselect_b32 s2, -1, 0                                    // 000000100E24: 980280C1
	s_cmp_eq_u32 s33, 1                                        // 000000100E28: BF068121
	s_cselect_b32 s4, -1, 0                                    // 000000100E2C: 980480C1
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000100E30: BF870009
	s_and_b32 s4, s2, s4                                       // 000000100E34: 8B040402
	v_cmp_gt_u32_e64 s2, s6, v6                                // 000000100E38: D44C0002 00020C06
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 000000100E40: 916A047E
	s_cbranch_vccz 750                                         // 000000100E44: BFA302EE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1000>
	s_and_b32 vcc_lo, exec_lo, s3                              // 000000100E48: 8B6A037E
	s_cbranch_vccz 749                                         // 000000100E4C: BFA302ED <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1004>
	v_dual_mov_b32 v11, s31 :: v_dual_mov_b32 v12, s31         // 000000100E50: CA10001F 0B0C001F
	v_mov_b32_e32 v19, v2                                      // 000000100E58: 7E260302
	v_mov_b32_e32 v13, s31                                     // 000000100E5C: 7E1A021F
	v_mov_b32_e32 v9, s31                                      // 000000100E60: 7E12021F
	s_and_saveexec_b32 s37, s2                                 // 000000100E64: BEA52002
	s_cbranch_execz 745                                        // 000000100E68: BFA502E9 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1010>
	s_clause 0x2                                               // 000000100E6C: BF850002
	s_load_b128 s[16:19], s[0:1], 0x4c                         // 000000100E70: F4080400 F800004C
	s_load_b64 s[20:21], s[0:1], 0x5c                          // 000000100E78: F4040500 F800005C
	s_load_b32 s38, s[0:1], 0x110                              // 000000100E80: F4000980 F8000110
	v_sub_co_u32 v3, s3, s36, 1                                // 000000100E88: D7010303 00010224
	s_xor_b32 s39, s3, -1                                      // 000000100E90: 8D27C103
	v_dual_mov_b32 v9, s31 :: v_dual_mov_b32 v12, s31          // 000000100E94: CA10001F 090C001F
	v_readfirstlane_b32 s4, v3                                 // 000000100E9C: 7E080503
	v_cndmask_b32_e64 v16, 0, 1, s39                           // 000000100EA0: D5010010 009D0280
	v_cmp_ne_u32_e64 s3, 2, v3                                 // 000000100EA8: D44D0003 00020682
	v_mov_b32_e32 v13, s31                                     // 000000100EB0: 7E1A021F
	v_mov_b32_e32 v11, s31                                     // 000000100EB4: 7E16021F
	s_min_u32 s4, s4, 15                                       // 000000100EB8: 89848F04
	v_mov_b32_e32 v19, v2                                      // 000000100EBC: 7E260302
	s_add_i32 s4, s4, 1                                        // 000000100EC0: 81048104
	s_mov_b32 s43, 0                                           // 000000100EC4: BEAB0080
	s_and_b32 s40, s4, 3                                       // 000000100EC8: 8B288304
	s_and_b32 s41, s4, 28                                      // 000000100ECC: 8B299C04
	v_cmp_lt_u32_e64 s4, 1, v3                                 // 000000100ED0: D4490004 00020681
	s_cmp_lg_u32 s40, 0                                        // 000000100ED8: BF078028
	s_cselect_b32 s42, -1, 0                                   // 000000100EDC: 982A80C1
	s_branch 21                                                // 000000100EE0: BFA00015 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x538>
	s_delay_alu instid0(VALU_DEP_1)                            // 000000100EE4: BF870001
	v_and_b32_e32 v3, -4, v3                                   // 000000100EE8: 360606C4
	v_add_nc_u32_e32 v19, s29, v19                             // 000000100EEC: 4A26261D
	s_waitcnt vmcnt(0)                                         // 000000100EF0: BF8903F7
	v_dual_add_f32 v11, v11, v18 :: v_dual_add_f32 v12, v12, v15// 000000100EF4: C908250B 0B0C1F0C
	v_add_f32_e32 v13, v13, v14                                // 000000100EFC: 061A1D0D
	v_add_co_u32 v20, vcc_lo, v7, v3                           // 000000100F00: D7006A14 00020707
	s_delay_alu instid0(VALU_DEP_1)                            // 000000100F08: BF870001
	v_add_co_ci_u32_e64 v21, null, 0, v8, vcc_lo               // 000000100F0C: D5207C15 01AA1080
	v_add_nc_u32_e32 v3, s30, v19                              // 000000100F14: 4A06261E
	global_load_b32 v17, v[20:21], off                         // 000000100F18: DC520000 117C0014
	v_cmp_le_u32_e32 vcc_lo, s6, v3                            // 000000100F20: 7C960606
	s_or_b32 s43, vcc_lo, s43                                  // 000000100F24: 8C2B2B6A
	s_waitcnt vmcnt(0)                                         // 000000100F28: BF8903F7
	v_add_f32_e32 v9, v9, v17                                  // 000000100F2C: 06122309
	s_and_not1_b32 exec_lo, exec_lo, s43                       // 000000100F30: 917E2B7E
	s_cbranch_execz 693                                        // 000000100F34: BFA502B5 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x100c>
	v_cmp_ne_u32_e64 s5, 1, v16                                // 000000100F38: D44D0005 00022081
	s_and_b32 vcc_lo, exec_lo, s4                              // 000000100F40: 8B6A047E
	s_mov_b32 s22, -1                                          // 000000100F44: BE9600C1
	s_cbranch_vccz 124                                         // 000000100F48: BFA3007C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x73c>
	v_mov_b32_e32 v3, 0                                        // 000000100F4C: 7E060280
	s_and_b32 vcc_lo, exec_lo, s5                              // 000000100F50: 8B6A057E
	s_cbranch_vccnz 120                                        // 000000100F54: BFA40078 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x738>
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v14, v19            // 000000100F58: CA100080 030E0113
	s_mov_b32 s5, 0                                            // 000000100F60: BE850080
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 000000100F64: 916A037E
	s_cbranch_vccnz 69                                         // 000000100F68: BFA40045 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x680>
	s_mov_b64 s[22:23], s[0:1]                                 // 000000100F6C: BE960100
	s_mov_b64 s[24:25], s[12:13]                               // 000000100F70: BE98010C
	s_clause 0x1                                               // 000000100F74: BF850001
	s_load_b256 s[44:51], s[22:23], 0x4c                       // 000000100F78: F40C0B0B F800004C
	s_load_b128 s[52:55], s[22:23], 0x6c                       // 000000100F80: F4080D0B F800006C
	s_load_b128 s[56:59], s[24:25], null                       // 000000100F88: F4080E0C F8000000
	s_add_i32 s5, s5, 4                                        // 000000100F90: 81058405
	s_add_u32 s24, s24, 16                                     // 000000100F94: 80189018
	s_addc_u32 s25, s25, 0                                     // 000000100F98: 82198019
	s_add_u32 s22, s22, 48                                     // 000000100F9C: 8016B016
	s_addc_u32 s23, s23, 0                                     // 000000100FA0: 82178017
	s_cmp_lg_u32 s41, s5                                       // 000000100FA4: BF070529
	s_waitcnt lgkmcnt(0)                                       // 000000100FA8: BF89FC07
	v_mul_hi_u32 v15, s45, v14                                 // 000000100FAC: D72D000F 00021C2D
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000100FB4: BF870091
	v_add_nc_u32_e32 v15, v14, v15                             // 000000100FB8: 4A1E1F0E
	v_lshrrev_b32_e32 v15, s46, v15                            // 000000100FBC: 321E1E2E
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000100FC0: BF870121
	v_mul_hi_u32 v17, s48, v15                                 // 000000100FC4: D72D0011 00021E30
	v_mul_lo_u32 v21, v15, s44                                 // 000000100FCC: D72C0015 0000590F
	v_add_nc_u32_e32 v17, v15, v17                             // 000000100FD4: 4A22230F
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000100FD8: BF870112
	v_sub_nc_u32_e32 v21, v14, v21                             // 000000100FDC: 4C2A2B0E
	v_lshrrev_b32_e32 v17, s49, v17                            // 000000100FE0: 32222231
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000100FE4: BF870112
	v_mul_lo_u32 v21, v21, s56                                 // 000000100FE8: D72C0015 00007115
	v_mul_hi_u32 v18, s51, v17                                 // 000000100FF0: D72D0012 00022233
	v_mul_lo_u32 v22, v17, s47                                 // 000000100FF8: D72C0016 00005F11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101000: BF870112
	v_add_nc_u32_e32 v18, v17, v18                             // 000000101004: 4A242511
	v_sub_nc_u32_e32 v15, v15, v22                             // 000000101008: 4C1E2D0F
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000010100C: BF870112
	v_lshrrev_b32_e32 v18, s52, v18                            // 000000101010: 32242434
	v_mul_lo_u32 v15, v15, s57                                 // 000000101014: D72C000F 0000730F
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000010101C: BF870112
	v_mul_hi_u32 v20, s54, v18                                 // 000000101020: D72D0014 00022436
	v_add3_u32 v3, v21, v3, v15                                // 000000101028: D6550003 043E0715
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101030: BF870092
	v_add_nc_u32_e32 v20, v18, v20                             // 000000101034: 4A282912
	v_lshrrev_b32_e32 v14, s55, v20                            // 000000101038: 321C2837
	v_mul_lo_u32 v20, v18, s50                                 // 00000010103C: D72C0014 00006512
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101044: BF870112
	v_mul_lo_u32 v23, v14, s53                                 // 000000101048: D72C0017 00006B0E
	v_sub_nc_u32_e32 v17, v17, v20                             // 000000101050: 4C222911
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101054: BF870112
	v_sub_nc_u32_e32 v18, v18, v23                             // 000000101058: 4C242F12
	v_mul_lo_u32 v17, v17, s58                                 // 00000010105C: D72C0011 00007511
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101064: BF870092
	v_mul_lo_u32 v18, v18, s59                                 // 000000101068: D72C0012 00007712
	v_add3_u32 v3, v17, v3, v18                                // 000000101070: D6550003 044A0711
	s_cbranch_scc1 65470                                       // 000000101078: BFA2FFBE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x574>
	s_mov_b32 s5, s41                                          // 00000010107C: BE850029
	s_and_not1_b32 vcc_lo, exec_lo, s42                        // 000000101080: 916A2A7E
	s_cbranch_vccnz 44                                         // 000000101084: BFA4002C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x738>
	s_lshl_b32 s22, s5, 2                                      // 000000101088: 84168205
	s_mul_i32 s5, s5, 12                                       // 00000010108C: 96058C05
	s_add_u32 s22, s12, s22                                    // 000000101090: 8016160C
	s_addc_u32 s23, s13, 0                                     // 000000101094: 8217800D
	s_add_u32 s24, s0, s5                                      // 000000101098: 80180500
	s_addc_u32 s25, s1, 0                                      // 00000010109C: 82198001
	s_mov_b32 s5, s40                                          // 0000001010A0: BE850028
	s_nop 0                                                    // 0000001010A4: BF800000
	s_nop 0                                                    // 0000001010A8: BF800000
	s_nop 0                                                    // 0000001010AC: BF800000
	s_nop 0                                                    // 0000001010B0: BF800000
	s_nop 0                                                    // 0000001010B4: BF800000
	s_nop 0                                                    // 0000001010B8: BF800000
	s_nop 0                                                    // 0000001010BC: BF800000
	s_clause 0x1                                               // 0000001010C0: BF850001
	s_load_b64 s[44:45], s[24:25], 0x4c                        // 0000001010C4: F4040B0C F800004C
	s_load_b32 s46, s[24:25], 0x54                             // 0000001010CC: F4000B8C F8000054
	s_waitcnt lgkmcnt(0)                                       // 0000001010D4: BF89FC07
	v_mul_hi_u32 v15, s45, v14                                 // 0000001010D8: D72D000F 00021C2D
	s_load_b32 s45, s[22:23], null                             // 0000001010E0: F4000B4B F8000000
	s_add_u32 s22, s22, 4                                      // 0000001010E8: 80168416
	s_addc_u32 s23, s23, 0                                     // 0000001010EC: 82178017
	s_add_u32 s24, s24, 12                                     // 0000001010F0: 80188C18
	s_addc_u32 s25, s25, 0                                     // 0000001010F4: 82198019
	s_add_i32 s5, s5, -1                                       // 0000001010F8: 8105C105
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000001010FC: BF8700A9
	s_cmp_lg_u32 s5, 0                                         // 000000101100: BF078005
	v_add_nc_u32_e32 v15, v14, v15                             // 000000101104: 4A1E1F0E
	v_lshrrev_b32_e32 v15, s46, v15                            // 000000101108: 321E1E2E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000010110C: BF870091
	v_mul_lo_u32 v17, v15, s44                                 // 000000101110: D72C0011 0000590F
	v_sub_nc_u32_e32 v14, v14, v17                             // 000000101118: 4C1C230E
	s_waitcnt lgkmcnt(0)                                       // 00000010111C: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101120: BF870091
	v_mad_u64_u32 v[17:18], null, v14, s45, v[3:4]             // 000000101124: D6FE7C11 040C5B0E
	v_dual_mov_b32 v14, v15 :: v_dual_mov_b32 v3, v17          // 00000010112C: CA10010F 0E020111
	s_cbranch_scc1 65506                                       // 000000101134: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x6c0>
	s_mov_b32 s22, 0                                           // 000000101138: BE960080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000010113C: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s22                        // 000000101140: 916A167E
	s_cbranch_vccnz 28                                         // 000000101144: BFA4001C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x7b8>
	s_waitcnt lgkmcnt(0)                                       // 000000101148: BF89FC07
	v_mul_hi_u32 v3, v19, s17                                  // 00000010114C: D72D0003 00002313
	s_and_not1_b32 vcc_lo, exec_lo, s39                        // 000000101154: 916A277E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101158: BF870091
	v_add_nc_u32_e32 v3, v19, v3                               // 00000010115C: 4A060713
	v_lshrrev_b32_e32 v14, s18, v3                             // 000000101160: 321C0612
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101164: BF870091
	v_mul_lo_u32 v3, v14, s16                                  // 000000101168: D72C0003 0000210E
	v_sub_nc_u32_e32 v3, v19, v3                               // 000000101170: 4C060713
	s_delay_alu instid0(VALU_DEP_1)                            // 000000101174: BF870001
	v_mul_lo_u32 v3, v3, s35                                   // 000000101178: D72C0003 00004703
	s_cbranch_vccnz 13                                         // 000000101180: BFA4000D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x7b8>
	v_mul_hi_u32 v15, v14, s20                                 // 000000101184: D72D000F 0000290E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000010118C: BF870091
	v_add_nc_u32_e32 v15, v14, v15                             // 000000101190: 4A1E1F0E
	v_lshrrev_b32_e32 v15, s21, v15                            // 000000101194: 321E1E15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101198: BF870091
	v_mul_lo_u32 v15, v15, s19                                 // 00000010119C: D72C000F 0000270F
	v_sub_nc_u32_e32 v17, v14, v15                             // 0000001011A4: 4C221F0E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001011A8: BF870091
	v_mad_u64_u32 v[14:15], null, v17, s38, v[3:4]             // 0000001011AC: D6FE7C0E 040C4D11
	v_mov_b32_e32 v3, v14                                      // 0000001011B4: 7E06030E
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000001011B8: BF8700A1
	v_and_b32_e32 v3, -4, v3                                   // 0000001011BC: 360606C4
	s_mov_b32 s5, -1                                           // 0000001011C0: BE8500C1
	v_add_co_u32 v14, vcc_lo, v7, v3                           // 0000001011C4: D7006A0E 00020707
	s_delay_alu instid0(VALU_DEP_1)                            // 0000001011CC: BF870001
	v_add_co_ci_u32_e64 v15, null, 0, v8, vcc_lo               // 0000001011D0: D5207C0F 01AA1080
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 0000001011D8: 916A047E
	global_load_b32 v18, v[14:15], off                         // 0000001011DC: DC520000 127C000E
	v_add_nc_u32_e32 v15, s29, v19                             // 0000001011E4: 4A1E261D
	s_cbranch_vccnz 132                                        // 0000001011E8: BFA40084 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x9fc>
	v_mov_b32_e32 v3, 0                                        // 0000001011EC: 7E060280
	s_and_not1_b32 vcc_lo, exec_lo, s39                        // 0000001011F0: 916A277E
	s_cbranch_vccnz 128                                        // 0000001011F4: BFA40080 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x9f8>
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v14, v15            // 0000001011F8: CA100080 030E010F
	s_mov_b32 s5, 0                                            // 000000101200: BE850080
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 000000101204: 916A037E
	s_cbranch_vccnz 69                                         // 000000101208: BFA40045 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x920>
	s_mov_b64 s[22:23], s[0:1]                                 // 00000010120C: BE960100
	s_mov_b64 s[24:25], s[12:13]                               // 000000101210: BE98010C
	s_clause 0x1                                               // 000000101214: BF850001
	s_load_b256 s[44:51], s[22:23], 0x4c                       // 000000101218: F40C0B0B F800004C
	s_load_b128 s[52:55], s[22:23], 0x6c                       // 000000101220: F4080D0B F800006C
	s_load_b128 s[56:59], s[24:25], null                       // 000000101228: F4080E0C F8000000
	s_add_i32 s5, s5, 4                                        // 000000101230: 81058405
	s_add_u32 s24, s24, 16                                     // 000000101234: 80189018
	s_addc_u32 s25, s25, 0                                     // 000000101238: 82198019
	s_add_u32 s22, s22, 48                                     // 00000010123C: 8016B016
	s_addc_u32 s23, s23, 0                                     // 000000101240: 82178017
	s_cmp_eq_u32 s41, s5                                       // 000000101244: BF060529
	s_waitcnt lgkmcnt(0)                                       // 000000101248: BF89FC07
	v_mul_hi_u32 v17, s45, v14                                 // 00000010124C: D72D0011 00021C2D
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101254: BF870091
	v_add_nc_u32_e32 v17, v14, v17                             // 000000101258: 4A22230E
	v_lshrrev_b32_e32 v17, s46, v17                            // 00000010125C: 3222222E
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000101260: BF870121
	v_mul_hi_u32 v19, s48, v17                                 // 000000101264: D72D0013 00022230
	v_mul_lo_u32 v22, v17, s44                                 // 00000010126C: D72C0016 00005911
	v_add_nc_u32_e32 v19, v17, v19                             // 000000101274: 4A262711
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101278: BF870112
	v_sub_nc_u32_e32 v22, v14, v22                             // 00000010127C: 4C2C2D0E
	v_lshrrev_b32_e32 v19, s49, v19                            // 000000101280: 32262631
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101284: BF870112
	v_mul_lo_u32 v22, v22, s56                                 // 000000101288: D72C0016 00007116
	v_mul_hi_u32 v20, s51, v19                                 // 000000101290: D72D0014 00022633
	v_mul_lo_u32 v23, v19, s47                                 // 000000101298: D72C0017 00005F13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001012A0: BF870112
	v_add_nc_u32_e32 v20, v19, v20                             // 0000001012A4: 4A282913
	v_sub_nc_u32_e32 v17, v17, v23                             // 0000001012A8: 4C222F11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001012AC: BF870112
	v_lshrrev_b32_e32 v20, s52, v20                            // 0000001012B0: 32282834
	v_mul_lo_u32 v17, v17, s57                                 // 0000001012B4: D72C0011 00007311
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001012BC: BF870112
	v_mul_hi_u32 v21, s54, v20                                 // 0000001012C0: D72D0015 00022836
	v_add3_u32 v3, v22, v3, v17                                // 0000001012C8: D6550003 04460716
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001012D0: BF870092
	v_add_nc_u32_e32 v21, v20, v21                             // 0000001012D4: 4A2A2B14
	v_lshrrev_b32_e32 v14, s55, v21                            // 0000001012D8: 321C2A37
	v_mul_lo_u32 v21, v20, s50                                 // 0000001012DC: D72C0015 00006514
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001012E4: BF870112
	v_mul_lo_u32 v24, v14, s53                                 // 0000001012E8: D72C0018 00006B0E
	v_sub_nc_u32_e32 v19, v19, v21                             // 0000001012F0: 4C262B13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001012F4: BF870112
	v_sub_nc_u32_e32 v20, v20, v24                             // 0000001012F8: 4C283114
	v_mul_lo_u32 v19, v19, s58                                 // 0000001012FC: D72C0013 00007513
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101304: BF870092
	v_mul_lo_u32 v20, v20, s59                                 // 000000101308: D72C0014 00007714
	v_add3_u32 v3, v19, v3, v20                                // 000000101310: D6550003 04520713
	s_cbranch_scc0 65470                                       // 000000101318: BFA1FFBE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x814>
	s_mov_b32 s5, s41                                          // 00000010131C: BE850029
	s_and_not1_b32 vcc_lo, exec_lo, s42                        // 000000101320: 916A2A7E
	s_cbranch_vccnz 52                                         // 000000101324: BFA40034 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x9f8>
	s_lshl_b32 s22, s5, 2                                      // 000000101328: 84168205
	s_mul_i32 s5, s5, 12                                       // 00000010132C: 96058C05
	s_add_u32 s22, s12, s22                                    // 000000101330: 8016160C
	s_addc_u32 s23, s13, 0                                     // 000000101334: 8217800D
	s_add_u32 s24, s0, s5                                      // 000000101338: 80180500
	s_addc_u32 s25, s1, 0                                      // 00000010133C: 82198001
	s_mov_b32 s5, s40                                          // 000000101340: BE850028
	s_nop 0                                                    // 000000101344: BF800000
	s_nop 0                                                    // 000000101348: BF800000
	s_nop 0                                                    // 00000010134C: BF800000
	s_nop 0                                                    // 000000101350: BF800000
	s_nop 0                                                    // 000000101354: BF800000
	s_nop 0                                                    // 000000101358: BF800000
	s_nop 0                                                    // 00000010135C: BF800000
	s_nop 0                                                    // 000000101360: BF800000
	s_nop 0                                                    // 000000101364: BF800000
	s_nop 0                                                    // 000000101368: BF800000
	s_nop 0                                                    // 00000010136C: BF800000
	s_nop 0                                                    // 000000101370: BF800000
	s_nop 0                                                    // 000000101374: BF800000
	s_nop 0                                                    // 000000101378: BF800000
	s_nop 0                                                    // 00000010137C: BF800000
	s_clause 0x1                                               // 000000101380: BF850001
	s_load_b64 s[44:45], s[24:25], 0x4c                        // 000000101384: F4040B0C F800004C
	s_load_b32 s46, s[24:25], 0x54                             // 00000010138C: F4000B8C F8000054
	s_waitcnt lgkmcnt(0)                                       // 000000101394: BF89FC07
	v_mul_hi_u32 v17, s45, v14                                 // 000000101398: D72D0011 00021C2D
	s_load_b32 s45, s[22:23], null                             // 0000001013A0: F4000B4B F8000000
	s_add_u32 s22, s22, 4                                      // 0000001013A8: 80168416
	s_addc_u32 s23, s23, 0                                     // 0000001013AC: 82178017
	s_add_u32 s24, s24, 12                                     // 0000001013B0: 80188C18
	s_addc_u32 s25, s25, 0                                     // 0000001013B4: 82198019
	s_add_i32 s5, s5, -1                                       // 0000001013B8: 8105C105
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000001013BC: BF8700A9
	s_cmp_lg_u32 s5, 0                                         // 0000001013C0: BF078005
	v_add_nc_u32_e32 v17, v14, v17                             // 0000001013C4: 4A22230E
	v_lshrrev_b32_e32 v17, s46, v17                            // 0000001013C8: 3222222E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001013CC: BF870091
	v_mul_lo_u32 v19, v17, s44                                 // 0000001013D0: D72C0013 00005911
	v_sub_nc_u32_e32 v14, v14, v19                             // 0000001013D8: 4C1C270E
	s_waitcnt lgkmcnt(0)                                       // 0000001013DC: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001013E0: BF870091
	v_mad_u64_u32 v[19:20], null, v14, s45, v[3:4]             // 0000001013E4: D6FE7C13 040C5B0E
	v_dual_mov_b32 v14, v17 :: v_dual_mov_b32 v3, v19          // 0000001013EC: CA100111 0E020113
	s_cbranch_scc1 65506                                       // 0000001013F4: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x980>
	s_mov_b32 s5, 0                                            // 0000001013F8: BE850080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001013FC: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 000000101400: 916A057E
	s_cbranch_vccnz 28                                         // 000000101404: BFA4001C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xa78>
	s_waitcnt lgkmcnt(0)                                       // 000000101408: BF89FC07
	v_mul_hi_u32 v3, v15, s17                                  // 00000010140C: D72D0003 0000230F
	s_and_not1_b32 vcc_lo, exec_lo, s39                        // 000000101414: 916A277E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101418: BF870091
	v_add_nc_u32_e32 v3, v15, v3                               // 00000010141C: 4A06070F
	v_lshrrev_b32_e32 v14, s18, v3                             // 000000101420: 321C0612
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101424: BF870091
	v_mul_lo_u32 v3, v14, s16                                  // 000000101428: D72C0003 0000210E
	v_sub_nc_u32_e32 v3, v15, v3                               // 000000101430: 4C06070F
	s_delay_alu instid0(VALU_DEP_1)                            // 000000101434: BF870001
	v_mul_lo_u32 v3, v3, s35                                   // 000000101438: D72C0003 00004703
	s_cbranch_vccnz 13                                         // 000000101440: BFA4000D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xa78>
	v_mul_hi_u32 v17, v14, s20                                 // 000000101444: D72D0011 0000290E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000010144C: BF870091
	v_add_nc_u32_e32 v17, v14, v17                             // 000000101450: 4A22230E
	v_lshrrev_b32_e32 v17, s21, v17                            // 000000101454: 32222215
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101458: BF870091
	v_mul_lo_u32 v17, v17, s19                                 // 00000010145C: D72C0011 00002711
	v_sub_nc_u32_e32 v14, v14, v17                             // 000000101464: 4C1C230E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101468: BF870091
	v_mad_u64_u32 v[19:20], null, v14, s38, v[3:4]             // 00000010146C: D6FE7C13 040C4D0E
	v_mov_b32_e32 v3, v19                                      // 000000101474: 7E060313
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 000000101478: BF870131
	v_and_b32_e32 v3, -4, v3                                   // 00000010147C: 360606C4
	v_add_nc_u32_e32 v17, s29, v15                             // 000000101480: 4A221E1D
	s_mov_b32 s5, -1                                           // 000000101484: BE8500C1
	v_add_co_u32 v19, vcc_lo, v7, v3                           // 000000101488: D7006A13 00020707
	s_delay_alu instid0(VALU_DEP_1)                            // 000000101490: BF870001
	v_add_co_ci_u32_e64 v20, null, 0, v8, vcc_lo               // 000000101494: D5207C14 01AA1080
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 00000010149C: 916A047E
	global_load_b32 v14, v[19:20], off                         // 0000001014A0: DC520000 0E7C0013
	s_cbranch_vccnz 132                                        // 0000001014A8: BFA40084 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xcbc>
	v_mov_b32_e32 v3, 0                                        // 0000001014AC: 7E060280
	s_and_not1_b32 vcc_lo, exec_lo, s39                        // 0000001014B0: 916A277E
	s_cbranch_vccnz 128                                        // 0000001014B4: BFA40080 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xcb8>
	v_mov_b32_e32 v3, 0                                        // 0000001014B8: 7E060280
	v_mov_b32_e32 v15, v17                                     // 0000001014BC: 7E1E0311
	s_mov_b32 s5, 0                                            // 0000001014C0: BE850080
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 0000001014C4: 916A037E
	s_cbranch_vccnz 69                                         // 0000001014C8: BFA40045 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xbe0>
	s_mov_b64 s[22:23], s[0:1]                                 // 0000001014CC: BE960100
	s_mov_b64 s[24:25], s[12:13]                               // 0000001014D0: BE98010C
	s_clause 0x1                                               // 0000001014D4: BF850001
	s_load_b256 s[44:51], s[22:23], 0x4c                       // 0000001014D8: F40C0B0B F800004C
	s_load_b128 s[52:55], s[22:23], 0x6c                       // 0000001014E0: F4080D0B F800006C
	s_load_b128 s[56:59], s[24:25], null                       // 0000001014E8: F4080E0C F8000000
	s_add_i32 s5, s5, 4                                        // 0000001014F0: 81058405
	s_add_u32 s24, s24, 16                                     // 0000001014F4: 80189018
	s_addc_u32 s25, s25, 0                                     // 0000001014F8: 82198019
	s_add_u32 s22, s22, 48                                     // 0000001014FC: 8016B016
	s_addc_u32 s23, s23, 0                                     // 000000101500: 82178017
	s_cmp_eq_u32 s41, s5                                       // 000000101504: BF060529
	s_waitcnt lgkmcnt(0)                                       // 000000101508: BF89FC07
	v_mul_hi_u32 v19, s45, v15                                 // 00000010150C: D72D0013 00021E2D
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101514: BF870091
	v_add_nc_u32_e32 v19, v15, v19                             // 000000101518: 4A26270F
	v_lshrrev_b32_e32 v19, s46, v19                            // 00000010151C: 3226262E
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000101520: BF870121
	v_mul_hi_u32 v20, s48, v19                                 // 000000101524: D72D0014 00022630
	v_mul_lo_u32 v23, v19, s44                                 // 00000010152C: D72C0017 00005913
	v_add_nc_u32_e32 v20, v19, v20                             // 000000101534: 4A282913
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101538: BF870112
	v_sub_nc_u32_e32 v23, v15, v23                             // 00000010153C: 4C2E2F0F
	v_lshrrev_b32_e32 v20, s49, v20                            // 000000101540: 32282831
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101544: BF870112
	v_mul_lo_u32 v23, v23, s56                                 // 000000101548: D72C0017 00007117
	v_mul_hi_u32 v21, s51, v20                                 // 000000101550: D72D0015 00022833
	v_mul_lo_u32 v24, v20, s47                                 // 000000101558: D72C0018 00005F14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101560: BF870112
	v_add_nc_u32_e32 v21, v20, v21                             // 000000101564: 4A2A2B14
	v_sub_nc_u32_e32 v19, v19, v24                             // 000000101568: 4C263113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000010156C: BF870112
	v_lshrrev_b32_e32 v21, s52, v21                            // 000000101570: 322A2A34
	v_mul_lo_u32 v19, v19, s57                                 // 000000101574: D72C0013 00007313
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000010157C: BF870112
	v_mul_hi_u32 v22, s54, v21                                 // 000000101580: D72D0016 00022A36
	v_add3_u32 v3, v23, v3, v19                                // 000000101588: D6550003 044E0717
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101590: BF870092
	v_add_nc_u32_e32 v22, v21, v22                             // 000000101594: 4A2C2D15
	v_lshrrev_b32_e32 v15, s55, v22                            // 000000101598: 321E2C37
	v_mul_lo_u32 v22, v21, s50                                 // 00000010159C: D72C0016 00006515
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001015A4: BF870112
	v_mul_lo_u32 v25, v15, s53                                 // 0000001015A8: D72C0019 00006B0F
	v_sub_nc_u32_e32 v20, v20, v22                             // 0000001015B0: 4C282D14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001015B4: BF870112
	v_sub_nc_u32_e32 v21, v21, v25                             // 0000001015B8: 4C2A3315
	v_mul_lo_u32 v20, v20, s58                                 // 0000001015BC: D72C0014 00007514
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001015C4: BF870092
	v_mul_lo_u32 v21, v21, s59                                 // 0000001015C8: D72C0015 00007715
	v_add3_u32 v3, v20, v3, v21                                // 0000001015D0: D6550003 04560714
	s_cbranch_scc0 65470                                       // 0000001015D8: BFA1FFBE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xad4>
	s_mov_b32 s5, s41                                          // 0000001015DC: BE850029
	s_and_not1_b32 vcc_lo, exec_lo, s42                        // 0000001015E0: 916A2A7E
	s_cbranch_vccnz 52                                         // 0000001015E4: BFA40034 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xcb8>
	s_lshl_b32 s22, s5, 2                                      // 0000001015E8: 84168205
	s_mul_i32 s5, s5, 12                                       // 0000001015EC: 96058C05
	s_add_u32 s22, s12, s22                                    // 0000001015F0: 8016160C
	s_addc_u32 s23, s13, 0                                     // 0000001015F4: 8217800D
	s_add_u32 s24, s0, s5                                      // 0000001015F8: 80180500
	s_addc_u32 s25, s1, 0                                      // 0000001015FC: 82198001
	s_mov_b32 s5, s40                                          // 000000101600: BE850028
	s_nop 0                                                    // 000000101604: BF800000
	s_nop 0                                                    // 000000101608: BF800000
	s_nop 0                                                    // 00000010160C: BF800000
	s_nop 0                                                    // 000000101610: BF800000
	s_nop 0                                                    // 000000101614: BF800000
	s_nop 0                                                    // 000000101618: BF800000
	s_nop 0                                                    // 00000010161C: BF800000
	s_nop 0                                                    // 000000101620: BF800000
	s_nop 0                                                    // 000000101624: BF800000
	s_nop 0                                                    // 000000101628: BF800000
	s_nop 0                                                    // 00000010162C: BF800000
	s_nop 0                                                    // 000000101630: BF800000
	s_nop 0                                                    // 000000101634: BF800000
	s_nop 0                                                    // 000000101638: BF800000
	s_nop 0                                                    // 00000010163C: BF800000
	s_clause 0x1                                               // 000000101640: BF850001
	s_load_b64 s[44:45], s[24:25], 0x4c                        // 000000101644: F4040B0C F800004C
	s_load_b32 s46, s[24:25], 0x54                             // 00000010164C: F4000B8C F8000054
	s_waitcnt lgkmcnt(0)                                       // 000000101654: BF89FC07
	v_mul_hi_u32 v19, s45, v15                                 // 000000101658: D72D0013 00021E2D
	s_load_b32 s45, s[22:23], null                             // 000000101660: F4000B4B F8000000
	s_add_u32 s22, s22, 4                                      // 000000101668: 80168416
	s_addc_u32 s23, s23, 0                                     // 00000010166C: 82178017
	s_add_u32 s24, s24, 12                                     // 000000101670: 80188C18
	s_addc_u32 s25, s25, 0                                     // 000000101674: 82198019
	s_add_i32 s5, s5, -1                                       // 000000101678: 8105C105
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 00000010167C: BF8700A9
	s_cmp_lg_u32 s5, 0                                         // 000000101680: BF078005
	v_add_nc_u32_e32 v19, v15, v19                             // 000000101684: 4A26270F
	v_lshrrev_b32_e32 v21, s46, v19                            // 000000101688: 322A262E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000010168C: BF870091
	v_mul_lo_u32 v19, v21, s44                                 // 000000101690: D72C0013 00005915
	v_sub_nc_u32_e32 v15, v15, v19                             // 000000101698: 4C1E270F
	s_waitcnt lgkmcnt(0)                                       // 00000010169C: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000001016A0: BF870121
	v_mad_u64_u32 v[19:20], null, v15, s45, v[3:4]             // 0000001016A4: D6FE7C13 040C5B0F
	v_mov_b32_e32 v15, v21                                     // 0000001016AC: 7E1E0315
	v_mov_b32_e32 v3, v19                                      // 0000001016B0: 7E060313
	s_cbranch_scc1 65506                                       // 0000001016B4: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xc40>
	s_mov_b32 s5, 0                                            // 0000001016B8: BE850080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001016BC: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 0000001016C0: 916A057E
	s_cbranch_vccnz 28                                         // 0000001016C4: BFA4001C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xd38>
	s_waitcnt lgkmcnt(0)                                       // 0000001016C8: BF89FC07
	v_mul_hi_u32 v3, v17, s17                                  // 0000001016CC: D72D0003 00002311
	s_and_not1_b32 vcc_lo, exec_lo, s39                        // 0000001016D4: 916A277E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001016D8: BF870091
	v_add_nc_u32_e32 v3, v17, v3                               // 0000001016DC: 4A060711
	v_lshrrev_b32_e32 v15, s18, v3                             // 0000001016E0: 321E0612
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001016E4: BF870091
	v_mul_lo_u32 v3, v15, s16                                  // 0000001016E8: D72C0003 0000210F
	v_sub_nc_u32_e32 v3, v17, v3                               // 0000001016F0: 4C060711
	s_delay_alu instid0(VALU_DEP_1)                            // 0000001016F4: BF870001
	v_mul_lo_u32 v3, v3, s35                                   // 0000001016F8: D72C0003 00004703
	s_cbranch_vccnz 13                                         // 000000101700: BFA4000D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xd38>
	v_mul_hi_u32 v19, v15, s20                                 // 000000101704: D72D0013 0000290F
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000010170C: BF870091
	v_add_nc_u32_e32 v19, v15, v19                             // 000000101710: 4A26270F
	v_lshrrev_b32_e32 v19, s21, v19                            // 000000101714: 32262615
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101718: BF870091
	v_mul_lo_u32 v19, v19, s19                                 // 00000010171C: D72C0013 00002713
	v_sub_nc_u32_e32 v15, v15, v19                             // 000000101724: 4C1E270F
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101728: BF870091
	v_mad_u64_u32 v[19:20], null, v15, s38, v[3:4]             // 00000010172C: D6FE7C13 040C4D0F
	v_mov_b32_e32 v3, v19                                      // 000000101734: 7E060313
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000101738: BF8700A1
	v_and_b32_e32 v3, -4, v3                                   // 00000010173C: 360606C4
	s_mov_b32 s5, -1                                           // 000000101740: BE8500C1
	v_add_co_u32 v19, vcc_lo, v7, v3                           // 000000101744: D7006A13 00020707
	s_delay_alu instid0(VALU_DEP_1)                            // 00000010174C: BF870001
	v_add_co_ci_u32_e64 v20, null, 0, v8, vcc_lo               // 000000101750: D5207C14 01AA1080
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 000000101758: 916A047E
	global_load_b32 v15, v[19:20], off                         // 00000010175C: DC520000 0F7C0013
	v_add_nc_u32_e32 v19, s29, v17                             // 000000101764: 4A26221D
	s_cbranch_vccnz 132                                        // 000000101768: BFA40084 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xf7c>
	v_mov_b32_e32 v3, 0                                        // 00000010176C: 7E060280
	s_and_not1_b32 vcc_lo, exec_lo, s39                        // 000000101770: 916A277E
	s_cbranch_vccnz 128                                        // 000000101774: BFA40080 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xf78>
	v_mov_b32_e32 v3, 0                                        // 000000101778: 7E060280
	v_mov_b32_e32 v17, v19                                     // 00000010177C: 7E220313
	s_mov_b32 s5, 0                                            // 000000101780: BE850080
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 000000101784: 916A037E
	s_cbranch_vccnz 69                                         // 000000101788: BFA40045 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xea0>
	s_mov_b64 s[22:23], s[0:1]                                 // 00000010178C: BE960100
	s_mov_b64 s[24:25], s[12:13]                               // 000000101790: BE98010C
	s_clause 0x1                                               // 000000101794: BF850001
	s_load_b256 s[44:51], s[22:23], 0x4c                       // 000000101798: F40C0B0B F800004C
	s_load_b128 s[52:55], s[22:23], 0x6c                       // 0000001017A0: F4080D0B F800006C
	s_load_b128 s[56:59], s[24:25], null                       // 0000001017A8: F4080E0C F8000000
	s_add_i32 s5, s5, 4                                        // 0000001017B0: 81058405
	s_add_u32 s24, s24, 16                                     // 0000001017B4: 80189018
	s_addc_u32 s25, s25, 0                                     // 0000001017B8: 82198019
	s_add_u32 s22, s22, 48                                     // 0000001017BC: 8016B016
	s_addc_u32 s23, s23, 0                                     // 0000001017C0: 82178017
	s_cmp_eq_u32 s41, s5                                       // 0000001017C4: BF060529
	s_waitcnt lgkmcnt(0)                                       // 0000001017C8: BF89FC07
	v_mul_hi_u32 v20, s45, v17                                 // 0000001017CC: D72D0014 0002222D
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001017D4: BF870091
	v_add_nc_u32_e32 v20, v17, v20                             // 0000001017D8: 4A282911
	v_lshrrev_b32_e32 v20, s46, v20                            // 0000001017DC: 3228282E
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000001017E0: BF870121
	v_mul_hi_u32 v21, s48, v20                                 // 0000001017E4: D72D0015 00022830
	v_mul_lo_u32 v24, v20, s44                                 // 0000001017EC: D72C0018 00005914
	v_add_nc_u32_e32 v21, v20, v21                             // 0000001017F4: 4A2A2B14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001017F8: BF870112
	v_sub_nc_u32_e32 v24, v17, v24                             // 0000001017FC: 4C303111
	v_lshrrev_b32_e32 v21, s49, v21                            // 000000101800: 322A2A31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101804: BF870112
	v_mul_lo_u32 v24, v24, s56                                 // 000000101808: D72C0018 00007118
	v_mul_hi_u32 v22, s51, v21                                 // 000000101810: D72D0016 00022A33
	v_mul_lo_u32 v25, v21, s47                                 // 000000101818: D72C0019 00005F15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101820: BF870112
	v_add_nc_u32_e32 v22, v21, v22                             // 000000101824: 4A2C2D15
	v_sub_nc_u32_e32 v20, v20, v25                             // 000000101828: 4C283314
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000010182C: BF870112
	v_lshrrev_b32_e32 v22, s52, v22                            // 000000101830: 322C2C34
	v_mul_lo_u32 v20, v20, s57                                 // 000000101834: D72C0014 00007314
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000010183C: BF870112
	v_mul_hi_u32 v23, s54, v22                                 // 000000101840: D72D0017 00022C36
	v_add3_u32 v3, v24, v3, v20                                // 000000101848: D6550003 04520718
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101850: BF870092
	v_add_nc_u32_e32 v23, v22, v23                             // 000000101854: 4A2E2F16
	v_lshrrev_b32_e32 v17, s55, v23                            // 000000101858: 32222E37
	v_mul_lo_u32 v23, v22, s50                                 // 00000010185C: D72C0017 00006516
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101864: BF870112
	v_mul_lo_u32 v26, v17, s53                                 // 000000101868: D72C001A 00006B11
	v_sub_nc_u32_e32 v21, v21, v23                             // 000000101870: 4C2A2F15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101874: BF870112
	v_sub_nc_u32_e32 v22, v22, v26                             // 000000101878: 4C2C3516
	v_mul_lo_u32 v21, v21, s58                                 // 00000010187C: D72C0015 00007515
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101884: BF870092
	v_mul_lo_u32 v22, v22, s59                                 // 000000101888: D72C0016 00007716
	v_add3_u32 v3, v21, v3, v22                                // 000000101890: D6550003 045A0715
	s_cbranch_scc0 65470                                       // 000000101898: BFA1FFBE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xd94>
	s_mov_b32 s5, s41                                          // 00000010189C: BE850029
	s_and_not1_b32 vcc_lo, exec_lo, s42                        // 0000001018A0: 916A2A7E
	s_cbranch_vccnz 52                                         // 0000001018A4: BFA40034 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xf78>
	s_lshl_b32 s22, s5, 2                                      // 0000001018A8: 84168205
	s_mul_i32 s5, s5, 12                                       // 0000001018AC: 96058C05
	s_add_u32 s22, s12, s22                                    // 0000001018B0: 8016160C
	s_addc_u32 s23, s13, 0                                     // 0000001018B4: 8217800D
	s_add_u32 s24, s0, s5                                      // 0000001018B8: 80180500
	s_addc_u32 s25, s1, 0                                      // 0000001018BC: 82198001
	s_mov_b32 s5, s40                                          // 0000001018C0: BE850028
	s_nop 0                                                    // 0000001018C4: BF800000
	s_nop 0                                                    // 0000001018C8: BF800000
	s_nop 0                                                    // 0000001018CC: BF800000
	s_nop 0                                                    // 0000001018D0: BF800000
	s_nop 0                                                    // 0000001018D4: BF800000
	s_nop 0                                                    // 0000001018D8: BF800000
	s_nop 0                                                    // 0000001018DC: BF800000
	s_nop 0                                                    // 0000001018E0: BF800000
	s_nop 0                                                    // 0000001018E4: BF800000
	s_nop 0                                                    // 0000001018E8: BF800000
	s_nop 0                                                    // 0000001018EC: BF800000
	s_nop 0                                                    // 0000001018F0: BF800000
	s_nop 0                                                    // 0000001018F4: BF800000
	s_nop 0                                                    // 0000001018F8: BF800000
	s_nop 0                                                    // 0000001018FC: BF800000
	s_clause 0x1                                               // 000000101900: BF850001
	s_load_b64 s[44:45], s[24:25], 0x4c                        // 000000101904: F4040B0C F800004C
	s_load_b32 s46, s[24:25], 0x54                             // 00000010190C: F4000B8C F8000054
	s_waitcnt lgkmcnt(0)                                       // 000000101914: BF89FC07
	v_mul_hi_u32 v20, s45, v17                                 // 000000101918: D72D0014 0002222D
	s_load_b32 s45, s[22:23], null                             // 000000101920: F4000B4B F8000000
	s_add_u32 s22, s22, 4                                      // 000000101928: 80168416
	s_addc_u32 s23, s23, 0                                     // 00000010192C: 82178017
	s_add_u32 s24, s24, 12                                     // 000000101930: 80188C18
	s_addc_u32 s25, s25, 0                                     // 000000101934: 82198019
	s_add_i32 s5, s5, -1                                       // 000000101938: 8105C105
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 00000010193C: BF8700A9
	s_cmp_lg_u32 s5, 0                                         // 000000101940: BF078005
	v_add_nc_u32_e32 v20, v17, v20                             // 000000101944: 4A282911
	v_lshrrev_b32_e32 v22, s46, v20                            // 000000101948: 322C282E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000010194C: BF870091
	v_mul_lo_u32 v20, v22, s44                                 // 000000101950: D72C0014 00005916
	v_sub_nc_u32_e32 v17, v17, v20                             // 000000101958: 4C222911
	s_waitcnt lgkmcnt(0)                                       // 00000010195C: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000101960: BF870121
	v_mad_u64_u32 v[20:21], null, v17, s45, v[3:4]             // 000000101964: D6FE7C14 040C5B11
	v_mov_b32_e32 v17, v22                                     // 00000010196C: 7E220316
	v_mov_b32_e32 v3, v20                                      // 000000101970: 7E060314
	s_cbranch_scc1 65506                                       // 000000101974: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xf00>
	s_mov_b32 s5, 0                                            // 000000101978: BE850080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000010197C: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 000000101980: 916A057E
	s_cbranch_vccnz 64855                                      // 000000101984: BFA4FD57 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x4e4>
	s_waitcnt lgkmcnt(0)                                       // 000000101988: BF89FC07
	v_mul_hi_u32 v3, v19, s17                                  // 00000010198C: D72D0003 00002313
	s_and_not1_b32 vcc_lo, exec_lo, s39                        // 000000101994: 916A277E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101998: BF870091
	v_add_nc_u32_e32 v3, v19, v3                               // 00000010199C: 4A060713
	v_lshrrev_b32_e32 v17, s18, v3                             // 0000001019A0: 32220612
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001019A4: BF870091
	v_mul_lo_u32 v3, v17, s16                                  // 0000001019A8: D72C0003 00002111
	v_sub_nc_u32_e32 v3, v19, v3                               // 0000001019B0: 4C060713
	s_delay_alu instid0(VALU_DEP_1)                            // 0000001019B4: BF870001
	v_mul_lo_u32 v3, v3, s35                                   // 0000001019B8: D72C0003 00004703
	s_cbranch_vccnz 64840                                      // 0000001019C0: BFA4FD48 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x4e4>
	v_mul_hi_u32 v20, v17, s20                                 // 0000001019C4: D72D0014 00002911
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001019CC: BF870091
	v_add_nc_u32_e32 v20, v17, v20                             // 0000001019D0: 4A282911
	v_lshrrev_b32_e32 v20, s21, v20                            // 0000001019D4: 32282815
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001019D8: BF870091
	v_mul_lo_u32 v20, v20, s19                                 // 0000001019DC: D72C0014 00002714
	v_sub_nc_u32_e32 v17, v17, v20                             // 0000001019E4: 4C222911
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001019E8: BF870091
	v_mad_u64_u32 v[20:21], null, v17, s38, v[3:4]             // 0000001019EC: D6FE7C14 040C4D11
	v_mov_b32_e32 v3, v20                                      // 0000001019F4: 7E060314
	s_branch 64826                                             // 0000001019F8: BFA0FD3A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x4e4>
	s_branch 1161                                              // 0000001019FC: BFA00489 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2224>
	s_branch 977                                               // 000000101A00: BFA003D1 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1f48>
	s_cbranch_execnz 779                                       // 000000101A04: BFA6030B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1c34>
	s_branch 974                                               // 000000101A08: BFA003CE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1f44>
	s_or_b32 exec_lo, exec_lo, s43                             // 000000101A0C: 8C7E2B7E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000101A10: BF870009
	s_or_b32 exec_lo, exec_lo, s37                             // 000000101A14: 8C7E257E
	s_waitcnt lgkmcnt(0)                                       // 000000101A18: BF89FC07
	s_mov_b32 s20, exec_lo                                     // 000000101A1C: BE94007E
	v_cmpx_gt_u32_e64 s6, v19                                  // 000000101A20: D4CC007E 00022606
	s_cbranch_execz 763                                        // 000000101A28: BFA502FB <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1c18>
	v_sub_co_u32 v3, s3, s36, 1                                // 000000101A2C: D7010303 00010224
	s_xor_b32 s5, s3, -1                                       // 000000101A34: 8D05C103
	s_mov_b32 s16, -1                                          // 000000101A38: BE9000C1
	v_cndmask_b32_e64 v16, 0, 1, s5                            // 000000101A3C: D5010010 00150280
	v_cmp_lt_u32_e64 s4, 1, v3                                 // 000000101A44: D4490004 00020681
	v_readfirstlane_b32 s21, v3                                // 000000101A4C: 7E2A0503
	s_delay_alu instid0(VALU_DEP_3)                            // 000000101A50: BF870003
	v_cmp_ne_u32_e64 s3, 1, v16                                // 000000101A54: D44D0003 00022081
	s_and_b32 vcc_lo, exec_lo, s4                              // 000000101A5C: 8B6A047E
	s_min_u32 s22, s21, 15                                     // 000000101A60: 89968F15
	s_cbranch_vccz 126                                         // 000000101A64: BFA3007E <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1260>
	v_mov_b32_e32 v3, 0                                        // 000000101A68: 7E060280
	s_and_b32 vcc_lo, exec_lo, s3                              // 000000101A6C: 8B6A037E
	s_cbranch_vccnz 122                                        // 000000101A70: BFA4007A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x125c>
	s_add_i32 s23, s22, 1                                      // 000000101A74: 81178116
	s_cmp_eq_u32 s21, 2                                        // 000000101A78: BF068215
	s_cbranch_scc1 73                                          // 000000101A7C: BFA20049 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x11a4>
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v18, v19            // 000000101A80: CA100080 03120113
	s_and_b32 s3, s23, 28                                      // 000000101A88: 8B039C17
	s_mov_b32 s24, 0                                           // 000000101A8C: BE980080
	s_mov_b64 s[16:17], s[0:1]                                 // 000000101A90: BE900100
	s_mov_b64 s[18:19], s[12:13]                               // 000000101A94: BE92010C
	s_clause 0x1                                               // 000000101A98: BF850001
	s_load_b256 s[36:43], s[16:17], 0x4c                       // 000000101A9C: F40C0908 F800004C
	s_load_b128 s[44:47], s[16:17], 0x6c                       // 000000101AA4: F4080B08 F800006C
	s_load_b128 s[48:51], s[18:19], null                       // 000000101AAC: F4080C09 F8000000
	s_add_i32 s24, s24, 4                                      // 000000101AB4: 81188418
	s_add_u32 s18, s18, 16                                     // 000000101AB8: 80129012
	s_addc_u32 s19, s19, 0                                     // 000000101ABC: 82138013
	s_add_u32 s16, s16, 48                                     // 000000101AC0: 8010B010
	s_addc_u32 s17, s17, 0                                     // 000000101AC4: 82118011
	s_cmp_lg_u32 s3, s24                                       // 000000101AC8: BF071803
	s_waitcnt lgkmcnt(0)                                       // 000000101ACC: BF89FC07
	v_mul_hi_u32 v20, s37, v18                                 // 000000101AD0: D72D0014 00022425
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101AD8: BF870091
	v_add_nc_u32_e32 v20, v18, v20                             // 000000101ADC: 4A282912
	v_lshrrev_b32_e32 v20, s38, v20                            // 000000101AE0: 32282826
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000101AE4: BF870121
	v_mul_hi_u32 v21, s40, v20                                 // 000000101AE8: D72D0015 00022828
	v_mul_lo_u32 v24, v20, s36                                 // 000000101AF0: D72C0018 00004914
	v_add_nc_u32_e32 v21, v20, v21                             // 000000101AF8: 4A2A2B14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101AFC: BF870112
	v_sub_nc_u32_e32 v24, v18, v24                             // 000000101B00: 4C303112
	v_lshrrev_b32_e32 v21, s41, v21                            // 000000101B04: 322A2A29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101B08: BF870112
	v_mul_lo_u32 v24, v24, s48                                 // 000000101B0C: D72C0018 00006118
	v_mul_hi_u32 v22, s43, v21                                 // 000000101B14: D72D0016 00022A2B
	v_mul_lo_u32 v25, v21, s39                                 // 000000101B1C: D72C0019 00004F15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101B24: BF870112
	v_add_nc_u32_e32 v22, v21, v22                             // 000000101B28: 4A2C2D15
	v_sub_nc_u32_e32 v20, v20, v25                             // 000000101B2C: 4C283314
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101B30: BF870112
	v_lshrrev_b32_e32 v22, s44, v22                            // 000000101B34: 322C2C2C
	v_mul_lo_u32 v20, v20, s49                                 // 000000101B38: D72C0014 00006314
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101B40: BF870112
	v_mul_hi_u32 v23, s46, v22                                 // 000000101B44: D72D0017 00022C2E
	v_add3_u32 v3, v24, v3, v20                                // 000000101B4C: D6550003 04520718
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101B54: BF870092
	v_add_nc_u32_e32 v23, v22, v23                             // 000000101B58: 4A2E2F16
	v_lshrrev_b32_e32 v18, s47, v23                            // 000000101B5C: 32242E2F
	v_mul_lo_u32 v23, v22, s42                                 // 000000101B60: D72C0017 00005516
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101B68: BF870112
	v_mul_lo_u32 v26, v18, s45                                 // 000000101B6C: D72C001A 00005B12
	v_sub_nc_u32_e32 v21, v21, v23                             // 000000101B74: 4C2A2F15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101B78: BF870112
	v_sub_nc_u32_e32 v22, v22, v26                             // 000000101B7C: 4C2C3516
	v_mul_lo_u32 v21, v21, s50                                 // 000000101B80: D72C0015 00006515
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101B88: BF870092
	v_mul_lo_u32 v22, v22, s51                                 // 000000101B8C: D72C0016 00006716
	v_add3_u32 v3, v21, v3, v22                                // 000000101B94: D6550003 045A0715
	s_cbranch_scc1 65470                                       // 000000101B9C: BFA2FFBE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1098>
	s_branch 3                                                 // 000000101BA0: BFA00003 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x11b0>
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v18, v19            // 000000101BA4: CA100080 03120113
	s_mov_b32 s3, 0                                            // 000000101BAC: BE830080
	s_and_b32 s23, s23, 3                                      // 000000101BB0: 8B178317
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000101BB4: BF870009
	s_cmp_eq_u32 s23, 0                                        // 000000101BB8: BF068017
	s_cbranch_scc1 39                                          // 000000101BBC: BFA20027 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x125c>
	s_lshl_b32 s16, s3, 2                                      // 000000101BC0: 84108203
	s_mul_i32 s3, s3, 12                                       // 000000101BC4: 96038C03
	s_add_u32 s16, s0, s16                                     // 000000101BC8: 80101000
	s_addc_u32 s17, s1, 0                                      // 000000101BCC: 82118001
	s_add_u32 s16, s16, 0x10c                                  // 000000101BD0: 8010FF10 0000010C
	s_addc_u32 s17, s17, 0                                     // 000000101BD8: 82118011
	s_add_u32 s18, s0, s3                                      // 000000101BDC: 80120300
	s_addc_u32 s19, s1, 0                                      // 000000101BE0: 82138001
	s_clause 0x1                                               // 000000101BE4: BF850001
	s_load_b64 s[24:25], s[18:19], 0x4c                        // 000000101BE8: F4040609 F800004C
	s_load_b32 s3, s[18:19], 0x54                              // 000000101BF0: F40000C9 F8000054
	s_waitcnt lgkmcnt(0)                                       // 000000101BF8: BF89FC07
	v_mul_hi_u32 v20, s25, v18                                 // 000000101BFC: D72D0014 00022419
	s_load_b32 s25, s[16:17], null                             // 000000101C04: F4000648 F8000000
	s_add_u32 s16, s16, 4                                      // 000000101C0C: 80108410
	s_addc_u32 s17, s17, 0                                     // 000000101C10: 82118011
	s_add_u32 s18, s18, 12                                     // 000000101C14: 80128C12
	s_addc_u32 s19, s19, 0                                     // 000000101C18: 82138013
	s_add_i32 s23, s23, -1                                     // 000000101C1C: 8117C117
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000101C20: BF8700A9
	s_cmp_lg_u32 s23, 0                                        // 000000101C24: BF078017
	v_add_nc_u32_e32 v20, v18, v20                             // 000000101C28: 4A282912
	v_lshrrev_b32_e32 v22, s3, v20                             // 000000101C2C: 322C2803
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101C30: BF870091
	v_mul_lo_u32 v20, v22, s24                                 // 000000101C34: D72C0014 00003116
	v_sub_nc_u32_e32 v18, v18, v20                             // 000000101C3C: 4C242912
	s_waitcnt lgkmcnt(0)                                       // 000000101C40: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101C44: BF870091
	v_mad_u64_u32 v[20:21], null, v18, s25, v[3:4]             // 000000101C48: D6FE7C14 040C3312
	v_dual_mov_b32 v18, v22 :: v_dual_mov_b32 v3, v20          // 000000101C50: CA100116 12020114
	s_cbranch_scc1 65506                                       // 000000101C58: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x11e4>
	s_mov_b32 s16, 0                                           // 000000101C5C: BE900080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000101C60: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s16                        // 000000101C64: 916A107E
	s_cbranch_vccnz 36                                         // 000000101C68: BFA40024 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x12fc>
	s_load_b128 s[16:19], s[0:1], 0x4c                         // 000000101C6C: F4080400 F800004C
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 000000101C74: 916A057E
	s_waitcnt lgkmcnt(0)                                       // 000000101C78: BF89FC07
	v_mul_hi_u32 v3, s17, v19                                  // 000000101C7C: D72D0003 00022611
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101C84: BF870091
	v_add_nc_u32_e32 v3, v19, v3                               // 000000101C88: 4A060713
	v_lshrrev_b32_e32 v18, s18, v3                             // 000000101C8C: 32240612
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101C90: BF870091
	v_mul_lo_u32 v3, v18, s16                                  // 000000101C94: D72C0003 00002112
	v_sub_nc_u32_e32 v3, v19, v3                               // 000000101C9C: 4C060713
	s_delay_alu instid0(VALU_DEP_1)                            // 000000101CA0: BF870001
	v_mul_lo_u32 v3, v3, s35                                   // 000000101CA4: D72C0003 00004703
	s_cbranch_vccnz 19                                         // 000000101CAC: BFA40013 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x12fc>
	s_clause 0x1                                               // 000000101CB0: BF850001
	s_load_b128 s[16:19], s[0:1], 0x58                         // 000000101CB4: F4080400 F8000058
	s_load_b32 s3, s[0:1], 0x110                               // 000000101CBC: F40000C0 F8000110
	s_waitcnt lgkmcnt(0)                                       // 000000101CC4: BF89FC07
	v_mul_hi_u32 v20, s17, v18                                 // 000000101CC8: D72D0014 00022411
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101CD0: BF870091
	v_add_nc_u32_e32 v20, v18, v20                             // 000000101CD4: 4A282912
	v_lshrrev_b32_e32 v20, s18, v20                            // 000000101CD8: 32282812
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101CDC: BF870091
	v_mul_lo_u32 v20, v20, s16                                 // 000000101CE0: D72C0014 00002114
	v_sub_nc_u32_e32 v18, v18, v20                             // 000000101CE8: 4C242912
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101CEC: BF870091
	v_mad_u64_u32 v[20:21], null, v18, s3, v[3:4]              // 000000101CF0: D6FE7C14 040C0712
	v_mov_b32_e32 v3, v20                                      // 000000101CF8: 7E060314
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000101CFC: BF870121
	v_and_b32_e32 v3, -4, v3                                   // 000000101D00: 360606C4
	v_add_nc_u32_e32 v19, s29, v19                             // 000000101D04: 4A26261D
	v_add_co_u32 v20, vcc_lo, v7, v3                           // 000000101D08: D7006A14 00020707
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 000000101D10: BF870191
	v_add_co_ci_u32_e64 v21, null, 0, v8, vcc_lo               // 000000101D14: D5207C15 01AA1080
	v_cmp_gt_u32_e64 s3, s6, v19                               // 000000101D1C: D44C0003 00022606
	global_load_b32 v18, v[20:21], off                         // 000000101D24: DC520000 127C0014
	s_and_saveexec_b32 s18, s3                                 // 000000101D2C: BE922003
	s_cbranch_execz 549                                        // 000000101D30: BFA50225 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1bc8>
	v_cndmask_b32_e64 v20, 0, 1, s4                            // 000000101D34: D5010014 00110280
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 000000101D3C: 916A047E
	s_cbranch_vccnz 79                                         // 000000101D40: BFA4004F <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1480>
	v_cmp_ne_u32_e32 vcc_lo, 1, v16                            // 000000101D44: 7C9A2081
	v_mov_b32_e32 v3, 0                                        // 000000101D48: 7E060280
	s_cbranch_vccnz 124                                        // 000000101D4C: BFA4007C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1540>
	s_add_i32 s23, s22, 1                                      // 000000101D50: 81178116
	s_cmp_eq_u32 s21, 2                                        // 000000101D54: BF068215
	s_cbranch_scc1 75                                          // 000000101D58: BFA2004B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1488>
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v14, v19            // 000000101D5C: CA100080 030E0113
	s_and_b32 s19, s23, 28                                     // 000000101D64: 8B139C17
	s_mov_b32 s24, 0                                           // 000000101D68: BE980080
	s_mov_b64 s[4:5], s[0:1]                                   // 000000101D6C: BE840100
	s_mov_b64 s[16:17], s[12:13]                               // 000000101D70: BE90010C
	s_clause 0x1                                               // 000000101D74: BF850001
	s_load_b256 s[36:43], s[4:5], 0x4c                         // 000000101D78: F40C0902 F800004C
	s_load_b128 s[44:47], s[4:5], 0x6c                         // 000000101D80: F4080B02 F800006C
	s_load_b128 s[48:51], s[16:17], null                       // 000000101D88: F4080C08 F8000000
	s_add_i32 s24, s24, 4                                      // 000000101D90: 81188418
	s_add_u32 s16, s16, 16                                     // 000000101D94: 80109010
	s_addc_u32 s17, s17, 0                                     // 000000101D98: 82118011
	s_add_u32 s4, s4, 48                                       // 000000101D9C: 8004B004
	s_addc_u32 s5, s5, 0                                       // 000000101DA0: 82058005
	s_cmp_eq_u32 s19, s24                                      // 000000101DA4: BF061813
	s_waitcnt lgkmcnt(0)                                       // 000000101DA8: BF89FC07
	v_mul_hi_u32 v21, s37, v14                                 // 000000101DAC: D72D0015 00021C25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101DB4: BF870091
	v_add_nc_u32_e32 v21, v14, v21                             // 000000101DB8: 4A2A2B0E
	v_lshrrev_b32_e32 v21, s38, v21                            // 000000101DBC: 322A2A26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000101DC0: BF870121
	v_mul_hi_u32 v22, s40, v21                                 // 000000101DC4: D72D0016 00022A28
	v_mul_lo_u32 v25, v21, s36                                 // 000000101DCC: D72C0019 00004915
	v_add_nc_u32_e32 v22, v21, v22                             // 000000101DD4: 4A2C2D15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101DD8: BF870112
	v_sub_nc_u32_e32 v25, v14, v25                             // 000000101DDC: 4C32330E
	v_lshrrev_b32_e32 v22, s41, v22                            // 000000101DE0: 322C2C29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101DE4: BF870112
	v_mul_lo_u32 v25, v25, s48                                 // 000000101DE8: D72C0019 00006119
	v_mul_hi_u32 v23, s43, v22                                 // 000000101DF0: D72D0017 00022C2B
	v_mul_lo_u32 v26, v22, s39                                 // 000000101DF8: D72C001A 00004F16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101E00: BF870112
	v_add_nc_u32_e32 v23, v22, v23                             // 000000101E04: 4A2E2F16
	v_sub_nc_u32_e32 v21, v21, v26                             // 000000101E08: 4C2A3515
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101E0C: BF870112
	v_lshrrev_b32_e32 v23, s44, v23                            // 000000101E10: 322E2E2C
	v_mul_lo_u32 v21, v21, s49                                 // 000000101E14: D72C0015 00006315
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101E1C: BF870112
	v_mul_hi_u32 v24, s46, v23                                 // 000000101E20: D72D0018 00022E2E
	v_add3_u32 v3, v25, v3, v21                                // 000000101E28: D6550003 04560719
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101E30: BF870092
	v_add_nc_u32_e32 v24, v23, v24                             // 000000101E34: 4A303117
	v_lshrrev_b32_e32 v14, s47, v24                            // 000000101E38: 321C302F
	v_mul_lo_u32 v24, v23, s42                                 // 000000101E3C: D72C0018 00005517
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101E44: BF870112
	v_mul_lo_u32 v27, v14, s45                                 // 000000101E48: D72C001B 00005B0E
	v_sub_nc_u32_e32 v22, v22, v24                             // 000000101E50: 4C2C3116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000101E54: BF870112
	v_sub_nc_u32_e32 v23, v23, v27                             // 000000101E58: 4C2E3717
	v_mul_lo_u32 v22, v22, s50                                 // 000000101E5C: D72C0016 00006516
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101E64: BF870092
	v_mul_lo_u32 v23, v23, s51                                 // 000000101E68: D72C0017 00006717
	v_add3_u32 v3, v22, v3, v23                                // 000000101E70: D6550003 045E0716
	s_cbranch_scc0 65470                                       // 000000101E78: BFA1FFBE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1374>
	s_branch 5                                                 // 000000101E7C: BFA00005 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1494>
	s_mov_b32 s4, -1                                           // 000000101E80: BE8400C1
	s_branch 47                                                // 000000101E84: BFA0002F <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1544>
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v14, v19            // 000000101E88: CA100080 030E0113
	s_mov_b32 s19, 0                                           // 000000101E90: BE930080
	s_and_b32 s23, s23, 3                                      // 000000101E94: 8B178317
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000101E98: BF870009
	s_cmp_eq_u32 s23, 0                                        // 000000101E9C: BF068017
	s_cbranch_scc1 39                                          // 000000101EA0: BFA20027 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1540>
	s_lshl_b32 s4, s19, 2                                      // 000000101EA4: 84048213
	s_mul_i32 s16, s19, 12                                     // 000000101EA8: 96108C13
	s_add_u32 s4, s0, s4                                       // 000000101EAC: 80040400
	s_addc_u32 s5, s1, 0                                       // 000000101EB0: 82058001
	s_add_u32 s4, s4, 0x10c                                    // 000000101EB4: 8004FF04 0000010C
	s_addc_u32 s5, s5, 0                                       // 000000101EBC: 82058005
	s_add_u32 s16, s0, s16                                     // 000000101EC0: 80101000
	s_addc_u32 s17, s1, 0                                      // 000000101EC4: 82118001
	s_clause 0x1                                               // 000000101EC8: BF850001
	s_load_b64 s[24:25], s[16:17], 0x4c                        // 000000101ECC: F4040608 F800004C
	s_load_b32 s19, s[16:17], 0x54                             // 000000101ED4: F40004C8 F8000054
	s_waitcnt lgkmcnt(0)                                       // 000000101EDC: BF89FC07
	v_mul_hi_u32 v21, s25, v14                                 // 000000101EE0: D72D0015 00021C19
	s_load_b32 s25, s[4:5], null                               // 000000101EE8: F4000642 F8000000
	s_add_u32 s4, s4, 4                                        // 000000101EF0: 80048404
	s_addc_u32 s5, s5, 0                                       // 000000101EF4: 82058005
	s_add_u32 s16, s16, 12                                     // 000000101EF8: 80108C10
	s_addc_u32 s17, s17, 0                                     // 000000101EFC: 82118011
	s_add_i32 s23, s23, -1                                     // 000000101F00: 8117C117
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000101F04: BF8700A9
	s_cmp_lg_u32 s23, 0                                        // 000000101F08: BF078017
	v_add_nc_u32_e32 v21, v14, v21                             // 000000101F0C: 4A2A2B0E
	v_lshrrev_b32_e32 v23, s19, v21                            // 000000101F10: 322E2A13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101F14: BF870091
	v_mul_lo_u32 v21, v23, s24                                 // 000000101F18: D72C0015 00003117
	v_sub_nc_u32_e32 v14, v14, v21                             // 000000101F20: 4C1C2B0E
	s_waitcnt lgkmcnt(0)                                       // 000000101F24: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101F28: BF870091
	v_mad_u64_u32 v[21:22], null, v14, s25, v[3:4]             // 000000101F2C: D6FE7C15 040C330E
	v_dual_mov_b32 v14, v23 :: v_dual_mov_b32 v3, v21          // 000000101F34: CA100117 0E020115
	s_cbranch_scc1 65506                                       // 000000101F3C: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x14c8>
	s_mov_b32 s4, 0                                            // 000000101F40: BE840080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000101F44: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 000000101F48: 916A047E
	s_cbranch_vccnz 37                                         // 000000101F4C: BFA40025 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x15e4>
	s_load_b128 s[36:39], s[0:1], 0x4c                         // 000000101F50: F4080900 F800004C
	v_cmp_ne_u32_e32 vcc_lo, 1, v16                            // 000000101F58: 7C9A2081
	s_and_b32 vcc_lo, exec_lo, vcc_lo                          // 000000101F5C: 8B6A6A7E
	s_waitcnt lgkmcnt(0)                                       // 000000101F60: BF89FC07
	v_mul_hi_u32 v3, s37, v19                                  // 000000101F64: D72D0003 00022625
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101F6C: BF870091
	v_add_nc_u32_e32 v3, v19, v3                               // 000000101F70: 4A060713
	v_lshrrev_b32_e32 v14, s38, v3                             // 000000101F74: 321C0626
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101F78: BF870091
	v_mul_lo_u32 v3, v14, s36                                  // 000000101F7C: D72C0003 0000490E
	v_sub_nc_u32_e32 v3, v19, v3                               // 000000101F84: 4C060713
	s_delay_alu instid0(VALU_DEP_1)                            // 000000101F88: BF870001
	v_mul_lo_u32 v3, v3, s35                                   // 000000101F8C: D72C0003 00004703
	s_cbranch_vccnz 19                                         // 000000101F94: BFA40013 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x15e4>
	s_clause 0x1                                               // 000000101F98: BF850001
	s_load_b128 s[36:39], s[0:1], 0x58                         // 000000101F9C: F4080900 F8000058
	s_load_b32 s4, s[0:1], 0x110                               // 000000101FA4: F4000100 F8000110
	s_waitcnt lgkmcnt(0)                                       // 000000101FAC: BF89FC07
	v_mul_hi_u32 v21, s37, v14                                 // 000000101FB0: D72D0015 00021C25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101FB8: BF870091
	v_add_nc_u32_e32 v21, v14, v21                             // 000000101FBC: 4A2A2B0E
	v_lshrrev_b32_e32 v21, s38, v21                            // 000000101FC0: 322A2A26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101FC4: BF870091
	v_mul_lo_u32 v21, v21, s36                                 // 000000101FC8: D72C0015 00004915
	v_sub_nc_u32_e32 v14, v14, v21                             // 000000101FD0: 4C1C2B0E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000101FD4: BF870091
	v_mad_u64_u32 v[21:22], null, v14, s4, v[3:4]              // 000000101FD8: D6FE7C15 040C090E
	v_mov_b32_e32 v3, v21                                      // 000000101FE0: 7E060315
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000101FE4: BF8700A1
	v_and_b32_e32 v3, -4, v3                                   // 000000101FE8: 360606C4
	s_mov_b32 s19, exec_lo                                     // 000000101FEC: BE93007E
	v_add_co_u32 v21, vcc_lo, v7, v3                           // 000000101FF0: D7006A15 00020707
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 000000101FF8: BF8700B1
	v_add_co_ci_u32_e64 v22, null, 0, v8, vcc_lo               // 000000101FFC: D5207C16 01AA1080
	global_load_b32 v14, v[21:22], off                         // 000000102004: DC520000 0E7C0015
	v_add_nc_u32_e32 v21, s29, v19                             // 00000010200C: 4A2A261D
	v_cmpx_gt_u32_e64 s6, v21                                  // 000000102010: D4CC007E 00022A06
	s_cbranch_execz 361                                        // 000000102018: BFA50169 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1bc0>
	v_cmp_ne_u32_e32 vcc_lo, 1, v20                            // 00000010201C: 7C9A2881
	s_cbranch_vccnz 79                                         // 000000102020: BFA4004F <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1760>
	v_cmp_ne_u32_e32 vcc_lo, 1, v16                            // 000000102024: 7C9A2081
	v_mov_b32_e32 v3, 0                                        // 000000102028: 7E060280
	s_cbranch_vccnz 124                                        // 00000010202C: BFA4007C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1820>
	s_add_i32 s24, s22, 1                                      // 000000102030: 81188116
	s_cmp_eq_u32 s21, 2                                        // 000000102034: BF068215
	s_cbranch_scc1 75                                          // 000000102038: BFA2004B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1768>
	v_mov_b32_e32 v3, 0                                        // 00000010203C: 7E060280
	v_mov_b32_e32 v15, v21                                     // 000000102040: 7E1E0315
	s_and_b32 s23, s24, 28                                     // 000000102044: 8B179C18
	s_mov_b32 s25, 0                                           // 000000102048: BE990080
	s_mov_b64 s[4:5], s[0:1]                                   // 00000010204C: BE840100
	s_mov_b64 s[16:17], s[12:13]                               // 000000102050: BE90010C
	s_clause 0x1                                               // 000000102054: BF850001
	s_load_b256 s[36:43], s[4:5], 0x4c                         // 000000102058: F40C0902 F800004C
	s_load_b128 s[44:47], s[4:5], 0x6c                         // 000000102060: F4080B02 F800006C
	s_load_b128 s[48:51], s[16:17], null                       // 000000102068: F4080C08 F8000000
	s_add_i32 s25, s25, 4                                      // 000000102070: 81198419
	s_add_u32 s16, s16, 16                                     // 000000102074: 80109010
	s_addc_u32 s17, s17, 0                                     // 000000102078: 82118011
	s_add_u32 s4, s4, 48                                       // 00000010207C: 8004B004
	s_addc_u32 s5, s5, 0                                       // 000000102080: 82058005
	s_cmp_eq_u32 s23, s25                                      // 000000102084: BF061917
	s_waitcnt lgkmcnt(0)                                       // 000000102088: BF89FC07
	v_mul_hi_u32 v22, s37, v15                                 // 00000010208C: D72D0016 00021E25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102094: BF870091
	v_add_nc_u32_e32 v22, v15, v22                             // 000000102098: 4A2C2D0F
	v_lshrrev_b32_e32 v22, s38, v22                            // 00000010209C: 322C2C26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000001020A0: BF870121
	v_mul_hi_u32 v23, s40, v22                                 // 0000001020A4: D72D0017 00022C28
	v_mul_lo_u32 v26, v22, s36                                 // 0000001020AC: D72C001A 00004916
	v_add_nc_u32_e32 v23, v22, v23                             // 0000001020B4: 4A2E2F16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001020B8: BF870112
	v_sub_nc_u32_e32 v26, v15, v26                             // 0000001020BC: 4C34350F
	v_lshrrev_b32_e32 v23, s41, v23                            // 0000001020C0: 322E2E29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001020C4: BF870112
	v_mul_lo_u32 v26, v26, s48                                 // 0000001020C8: D72C001A 0000611A
	v_mul_hi_u32 v24, s43, v23                                 // 0000001020D0: D72D0018 00022E2B
	v_mul_lo_u32 v27, v23, s39                                 // 0000001020D8: D72C001B 00004F17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001020E0: BF870112
	v_add_nc_u32_e32 v24, v23, v24                             // 0000001020E4: 4A303117
	v_sub_nc_u32_e32 v22, v22, v27                             // 0000001020E8: 4C2C3716
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001020EC: BF870112
	v_lshrrev_b32_e32 v24, s44, v24                            // 0000001020F0: 3230302C
	v_mul_lo_u32 v22, v22, s49                                 // 0000001020F4: D72C0016 00006316
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001020FC: BF870112
	v_mul_hi_u32 v25, s46, v24                                 // 000000102100: D72D0019 0002302E
	v_add3_u32 v3, v26, v3, v22                                // 000000102108: D6550003 045A071A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102110: BF870092
	v_add_nc_u32_e32 v25, v24, v25                             // 000000102114: 4A323318
	v_lshrrev_b32_e32 v15, s47, v25                            // 000000102118: 321E322F
	v_mul_lo_u32 v25, v24, s42                                 // 00000010211C: D72C0019 00005518
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000102124: BF870112
	v_mul_lo_u32 v28, v15, s45                                 // 000000102128: D72C001C 00005B0F
	v_sub_nc_u32_e32 v23, v23, v25                             // 000000102130: 4C2E3317
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000102134: BF870112
	v_sub_nc_u32_e32 v24, v24, v28                             // 000000102138: 4C303918
	v_mul_lo_u32 v23, v23, s50                                 // 00000010213C: D72C0017 00006517
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102144: BF870092
	v_mul_lo_u32 v24, v24, s51                                 // 000000102148: D72C0018 00006718
	v_add3_u32 v3, v23, v3, v24                                // 000000102150: D6550003 04620717
	s_cbranch_scc0 65470                                       // 000000102158: BFA1FFBE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1654>
	s_branch 5                                                 // 00000010215C: BFA00005 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1774>
	s_mov_b32 s4, -1                                           // 000000102160: BE8400C1
	s_branch 47                                                // 000000102164: BFA0002F <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1824>
	v_mov_b32_e32 v3, 0                                        // 000000102168: 7E060280
	v_mov_b32_e32 v15, v21                                     // 00000010216C: 7E1E0315
	s_mov_b32 s23, 0                                           // 000000102170: BE970080
	s_and_b32 s24, s24, 3                                      // 000000102174: 8B188318
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000102178: BF870009
	s_cmp_eq_u32 s24, 0                                        // 00000010217C: BF068018
	s_cbranch_scc1 39                                          // 000000102180: BFA20027 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1820>
	s_lshl_b32 s4, s23, 2                                      // 000000102184: 84048217
	s_mul_i32 s16, s23, 12                                     // 000000102188: 96108C17
	s_add_u32 s4, s0, s4                                       // 00000010218C: 80040400
	s_addc_u32 s5, s1, 0                                       // 000000102190: 82058001
	s_add_u32 s4, s4, 0x10c                                    // 000000102194: 8004FF04 0000010C
	s_addc_u32 s5, s5, 0                                       // 00000010219C: 82058005
	s_add_u32 s16, s0, s16                                     // 0000001021A0: 80101000
	s_addc_u32 s17, s1, 0                                      // 0000001021A4: 82118001
	s_clause 0x1                                               // 0000001021A8: BF850001
	s_load_b64 s[36:37], s[16:17], 0x4c                        // 0000001021AC: F4040908 F800004C
	s_load_b32 s23, s[16:17], 0x54                             // 0000001021B4: F40005C8 F8000054
	s_load_b32 s25, s[4:5], null                               // 0000001021BC: F4000642 F8000000
	s_add_u32 s4, s4, 4                                        // 0000001021C4: 80048404
	s_addc_u32 s5, s5, 0                                       // 0000001021C8: 82058005
	s_add_u32 s16, s16, 12                                     // 0000001021CC: 80108C10
	s_addc_u32 s17, s17, 0                                     // 0000001021D0: 82118011
	s_add_i32 s24, s24, -1                                     // 0000001021D4: 8118C118
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 0000001021D8: BF8700B9
	s_cmp_lg_u32 s24, 0                                        // 0000001021DC: BF078018
	s_waitcnt lgkmcnt(0)                                       // 0000001021E0: BF89FC07
	v_mul_hi_u32 v22, s37, v15                                 // 0000001021E4: D72D0016 00021E25
	v_add_nc_u32_e32 v22, v15, v22                             // 0000001021EC: 4A2C2D0F
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001021F0: BF870091
	v_lshrrev_b32_e32 v24, s23, v22                            // 0000001021F4: 32302C17
	v_mul_lo_u32 v22, v24, s36                                 // 0000001021F8: D72C0016 00004918
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102200: BF870091
	v_sub_nc_u32_e32 v15, v15, v22                             // 000000102204: 4C1E2D0F
	v_mad_u64_u32 v[22:23], null, v15, s25, v[3:4]             // 000000102208: D6FE7C16 040C330F
	v_mov_b32_e32 v15, v24                                     // 000000102210: 7E1E0318
	s_delay_alu instid0(VALU_DEP_2)                            // 000000102214: BF870002
	v_mov_b32_e32 v3, v22                                      // 000000102218: 7E060316
	s_cbranch_scc1 65506                                       // 00000010221C: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x17a8>
	s_mov_b32 s4, 0                                            // 000000102220: BE840080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000102224: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 000000102228: 916A047E
	s_cbranch_vccnz 37                                         // 00000010222C: BFA40025 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x18c4>
	s_load_b128 s[36:39], s[0:1], 0x4c                         // 000000102230: F4080900 F800004C
	v_cmp_ne_u32_e32 vcc_lo, 1, v16                            // 000000102238: 7C9A2081
	s_and_b32 vcc_lo, exec_lo, vcc_lo                          // 00000010223C: 8B6A6A7E
	s_waitcnt lgkmcnt(0)                                       // 000000102240: BF89FC07
	v_mul_hi_u32 v3, s37, v21                                  // 000000102244: D72D0003 00022A25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000010224C: BF870091
	v_add_nc_u32_e32 v3, v21, v3                               // 000000102250: 4A060715
	v_lshrrev_b32_e32 v15, s38, v3                             // 000000102254: 321E0626
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102258: BF870091
	v_mul_lo_u32 v3, v15, s36                                  // 00000010225C: D72C0003 0000490F
	v_sub_nc_u32_e32 v3, v21, v3                               // 000000102264: 4C060715
	s_delay_alu instid0(VALU_DEP_1)                            // 000000102268: BF870001
	v_mul_lo_u32 v3, v3, s35                                   // 00000010226C: D72C0003 00004703
	s_cbranch_vccnz 19                                         // 000000102274: BFA40013 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x18c4>
	s_clause 0x1                                               // 000000102278: BF850001
	s_load_b128 s[36:39], s[0:1], 0x58                         // 00000010227C: F4080900 F8000058
	s_load_b32 s4, s[0:1], 0x110                               // 000000102284: F4000100 F8000110
	s_waitcnt lgkmcnt(0)                                       // 00000010228C: BF89FC07
	v_mul_hi_u32 v22, s37, v15                                 // 000000102290: D72D0016 00021E25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102298: BF870091
	v_add_nc_u32_e32 v22, v15, v22                             // 00000010229C: 4A2C2D0F
	v_lshrrev_b32_e32 v22, s38, v22                            // 0000001022A0: 322C2C26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001022A4: BF870091
	v_mul_lo_u32 v22, v22, s36                                 // 0000001022A8: D72C0016 00004916
	v_sub_nc_u32_e32 v15, v15, v22                             // 0000001022B0: 4C1E2D0F
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001022B4: BF870091
	v_mad_u64_u32 v[22:23], null, v15, s4, v[3:4]              // 0000001022B8: D6FE7C16 040C090F
	v_mov_b32_e32 v3, v22                                      // 0000001022C0: 7E060316
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 0000001022C4: BF870131
	v_and_b32_e32 v3, -4, v3                                   // 0000001022C8: 360606C4
	v_add_nc_u32_e32 v21, s29, v21                             // 0000001022CC: 4A2A2A1D
	s_mov_b32 s16, exec_lo                                     // 0000001022D0: BE90007E
	v_add_co_u32 v22, vcc_lo, v7, v3                           // 0000001022D4: D7006A16 00020707
	s_delay_alu instid0(VALU_DEP_1)                            // 0000001022DC: BF870001
	v_add_co_ci_u32_e64 v23, null, 0, v8, vcc_lo               // 0000001022E0: D5207C17 01AA1080
	global_load_b32 v15, v[22:23], off                         // 0000001022E8: DC520000 0F7C0016
	v_cmpx_gt_u32_e64 s6, v21                                  // 0000001022F0: D4CC007E 00022A06
	s_cbranch_execz 176                                        // 0000001022F8: BFA500B0 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1bbc>
	v_cmp_ne_u32_e32 vcc_lo, 1, v20                            // 0000001022FC: 7C9A2881
	s_cbranch_vccnz 78                                         // 000000102300: BFA4004E <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1a3c>
	v_cmp_ne_u32_e32 vcc_lo, 1, v16                            // 000000102304: 7C9A2081
	v_mov_b32_e32 v3, 0                                        // 000000102308: 7E060280
	s_cbranch_vccnz 121                                        // 00000010230C: BFA40079 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1af4>
	v_mov_b32_e32 v3, 0                                        // 000000102310: 7E060280
	v_mov_b32_e32 v17, v21                                     // 000000102314: 7E220315
	s_add_i32 s22, s22, 1                                      // 000000102318: 81168116
	s_cmp_eq_u32 s21, 2                                        // 00000010231C: BF068215
	s_cbranch_scc1 72                                          // 000000102320: BFA20048 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1a44>
	s_and_b32 s17, s22, 28                                     // 000000102324: 8B119C16
	s_mov_b32 s21, 0                                           // 000000102328: BE950080
	s_mov_b64 s[4:5], s[0:1]                                   // 00000010232C: BE840100
	s_clause 0x1                                               // 000000102330: BF850001
	s_load_b256 s[36:43], s[4:5], 0x4c                         // 000000102334: F40C0902 F800004C
	s_load_b128 s[44:47], s[4:5], 0x6c                         // 00000010233C: F4080B02 F800006C
	s_load_b128 s[48:51], s[12:13], null                       // 000000102344: F4080C06 F8000000
	s_add_i32 s21, s21, 4                                      // 00000010234C: 81158415
	s_add_u32 s12, s12, 16                                     // 000000102350: 800C900C
	s_addc_u32 s13, s13, 0                                     // 000000102354: 820D800D
	s_add_u32 s4, s4, 48                                       // 000000102358: 8004B004
	s_addc_u32 s5, s5, 0                                       // 00000010235C: 82058005
	s_cmp_eq_u32 s17, s21                                      // 000000102360: BF061511
	s_waitcnt lgkmcnt(0)                                       // 000000102364: BF89FC07
	v_mul_hi_u32 v20, s37, v17                                 // 000000102368: D72D0014 00022225
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102370: BF870091
	v_add_nc_u32_e32 v20, v17, v20                             // 000000102374: 4A282911
	v_lshrrev_b32_e32 v20, s38, v20                            // 000000102378: 32282826
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 00000010237C: BF870121
	v_mul_hi_u32 v22, s40, v20                                 // 000000102380: D72D0016 00022828
	v_mul_lo_u32 v25, v20, s36                                 // 000000102388: D72C0019 00004914
	v_add_nc_u32_e32 v22, v20, v22                             // 000000102390: 4A2C2D14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000102394: BF870112
	v_sub_nc_u32_e32 v25, v17, v25                             // 000000102398: 4C323311
	v_lshrrev_b32_e32 v22, s41, v22                            // 00000010239C: 322C2C29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001023A0: BF870112
	v_mul_lo_u32 v25, v25, s48                                 // 0000001023A4: D72C0019 00006119
	v_mul_hi_u32 v23, s43, v22                                 // 0000001023AC: D72D0017 00022C2B
	v_mul_lo_u32 v26, v22, s39                                 // 0000001023B4: D72C001A 00004F16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001023BC: BF870112
	v_add_nc_u32_e32 v23, v22, v23                             // 0000001023C0: 4A2E2F16
	v_sub_nc_u32_e32 v20, v20, v26                             // 0000001023C4: 4C283514
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001023C8: BF870112
	v_lshrrev_b32_e32 v23, s44, v23                            // 0000001023CC: 322E2E2C
	v_mul_lo_u32 v20, v20, s49                                 // 0000001023D0: D72C0014 00006314
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001023D8: BF870112
	v_mul_hi_u32 v24, s46, v23                                 // 0000001023DC: D72D0018 00022E2E
	v_add3_u32 v3, v25, v3, v20                                // 0000001023E4: D6550003 04520719
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001023EC: BF870092
	v_add_nc_u32_e32 v24, v23, v24                             // 0000001023F0: 4A303117
	v_lshrrev_b32_e32 v17, s47, v24                            // 0000001023F4: 3222302F
	v_mul_lo_u32 v24, v23, s42                                 // 0000001023F8: D72C0018 00005517
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000102400: BF870112
	v_mul_lo_u32 v27, v17, s45                                 // 000000102404: D72C001B 00005B11
	v_sub_nc_u32_e32 v22, v22, v24                             // 00000010240C: 4C2C3116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000102410: BF870112
	v_sub_nc_u32_e32 v23, v23, v27                             // 000000102414: 4C2E3717
	v_mul_lo_u32 v22, v22, s50                                 // 000000102418: D72C0016 00006516
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102420: BF870092
	v_mul_lo_u32 v23, v23, s51                                 // 000000102424: D72C0017 00006717
	v_add3_u32 v3, v22, v3, v23                                // 00000010242C: D6550003 045E0716
	s_cbranch_scc0 65470                                       // 000000102434: BFA1FFBE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1930>
	s_branch 3                                                 // 000000102438: BFA00003 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1a48>
	s_mov_b32 s4, -1                                           // 00000010243C: BE8400C1
	s_branch 45                                                // 000000102440: BFA0002D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1af8>
	s_mov_b32 s17, 0                                           // 000000102444: BE910080
	s_and_b32 s21, s22, 3                                      // 000000102448: 8B158316
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000010244C: BF870009
	s_cmp_eq_u32 s21, 0                                        // 000000102450: BF068015
	s_cbranch_scc1 39                                          // 000000102454: BFA20027 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1af4>
	s_lshl_b32 s4, s17, 2                                      // 000000102458: 84048211
	s_mul_i32 s12, s17, 12                                     // 00000010245C: 960C8C11
	s_add_u32 s4, s0, s4                                       // 000000102460: 80040400
	s_addc_u32 s5, s1, 0                                       // 000000102464: 82058001
	s_add_u32 s4, s4, 0x10c                                    // 000000102468: 8004FF04 0000010C
	s_addc_u32 s5, s5, 0                                       // 000000102470: 82058005
	s_add_u32 s12, s0, s12                                     // 000000102474: 800C0C00
	s_addc_u32 s13, s1, 0                                      // 000000102478: 820D8001
	s_clause 0x1                                               // 00000010247C: BF850001
	s_load_b64 s[22:23], s[12:13], 0x4c                        // 000000102480: F4040586 F800004C
	s_load_b32 s17, s[12:13], 0x54                             // 000000102488: F4000446 F8000054
	s_waitcnt lgkmcnt(0)                                       // 000000102490: BF89FC07
	v_mul_hi_u32 v20, s23, v17                                 // 000000102494: D72D0014 00022217
	s_load_b32 s23, s[4:5], null                               // 00000010249C: F40005C2 F8000000
	s_add_u32 s4, s4, 4                                        // 0000001024A4: 80048404
	s_addc_u32 s5, s5, 0                                       // 0000001024A8: 82058005
	s_add_u32 s12, s12, 12                                     // 0000001024AC: 800C8C0C
	s_addc_u32 s13, s13, 0                                     // 0000001024B0: 820D800D
	s_add_i32 s21, s21, -1                                     // 0000001024B4: 8115C115
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000001024B8: BF8700A9
	s_cmp_lg_u32 s21, 0                                        // 0000001024BC: BF078015
	v_add_nc_u32_e32 v20, v17, v20                             // 0000001024C0: 4A282911
	v_lshrrev_b32_e32 v20, s17, v20                            // 0000001024C4: 32282811
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001024C8: BF870091
	v_mul_lo_u32 v22, v20, s22                                 // 0000001024CC: D72C0016 00002D14
	v_sub_nc_u32_e32 v17, v17, v22                             // 0000001024D4: 4C222D11
	s_waitcnt lgkmcnt(0)                                       // 0000001024D8: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000001024DC: BF870121
	v_mad_u64_u32 v[22:23], null, v17, s23, v[3:4]             // 0000001024E0: D6FE7C16 040C2F11
	v_mov_b32_e32 v17, v20                                     // 0000001024E8: 7E220314
	v_mov_b32_e32 v3, v22                                      // 0000001024EC: 7E060316
	s_cbranch_scc1 65506                                       // 0000001024F0: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1a7c>
	s_mov_b32 s4, 0                                            // 0000001024F4: BE840080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001024F8: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 0000001024FC: 916A047E
	s_cbranch_vccnz 37                                         // 000000102500: BFA40025 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1b98>
	s_load_b128 s[36:39], s[0:1], 0x4c                         // 000000102504: F4080900 F800004C
	v_cmp_ne_u32_e32 vcc_lo, 1, v16                            // 00000010250C: 7C9A2081
	s_and_b32 vcc_lo, exec_lo, vcc_lo                          // 000000102510: 8B6A6A7E
	s_waitcnt lgkmcnt(0)                                       // 000000102514: BF89FC07
	v_mul_hi_u32 v3, s37, v21                                  // 000000102518: D72D0003 00022A25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102520: BF870091
	v_add_nc_u32_e32 v3, v21, v3                               // 000000102524: 4A060715
	v_lshrrev_b32_e32 v17, s38, v3                             // 000000102528: 32220626
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000010252C: BF870091
	v_mul_lo_u32 v3, v17, s36                                  // 000000102530: D72C0003 00004911
	v_sub_nc_u32_e32 v3, v21, v3                               // 000000102538: 4C060715
	s_delay_alu instid0(VALU_DEP_1)                            // 00000010253C: BF870001
	v_mul_lo_u32 v3, v3, s35                                   // 000000102540: D72C0003 00004703
	s_cbranch_vccnz 19                                         // 000000102548: BFA40013 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1b98>
	s_clause 0x1                                               // 00000010254C: BF850001
	s_load_b128 s[36:39], s[0:1], 0x58                         // 000000102550: F4080900 F8000058
	s_load_b32 s4, s[0:1], 0x110                               // 000000102558: F4000100 F8000110
	s_waitcnt lgkmcnt(0)                                       // 000000102560: BF89FC07
	v_mul_hi_u32 v16, s37, v17                                 // 000000102564: D72D0010 00022225
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000010256C: BF870091
	v_add_nc_u32_e32 v16, v17, v16                             // 000000102570: 4A202111
	v_lshrrev_b32_e32 v16, s38, v16                            // 000000102574: 32202026
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102578: BF870091
	v_mul_lo_u32 v16, v16, s36                                 // 00000010257C: D72C0010 00004910
	v_sub_nc_u32_e32 v20, v17, v16                             // 000000102584: 4C282111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102588: BF870091
	v_mad_u64_u32 v[16:17], null, v20, s4, v[3:4]              // 00000010258C: D6FE7C10 040C0914
	v_mov_b32_e32 v3, v16                                      // 000000102594: 7E060310
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102598: BF870091
	v_and_b32_e32 v3, -4, v3                                   // 00000010259C: 360606C4
	v_add_co_u32 v16, vcc_lo, v7, v3                           // 0000001025A0: D7006A10 00020707
	s_delay_alu instid0(VALU_DEP_1)                            // 0000001025A8: BF870001
	v_add_co_ci_u32_e64 v17, null, 0, v8, vcc_lo               // 0000001025AC: D5207C11 01AA1080
	global_load_b32 v17, v[16:17], off                         // 0000001025B4: DC520000 117C0010
	s_or_b32 exec_lo, exec_lo, s16                             // 0000001025BC: 8C7E107E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001025C0: BF870009
	s_or_b32 exec_lo, exec_lo, s19                             // 0000001025C4: 8C7E137E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001025C8: BF870009
	s_or_b32 exec_lo, exec_lo, s18                             // 0000001025CC: 8C7E127E
	s_and_saveexec_b32 s4, s3                                  // 0000001025D0: BE842003
	s_cbranch_execz 13                                         // 0000001025D4: BFA5000D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1c0c>
	v_add_nc_u32_e32 v3, s29, v19                              // 0000001025D8: 4A06261D
	s_waitcnt vmcnt(0)                                         // 0000001025DC: BF8903F7
	v_add_f32_e32 v15, v12, v15                                // 0000001025E0: 061E1F0C
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)// 0000001025E4: BF870242
	v_add_nc_u32_e32 v16, s29, v3                              // 0000001025E8: 4A20061D
	v_cmp_gt_u32_e32 vcc_lo, s6, v3                            // 0000001025EC: 7C980606
	v_add_f32_e32 v3, v9, v17                                  // 0000001025F0: 06062309
	v_add_f32_e32 v13, v13, v14                                // 0000001025F4: 061A1D0D
	v_cmp_gt_u32_e64 s3, s6, v16                               // 0000001025F8: D44C0003 00022006
	v_cndmask_b32_e32 v12, v12, v15, vcc_lo                    // 000000102600: 02181F0C
	s_and_b32 vcc_lo, vcc_lo, s3                               // 000000102604: 8B6A036A
	v_cndmask_b32_e32 v9, v9, v3, vcc_lo                       // 000000102608: 02120709
	s_or_b32 exec_lo, exec_lo, s4                              // 00000010260C: 8C7E047E
	s_waitcnt vmcnt(0)                                         // 000000102610: BF8903F7
	v_add_f32_e32 v11, v11, v18                                // 000000102614: 0616250B
	s_or_b32 exec_lo, exec_lo, s20                             // 000000102618: 8C7E147E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000010261C: BF870091
	v_add_f32_e32 v3, v13, v11                                 // 000000102620: 0606170D
	v_add_f32_e32 v3, v12, v3                                  // 000000102624: 0606070C
	s_delay_alu instid0(VALU_DEP_1)                            // 000000102628: BF870001
	v_add_f32_e32 v11, v9, v3                                  // 00000010262C: 06160709
	s_branch 196                                               // 000000102630: BFA000C4 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1f44>
	v_dual_mov_b32 v11, s31 :: v_dual_mov_b32 v12, s31         // 000000102634: CA10001F 0B0C001F
	v_mov_b32_e32 v17, v2                                      // 00000010263C: 7E220302
	v_mov_b32_e32 v13, s31                                     // 000000102640: 7E1A021F
	v_mov_b32_e32 v9, s31                                      // 000000102644: 7E12021F
	s_and_saveexec_b32 s3, s2                                  // 000000102648: BE832002
	s_cbranch_execz 89                                         // 00000010264C: BFA50059 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1db4>
	v_add_nc_u32_e32 v3, s29, v5                               // 000000102650: 4A060A1D
	v_lshl_add_u32 v11, s29, 1, v2                             // 000000102654: D646000B 0409021D
	v_mul_lo_u32 v5, s33, v6                                   // 00000010265C: D72C0005 00020C21
	v_mul_lo_u32 v6, s33, v2                                   // 000000102664: D72C0006 00020421
	v_dual_mov_b32 v9, s31 :: v_dual_mov_b32 v12, s31          // 00000010266C: CA10001F 090C001F
	v_add3_u32 v3, v3, v4, s34                                 // 000000102674: D6550003 008A0903
	v_mul_lo_u32 v18, s33, v11                                 // 00000010267C: D72C0012 00021621
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v13, s31            // 000000102684: CA100080 040C001F
	v_mov_b32_e32 v11, s31                                     // 00000010268C: 7E16021F
	s_delay_alu instid0(VALU_DEP_4)                            // 000000102690: BF870004
	v_mul_lo_u32 v19, s33, v3                                  // 000000102694: D72C0013 00020621
	v_mov_b32_e32 v17, v2                                      // 00000010269C: 7E220302
	s_mul_i32 s4, s29, s33                                     // 0000001026A0: 9604211D
	s_mov_b32 s5, 0                                            // 0000001026A4: BE850080
	s_lshl_b32 s4, s4, 2                                       // 0000001026A8: 84048204
	s_add_i32 s12, s29, s29                                    // 0000001026AC: 810C1D1D
	s_mov_b32 s13, 0                                           // 0000001026B0: BE8D0080
	s_set_inst_prefetch_distance 0x1                           // 0000001026B4: BF840001
	s_nop 0                                                    // 0000001026B8: BF800000
	s_nop 0                                                    // 0000001026BC: BF800000
	v_add_nc_u32_e32 v3, s13, v6                               // 0000001026C0: 4A060C0D
	v_add3_u32 v17, s12, s12, v17                              // 0000001026C4: D6550011 0444180C
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000001026CC: BF8700A2
	v_lshlrev_b64 v[14:15], 2, v[3:4]                          // 0000001026D0: D73C000E 00020682
	v_add_nc_u32_e32 v3, s13, v19                              // 0000001026D8: 4A06260D
	v_lshlrev_b64 v[20:21], 2, v[3:4]                          // 0000001026DC: D73C0014 00020682
	v_add_nc_u32_e32 v3, s13, v18                              // 0000001026E4: 4A06240D
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001026E8: BF870094
	v_add_co_u32 v14, vcc_lo, v7, v14                          // 0000001026EC: D7006A0E 00021D07
	v_add_co_ci_u32_e64 v15, null, v8, v15, vcc_lo             // 0000001026F4: D5207C0F 01AA1F08
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 0000001026FC: BF8700B3
	v_lshlrev_b64 v[22:23], 2, v[3:4]                          // 000000102700: D73C0016 00020682
	v_add_nc_u32_e32 v3, s13, v5                               // 000000102708: 4A060A0D
	v_add_co_u32 v20, vcc_lo, v7, v20                          // 00000010270C: D7006A14 00022907
	v_add_co_ci_u32_e64 v21, null, v8, v21, vcc_lo             // 000000102714: D5207C15 01AA2B08
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 00000010271C: BF8700A3
	v_lshlrev_b64 v[24:25], 2, v[3:4]                          // 000000102720: D73C0018 00020682
	v_add_co_u32 v22, vcc_lo, v7, v22                          // 000000102728: D7006A16 00022D07
	v_add_co_ci_u32_e64 v23, null, v8, v23, vcc_lo             // 000000102730: D5207C17 01AA2F08
	s_add_i32 s13, s13, s4                                     // 000000102738: 810D040D
	v_add_co_u32 v24, vcc_lo, v7, v24                          // 00000010273C: D7006A18 00023107
	s_delay_alu instid0(VALU_DEP_1)                            // 000000102744: BF870001
	v_add_co_ci_u32_e64 v25, null, v8, v25, vcc_lo             // 000000102748: D5207C19 01AA3308
	s_clause 0x3                                               // 000000102750: BF850003
	global_load_b32 v3, v[14:15], off                          // 000000102754: DC520000 037C000E
	global_load_b32 v14, v[20:21], off                         // 00000010275C: DC520000 0E7C0014
	global_load_b32 v15, v[22:23], off                         // 000000102764: DC520000 0F7C0016
	global_load_b32 v16, v[24:25], off                         // 00000010276C: DC520000 107C0018
	s_waitcnt vmcnt(3)                                         // 000000102774: BF890FF7
	v_dual_add_f32 v11, v11, v3 :: v_dual_add_nc_u32 v20, s30, v17// 000000102778: C920070B 0B14221E
	s_delay_alu instid0(VALU_DEP_1)                            // 000000102780: BF870001
	v_cmp_le_u32_e32 vcc_lo, s6, v20                           // 000000102784: 7C962806
	s_waitcnt vmcnt(1)                                         // 000000102788: BF8907F7
	v_dual_add_f32 v13, v13, v14 :: v_dual_add_f32 v12, v12, v15// 00000010278C: C9081D0D 0D0C1F0C
	s_waitcnt vmcnt(0)                                         // 000000102794: BF8903F7
	v_add_f32_e32 v9, v9, v16                                  // 000000102798: 06122109
	s_or_b32 s5, vcc_lo, s5                                    // 00000010279C: 8C05056A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001027A0: BF870009
	s_and_not1_b32 exec_lo, exec_lo, s5                        // 0000001027A4: 917E057E
	s_cbranch_execnz 65477                                     // 0000001027A8: BFA6FFC5 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1cc0>
	s_set_inst_prefetch_distance 0x2                           // 0000001027AC: BF840002
	s_or_b32 exec_lo, exec_lo, s5                              // 0000001027B0: 8C7E057E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 0000001027B4: BF870499
	s_or_b32 exec_lo, exec_lo, s3                              // 0000001027B8: 8C7E037E
	s_mov_b32 s4, exec_lo                                      // 0000001027BC: BE84007E
	v_cmpx_gt_u32_e64 s6, v17                                  // 0000001027C0: D4CC007E 00022206
	s_cbranch_execz 88                                         // 0000001027C8: BFA50058 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1f2c>
	v_mul_lo_u32 v3, v17, s33                                  // 0000001027CC: D72C0003 00004311
	v_mov_b32_e32 v4, 0                                        // 0000001027D4: 7E080280
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000001027D8: BF870121
	v_lshlrev_b64 v[5:6], 2, v[3:4]                            // 0000001027DC: D73C0005 00020682
	v_add_nc_u32_e32 v3, s29, v17                              // 0000001027E4: 4A06221D
	v_add_co_u32 v5, vcc_lo, v7, v5                            // 0000001027E8: D7006A05 00020B07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 0000001027F0: BF870191
	v_add_co_ci_u32_e64 v6, null, v8, v6, vcc_lo               // 0000001027F4: D5207C06 01AA0D08
	v_cmp_gt_u32_e32 vcc_lo, s6, v3                            // 0000001027FC: 7C980606
	global_load_b32 v5, v[5:6], off                            // 000000102800: DC520000 057C0005
	v_add_nc_u32_e32 v6, s29, v3                               // 000000102808: 4A0C061D
	s_and_saveexec_b32 s5, vcc_lo                              // 00000010280C: BE85206A
	s_cbranch_execz 51                                         // 000000102810: BFA50033 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1ee0>
	v_mul_lo_u32 v3, v3, s33                                   // 000000102814: D72C0003 00004303
	s_mov_b32 s12, exec_lo                                     // 00000010281C: BE8C007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102820: BF870091
	v_lshlrev_b64 v[3:4], 2, v[3:4]                            // 000000102824: D73C0003 00020682
	v_add_co_u32 v3, s3, v7, v3                                // 00000010282C: D7000303 00020707
	s_delay_alu instid0(VALU_DEP_1)                            // 000000102834: BF870001
	v_add_co_ci_u32_e64 v4, null, v8, v4, s3                   // 000000102838: D5207C04 000E0908
	global_load_b32 v14, v[3:4], off                           // 000000102840: DC520000 0E7C0003
	v_cmpx_gt_u32_e64 s6, v6                                   // 000000102848: D4CC007E 00020C06
	s_xor_b32 s12, exec_lo, s12                                // 000000102850: 8D0C0C7E
	s_cbranch_execz 32                                         // 000000102854: BFA50020 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1ed8>
	v_mul_lo_u32 v3, v6, s33                                   // 000000102858: D72C0003 00004306
	v_mov_b32_e32 v4, 0                                        // 000000102860: 7E080280
	s_mov_b32 s13, exec_lo                                     // 000000102864: BE8D007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000102868: BF870121
	v_lshlrev_b64 v[17:18], 2, v[3:4]                          // 00000010286C: D73C0011 00020682
	v_add_nc_u32_e32 v3, s29, v6                               // 000000102874: 4A060C1D
	v_add_co_u32 v17, s3, v7, v17                              // 000000102878: D7000311 00022307
	s_delay_alu instid0(VALU_DEP_1)                            // 000000102880: BF870001
	v_add_co_ci_u32_e64 v18, null, v8, v18, s3                 // 000000102884: D5207C12 000E2508
	global_load_b32 v15, v[17:18], off                         // 00000010288C: DC520000 0F7C0011
	v_cmpx_gt_u32_e64 s6, v3                                   // 000000102894: D4CC007E 00020606
	s_xor_b32 s13, exec_lo, s13                                // 00000010289C: 8D0D0D7E
	s_cbranch_execz 12                                         // 0000001028A0: BFA5000C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1ed4>
	v_mul_lo_u32 v3, v3, s33                                   // 0000001028A4: D72C0003 00004303
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001028AC: BF870091
	v_lshlrev_b64 v[3:4], 2, v[3:4]                            // 0000001028B0: D73C0003 00020682
	v_add_co_u32 v3, s3, v7, v3                                // 0000001028B8: D7000303 00020707
	s_delay_alu instid0(VALU_DEP_1)                            // 0000001028C0: BF870001
	v_add_co_ci_u32_e64 v4, null, v8, v4, s3                   // 0000001028C4: D5207C04 000E0908
	global_load_b32 v16, v[3:4], off                           // 0000001028CC: DC520000 107C0003
	s_or_b32 exec_lo, exec_lo, s13                             // 0000001028D4: 8C7E0D7E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001028D8: BF870009
	s_or_b32 exec_lo, exec_lo, s12                             // 0000001028DC: 8C7E0C7E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001028E0: BF870009
	s_or_b32 exec_lo, exec_lo, s5                              // 0000001028E4: 8C7E057E
	s_and_saveexec_b32 s5, vcc_lo                              // 0000001028E8: BE85206A
	s_cbranch_execz 12                                         // 0000001028EC: BFA5000C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1f20>
	s_waitcnt vmcnt(0)                                         // 0000001028F0: BF8903F7
	v_dual_add_f32 v4, v12, v15 :: v_dual_add_nc_u32 v3, s29, v6// 0000001028F4: C9201F0C 04020C1D
	v_cmp_gt_u32_e32 vcc_lo, s6, v6                            // 0000001028FC: 7C980C06
	v_add_f32_e32 v13, v13, v14                                // 000000102900: 061A1D0D
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)// 000000102904: BF870143
	v_cmp_gt_u32_e64 s3, s6, v3                                // 000000102908: D44C0003 00020606
	v_add_f32_e32 v3, v9, v16                                  // 000000102910: 06062109
	v_cndmask_b32_e32 v12, v12, v4, vcc_lo                     // 000000102914: 0218090C
	s_and_b32 vcc_lo, vcc_lo, s3                               // 000000102918: 8B6A036A
	v_cndmask_b32_e32 v9, v9, v3, vcc_lo                       // 00000010291C: 02120709
	s_or_b32 exec_lo, exec_lo, s5                              // 000000102920: 8C7E057E
	s_waitcnt vmcnt(0)                                         // 000000102924: BF8903F7
	v_add_f32_e32 v11, v11, v5                                 // 000000102928: 06160B0B
	s_or_b32 exec_lo, exec_lo, s4                              // 00000010292C: 8C7E047E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102930: BF870091
	v_add_f32_e32 v3, v13, v11                                 // 000000102934: 0606170D
	v_add_f32_e32 v3, v12, v3                                  // 000000102938: 0606070C
	s_delay_alu instid0(VALU_DEP_1)                            // 00000010293C: BF870001
	v_add_f32_e32 v11, v9, v3                                  // 000000102940: 06160709
	s_cbranch_execnz 182                                       // 000000102944: BFA600B6 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2220>
	v_dual_mov_b32 v11, s31 :: v_dual_mov_b32 v12, s31         // 000000102948: CA10001F 0B0C001F
	v_mov_b32_e32 v3, v2                                       // 000000102950: 7E060302
	v_mov_b32_e32 v13, s31                                     // 000000102954: 7E1A021F
	v_mov_b32_e32 v9, s31                                      // 000000102958: 7E12021F
	s_and_saveexec_b32 s3, s2                                  // 00000010295C: BE832002
	s_cbranch_execz 83                                         // 000000102960: BFA50053 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x20b0>
	v_dual_mov_b32 v9, s31 :: v_dual_mov_b32 v4, 0             // 000000102964: CA10001F 09040080
	v_dual_mov_b32 v12, s31 :: v_dual_mov_b32 v13, s31         // 00000010296C: CA10001F 0C0C001F
	v_mov_b32_e32 v11, s31                                     // 000000102974: 7E16021F
	v_mov_b32_e32 v3, v2                                       // 000000102978: 7E060302
	s_lshl_b32 s4, s29, 1                                      // 00000010297C: 8404811D
	s_mov_b32 s2, 0                                            // 000000102980: BE820080
	s_add_i32 s5, s29, s29                                     // 000000102984: 81051D1D
	s_set_inst_prefetch_distance 0x1                           // 000000102988: BF840001
	s_nop 0                                                    // 00000010298C: BF800000
	s_nop 0                                                    // 000000102990: BF800000
	s_nop 0                                                    // 000000102994: BF800000
	s_nop 0                                                    // 000000102998: BF800000
	s_nop 0                                                    // 00000010299C: BF800000
	s_nop 0                                                    // 0000001029A0: BF800000
	s_nop 0                                                    // 0000001029A4: BF800000
	s_nop 0                                                    // 0000001029A8: BF800000
	s_nop 0                                                    // 0000001029AC: BF800000
	s_nop 0                                                    // 0000001029B0: BF800000
	s_nop 0                                                    // 0000001029B4: BF800000
	s_nop 0                                                    // 0000001029B8: BF800000
	s_nop 0                                                    // 0000001029BC: BF800000
	v_dual_mov_b32 v18, v4 :: v_dual_add_nc_u32 v17, s29, v3   // 0000001029C0: CA200104 1210061D
	v_dual_mov_b32 v15, v4 :: v_dual_add_nc_u32 v14, s4, v3    // 0000001029C8: CA200104 0F0E0604
	v_lshlrev_b64 v[5:6], 2, v[3:4]                            // 0000001029D0: D73C0005 00020682
	v_add_nc_u32_e32 v3, s30, v3                               // 0000001029D8: 4A06061E
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)// 0000001029DC: BF870214
	v_lshlrev_b64 v[18:19], 2, v[17:18]                        // 0000001029E0: D73C0012 00022282
	v_lshlrev_b64 v[14:15], 2, v[14:15]                        // 0000001029E8: D73C000E 00021C82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000001029F0: BF8700A3
	v_lshlrev_b64 v[20:21], 2, v[3:4]                          // 0000001029F4: D73C0014 00020682
	v_add_co_u32 v5, vcc_lo, v7, v5                            // 0000001029FC: D7006A05 00020B07
	v_add_co_ci_u32_e64 v6, null, v8, v6, vcc_lo               // 000000102A04: D5207C06 01AA0D08
	v_add_co_u32 v18, vcc_lo, v7, v18                          // 000000102A0C: D7006A12 00022507
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000102A14: BF8700A1
	v_add_co_ci_u32_e64 v19, null, v8, v19, vcc_lo             // 000000102A18: D5207C13 01AA2708
	v_add_co_u32 v22, vcc_lo, v7, v14                          // 000000102A20: D7006A16 00021D07
	v_add_co_ci_u32_e64 v23, null, v8, v15, vcc_lo             // 000000102A28: D5207C17 01AA1F08
	v_add_co_u32 v20, vcc_lo, v7, v20                          // 000000102A30: D7006A14 00022907
	s_delay_alu instid0(VALU_DEP_1)                            // 000000102A38: BF870001
	v_add_co_ci_u32_e64 v21, null, v8, v21, vcc_lo             // 000000102A3C: D5207C15 01AA2B08
	s_clause 0x3                                               // 000000102A44: BF850003
	global_load_b32 v5, v[5:6], off                            // 000000102A48: DC520000 057C0005
	global_load_b32 v14, v[18:19], off                         // 000000102A50: DC520000 0E7C0012
	global_load_b32 v15, v[22:23], off                         // 000000102A58: DC520000 0F7C0016
	global_load_b32 v16, v[20:21], off                         // 000000102A60: DC520000 107C0014
	v_add3_u32 v3, s5, s29, v17                                // 000000102A68: D6550003 04443A05
	s_waitcnt vmcnt(3)                                         // 000000102A70: BF890FF7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102A74: BF870091
	v_dual_add_f32 v11, v11, v5 :: v_dual_add_nc_u32 v6, s30, v3// 000000102A78: C9200B0B 0B06061E
	v_cmp_le_u32_e32 vcc_lo, s6, v6                            // 000000102A80: 7C960C06
	s_waitcnt vmcnt(1)                                         // 000000102A84: BF8907F7
	v_dual_add_f32 v13, v13, v14 :: v_dual_add_f32 v12, v12, v15// 000000102A88: C9081D0D 0D0C1F0C
	s_waitcnt vmcnt(0)                                         // 000000102A90: BF8903F7
	v_add_f32_e32 v9, v9, v16                                  // 000000102A94: 06122109
	s_or_b32 s2, vcc_lo, s2                                    // 000000102A98: 8C02026A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000102A9C: BF870009
	s_and_not1_b32 exec_lo, exec_lo, s2                        // 000000102AA0: 917E027E
	s_cbranch_execnz 65478                                     // 000000102AA4: BFA6FFC6 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1fc0>
	s_set_inst_prefetch_distance 0x2                           // 000000102AA8: BF840002
	s_or_b32 exec_lo, exec_lo, s2                              // 000000102AAC: 8C7E027E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000102AB0: BF870499
	s_or_b32 exec_lo, exec_lo, s3                              // 000000102AB4: 8C7E037E
	s_mov_b32 s3, exec_lo                                      // 000000102AB8: BE83007E
	v_cmpx_gt_u32_e64 s6, v3                                   // 000000102ABC: D4CC007E 00020606
	s_cbranch_execz 80                                         // 000000102AC4: BFA50050 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2208>
	v_mov_b32_e32 v4, 0                                        // 000000102AC8: 7E080280
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000102ACC: BF870121
	v_lshlrev_b64 v[5:6], 2, v[3:4]                            // 000000102AD0: D73C0005 00020682
	v_add_nc_u32_e32 v3, s29, v3                               // 000000102AD8: 4A06061D
	v_add_co_u32 v5, vcc_lo, v7, v5                            // 000000102ADC: D7006A05 00020B07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 000000102AE4: BF870191
	v_add_co_ci_u32_e64 v6, null, v8, v6, vcc_lo               // 000000102AE8: D5207C06 01AA0D08
	v_cmp_gt_u32_e32 vcc_lo, s6, v3                            // 000000102AF0: 7C980606
	global_load_b32 v17, v[5:6], off                           // 000000102AF4: DC520000 117C0005
	v_add_nc_u32_e32 v5, s29, v3                               // 000000102AFC: 4A0A061D
	s_and_saveexec_b32 s4, vcc_lo                              // 000000102B00: BE84206A
	s_cbranch_execz 45                                         // 000000102B04: BFA5002D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x21bc>
	v_lshlrev_b64 v[3:4], 2, v[3:4]                            // 000000102B08: D73C0003 00020682
	s_mov_b32 s5, exec_lo                                      // 000000102B10: BE85007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102B14: BF870091
	v_add_co_u32 v3, s2, v7, v3                                // 000000102B18: D7000203 00020707
	v_add_co_ci_u32_e64 v4, null, v8, v4, s2                   // 000000102B20: D5207C04 000A0908
	global_load_b32 v14, v[3:4], off                           // 000000102B28: DC520000 0E7C0003
	v_cmpx_gt_u32_e64 s6, v5                                   // 000000102B30: D4CC007E 00020A06
	s_xor_b32 s5, exec_lo, s5                                  // 000000102B38: 8D05057E
	s_cbranch_execz 29                                         // 000000102B3C: BFA5001D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x21b4>
	v_mov_b32_e32 v6, 0                                        // 000000102B40: 7E0C0280
	s_mov_b32 s12, exec_lo                                     // 000000102B44: BE8C007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102B48: BF870091
	v_lshlrev_b64 v[3:4], 2, v[5:6]                            // 000000102B4C: D73C0003 00020A82
	v_add_co_u32 v3, s2, v7, v3                                // 000000102B54: D7000203 00020707
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 000000102B5C: BF8700B1
	v_add_co_ci_u32_e64 v4, null, v8, v4, s2                   // 000000102B60: D5207C04 000A0908
	global_load_b32 v15, v[3:4], off                           // 000000102B68: DC520000 0F7C0003
	v_add_nc_u32_e32 v3, s29, v5                               // 000000102B70: 4A060A1D
	v_cmpx_gt_u32_e64 s6, v3                                   // 000000102B74: D4CC007E 00020606
	s_xor_b32 s12, exec_lo, s12                                // 000000102B7C: 8D0C0C7E
	s_cbranch_execz 11                                         // 000000102B80: BFA5000B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x21b0>
	v_mov_b32_e32 v4, v6                                       // 000000102B84: 7E080306
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102B88: BF870091
	v_lshlrev_b64 v[3:4], 2, v[3:4]                            // 000000102B8C: D73C0003 00020682
	v_add_co_u32 v3, s2, v7, v3                                // 000000102B94: D7000203 00020707
	s_delay_alu instid0(VALU_DEP_1)                            // 000000102B9C: BF870001
	v_add_co_ci_u32_e64 v4, null, v8, v4, s2                   // 000000102BA0: D5207C04 000A0908
	global_load_b32 v16, v[3:4], off                           // 000000102BA8: DC520000 107C0003
	s_or_b32 exec_lo, exec_lo, s12                             // 000000102BB0: 8C7E0C7E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000102BB4: BF870009
	s_or_b32 exec_lo, exec_lo, s5                              // 000000102BB8: 8C7E057E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000102BBC: BF870009
	s_or_b32 exec_lo, exec_lo, s4                              // 000000102BC0: 8C7E047E
	s_and_saveexec_b32 s4, vcc_lo                              // 000000102BC4: BE84206A
	s_cbranch_execz 12                                         // 000000102BC8: BFA5000C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x21fc>
	s_waitcnt vmcnt(0)                                         // 000000102BCC: BF8903F7
	v_dual_add_f32 v4, v12, v15 :: v_dual_add_nc_u32 v3, s29, v5// 000000102BD0: C9201F0C 04020A1D
	v_cmp_gt_u32_e32 vcc_lo, s6, v5                            // 000000102BD8: 7C980A06
	v_add_f32_e32 v13, v13, v14                                // 000000102BDC: 061A1D0D
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)// 000000102BE0: BF870143
	v_cmp_gt_u32_e64 s2, s6, v3                                // 000000102BE4: D44C0002 00020606
	v_add_f32_e32 v3, v9, v16                                  // 000000102BEC: 06062109
	v_cndmask_b32_e32 v12, v12, v4, vcc_lo                     // 000000102BF0: 0218090C
	s_and_b32 vcc_lo, vcc_lo, s2                               // 000000102BF4: 8B6A026A
	v_cndmask_b32_e32 v9, v9, v3, vcc_lo                       // 000000102BF8: 02120709
	s_or_b32 exec_lo, exec_lo, s4                              // 000000102BFC: 8C7E047E
	s_waitcnt vmcnt(0)                                         // 000000102C00: BF8903F7
	v_add_f32_e32 v11, v11, v17                                // 000000102C04: 0616230B
	s_or_b32 exec_lo, exec_lo, s3                              // 000000102C08: 8C7E037E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102C0C: BF870091
	v_add_f32_e32 v3, v13, v11                                 // 000000102C10: 0606170D
	v_add_f32_e32 v3, v12, v3                                  // 000000102C14: 0606070C
	s_delay_alu instid0(VALU_DEP_1)                            // 000000102C18: BF870001
	v_add_f32_e32 v11, v9, v3                                  // 000000102C1C: 06160709
	s_cbranch_execnz 154                                       // 000000102C20: BFA6009A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x248c>
	s_load_b32 s4, s[0:1], 0x4                                 // 000000102C24: F4000100 F8000004
	v_bfe_u32 v6, v7, 2, 2                                     // 000000102C2C: D6100006 02090507
	v_mov_b32_e32 v5, s6                                       // 000000102C34: 7E0A0206
	s_mov_b32 s5, exec_lo                                      // 000000102C38: BE85007E
	s_waitcnt lgkmcnt(0)                                       // 000000102C3C: BF89FC07
	v_mov_b32_e32 v4, s4                                       // 000000102C40: 7E080204
	v_cmpx_ne_u32_e32 0, v6                                    // 000000102C44: 7D9A0C80
	s_cbranch_execz 50                                         // 000000102C48: BFA50032 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2314>
	v_lshlrev_b32_e32 v4, 2, v6                                // 000000102C4C: 30080C82
	v_cmp_ge_u32_e32 vcc_lo, v1, v6                            // 000000102C50: 7C9C0D01
	v_cmp_gt_u32_e64 s2, 4, v1                                 // 000000102C54: D44C0002 00020284
	v_lshrrev_b32_e32 v3, 2, v7                                // 000000102C5C: 32060E82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102C60: BF870094
	v_sub_co_u32 v6, s3, v7, v4                                // 000000102C64: D7010306 00020907
	v_subrev_co_ci_u32_e64 v8, null, 0, v8, s3                 // 000000102C6C: D5227C08 000E1080
	v_mov_b32_e32 v4, s4                                       // 000000102C74: 7E080204
	s_and_b32 s3, vcc_lo, s2                                   // 000000102C78: 8B03026A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000102C7C: BF870009
	s_and_saveexec_b32 s2, s3                                  // 000000102C80: BE822003
	s_cbranch_execz 26                                         // 000000102C84: BFA5001A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x22f0>
	v_cmp_eq_u32_e32 vcc_lo, 0, v0                             // 000000102C88: 7C940080
	s_cmp_eq_u32 s9, 0                                         // 000000102C8C: BF068009
	v_mov_b32_e32 v4, s4                                       // 000000102C90: 7E080204
	s_cselect_b32 s3, -1, 0                                    // 000000102C94: 980380C1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)// 000000102C98: BF8704D9
	s_or_b32 s3, vcc_lo, s3                                    // 000000102C9C: 8C03036A
	s_cmp_eq_u32 s10, 0                                        // 000000102CA0: BF06800A
	s_cselect_b32 s12, -1, 0                                   // 000000102CA4: 980C80C1
	s_cmp_eq_u32 s15, 0                                        // 000000102CA8: BF06800F
	s_cselect_b32 s13, -1, 0                                   // 000000102CAC: 980D80C1
	s_or_b32 s12, s13, s12                                     // 000000102CB0: 8C0C0C0D
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000102CB4: BF870499
	s_and_b32 s12, s3, s12                                     // 000000102CB8: 8B0C0C03
	s_and_saveexec_b32 s3, s12                                 // 000000102CBC: BE83200C
	s_cbranch_execz 10                                         // 000000102CC0: BFA5000A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x22ec>
	v_lshlrev_b32_e32 v4, 2, v1                                // 000000102CC4: 30080282
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102CC8: BF870091
	v_add_co_u32 v4, vcc_lo, v6, v4                            // 000000102CCC: D7006A04 00020906
	v_add_co_ci_u32_e64 v5, null, 0, v8, vcc_lo                // 000000102CD4: D5207C05 01AA1080
	global_load_b32 v4, v[4:5], off                            // 000000102CDC: DC520000 047C0004
	s_waitcnt vmcnt(0)                                         // 000000102CE4: BF8903F7
	v_add_f32_e32 v4, s4, v4                                   // 000000102CE8: 06080804
	s_or_b32 exec_lo, exec_lo, s3                              // 000000102CEC: 8C7E037E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 000000102CF0: BF8700B9
	s_or_b32 exec_lo, exec_lo, s2                              // 000000102CF4: 8C7E027E
	v_or_b32_e32 v3, -4, v3                                    // 000000102CF8: 380606C4
	v_add_co_u32 v7, vcc_lo, v6, 16                            // 000000102CFC: D7006A07 00012106
	v_add_co_ci_u32_e64 v8, null, 0, v8, vcc_lo                // 000000102D04: D5207C08 01AA1080
	s_delay_alu instid0(VALU_DEP_3)                            // 000000102D0C: BF870003
	v_add_nc_u32_e32 v5, s6, v3                                // 000000102D10: 4A0A0606
	s_or_b32 exec_lo, exec_lo, s5                              // 000000102D14: 8C7E057E
	v_dual_mov_b32 v6, s4 :: v_dual_mov_b32 v9, s4             // 000000102D18: CA100004 06080004
	v_lshl_or_b32 v3, v2, 2, 3                                 // 000000102D20: D6560003 020D0502
	v_mov_b32_e32 v11, s4                                      // 000000102D28: 7E160204
	s_mov_b32 s2, exec_lo                                      // 000000102D2C: BE82007E
	s_delay_alu instid0(VALU_DEP_2)                            // 000000102D30: BF870002
	v_cmpx_lt_u32_e64 v3, v5                                   // 000000102D34: D4C9007E 00020B03
	s_cbranch_execz 40                                         // 000000102D3C: BFA50028 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x23e0>
	s_load_b32 s3, s[0:1], 0x14                                // 000000102D40: F40000C0 F8000014
	v_dual_mov_b32 v6, s4 :: v_dual_mov_b32 v3, 0              // 000000102D48: CA100004 06020080
	v_mov_b32_e32 v9, s4                                       // 000000102D50: 7E120204
	v_mov_b32_e32 v11, s4                                      // 000000102D54: 7E160204
	s_mov_b32 s4, 0                                            // 000000102D58: BE840080
	s_nop 0                                                    // 000000102D5C: BF800000
	s_nop 0                                                    // 000000102D60: BF800000
	s_nop 0                                                    // 000000102D64: BF800000
	s_nop 0                                                    // 000000102D68: BF800000
	s_nop 0                                                    // 000000102D6C: BF800000
	s_nop 0                                                    // 000000102D70: BF800000
	s_nop 0                                                    // 000000102D74: BF800000
	s_nop 0                                                    // 000000102D78: BF800000
	s_nop 0                                                    // 000000102D7C: BF800000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102D80: BF870093
	v_lshlrev_b64 v[12:13], 4, v[2:3]                          // 000000102D84: D73C000C 00020484
	v_add_co_u32 v12, vcc_lo, v7, v12                          // 000000102D8C: D7006A0C 00021907
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)// 000000102D94: BF8700C1
	v_add_co_ci_u32_e64 v13, null, v8, v13, vcc_lo             // 000000102D98: D5207C0D 01AA1B08
	global_load_b128 v[12:15], v[12:13], off                   // 000000102DA0: DC5E0000 0C7C000C
	s_waitcnt vmcnt(0) lgkmcnt(0)                              // 000000102DA8: BF890007
	v_dual_add_f32 v11, v11, v15 :: v_dual_add_nc_u32 v2, s3, v2// 000000102DAC: C9201F0B 0B020403
	v_lshl_or_b32 v16, v2, 2, 3                                // 000000102DB4: D6560010 020D0502
	v_dual_add_f32 v4, v4, v12 :: v_dual_add_f32 v9, v9, v14   // 000000102DBC: C9081904 04081D09
	v_add_f32_e32 v6, v6, v13                                  // 000000102DC4: 060C1B06
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 000000102DC8: BF8704A3
	v_cmp_ge_u32_e32 vcc_lo, v16, v5                           // 000000102DCC: 7C9C0B10
	s_or_b32 s4, vcc_lo, s4                                    // 000000102DD0: 8C04046A
	s_and_not1_b32 exec_lo, exec_lo, s4                        // 000000102DD4: 917E047E
	s_cbranch_execnz 65513                                     // 000000102DD8: BFA6FFE9 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2380>
	s_or_b32 exec_lo, exec_lo, s4                              // 000000102DDC: 8C7E047E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)// 000000102DE0: BF8704C9
	s_or_b32 exec_lo, exec_lo, s2                              // 000000102DE4: 8C7E027E
	v_cmp_eq_u32_e32 vcc_lo, 0, v0                             // 000000102DE8: 7C940080
	s_cmp_eq_u32 s9, 0                                         // 000000102DEC: BF068009
	s_cselect_b32 s2, -1, 0                                    // 000000102DF0: 980280C1
	s_or_b32 s2, vcc_lo, s2                                    // 000000102DF4: 8C02026A
	s_cmp_eq_u32 s10, 0                                        // 000000102DF8: BF06800A
	s_cselect_b32 s3, -1, 0                                    // 000000102DFC: 980380C1
	s_cmp_eq_u32 s15, 0                                        // 000000102E00: BF06800F
	s_cselect_b32 s4, -1, 0                                    // 000000102E04: 980480C1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000102E08: BF870499
	s_or_b32 s3, s4, s3                                        // 000000102E0C: 8C030304
	s_and_b32 s3, s2, s3                                       // 000000102E10: 8B030302
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000102E14: BF870009
	s_and_saveexec_b32 s2, s3                                  // 000000102E18: BE822003
	s_cbranch_execz 21                                         // 000000102E1C: BFA50015 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2474>
	v_and_b32_e32 v2, -4, v5                                   // 000000102E20: 36040AC4
	s_mov_b32 s3, exec_lo                                      // 000000102E24: BE83007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102E28: BF870091
	v_add_nc_u32_e32 v2, v2, v1                                // 000000102E2C: 4A040302
	v_cmpx_lt_u32_e64 v2, v5                                   // 000000102E30: D4C9007E 00020B02
	s_cbranch_execz 13                                         // 000000102E38: BFA5000D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2470>
	v_ashrrev_i32_e32 v3, 31, v2                               // 000000102E3C: 3406049F
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102E40: BF870091
	v_lshlrev_b64 v[2:3], 2, v[2:3]                            // 000000102E44: D73C0002 00020482
	v_add_co_u32 v2, vcc_lo, v7, v2                            // 000000102E4C: D7006A02 00020507
	s_delay_alu instid0(VALU_DEP_1)                            // 000000102E54: BF870001
	v_add_co_ci_u32_e64 v3, null, v8, v3, vcc_lo               // 000000102E58: D5207C03 01AA0708
	global_load_b32 v2, v[2:3], off                            // 000000102E60: DC520000 027C0002
	s_waitcnt vmcnt(0)                                         // 000000102E68: BF8903F7
	v_add_f32_e32 v4, v4, v2                                   // 000000102E6C: 06080504
	s_or_b32 exec_lo, exec_lo, s3                              // 000000102E70: 8C7E037E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102E74: BF870099
	s_or_b32 exec_lo, exec_lo, s2                              // 000000102E78: 8C7E027E
	v_add_f32_e32 v2, v4, v6                                   // 000000102E7C: 06040D04
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102E80: BF870091
	v_add_f32_e32 v2, v9, v2                                   // 000000102E84: 06040509
	v_add_f32_e32 v11, v11, v2                                 // 000000102E88: 0616050B
	s_or_b32 exec_lo, exec_lo, s28                             // 000000102E8C: 8C7E1C7E
	s_cmp_eq_u32 s9, 0                                         // 000000102E90: BF068009
	s_cselect_b32 s6, -1, 0                                    // 000000102E94: 980680C1
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000102E98: BF870009
	s_and_b32 vcc_lo, exec_lo, s6                              // 000000102E9C: 8B6A067E
	s_cbranch_vccnz 56                                         // 000000102EA0: BFA40038 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2584>
	s_load_b32 s3, s[0:1], 0x2dc                               // 000000102EA4: F40000C0 F80002DC
	v_lshlrev_b32_e32 v3, 2, v1                                // 000000102EAC: 30060282
	s_waitcnt lgkmcnt(0)                                       // 000000102EB0: BF89FC07
	s_and_b32 s2, s3, 0xffff                                   // 000000102EB4: 8B02FF03 0000FFFF
	s_lshr_b32 s3, s3, 16                                      // 000000102EBC: 85039003
	v_mul_u32_u24_e32 v2, s2, v0                               // 000000102EC0: 16040002
	s_cmp_lt_u32 s3, 2                                         // 000000102EC4: BF0A8203
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102EC8: BF870091
	v_lshlrev_b32_e32 v2, 2, v2                                // 000000102ECC: 30040482
	v_add3_u32 v2, 1, v2, v3                                   // 000000102ED0: D6550002 040E0481
	ds_store_b32 v2, v11                                       // 000000102ED8: D8340000 00000B02
	s_cbranch_scc1 40                                          // 000000102EE0: BFA20028 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2584>
	v_lshl_add_u32 v3, v1, 2, 1                                // 000000102EE4: D6460003 02050501
	s_and_b32 s3, 0xffff, s3                                   // 000000102EEC: 8B0303FF 0000FFFF
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000102EF4: BF870009
	s_mov_b32 s4, s3                                           // 000000102EF8: BE840003
	s_nop 0                                                    // 000000102EFC: BF800000
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000102F00: BF870009
	s_lshr_b32 s5, s4, 1                                       // 000000102F04: 85058104
	s_mov_b32 s9, exec_lo                                      // 000000102F08: BE89007E
	s_waitcnt lgkmcnt(0)                                       // 000000102F0C: BF89FC07
	s_barrier                                                  // 000000102F10: BFBD0000
	buffer_gl0_inv                                             // 000000102F14: E0AC0000 00000000
	v_cmpx_gt_u32_e64 s5, v0                                   // 000000102F1C: D4CC007E 00020005
	s_cbranch_execz 17                                         // 000000102F24: BFA50011 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x256c>
	v_add_nc_u32_e32 v4, s5, v0                                // 000000102F28: 4A080005
	s_mov_b32 s12, exec_lo                                     // 000000102F2C: BE8C007E
	s_delay_alu instid0(VALU_DEP_1)                            // 000000102F30: BF870001
	v_cmpx_gt_u32_e64 s3, v4                                   // 000000102F34: D4CC007E 00020803
	s_cbranch_execz 10                                         // 000000102F3C: BFA5000A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2568>
	v_mul_u32_u24_e32 v4, s2, v4                               // 000000102F40: 16080802
	s_delay_alu instid0(VALU_DEP_1)                            // 000000102F44: BF870001
	v_lshl_add_u32 v4, v4, 2, v3                               // 000000102F48: D6460004 040D0504
	ds_load_b32 v4, v4                                         // 000000102F50: D8D80000 04000004
	s_waitcnt lgkmcnt(0)                                       // 000000102F58: BF89FC07
	v_add_f32_e32 v11, v11, v4                                 // 000000102F5C: 0616090B
	ds_store_b32 v2, v11                                       // 000000102F60: D8340000 00000B02
	s_or_b32 exec_lo, exec_lo, s12                             // 000000102F68: 8C7E0C7E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000102F6C: BF870009
	s_or_b32 exec_lo, exec_lo, s9                              // 000000102F70: 8C7E097E
	s_cmp_gt_u32 s4, 3                                         // 000000102F74: BF088304
	s_cbranch_scc0 2                                           // 000000102F78: BFA10002 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2584>
	s_mov_b32 s4, s5                                           // 000000102F7C: BE840005
	s_branch 65503                                             // 000000102F80: BFA0FFDF <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2500>
	s_cmp_eq_u32 s8, 0                                         // 000000102F84: BF068008
	s_cselect_b32 s16, -1, 0                                   // 000000102F88: 981080C1
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000102F8C: BF870009
	s_and_b32 vcc_lo, exec_lo, s16                             // 000000102F90: 8B6A107E
	s_cbranch_vccnz 80                                         // 000000102F94: BFA40050 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x26d8>
	s_load_b32 s2, s[0:1], 0x2dc                               // 000000102F98: F4000080 F80002DC
	s_waitcnt lgkmcnt(0)                                       // 000000102FA0: BF89FC07
	s_and_b32 s3, s2, 0xffff                                   // 000000102FA4: 8B03FF02 0000FFFF
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000102FAC: BF870009
	s_cmp_lt_u32 s3, 33                                        // 000000102FB0: BF0AA103
	s_cbranch_scc1 46                                          // 000000102FB4: BFA2002E <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2670>
	v_mul_u32_u24_e32 v2, s3, v0                               // 000000102FB8: 16040003
	v_lshlrev_b32_e32 v3, 2, v1                                // 000000102FBC: 30060282
	s_cmp_lt_u32 s3, 64                                        // 000000102FC0: BF0AC003
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000102FC4: BF870092
	v_lshlrev_b32_e32 v2, 2, v2                                // 000000102FC8: 30040482
	v_add3_u32 v2, 1, v2, v3                                   // 000000102FCC: D6550002 040E0481
	ds_store_b32 v2, v11                                       // 000000102FD4: D8340000 00000B02
	s_cbranch_scc1 35                                          // 000000102FDC: BFA20023 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x266c>
	s_mov_b32 s4, s3                                           // 000000102FE0: BE840003
	s_nop 0                                                    // 000000102FE4: BF800000
	s_nop 0                                                    // 000000102FE8: BF800000
	s_nop 0                                                    // 000000102FEC: BF800000
	s_nop 0                                                    // 000000102FF0: BF800000
	s_nop 0                                                    // 000000102FF4: BF800000
	s_nop 0                                                    // 000000102FF8: BF800000
	s_nop 0                                                    // 000000102FFC: BF800000
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103000: BF870009
	s_lshr_b32 s5, s4, 1                                       // 000000103004: 85058104
	s_waitcnt lgkmcnt(0)                                       // 000000103008: BF89FC07
	v_add_nc_u32_e32 v3, s5, v1                                // 00000010300C: 4A060205
	v_cmp_gt_u32_e32 vcc_lo, s5, v1                            // 000000103010: 7C980205
	s_barrier                                                  // 000000103014: BFBD0000
	buffer_gl0_inv                                             // 000000103018: E0AC0000 00000000
	v_cmp_gt_u32_e64 s2, s3, v3                                // 000000103020: D44C0002 00020603
	s_and_b32 s8, vcc_lo, s2                                   // 000000103028: 8B08026A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000010302C: BF870009
	s_and_saveexec_b32 s2, s8                                  // 000000103030: BE822008
	s_cbranch_execz 8                                          // 000000103034: BFA50008 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2658>
	v_lshl_add_u32 v3, s5, 2, v2                               // 000000103038: D6460003 04090405
	ds_load_b32 v3, v3                                         // 000000103040: D8D80000 03000003
	s_waitcnt lgkmcnt(0)                                       // 000000103048: BF89FC07
	v_add_f32_e32 v11, v11, v3                                 // 00000010304C: 0616070B
	ds_store_b32 v2, v11                                       // 000000103050: D8340000 00000B02
	s_or_b32 exec_lo, exec_lo, s2                              // 000000103058: 8C7E027E
	s_cmpk_gt_u32 s4, 0x7f                                     // 00000010305C: B584007F
	s_cbranch_scc0 2                                           // 000000103060: BFA10002 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x266c>
	s_mov_b32 s4, s5                                           // 000000103064: BE840005
	s_branch 65509                                             // 000000103068: BFA0FFE5 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2600>
	s_mov_b32 s3, 32                                           // 00000010306C: BE8300A0
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103070: BF870009
	s_cmp_lt_u32 s3, 2                                         // 000000103074: BF0A8203
	s_waitcnt lgkmcnt(0)                                       // 000000103078: BF89FC07
	s_barrier                                                  // 00000010307C: BFBD0000
	buffer_gl0_inv                                             // 000000103080: E0AC0000 00000000
	s_cbranch_scc1 19                                          // 000000103088: BFA20013 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x26d8>
	v_mbcnt_lo_u32_b32 v2, -1, 0                               // 00000010308C: D71F0002 000100C1
	s_mov_b32 s2, 1                                            // 000000103094: BE820081
	s_delay_alu instid0(VALU_DEP_1)                            // 000000103098: BF870001
	v_sub_nc_u32_e32 v3, 32, v2                                // 00000010309C: 4C0604A0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)// 0000001030A0: BF8704B1
	v_cmp_lt_i32_e32 vcc_lo, s2, v3                            // 0000001030A4: 7C820602
	v_cndmask_b32_e64 v4, 0, s2, vcc_lo                        // 0000001030A8: D5010004 01A80480
	s_lshl_b32 s2, s2, 1                                       // 0000001030B0: 84028102
	s_cmp_lt_i32 s2, s3                                        // 0000001030B4: BF040302
	s_delay_alu instid0(VALU_DEP_1)                            // 0000001030B8: BF870001
	v_add_lshl_u32 v4, v4, v2, 2                               // 0000001030BC: D6470004 020A0504
	ds_bpermute_b32 v4, v4, v11                                // 0000001030C4: DACC0000 04000B04
	s_waitcnt lgkmcnt(0)                                       // 0000001030CC: BF89FC07
	v_add_f32_e32 v11, v11, v4                                 // 0000001030D0: 0616090B
	s_cbranch_scc1 65522                                       // 0000001030D4: BFA2FFF2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x26a0>
	s_add_u32 s2, s0, 0x210                                    // 0000001030D8: 8002FF00 00000210
	s_addc_u32 s3, s1, 0                                       // 0000001030E0: 82038001
	s_and_not1_b32 vcc_lo, exec_lo, s27                        // 0000001030E4: 916A1B7E
	s_min_u32 s12, s11, 15                                     // 0000001030E8: 898C8F0B
	s_cbranch_vccnz 90                                         // 0000001030EC: BFA4005A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2858>
	s_cmp_eq_u32 s26, 0                                        // 0000001030F0: BF06801A
	s_mov_b32 s13, 0                                           // 0000001030F4: BE8D0080
	s_cbranch_scc1 89                                          // 0000001030F8: BFA20059 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2860>
	s_add_i32 s18, s12, 1                                      // 0000001030FC: 8112810C
	s_cmp_eq_u32 s11, 2                                        // 000000103100: BF06820B
	s_cbranch_scc1 88                                          // 000000103104: BFA20058 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2868>
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, v10             // 000000103108: CA100080 0202010A
	s_and_b32 s17, s18, 28                                     // 000000103110: 8B119C12
	s_mov_b32 s19, 0                                           // 000000103114: BE930080
	s_mov_b64 s[4:5], s[0:1]                                   // 000000103118: BE840100
	s_mov_b64 s[8:9], s[2:3]                                   // 00000010311C: BE880102
	s_clause 0x1                                               // 000000103120: BF850001
	s_load_b256 s[36:43], s[4:5], 0x150                        // 000000103124: F40C0902 F8000150
	s_load_b128 s[20:23], s[4:5], 0x170                        // 00000010312C: F4080502 F8000170
	s_add_i32 s19, s19, 4                                      // 000000103134: 81138413
	s_waitcnt lgkmcnt(0)                                       // 000000103138: BF89FC07
	v_mul_hi_u32 v4, s37, v3                                   // 00000010313C: D72D0004 00020625
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000103144: BF870091
	v_add_nc_u32_e32 v4, v3, v4                                // 000000103148: 4A080903
	v_lshrrev_b32_e32 v4, s38, v4                              // 00000010314C: 32080826
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000103150: BF870121
	v_mul_hi_u32 v5, s40, v4                                   // 000000103154: D72D0005 00020828
	v_mul_lo_u32 v8, v4, s36                                   // 00000010315C: D72C0008 00004904
	v_add_nc_u32_e32 v5, v4, v5                                // 000000103164: 4A0A0B04
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000103168: BF870112
	v_sub_nc_u32_e32 v8, v3, v8                                // 00000010316C: 4C101103
	v_lshrrev_b32_e32 v5, s41, v5                              // 000000103170: 320A0A29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000103174: BF870121
	v_mul_hi_u32 v6, s43, v5                                   // 000000103178: D72D0006 00020A2B
	v_mul_lo_u32 v9, v5, s39                                   // 000000103180: D72C0009 00004F05
	v_add_nc_u32_e32 v6, v5, v6                                // 000000103188: 4A0C0D05
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000010318C: BF870112
	v_sub_nc_u32_e32 v4, v4, v9                                // 000000103190: 4C081304
	v_lshrrev_b32_e32 v6, s20, v6                              // 000000103194: 320C0C14
	s_load_b32 s20, s[8:9], null                               // 000000103198: F4000504 F8000000
	s_delay_alu instid0(VALU_DEP_1)                            // 0000001031A0: BF870001
	v_mul_hi_u32 v7, s22, v6                                   // 0000001031A4: D72D0007 00020C16
	s_clause 0x2                                               // 0000001031AC: BF850002
	s_load_b32 s22, s[8:9], 0x8                                // 0000001031B0: F4000584 F8000008
	s_load_b32 s24, s[8:9], 0x10                               // 0000001031B8: F4000604 F8000010
	s_load_b32 s25, s[8:9], 0x18                               // 0000001031C0: F4000644 F8000018
	s_add_u32 s8, s8, 32                                       // 0000001031C8: 8008A008
	s_addc_u32 s9, s9, 0                                       // 0000001031CC: 82098009
	s_add_u32 s4, s4, 48                                       // 0000001031D0: 8004B004
	s_addc_u32 s5, s5, 0                                       // 0000001031D4: 82058005
	s_cmp_lg_u32 s17, s19                                      // 0000001031D8: BF071311
	v_add_nc_u32_e32 v7, v6, v7                                // 0000001031DC: 4A0E0F06
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)// 0000001031E0: BF8701C1
	v_lshrrev_b32_e32 v3, s23, v7                              // 0000001031E4: 32060E17
	v_mul_lo_u32 v7, v6, s42                                   // 0000001031E8: D72C0007 00005506
	s_waitcnt lgkmcnt(0)                                       // 0000001031F0: BF89FC07
	v_mul_lo_u32 v8, v8, s20                                   // 0000001031F4: D72C0008 00002908
	v_mul_lo_u32 v12, v3, s21                                  // 0000001031FC: D72C000C 00002B03
	v_mul_lo_u32 v4, v4, s22                                   // 000000103204: D72C0004 00002D04
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)// 00000010320C: BF870194
	v_sub_nc_u32_e32 v5, v5, v7                                // 000000103210: 4C0A0F05
	v_sub_nc_u32_e32 v6, v6, v12                               // 000000103214: 4C0C1906
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)// 000000103218: BF870212
	v_mul_lo_u32 v5, v5, s24                                   // 00000010321C: D72C0005 00003105
	v_add3_u32 v2, v8, v2, v4                                  // 000000103224: D6550002 04120508
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000010322C: BF870093
	v_mul_lo_u32 v6, v6, s25                                   // 000000103230: D72C0006 00003306
	v_add3_u32 v2, v5, v2, v6                                  // 000000103238: D6550002 041A0505
	s_cbranch_scc1 65463                                       // 000000103240: BFA2FFB7 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2720>
	s_and_b32 s18, s18, 3                                      // 000000103244: 8B128312
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103248: BF870009
	s_cmp_eq_u32 s18, 0                                        // 00000010324C: BF068012
	s_cbranch_scc0 12                                          // 000000103250: BFA1000C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2884>
	s_branch 56                                                // 000000103254: BFA00038 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2938>
	s_mov_b32 s13, -1                                          // 000000103258: BE8D00C1
	s_branch 54                                                // 00000010325C: BFA00036 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2938>
	v_mov_b32_e32 v2, 0                                        // 000000103260: 7E040280
	s_branch 52                                                // 000000103264: BFA00034 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2938>
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, v10             // 000000103268: CA100080 0202010A
	s_mov_b32 s17, 0                                           // 000000103270: BE910080
	s_and_b32 s18, s18, 3                                      // 000000103274: 8B128312
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103278: BF870009
	s_cmp_eq_u32 s18, 0                                        // 00000010327C: BF068012
	s_cbranch_scc1 45                                          // 000000103280: BFA2002D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2938>
	s_lshl_b32 s4, s17, 3                                      // 000000103284: 84048311
	s_mul_i32 s8, s17, 12                                      // 000000103288: 96088C11
	s_add_u32 s4, s0, s4                                       // 00000010328C: 80040400
	s_addc_u32 s5, s1, 0                                       // 000000103290: 82058001
	s_add_u32 s4, s4, 0x210                                    // 000000103294: 8004FF04 00000210
	s_addc_u32 s5, s5, 0                                       // 00000010329C: 82058005
	s_add_u32 s8, s0, s8                                       // 0000001032A0: 80080800
	s_addc_u32 s9, s1, 0                                       // 0000001032A4: 82098001
	s_nop 0                                                    // 0000001032A8: BF800000
	s_nop 0                                                    // 0000001032AC: BF800000
	s_nop 0                                                    // 0000001032B0: BF800000
	s_nop 0                                                    // 0000001032B4: BF800000
	s_nop 0                                                    // 0000001032B8: BF800000
	s_nop 0                                                    // 0000001032BC: BF800000
	s_clause 0x1                                               // 0000001032C0: BF850001
	s_load_b64 s[20:21], s[8:9], 0x150                         // 0000001032C4: F4040504 F8000150
	s_load_b32 s17, s[8:9], 0x158                              // 0000001032CC: F4000444 F8000158
	s_load_b32 s19, s[4:5], null                               // 0000001032D4: F40004C2 F8000000
	s_add_u32 s4, s4, 8                                        // 0000001032DC: 80048804
	s_addc_u32 s5, s5, 0                                       // 0000001032E0: 82058005
	s_add_u32 s8, s8, 12                                       // 0000001032E4: 80088C08
	s_addc_u32 s9, s9, 0                                       // 0000001032E8: 82098009
	s_add_i32 s18, s18, -1                                     // 0000001032EC: 8112C112
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 0000001032F0: BF8700B9
	s_cmp_lg_u32 s18, 0                                        // 0000001032F4: BF078012
	s_waitcnt lgkmcnt(0)                                       // 0000001032F8: BF89FC07
	v_mul_hi_u32 v4, s21, v3                                   // 0000001032FC: D72D0004 00020615
	v_add_nc_u32_e32 v4, v3, v4                                // 000000103304: 4A080903
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000103308: BF870091
	v_lshrrev_b32_e32 v6, s17, v4                              // 00000010330C: 320C0811
	v_mul_lo_u32 v4, v6, s20                                   // 000000103310: D72C0004 00002906
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000103318: BF870091
	v_sub_nc_u32_e32 v3, v3, v4                                // 00000010331C: 4C060903
	v_mad_u64_u32 v[4:5], null, v3, s19, v[2:3]                // 000000103320: D6FE7C04 04082703
	s_delay_alu instid0(VALU_DEP_1)                            // 000000103328: BF870001
	v_dual_mov_b32 v3, v6 :: v_dual_mov_b32 v2, v4             // 00000010332C: CA100106 03020104
	s_cbranch_scc1 65506                                       // 000000103334: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x28c0>
	s_and_not1_b32 vcc_lo, exec_lo, s13                        // 000000103338: 916A0D7E
	s_cbranch_vccnz 38                                         // 00000010333C: BFA40026 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x29d8>
	s_clause 0x1                                               // 000000103340: BF850001
	s_load_b128 s[20:23], s[0:1], 0x150                        // 000000103344: F4080500 F8000150
	s_load_b64 s[4:5], s[0:1], 0x160                           // 00000010334C: F4040100 F8000160
	s_cmp_gt_u32 s26, 1                                        // 000000103354: BF08811A
	s_cselect_b32 vcc_lo, -1, 0                                // 000000103358: 986A80C1
	s_waitcnt lgkmcnt(0)                                       // 00000010335C: BF89FC07
	v_mul_hi_u32 v2, s21, v10                                  // 000000103360: D72D0002 00021415
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000103368: BF870091
	v_add_nc_u32_e32 v2, v10, v2                               // 00000010336C: 4A04050A
	v_lshrrev_b32_e32 v2, s22, v2                              // 000000103370: 32040416
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000103374: BF8700A1
	v_mul_hi_u32 v3, v2, s4                                    // 000000103378: D72D0003 00000902
	s_load_b32 s4, s[0:1], 0x218                               // 000000103380: F4000100 F8000218
	v_add_nc_u32_e32 v3, v2, v3                                // 000000103388: 4A060702
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 00000010338C: BF8700A1
	v_lshrrev_b32_e32 v3, s5, v3                               // 000000103390: 32060605
	s_load_b32 s5, s[0:1], 0x210                               // 000000103394: F4000140 F8000210
	v_mul_lo_u32 v3, v3, s23                                   // 00000010339C: D72C0003 00002F03
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 0000001033A4: BF870131
	v_sub_nc_u32_e32 v3, v2, v3                                // 0000001033A8: 4C060702
	v_mul_lo_u32 v2, v2, s20                                   // 0000001033AC: D72C0002 00002902
	s_waitcnt lgkmcnt(0)                                       // 0000001033B4: BF89FC07
	v_mul_lo_u32 v3, v3, s4                                    // 0000001033B8: D72C0003 00000903
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001033C0: BF870112
	v_sub_nc_u32_e32 v5, v10, v2                               // 0000001033C4: 4C0A050A
	v_cndmask_b32_e32 v4, 0, v3, vcc_lo                        // 0000001033C8: 02080680
	s_delay_alu instid0(VALU_DEP_1)                            // 0000001033CC: BF870001
	v_mad_u64_u32 v[2:3], null, v5, s5, v[4:5]                 // 0000001033D0: D6FE7C02 04100B05
	s_clause 0x1                                               // 0000001033D8: BF850001
	s_load_b64 s[8:9], s[0:1], 0x2a8                           // 0000001033DC: F4040200 F80002A8
	s_load_b64 s[4:5], s[0:1], 0x298                           // 0000001033E4: F4040100 F8000298
	s_mov_b32 s17, 0                                           // 0000001033EC: BE910080
	s_waitcnt lgkmcnt(0)                                       // 0000001033F0: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001033F4: BF870091
	v_add_co_u32 v3, s13, s8, v2                               // 0000001033F8: D7000D03 00020408
	v_add_co_ci_u32_e64 v4, null, s9, 0, s13                   // 000000103400: D5207C04 00350009
	s_cmp_lg_u64 s[8:9], 0                                     // 000000103408: BF118008
	s_cselect_b32 vcc_lo, -1, 0                                // 00000010340C: 986A80C1
	s_cmp_eq_u32 s10, 0                                        // 000000103410: BF06800A
	v_dual_cndmask_b32 v6, 0, v4 :: v_dual_cndmask_b32 v5, 0, v3// 000000103414: CA520880 06040680
	s_cbranch_scc1 92                                          // 00000010341C: BFA2005C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2b90>
	s_and_b32 vcc_lo, exec_lo, s27                             // 000000103420: 8B6A1B7E
	s_cbranch_vccz 93                                          // 000000103424: BFA3005D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2b9c>
	s_cmp_eq_u32 s26, 0                                        // 000000103428: BF06801A
	s_mov_b32 s10, 0                                           // 00000010342C: BE8A0080
	s_cbranch_scc1 92                                          // 000000103430: BFA2005C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2ba4>
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, v10             // 000000103434: CA100080 0708010A
	s_add_i32 s12, s12, 1                                      // 00000010343C: 810C810C
	s_cmp_eq_u32 s11, 2                                        // 000000103440: BF06820B
	s_cbranch_scc1 89                                          // 000000103444: BFA20059 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2bac>
	s_and_b32 s11, s12, 28                                     // 000000103448: 8B0B9C0C
	s_mov_b32 s13, 0                                           // 00000010344C: BE8D0080
	s_mov_b64 s[8:9], s[0:1]                                   // 000000103450: BE880100
	s_clause 0x1                                               // 000000103454: BF850001
	s_load_b256 s[36:43], s[8:9], 0x150                        // 000000103458: F40C0904 F8000150
	s_load_b128 s[20:23], s[8:9], 0x170                        // 000000103460: F4080504 F8000170
	s_load_b32 s18, s[2:3], null                               // 000000103468: F4000481 F8000000
	s_add_i32 s13, s13, 4                                      // 000000103470: 810D840D
	s_waitcnt lgkmcnt(0)                                       // 000000103474: BF89FC07
	v_mul_hi_u32 v9, s37, v8                                   // 000000103478: D72D0009 00021025
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000103480: BF870091
	v_add_nc_u32_e32 v9, v8, v9                                // 000000103484: 4A121308
	v_lshrrev_b32_e32 v9, s38, v9                              // 000000103488: 32121226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 00000010348C: BF870121
	v_mul_hi_u32 v12, s40, v9                                  // 000000103490: D72D000C 00021228
	v_mul_lo_u32 v15, v9, s36                                  // 000000103498: D72C000F 00004909
	v_add_nc_u32_e32 v12, v9, v12                              // 0000001034A0: 4A181909
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001034A4: BF870112
	v_sub_nc_u32_e32 v15, v8, v15                              // 0000001034A8: 4C1E1F08
	v_lshrrev_b32_e32 v12, s41, v12                            // 0000001034AC: 32181829
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001034B0: BF870112
	v_mul_lo_u32 v15, v15, s18                                 // 0000001034B4: D72C000F 0000250F
	v_mul_hi_u32 v13, s43, v12                                 // 0000001034BC: D72D000D 0002182B
	v_mul_lo_u32 v16, v12, s39                                 // 0000001034C4: D72C0010 00004F0C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000001034CC: BF870112
	v_add_nc_u32_e32 v13, v12, v13                             // 0000001034D0: 4A1A1B0C
	v_sub_nc_u32_e32 v9, v9, v16                               // 0000001034D4: 4C122109
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)// 0000001034D8: BF8700C2
	v_lshrrev_b32_e32 v13, s20, v13                            // 0000001034DC: 321A1A14
	s_clause 0x1                                               // 0000001034E0: BF850001
	s_load_b32 s19, s[2:3], 0x8                                // 0000001034E4: F40004C1 F8000008
	s_load_b32 s20, s[2:3], 0x10                               // 0000001034EC: F4000501 F8000010
	v_mul_hi_u32 v14, s22, v13                                 // 0000001034F4: D72D000E 00021A16
	s_load_b32 s22, s[2:3], 0x18                               // 0000001034FC: F4000581 F8000018
	s_add_u32 s2, s2, 32                                       // 000000103504: 8002A002
	s_addc_u32 s3, s3, 0                                       // 000000103508: 82038003
	s_add_u32 s8, s8, 48                                       // 00000010350C: 8008B008
	s_addc_u32 s9, s9, 0                                       // 000000103510: 82098009
	s_cmp_lg_u32 s11, s13                                      // 000000103514: BF070D0B
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000103518: BF870091
	v_add_nc_u32_e32 v14, v13, v14                             // 00000010351C: 4A1C1D0D
	v_lshrrev_b32_e32 v8, s23, v14                             // 000000103520: 32101C17
	v_mul_lo_u32 v14, v13, s42                                 // 000000103524: D72C000E 0000550D
	s_waitcnt lgkmcnt(0)                                       // 00000010352C: BF89FC07
	v_mul_lo_u32 v9, v9, s19                                   // 000000103530: D72C0009 00002709
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)// 000000103538: BF870193
	v_mul_lo_u32 v17, v8, s21                                  // 00000010353C: D72C0011 00002B08
	v_sub_nc_u32_e32 v12, v12, v14                             // 000000103544: 4C181D0C
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)// 000000103548: BF870193
	v_add3_u32 v7, v15, v7, v9                                 // 00000010354C: D6550007 04260F0F
	v_sub_nc_u32_e32 v13, v13, v17                             // 000000103554: 4C1A230D
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000103558: BF870113
	v_mul_lo_u32 v12, v12, s20                                 // 00000010355C: D72C000C 0000290C
	v_mul_lo_u32 v13, v13, s22                                 // 000000103564: D72C000D 00002D0D
	s_delay_alu instid0(VALU_DEP_1)                            // 00000010356C: BF870001
	v_add3_u32 v7, v12, v7, v13                                // 000000103570: D6550007 04360F0C
	s_cbranch_scc1 65462                                       // 000000103578: BFA2FFB6 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2a54>
	s_and_b32 s12, s12, 3                                      // 00000010357C: 8B0C830C
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103580: BF870009
	s_cmp_eq_u32 s12, 0                                        // 000000103584: BF06800C
	s_cbranch_scc0 13                                          // 000000103588: BFA1000D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2bc0>
	s_branch 58                                                // 00000010358C: BFA0003A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2c78>
	s_mov_b32 s3, -1                                           // 000000103590: BE8300C1
	s_mov_b32 s10, 0                                           // 000000103594: BE8A0080
	s_branch 662                                               // 000000103598: BFA00296 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x35f4>
	s_mov_b32 s10, -1                                          // 00000010359C: BE8A00C1
	s_branch 53                                                // 0000001035A0: BFA00035 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2c78>
	v_mov_b32_e32 v7, 0                                        // 0000001035A4: 7E0E0280
	s_branch 51                                                // 0000001035A8: BFA00033 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2c78>
	s_mov_b32 s11, 0                                           // 0000001035AC: BE8B0080
	s_and_b32 s12, s12, 3                                      // 0000001035B0: 8B0C830C
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001035B4: BF870009
	s_cmp_eq_u32 s12, 0                                        // 0000001035B8: BF06800C
	s_cbranch_scc1 46                                          // 0000001035BC: BFA2002E <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2c78>
	s_lshl_b32 s2, s11, 3                                      // 0000001035C0: 8402830B
	s_mul_i32 s8, s11, 12                                      // 0000001035C4: 96088C0B
	s_add_u32 s2, s0, s2                                       // 0000001035C8: 80020200
	s_addc_u32 s3, s1, 0                                       // 0000001035CC: 82038001
	s_add_u32 s2, s2, 0x210                                    // 0000001035D0: 8002FF02 00000210
	s_addc_u32 s3, s3, 0                                       // 0000001035D8: 82038003
	s_add_u32 s8, s0, s8                                       // 0000001035DC: 80080800
	s_addc_u32 s9, s1, 0                                       // 0000001035E0: 82098001
	s_nop 0                                                    // 0000001035E4: BF800000
	s_nop 0                                                    // 0000001035E8: BF800000
	s_nop 0                                                    // 0000001035EC: BF800000
	s_nop 0                                                    // 0000001035F0: BF800000
	s_nop 0                                                    // 0000001035F4: BF800000
	s_nop 0                                                    // 0000001035F8: BF800000
	s_nop 0                                                    // 0000001035FC: BF800000
	s_clause 0x1                                               // 000000103600: BF850001
	s_load_b64 s[18:19], s[8:9], 0x150                         // 000000103604: F4040484 F8000150
	s_load_b32 s11, s[8:9], 0x158                              // 00000010360C: F40002C4 F8000158
	s_load_b32 s13, s[2:3], null                               // 000000103614: F4000341 F8000000
	s_add_u32 s2, s2, 8                                        // 00000010361C: 80028802
	s_addc_u32 s3, s3, 0                                       // 000000103620: 82038003
	s_add_u32 s8, s8, 12                                       // 000000103624: 80088C08
	s_addc_u32 s9, s9, 0                                       // 000000103628: 82098009
	s_add_i32 s12, s12, -1                                     // 00000010362C: 810CC10C
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 000000103630: BF8700B9
	s_cmp_lg_u32 s12, 0                                        // 000000103634: BF07800C
	s_waitcnt lgkmcnt(0)                                       // 000000103638: BF89FC07
	v_mul_hi_u32 v9, s19, v8                                   // 00000010363C: D72D0009 00021013
	v_add_nc_u32_e32 v9, v8, v9                                // 000000103644: 4A121308
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000103648: BF870091
	v_lshrrev_b32_e32 v9, s11, v9                              // 00000010364C: 3212120B
	v_mul_lo_u32 v12, v9, s18                                  // 000000103650: D72C000C 00002509
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000103658: BF870091
	v_sub_nc_u32_e32 v8, v8, v12                               // 00000010365C: 4C101908
	v_mad_u64_u32 v[12:13], null, v8, s13, v[7:8]              // 000000103660: D6FE7C0C 041C1B08
	s_delay_alu instid0(VALU_DEP_1)                            // 000000103668: BF870001
	v_dual_mov_b32 v8, v9 :: v_dual_mov_b32 v7, v12            // 00000010366C: CA100109 0806010C
	s_cbranch_scc1 65506                                       // 000000103674: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2c00>
	s_and_not1_b32 vcc_lo, exec_lo, s10                        // 000000103678: 916A0A7E
	s_cbranch_vccnz 38                                         // 00000010367C: BFA40026 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2d18>
	s_clause 0x1                                               // 000000103680: BF850001
	s_load_b128 s[8:11], s[0:1], 0x150                         // 000000103684: F4080200 F8000150
	s_load_b64 s[2:3], s[0:1], 0x160                           // 00000010368C: F4040080 F8000160
	s_cmp_gt_u32 s26, 1                                        // 000000103694: BF08811A
	s_cselect_b32 vcc_lo, -1, 0                                // 000000103698: 986A80C1
	s_waitcnt lgkmcnt(0)                                       // 00000010369C: BF89FC07
	v_mul_hi_u32 v7, s9, v10                                   // 0000001036A0: D72D0007 00021409
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001036A8: BF870091
	v_add_nc_u32_e32 v7, v10, v7                               // 0000001036AC: 4A0E0F0A
	v_lshrrev_b32_e32 v7, s10, v7                              // 0000001036B0: 320E0E0A
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000001036B4: BF8700A1
	v_mul_hi_u32 v8, v7, s2                                    // 0000001036B8: D72D0008 00000507
	s_load_b32 s2, s[0:1], 0x218                               // 0000001036C0: F4000080 F8000218
	v_add_nc_u32_e32 v8, v7, v8                                // 0000001036C8: 4A101107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000001036CC: BF8700A1
	v_lshrrev_b32_e32 v8, s3, v8                               // 0000001036D0: 32101003
	s_load_b32 s3, s[0:1], 0x210                               // 0000001036D4: F40000C0 F8000210
	v_mul_lo_u32 v8, v8, s11                                   // 0000001036DC: D72C0008 00001708
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 0000001036E4: BF870131
	v_sub_nc_u32_e32 v8, v7, v8                                // 0000001036E8: 4C101107
	v_mul_lo_u32 v7, v7, s8                                    // 0000001036EC: D72C0007 00001107
	s_waitcnt lgkmcnt(0)                                       // 0000001036F4: BF89FC07
	v_mul_lo_u32 v8, v8, s2                                    // 0000001036F8: D72C0008 00000508
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000103700: BF870112
	v_sub_nc_u32_e32 v12, v10, v7                              // 000000103704: 4C180F0A
	v_cndmask_b32_e32 v9, 0, v8, vcc_lo                        // 000000103708: 02121080
	s_delay_alu instid0(VALU_DEP_1)                            // 00000010370C: BF870001
	v_mad_u64_u32 v[7:8], null, v12, s3, v[9:10]               // 000000103710: D6FE7C07 0424070C
	s_load_b64 s[8:9], s[0:1], 0x2b0                           // 000000103718: F4040200 F80002B0
	v_cmp_eq_u32_e32 vcc_lo, 0, v1                             // 000000103720: 7C940280
	v_cmp_gt_i32_e64 s2, s7, v10                               // 000000103724: D4440002 00021407
	s_mov_b32 s18, 0                                           // 00000010372C: BE920080
	s_or_b32 s3, vcc_lo, s16                                   // 000000103730: 8C03106A
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000103734: BF870499
	s_and_b32 s2, s2, s3                                       // 000000103738: 8B020302
	s_and_saveexec_b32 s3, s2                                  // 00000010373C: BE832002
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103740: BF870009
	s_xor_b32 s2, exec_lo, s3                                  // 000000103744: 8D02037E
	v_cmp_eq_u32_e32 vcc_lo, 0, v0                             // 000000103748: 7C940080
	s_or_b32 s3, vcc_lo, s6                                    // 00000010374C: 8C03066A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103750: BF870009
	s_and_b32 s18, s3, exec_lo                                 // 000000103754: 8B127E03
	s_or_b32 exec_lo, exec_lo, s2                              // 000000103758: 8C7E027E
	s_and_saveexec_b32 s10, s18                                // 00000010375C: BE8A2012
	s_cbranch_execz 32                                         // 000000103760: BFA50020 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2de4>
	s_load_b32 s11, s[0:1], 0x2d4                              // 000000103764: F40002C0 F80002D4
	s_add_u32 s2, s0, 0x2d0                                    // 00000010376C: 8002FF00 000002D0
	s_addc_u32 s3, s1, 0                                       // 000000103774: 82038001
	s_and_not1_b32 vcc_lo, exec_lo, s16                        // 000000103778: 916A107E
	s_waitcnt lgkmcnt(0)                                       // 00000010377C: BF89FC07
	s_mul_i32 s11, s11, s14                                    // 000000103780: 960B0E0B
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000103784: BF870499
	s_add_i32 s11, s11, s15                                    // 000000103788: 810B0F0B
	v_mov_b32_e32 v8, s11                                      // 00000010378C: 7E10020B
	s_cbranch_vccnz 8                                          // 000000103790: BFA40008 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2db4>
	s_load_b32 s2, s[2:3], 0xc                                 // 000000103794: F4000081 F800000C
	s_waitcnt lgkmcnt(0)                                       // 00000010379C: BF89FC07
	s_and_b32 s2, s2, 0xffff                                   // 0000001037A0: 8B02FF02 0000FFFF
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001037A8: BF870009
	v_mad_u64_u32 v[8:9], null, s11, s2, v[1:2]                // 0000001037AC: D6FE7C08 0404040B
	v_mov_b32_e32 v9, 0                                        // 0000001037B4: 7E120280
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001037B8: BF870091
	v_lshlrev_b64 v[8:9], 2, v[8:9]                            // 0000001037BC: D73C0008 00021082
	v_add_co_u32 v8, vcc_lo, s8, v8                            // 0000001037C4: D7006A08 00021008
	s_delay_alu instid0(VALU_DEP_1)                            // 0000001037CC: BF870001
	v_add_co_ci_u32_e64 v9, null, s9, v9, vcc_lo               // 0000001037D0: D5207C09 01AA1209
	global_store_b32 v[8:9], v11, off                          // 0000001037D8: DC6A0000 007C0B08
	s_waitcnt vmcnt(0)                                         // 0000001037E0: BF8903F7
	s_or_b32 exec_lo, exec_lo, s10                             // 0000001037E4: 8C7E0A7E
	v_or_b32_e32 v8, v1, v0                                    // 0000001037E8: 38100101
	s_mov_b32 s2, exec_lo                                      // 0000001037EC: BE82007E
	s_waitcnt lgkmcnt(0)                                       // 0000001037F0: BF89FC07
	s_waitcnt_vscnt null, 0x0                                  // 0000001037F4: BC7C0000
	s_barrier                                                  // 0000001037F8: BFBD0000
	buffer_gl0_inv                                             // 0000001037FC: E0AC0000 00000000
	s_barrier                                                  // 000000103804: BFBD0000
	buffer_gl0_inv                                             // 000000103808: E0AC0000 00000000
	v_cmpx_eq_u32_e32 0, v8                                    // 000000103810: 7D941080
	s_cbranch_execz 39                                         // 000000103814: BFA50027 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2eb4>
	s_mov_b32 s10, exec_lo                                     // 000000103818: BE8A007E
	s_mov_b32 s3, exec_lo                                      // 00000010381C: BE83007E
	v_mbcnt_lo_u32_b32 v8, s10, 0                              // 000000103820: D71F0008 0001000A
	s_delay_alu instid0(VALU_DEP_1)                            // 000000103828: BF870001
	v_cmpx_eq_u32_e32 0, v8                                    // 00000010382C: 7D941080
	s_cbranch_execz 16                                         // 000000103830: BFA50010 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2e74>
	s_load_b64 s[12:13], s[0:1], 0x2b8                         // 000000103834: F4040300 F80002B8
	s_mov_b32 s11, s15                                         // 00000010383C: BE8B000F
	s_mov_b32 s15, 0                                           // 000000103840: BE8F0080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103844: BF870009
	s_lshl_b64 s[20:21], s[14:15], 2                           // 000000103848: 8494820E
	s_mov_b32 s15, s11                                         // 00000010384C: BE8F000B
	s_waitcnt lgkmcnt(0)                                       // 000000103850: BF89FC07
	s_add_u32 s12, s12, s20                                    // 000000103854: 800C140C
	s_addc_u32 s13, s13, s21                                   // 000000103858: 820D150D
	s_bcnt1_i32_b32 s10, s10                                   // 00000010385C: BE8A180A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103860: BF870009
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, s10            // 000000103864: CA100080 090C000A
	global_atomic_add_u32 v9, v9, v12, s[12:13] glc            // 00000010386C: DCD64000 090C0C09
	s_or_b32 exec_lo, exec_lo, s3                              // 000000103874: 8C7E037E
	s_load_b32 s3, s[0:1], 0x2d4                               // 000000103878: F40000C0 F80002D4
	s_waitcnt vmcnt(0)                                         // 000000103880: BF8903F7
	v_readfirstlane_b32 s10, v9                                // 000000103884: 7E140509
	s_delay_alu instid0(VALU_DEP_1)                            // 000000103888: BF870001
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v8, s10, v8      // 00000010388C: CA200080 0908100A
	s_waitcnt lgkmcnt(0)                                       // 000000103894: BF89FC07
	s_add_i32 s3, s3, -1                                       // 000000103898: 8103C103
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)    // 00000010389C: BF870481
	v_cmp_eq_u32_e32 vcc_lo, s3, v8                            // 0000001038A0: 7C941003
	v_cndmask_b32_e64 v8, 0, 1, vcc_lo                         // 0000001038A4: D5010008 01A90280
	ds_store_b8 v9, v8                                         // 0000001038AC: D8780000 00000809
	s_or_b32 exec_lo, exec_lo, s2                              // 0000001038B4: 8C7E027E
	v_mov_b32_e32 v8, 0                                        // 0000001038B8: 7E100280
	s_waitcnt lgkmcnt(0)                                       // 0000001038BC: BF89FC07
	s_barrier                                                  // 0000001038C0: BFBD0000
	buffer_gl0_inv                                             // 0000001038C4: E0AC0000 00000000
	s_mov_b32 s10, 0                                           // 0000001038CC: BE8A0080
	ds_load_u8 v8, v8                                          // 0000001038D0: D8E80000 08000008
	s_mov_b32 s3, 0                                            // 0000001038D8: BE830080
	s_waitcnt lgkmcnt(0)                                       // 0000001038DC: BF89FC07
	v_and_b32_e32 v8, 1, v8                                    // 0000001038E0: 36101081
	s_delay_alu instid0(VALU_DEP_1)                            // 0000001038E4: BF870001
	v_cmp_eq_u32_e32 vcc_lo, 0, v8                             // 0000001038E8: 7C941080
	s_cbranch_vccnz 449                                        // 0000001038EC: BFA401C1 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x35f4>
	s_clause 0x1                                               // 0000001038F0: BF850001
	s_load_b32 s12, s[0:1], 0x20                               // 0000001038F4: F4000300 F8000020
	s_load_b32 s2, s[0:1], 0x4                                 // 0000001038FC: F4000080 F8000004
	s_waitcnt lgkmcnt(0)                                       // 000000103904: BF89FC07
	s_cmp_lg_u32 s12, 0                                        // 000000103908: BF07800C
	s_cselect_b32 s19, -1, 0                                   // 00000010390C: 981380C1
	s_add_u32 s10, s0, 0x2d0                                   // 000000103910: 800AFF00 000002D0
	s_addc_u32 s11, s1, 0                                      // 000000103918: 820B8001
	s_cmp_eq_u32 s12, 0                                        // 00000010391C: BF06800C
	s_cbranch_scc1 60                                          // 000000103920: BFA2003C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3014>
	s_clause 0x1                                               // 000000103924: BF850001
	s_load_b32 s12, s[10:11], null                             // 000000103928: F4000305 F8000000
	s_load_b32 s22, s[10:11], 0xc                              // 000000103930: F4000585 F800000C
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, s2             // 000000103938: CA100080 090C0002
	s_waitcnt lgkmcnt(0)                                       // 000000103940: BF89FC07
	s_cmp_lt_u32 s14, s12                                      // 000000103944: BF0A0C0E
	s_cselect_b32 s13, 12, 18                                  // 000000103948: 980D928C
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000010394C: BF870009
	s_add_u32 s20, s10, s13                                    // 000000103950: 80140D0A
	s_addc_u32 s21, s11, 0                                     // 000000103954: 8215800B
	s_load_b32 s13, s[0:1], 0x1c                               // 000000103958: F4000340 F800001C
	global_load_u16 v8, v9, s[20:21]                           // 000000103960: DC4A0000 08140009
	s_lshr_b32 s20, s22, 16                                    // 000000103968: 85149016
	s_mov_b32 s21, exec_lo                                     // 00000010396C: BE95007E
	s_waitcnt vmcnt(0)                                         // 000000103970: BF8903F7
	v_mad_u32_u24 v13, v0, v8, v1                              // 000000103974: D60B000D 04061100
	s_waitcnt lgkmcnt(0)                                       // 00000010397C: BF89FC07
	s_delay_alu instid0(VALU_DEP_1)                            // 000000103980: BF870001
	v_cmpx_gt_u32_e64 s13, v13                                 // 000000103984: D4CC007E 00021A0D
	s_cbranch_execz 28                                         // 00000010398C: BFA5001C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3000>
	s_load_b32 s23, s[10:11], 0x4                              // 000000103990: F40005C5 F8000004
	v_mul_lo_u32 v14, s20, v8                                  // 000000103998: D72C000E 00021014
	v_mov_b32_e32 v12, s2                                      // 0000001039A0: 7E180202
	s_mov_b32 s22, 0                                           // 0000001039A4: BE960080
	s_waitcnt lgkmcnt(0)                                       // 0000001039A8: BF89FC07
	s_mul_i32 s23, s23, s14                                    // 0000001039AC: 96170E17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001039B0: BF870099
	v_add_nc_u32_e32 v8, s23, v13                              // 0000001039B4: 4A101A17
	v_lshlrev_b64 v[15:16], 2, v[8:9]                          // 0000001039B8: D73C000F 00021082
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001039C0: BF870091
	v_add_co_u32 v15, vcc_lo, s8, v15                          // 0000001039C4: D7006A0F 00021E08
	v_add_co_ci_u32_e64 v16, null, s9, v16, vcc_lo             // 0000001039CC: D5207C10 01AA2009
	global_load_b32 v8, v[15:16], off                          // 0000001039D4: DC520000 087C000F
	s_waitcnt vmcnt(0)                                         // 0000001039DC: BF8903F7
	v_dual_add_f32 v12, v12, v8 :: v_dual_add_nc_u32 v13, v13, v14// 0000001039E0: C920110C 0C0C1D0D
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 0000001039E8: BF8704A1
	v_cmp_le_u32_e32 vcc_lo, s13, v13                          // 0000001039EC: 7C961A0D
	s_or_b32 s22, vcc_lo, s22                                  // 0000001039F0: 8C16166A
	s_and_not1_b32 exec_lo, exec_lo, s22                       // 0000001039F4: 917E167E
	s_cbranch_execnz 65517                                     // 0000001039F8: BFA6FFED <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2fb0>
	s_or_b32 exec_lo, exec_lo, s22                             // 0000001039FC: 8C7E167E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103A00: BF870009
	s_or_b32 exec_lo, exec_lo, s21                             // 000000103A04: 8C7E157E
	v_mov_b32_e32 v13, s20                                     // 000000103A08: 7E1A0214
	s_cbranch_execz 2                                          // 000000103A0C: BFA50002 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3018>
	s_branch 156                                               // 000000103A10: BFA0009C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3284>
	v_mov_b32_e32 v13, s20                                     // 000000103A14: 7E1A0214
	s_load_b64 s[12:13], s[10:11], null                        // 000000103A18: F4040305 F8000000
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, s2             // 000000103A20: CA100080 090C0002
	s_mov_b32 s22, 0                                           // 000000103A28: BE960080
	s_waitcnt lgkmcnt(0)                                       // 000000103A2C: BF89FC07
	s_cmp_lt_u32 s15, s13                                      // 000000103A30: BF0A0D0F
	s_cselect_b32 s15, 14, 20                                  // 000000103A34: 980F948E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103A38: BF870009
	s_add_u32 s20, s10, s15                                    // 000000103A3C: 80140F0A
	s_addc_u32 s21, s11, 0                                     // 000000103A40: 8215800B
	s_load_b32 s15, s[0:1], 0x1c                               // 000000103A44: F40003C0 F800001C
	global_load_d16_b16 v13, v9, s[20:21]                      // 000000103A4C: DC820000 0D140009
	s_mov_b32 s21, exec_lo                                     // 000000103A54: BE95007E
	s_waitcnt vmcnt(0)                                         // 000000103A58: BF8903F7
	v_readfirstlane_b32 s20, v13                               // 000000103A5C: 7E28050D
	s_and_b32 s20, 0xffff, s20                                 // 000000103A60: 8B1414FF 0000FFFF
	s_waitcnt lgkmcnt(0)                                       // 000000103A68: BF89FC07
	v_cmpx_gt_u32_e64 s15, v0                                  // 000000103A6C: D4CC007E 0002000F
	s_cbranch_execz 129                                        // 000000103A74: BFA50081 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x327c>
	s_load_b32 s23, s[10:11], 0x14                             // 000000103A78: F40005C5 F8000014
	v_dual_mov_b32 v12, s2 :: v_dual_mov_b32 v21, v0           // 000000103A80: CA100002 0C140100
	s_waitcnt lgkmcnt(0)                                       // 000000103A88: BF89FC07
	s_and_b32 s23, s23, 0xffff                                 // 000000103A8C: 8B17FF17 0000FFFF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 000000103A94: BF8704A9
	s_cmp_lg_u32 s23, 0                                        // 000000103A98: BF078017
	s_cselect_b32 s23, -1, 0                                   // 000000103A9C: 981780C1
	s_cmp_lg_u32 s23, 0                                        // 000000103AA0: BF078017
	s_addc_u32 s13, s13, 0                                     // 000000103AA4: 820D800D
	s_cmp_lt_u32 s14, s12                                      // 000000103AA8: BF0A0C0E
	v_mad_u64_u32 v[17:18], null, s13, s14, v[0:1]             // 000000103AAC: D6FE7C11 04001C0D
	s_cselect_b32 s23, 12, 18                                  // 000000103AB4: 9817928C
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103AB8: BF870009
	s_add_u32 s24, s10, s23                                    // 000000103ABC: 8018170A
	s_addc_u32 s25, s11, 0                                     // 000000103AC0: 8219800B
	s_lshl_b32 s13, s20, 1                                     // 000000103AC4: 840D8114
	global_load_u16 v8, v9, s[24:25]                           // 000000103AC8: DC4A0000 08180009
	s_mul_i32 s23, s20, 3                                      // 000000103AD0: 96178314
	v_add_nc_u32_e32 v14, s13, v17                             // 000000103AD4: 4A1C220D
	v_add_nc_u32_e32 v15, s23, v17                             // 000000103AD8: 4A1E2217
	v_add_nc_u32_e32 v16, s20, v17                             // 000000103ADC: 4A202214
	s_waitcnt vmcnt(0)                                         // 000000103AE0: BF8903F7
	v_mul_lo_u32 v19, s20, v8                                  // 000000103AE4: D72C0013 00021014
	v_mul_lo_u32 v14, v14, v8                                  // 000000103AEC: D72C000E 0002110E
	v_mul_lo_u32 v15, v15, v8                                  // 000000103AF4: D72C000F 0002110F
	v_mul_lo_u32 v16, v16, v8                                  // 000000103AFC: D72C0010 00021110
	v_mul_lo_u32 v17, v17, v8                                  // 000000103B04: D72C0011 00021111
	v_dual_mov_b32 v18, v1 :: v_dual_lshlrev_b32 v19, 2, v19   // 000000103B0C: CA220101 12122682
	s_branch 8                                                 // 000000103B14: BFA00008 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3138>
	s_or_b32 exec_lo, exec_lo, s2                              // 000000103B18: 8C7E027E
	v_add_nc_u32_e32 v21, s23, v24                             // 000000103B1C: 4A2A3017
	v_add_nc_u32_e32 v18, v18, v19                             // 000000103B20: 4A242712
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 000000103B24: BF8704A2
	v_cmp_le_u32_e32 vcc_lo, s15, v21                          // 000000103B28: 7C962A0F
	s_or_b32 s22, vcc_lo, s22                                  // 000000103B2C: 8C16166A
	s_and_not1_b32 exec_lo, exec_lo, s22                       // 000000103B30: 917E167E
	s_cbranch_execz 80                                         // 000000103B34: BFA50050 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3278>
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000103B38: BF870091
	v_add_nc_u32_e32 v8, v17, v18                              // 000000103B3C: 4A102511
	v_lshlrev_b64 v[24:25], 2, v[8:9]                          // 000000103B40: D73C0018 00021082
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000103B48: BF870091
	v_add_co_u32 v24, vcc_lo, s8, v24                          // 000000103B4C: D7006A18 00023008
	v_add_co_ci_u32_e64 v25, null, s9, v25, vcc_lo             // 000000103B54: D5207C19 01AA3209
	global_load_b32 v26, v[24:25], off                         // 000000103B5C: DC520000 1A7C0018
	v_add_nc_u32_e32 v24, s20, v21                             // 000000103B64: 4A302A14
	v_add_nc_u32_e32 v25, s13, v21                             // 000000103B68: 4A322A0D
	s_delay_alu instid0(VALU_DEP_2)                            // 000000103B6C: BF870002
	v_cmp_gt_u32_e32 vcc_lo, s15, v24                          // 000000103B70: 7C98300F
	s_and_saveexec_b32 s24, vcc_lo                             // 000000103B74: BE98206A
	s_cbranch_execz 45                                         // 000000103B78: BFA5002D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3230>
	v_add_nc_u32_e32 v8, v16, v18                              // 000000103B7C: 4A102510
	s_mov_b32 s25, exec_lo                                     // 000000103B80: BE99007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000103B84: BF870091
	v_lshlrev_b64 v[27:28], 2, v[8:9]                          // 000000103B88: D73C001B 00021082
	v_add_co_u32 v27, s2, s8, v27                              // 000000103B90: D700021B 00023608
	s_delay_alu instid0(VALU_DEP_1)                            // 000000103B98: BF870001
	v_add_co_ci_u32_e64 v28, null, s9, v28, s2                 // 000000103B9C: D5207C1C 000A3809
	global_load_b32 v23, v[27:28], off                         // 000000103BA4: DC520000 177C001B
	v_cmpx_gt_u32_e64 s15, v25                                 // 000000103BAC: D4CC007E 0002320F
	s_cbranch_execz 28                                         // 000000103BB4: BFA5001C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3228>
	v_add_nc_u32_e32 v8, v14, v18                              // 000000103BB8: 4A10250E
	s_mov_b32 s26, exec_lo                                     // 000000103BBC: BE9A007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000103BC0: BF870121
	v_lshlrev_b64 v[27:28], 2, v[8:9]                          // 000000103BC4: D73C001B 00021082
	v_add_nc_u32_e32 v8, s23, v21                              // 000000103BCC: 4A102A17
	v_add_co_u32 v27, s2, s8, v27                              // 000000103BD0: D700021B 00023608
	s_delay_alu instid0(VALU_DEP_1)                            // 000000103BD8: BF870001
	v_add_co_ci_u32_e64 v28, null, s9, v28, s2                 // 000000103BDC: D5207C1C 000A3809
	global_load_b32 v22, v[27:28], off                         // 000000103BE4: DC520000 167C001B
	v_cmpx_gt_u32_e64 s15, v8                                  // 000000103BEC: D4CC007E 0002100F
	s_cbranch_execz 11                                         // 000000103BF4: BFA5000B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3224>
	v_add_nc_u32_e32 v8, v15, v18                              // 000000103BF8: 4A10250F
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000103BFC: BF870091
	v_lshlrev_b64 v[27:28], 2, v[8:9]                          // 000000103C00: D73C001B 00021082
	v_add_co_u32 v27, s2, s8, v27                              // 000000103C08: D700021B 00023608
	s_delay_alu instid0(VALU_DEP_1)                            // 000000103C10: BF870001
	v_add_co_ci_u32_e64 v28, null, s9, v28, s2                 // 000000103C14: D5207C1C 000A3809
	global_load_b32 v20, v[27:28], off                         // 000000103C1C: DC520000 147C001B
	s_or_b32 exec_lo, exec_lo, s26                             // 000000103C24: 8C7E1A7E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103C28: BF870009
	s_or_b32 exec_lo, exec_lo, s25                             // 000000103C2C: 8C7E197E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103C30: BF870009
	s_or_b32 exec_lo, exec_lo, s24                             // 000000103C34: 8C7E187E
	s_waitcnt vmcnt(0)                                         // 000000103C38: BF8903F7
	v_add_f32_e32 v12, v12, v26                                // 000000103C3C: 0618350C
	s_and_saveexec_b32 s2, vcc_lo                              // 000000103C40: BE82206A
	s_cbranch_execz 65460                                      // 000000103C44: BFA5FFB4 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3118>
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000103C48: BF870091
	v_dual_add_f32 v8, v12, v23 :: v_dual_add_nc_u32 v21, s23, v21// 000000103C4C: C9202F0C 08142A17
	v_add_f32_e32 v12, v22, v8                                 // 000000103C54: 06181116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000103C58: BF870112
	v_cmp_gt_u32_e32 vcc_lo, s15, v21                          // 000000103C5C: 7C982A0F
	v_add_f32_e32 v26, v20, v12                                // 000000103C60: 06341914
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000103C64: BF870121
	v_cndmask_b32_e32 v12, v12, v26, vcc_lo                    // 000000103C68: 0218350C
	v_cmp_gt_u32_e32 vcc_lo, s15, v25                          // 000000103C6C: 7C98320F
	v_cndmask_b32_e32 v12, v8, v12, vcc_lo                     // 000000103C70: 02181908
	s_branch 65448                                             // 000000103C74: BFA0FFA8 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3118>
	s_or_b32 exec_lo, exec_lo, s22                             // 000000103C78: 8C7E167E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103C7C: BF870009
	s_or_b32 exec_lo, exec_lo, s21                             // 000000103C80: 8C7E157E
	s_cmp_lt_u32 s14, s12                                      // 000000103C84: BF0A0C0E
	s_delay_alu instid0(VALU_DEP_1)                            // 000000103C88: BF870001
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v13, 0xffff, v13    // 000000103C8C: CA240080 080C1AFF 0000FFFF
	s_cselect_b32 s2, 12, 18                                   // 000000103C98: 9802928C
	v_lshlrev_b32_e32 v14, 2, v1                               // 000000103C9C: 301C0282
	s_add_u32 s8, s10, s2                                      // 000000103CA0: 8008020A
	s_addc_u32 s9, s11, 0                                      // 000000103CA4: 8209800B
	v_cmp_gt_u32_e32 vcc_lo, 2, v13                            // 000000103CA8: 7C981A82
	global_load_u16 v9, v8, s[8:9]                             // 000000103CAC: DC4A0000 09080008
	s_and_b32 vcc_lo, exec_lo, vcc_lo                          // 000000103CB4: 8B6A6A7E
	s_waitcnt vmcnt(0)                                         // 000000103CB8: BF8903F7
	v_mul_u32_u24_e32 v8, v0, v9                               // 000000103CBC: 16101300
	v_readfirstlane_b32 s8, v9                                 // 000000103CC0: 7E100509
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000103CC4: BF870092
	v_lshlrev_b32_e32 v8, 2, v8                                // 000000103CC8: 30101082
	v_add3_u32 v8, 1, v8, v14                                  // 000000103CCC: D6550008 043A1081
	ds_store_b32 v8, v12                                       // 000000103CD4: D8340000 00000C08
	s_cbranch_vccnz 41                                         // 000000103CDC: BFA40029 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3384>
	v_lshl_add_u32 v9, v1, 2, 1                                // 000000103CE0: D6460009 02050501
	s_mov_b32 s2, s20                                          // 000000103CE8: BE820014
	s_nop 0                                                    // 000000103CEC: BF800000
	s_nop 0                                                    // 000000103CF0: BF800000
	s_nop 0                                                    // 000000103CF4: BF800000
	s_nop 0                                                    // 000000103CF8: BF800000
	s_nop 0                                                    // 000000103CFC: BF800000
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103D00: BF870009
	s_lshr_b32 s9, s2, 1                                       // 000000103D04: 85098102
	s_mov_b32 s10, exec_lo                                     // 000000103D08: BE8A007E
	s_waitcnt lgkmcnt(0)                                       // 000000103D0C: BF89FC07
	s_barrier                                                  // 000000103D10: BFBD0000
	buffer_gl0_inv                                             // 000000103D14: E0AC0000 00000000
	v_cmpx_gt_u32_e64 s9, v0                                   // 000000103D1C: D4CC007E 00020009
	s_cbranch_execz 17                                         // 000000103D24: BFA50011 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x336c>
	v_add_nc_u32_e32 v13, s9, v0                               // 000000103D28: 4A1A0009
	s_mov_b32 s11, exec_lo                                     // 000000103D2C: BE8B007E
	s_delay_alu instid0(VALU_DEP_1)                            // 000000103D30: BF870001
	v_cmpx_gt_u32_e64 s20, v13                                 // 000000103D34: D4CC007E 00021A14
	s_cbranch_execz 10                                         // 000000103D3C: BFA5000A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3368>
	v_mul_u32_u24_e32 v13, s8, v13                             // 000000103D40: 161A1A08
	s_delay_alu instid0(VALU_DEP_1)                            // 000000103D44: BF870001
	v_lshl_add_u32 v13, v13, 2, v9                             // 000000103D48: D646000D 0425050D
	ds_load_b32 v13, v13                                       // 000000103D50: D8D80000 0D00000D
	s_waitcnt lgkmcnt(0)                                       // 000000103D58: BF89FC07
	v_add_f32_e32 v12, v12, v13                                // 000000103D5C: 06181B0C
	ds_store_b32 v8, v12                                       // 000000103D60: D8340000 00000C08
	s_or_b32 exec_lo, exec_lo, s11                             // 000000103D68: 8C7E0B7E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103D6C: BF870009
	s_or_b32 exec_lo, exec_lo, s10                             // 000000103D70: 8C7E0A7E
	s_cmp_gt_u32 s2, 3                                         // 000000103D74: BF088302
	s_cbranch_scc0 2                                           // 000000103D78: BFA10002 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3384>
	s_mov_b32 s2, s9                                           // 000000103D7C: BE820009
	s_branch 65503                                             // 000000103D80: BFA0FFDF <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3300>
	s_and_not1_b32 vcc_lo, exec_lo, s19                        // 000000103D84: 916A137E
	s_cbranch_vccnz 67                                         // 000000103D88: BFA40043 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3498>
	s_cmp_lt_u32 s8, 33                                        // 000000103D8C: BF0AA108
	s_cbranch_scc1 39                                          // 000000103D90: BFA20027 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3430>
	s_cmp_lt_u32 s8, 64                                        // 000000103D94: BF0AC008
	ds_store_b32 v8, v12                                       // 000000103D98: D8340000 00000C08
	s_cbranch_scc1 34                                          // 000000103DA0: BFA20022 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x342c>
	s_mov_b32 s9, s8                                           // 000000103DA4: BE890008
	s_nop 0                                                    // 000000103DA8: BF800000
	s_nop 0                                                    // 000000103DAC: BF800000
	s_nop 0                                                    // 000000103DB0: BF800000
	s_nop 0                                                    // 000000103DB4: BF800000
	s_nop 0                                                    // 000000103DB8: BF800000
	s_nop 0                                                    // 000000103DBC: BF800000
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103DC0: BF870009
	s_lshr_b32 s10, s9, 1                                      // 000000103DC4: 850A8109
	s_waitcnt lgkmcnt(0)                                       // 000000103DC8: BF89FC07
	v_add_nc_u32_e32 v9, s10, v1                               // 000000103DCC: 4A12020A
	v_cmp_gt_u32_e32 vcc_lo, s10, v1                           // 000000103DD0: 7C98020A
	s_barrier                                                  // 000000103DD4: BFBD0000
	buffer_gl0_inv                                             // 000000103DD8: E0AC0000 00000000
	v_cmp_gt_u32_e64 s2, s8, v9                                // 000000103DE0: D44C0002 00021208
	s_and_b32 s11, vcc_lo, s2                                  // 000000103DE8: 8B0B026A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103DEC: BF870009
	s_and_saveexec_b32 s2, s11                                 // 000000103DF0: BE82200B
	s_cbranch_execz 8                                          // 000000103DF4: BFA50008 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3418>
	v_lshl_add_u32 v9, s10, 2, v8                              // 000000103DF8: D6460009 0421040A
	ds_load_b32 v9, v9                                         // 000000103E00: D8D80000 09000009
	s_waitcnt lgkmcnt(0)                                       // 000000103E08: BF89FC07
	v_add_f32_e32 v12, v12, v9                                 // 000000103E0C: 0618130C
	ds_store_b32 v8, v12                                       // 000000103E10: D8340000 00000C08
	s_or_b32 exec_lo, exec_lo, s2                              // 000000103E18: 8C7E027E
	s_cmpk_gt_u32 s9, 0x7f                                     // 000000103E1C: B589007F
	s_cbranch_scc0 2                                           // 000000103E20: BFA10002 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x342c>
	s_mov_b32 s9, s10                                          // 000000103E24: BE89000A
	s_branch 65509                                             // 000000103E28: BFA0FFE5 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x33c0>
	s_mov_b32 s8, 32                                           // 000000103E2C: BE8800A0
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103E30: BF870009
	s_cmp_lt_u32 s8, 2                                         // 000000103E34: BF0A8208
	s_waitcnt lgkmcnt(0)                                       // 000000103E38: BF89FC07
	s_barrier                                                  // 000000103E3C: BFBD0000
	buffer_gl0_inv                                             // 000000103E40: E0AC0000 00000000
	s_cbranch_scc1 19                                          // 000000103E48: BFA20013 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3498>
	v_mbcnt_lo_u32_b32 v8, -1, 0                               // 000000103E4C: D71F0008 000100C1
	s_mov_b32 s2, 1                                            // 000000103E54: BE820081
	s_delay_alu instid0(VALU_DEP_1)                            // 000000103E58: BF870001
	v_sub_nc_u32_e32 v9, 32, v8                                // 000000103E5C: 4C1210A0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)// 000000103E60: BF8704B1
	v_cmp_lt_i32_e32 vcc_lo, s2, v9                            // 000000103E64: 7C821202
	v_cndmask_b32_e64 v13, 0, s2, vcc_lo                       // 000000103E68: D501000D 01A80480
	s_lshl_b32 s2, s2, 1                                       // 000000103E70: 84028102
	s_cmp_lt_i32 s2, s8                                        // 000000103E74: BF040802
	s_delay_alu instid0(VALU_DEP_1)                            // 000000103E78: BF870001
	v_add_lshl_u32 v13, v13, v8, 2                             // 000000103E7C: D647000D 020A110D
	ds_bpermute_b32 v13, v13, v12                              // 000000103E84: DACC0000 0D000C0D
	s_waitcnt lgkmcnt(0)                                       // 000000103E8C: BF89FC07
	v_add_f32_e32 v12, v12, v13                                // 000000103E90: 06181B0C
	s_cbranch_scc1 65522                                       // 000000103E94: BFA2FFF2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3460>
	s_mov_b32 s10, 0                                           // 000000103E98: BE8A0080
	s_and_saveexec_b32 s2, s18                                 // 000000103E9C: BE822012
	s_cbranch_execz 83                                         // 000000103EA0: BFA50053 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x35f0>
	s_load_b32 s8, s[0:1], 0x2c8                               // 000000103EA4: F4000200 F80002C8
	s_mov_b32 s11, exec_lo                                     // 000000103EAC: BE8B007E
	s_waitcnt lgkmcnt(0)                                       // 000000103EB0: BF89FC07
	s_bitcmp1_b32 s8, 0                                        // 000000103EB4: BF0D8008
	s_cselect_b32 s9, -1, 0                                    // 000000103EB8: 980980C1
	v_cmpx_ne_u64_e32 0, v[5:6]                                // 000000103EBC: 7DBA0A80
	s_xor_b32 s11, exec_lo, s11                                // 000000103EC0: 8D0B0B7E
	s_cbranch_execz 31                                         // 000000103EC4: BFA5001F <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3544>
	s_and_not1_b32 vcc_lo, exec_lo, s9                         // 000000103EC8: 916A097E
	s_cbranch_vccnz 4                                          // 000000103ECC: BFA40004 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x34e0>
	global_load_b32 v8, v[3:4], off                            // 000000103ED0: DC520000 087C0003
	s_waitcnt vmcnt(0)                                         // 000000103ED8: BF8903F7
	v_add_f32_e32 v12, v12, v8                                 // 000000103EDC: 0618110C
	s_bfe_u32 s10, s8, 0x10008                                 // 000000103EE0: 930AFF08 00010008
	s_mov_b32 s12, -1                                          // 000000103EE8: BE8C00C1
	s_cmp_eq_u32 s10, 0                                        // 000000103EEC: BF06800A
	s_mov_b32 s10, 0                                           // 000000103EF0: BE8A0080
	s_cbranch_scc0 3                                           // 000000103EF4: BFA10003 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3504>
	s_mov_b32 s12, 0                                           // 000000103EF8: BE8C0080
	global_store_b32 v[3:4], v12, off                          // 000000103EFC: DC6A0000 007C0C03
	s_and_not1_b32 vcc_lo, exec_lo, s12                        // 000000103F04: 916A0C7E
	s_cbranch_vccnz 13                                         // 000000103F08: BFA4000D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3540>
	s_load_b32 s10, s[0:1], 0x2cc                              // 000000103F0C: F4000280 F80002CC
	s_waitcnt lgkmcnt(0)                                       // 000000103F14: BF89FC07
	s_cmp_lg_u32 s10, 1                                        // 000000103F18: BF07810A
	s_cbranch_scc1 186                                         // 000000103F1C: BFA200BA <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3808>
	s_mov_b32 s10, 0                                           // 000000103F20: BE8A0080
	v_add_co_u32 v7, s12, s4, v7                               // 000000103F24: D7000C07 00020E04
	s_delay_alu instid0(VALU_DEP_1)                            // 000000103F2C: BF870001
	v_add_co_ci_u32_e64 v8, null, s5, 0, s12                   // 000000103F30: D5207C08 00310005
	global_store_b32 v[7:8], v12, off                          // 000000103F38: DC6A0000 007C0C07
	s_and_b32 s10, s10, exec_lo                                // 000000103F40: 8B0A7E0A
	s_and_not1_saveexec_b32 s11, s11                           // 000000103F44: BE8B300B
	s_cbranch_execz 38                                         // 000000103F48: BFA50026 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x35e4>
	v_add_co_u32 v7, s12, s4, v7                               // 000000103F4C: D7000C07 00020E04
	s_delay_alu instid0(VALU_DEP_1)                            // 000000103F54: BF870001
	v_add_co_ci_u32_e64 v8, null, s5, 0, s12                   // 000000103F58: D5207C08 00310005
	s_and_not1_b32 vcc_lo, exec_lo, s9                         // 000000103F60: 916A097E
	s_cbranch_vccnz 4                                          // 000000103F64: BFA40004 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3578>
	global_load_b32 v9, v[7:8], off                            // 000000103F68: DC520000 097C0007
	s_waitcnt vmcnt(0)                                         // 000000103F70: BF8903F7
	v_add_f32_e32 v12, v12, v9                                 // 000000103F74: 0618130C
	s_bitcmp1_b32 s8, 8                                        // 000000103F78: BF0D8808
	s_cselect_b32 s8, -1, 0                                    // 000000103F7C: 980880C1
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103F80: BF870009
	s_and_b32 vcc_lo, exec_lo, s8                              // 000000103F84: 8B6A087E
	s_mov_b32 s8, -1                                           // 000000103F88: BE8800C1
	s_cbranch_vccnz 3                                          // 000000103F8C: BFA40003 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x359c>
	s_mov_b32 s8, 0                                            // 000000103F90: BE880080
	global_store_b32 v[7:8], v12, off                          // 000000103F94: DC6A0000 007C0C07
	s_and_not1_b32 vcc_lo, exec_lo, s8                         // 000000103F9C: 916A087E
	s_mov_b32 s8, s10                                          // 000000103FA0: BE88000A
	s_cbranch_vccnz 11                                         // 000000103FA4: BFA4000B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x35d4>
	s_load_b32 s8, s[0:1], 0x2cc                               // 000000103FA8: F4000200 F80002CC
	s_mov_b32 s9, -1                                           // 000000103FB0: BE8900C1
	s_waitcnt lgkmcnt(0)                                       // 000000103FB4: BF89FC07
	s_cmp_lg_u32 s8, 1                                         // 000000103FB8: BF078108
	s_mov_b32 s8, s10                                          // 000000103FBC: BE88000A
	s_cbranch_scc1 149                                         // 000000103FC0: BFA20095 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3818>
	s_and_not1_b32 vcc_lo, exec_lo, s9                         // 000000103FC4: 916A097E
	s_cbranch_vccnz 2                                          // 000000103FC8: BFA40002 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x35d4>
	global_store_b32 v[7:8], v12, off                          // 000000103FCC: DC6A0000 007C0C07
	s_and_not1_b32 s9, s10, exec_lo                            // 000000103FD4: 91097E0A
	s_and_b32 s8, s8, exec_lo                                  // 000000103FD8: 8B087E08
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103FDC: BF870009
	s_or_b32 s10, s9, s8                                       // 000000103FE0: 8C0A0809
	s_or_b32 exec_lo, exec_lo, s11                             // 000000103FE4: 8C7E0B7E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103FE8: BF870009
	s_and_b32 s10, s10, exec_lo                                // 000000103FEC: 8B0A7E0A
	s_or_b32 exec_lo, exec_lo, s2                              // 000000103FF0: 8C7E027E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000103FF4: BF870009
	s_and_b32 vcc_lo, exec_lo, s3                              // 000000103FF8: 8B6A037E
	s_cbranch_vccz 40                                          // 000000103FFC: BFA30028 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x36a0>
	v_cmp_eq_u32_e32 vcc_lo, 0, v1                             // 000000104000: 7C940280
	v_cmp_gt_i32_e64 s2, s7, v10                               // 000000104004: D4440002 00021407
	v_cmp_eq_u32_e64 s3, 0, v0                                 // 00000010400C: D44A0003 00020080
	s_mov_b32 s17, 0                                           // 000000104014: BE910080
	s_or_b32 s7, vcc_lo, s16                                   // 000000104018: 8C07106A
	s_or_b32 s3, s3, s6                                        // 00000010401C: 8C030603
	s_and_b32 s2, s2, s7                                       // 000000104020: 8B020702
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000104024: BF870499
	s_and_b32 s3, s2, s3                                       // 000000104028: 8B030302
	s_and_saveexec_b32 s2, s3                                  // 00000010402C: BE822003
	s_cbranch_execz 105                                        // 000000104030: BFA50069 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x37d8>
	s_load_b32 s3, s[0:1], 0x2c8                               // 000000104034: F40000C0 F80002C8
	v_add_co_u32 v0, s4, s4, v2                                // 00000010403C: D7000400 00020404
	s_delay_alu instid0(VALU_DEP_1)                            // 000000104044: BF870001
	v_add_co_ci_u32_e64 v1, null, s5, 0, s4                    // 000000104048: D5207C01 00110005
	s_mov_b32 s4, s10                                          // 000000104050: BE84000A
	s_mov_b32 s6, exec_lo                                      // 000000104054: BE86007E
	s_waitcnt lgkmcnt(0)                                       // 000000104058: BF89FC07
	s_bitcmp1_b32 s3, 0                                        // 00000010405C: BF0D8003
	s_cselect_b32 s5, -1, 0                                    // 000000104060: 980580C1
	v_cmpx_ne_u64_e32 0, v[5:6]                                // 000000104064: 7DBA0A80
	s_xor_b32 s6, exec_lo, s6                                  // 000000104068: 8D06067E
	s_cbranch_execz 50                                         // 00000010406C: BFA50032 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3738>
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 000000104070: 916A057E
	s_cbranch_vccz 19                                          // 000000104074: BFA30013 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x36c4>
	s_bfe_u32 s4, s3, 0x10008                                  // 000000104078: 9304FF03 00010008
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000104080: BF870009
	s_cmp_eq_u32 s4, 0                                         // 000000104084: BF068004
	s_mov_b32 s4, -1                                           // 000000104088: BE8400C1
	s_cbranch_scc1 23                                          // 00000010408C: BFA20017 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x36ec>
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 000000104090: 916A047E
	s_mov_b32 s4, s10                                          // 000000104094: BE84000A
	s_cbranch_vccz 24                                          // 000000104098: BFA30018 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x36fc>
	s_branch 34                                                // 00000010409C: BFA00022 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3728>
	s_and_saveexec_b32 s0, s10                                 // 0000001040A0: BE80200A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001040A4: BF870009
	s_or_b32 exec_lo, exec_lo, s0                              // 0000001040A8: 8C7E007E
	s_and_saveexec_b32 s0, s17                                 // 0000001040AC: BE802011
	s_cbranch_execnz 1                                         // 0000001040B0: BFA60001 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x36b8>
	s_endpgm                                                   // 0000001040B4: BFB00000
	global_store_b32 v[0:1], v11, off                          // 0000001040B8: DC6A0000 007C0B00
	s_endpgm                                                   // 0000001040C0: BFB00000
	global_load_b32 v2, v[3:4], off                            // 0000001040C4: DC520000 027C0003
	s_waitcnt vmcnt(0)                                         // 0000001040CC: BF8903F7
	v_add_f32_e32 v11, v11, v2                                 // 0000001040D0: 0616050B
	s_bfe_u32 s4, s3, 0x10008                                  // 0000001040D4: 9304FF03 00010008
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001040DC: BF870009
	s_cmp_eq_u32 s4, 0                                         // 0000001040E0: BF068004
	s_mov_b32 s4, -1                                           // 0000001040E4: BE8400C1
	s_cbranch_scc0 65513                                       // 0000001040E8: BFA1FFE9 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3690>
	global_store_b32 v[3:4], v11, off                          // 0000001040EC: DC6A0000 007C0B03
	s_mov_b32 s4, s10                                          // 0000001040F4: BE84000A
	s_cbranch_execnz 11                                        // 0000001040F8: BFA6000B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3728>
	s_load_b32 s4, s[0:1], 0x2cc                               // 0000001040FC: F4000100 F80002CC
	s_mov_b32 s7, -1                                           // 000000104104: BE8700C1
	s_waitcnt lgkmcnt(0)                                       // 000000104108: BF89FC07
	s_cmp_lg_u32 s4, 1                                         // 00000010410C: BF078104
	s_mov_b32 s4, s10                                          // 000000104110: BE84000A
	s_cbranch_scc1 52                                          // 000000104114: BFA20034 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x37e8>
	s_and_not1_b32 vcc_lo, exec_lo, s7                         // 000000104118: 916A077E
	s_cbranch_vccnz 2                                          // 00000010411C: BFA40002 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3728>
	global_store_b32 v[0:1], v11, off                          // 000000104120: DC6A0000 007C0B00
	s_and_not1_b32 s7, s10, exec_lo                            // 000000104128: 91077E0A
	s_and_b32 s4, s4, exec_lo                                  // 00000010412C: 8B047E04
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000104130: BF870009
	s_or_b32 s4, s7, s4                                        // 000000104134: 8C040407
	s_or_saveexec_b32 s6, s6                                   // 000000104138: BE862206
	s_mov_b32 s7, 0                                            // 00000010413C: BE870080
	s_xor_b32 exec_lo, exec_lo, s6                             // 000000104140: 8D7E067E
	s_cbranch_execz 30                                         // 000000104144: BFA5001E <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x37c0>
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 000000104148: 916A057E
	s_cbranch_vccnz 4                                          // 00000010414C: BFA40004 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3760>
	global_load_b32 v2, v[0:1], off                            // 000000104150: DC520000 027C0000
	s_waitcnt vmcnt(0)                                         // 000000104158: BF8903F7
	v_add_f32_e32 v11, v11, v2                                 // 00000010415C: 0616050B
	s_bitcmp1_b32 s3, 8                                        // 000000104160: BF0D8803
	s_mov_b32 s5, -1                                           // 000000104164: BE8500C1
	s_cselect_b32 s3, -1, 0                                    // 000000104168: 980380C1
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000010416C: BF870009
	s_and_b32 vcc_lo, exec_lo, s3                              // 000000104170: 8B6A037E
	s_cbranch_vccnz 3                                          // 000000104174: BFA40003 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3784>
	s_mov_b32 s5, 0                                            // 000000104178: BE850080
	global_store_b32 v[0:1], v11, off                          // 00000010417C: DC6A0000 007C0B00
	s_mov_b32 s3, 0                                            // 000000104184: BE830080
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 000000104188: 916A057E
	s_mov_b32 s5, s4                                           // 00000010418C: BE850004
	s_cbranch_vccnz 7                                          // 000000104190: BFA40007 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x37b0>
	s_load_b32 s0, s[0:1], 0x2cc                               // 000000104194: F4000000 F80002CC
	s_mov_b32 s3, -1                                           // 00000010419C: BE8300C1
	s_mov_b32 s5, s4                                           // 0000001041A0: BE850004
	s_waitcnt lgkmcnt(0)                                       // 0000001041A4: BF89FC07
	s_cmp_lg_u32 s0, 1                                         // 0000001041A8: BF078100
	s_cbranch_scc1 18                                          // 0000001041AC: BFA20012 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x37f8>
	s_and_not1_b32 s0, s4, exec_lo                             // 0000001041B0: 91007E04
	s_and_b32 s1, s5, exec_lo                                  // 0000001041B4: 8B017E05
	s_and_b32 s7, s3, exec_lo                                  // 0000001041B8: 8B077E03
	s_or_b32 s4, s0, s1                                        // 0000001041BC: 8C040100
	s_or_b32 exec_lo, exec_lo, s6                              // 0000001041C0: 8C7E067E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001041C4: BF870009
	s_and_not1_b32 s0, s10, exec_lo                            // 0000001041C8: 91007E0A
	s_and_b32 s1, s4, exec_lo                                  // 0000001041CC: 8B017E04
	s_and_b32 s17, s7, exec_lo                                 // 0000001041D0: 8B117E07
	s_or_b32 s10, s0, s1                                       // 0000001041D4: 8C0A0100
	s_or_b32 exec_lo, exec_lo, s2                              // 0000001041D8: 8C7E027E
	s_and_saveexec_b32 s0, s10                                 // 0000001041DC: BE80200A
	s_cbranch_execnz 65456                                     // 0000001041E0: BFA6FFB0 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x36a4>
	s_branch 65455                                             // 0000001041E4: BFA0FFAF <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x36a4>
	s_cbranch_execnz 15                                        // 0000001041E8: BFA6000F <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3828>
	s_or_b32 s4, s10, exec_lo                                  // 0000001041EC: 8C047E0A
	s_cbranch_execz 65483                                      // 0000001041F0: BFA5FFCB <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3720>
	s_branch 65484                                             // 0000001041F4: BFA0FFCC <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3728>
	s_cbranch_execnz 24                                        // 0000001041F8: BFA60018 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x385c>
	s_mov_b32 s3, 0                                            // 0000001041FC: BE830080
	s_or_b32 s5, s4, exec_lo                                   // 000000104200: 8C057E04
	s_branch 65514                                             // 000000104204: BFA0FFEA <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x37b0>
	s_cbranch_execnz 33                                        // 000000104208: BFA60021 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3890>
	s_mov_b32 s10, -1                                          // 00000010420C: BE8A00C1
	s_cbranch_execz 65348                                      // 000000104210: BFA5FF44 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3524>
	s_branch 65354                                             // 000000104214: BFA0FF4A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3540>
	s_cbranch_execnz 42                                        // 000000104218: BFA6002A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x38c4>
	s_or_b32 s8, s10, exec_lo                                  // 00000010421C: 8C087E0A
	s_cbranch_execz 65386                                      // 000000104220: BFA5FF6A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x35cc>
	s_branch 65387                                             // 000000104224: BFA0FF6B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x35d4>
	s_trap 2                                                   // 000000104228: BF900002
	s_sendmsg_rtn_b32 s0, sendmsg(MSG_RTN_GET_DOORBELL)        // 00000010422C: BE804C80
	s_mov_b32 ttmp2, m0                                        // 000000104230: BEEE007D
	s_waitcnt lgkmcnt(0)                                       // 000000104234: BF89FC07
	s_and_b32 s0, s0, 0x3ff                                    // 000000104238: 8B00FF00 000003FF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000104240: BF870499
	s_bitset1_b32 s0, 10                                       // 000000104244: BE80128A
	s_mov_b32 m0, s0                                           // 000000104248: BEFD0000
	s_sendmsg sendmsg(MSG_INTERRUPT)                           // 00000010424C: BFB60001
	s_mov_b32 m0, ttmp2                                        // 000000104250: BEFD006E
	s_sethalt 5                                                // 000000104254: BF820005
	s_branch 65534                                             // 000000104258: BFA0FFFE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3854>
	s_trap 2                                                   // 00000010425C: BF900002
	s_sendmsg_rtn_b32 s0, sendmsg(MSG_RTN_GET_DOORBELL)        // 000000104260: BE804C80
	s_mov_b32 ttmp2, m0                                        // 000000104264: BEEE007D
	s_waitcnt lgkmcnt(0)                                       // 000000104268: BF89FC07
	s_and_b32 s0, s0, 0x3ff                                    // 00000010426C: 8B00FF00 000003FF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000104274: BF870499
	s_bitset1_b32 s0, 10                                       // 000000104278: BE80128A
	s_mov_b32 m0, s0                                           // 00000010427C: BEFD0000
	s_sendmsg sendmsg(MSG_INTERRUPT)                           // 000000104280: BFB60001
	s_mov_b32 m0, ttmp2                                        // 000000104284: BEFD006E
	s_sethalt 5                                                // 000000104288: BF820005
	s_branch 65534                                             // 00000010428C: BFA0FFFE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3888>
	s_trap 2                                                   // 000000104290: BF900002
	s_sendmsg_rtn_b32 s0, sendmsg(MSG_RTN_GET_DOORBELL)        // 000000104294: BE804C80
	s_mov_b32 ttmp2, m0                                        // 000000104298: BEEE007D
	s_waitcnt lgkmcnt(0)                                       // 00000010429C: BF89FC07
	s_and_b32 s0, s0, 0x3ff                                    // 0000001042A0: 8B00FF00 000003FF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 0000001042A8: BF870499
	s_bitset1_b32 s0, 10                                       // 0000001042AC: BE80128A
	s_mov_b32 m0, s0                                           // 0000001042B0: BEFD0000
	s_sendmsg sendmsg(MSG_INTERRUPT)                           // 0000001042B4: BFB60001
	s_mov_b32 m0, ttmp2                                        // 0000001042B8: BEFD006E
	s_sethalt 5                                                // 0000001042BC: BF820005
	s_branch 65534                                             // 0000001042C0: BFA0FFFE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x38bc>
	s_trap 2                                                   // 0000001042C4: BF900002
	s_sendmsg_rtn_b32 s0, sendmsg(MSG_RTN_GET_DOORBELL)        // 0000001042C8: BE804C80
	s_mov_b32 ttmp2, m0                                        // 0000001042CC: BEEE007D
	s_waitcnt lgkmcnt(0)                                       // 0000001042D0: BF89FC07
	s_and_b32 s0, s0, 0x3ff                                    // 0000001042D4: 8B00FF00 000003FF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 0000001042DC: BF870499
	s_bitset1_b32 s0, 10                                       // 0000001042E0: BE80128A
	s_mov_b32 m0, s0                                           // 0000001042E4: BEFD0000
	s_sendmsg sendmsg(MSG_INTERRUPT)                           // 0000001042E8: BFB60001
	s_mov_b32 m0, ttmp2                                        // 0000001042EC: BEFD006E
	s_sethalt 5                                                // 0000001042F0: BF820005
	s_branch 65534                                             // 0000001042F4: BFA0FFFE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x38f0>
