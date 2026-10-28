
/root/batchmatmulmaxsum/implement/hip/results/s0_20261028/code_objects/_code_object0004.o:	file format elf64-amdgpu

Disassembly of section .text:

00000000000fcb00 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_>:
	s_clause 0x3                                               // 0000000FCB00: BF850003
	s_load_b128 s[8:11], s[0:1], 0x20                          // 0000000FCB04: F4080200 F8000020
	s_load_b32 s2, s[0:1], 0x30                                // 0000000FCB0C: F4000080 F8000030
	s_load_b32 s27, s[0:1], 0x14c                              // 0000000FCB14: F40006C0 F800014C
	s_load_b32 s3, s[0:1], 0x18                                // 0000000FCB1C: F40000C0 F8000018
	v_and_b32_e32 v1, 0x3ff, v0                                // 0000000FCB24: 360200FF 000003FF
	v_bfe_u32 v0, v0, 10, 10                                   // 0000000FCB2C: D6100000 02291500
	s_mov_b32 s6, -1                                           // 0000000FCB34: BE8600C1
	s_waitcnt lgkmcnt(0)                                       // 0000000FCB38: BF89FC07
	s_delay_alu instid0(VALU_DEP_2)                            // 0000000FCB3C: BF870002
	v_mul_lo_u32 v2, s11, v1                                   // 0000000FCB40: D72C0002 0002020B
	s_add_i32 s26, s27, -1                                     // 0000000FCB48: 811AC11B
	s_mul_i32 s3, s3, s14                                      // 0000000FCB4C: 96030E03
	s_cmp_gt_u32 s26, 1                                        // 0000000FCB50: BF08811A
	s_cselect_b32 s11, -1, 0                                   // 0000000FCB54: 980B80C1
	s_cmp_lt_u32 s26, 2                                        // 0000000FCB58: BF0A821A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FCB5C: BF870091
	v_mad_u64_u32 v[3:4], null, s2, v0, v[2:3]                 // 0000000FCB60: D6FE7C03 040A0002
	v_add_lshl_u32 v24, v3, s3, 1                              // 0000000FCB68: D6470018 02040703
	s_cbranch_scc1 145                                         // 0000000FCB70: BFA20091 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2b8>
	s_cmp_lg_u32 s27, 0                                        // 0000000FCB74: BF07801B
	s_mov_b32 s6, 0                                            // 0000000FCB78: BE860080
	s_cbranch_scc0 92                                          // 0000000FCB7C: BFA1005C <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1f0>
	s_min_u32 s12, s26, 15                                     // 0000000FCB80: 898C8F1A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FCB84: BF870009
	s_add_i32 s12, s12, 1                                      // 0000000FCB88: 810C810C
	s_cmp_eq_u32 s26, 2                                        // 0000000FCB8C: BF06821A
	s_cbranch_scc1 89                                          // 0000000FCB90: BFA20059 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1f8>
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, v24             // 0000000FCB94: CA100080 02020118
	s_and_b32 s7, s12, 28                                      // 0000000FCB9C: 8B079C0C
	s_add_u32 s2, s0, 0x214                                    // 0000000FCBA0: 8002FF00 00000214
	s_addc_u32 s3, s1, 0                                       // 0000000FCBA8: 82038001
	s_mov_b32 s13, 0                                           // 0000000FCBAC: BE8D0080
	s_mov_b64 s[4:5], s[0:1]                                   // 0000000FCBB0: BE840100
	s_clause 0x1                                               // 0000000FCBB4: BF850001
	s_load_b256 s[16:23], s[4:5], 0x150                        // 0000000FCBB8: F40C0402 F8000150
	s_load_b128 s[28:31], s[4:5], 0x170                        // 0000000FCBC0: F4080702 F8000170
	s_add_i32 s13, s13, 4                                      // 0000000FCBC8: 810D840D
	s_waitcnt lgkmcnt(0)                                       // 0000000FCBCC: BF89FC07
	v_mul_hi_u32 v4, s17, v3                                   // 0000000FCBD0: D72D0004 00020611
	s_load_b32 s17, s[2:3], null                               // 0000000FCBD8: F4000441 F8000000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FCBE0: BF870091
	v_add_nc_u32_e32 v4, v3, v4                                // 0000000FCBE4: 4A080903
	v_lshrrev_b32_e32 v4, s18, v4                              // 0000000FCBE8: 32080812
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FCBEC: BF870001
	v_mul_hi_u32 v5, s20, v4                                   // 0000000FCBF0: D72D0005 00020814
	v_mul_lo_u32 v8, v4, s16                                   // 0000000FCBF8: D72C0008 00002104
	s_clause 0x2                                               // 0000000FCC00: BF850002
	s_load_b32 s16, s[2:3], 0x8                                // 0000000FCC04: F4000401 F8000008
	s_load_b32 s18, s[2:3], 0x10                               // 0000000FCC0C: F4000481 F8000010
	s_load_b32 s20, s[2:3], 0x18                               // 0000000FCC14: F4000501 F8000018
	s_add_u32 s2, s2, 32                                       // 0000000FCC1C: 8002A002
	s_addc_u32 s3, s3, 0                                       // 0000000FCC20: 82038003
	s_add_u32 s4, s4, 48                                       // 0000000FCC24: 8004B004
	s_addc_u32 s5, s5, 0                                       // 0000000FCC28: 82058005
	v_add_nc_u32_e32 v5, v4, v5                                // 0000000FCC2C: 4A0A0B04
	v_sub_nc_u32_e32 v8, v3, v8                                // 0000000FCC30: 4C101103
	s_cmp_lg_u32 s7, s13                                       // 0000000FCC34: BF070D07
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FCC38: BF870122
	v_lshrrev_b32_e32 v5, s21, v5                              // 0000000FCC3C: 320A0A15
	s_waitcnt lgkmcnt(0)                                       // 0000000FCC40: BF89FC07
	v_mul_lo_u32 v8, v8, s17                                   // 0000000FCC44: D72C0008 00002308
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FCC4C: BF870122
	v_mul_hi_u32 v6, s23, v5                                   // 0000000FCC50: D72D0006 00020A17
	v_mul_lo_u32 v9, v5, s19                                   // 0000000FCC58: D72C0009 00002705
	v_add_nc_u32_e32 v6, v5, v6                                // 0000000FCC60: 4A0C0D05
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FCC64: BF870112
	v_sub_nc_u32_e32 v4, v4, v9                                // 0000000FCC68: 4C081304
	v_lshrrev_b32_e32 v6, s28, v6                              // 0000000FCC6C: 320C0C1C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FCC70: BF870112
	v_mul_lo_u32 v4, v4, s16                                   // 0000000FCC74: D72C0004 00002104
	v_mul_hi_u32 v7, s30, v6                                   // 0000000FCC7C: D72D0007 00020C1E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FCC84: BF870112
	v_add3_u32 v2, v8, v2, v4                                  // 0000000FCC88: D6550002 04120508
	v_add_nc_u32_e32 v7, v6, v7                                // 0000000FCC90: 4A0E0F06
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FCC94: BF870121
	v_lshrrev_b32_e32 v3, s31, v7                              // 0000000FCC98: 32060E1F
	v_mul_lo_u32 v7, v6, s22                                   // 0000000FCC9C: D72C0007 00002D06
	v_mul_lo_u32 v10, v3, s29                                  // 0000000FCCA4: D72C000A 00003B03
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FCCAC: BF870112
	v_sub_nc_u32_e32 v5, v5, v7                                // 0000000FCCB0: 4C0A0F05
	v_sub_nc_u32_e32 v6, v6, v10                               // 0000000FCCB4: 4C0C1506
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FCCB8: BF870112
	v_mul_lo_u32 v5, v5, s18                                   // 0000000FCCBC: D72C0005 00002505
	v_mul_lo_u32 v6, v6, s20                                   // 0000000FCCC4: D72C0006 00002906
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FCCCC: BF870001
	v_add3_u32 v2, v5, v2, v6                                  // 0000000FCCD0: D6550002 041A0505
	s_cbranch_scc1 65462                                       // 0000000FCCD8: BFA2FFB6 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xb4>
	s_and_b32 s12, s12, 3                                      // 0000000FCCDC: 8B0C830C
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FCCE0: BF870009
	s_cmp_eq_u32 s12, 0                                        // 0000000FCCE4: BF06800C
	s_cbranch_scc0 10                                          // 0000000FCCE8: BFA1000A <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x214>
	s_branch 50                                                // 0000000FCCEC: BFA00032 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2b8>
	v_mov_b32_e32 v2, 0                                        // 0000000FCCF0: 7E040280
	s_branch 48                                                // 0000000FCCF4: BFA00030 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2b8>
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, v24             // 0000000FCCF8: CA100080 02020118
	s_mov_b32 s7, 0                                            // 0000000FCD00: BE870080
	s_and_b32 s12, s12, 3                                      // 0000000FCD04: 8B0C830C
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FCD08: BF870009
	s_cmp_eq_u32 s12, 0                                        // 0000000FCD0C: BF06800C
	s_cbranch_scc1 41                                          // 0000000FCD10: BFA20029 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2b8>
	s_lshl_b32 s2, s7, 3                                       // 0000000FCD14: 84028307
	s_mul_i32 s4, s7, 12                                       // 0000000FCD18: 96048C07
	s_add_u32 s2, s0, s2                                       // 0000000FCD1C: 80020200
	s_addc_u32 s3, s1, 0                                       // 0000000FCD20: 82038001
	s_add_u32 s2, s2, 0x214                                    // 0000000FCD24: 8002FF02 00000214
	s_addc_u32 s3, s3, 0                                       // 0000000FCD2C: 82038003
	s_add_u32 s4, s0, s4                                       // 0000000FCD30: 80040400
	s_addc_u32 s5, s1, 0                                       // 0000000FCD34: 82058001
	s_nop 0                                                    // 0000000FCD38: BF800000
	s_nop 0                                                    // 0000000FCD3C: BF800000
	s_clause 0x1                                               // 0000000FCD40: BF850001
	s_load_b64 s[16:17], s[4:5], 0x150                         // 0000000FCD44: F4040402 F8000150
	s_load_b32 s7, s[4:5], 0x158                               // 0000000FCD4C: F40001C2 F8000158
	s_load_b32 s13, s[2:3], null                               // 0000000FCD54: F4000341 F8000000
	s_add_u32 s2, s2, 8                                        // 0000000FCD5C: 80028802
	s_addc_u32 s3, s3, 0                                       // 0000000FCD60: 82038003
	s_add_u32 s4, s4, 12                                       // 0000000FCD64: 80048C04
	s_addc_u32 s5, s5, 0                                       // 0000000FCD68: 82058005
	s_add_i32 s12, s12, -1                                     // 0000000FCD6C: 810CC10C
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 0000000FCD70: BF8700B9
	s_cmp_lg_u32 s12, 0                                        // 0000000FCD74: BF07800C
	s_waitcnt lgkmcnt(0)                                       // 0000000FCD78: BF89FC07
	v_mul_hi_u32 v4, s17, v3                                   // 0000000FCD7C: D72D0004 00020611
	v_add_nc_u32_e32 v4, v3, v4                                // 0000000FCD84: 4A080903
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FCD88: BF870091
	v_lshrrev_b32_e32 v6, s7, v4                               // 0000000FCD8C: 320C0807
	v_mul_lo_u32 v4, v6, s16                                   // 0000000FCD90: D72C0004 00002106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FCD98: BF870091
	v_sub_nc_u32_e32 v3, v3, v4                                // 0000000FCD9C: 4C060903
	v_mad_u64_u32 v[4:5], null, v3, s13, v[2:3]                // 0000000FCDA0: D6FE7C04 04081B03
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FCDA8: BF870001
	v_dual_mov_b32 v3, v6 :: v_dual_mov_b32 v2, v4             // 0000000FCDAC: CA100106 03020104
	s_cbranch_scc1 65506                                       // 0000000FCDB4: BFA2FFE2 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x240>
	s_and_not1_b32 vcc_lo, exec_lo, s6                         // 0000000FCDB8: 916A067E
	s_cbranch_vccnz 39                                         // 0000000FCDBC: BFA40027 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x35c>
	s_clause 0x1                                               // 0000000FCDC0: BF850001
	s_load_b128 s[4:7], s[0:1], 0x150                          // 0000000FCDC4: F4080100 F8000150
	s_load_b32 s2, s[0:1], 0x214                               // 0000000FCDCC: F4000080 F8000214
	s_cmp_lt_u32 s27, 2                                        // 0000000FCDD4: BF0A821B
	s_waitcnt lgkmcnt(0)                                       // 0000000FCDD8: BF89FC07
	v_mul_hi_u32 v2, s5, v24                                   // 0000000FCDDC: D72D0002 00023005
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FCDE4: BF870091
	v_add_nc_u32_e32 v2, v24, v2                               // 0000000FCDE8: 4A040518
	v_lshrrev_b32_e32 v3, s6, v2                               // 0000000FCDEC: 32060406
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FCDF0: BF870091
	v_mul_lo_u32 v2, v3, s4                                    // 0000000FCDF4: D72C0002 00000903
	v_sub_nc_u32_e32 v2, v24, v2                               // 0000000FCDFC: 4C040518
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FCE00: BF870001
	v_mul_lo_u32 v2, v2, s2                                    // 0000000FCE04: D72C0002 00000502
	s_cbranch_scc1 19                                          // 0000000FCE0C: BFA20013 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x35c>
	s_clause 0x1                                               // 0000000FCE10: BF850001
	s_load_b128 s[4:7], s[0:1], 0x15c                          // 0000000FCE14: F4080100 F800015C
	s_load_b32 s2, s[0:1], 0x21c                               // 0000000FCE1C: F4000080 F800021C
	s_waitcnt lgkmcnt(0)                                       // 0000000FCE24: BF89FC07
	v_mul_hi_u32 v4, s5, v3                                    // 0000000FCE28: D72D0004 00020605
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FCE30: BF870091
	v_add_nc_u32_e32 v4, v3, v4                                // 0000000FCE34: 4A080903
	v_lshrrev_b32_e32 v4, s6, v4                               // 0000000FCE38: 32080806
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FCE3C: BF870091
	v_mul_lo_u32 v4, v4, s4                                    // 0000000FCE40: D72C0004 00000904
	v_sub_nc_u32_e32 v5, v3, v4                                // 0000000FCE48: 4C0A0903
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FCE4C: BF870091
	v_mad_u64_u32 v[3:4], null, v5, s2, v[2:3]                 // 0000000FCE50: D6FE7C03 04080505
	v_mov_b32_e32 v2, v3                                       // 0000000FCE58: 7E040303
	s_load_b64 s[12:13], s[0:1], 0xc                           // 0000000FCE5C: F4040300 F800000C
	v_mul_lo_u32 v10, s8, v1                                   // 0000000FCE64: D72C000A 00020208
	v_mul_lo_u32 v11, s9, v0                                   // 0000000FCE6C: D72C000B 00020009
	s_mul_i32 s35, s10, s15                                    // 0000000FCE74: 96230F0A
	s_mov_b32 s3, -1                                           // 0000000FCE78: BE8300C1
	s_mov_b32 s28, 0                                           // 0000000FCE7C: BE9C0080
	s_mov_b32 s20, 0                                           // 0000000FCE80: BE940080
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FCE84: BF870091
	v_add_nc_u32_e32 v3, v11, v10                              // 0000000FCE88: 4A06150B
	v_add_nc_u32_e32 v14, s35, v3                              // 0000000FCE8C: 4A1C0623
	s_waitcnt lgkmcnt(0)                                       // 0000000FCE90: BF89FC07
	v_cmp_gt_u32_e32 vcc_lo, s13, v24                          // 0000000FCE94: 7C98300D
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 0000000FCE98: BF8704A2
	v_cmp_gt_u32_e64 s2, s12, v14                              // 0000000FCE9C: D44C0002 00021C0C
	s_and_b32 s2, vcc_lo, s2                                   // 0000000FCEA4: 8B02026A
	s_and_saveexec_b32 s29, s2                                 // 0000000FCEA8: BE9D2002
	s_cbranch_execz 2028                                       // 0000000FCEAC: BFA507EC <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2360>
	s_load_b32 s2, s[0:1], 0x40                                // 0000000FCEB0: F4000080 F8000040
	s_waitcnt lgkmcnt(0)                                       // 0000000FCEB8: BF89FC07
	s_bitcmp0_b32 s2, 0                                        // 0000000FCEBC: BF0C8002
	s_cbranch_scc0 798                                         // 0000000FCEC0: BFA1031E <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x103c>
	s_clause 0x4                                               // 0000000FCEC4: BF850004
	s_load_b32 s36, s[0:1], 0x10c                              // 0000000FCEC8: F4000900 F800010C
	s_load_b32 s37, s[0:1], 0x48                               // 0000000FCED0: F4000940 F8000048
	s_load_b32 s30, s[0:1], 0x14                               // 0000000FCED8: F4000780 F8000014
	s_load_b64 s[4:5], s[0:1], 0x290                           // 0000000FCEE0: F4040100 F8000290
	s_load_b32 s33, s[0:1], 0x4                                // 0000000FCEE8: F4000840 F8000004
	s_add_u32 s6, s0, 0x10c                                    // 0000000FCEF0: 8006FF00 0000010C
	s_addc_u32 s7, s1, 0                                       // 0000000FCEF8: 82078001
	s_waitcnt lgkmcnt(0)                                       // 0000000FCEFC: BF89FC07
	s_lshr_b32 s34, s36, 2                                     // 0000000FCF00: 85228224
	s_cmp_lg_u32 s37, 1                                        // 0000000FCF04: BF078125
	s_mul_i32 s31, s30, 3                                      // 0000000FCF08: 961F831E
	s_cselect_b32 s3, -1, 0                                    // 0000000FCF0C: 980380C1
	s_cmp_eq_u32 s37, 1                                        // 0000000FCF10: BF068125
	v_add_nc_u32_e32 v15, s31, v14                             // 0000000FCF14: 4A1E1C1F
	s_cselect_b32 s2, -1, 0                                    // 0000000FCF18: 980280C1
	s_cmp_eq_u32 s34, 1                                        // 0000000FCF1C: BF068122
	s_cselect_b32 s16, -1, 0                                   // 0000000FCF20: 981080C1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000FCF24: BF8700A9
	s_and_b32 s16, s2, s16                                     // 0000000FCF28: 8B101002
	v_add_co_u32 v12, s2, s4, v2                               // 0000000FCF2C: D700020C 00020404
	v_add_co_ci_u32_e64 v13, null, s5, 0, s2                   // 0000000FCF34: D5207C0D 00090005
	v_cmp_gt_u32_e64 s2, s12, v15                              // 0000000FCF3C: D44C0002 00021E0C
	s_and_not1_b32 vcc_lo, exec_lo, s16                        // 0000000FCF44: 916A107E
	s_cbranch_vccz 766                                         // 0000000FCF48: BFA302FE <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1044>
	s_and_b32 vcc_lo, exec_lo, s3                              // 0000000FCF4C: 8B6A037E
	s_cbranch_vccz 765                                         // 0000000FCF50: BFA302FD <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1048>
	v_dual_mov_b32 v17, s33 :: v_dual_mov_b32 v26, v14         // 0000000FCF54: CA100021 111A010E
	v_dual_mov_b32 v21, s33 :: v_dual_mov_b32 v22, s33         // 0000000FCF5C: CA100021 15160021
	v_dual_mov_b32 v23, s33 :: v_dual_mov_b32 v20, s33         // 0000000FCF64: CA100021 17140021
	v_dual_mov_b32 v19, s33 :: v_dual_mov_b32 v18, s33         // 0000000FCF6C: CA100021 13120021
	v_mov_b32_e32 v16, s33                                     // 0000000FCF74: 7E200221
	s_and_saveexec_b32 s38, s2                                 // 0000000FCF78: BEA62002
	s_cbranch_execz 757                                        // 0000000FCF7C: BFA502F5 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1054>
	s_clause 0x2                                               // 0000000FCF80: BF850002
	s_load_b128 s[16:19], s[0:1], 0x4c                         // 0000000FCF84: F4080400 F800004C
	s_load_b64 s[20:21], s[0:1], 0x5c                          // 0000000FCF8C: F4040500 F800005C
	s_load_b32 s39, s[0:1], 0x110                              // 0000000FCF94: F40009C0 F8000110
	v_sub_co_u32 v2, s3, s37, 1                                // 0000000FCF9C: D7010302 00010225
	s_xor_b32 s40, s3, -1                                      // 0000000FCFA4: 8D28C103
	v_dual_mov_b32 v16, s33 :: v_dual_mov_b32 v19, s33         // 0000000FCFA8: CA100021 10120021
	v_readfirstlane_b32 s4, v2                                 // 0000000FCFB0: 7E080502
	v_cndmask_b32_e64 v25, 0, 1, s40                           // 0000000FCFB4: D5010019 00A10280
	v_cmp_ne_u32_e64 s3, 2, v2                                 // 0000000FCFBC: D44D0003 00020482
	v_dual_mov_b32 v18, s33 :: v_dual_mov_b32 v23, s33         // 0000000FCFC4: CA100021 12160021
	s_min_u32 s4, s4, 15                                       // 0000000FCFCC: 89848F04
	v_dual_mov_b32 v20, s33 :: v_dual_mov_b32 v21, s33         // 0000000FCFD0: CA100021 14140021
	s_add_i32 s4, s4, 1                                        // 0000000FCFD8: 81048104
	v_dual_mov_b32 v22, s33 :: v_dual_mov_b32 v17, s33         // 0000000FCFDC: CA100021 16100021
	s_and_b32 s41, s4, 3                                       // 0000000FCFE4: 8B298304
	s_and_b32 s42, s4, 28                                      // 0000000FCFE8: 8B2A9C04
	v_cmp_lt_u32_e64 s4, 1, v2                                 // 0000000FCFEC: D4490004 00020481
	v_mov_b32_e32 v26, v14                                     // 0000000FCFF4: 7E34030E
	s_cmp_lg_u32 s41, 0                                        // 0000000FCFF8: BF078029
	s_mov_b32 s44, 0                                           // 0000000FCFFC: BEAC0080
	s_cselect_b32 s43, -1, 0                                   // 0000000FD000: 982B80C1
	s_branch 27                                                // 0000000FD004: BFA0001B <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x574>
	s_waitcnt vmcnt(2)                                         // 0000000FD008: BF890BF7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)// 0000000FD00C: BF8701C1
	v_dual_add_f32 v17, v17, v8 :: v_dual_and_b32 v6, -8, v6   // 0000000FD010: C9241111 11060CC8
	v_dual_add_f32 v21, v21, v9 :: v_dual_add_nc_u32 v26, s30, v26// 0000000FD018: C9201315 151A341E
	s_waitcnt vmcnt(1)                                         // 0000000FD020: BF8907F7
	v_dual_add_f32 v23, v23, v2 :: v_dual_add_f32 v22, v22, v3 // 0000000FD024: C9080517 17160716
	v_add_co_u32 v6, vcc_lo, v12, v6                           // 0000000FD02C: D7006A06 00020D0C
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FD034: BF870001
	v_add_co_ci_u32_e64 v7, null, 0, v13, vcc_lo               // 0000000FD038: D5207C07 01AA1A80
	s_waitcnt vmcnt(0)                                         // 0000000FD040: BF8903F7
	v_dual_add_f32 v19, v19, v5 :: v_dual_add_nc_u32 v8, s31, v26// 0000000FD044: C9200B13 1308341F
	v_add_f32_e32 v20, v20, v4                                 // 0000000FD04C: 06280914
	global_load_b64 v[6:7], v[6:7], off                        // 0000000FD050: DC560000 067C0006
	v_cmp_le_u32_e32 vcc_lo, s12, v8                           // 0000000FD058: 7C96100C
	s_or_b32 s44, vcc_lo, s44                                  // 0000000FD05C: 8C2C2C6A
	s_waitcnt vmcnt(0)                                         // 0000000FD060: BF8903F7
	v_add_f32_e32 v18, v18, v6                                 // 0000000FD064: 06240D12
	v_add_f32_e32 v16, v16, v7                                 // 0000000FD068: 06200F10
	s_and_not1_b32 exec_lo, exec_lo, s44                       // 0000000FD06C: 917E2C7E
	s_cbranch_execz 695                                        // 0000000FD070: BFA502B7 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1050>
	v_cmp_ne_u32_e64 s5, 1, v25                                // 0000000FD074: D44D0005 00023281
	s_and_b32 vcc_lo, exec_lo, s4                              // 0000000FD07C: 8B6A047E
	s_mov_b32 s22, -1                                          // 0000000FD080: BE9600C1
	s_cbranch_vccz 125                                         // 0000000FD084: BFA3007D <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x77c>
	v_mov_b32_e32 v2, 0                                        // 0000000FD088: 7E040280
	s_and_b32 vcc_lo, exec_lo, s5                              // 0000000FD08C: 8B6A057E
	s_cbranch_vccnz 121                                        // 0000000FD090: BFA40079 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x778>
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, v26             // 0000000FD094: CA100080 0202011A
	s_mov_b32 s5, 0                                            // 0000000FD09C: BE850080
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 0000000FD0A0: 916A037E
	s_cbranch_vccnz 69                                         // 0000000FD0A4: BFA40045 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x6bc>
	s_mov_b64 s[22:23], s[0:1]                                 // 0000000FD0A8: BE960100
	s_mov_b64 s[24:25], s[6:7]                                 // 0000000FD0AC: BE980106
	s_clause 0x1                                               // 0000000FD0B0: BF850001
	s_load_b256 s[48:55], s[22:23], 0x4c                       // 0000000FD0B4: F40C0C0B F800004C
	s_load_b128 s[56:59], s[22:23], 0x6c                       // 0000000FD0BC: F4080E0B F800006C
	s_load_b128 s[60:63], s[24:25], null                       // 0000000FD0C4: F4080F0C F8000000
	s_add_i32 s5, s5, 4                                        // 0000000FD0CC: 81058405
	s_add_u32 s24, s24, 16                                     // 0000000FD0D0: 80189018
	s_addc_u32 s25, s25, 0                                     // 0000000FD0D4: 82198019
	s_add_u32 s22, s22, 48                                     // 0000000FD0D8: 8016B016
	s_addc_u32 s23, s23, 0                                     // 0000000FD0DC: 82178017
	s_cmp_lg_u32 s42, s5                                       // 0000000FD0E0: BF07052A
	s_waitcnt lgkmcnt(0)                                       // 0000000FD0E4: BF89FC07
	v_mul_hi_u32 v4, s49, v3                                   // 0000000FD0E8: D72D0004 00020631
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD0F0: BF870091
	v_add_nc_u32_e32 v4, v3, v4                                // 0000000FD0F4: 4A080903
	v_lshrrev_b32_e32 v4, s50, v4                              // 0000000FD0F8: 32080832
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FD0FC: BF870121
	v_mul_hi_u32 v5, s52, v4                                   // 0000000FD100: D72D0005 00020834
	v_mul_lo_u32 v8, v4, s48                                   // 0000000FD108: D72C0008 00006104
	v_add_nc_u32_e32 v5, v4, v5                                // 0000000FD110: 4A0A0B04
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD114: BF870112
	v_sub_nc_u32_e32 v8, v3, v8                                // 0000000FD118: 4C101103
	v_lshrrev_b32_e32 v5, s53, v5                              // 0000000FD11C: 320A0A35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD120: BF870112
	v_mul_lo_u32 v8, v8, s60                                   // 0000000FD124: D72C0008 00007908
	v_mul_hi_u32 v6, s55, v5                                   // 0000000FD12C: D72D0006 00020A37
	v_mul_lo_u32 v9, v5, s51                                   // 0000000FD134: D72C0009 00006705
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD13C: BF870112
	v_add_nc_u32_e32 v6, v5, v6                                // 0000000FD140: 4A0C0D05
	v_sub_nc_u32_e32 v4, v4, v9                                // 0000000FD144: 4C081304
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD148: BF870112
	v_lshrrev_b32_e32 v6, s56, v6                              // 0000000FD14C: 320C0C38
	v_mul_lo_u32 v4, v4, s61                                   // 0000000FD150: D72C0004 00007B04
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD158: BF870112
	v_mul_hi_u32 v7, s58, v6                                   // 0000000FD15C: D72D0007 00020C3A
	v_add3_u32 v2, v8, v2, v4                                  // 0000000FD164: D6550002 04120508
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD16C: BF870092
	v_add_nc_u32_e32 v7, v6, v7                                // 0000000FD170: 4A0E0F06
	v_lshrrev_b32_e32 v3, s59, v7                              // 0000000FD174: 32060E3B
	v_mul_lo_u32 v7, v6, s54                                   // 0000000FD178: D72C0007 00006D06
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD180: BF870112
	v_mul_lo_u32 v27, v3, s57                                  // 0000000FD184: D72C001B 00007303
	v_sub_nc_u32_e32 v5, v5, v7                                // 0000000FD18C: 4C0A0F05
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD190: BF870112
	v_sub_nc_u32_e32 v6, v6, v27                               // 0000000FD194: 4C0C3706
	v_mul_lo_u32 v5, v5, s62                                   // 0000000FD198: D72C0005 00007D05
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD1A0: BF870092
	v_mul_lo_u32 v6, v6, s63                                   // 0000000FD1A4: D72C0006 00007F06
	v_add3_u32 v2, v5, v2, v6                                  // 0000000FD1AC: D6550002 041A0505
	s_cbranch_scc1 65470                                       // 0000000FD1B4: BFA2FFBE <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x5b0>
	s_mov_b32 s5, s42                                          // 0000000FD1B8: BE85002A
	s_and_not1_b32 vcc_lo, exec_lo, s43                        // 0000000FD1BC: 916A2B7E
	s_cbranch_vccnz 45                                         // 0000000FD1C0: BFA4002D <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x778>
	s_lshl_b32 s22, s5, 2                                      // 0000000FD1C4: 84168205
	s_mul_i32 s5, s5, 12                                       // 0000000FD1C8: 96058C05
	s_add_u32 s22, s6, s22                                     // 0000000FD1CC: 80161606
	s_addc_u32 s23, s7, 0                                      // 0000000FD1D0: 82178007
	s_add_u32 s24, s0, s5                                      // 0000000FD1D4: 80180500
	s_addc_u32 s25, s1, 0                                      // 0000000FD1D8: 82198001
	s_mov_b32 s5, s41                                          // 0000000FD1DC: BE850029
	s_nop 0                                                    // 0000000FD1E0: BF800000
	s_nop 0                                                    // 0000000FD1E4: BF800000
	s_nop 0                                                    // 0000000FD1E8: BF800000
	s_nop 0                                                    // 0000000FD1EC: BF800000
	s_nop 0                                                    // 0000000FD1F0: BF800000
	s_nop 0                                                    // 0000000FD1F4: BF800000
	s_nop 0                                                    // 0000000FD1F8: BF800000
	s_nop 0                                                    // 0000000FD1FC: BF800000
	s_clause 0x1                                               // 0000000FD200: BF850001
	s_load_b64 s[46:47], s[24:25], 0x4c                        // 0000000FD204: F4040B8C F800004C
	s_load_b32 s45, s[24:25], 0x54                             // 0000000FD20C: F4000B4C F8000054
	s_waitcnt lgkmcnt(0)                                       // 0000000FD214: BF89FC07
	v_mul_hi_u32 v4, s47, v3                                   // 0000000FD218: D72D0004 0002062F
	s_load_b32 s47, s[22:23], null                             // 0000000FD220: F4000BCB F8000000
	s_add_u32 s22, s22, 4                                      // 0000000FD228: 80168416
	s_addc_u32 s23, s23, 0                                     // 0000000FD22C: 82178017
	s_add_u32 s24, s24, 12                                     // 0000000FD230: 80188C18
	s_addc_u32 s25, s25, 0                                     // 0000000FD234: 82198019
	s_add_i32 s5, s5, -1                                       // 0000000FD238: 8105C105
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000FD23C: BF8700A9
	s_cmp_lg_u32 s5, 0                                         // 0000000FD240: BF078005
	v_add_nc_u32_e32 v4, v3, v4                                // 0000000FD244: 4A080903
	v_lshrrev_b32_e32 v6, s45, v4                              // 0000000FD248: 320C082D
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD24C: BF870091
	v_mul_lo_u32 v4, v6, s46                                   // 0000000FD250: D72C0004 00005D06
	v_sub_nc_u32_e32 v3, v3, v4                                // 0000000FD258: 4C060903
	s_waitcnt lgkmcnt(0)                                       // 0000000FD25C: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD260: BF870091
	v_mad_u64_u32 v[4:5], null, v3, s47, v[2:3]                // 0000000FD264: D6FE7C04 04085F03
	v_dual_mov_b32 v3, v6 :: v_dual_mov_b32 v2, v4             // 0000000FD26C: CA100106 03020104
	s_cbranch_scc1 65506                                       // 0000000FD274: BFA2FFE2 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x700>
	s_mov_b32 s22, 0                                           // 0000000FD278: BE960080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FD27C: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s22                        // 0000000FD280: 916A167E
	s_cbranch_vccnz 28                                         // 0000000FD284: BFA4001C <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x7f8>
	s_waitcnt lgkmcnt(0)                                       // 0000000FD288: BF89FC07
	v_mul_hi_u32 v2, v26, s17                                  // 0000000FD28C: D72D0002 0000231A
	s_and_not1_b32 vcc_lo, exec_lo, s40                        // 0000000FD294: 916A287E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD298: BF870091
	v_add_nc_u32_e32 v2, v26, v2                               // 0000000FD29C: 4A04051A
	v_lshrrev_b32_e32 v3, s18, v2                              // 0000000FD2A0: 32060412
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD2A4: BF870091
	v_mul_lo_u32 v2, v3, s16                                   // 0000000FD2A8: D72C0002 00002103
	v_sub_nc_u32_e32 v2, v26, v2                               // 0000000FD2B0: 4C04051A
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FD2B4: BF870001
	v_mul_lo_u32 v2, v2, s36                                   // 0000000FD2B8: D72C0002 00004902
	s_cbranch_vccnz 13                                         // 0000000FD2C0: BFA4000D <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x7f8>
	v_mul_hi_u32 v4, v3, s20                                   // 0000000FD2C4: D72D0004 00002903
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD2CC: BF870091
	v_add_nc_u32_e32 v4, v3, v4                                // 0000000FD2D0: 4A080903
	v_lshrrev_b32_e32 v4, s21, v4                              // 0000000FD2D4: 32080815
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD2D8: BF870091
	v_mul_lo_u32 v4, v4, s19                                   // 0000000FD2DC: D72C0004 00002704
	v_sub_nc_u32_e32 v5, v3, v4                                // 0000000FD2E4: 4C0A0903
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD2E8: BF870091
	v_mad_u64_u32 v[3:4], null, v5, s39, v[2:3]                // 0000000FD2EC: D6FE7C03 04084F05
	v_mov_b32_e32 v2, v3                                       // 0000000FD2F4: 7E040303
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 0000000FD2F8: BF870131
	v_and_b32_e32 v2, -8, v2                                   // 0000000FD2FC: 360404C8
	v_add_nc_u32_e32 v4, s30, v26                              // 0000000FD300: 4A08341E
	s_mov_b32 s5, -1                                           // 0000000FD304: BE8500C1
	v_add_co_u32 v2, vcc_lo, v12, v2                           // 0000000FD308: D7006A02 0002050C
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FD310: BF870001
	v_add_co_ci_u32_e64 v3, null, 0, v13, vcc_lo               // 0000000FD314: D5207C03 01AA1A80
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 0000000FD31C: 916A047E
	global_load_b64 v[8:9], v[2:3], off                        // 0000000FD320: DC560000 087C0002
	s_cbranch_vccnz 132                                        // 0000000FD328: BFA40084 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xa3c>
	v_mov_b32_e32 v2, 0                                        // 0000000FD32C: 7E040280
	s_and_not1_b32 vcc_lo, exec_lo, s40                        // 0000000FD330: 916A287E
	s_cbranch_vccnz 128                                        // 0000000FD334: BFA40080 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xa38>
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, v4              // 0000000FD338: CA100080 02020104
	s_mov_b32 s5, 0                                            // 0000000FD340: BE850080
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 0000000FD344: 916A037E
	s_cbranch_vccnz 69                                         // 0000000FD348: BFA40045 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x960>
	s_mov_b64 s[22:23], s[0:1]                                 // 0000000FD34C: BE960100
	s_mov_b64 s[24:25], s[6:7]                                 // 0000000FD350: BE980106
	s_clause 0x1                                               // 0000000FD354: BF850001
	s_load_b256 s[48:55], s[22:23], 0x4c                       // 0000000FD358: F40C0C0B F800004C
	s_load_b128 s[56:59], s[22:23], 0x6c                       // 0000000FD360: F4080E0B F800006C
	s_load_b128 s[60:63], s[24:25], null                       // 0000000FD368: F4080F0C F8000000
	s_add_i32 s5, s5, 4                                        // 0000000FD370: 81058405
	s_add_u32 s24, s24, 16                                     // 0000000FD374: 80189018
	s_addc_u32 s25, s25, 0                                     // 0000000FD378: 82198019
	s_add_u32 s22, s22, 48                                     // 0000000FD37C: 8016B016
	s_addc_u32 s23, s23, 0                                     // 0000000FD380: 82178017
	s_cmp_eq_u32 s42, s5                                       // 0000000FD384: BF06052A
	s_waitcnt lgkmcnt(0)                                       // 0000000FD388: BF89FC07
	v_mul_hi_u32 v5, s49, v3                                   // 0000000FD38C: D72D0005 00020631
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD394: BF870091
	v_add_nc_u32_e32 v5, v3, v5                                // 0000000FD398: 4A0A0B03
	v_lshrrev_b32_e32 v5, s50, v5                              // 0000000FD39C: 320A0A32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FD3A0: BF870121
	v_mul_hi_u32 v6, s52, v5                                   // 0000000FD3A4: D72D0006 00020A34
	v_mul_lo_u32 v27, v5, s48                                  // 0000000FD3AC: D72C001B 00006105
	v_add_nc_u32_e32 v6, v5, v6                                // 0000000FD3B4: 4A0C0D05
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD3B8: BF870112
	v_sub_nc_u32_e32 v27, v3, v27                              // 0000000FD3BC: 4C363703
	v_lshrrev_b32_e32 v6, s53, v6                              // 0000000FD3C0: 320C0C35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD3C4: BF870112
	v_mul_lo_u32 v27, v27, s60                                 // 0000000FD3C8: D72C001B 0000791B
	v_mul_hi_u32 v7, s55, v6                                   // 0000000FD3D0: D72D0007 00020C37
	v_mul_lo_u32 v28, v6, s51                                  // 0000000FD3D8: D72C001C 00006706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD3E0: BF870112
	v_add_nc_u32_e32 v7, v6, v7                                // 0000000FD3E4: 4A0E0F06
	v_sub_nc_u32_e32 v5, v5, v28                               // 0000000FD3E8: 4C0A3905
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD3EC: BF870112
	v_lshrrev_b32_e32 v7, s56, v7                              // 0000000FD3F0: 320E0E38
	v_mul_lo_u32 v5, v5, s61                                   // 0000000FD3F4: D72C0005 00007B05
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD3FC: BF870112
	v_mul_hi_u32 v26, s58, v7                                  // 0000000FD400: D72D001A 00020E3A
	v_add3_u32 v2, v27, v2, v5                                 // 0000000FD408: D6550002 0416051B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD410: BF870092
	v_add_nc_u32_e32 v26, v7, v26                              // 0000000FD414: 4A343507
	v_lshrrev_b32_e32 v3, s59, v26                             // 0000000FD418: 3206343B
	v_mul_lo_u32 v26, v7, s54                                  // 0000000FD41C: D72C001A 00006D07
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD424: BF870112
	v_mul_lo_u32 v29, v3, s57                                  // 0000000FD428: D72C001D 00007303
	v_sub_nc_u32_e32 v6, v6, v26                               // 0000000FD430: 4C0C3506
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD434: BF870112
	v_sub_nc_u32_e32 v7, v7, v29                               // 0000000FD438: 4C0E3B07
	v_mul_lo_u32 v6, v6, s62                                   // 0000000FD43C: D72C0006 00007D06
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD444: BF870092
	v_mul_lo_u32 v7, v7, s63                                   // 0000000FD448: D72C0007 00007F07
	v_add3_u32 v2, v6, v2, v7                                  // 0000000FD450: D6550002 041E0506
	s_cbranch_scc0 65470                                       // 0000000FD458: BFA1FFBE <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x854>
	s_mov_b32 s5, s42                                          // 0000000FD45C: BE85002A
	s_and_not1_b32 vcc_lo, exec_lo, s43                        // 0000000FD460: 916A2B7E
	s_cbranch_vccnz 52                                         // 0000000FD464: BFA40034 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xa38>
	s_lshl_b32 s22, s5, 2                                      // 0000000FD468: 84168205
	s_mul_i32 s5, s5, 12                                       // 0000000FD46C: 96058C05
	s_add_u32 s22, s6, s22                                     // 0000000FD470: 80161606
	s_addc_u32 s23, s7, 0                                      // 0000000FD474: 82178007
	s_add_u32 s24, s0, s5                                      // 0000000FD478: 80180500
	s_addc_u32 s25, s1, 0                                      // 0000000FD47C: 82198001
	s_mov_b32 s5, s41                                          // 0000000FD480: BE850029
	s_nop 0                                                    // 0000000FD484: BF800000
	s_nop 0                                                    // 0000000FD488: BF800000
	s_nop 0                                                    // 0000000FD48C: BF800000
	s_nop 0                                                    // 0000000FD490: BF800000
	s_nop 0                                                    // 0000000FD494: BF800000
	s_nop 0                                                    // 0000000FD498: BF800000
	s_nop 0                                                    // 0000000FD49C: BF800000
	s_nop 0                                                    // 0000000FD4A0: BF800000
	s_nop 0                                                    // 0000000FD4A4: BF800000
	s_nop 0                                                    // 0000000FD4A8: BF800000
	s_nop 0                                                    // 0000000FD4AC: BF800000
	s_nop 0                                                    // 0000000FD4B0: BF800000
	s_nop 0                                                    // 0000000FD4B4: BF800000
	s_nop 0                                                    // 0000000FD4B8: BF800000
	s_nop 0                                                    // 0000000FD4BC: BF800000
	s_clause 0x1                                               // 0000000FD4C0: BF850001
	s_load_b64 s[46:47], s[24:25], 0x4c                        // 0000000FD4C4: F4040B8C F800004C
	s_load_b32 s45, s[24:25], 0x54                             // 0000000FD4CC: F4000B4C F8000054
	s_waitcnt lgkmcnt(0)                                       // 0000000FD4D4: BF89FC07
	v_mul_hi_u32 v5, s47, v3                                   // 0000000FD4D8: D72D0005 0002062F
	s_load_b32 s47, s[22:23], null                             // 0000000FD4E0: F4000BCB F8000000
	s_add_u32 s22, s22, 4                                      // 0000000FD4E8: 80168416
	s_addc_u32 s23, s23, 0                                     // 0000000FD4EC: 82178017
	s_add_u32 s24, s24, 12                                     // 0000000FD4F0: 80188C18
	s_addc_u32 s25, s25, 0                                     // 0000000FD4F4: 82198019
	s_add_i32 s5, s5, -1                                       // 0000000FD4F8: 8105C105
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000FD4FC: BF8700A9
	s_cmp_lg_u32 s5, 0                                         // 0000000FD500: BF078005
	v_add_nc_u32_e32 v5, v3, v5                                // 0000000FD504: 4A0A0B03
	v_lshrrev_b32_e32 v7, s45, v5                              // 0000000FD508: 320E0A2D
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD50C: BF870091
	v_mul_lo_u32 v5, v7, s46                                   // 0000000FD510: D72C0005 00005D07
	v_sub_nc_u32_e32 v3, v3, v5                                // 0000000FD518: 4C060B03
	s_waitcnt lgkmcnt(0)                                       // 0000000FD51C: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD520: BF870091
	v_mad_u64_u32 v[5:6], null, v3, s47, v[2:3]                // 0000000FD524: D6FE7C05 04085F03
	v_dual_mov_b32 v3, v7 :: v_dual_mov_b32 v2, v5             // 0000000FD52C: CA100107 03020105
	s_cbranch_scc1 65506                                       // 0000000FD534: BFA2FFE2 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x9c0>
	s_mov_b32 s5, 0                                            // 0000000FD538: BE850080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FD53C: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 0000000FD540: 916A057E
	s_cbranch_vccnz 28                                         // 0000000FD544: BFA4001C <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xab8>
	s_waitcnt lgkmcnt(0)                                       // 0000000FD548: BF89FC07
	v_mul_hi_u32 v2, v4, s17                                   // 0000000FD54C: D72D0002 00002304
	s_and_not1_b32 vcc_lo, exec_lo, s40                        // 0000000FD554: 916A287E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD558: BF870091
	v_add_nc_u32_e32 v2, v4, v2                                // 0000000FD55C: 4A040504
	v_lshrrev_b32_e32 v3, s18, v2                              // 0000000FD560: 32060412
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD564: BF870091
	v_mul_lo_u32 v2, v3, s16                                   // 0000000FD568: D72C0002 00002103
	v_sub_nc_u32_e32 v2, v4, v2                                // 0000000FD570: 4C040504
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FD574: BF870001
	v_mul_lo_u32 v2, v2, s36                                   // 0000000FD578: D72C0002 00004902
	s_cbranch_vccnz 13                                         // 0000000FD580: BFA4000D <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xab8>
	v_mul_hi_u32 v5, v3, s20                                   // 0000000FD584: D72D0005 00002903
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD58C: BF870091
	v_add_nc_u32_e32 v5, v3, v5                                // 0000000FD590: 4A0A0B03
	v_lshrrev_b32_e32 v5, s21, v5                              // 0000000FD594: 320A0A15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD598: BF870091
	v_mul_lo_u32 v5, v5, s19                                   // 0000000FD59C: D72C0005 00002705
	v_sub_nc_u32_e32 v3, v3, v5                                // 0000000FD5A4: 4C060B03
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD5A8: BF870091
	v_mad_u64_u32 v[5:6], null, v3, s39, v[2:3]                // 0000000FD5AC: D6FE7C05 04084F03
	v_mov_b32_e32 v2, v5                                       // 0000000FD5B4: 7E040305
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 0000000FD5B8: BF870131
	v_and_b32_e32 v2, -8, v2                                   // 0000000FD5BC: 360404C8
	v_add_nc_u32_e32 v6, s30, v4                               // 0000000FD5C0: 4A0C081E
	s_mov_b32 s5, -1                                           // 0000000FD5C4: BE8500C1
	v_add_co_u32 v2, vcc_lo, v12, v2                           // 0000000FD5C8: D7006A02 0002050C
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FD5D0: BF870001
	v_add_co_ci_u32_e64 v3, null, 0, v13, vcc_lo               // 0000000FD5D4: D5207C03 01AA1A80
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 0000000FD5DC: 916A047E
	global_load_b64 v[2:3], v[2:3], off                        // 0000000FD5E0: DC560000 027C0002
	s_cbranch_vccnz 132                                        // 0000000FD5E8: BFA40084 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xcfc>
	v_mov_b32_e32 v4, 0                                        // 0000000FD5EC: 7E080280
	s_and_not1_b32 vcc_lo, exec_lo, s40                        // 0000000FD5F0: 916A287E
	s_cbranch_vccnz 128                                        // 0000000FD5F4: BFA40080 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xcf8>
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, v6              // 0000000FD5F8: CA100080 04040106
	s_mov_b32 s5, 0                                            // 0000000FD600: BE850080
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 0000000FD604: 916A037E
	s_cbranch_vccnz 69                                         // 0000000FD608: BFA40045 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xc20>
	s_mov_b64 s[22:23], s[0:1]                                 // 0000000FD60C: BE960100
	s_mov_b64 s[24:25], s[6:7]                                 // 0000000FD610: BE980106
	s_clause 0x1                                               // 0000000FD614: BF850001
	s_load_b256 s[48:55], s[22:23], 0x4c                       // 0000000FD618: F40C0C0B F800004C
	s_load_b128 s[56:59], s[22:23], 0x6c                       // 0000000FD620: F4080E0B F800006C
	s_load_b128 s[60:63], s[24:25], null                       // 0000000FD628: F4080F0C F8000000
	s_add_i32 s5, s5, 4                                        // 0000000FD630: 81058405
	s_add_u32 s24, s24, 16                                     // 0000000FD634: 80189018
	s_addc_u32 s25, s25, 0                                     // 0000000FD638: 82198019
	s_add_u32 s22, s22, 48                                     // 0000000FD63C: 8016B016
	s_addc_u32 s23, s23, 0                                     // 0000000FD640: 82178017
	s_cmp_eq_u32 s42, s5                                       // 0000000FD644: BF06052A
	s_waitcnt lgkmcnt(0)                                       // 0000000FD648: BF89FC07
	v_mul_hi_u32 v7, s49, v5                                   // 0000000FD64C: D72D0007 00020A31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD654: BF870091
	v_add_nc_u32_e32 v7, v5, v7                                // 0000000FD658: 4A0E0F05
	v_lshrrev_b32_e32 v7, s50, v7                              // 0000000FD65C: 320E0E32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FD660: BF870121
	v_mul_hi_u32 v26, s52, v7                                  // 0000000FD664: D72D001A 00020E34
	v_mul_lo_u32 v29, v7, s48                                  // 0000000FD66C: D72C001D 00006107
	v_add_nc_u32_e32 v26, v7, v26                              // 0000000FD674: 4A343507
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD678: BF870112
	v_sub_nc_u32_e32 v29, v5, v29                              // 0000000FD67C: 4C3A3B05
	v_lshrrev_b32_e32 v26, s53, v26                            // 0000000FD680: 32343435
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD684: BF870112
	v_mul_lo_u32 v29, v29, s60                                 // 0000000FD688: D72C001D 0000791D
	v_mul_hi_u32 v27, s55, v26                                 // 0000000FD690: D72D001B 00023437
	v_mul_lo_u32 v30, v26, s51                                 // 0000000FD698: D72C001E 0000671A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD6A0: BF870112
	v_add_nc_u32_e32 v27, v26, v27                             // 0000000FD6A4: 4A36371A
	v_sub_nc_u32_e32 v7, v7, v30                               // 0000000FD6A8: 4C0E3D07
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD6AC: BF870112
	v_lshrrev_b32_e32 v27, s56, v27                            // 0000000FD6B0: 32363638
	v_mul_lo_u32 v7, v7, s61                                   // 0000000FD6B4: D72C0007 00007B07
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD6BC: BF870112
	v_mul_hi_u32 v28, s58, v27                                 // 0000000FD6C0: D72D001C 0002363A
	v_add3_u32 v4, v29, v4, v7                                 // 0000000FD6C8: D6550004 041E091D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD6D0: BF870092
	v_add_nc_u32_e32 v28, v27, v28                             // 0000000FD6D4: 4A38391B
	v_lshrrev_b32_e32 v5, s59, v28                             // 0000000FD6D8: 320A383B
	v_mul_lo_u32 v28, v27, s54                                 // 0000000FD6DC: D72C001C 00006D1B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD6E4: BF870112
	v_mul_lo_u32 v31, v5, s57                                  // 0000000FD6E8: D72C001F 00007305
	v_sub_nc_u32_e32 v26, v26, v28                             // 0000000FD6F0: 4C34391A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD6F4: BF870112
	v_sub_nc_u32_e32 v27, v27, v31                             // 0000000FD6F8: 4C363F1B
	v_mul_lo_u32 v26, v26, s62                                 // 0000000FD6FC: D72C001A 00007D1A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD704: BF870092
	v_mul_lo_u32 v27, v27, s63                                 // 0000000FD708: D72C001B 00007F1B
	v_add3_u32 v4, v26, v4, v27                                // 0000000FD710: D6550004 046E091A
	s_cbranch_scc0 65470                                       // 0000000FD718: BFA1FFBE <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xb14>
	s_mov_b32 s5, s42                                          // 0000000FD71C: BE85002A
	s_and_not1_b32 vcc_lo, exec_lo, s43                        // 0000000FD720: 916A2B7E
	s_cbranch_vccnz 52                                         // 0000000FD724: BFA40034 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xcf8>
	s_lshl_b32 s22, s5, 2                                      // 0000000FD728: 84168205
	s_mul_i32 s5, s5, 12                                       // 0000000FD72C: 96058C05
	s_add_u32 s22, s6, s22                                     // 0000000FD730: 80161606
	s_addc_u32 s23, s7, 0                                      // 0000000FD734: 82178007
	s_add_u32 s24, s0, s5                                      // 0000000FD738: 80180500
	s_addc_u32 s25, s1, 0                                      // 0000000FD73C: 82198001
	s_mov_b32 s5, s41                                          // 0000000FD740: BE850029
	s_nop 0                                                    // 0000000FD744: BF800000
	s_nop 0                                                    // 0000000FD748: BF800000
	s_nop 0                                                    // 0000000FD74C: BF800000
	s_nop 0                                                    // 0000000FD750: BF800000
	s_nop 0                                                    // 0000000FD754: BF800000
	s_nop 0                                                    // 0000000FD758: BF800000
	s_nop 0                                                    // 0000000FD75C: BF800000
	s_nop 0                                                    // 0000000FD760: BF800000
	s_nop 0                                                    // 0000000FD764: BF800000
	s_nop 0                                                    // 0000000FD768: BF800000
	s_nop 0                                                    // 0000000FD76C: BF800000
	s_nop 0                                                    // 0000000FD770: BF800000
	s_nop 0                                                    // 0000000FD774: BF800000
	s_nop 0                                                    // 0000000FD778: BF800000
	s_nop 0                                                    // 0000000FD77C: BF800000
	s_clause 0x1                                               // 0000000FD780: BF850001
	s_load_b64 s[46:47], s[24:25], 0x4c                        // 0000000FD784: F4040B8C F800004C
	s_load_b32 s45, s[24:25], 0x54                             // 0000000FD78C: F4000B4C F8000054
	s_waitcnt lgkmcnt(0)                                       // 0000000FD794: BF89FC07
	v_mul_hi_u32 v7, s47, v5                                   // 0000000FD798: D72D0007 00020A2F
	s_load_b32 s47, s[22:23], null                             // 0000000FD7A0: F4000BCB F8000000
	s_add_u32 s22, s22, 4                                      // 0000000FD7A8: 80168416
	s_addc_u32 s23, s23, 0                                     // 0000000FD7AC: 82178017
	s_add_u32 s24, s24, 12                                     // 0000000FD7B0: 80188C18
	s_addc_u32 s25, s25, 0                                     // 0000000FD7B4: 82198019
	s_add_i32 s5, s5, -1                                       // 0000000FD7B8: 8105C105
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000FD7BC: BF8700A9
	s_cmp_lg_u32 s5, 0                                         // 0000000FD7C0: BF078005
	v_add_nc_u32_e32 v7, v5, v7                                // 0000000FD7C4: 4A0E0F05
	v_lshrrev_b32_e32 v7, s45, v7                              // 0000000FD7C8: 320E0E2D
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD7CC: BF870091
	v_mul_lo_u32 v26, v7, s46                                  // 0000000FD7D0: D72C001A 00005D07
	v_sub_nc_u32_e32 v5, v5, v26                               // 0000000FD7D8: 4C0A3505
	s_waitcnt lgkmcnt(0)                                       // 0000000FD7DC: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD7E0: BF870091
	v_mad_u64_u32 v[26:27], null, v5, s47, v[4:5]              // 0000000FD7E4: D6FE7C1A 04105F05
	v_dual_mov_b32 v5, v7 :: v_dual_mov_b32 v4, v26            // 0000000FD7EC: CA100107 0504011A
	s_cbranch_scc1 65506                                       // 0000000FD7F4: BFA2FFE2 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xc80>
	s_mov_b32 s5, 0                                            // 0000000FD7F8: BE850080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FD7FC: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 0000000FD800: 916A057E
	s_cbranch_vccnz 28                                         // 0000000FD804: BFA4001C <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xd78>
	s_waitcnt lgkmcnt(0)                                       // 0000000FD808: BF89FC07
	v_mul_hi_u32 v4, v6, s17                                   // 0000000FD80C: D72D0004 00002306
	s_and_not1_b32 vcc_lo, exec_lo, s40                        // 0000000FD814: 916A287E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD818: BF870091
	v_add_nc_u32_e32 v4, v6, v4                                // 0000000FD81C: 4A080906
	v_lshrrev_b32_e32 v5, s18, v4                              // 0000000FD820: 320A0812
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD824: BF870091
	v_mul_lo_u32 v4, v5, s16                                   // 0000000FD828: D72C0004 00002105
	v_sub_nc_u32_e32 v4, v6, v4                                // 0000000FD830: 4C080906
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FD834: BF870001
	v_mul_lo_u32 v4, v4, s36                                   // 0000000FD838: D72C0004 00004904
	s_cbranch_vccnz 13                                         // 0000000FD840: BFA4000D <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xd78>
	v_mul_hi_u32 v7, v5, s20                                   // 0000000FD844: D72D0007 00002905
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD84C: BF870091
	v_add_nc_u32_e32 v7, v5, v7                                // 0000000FD850: 4A0E0F05
	v_lshrrev_b32_e32 v7, s21, v7                              // 0000000FD854: 320E0E15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD858: BF870091
	v_mul_lo_u32 v7, v7, s19                                   // 0000000FD85C: D72C0007 00002707
	v_sub_nc_u32_e32 v5, v5, v7                                // 0000000FD864: 4C0A0F05
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD868: BF870091
	v_mad_u64_u32 v[26:27], null, v5, s39, v[4:5]              // 0000000FD86C: D6FE7C1A 04104F05
	v_mov_b32_e32 v4, v26                                      // 0000000FD874: 7E08031A
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 0000000FD878: BF870131
	v_and_b32_e32 v4, -8, v4                                   // 0000000FD87C: 360808C8
	v_add_nc_u32_e32 v26, s30, v6                              // 0000000FD880: 4A340C1E
	s_mov_b32 s5, -1                                           // 0000000FD884: BE8500C1
	v_add_co_u32 v4, vcc_lo, v12, v4                           // 0000000FD888: D7006A04 0002090C
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FD890: BF870001
	v_add_co_ci_u32_e64 v5, null, 0, v13, vcc_lo               // 0000000FD894: D5207C05 01AA1A80
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 0000000FD89C: 916A047E
	global_load_b64 v[4:5], v[4:5], off                        // 0000000FD8A0: DC560000 047C0004
	s_cbranch_vccnz 132                                        // 0000000FD8A8: BFA40084 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xfbc>
	v_mov_b32_e32 v6, 0                                        // 0000000FD8AC: 7E0C0280
	s_and_not1_b32 vcc_lo, exec_lo, s40                        // 0000000FD8B0: 916A287E
	s_cbranch_vccnz 128                                        // 0000000FD8B4: BFA40080 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xfb8>
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, v26             // 0000000FD8B8: CA100080 0606011A
	s_mov_b32 s5, 0                                            // 0000000FD8C0: BE850080
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 0000000FD8C4: 916A037E
	s_cbranch_vccnz 69                                         // 0000000FD8C8: BFA40045 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xee0>
	s_mov_b64 s[22:23], s[0:1]                                 // 0000000FD8CC: BE960100
	s_mov_b64 s[24:25], s[6:7]                                 // 0000000FD8D0: BE980106
	s_clause 0x1                                               // 0000000FD8D4: BF850001
	s_load_b256 s[48:55], s[22:23], 0x4c                       // 0000000FD8D8: F40C0C0B F800004C
	s_load_b128 s[56:59], s[22:23], 0x6c                       // 0000000FD8E0: F4080E0B F800006C
	s_load_b128 s[60:63], s[24:25], null                       // 0000000FD8E8: F4080F0C F8000000
	s_add_i32 s5, s5, 4                                        // 0000000FD8F0: 81058405
	s_add_u32 s24, s24, 16                                     // 0000000FD8F4: 80189018
	s_addc_u32 s25, s25, 0                                     // 0000000FD8F8: 82198019
	s_add_u32 s22, s22, 48                                     // 0000000FD8FC: 8016B016
	s_addc_u32 s23, s23, 0                                     // 0000000FD900: 82178017
	s_cmp_eq_u32 s42, s5                                       // 0000000FD904: BF06052A
	s_waitcnt lgkmcnt(0)                                       // 0000000FD908: BF89FC07
	v_mul_hi_u32 v27, s49, v7                                  // 0000000FD90C: D72D001B 00020E31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD914: BF870091
	v_add_nc_u32_e32 v27, v7, v27                              // 0000000FD918: 4A363707
	v_lshrrev_b32_e32 v27, s50, v27                            // 0000000FD91C: 32363632
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FD920: BF870121
	v_mul_hi_u32 v28, s52, v27                                 // 0000000FD924: D72D001C 00023634
	v_mul_lo_u32 v31, v27, s48                                 // 0000000FD92C: D72C001F 0000611B
	v_add_nc_u32_e32 v28, v27, v28                             // 0000000FD934: 4A38391B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD938: BF870112
	v_sub_nc_u32_e32 v31, v7, v31                              // 0000000FD93C: 4C3E3F07
	v_lshrrev_b32_e32 v28, s53, v28                            // 0000000FD940: 32383835
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD944: BF870112
	v_mul_lo_u32 v31, v31, s60                                 // 0000000FD948: D72C001F 0000791F
	v_mul_hi_u32 v29, s55, v28                                 // 0000000FD950: D72D001D 00023837
	v_mul_lo_u32 v32, v28, s51                                 // 0000000FD958: D72C0020 0000671C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD960: BF870112
	v_add_nc_u32_e32 v29, v28, v29                             // 0000000FD964: 4A3A3B1C
	v_sub_nc_u32_e32 v27, v27, v32                             // 0000000FD968: 4C36411B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD96C: BF870112
	v_lshrrev_b32_e32 v29, s56, v29                            // 0000000FD970: 323A3A38
	v_mul_lo_u32 v27, v27, s61                                 // 0000000FD974: D72C001B 00007B1B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD97C: BF870112
	v_mul_hi_u32 v30, s58, v29                                 // 0000000FD980: D72D001E 00023A3A
	v_add3_u32 v6, v31, v6, v27                                // 0000000FD988: D6550006 046E0D1F
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD990: BF870092
	v_add_nc_u32_e32 v30, v29, v30                             // 0000000FD994: 4A3C3D1D
	v_lshrrev_b32_e32 v7, s59, v30                             // 0000000FD998: 320E3C3B
	v_mul_lo_u32 v30, v29, s54                                 // 0000000FD99C: D72C001E 00006D1D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD9A4: BF870112
	v_mul_lo_u32 v33, v7, s57                                  // 0000000FD9A8: D72C0021 00007307
	v_sub_nc_u32_e32 v28, v28, v30                             // 0000000FD9B0: 4C383D1C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FD9B4: BF870112
	v_sub_nc_u32_e32 v29, v29, v33                             // 0000000FD9B8: 4C3A431D
	v_mul_lo_u32 v28, v28, s62                                 // 0000000FD9BC: D72C001C 00007D1C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FD9C4: BF870092
	v_mul_lo_u32 v29, v29, s63                                 // 0000000FD9C8: D72C001D 00007F1D
	v_add3_u32 v6, v28, v6, v29                                // 0000000FD9D0: D6550006 04760D1C
	s_cbranch_scc0 65470                                       // 0000000FD9D8: BFA1FFBE <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xdd4>
	s_mov_b32 s5, s42                                          // 0000000FD9DC: BE85002A
	s_and_not1_b32 vcc_lo, exec_lo, s43                        // 0000000FD9E0: 916A2B7E
	s_cbranch_vccnz 52                                         // 0000000FD9E4: BFA40034 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xfb8>
	s_lshl_b32 s22, s5, 2                                      // 0000000FD9E8: 84168205
	s_mul_i32 s5, s5, 12                                       // 0000000FD9EC: 96058C05
	s_add_u32 s22, s6, s22                                     // 0000000FD9F0: 80161606
	s_addc_u32 s23, s7, 0                                      // 0000000FD9F4: 82178007
	s_add_u32 s24, s0, s5                                      // 0000000FD9F8: 80180500
	s_addc_u32 s25, s1, 0                                      // 0000000FD9FC: 82198001
	s_mov_b32 s5, s41                                          // 0000000FDA00: BE850029
	s_nop 0                                                    // 0000000FDA04: BF800000
	s_nop 0                                                    // 0000000FDA08: BF800000
	s_nop 0                                                    // 0000000FDA0C: BF800000
	s_nop 0                                                    // 0000000FDA10: BF800000
	s_nop 0                                                    // 0000000FDA14: BF800000
	s_nop 0                                                    // 0000000FDA18: BF800000
	s_nop 0                                                    // 0000000FDA1C: BF800000
	s_nop 0                                                    // 0000000FDA20: BF800000
	s_nop 0                                                    // 0000000FDA24: BF800000
	s_nop 0                                                    // 0000000FDA28: BF800000
	s_nop 0                                                    // 0000000FDA2C: BF800000
	s_nop 0                                                    // 0000000FDA30: BF800000
	s_nop 0                                                    // 0000000FDA34: BF800000
	s_nop 0                                                    // 0000000FDA38: BF800000
	s_nop 0                                                    // 0000000FDA3C: BF800000
	s_clause 0x1                                               // 0000000FDA40: BF850001
	s_load_b64 s[46:47], s[24:25], 0x4c                        // 0000000FDA44: F4040B8C F800004C
	s_load_b32 s45, s[24:25], 0x54                             // 0000000FDA4C: F4000B4C F8000054
	s_waitcnt lgkmcnt(0)                                       // 0000000FDA54: BF89FC07
	v_mul_hi_u32 v27, s47, v7                                  // 0000000FDA58: D72D001B 00020E2F
	s_load_b32 s47, s[22:23], null                             // 0000000FDA60: F4000BCB F8000000
	s_add_u32 s22, s22, 4                                      // 0000000FDA68: 80168416
	s_addc_u32 s23, s23, 0                                     // 0000000FDA6C: 82178017
	s_add_u32 s24, s24, 12                                     // 0000000FDA70: 80188C18
	s_addc_u32 s25, s25, 0                                     // 0000000FDA74: 82198019
	s_add_i32 s5, s5, -1                                       // 0000000FDA78: 8105C105
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000FDA7C: BF8700A9
	s_cmp_lg_u32 s5, 0                                         // 0000000FDA80: BF078005
	v_add_nc_u32_e32 v27, v7, v27                              // 0000000FDA84: 4A363707
	v_lshrrev_b32_e32 v29, s45, v27                            // 0000000FDA88: 323A362D
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDA8C: BF870091
	v_mul_lo_u32 v27, v29, s46                                 // 0000000FDA90: D72C001B 00005D1D
	v_sub_nc_u32_e32 v7, v7, v27                               // 0000000FDA98: 4C0E3707
	s_waitcnt lgkmcnt(0)                                       // 0000000FDA9C: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDAA0: BF870091
	v_mad_u64_u32 v[27:28], null, v7, s47, v[6:7]              // 0000000FDAA4: D6FE7C1B 04185F07
	v_dual_mov_b32 v7, v29 :: v_dual_mov_b32 v6, v27           // 0000000FDAAC: CA10011D 0706011B
	s_cbranch_scc1 65506                                       // 0000000FDAB4: BFA2FFE2 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0xf40>
	s_mov_b32 s5, 0                                            // 0000000FDAB8: BE850080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FDABC: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 0000000FDAC0: 916A057E
	s_cbranch_vccnz 64848                                      // 0000000FDAC4: BFA4FD50 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x508>
	s_waitcnt lgkmcnt(0)                                       // 0000000FDAC8: BF89FC07
	v_mul_hi_u32 v6, v26, s17                                  // 0000000FDACC: D72D0006 0000231A
	s_and_not1_b32 vcc_lo, exec_lo, s40                        // 0000000FDAD4: 916A287E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDAD8: BF870091
	v_add_nc_u32_e32 v6, v26, v6                               // 0000000FDADC: 4A0C0D1A
	v_lshrrev_b32_e32 v7, s18, v6                              // 0000000FDAE0: 320E0C12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDAE4: BF870091
	v_mul_lo_u32 v6, v7, s16                                   // 0000000FDAE8: D72C0006 00002107
	v_sub_nc_u32_e32 v6, v26, v6                               // 0000000FDAF0: 4C0C0D1A
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FDAF4: BF870001
	v_mul_lo_u32 v6, v6, s36                                   // 0000000FDAF8: D72C0006 00004906
	s_cbranch_vccnz 64833                                      // 0000000FDB00: BFA4FD41 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x508>
	v_mul_hi_u32 v27, v7, s20                                  // 0000000FDB04: D72D001B 00002907
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDB0C: BF870091
	v_add_nc_u32_e32 v27, v7, v27                              // 0000000FDB10: 4A363707
	v_lshrrev_b32_e32 v27, s21, v27                            // 0000000FDB14: 32363615
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDB18: BF870091
	v_mul_lo_u32 v27, v27, s19                                 // 0000000FDB1C: D72C001B 0000271B
	v_sub_nc_u32_e32 v7, v7, v27                               // 0000000FDB24: 4C0E3707
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDB28: BF870091
	v_mad_u64_u32 v[27:28], null, v7, s39, v[6:7]              // 0000000FDB2C: D6FE7C1B 04184F07
	v_mov_b32_e32 v6, v27                                      // 0000000FDB34: 7E0C031B
	s_branch 64819                                             // 0000000FDB38: BFA0FD33 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x508>
	s_mov_b32 s2, 0                                            // 0000000FDB3C: BE820080
	s_branch 1220                                              // 0000000FDB40: BFA004C4 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2354>
	s_branch 1017                                              // 0000000FDB44: BFA003F9 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x202c>
	s_cbranch_execnz 789                                       // 0000000FDB48: BFA60315 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1ca0>
	s_branch 1014                                              // 0000000FDB4C: BFA003F6 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2028>
	s_or_b32 exec_lo, exec_lo, s44                             // 0000000FDB50: 8C7E2C7E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FDB54: BF870009
	s_or_b32 exec_lo, exec_lo, s38                             // 0000000FDB58: 8C7E267E
	s_waitcnt lgkmcnt(0)                                       // 0000000FDB5C: BF89FC07
	s_mov_b32 s20, exec_lo                                     // 0000000FDB60: BE94007E
	v_cmpx_gt_u32_e64 s12, v26                                 // 0000000FDB64: D4CC007E 0002340C
	s_cbranch_execz 769                                        // 0000000FDB6C: BFA50301 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1c74>
	v_sub_co_u32 v8, s5, s37, 1                                // 0000000FDB70: D7010508 00010225
	s_mov_b32 s3, -1                                           // 0000000FDB78: BE8300C1
	s_xor_b32 s21, s5, -1                                      // 0000000FDB7C: 8D15C105
	v_cmp_lt_u32_e64 s4, 1, v8                                 // 0000000FDB80: D4490004 00021081
	v_readfirstlane_b32 s22, v8                                // 0000000FDB88: 7E2C0508
	s_and_b32 vcc_lo, exec_lo, s4                              // 0000000FDB8C: 8B6A047E
	s_min_u32 s23, s22, 15                                     // 0000000FDB90: 89978F16
	s_cbranch_vccz 126                                         // 0000000FDB94: BFA3007E <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1290>
	v_mov_b32_e32 v8, 0                                        // 0000000FDB98: 7E100280
	s_and_not1_b32 vcc_lo, exec_lo, s21                        // 0000000FDB9C: 916A157E
	s_cbranch_vccnz 122                                        // 0000000FDBA0: BFA4007A <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x128c>
	s_add_i32 s5, s23, 1                                       // 0000000FDBA4: 81058117
	s_cmp_eq_u32 s22, 2                                        // 0000000FDBA8: BF068216
	s_cbranch_scc1 73                                          // 0000000FDBAC: BFA20049 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x11d4>
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, v26             // 0000000FDBB0: CA100080 0808011A
	s_and_b32 s3, s5, 28                                       // 0000000FDBB8: 8B039C05
	s_mov_b32 s24, 0                                           // 0000000FDBBC: BE980080
	s_mov_b64 s[16:17], s[0:1]                                 // 0000000FDBC0: BE900100
	s_mov_b64 s[18:19], s[6:7]                                 // 0000000FDBC4: BE920106
	s_clause 0x1                                               // 0000000FDBC8: BF850001
	s_load_b256 s[40:47], s[16:17], 0x4c                       // 0000000FDBCC: F40C0A08 F800004C
	s_load_b128 s[48:51], s[16:17], 0x6c                       // 0000000FDBD4: F4080C08 F800006C
	s_load_b128 s[52:55], s[18:19], null                       // 0000000FDBDC: F4080D09 F8000000
	s_add_i32 s24, s24, 4                                      // 0000000FDBE4: 81188418
	s_add_u32 s18, s18, 16                                     // 0000000FDBE8: 80129012
	s_addc_u32 s19, s19, 0                                     // 0000000FDBEC: 82138013
	s_add_u32 s16, s16, 48                                     // 0000000FDBF0: 8010B010
	s_addc_u32 s17, s17, 0                                     // 0000000FDBF4: 82118011
	s_cmp_lg_u32 s3, s24                                       // 0000000FDBF8: BF071803
	s_waitcnt lgkmcnt(0)                                       // 0000000FDBFC: BF89FC07
	v_mul_hi_u32 v25, s41, v9                                  // 0000000FDC00: D72D0019 00021229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDC08: BF870091
	v_add_nc_u32_e32 v25, v9, v25                              // 0000000FDC0C: 4A323309
	v_lshrrev_b32_e32 v25, s42, v25                            // 0000000FDC10: 3232322A
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FDC14: BF870121
	v_mul_hi_u32 v27, s44, v25                                 // 0000000FDC18: D72D001B 0002322C
	v_mul_lo_u32 v30, v25, s40                                 // 0000000FDC20: D72C001E 00005119
	v_add_nc_u32_e32 v27, v25, v27                             // 0000000FDC28: 4A363719
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FDC2C: BF870112
	v_sub_nc_u32_e32 v30, v9, v30                              // 0000000FDC30: 4C3C3D09
	v_lshrrev_b32_e32 v27, s45, v27                            // 0000000FDC34: 3236362D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FDC38: BF870112
	v_mul_lo_u32 v30, v30, s52                                 // 0000000FDC3C: D72C001E 0000691E
	v_mul_hi_u32 v28, s47, v27                                 // 0000000FDC44: D72D001C 0002362F
	v_mul_lo_u32 v31, v27, s43                                 // 0000000FDC4C: D72C001F 0000571B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FDC54: BF870112
	v_add_nc_u32_e32 v28, v27, v28                             // 0000000FDC58: 4A38391B
	v_sub_nc_u32_e32 v25, v25, v31                             // 0000000FDC5C: 4C323F19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FDC60: BF870112
	v_lshrrev_b32_e32 v28, s48, v28                            // 0000000FDC64: 32383830
	v_mul_lo_u32 v25, v25, s53                                 // 0000000FDC68: D72C0019 00006B19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FDC70: BF870112
	v_mul_hi_u32 v29, s50, v28                                 // 0000000FDC74: D72D001D 00023832
	v_add3_u32 v8, v30, v8, v25                                // 0000000FDC7C: D6550008 0466111E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDC84: BF870092
	v_add_nc_u32_e32 v29, v28, v29                             // 0000000FDC88: 4A3A3B1C
	v_lshrrev_b32_e32 v9, s51, v29                             // 0000000FDC8C: 32123A33
	v_mul_lo_u32 v29, v28, s46                                 // 0000000FDC90: D72C001D 00005D1C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FDC98: BF870112
	v_mul_lo_u32 v32, v9, s49                                  // 0000000FDC9C: D72C0020 00006309
	v_sub_nc_u32_e32 v27, v27, v29                             // 0000000FDCA4: 4C363B1B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FDCA8: BF870112
	v_sub_nc_u32_e32 v28, v28, v32                             // 0000000FDCAC: 4C38411C
	v_mul_lo_u32 v27, v27, s54                                 // 0000000FDCB0: D72C001B 00006D1B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDCB8: BF870092
	v_mul_lo_u32 v28, v28, s55                                 // 0000000FDCBC: D72C001C 00006F1C
	v_add3_u32 v8, v27, v8, v28                                // 0000000FDCC4: D6550008 0472111B
	s_cbranch_scc1 65470                                       // 0000000FDCCC: BFA2FFBE <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x10c8>
	s_branch 3                                                 // 0000000FDCD0: BFA00003 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x11e0>
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, v26             // 0000000FDCD4: CA100080 0808011A
	s_mov_b32 s3, 0                                            // 0000000FDCDC: BE830080
	s_and_b32 s5, s5, 3                                        // 0000000FDCE0: 8B058305
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FDCE4: BF870009
	s_cmp_eq_u32 s5, 0                                         // 0000000FDCE8: BF068005
	s_cbranch_scc1 39                                          // 0000000FDCEC: BFA20027 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x128c>
	s_lshl_b32 s16, s3, 2                                      // 0000000FDCF0: 84108203
	s_mul_i32 s3, s3, 12                                       // 0000000FDCF4: 96038C03
	s_add_u32 s16, s0, s16                                     // 0000000FDCF8: 80101000
	s_addc_u32 s17, s1, 0                                      // 0000000FDCFC: 82118001
	s_add_u32 s16, s16, 0x10c                                  // 0000000FDD00: 8010FF10 0000010C
	s_addc_u32 s17, s17, 0                                     // 0000000FDD08: 82118011
	s_add_u32 s18, s0, s3                                      // 0000000FDD0C: 80120300
	s_addc_u32 s19, s1, 0                                      // 0000000FDD10: 82138001
	s_clause 0x1                                               // 0000000FDD14: BF850001
	s_load_b64 s[24:25], s[18:19], 0x4c                        // 0000000FDD18: F4040609 F800004C
	s_load_b32 s3, s[18:19], 0x54                              // 0000000FDD20: F40000C9 F8000054
	s_waitcnt lgkmcnt(0)                                       // 0000000FDD28: BF89FC07
	v_mul_hi_u32 v25, s25, v9                                  // 0000000FDD2C: D72D0019 00021219
	s_load_b32 s25, s[16:17], null                             // 0000000FDD34: F4000648 F8000000
	s_add_u32 s16, s16, 4                                      // 0000000FDD3C: 80108410
	s_addc_u32 s17, s17, 0                                     // 0000000FDD40: 82118011
	s_add_u32 s18, s18, 12                                     // 0000000FDD44: 80128C12
	s_addc_u32 s19, s19, 0                                     // 0000000FDD48: 82138013
	s_add_i32 s5, s5, -1                                       // 0000000FDD4C: 8105C105
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000FDD50: BF8700A9
	s_cmp_lg_u32 s5, 0                                         // 0000000FDD54: BF078005
	v_add_nc_u32_e32 v25, v9, v25                              // 0000000FDD58: 4A323309
	v_lshrrev_b32_e32 v25, s3, v25                             // 0000000FDD5C: 32323203
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDD60: BF870091
	v_mul_lo_u32 v27, v25, s24                                 // 0000000FDD64: D72C001B 00003119
	v_sub_nc_u32_e32 v9, v9, v27                               // 0000000FDD6C: 4C123709
	s_waitcnt lgkmcnt(0)                                       // 0000000FDD70: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDD74: BF870091
	v_mad_u64_u32 v[27:28], null, v9, s25, v[8:9]              // 0000000FDD78: D6FE7C1B 04203309
	v_dual_mov_b32 v9, v25 :: v_dual_mov_b32 v8, v27           // 0000000FDD80: CA100119 0908011B
	s_cbranch_scc1 65506                                       // 0000000FDD88: BFA2FFE2 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1214>
	s_mov_b32 s3, 0                                            // 0000000FDD8C: BE830080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FDD90: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 0000000FDD94: 916A037E
	s_cbranch_vccnz 36                                         // 0000000FDD98: BFA40024 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x132c>
	s_load_b128 s[16:19], s[0:1], 0x4c                         // 0000000FDD9C: F4080400 F800004C
	s_and_not1_b32 vcc_lo, exec_lo, s21                        // 0000000FDDA4: 916A157E
	s_waitcnt lgkmcnt(0)                                       // 0000000FDDA8: BF89FC07
	v_mul_hi_u32 v8, s17, v26                                  // 0000000FDDAC: D72D0008 00023411
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDDB4: BF870091
	v_add_nc_u32_e32 v8, v26, v8                               // 0000000FDDB8: 4A10111A
	v_lshrrev_b32_e32 v9, s18, v8                              // 0000000FDDBC: 32121012
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDDC0: BF870091
	v_mul_lo_u32 v8, v9, s16                                   // 0000000FDDC4: D72C0008 00002109
	v_sub_nc_u32_e32 v8, v26, v8                               // 0000000FDDCC: 4C10111A
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FDDD0: BF870001
	v_mul_lo_u32 v8, v8, s36                                   // 0000000FDDD4: D72C0008 00004908
	s_cbranch_vccnz 19                                         // 0000000FDDDC: BFA40013 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x132c>
	s_clause 0x1                                               // 0000000FDDE0: BF850001
	s_load_b128 s[16:19], s[0:1], 0x58                         // 0000000FDDE4: F4080400 F8000058
	s_load_b32 s3, s[0:1], 0x110                               // 0000000FDDEC: F40000C0 F8000110
	s_waitcnt lgkmcnt(0)                                       // 0000000FDDF4: BF89FC07
	v_mul_hi_u32 v25, s17, v9                                  // 0000000FDDF8: D72D0019 00021211
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDE00: BF870091
	v_add_nc_u32_e32 v25, v9, v25                              // 0000000FDE04: 4A323309
	v_lshrrev_b32_e32 v25, s18, v25                            // 0000000FDE08: 32323212
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDE0C: BF870091
	v_mul_lo_u32 v25, v25, s16                                 // 0000000FDE10: D72C0019 00002119
	v_sub_nc_u32_e32 v9, v9, v25                               // 0000000FDE18: 4C123309
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDE1C: BF870091
	v_mad_u64_u32 v[27:28], null, v9, s3, v[8:9]               // 0000000FDE20: D6FE7C1B 04200709
	v_mov_b32_e32 v8, v27                                      // 0000000FDE28: 7E10031B
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FDE2C: BF870121
	v_and_b32_e32 v8, -8, v8                                   // 0000000FDE30: 361010C8
	v_add_nc_u32_e32 v25, s30, v26                             // 0000000FDE34: 4A32341E
	v_add_co_u32 v8, vcc_lo, v12, v8                           // 0000000FDE38: D7006A08 0002110C
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 0000000FDE40: BF870191
	v_add_co_ci_u32_e64 v9, null, 0, v13, vcc_lo               // 0000000FDE44: D5207C09 01AA1A80
	v_cmp_gt_u32_e64 s3, s12, v25                              // 0000000FDE4C: D44C0003 0002320C
	global_load_b64 v[8:9], v[8:9], off                        // 0000000FDE54: DC560000 087C0008
	s_and_saveexec_b32 s18, s3                                 // 0000000FDE5C: BE922003
	s_cbranch_execz 551                                        // 0000000FDE60: BFA50227 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1c00>
	v_cndmask_b32_e64 v26, 0, 1, s4                            // 0000000FDE64: D501001A 00110280
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 0000000FDE6C: 916A047E
	s_cbranch_vccnz 79                                         // 0000000FDE70: BFA4004F <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x14b0>
	v_mov_b32_e32 v2, 0                                        // 0000000FDE74: 7E040280
	s_and_not1_b32 vcc_lo, exec_lo, s21                        // 0000000FDE78: 916A157E
	s_cbranch_vccnz 124                                        // 0000000FDE7C: BFA4007C <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1570>
	s_add_i32 s24, s23, 1                                      // 0000000FDE80: 81188117
	s_cmp_eq_u32 s22, 2                                        // 0000000FDE84: BF068216
	s_cbranch_scc1 75                                          // 0000000FDE88: BFA2004B <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x14b8>
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, v25             // 0000000FDE8C: CA100080 02020119
	s_and_b32 s19, s24, 28                                     // 0000000FDE94: 8B139C18
	s_mov_b32 s25, 0                                           // 0000000FDE98: BE990080
	s_mov_b64 s[4:5], s[0:1]                                   // 0000000FDE9C: BE840100
	s_mov_b64 s[16:17], s[6:7]                                 // 0000000FDEA0: BE900106
	s_clause 0x1                                               // 0000000FDEA4: BF850001
	s_load_b256 s[40:47], s[4:5], 0x4c                         // 0000000FDEA8: F40C0A02 F800004C
	s_load_b128 s[48:51], s[4:5], 0x6c                         // 0000000FDEB0: F4080C02 F800006C
	s_load_b128 s[52:55], s[16:17], null                       // 0000000FDEB8: F4080D08 F8000000
	s_add_i32 s25, s25, 4                                      // 0000000FDEC0: 81198419
	s_add_u32 s16, s16, 16                                     // 0000000FDEC4: 80109010
	s_addc_u32 s17, s17, 0                                     // 0000000FDEC8: 82118011
	s_add_u32 s4, s4, 48                                       // 0000000FDECC: 8004B004
	s_addc_u32 s5, s5, 0                                       // 0000000FDED0: 82058005
	s_cmp_eq_u32 s19, s25                                      // 0000000FDED4: BF061913
	s_waitcnt lgkmcnt(0)                                       // 0000000FDED8: BF89FC07
	v_mul_hi_u32 v27, s41, v3                                  // 0000000FDEDC: D72D001B 00020629
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDEE4: BF870091
	v_add_nc_u32_e32 v27, v3, v27                              // 0000000FDEE8: 4A363703
	v_lshrrev_b32_e32 v27, s42, v27                            // 0000000FDEEC: 3236362A
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FDEF0: BF870121
	v_mul_hi_u32 v28, s44, v27                                 // 0000000FDEF4: D72D001C 0002362C
	v_mul_lo_u32 v31, v27, s40                                 // 0000000FDEFC: D72C001F 0000511B
	v_add_nc_u32_e32 v28, v27, v28                             // 0000000FDF04: 4A38391B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FDF08: BF870112
	v_sub_nc_u32_e32 v31, v3, v31                              // 0000000FDF0C: 4C3E3F03
	v_lshrrev_b32_e32 v28, s45, v28                            // 0000000FDF10: 3238382D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FDF14: BF870112
	v_mul_lo_u32 v31, v31, s52                                 // 0000000FDF18: D72C001F 0000691F
	v_mul_hi_u32 v29, s47, v28                                 // 0000000FDF20: D72D001D 0002382F
	v_mul_lo_u32 v32, v28, s43                                 // 0000000FDF28: D72C0020 0000571C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FDF30: BF870112
	v_add_nc_u32_e32 v29, v28, v29                             // 0000000FDF34: 4A3A3B1C
	v_sub_nc_u32_e32 v27, v27, v32                             // 0000000FDF38: 4C36411B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FDF3C: BF870112
	v_lshrrev_b32_e32 v29, s48, v29                            // 0000000FDF40: 323A3A30
	v_mul_lo_u32 v27, v27, s53                                 // 0000000FDF44: D72C001B 00006B1B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FDF4C: BF870112
	v_mul_hi_u32 v30, s50, v29                                 // 0000000FDF50: D72D001E 00023A32
	v_add3_u32 v2, v31, v2, v27                                // 0000000FDF58: D6550002 046E051F
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDF60: BF870092
	v_add_nc_u32_e32 v30, v29, v30                             // 0000000FDF64: 4A3C3D1D
	v_lshrrev_b32_e32 v3, s51, v30                             // 0000000FDF68: 32063C33
	v_mul_lo_u32 v30, v29, s46                                 // 0000000FDF6C: D72C001E 00005D1D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FDF74: BF870112
	v_mul_lo_u32 v33, v3, s49                                  // 0000000FDF78: D72C0021 00006303
	v_sub_nc_u32_e32 v28, v28, v30                             // 0000000FDF80: 4C383D1C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FDF84: BF870112
	v_sub_nc_u32_e32 v29, v29, v33                             // 0000000FDF88: 4C3A431D
	v_mul_lo_u32 v28, v28, s54                                 // 0000000FDF8C: D72C001C 00006D1C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FDF94: BF870092
	v_mul_lo_u32 v29, v29, s55                                 // 0000000FDF98: D72C001D 00006F1D
	v_add3_u32 v2, v28, v2, v29                                // 0000000FDFA0: D6550002 0476051C
	s_cbranch_scc0 65470                                       // 0000000FDFA8: BFA1FFBE <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x13a4>
	s_branch 5                                                 // 0000000FDFAC: BFA00005 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x14c4>
	s_mov_b32 s4, -1                                           // 0000000FDFB0: BE8400C1
	s_branch 47                                                // 0000000FDFB4: BFA0002F <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1574>
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, v25             // 0000000FDFB8: CA100080 02020119
	s_mov_b32 s19, 0                                           // 0000000FDFC0: BE930080
	s_and_b32 s24, s24, 3                                      // 0000000FDFC4: 8B188318
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FDFC8: BF870009
	s_cmp_eq_u32 s24, 0                                        // 0000000FDFCC: BF068018
	s_cbranch_scc1 39                                          // 0000000FDFD0: BFA20027 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1570>
	s_lshl_b32 s4, s19, 2                                      // 0000000FDFD4: 84048213
	s_mul_i32 s16, s19, 12                                     // 0000000FDFD8: 96108C13
	s_add_u32 s4, s0, s4                                       // 0000000FDFDC: 80040400
	s_addc_u32 s5, s1, 0                                       // 0000000FDFE0: 82058001
	s_add_u32 s4, s4, 0x10c                                    // 0000000FDFE4: 8004FF04 0000010C
	s_addc_u32 s5, s5, 0                                       // 0000000FDFEC: 82058005
	s_add_u32 s16, s0, s16                                     // 0000000FDFF0: 80101000
	s_addc_u32 s17, s1, 0                                      // 0000000FDFF4: 82118001
	s_clause 0x1                                               // 0000000FDFF8: BF850001
	s_load_b64 s[38:39], s[16:17], 0x4c                        // 0000000FDFFC: F4040988 F800004C
	s_load_b32 s19, s[16:17], 0x54                             // 0000000FE004: F40004C8 F8000054
	s_load_b32 s25, s[4:5], null                               // 0000000FE00C: F4000642 F8000000
	s_add_u32 s4, s4, 4                                        // 0000000FE014: 80048404
	s_addc_u32 s5, s5, 0                                       // 0000000FE018: 82058005
	s_add_u32 s16, s16, 12                                     // 0000000FE01C: 80108C10
	s_addc_u32 s17, s17, 0                                     // 0000000FE020: 82118011
	s_add_i32 s24, s24, -1                                     // 0000000FE024: 8118C118
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 0000000FE028: BF8700B9
	s_cmp_lg_u32 s24, 0                                        // 0000000FE02C: BF078018
	s_waitcnt lgkmcnt(0)                                       // 0000000FE030: BF89FC07
	v_mul_hi_u32 v27, s39, v3                                  // 0000000FE034: D72D001B 00020627
	v_add_nc_u32_e32 v27, v3, v27                              // 0000000FE03C: 4A363703
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE040: BF870091
	v_lshrrev_b32_e32 v29, s19, v27                            // 0000000FE044: 323A3613
	v_mul_lo_u32 v27, v29, s38                                 // 0000000FE048: D72C001B 00004D1D
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE050: BF870091
	v_sub_nc_u32_e32 v3, v3, v27                               // 0000000FE054: 4C063703
	v_mad_u64_u32 v[27:28], null, v3, s25, v[2:3]              // 0000000FE058: D6FE7C1B 04083303
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FE060: BF870001
	v_dual_mov_b32 v3, v29 :: v_dual_mov_b32 v2, v27           // 0000000FE064: CA10011D 0302011B
	s_cbranch_scc1 65506                                       // 0000000FE06C: BFA2FFE2 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x14f8>
	s_mov_b32 s4, 0                                            // 0000000FE070: BE840080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FE074: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 0000000FE078: 916A047E
	s_cbranch_vccnz 36                                         // 0000000FE07C: BFA40024 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1610>
	s_load_b128 s[40:43], s[0:1], 0x4c                         // 0000000FE080: F4080A00 F800004C
	s_and_not1_b32 vcc_lo, exec_lo, s21                        // 0000000FE088: 916A157E
	s_waitcnt lgkmcnt(0)                                       // 0000000FE08C: BF89FC07
	v_mul_hi_u32 v2, s41, v25                                  // 0000000FE090: D72D0002 00023229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE098: BF870091
	v_add_nc_u32_e32 v2, v25, v2                               // 0000000FE09C: 4A040519
	v_lshrrev_b32_e32 v3, s42, v2                              // 0000000FE0A0: 3206042A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE0A4: BF870091
	v_mul_lo_u32 v2, v3, s40                                   // 0000000FE0A8: D72C0002 00005103
	v_sub_nc_u32_e32 v2, v25, v2                               // 0000000FE0B0: 4C040519
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FE0B4: BF870001
	v_mul_lo_u32 v2, v2, s36                                   // 0000000FE0B8: D72C0002 00004902
	s_cbranch_vccnz 19                                         // 0000000FE0C0: BFA40013 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1610>
	s_clause 0x1                                               // 0000000FE0C4: BF850001
	s_load_b128 s[40:43], s[0:1], 0x58                         // 0000000FE0C8: F4080A00 F8000058
	s_load_b32 s4, s[0:1], 0x110                               // 0000000FE0D0: F4000100 F8000110
	s_waitcnt lgkmcnt(0)                                       // 0000000FE0D8: BF89FC07
	v_mul_hi_u32 v27, s41, v3                                  // 0000000FE0DC: D72D001B 00020629
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE0E4: BF870091
	v_add_nc_u32_e32 v27, v3, v27                              // 0000000FE0E8: 4A363703
	v_lshrrev_b32_e32 v27, s42, v27                            // 0000000FE0EC: 3236362A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE0F0: BF870091
	v_mul_lo_u32 v27, v27, s40                                 // 0000000FE0F4: D72C001B 0000511B
	v_sub_nc_u32_e32 v3, v3, v27                               // 0000000FE0FC: 4C063703
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE100: BF870091
	v_mad_u64_u32 v[27:28], null, v3, s4, v[2:3]               // 0000000FE104: D6FE7C1B 04080903
	v_mov_b32_e32 v2, v27                                      // 0000000FE10C: 7E04031B
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 0000000FE110: BF870131
	v_and_b32_e32 v2, -8, v2                                   // 0000000FE114: 360404C8
	v_add_nc_u32_e32 v27, s30, v25                             // 0000000FE118: 4A36321E
	s_mov_b32 s19, exec_lo                                     // 0000000FE11C: BE93007E
	v_add_co_u32 v2, vcc_lo, v12, v2                           // 0000000FE120: D7006A02 0002050C
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FE128: BF870001
	v_add_co_ci_u32_e64 v3, null, 0, v13, vcc_lo               // 0000000FE12C: D5207C03 01AA1A80
	global_load_b64 v[2:3], v[2:3], off                        // 0000000FE134: DC560000 027C0002
	v_cmpx_gt_u32_e64 s12, v27                                 // 0000000FE13C: D4CC007E 0002360C
	s_cbranch_execz 364                                        // 0000000FE144: BFA5016C <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1bf8>
	v_cmp_ne_u32_e32 vcc_lo, 1, v26                            // 0000000FE148: 7C9A3481
	s_cbranch_vccnz 79                                         // 0000000FE14C: BFA4004F <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x178c>
	v_mov_b32_e32 v4, 0                                        // 0000000FE150: 7E080280
	s_and_not1_b32 vcc_lo, exec_lo, s21                        // 0000000FE154: 916A157E
	s_cbranch_vccnz 124                                        // 0000000FE158: BFA4007C <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x184c>
	s_add_i32 s25, s23, 1                                      // 0000000FE15C: 81198117
	s_cmp_eq_u32 s22, 2                                        // 0000000FE160: BF068216
	s_cbranch_scc1 75                                          // 0000000FE164: BFA2004B <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1794>
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, v27             // 0000000FE168: CA100080 0404011B
	s_and_b32 s24, s25, 28                                     // 0000000FE170: 8B189C19
	s_mov_b32 s37, 0                                           // 0000000FE174: BEA50080
	s_mov_b64 s[4:5], s[0:1]                                   // 0000000FE178: BE840100
	s_mov_b64 s[16:17], s[6:7]                                 // 0000000FE17C: BE900106
	s_clause 0x1                                               // 0000000FE180: BF850001
	s_load_b256 s[40:47], s[4:5], 0x4c                         // 0000000FE184: F40C0A02 F800004C
	s_load_b128 s[48:51], s[4:5], 0x6c                         // 0000000FE18C: F4080C02 F800006C
	s_load_b128 s[52:55], s[16:17], null                       // 0000000FE194: F4080D08 F8000000
	s_add_i32 s37, s37, 4                                      // 0000000FE19C: 81258425
	s_add_u32 s16, s16, 16                                     // 0000000FE1A0: 80109010
	s_addc_u32 s17, s17, 0                                     // 0000000FE1A4: 82118011
	s_add_u32 s4, s4, 48                                       // 0000000FE1A8: 8004B004
	s_addc_u32 s5, s5, 0                                       // 0000000FE1AC: 82058005
	s_cmp_eq_u32 s24, s37                                      // 0000000FE1B0: BF062518
	s_waitcnt lgkmcnt(0)                                       // 0000000FE1B4: BF89FC07
	v_mul_hi_u32 v28, s41, v5                                  // 0000000FE1B8: D72D001C 00020A29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE1C0: BF870091
	v_add_nc_u32_e32 v28, v5, v28                              // 0000000FE1C4: 4A383905
	v_lshrrev_b32_e32 v28, s42, v28                            // 0000000FE1C8: 3238382A
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FE1CC: BF870121
	v_mul_hi_u32 v29, s44, v28                                 // 0000000FE1D0: D72D001D 0002382C
	v_mul_lo_u32 v32, v28, s40                                 // 0000000FE1D8: D72C0020 0000511C
	v_add_nc_u32_e32 v29, v28, v29                             // 0000000FE1E0: 4A3A3B1C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FE1E4: BF870112
	v_sub_nc_u32_e32 v32, v5, v32                              // 0000000FE1E8: 4C404105
	v_lshrrev_b32_e32 v29, s45, v29                            // 0000000FE1EC: 323A3A2D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FE1F0: BF870112
	v_mul_lo_u32 v32, v32, s52                                 // 0000000FE1F4: D72C0020 00006920
	v_mul_hi_u32 v30, s47, v29                                 // 0000000FE1FC: D72D001E 00023A2F
	v_mul_lo_u32 v33, v29, s43                                 // 0000000FE204: D72C0021 0000571D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FE20C: BF870112
	v_add_nc_u32_e32 v30, v29, v30                             // 0000000FE210: 4A3C3D1D
	v_sub_nc_u32_e32 v28, v28, v33                             // 0000000FE214: 4C38431C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FE218: BF870112
	v_lshrrev_b32_e32 v30, s48, v30                            // 0000000FE21C: 323C3C30
	v_mul_lo_u32 v28, v28, s53                                 // 0000000FE220: D72C001C 00006B1C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FE228: BF870112
	v_mul_hi_u32 v31, s50, v30                                 // 0000000FE22C: D72D001F 00023C32
	v_add3_u32 v4, v32, v4, v28                                // 0000000FE234: D6550004 04720920
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE23C: BF870092
	v_add_nc_u32_e32 v31, v30, v31                             // 0000000FE240: 4A3E3F1E
	v_lshrrev_b32_e32 v5, s51, v31                             // 0000000FE244: 320A3E33
	v_mul_lo_u32 v31, v30, s46                                 // 0000000FE248: D72C001F 00005D1E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FE250: BF870112
	v_mul_lo_u32 v34, v5, s49                                  // 0000000FE254: D72C0022 00006305
	v_sub_nc_u32_e32 v29, v29, v31                             // 0000000FE25C: 4C3A3F1D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FE260: BF870112
	v_sub_nc_u32_e32 v30, v30, v34                             // 0000000FE264: 4C3C451E
	v_mul_lo_u32 v29, v29, s54                                 // 0000000FE268: D72C001D 00006D1D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE270: BF870092
	v_mul_lo_u32 v30, v30, s55                                 // 0000000FE274: D72C001E 00006F1E
	v_add3_u32 v4, v29, v4, v30                                // 0000000FE27C: D6550004 047A091D
	s_cbranch_scc0 65470                                       // 0000000FE284: BFA1FFBE <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1680>
	s_branch 5                                                 // 0000000FE288: BFA00005 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x17a0>
	s_mov_b32 s4, -1                                           // 0000000FE28C: BE8400C1
	s_branch 47                                                // 0000000FE290: BFA0002F <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1850>
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, v27             // 0000000FE294: CA100080 0404011B
	s_mov_b32 s24, 0                                           // 0000000FE29C: BE980080
	s_and_b32 s25, s25, 3                                      // 0000000FE2A0: 8B198319
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FE2A4: BF870009
	s_cmp_eq_u32 s25, 0                                        // 0000000FE2A8: BF068019
	s_cbranch_scc1 39                                          // 0000000FE2AC: BFA20027 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x184c>
	s_lshl_b32 s4, s24, 2                                      // 0000000FE2B0: 84048218
	s_mul_i32 s16, s24, 12                                     // 0000000FE2B4: 96108C18
	s_add_u32 s4, s0, s4                                       // 0000000FE2B8: 80040400
	s_addc_u32 s5, s1, 0                                       // 0000000FE2BC: 82058001
	s_add_u32 s4, s4, 0x10c                                    // 0000000FE2C0: 8004FF04 0000010C
	s_addc_u32 s5, s5, 0                                       // 0000000FE2C8: 82058005
	s_add_u32 s16, s0, s16                                     // 0000000FE2CC: 80101000
	s_addc_u32 s17, s1, 0                                      // 0000000FE2D0: 82118001
	s_clause 0x1                                               // 0000000FE2D4: BF850001
	s_load_b64 s[38:39], s[16:17], 0x4c                        // 0000000FE2D8: F4040988 F800004C
	s_load_b32 s24, s[16:17], 0x54                             // 0000000FE2E0: F4000608 F8000054
	s_load_b32 s37, s[4:5], null                               // 0000000FE2E8: F4000942 F8000000
	s_add_u32 s4, s4, 4                                        // 0000000FE2F0: 80048404
	s_addc_u32 s5, s5, 0                                       // 0000000FE2F4: 82058005
	s_add_u32 s16, s16, 12                                     // 0000000FE2F8: 80108C10
	s_addc_u32 s17, s17, 0                                     // 0000000FE2FC: 82118011
	s_add_i32 s25, s25, -1                                     // 0000000FE300: 8119C119
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 0000000FE304: BF8700B9
	s_cmp_lg_u32 s25, 0                                        // 0000000FE308: BF078019
	s_waitcnt lgkmcnt(0)                                       // 0000000FE30C: BF89FC07
	v_mul_hi_u32 v28, s39, v5                                  // 0000000FE310: D72D001C 00020A27
	v_add_nc_u32_e32 v28, v5, v28                              // 0000000FE318: 4A383905
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE31C: BF870091
	v_lshrrev_b32_e32 v30, s24, v28                            // 0000000FE320: 323C3818
	v_mul_lo_u32 v28, v30, s38                                 // 0000000FE324: D72C001C 00004D1E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE32C: BF870091
	v_sub_nc_u32_e32 v5, v5, v28                               // 0000000FE330: 4C0A3905
	v_mad_u64_u32 v[28:29], null, v5, s37, v[4:5]              // 0000000FE334: D6FE7C1C 04104B05
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FE33C: BF870001
	v_dual_mov_b32 v5, v30 :: v_dual_mov_b32 v4, v28           // 0000000FE340: CA10011E 0504011C
	s_cbranch_scc1 65506                                       // 0000000FE348: BFA2FFE2 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x17d4>
	s_mov_b32 s4, 0                                            // 0000000FE34C: BE840080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FE350: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 0000000FE354: 916A047E
	s_cbranch_vccnz 36                                         // 0000000FE358: BFA40024 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x18ec>
	s_load_b128 s[40:43], s[0:1], 0x4c                         // 0000000FE35C: F4080A00 F800004C
	s_and_not1_b32 vcc_lo, exec_lo, s21                        // 0000000FE364: 916A157E
	s_waitcnt lgkmcnt(0)                                       // 0000000FE368: BF89FC07
	v_mul_hi_u32 v4, s41, v27                                  // 0000000FE36C: D72D0004 00023629
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE374: BF870091
	v_add_nc_u32_e32 v4, v27, v4                               // 0000000FE378: 4A08091B
	v_lshrrev_b32_e32 v5, s42, v4                              // 0000000FE37C: 320A082A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE380: BF870091
	v_mul_lo_u32 v4, v5, s40                                   // 0000000FE384: D72C0004 00005105
	v_sub_nc_u32_e32 v4, v27, v4                               // 0000000FE38C: 4C08091B
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FE390: BF870001
	v_mul_lo_u32 v4, v4, s36                                   // 0000000FE394: D72C0004 00004904
	s_cbranch_vccnz 19                                         // 0000000FE39C: BFA40013 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x18ec>
	s_clause 0x1                                               // 0000000FE3A0: BF850001
	s_load_b128 s[40:43], s[0:1], 0x58                         // 0000000FE3A4: F4080A00 F8000058
	s_load_b32 s4, s[0:1], 0x110                               // 0000000FE3AC: F4000100 F8000110
	s_waitcnt lgkmcnt(0)                                       // 0000000FE3B4: BF89FC07
	v_mul_hi_u32 v28, s41, v5                                  // 0000000FE3B8: D72D001C 00020A29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE3C0: BF870091
	v_add_nc_u32_e32 v28, v5, v28                              // 0000000FE3C4: 4A383905
	v_lshrrev_b32_e32 v28, s42, v28                            // 0000000FE3C8: 3238382A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE3CC: BF870091
	v_mul_lo_u32 v28, v28, s40                                 // 0000000FE3D0: D72C001C 0000511C
	v_sub_nc_u32_e32 v5, v5, v28                               // 0000000FE3D8: 4C0A3905
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE3DC: BF870091
	v_mad_u64_u32 v[28:29], null, v5, s4, v[4:5]               // 0000000FE3E0: D6FE7C1C 04100905
	v_mov_b32_e32 v4, v28                                      // 0000000FE3E8: 7E08031C
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 0000000FE3EC: BF870131
	v_and_b32_e32 v4, -8, v4                                   // 0000000FE3F0: 360808C8
	v_add_nc_u32_e32 v27, s30, v27                             // 0000000FE3F4: 4A36361E
	s_mov_b32 s16, exec_lo                                     // 0000000FE3F8: BE90007E
	v_add_co_u32 v4, vcc_lo, v12, v4                           // 0000000FE3FC: D7006A04 0002090C
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FE404: BF870001
	v_add_co_ci_u32_e64 v5, null, 0, v13, vcc_lo               // 0000000FE408: D5207C05 01AA1A80
	global_load_b64 v[4:5], v[4:5], off                        // 0000000FE410: DC560000 047C0004
	v_cmpx_gt_u32_e64 s12, v27                                 // 0000000FE418: D4CC007E 0002360C
	s_cbranch_execz 180                                        // 0000000FE420: BFA500B4 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1bf4>
	v_cndmask_b32_e64 v6, 0, 1, s21                            // 0000000FE424: D5010006 00550280
	v_cmp_ne_u32_e32 vcc_lo, 1, v26                            // 0000000FE42C: 7C9A3481
	s_delay_alu instid0(VALU_DEP_2)                            // 0000000FE430: BF870002
	v_cmp_ne_u32_e64 s4, 1, v6                                 // 0000000FE434: D44D0004 00020C81
	s_cbranch_vccnz 78                                         // 0000000FE43C: BFA4004E <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1a78>
	v_mov_b32_e32 v6, 0                                        // 0000000FE440: 7E0C0280
	s_and_b32 vcc_lo, exec_lo, s4                              // 0000000FE444: 8B6A047E
	s_cbranch_vccnz 121                                        // 0000000FE448: BFA40079 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1b30>
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, v27             // 0000000FE44C: CA100080 0606011B
	s_add_i32 s23, s23, 1                                      // 0000000FE454: 81178117
	s_cmp_eq_u32 s22, 2                                        // 0000000FE458: BF068216
	s_cbranch_scc1 72                                          // 0000000FE45C: BFA20048 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1a80>
	s_and_b32 s17, s23, 28                                     // 0000000FE460: 8B119C17
	s_mov_b32 s22, 0                                           // 0000000FE464: BE960080
	s_mov_b64 s[4:5], s[0:1]                                   // 0000000FE468: BE840100
	s_clause 0x1                                               // 0000000FE46C: BF850001
	s_load_b256 s[40:47], s[4:5], 0x4c                         // 0000000FE470: F40C0A02 F800004C
	s_load_b128 s[48:51], s[4:5], 0x6c                         // 0000000FE478: F4080C02 F800006C
	s_load_b128 s[52:55], s[6:7], null                         // 0000000FE480: F4080D03 F8000000
	s_add_i32 s22, s22, 4                                      // 0000000FE488: 81168416
	s_add_u32 s6, s6, 16                                       // 0000000FE48C: 80069006
	s_addc_u32 s7, s7, 0                                       // 0000000FE490: 82078007
	s_add_u32 s4, s4, 48                                       // 0000000FE494: 8004B004
	s_addc_u32 s5, s5, 0                                       // 0000000FE498: 82058005
	s_cmp_eq_u32 s17, s22                                      // 0000000FE49C: BF061611
	s_waitcnt lgkmcnt(0)                                       // 0000000FE4A0: BF89FC07
	v_mul_hi_u32 v26, s41, v7                                  // 0000000FE4A4: D72D001A 00020E29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE4AC: BF870091
	v_add_nc_u32_e32 v26, v7, v26                              // 0000000FE4B0: 4A343507
	v_lshrrev_b32_e32 v26, s42, v26                            // 0000000FE4B4: 3234342A
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FE4B8: BF870121
	v_mul_hi_u32 v28, s44, v26                                 // 0000000FE4BC: D72D001C 0002342C
	v_mul_lo_u32 v31, v26, s40                                 // 0000000FE4C4: D72C001F 0000511A
	v_add_nc_u32_e32 v28, v26, v28                             // 0000000FE4CC: 4A38391A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FE4D0: BF870112
	v_sub_nc_u32_e32 v31, v7, v31                              // 0000000FE4D4: 4C3E3F07
	v_lshrrev_b32_e32 v28, s45, v28                            // 0000000FE4D8: 3238382D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FE4DC: BF870112
	v_mul_lo_u32 v31, v31, s52                                 // 0000000FE4E0: D72C001F 0000691F
	v_mul_hi_u32 v29, s47, v28                                 // 0000000FE4E8: D72D001D 0002382F
	v_mul_lo_u32 v32, v28, s43                                 // 0000000FE4F0: D72C0020 0000571C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FE4F8: BF870112
	v_add_nc_u32_e32 v29, v28, v29                             // 0000000FE4FC: 4A3A3B1C
	v_sub_nc_u32_e32 v26, v26, v32                             // 0000000FE500: 4C34411A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FE504: BF870112
	v_lshrrev_b32_e32 v29, s48, v29                            // 0000000FE508: 323A3A30
	v_mul_lo_u32 v26, v26, s53                                 // 0000000FE50C: D72C001A 00006B1A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FE514: BF870112
	v_mul_hi_u32 v30, s50, v29                                 // 0000000FE518: D72D001E 00023A32
	v_add3_u32 v6, v31, v6, v26                                // 0000000FE520: D6550006 046A0D1F
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE528: BF870092
	v_add_nc_u32_e32 v30, v29, v30                             // 0000000FE52C: 4A3C3D1D
	v_lshrrev_b32_e32 v7, s51, v30                             // 0000000FE530: 320E3C33
	v_mul_lo_u32 v30, v29, s46                                 // 0000000FE534: D72C001E 00005D1D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FE53C: BF870112
	v_mul_lo_u32 v33, v7, s49                                  // 0000000FE540: D72C0021 00006307
	v_sub_nc_u32_e32 v28, v28, v30                             // 0000000FE548: 4C383D1C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FE54C: BF870112
	v_sub_nc_u32_e32 v29, v29, v33                             // 0000000FE550: 4C3A431D
	v_mul_lo_u32 v28, v28, s54                                 // 0000000FE554: D72C001C 00006D1C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE55C: BF870092
	v_mul_lo_u32 v29, v29, s55                                 // 0000000FE560: D72C001D 00006F1D
	v_add3_u32 v6, v28, v6, v29                                // 0000000FE568: D6550006 04760D1C
	s_cbranch_scc0 65470                                       // 0000000FE570: BFA1FFBE <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x196c>
	s_branch 3                                                 // 0000000FE574: BFA00003 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1a84>
	s_mov_b32 s4, -1                                           // 0000000FE578: BE8400C1
	s_branch 45                                                // 0000000FE57C: BFA0002D <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1b34>
	s_mov_b32 s17, 0                                           // 0000000FE580: BE910080
	s_and_b32 s22, s23, 3                                      // 0000000FE584: 8B168317
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FE588: BF870009
	s_cmp_eq_u32 s22, 0                                        // 0000000FE58C: BF068016
	s_cbranch_scc1 39                                          // 0000000FE590: BFA20027 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1b30>
	s_lshl_b32 s4, s17, 2                                      // 0000000FE594: 84048211
	s_mul_i32 s6, s17, 12                                      // 0000000FE598: 96068C11
	s_add_u32 s4, s0, s4                                       // 0000000FE59C: 80040400
	s_addc_u32 s5, s1, 0                                       // 0000000FE5A0: 82058001
	s_add_u32 s4, s4, 0x10c                                    // 0000000FE5A4: 8004FF04 0000010C
	s_addc_u32 s5, s5, 0                                       // 0000000FE5AC: 82058005
	s_add_u32 s6, s0, s6                                       // 0000000FE5B0: 80060600
	s_addc_u32 s7, s1, 0                                       // 0000000FE5B4: 82078001
	s_clause 0x1                                               // 0000000FE5B8: BF850001
	s_load_b64 s[24:25], s[6:7], 0x4c                          // 0000000FE5BC: F4040603 F800004C
	s_load_b32 s17, s[6:7], 0x54                               // 0000000FE5C4: F4000443 F8000054
	s_load_b32 s23, s[4:5], null                               // 0000000FE5CC: F40005C2 F8000000
	s_add_u32 s4, s4, 4                                        // 0000000FE5D4: 80048404
	s_addc_u32 s5, s5, 0                                       // 0000000FE5D8: 82058005
	s_add_u32 s6, s6, 12                                       // 0000000FE5DC: 80068C06
	s_addc_u32 s7, s7, 0                                       // 0000000FE5E0: 82078007
	s_add_i32 s22, s22, -1                                     // 0000000FE5E4: 8116C116
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 0000000FE5E8: BF8700B9
	s_cmp_lg_u32 s22, 0                                        // 0000000FE5EC: BF078016
	s_waitcnt lgkmcnt(0)                                       // 0000000FE5F0: BF89FC07
	v_mul_hi_u32 v26, s25, v7                                  // 0000000FE5F4: D72D001A 00020E19
	v_add_nc_u32_e32 v26, v7, v26                              // 0000000FE5FC: 4A343507
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE600: BF870091
	v_lshrrev_b32_e32 v26, s17, v26                            // 0000000FE604: 32343411
	v_mul_lo_u32 v28, v26, s24                                 // 0000000FE608: D72C001C 0000311A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE610: BF870091
	v_sub_nc_u32_e32 v7, v7, v28                               // 0000000FE614: 4C0E3907
	v_mad_u64_u32 v[28:29], null, v7, s23, v[6:7]              // 0000000FE618: D6FE7C1C 04182F07
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FE620: BF870001
	v_dual_mov_b32 v7, v26 :: v_dual_mov_b32 v6, v28           // 0000000FE624: CA10011A 0706011C
	s_cbranch_scc1 65506                                       // 0000000FE62C: BFA2FFE2 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1ab8>
	s_mov_b32 s4, 0                                            // 0000000FE630: BE840080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FE634: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 0000000FE638: 916A047E
	s_cbranch_vccnz 36                                         // 0000000FE63C: BFA40024 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1bd0>
	s_load_b128 s[4:7], s[0:1], 0x4c                           // 0000000FE640: F4080100 F800004C
	s_and_not1_b32 vcc_lo, exec_lo, s21                        // 0000000FE648: 916A157E
	s_waitcnt lgkmcnt(0)                                       // 0000000FE64C: BF89FC07
	v_mul_hi_u32 v6, s5, v27                                   // 0000000FE650: D72D0006 00023605
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE658: BF870091
	v_add_nc_u32_e32 v6, v27, v6                               // 0000000FE65C: 4A0C0D1B
	v_lshrrev_b32_e32 v7, s6, v6                               // 0000000FE660: 320E0C06
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE664: BF870091
	v_mul_lo_u32 v6, v7, s4                                    // 0000000FE668: D72C0006 00000907
	v_sub_nc_u32_e32 v6, v27, v6                               // 0000000FE670: 4C0C0D1B
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FE674: BF870001
	v_mul_lo_u32 v6, v6, s36                                   // 0000000FE678: D72C0006 00004906
	s_cbranch_vccnz 19                                         // 0000000FE680: BFA40013 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1bd0>
	s_load_b128 s[4:7], s[0:1], 0x58                           // 0000000FE684: F4080100 F8000058
	s_waitcnt lgkmcnt(0)                                       // 0000000FE68C: BF89FC07
	s_load_b32 s7, s[0:1], 0x110                               // 0000000FE690: F40001C0 F8000110
	v_mul_hi_u32 v26, s5, v7                                   // 0000000FE698: D72D001A 00020E05
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE6A0: BF870091
	v_add_nc_u32_e32 v26, v7, v26                              // 0000000FE6A4: 4A343507
	v_lshrrev_b32_e32 v26, s6, v26                             // 0000000FE6A8: 32343406
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE6AC: BF870091
	v_mul_lo_u32 v26, v26, s4                                  // 0000000FE6B0: D72C001A 0000091A
	v_sub_nc_u32_e32 v7, v7, v26                               // 0000000FE6B8: 4C0E3507
	s_waitcnt lgkmcnt(0)                                       // 0000000FE6BC: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE6C0: BF870091
	v_mad_u64_u32 v[26:27], null, v7, s7, v[6:7]               // 0000000FE6C4: D6FE7C1A 04180F07
	v_mov_b32_e32 v6, v26                                      // 0000000FE6CC: 7E0C031A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE6D0: BF870091
	v_and_b32_e32 v6, -8, v6                                   // 0000000FE6D4: 360C0CC8
	v_add_co_u32 v6, vcc_lo, v12, v6                           // 0000000FE6D8: D7006A06 00020D0C
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FE6E0: BF870001
	v_add_co_ci_u32_e64 v7, null, 0, v13, vcc_lo               // 0000000FE6E4: D5207C07 01AA1A80
	global_load_b64 v[6:7], v[6:7], off                        // 0000000FE6EC: DC560000 067C0006
	s_or_b32 exec_lo, exec_lo, s16                             // 0000000FE6F4: 8C7E107E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FE6F8: BF870009
	s_or_b32 exec_lo, exec_lo, s19                             // 0000000FE6FC: 8C7E137E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FE700: BF870009
	s_or_b32 exec_lo, exec_lo, s18                             // 0000000FE704: 8C7E127E
	s_and_saveexec_b32 s4, s3                                  // 0000000FE708: BE842003
	s_cbranch_execz 21                                         // 0000000FE70C: BFA50015 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1c64>
	v_add_nc_u32_e32 v25, s30, v25                             // 0000000FE710: 4A32321E
	s_mov_b32 s3, exec_lo                                      // 0000000FE714: BE83007E
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FE718: BF870001
	v_cmpx_gt_u32_e64 s12, v25                                 // 0000000FE71C: D4CC007E 0002320C
	s_cbranch_execz 11                                         // 0000000FE724: BFA5000B <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1c54>
	s_waitcnt vmcnt(0)                                         // 0000000FE728: BF8903F7
	v_dual_add_f32 v6, v18, v6 :: v_dual_add_nc_u32 v25, s30, v25// 0000000FE72C: C9200D12 0618321E
	v_dual_add_f32 v20, v20, v4 :: v_dual_add_f32 v19, v19, v5 // 0000000FE734: C9080914 14120B13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)// 0000000FE73C: BF870192
	v_cmp_gt_u32_e32 vcc_lo, s12, v25                          // 0000000FE740: 7C98320C
	v_dual_add_f32 v7, v16, v7 :: v_dual_cndmask_b32 v18, v18, v6// 0000000FE744: C9120F10 07120D12
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FE74C: BF870001
	v_cndmask_b32_e32 v16, v16, v7, vcc_lo                     // 0000000FE750: 02200F10
	s_or_b32 exec_lo, exec_lo, s3                              // 0000000FE754: 8C7E037E
	s_waitcnt vmcnt(0)                                         // 0000000FE758: BF8903F7
	v_dual_add_f32 v23, v23, v2 :: v_dual_add_f32 v22, v22, v3 // 0000000FE75C: C9080517 17160716
	s_or_b32 exec_lo, exec_lo, s4                              // 0000000FE764: 8C7E047E
	s_waitcnt vmcnt(0)                                         // 0000000FE768: BF8903F7
	v_add_f32_e32 v17, v17, v8                                 // 0000000FE76C: 06221111
	v_add_f32_e32 v21, v21, v9                                 // 0000000FE770: 062A1315
	s_or_b32 exec_lo, exec_lo, s20                             // 0000000FE774: 8C7E147E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE778: BF870091
	v_add_f32_e32 v3, v22, v21                                 // 0000000FE77C: 06062B16
	v_add_f32_e32 v3, v19, v3                                  // 0000000FE780: 06060713
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE784: BF870091
	v_dual_add_f32 v2, v23, v17 :: v_dual_add_f32 v3, v16, v3  // 0000000FE788: C9082317 02020710
	v_add_f32_e32 v2, v20, v2                                  // 0000000FE790: 06040514
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FE794: BF870001
	v_add_f32_e32 v2, v18, v2                                  // 0000000FE798: 06040512
	s_branch 226                                               // 0000000FE79C: BFA000E2 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2028>
	v_dual_mov_b32 v17, s33 :: v_dual_mov_b32 v22, s33         // 0000000FE7A0: CA100021 11160021
	v_dual_mov_b32 v25, v14 :: v_dual_mov_b32 v20, s33         // 0000000FE7A8: CA10010E 19140021
	v_dual_mov_b32 v21, s33 :: v_dual_mov_b32 v18, s33         // 0000000FE7B0: CA100021 15120021
	v_dual_mov_b32 v23, s33 :: v_dual_mov_b32 v16, s33         // 0000000FE7B8: CA100021 17100021
	v_mov_b32_e32 v19, s33                                     // 0000000FE7C0: 7E260221
	s_and_saveexec_b32 s3, s2                                  // 0000000FE7C4: BE832002
	s_cbranch_execz 98                                         // 0000000FE7C8: BFA50062 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1e54>
	v_dual_mov_b32 v19, s33 :: v_dual_add_nc_u32 v2, s30, v11  // 0000000FE7CC: CA200021 1302161E
	v_lshl_add_u32 v3, s30, 1, v14                             // 0000000FE7D4: D6460003 0439021E
	v_mul_lo_u32 v9, s34, v15                                  // 0000000FE7DC: D72C0009 00021E22
	v_mul_lo_u32 v11, s34, v14                                 // 0000000FE7E4: D72C000B 00021C22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)// 0000000FE7EC: BF870244
	v_add3_u32 v2, v2, v10, s35                                // 0000000FE7F0: D6550002 008E1502
	v_dual_mov_b32 v16, s33 :: v_dual_mov_b32 v23, s33         // 0000000FE7F8: CA100021 10160021
	v_mul_lo_u32 v10, s34, v3                                  // 0000000FE800: D72C000A 00020622
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v21, s33            // 0000000FE808: CA100080 08140021
	v_mul_lo_u32 v15, s34, v2                                  // 0000000FE810: D72C000F 00020422
	v_dual_mov_b32 v18, s33 :: v_dual_mov_b32 v17, s33         // 0000000FE818: CA100021 12100021
	v_dual_mov_b32 v20, s33 :: v_dual_mov_b32 v25, v14         // 0000000FE820: CA100021 1418010E
	v_mov_b32_e32 v22, s33                                     // 0000000FE828: 7E2C0221
	s_mul_i32 s4, s30, s34                                     // 0000000FE82C: 9604221E
	s_mov_b32 s5, 0                                            // 0000000FE830: BE850080
	s_lshl_b32 s4, s4, 2                                       // 0000000FE834: 84048204
	s_add_i32 s6, s30, s30                                     // 0000000FE838: 81061E1E
	s_mov_b32 s7, 0                                            // 0000000FE83C: BE870080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FE840: BF870009
	v_add_nc_u32_e32 v2, s7, v11                               // 0000000FE844: 4A041607
	v_add_nc_u32_e32 v4, s7, v15                               // 0000000FE848: 4A081E07
	v_add_nc_u32_e32 v6, s7, v10                               // 0000000FE84C: 4A0C1407
	v_add_nc_u32_e32 v28, s7, v9                               // 0000000FE850: 4A381207
	v_add3_u32 v25, s6, s6, v25                                // 0000000FE854: D6550019 04640C06
	v_lshrrev_b32_e32 v7, 1, v2                                // 0000000FE85C: 320E0481
	s_add_i32 s7, s7, s4                                       // 0000000FE860: 81070407
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000FE864: BF8700A1
	v_lshlrev_b64 v[2:3], 3, v[7:8]                            // 0000000FE868: D73C0002 00020E83
	v_lshrrev_b32_e32 v7, 1, v4                                // 0000000FE870: 320E0881
	v_lshlrev_b64 v[4:5], 3, v[7:8]                            // 0000000FE874: D73C0004 00020E83
	v_lshrrev_b32_e32 v7, 1, v6                                // 0000000FE87C: 320E0C81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE880: BF870094
	v_add_co_u32 v2, vcc_lo, v12, v2                           // 0000000FE884: D7006A02 0002050C
	v_add_co_ci_u32_e64 v3, null, v13, v3, vcc_lo              // 0000000FE88C: D5207C03 01AA070D
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)// 0000000FE894: BF8700C3
	v_lshlrev_b64 v[26:27], 3, v[7:8]                          // 0000000FE898: D73C001A 00020E83
	v_lshrrev_b32_e32 v7, 1, v28                               // 0000000FE8A0: 320E3881
	global_load_b64 v[28:29], v[2:3], off                      // 0000000FE8A4: DC560000 1C7C0002
	v_add_co_u32 v2, vcc_lo, v12, v4                           // 0000000FE8AC: D7006A02 0002090C
	v_add_co_ci_u32_e64 v3, null, v13, v5, vcc_lo              // 0000000FE8B4: D5207C03 01AA0B0D
	v_lshlrev_b64 v[4:5], 3, v[7:8]                            // 0000000FE8BC: D73C0004 00020E83
	v_add_co_u32 v6, vcc_lo, v12, v26                          // 0000000FE8C4: D7006A06 0002350C
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 0000000FE8CC: BF870191
	v_add_co_ci_u32_e64 v7, null, v13, v27, vcc_lo             // 0000000FE8D0: D5207C07 01AA370D
	v_add_co_u32 v26, vcc_lo, v12, v4                          // 0000000FE8D8: D7006A1A 0002090C
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FE8E0: BF870001
	v_add_co_ci_u32_e64 v27, null, v13, v5, vcc_lo             // 0000000FE8E4: D5207C1B 01AA0B0D
	s_clause 0x2                                               // 0000000FE8EC: BF850002
	global_load_b64 v[2:3], v[2:3], off                        // 0000000FE8F0: DC560000 027C0002
	global_load_b64 v[4:5], v[6:7], off                        // 0000000FE8F8: DC560000 047C0006
	global_load_b64 v[6:7], v[26:27], off                      // 0000000FE900: DC560000 067C001A
	v_add_nc_u32_e32 v26, s31, v25                             // 0000000FE908: 4A34321F
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FE90C: BF870001
	v_cmp_le_u32_e32 vcc_lo, s12, v26                          // 0000000FE910: 7C96340C
	s_or_b32 s5, vcc_lo, s5                                    // 0000000FE914: 8C05056A
	s_waitcnt vmcnt(3)                                         // 0000000FE918: BF890FF7
	v_add_f32_e32 v17, v17, v28                                // 0000000FE91C: 06223911
	v_add_f32_e32 v21, v21, v29                                // 0000000FE920: 062A3B15
	s_waitcnt vmcnt(2)                                         // 0000000FE924: BF890BF7
	v_dual_add_f32 v23, v23, v2 :: v_dual_add_f32 v22, v22, v3 // 0000000FE928: C9080517 17160716
	s_waitcnt vmcnt(1)                                         // 0000000FE930: BF8907F7
	v_dual_add_f32 v20, v20, v4 :: v_dual_add_f32 v19, v19, v5 // 0000000FE934: C9080914 14120B13
	s_waitcnt vmcnt(0)                                         // 0000000FE93C: BF8903F7
	v_add_f32_e32 v18, v18, v6                                 // 0000000FE940: 06240D12
	v_add_f32_e32 v16, v16, v7                                 // 0000000FE944: 06200F10
	s_and_not1_b32 exec_lo, exec_lo, s5                        // 0000000FE948: 917E057E
	s_cbranch_execnz 65468                                     // 0000000FE94C: BFA6FFBC <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1d40>
	s_or_b32 exec_lo, exec_lo, s5                              // 0000000FE950: 8C7E057E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 0000000FE954: BF870499
	s_or_b32 exec_lo, exec_lo, s3                              // 0000000FE958: 8C7E037E
	s_mov_b32 s4, exec_lo                                      // 0000000FE95C: BE84007E
	v_cmpx_gt_u32_e64 s12, v25                                 // 0000000FE960: D4CC007E 0002320C
	s_cbranch_execz 101                                        // 0000000FE968: BFA50065 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2000>
	v_mul_lo_u32 v8, v25, s34                                  // 0000000FE96C: D72C0008 00004519
	v_mov_b32_e32 v11, 0                                       // 0000000FE974: 7E160280
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE978: BF870092
	v_lshrrev_b32_e32 v10, 1, v8                               // 0000000FE97C: 32141081
	v_lshlrev_b64 v[8:9], 3, v[10:11]                          // 0000000FE980: D73C0008 00021483
	v_add_nc_u32_e32 v10, s30, v25                             // 0000000FE988: 4A14321E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 0000000FE98C: BF870191
	v_add_nc_u32_e32 v15, s30, v10                             // 0000000FE990: 4A1E141E
	v_add_co_u32 v8, vcc_lo, v12, v8                           // 0000000FE994: D7006A08 0002110C
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FE99C: BF870001
	v_add_co_ci_u32_e64 v9, null, v13, v9, vcc_lo              // 0000000FE9A0: D5207C09 01AA130D
	v_cmp_gt_u32_e32 vcc_lo, s12, v10                          // 0000000FE9A8: 7C98140C
	global_load_b64 v[8:9], v[8:9], off                        // 0000000FE9AC: DC560000 087C0008
	s_and_saveexec_b32 s5, vcc_lo                              // 0000000FE9B4: BE85206A
	s_cbranch_execz 54                                         // 0000000FE9B8: BFA50036 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1f94>
	v_mul_lo_u32 v2, v10, s34                                  // 0000000FE9BC: D72C0002 0000450A
	s_mov_b32 s6, exec_lo                                      // 0000000FE9C4: BE86007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE9C8: BF870091
	v_lshrrev_b32_e32 v10, 1, v2                               // 0000000FE9CC: 32140481
	v_lshlrev_b64 v[2:3], 3, v[10:11]                          // 0000000FE9D0: D73C0002 00021483
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FE9D8: BF870091
	v_add_co_u32 v2, s3, v12, v2                               // 0000000FE9DC: D7000302 0002050C
	v_add_co_ci_u32_e64 v3, null, v13, v3, s3                  // 0000000FE9E4: D5207C03 000E070D
	global_load_b64 v[2:3], v[2:3], off                        // 0000000FE9EC: DC560000 027C0002
	v_cmpx_gt_u32_e64 s12, v15                                 // 0000000FE9F4: D4CC007E 00021E0C
	s_xor_b32 s6, exec_lo, s6                                  // 0000000FE9FC: 8D06067E
	s_cbranch_execz 34                                         // 0000000FEA00: BFA50022 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1f8c>
	v_mul_lo_u32 v4, v15, s34                                  // 0000000FEA04: D72C0004 0000450F
	v_mov_b32_e32 v11, 0                                       // 0000000FEA0C: 7E160280
	s_mov_b32 s7, exec_lo                                      // 0000000FEA10: BE87007E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FEA14: BF870092
	v_lshrrev_b32_e32 v10, 1, v4                               // 0000000FEA18: 32140881
	v_lshlrev_b64 v[4:5], 3, v[10:11]                          // 0000000FEA1C: D73C0004 00021483
	v_add_nc_u32_e32 v10, s30, v15                             // 0000000FEA24: 4A141E1E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FEA28: BF870092
	v_add_co_u32 v4, s3, v12, v4                               // 0000000FEA2C: D7000304 0002090C
	v_add_co_ci_u32_e64 v5, null, v13, v5, s3                  // 0000000FEA34: D5207C05 000E0B0D
	global_load_b64 v[4:5], v[4:5], off                        // 0000000FEA3C: DC560000 047C0004
	v_cmpx_gt_u32_e64 s12, v10                                 // 0000000FEA44: D4CC007E 0002140C
	s_xor_b32 s7, exec_lo, s7                                  // 0000000FEA4C: 8D07077E
	s_cbranch_execz 13                                         // 0000000FEA50: BFA5000D <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1f88>
	v_mul_lo_u32 v6, v10, s34                                  // 0000000FEA54: D72C0006 0000450A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FEA5C: BF870091
	v_lshrrev_b32_e32 v10, 1, v6                               // 0000000FEA60: 32140C81
	v_lshlrev_b64 v[6:7], 3, v[10:11]                          // 0000000FEA64: D73C0006 00021483
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FEA6C: BF870091
	v_add_co_u32 v6, s3, v12, v6                               // 0000000FEA70: D7000306 00020D0C
	v_add_co_ci_u32_e64 v7, null, v13, v7, s3                  // 0000000FEA78: D5207C07 000E0F0D
	global_load_b64 v[6:7], v[6:7], off                        // 0000000FEA80: DC560000 067C0006
	s_or_b32 exec_lo, exec_lo, s7                              // 0000000FEA88: 8C7E077E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FEA8C: BF870009
	s_or_b32 exec_lo, exec_lo, s6                              // 0000000FEA90: 8C7E067E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FEA94: BF870009
	s_or_b32 exec_lo, exec_lo, s5                              // 0000000FEA98: 8C7E057E
	s_and_saveexec_b32 s3, vcc_lo                              // 0000000FEA9C: BE83206A
	s_cbranch_execz 19                                         // 0000000FEAA0: BFA50013 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1ff0>
	s_mov_b32 s5, exec_lo                                      // 0000000FEAA4: BE85007E
	v_cmpx_gt_u32_e64 s12, v15                                 // 0000000FEAA8: D4CC007E 00021E0C
	s_cbranch_execz 11                                         // 0000000FEAB0: BFA5000B <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x1fe0>
	s_waitcnt vmcnt(0)                                         // 0000000FEAB4: BF8903F7
	v_dual_add_f32 v19, v19, v5 :: v_dual_add_nc_u32 v10, s30, v15// 0000000FEAB8: C9200B13 130A1E1E
	v_dual_add_f32 v7, v16, v7 :: v_dual_add_f32 v6, v18, v6   // 0000000FEAC0: C9080F10 07060D12
	v_add_f32_e32 v20, v20, v4                                 // 0000000FEAC8: 06280914
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)// 0000000FEACC: BF870193
	v_cmp_gt_u32_e32 vcc_lo, s12, v10                          // 0000000FEAD0: 7C98140C
	v_cndmask_b32_e32 v16, v16, v7, vcc_lo                     // 0000000FEAD4: 02200F10
	s_delay_alu instid0(VALU_DEP_4)                            // 0000000FEAD8: BF870004
	v_cndmask_b32_e32 v18, v18, v6, vcc_lo                     // 0000000FEADC: 02240D12
	s_or_b32 exec_lo, exec_lo, s5                              // 0000000FEAE0: 8C7E057E
	s_waitcnt vmcnt(0)                                         // 0000000FEAE4: BF8903F7
	v_dual_add_f32 v23, v23, v2 :: v_dual_add_f32 v22, v22, v3 // 0000000FEAE8: C9080517 17160716
	s_or_b32 exec_lo, exec_lo, s3                              // 0000000FEAF0: 8C7E037E
	s_waitcnt vmcnt(0)                                         // 0000000FEAF4: BF8903F7
	v_add_f32_e32 v17, v17, v8                                 // 0000000FEAF8: 06221111
	v_add_f32_e32 v21, v21, v9                                 // 0000000FEAFC: 062A1315
	s_or_b32 exec_lo, exec_lo, s4                              // 0000000FEB00: 8C7E047E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FEB04: BF870091
	v_add_f32_e32 v3, v22, v21                                 // 0000000FEB08: 06062B16
	v_add_f32_e32 v3, v19, v3                                  // 0000000FEB0C: 06060713
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FEB10: BF870091
	v_dual_add_f32 v2, v23, v17 :: v_dual_add_f32 v3, v16, v3  // 0000000FEB14: C9082317 02020710
	v_add_f32_e32 v2, v20, v2                                  // 0000000FEB1C: 06040514
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FEB20: BF870001
	v_add_f32_e32 v2, v18, v2                                  // 0000000FEB24: 06040512
	s_cbranch_execnz 200                                       // 0000000FEB28: BFA600C8 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x234c>
	v_dual_mov_b32 v15, s33 :: v_dual_mov_b32 v20, s33         // 0000000FEB2C: CA100021 0F140021
	v_dual_mov_b32 v22, s33 :: v_dual_mov_b32 v21, s33         // 0000000FEB34: CA100021 16140021
	v_dual_mov_b32 v19, s33 :: v_dual_mov_b32 v18, s33         // 0000000FEB3C: CA100021 13120021
	v_dual_mov_b32 v17, s33 :: v_dual_mov_b32 v16, s33         // 0000000FEB44: CA100021 11100021
	s_and_saveexec_b32 s3, s2                                  // 0000000FEB4C: BE832002
	s_cbranch_execz 81                                         // 0000000FEB50: BFA50051 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2198>
	v_dual_mov_b32 v16, s33 :: v_dual_mov_b32 v17, s33         // 0000000FEB54: CA100021 10100021
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v19, s33            // 0000000FEB5C: CA100080 08120021
	v_dual_mov_b32 v18, s33 :: v_dual_mov_b32 v21, s33         // 0000000FEB64: CA100021 12140021
	v_dual_mov_b32 v22, s33 :: v_dual_mov_b32 v15, s33         // 0000000FEB6C: CA100021 160E0021
	v_mov_b32_e32 v20, s33                                     // 0000000FEB74: 7E280221
	s_lshl_b32 s4, s30, 1                                      // 0000000FEB78: 8404811E
	s_mov_b32 s2, 0                                            // 0000000FEB7C: BE820080
	v_lshrrev_b32_e32 v7, 1, v14                               // 0000000FEB80: 320E1C81
	v_add_nc_u32_e32 v11, s30, v14                             // 0000000FEB84: 4A161C1E
	v_dual_mov_b32 v3, v8 :: v_dual_add_nc_u32 v6, s31, v14    // 0000000FEB88: CA200108 03061C1F
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)// 0000000FEB90: BF870193
	v_lshlrev_b64 v[4:5], 3, v[7:8]                            // 0000000FEB94: D73C0004 00020E83
	v_lshrrev_b32_e32 v2, 1, v11                               // 0000000FEB9C: 32041681
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 0000000FEBA0: BF870191
	v_lshlrev_b64 v[2:3], 3, v[2:3]                            // 0000000FEBA4: D73C0002 00020483
	v_add_co_u32 v4, vcc_lo, v12, v4                           // 0000000FEBAC: D7006A04 0002090C
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 0000000FEBB4: BF870191
	v_add_co_ci_u32_e64 v5, null, v13, v5, vcc_lo              // 0000000FEBB8: D5207C05 01AA0B0D
	v_add_co_u32 v2, vcc_lo, v12, v2                           // 0000000FEBC0: D7006A02 0002050C
	global_load_b64 v[25:26], v[4:5], off                      // 0000000FEBC8: DC560000 197C0004
	v_add_nc_u32_e32 v9, s30, v7                               // 0000000FEBD0: 4A120E1E
	v_add_co_ci_u32_e64 v3, null, v13, v3, vcc_lo              // 0000000FEBD4: D5207C03 01AA070D
	s_waitcnt vmcnt(0)                                         // 0000000FEBDC: BF8903F7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FEBE0: BF870122
	v_dual_add_f32 v20, v20, v26 :: v_dual_and_b32 v7, 0x7fffffff, v9// 0000000FEBE4: C9243514 140612FF 7FFFFFFF
	v_add_f32_e32 v15, v15, v25                                // 0000000FEBF0: 061E330F
	v_lshlrev_b64 v[9:10], 3, v[7:8]                           // 0000000FEBF4: D73C0009 00020E83
	v_lshrrev_b32_e32 v7, 1, v6                                // 0000000FEBFC: 320E0C81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 0000000FEC00: BF870191
	v_lshlrev_b64 v[4:5], 3, v[7:8]                            // 0000000FEC04: D73C0004 00020E83
	v_add_co_u32 v6, vcc_lo, v12, v9                           // 0000000FEC0C: D7006A06 0002130C
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 0000000FEC14: BF870191
	v_add_co_ci_u32_e64 v7, null, v13, v10, vcc_lo             // 0000000FEC18: D5207C07 01AA150D
	v_add_co_u32 v9, vcc_lo, v12, v4                           // 0000000FEC20: D7006A09 0002090C
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FEC28: BF870001
	v_add_co_ci_u32_e64 v10, null, v13, v5, vcc_lo             // 0000000FEC2C: D5207C0A 01AA0B0D
	s_clause 0x2                                               // 0000000FEC34: BF850002
	global_load_b64 v[2:3], v[2:3], off                        // 0000000FEC38: DC560000 027C0002
	global_load_b64 v[4:5], v[6:7], off                        // 0000000FEC40: DC560000 047C0006
	global_load_b64 v[6:7], v[9:10], off                       // 0000000FEC48: DC560000 067C0009
	s_waitcnt vmcnt(2)                                         // 0000000FEC50: BF890BF7
	v_add_f32_e32 v22, v22, v2                                 // 0000000FEC54: 062C0516
	s_waitcnt vmcnt(1)                                         // 0000000FEC58: BF8907F7
	v_add_f32_e32 v18, v18, v5                                 // 0000000FEC5C: 06240B12
	v_add3_u32 v14, s30, s4, v11                               // 0000000FEC60: D655000E 042C081E
	s_waitcnt vmcnt(0)                                         // 0000000FEC68: BF8903F7
	v_add_f32_e32 v16, v16, v7                                 // 0000000FEC6C: 06200F10
	v_add_f32_e32 v21, v21, v3                                 // 0000000FEC70: 062A0715
	v_add_f32_e32 v19, v19, v4                                 // 0000000FEC74: 06260913
	v_add_f32_e32 v17, v17, v6                                 // 0000000FEC78: 06220D11
	v_add_nc_u32_e32 v9, s31, v14                              // 0000000FEC7C: 4A121C1F
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 0000000FEC80: BF8704A1
	v_cmp_le_u32_e32 vcc_lo, s12, v9                           // 0000000FEC84: 7C96120C
	s_or_b32 s2, vcc_lo, s2                                    // 0000000FEC88: 8C02026A
	s_and_not1_b32 exec_lo, exec_lo, s2                        // 0000000FEC8C: 917E027E
	s_cbranch_execnz 65467                                     // 0000000FEC90: BFA6FFBB <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2080>
	s_or_b32 exec_lo, exec_lo, s2                              // 0000000FEC94: 8C7E027E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 0000000FEC98: BF870499
	s_or_b32 exec_lo, exec_lo, s3                              // 0000000FEC9C: 8C7E037E
	s_mov_b32 s3, exec_lo                                      // 0000000FECA0: BE83007E
	v_cmpx_gt_u32_e64 s12, v14                                 // 0000000FECA4: D4CC007E 00021C0C
	s_cbranch_execz 94                                         // 0000000FECAC: BFA5005E <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2328>
	v_lshrrev_b32_e32 v10, 1, v14                              // 0000000FECB0: 32141C81
	v_dual_mov_b32 v11, 0 :: v_dual_add_nc_u32 v14, s30, v14   // 0000000FECB4: CA200080 0B0E1C1E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FECBC: BF870091
	v_lshlrev_b64 v[8:9], 3, v[10:11]                          // 0000000FECC0: D73C0008 00021483
	v_add_co_u32 v8, vcc_lo, v12, v8                           // 0000000FECC8: D7006A08 0002110C
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)// 0000000FECD0: BF870211
	v_add_co_ci_u32_e64 v9, null, v13, v9, vcc_lo              // 0000000FECD4: D5207C09 01AA130D
	v_cmp_gt_u32_e32 vcc_lo, s12, v14                          // 0000000FECDC: 7C981C0C
	global_load_b64 v[8:9], v[8:9], off                        // 0000000FECE0: DC560000 087C0008
	s_and_saveexec_b32 s4, vcc_lo                              // 0000000FECE8: BE84206A
	s_cbranch_execz 49                                         // 0000000FECEC: BFA50031 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x22b4>
	v_lshrrev_b32_e32 v10, 1, v14                              // 0000000FECF0: 32141C81
	v_add_nc_u32_e32 v23, s30, v14                             // 0000000FECF4: 4A2E1C1E
	s_mov_b32 s5, exec_lo                                      // 0000000FECF8: BE85007E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FECFC: BF870092
	v_lshlrev_b64 v[2:3], 3, v[10:11]                          // 0000000FED00: D73C0002 00021483
	v_add_co_u32 v2, s2, v12, v2                               // 0000000FED08: D7000202 0002050C
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FED10: BF870001
	v_add_co_ci_u32_e64 v3, null, v13, v3, s2                  // 0000000FED14: D5207C03 000A070D
	global_load_b64 v[2:3], v[2:3], off                        // 0000000FED1C: DC560000 027C0002
	v_cmpx_gt_u32_e64 s12, v23                                 // 0000000FED24: D4CC007E 00022E0C
	s_xor_b32 s5, exec_lo, s5                                  // 0000000FED2C: 8D05057E
	s_cbranch_execz 30                                         // 0000000FED30: BFA5001E <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x22ac>
	v_lshrrev_b32_e32 v10, 1, v23                              // 0000000FED34: 32142E81
	v_mov_b32_e32 v11, 0                                       // 0000000FED38: 7E160280
	s_mov_b32 s6, exec_lo                                      // 0000000FED3C: BE86007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FED40: BF870121
	v_lshlrev_b64 v[4:5], 3, v[10:11]                          // 0000000FED44: D73C0004 00021483
	v_add_nc_u32_e32 v10, s30, v23                             // 0000000FED4C: 4A142E1E
	v_add_co_u32 v4, s2, v12, v4                               // 0000000FED50: D7000204 0002090C
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FED58: BF870001
	v_add_co_ci_u32_e64 v5, null, v13, v5, s2                  // 0000000FED5C: D5207C05 000A0B0D
	global_load_b64 v[4:5], v[4:5], off                        // 0000000FED64: DC560000 047C0004
	v_cmpx_gt_u32_e64 s12, v10                                 // 0000000FED6C: D4CC007E 0002140C
	s_xor_b32 s6, exec_lo, s6                                  // 0000000FED74: 8D06067E
	s_cbranch_execz 11                                         // 0000000FED78: BFA5000B <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x22a8>
	v_lshrrev_b32_e32 v10, 1, v10                              // 0000000FED7C: 32141481
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FED80: BF870091
	v_lshlrev_b64 v[6:7], 3, v[10:11]                          // 0000000FED84: D73C0006 00021483
	v_add_co_u32 v6, s2, v12, v6                               // 0000000FED8C: D7000206 00020D0C
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FED94: BF870001
	v_add_co_ci_u32_e64 v7, null, v13, v7, s2                  // 0000000FED98: D5207C07 000A0F0D
	global_load_b64 v[6:7], v[6:7], off                        // 0000000FEDA0: DC560000 067C0006
	s_or_b32 exec_lo, exec_lo, s6                              // 0000000FEDA8: 8C7E067E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FEDAC: BF870009
	s_or_b32 exec_lo, exec_lo, s5                              // 0000000FEDB0: 8C7E057E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FEDB4: BF870009
	s_or_b32 exec_lo, exec_lo, s4                              // 0000000FEDB8: 8C7E047E
	s_and_saveexec_b32 s2, vcc_lo                              // 0000000FEDBC: BE82206A
	s_cbranch_execz 21                                         // 0000000FEDC0: BFA50015 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2318>
	v_add_nc_u32_e32 v10, s30, v14                             // 0000000FEDC4: 4A141C1E
	s_mov_b32 s4, exec_lo                                      // 0000000FEDC8: BE84007E
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FEDCC: BF870001
	v_cmpx_gt_u32_e64 s12, v10                                 // 0000000FEDD0: D4CC007E 0002140C
	s_cbranch_execz 11                                         // 0000000FEDD8: BFA5000B <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2308>
	s_waitcnt vmcnt(0)                                         // 0000000FEDDC: BF8903F7
	v_dual_add_f32 v7, v16, v7 :: v_dual_add_nc_u32 v10, s30, v10// 0000000FEDE0: C9200F10 070A141E
	v_dual_add_f32 v6, v17, v6 :: v_dual_add_f32 v19, v19, v4  // 0000000FEDE8: C9080D11 06120913
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FEDF0: BF870112
	v_cmp_gt_u32_e32 vcc_lo, s12, v10                          // 0000000FEDF4: 7C98140C
	v_dual_add_f32 v18, v18, v5 :: v_dual_cndmask_b32 v17, v17, v6// 0000000FEDF8: C9120B12 12100D11
	s_delay_alu instid0(VALU_DEP_4)                            // 0000000FEE00: BF870004
	v_cndmask_b32_e32 v16, v16, v7, vcc_lo                     // 0000000FEE04: 02200F10
	s_or_b32 exec_lo, exec_lo, s4                              // 0000000FEE08: 8C7E047E
	s_waitcnt vmcnt(0)                                         // 0000000FEE0C: BF8903F7
	v_dual_add_f32 v22, v22, v2 :: v_dual_add_f32 v21, v21, v3 // 0000000FEE10: C9080516 16140715
	s_or_b32 exec_lo, exec_lo, s2                              // 0000000FEE18: 8C7E027E
	s_waitcnt vmcnt(0)                                         // 0000000FEE1C: BF8903F7
	v_dual_add_f32 v15, v15, v8 :: v_dual_add_f32 v20, v20, v9 // 0000000FEE20: C908110F 0F141314
	s_or_b32 exec_lo, exec_lo, s3                              // 0000000FEE28: 8C7E037E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FEE2C: BF870091
	v_dual_add_f32 v2, v22, v15 :: v_dual_add_f32 v3, v21, v20 // 0000000FEE30: C9081F16 02022915
	v_dual_add_f32 v2, v19, v2 :: v_dual_add_f32 v3, v18, v3   // 0000000FEE38: C9080513 02020712
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FEE40: BF870001
	v_dual_add_f32 v2, v17, v2 :: v_dual_add_f32 v3, v16, v3   // 0000000FEE44: C9080511 02020710
	s_mov_b32 s2, -1                                           // 0000000FEE4C: BE8200C1
	s_mov_b32 s3, 0                                            // 0000000FEE50: BE830080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FEE54: BF870009
	s_and_b32 s20, s3, exec_lo                                 // 0000000FEE58: 8B147E03
	s_or_not1_b32 s3, s2, exec_lo                              // 0000000FEE5C: 92037E02
	s_or_b32 exec_lo, exec_lo, s29                             // 0000000FEE60: 8C7E1D7E
	s_and_saveexec_b32 s12, s3                                 // 0000000FEE64: BE8C2003
	s_cbranch_execz 1649                                       // 0000000FEE68: BFA50671 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3d30>
	s_cmp_eq_u32 s9, 0                                         // 0000000FEE6C: BF068009
	s_cselect_b32 s21, -1, 0                                   // 0000000FEE70: 981580C1
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FEE74: BF870009
	s_and_b32 vcc_lo, exec_lo, s21                             // 0000000FEE78: 8B6A157E
	s_cbranch_vccnz 66                                         // 0000000FEE7C: BFA40042 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2488>
	s_load_b32 s3, s[0:1], 0x2dc                               // 0000000FEE80: F40000C0 F80002DC
	v_lshlrev_b32_e32 v5, 3, v1                                // 0000000FEE88: 300A0283
	s_waitcnt lgkmcnt(0)                                       // 0000000FEE8C: BF89FC07
	s_and_b32 s2, s3, 0xffff                                   // 0000000FEE90: 8B02FF03 0000FFFF
	s_lshr_b32 s3, s3, 16                                      // 0000000FEE98: 85039003
	v_mul_u32_u24_e32 v4, s2, v0                               // 0000000FEE9C: 16080002
	s_cmp_lt_u32 s3, 2                                         // 0000000FEEA0: BF0A8203
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FEEA4: BF870091
	v_lshlrev_b32_e32 v4, 3, v4                                // 0000000FEEA8: 30080883
	v_add3_u32 v4, 1, v4, v5                                   // 0000000FEEAC: D6550004 04160881
	ds_store_2addr_b32 v4, v2, v3 offset1:1                    // 0000000FEEB4: D8380100 00030204
	s_cbranch_scc1 50                                          // 0000000FEEBC: BFA20032 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2488>
	v_lshl_add_u32 v5, v1, 3, 1                                // 0000000FEEC0: D6460005 02050701
	s_and_b32 s3, 0xffff, s3                                   // 0000000FEEC8: 8B0303FF 0000FFFF
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FEED0: BF870009
	s_mov_b32 s4, s3                                           // 0000000FEED4: BE840003
	s_nop 0                                                    // 0000000FEED8: BF800000
	s_nop 0                                                    // 0000000FEEDC: BF800000
	s_nop 0                                                    // 0000000FEEE0: BF800000
	s_nop 0                                                    // 0000000FEEE4: BF800000
	s_nop 0                                                    // 0000000FEEE8: BF800000
	s_nop 0                                                    // 0000000FEEEC: BF800000
	s_nop 0                                                    // 0000000FEEF0: BF800000
	s_nop 0                                                    // 0000000FEEF4: BF800000
	s_nop 0                                                    // 0000000FEEF8: BF800000
	s_nop 0                                                    // 0000000FEEFC: BF800000
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FEF00: BF870009
	s_lshr_b32 s5, s4, 1                                       // 0000000FEF04: 85058104
	s_mov_b32 s6, exec_lo                                      // 0000000FEF08: BE86007E
	s_waitcnt lgkmcnt(0)                                       // 0000000FEF0C: BF89FC07
	s_barrier                                                  // 0000000FEF10: BFBD0000
	buffer_gl0_inv                                             // 0000000FEF14: E0AC0000 00000000
	v_cmpx_gt_u32_e64 s5, v0                                   // 0000000FEF1C: D4CC007E 00020005
	s_cbranch_execz 18                                         // 0000000FEF24: BFA50012 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2470>
	v_add_nc_u32_e32 v6, s5, v0                                // 0000000FEF28: 4A0C0005
	s_mov_b32 s7, exec_lo                                      // 0000000FEF2C: BE87007E
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FEF30: BF870001
	v_cmpx_gt_u32_e64 s3, v6                                   // 0000000FEF34: D4CC007E 00020C03
	s_cbranch_execz 11                                         // 0000000FEF3C: BFA5000B <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x246c>
	v_mul_u32_u24_e32 v6, s2, v6                               // 0000000FEF40: 160C0C02
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FEF44: BF870001
	v_lshl_add_u32 v6, v6, 3, v5                               // 0000000FEF48: D6460006 04150706
	ds_load_2addr_b32 v[6:7], v6 offset1:1                     // 0000000FEF50: D8DC0100 06000006
	s_waitcnt lgkmcnt(0)                                       // 0000000FEF58: BF89FC07
	v_dual_add_f32 v2, v2, v6 :: v_dual_add_f32 v3, v3, v7     // 0000000FEF5C: C9080D02 02020F03
	ds_store_2addr_b32 v4, v2, v3 offset1:1                    // 0000000FEF64: D8380100 00030204
	s_or_b32 exec_lo, exec_lo, s7                              // 0000000FEF6C: 8C7E077E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FEF70: BF870009
	s_or_b32 exec_lo, exec_lo, s6                              // 0000000FEF74: 8C7E067E
	s_cmp_gt_u32 s4, 3                                         // 0000000FEF78: BF088304
	s_cbranch_scc0 2                                           // 0000000FEF7C: BFA10002 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2488>
	s_mov_b32 s4, s5                                           // 0000000FEF80: BE840005
	s_branch 65502                                             // 0000000FEF84: BFA0FFDE <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2400>
	s_cmp_eq_u32 s8, 0                                         // 0000000FEF88: BF068008
	s_cselect_b32 s22, -1, 0                                   // 0000000FEF8C: 981680C1
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FEF90: BF870009
	s_and_b32 vcc_lo, exec_lo, s22                             // 0000000FEF94: 8B6A167E
	s_cbranch_vccnz 83                                         // 0000000FEF98: BFA40053 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x25e8>
	s_load_b32 s2, s[0:1], 0x2dc                               // 0000000FEF9C: F4000080 F80002DC
	s_waitcnt lgkmcnt(0)                                       // 0000000FEFA4: BF89FC07
	s_and_b32 s3, s2, 0xffff                                   // 0000000FEFA8: 8B03FF02 0000FFFF
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FEFB0: BF870009
	s_cmp_lt_u32 s3, 33                                        // 0000000FEFB4: BF0AA103
	s_cbranch_scc1 46                                          // 0000000FEFB8: BFA2002E <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2574>
	v_mul_u32_u24_e32 v4, s3, v0                               // 0000000FEFBC: 16080003
	v_lshlrev_b32_e32 v5, 3, v1                                // 0000000FEFC0: 300A0283
	s_cmp_lt_u32 s3, 64                                        // 0000000FEFC4: BF0AC003
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FEFC8: BF870092
	v_lshlrev_b32_e32 v4, 3, v4                                // 0000000FEFCC: 30080883
	v_add3_u32 v4, 1, v4, v5                                   // 0000000FEFD0: D6550004 04160881
	ds_store_2addr_b32 v4, v2, v3 offset1:1                    // 0000000FEFD8: D8380100 00030204
	s_cbranch_scc1 35                                          // 0000000FEFE0: BFA20023 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2570>
	s_mov_b32 s4, s3                                           // 0000000FEFE4: BE840003
	s_nop 0                                                    // 0000000FEFE8: BF800000
	s_nop 0                                                    // 0000000FEFEC: BF800000
	s_nop 0                                                    // 0000000FEFF0: BF800000
	s_nop 0                                                    // 0000000FEFF4: BF800000
	s_nop 0                                                    // 0000000FEFF8: BF800000
	s_nop 0                                                    // 0000000FEFFC: BF800000
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FF000: BF870009
	s_lshr_b32 s5, s4, 1                                       // 0000000FF004: 85058104
	s_waitcnt lgkmcnt(0)                                       // 0000000FF008: BF89FC07
	v_add_nc_u32_e32 v5, s5, v1                                // 0000000FF00C: 4A0A0205
	v_cmp_gt_u32_e32 vcc_lo, s5, v1                            // 0000000FF010: 7C980205
	s_barrier                                                  // 0000000FF014: BFBD0000
	buffer_gl0_inv                                             // 0000000FF018: E0AC0000 00000000
	v_cmp_gt_u32_e64 s2, s3, v5                                // 0000000FF020: D44C0002 00020A03
	s_and_b32 s6, vcc_lo, s2                                   // 0000000FF028: 8B06026A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FF02C: BF870009
	s_and_saveexec_b32 s2, s6                                  // 0000000FF030: BE822006
	s_cbranch_execz 9                                          // 0000000FF034: BFA50009 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x255c>
	v_lshl_add_u32 v5, s5, 3, v4                               // 0000000FF038: D6460005 04110605
	ds_load_2addr_b32 v[5:6], v5 offset1:1                     // 0000000FF040: D8DC0100 05000005
	s_waitcnt lgkmcnt(0)                                       // 0000000FF048: BF89FC07
	v_dual_add_f32 v2, v2, v5 :: v_dual_add_f32 v3, v3, v6     // 0000000FF04C: C9080B02 02020D03
	ds_store_2addr_b32 v4, v2, v3 offset1:1                    // 0000000FF054: D8380100 00030204
	s_or_b32 exec_lo, exec_lo, s2                              // 0000000FF05C: 8C7E027E
	s_cmpk_gt_u32 s4, 0x7f                                     // 0000000FF060: B584007F
	s_cbranch_scc0 2                                           // 0000000FF064: BFA10002 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2570>
	s_mov_b32 s4, s5                                           // 0000000FF068: BE840005
	s_branch 65508                                             // 0000000FF06C: BFA0FFE4 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2500>
	s_mov_b32 s3, 32                                           // 0000000FF070: BE8300A0
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FF074: BF870009
	s_cmp_lt_u32 s3, 2                                         // 0000000FF078: BF0A8203
	s_waitcnt lgkmcnt(0)                                       // 0000000FF07C: BF89FC07
	s_barrier                                                  // 0000000FF080: BFBD0000
	buffer_gl0_inv                                             // 0000000FF084: E0AC0000 00000000
	s_cbranch_scc1 22                                          // 0000000FF08C: BFA20016 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x25e8>
	v_mbcnt_lo_u32_b32 v4, -1, 0                               // 0000000FF090: D71F0004 000100C1
	s_mov_b32 s2, 1                                            // 0000000FF098: BE820081
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FF09C: BF870001
	v_sub_nc_u32_e32 v5, 32, v4                                // 0000000FF0A0: 4C0A08A0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)// 0000000FF0A4: BF8704B1
	v_cmp_lt_i32_e32 vcc_lo, s2, v5                            // 0000000FF0A8: 7C820A02
	v_cndmask_b32_e64 v6, 0, s2, vcc_lo                        // 0000000FF0AC: D5010006 01A80480
	s_lshl_b32 s2, s2, 1                                       // 0000000FF0B4: 84028102
	s_cmp_lt_i32 s2, s3                                        // 0000000FF0B8: BF040302
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FF0BC: BF870001
	v_add_lshl_u32 v6, v6, v4, 2                               // 0000000FF0C0: D6470006 020A0906
	ds_bpermute_b32 v7, v6, v2                                 // 0000000FF0C8: DACC0000 07000206
	ds_bpermute_b32 v6, v6, v3                                 // 0000000FF0D0: DACC0000 06000306
	s_waitcnt lgkmcnt(0)                                       // 0000000FF0D8: BF89FC07
	v_dual_add_f32 v2, v2, v7 :: v_dual_add_f32 v3, v3, v6     // 0000000FF0DC: C9080F02 02020D03
	s_cbranch_scc1 65519                                       // 0000000FF0E4: BFA2FFEF <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x25a4>
	s_clause 0x1                                               // 0000000FF0E8: BF850001
	s_load_b128 s[4:7], s[0:1], 0x150                          // 0000000FF0EC: F4080100 F8000150
	s_load_b64 s[2:3], s[0:1], 0x160                           // 0000000FF0F4: F4040080 F8000160
	s_cmp_lg_u32 s27, 0                                        // 0000000FF0FC: BF07801B
	v_cndmask_b32_e64 v11, 0, 1, s11                           // 0000000FF100: D501000B 002D0280
	s_cselect_b32 s28, -1, 0                                   // 0000000FF108: 981C80C1
	s_add_u32 s16, s0, 0x210                                   // 0000000FF10C: 8010FF00 00000210
	s_addc_u32 s17, s1, 0                                      // 0000000FF114: 82118001
	s_min_u32 s29, s26, 15                                     // 0000000FF118: 899D8F1A
	s_cmp_gt_u32 s27, 1                                        // 0000000FF11C: BF08811B
	s_cselect_b32 s23, -1, 0                                   // 0000000FF120: 981780C1
	s_and_not1_b32 vcc_lo, exec_lo, s11                        // 0000000FF124: 916A0B7E
	s_cbranch_vccnz 89                                         // 0000000FF128: BFA40059 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2790>
	s_and_not1_b32 vcc_lo, exec_lo, s28                        // 0000000FF12C: 916A1C7E
	s_cbranch_vccnz 93                                         // 0000000FF130: BFA4005D <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x27a8>
	s_add_i32 s25, s29, 1                                      // 0000000FF134: 8119811D
	s_cmp_eq_u32 s26, 2                                        // 0000000FF138: BF06821A
	s_cbranch_scc1 92                                          // 0000000FF13C: BFA2005C <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x27b0>
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, v24             // 0000000FF140: CA100080 04040118
	s_and_b32 s24, s25, 28                                     // 0000000FF148: 8B189C19
	s_mov_b32 s27, 0                                           // 0000000FF14C: BE9B0080
	s_mov_b64 s[8:9], s[0:1]                                   // 0000000FF150: BE880100
	s_mov_b64 s[18:19], s[16:17]                               // 0000000FF154: BE920110
	s_clause 0x1                                               // 0000000FF158: BF850001
	s_load_b256 s[36:43], s[8:9], 0x150                        // 0000000FF15C: F40C0904 F8000150
	s_load_b128 s[44:47], s[8:9], 0x170                        // 0000000FF164: F4080B04 F8000170
	s_clause 0x3                                               // 0000000FF16C: BF850003
	s_load_b32 s30, s[18:19], null                             // 0000000FF170: F4000789 F8000000
	s_load_b32 s31, s[18:19], 0x8                              // 0000000FF178: F40007C9 F8000008
	s_load_b32 s33, s[18:19], 0x10                             // 0000000FF180: F4000849 F8000010
	s_load_b32 s34, s[18:19], 0x18                             // 0000000FF188: F4000889 F8000018
	s_add_i32 s27, s27, 4                                      // 0000000FF190: 811B841B
	s_add_u32 s18, s18, 32                                     // 0000000FF194: 8012A012
	s_addc_u32 s19, s19, 0                                     // 0000000FF198: 82138013
	s_add_u32 s8, s8, 48                                       // 0000000FF19C: 8008B008
	s_addc_u32 s9, s9, 0                                       // 0000000FF1A0: 82098009
	s_cmp_lg_u32 s24, s27                                      // 0000000FF1A4: BF071B18
	s_waitcnt lgkmcnt(0)                                       // 0000000FF1A8: BF89FC07
	v_mul_hi_u32 v6, s37, v5                                   // 0000000FF1AC: D72D0006 00020A25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF1B4: BF870091
	v_add_nc_u32_e32 v6, v5, v6                                // 0000000FF1B8: 4A0C0D05
	v_lshrrev_b32_e32 v6, s38, v6                              // 0000000FF1BC: 320C0C26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FF1C0: BF870121
	v_mul_hi_u32 v7, s40, v6                                   // 0000000FF1C4: D72D0007 00020C28
	v_mul_lo_u32 v10, v6, s36                                  // 0000000FF1CC: D72C000A 00004906
	v_add_nc_u32_e32 v7, v6, v7                                // 0000000FF1D4: 4A0E0F06
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FF1D8: BF870112
	v_sub_nc_u32_e32 v10, v5, v10                              // 0000000FF1DC: 4C141505
	v_lshrrev_b32_e32 v7, s41, v7                              // 0000000FF1E0: 320E0E29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FF1E4: BF870112
	v_mul_lo_u32 v10, v10, s30                                 // 0000000FF1E8: D72C000A 00003D0A
	v_mul_hi_u32 v8, s43, v7                                   // 0000000FF1F0: D72D0008 00020E2B
	v_mul_lo_u32 v12, v7, s39                                  // 0000000FF1F8: D72C000C 00004F07
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FF200: BF870112
	v_add_nc_u32_e32 v8, v7, v8                                // 0000000FF204: 4A101107
	v_sub_nc_u32_e32 v6, v6, v12                               // 0000000FF208: 4C0C1906
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FF20C: BF870112
	v_lshrrev_b32_e32 v8, s44, v8                              // 0000000FF210: 3210102C
	v_mul_lo_u32 v6, v6, s31                                   // 0000000FF214: D72C0006 00003F06
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FF21C: BF870112
	v_mul_hi_u32 v9, s46, v8                                   // 0000000FF220: D72D0009 0002102E
	v_add3_u32 v4, v10, v4, v6                                 // 0000000FF228: D6550004 041A090A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF230: BF870092
	v_add_nc_u32_e32 v9, v8, v9                                // 0000000FF234: 4A121308
	v_lshrrev_b32_e32 v5, s47, v9                              // 0000000FF238: 320A122F
	v_mul_lo_u32 v9, v8, s42                                   // 0000000FF23C: D72C0009 00005508
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FF244: BF870112
	v_mul_lo_u32 v13, v5, s45                                  // 0000000FF248: D72C000D 00005B05
	v_sub_nc_u32_e32 v7, v7, v9                                // 0000000FF250: 4C0E1307
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FF254: BF870112
	v_sub_nc_u32_e32 v8, v8, v13                               // 0000000FF258: 4C101B08
	v_mul_lo_u32 v7, v7, s33                                   // 0000000FF25C: D72C0007 00004307
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF264: BF870092
	v_mul_lo_u32 v8, v8, s34                                   // 0000000FF268: D72C0008 00004508
	v_add3_u32 v4, v7, v4, v8                                  // 0000000FF270: D6550004 04220907
	s_cbranch_scc1 65463                                       // 0000000FF278: BFA2FFB7 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2658>
	s_and_b32 s25, s25, 3                                      // 0000000FF27C: 8B198319
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FF280: BF870009
	s_cmp_eq_u32 s25, 0                                        // 0000000FF284: BF068019
	s_cbranch_scc0 16                                          // 0000000FF288: BFA10010 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x27cc>
	s_branch 58                                                // 0000000FF28C: BFA0003A <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2878>
	s_clause 0x1                                               // 0000000FF290: BF850001
	s_load_b32 s25, s[0:1], 0x210                              // 0000000FF294: F4000640 F8000210
	s_load_b32 s24, s[0:1], 0x218                              // 0000000FF29C: F4000600 F8000218
	s_branch 58                                                // 0000000FF2A4: BFA0003A <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2890>
	v_mov_b32_e32 v4, 0                                        // 0000000FF2A8: 7E080280
	s_branch 50                                                // 0000000FF2AC: BFA00032 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2878>
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, v24             // 0000000FF2B0: CA100080 04040118
	s_mov_b32 s24, 0                                           // 0000000FF2B8: BE980080
	s_and_b32 s25, s25, 3                                      // 0000000FF2BC: 8B198319
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FF2C0: BF870009
	s_cmp_eq_u32 s25, 0                                        // 0000000FF2C4: BF068019
	s_cbranch_scc1 43                                          // 0000000FF2C8: BFA2002B <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2878>
	s_lshl_b32 s8, s24, 3                                      // 0000000FF2CC: 84088318
	s_mul_i32 s18, s24, 12                                     // 0000000FF2D0: 96128C18
	s_add_u32 s8, s0, s8                                       // 0000000FF2D4: 80080800
	s_addc_u32 s9, s1, 0                                       // 0000000FF2D8: 82098001
	s_add_u32 s8, s8, 0x210                                    // 0000000FF2DC: 8008FF08 00000210
	s_addc_u32 s9, s9, 0                                       // 0000000FF2E4: 82098009
	s_add_u32 s18, s0, s18                                     // 0000000FF2E8: 80121200
	s_addc_u32 s19, s1, 0                                      // 0000000FF2EC: 82138001
	s_nop 0                                                    // 0000000FF2F0: BF800000
	s_nop 0                                                    // 0000000FF2F4: BF800000
	s_nop 0                                                    // 0000000FF2F8: BF800000
	s_nop 0                                                    // 0000000FF2FC: BF800000
	s_clause 0x1                                               // 0000000FF300: BF850001
	s_load_b64 s[30:31], s[18:19], 0x150                       // 0000000FF304: F4040789 F8000150
	s_load_b32 s24, s[18:19], 0x158                            // 0000000FF30C: F4000609 F8000158
	s_load_b32 s27, s[8:9], null                               // 0000000FF314: F40006C4 F8000000
	s_add_u32 s8, s8, 8                                        // 0000000FF31C: 80088808
	s_addc_u32 s9, s9, 0                                       // 0000000FF320: 82098009
	s_add_u32 s18, s18, 12                                     // 0000000FF324: 80128C12
	s_addc_u32 s19, s19, 0                                     // 0000000FF328: 82138013
	s_add_i32 s25, s25, -1                                     // 0000000FF32C: 8119C119
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 0000000FF330: BF8700B9
	s_cmp_lg_u32 s25, 0                                        // 0000000FF334: BF078019
	s_waitcnt lgkmcnt(0)                                       // 0000000FF338: BF89FC07
	v_mul_hi_u32 v6, s31, v5                                   // 0000000FF33C: D72D0006 00020A1F
	v_add_nc_u32_e32 v6, v5, v6                                // 0000000FF344: 4A0C0D05
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF348: BF870091
	v_lshrrev_b32_e32 v8, s24, v6                              // 0000000FF34C: 32100C18
	v_mul_lo_u32 v6, v8, s30                                   // 0000000FF350: D72C0006 00003D08
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF358: BF870091
	v_sub_nc_u32_e32 v5, v5, v6                                // 0000000FF35C: 4C0A0D05
	v_mad_u64_u32 v[6:7], null, v5, s27, v[4:5]                // 0000000FF360: D6FE7C06 04103705
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FF368: BF870001
	v_dual_mov_b32 v5, v8 :: v_dual_mov_b32 v4, v6             // 0000000FF36C: CA100108 05040106
	s_cbranch_scc1 65506                                       // 0000000FF374: BFA2FFE2 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2800>
	s_clause 0x1                                               // 0000000FF378: BF850001
	s_load_b32 s25, s[0:1], 0x210                              // 0000000FF37C: F4000640 F8000210
	s_load_b32 s24, s[0:1], 0x218                              // 0000000FF384: F4000600 F8000218
	s_cbranch_execnz 28                                        // 0000000FF38C: BFA6001C <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2900>
	s_waitcnt lgkmcnt(0)                                       // 0000000FF390: BF89FC07
	v_mul_hi_u32 v4, s5, v24                                   // 0000000FF394: D72D0004 00023005
	s_and_not1_b32 vcc_lo, exec_lo, s23                        // 0000000FF39C: 916A177E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF3A0: BF870091
	v_add_nc_u32_e32 v4, v24, v4                               // 0000000FF3A4: 4A080918
	v_lshrrev_b32_e32 v5, s6, v4                               // 0000000FF3A8: 320A0806
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF3AC: BF870091
	v_mul_lo_u32 v4, v5, s4                                    // 0000000FF3B0: D72C0004 00000905
	v_sub_nc_u32_e32 v4, v24, v4                               // 0000000FF3B8: 4C080918
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FF3BC: BF870001
	v_mul_lo_u32 v4, v4, s25                                   // 0000000FF3C0: D72C0004 00003304
	s_cbranch_vccnz 13                                         // 0000000FF3C8: BFA4000D <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2900>
	v_mul_hi_u32 v6, v5, s2                                    // 0000000FF3CC: D72D0006 00000505
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF3D4: BF870091
	v_add_nc_u32_e32 v6, v5, v6                                // 0000000FF3D8: 4A0C0D05
	v_lshrrev_b32_e32 v6, s3, v6                               // 0000000FF3DC: 320C0C03
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF3E0: BF870091
	v_mul_lo_u32 v6, v6, s7                                    // 0000000FF3E4: D72C0006 00000F06
	v_sub_nc_u32_e32 v7, v5, v6                                // 0000000FF3EC: 4C0E0D05
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF3F0: BF870091
	v_mad_u64_u32 v[5:6], null, v7, s24, v[4:5]                // 0000000FF3F4: D6FE7C05 04103107
	v_mov_b32_e32 v4, v5                                       // 0000000FF3FC: 7E080305
	v_or_b32_e32 v12, 1, v24                                   // 0000000FF400: 38183081
	s_and_not1_b32 vcc_lo, exec_lo, s11                        // 0000000FF404: 916A0B7E
	s_cbranch_vccnz 90                                         // 0000000FF408: BFA4005A <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2a74>
	s_and_not1_b32 vcc_lo, exec_lo, s28                        // 0000000FF40C: 916A1C7E
	s_cbranch_vccnz 91                                         // 0000000FF410: BFA4005B <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2a80>
	s_add_i32 s30, s29, 1                                      // 0000000FF414: 811E811D
	s_cmp_eq_u32 s26, 2                                        // 0000000FF418: BF06821A
	s_cbranch_scc1 90                                          // 0000000FF41C: BFA2005A <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2a88>
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, v12             // 0000000FF420: CA100080 0506010C
	s_and_b32 s27, s30, 28                                     // 0000000FF428: 8B1B9C1E
	s_mov_b32 s31, 0                                           // 0000000FF42C: BE9F0080
	s_mov_b64 s[8:9], s[0:1]                                   // 0000000FF430: BE880100
	s_mov_b64 s[18:19], s[16:17]                               // 0000000FF434: BE920110
	s_clause 0x1                                               // 0000000FF438: BF850001
	s_load_b256 s[36:43], s[8:9], 0x150                        // 0000000FF43C: F40C0904 F8000150
	s_load_b128 s[44:47], s[8:9], 0x170                        // 0000000FF444: F4080B04 F8000170
	s_clause 0x2                                               // 0000000FF44C: BF850002
	s_load_b32 s33, s[18:19], null                             // 0000000FF450: F4000849 F8000000
	s_load_b32 s34, s[18:19], 0x8                              // 0000000FF458: F4000889 F8000008
	s_load_b32 s35, s[18:19], 0x10                             // 0000000FF460: F40008C9 F8000010
	s_add_i32 s31, s31, 4                                      // 0000000FF468: 811F841F
	s_waitcnt lgkmcnt(0)                                       // 0000000FF46C: BF89FC07
	v_mul_hi_u32 v7, s37, v6                                   // 0000000FF470: D72D0007 00020C25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF478: BF870091
	v_add_nc_u32_e32 v7, v6, v7                                // 0000000FF47C: 4A0E0F06
	v_lshrrev_b32_e32 v7, s38, v7                              // 0000000FF480: 320E0E26
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FF484: BF870001
	v_mul_hi_u32 v8, s40, v7                                   // 0000000FF488: D72D0008 00020E28
	v_mul_lo_u32 v13, v7, s36                                  // 0000000FF490: D72C000D 00004907
	s_load_b32 s36, s[18:19], 0x18                             // 0000000FF498: F4000909 F8000018
	s_add_u32 s18, s18, 32                                     // 0000000FF4A0: 8012A012
	s_addc_u32 s19, s19, 0                                     // 0000000FF4A4: 82138013
	s_add_u32 s8, s8, 48                                       // 0000000FF4A8: 8008B008
	s_addc_u32 s9, s9, 0                                       // 0000000FF4AC: 82098009
	s_cmp_eq_u32 s27, s31                                      // 0000000FF4B0: BF061F1B
	v_add_nc_u32_e32 v8, v7, v8                                // 0000000FF4B4: 4A101107
	v_sub_nc_u32_e32 v13, v6, v13                              // 0000000FF4B8: 4C1A1B06
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FF4BC: BF870112
	v_lshrrev_b32_e32 v8, s41, v8                              // 0000000FF4C0: 32101029
	v_mul_lo_u32 v13, v13, s33                                 // 0000000FF4C4: D72C000D 0000430D
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FF4CC: BF870122
	v_mul_hi_u32 v9, s43, v8                                   // 0000000FF4D0: D72D0009 0002102B
	v_mul_lo_u32 v14, v8, s39                                  // 0000000FF4D8: D72C000E 00004F08
	v_add_nc_u32_e32 v9, v8, v9                                // 0000000FF4E0: 4A121308
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FF4E4: BF870112
	v_sub_nc_u32_e32 v7, v7, v14                               // 0000000FF4E8: 4C0E1D07
	v_lshrrev_b32_e32 v9, s44, v9                              // 0000000FF4EC: 3212122C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FF4F0: BF870112
	v_mul_lo_u32 v7, v7, s34                                   // 0000000FF4F4: D72C0007 00004507
	v_mul_hi_u32 v10, s46, v9                                  // 0000000FF4FC: D72D000A 0002122E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FF504: BF870112
	v_add3_u32 v5, v13, v5, v7                                 // 0000000FF508: D6550005 041E0B0D
	v_add_nc_u32_e32 v10, v9, v10                              // 0000000FF510: 4A141509
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FF514: BF870121
	v_lshrrev_b32_e32 v6, s47, v10                             // 0000000FF518: 320C142F
	v_mul_lo_u32 v10, v9, s42                                  // 0000000FF51C: D72C000A 00005509
	v_mul_lo_u32 v15, v6, s45                                  // 0000000FF524: D72C000F 00005B06
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FF52C: BF870112
	v_sub_nc_u32_e32 v8, v8, v10                               // 0000000FF530: 4C101508
	v_sub_nc_u32_e32 v9, v9, v15                               // 0000000FF534: 4C121F09
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FF538: BF870122
	v_mul_lo_u32 v8, v8, s35                                   // 0000000FF53C: D72C0008 00004708
	s_waitcnt lgkmcnt(0)                                       // 0000000FF544: BF89FC07
	v_mul_lo_u32 v9, v9, s36                                   // 0000000FF548: D72C0009 00004909
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FF550: BF870001
	v_add3_u32 v5, v8, v5, v9                                  // 0000000FF554: D6550005 04260B08
	s_cbranch_scc0 65462                                       // 0000000FF55C: BFA1FFB6 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2938>
	s_and_b32 s30, s30, 3                                      // 0000000FF560: 8B1E831E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FF564: BF870009
	s_cmp_eq_u32 s30, 0                                        // 0000000FF568: BF06801E
	s_cbranch_scc0 13                                          // 0000000FF56C: BFA1000D <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2aa4>
	s_branch 65                                                // 0000000FF570: BFA00041 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2b78>
	s_load_b64 s[8:9], s[0:1], 0x298                           // 0000000FF574: F4040200 F8000298
	s_branch 65                                                // 0000000FF57C: BFA00041 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2b84>
	v_mov_b32_e32 v5, 0                                        // 0000000FF580: 7E0A0280
	s_branch 60                                                // 0000000FF584: BFA0003C <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2b78>
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, v12             // 0000000FF588: CA100080 0506010C
	s_mov_b32 s27, 0                                           // 0000000FF590: BE9B0080
	s_and_b32 s30, s30, 3                                      // 0000000FF594: 8B1E831E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FF598: BF870009
	s_cmp_eq_u32 s30, 0                                        // 0000000FF59C: BF06801E
	s_cbranch_scc1 53                                          // 0000000FF5A0: BFA20035 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2b78>
	s_lshl_b32 s8, s27, 3                                      // 0000000FF5A4: 8408831B
	s_mul_i32 s18, s27, 12                                     // 0000000FF5A8: 96128C1B
	s_add_u32 s8, s0, s8                                       // 0000000FF5AC: 80080800
	s_addc_u32 s9, s1, 0                                       // 0000000FF5B0: 82098001
	s_add_u32 s8, s8, 0x210                                    // 0000000FF5B4: 8008FF08 00000210
	s_addc_u32 s9, s9, 0                                       // 0000000FF5BC: 82098009
	s_add_u32 s18, s0, s18                                     // 0000000FF5C0: 80121200
	s_addc_u32 s19, s1, 0                                      // 0000000FF5C4: 82138001
	s_nop 0                                                    // 0000000FF5C8: BF800000
	s_nop 0                                                    // 0000000FF5CC: BF800000
	s_nop 0                                                    // 0000000FF5D0: BF800000
	s_nop 0                                                    // 0000000FF5D4: BF800000
	s_nop 0                                                    // 0000000FF5D8: BF800000
	s_nop 0                                                    // 0000000FF5DC: BF800000
	s_nop 0                                                    // 0000000FF5E0: BF800000
	s_nop 0                                                    // 0000000FF5E4: BF800000
	s_nop 0                                                    // 0000000FF5E8: BF800000
	s_nop 0                                                    // 0000000FF5EC: BF800000
	s_nop 0                                                    // 0000000FF5F0: BF800000
	s_nop 0                                                    // 0000000FF5F4: BF800000
	s_nop 0                                                    // 0000000FF5F8: BF800000
	s_nop 0                                                    // 0000000FF5FC: BF800000
	s_clause 0x1                                               // 0000000FF600: BF850001
	s_load_b64 s[34:35], s[18:19], 0x150                       // 0000000FF604: F4040889 F8000150
	s_load_b32 s27, s[18:19], 0x158                            // 0000000FF60C: F40006C9 F8000158
	s_load_b32 s31, s[8:9], null                               // 0000000FF614: F40007C4 F8000000
	s_add_u32 s8, s8, 8                                        // 0000000FF61C: 80088808
	s_addc_u32 s9, s9, 0                                       // 0000000FF620: 82098009
	s_add_u32 s18, s18, 12                                     // 0000000FF624: 80128C12
	s_addc_u32 s19, s19, 0                                     // 0000000FF628: 82138013
	s_add_i32 s30, s30, -1                                     // 0000000FF62C: 811EC11E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 0000000FF630: BF8700B9
	s_cmp_lg_u32 s30, 0                                        // 0000000FF634: BF07801E
	s_waitcnt lgkmcnt(0)                                       // 0000000FF638: BF89FC07
	v_mul_hi_u32 v7, s35, v6                                   // 0000000FF63C: D72D0007 00020C23
	v_add_nc_u32_e32 v7, v6, v7                                // 0000000FF644: 4A0E0F06
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF648: BF870091
	v_lshrrev_b32_e32 v9, s27, v7                              // 0000000FF64C: 32120E1B
	v_mul_lo_u32 v7, v9, s34                                   // 0000000FF650: D72C0007 00004509
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF658: BF870091
	v_sub_nc_u32_e32 v6, v6, v7                                // 0000000FF65C: 4C0C0F06
	v_mad_u64_u32 v[7:8], null, v6, s31, v[5:6]                // 0000000FF660: D6FE7C07 04143F06
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FF668: BF870001
	v_dual_mov_b32 v6, v9 :: v_dual_mov_b32 v5, v7             // 0000000FF66C: CA100109 06040107
	s_cbranch_scc1 65506                                       // 0000000FF674: BFA2FFE2 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2b00>
	s_load_b64 s[8:9], s[0:1], 0x298                           // 0000000FF678: F4040200 F8000298
	s_cbranch_execnz 28                                        // 0000000FF680: BFA6001C <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2bf4>
	s_waitcnt lgkmcnt(0)                                       // 0000000FF684: BF89FC07
	v_mul_hi_u32 v5, s5, v12                                   // 0000000FF688: D72D0005 00021805
	s_and_not1_b32 vcc_lo, exec_lo, s23                        // 0000000FF690: 916A177E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF694: BF870091
	v_add_nc_u32_e32 v5, v12, v5                               // 0000000FF698: 4A0A0B0C
	v_lshrrev_b32_e32 v6, s6, v5                               // 0000000FF69C: 320C0A06
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF6A0: BF870091
	v_mul_lo_u32 v5, v6, s4                                    // 0000000FF6A4: D72C0005 00000906
	v_sub_nc_u32_e32 v5, v12, v5                               // 0000000FF6AC: 4C0A0B0C
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FF6B0: BF870001
	v_mul_lo_u32 v5, v5, s25                                   // 0000000FF6B4: D72C0005 00003305
	s_cbranch_vccnz 13                                         // 0000000FF6BC: BFA4000D <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2bf4>
	v_mul_hi_u32 v7, v6, s2                                    // 0000000FF6C0: D72D0007 00000506
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF6C8: BF870091
	v_add_nc_u32_e32 v7, v6, v7                                // 0000000FF6CC: 4A0E0F06
	v_lshrrev_b32_e32 v7, s3, v7                               // 0000000FF6D0: 320E0E03
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF6D4: BF870091
	v_mul_lo_u32 v7, v7, s7                                    // 0000000FF6D8: D72C0007 00000F07
	v_sub_nc_u32_e32 v8, v6, v7                                // 0000000FF6E0: 4C100F06
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF6E4: BF870091
	v_mad_u64_u32 v[6:7], null, v8, s24, v[5:6]                // 0000000FF6E8: D6FE7C06 04143108
	v_mov_b32_e32 v5, v6                                       // 0000000FF6F0: 7E0A0306
	s_load_b64 s[18:19], s[0:1], 0x2a8                         // 0000000FF6F4: F4040480 F80002A8
	s_waitcnt lgkmcnt(0)                                       // 0000000FF6FC: BF89FC07
	v_add_co_u32 v6, s27, s18, v4                              // 0000000FF700: D7001B06 00020812
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FF708: BF870001
	v_add_co_ci_u32_e64 v7, null, s19, 0, s27                  // 0000000FF70C: D5207C07 006D0013
	s_cmp_lg_u64 s[18:19], 0                                   // 0000000FF714: BF118012
	s_cselect_b32 vcc_lo, -1, 0                                // 0000000FF718: 986A80C1
	s_cmp_eq_u32 s10, 0                                        // 0000000FF71C: BF06800A
	v_dual_cndmask_b32 v9, 0, v7 :: v_dual_cndmask_b32 v8, 0, v6// 0000000FF720: CA520E80 09080C80
	s_mov_b32 s10, 0                                           // 0000000FF728: BE8A0080
	s_cbranch_scc1 88                                          // 0000000FF72C: BFA20058 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2d90>
	s_and_b32 vcc_lo, exec_lo, s11                             // 0000000FF730: 8B6A0B7E
	s_cbranch_vccz 88                                          // 0000000FF734: BFA30058 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2d98>
	s_and_not1_b32 vcc_lo, exec_lo, s28                        // 0000000FF738: 916A1C7E
	s_cbranch_vccnz 87                                         // 0000000FF73C: BFA40057 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2d9c>
	s_add_i32 s30, s29, 1                                      // 0000000FF740: 811E811D
	s_cmp_eq_u32 s26, 2                                        // 0000000FF744: BF06821A
	s_cbranch_scc1 86                                          // 0000000FF748: BFA20056 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2da4>
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v13, v24           // 0000000FF74C: CA100080 0A0C0118
	s_and_b32 s27, s30, 28                                     // 0000000FF754: 8B1B9C1E
	s_mov_b32 s31, 0                                           // 0000000FF758: BE9F0080
	s_mov_b64 s[10:11], s[0:1]                                 // 0000000FF75C: BE8A0100
	s_mov_b64 s[18:19], s[16:17]                               // 0000000FF760: BE920110
	s_clause 0x1                                               // 0000000FF764: BF850001
	s_load_b256 s[36:43], s[10:11], 0x150                      // 0000000FF768: F40C0905 F8000150
	s_load_b128 s[44:47], s[10:11], 0x170                      // 0000000FF770: F4080B05 F8000170
	s_clause 0x2                                               // 0000000FF778: BF850002
	s_load_b32 s33, s[18:19], null                             // 0000000FF77C: F4000849 F8000000
	s_load_b32 s34, s[18:19], 0x8                              // 0000000FF784: F4000889 F8000008
	s_load_b32 s35, s[18:19], 0x10                             // 0000000FF78C: F40008C9 F8000010
	s_add_i32 s31, s31, 4                                      // 0000000FF794: 811F841F
	s_waitcnt lgkmcnt(0)                                       // 0000000FF798: BF89FC07
	v_mul_hi_u32 v14, s37, v13                                 // 0000000FF79C: D72D000E 00021A25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF7A4: BF870091
	v_add_nc_u32_e32 v14, v13, v14                             // 0000000FF7A8: 4A1C1D0D
	v_lshrrev_b32_e32 v14, s38, v14                            // 0000000FF7AC: 321C1C26
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FF7B0: BF870001
	v_mul_hi_u32 v15, s40, v14                                 // 0000000FF7B4: D72D000F 00021C28
	v_mul_lo_u32 v18, v14, s36                                 // 0000000FF7BC: D72C0012 0000490E
	s_load_b32 s36, s[18:19], 0x18                             // 0000000FF7C4: F4000909 F8000018
	s_add_u32 s18, s18, 32                                     // 0000000FF7CC: 8012A012
	s_addc_u32 s19, s19, 0                                     // 0000000FF7D0: 82138013
	s_add_u32 s10, s10, 48                                     // 0000000FF7D4: 800AB00A
	s_addc_u32 s11, s11, 0                                     // 0000000FF7D8: 820B800B
	s_cmp_lg_u32 s27, s31                                      // 0000000FF7DC: BF071F1B
	v_add_nc_u32_e32 v15, v14, v15                             // 0000000FF7E0: 4A1E1F0E
	v_sub_nc_u32_e32 v18, v13, v18                             // 0000000FF7E4: 4C24250D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FF7E8: BF870112
	v_lshrrev_b32_e32 v15, s41, v15                            // 0000000FF7EC: 321E1E29
	v_mul_lo_u32 v18, v18, s33                                 // 0000000FF7F0: D72C0012 00004312
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FF7F8: BF870122
	v_mul_hi_u32 v16, s43, v15                                 // 0000000FF7FC: D72D0010 00021E2B
	v_mul_lo_u32 v19, v15, s39                                 // 0000000FF804: D72C0013 00004F0F
	v_add_nc_u32_e32 v16, v15, v16                             // 0000000FF80C: 4A20210F
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FF810: BF870112
	v_sub_nc_u32_e32 v14, v14, v19                             // 0000000FF814: 4C1C270E
	v_lshrrev_b32_e32 v16, s44, v16                            // 0000000FF818: 3220202C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FF81C: BF870112
	v_mul_lo_u32 v14, v14, s34                                 // 0000000FF820: D72C000E 0000450E
	v_mul_hi_u32 v17, s46, v16                                 // 0000000FF828: D72D0011 0002202E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FF830: BF870112
	v_add3_u32 v10, v18, v10, v14                              // 0000000FF834: D655000A 043A1512
	v_add_nc_u32_e32 v17, v16, v17                             // 0000000FF83C: 4A222310
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FF840: BF870121
	v_lshrrev_b32_e32 v13, s47, v17                            // 0000000FF844: 321A222F
	v_mul_lo_u32 v17, v16, s42                                 // 0000000FF848: D72C0011 00005510
	v_mul_lo_u32 v20, v13, s45                                 // 0000000FF850: D72C0014 00005B0D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FF858: BF870112
	v_sub_nc_u32_e32 v15, v15, v17                             // 0000000FF85C: 4C1E230F
	v_sub_nc_u32_e32 v16, v16, v20                             // 0000000FF860: 4C202910
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FF864: BF870122
	v_mul_lo_u32 v15, v15, s35                                 // 0000000FF868: D72C000F 0000470F
	s_waitcnt lgkmcnt(0)                                       // 0000000FF870: BF89FC07
	v_mul_lo_u32 v16, v16, s36                                 // 0000000FF874: D72C0010 00004910
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FF87C: BF870001
	v_add3_u32 v10, v15, v10, v16                              // 0000000FF880: D655000A 0442150F
	s_cbranch_scc1 65462                                       // 0000000FF888: BFA2FFB6 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2c64>
	s_branch 8                                                 // 0000000FF88C: BFA00008 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2db0>
	s_mov_b32 s3, -1                                           // 0000000FF890: BE8300C1
	s_branch 866                                               // 0000000FF894: BFA00362 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3b20>
	s_branch 56                                                // 0000000FF898: BFA00038 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2e7c>
	v_mov_b32_e32 v10, 0                                       // 0000000FF89C: 7E140280
	s_branch 53                                                // 0000000FF8A0: BFA00035 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2e78>
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v13, v24           // 0000000FF8A4: CA100080 0A0C0118
	s_mov_b32 s27, 0                                           // 0000000FF8AC: BE9B0080
	s_and_b32 s30, s30, 3                                      // 0000000FF8B0: 8B1E831E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FF8B4: BF870009
	s_cmp_eq_u32 s30, 0                                        // 0000000FF8B8: BF06801E
	s_cbranch_scc1 46                                          // 0000000FF8BC: BFA2002E <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2e78>
	s_lshl_b32 s10, s27, 3                                     // 0000000FF8C0: 840A831B
	s_mul_i32 s18, s27, 12                                     // 0000000FF8C4: 96128C1B
	s_add_u32 s10, s0, s10                                     // 0000000FF8C8: 800A0A00
	s_addc_u32 s11, s1, 0                                      // 0000000FF8CC: 820B8001
	s_add_u32 s10, s10, 0x210                                  // 0000000FF8D0: 800AFF0A 00000210
	s_addc_u32 s11, s11, 0                                     // 0000000FF8D8: 820B800B
	s_add_u32 s18, s0, s18                                     // 0000000FF8DC: 80121200
	s_addc_u32 s19, s1, 0                                      // 0000000FF8E0: 82138001
	s_nop 0                                                    // 0000000FF8E4: BF800000
	s_nop 0                                                    // 0000000FF8E8: BF800000
	s_nop 0                                                    // 0000000FF8EC: BF800000
	s_nop 0                                                    // 0000000FF8F0: BF800000
	s_nop 0                                                    // 0000000FF8F4: BF800000
	s_nop 0                                                    // 0000000FF8F8: BF800000
	s_nop 0                                                    // 0000000FF8FC: BF800000
	s_clause 0x1                                               // 0000000FF900: BF850001
	s_load_b64 s[34:35], s[18:19], 0x150                       // 0000000FF904: F4040889 F8000150
	s_load_b32 s27, s[18:19], 0x158                            // 0000000FF90C: F40006C9 F8000158
	s_load_b32 s31, s[10:11], null                             // 0000000FF914: F40007C5 F8000000
	s_add_u32 s10, s10, 8                                      // 0000000FF91C: 800A880A
	s_addc_u32 s11, s11, 0                                     // 0000000FF920: 820B800B
	s_add_u32 s18, s18, 12                                     // 0000000FF924: 80128C12
	s_addc_u32 s19, s19, 0                                     // 0000000FF928: 82138013
	s_add_i32 s30, s30, -1                                     // 0000000FF92C: 811EC11E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 0000000FF930: BF8700B9
	s_cmp_lg_u32 s30, 0                                        // 0000000FF934: BF07801E
	s_waitcnt lgkmcnt(0)                                       // 0000000FF938: BF89FC07
	v_mul_hi_u32 v14, s35, v13                                 // 0000000FF93C: D72D000E 00021A23
	v_add_nc_u32_e32 v14, v13, v14                             // 0000000FF944: 4A1C1D0D
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF948: BF870091
	v_lshrrev_b32_e32 v16, s27, v14                            // 0000000FF94C: 32201C1B
	v_mul_lo_u32 v14, v16, s34                                 // 0000000FF950: D72C000E 00004510
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF958: BF870091
	v_sub_nc_u32_e32 v13, v13, v14                             // 0000000FF95C: 4C1A1D0D
	v_mad_u64_u32 v[14:15], null, v13, s31, v[10:11]           // 0000000FF960: D6FE7C0E 04283F0D
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FF968: BF870001
	v_dual_mov_b32 v13, v16 :: v_dual_mov_b32 v10, v14         // 0000000FF96C: CA100110 0D0A010E
	s_cbranch_scc1 65506                                       // 0000000FF974: BFA2FFE2 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2e00>
	s_cbranch_execnz 27                                        // 0000000FF978: BFA6001B <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2ee8>
	v_mul_hi_u32 v10, v24, s5                                  // 0000000FF97C: D72D000A 00000B18
	s_and_not1_b32 vcc_lo, exec_lo, s23                        // 0000000FF984: 916A177E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF988: BF870091
	v_add_nc_u32_e32 v10, v24, v10                             // 0000000FF98C: 4A141518
	v_lshrrev_b32_e32 v13, s6, v10                             // 0000000FF990: 321A1406
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF994: BF870091
	v_mul_lo_u32 v10, v13, s4                                  // 0000000FF998: D72C000A 0000090D
	v_sub_nc_u32_e32 v10, v24, v10                             // 0000000FF9A0: 4C141518
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FF9A4: BF870001
	v_mul_lo_u32 v10, v10, s25                                 // 0000000FF9A8: D72C000A 0000330A
	s_cbranch_vccnz 13                                         // 0000000FF9B0: BFA4000D <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2ee8>
	v_mul_hi_u32 v14, v13, s2                                  // 0000000FF9B4: D72D000E 0000050D
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF9BC: BF870091
	v_add_nc_u32_e32 v14, v13, v14                             // 0000000FF9C0: 4A1C1D0D
	v_lshrrev_b32_e32 v14, s3, v14                             // 0000000FF9C4: 321C1C03
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF9C8: BF870091
	v_mul_lo_u32 v14, v14, s7                                  // 0000000FF9CC: D72C000E 00000F0E
	v_sub_nc_u32_e32 v15, v13, v14                             // 0000000FF9D4: 4C1E1D0D
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FF9D8: BF870091
	v_mad_u64_u32 v[13:14], null, v15, s24, v[10:11]           // 0000000FF9DC: D6FE7C0D 0428310F
	v_mov_b32_e32 v10, v13                                     // 0000000FF9E4: 7E14030D
	v_cmp_ne_u32_e32 vcc_lo, 1, v11                            // 0000000FF9E8: 7C9A1681
	s_cbranch_vccnz 84                                         // 0000000FF9EC: BFA40054 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3040>
	s_and_not1_b32 vcc_lo, exec_lo, s28                        // 0000000FF9F0: 916A1C7E
	s_cbranch_vccnz 83                                         // 0000000FF9F4: BFA40053 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3044>
	v_mov_b32_e32 v11, 0                                       // 0000000FF9F8: 7E160280
	v_mov_b32_e32 v13, v12                                     // 0000000FF9FC: 7E1A030C
	s_add_i32 s29, s29, 1                                      // 0000000FFA00: 811D811D
	s_cmp_eq_u32 s26, 2                                        // 0000000FFA04: BF06821A
	s_cbranch_scc1 80                                          // 0000000FFA08: BFA20050 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x304c>
	s_and_b32 s18, s29, 28                                     // 0000000FFA0C: 8B129C1D
	s_mov_b32 s19, 0                                           // 0000000FFA10: BE930080
	s_mov_b64 s[10:11], s[0:1]                                 // 0000000FFA14: BE8A0100
	s_clause 0x1                                               // 0000000FFA18: BF850001
	s_load_b256 s[36:43], s[10:11], 0x150                      // 0000000FFA1C: F40C0905 F8000150
	s_load_b128 s[44:47], s[10:11], 0x170                      // 0000000FFA24: F4080B05 F8000170
	s_clause 0x3                                               // 0000000FFA2C: BF850003
	s_load_b32 s26, s[16:17], null                             // 0000000FFA30: F4000688 F8000000
	s_load_b32 s27, s[16:17], 0x8                              // 0000000FFA38: F40006C8 F8000008
	s_load_b32 s28, s[16:17], 0x10                             // 0000000FFA40: F4000708 F8000010
	s_load_b32 s30, s[16:17], 0x18                             // 0000000FFA48: F4000788 F8000018
	s_add_i32 s19, s19, 4                                      // 0000000FFA50: 81138413
	s_add_u32 s16, s16, 32                                     // 0000000FFA54: 8010A010
	s_addc_u32 s17, s17, 0                                     // 0000000FFA58: 82118011
	s_add_u32 s10, s10, 48                                     // 0000000FFA5C: 800AB00A
	s_addc_u32 s11, s11, 0                                     // 0000000FFA60: 820B800B
	s_cmp_eq_u32 s18, s19                                      // 0000000FFA64: BF061312
	s_waitcnt lgkmcnt(0)                                       // 0000000FFA68: BF89FC07
	v_mul_hi_u32 v14, s37, v13                                 // 0000000FFA6C: D72D000E 00021A25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FFA74: BF870091
	v_add_nc_u32_e32 v14, v13, v14                             // 0000000FFA78: 4A1C1D0D
	v_lshrrev_b32_e32 v14, s38, v14                            // 0000000FFA7C: 321C1C26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FFA80: BF870121
	v_mul_hi_u32 v15, s40, v14                                 // 0000000FFA84: D72D000F 00021C28
	v_mul_lo_u32 v18, v14, s36                                 // 0000000FFA8C: D72C0012 0000490E
	v_add_nc_u32_e32 v15, v14, v15                             // 0000000FFA94: 4A1E1F0E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FFA98: BF870112
	v_sub_nc_u32_e32 v18, v13, v18                             // 0000000FFA9C: 4C24250D
	v_lshrrev_b32_e32 v15, s41, v15                            // 0000000FFAA0: 321E1E29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FFAA4: BF870112
	v_mul_lo_u32 v18, v18, s26                                 // 0000000FFAA8: D72C0012 00003512
	v_mul_hi_u32 v16, s43, v15                                 // 0000000FFAB0: D72D0010 00021E2B
	v_mul_lo_u32 v19, v15, s39                                 // 0000000FFAB8: D72C0013 00004F0F
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FFAC0: BF870112
	v_add_nc_u32_e32 v16, v15, v16                             // 0000000FFAC4: 4A20210F
	v_sub_nc_u32_e32 v14, v14, v19                             // 0000000FFAC8: 4C1C270E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FFACC: BF870112
	v_lshrrev_b32_e32 v16, s44, v16                            // 0000000FFAD0: 3220202C
	v_mul_lo_u32 v14, v14, s27                                 // 0000000FFAD4: D72C000E 0000370E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FFADC: BF870112
	v_mul_hi_u32 v17, s46, v16                                 // 0000000FFAE0: D72D0011 0002202E
	v_add3_u32 v11, v18, v11, v14                              // 0000000FFAE8: D655000B 043A1712
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FFAF0: BF870092
	v_add_nc_u32_e32 v17, v16, v17                             // 0000000FFAF4: 4A222310
	v_lshrrev_b32_e32 v13, s47, v17                            // 0000000FFAF8: 321A222F
	v_mul_lo_u32 v17, v16, s42                                 // 0000000FFAFC: D72C0011 00005510
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FFB04: BF870112
	v_mul_lo_u32 v20, v13, s45                                 // 0000000FFB08: D72C0014 00005B0D
	v_sub_nc_u32_e32 v15, v15, v17                             // 0000000FFB10: 4C1E230F
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000FFB14: BF870112
	v_sub_nc_u32_e32 v16, v16, v20                             // 0000000FFB18: 4C202910
	v_mul_lo_u32 v15, v15, s28                                 // 0000000FFB1C: D72C000F 0000390F
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FFB24: BF870092
	v_mul_lo_u32 v16, v16, s30                                 // 0000000FFB28: D72C0010 00003D10
	v_add3_u32 v11, v15, v11, v16                              // 0000000FFB30: D655000B 0442170F
	s_cbranch_scc0 65463                                       // 0000000FFB38: BFA1FFB7 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x2f18>
	s_branch 4                                                 // 0000000FFB3C: BFA00004 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3050>
	s_branch 62                                                // 0000000FFB40: BFA0003E <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x313c>
	v_mov_b32_e32 v11, 0                                       // 0000000FFB44: 7E160280
	s_branch 59                                                // 0000000FFB48: BFA0003B <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3138>
	s_mov_b32 s18, 0                                           // 0000000FFB4C: BE920080
	s_and_b32 s19, s29, 3                                      // 0000000FFB50: 8B13831D
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FFB54: BF870009
	s_cmp_eq_u32 s19, 0                                        // 0000000FFB58: BF068013
	s_cbranch_scc1 54                                          // 0000000FFB5C: BFA20036 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3138>
	s_lshl_b32 s10, s18, 3                                     // 0000000FFB60: 840A8312
	s_mul_i32 s16, s18, 12                                     // 0000000FFB64: 96108C12
	s_add_u32 s10, s0, s10                                     // 0000000FFB68: 800A0A00
	s_addc_u32 s11, s1, 0                                      // 0000000FFB6C: 820B8001
	s_add_u32 s10, s10, 0x210                                  // 0000000FFB70: 800AFF0A 00000210
	s_addc_u32 s11, s11, 0                                     // 0000000FFB78: 820B800B
	s_add_u32 s16, s0, s16                                     // 0000000FFB7C: 80101000
	s_addc_u32 s17, s1, 0                                      // 0000000FFB80: 82118001
	s_nop 0                                                    // 0000000FFB84: BF800000
	s_nop 0                                                    // 0000000FFB88: BF800000
	s_nop 0                                                    // 0000000FFB8C: BF800000
	s_nop 0                                                    // 0000000FFB90: BF800000
	s_nop 0                                                    // 0000000FFB94: BF800000
	s_nop 0                                                    // 0000000FFB98: BF800000
	s_nop 0                                                    // 0000000FFB9C: BF800000
	s_nop 0                                                    // 0000000FFBA0: BF800000
	s_nop 0                                                    // 0000000FFBA4: BF800000
	s_nop 0                                                    // 0000000FFBA8: BF800000
	s_nop 0                                                    // 0000000FFBAC: BF800000
	s_nop 0                                                    // 0000000FFBB0: BF800000
	s_nop 0                                                    // 0000000FFBB4: BF800000
	s_nop 0                                                    // 0000000FFBB8: BF800000
	s_nop 0                                                    // 0000000FFBBC: BF800000
	s_clause 0x1                                               // 0000000FFBC0: BF850001
	s_load_b64 s[26:27], s[16:17], 0x150                       // 0000000FFBC4: F4040688 F8000150
	s_load_b32 s18, s[16:17], 0x158                            // 0000000FFBCC: F4000488 F8000158
	s_waitcnt lgkmcnt(0)                                       // 0000000FFBD4: BF89FC07
	v_mul_hi_u32 v14, s27, v13                                 // 0000000FFBD8: D72D000E 00021A1B
	s_load_b32 s27, s[10:11], null                             // 0000000FFBE0: F40006C5 F8000000
	s_add_u32 s10, s10, 8                                      // 0000000FFBE8: 800A880A
	s_addc_u32 s11, s11, 0                                     // 0000000FFBEC: 820B800B
	s_add_u32 s16, s16, 12                                     // 0000000FFBF0: 80108C10
	s_addc_u32 s17, s17, 0                                     // 0000000FFBF4: 82118011
	s_add_i32 s19, s19, -1                                     // 0000000FFBF8: 8113C113
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000FFBFC: BF8700A9
	s_cmp_lg_u32 s19, 0                                        // 0000000FFC00: BF078013
	v_add_nc_u32_e32 v14, v13, v14                             // 0000000FFC04: 4A1C1D0D
	v_lshrrev_b32_e32 v16, s18, v14                            // 0000000FFC08: 32201C12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FFC0C: BF870091
	v_mul_lo_u32 v14, v16, s26                                 // 0000000FFC10: D72C000E 00003510
	v_sub_nc_u32_e32 v13, v13, v14                             // 0000000FFC18: 4C1A1D0D
	s_waitcnt lgkmcnt(0)                                       // 0000000FFC1C: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000FFC20: BF870121
	v_mad_u64_u32 v[14:15], null, v13, s27, v[11:12]           // 0000000FFC24: D6FE7C0E 042C370D
	v_mov_b32_e32 v13, v16                                     // 0000000FFC2C: 7E1A0310
	v_mov_b32_e32 v11, v14                                     // 0000000FFC30: 7E16030E
	s_cbranch_scc1 65506                                       // 0000000FFC34: BFA2FFE2 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x30c0>
	s_cbranch_execnz 27                                        // 0000000FFC38: BFA6001B <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x31a8>
	v_mul_hi_u32 v11, v12, s5                                  // 0000000FFC3C: D72D000B 00000B0C
	s_and_not1_b32 vcc_lo, exec_lo, s23                        // 0000000FFC44: 916A177E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FFC48: BF870091
	v_add_nc_u32_e32 v11, v12, v11                             // 0000000FFC4C: 4A16170C
	v_lshrrev_b32_e32 v13, s6, v11                             // 0000000FFC50: 321A1606
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FFC54: BF870091
	v_mul_lo_u32 v11, v13, s4                                  // 0000000FFC58: D72C000B 0000090D
	v_sub_nc_u32_e32 v11, v12, v11                             // 0000000FFC60: 4C16170C
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FFC64: BF870001
	v_mul_lo_u32 v11, v11, s25                                 // 0000000FFC68: D72C000B 0000330B
	s_cbranch_vccnz 13                                         // 0000000FFC70: BFA4000D <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x31a8>
	v_mul_hi_u32 v12, v13, s2                                  // 0000000FFC74: D72D000C 0000050D
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FFC7C: BF870091
	v_add_nc_u32_e32 v12, v13, v12                             // 0000000FFC80: 4A18190D
	v_lshrrev_b32_e32 v12, s3, v12                             // 0000000FFC84: 32181803
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FFC88: BF870091
	v_mul_lo_u32 v12, v12, s7                                  // 0000000FFC8C: D72C000C 00000F0C
	v_sub_nc_u32_e32 v14, v13, v12                             // 0000000FFC94: 4C1C190D
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FFC98: BF870091
	v_mad_u64_u32 v[12:13], null, v14, s24, v[11:12]           // 0000000FFC9C: D6FE7C0C 042C310E
	v_mov_b32_e32 v11, v12                                     // 0000000FFCA4: 7E16030C
	s_load_b64 s[4:5], s[0:1], 0x2b0                           // 0000000FFCA8: F4040100 F80002B0
	v_cmp_eq_u32_e32 vcc_lo, 0, v1                             // 0000000FFCB0: 7C940280
	v_cmp_gt_i32_e64 s2, s13, v24                              // 0000000FFCB4: D4440002 0002300D
	s_mov_b32 s16, 0                                           // 0000000FFCBC: BE900080
	s_or_b32 s3, vcc_lo, s22                                   // 0000000FFCC0: 8C03166A
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 0000000FFCC4: BF870499
	s_and_b32 s2, s2, s3                                       // 0000000FFCC8: 8B020302
	s_and_saveexec_b32 s3, s2                                  // 0000000FFCCC: BE832002
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FFCD0: BF870009
	s_xor_b32 s2, exec_lo, s3                                  // 0000000FFCD4: 8D02037E
	v_cmp_eq_u32_e32 vcc_lo, 0, v0                             // 0000000FFCD8: 7C940080
	s_or_b32 s3, vcc_lo, s21                                   // 0000000FFCDC: 8C03156A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FFCE0: BF870009
	s_and_b32 s16, s3, exec_lo                                 // 0000000FFCE4: 8B107E03
	s_or_b32 exec_lo, exec_lo, s2                              // 0000000FFCE8: 8C7E027E
	s_and_saveexec_b32 s6, s16                                 // 0000000FFCEC: BE862010
	s_cbranch_execz 32                                         // 0000000FFCF0: BFA50020 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3274>
	s_load_b32 s7, s[0:1], 0x2d4                               // 0000000FFCF4: F40001C0 F80002D4
	s_add_u32 s2, s0, 0x2d0                                    // 0000000FFCFC: 8002FF00 000002D0
	s_addc_u32 s3, s1, 0                                       // 0000000FFD04: 82038001
	s_and_not1_b32 vcc_lo, exec_lo, s22                        // 0000000FFD08: 916A167E
	s_waitcnt lgkmcnt(0)                                       // 0000000FFD0C: BF89FC07
	s_mul_i32 s7, s7, s14                                      // 0000000FFD10: 96070E07
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 0000000FFD14: BF870499
	s_add_i32 s7, s7, s15                                      // 0000000FFD18: 81070F07
	v_mov_b32_e32 v12, s7                                      // 0000000FFD1C: 7E180207
	s_cbranch_vccnz 8                                          // 0000000FFD20: BFA40008 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3244>
	s_load_b32 s2, s[2:3], 0xc                                 // 0000000FFD24: F4000081 F800000C
	s_waitcnt lgkmcnt(0)                                       // 0000000FFD2C: BF89FC07
	s_and_b32 s2, s2, 0xffff                                   // 0000000FFD30: 8B02FF02 0000FFFF
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FFD38: BF870009
	v_mad_u64_u32 v[12:13], null, s7, s2, v[1:2]               // 0000000FFD3C: D6FE7C0C 04040407
	v_mov_b32_e32 v13, 0                                       // 0000000FFD44: 7E1A0280
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FFD48: BF870091
	v_lshlrev_b64 v[12:13], 3, v[12:13]                        // 0000000FFD4C: D73C000C 00021883
	v_add_co_u32 v12, vcc_lo, s4, v12                          // 0000000FFD54: D7006A0C 00021804
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FFD5C: BF870001
	v_add_co_ci_u32_e64 v13, null, s5, v13, vcc_lo             // 0000000FFD60: D5207C0D 01AA1A05
	global_store_b64 v[12:13], v[2:3], off                     // 0000000FFD68: DC6E0000 007C020C
	s_waitcnt vmcnt(0)                                         // 0000000FFD70: BF8903F7
	s_or_b32 exec_lo, exec_lo, s6                              // 0000000FFD74: 8C7E067E
	v_or_b32_e32 v12, v1, v0                                   // 0000000FFD78: 38180101
	s_mov_b32 s2, exec_lo                                      // 0000000FFD7C: BE82007E
	s_waitcnt lgkmcnt(0)                                       // 0000000FFD80: BF89FC07
	s_waitcnt_vscnt null, 0x0                                  // 0000000FFD84: BC7C0000
	s_barrier                                                  // 0000000FFD88: BFBD0000
	buffer_gl0_inv                                             // 0000000FFD8C: E0AC0000 00000000
	s_barrier                                                  // 0000000FFD94: BFBD0000
	buffer_gl0_inv                                             // 0000000FFD98: E0AC0000 00000000
	v_cmpx_eq_u32_e32 0, v12                                   // 0000000FFDA0: 7D941880
	s_cbranch_execz 39                                         // 0000000FFDA4: BFA50027 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3344>
	s_mov_b32 s6, exec_lo                                      // 0000000FFDA8: BE86007E
	s_mov_b32 s3, exec_lo                                      // 0000000FFDAC: BE83007E
	v_mbcnt_lo_u32_b32 v12, s6, 0                              // 0000000FFDB0: D71F000C 00010006
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FFDB8: BF870001
	v_cmpx_eq_u32_e32 0, v12                                   // 0000000FFDBC: 7D941880
	s_cbranch_execz 16                                         // 0000000FFDC0: BFA50010 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3304>
	s_load_b64 s[10:11], s[0:1], 0x2b8                         // 0000000FFDC4: F4040280 F80002B8
	s_mov_b32 s7, s15                                          // 0000000FFDCC: BE87000F
	s_mov_b32 s15, 0                                           // 0000000FFDD0: BE8F0080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FFDD4: BF870009
	s_lshl_b64 s[18:19], s[14:15], 2                           // 0000000FFDD8: 8492820E
	s_mov_b32 s15, s7                                          // 0000000FFDDC: BE8F0007
	s_waitcnt lgkmcnt(0)                                       // 0000000FFDE0: BF89FC07
	s_add_u32 s10, s10, s18                                    // 0000000FFDE4: 800A120A
	s_addc_u32 s11, s11, s19                                   // 0000000FFDE8: 820B130B
	s_bcnt1_i32_b32 s6, s6                                     // 0000000FFDEC: BE861806
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FFDF0: BF870009
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, s6            // 0000000FFDF4: CA100080 0D0E0006
	global_atomic_add_u32 v13, v13, v14, s[10:11] glc          // 0000000FFDFC: DCD64000 0D0A0E0D
	s_or_b32 exec_lo, exec_lo, s3                              // 0000000FFE04: 8C7E037E
	s_load_b32 s3, s[0:1], 0x2d4                               // 0000000FFE08: F40000C0 F80002D4
	s_waitcnt vmcnt(0)                                         // 0000000FFE10: BF8903F7
	v_readfirstlane_b32 s6, v13                                // 0000000FFE14: 7E0C050D
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FFE18: BF870001
	v_dual_mov_b32 v13, 0 :: v_dual_add_nc_u32 v12, s6, v12    // 0000000FFE1C: CA200080 0D0C1806
	s_waitcnt lgkmcnt(0)                                       // 0000000FFE24: BF89FC07
	s_add_i32 s3, s3, -1                                       // 0000000FFE28: 8103C103
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)    // 0000000FFE2C: BF870481
	v_cmp_eq_u32_e32 vcc_lo, s3, v12                           // 0000000FFE30: 7C941803
	v_cndmask_b32_e64 v12, 0, 1, vcc_lo                        // 0000000FFE34: D501000C 01A90280
	ds_store_b8 v13, v12                                       // 0000000FFE3C: D8780000 00000C0D
	s_or_b32 exec_lo, exec_lo, s2                              // 0000000FFE44: 8C7E027E
	v_mov_b32_e32 v12, 0                                       // 0000000FFE48: 7E180280
	s_waitcnt lgkmcnt(0)                                       // 0000000FFE4C: BF89FC07
	s_barrier                                                  // 0000000FFE50: BFBD0000
	buffer_gl0_inv                                             // 0000000FFE54: E0AC0000 00000000
	s_mov_b32 s10, 0                                           // 0000000FFE5C: BE8A0080
	ds_load_u8 v12, v12                                        // 0000000FFE60: D8E80000 0C00000C
	s_mov_b32 s3, 0                                            // 0000000FFE68: BE830080
	s_waitcnt lgkmcnt(0)                                       // 0000000FFE6C: BF89FC07
	v_and_b32_e32 v12, 1, v12                                  // 0000000FFE70: 36181881
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FFE74: BF870001
	v_cmp_eq_u32_e32 vcc_lo, 0, v12                            // 0000000FFE78: 7C941880
	s_cbranch_vccnz 488                                        // 0000000FFE7C: BFA401E8 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3b20>
	s_clause 0x1                                               // 0000000FFE80: BF850001
	s_load_b32 s10, s[0:1], 0x20                               // 0000000FFE84: F4000280 F8000020
	s_load_b32 s2, s[0:1], 0x4                                 // 0000000FFE8C: F4000080 F8000004
	s_waitcnt lgkmcnt(0)                                       // 0000000FFE94: BF89FC07
	s_cmp_lg_u32 s10, 0                                        // 0000000FFE98: BF07800A
	s_cselect_b32 s17, -1, 0                                   // 0000000FFE9C: 981180C1
	s_add_u32 s6, s0, 0x2d0                                    // 0000000FFEA0: 8006FF00 000002D0
	s_addc_u32 s7, s1, 0                                       // 0000000FFEA8: 82078001
	s_cmp_eq_u32 s10, 0                                        // 0000000FFEAC: BF06800A
	s_cbranch_scc1 63                                          // 0000000FFEB0: BFA2003F <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x34b0>
	s_clause 0x1                                               // 0000000FFEB4: BF850001
	s_load_b32 s10, s[6:7], null                               // 0000000FFEB8: F4000283 F8000000
	s_load_b32 s23, s[6:7], 0xc                                // 0000000FFEC0: F40005C3 F800000C
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v12, s2            // 0000000FFEC8: CA100080 0F0C0002
	v_mov_b32_e32 v13, s2                                      // 0000000FFED0: 7E1A0202
	s_waitcnt lgkmcnt(0)                                       // 0000000FFED4: BF89FC07
	s_cmp_lt_u32 s14, s10                                      // 0000000FFED8: BF0A0A0E
	s_cselect_b32 s11, 12, 18                                  // 0000000FFEDC: 980B928C
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FFEE0: BF870009
	s_add_u32 s18, s6, s11                                     // 0000000FFEE4: 80120B06
	s_addc_u32 s19, s7, 0                                      // 0000000FFEE8: 82138007
	s_load_b32 s11, s[0:1], 0x1c                               // 0000000FFEEC: F40002C0 F800001C
	global_load_u16 v14, v15, s[18:19]                         // 0000000FFEF4: DC4A0000 0E12000F
	s_lshr_b32 s18, s23, 16                                    // 0000000FFEFC: 85129017
	s_mov_b32 s19, exec_lo                                     // 0000000FFF00: BE93007E
	s_waitcnt vmcnt(0)                                         // 0000000FFF04: BF8903F7
	v_mad_u32_u24 v16, v0, v14, v1                             // 0000000FFF08: D60B0010 04061D00
	s_waitcnt lgkmcnt(0)                                       // 0000000FFF10: BF89FC07
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000FFF14: BF870001
	v_cmpx_gt_u32_e64 s11, v16                                 // 0000000FFF18: D4CC007E 0002200B
	s_cbranch_execz 30                                         // 0000000FFF20: BFA5001E <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x349c>
	s_load_b32 s24, s[6:7], 0x4                                // 0000000FFF24: F4000603 F8000004
	v_mul_lo_u32 v17, s18, v14                                 // 0000000FFF2C: D72C0011 00021C12
	v_dual_mov_b32 v12, s2 :: v_dual_mov_b32 v13, s2           // 0000000FFF34: CA100002 0C0C0002
	s_mov_b32 s23, 0                                           // 0000000FFF3C: BE970080
	s_waitcnt lgkmcnt(0)                                       // 0000000FFF40: BF89FC07
	s_mul_i32 s24, s24, s14                                    // 0000000FFF44: 96180E18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 0000000FFF48: BF870199
	v_add_nc_u32_e32 v14, s24, v16                             // 0000000FFF4C: 4A1C2018
	v_add_nc_u32_e32 v16, v16, v17                             // 0000000FFF50: 4A202310
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000FFF54: BF870092
	v_lshlrev_b64 v[18:19], 3, v[14:15]                        // 0000000FFF58: D73C0012 00021C83
	v_add_co_u32 v18, vcc_lo, s4, v18                          // 0000000FFF60: D7006A12 00022404
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)// 0000000FFF68: BF870211
	v_add_co_ci_u32_e64 v19, null, s5, v19, vcc_lo             // 0000000FFF6C: D5207C13 01AA2605
	v_cmp_le_u32_e32 vcc_lo, s11, v16                          // 0000000FFF74: 7C96200B
	global_load_b64 v[18:19], v[18:19], off                    // 0000000FFF78: DC560000 127C0012
	s_or_b32 s23, vcc_lo, s23                                  // 0000000FFF80: 8C17176A
	s_waitcnt vmcnt(0)                                         // 0000000FFF84: BF8903F7
	v_dual_add_f32 v12, v12, v18 :: v_dual_add_f32 v13, v13, v19// 0000000FFF88: C908250C 0C0C270D
	s_and_not1_b32 exec_lo, exec_lo, s23                       // 0000000FFF90: 917E177E
	s_cbranch_execnz 65516                                     // 0000000FFF94: BFA6FFEC <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3448>
	s_or_b32 exec_lo, exec_lo, s23                             // 0000000FFF98: 8C7E177E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FFF9C: BF870009
	s_or_b32 exec_lo, exec_lo, s19                             // 0000000FFFA0: 8C7E137E
	v_mov_b32_e32 v25, s18                                     // 0000000FFFA4: 7E320212
	s_cbranch_execz 2                                          // 0000000FFFA8: BFA50002 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x34b4>
	s_branch 168                                               // 0000000FFFAC: BFA000A8 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3750>
	v_mov_b32_e32 v25, s18                                     // 0000000FFFB0: 7E320212
	s_load_b64 s[10:11], s[6:7], null                          // 0000000FFFB4: F4040283 F8000000
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v12, s2            // 0000000FFFBC: CA100080 0F0C0002
	v_mov_b32_e32 v13, s2                                      // 0000000FFFC4: 7E1A0202
	s_mov_b32 s23, 0                                           // 0000000FFFC8: BE970080
	s_waitcnt lgkmcnt(0)                                       // 0000000FFFCC: BF89FC07
	s_cmp_lt_u32 s15, s11                                      // 0000000FFFD0: BF0A0B0F
	s_cselect_b32 s15, 14, 20                                  // 0000000FFFD4: 980F948E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000FFFD8: BF870009
	s_add_u32 s18, s6, s15                                     // 0000000FFFDC: 80120F06
	s_addc_u32 s19, s7, 0                                      // 0000000FFFE0: 82138007
	s_load_b32 s15, s[0:1], 0x1c                               // 0000000FFFE4: F40003C0 F800001C
	global_load_d16_b16 v25, v15, s[18:19]                     // 0000000FFFEC: DC820000 1912000F
	s_mov_b32 s19, exec_lo                                     // 0000000FFFF4: BE93007E
	s_waitcnt vmcnt(0)                                         // 0000000FFFF8: BF8903F7
	v_readfirstlane_b32 s18, v25                               // 0000000FFFFC: 7E240519
	s_and_b32 s18, 0xffff, s18                                 // 000000100000: 8B1212FF 0000FFFF
	s_waitcnt lgkmcnt(0)                                       // 000000100008: BF89FC07
	v_cmpx_gt_u32_e64 s15, v0                                  // 00000010000C: D4CC007E 0002000F
	s_cbranch_execz 140                                        // 000000100014: BFA5008C <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3748>
	s_load_b32 s24, s[6:7], 0x14                               // 000000100018: F4000603 F8000014
	v_mov_b32_e32 v32, v0                                      // 000000100020: 7E400300
	v_mov_b32_e32 v12, s2                                      // 000000100024: 7E180202
	s_waitcnt lgkmcnt(0)                                       // 000000100028: BF89FC07
	s_and_b32 s24, s24, 0xffff                                 // 00000010002C: 8B18FF18 0000FFFF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 000000100034: BF8704A9
	s_cmp_lg_u32 s24, 0                                        // 000000100038: BF078018
	s_cselect_b32 s24, -1, 0                                   // 00000010003C: 981880C1
	s_cmp_lg_u32 s24, 0                                        // 000000100040: BF078018
	s_addc_u32 s11, s11, 0                                     // 000000100044: 820B800B
	s_cmp_lt_u32 s14, s10                                      // 000000100048: BF0A0A0E
	v_mad_u64_u32 v[13:14], null, s11, s14, v[0:1]             // 00000010004C: D6FE7C0D 04001C0B
	s_cselect_b32 s24, 12, 18                                  // 000000100054: 9818928C
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000100058: BF870009
	s_add_u32 s24, s6, s24                                     // 00000010005C: 80181806
	s_addc_u32 s25, s7, 0                                      // 000000100060: 82198007
	s_lshl_b32 s11, s18, 1                                     // 000000100064: 840B8112
	global_load_u16 v16, v15, s[24:25]                         // 000000100068: DC4A0000 1018000F
	s_mul_i32 s24, s18, 3                                      // 000000100070: 96188312
	v_add_nc_u32_e32 v14, s11, v13                             // 000000100074: 4A1C1A0B
	v_add_nc_u32_e32 v17, s24, v13                             // 000000100078: 4A221A18
	v_add_nc_u32_e32 v18, s18, v13                             // 00000010007C: 4A241A12
	s_waitcnt vmcnt(0)                                         // 000000100080: BF8903F7
	v_mul_lo_u32 v19, s18, v16                                 // 000000100084: D72C0013 00022012
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)// 00000010008C: BF870193
	v_mul_lo_u32 v28, v17, v16                                 // 000000100090: D72C001C 00022111
	v_mul_lo_u32 v29, v18, v16                                 // 000000100098: D72C001D 00022112
	v_mul_lo_u32 v30, v13, v16                                 // 0000001000A0: D72C001E 0002210D
	v_mov_b32_e32 v13, s2                                      // 0000001000A8: 7E1A0202
	v_mul_lo_u32 v27, v14, v16                                 // 0000001000AC: D72C001B 0002210E
	v_mov_b32_e32 v26, v1                                      // 0000001000B4: 7E340301
	v_lshlrev_b32_e32 v31, 2, v19                              // 0000001000B8: 303E2682
	s_branch 10                                                // 0000001000BC: BFA0000A <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x35e8>
	s_or_b32 exec_lo, exec_lo, s25                             // 0000001000C0: 8C7E197E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 0000001000C4: BF870139
	s_or_b32 exec_lo, exec_lo, s2                              // 0000001000C8: 8C7E027E
	v_add_nc_u32_e32 v32, s24, v33                             // 0000001000CC: 4A404218
	v_add_nc_u32_e32 v26, v26, v31                             // 0000001000D0: 4A343F1A
	v_cmp_le_u32_e32 vcc_lo, s15, v32                          // 0000001000D4: 7C96400F
	s_or_b32 s23, vcc_lo, s23                                  // 0000001000D8: 8C17176A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001000DC: BF870009
	s_and_not1_b32 exec_lo, exec_lo, s23                       // 0000001000E0: 917E177E
	s_cbranch_execz 87                                         // 0000001000E4: BFA50057 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3744>
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)// 0000001000E8: BF8701B2
	v_add_nc_u32_e32 v14, v30, v26                             // 0000001000EC: 4A1C351E
	v_add_nc_u32_e32 v33, s18, v32                             // 0000001000F0: 4A424012
	v_add_nc_u32_e32 v34, s11, v32                             // 0000001000F4: 4A44400B
	v_lshlrev_b64 v[22:23], 3, v[14:15]                        // 0000001000F8: D73C0016 00021C83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000100100: BF870091
	v_add_co_u32 v22, vcc_lo, s4, v22                          // 000000100104: D7006A16 00022C04
	v_add_co_ci_u32_e64 v23, null, s5, v23, vcc_lo             // 00000010010C: D5207C17 01AA2E05
	v_cmp_gt_u32_e32 vcc_lo, s15, v33                          // 000000100114: 7C98420F
	global_load_b64 v[22:23], v[22:23], off                    // 000000100118: DC560000 167C0016
	s_and_saveexec_b32 s25, vcc_lo                             // 000000100120: BE99206A
	s_cbranch_execz 45                                         // 000000100124: BFA5002D <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x36dc>
	v_add_nc_u32_e32 v14, v29, v26                             // 000000100128: 4A1C351D
	s_mov_b32 s26, exec_lo                                     // 00000010012C: BE9A007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000100130: BF870091
	v_lshlrev_b64 v[20:21], 3, v[14:15]                        // 000000100134: D73C0014 00021C83
	v_add_co_u32 v20, s2, s4, v20                              // 00000010013C: D7000214 00022804
	s_delay_alu instid0(VALU_DEP_1)                            // 000000100144: BF870001
	v_add_co_ci_u32_e64 v21, null, s5, v21, s2                 // 000000100148: D5207C15 000A2A05
	global_load_b64 v[20:21], v[20:21], off                    // 000000100150: DC560000 147C0014
	v_cmpx_gt_u32_e64 s15, v34                                 // 000000100158: D4CC007E 0002440F
	s_cbranch_execz 28                                         // 000000100160: BFA5001C <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x36d4>
	v_add_nc_u32_e32 v14, v27, v26                             // 000000100164: 4A1C351B
	s_mov_b32 s27, exec_lo                                     // 000000100168: BE9B007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 00000010016C: BF870121
	v_lshlrev_b64 v[18:19], 3, v[14:15]                        // 000000100170: D73C0012 00021C83
	v_add_nc_u32_e32 v14, s24, v32                             // 000000100178: 4A1C4018
	v_add_co_u32 v18, s2, s4, v18                              // 00000010017C: D7000212 00022404
	s_delay_alu instid0(VALU_DEP_1)                            // 000000100184: BF870001
	v_add_co_ci_u32_e64 v19, null, s5, v19, s2                 // 000000100188: D5207C13 000A2605
	global_load_b64 v[18:19], v[18:19], off                    // 000000100190: DC560000 127C0012
	v_cmpx_gt_u32_e64 s15, v14                                 // 000000100198: D4CC007E 00021C0F
	s_cbranch_execz 11                                         // 0000001001A0: BFA5000B <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x36d0>
	v_add_nc_u32_e32 v14, v28, v26                             // 0000001001A4: 4A1C351C
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000001001A8: BF870091
	v_lshlrev_b64 v[16:17], 3, v[14:15]                        // 0000001001AC: D73C0010 00021C83
	v_add_co_u32 v16, s2, s4, v16                              // 0000001001B4: D7000210 00022004
	s_delay_alu instid0(VALU_DEP_1)                            // 0000001001BC: BF870001
	v_add_co_ci_u32_e64 v17, null, s5, v17, s2                 // 0000001001C0: D5207C11 000A2205
	global_load_b64 v[16:17], v[16:17], off                    // 0000001001C8: DC560000 107C0010
	s_or_b32 exec_lo, exec_lo, s27                             // 0000001001D0: 8C7E1B7E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001001D4: BF870009
	s_or_b32 exec_lo, exec_lo, s26                             // 0000001001D8: 8C7E1A7E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001001DC: BF870009
	s_or_b32 exec_lo, exec_lo, s25                             // 0000001001E0: 8C7E197E
	s_waitcnt vmcnt(0)                                         // 0000001001E4: BF8903F7
	v_dual_add_f32 v12, v12, v22 :: v_dual_add_f32 v13, v13, v23// 0000001001E8: C9082D0C 0C0C2F0D
	s_and_saveexec_b32 s2, vcc_lo                              // 0000001001F0: BE82206A
	s_cbranch_execz 65459                                      // 0000001001F4: BFA5FFB3 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x35c4>
	s_delay_alu instid0(VALU_DEP_1)                            // 0000001001F8: BF870001
	v_dual_add_f32 v12, v12, v20 :: v_dual_add_f32 v13, v13, v21// 0000001001FC: C908290C 0C0C2B0D
	s_mov_b32 s25, exec_lo                                     // 000000100204: BE99007E
	v_cmpx_gt_u32_e64 s15, v34                                 // 000000100208: D4CC007E 0002440F
	s_xor_b32 s25, exec_lo, s25                                // 000000100210: 8D19197E
	s_cbranch_execz 65450                                      // 000000100214: BFA5FFAA <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x35c0>
	v_dual_add_f32 v12, v18, v12 :: v_dual_add_f32 v13, v19, v13// 000000100218: C9081912 0C0C1B13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000100220: BF870091
	v_dual_add_f32 v23, v17, v13 :: v_dual_add_nc_u32 v14, s24, v32// 000000100224: C9201B11 170E4018
	v_cmp_gt_u32_e32 vcc_lo, s15, v14                          // 00000010022C: 7C981C0F
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000100230: BF870092
	v_dual_add_f32 v22, v16, v12 :: v_dual_cndmask_b32 v13, v13, v23// 000000100234: C9121910 160C2F0D
	v_cndmask_b32_e32 v12, v12, v22, vcc_lo                    // 00000010023C: 02182D0C
	s_branch 65439                                             // 000000100240: BFA0FF9F <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x35c0>
	s_or_b32 exec_lo, exec_lo, s23                             // 000000100244: 8C7E177E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000100248: BF870009
	s_or_b32 exec_lo, exec_lo, s19                             // 00000010024C: 8C7E137E
	s_cmp_lt_u32 s14, s10                                      // 000000100250: BF0A0A0E
	v_dual_mov_b32 v14, 0 :: v_dual_lshlrev_b32 v17, 3, v1     // 000000100254: CA220080 0E100283
	s_cselect_b32 s2, 12, 18                                   // 00000010025C: 9802928C
	v_and_b32_e32 v16, 0xffff, v25                             // 000000100260: 362032FF 0000FFFF
	s_add_u32 s4, s6, s2                                       // 000000100268: 80040206
	s_addc_u32 s5, s7, 0                                       // 00000010026C: 82058007
	global_load_u16 v15, v14, s[4:5]                           // 000000100270: DC4A0000 0F04000E
	v_cmp_gt_u32_e32 vcc_lo, 2, v16                            // 000000100278: 7C982082
	s_and_b32 vcc_lo, exec_lo, vcc_lo                          // 00000010027C: 8B6A6A7E
	s_waitcnt vmcnt(0)                                         // 000000100280: BF8903F7
	v_mul_u32_u24_e32 v14, v0, v15                             // 000000100284: 161C1F00
	v_readfirstlane_b32 s4, v15                                // 000000100288: 7E08050F
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000010028C: BF870092
	v_lshlrev_b32_e32 v14, 3, v14                              // 000000100290: 301C1C83
	v_add3_u32 v14, 1, v14, v17                                // 000000100294: D655000E 04461C81
	ds_store_2addr_b32 v14, v12, v13 offset1:1                 // 00000010029C: D8380100 000D0C0E
	s_cbranch_vccnz 40                                         // 0000001002A4: BFA40028 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3848>
	v_lshl_add_u32 v15, v1, 3, 1                               // 0000001002A8: D646000F 02050701
	s_mov_b32 s2, s18                                          // 0000001002B0: BE820012
	s_nop 0                                                    // 0000001002B4: BF800000
	s_nop 0                                                    // 0000001002B8: BF800000
	s_nop 0                                                    // 0000001002BC: BF800000
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001002C0: BF870009
	s_lshr_b32 s5, s2, 1                                       // 0000001002C4: 85058102
	s_mov_b32 s6, exec_lo                                      // 0000001002C8: BE86007E
	s_waitcnt lgkmcnt(0)                                       // 0000001002CC: BF89FC07
	s_barrier                                                  // 0000001002D0: BFBD0000
	buffer_gl0_inv                                             // 0000001002D4: E0AC0000 00000000
	v_cmpx_gt_u32_e64 s5, v0                                   // 0000001002DC: D4CC007E 00020005
	s_cbranch_execz 18                                         // 0000001002E4: BFA50012 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3830>
	v_add_nc_u32_e32 v16, s5, v0                               // 0000001002E8: 4A200005
	s_mov_b32 s7, exec_lo                                      // 0000001002EC: BE87007E
	s_delay_alu instid0(VALU_DEP_1)                            // 0000001002F0: BF870001
	v_cmpx_gt_u32_e64 s18, v16                                 // 0000001002F4: D4CC007E 00022012
	s_cbranch_execz 11                                         // 0000001002FC: BFA5000B <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x382c>
	v_mul_u32_u24_e32 v16, s4, v16                             // 000000100300: 16202004
	s_delay_alu instid0(VALU_DEP_1)                            // 000000100304: BF870001
	v_lshl_add_u32 v16, v16, 3, v15                            // 000000100308: D6460010 043D0710
	ds_load_2addr_b32 v[16:17], v16 offset1:1                  // 000000100310: D8DC0100 10000010
	s_waitcnt lgkmcnt(0)                                       // 000000100318: BF89FC07
	v_dual_add_f32 v12, v12, v16 :: v_dual_add_f32 v13, v13, v17// 00000010031C: C908210C 0C0C230D
	ds_store_2addr_b32 v14, v12, v13 offset1:1                 // 000000100324: D8380100 000D0C0E
	s_or_b32 exec_lo, exec_lo, s7                              // 00000010032C: 8C7E077E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000100330: BF870009
	s_or_b32 exec_lo, exec_lo, s6                              // 000000100334: 8C7E067E
	s_cmp_gt_u32 s2, 3                                         // 000000100338: BF088302
	s_cbranch_scc0 2                                           // 00000010033C: BFA10002 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3848>
	s_mov_b32 s2, s5                                           // 000000100340: BE820005
	s_branch 65502                                             // 000000100344: BFA0FFDE <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x37c0>
	s_and_not1_b32 vcc_lo, exec_lo, s17                        // 000000100348: 916A117E
	s_cbranch_vccnz 70                                         // 00000010034C: BFA40046 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3968>
	s_cmp_lt_u32 s4, 33                                        // 000000100350: BF0AA104
	s_cbranch_scc1 39                                          // 000000100354: BFA20027 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x38f4>
	s_cmp_lt_u32 s4, 64                                        // 000000100358: BF0AC004
	ds_store_2addr_b32 v14, v12, v13 offset1:1                 // 00000010035C: D8380100 000D0C0E
	s_cbranch_scc1 34                                          // 000000100364: BFA20022 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x38f0>
	s_mov_b32 s5, s4                                           // 000000100368: BE850004
	s_nop 0                                                    // 00000010036C: BF800000
	s_nop 0                                                    // 000000100370: BF800000
	s_nop 0                                                    // 000000100374: BF800000
	s_nop 0                                                    // 000000100378: BF800000
	s_nop 0                                                    // 00000010037C: BF800000
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000100380: BF870009
	s_lshr_b32 s6, s5, 1                                       // 000000100384: 85068105
	s_waitcnt lgkmcnt(0)                                       // 000000100388: BF89FC07
	v_add_nc_u32_e32 v15, s6, v1                               // 00000010038C: 4A1E0206
	v_cmp_gt_u32_e32 vcc_lo, s6, v1                            // 000000100390: 7C980206
	s_barrier                                                  // 000000100394: BFBD0000
	buffer_gl0_inv                                             // 000000100398: E0AC0000 00000000
	v_cmp_gt_u32_e64 s2, s4, v15                               // 0000001003A0: D44C0002 00021E04
	s_and_b32 s7, vcc_lo, s2                                   // 0000001003A8: 8B07026A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001003AC: BF870009
	s_and_saveexec_b32 s2, s7                                  // 0000001003B0: BE822007
	s_cbranch_execz 9                                          // 0000001003B4: BFA50009 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x38dc>
	v_lshl_add_u32 v15, s6, 3, v14                             // 0000001003B8: D646000F 04390606
	ds_load_2addr_b32 v[15:16], v15 offset1:1                  // 0000001003C0: D8DC0100 0F00000F
	s_waitcnt lgkmcnt(0)                                       // 0000001003C8: BF89FC07
	v_dual_add_f32 v12, v12, v15 :: v_dual_add_f32 v13, v13, v16// 0000001003CC: C9081F0C 0C0C210D
	ds_store_2addr_b32 v14, v12, v13 offset1:1                 // 0000001003D4: D8380100 000D0C0E
	s_or_b32 exec_lo, exec_lo, s2                              // 0000001003DC: 8C7E027E
	s_cmpk_gt_u32 s5, 0x7f                                     // 0000001003E0: B585007F
	s_cbranch_scc0 2                                           // 0000001003E4: BFA10002 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x38f0>
	s_mov_b32 s5, s6                                           // 0000001003E8: BE850006
	s_branch 65508                                             // 0000001003EC: BFA0FFE4 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3880>
	s_mov_b32 s4, 32                                           // 0000001003F0: BE8400A0
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001003F4: BF870009
	s_cmp_lt_u32 s4, 2                                         // 0000001003F8: BF0A8204
	s_waitcnt lgkmcnt(0)                                       // 0000001003FC: BF89FC07
	s_barrier                                                  // 000000100400: BFBD0000
	buffer_gl0_inv                                             // 000000100404: E0AC0000 00000000
	s_cbranch_scc1 22                                          // 00000010040C: BFA20016 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3968>
	v_mbcnt_lo_u32_b32 v14, -1, 0                              // 000000100410: D71F000E 000100C1
	s_mov_b32 s2, 1                                            // 000000100418: BE820081
	s_delay_alu instid0(VALU_DEP_1)                            // 00000010041C: BF870001
	v_sub_nc_u32_e32 v15, 32, v14                              // 000000100420: 4C1E1CA0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)// 000000100424: BF8704B1
	v_cmp_lt_i32_e32 vcc_lo, s2, v15                           // 000000100428: 7C821E02
	v_cndmask_b32_e64 v16, 0, s2, vcc_lo                       // 00000010042C: D5010010 01A80480
	s_lshl_b32 s2, s2, 1                                       // 000000100434: 84028102
	s_cmp_lt_i32 s2, s4                                        // 000000100438: BF040402
	s_delay_alu instid0(VALU_DEP_1)                            // 00000010043C: BF870001
	v_add_lshl_u32 v16, v16, v14, 2                            // 000000100440: D6470010 020A1D10
	ds_bpermute_b32 v17, v16, v12                              // 000000100448: DACC0000 11000C10
	ds_bpermute_b32 v16, v16, v13                              // 000000100450: DACC0000 10000D10
	s_waitcnt lgkmcnt(0)                                       // 000000100458: BF89FC07
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v13, v13, v16// 00000010045C: C908230C 0C0C210D
	s_cbranch_scc1 65519                                       // 000000100464: BFA2FFEF <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3924>
	s_mov_b32 s10, 0                                           // 000000100468: BE8A0080
	s_and_saveexec_b32 s2, s16                                 // 00000010046C: BE822010
	s_cbranch_execz 106                                        // 000000100470: BFA5006A <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3b1c>
	s_load_b32 s4, s[0:1], 0x2c8                               // 000000100474: F4000100 F80002C8
	s_mov_b32 s6, 0                                            // 00000010047C: BE860080
	s_mov_b32 s7, exec_lo                                      // 000000100480: BE87007E
	s_waitcnt lgkmcnt(0)                                       // 000000100484: BF89FC07
	s_bitcmp1_b32 s4, 0                                        // 000000100488: BF0D8004
	s_cselect_b32 s5, -1, 0                                    // 00000010048C: 980580C1
	v_cmpx_ne_u64_e32 0, v[8:9]                                // 000000100490: 7DBA1080
	s_xor_b32 s7, exec_lo, s7                                  // 000000100494: 8D07077E
	s_cbranch_execz 39                                         // 000000100498: BFA50027 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3a38>
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 00000010049C: 916A057E
	s_cbranch_vccnz 5                                          // 0000001004A0: BFA40005 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x39b8>
	global_load_b64 v[14:15], v[6:7], off                      // 0000001004A4: DC560000 0E7C0006
	s_waitcnt vmcnt(0)                                         // 0000001004AC: BF8903F7
	v_dual_add_f32 v12, v12, v14 :: v_dual_add_f32 v13, v13, v15// 0000001004B0: C9081D0C 0C0C1F0D
	s_bfe_u32 s6, s4, 0x10008                                  // 0000001004B8: 9306FF04 00010008
	s_mov_b32 s10, -1                                          // 0000001004C0: BE8A00C1
	s_cmp_eq_u32 s6, 0                                         // 0000001004C4: BF068006
	s_mov_b32 s6, 0                                            // 0000001004C8: BE860080
	s_cbranch_scc0 3                                           // 0000001004CC: BFA10003 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x39dc>
	s_mov_b32 s10, 0                                           // 0000001004D0: BE8A0080
	global_store_b64 v[6:7], v[12:13], off                     // 0000001004D4: DC6E0000 007C0C06
	s_and_not1_b32 vcc_lo, exec_lo, s10                        // 0000001004DC: 916A0A7E
	s_cbranch_vccnz 20                                         // 0000001004E0: BFA40014 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3a34>
	s_load_b32 s6, s[0:1], 0x2cc                               // 0000001004E4: F4000180 F80002CC
	s_waitcnt lgkmcnt(0)                                       // 0000001004EC: BF89FC07
	s_cmp_lg_u32 s6, 1                                         // 0000001004F0: BF078106
	s_cbranch_scc1 239                                         // 0000001004F4: BFA200EF <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3db4>
	s_mov_b32 s6, 0                                            // 0000001004F8: BE860080
	v_add_co_u32 v14, s10, s8, v10                             // 0000001004FC: D7000A0E 00021408
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000100504: BF8700A1
	v_add_co_ci_u32_e64 v15, null, s9, 0, s10                  // 000000100508: D5207C0F 00290009
	v_add_co_u32 v10, s10, s8, v11                             // 000000100510: D7000A0A 00021608
	v_add_co_ci_u32_e64 v11, null, s9, 0, s10                  // 000000100518: D5207C0B 00290009
	s_clause 0x1                                               // 000000100520: BF850001
	global_store_b32 v[14:15], v12, off                        // 000000100524: DC6A0000 007C0C0E
	global_store_b32 v[10:11], v13, off                        // 00000010052C: DC6A0000 007C0D0A
	s_and_b32 s6, s6, exec_lo                                  // 000000100534: 8B067E06
	s_and_not1_saveexec_b32 s7, s7                             // 000000100538: BE873007
	s_cbranch_execz 52                                         // 00000010053C: BFA50034 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3b10>
	v_add_co_u32 v14, s10, s8, v11                             // 000000100540: D7000A0E 00021608
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000100548: BF8700A1
	v_add_co_ci_u32_e64 v15, null, s9, 0, s10                  // 00000010054C: D5207C0F 00290009
	v_add_co_u32 v10, s10, s8, v10                             // 000000100554: D7000A0A 00021408
	v_add_co_ci_u32_e64 v11, null, s9, 0, s10                  // 00000010055C: D5207C0B 00290009
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 000000100564: 916A057E
	s_cbranch_vccnz 8                                          // 000000100568: BFA40008 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3a8c>
	s_clause 0x1                                               // 00000010056C: BF850001
	global_load_b32 v16, v[10:11], off                         // 000000100570: DC520000 107C000A
	global_load_b32 v17, v[14:15], off                         // 000000100578: DC520000 117C000E
	s_waitcnt vmcnt(0)                                         // 000000100580: BF8903F7
	v_dual_add_f32 v12, v12, v16 :: v_dual_add_f32 v13, v13, v17// 000000100584: C908210C 0C0C230D
	s_bitcmp1_b32 s4, 8                                        // 00000010058C: BF0D8804
	s_cselect_b32 s4, -1, 0                                    // 000000100590: 980480C1
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000100594: BF870009
	s_and_b32 vcc_lo, exec_lo, s4                              // 000000100598: 8B6A047E
	s_mov_b32 s4, -1                                           // 00000010059C: BE8400C1
	s_cbranch_vccnz 6                                          // 0000001005A0: BFA40006 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3abc>
	s_mov_b32 s4, 0                                            // 0000001005A4: BE840080
	s_clause 0x1                                               // 0000001005A8: BF850001
	global_store_b32 v[10:11], v12, off                        // 0000001005AC: DC6A0000 007C0C0A
	global_store_b32 v[14:15], v13, off                        // 0000001005B4: DC6A0000 007C0D0E
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 0000001005BC: 916A047E
	s_mov_b32 s4, s6                                           // 0000001005C0: BE840006
	s_cbranch_vccnz 14                                         // 0000001005C4: BFA4000E <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3b00>
	s_load_b32 s4, s[0:1], 0x2cc                               // 0000001005C8: F4000100 F80002CC
	s_mov_b32 s5, -1                                           // 0000001005D0: BE8500C1
	s_waitcnt lgkmcnt(0)                                       // 0000001005D4: BF89FC07
	s_cmp_lg_u32 s4, 1                                         // 0000001005D8: BF078104
	s_mov_b32 s4, s6                                           // 0000001005DC: BE840006
	s_cbranch_scc1 184                                         // 0000001005E0: BFA200B8 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3dc4>
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 0000001005E4: 916A057E
	s_cbranch_vccnz 5                                          // 0000001005E8: BFA40005 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3b00>
	s_clause 0x1                                               // 0000001005EC: BF850001
	global_store_b32 v[10:11], v12, off                        // 0000001005F0: DC6A0000 007C0C0A
	global_store_b32 v[14:15], v13, off                        // 0000001005F8: DC6A0000 007C0D0E
	s_and_not1_b32 s5, s6, exec_lo                             // 000000100600: 91057E06
	s_and_b32 s4, s4, exec_lo                                  // 000000100604: 8B047E04
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000100608: BF870009
	s_or_b32 s6, s5, s4                                        // 00000010060C: 8C060405
	s_or_b32 exec_lo, exec_lo, s7                              // 000000100610: 8C7E077E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000100614: BF870009
	s_and_b32 s10, s6, exec_lo                                 // 000000100618: 8B0A7E06
	s_or_b32 exec_lo, exec_lo, s2                              // 00000010061C: 8C7E027E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000100620: BF870009
	s_and_b32 vcc_lo, exec_lo, s3                              // 000000100624: 8B6A037E
	s_cbranch_vccz 127                                         // 000000100628: BFA3007F <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3d28>
	v_cmp_eq_u32_e32 vcc_lo, 0, v1                             // 00000010062C: 7C940280
	v_cmp_gt_i32_e64 s2, s13, v24                              // 000000100630: D4440002 0002300D
	v_cmp_eq_u32_e64 s3, 0, v0                                 // 000000100638: D44A0003 00020080
	s_or_b32 s4, vcc_lo, s22                                   // 000000100640: 8C04166A
	s_or_b32 s3, s3, s21                                       // 000000100644: 8C031503
	s_and_b32 s2, s2, s4                                       // 000000100648: 8B020402
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 00000010064C: BF870499
	s_and_b32 s3, s2, s3                                       // 000000100650: 8B030302
	s_and_saveexec_b32 s2, s3                                  // 000000100654: BE822003
	s_cbranch_execz 114                                        // 000000100658: BFA50072 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3d24>
	s_load_b32 s3, s[0:1], 0x2c8                               // 00000010065C: F40000C0 F80002C8
	v_add_co_u32 v0, s4, s8, v5                                // 000000100664: D7000400 00020A08
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 00000010066C: BF8700A1
	v_add_co_ci_u32_e64 v1, null, s9, 0, s4                    // 000000100670: D5207C01 00110009
	v_add_co_u32 v4, s4, s8, v4                                // 000000100678: D7000404 00020808
	v_add_co_ci_u32_e64 v5, null, s9, 0, s4                    // 000000100680: D5207C05 00110009
	s_mov_b32 s4, s10                                          // 000000100688: BE84000A
	s_mov_b32 s6, exec_lo                                      // 00000010068C: BE86007E
	s_waitcnt lgkmcnt(0)                                       // 000000100690: BF89FC07
	s_bitcmp1_b32 s3, 0                                        // 000000100694: BF0D8003
	s_cselect_b32 s5, -1, 0                                    // 000000100698: 980580C1
	v_cmpx_ne_u64_e32 0, v[8:9]                                // 00000010069C: 7DBA1080
	s_xor_b32 s6, exec_lo, s6                                  // 0000001006A0: 8D06067E
	s_cbranch_execz 45                                         // 0000001006A4: BFA5002D <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3c5c>
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 0000001006A8: 916A057E
	s_cbranch_vccz 10                                          // 0000001006AC: BFA3000A <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3bd8>
	s_bfe_u32 s4, s3, 0x10008                                  // 0000001006B0: 9304FF03 00010008
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001006B8: BF870009
	s_cmp_eq_u32 s4, 0                                         // 0000001006BC: BF068004
	s_mov_b32 s4, -1                                           // 0000001006C0: BE8400C1
	s_cbranch_scc1 15                                          // 0000001006C4: BFA2000F <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3c04>
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 0000001006C8: 916A047E
	s_mov_b32 s4, s10                                          // 0000001006CC: BE84000A
	s_cbranch_vccz 16                                          // 0000001006D0: BFA30010 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3c14>
	s_branch 29                                                // 0000001006D4: BFA0001D <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3c4c>
	global_load_b64 v[8:9], v[6:7], off                        // 0000001006D8: DC560000 087C0006
	s_waitcnt vmcnt(0)                                         // 0000001006E0: BF8903F7
	v_dual_add_f32 v2, v2, v8 :: v_dual_add_f32 v3, v3, v9     // 0000001006E4: C9081102 02021303
	s_bfe_u32 s4, s3, 0x10008                                  // 0000001006EC: 9304FF03 00010008
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000001006F4: BF870009
	s_cmp_eq_u32 s4, 0                                         // 0000001006F8: BF068004
	s_mov_b32 s4, -1                                           // 0000001006FC: BE8400C1
	s_cbranch_scc0 65521                                       // 000000100700: BFA1FFF1 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3bc8>
	global_store_b64 v[6:7], v[2:3], off                       // 000000100704: DC6E0000 007C0206
	s_mov_b32 s4, s10                                          // 00000010070C: BE84000A
	s_cbranch_execnz 14                                        // 000000100710: BFA6000E <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3c4c>
	s_load_b32 s4, s[0:1], 0x2cc                               // 000000100714: F4000100 F80002CC
	s_mov_b32 s7, -1                                           // 00000010071C: BE8700C1
	s_waitcnt lgkmcnt(0)                                       // 000000100720: BF89FC07
	s_cmp_lg_u32 s4, 1                                         // 000000100724: BF078104
	s_mov_b32 s4, s10                                          // 000000100728: BE84000A
	s_cbranch_scc1 89                                          // 00000010072C: BFA20059 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3d94>
	s_and_not1_b32 vcc_lo, exec_lo, s7                         // 000000100730: 916A077E
	s_cbranch_vccnz 5                                          // 000000100734: BFA40005 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3c4c>
	s_clause 0x1                                               // 000000100738: BF850001
	global_store_b32 v[4:5], v2, off                           // 00000010073C: DC6A0000 007C0204
	global_store_b32 v[0:1], v3, off                           // 000000100744: DC6A0000 007C0300
	s_and_not1_b32 s7, s10, exec_lo                            // 00000010074C: 91077E0A
	s_and_b32 s4, s4, exec_lo                                  // 000000100750: 8B047E04
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000100754: BF870009
	s_or_b32 s4, s7, s4                                        // 000000100758: 8C040407
	s_and_not1_saveexec_b32 s6, s6                             // 00000010075C: BE863006
	s_cbranch_execz 43                                         // 000000100760: BFA5002B <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3d10>
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 000000100764: 916A057E
	s_cbranch_vccnz 8                                          // 000000100768: BFA40008 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3c8c>
	s_clause 0x1                                               // 00000010076C: BF850001
	global_load_b32 v6, v[4:5], off                            // 000000100770: DC520000 067C0004
	global_load_b32 v7, v[0:1], off                            // 000000100778: DC520000 077C0000
	s_waitcnt vmcnt(0)                                         // 000000100780: BF8903F7
	v_dual_add_f32 v2, v2, v6 :: v_dual_add_f32 v3, v3, v7     // 000000100784: C9080D02 02020F03
	s_bitcmp1_b32 s3, 8                                        // 00000010078C: BF0D8803
	s_cselect_b32 s3, -1, 0                                    // 000000100790: 980380C1
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000100794: BF870009
	s_and_b32 vcc_lo, exec_lo, s3                              // 000000100798: 8B6A037E
	s_mov_b32 s3, -1                                           // 00000010079C: BE8300C1
	s_cbranch_vccnz 6                                          // 0000001007A0: BFA40006 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3cbc>
	s_mov_b32 s3, 0                                            // 0000001007A4: BE830080
	s_clause 0x1                                               // 0000001007A8: BF850001
	global_store_b32 v[4:5], v2, off                           // 0000001007AC: DC6A0000 007C0204
	global_store_b32 v[0:1], v3, off                           // 0000001007B4: DC6A0000 007C0300
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 0000001007BC: 916A037E
	s_mov_b32 s3, s4                                           // 0000001007C0: BE830004
	s_cbranch_vccnz 14                                         // 0000001007C4: BFA4000E <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3d00>
	s_load_b32 s1, s[0:1], 0x2cc                               // 0000001007C8: F4000040 F80002CC
	s_mov_b32 s0, -1                                           // 0000001007D0: BE8000C1
	s_mov_b32 s3, s4                                           // 0000001007D4: BE830004
	s_waitcnt lgkmcnt(0)                                       // 0000001007D8: BF89FC07
	s_cmp_lg_u32 s1, 1                                         // 0000001007DC: BF078101
	s_cbranch_scc1 48                                          // 0000001007E0: BFA20030 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3da4>
	s_and_not1_b32 vcc_lo, exec_lo, s0                         // 0000001007E4: 916A007E
	s_cbranch_vccnz 5                                          // 0000001007E8: BFA40005 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3d00>
	s_clause 0x1                                               // 0000001007EC: BF850001
	global_store_b32 v[4:5], v2, off                           // 0000001007F0: DC6A0000 007C0204
	global_store_b32 v[0:1], v3, off                           // 0000001007F8: DC6A0000 007C0300
	s_and_not1_b32 s0, s4, exec_lo                             // 000000100800: 91007E04
	s_and_b32 s1, s3, exec_lo                                  // 000000100804: 8B017E03
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000100808: BF870009
	s_or_b32 s4, s0, s1                                        // 00000010080C: 8C040100
	s_or_b32 exec_lo, exec_lo, s6                              // 000000100810: 8C7E067E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 000000100814: BF8704A9
	s_and_not1_b32 s0, s10, exec_lo                            // 000000100818: 91007E0A
	s_and_b32 s1, s4, exec_lo                                  // 00000010081C: 8B017E04
	s_or_b32 s10, s0, s1                                       // 000000100820: 8C0A0100
	s_or_b32 exec_lo, exec_lo, s2                              // 000000100824: 8C7E027E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000100828: BF870009
	s_and_b32 s28, s10, exec_lo                                // 00000010082C: 8B1C7E0A
	s_or_b32 exec_lo, exec_lo, s12                             // 000000100830: 8C7E0C7E
	s_and_saveexec_b32 s0, s20                                 // 000000100834: BE802014
	s_cbranch_execnz 3                                         // 000000100838: BFA60003 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3d48>
	s_or_b32 exec_lo, exec_lo, s0                              // 00000010083C: 8C7E007E
	s_and_saveexec_b32 s0, s28                                 // 000000100840: BE80201C
	s_endpgm                                                   // 000000100844: BFB00000
	s_cbranch_execnz 5                                         // 000000100848: BFA60005 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3d60>
	s_or_b32 s28, s28, exec_lo                                 // 00000010084C: 8C1C7E1C
	s_or_b32 exec_lo, exec_lo, s0                              // 000000100850: 8C7E007E
	s_and_saveexec_b32 s0, s28                                 // 000000100854: BE80201C
	s_cbranch_execnz 65530                                     // 000000100858: BFA6FFFA <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3d44>
	s_branch 65529                                             // 00000010085C: BFA0FFF9 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3d44>
	s_trap 2                                                   // 000000100860: BF900002
	s_sendmsg_rtn_b32 s0, sendmsg(MSG_RTN_GET_DOORBELL)        // 000000100864: BE804C80
	s_mov_b32 ttmp2, m0                                        // 000000100868: BEEE007D
	s_waitcnt lgkmcnt(0)                                       // 00000010086C: BF89FC07
	s_and_b32 s0, s0, 0x3ff                                    // 000000100870: 8B00FF00 000003FF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000100878: BF870499
	s_bitset1_b32 s0, 10                                       // 00000010087C: BE80128A
	s_mov_b32 m0, s0                                           // 000000100880: BEFD0000
	s_sendmsg sendmsg(MSG_INTERRUPT)                           // 000000100884: BFB60001
	s_mov_b32 m0, ttmp2                                        // 000000100888: BEFD006E
	s_sethalt 5                                                // 00000010088C: BF820005
	s_branch 65534                                             // 000000100890: BFA0FFFE <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3d8c>
	s_cbranch_execnz 15                                        // 000000100894: BFA6000F <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3dd4>
	s_or_b32 s4, s10, exec_lo                                  // 000000100898: 8C047E0A
	s_cbranch_execz 65446                                      // 00000010089C: BFA5FFA6 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3c38>
	s_branch 65450                                             // 0000001008A0: BFA0FFAA <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3c4c>
	s_cbranch_execnz 24                                        // 0000001008A4: BFA60018 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3e08>
	s_or_b32 s3, s4, exec_lo                                   // 0000001008A8: 8C037E04
	s_cbranch_execz 65487                                      // 0000001008AC: BFA5FFCF <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3cec>
	s_branch 65491                                             // 0000001008B0: BFA0FFD3 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3d00>
	s_cbranch_execnz 33                                        // 0000001008B4: BFA60021 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3e3c>
	s_mov_b32 s6, -1                                           // 0000001008B8: BE8600C1
	s_cbranch_execz 65295                                      // 0000001008BC: BFA5FF0F <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x39fc>
	s_branch 65308                                             // 0000001008C0: BFA0FF1C <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3a34>
	s_cbranch_execnz 42                                        // 0000001008C4: BFA6002A <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3e70>
	s_or_b32 s4, s6, exec_lo                                   // 0000001008C8: 8C047E06
	s_cbranch_execz 65351                                      // 0000001008CC: BFA5FF47 <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3aec>
	s_branch 65355                                             // 0000001008D0: BFA0FF4B <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3b00>
	s_trap 2                                                   // 0000001008D4: BF900002
	s_sendmsg_rtn_b32 s0, sendmsg(MSG_RTN_GET_DOORBELL)        // 0000001008D8: BE804C80
	s_mov_b32 ttmp2, m0                                        // 0000001008DC: BEEE007D
	s_waitcnt lgkmcnt(0)                                       // 0000001008E0: BF89FC07
	s_and_b32 s0, s0, 0x3ff                                    // 0000001008E4: 8B00FF00 000003FF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 0000001008EC: BF870499
	s_bitset1_b32 s0, 10                                       // 0000001008F0: BE80128A
	s_mov_b32 m0, s0                                           // 0000001008F4: BEFD0000
	s_sendmsg sendmsg(MSG_INTERRUPT)                           // 0000001008F8: BFB60001
	s_mov_b32 m0, ttmp2                                        // 0000001008FC: BEFD006E
	s_sethalt 5                                                // 000000100900: BF820005
	s_branch 65534                                             // 000000100904: BFA0FFFE <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3e00>
	s_trap 2                                                   // 000000100908: BF900002
	s_sendmsg_rtn_b32 s0, sendmsg(MSG_RTN_GET_DOORBELL)        // 00000010090C: BE804C80
	s_mov_b32 ttmp2, m0                                        // 000000100910: BEEE007D
	s_waitcnt lgkmcnt(0)                                       // 000000100914: BF89FC07
	s_and_b32 s0, s0, 0x3ff                                    // 000000100918: 8B00FF00 000003FF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000100920: BF870499
	s_bitset1_b32 s0, 10                                       // 000000100924: BE80128A
	s_mov_b32 m0, s0                                           // 000000100928: BEFD0000
	s_sendmsg sendmsg(MSG_INTERRUPT)                           // 00000010092C: BFB60001
	s_mov_b32 m0, ttmp2                                        // 000000100930: BEFD006E
	s_sethalt 5                                                // 000000100934: BF820005
	s_branch 65534                                             // 000000100938: BFA0FFFE <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3e34>
	s_trap 2                                                   // 00000010093C: BF900002
	s_sendmsg_rtn_b32 s0, sendmsg(MSG_RTN_GET_DOORBELL)        // 000000100940: BE804C80
	s_mov_b32 ttmp2, m0                                        // 000000100944: BEEE007D
	s_waitcnt lgkmcnt(0)                                       // 000000100948: BF89FC07
	s_and_b32 s0, s0, 0x3ff                                    // 00000010094C: 8B00FF00 000003FF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000100954: BF870499
	s_bitset1_b32 s0, 10                                       // 000000100958: BE80128A
	s_mov_b32 m0, s0                                           // 00000010095C: BEFD0000
	s_sendmsg sendmsg(MSG_INTERRUPT)                           // 000000100960: BFB60001
	s_mov_b32 m0, ttmp2                                        // 000000100964: BEFD006E
	s_sethalt 5                                                // 000000100968: BF820005
	s_branch 65534                                             // 00000010096C: BFA0FFFE <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3e68>
	s_trap 2                                                   // 000000100970: BF900002
	s_sendmsg_rtn_b32 s0, sendmsg(MSG_RTN_GET_DOORBELL)        // 000000100974: BE804C80
	s_mov_b32 ttmp2, m0                                        // 000000100978: BEEE007D
	s_waitcnt lgkmcnt(0)                                       // 00000010097C: BF89FC07
	s_and_b32 s0, s0, 0x3ff                                    // 000000100980: 8B00FF00 000003FF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000100988: BF870499
	s_bitset1_b32 s0, 10                                       // 00000010098C: BE80128A
	s_mov_b32 m0, s0                                           // 000000100990: BEFD0000
	s_sendmsg sendmsg(MSG_INTERRUPT)                           // 000000100994: BFB60001
	s_mov_b32 m0, ttmp2                                        // 000000100998: BEFD006E
	s_sethalt 5                                                // 00000010099C: BF820005
	s_branch 65534                                             // 0000001009A0: BFA0FFFE <_ZN2at6native13reduce_kernelILi256ELi2ENS0_8ReduceOpIfNS0_14func_wrapper_tIfZNS0_11sum_functorIfffEclERNS_14TensorIteratorEEUlffE0_EEjfLi4ELi4EEEEEvT1_+0x3e9c>
