
/root/batchmatmulmaxsum/implement/hip/results/s0_20261028/code_objects/_code_object0005.o:	file format elf64-amdgpu

Disassembly of section .text:

0000000000d78a00 <Cijk_Alik_Bljk_SB_MT16x16x8_SN_1LDSB0_APM1_ABV0_ACED0_AF0EM1_AF1EM1_AMAS0_ASE_ASGT_ASLT_ASM_ASAE01_ASCE01_ASEM1_AAC0_BL1_BS1_CLR0_DTLA0_DTLB0_DTVA0_DTVB0_DVO0_ETSP_EPS1_ELFLR0_EMLL0_FSSC10_FL0_GLVWA1_GLVWB1_GRCGA1_GRCGB1_GRPM1_GRVW1_GSU1_GSUASB_GLS0_ISA1100_IU1_K1_KLA_LBSPPA0_LBSPPB0_LPA0_LPB0_LDL1_LRVW1_LWPMn1_LDW0_FMA_MIAV0_MDA2_MO40_MMFGLC_MKFGSU256_NTA0_NTB0_NTC0_NTD0_NEPBS0_NLCA1_NLCB1_ONLL1_OPLV0_PK0_PAP0_PGR1_PLR1_PKA0_SIA1_SLW1_SS0_SU32_SUM3_SUS128_SCIUI1_SPO0_SRVW0_SSO0_SVW4_SNLL0_TSGRA0_TSGRB0_TT2_2_TLDS0_UMLDSA0_UMLDSB0_U64SL1_USFGROn1_VAW1_VSn1_VW1_VWB1_VFLRP0_WSGRA0_WSGRB0_WS32_WG8_8_1_WGM1_preloaded>:
	s_mov_b32 vcc_hi, 0                                        // 000000D78A00: BEEB0080
	s_load_b512 s[24:39], s[0:1], null                         // 000000D78A04: F4100600 F8000000
	s_load_b256 s[40:47], s[0:1], 0x40                         // 000000D78A0C: F40C0A00 F8000040
	s_load_b128 s[48:51], s[0:1], 0x60                         // 000000D78A14: F4080C00 F8000060
	s_load_b32 s52, s[0:1], 0x70                               // 000000D78A1C: F4000D00 F8000070
	s_mov_b32 m0, 0x800                                        // 000000D78A24: BEFD00FF 00000800
	v_mov_b32_e32 v26, v0                                      // 000000D78A2C: 7E340300
	v_lshrrev_b32_e32 v0, 3, v26                               // 000000D78A30: 32003483
	v_and_b32_e32 v1, 7, v26                                   // 000000D78A34: 36023487
	v_lshrrev_b32_e32 v2, 3, v0                                // 000000D78A38: 32040083
	v_and_b32_e32 v3, 7, v0                                    // 000000D78A3C: 36060087
	v_lshrrev_b32_e32 v0, 6, v26                               // 000000D78A40: 32003486
	v_lshlrev_b32_e32 v0, 4, v0                                // 000000D78A44: 30000084
	v_add_lshl_u32 v24, v0, v1, 2                              // 000000D78A48: D6470018 020A0300
	v_lshrrev_b32_e32 v0, 6, v26                               // 000000D78A50: 32003486
	v_lshlrev_b32_e32 v0, 4, v0                                // 000000D78A54: 30000084
	v_add_lshl_u32 v25, v0, v3, 2                              // 000000D78A58: D6470019 020A0700
	v_add_co_u32 v25, vcc_lo, 0x200, v25                       // 000000D78A60: D7006A19 000232FF 00000200
	v_lshrrev_b32_e32 v0, 3, v26                               // 000000D78A6C: 32003483
	v_and_b32_e32 v1, 7, v26                                   // 000000D78A70: 36023487
	v_lshrrev_b32_e32 v2, 3, v26                               // 000000D78A74: 32043483
	v_and_b32_e32 v3, 7, v26                                   // 000000D78A78: 36063487
	v_mul_u32_u24_e32 v15, 16, v1                              // 000000D78A7C: 161E0290
	v_add_lshl_u32 v15, v0, v15, 2                             // 000000D78A80: D647000F 020A1F00
	v_mul_u32_u24_e32 v16, 16, v3                              // 000000D78A88: 16200690
	v_add_lshl_u32 v16, v2, v16, 2                             // 000000D78A8C: D6470010 020A2102
	v_add_co_u32 v16, vcc_lo, 0x200, v16                       // 000000D78A94: D7006A10 000220FF 00000200
	s_waitcnt lgkmcnt(0)                                       // 000000D78AA0: BF89FC07
	s_mov_b64 s[20:21], s[30:31]                               // 000000D78AA4: BE94011E
	s_mov_b64 s[16:17], s[28:29]                               // 000000D78AA8: BE90011C
	s_sub_u32 s8, s32, 4                                       // 000000D78AAC: 80888420
	s_subb_u32 s9, s33, 0                                      // 000000D78AB0: 82898021
	s_sub_u32 s12, s34, 4                                      // 000000D78AB4: 808C8422
	s_subb_u32 s13, s35, 0                                     // 000000D78AB8: 828D8023
	v_cmp_eq_f32_e64 vcc_lo, s36, 0                            // 000000D78ABC: D412006A 00010024
	s_cbranch_vccz label_AlphaNonZero                          // 000000D78AC4: BFA30001
	s_mov_b32 s49, 0                                           // 000000D78AC8: BEB10080

0000000000d78acc <label_AlphaNonZero>:
	v_mul_lo_u32 v6, s42, v0                                   // 000000D78ACC: D72C0006 0002002A
	v_add_co_u32 v17, vcc_lo, v1, v6                           // 000000D78AD4: D7006A11 00020D01
	v_add_nc_u32_e32 v17, 1, v17                               // 000000D78ADC: 4A222281
	v_lshlrev_b32_e32 v17, 2, v17                              // 000000D78AE0: 30222282
	s_mul_i32 s53, s42, 8                                      // 000000D78AE4: 9635882A
	s_lshl_b32 s53, s53, 2                                     // 000000D78AE8: 84358235
	v_mul_lo_u32 v6, s44, v2                                   // 000000D78AEC: D72C0006 0002042C
	v_add_co_u32 v18, vcc_lo, v3, v6                           // 000000D78AF4: D7006A12 00020D03
	v_add_nc_u32_e32 v18, 1, v18                               // 000000D78AFC: 4A242481
	v_lshlrev_b32_e32 v18, 2, v18                              // 000000D78B00: 30242482
	s_mul_i32 s56, s44, 8                                      // 000000D78B04: 9638882C
	s_lshl_b32 s56, s56, 2                                     // 000000D78B08: 84388238
	s_mul_hi_u32 s61, s2, 16                                   // 000000D78B0C: 96BD9002
	s_mul_i32 s60, s2, 16                                      // 000000D78B10: 963C9002
	s_mul_hi_u32 s61, s60, s42                                 // 000000D78B14: 96BD2A3C
	s_mul_i32 s60, s60, s42                                    // 000000D78B18: 963C2A3C
	s_sub_u32 s0, s24, s60                                     // 000000D78B1C: 80803C18
	s_subb_u32 s1, s25, s61                                    // 000000D78B20: 82813D19
	s_lshl_b64 s[0:1], s[0:1], 2                               // 000000D78B24: 84808200
	s_add_u32 s0, s0, 4                                        // 000000D78B28: 80008400
	s_addc_u32 s1, s1, 0                                       // 000000D78B2C: 82018001
	s_cmp_eq_u32 s1, 0                                         // 000000D78B30: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000D78B34: 980AC100
	s_mul_hi_u32 s59, s43, s4                                  // 000000D78B38: 96BB042B
	s_mul_i32 s58, s43, s4                                     // 000000D78B3C: 963A042B
	s_add_u32 s60, s60, s58                                    // 000000D78B40: 803C3A3C
	s_addc_u32 s61, s61, s59                                   // 000000D78B44: 823D3B3D
	s_lshl_b64 s[60:61], s[60:61], 2                           // 000000D78B48: 84BC823C
	s_add_u32 s8, s8, s60                                      // 000000D78B4C: 80083C08
	s_addc_u32 s9, s9, s61                                     // 000000D78B50: 82093D09
	s_mov_b32 s11, 0x31004000                                  // 000000D78B54: BE8B00FF 31004000
	s_mul_hi_u32 s61, s3, 16                                   // 000000D78B5C: 96BD9003
	s_mul_i32 s60, s3, 16                                      // 000000D78B60: 963C9003
	s_mul_hi_u32 s61, s60, s44                                 // 000000D78B64: 96BD2C3C
	s_mul_i32 s60, s60, s44                                    // 000000D78B68: 963C2C3C
	s_sub_u32 s28, s26, s60                                    // 000000D78B6C: 809C3C1A
	s_subb_u32 s29, s27, s61                                   // 000000D78B70: 829D3D1B
	s_lshl_b64 s[28:29], s[28:29], 2                           // 000000D78B74: 849C821C
	s_add_u32 s28, s28, 4                                      // 000000D78B78: 801C841C
	s_addc_u32 s29, s29, 0                                     // 000000D78B7C: 821D801D
	s_cmp_eq_u32 s29, 0                                        // 000000D78B80: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000D78B84: 980EC11C
	s_mul_hi_u32 s59, s45, s4                                  // 000000D78B88: 96BB042D
	s_mul_i32 s58, s45, s4                                     // 000000D78B8C: 963A042D
	s_add_u32 s60, s60, s58                                    // 000000D78B90: 803C3A3C
	s_addc_u32 s61, s61, s59                                   // 000000D78B94: 823D3B3D
	s_lshl_b64 s[60:61], s[60:61], 2                           // 000000D78B98: 84BC823C
	s_add_u32 s12, s12, s60                                    // 000000D78B9C: 800C3C0C
	s_addc_u32 s13, s13, s61                                   // 000000D78BA0: 820D3D0D
	s_mov_b32 s15, 0x31004000                                  // 000000D78BA4: BE8F00FF 31004000
	s_mov_b32 s34, 32                                          // 000000D78BAC: BEA200A0
	s_mov_b32 s35, 32                                          // 000000D78BB0: BEA300A0
	s_lshr_b32 s5, s49, 3                                      // 000000D78BB4: 85058331
	s_mov_b32 s6, s5                                           // 000000D78BB8: BE860005
	s_mul_i32 s58, s51, s52                                    // 000000D78BBC: 963A3433
	s_mul_i32 s58, s58, s4                                     // 000000D78BC0: 963A043A
	s_mul_i32 s59, s51, s3                                     // 000000D78BC4: 963B0333
	s_add_u32 s58, s58, s59                                    // 000000D78BC8: 803A3B3A
	s_add_u32 s58, s58, s2                                     // 000000D78BCC: 803A023A
	s_and_b32 s7, s50, s58                                     // 000000D78BD0: 8B073A32
	s_lshl_b32 s7, s7, 2                                       // 000000D78BD4: 84078207
	s_mul_hi_u32 s59, s7, s34                                  // 000000D78BD8: 96BB2207
	s_mul_i32 s58, s7, s34                                     // 000000D78BDC: 963A2207
	s_mul_hi_u32 s31, s5, s34                                  // 000000D78BE0: 969F2205
	s_mul_i32 s30, s5, s34                                     // 000000D78BE4: 961E2205
	s_sub_u32 s30, s34, s30                                    // 000000D78BE8: 809E1E22
	s_subb_u32 s31, 0, s31                                     // 000000D78BEC: 829F1F80
	s_add_u32 s8, s8, s58                                      // 000000D78BF0: 80083A08
	s_addc_u32 s9, s9, s59                                     // 000000D78BF4: 82093B09
	s_sub_u32 s0, s0, s58                                      // 000000D78BF8: 80803A00
	s_subb_u32 s1, s1, s59                                     // 000000D78BFC: 82813B01
	s_cmp_eq_u32 s1, 0                                         // 000000D78C00: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000D78C04: 980AC100
	s_mul_hi_u32 s59, s7, s35                                  // 000000D78C08: 96BB2307
	s_mul_i32 s58, s7, s35                                     // 000000D78C0C: 963A2307
	s_mul_hi_u32 s33, s5, s35                                  // 000000D78C10: 96A12305
	s_mul_i32 s32, s5, s35                                     // 000000D78C14: 96202305
	s_sub_u32 s32, s35, s32                                    // 000000D78C18: 80A02023
	s_subb_u32 s33, 0, s33                                     // 000000D78C1C: 82A12180
	s_add_u32 s12, s12, s58                                    // 000000D78C20: 800C3A0C
	s_addc_u32 s13, s13, s59                                   // 000000D78C24: 820D3B0D
	s_sub_u32 s28, s28, s58                                    // 000000D78C28: 809C3A1C
	s_subb_u32 s29, s29, s59                                   // 000000D78C2C: 829D3B1D
	s_cmp_eq_u32 s29, 0                                        // 000000D78C30: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000D78C34: 980EC11C
	s_add_u32 s7, s7, 2                                        // 000000D78C38: 80078207
	s_cmp_eq_u32 s5, 0                                         // 000000D78C3C: BF068005
	s_cbranch_scc1 ShadowInitStart_10                          // 000000D78C40: BFA2001C
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000D78C44: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s53 offen               // 000000D78C4C: E0500000 35421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 000000D78C54: E0500000 80431612
	buffer_load_b32 v23, v18, s[12:15], s56 offen              // 000000D78C5C: E0500000 38431712
	s_add_u32 s60, s5, 1                                       // 000000D78C64: 803C8105
	s_cmp_eq_u32 s7, s60                                       // 000000D78C68: BF063C07
	s_cselect_b32 s58, s30, s34                                // 000000D78C6C: 983A221E
	s_cselect_b32 s59, s31, 0                                  // 000000D78C70: 983B801F
	s_add_u32 s8, s8, s58                                      // 000000D78C74: 80083A08
	s_addc_u32 s9, s9, s59                                     // 000000D78C78: 82093B09
	s_sub_u32 s0, s0, s58                                      // 000000D78C7C: 80803A00
	s_subb_u32 s1, s1, s59                                     // 000000D78C80: 82813B01
	s_cmp_eq_u32 s1, 0                                         // 000000D78C84: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000D78C88: 980AC100
	s_add_u32 s60, s5, 1                                       // 000000D78C8C: 803C8105
	s_cmp_eq_u32 s7, s60                                       // 000000D78C90: BF063C07
	s_cselect_b32 s58, s32, s35                                // 000000D78C94: 983A2320
	s_cselect_b32 s59, s33, 0                                  // 000000D78C98: 983B8021
	s_add_u32 s12, s12, s58                                    // 000000D78C9C: 800C3A0C
	s_addc_u32 s13, s13, s59                                   // 000000D78CA0: 820D3B0D
	s_sub_u32 s28, s28, s58                                    // 000000D78CA4: 809C3A1C
	s_subb_u32 s29, s29, s59                                   // 000000D78CA8: 829D3B1D
	s_cmp_eq_u32 s29, 0                                        // 000000D78CAC: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000D78CB0: 980EC11C

0000000000d78cb4 <ShadowInitStart_10>:
	s_mov_b32 s18, 0xfffff000                                  // 000000D78CB4: BE9200FF FFFFF000
	s_mov_b32 s19, 0x31004000                                  // 000000D78CBC: BE9300FF 31004000
	s_mov_b32 s22, 0xfffff000                                  // 000000D78CC4: BE9600FF FFFFF000
	s_mov_b32 s23, 0x31004000                                  // 000000D78CCC: BE9700FF 31004000
	s_mul_i32 s60, 16, s3                                      // 000000D78CD4: 963C0390
	s_mul_hi_u32 s59, s60, s40                                 // 000000D78CD8: 96BB283C
	s_mul_i32 s58, s60, s40                                    // 000000D78CDC: 963A283C
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000D78CE0: 84BA823A
	s_add_u32 s20, s20, s58                                    // 000000D78CE4: 80143A14
	s_addc_u32 s21, s21, s59                                   // 000000D78CE8: 82153B15
	s_mul_hi_u32 s59, s60, s38                                 // 000000D78CEC: 96BB263C
	s_mul_i32 s58, s60, s38                                    // 000000D78CF0: 963A263C
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000D78CF4: 84BA823A
	s_add_u32 s16, s16, s58                                    // 000000D78CF8: 80103A10
	s_addc_u32 s17, s17, s59                                   // 000000D78CFC: 82113B11
	s_mul_hi_u32 s59, s4, s41                                  // 000000D78D00: 96BB2904
	s_mul_i32 s58, s4, s41                                     // 000000D78D04: 963A2904
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000D78D08: 84BA823A
	s_add_u32 s20, s20, s58                                    // 000000D78D0C: 80143A14
	s_addc_u32 s21, s21, s59                                   // 000000D78D10: 82153B15
	s_mul_hi_u32 s59, s4, s39                                  // 000000D78D14: 96BB2704
	s_mul_i32 s58, s4, s39                                     // 000000D78D18: 963A2704
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000D78D1C: 84BA823A
	s_add_u32 s16, s16, s58                                    // 000000D78D20: 80103A10
	s_addc_u32 s17, s17, s59                                   // 000000D78D24: 82113B11
	v_mov_b32_e32 v0, 0                                        // 000000D78D28: 7E000280
	v_mov_b32_e32 v1, 0                                        // 000000D78D2C: 7E020280
	v_mov_b32_e32 v2, 0                                        // 000000D78D30: 7E040280
	v_mov_b32_e32 v3, 0                                        // 000000D78D34: 7E060280
	s_cmp_eq_u32 s5, 0                                         // 000000D78D38: BF068005
	s_cbranch_scc0 label_NoBranch_11                           // 000000D78D3C: BFA10006
	s_getpc_b64 s[58:59]                                       // 000000D78D40: BEBA4700
	s_add_i32 s60, 0x9d4, 4                                    // 000000D78D44: 813C84FF 000009D4
	s_add_u32 s58, s58, s60                                    // 000000D78D4C: 803A3C3A
	s_addc_u32 s59, s59, 0                                     // 000000D78D50: 823B803B
	s_setpc_b64 s[58:59]                                       // 000000D78D54: BE80483A

0000000000d78d58 <label_NoBranch_11>:
	s_waitcnt vmcnt(0)                                         // 000000D78D58: BF8903F7
	ds_store_b32 v15, v20                                      // 000000D78D5C: D8340000 0000140F
	ds_store_b32 v15, v21 offset:32                            // 000000D78D64: D8340020 0000150F
	ds_store_b32 v16, v22                                      // 000000D78D6C: D8340000 00001610
	ds_store_b32 v16, v23 offset:32                            // 000000D78D74: D8340020 00001710
	s_waitcnt lgkmcnt(0)                                       // 000000D78D7C: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000D78D80: BDFC0000
	s_barrier                                                  // 000000D78D84: BFBD0000
	ds_load_b32 v6, v24                                        // 000000D78D88: D8D80000 06000018
	ds_load_b32 v7, v24 offset:32                              // 000000D78D90: D8D80020 07000018
	ds_load_b32 v11, v25                                       // 000000D78D98: D8D80000 0B000019
	ds_load_b32 v12, v25 offset:32                             // 000000D78DA0: D8D80020 0C000019

0000000000d78da8 <openLoopL_12>:
	s_cmp_le_u32 s5, 1                                         // 000000D78DA8: BF0B8105
	s_cbranch_scc1 LoopEndL_2                                  // 000000D78DAC: BFA2014D

0000000000d78db0 <label_0013>:
	ds_load_b32 v8, v24 offset:64                              // 000000D78DB0: D8D80040 08000018
	ds_load_b32 v9, v24 offset:96                              // 000000D78DB8: D8D80060 09000018
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000D78DC0: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s53 offen               // 000000D78DC8: E0500000 35421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 000000D78DD0: E0500000 80431612
	ds_load_b32 v13, v25 offset:64                             // 000000D78DD8: D8D80040 0D000019
	ds_load_b32 v14, v25 offset:96                             // 000000D78DE0: D8D80060 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D78DE8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D78DEC: 56001706
	s_setprio 1                                                // 000000D78DF0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D78DF4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D78DF8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D78DFC: 56061907
	s_setprio 0                                                // 000000D78E00: BFB50000
	ds_load_b32 v6, v24 offset:128                             // 000000D78E04: D8D80080 06000018
	ds_load_b32 v7, v24 offset:160                             // 000000D78E0C: D8D800A0 07000018
	buffer_load_b32 v23, v18, s[12:15], s56 offen              // 000000D78E14: E0500000 38431712
	ds_load_b32 v11, v25 offset:128                            // 000000D78E1C: D8D80080 0B000019
	ds_load_b32 v12, v25 offset:160                            // 000000D78E24: D8D800A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D78E2C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D78E30: 56001B08
	s_setprio 1                                                // 000000D78E34: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D78E38: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D78E3C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D78E40: 56061D09
	s_setprio 0                                                // 000000D78E44: BFB50000
	ds_load_b32 v8, v24 offset:192                             // 000000D78E48: D8D800C0 08000018
	ds_load_b32 v9, v24 offset:224                             // 000000D78E50: D8D800E0 09000018
	s_cmp_eq_u32 s5, s7                                        // 000000D78E58: BF060705
	s_cselect_b32 s58, s30, s34                                // 000000D78E5C: 983A221E
	s_cselect_b32 s59, s31, 0                                  // 000000D78E60: 983B801F
	s_add_u32 s8, s8, s58                                      // 000000D78E64: 80083A08
	s_addc_u32 s9, s9, s59                                     // 000000D78E68: 82093B09
	s_sub_u32 s0, s0, s58                                      // 000000D78E6C: 80803A00
	s_subb_u32 s1, s1, s59                                     // 000000D78E70: 82813B01
	s_cmp_eq_u32 s1, 0                                         // 000000D78E74: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000D78E78: 980AC100
	ds_load_b32 v13, v25 offset:192                            // 000000D78E7C: D8D800C0 0D000019
	ds_load_b32 v14, v25 offset:224                            // 000000D78E84: D8D800E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D78E8C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D78E90: 56001706
	s_setprio 1                                                // 000000D78E94: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D78E98: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D78E9C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D78EA0: 56061907
	s_setprio 0                                                // 000000D78EA4: BFB50000
	ds_load_b32 v6, v24 offset:256                             // 000000D78EA8: D8D80100 06000018
	ds_load_b32 v7, v24 offset:288                             // 000000D78EB0: D8D80120 07000018
	s_cmp_eq_u32 s5, s7                                        // 000000D78EB8: BF060705
	s_cselect_b32 s58, s32, s35                                // 000000D78EBC: 983A2320
	s_cselect_b32 s59, s33, 0                                  // 000000D78EC0: 983B8021
	s_add_u32 s12, s12, s58                                    // 000000D78EC4: 800C3A0C
	s_addc_u32 s13, s13, s59                                   // 000000D78EC8: 820D3B0D
	s_sub_u32 s28, s28, s58                                    // 000000D78ECC: 809C3A1C
	s_subb_u32 s29, s29, s59                                   // 000000D78ED0: 829D3B1D
	s_cmp_eq_u32 s29, 0                                        // 000000D78ED4: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000D78ED8: 980EC11C
	ds_load_b32 v11, v25 offset:256                            // 000000D78EDC: D8D80100 0B000019
	ds_load_b32 v12, v25 offset:288                            // 000000D78EE4: D8D80120 0C000019
	s_waitcnt vmcnt(3)                                         // 000000D78EEC: BF890FF7
	ds_store_b32 v15, v20 offset:1024                          // 000000D78EF0: D8340400 0000140F
	s_waitcnt lgkmcnt(5)                                       // 000000D78EF8: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D78EFC: 56001B08
	s_setprio 1                                                // 000000D78F00: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D78F04: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D78F08: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D78F0C: 56061D09
	s_setprio 0                                                // 000000D78F10: BFB50000
	ds_load_b32 v8, v24 offset:320                             // 000000D78F14: D8D80140 08000018
	ds_load_b32 v9, v24 offset:352                             // 000000D78F1C: D8D80160 09000018
	ds_load_b32 v13, v25 offset:320                            // 000000D78F24: D8D80140 0D000019
	ds_load_b32 v14, v25 offset:352                            // 000000D78F2C: D8D80160 0E000019
	s_waitcnt vmcnt(2)                                         // 000000D78F34: BF890BF7
	ds_store_b32 v15, v21 offset:1056                          // 000000D78F38: D8340420 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000D78F40: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D78F44: 56001706
	s_setprio 1                                                // 000000D78F48: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D78F4C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D78F50: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D78F54: 56061907
	s_setprio 0                                                // 000000D78F58: BFB50000
	ds_load_b32 v6, v24 offset:384                             // 000000D78F5C: D8D80180 06000018
	ds_load_b32 v7, v24 offset:416                             // 000000D78F64: D8D801A0 07000018
	ds_load_b32 v11, v25 offset:384                            // 000000D78F6C: D8D80180 0B000019
	ds_load_b32 v12, v25 offset:416                            // 000000D78F74: D8D801A0 0C000019
	s_waitcnt vmcnt(1)                                         // 000000D78F7C: BF8907F7
	ds_store_b32 v16, v22 offset:1024                          // 000000D78F80: D8340400 00001610
	s_waitcnt lgkmcnt(5)                                       // 000000D78F88: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D78F8C: 56001B08
	s_setprio 1                                                // 000000D78F90: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D78F94: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D78F98: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D78F9C: 56061D09
	s_setprio 0                                                // 000000D78FA0: BFB50000
	ds_load_b32 v8, v24 offset:448                             // 000000D78FA4: D8D801C0 08000018
	ds_load_b32 v9, v24 offset:480                             // 000000D78FAC: D8D801E0 09000018
	ds_load_b32 v13, v25 offset:448                            // 000000D78FB4: D8D801C0 0D000019
	ds_load_b32 v14, v25 offset:480                            // 000000D78FBC: D8D801E0 0E000019
	s_waitcnt vmcnt(0)                                         // 000000D78FC4: BF8903F7
	ds_store_b32 v16, v23 offset:1056                          // 000000D78FC8: D8340420 00001710
	s_waitcnt lgkmcnt(5)                                       // 000000D78FD0: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D78FD4: 56001706
	s_setprio 1                                                // 000000D78FD8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D78FDC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D78FE0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D78FE4: 56061907
	s_setprio 0                                                // 000000D78FE8: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000D78FEC: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000D78FF0: BDFC0000
	s_barrier                                                  // 000000D78FF4: BFBD0000
	ds_load_b32 v6, v24 offset:1024                            // 000000D78FF8: D8D80400 06000018
	ds_load_b32 v7, v24 offset:1056                            // 000000D79000: D8D80420 07000018
	ds_load_b32 v11, v25 offset:1024                           // 000000D79008: D8D80400 0B000019
	ds_load_b32 v12, v25 offset:1056                           // 000000D79010: D8D80420 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D79018: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D7901C: 56001B08
	s_setprio 1                                                // 000000D79020: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D79024: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D79028: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D7902C: 56061D09
	s_setprio 0                                                // 000000D79030: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000D79034: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000D79038: BF008105
	s_cbranch_scc1 LoopEndL_oddexit_3                          // 000000D7903C: BFA200A5

0000000000d79040 <label_0014>:
	ds_load_b32 v8, v24 offset:1088                            // 000000D79040: D8D80440 08000018
	ds_load_b32 v9, v24 offset:1120                            // 000000D79048: D8D80460 09000018
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000D79050: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s53 offen               // 000000D79058: E0500000 35421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 000000D79060: E0500000 80431612
	ds_load_b32 v13, v25 offset:1088                           // 000000D79068: D8D80440 0D000019
	ds_load_b32 v14, v25 offset:1120                           // 000000D79070: D8D80460 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D79078: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D7907C: 56001706
	s_setprio 1                                                // 000000D79080: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D79084: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D79088: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D7908C: 56061907
	s_setprio 0                                                // 000000D79090: BFB50000
	ds_load_b32 v6, v24 offset:1152                            // 000000D79094: D8D80480 06000018
	ds_load_b32 v7, v24 offset:1184                            // 000000D7909C: D8D804A0 07000018
	buffer_load_b32 v23, v18, s[12:15], s56 offen              // 000000D790A4: E0500000 38431712
	ds_load_b32 v11, v25 offset:1152                           // 000000D790AC: D8D80480 0B000019
	ds_load_b32 v12, v25 offset:1184                           // 000000D790B4: D8D804A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D790BC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D790C0: 56001B08
	s_setprio 1                                                // 000000D790C4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D790C8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D790CC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D790D0: 56061D09
	s_setprio 0                                                // 000000D790D4: BFB50000
	ds_load_b32 v8, v24 offset:1216                            // 000000D790D8: D8D804C0 08000018
	ds_load_b32 v9, v24 offset:1248                            // 000000D790E0: D8D804E0 09000018
	s_cmp_eq_u32 s5, s7                                        // 000000D790E8: BF060705
	s_cselect_b32 s58, s30, s34                                // 000000D790EC: 983A221E
	s_cselect_b32 s59, s31, 0                                  // 000000D790F0: 983B801F
	s_add_u32 s8, s8, s58                                      // 000000D790F4: 80083A08
	s_addc_u32 s9, s9, s59                                     // 000000D790F8: 82093B09
	s_sub_u32 s0, s0, s58                                      // 000000D790FC: 80803A00
	s_subb_u32 s1, s1, s59                                     // 000000D79100: 82813B01
	s_cmp_eq_u32 s1, 0                                         // 000000D79104: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000D79108: 980AC100
	ds_load_b32 v13, v25 offset:1216                           // 000000D7910C: D8D804C0 0D000019
	ds_load_b32 v14, v25 offset:1248                           // 000000D79114: D8D804E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D7911C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D79120: 56001706
	s_setprio 1                                                // 000000D79124: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D79128: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D7912C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D79130: 56061907
	s_setprio 0                                                // 000000D79134: BFB50000
	ds_load_b32 v6, v24 offset:1280                            // 000000D79138: D8D80500 06000018
	ds_load_b32 v7, v24 offset:1312                            // 000000D79140: D8D80520 07000018
	s_cmp_eq_u32 s5, s7                                        // 000000D79148: BF060705
	s_cselect_b32 s58, s32, s35                                // 000000D7914C: 983A2320
	s_cselect_b32 s59, s33, 0                                  // 000000D79150: 983B8021
	s_add_u32 s12, s12, s58                                    // 000000D79154: 800C3A0C
	s_addc_u32 s13, s13, s59                                   // 000000D79158: 820D3B0D
	s_sub_u32 s28, s28, s58                                    // 000000D7915C: 809C3A1C
	s_subb_u32 s29, s29, s59                                   // 000000D79160: 829D3B1D
	s_cmp_eq_u32 s29, 0                                        // 000000D79164: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000D79168: 980EC11C
	ds_load_b32 v11, v25 offset:1280                           // 000000D7916C: D8D80500 0B000019
	ds_load_b32 v12, v25 offset:1312                           // 000000D79174: D8D80520 0C000019
	s_waitcnt vmcnt(3)                                         // 000000D7917C: BF890FF7
	ds_store_b32 v15, v20                                      // 000000D79180: D8340000 0000140F
	s_waitcnt lgkmcnt(5)                                       // 000000D79188: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D7918C: 56001B08
	s_setprio 1                                                // 000000D79190: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D79194: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D79198: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D7919C: 56061D09
	s_setprio 0                                                // 000000D791A0: BFB50000
	ds_load_b32 v8, v24 offset:1344                            // 000000D791A4: D8D80540 08000018
	ds_load_b32 v9, v24 offset:1376                            // 000000D791AC: D8D80560 09000018
	ds_load_b32 v13, v25 offset:1344                           // 000000D791B4: D8D80540 0D000019
	ds_load_b32 v14, v25 offset:1376                           // 000000D791BC: D8D80560 0E000019
	s_waitcnt vmcnt(2)                                         // 000000D791C4: BF890BF7
	ds_store_b32 v15, v21 offset:32                            // 000000D791C8: D8340020 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000D791D0: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D791D4: 56001706
	s_setprio 1                                                // 000000D791D8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D791DC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D791E0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D791E4: 56061907
	s_setprio 0                                                // 000000D791E8: BFB50000
	ds_load_b32 v6, v24 offset:1408                            // 000000D791EC: D8D80580 06000018
	ds_load_b32 v7, v24 offset:1440                            // 000000D791F4: D8D805A0 07000018
	ds_load_b32 v11, v25 offset:1408                           // 000000D791FC: D8D80580 0B000019
	ds_load_b32 v12, v25 offset:1440                           // 000000D79204: D8D805A0 0C000019
	s_waitcnt vmcnt(1)                                         // 000000D7920C: BF8907F7
	ds_store_b32 v16, v22                                      // 000000D79210: D8340000 00001610
	s_waitcnt lgkmcnt(5)                                       // 000000D79218: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D7921C: 56001B08
	s_setprio 1                                                // 000000D79220: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D79224: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D79228: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D7922C: 56061D09
	s_setprio 0                                                // 000000D79230: BFB50000
	ds_load_b32 v8, v24 offset:1472                            // 000000D79234: D8D805C0 08000018
	ds_load_b32 v9, v24 offset:1504                            // 000000D7923C: D8D805E0 09000018
	ds_load_b32 v13, v25 offset:1472                           // 000000D79244: D8D805C0 0D000019
	ds_load_b32 v14, v25 offset:1504                           // 000000D7924C: D8D805E0 0E000019
	s_waitcnt vmcnt(0)                                         // 000000D79254: BF8903F7
	ds_store_b32 v16, v23 offset:32                            // 000000D79258: D8340020 00001710
	s_waitcnt lgkmcnt(5)                                       // 000000D79260: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D79264: 56001706
	s_setprio 1                                                // 000000D79268: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D7926C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D79270: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D79274: 56061907
	s_setprio 0                                                // 000000D79278: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000D7927C: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000D79280: BDFC0000
	s_barrier                                                  // 000000D79284: BFBD0000
	ds_load_b32 v6, v24                                        // 000000D79288: D8D80000 06000018
	ds_load_b32 v7, v24 offset:32                              // 000000D79290: D8D80020 07000018
	ds_load_b32 v11, v25                                       // 000000D79298: D8D80000 0B000019
	ds_load_b32 v12, v25 offset:32                             // 000000D792A0: D8D80020 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D792A8: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D792AC: 56001B08
	s_setprio 1                                                // 000000D792B0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D792B4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D792B8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D792BC: 56061D09
	s_setprio 0                                                // 000000D792C0: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000D792C4: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000D792C8: BF008105
	s_cbranch_scc0 LoopBeginL_1                                // 000000D792CC: BFA1FEB8

0000000000d792d0 <LoopEndL_evenexit_4>:
	s_branch LoopEndL_2                                        // 000000D792D0: BFA00004

0000000000d792d4 <LoopEndL_oddexit_3>:
	v_xor_b32_e32 v24, 0x400, v24                              // 000000D792D4: 3A3030FF 00000400
	v_xor_b32_e32 v25, 0x400, v25                              // 000000D792DC: 3A3232FF 00000400

0000000000d792e4 <LoopEndL_2>:
	s_cmpk_eq_u32 s37, 0x0                                     // 000000D792E4: B4A50000
	s_cbranch_scc0 OptNLL_End_15                               // 000000D792E8: BFA1009C
	s_cmp_eq_u32 s36, 1.0                                      // 000000D792EC: BF06F224
	s_cbranch_scc0 OptNLL_End_15                               // 000000D792F0: BFA1009A
	s_and_b32 s58, 15, s46                                     // 000000D792F4: 8B3A2E8F
	s_add_u32 s59, -1, s51                                     // 000000D792F8: 803B33C1
	s_cmp_ge_u32 s2, s59                                       // 000000D792FC: BF093B02
	s_cselect_b32 s58, s58, 0                                  // 000000D79300: 983A803A
	s_cmpk_gt_u32 s58, 0x0                                     // 000000D79304: B5BA0000
	s_cbranch_scc1 OptNLL_End_15                               // 000000D79308: BFA20094
	s_and_b32 s58, 15, s47                                     // 000000D7930C: 8B3A2F8F
	s_add_u32 s59, -1, s52                                     // 000000D79310: 803B34C1
	s_cmp_ge_u32 s3, s59                                       // 000000D79314: BF093B03
	s_cselect_b32 s58, s58, 0                                  // 000000D79318: 983A803A
	s_cmpk_gt_u32 s58, 0x0                                     // 000000D7931C: B5BA0000
	s_cbranch_scc1 OptNLL_End_15                               // 000000D79320: BFA2008E
	s_and_b32 s59, 7, s49                                      // 000000D79324: 8B3B3187
	s_cmp_eq_u32 s59, 0                                        // 000000D79328: BF06803B
	s_cbranch_scc0 OptNLL_End_15                               // 000000D7932C: BFA1008B
	ds_load_b32 v8, v24 offset:64                              // 000000D79330: D8D80040 08000018
	ds_load_b32 v9, v24 offset:96                              // 000000D79338: D8D80060 09000018
	ds_load_b32 v13, v25 offset:64                             // 000000D79340: D8D80040 0D000019
	ds_load_b32 v14, v25 offset:96                             // 000000D79348: D8D80060 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D79350: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D79354: 56001706
	s_setprio 1                                                // 000000D79358: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D7935C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D79360: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D79364: 56061907
	s_setprio 0                                                // 000000D79368: BFB50000
	ds_load_b32 v6, v24 offset:128                             // 000000D7936C: D8D80080 06000018
	ds_load_b32 v7, v24 offset:160                             // 000000D79374: D8D800A0 07000018
	ds_load_b32 v11, v25 offset:128                            // 000000D7937C: D8D80080 0B000019
	ds_load_b32 v12, v25 offset:160                            // 000000D79384: D8D800A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D7938C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D79390: 56001B08
	s_setprio 1                                                // 000000D79394: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D79398: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D7939C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D793A0: 56061D09
	s_setprio 0                                                // 000000D793A4: BFB50000
	ds_load_b32 v8, v24 offset:192                             // 000000D793A8: D8D800C0 08000018
	ds_load_b32 v9, v24 offset:224                             // 000000D793B0: D8D800E0 09000018
	ds_load_b32 v13, v25 offset:192                            // 000000D793B8: D8D800C0 0D000019
	ds_load_b32 v14, v25 offset:224                            // 000000D793C0: D8D800E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D793C8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D793CC: 56001706
	s_setprio 1                                                // 000000D793D0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D793D4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D793D8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D793DC: 56061907
	s_setprio 0                                                // 000000D793E0: BFB50000
	ds_load_b32 v6, v24 offset:256                             // 000000D793E4: D8D80100 06000018
	ds_load_b32 v7, v24 offset:288                             // 000000D793EC: D8D80120 07000018
	ds_load_b32 v11, v25 offset:256                            // 000000D793F4: D8D80100 0B000019
	ds_load_b32 v12, v25 offset:288                            // 000000D793FC: D8D80120 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D79404: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D79408: 56001B08
	s_setprio 1                                                // 000000D7940C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D79410: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D79414: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D79418: 56061D09
	s_setprio 0                                                // 000000D7941C: BFB50000
	ds_load_b32 v8, v24 offset:320                             // 000000D79420: D8D80140 08000018
	ds_load_b32 v9, v24 offset:352                             // 000000D79428: D8D80160 09000018
	ds_load_b32 v13, v25 offset:320                            // 000000D79430: D8D80140 0D000019
	ds_load_b32 v14, v25 offset:352                            // 000000D79438: D8D80160 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D79440: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D79444: 56001706
	s_setprio 1                                                // 000000D79448: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D7944C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D79450: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D79454: 56061907
	s_setprio 0                                                // 000000D79458: BFB50000
	ds_load_b32 v6, v24 offset:384                             // 000000D7945C: D8D80180 06000018
	ds_load_b32 v7, v24 offset:416                             // 000000D79464: D8D801A0 07000018
	ds_load_b32 v11, v25 offset:384                            // 000000D7946C: D8D80180 0B000019
	ds_load_b32 v12, v25 offset:416                            // 000000D79474: D8D801A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D7947C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D79480: 56001B08
	s_setprio 1                                                // 000000D79484: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D79488: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D7948C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D79490: 56061D09
	s_setprio 0                                                // 000000D79494: BFB50000
	ds_load_b32 v8, v24 offset:448                             // 000000D79498: D8D801C0 08000018
	ds_load_b32 v9, v24 offset:480                             // 000000D794A0: D8D801E0 09000018
	ds_load_b32 v13, v25 offset:448                            // 000000D794A8: D8D801C0 0D000019
	ds_load_b32 v14, v25 offset:480                            // 000000D794B0: D8D801E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D794B8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D794BC: 56001706
	s_setprio 1                                                // 000000D794C0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D794C4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D794C8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D794CC: 56061907
	s_setprio 0                                                // 000000D794D0: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000D794D4: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D794D8: 56001B08
	s_setprio 1                                                // 000000D794DC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D794E0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D794E4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D794E8: 56061D09
	s_setprio 0                                                // 000000D794EC: BFB50000

0000000000d794f0 <Summation_End_OptNLL_16>:
	v_lshrrev_b32_e32 v7, 3, v26                               // 000000D794F0: 320E3483
	v_and_b32_e32 v6, 7, v26                                   // 000000D794F4: 360C3487
	v_mul_lo_u32 v8, v7, s40                                   // 000000D794F8: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000D79500: D72C0009 00004D07
	s_mul_i32 s54, 16, s2                                      // 000000D79508: 96360290
	v_add_co_u32 v6, vcc_lo, s54, v6                           // 000000D7950C: D7006A06 00020C36
	s_mul_i32 s56, 16, s3                                      // 000000D79514: 96380390
	v_add_co_u32 v7, vcc_lo, s56, v7                           // 000000D79518: D7006A07 00020E38

0000000000d79520 <GW_B0_E0_19>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000D79520: D647000C 020A0D09
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000D79528: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:32      // 000000D79530: E0680020 8044010C
	s_mul_i32 s54, s38, 32                                     // 000000D79538: 9636A026
	s_add_u32 s16, s16, s54                                    // 000000D7953C: 80103610
	s_addc_u32 s17, s17, 0                                     // 000000D79540: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000D79544: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:32      // 000000D7954C: E0680020 8044030C
	s_branch label_GW_End_21                                   // 000000D79554: BFA00000

0000000000d79558 <label_GW_End_21>:
	s_endpgm                                                   // 000000D79558: BFB00000

0000000000d7955c <OptNLL_End_15>:
	ds_load_b32 v8, v24 offset:64                              // 000000D7955C: D8D80040 08000018
	ds_load_b32 v9, v24 offset:96                              // 000000D79564: D8D80060 09000018
	ds_load_b32 v13, v25 offset:64                             // 000000D7956C: D8D80040 0D000019
	ds_load_b32 v14, v25 offset:96                             // 000000D79574: D8D80060 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D7957C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D79580: 56001706
	s_setprio 1                                                // 000000D79584: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D79588: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D7958C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D79590: 56061907
	s_setprio 0                                                // 000000D79594: BFB50000
	ds_load_b32 v6, v24 offset:128                             // 000000D79598: D8D80080 06000018
	ds_load_b32 v7, v24 offset:160                             // 000000D795A0: D8D800A0 07000018
	ds_load_b32 v11, v25 offset:128                            // 000000D795A8: D8D80080 0B000019
	ds_load_b32 v12, v25 offset:160                            // 000000D795B0: D8D800A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D795B8: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D795BC: 56001B08
	s_setprio 1                                                // 000000D795C0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D795C4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D795C8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D795CC: 56061D09
	s_setprio 0                                                // 000000D795D0: BFB50000
	ds_load_b32 v8, v24 offset:192                             // 000000D795D4: D8D800C0 08000018
	ds_load_b32 v9, v24 offset:224                             // 000000D795DC: D8D800E0 09000018
	ds_load_b32 v13, v25 offset:192                            // 000000D795E4: D8D800C0 0D000019
	ds_load_b32 v14, v25 offset:224                            // 000000D795EC: D8D800E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D795F4: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D795F8: 56001706
	s_setprio 1                                                // 000000D795FC: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D79600: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D79604: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D79608: 56061907
	s_setprio 0                                                // 000000D7960C: BFB50000
	ds_load_b32 v6, v24 offset:256                             // 000000D79610: D8D80100 06000018
	ds_load_b32 v7, v24 offset:288                             // 000000D79618: D8D80120 07000018
	ds_load_b32 v11, v25 offset:256                            // 000000D79620: D8D80100 0B000019
	ds_load_b32 v12, v25 offset:288                            // 000000D79628: D8D80120 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D79630: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D79634: 56001B08
	s_setprio 1                                                // 000000D79638: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D7963C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D79640: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D79644: 56061D09
	s_setprio 0                                                // 000000D79648: BFB50000
	ds_load_b32 v8, v24 offset:320                             // 000000D7964C: D8D80140 08000018
	ds_load_b32 v9, v24 offset:352                             // 000000D79654: D8D80160 09000018
	ds_load_b32 v13, v25 offset:320                            // 000000D7965C: D8D80140 0D000019
	ds_load_b32 v14, v25 offset:352                            // 000000D79664: D8D80160 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D7966C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D79670: 56001706
	s_setprio 1                                                // 000000D79674: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D79678: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D7967C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D79680: 56061907
	s_setprio 0                                                // 000000D79684: BFB50000
	ds_load_b32 v6, v24 offset:384                             // 000000D79688: D8D80180 06000018
	ds_load_b32 v7, v24 offset:416                             // 000000D79690: D8D801A0 07000018
	ds_load_b32 v11, v25 offset:384                            // 000000D79698: D8D80180 0B000019
	ds_load_b32 v12, v25 offset:416                            // 000000D796A0: D8D801A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D796A8: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D796AC: 56001B08
	s_setprio 1                                                // 000000D796B0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D796B4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D796B8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D796BC: 56061D09
	s_setprio 0                                                // 000000D796C0: BFB50000
	ds_load_b32 v8, v24 offset:448                             // 000000D796C4: D8D801C0 08000018
	ds_load_b32 v9, v24 offset:480                             // 000000D796CC: D8D801E0 09000018
	ds_load_b32 v13, v25 offset:448                            // 000000D796D4: D8D801C0 0D000019
	ds_load_b32 v14, v25 offset:480                            // 000000D796DC: D8D801E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D796E4: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D796E8: 56001706
	s_setprio 1                                                // 000000D796EC: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D796F0: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D796F4: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D796F8: 56061907
	s_setprio 0                                                // 000000D796FC: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000D79700: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D79704: 56001B08
	s_setprio 1                                                // 000000D79708: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D7970C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D79710: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D79714: 56061D09
	s_setprio 0                                                // 000000D79718: BFB50000

0000000000d7971c <PrefetchGlobalLastIterEnd_5>:
	v_and_b32_e32 v15, 0xf003ff, v15                           // 000000D7971C: 361E1EFF 00F003FF
	v_and_b32_e32 v16, 0xf003ff, v16                           // 000000D79724: 362020FF 00F003FF
	s_and_b32 s5, 7, s49                                       // 000000D7972C: 8B053187
	s_cmp_eq_u32 s5, 0                                         // 000000D79730: BF068005
	s_cbranch_scc1 SkipTailLoopL_8                             // 000000D79734: BFA20052
	s_mov_b32 s6, 0                                            // 000000D79738: BE860080
	s_mov_b32 s60, 3                                           // 000000D7973C: BEBC0083
	s_mul_hi_u32 s59, s60, s34                                 // 000000D79740: 96BB223C
	s_mul_i32 s58, s60, s34                                    // 000000D79744: 963A223C
	s_mul_hi_u32 s61, s7, s34                                  // 000000D79748: 96BD2207
	s_mul_i32 s60, s7, s34                                     // 000000D7974C: 963C2207
	s_sub_u32 s58, s58, s60                                    // 000000D79750: 80BA3C3A
	s_subb_u32 s59, s59, s61                                   // 000000D79754: 82BB3D3B
	s_sub_u32 s58, s58, s30                                    // 000000D79758: 80BA1E3A
	s_subb_u32 s59, s59, s31                                   // 000000D7975C: 82BB1F3B
	s_add_u32 s8, s8, s58                                      // 000000D79760: 80083A08
	s_addc_u32 s9, s9, s59                                     // 000000D79764: 82093B09
	s_sub_u32 s0, s0, s58                                      // 000000D79768: 80803A00
	s_subb_u32 s1, s1, s59                                     // 000000D7976C: 82813B01
	s_cmp_eq_u32 s1, 0                                         // 000000D79770: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000D79774: 980AC100
	s_mov_b32 s60, 3                                           // 000000D79778: BEBC0083
	s_mul_hi_u32 s59, s60, s35                                 // 000000D7977C: 96BB233C
	s_mul_i32 s58, s60, s35                                    // 000000D79780: 963A233C
	s_mul_hi_u32 s61, s7, s35                                  // 000000D79784: 96BD2307
	s_mul_i32 s60, s7, s35                                     // 000000D79788: 963C2307
	s_sub_u32 s58, s58, s60                                    // 000000D7978C: 80BA3C3A
	s_subb_u32 s59, s59, s61                                   // 000000D79790: 82BB3D3B
	s_sub_u32 s58, s58, s32                                    // 000000D79794: 80BA203A
	s_subb_u32 s59, s59, s33                                   // 000000D79798: 82BB213B
	s_add_u32 s12, s12, s58                                    // 000000D7979C: 800C3A0C
	s_addc_u32 s13, s13, s59                                   // 000000D797A0: 820D3B0D
	s_sub_u32 s28, s28, s58                                    // 000000D797A4: 809C3A1C
	s_subb_u32 s29, s29, s59                                   // 000000D797A8: 829D3B1D
	s_cmp_eq_u32 s29, 0                                        // 000000D797AC: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000D797B0: 980EC11C
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000D797B4: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s53 offen               // 000000D797BC: E0500000 35421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 000000D797C4: E0500000 80431612
	buffer_load_b32 v23, v18, s[12:15], s56 offen              // 000000D797CC: E0500000 38431712
	s_waitcnt vmcnt(0)                                         // 000000D797D4: BF8903F7
	s_waitcnt_lgkmcnt null, 0x0                                // 000000D797D8: BDFC0000
	s_barrier                                                  // 000000D797DC: BFBD0000
	ds_store_b32 v15, v20                                      // 000000D797E0: D8340000 0000140F
	ds_store_b32 v15, v21 offset:32                            // 000000D797E8: D8340020 0000150F
	ds_store_b32 v16, v22                                      // 000000D797F0: D8340000 00001610
	ds_store_b32 v16, v23 offset:32                            // 000000D797F8: D8340020 00001710
	s_waitcnt lgkmcnt(0)                                       // 000000D79800: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000D79804: BDFC0000
	s_barrier                                                  // 000000D79808: BFBD0000
	v_and_b32_e32 v24, 0x3ff, v24                              // 000000D7980C: 363030FF 000003FF
	v_and_b32_e32 v25, 0x3ff, v25                              // 000000D79814: 363232FF 000003FF

0000000000d7981c <TailLoopBeginL_6>:
	ds_load_b32 v6, v24                                        // 000000D7981C: D8D80000 06000018
	ds_load_b32 v7, v24 offset:32                              // 000000D79824: D8D80020 07000018
	ds_load_b32 v11, v25                                       // 000000D7982C: D8D80000 0B000019
	ds_load_b32 v12, v25 offset:32                             // 000000D79834: D8D80020 0C000019
	s_mov_b32 s54, 64                                          // 000000D7983C: BEB600C0
	v_add_co_u32 v24, vcc_lo, s54, v24                         // 000000D79840: D7006A18 00023036
	s_mov_b32 s54, 64                                          // 000000D79848: BEB600C0
	v_add_co_u32 v25, vcc_lo, s54, v25                         // 000000D7984C: D7006A19 00023236
	s_waitcnt lgkmcnt(0)                                       // 000000D79854: BF89FC07
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D79858: 56001706
	s_setprio 1                                                // 000000D7985C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D79860: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D79864: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D79868: 56061907
	s_setprio 0                                                // 000000D7986C: BFB50000
	s_sub_i32 s5, s5, 1                                        // 000000D79870: 81858105
	s_add_u32 s6, s6, 1                                        // 000000D79874: 80068106
	s_cmp_le_i32 s5, 0                                         // 000000D79878: BF058005
	s_cbranch_scc0 TailLoopBeginL_6                            // 000000D7987C: BFA1FFE7

0000000000d79880 <TailLoopEndL_7>:
	v_lshrrev_b32_e32 v7, 3, v26                               // 000000D79880: 320E3483
	v_and_b32_e32 v6, 7, v26                                   // 000000D79884: 360C3487
	v_mul_lo_u32 v8, v7, s40                                   // 000000D79888: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000D79890: D72C0009 00004D07
	s_mul_i32 s54, 16, s2                                      // 000000D79898: 96360290
	v_add_co_u32 v6, vcc_lo, s54, v6                           // 000000D7989C: D7006A06 00020C36
	s_mul_i32 s56, 16, s3                                      // 000000D798A4: 96380390
	v_add_co_u32 v7, vcc_lo, s56, v7                           // 000000D798A8: D7006A07 00020E38
	s_cmpk_eq_u32 s37, 0x0                                     // 000000D798B0: B4A50000
	s_cbranch_scc0 GW_Beta_43                                  // 000000D798B4: BFA1005B
	s_and_b32 s54, 15, s46                                     // 000000D798B8: 8B362E8F
	s_add_u32 s55, -1, s51                                     // 000000D798BC: 803733C1
	s_cmp_ge_u32 s2, s55                                       // 000000D798C0: BF093702
	s_cselect_b32 s54, s54, 0                                  // 000000D798C4: 98368036
	s_cmpk_gt_u32 s54, 0x0                                     // 000000D798C8: B5B60000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000D798CC: BFA20018
	s_and_b32 s54, 15, s47                                     // 000000D798D0: 8B362F8F
	s_add_u32 s55, -1, s52                                     // 000000D798D4: 803734C1
	s_cmp_ge_u32 s3, s55                                       // 000000D798D8: BF093703
	s_cselect_b32 s54, s54, 0                                  // 000000D798DC: 98368036
	s_cmpk_gt_u32 s54, 0x0                                     // 000000D798E0: B5B60000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000D798E4: BFA20012

0000000000d798e8 <GW_B0_E0_31>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000D798E8: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000D798F0: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000D798F4: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000D798F8: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000D798FC: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000D79900: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:32      // 000000D79908: E0680020 8044010C
	s_mul_i32 s54, s38, 32                                     // 000000D79910: 9636A026
	s_add_u32 s16, s16, s54                                    // 000000D79914: 80103610
	s_addc_u32 s17, s17, 0                                     // 000000D79918: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000D7991C: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:32      // 000000D79924: E0680020 8044030C
	s_branch label_0047                                        // 000000D7992C: BFA000D3

0000000000d79930 <GW_B0_E1_34>:
	v_cmp_lt_u32_e64 s54, v6, s46                              // 000000D79930: D4490036 00005D06
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000D79938: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000D79940: 8B383836
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000D79944: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s56                        // 000000D7994C: D501000C 00E218C1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 000000D79954: D7006A0A 00011106
	v_cmp_lt_u32_e64 s54, v10, s46                             // 000000D7995C: D4490036 00005D0A
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000D79964: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000D7996C: 8B383836
	v_add_lshl_u32 v13, v9, v10, 2                             // 000000D79970: D647000D 020A1509
	v_cndmask_b32_e64 v13, -1, v13, s56                        // 000000D79978: D501000D 00E21AC1
	v_add_co_u32 v7, vcc_lo, v7, 8                             // 000000D79980: D7006A07 00011107
	s_mul_i32 s54, s40, 8                                      // 000000D79988: 96368828
	v_add_nc_u32_e64 v8, v8, s54                               // 000000D7998C: D5250008 00006D08
	s_mul_i32 s54, s38, 8                                      // 000000D79994: 96368826
	v_add_nc_u32_e64 v9, v9, s54                               // 000000D79998: D5250009 00006D09
	v_cmp_lt_u32_e64 s54, v6, s46                              // 000000D799A0: D4490036 00005D06
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000D799A8: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000D799B0: 8B383836
	v_add_lshl_u32 v14, v9, v6, 2                              // 000000D799B4: D647000E 020A0D09
	v_cndmask_b32_e64 v14, -1, v14, s56                        // 000000D799BC: D501000E 00E21CC1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 000000D799C4: D7006A0A 00011106
	v_cmp_lt_u32_e64 s54, v10, s46                             // 000000D799CC: D4490036 00005D0A
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000D799D4: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000D799DC: 8B383836
	v_add_lshl_u32 v15, v9, v10, 2                             // 000000D799E0: D647000F 020A1509
	v_cndmask_b32_e64 v15, -1, v15, s56                        // 000000D799E8: D501000F 00E21EC1
	v_mul_f32_e32 v0, s36, v0                                  // 000000D799F0: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000D799F4: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000D799F8: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000D799FC: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000D79A00: E0680000 8044000C
	buffer_store_b32 v1, v13, s[16:19], 0 offen                // 000000D79A08: E0680000 8044010D
	buffer_store_b32 v2, v14, s[16:19], 0 offen                // 000000D79A10: E0680000 8044020E
	buffer_store_b32 v3, v15, s[16:19], 0 offen                // 000000D79A18: E0680000 8044030F
	s_branch label_0047                                        // 000000D79A20: BFA00096

0000000000d79a24 <GW_Beta_43>:
	s_and_b32 s54, 15, s46                                     // 000000D79A24: 8B362E8F
	s_add_u32 s55, -1, s51                                     // 000000D79A28: 803733C1
	s_cmp_ge_u32 s2, s55                                       // 000000D79A2C: BF093702
	s_cselect_b32 s54, s54, 0                                  // 000000D79A30: 98368036
	s_cmpk_gt_u32 s54, 0x0                                     // 000000D79A34: B5B60000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000D79A38: BFA20031
	s_and_b32 s54, 15, s47                                     // 000000D79A3C: 8B362F8F
	s_add_u32 s55, -1, s52                                     // 000000D79A40: 803734C1
	s_cmp_ge_u32 s3, s55                                       // 000000D79A44: BF093703
	s_cselect_b32 s54, s54, 0                                  // 000000D79A48: 98368036
	s_cmpk_gt_u32 s54, 0x0                                     // 000000D79A4C: B5B60000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000D79A50: BFA2002B

0000000000d79a54 <GW_B1_E0_38>:
	v_add_lshl_u32 v13, v8, v6, 2                              // 000000D79A54: D647000D 020A0D08
	buffer_load_b32 v14, v13, s[20:23], 0 offen                // 000000D79A5C: E0500000 80450E0D
	buffer_load_b32 v15, v13, s[20:23], 0 offen offset:32      // 000000D79A64: E0500020 80450F0D
	s_mul_i32 s54, s40, 32                                     // 000000D79A6C: 9636A028
	s_add_u32 s20, s20, s54                                    // 000000D79A70: 80143614
	s_addc_u32 s21, s21, 0                                     // 000000D79A74: 82158015
	buffer_load_b32 v16, v13, s[20:23], 0 offen                // 000000D79A78: E0500000 8045100D
	buffer_load_b32 v17, v13, s[20:23], 0 offen offset:32      // 000000D79A80: E0500020 8045110D
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000D79A88: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000D79A90: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000D79A94: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000D79A98: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000D79A9C: 10060624
	s_waitcnt vmcnt(3)                                         // 000000D79AA0: BF890FF7
	v_fmac_f32_e64 v0, v14, s37                                // 000000D79AA4: D52B0000 00004B0E
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000D79AAC: E0680000 8044000C
	s_waitcnt vmcnt(2)                                         // 000000D79AB4: BF890BF7
	v_fmac_f32_e64 v1, v15, s37                                // 000000D79AB8: D52B0001 00004B0F
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:32      // 000000D79AC0: E0680020 8044010C
	s_waitcnt vmcnt(1)                                         // 000000D79AC8: BF8907F7
	v_fmac_f32_e64 v2, v16, s37                                // 000000D79ACC: D52B0002 00004B10
	s_mul_i32 s54, s38, 32                                     // 000000D79AD4: 9636A026
	s_add_u32 s16, s16, s54                                    // 000000D79AD8: 80103610
	s_addc_u32 s17, s17, 0                                     // 000000D79ADC: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000D79AE0: E0680000 8044020C
	s_waitcnt vmcnt(0)                                         // 000000D79AE8: BF8903F7
	v_fmac_f32_e64 v3, v17, s37                                // 000000D79AEC: D52B0003 00004B11
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:32      // 000000D79AF4: E0680020 8044030C
	s_branch label_0047                                        // 000000D79AFC: BFA0005F

0000000000d79b00 <GW_B1_E1_41>:
	v_cmp_lt_u32_e64 s54, v6, s46                              // 000000D79B00: D4490036 00005D06
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000D79B08: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000D79B10: 8B383836
	v_add_lshl_u32 v12, v8, v6, 2                              // 000000D79B14: D647000C 020A0D08
	v_cndmask_b32_e64 v12, -1, v12, s56                        // 000000D79B1C: D501000C 00E218C1
	buffer_load_b32 v13, v12, s[20:23], 0 offen                // 000000D79B24: E0500000 80450D0C
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000D79B2C: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s56                        // 000000D79B34: D501000C 00E218C1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 000000D79B3C: D7006A0A 00011106
	v_cmp_lt_u32_e64 s54, v10, s46                             // 000000D79B44: D4490036 00005D0A
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000D79B4C: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000D79B54: 8B383836
	v_add_lshl_u32 v14, v8, v10, 2                             // 000000D79B58: D647000E 020A1508
	v_cndmask_b32_e64 v14, -1, v14, s56                        // 000000D79B60: D501000E 00E21CC1
	buffer_load_b32 v15, v14, s[20:23], 0 offen                // 000000D79B68: E0500000 80450F0E
	v_add_lshl_u32 v14, v9, v10, 2                             // 000000D79B70: D647000E 020A1509
	v_cndmask_b32_e64 v14, -1, v14, s56                        // 000000D79B78: D501000E 00E21CC1
	v_add_co_u32 v7, vcc_lo, v7, 8                             // 000000D79B80: D7006A07 00011107
	s_mul_i32 s54, s40, 8                                      // 000000D79B88: 96368828
	v_add_nc_u32_e64 v8, v8, s54                               // 000000D79B8C: D5250008 00006D08
	s_mul_i32 s54, s38, 8                                      // 000000D79B94: 96368826
	v_add_nc_u32_e64 v9, v9, s54                               // 000000D79B98: D5250009 00006D09
	v_cmp_lt_u32_e64 s54, v6, s46                              // 000000D79BA0: D4490036 00005D06
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000D79BA8: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000D79BB0: 8B383836
	v_add_lshl_u32 v16, v8, v6, 2                              // 000000D79BB4: D6470010 020A0D08
	v_cndmask_b32_e64 v16, -1, v16, s56                        // 000000D79BBC: D5010010 00E220C1
	buffer_load_b32 v17, v16, s[20:23], 0 offen                // 000000D79BC4: E0500000 80451110
	v_add_lshl_u32 v16, v9, v6, 2                              // 000000D79BCC: D6470010 020A0D09
	v_cndmask_b32_e64 v16, -1, v16, s56                        // 000000D79BD4: D5010010 00E220C1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 000000D79BDC: D7006A0A 00011106
	v_cmp_lt_u32_e64 s54, v10, s46                             // 000000D79BE4: D4490036 00005D0A
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000D79BEC: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000D79BF4: 8B383836
	v_add_lshl_u32 v18, v8, v10, 2                             // 000000D79BF8: D6470012 020A1508
	v_cndmask_b32_e64 v18, -1, v18, s56                        // 000000D79C00: D5010012 00E224C1
	buffer_load_b32 v19, v18, s[20:23], 0 offen                // 000000D79C08: E0500000 80451312
	v_add_lshl_u32 v18, v9, v10, 2                             // 000000D79C10: D6470012 020A1509
	v_cndmask_b32_e64 v18, -1, v18, s56                        // 000000D79C18: D5010012 00E224C1
	v_mul_f32_e32 v0, s36, v0                                  // 000000D79C20: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000D79C24: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000D79C28: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000D79C2C: 10060624
	s_waitcnt vmcnt(0)                                         // 000000D79C30: BF8903F7
	s_waitcnt_vscnt null, 0x0                                  // 000000D79C34: BC7C0000
	v_fmac_f32_e64 v0, v13, s37                                // 000000D79C38: D52B0000 00004B0D
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000D79C40: E0680000 8044000C
	v_fmac_f32_e64 v1, v15, s37                                // 000000D79C48: D52B0001 00004B0F
	buffer_store_b32 v1, v14, s[16:19], 0 offen                // 000000D79C50: E0680000 8044010E
	v_fmac_f32_e64 v2, v17, s37                                // 000000D79C58: D52B0002 00004B11
	buffer_store_b32 v2, v16, s[16:19], 0 offen                // 000000D79C60: E0680000 80440210
	v_fmac_f32_e64 v3, v19, s37                                // 000000D79C68: D52B0003 00004B13
	buffer_store_b32 v3, v18, s[16:19], 0 offen                // 000000D79C70: E0680000 80440312
	s_branch label_0047                                        // 000000D79C78: BFA00000

0000000000d79c7c <label_GW_End_42>:
	s_endpgm                                                   // 000000D79C7C: BFB00000
		...
