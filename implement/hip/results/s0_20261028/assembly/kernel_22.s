
/root/batchmatmulmaxsum/implement/hip/results/s0_20261028/code_objects/_code_object0003.o:	file format elf64-amdgpu

Disassembly of section .text:

000000000007f700 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_>:
	s_clause 0x3                                               // 00000007F700: BF850003
	s_load_b128 s[16:19], s[0:1], 0x20                         // 00000007F704: F4080400 F8000020
	s_load_b32 s2, s[0:1], 0x30                                // 00000007F70C: F4000080 F8000030
	s_load_b32 s11, s[0:1], 0x14c                              // 00000007F714: F40002C0 F800014C
	s_load_b32 s3, s[0:1], 0x18                                // 00000007F71C: F40000C0 F8000018
	v_and_b32_e32 v1, 0x3ff, v0                                // 00000007F724: 360200FF 000003FF
	v_bfe_u32 v0, v0, 10, 10                                   // 00000007F72C: D6100000 02291500
	s_mov_b32 s6, -1                                           // 00000007F734: BE8600C1
	s_waitcnt lgkmcnt(0)                                       // 00000007F738: BF89FC07
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007F73C: BF870112
	v_mul_lo_u32 v2, s19, v1                                   // 00000007F740: D72C0002 00020213
	v_mul_lo_u32 v3, s2, v0                                    // 00000007F748: D72C0003 00020002
	s_add_i32 s19, s11, -1                                     // 00000007F750: 8113C10B
	s_mul_i32 s3, s3, s14                                      // 00000007F754: 96030E03
	s_cmp_gt_u32 s19, 1                                        // 00000007F758: BF088113
	s_cselect_b32 s28, -1, 0                                   // 00000007F75C: 981C80C1
	s_cmp_lt_u32 s19, 2                                        // 00000007F760: BF0A8213
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007F764: BF870001
	v_add3_u32 v10, v3, v2, s3                                 // 00000007F768: D655000A 000E0503
	s_cbranch_scc1 145                                         // 00000007F770: BFA20091 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2b8>
	s_cmp_lg_u32 s11, 0                                        // 00000007F774: BF07800B
	s_mov_b32 s6, 0                                            // 00000007F778: BE860080
	s_cbranch_scc0 92                                          // 00000007F77C: BFA1005C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1f0>
	s_min_u32 s8, s19, 15                                      // 00000007F780: 89888F13
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007F784: BF870009
	s_add_i32 s8, s8, 1                                        // 00000007F788: 81088108
	s_cmp_eq_u32 s19, 2                                        // 00000007F78C: BF068213
	s_cbranch_scc1 89                                          // 00000007F790: BFA20059 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1f8>
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v2, v10             // 00000007F794: CA100080 0302010A
	s_and_b32 s7, s8, 28                                       // 00000007F79C: 8B079C08
	s_add_u32 s2, s0, 0x214                                    // 00000007F7A0: 8002FF00 00000214
	s_addc_u32 s3, s1, 0                                       // 00000007F7A8: 82038001
	s_mov_b32 s9, 0                                            // 00000007F7AC: BE890080
	s_mov_b64 s[4:5], s[0:1]                                   // 00000007F7B0: BE840100
	s_clause 0x1                                               // 00000007F7B4: BF850001
	s_load_b256 s[20:27], s[4:5], 0x150                        // 00000007F7B8: F40C0502 F8000150
	s_load_b128 s[36:39], s[4:5], 0x170                        // 00000007F7C0: F4080902 F8000170
	s_clause 0x2                                               // 00000007F7C8: BF850002
	s_load_b32 s10, s[2:3], null                               // 00000007F7CC: F4000281 F8000000
	s_load_b32 s12, s[2:3], 0x8                                // 00000007F7D4: F4000301 F8000008
	s_load_b32 s13, s[2:3], 0x10                               // 00000007F7DC: F4000341 F8000010
	s_add_i32 s9, s9, 4                                        // 00000007F7E4: 81098409
	s_waitcnt lgkmcnt(0)                                       // 00000007F7E8: BF89FC07
	v_mul_hi_u32 v4, s21, v2                                   // 00000007F7EC: D72D0004 00020415
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007F7F4: BF870091
	v_add_nc_u32_e32 v4, v2, v4                                // 00000007F7F8: 4A080902
	v_lshrrev_b32_e32 v4, s22, v4                              // 00000007F7FC: 32080816
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007F800: BF870001
	v_mul_hi_u32 v5, s24, v4                                   // 00000007F804: D72D0005 00020818
	v_mul_lo_u32 v8, v4, s20                                   // 00000007F80C: D72C0008 00002904
	s_load_b32 s20, s[2:3], 0x18                               // 00000007F814: F4000501 F8000018
	s_add_u32 s2, s2, 32                                       // 00000007F81C: 8002A002
	s_addc_u32 s3, s3, 0                                       // 00000007F820: 82038003
	s_add_u32 s4, s4, 48                                       // 00000007F824: 8004B004
	s_addc_u32 s5, s5, 0                                       // 00000007F828: 82058005
	s_cmp_lg_u32 s7, s9                                        // 00000007F82C: BF070907
	v_add_nc_u32_e32 v5, v4, v5                                // 00000007F830: 4A0A0B04
	v_sub_nc_u32_e32 v8, v2, v8                                // 00000007F834: 4C101102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007F838: BF870112
	v_lshrrev_b32_e32 v5, s25, v5                              // 00000007F83C: 320A0A19
	v_mul_lo_u32 v8, v8, s10                                   // 00000007F840: D72C0008 00001508
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 00000007F848: BF870122
	v_mul_hi_u32 v6, s27, v5                                   // 00000007F84C: D72D0006 00020A1B
	v_mul_lo_u32 v9, v5, s23                                   // 00000007F854: D72C0009 00002F05
	v_add_nc_u32_e32 v6, v5, v6                                // 00000007F85C: 4A0C0D05
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007F860: BF870112
	v_sub_nc_u32_e32 v4, v4, v9                                // 00000007F864: 4C081304
	v_lshrrev_b32_e32 v6, s36, v6                              // 00000007F868: 320C0C24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007F86C: BF870112
	v_mul_lo_u32 v4, v4, s12                                   // 00000007F870: D72C0004 00001904
	v_mul_hi_u32 v7, s38, v6                                   // 00000007F878: D72D0007 00020C26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007F880: BF870112
	v_add3_u32 v3, v8, v3, v4                                  // 00000007F884: D6550003 04120708
	v_add_nc_u32_e32 v7, v6, v7                                // 00000007F88C: 4A0E0F06
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 00000007F890: BF870121
	v_lshrrev_b32_e32 v2, s39, v7                              // 00000007F894: 32040E27
	v_mul_lo_u32 v7, v6, s26                                   // 00000007F898: D72C0007 00003506
	v_mul_lo_u32 v11, v2, s37                                  // 00000007F8A0: D72C000B 00004B02
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007F8A8: BF870112
	v_sub_nc_u32_e32 v5, v5, v7                                // 00000007F8AC: 4C0A0F05
	v_sub_nc_u32_e32 v6, v6, v11                               // 00000007F8B0: 4C0C1706
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 00000007F8B4: BF870122
	v_mul_lo_u32 v5, v5, s13                                   // 00000007F8B8: D72C0005 00001B05
	s_waitcnt lgkmcnt(0)                                       // 00000007F8C0: BF89FC07
	v_mul_lo_u32 v6, v6, s20                                   // 00000007F8C4: D72C0006 00002906
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007F8CC: BF870001
	v_add3_u32 v3, v5, v3, v6                                  // 00000007F8D0: D6550003 041A0705
	s_cbranch_scc1 65462                                       // 00000007F8D8: BFA2FFB6 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xb4>
	s_and_b32 s8, s8, 3                                        // 00000007F8DC: 8B088308
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007F8E0: BF870009
	s_cmp_eq_u32 s8, 0                                         // 00000007F8E4: BF068008
	s_cbranch_scc0 10                                          // 00000007F8E8: BFA1000A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x214>
	s_branch 50                                                // 00000007F8EC: BFA00032 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2b8>
	v_mov_b32_e32 v3, 0                                        // 00000007F8F0: 7E060280
	s_branch 48                                                // 00000007F8F4: BFA00030 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2b8>
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v2, v10             // 00000007F8F8: CA100080 0302010A
	s_mov_b32 s7, 0                                            // 00000007F900: BE870080
	s_and_b32 s8, s8, 3                                        // 00000007F904: 8B088308
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007F908: BF870009
	s_cmp_eq_u32 s8, 0                                         // 00000007F90C: BF068008
	s_cbranch_scc1 41                                          // 00000007F910: BFA20029 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2b8>
	s_lshl_b32 s2, s7, 3                                       // 00000007F914: 84028307
	s_mul_i32 s4, s7, 12                                       // 00000007F918: 96048C07
	s_add_u32 s2, s0, s2                                       // 00000007F91C: 80020200
	s_addc_u32 s3, s1, 0                                       // 00000007F920: 82038001
	s_add_u32 s2, s2, 0x214                                    // 00000007F924: 8002FF02 00000214
	s_addc_u32 s3, s3, 0                                       // 00000007F92C: 82038003
	s_add_u32 s4, s0, s4                                       // 00000007F930: 80040400
	s_addc_u32 s5, s1, 0                                       // 00000007F934: 82058001
	s_nop 0                                                    // 00000007F938: BF800000
	s_nop 0                                                    // 00000007F93C: BF800000
	s_clause 0x1                                               // 00000007F940: BF850001
	s_load_b64 s[12:13], s[4:5], 0x150                         // 00000007F944: F4040302 F8000150
	s_load_b32 s7, s[4:5], 0x158                               // 00000007F94C: F40001C2 F8000158
	s_load_b32 s9, s[2:3], null                                // 00000007F954: F4000241 F8000000
	s_add_u32 s2, s2, 8                                        // 00000007F95C: 80028802
	s_addc_u32 s3, s3, 0                                       // 00000007F960: 82038003
	s_add_u32 s4, s4, 12                                       // 00000007F964: 80048C04
	s_addc_u32 s5, s5, 0                                       // 00000007F968: 82058005
	s_add_i32 s8, s8, -1                                       // 00000007F96C: 8108C108
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 00000007F970: BF8700B9
	s_cmp_lg_u32 s8, 0                                         // 00000007F974: BF078008
	s_waitcnt lgkmcnt(0)                                       // 00000007F978: BF89FC07
	v_mul_hi_u32 v4, s13, v2                                   // 00000007F97C: D72D0004 0002040D
	v_add_nc_u32_e32 v4, v2, v4                                // 00000007F984: 4A080902
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007F988: BF870091
	v_lshrrev_b32_e32 v6, s7, v4                               // 00000007F98C: 320C0807
	v_mul_lo_u32 v4, v6, s12                                   // 00000007F990: D72C0004 00001906
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007F998: BF870091
	v_sub_nc_u32_e32 v2, v2, v4                                // 00000007F99C: 4C040902
	v_mad_u64_u32 v[4:5], null, v2, s9, v[3:4]                 // 00000007F9A0: D6FE7C04 040C1302
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007F9A8: BF870001
	v_dual_mov_b32 v2, v6 :: v_dual_mov_b32 v3, v4             // 00000007F9AC: CA100106 02020104
	s_cbranch_scc1 65506                                       // 00000007F9B4: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x240>
	s_and_not1_b32 vcc_lo, exec_lo, s6                         // 00000007F9B8: 916A067E
	s_cbranch_vccnz 39                                         // 00000007F9BC: BFA40027 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x35c>
	s_clause 0x1                                               // 00000007F9C0: BF850001
	s_load_b128 s[4:7], s[0:1], 0x150                          // 00000007F9C4: F4080100 F8000150
	s_load_b32 s2, s[0:1], 0x214                               // 00000007F9CC: F4000080 F8000214
	s_cmp_lt_u32 s11, 2                                        // 00000007F9D4: BF0A820B
	s_waitcnt lgkmcnt(0)                                       // 00000007F9D8: BF89FC07
	v_mul_hi_u32 v2, s5, v10                                   // 00000007F9DC: D72D0002 00021405
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007F9E4: BF870091
	v_add_nc_u32_e32 v2, v10, v2                               // 00000007F9E8: 4A04050A
	v_lshrrev_b32_e32 v2, s6, v2                               // 00000007F9EC: 32040406
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007F9F0: BF870091
	v_mul_lo_u32 v3, v2, s4                                    // 00000007F9F4: D72C0003 00000902
	v_sub_nc_u32_e32 v3, v10, v3                               // 00000007F9FC: 4C06070A
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007FA00: BF870001
	v_mul_lo_u32 v3, v3, s2                                    // 00000007FA04: D72C0003 00000503
	s_cbranch_scc1 19                                          // 00000007FA0C: BFA20013 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x35c>
	s_clause 0x1                                               // 00000007FA10: BF850001
	s_load_b128 s[4:7], s[0:1], 0x15c                          // 00000007FA14: F4080100 F800015C
	s_load_b32 s2, s[0:1], 0x21c                               // 00000007FA1C: F4000080 F800021C
	s_waitcnt lgkmcnt(0)                                       // 00000007FA24: BF89FC07
	v_mul_hi_u32 v4, s5, v2                                    // 00000007FA28: D72D0004 00020405
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007FA30: BF870091
	v_add_nc_u32_e32 v4, v2, v4                                // 00000007FA34: 4A080902
	v_lshrrev_b32_e32 v4, s6, v4                               // 00000007FA38: 32080806
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007FA3C: BF870091
	v_mul_lo_u32 v4, v4, s4                                    // 00000007FA40: D72C0004 00000904
	v_sub_nc_u32_e32 v2, v2, v4                                // 00000007FA48: 4C040902
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007FA4C: BF870091
	v_mad_u64_u32 v[4:5], null, v2, s2, v[3:4]                 // 00000007FA50: D6FE7C04 040C0502
	v_mov_b32_e32 v3, v4                                       // 00000007FA58: 7E060304
	s_load_b64 s[12:13], s[0:1], 0xc                           // 00000007FA5C: F4040300 F800000C
	v_mul_lo_u32 v4, s16, v1                                   // 00000007FA64: D72C0004 00020210
	v_mul_lo_u32 v5, s17, v0                                   // 00000007FA6C: D72C0005 00020011
	s_mul_i32 s35, s18, s15                                    // 00000007FA74: 96230F12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007FA78: BF870091
	v_add_nc_u32_e32 v2, v5, v4                                // 00000007FA7C: 4A040905
	v_add_nc_u32_e32 v2, s35, v2                               // 00000007FA80: 4A040423
	s_waitcnt lgkmcnt(0)                                       // 00000007FA84: BF89FC07
	v_cmp_gt_u32_e32 vcc_lo, s13, v10                          // 00000007FA88: 7C98140D
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 00000007FA8C: BF8704A2
	v_cmp_gt_u32_e64 s2, s12, v2                               // 00000007FA90: D44C0002 0002040C
	s_and_b32 s2, vcc_lo, s2                                   // 00000007FA98: 8B02026A
	s_and_saveexec_b32 s29, s2                                 // 00000007FA9C: BE9D2002
	s_cbranch_execz 2304                                       // 00000007FAA0: BFA50900 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x27a4>
	s_clause 0x1                                               // 00000007FAA4: BF850001
	s_load_b64 s[2:3], s[0:1], 0x290                           // 00000007FAA8: F4040080 F8000290
	s_load_b32 s4, s[0:1], 0x40                                // 00000007FAB0: F4000100 F8000040
	s_waitcnt lgkmcnt(0)                                       // 00000007FAB8: BF89FC07
	v_add_co_u32 v7, s2, s2, v3                                // 00000007FABC: D7000207 00020602
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007FAC4: BF870001
	v_add_co_ci_u32_e64 v8, null, s3, 0, s2                    // 00000007FAC8: D5207C08 00090003
	s_bitcmp0_b32 s4, 0                                        // 00000007FAD0: BF0C8004
	s_cbranch_scc0 793                                         // 00000007FAD4: BFA10319 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x103c>
	s_clause 0x3                                               // 00000007FAD8: BF850003
	s_load_b32 s36, s[0:1], 0x10c                              // 00000007FADC: F4000900 F800010C
	s_load_b32 s37, s[0:1], 0x48                               // 00000007FAE4: F4000940 F8000048
	s_load_b32 s30, s[0:1], 0x14                               // 00000007FAEC: F4000780 F8000014
	s_load_b32 s33, s[0:1], 0x4                                // 00000007FAF4: F4000840 F8000004
	s_add_u32 s24, s0, 0x10c                                   // 00000007FAFC: 8018FF00 0000010C
	s_addc_u32 s25, s1, 0                                      // 00000007FB04: 82198001
	s_waitcnt lgkmcnt(0)                                       // 00000007FB08: BF89FC07
	s_lshr_b32 s34, s36, 2                                     // 00000007FB0C: 85228224
	s_cmp_lg_u32 s37, 1                                        // 00000007FB10: BF078125
	s_mul_i32 s31, s30, 3                                      // 00000007FB14: 961F831E
	s_cselect_b32 s3, -1, 0                                    // 00000007FB18: 980380C1
	s_cmp_eq_u32 s37, 1                                        // 00000007FB1C: BF068125
	v_add_nc_u32_e32 v6, s31, v2                               // 00000007FB20: 4A0C041F
	s_cselect_b32 s2, -1, 0                                    // 00000007FB24: 980280C1
	s_cmp_eq_u32 s34, 1                                        // 00000007FB28: BF068122
	s_cselect_b32 s4, -1, 0                                    // 00000007FB2C: 980480C1
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007FB30: BF870009
	s_and_b32 s4, s2, s4                                       // 00000007FB34: 8B040402
	v_cmp_gt_u32_e64 s2, s12, v6                               // 00000007FB38: D44C0002 00020C0C
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 00000007FB40: 916A047E
	s_cbranch_vccz 766                                         // 00000007FB44: BFA302FE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1040>
	s_and_b32 vcc_lo, exec_lo, s3                              // 00000007FB48: 8B6A037E
	s_cbranch_vccz 765                                         // 00000007FB4C: BFA302FD <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1044>
	v_dual_mov_b32 v11, s33 :: v_dual_mov_b32 v12, s33         // 00000007FB50: CA100021 0B0C0021
	v_mov_b32_e32 v19, v2                                      // 00000007FB58: 7E260302
	v_mov_b32_e32 v13, s33                                     // 00000007FB5C: 7E1A0221
	v_mov_b32_e32 v9, s33                                      // 00000007FB60: 7E120221
	s_and_saveexec_b32 s38, s2                                 // 00000007FB64: BEA62002
	s_cbranch_execz 761                                        // 00000007FB68: BFA502F9 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1050>
	s_clause 0x2                                               // 00000007FB6C: BF850002
	s_load_b128 s[20:23], s[0:1], 0x4c                         // 00000007FB70: F4080500 F800004C
	s_load_b64 s[26:27], s[0:1], 0x5c                          // 00000007FB78: F4040680 F800005C
	s_load_b32 s39, s[0:1], 0x110                              // 00000007FB80: F40009C0 F8000110
	v_sub_co_u32 v3, s3, s37, 1                                // 00000007FB88: D7010303 00010225
	s_xor_b32 s40, s3, -1                                      // 00000007FB90: 8D28C103
	v_dual_mov_b32 v9, s33 :: v_dual_mov_b32 v12, s33          // 00000007FB94: CA100021 090C0021
	v_readfirstlane_b32 s4, v3                                 // 00000007FB9C: 7E080503
	v_cndmask_b32_e64 v16, 0, 1, s40                           // 00000007FBA0: D5010010 00A10280
	v_cmp_ne_u32_e64 s3, 2, v3                                 // 00000007FBA8: D44D0003 00020682
	v_mov_b32_e32 v13, s33                                     // 00000007FBB0: 7E1A0221
	v_mov_b32_e32 v11, s33                                     // 00000007FBB4: 7E160221
	s_min_u32 s4, s4, 15                                       // 00000007FBB8: 89848F04
	v_mov_b32_e32 v19, v2                                      // 00000007FBBC: 7E260302
	s_add_i32 s4, s4, 1                                        // 00000007FBC0: 81048104
	s_mov_b32 s44, 0                                           // 00000007FBC4: BEAC0080
	s_and_b32 s41, s4, 3                                       // 00000007FBC8: 8B298304
	s_and_b32 s42, s4, 28                                      // 00000007FBCC: 8B2A9C04
	v_cmp_lt_u32_e64 s4, 1, v3                                 // 00000007FBD0: D4490004 00020681
	s_cmp_lg_u32 s41, 0                                        // 00000007FBD8: BF078029
	s_cselect_b32 s43, -1, 0                                   // 00000007FBDC: 982B80C1
	s_branch 44                                                // 00000007FBE0: BFA0002C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x594>
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007FBE4: BF870001
	v_and_b32_e32 v3, -4, v3                                   // 00000007FBE8: 360606C4
	s_waitcnt vmcnt(2)                                         // 00000007FBEC: BF890BF7
	v_cmp_gt_f32_e64 s5, v11, v18                              // 00000007FBF0: D4140005 0002250B
	v_add_nc_u32_e32 v19, s30, v19                             // 00000007FBF8: 4A26261E
	v_cmp_u_f32_e64 s6, v13, v13                               // 00000007FBFC: D4180006 00021B0D
	s_waitcnt vmcnt(1)                                         // 00000007FC04: BF8907F7
	v_cmp_gt_f32_e64 s7, v13, v14                              // 00000007FC08: D4140007 00021D0D
	v_add_co_u32 v20, vcc_lo, v7, v3                           // 00000007FC10: D7006A14 00020707
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007FC18: BF870001
	v_add_co_ci_u32_e64 v21, null, 0, v8, vcc_lo               // 00000007FC1C: D5207C15 01AA1080
	v_cmp_u_f32_e32 vcc_lo, v11, v11                           // 00000007FC24: 7C30170B
	v_cmp_u_f32_e64 s8, v12, v12                               // 00000007FC28: D4180008 0002190C
	s_waitcnt vmcnt(0)                                         // 00000007FC30: BF8903F7
	v_cmp_gt_f32_e64 s9, v12, v15                              // 00000007FC34: D4140009 00021F0C
	global_load_b32 v17, v[20:21], off                         // 00000007FC3C: DC520000 117C0014
	v_cmp_u_f32_e64 s10, v9, v9                                // 00000007FC44: D418000A 00021309
	s_or_b32 vcc_lo, vcc_lo, s5                                // 00000007FC4C: 8C6A056A
	v_add_nc_u32_e32 v3, s31, v19                              // 00000007FC50: 4A06261F
	v_cndmask_b32_e32 v11, v18, v11, vcc_lo                    // 00000007FC54: 02161712
	s_or_b32 s5, s6, s7                                        // 00000007FC58: 8C050706
	s_or_b32 s6, s8, s9                                        // 00000007FC5C: 8C060908
	v_cndmask_b32_e64 v13, v14, v13, s5                        // 00000007FC60: D501000D 00161B0E
	v_cmp_le_u32_e64 s5, s12, v3                               // 00000007FC68: D44B0005 0002060C
	v_cndmask_b32_e64 v12, v15, v12, s6                        // 00000007FC70: D501000C 001A190F
	s_waitcnt vmcnt(0)                                         // 00000007FC78: BF8903F7
	v_cmp_gt_f32_e32 vcc_lo, v9, v17                           // 00000007FC7C: 7C282309
	s_or_b32 vcc_lo, s10, vcc_lo                               // 00000007FC80: 8C6A6A0A
	s_or_b32 s44, s5, s44                                      // 00000007FC84: 8C2C2C05
	v_cndmask_b32_e32 v9, v17, v9, vcc_lo                      // 00000007FC88: 02121311
	s_and_not1_b32 exec_lo, exec_lo, s44                       // 00000007FC8C: 917E2C7E
	s_cbranch_execz 686                                        // 00000007FC90: BFA502AE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x104c>
	v_cmp_ne_u32_e64 s5, 1, v16                                // 00000007FC94: D44D0005 00022081
	s_and_b32 vcc_lo, exec_lo, s4                              // 00000007FC9C: 8B6A047E
	s_mov_b32 s6, -1                                           // 00000007FCA0: BE8600C1
	s_cbranch_vccz 117                                         // 00000007FCA4: BFA30075 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x77c>
	v_mov_b32_e32 v3, 0                                        // 00000007FCA8: 7E060280
	s_and_b32 vcc_lo, exec_lo, s5                              // 00000007FCAC: 8B6A057E
	s_cbranch_vccnz 113                                        // 00000007FCB0: BFA40071 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x778>
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v14, v19            // 00000007FCB4: CA100080 030E0113
	s_mov_b32 s5, 0                                            // 00000007FCBC: BE850080
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 00000007FCC0: 916A037E
	s_cbranch_vccnz 69                                         // 00000007FCC4: BFA40045 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x6dc>
	s_mov_b64 s[6:7], s[0:1]                                   // 00000007FCC8: BE860100
	s_mov_b64 s[8:9], s[24:25]                                 // 00000007FCCC: BE880118
	s_clause 0x1                                               // 00000007FCD0: BF850001
	s_load_b256 s[48:55], s[6:7], 0x4c                         // 00000007FCD4: F40C0C03 F800004C
	s_load_b128 s[56:59], s[6:7], 0x6c                         // 00000007FCDC: F4080E03 F800006C
	s_load_b128 s[60:63], s[8:9], null                         // 00000007FCE4: F4080F04 F8000000
	s_add_i32 s5, s5, 4                                        // 00000007FCEC: 81058405
	s_add_u32 s8, s8, 16                                       // 00000007FCF0: 80089008
	s_addc_u32 s9, s9, 0                                       // 00000007FCF4: 82098009
	s_add_u32 s6, s6, 48                                       // 00000007FCF8: 8006B006
	s_addc_u32 s7, s7, 0                                       // 00000007FCFC: 82078007
	s_cmp_lg_u32 s42, s5                                       // 00000007FD00: BF07052A
	s_waitcnt lgkmcnt(0)                                       // 00000007FD04: BF89FC07
	v_mul_hi_u32 v15, s49, v14                                 // 00000007FD08: D72D000F 00021C31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007FD10: BF870091
	v_add_nc_u32_e32 v15, v14, v15                             // 00000007FD14: 4A1E1F0E
	v_lshrrev_b32_e32 v15, s50, v15                            // 00000007FD18: 321E1E32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 00000007FD1C: BF870121
	v_mul_hi_u32 v17, s52, v15                                 // 00000007FD20: D72D0011 00021E34
	v_mul_lo_u32 v21, v15, s48                                 // 00000007FD28: D72C0015 0000610F
	v_add_nc_u32_e32 v17, v15, v17                             // 00000007FD30: 4A22230F
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007FD34: BF870112
	v_sub_nc_u32_e32 v21, v14, v21                             // 00000007FD38: 4C2A2B0E
	v_lshrrev_b32_e32 v17, s53, v17                            // 00000007FD3C: 32222235
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007FD40: BF870112
	v_mul_lo_u32 v21, v21, s60                                 // 00000007FD44: D72C0015 00007915
	v_mul_hi_u32 v18, s55, v17                                 // 00000007FD4C: D72D0012 00022237
	v_mul_lo_u32 v22, v17, s51                                 // 00000007FD54: D72C0016 00006711
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007FD5C: BF870112
	v_add_nc_u32_e32 v18, v17, v18                             // 00000007FD60: 4A242511
	v_sub_nc_u32_e32 v15, v15, v22                             // 00000007FD64: 4C1E2D0F
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007FD68: BF870112
	v_lshrrev_b32_e32 v18, s56, v18                            // 00000007FD6C: 32242438
	v_mul_lo_u32 v15, v15, s61                                 // 00000007FD70: D72C000F 00007B0F
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007FD78: BF870112
	v_mul_hi_u32 v20, s58, v18                                 // 00000007FD7C: D72D0014 0002243A
	v_add3_u32 v3, v21, v3, v15                                // 00000007FD84: D6550003 043E0715
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007FD8C: BF870092
	v_add_nc_u32_e32 v20, v18, v20                             // 00000007FD90: 4A282912
	v_lshrrev_b32_e32 v14, s59, v20                            // 00000007FD94: 321C283B
	v_mul_lo_u32 v20, v18, s54                                 // 00000007FD98: D72C0014 00006D12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007FDA0: BF870112
	v_mul_lo_u32 v23, v14, s57                                 // 00000007FDA4: D72C0017 0000730E
	v_sub_nc_u32_e32 v17, v17, v20                             // 00000007FDAC: 4C222911
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007FDB0: BF870112
	v_sub_nc_u32_e32 v18, v18, v23                             // 00000007FDB4: 4C242F12
	v_mul_lo_u32 v17, v17, s62                                 // 00000007FDB8: D72C0011 00007D11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007FDC0: BF870092
	v_mul_lo_u32 v18, v18, s63                                 // 00000007FDC4: D72C0012 00007F12
	v_add3_u32 v3, v17, v3, v18                                // 00000007FDCC: D6550003 044A0711
	s_cbranch_scc1 65470                                       // 00000007FDD4: BFA2FFBE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5d0>
	s_mov_b32 s5, s42                                          // 00000007FDD8: BE85002A
	s_and_not1_b32 vcc_lo, exec_lo, s43                        // 00000007FDDC: 916A2B7E
	s_cbranch_vccnz 37                                         // 00000007FDE0: BFA40025 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x778>
	s_lshl_b32 s6, s5, 2                                       // 00000007FDE4: 84068205
	s_mul_i32 s5, s5, 12                                       // 00000007FDE8: 96058C05
	s_add_u32 s6, s24, s6                                      // 00000007FDEC: 80060618
	s_addc_u32 s7, s25, 0                                      // 00000007FDF0: 82078019
	s_add_u32 s8, s0, s5                                       // 00000007FDF4: 80080500
	s_addc_u32 s9, s1, 0                                       // 00000007FDF8: 82098001
	s_mov_b32 s5, s41                                          // 00000007FDFC: BE850029
	s_clause 0x1                                               // 00000007FE00: BF850001
	s_load_b64 s[46:47], s[8:9], 0x4c                          // 00000007FE04: F4040B84 F800004C
	s_load_b32 s10, s[8:9], 0x54                               // 00000007FE0C: F4000284 F8000054
	s_load_b32 s45, s[6:7], null                               // 00000007FE14: F4000B43 F8000000
	s_add_u32 s6, s6, 4                                        // 00000007FE1C: 80068406
	s_addc_u32 s7, s7, 0                                       // 00000007FE20: 82078007
	s_add_u32 s8, s8, 12                                       // 00000007FE24: 80088C08
	s_addc_u32 s9, s9, 0                                       // 00000007FE28: 82098009
	s_add_i32 s5, s5, -1                                       // 00000007FE2C: 8105C105
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 00000007FE30: BF8700B9
	s_cmp_lg_u32 s5, 0                                         // 00000007FE34: BF078005
	s_waitcnt lgkmcnt(0)                                       // 00000007FE38: BF89FC07
	v_mul_hi_u32 v15, s47, v14                                 // 00000007FE3C: D72D000F 00021C2F
	v_add_nc_u32_e32 v15, v14, v15                             // 00000007FE44: 4A1E1F0E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007FE48: BF870091
	v_lshrrev_b32_e32 v15, s10, v15                            // 00000007FE4C: 321E1E0A
	v_mul_lo_u32 v17, v15, s46                                 // 00000007FE50: D72C0011 00005D0F
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007FE58: BF870091
	v_sub_nc_u32_e32 v14, v14, v17                             // 00000007FE5C: 4C1C230E
	v_mad_u64_u32 v[17:18], null, v14, s45, v[3:4]             // 00000007FE60: D6FE7C11 040C5B0E
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007FE68: BF870001
	v_dual_mov_b32 v14, v15 :: v_dual_mov_b32 v3, v17          // 00000007FE6C: CA10010F 0E020111
	s_cbranch_scc1 65506                                       // 00000007FE74: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x700>
	s_mov_b32 s6, 0                                            // 00000007FE78: BE860080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007FE7C: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s6                         // 00000007FE80: 916A067E
	s_cbranch_vccnz 28                                         // 00000007FE84: BFA4001C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x7f8>
	s_waitcnt lgkmcnt(0)                                       // 00000007FE88: BF89FC07
	v_mul_hi_u32 v3, v19, s21                                  // 00000007FE8C: D72D0003 00002B13
	s_and_not1_b32 vcc_lo, exec_lo, s40                        // 00000007FE94: 916A287E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007FE98: BF870091
	v_add_nc_u32_e32 v3, v19, v3                               // 00000007FE9C: 4A060713
	v_lshrrev_b32_e32 v14, s22, v3                             // 00000007FEA0: 321C0616
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007FEA4: BF870091
	v_mul_lo_u32 v3, v14, s20                                  // 00000007FEA8: D72C0003 0000290E
	v_sub_nc_u32_e32 v3, v19, v3                               // 00000007FEB0: 4C060713
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007FEB4: BF870001
	v_mul_lo_u32 v3, v3, s36                                   // 00000007FEB8: D72C0003 00004903
	s_cbranch_vccnz 13                                         // 00000007FEC0: BFA4000D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x7f8>
	v_mul_hi_u32 v15, v14, s26                                 // 00000007FEC4: D72D000F 0000350E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007FECC: BF870091
	v_add_nc_u32_e32 v15, v14, v15                             // 00000007FED0: 4A1E1F0E
	v_lshrrev_b32_e32 v15, s27, v15                            // 00000007FED4: 321E1E1B
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007FED8: BF870091
	v_mul_lo_u32 v15, v15, s23                                 // 00000007FEDC: D72C000F 00002F0F
	v_sub_nc_u32_e32 v17, v14, v15                             // 00000007FEE4: 4C221F0E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007FEE8: BF870091
	v_mad_u64_u32 v[14:15], null, v17, s39, v[3:4]             // 00000007FEEC: D6FE7C0E 040C4F11
	v_mov_b32_e32 v3, v14                                      // 00000007FEF4: 7E06030E
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 00000007FEF8: BF8700A1
	v_and_b32_e32 v3, -4, v3                                   // 00000007FEFC: 360606C4
	s_mov_b32 s5, -1                                           // 00000007FF00: BE8500C1
	v_add_co_u32 v14, vcc_lo, v7, v3                           // 00000007FF04: D7006A0E 00020707
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007FF0C: BF870001
	v_add_co_ci_u32_e64 v15, null, 0, v8, vcc_lo               // 00000007FF10: D5207C0F 01AA1080
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 00000007FF18: 916A047E
	global_load_b32 v18, v[14:15], off                         // 00000007FF1C: DC520000 127C000E
	v_add_nc_u32_e32 v15, s30, v19                             // 00000007FF24: 4A1E261E
	s_cbranch_vccnz 132                                        // 00000007FF28: BFA40084 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xa3c>
	v_mov_b32_e32 v3, 0                                        // 00000007FF2C: 7E060280
	s_and_not1_b32 vcc_lo, exec_lo, s40                        // 00000007FF30: 916A287E
	s_cbranch_vccnz 128                                        // 00000007FF34: BFA40080 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xa38>
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v14, v15            // 00000007FF38: CA100080 030E010F
	s_mov_b32 s5, 0                                            // 00000007FF40: BE850080
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 00000007FF44: 916A037E
	s_cbranch_vccnz 69                                         // 00000007FF48: BFA40045 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x960>
	s_mov_b64 s[6:7], s[0:1]                                   // 00000007FF4C: BE860100
	s_mov_b64 s[8:9], s[24:25]                                 // 00000007FF50: BE880118
	s_clause 0x1                                               // 00000007FF54: BF850001
	s_load_b256 s[48:55], s[6:7], 0x4c                         // 00000007FF58: F40C0C03 F800004C
	s_load_b128 s[56:59], s[6:7], 0x6c                         // 00000007FF60: F4080E03 F800006C
	s_load_b128 s[60:63], s[8:9], null                         // 00000007FF68: F4080F04 F8000000
	s_add_i32 s5, s5, 4                                        // 00000007FF70: 81058405
	s_add_u32 s8, s8, 16                                       // 00000007FF74: 80089008
	s_addc_u32 s9, s9, 0                                       // 00000007FF78: 82098009
	s_add_u32 s6, s6, 48                                       // 00000007FF7C: 8006B006
	s_addc_u32 s7, s7, 0                                       // 00000007FF80: 82078007
	s_cmp_eq_u32 s42, s5                                       // 00000007FF84: BF06052A
	s_waitcnt lgkmcnt(0)                                       // 00000007FF88: BF89FC07
	v_mul_hi_u32 v17, s49, v14                                 // 00000007FF8C: D72D0011 00021C31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007FF94: BF870091
	v_add_nc_u32_e32 v17, v14, v17                             // 00000007FF98: 4A22230E
	v_lshrrev_b32_e32 v17, s50, v17                            // 00000007FF9C: 32222232
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 00000007FFA0: BF870121
	v_mul_hi_u32 v19, s52, v17                                 // 00000007FFA4: D72D0013 00022234
	v_mul_lo_u32 v22, v17, s48                                 // 00000007FFAC: D72C0016 00006111
	v_add_nc_u32_e32 v19, v17, v19                             // 00000007FFB4: 4A262711
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007FFB8: BF870112
	v_sub_nc_u32_e32 v22, v14, v22                             // 00000007FFBC: 4C2C2D0E
	v_lshrrev_b32_e32 v19, s53, v19                            // 00000007FFC0: 32262635
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007FFC4: BF870112
	v_mul_lo_u32 v22, v22, s60                                 // 00000007FFC8: D72C0016 00007916
	v_mul_hi_u32 v20, s55, v19                                 // 00000007FFD0: D72D0014 00022637
	v_mul_lo_u32 v23, v19, s51                                 // 00000007FFD8: D72C0017 00006713
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007FFE0: BF870112
	v_add_nc_u32_e32 v20, v19, v20                             // 00000007FFE4: 4A282913
	v_sub_nc_u32_e32 v17, v17, v23                             // 00000007FFE8: 4C222F11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007FFEC: BF870112
	v_lshrrev_b32_e32 v20, s56, v20                            // 00000007FFF0: 32282838
	v_mul_lo_u32 v17, v17, s61                                 // 00000007FFF4: D72C0011 00007B11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007FFFC: BF870112
	v_mul_hi_u32 v21, s58, v20                                 // 000000080000: D72D0015 0002283A
	v_add3_u32 v3, v22, v3, v17                                // 000000080008: D6550003 04460716
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080010: BF870092
	v_add_nc_u32_e32 v21, v20, v21                             // 000000080014: 4A2A2B14
	v_lshrrev_b32_e32 v14, s59, v21                            // 000000080018: 321C2A3B
	v_mul_lo_u32 v21, v20, s54                                 // 00000008001C: D72C0015 00006D14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080024: BF870112
	v_mul_lo_u32 v24, v14, s57                                 // 000000080028: D72C0018 0000730E
	v_sub_nc_u32_e32 v19, v19, v21                             // 000000080030: 4C262B13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080034: BF870112
	v_sub_nc_u32_e32 v20, v20, v24                             // 000000080038: 4C283114
	v_mul_lo_u32 v19, v19, s62                                 // 00000008003C: D72C0013 00007D13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080044: BF870092
	v_mul_lo_u32 v20, v20, s63                                 // 000000080048: D72C0014 00007F14
	v_add3_u32 v3, v19, v3, v20                                // 000000080050: D6550003 04520713
	s_cbranch_scc0 65470                                       // 000000080058: BFA1FFBE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x854>
	s_mov_b32 s5, s42                                          // 00000008005C: BE85002A
	s_and_not1_b32 vcc_lo, exec_lo, s43                        // 000000080060: 916A2B7E
	s_cbranch_vccnz 52                                         // 000000080064: BFA40034 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xa38>
	s_lshl_b32 s6, s5, 2                                       // 000000080068: 84068205
	s_mul_i32 s5, s5, 12                                       // 00000008006C: 96058C05
	s_add_u32 s6, s24, s6                                      // 000000080070: 80060618
	s_addc_u32 s7, s25, 0                                      // 000000080074: 82078019
	s_add_u32 s8, s0, s5                                       // 000000080078: 80080500
	s_addc_u32 s9, s1, 0                                       // 00000008007C: 82098001
	s_mov_b32 s5, s41                                          // 000000080080: BE850029
	s_nop 0                                                    // 000000080084: BF800000
	s_nop 0                                                    // 000000080088: BF800000
	s_nop 0                                                    // 00000008008C: BF800000
	s_nop 0                                                    // 000000080090: BF800000
	s_nop 0                                                    // 000000080094: BF800000
	s_nop 0                                                    // 000000080098: BF800000
	s_nop 0                                                    // 00000008009C: BF800000
	s_nop 0                                                    // 0000000800A0: BF800000
	s_nop 0                                                    // 0000000800A4: BF800000
	s_nop 0                                                    // 0000000800A8: BF800000
	s_nop 0                                                    // 0000000800AC: BF800000
	s_nop 0                                                    // 0000000800B0: BF800000
	s_nop 0                                                    // 0000000800B4: BF800000
	s_nop 0                                                    // 0000000800B8: BF800000
	s_nop 0                                                    // 0000000800BC: BF800000
	s_clause 0x1                                               // 0000000800C0: BF850001
	s_load_b64 s[46:47], s[8:9], 0x4c                          // 0000000800C4: F4040B84 F800004C
	s_load_b32 s10, s[8:9], 0x54                               // 0000000800CC: F4000284 F8000054
	s_load_b32 s45, s[6:7], null                               // 0000000800D4: F4000B43 F8000000
	s_add_u32 s6, s6, 4                                        // 0000000800DC: 80068406
	s_addc_u32 s7, s7, 0                                       // 0000000800E0: 82078007
	s_add_u32 s8, s8, 12                                       // 0000000800E4: 80088C08
	s_addc_u32 s9, s9, 0                                       // 0000000800E8: 82098009
	s_add_i32 s5, s5, -1                                       // 0000000800EC: 8105C105
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 0000000800F0: BF8700B9
	s_cmp_lg_u32 s5, 0                                         // 0000000800F4: BF078005
	s_waitcnt lgkmcnt(0)                                       // 0000000800F8: BF89FC07
	v_mul_hi_u32 v17, s47, v14                                 // 0000000800FC: D72D0011 00021C2F
	v_add_nc_u32_e32 v17, v14, v17                             // 000000080104: 4A22230E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080108: BF870091
	v_lshrrev_b32_e32 v17, s10, v17                            // 00000008010C: 3222220A
	v_mul_lo_u32 v19, v17, s46                                 // 000000080110: D72C0013 00005D11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080118: BF870091
	v_sub_nc_u32_e32 v14, v14, v19                             // 00000008011C: 4C1C270E
	v_mad_u64_u32 v[19:20], null, v14, s45, v[3:4]             // 000000080120: D6FE7C13 040C5B0E
	s_delay_alu instid0(VALU_DEP_1)                            // 000000080128: BF870001
	v_dual_mov_b32 v14, v17 :: v_dual_mov_b32 v3, v19          // 00000008012C: CA100111 0E020113
	s_cbranch_scc1 65506                                       // 000000080134: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x9c0>
	s_mov_b32 s5, 0                                            // 000000080138: BE850080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000008013C: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 000000080140: 916A057E
	s_cbranch_vccnz 28                                         // 000000080144: BFA4001C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xab8>
	s_waitcnt lgkmcnt(0)                                       // 000000080148: BF89FC07
	v_mul_hi_u32 v3, v15, s21                                  // 00000008014C: D72D0003 00002B0F
	s_and_not1_b32 vcc_lo, exec_lo, s40                        // 000000080154: 916A287E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080158: BF870091
	v_add_nc_u32_e32 v3, v15, v3                               // 00000008015C: 4A06070F
	v_lshrrev_b32_e32 v14, s22, v3                             // 000000080160: 321C0616
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080164: BF870091
	v_mul_lo_u32 v3, v14, s20                                  // 000000080168: D72C0003 0000290E
	v_sub_nc_u32_e32 v3, v15, v3                               // 000000080170: 4C06070F
	s_delay_alu instid0(VALU_DEP_1)                            // 000000080174: BF870001
	v_mul_lo_u32 v3, v3, s36                                   // 000000080178: D72C0003 00004903
	s_cbranch_vccnz 13                                         // 000000080180: BFA4000D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xab8>
	v_mul_hi_u32 v17, v14, s26                                 // 000000080184: D72D0011 0000350E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000008018C: BF870091
	v_add_nc_u32_e32 v17, v14, v17                             // 000000080190: 4A22230E
	v_lshrrev_b32_e32 v17, s27, v17                            // 000000080194: 3222221B
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080198: BF870091
	v_mul_lo_u32 v17, v17, s23                                 // 00000008019C: D72C0011 00002F11
	v_sub_nc_u32_e32 v14, v14, v17                             // 0000000801A4: 4C1C230E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000801A8: BF870091
	v_mad_u64_u32 v[19:20], null, v14, s39, v[3:4]             // 0000000801AC: D6FE7C13 040C4F0E
	v_mov_b32_e32 v3, v19                                      // 0000000801B4: 7E060313
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 0000000801B8: BF870131
	v_and_b32_e32 v3, -4, v3                                   // 0000000801BC: 360606C4
	v_add_nc_u32_e32 v17, s30, v15                             // 0000000801C0: 4A221E1E
	s_mov_b32 s5, -1                                           // 0000000801C4: BE8500C1
	v_add_co_u32 v19, vcc_lo, v7, v3                           // 0000000801C8: D7006A13 00020707
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000801D0: BF870001
	v_add_co_ci_u32_e64 v20, null, 0, v8, vcc_lo               // 0000000801D4: D5207C14 01AA1080
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 0000000801DC: 916A047E
	global_load_b32 v14, v[19:20], off                         // 0000000801E0: DC520000 0E7C0013
	s_cbranch_vccnz 132                                        // 0000000801E8: BFA40084 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xcfc>
	v_mov_b32_e32 v3, 0                                        // 0000000801EC: 7E060280
	s_and_not1_b32 vcc_lo, exec_lo, s40                        // 0000000801F0: 916A287E
	s_cbranch_vccnz 128                                        // 0000000801F4: BFA40080 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xcf8>
	v_mov_b32_e32 v3, 0                                        // 0000000801F8: 7E060280
	v_mov_b32_e32 v15, v17                                     // 0000000801FC: 7E1E0311
	s_mov_b32 s5, 0                                            // 000000080200: BE850080
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 000000080204: 916A037E
	s_cbranch_vccnz 69                                         // 000000080208: BFA40045 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xc20>
	s_mov_b64 s[6:7], s[0:1]                                   // 00000008020C: BE860100
	s_mov_b64 s[8:9], s[24:25]                                 // 000000080210: BE880118
	s_clause 0x1                                               // 000000080214: BF850001
	s_load_b256 s[48:55], s[6:7], 0x4c                         // 000000080218: F40C0C03 F800004C
	s_load_b128 s[56:59], s[6:7], 0x6c                         // 000000080220: F4080E03 F800006C
	s_load_b128 s[60:63], s[8:9], null                         // 000000080228: F4080F04 F8000000
	s_add_i32 s5, s5, 4                                        // 000000080230: 81058405
	s_add_u32 s8, s8, 16                                       // 000000080234: 80089008
	s_addc_u32 s9, s9, 0                                       // 000000080238: 82098009
	s_add_u32 s6, s6, 48                                       // 00000008023C: 8006B006
	s_addc_u32 s7, s7, 0                                       // 000000080240: 82078007
	s_cmp_eq_u32 s42, s5                                       // 000000080244: BF06052A
	s_waitcnt lgkmcnt(0)                                       // 000000080248: BF89FC07
	v_mul_hi_u32 v19, s49, v15                                 // 00000008024C: D72D0013 00021E31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080254: BF870091
	v_add_nc_u32_e32 v19, v15, v19                             // 000000080258: 4A26270F
	v_lshrrev_b32_e32 v19, s50, v19                            // 00000008025C: 32262632
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000080260: BF870121
	v_mul_hi_u32 v20, s52, v19                                 // 000000080264: D72D0014 00022634
	v_mul_lo_u32 v23, v19, s48                                 // 00000008026C: D72C0017 00006113
	v_add_nc_u32_e32 v20, v19, v20                             // 000000080274: 4A282913
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080278: BF870112
	v_sub_nc_u32_e32 v23, v15, v23                             // 00000008027C: 4C2E2F0F
	v_lshrrev_b32_e32 v20, s53, v20                            // 000000080280: 32282835
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080284: BF870112
	v_mul_lo_u32 v23, v23, s60                                 // 000000080288: D72C0017 00007917
	v_mul_hi_u32 v21, s55, v20                                 // 000000080290: D72D0015 00022837
	v_mul_lo_u32 v24, v20, s51                                 // 000000080298: D72C0018 00006714
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000802A0: BF870112
	v_add_nc_u32_e32 v21, v20, v21                             // 0000000802A4: 4A2A2B14
	v_sub_nc_u32_e32 v19, v19, v24                             // 0000000802A8: 4C263113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000802AC: BF870112
	v_lshrrev_b32_e32 v21, s56, v21                            // 0000000802B0: 322A2A38
	v_mul_lo_u32 v19, v19, s61                                 // 0000000802B4: D72C0013 00007B13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000802BC: BF870112
	v_mul_hi_u32 v22, s58, v21                                 // 0000000802C0: D72D0016 00022A3A
	v_add3_u32 v3, v23, v3, v19                                // 0000000802C8: D6550003 044E0717
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000802D0: BF870092
	v_add_nc_u32_e32 v22, v21, v22                             // 0000000802D4: 4A2C2D15
	v_lshrrev_b32_e32 v15, s59, v22                            // 0000000802D8: 321E2C3B
	v_mul_lo_u32 v22, v21, s54                                 // 0000000802DC: D72C0016 00006D15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000802E4: BF870112
	v_mul_lo_u32 v25, v15, s57                                 // 0000000802E8: D72C0019 0000730F
	v_sub_nc_u32_e32 v20, v20, v22                             // 0000000802F0: 4C282D14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000802F4: BF870112
	v_sub_nc_u32_e32 v21, v21, v25                             // 0000000802F8: 4C2A3315
	v_mul_lo_u32 v20, v20, s62                                 // 0000000802FC: D72C0014 00007D14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080304: BF870092
	v_mul_lo_u32 v21, v21, s63                                 // 000000080308: D72C0015 00007F15
	v_add3_u32 v3, v20, v3, v21                                // 000000080310: D6550003 04560714
	s_cbranch_scc0 65470                                       // 000000080318: BFA1FFBE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xb14>
	s_mov_b32 s5, s42                                          // 00000008031C: BE85002A
	s_and_not1_b32 vcc_lo, exec_lo, s43                        // 000000080320: 916A2B7E
	s_cbranch_vccnz 52                                         // 000000080324: BFA40034 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xcf8>
	s_lshl_b32 s6, s5, 2                                       // 000000080328: 84068205
	s_mul_i32 s5, s5, 12                                       // 00000008032C: 96058C05
	s_add_u32 s6, s24, s6                                      // 000000080330: 80060618
	s_addc_u32 s7, s25, 0                                      // 000000080334: 82078019
	s_add_u32 s8, s0, s5                                       // 000000080338: 80080500
	s_addc_u32 s9, s1, 0                                       // 00000008033C: 82098001
	s_mov_b32 s5, s41                                          // 000000080340: BE850029
	s_nop 0                                                    // 000000080344: BF800000
	s_nop 0                                                    // 000000080348: BF800000
	s_nop 0                                                    // 00000008034C: BF800000
	s_nop 0                                                    // 000000080350: BF800000
	s_nop 0                                                    // 000000080354: BF800000
	s_nop 0                                                    // 000000080358: BF800000
	s_nop 0                                                    // 00000008035C: BF800000
	s_nop 0                                                    // 000000080360: BF800000
	s_nop 0                                                    // 000000080364: BF800000
	s_nop 0                                                    // 000000080368: BF800000
	s_nop 0                                                    // 00000008036C: BF800000
	s_nop 0                                                    // 000000080370: BF800000
	s_nop 0                                                    // 000000080374: BF800000
	s_nop 0                                                    // 000000080378: BF800000
	s_nop 0                                                    // 00000008037C: BF800000
	s_clause 0x1                                               // 000000080380: BF850001
	s_load_b64 s[46:47], s[8:9], 0x4c                          // 000000080384: F4040B84 F800004C
	s_load_b32 s10, s[8:9], 0x54                               // 00000008038C: F4000284 F8000054
	s_load_b32 s45, s[6:7], null                               // 000000080394: F4000B43 F8000000
	s_add_u32 s6, s6, 4                                        // 00000008039C: 80068406
	s_addc_u32 s7, s7, 0                                       // 0000000803A0: 82078007
	s_add_u32 s8, s8, 12                                       // 0000000803A4: 80088C08
	s_addc_u32 s9, s9, 0                                       // 0000000803A8: 82098009
	s_add_i32 s5, s5, -1                                       // 0000000803AC: 8105C105
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 0000000803B0: BF8700B9
	s_cmp_lg_u32 s5, 0                                         // 0000000803B4: BF078005
	s_waitcnt lgkmcnt(0)                                       // 0000000803B8: BF89FC07
	v_mul_hi_u32 v19, s47, v15                                 // 0000000803BC: D72D0013 00021E2F
	v_add_nc_u32_e32 v19, v15, v19                             // 0000000803C4: 4A26270F
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000803C8: BF870091
	v_lshrrev_b32_e32 v21, s10, v19                            // 0000000803CC: 322A260A
	v_mul_lo_u32 v19, v21, s46                                 // 0000000803D0: D72C0013 00005D15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000803D8: BF870091
	v_sub_nc_u32_e32 v15, v15, v19                             // 0000000803DC: 4C1E270F
	v_mad_u64_u32 v[19:20], null, v15, s45, v[3:4]             // 0000000803E0: D6FE7C13 040C5B0F
	v_mov_b32_e32 v15, v21                                     // 0000000803E8: 7E1E0315
	s_delay_alu instid0(VALU_DEP_2)                            // 0000000803EC: BF870002
	v_mov_b32_e32 v3, v19                                      // 0000000803F0: 7E060313
	s_cbranch_scc1 65506                                       // 0000000803F4: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xc80>
	s_mov_b32 s5, 0                                            // 0000000803F8: BE850080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000803FC: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 000000080400: 916A057E
	s_cbranch_vccnz 28                                         // 000000080404: BFA4001C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xd78>
	s_waitcnt lgkmcnt(0)                                       // 000000080408: BF89FC07
	v_mul_hi_u32 v3, v17, s21                                  // 00000008040C: D72D0003 00002B11
	s_and_not1_b32 vcc_lo, exec_lo, s40                        // 000000080414: 916A287E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080418: BF870091
	v_add_nc_u32_e32 v3, v17, v3                               // 00000008041C: 4A060711
	v_lshrrev_b32_e32 v15, s22, v3                             // 000000080420: 321E0616
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080424: BF870091
	v_mul_lo_u32 v3, v15, s20                                  // 000000080428: D72C0003 0000290F
	v_sub_nc_u32_e32 v3, v17, v3                               // 000000080430: 4C060711
	s_delay_alu instid0(VALU_DEP_1)                            // 000000080434: BF870001
	v_mul_lo_u32 v3, v3, s36                                   // 000000080438: D72C0003 00004903
	s_cbranch_vccnz 13                                         // 000000080440: BFA4000D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xd78>
	v_mul_hi_u32 v19, v15, s26                                 // 000000080444: D72D0013 0000350F
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000008044C: BF870091
	v_add_nc_u32_e32 v19, v15, v19                             // 000000080450: 4A26270F
	v_lshrrev_b32_e32 v19, s27, v19                            // 000000080454: 3226261B
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080458: BF870091
	v_mul_lo_u32 v19, v19, s23                                 // 00000008045C: D72C0013 00002F13
	v_sub_nc_u32_e32 v15, v15, v19                             // 000000080464: 4C1E270F
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080468: BF870091
	v_mad_u64_u32 v[19:20], null, v15, s39, v[3:4]             // 00000008046C: D6FE7C13 040C4F0F
	v_mov_b32_e32 v3, v19                                      // 000000080474: 7E060313
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000080478: BF8700A1
	v_and_b32_e32 v3, -4, v3                                   // 00000008047C: 360606C4
	s_mov_b32 s5, -1                                           // 000000080480: BE8500C1
	v_add_co_u32 v19, vcc_lo, v7, v3                           // 000000080484: D7006A13 00020707
	s_delay_alu instid0(VALU_DEP_1)                            // 00000008048C: BF870001
	v_add_co_ci_u32_e64 v20, null, 0, v8, vcc_lo               // 000000080490: D5207C14 01AA1080
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 000000080498: 916A047E
	global_load_b32 v15, v[19:20], off                         // 00000008049C: DC520000 0F7C0013
	v_add_nc_u32_e32 v19, s30, v17                             // 0000000804A4: 4A26221E
	s_cbranch_vccnz 132                                        // 0000000804A8: BFA40084 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xfbc>
	v_mov_b32_e32 v3, 0                                        // 0000000804AC: 7E060280
	s_and_not1_b32 vcc_lo, exec_lo, s40                        // 0000000804B0: 916A287E
	s_cbranch_vccnz 128                                        // 0000000804B4: BFA40080 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xfb8>
	v_mov_b32_e32 v3, 0                                        // 0000000804B8: 7E060280
	v_mov_b32_e32 v17, v19                                     // 0000000804BC: 7E220313
	s_mov_b32 s5, 0                                            // 0000000804C0: BE850080
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 0000000804C4: 916A037E
	s_cbranch_vccnz 69                                         // 0000000804C8: BFA40045 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xee0>
	s_mov_b64 s[6:7], s[0:1]                                   // 0000000804CC: BE860100
	s_mov_b64 s[8:9], s[24:25]                                 // 0000000804D0: BE880118
	s_clause 0x1                                               // 0000000804D4: BF850001
	s_load_b256 s[48:55], s[6:7], 0x4c                         // 0000000804D8: F40C0C03 F800004C
	s_load_b128 s[56:59], s[6:7], 0x6c                         // 0000000804E0: F4080E03 F800006C
	s_load_b128 s[60:63], s[8:9], null                         // 0000000804E8: F4080F04 F8000000
	s_add_i32 s5, s5, 4                                        // 0000000804F0: 81058405
	s_add_u32 s8, s8, 16                                       // 0000000804F4: 80089008
	s_addc_u32 s9, s9, 0                                       // 0000000804F8: 82098009
	s_add_u32 s6, s6, 48                                       // 0000000804FC: 8006B006
	s_addc_u32 s7, s7, 0                                       // 000000080500: 82078007
	s_cmp_eq_u32 s42, s5                                       // 000000080504: BF06052A
	s_waitcnt lgkmcnt(0)                                       // 000000080508: BF89FC07
	v_mul_hi_u32 v20, s49, v17                                 // 00000008050C: D72D0014 00022231
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080514: BF870091
	v_add_nc_u32_e32 v20, v17, v20                             // 000000080518: 4A282911
	v_lshrrev_b32_e32 v20, s50, v20                            // 00000008051C: 32282832
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000080520: BF870121
	v_mul_hi_u32 v21, s52, v20                                 // 000000080524: D72D0015 00022834
	v_mul_lo_u32 v24, v20, s48                                 // 00000008052C: D72C0018 00006114
	v_add_nc_u32_e32 v21, v20, v21                             // 000000080534: 4A2A2B14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080538: BF870112
	v_sub_nc_u32_e32 v24, v17, v24                             // 00000008053C: 4C303111
	v_lshrrev_b32_e32 v21, s53, v21                            // 000000080540: 322A2A35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080544: BF870112
	v_mul_lo_u32 v24, v24, s60                                 // 000000080548: D72C0018 00007918
	v_mul_hi_u32 v22, s55, v21                                 // 000000080550: D72D0016 00022A37
	v_mul_lo_u32 v25, v21, s51                                 // 000000080558: D72C0019 00006715
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080560: BF870112
	v_add_nc_u32_e32 v22, v21, v22                             // 000000080564: 4A2C2D15
	v_sub_nc_u32_e32 v20, v20, v25                             // 000000080568: 4C283314
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000008056C: BF870112
	v_lshrrev_b32_e32 v22, s56, v22                            // 000000080570: 322C2C38
	v_mul_lo_u32 v20, v20, s61                                 // 000000080574: D72C0014 00007B14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000008057C: BF870112
	v_mul_hi_u32 v23, s58, v22                                 // 000000080580: D72D0017 00022C3A
	v_add3_u32 v3, v24, v3, v20                                // 000000080588: D6550003 04520718
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080590: BF870092
	v_add_nc_u32_e32 v23, v22, v23                             // 000000080594: 4A2E2F16
	v_lshrrev_b32_e32 v17, s59, v23                            // 000000080598: 32222E3B
	v_mul_lo_u32 v23, v22, s54                                 // 00000008059C: D72C0017 00006D16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000805A4: BF870112
	v_mul_lo_u32 v26, v17, s57                                 // 0000000805A8: D72C001A 00007311
	v_sub_nc_u32_e32 v21, v21, v23                             // 0000000805B0: 4C2A2F15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000805B4: BF870112
	v_sub_nc_u32_e32 v22, v22, v26                             // 0000000805B8: 4C2C3516
	v_mul_lo_u32 v21, v21, s62                                 // 0000000805BC: D72C0015 00007D15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000805C4: BF870092
	v_mul_lo_u32 v22, v22, s63                                 // 0000000805C8: D72C0016 00007F16
	v_add3_u32 v3, v21, v3, v22                                // 0000000805D0: D6550003 045A0715
	s_cbranch_scc0 65470                                       // 0000000805D8: BFA1FFBE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xdd4>
	s_mov_b32 s5, s42                                          // 0000000805DC: BE85002A
	s_and_not1_b32 vcc_lo, exec_lo, s43                        // 0000000805E0: 916A2B7E
	s_cbranch_vccnz 52                                         // 0000000805E4: BFA40034 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xfb8>
	s_lshl_b32 s6, s5, 2                                       // 0000000805E8: 84068205
	s_mul_i32 s5, s5, 12                                       // 0000000805EC: 96058C05
	s_add_u32 s6, s24, s6                                      // 0000000805F0: 80060618
	s_addc_u32 s7, s25, 0                                      // 0000000805F4: 82078019
	s_add_u32 s8, s0, s5                                       // 0000000805F8: 80080500
	s_addc_u32 s9, s1, 0                                       // 0000000805FC: 82098001
	s_mov_b32 s5, s41                                          // 000000080600: BE850029
	s_nop 0                                                    // 000000080604: BF800000
	s_nop 0                                                    // 000000080608: BF800000
	s_nop 0                                                    // 00000008060C: BF800000
	s_nop 0                                                    // 000000080610: BF800000
	s_nop 0                                                    // 000000080614: BF800000
	s_nop 0                                                    // 000000080618: BF800000
	s_nop 0                                                    // 00000008061C: BF800000
	s_nop 0                                                    // 000000080620: BF800000
	s_nop 0                                                    // 000000080624: BF800000
	s_nop 0                                                    // 000000080628: BF800000
	s_nop 0                                                    // 00000008062C: BF800000
	s_nop 0                                                    // 000000080630: BF800000
	s_nop 0                                                    // 000000080634: BF800000
	s_nop 0                                                    // 000000080638: BF800000
	s_nop 0                                                    // 00000008063C: BF800000
	s_clause 0x1                                               // 000000080640: BF850001
	s_load_b64 s[46:47], s[8:9], 0x4c                          // 000000080644: F4040B84 F800004C
	s_load_b32 s10, s[8:9], 0x54                               // 00000008064C: F4000284 F8000054
	s_load_b32 s45, s[6:7], null                               // 000000080654: F4000B43 F8000000
	s_add_u32 s6, s6, 4                                        // 00000008065C: 80068406
	s_addc_u32 s7, s7, 0                                       // 000000080660: 82078007
	s_add_u32 s8, s8, 12                                       // 000000080664: 80088C08
	s_addc_u32 s9, s9, 0                                       // 000000080668: 82098009
	s_add_i32 s5, s5, -1                                       // 00000008066C: 8105C105
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 000000080670: BF8700B9
	s_cmp_lg_u32 s5, 0                                         // 000000080674: BF078005
	s_waitcnt lgkmcnt(0)                                       // 000000080678: BF89FC07
	v_mul_hi_u32 v20, s47, v17                                 // 00000008067C: D72D0014 0002222F
	v_add_nc_u32_e32 v20, v17, v20                             // 000000080684: 4A282911
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080688: BF870091
	v_lshrrev_b32_e32 v22, s10, v20                            // 00000008068C: 322C280A
	v_mul_lo_u32 v20, v22, s46                                 // 000000080690: D72C0014 00005D16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080698: BF870091
	v_sub_nc_u32_e32 v17, v17, v20                             // 00000008069C: 4C222911
	v_mad_u64_u32 v[20:21], null, v17, s45, v[3:4]             // 0000000806A0: D6FE7C14 040C5B11
	v_mov_b32_e32 v17, v22                                     // 0000000806A8: 7E220316
	s_delay_alu instid0(VALU_DEP_2)                            // 0000000806AC: BF870002
	v_mov_b32_e32 v3, v20                                      // 0000000806B0: 7E060314
	s_cbranch_scc1 65506                                       // 0000000806B4: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xf40>
	s_mov_b32 s5, 0                                            // 0000000806B8: BE850080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000806BC: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 0000000806C0: 916A057E
	s_cbranch_vccnz 64839                                      // 0000000806C4: BFA4FD47 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4e4>
	s_waitcnt lgkmcnt(0)                                       // 0000000806C8: BF89FC07
	v_mul_hi_u32 v3, v19, s21                                  // 0000000806CC: D72D0003 00002B13
	s_and_not1_b32 vcc_lo, exec_lo, s40                        // 0000000806D4: 916A287E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000806D8: BF870091
	v_add_nc_u32_e32 v3, v19, v3                               // 0000000806DC: 4A060713
	v_lshrrev_b32_e32 v17, s22, v3                             // 0000000806E0: 32220616
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000806E4: BF870091
	v_mul_lo_u32 v3, v17, s20                                  // 0000000806E8: D72C0003 00002911
	v_sub_nc_u32_e32 v3, v19, v3                               // 0000000806F0: 4C060713
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000806F4: BF870001
	v_mul_lo_u32 v3, v3, s36                                   // 0000000806F8: D72C0003 00004903
	s_cbranch_vccnz 64824                                      // 000000080700: BFA4FD38 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4e4>
	v_mul_hi_u32 v20, v17, s26                                 // 000000080704: D72D0014 00003511
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000008070C: BF870091
	v_add_nc_u32_e32 v20, v17, v20                             // 000000080710: 4A282911
	v_lshrrev_b32_e32 v20, s27, v20                            // 000000080714: 3228281B
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080718: BF870091
	v_mul_lo_u32 v20, v20, s23                                 // 00000008071C: D72C0014 00002F14
	v_sub_nc_u32_e32 v17, v17, v20                             // 000000080724: 4C222911
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080728: BF870091
	v_mad_u64_u32 v[20:21], null, v17, s39, v[3:4]             // 00000008072C: D6FE7C14 040C4F11
	v_mov_b32_e32 v3, v20                                      // 000000080734: 7E060314
	s_branch 64810                                             // 000000080738: BFA0FD2A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4e4>
	s_branch 1297                                              // 00000008073C: BFA00511 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2484>
	s_branch 1068                                              // 000000080740: BFA0042C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x20f4>
	s_cbranch_execnz 817                                       // 000000080744: BFA60331 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1d0c>
	s_branch 1065                                              // 000000080748: BFA00429 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x20f0>
	s_or_b32 exec_lo, exec_lo, s44                             // 00000008074C: 8C7E2C7E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000080750: BF870499
	s_or_b32 exec_lo, exec_lo, s38                             // 000000080754: 8C7E267E
	s_mov_b32 s10, exec_lo                                     // 000000080758: BE8A007E
	v_cmpx_gt_u32_e64 s12, v19                                 // 00000008075C: D4CC007E 0002260C
	s_cbranch_execz 790                                        // 000000080764: BFA50316 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1cc0>
	v_sub_co_u32 v3, s3, s37, 1                                // 000000080768: D7010303 00010225
	s_xor_b32 s5, s3, -1                                       // 000000080770: 8D05C103
	s_mov_b32 s6, -1                                           // 000000080774: BE8600C1
	v_cndmask_b32_e64 v16, 0, 1, s5                            // 000000080778: D5010010 00150280
	v_cmp_lt_u32_e64 s4, 1, v3                                 // 000000080780: D4490004 00020681
	s_waitcnt lgkmcnt(0)                                       // 000000080788: BF89FC07
	v_readfirstlane_b32 s20, v3                                // 00000008078C: 7E280503
	s_delay_alu instid0(VALU_DEP_3)                            // 000000080790: BF870003
	v_cmp_ne_u32_e64 s3, 1, v16                                // 000000080794: D44D0003 00022081
	s_and_b32 vcc_lo, exec_lo, s4                              // 00000008079C: 8B6A047E
	s_min_u32 s21, s20, 15                                     // 0000000807A0: 89958F14
	s_cbranch_vccz 126                                         // 0000000807A4: BFA3007E <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x12a0>
	v_mov_b32_e32 v3, 0                                        // 0000000807A8: 7E060280
	s_and_b32 vcc_lo, exec_lo, s3                              // 0000000807AC: 8B6A037E
	s_cbranch_vccnz 122                                        // 0000000807B0: BFA4007A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x129c>
	s_add_i32 s22, s21, 1                                      // 0000000807B4: 81168115
	s_cmp_eq_u32 s20, 2                                        // 0000000807B8: BF068214
	s_cbranch_scc1 73                                          // 0000000807BC: BFA20049 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x11e4>
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v18, v19            // 0000000807C0: CA100080 03120113
	s_and_b32 s3, s22, 28                                      // 0000000807C8: 8B039C16
	s_mov_b32 s23, 0                                           // 0000000807CC: BE970080
	s_mov_b64 s[6:7], s[0:1]                                   // 0000000807D0: BE860100
	s_mov_b64 s[8:9], s[24:25]                                 // 0000000807D4: BE880118
	s_clause 0x1                                               // 0000000807D8: BF850001
	s_load_b256 s[40:47], s[6:7], 0x4c                         // 0000000807DC: F40C0A03 F800004C
	s_load_b128 s[48:51], s[6:7], 0x6c                         // 0000000807E4: F4080C03 F800006C
	s_load_b128 s[52:55], s[8:9], null                         // 0000000807EC: F4080D04 F8000000
	s_add_i32 s23, s23, 4                                      // 0000000807F4: 81178417
	s_add_u32 s8, s8, 16                                       // 0000000807F8: 80089008
	s_addc_u32 s9, s9, 0                                       // 0000000807FC: 82098009
	s_add_u32 s6, s6, 48                                       // 000000080800: 8006B006
	s_addc_u32 s7, s7, 0                                       // 000000080804: 82078007
	s_cmp_lg_u32 s3, s23                                       // 000000080808: BF071703
	s_waitcnt lgkmcnt(0)                                       // 00000008080C: BF89FC07
	v_mul_hi_u32 v20, s41, v18                                 // 000000080810: D72D0014 00022429
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080818: BF870091
	v_add_nc_u32_e32 v20, v18, v20                             // 00000008081C: 4A282912
	v_lshrrev_b32_e32 v20, s42, v20                            // 000000080820: 3228282A
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000080824: BF870121
	v_mul_hi_u32 v21, s44, v20                                 // 000000080828: D72D0015 0002282C
	v_mul_lo_u32 v24, v20, s40                                 // 000000080830: D72C0018 00005114
	v_add_nc_u32_e32 v21, v20, v21                             // 000000080838: 4A2A2B14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000008083C: BF870112
	v_sub_nc_u32_e32 v24, v18, v24                             // 000000080840: 4C303112
	v_lshrrev_b32_e32 v21, s45, v21                            // 000000080844: 322A2A2D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080848: BF870112
	v_mul_lo_u32 v24, v24, s52                                 // 00000008084C: D72C0018 00006918
	v_mul_hi_u32 v22, s47, v21                                 // 000000080854: D72D0016 00022A2F
	v_mul_lo_u32 v25, v21, s43                                 // 00000008085C: D72C0019 00005715
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080864: BF870112
	v_add_nc_u32_e32 v22, v21, v22                             // 000000080868: 4A2C2D15
	v_sub_nc_u32_e32 v20, v20, v25                             // 00000008086C: 4C283314
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080870: BF870112
	v_lshrrev_b32_e32 v22, s48, v22                            // 000000080874: 322C2C30
	v_mul_lo_u32 v20, v20, s53                                 // 000000080878: D72C0014 00006B14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080880: BF870112
	v_mul_hi_u32 v23, s50, v22                                 // 000000080884: D72D0017 00022C32
	v_add3_u32 v3, v24, v3, v20                                // 00000008088C: D6550003 04520718
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080894: BF870092
	v_add_nc_u32_e32 v23, v22, v23                             // 000000080898: 4A2E2F16
	v_lshrrev_b32_e32 v18, s51, v23                            // 00000008089C: 32242E33
	v_mul_lo_u32 v23, v22, s46                                 // 0000000808A0: D72C0017 00005D16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000808A8: BF870112
	v_mul_lo_u32 v26, v18, s49                                 // 0000000808AC: D72C001A 00006312
	v_sub_nc_u32_e32 v21, v21, v23                             // 0000000808B4: 4C2A2F15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000808B8: BF870112
	v_sub_nc_u32_e32 v22, v22, v26                             // 0000000808BC: 4C2C3516
	v_mul_lo_u32 v21, v21, s54                                 // 0000000808C0: D72C0015 00006D15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000808C8: BF870092
	v_mul_lo_u32 v22, v22, s55                                 // 0000000808CC: D72C0016 00006F16
	v_add3_u32 v3, v21, v3, v22                                // 0000000808D4: D6550003 045A0715
	s_cbranch_scc1 65470                                       // 0000000808DC: BFA2FFBE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x10d8>
	s_branch 3                                                 // 0000000808E0: BFA00003 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x11f0>
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v18, v19            // 0000000808E4: CA100080 03120113
	s_mov_b32 s3, 0                                            // 0000000808EC: BE830080
	s_and_b32 s22, s22, 3                                      // 0000000808F0: 8B168316
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000808F4: BF870009
	s_cmp_eq_u32 s22, 0                                        // 0000000808F8: BF068016
	s_cbranch_scc1 39                                          // 0000000808FC: BFA20027 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x129c>
	s_lshl_b32 s6, s3, 2                                       // 000000080900: 84068203
	s_mul_i32 s3, s3, 12                                       // 000000080904: 96038C03
	s_add_u32 s6, s0, s6                                       // 000000080908: 80060600
	s_addc_u32 s7, s1, 0                                       // 00000008090C: 82078001
	s_add_u32 s6, s6, 0x10c                                    // 000000080910: 8006FF06 0000010C
	s_addc_u32 s7, s7, 0                                       // 000000080918: 82078007
	s_add_u32 s8, s0, s3                                       // 00000008091C: 80080300
	s_addc_u32 s9, s1, 0                                       // 000000080920: 82098001
	s_clause 0x1                                               // 000000080924: BF850001
	s_load_b64 s[26:27], s[8:9], 0x4c                          // 000000080928: F4040684 F800004C
	s_load_b32 s3, s[8:9], 0x54                                // 000000080930: F40000C4 F8000054
	s_load_b32 s23, s[6:7], null                               // 000000080938: F40005C3 F8000000
	s_add_u32 s6, s6, 4                                        // 000000080940: 80068406
	s_addc_u32 s7, s7, 0                                       // 000000080944: 82078007
	s_add_u32 s8, s8, 12                                       // 000000080948: 80088C08
	s_addc_u32 s9, s9, 0                                       // 00000008094C: 82098009
	s_add_i32 s22, s22, -1                                     // 000000080950: 8116C116
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 000000080954: BF8700B9
	s_cmp_lg_u32 s22, 0                                        // 000000080958: BF078016
	s_waitcnt lgkmcnt(0)                                       // 00000008095C: BF89FC07
	v_mul_hi_u32 v20, s27, v18                                 // 000000080960: D72D0014 0002241B
	v_add_nc_u32_e32 v20, v18, v20                             // 000000080968: 4A282912
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000008096C: BF870091
	v_lshrrev_b32_e32 v22, s3, v20                             // 000000080970: 322C2803
	v_mul_lo_u32 v20, v22, s26                                 // 000000080974: D72C0014 00003516
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000008097C: BF870091
	v_sub_nc_u32_e32 v18, v18, v20                             // 000000080980: 4C242912
	v_mad_u64_u32 v[20:21], null, v18, s23, v[3:4]             // 000000080984: D6FE7C14 040C2F12
	s_delay_alu instid0(VALU_DEP_1)                            // 00000008098C: BF870001
	v_dual_mov_b32 v18, v22 :: v_dual_mov_b32 v3, v20          // 000000080990: CA100116 12020114
	s_cbranch_scc1 65506                                       // 000000080998: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1224>
	s_mov_b32 s6, 0                                            // 00000008099C: BE860080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000809A0: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s6                         // 0000000809A4: 916A067E
	s_cbranch_vccnz 36                                         // 0000000809A8: BFA40024 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x133c>
	s_load_b128 s[40:43], s[0:1], 0x4c                         // 0000000809AC: F4080A00 F800004C
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 0000000809B4: 916A057E
	s_waitcnt lgkmcnt(0)                                       // 0000000809B8: BF89FC07
	v_mul_hi_u32 v3, s41, v19                                  // 0000000809BC: D72D0003 00022629
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000809C4: BF870091
	v_add_nc_u32_e32 v3, v19, v3                               // 0000000809C8: 4A060713
	v_lshrrev_b32_e32 v18, s42, v3                             // 0000000809CC: 3224062A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000809D0: BF870091
	v_mul_lo_u32 v3, v18, s40                                  // 0000000809D4: D72C0003 00005112
	v_sub_nc_u32_e32 v3, v19, v3                               // 0000000809DC: 4C060713
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000809E0: BF870001
	v_mul_lo_u32 v3, v3, s36                                   // 0000000809E4: D72C0003 00004903
	s_cbranch_vccnz 19                                         // 0000000809EC: BFA40013 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x133c>
	s_clause 0x1                                               // 0000000809F0: BF850001
	s_load_b128 s[40:43], s[0:1], 0x58                         // 0000000809F4: F4080A00 F8000058
	s_load_b32 s3, s[0:1], 0x110                               // 0000000809FC: F40000C0 F8000110
	s_waitcnt lgkmcnt(0)                                       // 000000080A04: BF89FC07
	v_mul_hi_u32 v20, s41, v18                                 // 000000080A08: D72D0014 00022429
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080A10: BF870091
	v_add_nc_u32_e32 v20, v18, v20                             // 000000080A14: 4A282912
	v_lshrrev_b32_e32 v20, s42, v20                            // 000000080A18: 3228282A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080A1C: BF870091
	v_mul_lo_u32 v20, v20, s40                                 // 000000080A20: D72C0014 00005114
	v_sub_nc_u32_e32 v18, v18, v20                             // 000000080A28: 4C242912
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080A2C: BF870091
	v_mad_u64_u32 v[20:21], null, v18, s3, v[3:4]              // 000000080A30: D6FE7C14 040C0712
	v_mov_b32_e32 v3, v20                                      // 000000080A38: 7E060314
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000080A3C: BF870121
	v_and_b32_e32 v3, -4, v3                                   // 000000080A40: 360606C4
	v_add_nc_u32_e32 v19, s30, v19                             // 000000080A44: 4A26261E
	v_add_co_u32 v20, vcc_lo, v7, v3                           // 000000080A48: D7006A14 00020707
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 000000080A50: BF870191
	v_add_co_ci_u32_e64 v21, null, 0, v8, vcc_lo               // 000000080A54: D5207C15 01AA1080
	v_cmp_gt_u32_e64 s3, s12, v19                              // 000000080A5C: D44C0003 0002260C
	global_load_b32 v18, v[20:21], off                         // 000000080A64: DC520000 127C0014
	s_and_saveexec_b32 s8, s3                                  // 000000080A6C: BE882003
	s_cbranch_execz 549                                        // 000000080A70: BFA50225 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1c08>
	v_cndmask_b32_e64 v20, 0, 1, s4                            // 000000080A74: D5010014 00110280
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 000000080A7C: 916A047E
	s_cbranch_vccnz 79                                         // 000000080A80: BFA4004F <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x14c0>
	v_cmp_ne_u32_e32 vcc_lo, 1, v16                            // 000000080A84: 7C9A2081
	v_mov_b32_e32 v3, 0                                        // 000000080A88: 7E060280
	s_cbranch_vccnz 124                                        // 000000080A8C: BFA4007C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1580>
	s_add_i32 s22, s21, 1                                      // 000000080A90: 81168115
	s_cmp_eq_u32 s20, 2                                        // 000000080A94: BF068214
	s_cbranch_scc1 75                                          // 000000080A98: BFA2004B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x14c8>
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v14, v19            // 000000080A9C: CA100080 030E0113
	s_and_b32 s9, s22, 28                                      // 000000080AA4: 8B099C16
	s_mov_b32 s23, 0                                           // 000000080AA8: BE970080
	s_mov_b64 s[4:5], s[0:1]                                   // 000000080AAC: BE840100
	s_mov_b64 s[6:7], s[24:25]                                 // 000000080AB0: BE860118
	s_clause 0x1                                               // 000000080AB4: BF850001
	s_load_b256 s[40:47], s[4:5], 0x4c                         // 000000080AB8: F40C0A02 F800004C
	s_load_b128 s[48:51], s[4:5], 0x6c                         // 000000080AC0: F4080C02 F800006C
	s_load_b128 s[52:55], s[6:7], null                         // 000000080AC8: F4080D03 F8000000
	s_add_i32 s23, s23, 4                                      // 000000080AD0: 81178417
	s_add_u32 s6, s6, 16                                       // 000000080AD4: 80069006
	s_addc_u32 s7, s7, 0                                       // 000000080AD8: 82078007
	s_add_u32 s4, s4, 48                                       // 000000080ADC: 8004B004
	s_addc_u32 s5, s5, 0                                       // 000000080AE0: 82058005
	s_cmp_eq_u32 s9, s23                                       // 000000080AE4: BF061709
	s_waitcnt lgkmcnt(0)                                       // 000000080AE8: BF89FC07
	v_mul_hi_u32 v21, s41, v14                                 // 000000080AEC: D72D0015 00021C29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080AF4: BF870091
	v_add_nc_u32_e32 v21, v14, v21                             // 000000080AF8: 4A2A2B0E
	v_lshrrev_b32_e32 v21, s42, v21                            // 000000080AFC: 322A2A2A
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000080B00: BF870121
	v_mul_hi_u32 v22, s44, v21                                 // 000000080B04: D72D0016 00022A2C
	v_mul_lo_u32 v25, v21, s40                                 // 000000080B0C: D72C0019 00005115
	v_add_nc_u32_e32 v22, v21, v22                             // 000000080B14: 4A2C2D15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080B18: BF870112
	v_sub_nc_u32_e32 v25, v14, v25                             // 000000080B1C: 4C32330E
	v_lshrrev_b32_e32 v22, s45, v22                            // 000000080B20: 322C2C2D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080B24: BF870112
	v_mul_lo_u32 v25, v25, s52                                 // 000000080B28: D72C0019 00006919
	v_mul_hi_u32 v23, s47, v22                                 // 000000080B30: D72D0017 00022C2F
	v_mul_lo_u32 v26, v22, s43                                 // 000000080B38: D72C001A 00005716
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080B40: BF870112
	v_add_nc_u32_e32 v23, v22, v23                             // 000000080B44: 4A2E2F16
	v_sub_nc_u32_e32 v21, v21, v26                             // 000000080B48: 4C2A3515
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080B4C: BF870112
	v_lshrrev_b32_e32 v23, s48, v23                            // 000000080B50: 322E2E30
	v_mul_lo_u32 v21, v21, s53                                 // 000000080B54: D72C0015 00006B15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080B5C: BF870112
	v_mul_hi_u32 v24, s50, v23                                 // 000000080B60: D72D0018 00022E32
	v_add3_u32 v3, v25, v3, v21                                // 000000080B68: D6550003 04560719
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080B70: BF870092
	v_add_nc_u32_e32 v24, v23, v24                             // 000000080B74: 4A303117
	v_lshrrev_b32_e32 v14, s51, v24                            // 000000080B78: 321C3033
	v_mul_lo_u32 v24, v23, s46                                 // 000000080B7C: D72C0018 00005D17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080B84: BF870112
	v_mul_lo_u32 v27, v14, s49                                 // 000000080B88: D72C001B 0000630E
	v_sub_nc_u32_e32 v22, v22, v24                             // 000000080B90: 4C2C3116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080B94: BF870112
	v_sub_nc_u32_e32 v23, v23, v27                             // 000000080B98: 4C2E3717
	v_mul_lo_u32 v22, v22, s54                                 // 000000080B9C: D72C0016 00006D16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080BA4: BF870092
	v_mul_lo_u32 v23, v23, s55                                 // 000000080BA8: D72C0017 00006F17
	v_add3_u32 v3, v22, v3, v23                                // 000000080BB0: D6550003 045E0716
	s_cbranch_scc0 65470                                       // 000000080BB8: BFA1FFBE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x13b4>
	s_branch 5                                                 // 000000080BBC: BFA00005 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x14d4>
	s_mov_b32 s4, -1                                           // 000000080BC0: BE8400C1
	s_branch 47                                                // 000000080BC4: BFA0002F <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1584>
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v14, v19            // 000000080BC8: CA100080 030E0113
	s_mov_b32 s9, 0                                            // 000000080BD0: BE890080
	s_and_b32 s22, s22, 3                                      // 000000080BD4: 8B168316
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000080BD8: BF870009
	s_cmp_eq_u32 s22, 0                                        // 000000080BDC: BF068016
	s_cbranch_scc1 39                                          // 000000080BE0: BFA20027 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1580>
	s_lshl_b32 s4, s9, 2                                       // 000000080BE4: 84048209
	s_mul_i32 s6, s9, 12                                       // 000000080BE8: 96068C09
	s_add_u32 s4, s0, s4                                       // 000000080BEC: 80040400
	s_addc_u32 s5, s1, 0                                       // 000000080BF0: 82058001
	s_add_u32 s4, s4, 0x10c                                    // 000000080BF4: 8004FF04 0000010C
	s_addc_u32 s5, s5, 0                                       // 000000080BFC: 82058005
	s_add_u32 s6, s0, s6                                       // 000000080C00: 80060600
	s_addc_u32 s7, s1, 0                                       // 000000080C04: 82078001
	s_clause 0x1                                               // 000000080C08: BF850001
	s_load_b64 s[26:27], s[6:7], 0x4c                          // 000000080C0C: F4040683 F800004C
	s_load_b32 s9, s[6:7], 0x54                                // 000000080C14: F4000243 F8000054
	s_load_b32 s23, s[4:5], null                               // 000000080C1C: F40005C2 F8000000
	s_add_u32 s4, s4, 4                                        // 000000080C24: 80048404
	s_addc_u32 s5, s5, 0                                       // 000000080C28: 82058005
	s_add_u32 s6, s6, 12                                       // 000000080C2C: 80068C06
	s_addc_u32 s7, s7, 0                                       // 000000080C30: 82078007
	s_add_i32 s22, s22, -1                                     // 000000080C34: 8116C116
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 000000080C38: BF8700B9
	s_cmp_lg_u32 s22, 0                                        // 000000080C3C: BF078016
	s_waitcnt lgkmcnt(0)                                       // 000000080C40: BF89FC07
	v_mul_hi_u32 v21, s27, v14                                 // 000000080C44: D72D0015 00021C1B
	v_add_nc_u32_e32 v21, v14, v21                             // 000000080C4C: 4A2A2B0E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080C50: BF870091
	v_lshrrev_b32_e32 v23, s9, v21                             // 000000080C54: 322E2A09
	v_mul_lo_u32 v21, v23, s26                                 // 000000080C58: D72C0015 00003517
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080C60: BF870091
	v_sub_nc_u32_e32 v14, v14, v21                             // 000000080C64: 4C1C2B0E
	v_mad_u64_u32 v[21:22], null, v14, s23, v[3:4]             // 000000080C68: D6FE7C15 040C2F0E
	s_delay_alu instid0(VALU_DEP_1)                            // 000000080C70: BF870001
	v_dual_mov_b32 v14, v23 :: v_dual_mov_b32 v3, v21          // 000000080C74: CA100117 0E020115
	s_cbranch_scc1 65506                                       // 000000080C7C: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1508>
	s_mov_b32 s4, 0                                            // 000000080C80: BE840080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000080C84: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 000000080C88: 916A047E
	s_cbranch_vccnz 37                                         // 000000080C8C: BFA40025 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1624>
	s_load_b128 s[4:7], s[0:1], 0x4c                           // 000000080C90: F4080100 F800004C
	v_cmp_ne_u32_e32 vcc_lo, 1, v16                            // 000000080C98: 7C9A2081
	s_and_b32 vcc_lo, exec_lo, vcc_lo                          // 000000080C9C: 8B6A6A7E
	s_waitcnt lgkmcnt(0)                                       // 000000080CA0: BF89FC07
	v_mul_hi_u32 v3, s5, v19                                   // 000000080CA4: D72D0003 00022605
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080CAC: BF870091
	v_add_nc_u32_e32 v3, v19, v3                               // 000000080CB0: 4A060713
	v_lshrrev_b32_e32 v14, s6, v3                              // 000000080CB4: 321C0606
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080CB8: BF870091
	v_mul_lo_u32 v3, v14, s4                                   // 000000080CBC: D72C0003 0000090E
	v_sub_nc_u32_e32 v3, v19, v3                               // 000000080CC4: 4C060713
	s_delay_alu instid0(VALU_DEP_1)                            // 000000080CC8: BF870001
	v_mul_lo_u32 v3, v3, s36                                   // 000000080CCC: D72C0003 00004903
	s_cbranch_vccnz 19                                         // 000000080CD4: BFA40013 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1624>
	s_load_b128 s[4:7], s[0:1], 0x58                           // 000000080CD8: F4080100 F8000058
	s_waitcnt lgkmcnt(0)                                       // 000000080CE0: BF89FC07
	s_load_b32 s7, s[0:1], 0x110                               // 000000080CE4: F40001C0 F8000110
	v_mul_hi_u32 v21, s5, v14                                  // 000000080CEC: D72D0015 00021C05
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080CF4: BF870091
	v_add_nc_u32_e32 v21, v14, v21                             // 000000080CF8: 4A2A2B0E
	v_lshrrev_b32_e32 v21, s6, v21                             // 000000080CFC: 322A2A06
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080D00: BF870091
	v_mul_lo_u32 v21, v21, s4                                  // 000000080D04: D72C0015 00000915
	v_sub_nc_u32_e32 v14, v14, v21                             // 000000080D0C: 4C1C2B0E
	s_waitcnt lgkmcnt(0)                                       // 000000080D10: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080D14: BF870091
	v_mad_u64_u32 v[21:22], null, v14, s7, v[3:4]              // 000000080D18: D6FE7C15 040C0F0E
	v_mov_b32_e32 v3, v21                                      // 000000080D20: 7E060315
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000080D24: BF8700A1
	v_and_b32_e32 v3, -4, v3                                   // 000000080D28: 360606C4
	s_mov_b32 s9, exec_lo                                      // 000000080D2C: BE89007E
	v_add_co_u32 v21, vcc_lo, v7, v3                           // 000000080D30: D7006A15 00020707
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 000000080D38: BF8700B1
	v_add_co_ci_u32_e64 v22, null, 0, v8, vcc_lo               // 000000080D3C: D5207C16 01AA1080
	global_load_b32 v14, v[21:22], off                         // 000000080D44: DC520000 0E7C0015
	v_add_nc_u32_e32 v21, s30, v19                             // 000000080D4C: 4A2A261E
	v_cmpx_gt_u32_e64 s12, v21                                 // 000000080D50: D4CC007E 00022A0C
	s_cbranch_execz 361                                        // 000000080D58: BFA50169 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1c00>
	v_cmp_ne_u32_e32 vcc_lo, 1, v20                            // 000000080D5C: 7C9A2881
	s_cbranch_vccnz 79                                         // 000000080D60: BFA4004F <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x17a0>
	v_cmp_ne_u32_e32 vcc_lo, 1, v16                            // 000000080D64: 7C9A2081
	v_mov_b32_e32 v3, 0                                        // 000000080D68: 7E060280
	s_cbranch_vccnz 124                                        // 000000080D6C: BFA4007C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1860>
	s_add_i32 s23, s21, 1                                      // 000000080D70: 81178115
	s_cmp_eq_u32 s20, 2                                        // 000000080D74: BF068214
	s_cbranch_scc1 75                                          // 000000080D78: BFA2004B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x17a8>
	v_mov_b32_e32 v3, 0                                        // 000000080D7C: 7E060280
	v_mov_b32_e32 v15, v21                                     // 000000080D80: 7E1E0315
	s_and_b32 s22, s23, 28                                     // 000000080D84: 8B169C17
	s_mov_b32 s26, 0                                           // 000000080D88: BE9A0080
	s_mov_b64 s[4:5], s[0:1]                                   // 000000080D8C: BE840100
	s_mov_b64 s[6:7], s[24:25]                                 // 000000080D90: BE860118
	s_clause 0x1                                               // 000000080D94: BF850001
	s_load_b256 s[40:47], s[4:5], 0x4c                         // 000000080D98: F40C0A02 F800004C
	s_load_b128 s[48:51], s[4:5], 0x6c                         // 000000080DA0: F4080C02 F800006C
	s_load_b128 s[52:55], s[6:7], null                         // 000000080DA8: F4080D03 F8000000
	s_add_i32 s26, s26, 4                                      // 000000080DB0: 811A841A
	s_add_u32 s6, s6, 16                                       // 000000080DB4: 80069006
	s_addc_u32 s7, s7, 0                                       // 000000080DB8: 82078007
	s_add_u32 s4, s4, 48                                       // 000000080DBC: 8004B004
	s_addc_u32 s5, s5, 0                                       // 000000080DC0: 82058005
	s_cmp_eq_u32 s22, s26                                      // 000000080DC4: BF061A16
	s_waitcnt lgkmcnt(0)                                       // 000000080DC8: BF89FC07
	v_mul_hi_u32 v22, s41, v15                                 // 000000080DCC: D72D0016 00021E29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080DD4: BF870091
	v_add_nc_u32_e32 v22, v15, v22                             // 000000080DD8: 4A2C2D0F
	v_lshrrev_b32_e32 v22, s42, v22                            // 000000080DDC: 322C2C2A
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000080DE0: BF870121
	v_mul_hi_u32 v23, s44, v22                                 // 000000080DE4: D72D0017 00022C2C
	v_mul_lo_u32 v26, v22, s40                                 // 000000080DEC: D72C001A 00005116
	v_add_nc_u32_e32 v23, v22, v23                             // 000000080DF4: 4A2E2F16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080DF8: BF870112
	v_sub_nc_u32_e32 v26, v15, v26                             // 000000080DFC: 4C34350F
	v_lshrrev_b32_e32 v23, s45, v23                            // 000000080E00: 322E2E2D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080E04: BF870112
	v_mul_lo_u32 v26, v26, s52                                 // 000000080E08: D72C001A 0000691A
	v_mul_hi_u32 v24, s47, v23                                 // 000000080E10: D72D0018 00022E2F
	v_mul_lo_u32 v27, v23, s43                                 // 000000080E18: D72C001B 00005717
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080E20: BF870112
	v_add_nc_u32_e32 v24, v23, v24                             // 000000080E24: 4A303117
	v_sub_nc_u32_e32 v22, v22, v27                             // 000000080E28: 4C2C3716
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080E2C: BF870112
	v_lshrrev_b32_e32 v24, s48, v24                            // 000000080E30: 32303030
	v_mul_lo_u32 v22, v22, s53                                 // 000000080E34: D72C0016 00006B16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080E3C: BF870112
	v_mul_hi_u32 v25, s50, v24                                 // 000000080E40: D72D0019 00023032
	v_add3_u32 v3, v26, v3, v22                                // 000000080E48: D6550003 045A071A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080E50: BF870092
	v_add_nc_u32_e32 v25, v24, v25                             // 000000080E54: 4A323318
	v_lshrrev_b32_e32 v15, s51, v25                            // 000000080E58: 321E3233
	v_mul_lo_u32 v25, v24, s46                                 // 000000080E5C: D72C0019 00005D18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080E64: BF870112
	v_mul_lo_u32 v28, v15, s49                                 // 000000080E68: D72C001C 0000630F
	v_sub_nc_u32_e32 v23, v23, v25                             // 000000080E70: 4C2E3317
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000080E74: BF870112
	v_sub_nc_u32_e32 v24, v24, v28                             // 000000080E78: 4C303918
	v_mul_lo_u32 v23, v23, s54                                 // 000000080E7C: D72C0017 00006D17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080E84: BF870092
	v_mul_lo_u32 v24, v24, s55                                 // 000000080E88: D72C0018 00006F18
	v_add3_u32 v3, v23, v3, v24                                // 000000080E90: D6550003 04620717
	s_cbranch_scc0 65470                                       // 000000080E98: BFA1FFBE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1694>
	s_branch 5                                                 // 000000080E9C: BFA00005 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x17b4>
	s_mov_b32 s4, -1                                           // 000000080EA0: BE8400C1
	s_branch 47                                                // 000000080EA4: BFA0002F <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1864>
	v_mov_b32_e32 v3, 0                                        // 000000080EA8: 7E060280
	v_mov_b32_e32 v15, v21                                     // 000000080EAC: 7E1E0315
	s_mov_b32 s22, 0                                           // 000000080EB0: BE960080
	s_and_b32 s23, s23, 3                                      // 000000080EB4: 8B178317
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000080EB8: BF870009
	s_cmp_eq_u32 s23, 0                                        // 000000080EBC: BF068017
	s_cbranch_scc1 39                                          // 000000080EC0: BFA20027 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1860>
	s_lshl_b32 s4, s22, 2                                      // 000000080EC4: 84048216
	s_mul_i32 s6, s22, 12                                      // 000000080EC8: 96068C16
	s_add_u32 s4, s0, s4                                       // 000000080ECC: 80040400
	s_addc_u32 s5, s1, 0                                       // 000000080ED0: 82058001
	s_add_u32 s4, s4, 0x10c                                    // 000000080ED4: 8004FF04 0000010C
	s_addc_u32 s5, s5, 0                                       // 000000080EDC: 82058005
	s_add_u32 s6, s0, s6                                       // 000000080EE0: 80060600
	s_addc_u32 s7, s1, 0                                       // 000000080EE4: 82078001
	s_clause 0x1                                               // 000000080EE8: BF850001
	s_load_b64 s[26:27], s[6:7], 0x4c                          // 000000080EEC: F4040683 F800004C
	s_load_b32 s22, s[6:7], 0x54                               // 000000080EF4: F4000583 F8000054
	s_waitcnt lgkmcnt(0)                                       // 000000080EFC: BF89FC07
	v_mul_hi_u32 v22, s27, v15                                 // 000000080F00: D72D0016 00021E1B
	s_load_b32 s27, s[4:5], null                               // 000000080F08: F40006C2 F8000000
	s_add_u32 s4, s4, 4                                        // 000000080F10: 80048404
	s_addc_u32 s5, s5, 0                                       // 000000080F14: 82058005
	s_add_u32 s6, s6, 12                                       // 000000080F18: 80068C06
	s_addc_u32 s7, s7, 0                                       // 000000080F1C: 82078007
	s_add_i32 s23, s23, -1                                     // 000000080F20: 8117C117
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000080F24: BF8700A9
	s_cmp_lg_u32 s23, 0                                        // 000000080F28: BF078017
	v_add_nc_u32_e32 v22, v15, v22                             // 000000080F2C: 4A2C2D0F
	v_lshrrev_b32_e32 v24, s22, v22                            // 000000080F30: 32302C16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080F34: BF870091
	v_mul_lo_u32 v22, v24, s26                                 // 000000080F38: D72C0016 00003518
	v_sub_nc_u32_e32 v15, v15, v22                             // 000000080F40: 4C1E2D0F
	s_waitcnt lgkmcnt(0)                                       // 000000080F44: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000080F48: BF870121
	v_mad_u64_u32 v[22:23], null, v15, s27, v[3:4]             // 000000080F4C: D6FE7C16 040C370F
	v_mov_b32_e32 v15, v24                                     // 000000080F54: 7E1E0318
	v_mov_b32_e32 v3, v22                                      // 000000080F58: 7E060316
	s_cbranch_scc1 65506                                       // 000000080F5C: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x17e8>
	s_mov_b32 s4, 0                                            // 000000080F60: BE840080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000080F64: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 000000080F68: 916A047E
	s_cbranch_vccnz 37                                         // 000000080F6C: BFA40025 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1904>
	s_load_b128 s[4:7], s[0:1], 0x4c                           // 000000080F70: F4080100 F800004C
	v_cmp_ne_u32_e32 vcc_lo, 1, v16                            // 000000080F78: 7C9A2081
	s_and_b32 vcc_lo, exec_lo, vcc_lo                          // 000000080F7C: 8B6A6A7E
	s_waitcnt lgkmcnt(0)                                       // 000000080F80: BF89FC07
	v_mul_hi_u32 v3, s5, v21                                   // 000000080F84: D72D0003 00022A05
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080F8C: BF870091
	v_add_nc_u32_e32 v3, v21, v3                               // 000000080F90: 4A060715
	v_lshrrev_b32_e32 v15, s6, v3                              // 000000080F94: 321E0606
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080F98: BF870091
	v_mul_lo_u32 v3, v15, s4                                   // 000000080F9C: D72C0003 0000090F
	v_sub_nc_u32_e32 v3, v21, v3                               // 000000080FA4: 4C060715
	s_delay_alu instid0(VALU_DEP_1)                            // 000000080FA8: BF870001
	v_mul_lo_u32 v3, v3, s36                                   // 000000080FAC: D72C0003 00004903
	s_cbranch_vccnz 19                                         // 000000080FB4: BFA40013 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1904>
	s_load_b128 s[4:7], s[0:1], 0x58                           // 000000080FB8: F4080100 F8000058
	s_waitcnt lgkmcnt(0)                                       // 000000080FC0: BF89FC07
	s_load_b32 s7, s[0:1], 0x110                               // 000000080FC4: F40001C0 F8000110
	v_mul_hi_u32 v22, s5, v15                                  // 000000080FCC: D72D0016 00021E05
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080FD4: BF870091
	v_add_nc_u32_e32 v22, v15, v22                             // 000000080FD8: 4A2C2D0F
	v_lshrrev_b32_e32 v22, s6, v22                             // 000000080FDC: 322C2C06
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080FE0: BF870091
	v_mul_lo_u32 v22, v22, s4                                  // 000000080FE4: D72C0016 00000916
	v_sub_nc_u32_e32 v15, v15, v22                             // 000000080FEC: 4C1E2D0F
	s_waitcnt lgkmcnt(0)                                       // 000000080FF0: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000080FF4: BF870091
	v_mad_u64_u32 v[22:23], null, v15, s7, v[3:4]              // 000000080FF8: D6FE7C16 040C0F0F
	v_mov_b32_e32 v3, v22                                      // 000000081000: 7E060316
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 000000081004: BF870131
	v_and_b32_e32 v3, -4, v3                                   // 000000081008: 360606C4
	v_add_nc_u32_e32 v21, s30, v21                             // 00000008100C: 4A2A2A1E
	s_mov_b32 s22, exec_lo                                     // 000000081010: BE96007E
	v_add_co_u32 v22, vcc_lo, v7, v3                           // 000000081014: D7006A16 00020707
	s_delay_alu instid0(VALU_DEP_1)                            // 00000008101C: BF870001
	v_add_co_ci_u32_e64 v23, null, 0, v8, vcc_lo               // 000000081020: D5207C17 01AA1080
	global_load_b32 v15, v[22:23], off                         // 000000081028: DC520000 0F7C0016
	v_cmpx_gt_u32_e64 s12, v21                                 // 000000081030: D4CC007E 00022A0C
	s_cbranch_execz 176                                        // 000000081038: BFA500B0 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1bfc>
	v_cmp_ne_u32_e32 vcc_lo, 1, v20                            // 00000008103C: 7C9A2881
	s_cbranch_vccnz 78                                         // 000000081040: BFA4004E <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1a7c>
	v_cmp_ne_u32_e32 vcc_lo, 1, v16                            // 000000081044: 7C9A2081
	v_mov_b32_e32 v3, 0                                        // 000000081048: 7E060280
	s_cbranch_vccnz 121                                        // 00000008104C: BFA40079 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1b34>
	v_mov_b32_e32 v3, 0                                        // 000000081050: 7E060280
	v_mov_b32_e32 v17, v21                                     // 000000081054: 7E220315
	s_add_i32 s21, s21, 1                                      // 000000081058: 81158115
	s_cmp_eq_u32 s20, 2                                        // 00000008105C: BF068214
	s_cbranch_scc1 72                                          // 000000081060: BFA20048 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1a84>
	s_and_b32 s6, s21, 28                                      // 000000081064: 8B069C15
	s_mov_b32 s7, 0                                            // 000000081068: BE870080
	s_mov_b64 s[4:5], s[0:1]                                   // 00000008106C: BE840100
	s_clause 0x1                                               // 000000081070: BF850001
	s_load_b256 s[40:47], s[4:5], 0x4c                         // 000000081074: F40C0A02 F800004C
	s_load_b128 s[48:51], s[4:5], 0x6c                         // 00000008107C: F4080C02 F800006C
	s_load_b128 s[52:55], s[24:25], null                       // 000000081084: F4080D0C F8000000
	s_add_i32 s7, s7, 4                                        // 00000008108C: 81078407
	s_add_u32 s24, s24, 16                                     // 000000081090: 80189018
	s_addc_u32 s25, s25, 0                                     // 000000081094: 82198019
	s_add_u32 s4, s4, 48                                       // 000000081098: 8004B004
	s_addc_u32 s5, s5, 0                                       // 00000008109C: 82058005
	s_cmp_eq_u32 s6, s7                                        // 0000000810A0: BF060706
	s_waitcnt lgkmcnt(0)                                       // 0000000810A4: BF89FC07
	v_mul_hi_u32 v20, s41, v17                                 // 0000000810A8: D72D0014 00022229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000810B0: BF870091
	v_add_nc_u32_e32 v20, v17, v20                             // 0000000810B4: 4A282911
	v_lshrrev_b32_e32 v20, s42, v20                            // 0000000810B8: 3228282A
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000810BC: BF870121
	v_mul_hi_u32 v22, s44, v20                                 // 0000000810C0: D72D0016 0002282C
	v_mul_lo_u32 v25, v20, s40                                 // 0000000810C8: D72C0019 00005114
	v_add_nc_u32_e32 v22, v20, v22                             // 0000000810D0: 4A2C2D14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000810D4: BF870112
	v_sub_nc_u32_e32 v25, v17, v25                             // 0000000810D8: 4C323311
	v_lshrrev_b32_e32 v22, s45, v22                            // 0000000810DC: 322C2C2D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000810E0: BF870112
	v_mul_lo_u32 v25, v25, s52                                 // 0000000810E4: D72C0019 00006919
	v_mul_hi_u32 v23, s47, v22                                 // 0000000810EC: D72D0017 00022C2F
	v_mul_lo_u32 v26, v22, s43                                 // 0000000810F4: D72C001A 00005716
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000810FC: BF870112
	v_add_nc_u32_e32 v23, v22, v23                             // 000000081100: 4A2E2F16
	v_sub_nc_u32_e32 v20, v20, v26                             // 000000081104: 4C283514
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000081108: BF870112
	v_lshrrev_b32_e32 v23, s48, v23                            // 00000008110C: 322E2E30
	v_mul_lo_u32 v20, v20, s53                                 // 000000081110: D72C0014 00006B14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000081118: BF870112
	v_mul_hi_u32 v24, s50, v23                                 // 00000008111C: D72D0018 00022E32
	v_add3_u32 v3, v25, v3, v20                                // 000000081124: D6550003 04520719
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000008112C: BF870092
	v_add_nc_u32_e32 v24, v23, v24                             // 000000081130: 4A303117
	v_lshrrev_b32_e32 v17, s51, v24                            // 000000081134: 32223033
	v_mul_lo_u32 v24, v23, s46                                 // 000000081138: D72C0018 00005D17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000081140: BF870112
	v_mul_lo_u32 v27, v17, s49                                 // 000000081144: D72C001B 00006311
	v_sub_nc_u32_e32 v22, v22, v24                             // 00000008114C: 4C2C3116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000081150: BF870112
	v_sub_nc_u32_e32 v23, v23, v27                             // 000000081154: 4C2E3717
	v_mul_lo_u32 v22, v22, s54                                 // 000000081158: D72C0016 00006D16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000081160: BF870092
	v_mul_lo_u32 v23, v23, s55                                 // 000000081164: D72C0017 00006F17
	v_add3_u32 v3, v22, v3, v23                                // 00000008116C: D6550003 045E0716
	s_cbranch_scc0 65470                                       // 000000081174: BFA1FFBE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1970>
	s_branch 3                                                 // 000000081178: BFA00003 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1a88>
	s_mov_b32 s4, -1                                           // 00000008117C: BE8400C1
	s_branch 45                                                // 000000081180: BFA0002D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1b38>
	s_mov_b32 s6, 0                                            // 000000081184: BE860080
	s_and_b32 s20, s21, 3                                      // 000000081188: 8B148315
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000008118C: BF870009
	s_cmp_eq_u32 s20, 0                                        // 000000081190: BF068014
	s_cbranch_scc1 39                                          // 000000081194: BFA20027 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1b34>
	s_lshl_b32 s4, s6, 2                                       // 000000081198: 84048206
	s_mul_i32 s6, s6, 12                                       // 00000008119C: 96068C06
	s_add_u32 s4, s0, s4                                       // 0000000811A0: 80040400
	s_addc_u32 s5, s1, 0                                       // 0000000811A4: 82058001
	s_add_u32 s4, s4, 0x10c                                    // 0000000811A8: 8004FF04 0000010C
	s_addc_u32 s5, s5, 0                                       // 0000000811B0: 82058005
	s_add_u32 s6, s0, s6                                       // 0000000811B4: 80060600
	s_addc_u32 s7, s1, 0                                       // 0000000811B8: 82078001
	s_clause 0x1                                               // 0000000811BC: BF850001
	s_load_b64 s[24:25], s[6:7], 0x4c                          // 0000000811C0: F4040603 F800004C
	s_load_b32 s21, s[6:7], 0x54                               // 0000000811C8: F4000543 F8000054
	s_load_b32 s23, s[4:5], null                               // 0000000811D0: F40005C2 F8000000
	s_add_u32 s4, s4, 4                                        // 0000000811D8: 80048404
	s_addc_u32 s5, s5, 0                                       // 0000000811DC: 82058005
	s_add_u32 s6, s6, 12                                       // 0000000811E0: 80068C06
	s_addc_u32 s7, s7, 0                                       // 0000000811E4: 82078007
	s_add_i32 s20, s20, -1                                     // 0000000811E8: 8114C114
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 0000000811EC: BF8700B9
	s_cmp_lg_u32 s20, 0                                        // 0000000811F0: BF078014
	s_waitcnt lgkmcnt(0)                                       // 0000000811F4: BF89FC07
	v_mul_hi_u32 v20, s25, v17                                 // 0000000811F8: D72D0014 00022219
	v_add_nc_u32_e32 v20, v17, v20                             // 000000081200: 4A282911
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000081204: BF870091
	v_lshrrev_b32_e32 v20, s21, v20                            // 000000081208: 32282815
	v_mul_lo_u32 v22, v20, s24                                 // 00000008120C: D72C0016 00003114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000081214: BF870091
	v_sub_nc_u32_e32 v17, v17, v22                             // 000000081218: 4C222D11
	v_mad_u64_u32 v[22:23], null, v17, s23, v[3:4]             // 00000008121C: D6FE7C16 040C2F11
	v_mov_b32_e32 v17, v20                                     // 000000081224: 7E220314
	s_delay_alu instid0(VALU_DEP_2)                            // 000000081228: BF870002
	v_mov_b32_e32 v3, v22                                      // 00000008122C: 7E060316
	s_cbranch_scc1 65506                                       // 000000081230: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1abc>
	s_mov_b32 s4, 0                                            // 000000081234: BE840080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000081238: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 00000008123C: 916A047E
	s_cbranch_vccnz 37                                         // 000000081240: BFA40025 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1bd8>
	s_load_b128 s[4:7], s[0:1], 0x4c                           // 000000081244: F4080100 F800004C
	v_cmp_ne_u32_e32 vcc_lo, 1, v16                            // 00000008124C: 7C9A2081
	s_and_b32 vcc_lo, exec_lo, vcc_lo                          // 000000081250: 8B6A6A7E
	s_waitcnt lgkmcnt(0)                                       // 000000081254: BF89FC07
	v_mul_hi_u32 v3, s5, v21                                   // 000000081258: D72D0003 00022A05
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000081260: BF870091
	v_add_nc_u32_e32 v3, v21, v3                               // 000000081264: 4A060715
	v_lshrrev_b32_e32 v17, s6, v3                              // 000000081268: 32220606
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000008126C: BF870091
	v_mul_lo_u32 v3, v17, s4                                   // 000000081270: D72C0003 00000911
	v_sub_nc_u32_e32 v3, v21, v3                               // 000000081278: 4C060715
	s_delay_alu instid0(VALU_DEP_1)                            // 00000008127C: BF870001
	v_mul_lo_u32 v3, v3, s36                                   // 000000081280: D72C0003 00004903
	s_cbranch_vccnz 19                                         // 000000081288: BFA40013 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1bd8>
	s_load_b128 s[4:7], s[0:1], 0x58                           // 00000008128C: F4080100 F8000058
	s_waitcnt lgkmcnt(0)                                       // 000000081294: BF89FC07
	s_load_b32 s7, s[0:1], 0x110                               // 000000081298: F40001C0 F8000110
	v_mul_hi_u32 v16, s5, v17                                  // 0000000812A0: D72D0010 00022205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000812A8: BF870091
	v_add_nc_u32_e32 v16, v17, v16                             // 0000000812AC: 4A202111
	v_lshrrev_b32_e32 v16, s6, v16                             // 0000000812B0: 32202006
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000812B4: BF870091
	v_mul_lo_u32 v16, v16, s4                                  // 0000000812B8: D72C0010 00000910
	v_sub_nc_u32_e32 v20, v17, v16                             // 0000000812C0: 4C282111
	s_waitcnt lgkmcnt(0)                                       // 0000000812C4: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000812C8: BF870091
	v_mad_u64_u32 v[16:17], null, v20, s7, v[3:4]              // 0000000812CC: D6FE7C10 040C0F14
	v_mov_b32_e32 v3, v16                                      // 0000000812D4: 7E060310
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000812D8: BF870091
	v_and_b32_e32 v3, -4, v3                                   // 0000000812DC: 360606C4
	v_add_co_u32 v16, vcc_lo, v7, v3                           // 0000000812E0: D7006A10 00020707
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000812E8: BF870001
	v_add_co_ci_u32_e64 v17, null, 0, v8, vcc_lo               // 0000000812EC: D5207C11 01AA1080
	global_load_b32 v17, v[16:17], off                         // 0000000812F4: DC520000 117C0010
	s_or_b32 exec_lo, exec_lo, s22                             // 0000000812FC: 8C7E167E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000081300: BF870009
	s_or_b32 exec_lo, exec_lo, s9                              // 000000081304: 8C7E097E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000081308: BF870009
	s_or_b32 exec_lo, exec_lo, s8                              // 00000008130C: 8C7E087E
	v_cmp_u_f32_e32 vcc_lo, v11, v11                           // 000000081310: 7C30170B
	s_waitcnt vmcnt(0)                                         // 000000081314: BF8903F7
	v_cmp_gt_f32_e64 s4, v11, v18                              // 000000081318: D4140004 0002250B
	s_or_b32 vcc_lo, vcc_lo, s4                                // 000000081320: 8C6A046A
	s_and_saveexec_b32 s8, s3                                  // 000000081324: BE882003
	s_cbranch_execz 35                                         // 000000081328: BFA50023 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1cb8>
	v_cmp_u_f32_e64 s3, v13, v13                               // 00000008132C: D4180003 00021B0D
	v_cmp_gt_f32_e64 s4, v13, v14                              // 000000081334: D4140004 00021D0D
	v_add_nc_u32_e32 v3, s30, v19                              // 00000008133C: 4A06261E
	s_mov_b32 s9, exec_lo                                      // 000000081340: BE89007E
	s_or_b32 s3, s3, s4                                        // 000000081344: 8C030403
	s_delay_alu instid0(VALU_DEP_1)                            // 000000081348: BF870001
	v_cmpx_gt_u32_e64 s12, v3                                  // 00000008134C: D4CC007E 0002060C
	s_cbranch_execz 21                                         // 000000081354: BFA50015 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1cac>
	v_cmp_u_f32_e64 s4, v9, v9                                 // 000000081358: D4180004 00021309
	v_cmp_gt_f32_e64 s5, v9, v17                               // 000000081360: D4140005 00022309
	v_cmp_u_f32_e64 s6, v12, v12                               // 000000081368: D4180006 0002190C
	v_cmp_gt_f32_e64 s7, v12, v15                              // 000000081370: D4140007 00021F0C
	v_add_nc_u32_e32 v3, s30, v3                               // 000000081378: 4A06061E
	s_or_b32 s4, s4, s5                                        // 00000008137C: 8C040504
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 000000081380: BF8704A9
	v_cndmask_b32_e64 v16, v17, v9, s4                         // 000000081384: D5010010 00121311
	s_or_b32 s4, s6, s7                                        // 00000008138C: 8C040706
	v_cndmask_b32_e64 v12, v15, v12, s4                        // 000000081390: D501000C 0012190F
	v_cmp_gt_u32_e64 s4, s12, v3                               // 000000081398: D44C0004 0002060C
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000813A0: BF870001
	v_cndmask_b32_e64 v9, v9, v16, s4                          // 0000000813A4: D5010009 00122109
	s_or_b32 exec_lo, exec_lo, s9                              // 0000000813AC: 8C7E097E
	v_cndmask_b32_e64 v13, v14, v13, s3                        // 0000000813B0: D501000D 000E1B0E
	s_or_b32 exec_lo, exec_lo, s8                              // 0000000813B8: 8C7E087E
	v_cndmask_b32_e32 v11, v18, v11, vcc_lo                    // 0000000813BC: 02161712
	s_or_b32 exec_lo, exec_lo, s10                             // 0000000813C0: 8C7E0A7E
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)// 0000000813C4: BF8700C1
	v_cmp_u_f32_e32 vcc_lo, v11, v11                           // 0000000813C8: 7C30170B
	v_cmp_gt_f32_e64 s3, v11, v13                              // 0000000813CC: D4140003 00021B0B
	s_or_b32 vcc_lo, vcc_lo, s3                                // 0000000813D4: 8C6A036A
	v_cndmask_b32_e32 v3, v13, v11, vcc_lo                     // 0000000813D8: 0206170D
	v_cmp_u_f32_e32 vcc_lo, v3, v3                             // 0000000813DC: 7C300703
	v_cmp_gt_f32_e64 s3, v3, v12                               // 0000000813E0: D4140003 00021903
	s_or_b32 vcc_lo, vcc_lo, s3                                // 0000000813E8: 8C6A036A
	v_cndmask_b32_e32 v3, v12, v3, vcc_lo                      // 0000000813EC: 0206070C
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000813F0: BF870001
	v_cmp_u_f32_e32 vcc_lo, v3, v3                             // 0000000813F4: 7C300703
	v_cmp_gt_f32_e64 s3, v3, v9                                // 0000000813F8: D4140003 00021303
	s_or_b32 vcc_lo, vcc_lo, s3                                // 000000081400: 8C6A036A
	v_cndmask_b32_e32 v11, v9, v3, vcc_lo                      // 000000081404: 02160709
	s_branch 249                                               // 000000081408: BFA000F9 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x20f0>
	v_dual_mov_b32 v11, s33 :: v_dual_mov_b32 v12, s33         // 00000008140C: CA100021 0B0C0021
	v_mov_b32_e32 v17, v2                                      // 000000081414: 7E220302
	v_mov_b32_e32 v13, s33                                     // 000000081418: 7E1A0221
	v_mov_b32_e32 v9, s33                                      // 00000008141C: 7E120221
	s_and_saveexec_b32 s9, s2                                  // 000000081420: BE892002
	s_cbranch_execz 105                                        // 000000081424: BFA50069 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1ecc>
	v_add_nc_u32_e32 v3, s30, v5                               // 000000081428: 4A060A1E
	v_lshl_add_u32 v11, s30, 1, v2                             // 00000008142C: D646000B 0409021E
	v_mul_lo_u32 v5, s34, v6                                   // 000000081434: D72C0005 00020C22
	v_mul_lo_u32 v6, s34, v2                                   // 00000008143C: D72C0006 00020422
	v_dual_mov_b32 v9, s33 :: v_dual_mov_b32 v12, s33          // 000000081444: CA100021 090C0021
	v_add3_u32 v3, v3, v4, s35                                 // 00000008144C: D6550003 008E0903
	v_mul_lo_u32 v18, s34, v11                                 // 000000081454: D72C0012 00021622
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v13, s33            // 00000008145C: CA100080 040C0021
	v_mov_b32_e32 v11, s33                                     // 000000081464: 7E160221
	s_delay_alu instid0(VALU_DEP_4)                            // 000000081468: BF870004
	v_mul_lo_u32 v19, s34, v3                                  // 00000008146C: D72C0013 00020622
	v_mov_b32_e32 v17, v2                                      // 000000081474: 7E220302
	s_mul_i32 s3, s30, s34                                     // 000000081478: 9603221E
	s_waitcnt lgkmcnt(0)                                       // 00000008147C: BF89FC07
	s_mov_b32 s20, 0                                           // 000000081480: BE940080
	s_lshl_b32 s10, s3, 2                                      // 000000081484: 840A8203
	s_add_i32 s21, s30, s30                                    // 000000081488: 81151E1E
	s_mov_b32 s22, 0                                           // 00000008148C: BE960080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000081490: BF870009
	v_add_nc_u32_e32 v3, s22, v6                               // 000000081494: 4A060C16
	v_add3_u32 v17, s21, s21, v17                              // 000000081498: D6550011 04442A15
	v_cmp_u_f32_e64 s4, v12, v12                               // 0000000814A0: D4180004 0002190C
	v_cmp_u_f32_e64 s3, v13, v13                               // 0000000814A8: D4180003 00021B0D
	v_cmp_u_f32_e64 s5, v9, v9                                 // 0000000814B0: D4180005 00021309
	v_lshlrev_b64 v[14:15], 2, v[3:4]                          // 0000000814B8: D73C000E 00020682
	v_add_nc_u32_e32 v3, s22, v19                              // 0000000814C0: 4A062616
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)// 0000000814C4: BF870221
	v_lshlrev_b64 v[20:21], 2, v[3:4]                          // 0000000814C8: D73C0014 00020682
	v_add_nc_u32_e32 v3, s22, v18                              // 0000000814D0: 4A062416
	v_add_co_u32 v14, vcc_lo, v7, v14                          // 0000000814D4: D7006A0E 00021D07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 0000000814DC: BF870191
	v_add_co_ci_u32_e64 v15, null, v8, v15, vcc_lo             // 0000000814E0: D5207C0F 01AA1F08
	v_lshlrev_b64 v[22:23], 2, v[3:4]                          // 0000000814E8: D73C0016 00020682
	v_add_nc_u32_e32 v3, s22, v5                               // 0000000814F0: 4A060A16
	s_add_i32 s22, s22, s10                                    // 0000000814F4: 81160A16
	global_load_b32 v24, v[14:15], off                         // 0000000814F8: DC520000 187C000E
	v_add_co_u32 v14, vcc_lo, v7, v20                          // 000000081500: D7006A0E 00022907
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 000000081508: BF8700B1
	v_add_co_ci_u32_e64 v15, null, v8, v21, vcc_lo             // 00000008150C: D5207C0F 01AA2B08
	v_lshlrev_b64 v[20:21], 2, v[3:4]                          // 000000081514: D73C0014 00020682
	v_add_co_u32 v22, vcc_lo, v7, v22                          // 00000008151C: D7006A16 00022D07
	v_add_co_ci_u32_e64 v23, null, v8, v23, vcc_lo             // 000000081524: D5207C17 01AA2F08
	v_add_nc_u32_e32 v3, s31, v17                              // 00000008152C: 4A06221F
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000081530: BF870094
	v_add_co_u32 v20, vcc_lo, v7, v20                          // 000000081534: D7006A14 00022907
	v_add_co_ci_u32_e64 v21, null, v8, v21, vcc_lo             // 00000008153C: D5207C15 01AA2B08
	s_clause 0x2                                               // 000000081544: BF850002
	global_load_b32 v14, v[14:15], off                         // 000000081548: DC520000 0E7C000E
	global_load_b32 v15, v[22:23], off                         // 000000081550: DC520000 0F7C0016
	global_load_b32 v16, v[20:21], off                         // 000000081558: DC520000 107C0014
	v_cmp_u_f32_e32 vcc_lo, v11, v11                           // 000000081560: 7C30170B
	v_cmp_le_u32_e64 s6, s12, v3                               // 000000081564: D44B0006 0002060C
	s_waitcnt vmcnt(3)                                         // 00000008156C: BF890FF7
	v_cmp_gt_f32_e64 s7, v11, v24                              // 000000081570: D4140007 0002310B
	s_or_b32 vcc_lo, vcc_lo, s7                                // 000000081578: 8C6A076A
	v_cndmask_b32_e32 v11, v24, v11, vcc_lo                    // 00000008157C: 02161718
	s_waitcnt vmcnt(2)                                         // 000000081580: BF890BF7
	v_cmp_gt_f32_e64 s8, v13, v14                              // 000000081584: D4140008 00021D0D
	s_waitcnt vmcnt(1)                                         // 00000008158C: BF8907F7
	v_cmp_gt_f32_e32 vcc_lo, v12, v15                          // 000000081590: 7C281F0C
	s_waitcnt vmcnt(0)                                         // 000000081594: BF8903F7
	v_cmp_gt_f32_e64 s7, v9, v16                               // 000000081598: D4140007 00022109
	s_or_b32 s3, s3, s8                                        // 0000000815A0: 8C030803
	s_or_b32 vcc_lo, s4, vcc_lo                                // 0000000815A4: 8C6A6A04
	v_cndmask_b32_e64 v13, v14, v13, s3                        // 0000000815A8: D501000D 000E1B0E
	v_cndmask_b32_e32 v12, v15, v12, vcc_lo                    // 0000000815B0: 0218190F
	s_or_b32 vcc_lo, s5, s7                                    // 0000000815B4: 8C6A0705
	s_or_b32 s20, s6, s20                                      // 0000000815B8: 8C141406
	v_cndmask_b32_e32 v9, v16, v9, vcc_lo                      // 0000000815BC: 02121310
	s_and_not1_b32 exec_lo, exec_lo, s20                       // 0000000815C0: 917E147E
	s_cbranch_execnz 65458                                     // 0000000815C4: BFA6FFB2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1d90>
	s_or_b32 exec_lo, exec_lo, s20                             // 0000000815C8: 8C7E147E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 0000000815CC: BF870499
	s_or_b32 exec_lo, exec_lo, s9                              // 0000000815D0: 8C7E097E
	s_mov_b32 s8, exec_lo                                      // 0000000815D4: BE88007E
	v_cmpx_gt_u32_e64 s12, v17                                 // 0000000815D8: D4CC007E 0002220C
	s_cbranch_execz 113                                        // 0000000815E0: BFA50071 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x20a8>
	v_mul_lo_u32 v3, v17, s34                                  // 0000000815E4: D72C0003 00004511
	v_mov_b32_e32 v4, 0                                        // 0000000815EC: 7E080280
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000815F0: BF870121
	v_lshlrev_b64 v[5:6], 2, v[3:4]                            // 0000000815F4: D73C0005 00020682
	v_add_nc_u32_e32 v3, s30, v17                              // 0000000815FC: 4A06221E
	v_add_co_u32 v5, vcc_lo, v7, v5                            // 000000081600: D7006A05 00020B07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 000000081608: BF870191
	v_add_co_ci_u32_e64 v6, null, v8, v6, vcc_lo               // 00000008160C: D5207C06 01AA0D08
	v_cmp_gt_u32_e32 vcc_lo, s12, v3                           // 000000081614: 7C98060C
	global_load_b32 v5, v[5:6], off                            // 000000081618: DC520000 057C0005
	v_add_nc_u32_e32 v6, s30, v3                               // 000000081620: 4A0C061E
	s_and_saveexec_b32 s4, vcc_lo                              // 000000081624: BE84206A
	s_cbranch_execz 51                                         // 000000081628: BFA50033 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1ff8>
	v_mul_lo_u32 v3, v3, s34                                   // 00000008162C: D72C0003 00004503
	s_mov_b32 s5, exec_lo                                      // 000000081634: BE85007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000081638: BF870091
	v_lshlrev_b64 v[3:4], 2, v[3:4]                            // 00000008163C: D73C0003 00020682
	v_add_co_u32 v3, s3, v7, v3                                // 000000081644: D7000303 00020707
	s_delay_alu instid0(VALU_DEP_1)                            // 00000008164C: BF870001
	v_add_co_ci_u32_e64 v4, null, v8, v4, s3                   // 000000081650: D5207C04 000E0908
	global_load_b32 v14, v[3:4], off                           // 000000081658: DC520000 0E7C0003
	v_cmpx_gt_u32_e64 s12, v6                                  // 000000081660: D4CC007E 00020C0C
	s_xor_b32 s5, exec_lo, s5                                  // 000000081668: 8D05057E
	s_cbranch_execz 32                                         // 00000008166C: BFA50020 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1ff0>
	v_mul_lo_u32 v3, v6, s34                                   // 000000081670: D72C0003 00004506
	v_mov_b32_e32 v4, 0                                        // 000000081678: 7E080280
	s_mov_b32 s6, exec_lo                                      // 00000008167C: BE86007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000081680: BF870121
	v_lshlrev_b64 v[17:18], 2, v[3:4]                          // 000000081684: D73C0011 00020682
	v_add_nc_u32_e32 v3, s30, v6                               // 00000008168C: 4A060C1E
	v_add_co_u32 v17, s3, v7, v17                              // 000000081690: D7000311 00022307
	s_delay_alu instid0(VALU_DEP_1)                            // 000000081698: BF870001
	v_add_co_ci_u32_e64 v18, null, v8, v18, s3                 // 00000008169C: D5207C12 000E2508
	global_load_b32 v15, v[17:18], off                         // 0000000816A4: DC520000 0F7C0011
	v_cmpx_gt_u32_e64 s12, v3                                  // 0000000816AC: D4CC007E 0002060C
	s_xor_b32 s6, exec_lo, s6                                  // 0000000816B4: 8D06067E
	s_cbranch_execz 12                                         // 0000000816B8: BFA5000C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1fec>
	v_mul_lo_u32 v3, v3, s34                                   // 0000000816BC: D72C0003 00004503
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000816C4: BF870091
	v_lshlrev_b64 v[3:4], 2, v[3:4]                            // 0000000816C8: D73C0003 00020682
	v_add_co_u32 v3, s3, v7, v3                                // 0000000816D0: D7000303 00020707
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000816D8: BF870001
	v_add_co_ci_u32_e64 v4, null, v8, v4, s3                   // 0000000816DC: D5207C04 000E0908
	global_load_b32 v16, v[3:4], off                           // 0000000816E4: DC520000 107C0003
	s_or_b32 exec_lo, exec_lo, s6                              // 0000000816EC: 8C7E067E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000816F0: BF870009
	s_or_b32 exec_lo, exec_lo, s5                              // 0000000816F4: 8C7E057E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000816F8: BF870009
	s_or_b32 exec_lo, exec_lo, s4                              // 0000000816FC: 8C7E047E
	v_cmp_u_f32_e64 s3, v11, v11                               // 000000081700: D4180003 0002170B
	s_waitcnt vmcnt(0)                                         // 000000081708: BF8903F7
	v_cmp_gt_f32_e64 s4, v11, v5                               // 00000008170C: D4140004 00020B0B
	s_or_b32 s3, s3, s4                                        // 000000081714: 8C030403
	s_and_saveexec_b32 s9, vcc_lo                              // 000000081718: BE89206A
	s_cbranch_execz 31                                         // 00000008171C: BFA5001F <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x209c>
	v_cmp_u_f32_e32 vcc_lo, v13, v13                           // 000000081720: 7C301B0D
	v_cmp_gt_f32_e64 s4, v13, v14                              // 000000081724: D4140004 00021D0D
	s_mov_b32 s10, exec_lo                                     // 00000008172C: BE8A007E
	s_or_b32 vcc_lo, vcc_lo, s4                                // 000000081730: 8C6A046A
	v_cmpx_gt_u32_e64 s12, v6                                  // 000000081734: D4CC007E 00020C0C
	s_cbranch_execz 21                                         // 00000008173C: BFA50015 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2094>
	v_cmp_u_f32_e64 s4, v9, v9                                 // 000000081740: D4180004 00021309
	v_cmp_gt_f32_e64 s5, v9, v16                               // 000000081748: D4140005 00022109
	v_cmp_u_f32_e64 s6, v12, v12                               // 000000081750: D4180006 0002190C
	v_cmp_gt_f32_e64 s7, v12, v15                              // 000000081758: D4140007 00021F0C
	v_add_nc_u32_e32 v3, s30, v6                               // 000000081760: 4A060C1E
	s_or_b32 s4, s4, s5                                        // 000000081764: 8C040504
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 000000081768: BF8704A9
	v_cndmask_b32_e64 v4, v16, v9, s4                          // 00000008176C: D5010004 00121310
	s_or_b32 s4, s6, s7                                        // 000000081774: 8C040706
	v_cndmask_b32_e64 v12, v15, v12, s4                        // 000000081778: D501000C 0012190F
	v_cmp_gt_u32_e64 s4, s12, v3                               // 000000081780: D44C0004 0002060C
	s_delay_alu instid0(VALU_DEP_1)                            // 000000081788: BF870001
	v_cndmask_b32_e64 v9, v9, v4, s4                           // 00000008178C: D5010009 00120909
	s_or_b32 exec_lo, exec_lo, s10                             // 000000081794: 8C7E0A7E
	v_cndmask_b32_e32 v13, v14, v13, vcc_lo                    // 000000081798: 021A1B0E
	s_or_b32 exec_lo, exec_lo, s9                              // 00000008179C: 8C7E097E
	v_cndmask_b32_e64 v11, v5, v11, s3                         // 0000000817A0: D501000B 000E1705
	s_or_b32 exec_lo, exec_lo, s8                              // 0000000817A8: 8C7E087E
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)// 0000000817AC: BF8700C1
	v_cmp_u_f32_e32 vcc_lo, v11, v11                           // 0000000817B0: 7C30170B
	v_cmp_gt_f32_e64 s3, v11, v13                              // 0000000817B4: D4140003 00021B0B
	s_or_b32 vcc_lo, vcc_lo, s3                                // 0000000817BC: 8C6A036A
	v_cndmask_b32_e32 v3, v13, v11, vcc_lo                     // 0000000817C0: 0206170D
	v_cmp_u_f32_e32 vcc_lo, v3, v3                             // 0000000817C4: 7C300703
	v_cmp_gt_f32_e64 s3, v3, v12                               // 0000000817C8: D4140003 00021903
	s_or_b32 vcc_lo, vcc_lo, s3                                // 0000000817D0: 8C6A036A
	v_cndmask_b32_e32 v3, v12, v3, vcc_lo                      // 0000000817D4: 0206070C
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000817D8: BF870001
	v_cmp_u_f32_e32 vcc_lo, v3, v3                             // 0000000817DC: 7C300703
	v_cmp_gt_f32_e64 s3, v3, v9                                // 0000000817E0: D4140003 00021303
	s_or_b32 vcc_lo, vcc_lo, s3                                // 0000000817E8: 8C6A036A
	v_cndmask_b32_e32 v11, v9, v3, vcc_lo                      // 0000000817EC: 02160709
	s_cbranch_execnz 227                                       // 0000000817F0: BFA600E3 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2480>
	v_dual_mov_b32 v11, s33 :: v_dual_mov_b32 v12, s33         // 0000000817F4: CA100021 0B0C0021
	v_mov_b32_e32 v3, v2                                       // 0000000817FC: 7E060302
	v_mov_b32_e32 v13, s33                                     // 000000081800: 7E1A0221
	v_mov_b32_e32 v9, s33                                      // 000000081804: 7E120221
	s_and_saveexec_b32 s9, s2                                  // 000000081808: BE892002
	s_cbranch_execz 91                                         // 00000008180C: BFA5005B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x227c>
	v_dual_mov_b32 v9, s33 :: v_dual_mov_b32 v4, 0             // 000000081810: CA100021 09040080
	v_dual_mov_b32 v12, s33 :: v_dual_mov_b32 v13, s33         // 000000081818: CA100021 0C0C0021
	v_mov_b32_e32 v11, s33                                     // 000000081820: 7E160221
	v_mov_b32_e32 v3, v2                                       // 000000081824: 7E060302
	s_waitcnt lgkmcnt(0)                                       // 000000081828: BF89FC07
	s_lshl_b32 s20, s30, 1                                     // 00000008182C: 8414811E
	s_mov_b32 s10, 0                                           // 000000081830: BE8A0080
	s_add_i32 s21, s30, s30                                    // 000000081834: 81151E1E
	v_lshlrev_b64 v[5:6], 2, v[3:4]                            // 000000081838: D73C0005 00020682
	v_dual_mov_b32 v18, v4 :: v_dual_add_nc_u32 v17, s30, v3   // 000000081840: CA200104 1210061E
	v_dual_mov_b32 v15, v4 :: v_dual_add_nc_u32 v14, s20, v3   // 000000081848: CA200104 0F0E0614
	v_add_nc_u32_e32 v3, s31, v3                               // 000000081850: 4A06061F
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)// 000000081854: BF870214
	v_add_co_u32 v5, vcc_lo, v7, v5                            // 000000081858: D7006A05 00020B07
	v_lshlrev_b64 v[18:19], 2, v[17:18]                        // 000000081860: D73C0012 00022282
	v_add_co_ci_u32_e64 v6, null, v8, v6, vcc_lo               // 000000081868: D5207C06 01AA0D08
	v_lshlrev_b64 v[14:15], 2, v[14:15]                        // 000000081870: D73C000E 00021C82
	v_lshlrev_b64 v[20:21], 2, v[3:4]                          // 000000081878: D73C0014 00020682
	v_add3_u32 v3, s21, s30, v17                               // 000000081880: D6550003 04443C15
	global_load_b32 v22, v[5:6], off                           // 000000081888: DC520000 167C0005
	v_add_co_u32 v5, vcc_lo, v7, v18                           // 000000081890: D7006A05 00022507
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000081898: BF8700A1
	v_add_co_ci_u32_e64 v6, null, v8, v19, vcc_lo              // 00000008189C: D5207C06 01AA2708
	v_add_co_u32 v18, vcc_lo, v7, v14                          // 0000000818A4: D7006A12 00021D07
	v_add_co_ci_u32_e64 v19, null, v8, v15, vcc_lo             // 0000000818AC: D5207C13 01AA1F08
	v_add_co_u32 v20, vcc_lo, v7, v20                          // 0000000818B4: D7006A14 00022907
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000818BC: BF870001
	v_add_co_ci_u32_e64 v21, null, v8, v21, vcc_lo             // 0000000818C0: D5207C15 01AA2B08
	s_clause 0x2                                               // 0000000818C8: BF850002
	global_load_b32 v14, v[5:6], off                           // 0000000818CC: DC520000 0E7C0005
	global_load_b32 v15, v[18:19], off                         // 0000000818D4: DC520000 0F7C0012
	global_load_b32 v16, v[20:21], off                         // 0000000818DC: DC520000 107C0014
	v_cmp_u_f32_e32 vcc_lo, v11, v11                           // 0000000818E4: 7C30170B
	v_cmp_u_f32_e64 s2, v13, v13                               // 0000000818E8: D4180002 00021B0D
	v_cmp_u_f32_e64 s3, v12, v12                               // 0000000818F0: D4180003 0002190C
	v_cmp_u_f32_e64 s4, v9, v9                                 // 0000000818F8: D4180004 00021309
	v_add_nc_u32_e32 v5, s31, v3                               // 000000081900: 4A0A061F
	s_delay_alu instid0(VALU_DEP_1)                            // 000000081904: BF870001
	v_cmp_le_u32_e64 s5, s12, v5                               // 000000081908: D44B0005 00020A0C
	s_waitcnt vmcnt(3)                                         // 000000081910: BF890FF7
	v_cmp_gt_f32_e64 s6, v11, v22                              // 000000081914: D4140006 00022D0B
	s_or_b32 vcc_lo, vcc_lo, s6                                // 00000008191C: 8C6A066A
	v_cndmask_b32_e32 v11, v22, v11, vcc_lo                    // 000000081920: 02161716
	s_waitcnt vmcnt(2)                                         // 000000081924: BF890BF7
	v_cmp_gt_f32_e64 s7, v13, v14                              // 000000081928: D4140007 00021D0D
	s_waitcnt vmcnt(1)                                         // 000000081930: BF8907F7
	v_cmp_gt_f32_e64 s8, v12, v15                              // 000000081934: D4140008 00021F0C
	s_waitcnt vmcnt(0)                                         // 00000008193C: BF8903F7
	v_cmp_gt_f32_e32 vcc_lo, v9, v16                           // 000000081940: 7C282109
	s_or_b32 s2, s2, s7                                        // 000000081944: 8C020702
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000081948: BF870009
	v_cndmask_b32_e64 v13, v14, v13, s2                        // 00000008194C: D501000D 000A1B0E
	s_or_b32 s2, s3, s8                                        // 000000081954: 8C020803
	s_or_b32 vcc_lo, s4, vcc_lo                                // 000000081958: 8C6A6A04
	v_cndmask_b32_e64 v12, v15, v12, s2                        // 00000008195C: D501000C 000A190F
	v_cndmask_b32_e32 v9, v16, v9, vcc_lo                      // 000000081964: 02121310
	s_or_b32 s10, s5, s10                                      // 000000081968: 8C0A0A05
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000008196C: BF870009
	s_and_not1_b32 exec_lo, exec_lo, s10                       // 000000081970: 917E0A7E
	s_cbranch_execnz 65456                                     // 000000081974: BFA6FFB0 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2138>
	s_or_b32 exec_lo, exec_lo, s10                             // 000000081978: 8C7E0A7E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 00000008197C: BF870499
	s_or_b32 exec_lo, exec_lo, s9                              // 000000081980: 8C7E097E
	s_mov_b32 s7, exec_lo                                      // 000000081984: BE87007E
	v_cmpx_gt_u32_e64 s12, v3                                  // 000000081988: D4CC007E 0002060C
	s_cbranch_execz 105                                        // 000000081990: BFA50069 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2438>
	v_mov_b32_e32 v4, 0                                        // 000000081994: 7E080280
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000081998: BF870121
	v_lshlrev_b64 v[5:6], 2, v[3:4]                            // 00000008199C: D73C0005 00020682
	v_add_nc_u32_e32 v3, s30, v3                               // 0000000819A4: 4A06061E
	v_add_co_u32 v5, vcc_lo, v7, v5                            // 0000000819A8: D7006A05 00020B07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 0000000819B0: BF870191
	v_add_co_ci_u32_e64 v6, null, v8, v6, vcc_lo               // 0000000819B4: D5207C06 01AA0D08
	v_cmp_gt_u32_e32 vcc_lo, s12, v3                           // 0000000819BC: 7C98060C
	global_load_b32 v17, v[5:6], off                           // 0000000819C0: DC520000 117C0005
	v_add_nc_u32_e32 v5, s30, v3                               // 0000000819C8: 4A0A061E
	s_and_saveexec_b32 s3, vcc_lo                              // 0000000819CC: BE83206A
	s_cbranch_execz 45                                         // 0000000819D0: BFA5002D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2388>
	v_lshlrev_b64 v[3:4], 2, v[3:4]                            // 0000000819D4: D73C0003 00020682
	s_mov_b32 s4, exec_lo                                      // 0000000819DC: BE84007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000819E0: BF870091
	v_add_co_u32 v3, s2, v7, v3                                // 0000000819E4: D7000203 00020707
	v_add_co_ci_u32_e64 v4, null, v8, v4, s2                   // 0000000819EC: D5207C04 000A0908
	global_load_b32 v14, v[3:4], off                           // 0000000819F4: DC520000 0E7C0003
	v_cmpx_gt_u32_e64 s12, v5                                  // 0000000819FC: D4CC007E 00020A0C
	s_xor_b32 s4, exec_lo, s4                                  // 000000081A04: 8D04047E
	s_cbranch_execz 29                                         // 000000081A08: BFA5001D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2380>
	v_mov_b32_e32 v6, 0                                        // 000000081A0C: 7E0C0280
	s_mov_b32 s5, exec_lo                                      // 000000081A10: BE85007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000081A14: BF870091
	v_lshlrev_b64 v[3:4], 2, v[5:6]                            // 000000081A18: D73C0003 00020A82
	v_add_co_u32 v3, s2, v7, v3                                // 000000081A20: D7000203 00020707
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 000000081A28: BF8700B1
	v_add_co_ci_u32_e64 v4, null, v8, v4, s2                   // 000000081A2C: D5207C04 000A0908
	global_load_b32 v15, v[3:4], off                           // 000000081A34: DC520000 0F7C0003
	v_add_nc_u32_e32 v3, s30, v5                               // 000000081A3C: 4A060A1E
	v_cmpx_gt_u32_e64 s12, v3                                  // 000000081A40: D4CC007E 0002060C
	s_xor_b32 s5, exec_lo, s5                                  // 000000081A48: 8D05057E
	s_cbranch_execz 11                                         // 000000081A4C: BFA5000B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x237c>
	v_mov_b32_e32 v4, v6                                       // 000000081A50: 7E080306
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000081A54: BF870091
	v_lshlrev_b64 v[3:4], 2, v[3:4]                            // 000000081A58: D73C0003 00020682
	v_add_co_u32 v3, s2, v7, v3                                // 000000081A60: D7000203 00020707
	s_delay_alu instid0(VALU_DEP_1)                            // 000000081A68: BF870001
	v_add_co_ci_u32_e64 v4, null, v8, v4, s2                   // 000000081A6C: D5207C04 000A0908
	global_load_b32 v16, v[3:4], off                           // 000000081A74: DC520000 107C0003
	s_or_b32 exec_lo, exec_lo, s5                              // 000000081A7C: 8C7E057E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000081A80: BF870009
	s_or_b32 exec_lo, exec_lo, s4                              // 000000081A84: 8C7E047E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000081A88: BF870009
	s_or_b32 exec_lo, exec_lo, s3                              // 000000081A8C: 8C7E037E
	v_cmp_u_f32_e64 s2, v11, v11                               // 000000081A90: D4180002 0002170B
	s_waitcnt vmcnt(0)                                         // 000000081A98: BF8903F7
	v_cmp_gt_f32_e64 s3, v11, v17                              // 000000081A9C: D4140003 0002230B
	s_or_b32 s2, s2, s3                                        // 000000081AA4: 8C020302
	s_and_saveexec_b32 s8, vcc_lo                              // 000000081AA8: BE88206A
	s_cbranch_execz 31                                         // 000000081AAC: BFA5001F <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x242c>
	v_cmp_u_f32_e32 vcc_lo, v13, v13                           // 000000081AB0: 7C301B0D
	v_cmp_gt_f32_e64 s3, v13, v14                              // 000000081AB4: D4140003 00021D0D
	s_mov_b32 s9, exec_lo                                      // 000000081ABC: BE89007E
	s_or_b32 vcc_lo, vcc_lo, s3                                // 000000081AC0: 8C6A036A
	v_cmpx_gt_u32_e64 s12, v5                                  // 000000081AC4: D4CC007E 00020A0C
	s_cbranch_execz 21                                         // 000000081ACC: BFA50015 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2424>
	v_cmp_u_f32_e64 s3, v9, v9                                 // 000000081AD0: D4180003 00021309
	v_cmp_gt_f32_e64 s4, v9, v16                               // 000000081AD8: D4140004 00022109
	v_cmp_u_f32_e64 s5, v12, v12                               // 000000081AE0: D4180005 0002190C
	v_cmp_gt_f32_e64 s6, v12, v15                              // 000000081AE8: D4140006 00021F0C
	v_add_nc_u32_e32 v3, s30, v5                               // 000000081AF0: 4A060A1E
	s_or_b32 s3, s3, s4                                        // 000000081AF4: 8C030403
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 000000081AF8: BF8704A9
	v_cndmask_b32_e64 v4, v16, v9, s3                          // 000000081AFC: D5010004 000E1310
	s_or_b32 s3, s5, s6                                        // 000000081B04: 8C030605
	v_cndmask_b32_e64 v12, v15, v12, s3                        // 000000081B08: D501000C 000E190F
	v_cmp_gt_u32_e64 s3, s12, v3                               // 000000081B10: D44C0003 0002060C
	s_delay_alu instid0(VALU_DEP_1)                            // 000000081B18: BF870001
	v_cndmask_b32_e64 v9, v9, v4, s3                           // 000000081B1C: D5010009 000E0909
	s_or_b32 exec_lo, exec_lo, s9                              // 000000081B24: 8C7E097E
	v_cndmask_b32_e32 v13, v14, v13, vcc_lo                    // 000000081B28: 021A1B0E
	s_or_b32 exec_lo, exec_lo, s8                              // 000000081B2C: 8C7E087E
	v_cndmask_b32_e64 v11, v17, v11, s2                        // 000000081B30: D501000B 000A1711
	s_or_b32 exec_lo, exec_lo, s7                              // 000000081B38: 8C7E077E
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)// 000000081B3C: BF8700C1
	v_cmp_u_f32_e32 vcc_lo, v11, v11                           // 000000081B40: 7C30170B
	v_cmp_gt_f32_e64 s2, v11, v13                              // 000000081B44: D4140002 00021B0B
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000081B4C: 8C6A026A
	v_cndmask_b32_e32 v3, v13, v11, vcc_lo                     // 000000081B50: 0206170D
	v_cmp_u_f32_e32 vcc_lo, v3, v3                             // 000000081B54: 7C300703
	v_cmp_gt_f32_e64 s2, v3, v12                               // 000000081B58: D4140002 00021903
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000081B60: 8C6A026A
	v_cndmask_b32_e32 v3, v12, v3, vcc_lo                      // 000000081B64: 0206070C
	s_delay_alu instid0(VALU_DEP_1)                            // 000000081B68: BF870001
	v_cmp_u_f32_e32 vcc_lo, v3, v3                             // 000000081B6C: 7C300703
	v_cmp_gt_f32_e64 s2, v3, v9                                // 000000081B70: D4140002 00021303
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000081B78: 8C6A026A
	v_cndmask_b32_e32 v11, v9, v3, vcc_lo                      // 000000081B7C: 02160709
	s_cbranch_execnz 200                                       // 000000081B80: BFA600C8 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x27a4>
	s_load_b32 s4, s[0:1], 0x4                                 // 000000081B84: F4000100 F8000004
	v_bfe_u32 v5, v7, 2, 2                                     // 000000081B8C: D6100005 02090507
	v_mov_b32_e32 v6, s12                                      // 000000081B94: 7E0C020C
	s_mov_b32 s5, exec_lo                                      // 000000081B98: BE85007E
	s_waitcnt lgkmcnt(0)                                       // 000000081B9C: BF89FC07
	v_mov_b32_e32 v4, s4                                       // 000000081BA0: 7E080204
	v_cmpx_ne_u32_e32 0, v5                                    // 000000081BA4: 7D9A0A80
	s_cbranch_execz 56                                         // 000000081BA8: BFA50038 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x258c>
	v_lshlrev_b32_e32 v4, 2, v5                                // 000000081BAC: 30080A82
	v_cmp_ge_u32_e32 vcc_lo, v1, v5                            // 000000081BB0: 7C9C0B01
	v_cmp_gt_u32_e64 s2, 4, v1                                 // 000000081BB4: D44C0002 00020284
	v_lshrrev_b32_e32 v3, 2, v7                                // 000000081BBC: 32060E82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000081BC0: BF870094
	v_sub_co_u32 v5, s3, v7, v4                                // 000000081BC4: D7010305 00020907
	v_subrev_co_ci_u32_e64 v8, null, 0, v8, s3                 // 000000081BCC: D5227C08 000E1080
	v_mov_b32_e32 v4, s4                                       // 000000081BD4: 7E080204
	s_and_b32 s3, vcc_lo, s2                                   // 000000081BD8: 8B03026A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000081BDC: BF870009
	s_and_saveexec_b32 s2, s3                                  // 000000081BE0: BE822003
	s_cbranch_execz 32                                         // 000000081BE4: BFA50020 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2568>
	v_cmp_eq_u32_e32 vcc_lo, 0, v0                             // 000000081BE8: 7C940080
	s_cmp_eq_u32 s17, 0                                        // 000000081BEC: BF068011
	v_mov_b32_e32 v4, s4                                       // 000000081BF0: 7E080204
	s_cselect_b32 s3, -1, 0                                    // 000000081BF4: 980380C1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)// 000000081BF8: BF8704D9
	s_or_b32 s3, vcc_lo, s3                                    // 000000081BFC: 8C03036A
	s_cmp_eq_u32 s18, 0                                        // 000000081C00: BF068012
	s_cselect_b32 s6, -1, 0                                    // 000000081C04: 980680C1
	s_cmp_eq_u32 s15, 0                                        // 000000081C08: BF06800F
	s_cselect_b32 s7, -1, 0                                    // 000000081C0C: 980780C1
	s_or_b32 s6, s7, s6                                        // 000000081C10: 8C060607
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000081C14: BF870499
	s_and_b32 s6, s3, s6                                       // 000000081C18: 8B060603
	s_and_saveexec_b32 s3, s6                                  // 000000081C1C: BE832006
	s_cbranch_execz 16                                         // 000000081C20: BFA50010 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2564>
	v_lshlrev_b32_e32 v4, 2, v1                                // 000000081C24: 30080282
	v_cmp_u_f32_e64 s6, s4, s4                                 // 000000081C28: D4180006 00000804
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000081C30: BF870092
	v_add_co_u32 v6, vcc_lo, v5, v4                            // 000000081C34: D7006A06 00020905
	v_add_co_ci_u32_e64 v7, null, 0, v8, vcc_lo                // 000000081C3C: D5207C07 01AA1080
	global_load_b32 v4, v[6:7], off                            // 000000081C44: DC520000 047C0006
	s_waitcnt vmcnt(0)                                         // 000000081C4C: BF8903F7
	v_cmp_gt_f32_e32 vcc_lo, s4, v4                            // 000000081C50: 7C280804
	s_or_b32 s6, s6, vcc_lo                                    // 000000081C54: 8C066A06
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000081C58: BF870009
	v_cndmask_b32_e64 v4, v4, s4, s6                           // 000000081C5C: D5010004 00180904
	s_or_b32 exec_lo, exec_lo, s3                              // 000000081C64: 8C7E037E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 000000081C68: BF8700B9
	s_or_b32 exec_lo, exec_lo, s2                              // 000000081C6C: 8C7E027E
	v_or_b32_e32 v3, -4, v3                                    // 000000081C70: 380606C4
	v_add_co_u32 v7, vcc_lo, v5, 16                            // 000000081C74: D7006A07 00012105
	v_add_co_ci_u32_e64 v8, null, 0, v8, vcc_lo                // 000000081C7C: D5207C08 01AA1080
	s_delay_alu instid0(VALU_DEP_3)                            // 000000081C84: BF870003
	v_add_nc_u32_e32 v6, s12, v3                               // 000000081C88: 4A0C060C
	s_or_b32 exec_lo, exec_lo, s5                              // 000000081C8C: 8C7E057E
	v_mov_b32_e32 v5, s4                                       // 000000081C90: 7E0A0204
	v_lshl_or_b32 v3, v2, 2, 3                                 // 000000081C94: D6560003 020D0502
	v_mov_b32_e32 v11, s4                                      // 000000081C9C: 7E160204
	v_mov_b32_e32 v9, s4                                       // 000000081CA0: 7E120204
	s_mov_b32 s10, exec_lo                                     // 000000081CA4: BE8A007E
	s_delay_alu instid0(VALU_DEP_3)                            // 000000081CA8: BF870003
	v_cmpx_lt_u32_e64 v3, v6                                   // 000000081CAC: D4C9007E 00020D03
	s_cbranch_execz 64                                         // 000000081CB4: BFA50040 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x26b8>
	s_load_b32 s12, s[0:1], 0x14                               // 000000081CB8: F4000300 F8000014
	v_mov_b32_e32 v5, s4                                       // 000000081CC0: 7E0A0204
	v_mov_b32_e32 v3, 0                                        // 000000081CC4: 7E060280
	v_mov_b32_e32 v11, s4                                      // 000000081CC8: 7E160204
	v_mov_b32_e32 v9, s4                                       // 000000081CCC: 7E120204
	s_mov_b32 s20, 0                                           // 000000081CD0: BE940080
	s_set_inst_prefetch_distance 0x1                           // 000000081CD4: BF840001
	s_nop 0                                                    // 000000081CD8: BF800000
	s_nop 0                                                    // 000000081CDC: BF800000
	s_nop 0                                                    // 000000081CE0: BF800000
	s_nop 0                                                    // 000000081CE4: BF800000
	s_nop 0                                                    // 000000081CE8: BF800000
	s_nop 0                                                    // 000000081CEC: BF800000
	s_nop 0                                                    // 000000081CF0: BF800000
	s_nop 0                                                    // 000000081CF4: BF800000
	s_nop 0                                                    // 000000081CF8: BF800000
	s_nop 0                                                    // 000000081CFC: BF800000
	v_lshlrev_b64 v[12:13], 4, v[2:3]                          // 000000081D00: D73C000C 00020484
	v_cmp_u_f32_e64 s2, v5, v5                                 // 000000081D08: D4180002 00020B05
	v_cmp_u_f32_e64 s3, v11, v11                               // 000000081D10: D4180003 0002170B
	v_cmp_u_f32_e64 s4, v9, v9                                 // 000000081D18: D4180004 00021309
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000081D20: BF870094
	v_add_co_u32 v12, vcc_lo, v7, v12                          // 000000081D24: D7006A0C 00021907
	v_add_co_ci_u32_e64 v13, null, v8, v13, vcc_lo             // 000000081D2C: D5207C0D 01AA1B08
	v_cmp_u_f32_e32 vcc_lo, v4, v4                             // 000000081D34: 7C300904
	global_load_b128 v[12:15], v[12:13], off                   // 000000081D38: DC5E0000 0C7C000C
	s_waitcnt vmcnt(0)                                         // 000000081D40: BF8903F7
	v_cmp_gt_f32_e64 s6, v4, v12                               // 000000081D44: D4140006 00021904
	v_cmp_gt_f32_e64 s7, v5, v13                               // 000000081D4C: D4140007 00021B05
	v_cmp_gt_f32_e64 s8, v11, v14                              // 000000081D54: D4140008 00021D0B
	v_cmp_gt_f32_e64 s9, v9, v15                               // 000000081D5C: D4140009 00021F09
	s_or_b32 vcc_lo, vcc_lo, s6                                // 000000081D64: 8C6A066A
	v_cndmask_b32_e32 v4, v12, v4, vcc_lo                      // 000000081D68: 0208090C
	s_or_b32 vcc_lo, s2, s7                                    // 000000081D6C: 8C6A0702
	s_waitcnt lgkmcnt(0)                                       // 000000081D70: BF89FC07
	v_dual_cndmask_b32 v5, v13, v5 :: v_dual_add_nc_u32 v2, s12, v2// 000000081D74: CA600B0D 0502040C
	s_or_b32 vcc_lo, s3, s8                                    // 000000081D7C: 8C6A0803
	v_cndmask_b32_e32 v11, v14, v11, vcc_lo                    // 000000081D80: 0216170E
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 000000081D84: BF870132
	v_lshl_or_b32 v16, v2, 2, 3                                // 000000081D88: D6560010 020D0502
	s_or_b32 vcc_lo, s4, s9                                    // 000000081D90: 8C6A0904
	v_cndmask_b32_e32 v9, v15, v9, vcc_lo                      // 000000081D94: 0212130F
	v_cmp_ge_u32_e64 s5, v16, v6                               // 000000081D98: D44E0005 00020D10
	s_or_b32 s20, s5, s20                                      // 000000081DA0: 8C141405
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000081DA4: BF870009
	s_and_not1_b32 exec_lo, exec_lo, s20                       // 000000081DA8: 917E147E
	s_cbranch_execnz 65492                                     // 000000081DAC: BFA6FFD4 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2600>
	s_set_inst_prefetch_distance 0x2                           // 000000081DB0: BF840002
	s_or_b32 exec_lo, exec_lo, s20                             // 000000081DB4: 8C7E147E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)// 000000081DB8: BF8704C9
	s_or_b32 exec_lo, exec_lo, s10                             // 000000081DBC: 8C7E0A7E
	v_cmp_eq_u32_e32 vcc_lo, 0, v0                             // 000000081DC0: 7C940080
	s_cmp_eq_u32 s17, 0                                        // 000000081DC4: BF068011
	s_cselect_b32 s2, -1, 0                                    // 000000081DC8: 980280C1
	s_or_b32 s2, vcc_lo, s2                                    // 000000081DCC: 8C02026A
	s_cmp_eq_u32 s18, 0                                        // 000000081DD0: BF068012
	s_cselect_b32 s3, -1, 0                                    // 000000081DD4: 980380C1
	s_cmp_eq_u32 s15, 0                                        // 000000081DD8: BF06800F
	s_cselect_b32 s4, -1, 0                                    // 000000081DDC: 980480C1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000081DE0: BF870499
	s_or_b32 s3, s4, s3                                        // 000000081DE4: 8C030304
	s_and_b32 s2, s2, s3                                       // 000000081DE8: 8B020302
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000081DEC: BF870009
	s_and_saveexec_b32 s3, s2                                  // 000000081DF0: BE832002
	s_cbranch_execz 25                                         // 000000081DF4: BFA50019 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x275c>
	v_and_b32_e32 v2, -4, v6                                   // 000000081DF8: 36040CC4
	s_mov_b32 s4, exec_lo                                      // 000000081DFC: BE84007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000081E00: BF870091
	v_add_nc_u32_e32 v2, v2, v1                                // 000000081E04: 4A040302
	v_cmpx_lt_u32_e64 v2, v6                                   // 000000081E08: D4C9007E 00020D02
	s_cbranch_execz 17                                         // 000000081E10: BFA50011 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2758>
	v_ashrrev_i32_e32 v3, 31, v2                               // 000000081E14: 3406049F
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000081E18: BF870091
	v_lshlrev_b64 v[2:3], 2, v[2:3]                            // 000000081E1C: D73C0002 00020482
	v_add_co_u32 v2, vcc_lo, v7, v2                            // 000000081E24: D7006A02 00020507
	s_delay_alu instid0(VALU_DEP_1)                            // 000000081E2C: BF870001
	v_add_co_ci_u32_e64 v3, null, v8, v3, vcc_lo               // 000000081E30: D5207C03 01AA0708
	v_cmp_u_f32_e32 vcc_lo, v4, v4                             // 000000081E38: 7C300904
	global_load_b32 v2, v[2:3], off                            // 000000081E3C: DC520000 027C0002
	s_waitcnt vmcnt(0)                                         // 000000081E44: BF8903F7
	v_cmp_gt_f32_e64 s2, v4, v2                                // 000000081E48: D4140002 00020504
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000081E50: 8C6A026A
	v_cndmask_b32_e32 v4, v2, v4, vcc_lo                       // 000000081E54: 02080902
	s_or_b32 exec_lo, exec_lo, s4                              // 000000081E58: 8C7E047E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000081E5C: BF870099
	s_or_b32 exec_lo, exec_lo, s3                              // 000000081E60: 8C7E037E
	v_cmp_u_f32_e32 vcc_lo, v4, v4                             // 000000081E64: 7C300904
	v_cmp_gt_f32_e64 s2, v4, v5                                // 000000081E68: D4140002 00020B04
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000081E70: 8C6A026A
	v_cndmask_b32_e32 v2, v5, v4, vcc_lo                       // 000000081E74: 02040905
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)// 000000081E78: BF8700C1
	v_cmp_u_f32_e32 vcc_lo, v2, v2                             // 000000081E7C: 7C300502
	v_cmp_gt_f32_e64 s2, v2, v11                               // 000000081E80: D4140002 00021702
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000081E88: 8C6A026A
	v_cndmask_b32_e32 v2, v11, v2, vcc_lo                      // 000000081E8C: 0204050B
	v_cmp_u_f32_e32 vcc_lo, v2, v2                             // 000000081E90: 7C300502
	v_cmp_gt_f32_e64 s2, v2, v9                                // 000000081E94: D4140002 00021302
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000081E9C: 8C6A026A
	v_cndmask_b32_e32 v11, v9, v2, vcc_lo                      // 000000081EA0: 02160509
	s_or_b32 exec_lo, exec_lo, s29                             // 000000081EA4: 8C7E1D7E
	s_cmp_eq_u32 s17, 0                                        // 000000081EA8: BF068011
	s_cselect_b32 s12, -1, 0                                   // 000000081EAC: 980C80C1
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000081EB0: BF870009
	s_and_b32 vcc_lo, exec_lo, s12                             // 000000081EB4: 8B6A0C7E
	s_cbranch_vccnz 70                                         // 000000081EB8: BFA40046 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x28d4>
	s_load_b32 s2, s[0:1], 0x2dc                               // 000000081EBC: F4000080 F80002DC
	v_lshlrev_b32_e32 v3, 2, v1                                // 000000081EC4: 30060282
	s_waitcnt lgkmcnt(0)                                       // 000000081EC8: BF89FC07
	s_and_b32 s3, s2, 0xffff                                   // 000000081ECC: 8B03FF02 0000FFFF
	s_lshr_b32 s2, s2, 16                                      // 000000081ED4: 85029002
	v_mul_u32_u24_e32 v2, s3, v0                               // 000000081ED8: 16040003
	s_cmp_lt_u32 s2, 2                                         // 000000081EDC: BF0A8202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000081EE0: BF870091
	v_lshlrev_b32_e32 v2, 2, v2                                // 000000081EE4: 30040482
	v_add3_u32 v2, 1, v2, v3                                   // 000000081EE8: D6550002 040E0481
	ds_store_b32 v2, v11                                       // 000000081EF0: D8340000 00000B02
	s_cbranch_scc1 54                                          // 000000081EF8: BFA20036 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x28d4>
	v_lshl_add_u32 v3, v1, 2, 1                                // 000000081EFC: D6460003 02050501
	s_and_b32 s4, 0xffff, s2                                   // 000000081F04: 8B0402FF 0000FFFF
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000081F0C: BF870009
	s_mov_b32 s5, s4                                           // 000000081F10: BE850004
	s_nop 0                                                    // 000000081F14: BF800000
	s_nop 0                                                    // 000000081F18: BF800000
	s_nop 0                                                    // 000000081F1C: BF800000
	s_nop 0                                                    // 000000081F20: BF800000
	s_nop 0                                                    // 000000081F24: BF800000
	s_nop 0                                                    // 000000081F28: BF800000
	s_nop 0                                                    // 000000081F2C: BF800000
	s_nop 0                                                    // 000000081F30: BF800000
	s_nop 0                                                    // 000000081F34: BF800000
	s_nop 0                                                    // 000000081F38: BF800000
	s_nop 0                                                    // 000000081F3C: BF800000
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000081F40: BF870009
	s_lshr_b32 s6, s5, 1                                       // 000000081F44: 85068105
	s_mov_b32 s7, exec_lo                                      // 000000081F48: BE87007E
	s_waitcnt lgkmcnt(0)                                       // 000000081F4C: BF89FC07
	s_barrier                                                  // 000000081F50: BFBD0000
	buffer_gl0_inv                                             // 000000081F54: E0AC0000 00000000
	v_cmpx_gt_u32_e64 s6, v0                                   // 000000081F5C: D4CC007E 00020006
	s_cbranch_execz 21                                         // 000000081F64: BFA50015 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x28bc>
	v_add_nc_u32_e32 v4, s6, v0                                // 000000081F68: 4A080006
	s_mov_b32 s8, exec_lo                                      // 000000081F6C: BE88007E
	s_delay_alu instid0(VALU_DEP_1)                            // 000000081F70: BF870001
	v_cmpx_gt_u32_e64 s4, v4                                   // 000000081F74: D4CC007E 00020804
	s_cbranch_execz 14                                         // 000000081F7C: BFA5000E <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x28b8>
	v_mul_u32_u24_e32 v4, s3, v4                               // 000000081F80: 16080803
	v_cmp_u_f32_e32 vcc_lo, v11, v11                           // 000000081F84: 7C30170B
	s_delay_alu instid0(VALU_DEP_2)                            // 000000081F88: BF870002
	v_lshl_add_u32 v4, v4, 2, v3                               // 000000081F8C: D6460004 040D0504
	ds_load_b32 v4, v4                                         // 000000081F94: D8D80000 04000004
	s_waitcnt lgkmcnt(0)                                       // 000000081F9C: BF89FC07
	v_cmp_gt_f32_e64 s2, v11, v4                               // 000000081FA0: D4140002 0002090B
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000081FA8: 8C6A026A
	v_cndmask_b32_e32 v11, v4, v11, vcc_lo                     // 000000081FAC: 02161704
	ds_store_b32 v2, v11                                       // 000000081FB0: D8340000 00000B02
	s_or_b32 exec_lo, exec_lo, s8                              // 000000081FB8: 8C7E087E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000081FBC: BF870009
	s_or_b32 exec_lo, exec_lo, s7                              // 000000081FC0: 8C7E077E
	s_cmp_gt_u32 s5, 3                                         // 000000081FC4: BF088305
	s_cbranch_scc0 2                                           // 000000081FC8: BFA10002 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x28d4>
	s_mov_b32 s5, s6                                           // 000000081FCC: BE850006
	s_branch 65499                                             // 000000081FD0: BFA0FFDB <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2840>
	s_cmp_eq_u32 s16, 0                                        // 000000081FD4: BF068010
	s_cselect_b32 s16, -1, 0                                   // 000000081FD8: 981080C1
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000081FDC: BF870009
	s_and_b32 vcc_lo, exec_lo, s16                             // 000000081FE0: 8B6A107E
	s_cbranch_vccnz 84                                         // 000000081FE4: BFA40054 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2a38>
	s_load_b32 s2, s[0:1], 0x2dc                               // 000000081FE8: F4000080 F80002DC
	s_waitcnt lgkmcnt(0)                                       // 000000081FF0: BF89FC07
	s_and_b32 s3, s2, 0xffff                                   // 000000081FF4: 8B03FF02 0000FFFF
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000081FFC: BF870009
	s_cmp_lt_u32 s3, 33                                        // 000000082000: BF0AA103
	s_cbranch_scc1 46                                          // 000000082004: BFA2002E <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x29c0>
	v_mul_u32_u24_e32 v2, s3, v0                               // 000000082008: 16040003
	v_lshlrev_b32_e32 v3, 2, v1                                // 00000008200C: 30060282
	s_cmp_lt_u32 s3, 64                                        // 000000082010: BF0AC003
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000082014: BF870092
	v_lshlrev_b32_e32 v2, 2, v2                                // 000000082018: 30040482
	v_add3_u32 v2, 1, v2, v3                                   // 00000008201C: D6550002 040E0481
	ds_store_b32 v2, v11                                       // 000000082024: D8340000 00000B02
	s_cbranch_scc1 35                                          // 00000008202C: BFA20023 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x29bc>
	s_mov_b32 s4, s3                                           // 000000082030: BE840003
	s_nop 0                                                    // 000000082034: BF800000
	s_nop 0                                                    // 000000082038: BF800000
	s_nop 0                                                    // 00000008203C: BF800000
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000082040: BF870009
	s_lshr_b32 s5, s4, 1                                       // 000000082044: 85058104
	s_waitcnt lgkmcnt(0)                                       // 000000082048: BF89FC07
	v_add_nc_u32_e32 v3, s5, v1                                // 00000008204C: 4A060205
	v_cmp_gt_u32_e32 vcc_lo, s5, v1                            // 000000082050: 7C980205
	s_barrier                                                  // 000000082054: BFBD0000
	buffer_gl0_inv                                             // 000000082058: E0AC0000 00000000
	v_cmp_gt_u32_e64 s2, s3, v3                                // 000000082060: D44C0002 00020603
	s_and_b32 s2, vcc_lo, s2                                   // 000000082068: 8B02026A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000008206C: BF870009
	s_and_saveexec_b32 s6, s2                                  // 000000082070: BE862002
	s_cbranch_execz 12                                         // 000000082074: BFA5000C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x29a8>
	v_lshl_add_u32 v3, s5, 2, v2                               // 000000082078: D6460003 04090405
	v_cmp_u_f32_e32 vcc_lo, v11, v11                           // 000000082080: 7C30170B
	ds_load_b32 v3, v3                                         // 000000082084: D8D80000 03000003
	s_waitcnt lgkmcnt(0)                                       // 00000008208C: BF89FC07
	v_cmp_gt_f32_e64 s2, v11, v3                               // 000000082090: D4140002 0002070B
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000082098: 8C6A026A
	v_cndmask_b32_e32 v11, v3, v11, vcc_lo                     // 00000008209C: 02161703
	ds_store_b32 v2, v11                                       // 0000000820A0: D8340000 00000B02
	s_or_b32 exec_lo, exec_lo, s6                              // 0000000820A8: 8C7E067E
	s_cmpk_gt_u32 s4, 0x7f                                     // 0000000820AC: B584007F
	s_cbranch_scc0 2                                           // 0000000820B0: BFA10002 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x29bc>
	s_mov_b32 s4, s5                                           // 0000000820B4: BE840005
	s_branch 65505                                             // 0000000820B8: BFA0FFE1 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2940>
	s_mov_b32 s3, 32                                           // 0000000820BC: BE8300A0
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000820C0: BF870009
	s_cmp_lt_u32 s3, 2                                         // 0000000820C4: BF0A8203
	s_waitcnt lgkmcnt(0)                                       // 0000000820C8: BF89FC07
	s_barrier                                                  // 0000000820CC: BFBD0000
	buffer_gl0_inv                                             // 0000000820D0: E0AC0000 00000000
	s_cbranch_scc1 23                                          // 0000000820D8: BFA20017 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2a38>
	v_mbcnt_lo_u32_b32 v2, -1, 0                               // 0000000820DC: D71F0002 000100C1
	s_mov_b32 s4, 1                                            // 0000000820E4: BE840081
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000820E8: BF870001
	v_sub_nc_u32_e32 v3, 32, v2                                // 0000000820EC: 4C0604A0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)// 0000000820F0: BF8701A1
	v_cmp_lt_i32_e32 vcc_lo, s4, v3                            // 0000000820F4: 7C820604
	v_cndmask_b32_e64 v4, 0, s4, vcc_lo                        // 0000000820F8: D5010004 01A80880
	v_cmp_u_f32_e32 vcc_lo, v11, v11                           // 000000082100: 7C30170B
	s_lshl_b32 s4, s4, 1                                       // 000000082104: 84048104
	s_delay_alu instid0(VALU_DEP_2)                            // 000000082108: BF870002
	v_add_lshl_u32 v4, v4, v2, 2                               // 00000008210C: D6470004 020A0504
	ds_bpermute_b32 v4, v4, v11                                // 000000082114: DACC0000 04000B04
	s_waitcnt lgkmcnt(0)                                       // 00000008211C: BF89FC07
	v_cmp_gt_f32_e64 s2, v11, v4                               // 000000082120: D4140002 0002090B
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000082128: 8C6A026A
	s_cmp_lt_i32 s4, s3                                        // 00000008212C: BF040304
	v_cndmask_b32_e32 v11, v4, v11, vcc_lo                     // 000000082130: 02161704
	s_cbranch_scc1 65518                                       // 000000082134: BFA2FFEE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x29f0>
	s_add_u32 s2, s0, 0x210                                    // 000000082138: 8002FF00 00000210
	s_addc_u32 s3, s1, 0                                       // 000000082140: 82038001
	s_and_not1_b32 vcc_lo, exec_lo, s28                        // 000000082144: 916A1C7E
	s_min_u32 s8, s19, 15                                      // 000000082148: 89888F13
	s_cbranch_vccnz 92                                         // 00000008214C: BFA4005C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2bc0>
	s_cmp_eq_u32 s11, 0                                        // 000000082150: BF06800B
	s_mov_b32 s9, 0                                            // 000000082154: BE890080
	s_cbranch_scc1 91                                          // 000000082158: BFA2005B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2bc8>
	s_add_i32 s17, s8, 1                                       // 00000008215C: 81118108
	s_cmp_eq_u32 s19, 2                                        // 000000082160: BF068213
	s_cbranch_scc1 90                                          // 000000082164: BFA2005A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2bd0>
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, v10             // 000000082168: CA100080 0202010A
	s_and_b32 s10, s17, 28                                     // 000000082170: 8B0A9C11
	s_waitcnt lgkmcnt(0)                                       // 000000082174: BF89FC07
	s_mov_b32 s20, 0                                           // 000000082178: BE940080
	s_mov_b64 s[4:5], s[0:1]                                   // 00000008217C: BE840100
	s_mov_b64 s[6:7], s[2:3]                                   // 000000082180: BE860102
	s_clause 0x1                                               // 000000082184: BF850001
	s_load_b256 s[36:43], s[4:5], 0x150                        // 000000082188: F40C0902 F8000150
	s_load_b128 s[24:27], s[4:5], 0x170                        // 000000082190: F4080602 F8000170
	s_clause 0x2                                               // 000000082198: BF850002
	s_load_b32 s21, s[6:7], null                               // 00000008219C: F4000543 F8000000
	s_load_b32 s22, s[6:7], 0x8                                // 0000000821A4: F4000583 F8000008
	s_load_b32 s23, s[6:7], 0x10                               // 0000000821AC: F40005C3 F8000010
	s_add_i32 s20, s20, 4                                      // 0000000821B4: 81148414
	s_waitcnt lgkmcnt(0)                                       // 0000000821B8: BF89FC07
	v_mul_hi_u32 v4, s37, v3                                   // 0000000821BC: D72D0004 00020625
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000821C4: BF870091
	v_add_nc_u32_e32 v4, v3, v4                                // 0000000821C8: 4A080903
	v_lshrrev_b32_e32 v4, s38, v4                              // 0000000821CC: 32080826
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000821D0: BF870121
	v_mul_hi_u32 v5, s40, v4                                   // 0000000821D4: D72D0005 00020828
	v_mul_lo_u32 v8, v4, s36                                   // 0000000821DC: D72C0008 00004904
	v_add_nc_u32_e32 v5, v4, v5                                // 0000000821E4: 4A0A0B04
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000821E8: BF870112
	v_sub_nc_u32_e32 v8, v3, v8                                // 0000000821EC: 4C101103
	v_lshrrev_b32_e32 v5, s41, v5                              // 0000000821F0: 320A0A29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000821F4: BF870112
	v_mul_lo_u32 v8, v8, s21                                   // 0000000821F8: D72C0008 00002B08
	v_mul_hi_u32 v6, s43, v5                                   // 000000082200: D72D0006 00020A2B
	v_mul_lo_u32 v9, v5, s39                                   // 000000082208: D72C0009 00004F05
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000082210: BF870112
	v_add_nc_u32_e32 v6, v5, v6                                // 000000082214: 4A0C0D05
	v_sub_nc_u32_e32 v4, v4, v9                                // 000000082218: 4C081304
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 00000008221C: BF870122
	v_lshrrev_b32_e32 v6, s24, v6                              // 000000082220: 320C0C18
	s_load_b32 s24, s[6:7], 0x18                               // 000000082224: F4000603 F8000018
	v_mul_lo_u32 v4, v4, s22                                   // 00000008222C: D72C0004 00002D04
	s_add_u32 s6, s6, 32                                       // 000000082234: 8006A006
	s_addc_u32 s7, s7, 0                                       // 000000082238: 82078007
	v_mul_hi_u32 v7, s26, v6                                   // 00000008223C: D72D0007 00020C1A
	s_add_u32 s4, s4, 48                                       // 000000082244: 8004B004
	s_addc_u32 s5, s5, 0                                       // 000000082248: 82058005
	s_cmp_lg_u32 s10, s20                                      // 00000008224C: BF07140A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000082250: BF870112
	v_add3_u32 v2, v8, v2, v4                                  // 000000082254: D6550002 04120508
	v_add_nc_u32_e32 v7, v6, v7                                // 00000008225C: 4A0E0F06
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000082260: BF870121
	v_lshrrev_b32_e32 v3, s27, v7                              // 000000082264: 32060E1B
	v_mul_lo_u32 v7, v6, s42                                   // 000000082268: D72C0007 00005506
	v_mul_lo_u32 v12, v3, s25                                  // 000000082270: D72C000C 00003303
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000082278: BF870112
	v_sub_nc_u32_e32 v5, v5, v7                                // 00000008227C: 4C0A0F05
	v_sub_nc_u32_e32 v6, v6, v12                               // 000000082280: 4C0C1906
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000082284: BF870122
	v_mul_lo_u32 v5, v5, s23                                   // 000000082288: D72C0005 00002F05
	s_waitcnt lgkmcnt(0)                                       // 000000082290: BF89FC07
	v_mul_lo_u32 v6, v6, s24                                   // 000000082294: D72C0006 00003106
	s_delay_alu instid0(VALU_DEP_1)                            // 00000008229C: BF870001
	v_add3_u32 v2, v5, v2, v6                                  // 0000000822A0: D6550002 041A0505
	s_cbranch_scc1 65462                                       // 0000000822A8: BFA2FFB6 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2a84>
	s_and_b32 s17, s17, 3                                      // 0000000822AC: 8B118311
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000822B0: BF870009
	s_cmp_eq_u32 s17, 0                                        // 0000000822B4: BF068011
	s_cbranch_scc0 12                                          // 0000000822B8: BFA1000C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2bec>
	s_branch 63                                                // 0000000822BC: BFA0003F <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2cbc>
	s_mov_b32 s9, -1                                           // 0000000822C0: BE8900C1
	s_branch 61                                                // 0000000822C4: BFA0003D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2cbc>
	v_mov_b32_e32 v2, 0                                        // 0000000822C8: 7E040280
	s_branch 59                                                // 0000000822CC: BFA0003B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2cbc>
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, v10             // 0000000822D0: CA100080 0202010A
	s_mov_b32 s10, 0                                           // 0000000822D8: BE8A0080
	s_and_b32 s17, s17, 3                                      // 0000000822DC: 8B118311
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000822E0: BF870009
	s_cmp_eq_u32 s17, 0                                        // 0000000822E4: BF068011
	s_cbranch_scc1 52                                          // 0000000822E8: BFA20034 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2cbc>
	s_lshl_b32 s4, s10, 3                                      // 0000000822EC: 8404830A
	s_mul_i32 s6, s10, 12                                      // 0000000822F0: 96068C0A
	s_add_u32 s4, s0, s4                                       // 0000000822F4: 80040400
	s_addc_u32 s5, s1, 0                                       // 0000000822F8: 82058001
	s_add_u32 s4, s4, 0x210                                    // 0000000822FC: 8004FF04 00000210
	s_addc_u32 s5, s5, 0                                       // 000000082304: 82058005
	s_add_u32 s6, s0, s6                                       // 000000082308: 80060600
	s_addc_u32 s7, s1, 0                                       // 00000008230C: 82078001
	s_nop 0                                                    // 000000082310: BF800000
	s_nop 0                                                    // 000000082314: BF800000
	s_nop 0                                                    // 000000082318: BF800000
	s_nop 0                                                    // 00000008231C: BF800000
	s_nop 0                                                    // 000000082320: BF800000
	s_nop 0                                                    // 000000082324: BF800000
	s_nop 0                                                    // 000000082328: BF800000
	s_nop 0                                                    // 00000008232C: BF800000
	s_nop 0                                                    // 000000082330: BF800000
	s_nop 0                                                    // 000000082334: BF800000
	s_nop 0                                                    // 000000082338: BF800000
	s_nop 0                                                    // 00000008233C: BF800000
	s_waitcnt lgkmcnt(0)                                       // 000000082340: BF89FC07
	s_clause 0x1                                               // 000000082344: BF850001
	s_load_b64 s[20:21], s[6:7], 0x150                         // 000000082348: F4040503 F8000150
	s_load_b32 s10, s[6:7], 0x158                              // 000000082350: F4000283 F8000158
	s_waitcnt lgkmcnt(0)                                       // 000000082358: BF89FC07
	v_mul_hi_u32 v4, s21, v3                                   // 00000008235C: D72D0004 00020615
	s_load_b32 s21, s[4:5], null                               // 000000082364: F4000542 F8000000
	s_add_u32 s4, s4, 8                                        // 00000008236C: 80048804
	s_addc_u32 s5, s5, 0                                       // 000000082370: 82058005
	s_add_u32 s6, s6, 12                                       // 000000082374: 80068C06
	s_addc_u32 s7, s7, 0                                       // 000000082378: 82078007
	s_add_i32 s17, s17, -1                                     // 00000008237C: 8111C111
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000082380: BF8700A9
	s_cmp_lg_u32 s17, 0                                        // 000000082384: BF078011
	v_add_nc_u32_e32 v4, v3, v4                                // 000000082388: 4A080903
	v_lshrrev_b32_e32 v6, s10, v4                              // 00000008238C: 320C080A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000082390: BF870091
	v_mul_lo_u32 v4, v6, s20                                   // 000000082394: D72C0004 00002906
	v_sub_nc_u32_e32 v3, v3, v4                                // 00000008239C: 4C060903
	s_waitcnt lgkmcnt(0)                                       // 0000000823A0: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000823A4: BF870091
	v_mad_u64_u32 v[4:5], null, v3, s21, v[2:3]                // 0000000823A8: D6FE7C04 04082B03
	v_dual_mov_b32 v3, v6 :: v_dual_mov_b32 v2, v4             // 0000000823B0: CA100106 03020104
	s_cbranch_scc1 65505                                       // 0000000823B8: BFA2FFE1 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2c40>
	s_and_not1_b32 vcc_lo, exec_lo, s9                         // 0000000823BC: 916A097E
	s_cbranch_vccnz 37                                         // 0000000823C0: BFA40025 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2d58>
	s_load_b128 s[4:7], s[0:1], 0x150                          // 0000000823C4: F4080100 F8000150
	s_waitcnt lgkmcnt(0)                                       // 0000000823CC: BF89FC07
	s_load_b64 s[20:21], s[0:1], 0x160                         // 0000000823D0: F4040500 F8000160
	s_cmp_gt_u32 s11, 1                                        // 0000000823D8: BF08810B
	s_cselect_b32 vcc_lo, -1, 0                                // 0000000823DC: 986A80C1
	v_mul_hi_u32 v2, s5, v10                                   // 0000000823E0: D72D0002 00021405
	s_load_b32 s5, s[0:1], 0x218                               // 0000000823E8: F4000140 F8000218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000823F0: BF870091
	v_add_nc_u32_e32 v2, v10, v2                               // 0000000823F4: 4A04050A
	v_lshrrev_b32_e32 v2, s6, v2                               // 0000000823F8: 32040406
	s_load_b32 s6, s[0:1], 0x210                               // 0000000823FC: F4000180 F8000210
	s_waitcnt lgkmcnt(0)                                       // 000000082404: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000082408: BF870091
	v_mul_hi_u32 v3, v2, s20                                   // 00000008240C: D72D0003 00002902
	v_add_nc_u32_e32 v3, v2, v3                                // 000000082414: 4A060702
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000082418: BF870091
	v_lshrrev_b32_e32 v3, s21, v3                              // 00000008241C: 32060615
	v_mul_lo_u32 v3, v3, s7                                    // 000000082420: D72C0003 00000F03
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000082428: BF870121
	v_sub_nc_u32_e32 v3, v2, v3                                // 00000008242C: 4C060702
	v_mul_lo_u32 v2, v2, s4                                    // 000000082430: D72C0002 00000902
	v_mul_lo_u32 v3, v3, s5                                    // 000000082438: D72C0003 00000B03
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000082440: BF870112
	v_sub_nc_u32_e32 v5, v10, v2                               // 000000082444: 4C0A050A
	v_cndmask_b32_e32 v4, 0, v3, vcc_lo                        // 000000082448: 02080680
	s_delay_alu instid0(VALU_DEP_1)                            // 00000008244C: BF870001
	v_mad_u64_u32 v[2:3], null, v5, s6, v[4:5]                 // 000000082450: D6FE7C02 04100D05
	s_clause 0x1                                               // 000000082458: BF850001
	s_load_b64 s[6:7], s[0:1], 0x2a8                           // 00000008245C: F4040180 F80002A8
	s_load_b64 s[4:5], s[0:1], 0x298                           // 000000082464: F4040100 F8000298
	s_mov_b32 s17, 0                                           // 00000008246C: BE910080
	s_waitcnt lgkmcnt(0)                                       // 000000082470: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000082474: BF870091
	v_add_co_u32 v3, s9, s6, v2                                // 000000082478: D7000903 00020406
	v_add_co_ci_u32_e64 v4, null, s7, 0, s9                    // 000000082480: D5207C04 00250007
	s_cmp_lg_u64 s[6:7], 0                                     // 000000082488: BF118006
	s_cselect_b32 vcc_lo, -1, 0                                // 00000008248C: 986A80C1
	s_cmp_eq_u32 s18, 0                                        // 000000082490: BF068012
	v_dual_cndmask_b32 v6, 0, v4 :: v_dual_cndmask_b32 v5, 0, v3// 000000082494: CA520880 06040680
	s_cbranch_scc1 92                                          // 00000008249C: BFA2005C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2f10>
	s_and_b32 vcc_lo, exec_lo, s28                             // 0000000824A0: 8B6A1C7E
	s_cbranch_vccz 93                                          // 0000000824A4: BFA3005D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2f1c>
	s_cmp_eq_u32 s11, 0                                        // 0000000824A8: BF06800B
	s_mov_b32 s9, 0                                            // 0000000824AC: BE890080
	s_cbranch_scc1 92                                          // 0000000824B0: BFA2005C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2f24>
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, v10             // 0000000824B4: CA100080 0708010A
	s_add_i32 s8, s8, 1                                        // 0000000824BC: 81088108
	s_cmp_eq_u32 s19, 2                                        // 0000000824C0: BF068213
	s_cbranch_scc1 89                                          // 0000000824C4: BFA20059 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2f2c>
	s_and_b32 s10, s8, 28                                      // 0000000824C8: 8B0A9C08
	s_mov_b32 s18, 0                                           // 0000000824CC: BE920080
	s_mov_b64 s[6:7], s[0:1]                                   // 0000000824D0: BE860100
	s_clause 0x1                                               // 0000000824D4: BF850001
	s_load_b256 s[20:27], s[6:7], 0x150                        // 0000000824D8: F40C0503 F8000150
	s_load_b128 s[28:31], s[6:7], 0x170                        // 0000000824E0: F4080703 F8000170
	s_load_b32 s19, s[2:3], null                               // 0000000824E8: F40004C1 F8000000
	s_add_i32 s18, s18, 4                                      // 0000000824F0: 81128412
	s_waitcnt lgkmcnt(0)                                       // 0000000824F4: BF89FC07
	v_mul_hi_u32 v9, s21, v8                                   // 0000000824F8: D72D0009 00021015
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000082500: BF870091
	v_add_nc_u32_e32 v9, v8, v9                                // 000000082504: 4A121308
	v_lshrrev_b32_e32 v9, s22, v9                              // 000000082508: 32121216
	s_delay_alu instid0(VALU_DEP_1)                            // 00000008250C: BF870001
	v_mul_hi_u32 v12, s24, v9                                  // 000000082510: D72D000C 00021218
	v_mul_lo_u32 v15, v9, s20                                  // 000000082518: D72C000F 00002909
	s_clause 0x2                                               // 000000082520: BF850002
	s_load_b32 s20, s[2:3], 0x8                                // 000000082524: F4000501 F8000008
	s_load_b32 s21, s[2:3], 0x10                               // 00000008252C: F4000541 F8000010
	s_load_b32 s22, s[2:3], 0x18                               // 000000082534: F4000581 F8000018
	s_add_u32 s2, s2, 32                                       // 00000008253C: 8002A002
	s_addc_u32 s3, s3, 0                                       // 000000082540: 82038003
	s_add_u32 s6, s6, 48                                       // 000000082544: 8006B006
	s_addc_u32 s7, s7, 0                                       // 000000082548: 82078007
	v_add_nc_u32_e32 v12, v9, v12                              // 00000008254C: 4A181909
	v_sub_nc_u32_e32 v15, v8, v15                              // 000000082550: 4C1E1F08
	s_cmp_lg_u32 s10, s18                                      // 000000082554: BF07120A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000082558: BF870112
	v_lshrrev_b32_e32 v12, s25, v12                            // 00000008255C: 32181819
	v_mul_lo_u32 v15, v15, s19                                 // 000000082560: D72C000F 0000270F
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000082568: BF870122
	v_mul_hi_u32 v13, s27, v12                                 // 00000008256C: D72D000D 0002181B
	v_mul_lo_u32 v16, v12, s23                                 // 000000082574: D72C0010 00002F0C
	v_add_nc_u32_e32 v13, v12, v13                             // 00000008257C: 4A1A1B0C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000082580: BF870112
	v_sub_nc_u32_e32 v9, v9, v16                               // 000000082584: 4C122109
	v_lshrrev_b32_e32 v13, s28, v13                            // 000000082588: 321A1A1C
	s_waitcnt lgkmcnt(0)                                       // 00000008258C: BF89FC07
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000082590: BF870112
	v_mul_lo_u32 v9, v9, s20                                   // 000000082594: D72C0009 00002909
	v_mul_hi_u32 v14, s30, v13                                 // 00000008259C: D72D000E 00021A1E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000825A4: BF870112
	v_add3_u32 v7, v15, v7, v9                                 // 0000000825A8: D6550007 04260F0F
	v_add_nc_u32_e32 v14, v13, v14                             // 0000000825B0: 4A1C1D0D
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000825B4: BF870121
	v_lshrrev_b32_e32 v8, s31, v14                             // 0000000825B8: 32101C1F
	v_mul_lo_u32 v14, v13, s26                                 // 0000000825BC: D72C000E 0000350D
	v_mul_lo_u32 v17, v8, s29                                  // 0000000825C4: D72C0011 00003B08
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000825CC: BF870112
	v_sub_nc_u32_e32 v12, v12, v14                             // 0000000825D0: 4C181D0C
	v_sub_nc_u32_e32 v13, v13, v17                             // 0000000825D4: 4C1A230D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000825D8: BF870112
	v_mul_lo_u32 v12, v12, s21                                 // 0000000825DC: D72C000C 00002B0C
	v_mul_lo_u32 v13, v13, s22                                 // 0000000825E4: D72C000D 00002D0D
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000825EC: BF870001
	v_add3_u32 v7, v12, v7, v13                                // 0000000825F0: D6550007 04360F0C
	s_cbranch_scc1 65462                                       // 0000000825F8: BFA2FFB6 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2dd4>
	s_and_b32 s8, s8, 3                                        // 0000000825FC: 8B088308
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000082600: BF870009
	s_cmp_eq_u32 s8, 0                                         // 000000082604: BF068008
	s_cbranch_scc0 13                                          // 000000082608: BFA1000D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2f40>
	s_branch 58                                                // 00000008260C: BFA0003A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2ff8>
	s_mov_b32 s18, -1                                          // 000000082610: BE9200C1
	s_mov_b32 s8, 0                                            // 000000082614: BE880080
	s_branch 710                                               // 000000082618: BFA002C6 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3a34>
	s_mov_b32 s9, -1                                           // 00000008261C: BE8900C1
	s_branch 53                                                // 000000082620: BFA00035 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2ff8>
	v_mov_b32_e32 v7, 0                                        // 000000082624: 7E0E0280
	s_branch 51                                                // 000000082628: BFA00033 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2ff8>
	s_mov_b32 s10, 0                                           // 00000008262C: BE8A0080
	s_and_b32 s8, s8, 3                                        // 000000082630: 8B088308
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000082634: BF870009
	s_cmp_eq_u32 s8, 0                                         // 000000082638: BF068008
	s_cbranch_scc1 46                                          // 00000008263C: BFA2002E <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2ff8>
	s_lshl_b32 s2, s10, 3                                      // 000000082640: 8402830A
	s_mul_i32 s6, s10, 12                                      // 000000082644: 96068C0A
	s_add_u32 s2, s0, s2                                       // 000000082648: 80020200
	s_addc_u32 s3, s1, 0                                       // 00000008264C: 82038001
	s_add_u32 s2, s2, 0x210                                    // 000000082650: 8002FF02 00000210
	s_addc_u32 s3, s3, 0                                       // 000000082658: 82038003
	s_add_u32 s6, s0, s6                                       // 00000008265C: 80060600
	s_addc_u32 s7, s1, 0                                       // 000000082660: 82078001
	s_nop 0                                                    // 000000082664: BF800000
	s_nop 0                                                    // 000000082668: BF800000
	s_nop 0                                                    // 00000008266C: BF800000
	s_nop 0                                                    // 000000082670: BF800000
	s_nop 0                                                    // 000000082674: BF800000
	s_nop 0                                                    // 000000082678: BF800000
	s_nop 0                                                    // 00000008267C: BF800000
	s_clause 0x1                                               // 000000082680: BF850001
	s_load_b64 s[18:19], s[6:7], 0x150                         // 000000082684: F4040483 F8000150
	s_load_b32 s10, s[6:7], 0x158                              // 00000008268C: F4000283 F8000158
	s_waitcnt lgkmcnt(0)                                       // 000000082694: BF89FC07
	v_mul_hi_u32 v9, s19, v8                                   // 000000082698: D72D0009 00021013
	s_load_b32 s19, s[2:3], null                               // 0000000826A0: F40004C1 F8000000
	s_add_u32 s2, s2, 8                                        // 0000000826A8: 80028802
	s_addc_u32 s3, s3, 0                                       // 0000000826AC: 82038003
	s_add_u32 s6, s6, 12                                       // 0000000826B0: 80068C06
	s_addc_u32 s7, s7, 0                                       // 0000000826B4: 82078007
	s_add_i32 s8, s8, -1                                       // 0000000826B8: 8108C108
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000826BC: BF8700A9
	s_cmp_lg_u32 s8, 0                                         // 0000000826C0: BF078008
	v_add_nc_u32_e32 v9, v8, v9                                // 0000000826C4: 4A121308
	v_lshrrev_b32_e32 v9, s10, v9                              // 0000000826C8: 3212120A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000826CC: BF870091
	v_mul_lo_u32 v12, v9, s18                                  // 0000000826D0: D72C000C 00002509
	v_sub_nc_u32_e32 v8, v8, v12                               // 0000000826D8: 4C101908
	s_waitcnt lgkmcnt(0)                                       // 0000000826DC: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000826E0: BF870091
	v_mad_u64_u32 v[12:13], null, v8, s19, v[7:8]              // 0000000826E4: D6FE7C0C 041C2708
	v_dual_mov_b32 v8, v9 :: v_dual_mov_b32 v7, v12            // 0000000826EC: CA100109 0806010C
	s_cbranch_scc1 65506                                       // 0000000826F4: BFA2FFE2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2f80>
	s_and_not1_b32 vcc_lo, exec_lo, s9                         // 0000000826F8: 916A097E
	s_cbranch_vccnz 38                                         // 0000000826FC: BFA40026 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3098>
	s_clause 0x1                                               // 000000082700: BF850001
	s_load_b128 s[20:23], s[0:1], 0x150                        // 000000082704: F4080500 F8000150
	s_load_b64 s[2:3], s[0:1], 0x160                           // 00000008270C: F4040080 F8000160
	s_cmp_gt_u32 s11, 1                                        // 000000082714: BF08810B
	s_cselect_b32 vcc_lo, -1, 0                                // 000000082718: 986A80C1
	s_waitcnt lgkmcnt(0)                                       // 00000008271C: BF89FC07
	v_mul_hi_u32 v7, s21, v10                                  // 000000082720: D72D0007 00021415
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000082728: BF870091
	v_add_nc_u32_e32 v7, v10, v7                               // 00000008272C: 4A0E0F0A
	v_lshrrev_b32_e32 v7, s22, v7                              // 000000082730: 320E0E16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000082734: BF8700A1
	v_mul_hi_u32 v8, v7, s2                                    // 000000082738: D72D0008 00000507
	s_load_b32 s2, s[0:1], 0x218                               // 000000082740: F4000080 F8000218
	v_add_nc_u32_e32 v8, v7, v8                                // 000000082748: 4A101107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 00000008274C: BF8700A1
	v_lshrrev_b32_e32 v8, s3, v8                               // 000000082750: 32101003
	s_load_b32 s3, s[0:1], 0x210                               // 000000082754: F40000C0 F8000210
	v_mul_lo_u32 v8, v8, s23                                   // 00000008275C: D72C0008 00002F08
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 000000082764: BF870131
	v_sub_nc_u32_e32 v8, v7, v8                                // 000000082768: 4C101107
	v_mul_lo_u32 v7, v7, s20                                   // 00000008276C: D72C0007 00002907
	s_waitcnt lgkmcnt(0)                                       // 000000082774: BF89FC07
	v_mul_lo_u32 v8, v8, s2                                    // 000000082778: D72C0008 00000508
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000082780: BF870112
	v_sub_nc_u32_e32 v12, v10, v7                              // 000000082784: 4C180F0A
	v_cndmask_b32_e32 v9, 0, v8, vcc_lo                        // 000000082788: 02121080
	s_delay_alu instid0(VALU_DEP_1)                            // 00000008278C: BF870001
	v_mad_u64_u32 v[7:8], null, v12, s3, v[9:10]               // 000000082790: D6FE7C07 0424070C
	s_load_b64 s[6:7], s[0:1], 0x2b0                           // 000000082798: F4040180 F80002B0
	v_cmp_eq_u32_e32 vcc_lo, 0, v1                             // 0000000827A0: 7C940280
	v_cmp_gt_i32_e64 s2, s13, v10                              // 0000000827A4: D4440002 0002140D
	s_mov_b32 s19, 0                                           // 0000000827AC: BE930080
	s_or_b32 s3, vcc_lo, s16                                   // 0000000827B0: 8C03106A
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 0000000827B4: BF870499
	s_and_b32 s2, s2, s3                                       // 0000000827B8: 8B020302
	s_and_saveexec_b32 s3, s2                                  // 0000000827BC: BE832002
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000827C0: BF870009
	s_xor_b32 s2, exec_lo, s3                                  // 0000000827C4: 8D02037E
	v_cmp_eq_u32_e32 vcc_lo, 0, v0                             // 0000000827C8: 7C940080
	s_or_b32 s3, vcc_lo, s12                                   // 0000000827CC: 8C030C6A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000827D0: BF870009
	s_and_b32 s19, s3, exec_lo                                 // 0000000827D4: 8B137E03
	s_or_b32 exec_lo, exec_lo, s2                              // 0000000827D8: 8C7E027E
	s_and_saveexec_b32 s8, s19                                 // 0000000827DC: BE882013
	s_cbranch_execz 32                                         // 0000000827E0: BFA50020 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3164>
	s_load_b32 s9, s[0:1], 0x2d4                               // 0000000827E4: F4000240 F80002D4
	s_add_u32 s2, s0, 0x2d0                                    // 0000000827EC: 8002FF00 000002D0
	s_addc_u32 s3, s1, 0                                       // 0000000827F4: 82038001
	s_and_not1_b32 vcc_lo, exec_lo, s16                        // 0000000827F8: 916A107E
	s_waitcnt lgkmcnt(0)                                       // 0000000827FC: BF89FC07
	s_mul_i32 s9, s9, s14                                      // 000000082800: 96090E09
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000082804: BF870499
	s_add_i32 s9, s9, s15                                      // 000000082808: 81090F09
	v_mov_b32_e32 v8, s9                                       // 00000008280C: 7E100209
	s_cbranch_vccnz 8                                          // 000000082810: BFA40008 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3134>
	s_load_b32 s2, s[2:3], 0xc                                 // 000000082814: F4000081 F800000C
	s_waitcnt lgkmcnt(0)                                       // 00000008281C: BF89FC07
	s_and_b32 s2, s2, 0xffff                                   // 000000082820: 8B02FF02 0000FFFF
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000082828: BF870009
	v_mad_u64_u32 v[8:9], null, s9, s2, v[1:2]                 // 00000008282C: D6FE7C08 04040409
	v_mov_b32_e32 v9, 0                                        // 000000082834: 7E120280
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000082838: BF870091
	v_lshlrev_b64 v[8:9], 2, v[8:9]                            // 00000008283C: D73C0008 00021082
	v_add_co_u32 v8, vcc_lo, s6, v8                            // 000000082844: D7006A08 00021006
	s_delay_alu instid0(VALU_DEP_1)                            // 00000008284C: BF870001
	v_add_co_ci_u32_e64 v9, null, s7, v9, vcc_lo               // 000000082850: D5207C09 01AA1207
	global_store_b32 v[8:9], v11, off                          // 000000082858: DC6A0000 007C0B08
	s_waitcnt vmcnt(0)                                         // 000000082860: BF8903F7
	s_or_b32 exec_lo, exec_lo, s8                              // 000000082864: 8C7E087E
	v_or_b32_e32 v8, v1, v0                                    // 000000082868: 38100101
	s_mov_b32 s2, exec_lo                                      // 00000008286C: BE82007E
	s_waitcnt lgkmcnt(0)                                       // 000000082870: BF89FC07
	s_waitcnt_vscnt null, 0x0                                  // 000000082874: BC7C0000
	s_barrier                                                  // 000000082878: BFBD0000
	buffer_gl0_inv                                             // 00000008287C: E0AC0000 00000000
	s_barrier                                                  // 000000082884: BFBD0000
	buffer_gl0_inv                                             // 000000082888: E0AC0000 00000000
	v_cmpx_eq_u32_e32 0, v8                                    // 000000082890: 7D941080
	s_cbranch_execz 39                                         // 000000082894: BFA50027 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3234>
	s_mov_b32 s8, exec_lo                                      // 000000082898: BE88007E
	s_mov_b32 s3, exec_lo                                      // 00000008289C: BE83007E
	v_mbcnt_lo_u32_b32 v8, s8, 0                               // 0000000828A0: D71F0008 00010008
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000828A8: BF870001
	v_cmpx_eq_u32_e32 0, v8                                    // 0000000828AC: 7D941080
	s_cbranch_execz 16                                         // 0000000828B0: BFA50010 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x31f4>
	s_load_b64 s[10:11], s[0:1], 0x2b8                         // 0000000828B4: F4040280 F80002B8
	s_mov_b32 s9, s15                                          // 0000000828BC: BE89000F
	s_mov_b32 s15, 0                                           // 0000000828C0: BE8F0080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000828C4: BF870009
	s_lshl_b64 s[20:21], s[14:15], 2                           // 0000000828C8: 8494820E
	s_mov_b32 s15, s9                                          // 0000000828CC: BE8F0009
	s_waitcnt lgkmcnt(0)                                       // 0000000828D0: BF89FC07
	s_add_u32 s10, s10, s20                                    // 0000000828D4: 800A140A
	s_addc_u32 s11, s11, s21                                   // 0000000828D8: 820B150B
	s_bcnt1_i32_b32 s8, s8                                     // 0000000828DC: BE881808
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000828E0: BF870009
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, s8             // 0000000828E4: CA100080 090C0008
	global_atomic_add_u32 v9, v9, v12, s[10:11] glc            // 0000000828EC: DCD64000 090A0C09
	s_or_b32 exec_lo, exec_lo, s3                              // 0000000828F4: 8C7E037E
	s_load_b32 s3, s[0:1], 0x2d4                               // 0000000828F8: F40000C0 F80002D4
	s_waitcnt vmcnt(0)                                         // 000000082900: BF8903F7
	v_readfirstlane_b32 s8, v9                                 // 000000082904: 7E100509
	s_delay_alu instid0(VALU_DEP_1)                            // 000000082908: BF870001
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v8, s8, v8       // 00000008290C: CA200080 09081008
	s_waitcnt lgkmcnt(0)                                       // 000000082914: BF89FC07
	s_add_i32 s3, s3, -1                                       // 000000082918: 8103C103
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)    // 00000008291C: BF870481
	v_cmp_eq_u32_e32 vcc_lo, s3, v8                            // 000000082920: 7C941003
	v_cndmask_b32_e64 v8, 0, 1, vcc_lo                         // 000000082924: D5010008 01A90280
	ds_store_b8 v9, v8                                         // 00000008292C: D8780000 00000809
	s_or_b32 exec_lo, exec_lo, s2                              // 000000082934: 8C7E027E
	v_mov_b32_e32 v8, 0                                        // 000000082938: 7E100280
	s_waitcnt lgkmcnt(0)                                       // 00000008293C: BF89FC07
	s_barrier                                                  // 000000082940: BFBD0000
	buffer_gl0_inv                                             // 000000082944: E0AC0000 00000000
	s_mov_b32 s8, 0                                            // 00000008294C: BE880080
	ds_load_u8 v8, v8                                          // 000000082950: D8E80000 08000008
	s_mov_b32 s18, 0                                           // 000000082958: BE920080
	s_waitcnt lgkmcnt(0)                                       // 00000008295C: BF89FC07
	v_and_b32_e32 v8, 1, v8                                    // 000000082960: 36101081
	s_delay_alu instid0(VALU_DEP_1)                            // 000000082964: BF870001
	v_cmp_eq_u32_e32 vcc_lo, 0, v8                             // 000000082968: 7C941080
	s_cbranch_vccnz 497                                        // 00000008296C: BFA401F1 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3a34>
	s_clause 0x1                                               // 000000082970: BF850001
	s_load_b32 s2, s[0:1], 0x20                                // 000000082974: F4000080 F8000020
	s_load_b32 s25, s[0:1], 0x4                                // 00000008297C: F4000640 F8000004
	s_waitcnt lgkmcnt(0)                                       // 000000082984: BF89FC07
	s_cmp_lg_u32 s2, 0                                         // 000000082988: BF078002
	s_cselect_b32 s20, -1, 0                                   // 00000008298C: 981480C1
	s_add_u32 s8, s0, 0x2d0                                    // 000000082990: 8008FF00 000002D0
	s_addc_u32 s9, s1, 0                                       // 000000082998: 82098001
	s_cmp_eq_u32 s2, 0                                         // 00000008299C: BF068002
	s_cbranch_scc1 69                                          // 0000000829A0: BFA20045 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x33b8>
	s_clause 0x1                                               // 0000000829A4: BF850001
	s_load_b32 s10, s[8:9], null                               // 0000000829A8: F4000284 F8000000
	s_load_b32 s21, s[8:9], 0xc                                // 0000000829B0: F4000544 F800000C
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, s25            // 0000000829B8: CA100080 090C0019
	s_load_b32 s11, s[0:1], 0x1c                               // 0000000829C0: F40002C0 F800001C
	s_mov_b32 s22, exec_lo                                     // 0000000829C8: BE96007E
	s_waitcnt lgkmcnt(0)                                       // 0000000829CC: BF89FC07
	s_cmp_lt_u32 s14, s10                                      // 0000000829D0: BF0A0A0E
	s_cselect_b32 s2, 12, 18                                   // 0000000829D4: 9802928C
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000829D8: BF870009
	s_add_u32 s2, s8, s2                                       // 0000000829DC: 80020208
	s_addc_u32 s3, s9, 0                                       // 0000000829E0: 82038009
	s_lshr_b32 s21, s21, 16                                    // 0000000829E4: 85159015
	global_load_u16 v8, v9, s[2:3]                             // 0000000829E8: DC4A0000 08020009
	s_waitcnt vmcnt(0)                                         // 0000000829F0: BF8903F7
	v_mad_u32_u24 v13, v0, v8, v1                              // 0000000829F4: D60B000D 04061100
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000829FC: BF870001
	v_cmpx_gt_u32_e64 s11, v13                                 // 000000082A00: D4CC007E 00021A0B
	s_cbranch_execz 38                                         // 000000082A08: BFA50026 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x33a4>
	s_load_b32 s24, s[8:9], 0x4                                // 000000082A0C: F4000604 F8000004
	v_mul_lo_u32 v14, s21, v8                                  // 000000082A14: D72C000E 00021015
	v_mov_b32_e32 v12, s25                                     // 000000082A1C: 7E180219
	s_mov_b32 s23, 0                                           // 000000082A20: BE970080
	s_waitcnt lgkmcnt(0)                                       // 000000082A24: BF89FC07
	s_mul_i32 s24, s24, s14                                    // 000000082A28: 96180E18
	s_nop 0                                                    // 000000082A2C: BF800000
	s_nop 0                                                    // 000000082A30: BF800000
	s_nop 0                                                    // 000000082A34: BF800000
	s_nop 0                                                    // 000000082A38: BF800000
	s_nop 0                                                    // 000000082A3C: BF800000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000082A40: BF870099
	v_add_nc_u32_e32 v8, s24, v13                              // 000000082A44: 4A101A18
	v_lshlrev_b64 v[15:16], 2, v[8:9]                          // 000000082A48: D73C000F 00021082
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000082A50: BF870091
	v_add_co_u32 v15, vcc_lo, s6, v15                          // 000000082A54: D7006A0F 00021E06
	v_add_co_ci_u32_e64 v16, null, s7, v16, vcc_lo             // 000000082A5C: D5207C10 01AA2007
	v_cmp_u_f32_e32 vcc_lo, v12, v12                           // 000000082A64: 7C30190C
	global_load_b32 v8, v[15:16], off                          // 000000082A68: DC520000 087C000F
	s_waitcnt vmcnt(0)                                         // 000000082A70: BF8903F7
	v_cmp_gt_f32_e64 s2, v12, v8                               // 000000082A74: D4140002 0002110C
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000082A7C: 8C6A026A
	v_dual_cndmask_b32 v12, v8, v12 :: v_dual_add_nc_u32 v13, v13, v14// 000000082A80: CA601908 0C0C1D0D
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 000000082A88: BF8704A1
	v_cmp_le_u32_e64 s3, s11, v13                              // 000000082A8C: D44B0003 00021A0B
	s_or_b32 s23, s3, s23                                      // 000000082A94: 8C171703
	s_and_not1_b32 exec_lo, exec_lo, s23                       // 000000082A98: 917E177E
	s_cbranch_execnz 65512                                     // 000000082A9C: BFA6FFE8 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3340>
	s_or_b32 exec_lo, exec_lo, s23                             // 000000082AA0: 8C7E177E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000082AA4: BF870009
	s_or_b32 exec_lo, exec_lo, s22                             // 000000082AA8: 8C7E167E
	v_mov_b32_e32 v13, s21                                     // 000000082AAC: 7E1A0215
	s_cbranch_execz 2                                          // 000000082AB0: BFA50002 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x33bc>
	s_branch 178                                               // 000000082AB4: BFA000B2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3680>
	v_mov_b32_e32 v13, s21                                     // 000000082AB8: 7E1A0215
	s_load_b64 s[10:11], s[8:9], null                          // 000000082ABC: F4040284 F8000000
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, s25            // 000000082AC4: CA100080 090C0019
	s_mov_b32 s23, 0                                           // 000000082ACC: BE970080
	s_mov_b32 s22, exec_lo                                     // 000000082AD0: BE96007E
	s_waitcnt lgkmcnt(0)                                       // 000000082AD4: BF89FC07
	s_cmp_lt_u32 s15, s11                                      // 000000082AD8: BF0A0B0F
	s_load_b32 s15, s[0:1], 0x1c                               // 000000082ADC: F40003C0 F800001C
	s_cselect_b32 s2, 14, 20                                   // 000000082AE4: 9802948E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000082AE8: BF870009
	s_add_u32 s2, s8, s2                                       // 000000082AEC: 80020208
	s_addc_u32 s3, s9, 0                                       // 000000082AF0: 82038009
	global_load_d16_b16 v13, v9, s[2:3]                        // 000000082AF4: DC820000 0D020009
	s_waitcnt vmcnt(0)                                         // 000000082AFC: BF8903F7
	v_readfirstlane_b32 s2, v13                                // 000000082B00: 7E04050D
	s_and_b32 s21, 0xffff, s2                                  // 000000082B04: 8B1502FF 0000FFFF
	s_waitcnt lgkmcnt(0)                                       // 000000082B0C: BF89FC07
	v_cmpx_gt_u32_e64 s15, v0                                  // 000000082B10: D4CC007E 0002000F
	s_cbranch_execz 151                                        // 000000082B18: BFA50097 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3678>
	s_load_b32 s2, s[8:9], 0x14                                // 000000082B1C: F4000084 F8000014
	s_mul_i32 s24, s21, 3                                      // 000000082B24: 96188315
	v_dual_mov_b32 v12, s25 :: v_dual_mov_b32 v23, v0          // 000000082B28: CA100019 0C160100
	s_waitcnt lgkmcnt(0)                                       // 000000082B30: BF89FC07
	s_and_b32 s2, s2, 0xffff                                   // 000000082B34: 8B02FF02 0000FFFF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 000000082B3C: BF8704A9
	s_cmp_lg_u32 s2, 0                                         // 000000082B40: BF078002
	s_cselect_b32 s2, -1, 0                                    // 000000082B44: 980280C1
	s_cmp_lg_u32 s2, 0                                         // 000000082B48: BF078002
	s_addc_u32 s11, s11, 0                                     // 000000082B4C: 820B800B
	s_cmp_lt_u32 s14, s10                                      // 000000082B50: BF0A0A0E
	v_mad_u64_u32 v[17:18], null, s11, s14, v[0:1]             // 000000082B54: D6FE7C11 04001C0B
	s_cselect_b32 s2, 12, 18                                   // 000000082B5C: 9802928C
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000082B60: BF870009
	s_add_u32 s2, s8, s2                                       // 000000082B64: 80020208
	s_addc_u32 s3, s9, 0                                       // 000000082B68: 82038009
	s_lshl_b32 s11, s21, 1                                     // 000000082B6C: 840B8115
	global_load_u16 v8, v9, s[2:3]                             // 000000082B70: DC4A0000 08020009
	v_add_nc_u32_e32 v14, s11, v17                             // 000000082B78: 4A1C220B
	v_add_nc_u32_e32 v15, s24, v17                             // 000000082B7C: 4A1E2218
	v_add_nc_u32_e32 v16, s21, v17                             // 000000082B80: 4A202215
	s_waitcnt vmcnt(0)                                         // 000000082B84: BF8903F7
	v_mul_lo_u32 v19, s21, v8                                  // 000000082B88: D72C0013 00021015
	v_mul_lo_u32 v14, v14, v8                                  // 000000082B90: D72C000E 0002110E
	v_mul_lo_u32 v15, v15, v8                                  // 000000082B98: D72C000F 0002110F
	v_mul_lo_u32 v16, v16, v8                                  // 000000082BA0: D72C0010 00021110
	v_mul_lo_u32 v17, v17, v8                                  // 000000082BA8: D72C0011 00021111
	v_dual_mov_b32 v18, v1 :: v_dual_lshlrev_b32 v19, 2, v19   // 000000082BB0: CA220101 12122682
	s_branch 10                                                // 000000082BB8: BFA0000A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x34e4>
	s_or_b32 exec_lo, exec_lo, s25                             // 000000082BBC: 8C7E197E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 000000082BC0: BF870139
	s_or_b32 exec_lo, exec_lo, s3                              // 000000082BC4: 8C7E037E
	v_add_nc_u32_e32 v23, s24, v24                             // 000000082BC8: 4A2E3018
	v_add_nc_u32_e32 v18, v18, v19                             // 000000082BCC: 4A242712
	v_cmp_le_u32_e32 vcc_lo, s15, v23                          // 000000082BD0: 7C962E0F
	s_or_b32 s23, vcc_lo, s23                                  // 000000082BD4: 8C17176A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000082BD8: BF870009
	s_and_not1_b32 exec_lo, exec_lo, s23                       // 000000082BDC: 917E177E
	s_cbranch_execz 100                                        // 000000082BE0: BFA50064 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3674>
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000082BE4: BF870091
	v_add_nc_u32_e32 v8, v17, v18                              // 000000082BE8: 4A102511
	v_lshlrev_b64 v[24:25], 2, v[8:9]                          // 000000082BEC: D73C0018 00021082
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000082BF4: BF870091
	v_add_co_u32 v24, vcc_lo, s6, v24                          // 000000082BF8: D7006A18 00023006
	v_add_co_ci_u32_e64 v25, null, s7, v25, vcc_lo             // 000000082C00: D5207C19 01AA3207
	global_load_b32 v26, v[24:25], off                         // 000000082C08: DC520000 1A7C0018
	v_add_nc_u32_e32 v24, s21, v23                             // 000000082C10: 4A302E15
	v_add_nc_u32_e32 v25, s11, v23                             // 000000082C14: 4A322E0B
	s_delay_alu instid0(VALU_DEP_2)                            // 000000082C18: BF870002
	v_cmp_gt_u32_e32 vcc_lo, s15, v24                          // 000000082C1C: 7C98300F
	s_and_saveexec_b32 s3, vcc_lo                              // 000000082C20: BE83206A
	s_cbranch_execz 45                                         // 000000082C24: BFA5002D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x35dc>
	v_add_nc_u32_e32 v8, v16, v18                              // 000000082C28: 4A102510
	s_mov_b32 s25, exec_lo                                     // 000000082C2C: BE99007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000082C30: BF870091
	v_lshlrev_b64 v[27:28], 2, v[8:9]                          // 000000082C34: D73C001B 00021082
	v_add_co_u32 v27, s2, s6, v27                              // 000000082C3C: D700021B 00023606
	s_delay_alu instid0(VALU_DEP_1)                            // 000000082C44: BF870001
	v_add_co_ci_u32_e64 v28, null, s7, v28, s2                 // 000000082C48: D5207C1C 000A3807
	global_load_b32 v22, v[27:28], off                         // 000000082C50: DC520000 167C001B
	v_cmpx_gt_u32_e64 s15, v25                                 // 000000082C58: D4CC007E 0002320F
	s_cbranch_execz 28                                         // 000000082C60: BFA5001C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x35d4>
	v_add_nc_u32_e32 v8, v14, v18                              // 000000082C64: 4A10250E
	s_mov_b32 s26, exec_lo                                     // 000000082C68: BE9A007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000082C6C: BF870121
	v_lshlrev_b64 v[27:28], 2, v[8:9]                          // 000000082C70: D73C001B 00021082
	v_add_nc_u32_e32 v8, s24, v23                              // 000000082C78: 4A102E18
	v_add_co_u32 v27, s2, s6, v27                              // 000000082C7C: D700021B 00023606
	s_delay_alu instid0(VALU_DEP_1)                            // 000000082C84: BF870001
	v_add_co_ci_u32_e64 v28, null, s7, v28, s2                 // 000000082C88: D5207C1C 000A3807
	global_load_b32 v21, v[27:28], off                         // 000000082C90: DC520000 157C001B
	v_cmpx_gt_u32_e64 s15, v8                                  // 000000082C98: D4CC007E 0002100F
	s_cbranch_execz 11                                         // 000000082CA0: BFA5000B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x35d0>
	v_add_nc_u32_e32 v8, v15, v18                              // 000000082CA4: 4A10250F
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000082CA8: BF870091
	v_lshlrev_b64 v[27:28], 2, v[8:9]                          // 000000082CAC: D73C001B 00021082
	v_add_co_u32 v27, s2, s6, v27                              // 000000082CB4: D700021B 00023606
	s_delay_alu instid0(VALU_DEP_1)                            // 000000082CBC: BF870001
	v_add_co_ci_u32_e64 v28, null, s7, v28, s2                 // 000000082CC0: D5207C1C 000A3807
	global_load_b32 v20, v[27:28], off                         // 000000082CC8: DC520000 147C001B
	s_or_b32 exec_lo, exec_lo, s26                             // 000000082CD0: 8C7E1A7E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000082CD4: BF870009
	s_or_b32 exec_lo, exec_lo, s25                             // 000000082CD8: 8C7E197E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)// 000000082CDC: BF8704D9
	s_or_b32 exec_lo, exec_lo, s3                              // 000000082CE0: 8C7E037E
	v_cmp_u_f32_e64 s2, v12, v12                               // 000000082CE4: D4180002 0002190C
	s_waitcnt vmcnt(0)                                         // 000000082CEC: BF8903F7
	v_cmp_gt_f32_e64 s3, v12, v26                              // 000000082CF0: D4140003 0002350C
	s_or_b32 s2, s2, s3                                        // 000000082CF8: 8C020302
	v_cndmask_b32_e64 v12, v26, v12, s2                        // 000000082CFC: D501000C 000A191A
	s_and_saveexec_b32 s3, vcc_lo                              // 000000082D04: BE83206A
	s_cbranch_execz 65453                                      // 000000082D08: BFA5FFAD <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x34c0>
	s_delay_alu instid0(VALU_DEP_1)                            // 000000082D0C: BF870001
	v_cmp_u_f32_e32 vcc_lo, v12, v12                           // 000000082D10: 7C30190C
	v_cmp_gt_f32_e64 s2, v12, v22                              // 000000082D14: D4140002 00022D0C
	s_mov_b32 s25, exec_lo                                     // 000000082D1C: BE99007E
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000082D20: 8C6A026A
	v_cndmask_b32_e32 v12, v22, v12, vcc_lo                    // 000000082D24: 02181916
	v_cmpx_gt_u32_e64 s15, v25                                 // 000000082D28: D4CC007E 0002320F
	s_cbranch_execz 65442                                      // 000000082D30: BFA5FFA2 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x34bc>
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)// 000000082D34: BF8700C2
	v_cmp_u_f32_e32 vcc_lo, v12, v12                           // 000000082D38: 7C30190C
	v_cmp_gt_f32_e64 s2, v12, v21                              // 000000082D3C: D4140002 00022B0C
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000082D44: 8C6A026A
	v_cndmask_b32_e32 v8, v21, v12, vcc_lo                     // 000000082D48: 02101915
	v_cmp_u_f32_e32 vcc_lo, v8, v8                             // 000000082D4C: 7C301108
	v_cmp_gt_f32_e64 s2, v8, v20                               // 000000082D50: D4140002 00022908
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000082D58: 8C6A026A
	v_dual_cndmask_b32 v23, v20, v8 :: v_dual_add_nc_u32 v12, s24, v23// 000000082D5C: CA601114 170C2E18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000082D64: BF870111
	v_cmp_gt_u32_e32 vcc_lo, s15, v12                          // 000000082D68: 7C98180F
	v_cndmask_b32_e32 v12, v8, v23, vcc_lo                     // 000000082D6C: 02182F08
	s_branch 65426                                             // 000000082D70: BFA0FF92 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x34bc>
	s_or_b32 exec_lo, exec_lo, s23                             // 000000082D74: 8C7E177E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000082D78: BF870009
	s_or_b32 exec_lo, exec_lo, s22                             // 000000082D7C: 8C7E167E
	s_cmp_lt_u32 s14, s10                                      // 000000082D80: BF0A0A0E
	s_delay_alu instid0(VALU_DEP_1)                            // 000000082D84: BF870001
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v13, 0xffff, v13    // 000000082D88: CA240080 080C1AFF 0000FFFF
	s_cselect_b32 s2, 12, 18                                   // 000000082D94: 9802928C
	v_lshlrev_b32_e32 v14, 2, v1                               // 000000082D98: 301C0282
	s_add_u32 s2, s8, s2                                       // 000000082D9C: 80020208
	s_addc_u32 s3, s9, 0                                       // 000000082DA0: 82038009
	v_cmp_gt_u32_e32 vcc_lo, 2, v13                            // 000000082DA4: 7C981A82
	global_load_u16 v9, v8, s[2:3]                             // 000000082DA8: DC4A0000 09020008
	s_and_b32 vcc_lo, exec_lo, vcc_lo                          // 000000082DB0: 8B6A6A7E
	s_waitcnt vmcnt(0)                                         // 000000082DB4: BF8903F7
	v_mul_u32_u24_e32 v8, v0, v9                               // 000000082DB8: 16101300
	v_readfirstlane_b32 s3, v9                                 // 000000082DBC: 7E060509
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000082DC0: BF870092
	v_lshlrev_b32_e32 v8, 2, v8                                // 000000082DC4: 30101082
	v_add3_u32 v8, 1, v8, v14                                  // 000000082DC8: D6550008 043A1081
	ds_store_b32 v8, v12                                       // 000000082DD0: D8340000 00000C08
	s_cbranch_vccnz 46                                         // 000000082DD8: BFA4002E <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3794>
	v_lshl_add_u32 v9, v1, 2, 1                                // 000000082DDC: D6460009 02050501
	s_mov_b32 s6, s21                                          // 000000082DE4: BE860015
	s_nop 0                                                    // 000000082DE8: BF800000
	s_nop 0                                                    // 000000082DEC: BF800000
	s_nop 0                                                    // 000000082DF0: BF800000
	s_nop 0                                                    // 000000082DF4: BF800000
	s_nop 0                                                    // 000000082DF8: BF800000
	s_nop 0                                                    // 000000082DFC: BF800000
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000082E00: BF870009
	s_lshr_b32 s7, s6, 1                                       // 000000082E04: 85078106
	s_mov_b32 s8, exec_lo                                      // 000000082E08: BE88007E
	s_waitcnt lgkmcnt(0)                                       // 000000082E0C: BF89FC07
	s_barrier                                                  // 000000082E10: BFBD0000
	buffer_gl0_inv                                             // 000000082E14: E0AC0000 00000000
	v_cmpx_gt_u32_e64 s7, v0                                   // 000000082E1C: D4CC007E 00020007
	s_cbranch_execz 21                                         // 000000082E24: BFA50015 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x377c>
	v_add_nc_u32_e32 v13, s7, v0                               // 000000082E28: 4A1A0007
	s_mov_b32 s9, exec_lo                                      // 000000082E2C: BE89007E
	s_delay_alu instid0(VALU_DEP_1)                            // 000000082E30: BF870001
	v_cmpx_gt_u32_e64 s21, v13                                 // 000000082E34: D4CC007E 00021A15
	s_cbranch_execz 14                                         // 000000082E3C: BFA5000E <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3778>
	v_mul_u32_u24_e32 v13, s3, v13                             // 000000082E40: 161A1A03
	v_cmp_u_f32_e32 vcc_lo, v12, v12                           // 000000082E44: 7C30190C
	s_delay_alu instid0(VALU_DEP_2)                            // 000000082E48: BF870002
	v_lshl_add_u32 v13, v13, 2, v9                             // 000000082E4C: D646000D 0425050D
	ds_load_b32 v13, v13                                       // 000000082E54: D8D80000 0D00000D
	s_waitcnt lgkmcnt(0)                                       // 000000082E5C: BF89FC07
	v_cmp_gt_f32_e64 s2, v12, v13                              // 000000082E60: D4140002 00021B0C
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000082E68: 8C6A026A
	v_cndmask_b32_e32 v12, v13, v12, vcc_lo                    // 000000082E6C: 0218190D
	ds_store_b32 v8, v12                                       // 000000082E70: D8340000 00000C08
	s_or_b32 exec_lo, exec_lo, s9                              // 000000082E78: 8C7E097E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000082E7C: BF870009
	s_or_b32 exec_lo, exec_lo, s8                              // 000000082E80: 8C7E087E
	s_cmp_gt_u32 s6, 3                                         // 000000082E84: BF088306
	s_cbranch_scc0 2                                           // 000000082E88: BFA10002 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3794>
	s_mov_b32 s6, s7                                           // 000000082E8C: BE860007
	s_branch 65499                                             // 000000082E90: BFA0FFDB <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3700>
	s_and_not1_b32 vcc_lo, exec_lo, s20                        // 000000082E94: 916A147E
	s_cbranch_vccnz 71                                         // 000000082E98: BFA40047 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x38b8>
	s_cmp_lt_u32 s3, 33                                        // 000000082E9C: BF0AA103
	s_cbranch_scc1 39                                          // 000000082EA0: BFA20027 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3840>
	s_cmp_lt_u32 s3, 64                                        // 000000082EA4: BF0AC003
	ds_store_b32 v8, v12                                       // 000000082EA8: D8340000 00000C08
	s_cbranch_scc1 34                                          // 000000082EB0: BFA20022 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x383c>
	s_mov_b32 s6, s3                                           // 000000082EB4: BE860003
	s_nop 0                                                    // 000000082EB8: BF800000
	s_nop 0                                                    // 000000082EBC: BF800000
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000082EC0: BF870009
	s_lshr_b32 s7, s6, 1                                       // 000000082EC4: 85078106
	s_waitcnt lgkmcnt(0)                                       // 000000082EC8: BF89FC07
	v_add_nc_u32_e32 v9, s7, v1                                // 000000082ECC: 4A120207
	v_cmp_gt_u32_e32 vcc_lo, s7, v1                            // 000000082ED0: 7C980207
	s_barrier                                                  // 000000082ED4: BFBD0000
	buffer_gl0_inv                                             // 000000082ED8: E0AC0000 00000000
	v_cmp_gt_u32_e64 s2, s3, v9                                // 000000082EE0: D44C0002 00021203
	s_and_b32 s2, vcc_lo, s2                                   // 000000082EE8: 8B02026A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000082EEC: BF870009
	s_and_saveexec_b32 s8, s2                                  // 000000082EF0: BE882002
	s_cbranch_execz 12                                         // 000000082EF4: BFA5000C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3828>
	v_lshl_add_u32 v9, s7, 2, v8                               // 000000082EF8: D6460009 04210407
	v_cmp_u_f32_e32 vcc_lo, v12, v12                           // 000000082F00: 7C30190C
	ds_load_b32 v9, v9                                         // 000000082F04: D8D80000 09000009
	s_waitcnt lgkmcnt(0)                                       // 000000082F0C: BF89FC07
	v_cmp_gt_f32_e64 s2, v12, v9                               // 000000082F10: D4140002 0002130C
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000082F18: 8C6A026A
	v_cndmask_b32_e32 v12, v9, v12, vcc_lo                     // 000000082F1C: 02181909
	ds_store_b32 v8, v12                                       // 000000082F20: D8340000 00000C08
	s_or_b32 exec_lo, exec_lo, s8                              // 000000082F28: 8C7E087E
	s_cmpk_gt_u32 s6, 0x7f                                     // 000000082F2C: B586007F
	s_cbranch_scc0 2                                           // 000000082F30: BFA10002 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x383c>
	s_mov_b32 s6, s7                                           // 000000082F34: BE860007
	s_branch 65505                                             // 000000082F38: BFA0FFE1 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x37c0>
	s_mov_b32 s3, 32                                           // 000000082F3C: BE8300A0
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000082F40: BF870009
	s_cmp_lt_u32 s3, 2                                         // 000000082F44: BF0A8203
	s_waitcnt lgkmcnt(0)                                       // 000000082F48: BF89FC07
	s_barrier                                                  // 000000082F4C: BFBD0000
	buffer_gl0_inv                                             // 000000082F50: E0AC0000 00000000
	s_cbranch_scc1 23                                          // 000000082F58: BFA20017 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x38b8>
	v_mbcnt_lo_u32_b32 v8, -1, 0                               // 000000082F5C: D71F0008 000100C1
	s_mov_b32 s6, 1                                            // 000000082F64: BE860081
	s_delay_alu instid0(VALU_DEP_1)                            // 000000082F68: BF870001
	v_sub_nc_u32_e32 v9, 32, v8                                // 000000082F6C: 4C1210A0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)// 000000082F70: BF8701A1
	v_cmp_lt_i32_e32 vcc_lo, s6, v9                            // 000000082F74: 7C821206
	v_cndmask_b32_e64 v13, 0, s6, vcc_lo                       // 000000082F78: D501000D 01A80C80
	v_cmp_u_f32_e32 vcc_lo, v12, v12                           // 000000082F80: 7C30190C
	s_lshl_b32 s6, s6, 1                                       // 000000082F84: 84068106
	s_delay_alu instid0(VALU_DEP_2)                            // 000000082F88: BF870002
	v_add_lshl_u32 v13, v13, v8, 2                             // 000000082F8C: D647000D 020A110D
	ds_bpermute_b32 v13, v13, v12                              // 000000082F94: DACC0000 0D000C0D
	s_waitcnt lgkmcnt(0)                                       // 000000082F9C: BF89FC07
	v_cmp_gt_f32_e64 s2, v12, v13                              // 000000082FA0: D4140002 00021B0C
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000082FA8: 8C6A026A
	s_cmp_lt_i32 s6, s3                                        // 000000082FAC: BF040306
	v_cndmask_b32_e32 v12, v13, v12, vcc_lo                    // 000000082FB0: 0218190D
	s_cbranch_scc1 65518                                       // 000000082FB4: BFA2FFEE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3870>
	s_mov_b32 s8, 0                                            // 000000082FB8: BE880080
	s_and_saveexec_b32 s3, s19                                 // 000000082FBC: BE832013
	s_cbranch_execz 91                                         // 000000082FC0: BFA5005B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3a30>
	s_load_b32 s6, s[0:1], 0x2c8                               // 000000082FC4: F4000180 F80002C8
	s_mov_b32 s2, exec_lo                                      // 000000082FCC: BE82007E
	s_waitcnt lgkmcnt(0)                                       // 000000082FD0: BF89FC07
	s_bitcmp1_b32 s6, 0                                        // 000000082FD4: BF0D8006
	s_cselect_b32 s7, -1, 0                                    // 000000082FD8: 980780C1
	v_cmpx_ne_u64_e32 0, v[5:6]                                // 000000082FDC: 7DBA0A80
	s_xor_b32 s9, exec_lo, s2                                  // 000000082FE0: 8D09027E
	s_cbranch_execz 35                                         // 000000082FE4: BFA50023 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3974>
	s_and_not1_b32 vcc_lo, exec_lo, s7                         // 000000082FE8: 916A077E
	s_cbranch_vccnz 8                                          // 000000082FEC: BFA40008 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3910>
	global_load_b32 v8, v[3:4], off                            // 000000082FF0: DC520000 087C0003
	s_waitcnt vmcnt(0)                                         // 000000082FF8: BF8903F7
	v_cmp_u_f32_e32 vcc_lo, v8, v8                             // 000000082FFC: 7C301108
	v_cmp_gt_f32_e64 s2, v8, v12                               // 000000083000: D4140002 00021908
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000083008: 8C6A026A
	v_cndmask_b32_e32 v12, v12, v8, vcc_lo                     // 00000008300C: 0218110C
	s_bfe_u32 s2, s6, 0x10008                                  // 000000083010: 9302FF06 00010008
	s_mov_b32 s8, -1                                           // 000000083018: BE8800C1
	s_cmp_eq_u32 s2, 0                                         // 00000008301C: BF068002
	s_mov_b32 s2, 0                                            // 000000083020: BE820080
	s_cbranch_scc0 3                                           // 000000083024: BFA10003 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3934>
	s_mov_b32 s8, 0                                            // 000000083028: BE880080
	global_store_b32 v[3:4], v12, off                          // 00000008302C: DC6A0000 007C0C03
	s_and_not1_b32 vcc_lo, exec_lo, s8                         // 000000083034: 916A087E
	s_cbranch_vccnz 13                                         // 000000083038: BFA4000D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3970>
	s_load_b32 s2, s[0:1], 0x2cc                               // 00000008303C: F4000080 F80002CC
	s_waitcnt lgkmcnt(0)                                       // 000000083044: BF89FC07
	s_cmp_lg_u32 s2, 1                                         // 000000083048: BF078102
	s_cbranch_scc1 198                                         // 00000008304C: BFA200C6 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3c68>
	s_mov_b32 s2, 0                                            // 000000083050: BE820080
	v_add_co_u32 v7, s8, s4, v7                                // 000000083054: D7000807 00020E04
	s_delay_alu instid0(VALU_DEP_1)                            // 00000008305C: BF870001
	v_add_co_ci_u32_e64 v8, null, s5, 0, s8                    // 000000083060: D5207C08 00210005
	global_store_b32 v[7:8], v12, off                          // 000000083068: DC6A0000 007C0C07
	s_and_b32 s8, s2, exec_lo                                  // 000000083070: 8B087E02
	s_and_not1_saveexec_b32 s9, s9                             // 000000083074: BE893009
	s_cbranch_execz 42                                         // 000000083078: BFA5002A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3a24>
	v_add_co_u32 v7, s2, s4, v7                                // 00000008307C: D7000207 00020E04
	s_delay_alu instid0(VALU_DEP_1)                            // 000000083084: BF870001
	v_add_co_ci_u32_e64 v8, null, s5, 0, s2                    // 000000083088: D5207C08 00090005
	s_and_not1_b32 vcc_lo, exec_lo, s7                         // 000000083090: 916A077E
	s_cbranch_vccnz 8                                          // 000000083094: BFA40008 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x39b8>
	global_load_b32 v9, v[7:8], off                            // 000000083098: DC520000 097C0007
	s_waitcnt vmcnt(0)                                         // 0000000830A0: BF8903F7
	v_cmp_u_f32_e32 vcc_lo, v9, v9                             // 0000000830A4: 7C301309
	v_cmp_gt_f32_e64 s2, v9, v12                               // 0000000830A8: D4140002 00021909
	s_or_b32 vcc_lo, vcc_lo, s2                                // 0000000830B0: 8C6A026A
	v_cndmask_b32_e32 v12, v12, v9, vcc_lo                     // 0000000830B4: 0218130C
	s_bitcmp1_b32 s6, 8                                        // 0000000830B8: BF0D8806
	s_cselect_b32 s2, -1, 0                                    // 0000000830BC: 980280C1
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000830C0: BF870009
	s_and_b32 vcc_lo, exec_lo, s2                              // 0000000830C4: 8B6A027E
	s_mov_b32 s2, -1                                           // 0000000830C8: BE8200C1
	s_cbranch_vccnz 3                                          // 0000000830CC: BFA40003 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x39dc>
	s_mov_b32 s2, 0                                            // 0000000830D0: BE820080
	global_store_b32 v[7:8], v12, off                          // 0000000830D4: DC6A0000 007C0C07
	s_and_not1_b32 vcc_lo, exec_lo, s2                         // 0000000830DC: 916A027E
	s_mov_b32 s2, s8                                           // 0000000830E0: BE820008
	s_cbranch_vccnz 11                                         // 0000000830E4: BFA4000B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3a14>
	s_load_b32 s2, s[0:1], 0x2cc                               // 0000000830E8: F4000080 F80002CC
	s_mov_b32 s6, -1                                           // 0000000830F0: BE8600C1
	s_waitcnt lgkmcnt(0)                                       // 0000000830F4: BF89FC07
	s_cmp_lg_u32 s2, 1                                         // 0000000830F8: BF078102
	s_mov_b32 s2, s8                                           // 0000000830FC: BE820008
	s_cbranch_scc1 157                                         // 000000083100: BFA2009D <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3c78>
	s_and_not1_b32 vcc_lo, exec_lo, s6                         // 000000083104: 916A067E
	s_cbranch_vccnz 2                                          // 000000083108: BFA40002 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3a14>
	global_store_b32 v[7:8], v12, off                          // 00000008310C: DC6A0000 007C0C07
	s_and_not1_b32 s6, s8, exec_lo                             // 000000083114: 91067E08
	s_and_b32 s2, s2, exec_lo                                  // 000000083118: 8B027E02
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000008311C: BF870009
	s_or_b32 s8, s6, s2                                        // 000000083120: 8C080206
	s_or_b32 exec_lo, exec_lo, s9                              // 000000083124: 8C7E097E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000083128: BF870009
	s_and_b32 s8, s8, exec_lo                                  // 00000008312C: 8B087E08
	s_or_b32 exec_lo, exec_lo, s3                              // 000000083130: 8C7E037E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000083134: BF870009
	s_and_b32 vcc_lo, exec_lo, s18                             // 000000083138: 8B6A127E
	s_cbranch_vccz 40                                          // 00000008313C: BFA30028 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3ae0>
	v_cmp_eq_u32_e32 vcc_lo, 0, v1                             // 000000083140: 7C940280
	v_cmp_gt_i32_e64 s2, s13, v10                              // 000000083144: D4440002 0002140D
	v_cmp_eq_u32_e64 s3, 0, v0                                 // 00000008314C: D44A0003 00020080
	s_mov_b32 s17, 0                                           // 000000083154: BE910080
	s_or_b32 s6, vcc_lo, s16                                   // 000000083158: 8C06106A
	s_or_b32 s3, s3, s12                                       // 00000008315C: 8C030C03
	s_and_b32 s2, s2, s6                                       // 000000083160: 8B020602
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000083164: BF870499
	s_and_b32 s2, s2, s3                                       // 000000083168: 8B020302
	s_and_saveexec_b32 s3, s2                                  // 00000008316C: BE832002
	s_cbranch_execz 113                                        // 000000083170: BFA50071 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3c38>
	s_load_b32 s6, s[0:1], 0x2c8                               // 000000083174: F4000180 F80002C8
	v_add_co_u32 v0, s2, s4, v2                                // 00000008317C: D7000200 00020404
	s_delay_alu instid0(VALU_DEP_1)                            // 000000083184: BF870001
	v_add_co_ci_u32_e64 v1, null, s5, 0, s2                    // 000000083188: D5207C01 00090005
	s_mov_b32 s4, s8                                           // 000000083190: BE840008
	s_mov_b32 s2, exec_lo                                      // 000000083194: BE82007E
	s_waitcnt lgkmcnt(0)                                       // 000000083198: BF89FC07
	s_bitcmp1_b32 s6, 0                                        // 00000008319C: BF0D8006
	s_cselect_b32 s5, -1, 0                                    // 0000000831A0: 980580C1
	v_cmpx_ne_u64_e32 0, v[5:6]                                // 0000000831A4: 7DBA0A80
	s_xor_b32 s7, exec_lo, s2                                  // 0000000831A8: 8D07027E
	s_cbranch_execz 54                                         // 0000000831AC: BFA50036 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3b88>
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 0000000831B0: 916A057E
	s_cbranch_vccz 19                                          // 0000000831B4: BFA30013 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3b04>
	s_bfe_u32 s2, s6, 0x10008                                  // 0000000831B8: 9302FF06 00010008
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000831C0: BF870009
	s_cmp_eq_u32 s2, 0                                         // 0000000831C4: BF068002
	s_mov_b32 s2, -1                                           // 0000000831C8: BE8200C1
	s_cbranch_scc1 27                                          // 0000000831CC: BFA2001B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3b3c>
	s_and_not1_b32 vcc_lo, exec_lo, s2                         // 0000000831D0: 916A027E
	s_mov_b32 s2, s8                                           // 0000000831D4: BE820008
	s_cbranch_vccz 28                                          // 0000000831D8: BFA3001C <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3b4c>
	s_branch 38                                                // 0000000831DC: BFA00026 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3b78>
	s_and_saveexec_b32 s0, s8                                  // 0000000831E0: BE802008
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000831E4: BF870009
	s_or_b32 exec_lo, exec_lo, s0                              // 0000000831E8: 8C7E007E
	s_and_saveexec_b32 s0, s17                                 // 0000000831EC: BE802011
	s_cbranch_execnz 1                                         // 0000000831F0: BFA60001 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3af8>
	s_endpgm                                                   // 0000000831F4: BFB00000
	global_store_b32 v[0:1], v11, off                          // 0000000831F8: DC6A0000 007C0B00
	s_endpgm                                                   // 000000083200: BFB00000
	global_load_b32 v2, v[3:4], off                            // 000000083204: DC520000 027C0003
	s_waitcnt vmcnt(0)                                         // 00000008320C: BF8903F7
	v_cmp_u_f32_e32 vcc_lo, v2, v2                             // 000000083210: 7C300502
	v_cmp_gt_f32_e64 s2, v2, v11                               // 000000083214: D4140002 00021702
	s_or_b32 vcc_lo, vcc_lo, s2                                // 00000008321C: 8C6A026A
	v_cndmask_b32_e32 v11, v11, v2, vcc_lo                     // 000000083220: 0216050B
	s_bfe_u32 s2, s6, 0x10008                                  // 000000083224: 9302FF06 00010008
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000008322C: BF870009
	s_cmp_eq_u32 s2, 0                                         // 000000083230: BF068002
	s_mov_b32 s2, -1                                           // 000000083234: BE8200C1
	s_cbranch_scc0 65509                                       // 000000083238: BFA1FFE5 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3ad0>
	global_store_b32 v[3:4], v11, off                          // 00000008323C: DC6A0000 007C0B03
	s_mov_b32 s2, s8                                           // 000000083244: BE820008
	s_cbranch_execnz 11                                        // 000000083248: BFA6000B <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3b78>
	s_load_b32 s2, s[0:1], 0x2cc                               // 00000008324C: F4000080 F80002CC
	s_mov_b32 s4, -1                                           // 000000083254: BE8400C1
	s_waitcnt lgkmcnt(0)                                       // 000000083258: BF89FC07
	s_cmp_lg_u32 s2, 1                                         // 00000008325C: BF078102
	s_mov_b32 s2, s8                                           // 000000083260: BE820008
	s_cbranch_scc1 56                                          // 000000083264: BFA20038 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3c48>
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 000000083268: 916A047E
	s_cbranch_vccnz 2                                          // 00000008326C: BFA40002 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3b78>
	global_store_b32 v[0:1], v11, off                          // 000000083270: DC6A0000 007C0B00
	s_and_not1_b32 s4, s8, exec_lo                             // 000000083278: 91047E08
	s_and_b32 s2, s2, exec_lo                                  // 00000008327C: 8B027E02
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000083280: BF870009
	s_or_b32 s4, s4, s2                                        // 000000083284: 8C040204
	s_or_saveexec_b32 s7, s7                                   // 000000083288: BE872207
	s_mov_b32 s2, 0                                            // 00000008328C: BE820080
	s_xor_b32 exec_lo, exec_lo, s7                             // 000000083290: 8D7E077E
	s_cbranch_execz 34                                         // 000000083294: BFA50022 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3c20>
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 000000083298: 916A057E
	s_cbranch_vccnz 8                                          // 00000008329C: BFA40008 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3bc0>
	global_load_b32 v2, v[0:1], off                            // 0000000832A0: DC520000 027C0000
	s_waitcnt vmcnt(0)                                         // 0000000832A8: BF8903F7
	v_cmp_u_f32_e32 vcc_lo, v2, v2                             // 0000000832AC: 7C300502
	v_cmp_gt_f32_e64 s2, v2, v11                               // 0000000832B0: D4140002 00021702
	s_or_b32 vcc_lo, vcc_lo, s2                                // 0000000832B8: 8C6A026A
	v_cndmask_b32_e32 v11, v11, v2, vcc_lo                     // 0000000832BC: 0216050B
	s_bitcmp1_b32 s6, 8                                        // 0000000832C0: BF0D8806
	s_mov_b32 s5, -1                                           // 0000000832C4: BE8500C1
	s_cselect_b32 s2, -1, 0                                    // 0000000832C8: 980280C1
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000832CC: BF870009
	s_and_b32 vcc_lo, exec_lo, s2                              // 0000000832D0: 8B6A027E
	s_cbranch_vccnz 3                                          // 0000000832D4: BFA40003 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3be4>
	s_mov_b32 s5, 0                                            // 0000000832D8: BE850080
	global_store_b32 v[0:1], v11, off                          // 0000000832DC: DC6A0000 007C0B00
	s_mov_b32 s2, 0                                            // 0000000832E4: BE820080
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 0000000832E8: 916A057E
	s_mov_b32 s5, s4                                           // 0000000832EC: BE850004
	s_cbranch_vccnz 7                                          // 0000000832F0: BFA40007 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3c10>
	s_load_b32 s0, s[0:1], 0x2cc                               // 0000000832F4: F4000000 F80002CC
	s_mov_b32 s2, -1                                           // 0000000832FC: BE8200C1
	s_mov_b32 s5, s4                                           // 000000083300: BE850004
	s_waitcnt lgkmcnt(0)                                       // 000000083304: BF89FC07
	s_cmp_lg_u32 s0, 1                                         // 000000083308: BF078100
	s_cbranch_scc1 18                                          // 00000008330C: BFA20012 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3c58>
	s_and_not1_b32 s0, s4, exec_lo                             // 000000083310: 91007E04
	s_and_b32 s1, s5, exec_lo                                  // 000000083314: 8B017E05
	s_and_b32 s2, s2, exec_lo                                  // 000000083318: 8B027E02
	s_or_b32 s4, s0, s1                                        // 00000008331C: 8C040100
	s_or_b32 exec_lo, exec_lo, s7                              // 000000083320: 8C7E077E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000083324: BF870009
	s_and_not1_b32 s0, s8, exec_lo                             // 000000083328: 91007E08
	s_and_b32 s1, s4, exec_lo                                  // 00000008332C: 8B017E04
	s_and_b32 s17, s2, exec_lo                                 // 000000083330: 8B117E02
	s_or_b32 s8, s0, s1                                        // 000000083334: 8C080100
	s_or_b32 exec_lo, exec_lo, s3                              // 000000083338: 8C7E037E
	s_and_saveexec_b32 s0, s8                                  // 00000008333C: BE802008
	s_cbranch_execnz 65448                                     // 000000083340: BFA6FFA8 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3ae4>
	s_branch 65447                                             // 000000083344: BFA0FFA7 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3ae4>
	s_cbranch_execnz 15                                        // 000000083348: BFA6000F <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3c88>
	s_or_b32 s2, s8, exec_lo                                   // 00000008334C: 8C027E08
	s_cbranch_execz 65479                                      // 000000083350: BFA5FFC7 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3b70>
	s_branch 65480                                             // 000000083354: BFA0FFC8 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3b78>
	s_cbranch_execnz 24                                        // 000000083358: BFA60018 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3cbc>
	s_mov_b32 s2, 0                                            // 00000008335C: BE820080
	s_or_b32 s5, s4, exec_lo                                   // 000000083360: 8C057E04
	s_branch 65514                                             // 000000083364: BFA0FFEA <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3c10>
	s_cbranch_execnz 33                                        // 000000083368: BFA60021 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3cf0>
	s_mov_b32 s2, -1                                           // 00000008336C: BE8200C1
	s_cbranch_execz 65336                                      // 000000083370: BFA5FF38 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3954>
	s_branch 65342                                             // 000000083374: BFA0FF3E <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3970>
	s_cbranch_execnz 42                                        // 000000083378: BFA6002A <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3d24>
	s_or_b32 s2, s8, exec_lo                                   // 00000008337C: 8C027E08
	s_cbranch_execz 65378                                      // 000000083380: BFA5FF62 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3a0c>
	s_branch 65379                                             // 000000083384: BFA0FF63 <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3a14>
	s_trap 2                                                   // 000000083388: BF900002
	s_sendmsg_rtn_b32 s0, sendmsg(MSG_RTN_GET_DOORBELL)        // 00000008338C: BE804C80
	s_mov_b32 ttmp2, m0                                        // 000000083390: BEEE007D
	s_waitcnt lgkmcnt(0)                                       // 000000083394: BF89FC07
	s_and_b32 s0, s0, 0x3ff                                    // 000000083398: 8B00FF00 000003FF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 0000000833A0: BF870499
	s_bitset1_b32 s0, 10                                       // 0000000833A4: BE80128A
	s_mov_b32 m0, s0                                           // 0000000833A8: BEFD0000
	s_sendmsg sendmsg(MSG_INTERRUPT)                           // 0000000833AC: BFB60001
	s_mov_b32 m0, ttmp2                                        // 0000000833B0: BEFD006E
	s_sethalt 5                                                // 0000000833B4: BF820005
	s_branch 65534                                             // 0000000833B8: BFA0FFFE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3cb4>
	s_trap 2                                                   // 0000000833BC: BF900002
	s_sendmsg_rtn_b32 s0, sendmsg(MSG_RTN_GET_DOORBELL)        // 0000000833C0: BE804C80
	s_mov_b32 ttmp2, m0                                        // 0000000833C4: BEEE007D
	s_waitcnt lgkmcnt(0)                                       // 0000000833C8: BF89FC07
	s_and_b32 s0, s0, 0x3ff                                    // 0000000833CC: 8B00FF00 000003FF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 0000000833D4: BF870499
	s_bitset1_b32 s0, 10                                       // 0000000833D8: BE80128A
	s_mov_b32 m0, s0                                           // 0000000833DC: BEFD0000
	s_sendmsg sendmsg(MSG_INTERRUPT)                           // 0000000833E0: BFB60001
	s_mov_b32 m0, ttmp2                                        // 0000000833E4: BEFD006E
	s_sethalt 5                                                // 0000000833E8: BF820005
	s_branch 65534                                             // 0000000833EC: BFA0FFFE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3ce8>
	s_trap 2                                                   // 0000000833F0: BF900002
	s_sendmsg_rtn_b32 s0, sendmsg(MSG_RTN_GET_DOORBELL)        // 0000000833F4: BE804C80
	s_mov_b32 ttmp2, m0                                        // 0000000833F8: BEEE007D
	s_waitcnt lgkmcnt(0)                                       // 0000000833FC: BF89FC07
	s_and_b32 s0, s0, 0x3ff                                    // 000000083400: 8B00FF00 000003FF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000083408: BF870499
	s_bitset1_b32 s0, 10                                       // 00000008340C: BE80128A
	s_mov_b32 m0, s0                                           // 000000083410: BEFD0000
	s_sendmsg sendmsg(MSG_INTERRUPT)                           // 000000083414: BFB60001
	s_mov_b32 m0, ttmp2                                        // 000000083418: BEFD006E
	s_sethalt 5                                                // 00000008341C: BF820005
	s_branch 65534                                             // 000000083420: BFA0FFFE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3d1c>
	s_trap 2                                                   // 000000083424: BF900002
	s_sendmsg_rtn_b32 s0, sendmsg(MSG_RTN_GET_DOORBELL)        // 000000083428: BE804C80
	s_mov_b32 ttmp2, m0                                        // 00000008342C: BEEE007D
	s_waitcnt lgkmcnt(0)                                       // 000000083430: BF89FC07
	s_and_b32 s0, s0, 0x3ff                                    // 000000083434: 8B00FF00 000003FF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 00000008343C: BF870499
	s_bitset1_b32 s0, 10                                       // 000000083440: BE80128A
	s_mov_b32 m0, s0                                           // 000000083444: BEFD0000
	s_sendmsg sendmsg(MSG_INTERRUPT)                           // 000000083448: BFB60001
	s_mov_b32 m0, ttmp2                                        // 00000008344C: BEFD006E
	s_sethalt 5                                                // 000000083450: BF820005
	s_branch 65534                                             // 000000083454: BFA0FFFE <_ZN2at6native13reduce_kernelILi512ELi1ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3d50>
