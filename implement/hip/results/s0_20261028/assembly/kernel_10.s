
/root/batchmatmulmaxsum/implement/hip/results/s0_20261028/code_objects/_code_object0007.o:	file format elf64-amdgpu

Disassembly of section .text:

0000000000630700 <Cijk_Alik_Bjlk_SB_MT16x16x32_SN_1LDSB0_APM1_ABV0_ACED0_AF0EM1_AF1EM1_AMAS0_ASE_ASGT_ASLT_ASM_ASAE01_ASCE01_ASEM1_AAC0_BL1_BS1_CLR0_DTLA0_DTLB0_DTVA0_DTVB0_DVO0_ETSP_EPS1_ELFLR0_EMLL0_FSSC10_FL0_GLVWA1_GLVWB1_GRCGA1_GRCGB1_GRPM1_GRVW1_GSU1_GSUASB_GLS0_ISA1100_IU1_K1_KLA_LBSPPA0_LBSPPB0_LPA0_LPB0_LDL1_LRVW1_LWPMn1_LDW0_FMA_MIAV0_MDA2_MO40_MMFGLC_MKFGSU256_NTA0_NTB0_NTC0_NTD0_NEPBS0_NLCA1_NLCB1_ONLL1_OPLV0_PK0_PAP0_PGR1_PLR1_PKA0_SIA1_SLW1_SS0_SU0_SUM0_SUS0_SCIUI1_SPO0_SRVW0_SSO0_SVW4_SNLL0_TSGRA0_TSGRB0_TT2_2_TLDS0_UMLDSA0_UMLDSB0_U64SL1_USFGROn1_VAW1_VSn1_VW1_VWB1_VFLRP0_WSGRA0_WSGRB0_WS32_WG8_8_1_WGM1_preloaded>:
	s_mov_b32 vcc_hi, 0                                        // 000000630700: BEEB0080
	s_load_b512 s[24:39], s[0:1], null                         // 000000630704: F4100600 F8000000
	s_load_b256 s[40:47], s[0:1], 0x40                         // 00000063070C: F40C0A00 F8000040
	s_load_b128 s[48:51], s[0:1], 0x60                         // 000000630714: F4080C00 F8000060
	s_mov_b32 m0, 0x2000                                       // 00000063071C: BEFD00FF 00002000
	v_mov_b32_e32 v38, v0                                      // 000000630724: 7E4C0300
	v_lshrrev_b32_e32 v0, 3, v38                               // 000000630728: 32004C83
	v_and_b32_e32 v1, 7, v38                                   // 00000063072C: 36024C87
	v_lshrrev_b32_e32 v2, 3, v0                                // 000000630730: 32040083
	v_and_b32_e32 v3, 7, v0                                    // 000000630734: 36060087
	v_lshrrev_b32_e32 v0, 6, v38                               // 000000630738: 32004C86
	v_lshlrev_b32_e32 v0, 4, v0                                // 00000063073C: 30000084
	v_add_lshl_u32 v36, v0, v1, 2                              // 000000630740: D6470024 020A0300
	v_lshrrev_b32_e32 v0, 6, v38                               // 000000630748: 32004C86
	v_lshlrev_b32_e32 v0, 4, v0                                // 00000063074C: 30000084
	v_add_lshl_u32 v37, v0, v3, 2                              // 000000630750: D6470025 020A0700
	v_add_co_u32 v37, vcc_lo, 0x800, v37                       // 000000630758: D7006A25 00024AFF 00000800
	v_lshrrev_b32_e32 v0, 5, v38                               // 000000630764: 32004C85
	v_and_b32_e32 v1, 31, v38                                  // 000000630768: 36024C9F
	v_lshrrev_b32_e32 v3, 4, v38                               // 00000063076C: 32064C84
	v_and_b32_e32 v2, 15, v38                                  // 000000630770: 36044C8F
	v_mul_u32_u24_e32 v15, 16, v1                              // 000000630774: 161E0290
	v_add_lshl_u32 v15, v0, v15, 2                             // 000000630778: D647000F 020A1F00
	v_mul_u32_u24_e32 v16, 16, v3                              // 000000630780: 16200690
	v_add_lshl_u32 v16, v2, v16, 2                             // 000000630784: D6470010 020A2102
	v_add_co_u32 v16, vcc_lo, 0x800, v16                       // 00000063078C: D7006A10 000220FF 00000800
	s_waitcnt lgkmcnt(0)                                       // 000000630798: BF89FC07
	s_mov_b64 s[20:21], s[30:31]                               // 00000063079C: BE94011E
	s_mov_b64 s[16:17], s[28:29]                               // 0000006307A0: BE90011C
	s_sub_u32 s8, s32, 4                                       // 0000006307A4: 80888420
	s_subb_u32 s9, s33, 0                                      // 0000006307A8: 82898021
	s_sub_u32 s12, s34, 4                                      // 0000006307AC: 808C8422
	s_subb_u32 s13, s35, 0                                     // 0000006307B0: 828D8023
	v_cmp_eq_f32_e64 vcc_lo, s36, 0                            // 0000006307B4: D412006A 00010024
	s_cbranch_vccz label_AlphaNonZero                          // 0000006307BC: BFA30001
	s_mov_b32 s49, 0                                           // 0000006307C0: BEB10080

00000000006307c4 <label_AlphaNonZero>:
	v_mul_lo_u32 v6, s42, v0                                   // 0000006307C4: D72C0006 0002002A
	v_add_co_u32 v17, vcc_lo, v1, v6                           // 0000006307CC: D7006A11 00020D01
	v_add_nc_u32_e32 v17, 1, v17                               // 0000006307D4: 4A222281
	v_lshlrev_b32_e32 v17, 2, v17                              // 0000006307D8: 30222282
	s_mul_i32 s54, s42, 2                                      // 0000006307DC: 9636822A
	s_lshl_b32 s54, s54, 2                                     // 0000006307E0: 84368236
	s_mul_i32 s55, s42, 4                                      // 0000006307E4: 9637842A
	s_lshl_b32 s55, s55, 2                                     // 0000006307E8: 84378237
	s_mul_i32 s56, s42, 6                                      // 0000006307EC: 9638862A
	s_lshl_b32 s56, s56, 2                                     // 0000006307F0: 84388238
	s_mul_i32 s57, s42, 8                                      // 0000006307F4: 9639882A
	s_lshl_b32 s57, s57, 2                                     // 0000006307F8: 84398239
	s_mul_i32 s58, s42, 10                                     // 0000006307FC: 963A8A2A
	s_lshl_b32 s58, s58, 2                                     // 000000630800: 843A823A
	s_mul_i32 s59, s42, 12                                     // 000000630804: 963B8C2A
	s_lshl_b32 s59, s59, 2                                     // 000000630808: 843B823B
	s_mul_i32 s60, s42, 14                                     // 00000063080C: 963C8E2A
	s_lshl_b32 s60, s60, 2                                     // 000000630810: 843C823C
	v_mul_lo_u32 v6, s44, v3                                   // 000000630814: D72C0006 0002062C
	v_add_co_u32 v18, vcc_lo, v2, v6                           // 00000063081C: D7006A12 00020D02
	v_add_nc_u32_e32 v18, 1, v18                               // 000000630824: 4A242481
	v_lshlrev_b32_e32 v18, 2, v18                              // 000000630828: 30242482
	s_mul_i32 s61, s44, 4                                      // 00000063082C: 963D842C
	s_lshl_b32 s61, s61, 2                                     // 000000630830: 843D823D
	s_mul_i32 s62, s44, 8                                      // 000000630834: 963E882C
	s_lshl_b32 s62, s62, 2                                     // 000000630838: 843E823E
	s_mul_i32 s63, s44, 12                                     // 00000063083C: 963F8C2C
	s_lshl_b32 s63, s63, 2                                     // 000000630840: 843F823F
	s_mul_i32 s64, s44, 16                                     // 000000630844: 9640902C
	s_lshl_b32 s64, s64, 2                                     // 000000630848: 84408240
	s_mul_i32 s65, s44, 20                                     // 00000063084C: 9641942C
	s_lshl_b32 s65, s65, 2                                     // 000000630850: 84418241
	s_mul_i32 s66, s44, 24                                     // 000000630854: 9642982C
	s_lshl_b32 s66, s66, 2                                     // 000000630858: 84428242
	s_mul_i32 s67, s44, 28                                     // 00000063085C: 96439C2C
	s_lshl_b32 s67, s67, 2                                     // 000000630860: 84438243
	s_mul_hi_u32 s35, s2, 16                                   // 000000630864: 96A39002
	s_mul_i32 s34, s2, 16                                      // 000000630868: 96229002
	s_mul_hi_u32 s35, s34, s42                                 // 00000063086C: 96A32A22
	s_mul_i32 s34, s34, s42                                    // 000000630870: 96222A22
	s_sub_u32 s0, s24, s34                                     // 000000630874: 80802218
	s_subb_u32 s1, s25, s35                                    // 000000630878: 82812319
	s_lshl_b64 s[0:1], s[0:1], 2                               // 00000063087C: 84808200
	s_add_u32 s0, s0, 4                                        // 000000630880: 80008400
	s_addc_u32 s1, s1, 0                                       // 000000630884: 82018001
	s_cmp_eq_u32 s1, 0                                         // 000000630888: BF068001
	s_cselect_b32 s10, s0, -1                                  // 00000063088C: 980AC100
	s_mul_hi_u32 s33, s43, s4                                  // 000000630890: 96A1042B
	s_mul_i32 s32, s43, s4                                     // 000000630894: 9620042B
	s_add_u32 s34, s34, s32                                    // 000000630898: 80222022
	s_addc_u32 s35, s35, s33                                   // 00000063089C: 82232123
	s_lshl_b64 s[34:35], s[34:35], 2                           // 0000006308A0: 84A28222
	s_add_u32 s8, s8, s34                                      // 0000006308A4: 80082208
	s_addc_u32 s9, s9, s35                                     // 0000006308A8: 82092309
	s_mov_b32 s11, 0x31004000                                  // 0000006308AC: BE8B00FF 31004000
	s_mul_hi_u32 s35, s3, 16                                   // 0000006308B4: 96A39003
	s_mul_i32 s34, s3, 16                                      // 0000006308B8: 96229003
	s_sub_u32 s28, s26, s34                                    // 0000006308BC: 809C221A
	s_subb_u32 s29, s27, s35                                   // 0000006308C0: 829D231B
	s_lshl_b64 s[28:29], s[28:29], 2                           // 0000006308C4: 849C821C
	s_add_u32 s28, s28, 4                                      // 0000006308C8: 801C841C
	s_addc_u32 s29, s29, 0                                     // 0000006308CC: 821D801D
	s_cmp_eq_u32 s29, 0                                        // 0000006308D0: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 0000006308D4: 980EC11C
	s_mul_hi_u32 s33, s45, s4                                  // 0000006308D8: 96A1042D
	s_mul_i32 s32, s45, s4                                     // 0000006308DC: 9620042D
	s_add_u32 s34, s34, s32                                    // 0000006308E0: 80222022
	s_addc_u32 s35, s35, s33                                   // 0000006308E4: 82232123
	s_lshl_b64 s[34:35], s[34:35], 2                           // 0000006308E8: 84A28222
	s_add_u32 s12, s12, s34                                    // 0000006308EC: 800C220C
	s_addc_u32 s13, s13, s35                                   // 0000006308F0: 820D230D
	s_mov_b32 s15, 0x31004000                                  // 0000006308F4: BE8F00FF 31004000
	s_mov_b32 s7, 0x80                                         // 0000006308FC: BE8700FF 00000080
	s_mul_i32 s30, 0x80, s44                                   // 000000630904: 961E2CFF 00000080
	s_lshr_b32 s5, s49, 5                                      // 00000063090C: 85058531
	s_mov_b32 s6, s5                                           // 000000630910: BE860005
	s_cmp_eq_u32 s5, 0                                         // 000000630914: BF068005
	s_cbranch_scc1 ShadowInitStart_10                          // 000000630918: BFA2002C
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 00000063091C: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s54 offen               // 000000630924: E0500000 36421511
	buffer_load_b32 v22, v17, s[8:11], s55 offen               // 00000063092C: E0500000 37421611
	buffer_load_b32 v23, v17, s[8:11], s56 offen               // 000000630934: E0500000 38421711
	buffer_load_b32 v24, v17, s[8:11], s57 offen               // 00000063093C: E0500000 39421811
	buffer_load_b32 v25, v17, s[8:11], s58 offen               // 000000630944: E0500000 3A421911
	buffer_load_b32 v26, v17, s[8:11], s59 offen               // 00000063094C: E0500000 3B421A11
	buffer_load_b32 v27, v17, s[8:11], s60 offen               // 000000630954: E0500000 3C421B11
	buffer_load_b32 v28, v18, s[12:15], 0 offen                // 00000063095C: E0500000 80431C12
	buffer_load_b32 v29, v18, s[12:15], s61 offen              // 000000630964: E0500000 3D431D12
	buffer_load_b32 v30, v18, s[12:15], s62 offen              // 00000063096C: E0500000 3E431E12
	buffer_load_b32 v31, v18, s[12:15], s63 offen              // 000000630974: E0500000 3F431F12
	buffer_load_b32 v32, v18, s[12:15], s64 offen              // 00000063097C: E0500000 40432012
	buffer_load_b32 v33, v18, s[12:15], s65 offen              // 000000630984: E0500000 41432112
	buffer_load_b32 v34, v18, s[12:15], s66 offen              // 00000063098C: E0500000 42432212
	buffer_load_b32 v35, v18, s[12:15], s67 offen              // 000000630994: E0500000 43432312
	s_add_u32 s8, s8, s7                                       // 00000063099C: 80080708
	s_addc_u32 s9, s9, 0                                       // 0000006309A0: 82098009
	s_sub_u32 s0, s0, s7                                       // 0000006309A4: 80800700
	s_subb_u32 s1, s1, 0                                       // 0000006309A8: 82818001
	s_cmp_eq_u32 s1, 0                                         // 0000006309AC: BF068001
	s_cmov_b32 s10, s0                                         // 0000006309B0: BE8A0200
	s_add_u32 s12, s12, s30                                    // 0000006309B4: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 0000006309B8: 820D800D
	s_sub_u32 s28, s28, s30                                    // 0000006309BC: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 0000006309C0: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 0000006309C4: BF06801D
	s_cmov_b32 s14, s28                                        // 0000006309C8: BE8E021C

00000000006309cc <ShadowInitStart_10>:
	s_mov_b32 s18, 0xfffff000                                  // 0000006309CC: BE9200FF FFFFF000
	s_mov_b32 s19, 0x31004000                                  // 0000006309D4: BE9300FF 31004000
	s_mov_b32 s22, 0xfffff000                                  // 0000006309DC: BE9600FF FFFFF000
	s_mov_b32 s23, 0x31004000                                  // 0000006309E4: BE9700FF 31004000
	s_mul_i32 s34, 16, s3                                      // 0000006309EC: 96220390
	s_mul_hi_u32 s33, s34, s40                                 // 0000006309F0: 96A12822
	s_mul_i32 s32, s34, s40                                    // 0000006309F4: 96202822
	s_lshl_b64 s[32:33], s[32:33], 2                           // 0000006309F8: 84A08220
	s_add_u32 s20, s20, s32                                    // 0000006309FC: 80142014
	s_addc_u32 s21, s21, s33                                   // 000000630A00: 82152115
	s_mul_hi_u32 s33, s34, s38                                 // 000000630A04: 96A12622
	s_mul_i32 s32, s34, s38                                    // 000000630A08: 96202622
	s_lshl_b64 s[32:33], s[32:33], 2                           // 000000630A0C: 84A08220
	s_add_u32 s16, s16, s32                                    // 000000630A10: 80102010
	s_addc_u32 s17, s17, s33                                   // 000000630A14: 82112111
	s_mul_hi_u32 s33, s4, s41                                  // 000000630A18: 96A12904
	s_mul_i32 s32, s4, s41                                     // 000000630A1C: 96202904
	s_lshl_b64 s[32:33], s[32:33], 2                           // 000000630A20: 84A08220
	s_add_u32 s20, s20, s32                                    // 000000630A24: 80142014
	s_addc_u32 s21, s21, s33                                   // 000000630A28: 82152115
	s_mul_hi_u32 s33, s4, s39                                  // 000000630A2C: 96A12704
	s_mul_i32 s32, s4, s39                                     // 000000630A30: 96202704
	s_lshl_b64 s[32:33], s[32:33], 2                           // 000000630A34: 84A08220
	s_add_u32 s16, s16, s32                                    // 000000630A38: 80102010
	s_addc_u32 s17, s17, s33                                   // 000000630A3C: 82112111
	v_mov_b32_e32 v0, 0                                        // 000000630A40: 7E000280
	v_mov_b32_e32 v1, 0                                        // 000000630A44: 7E020280
	v_mov_b32_e32 v2, 0                                        // 000000630A48: 7E040280
	v_mov_b32_e32 v3, 0                                        // 000000630A4C: 7E060280
	s_cmp_eq_u32 s5, 0                                         // 000000630A50: BF068005
	s_cbranch_scc0 label_NoBranch_11                           // 000000630A54: BFA10006
	s_getpc_b64 s[32:33]                                       // 000000630A58: BEA04700
	s_add_i32 s34, 0x2264, 4                                   // 000000630A5C: 812284FF 00002264
	s_add_u32 s32, s32, s34                                    // 000000630A64: 80202220
	s_addc_u32 s33, s33, 0                                     // 000000630A68: 82218021
	s_setpc_b64 s[32:33]                                       // 000000630A6C: BE804820

0000000000630a70 <label_NoBranch_11>:
	s_waitcnt vmcnt(0)                                         // 000000630A70: BF8903F7
	ds_store_b32 v15, v20                                      // 000000630A74: D8340000 0000140F
	ds_store_b32 v15, v21 offset:8                             // 000000630A7C: D8340008 0000150F
	ds_store_b32 v15, v22 offset:16                            // 000000630A84: D8340010 0000160F
	ds_store_b32 v15, v23 offset:24                            // 000000630A8C: D8340018 0000170F
	ds_store_b32 v15, v24 offset:32                            // 000000630A94: D8340020 0000180F
	ds_store_b32 v15, v25 offset:40                            // 000000630A9C: D8340028 0000190F
	ds_store_b32 v15, v26 offset:48                            // 000000630AA4: D8340030 00001A0F
	ds_store_b32 v15, v27 offset:56                            // 000000630AAC: D8340038 00001B0F
	ds_store_b32 v16, v28                                      // 000000630AB4: D8340000 00001C10
	ds_store_b32 v16, v29 offset:256                           // 000000630ABC: D8340100 00001D10
	ds_store_b32 v16, v30 offset:512                           // 000000630AC4: D8340200 00001E10
	ds_store_b32 v16, v31 offset:768                           // 000000630ACC: D8340300 00001F10
	ds_store_b32 v16, v32 offset:1024                          // 000000630AD4: D8340400 00002010
	ds_store_b32 v16, v33 offset:1280                          // 000000630ADC: D8340500 00002110
	ds_store_b32 v16, v34 offset:1536                          // 000000630AE4: D8340600 00002210
	ds_store_b32 v16, v35 offset:1792                          // 000000630AEC: D8340700 00002310
	s_waitcnt lgkmcnt(0)                                       // 000000630AF4: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000630AF8: BDFC0000
	s_barrier                                                  // 000000630AFC: BFBD0000
	ds_load_b32 v6, v36                                        // 000000630B00: D8D80000 06000024
	ds_load_b32 v7, v36 offset:32                              // 000000630B08: D8D80020 07000024
	ds_load_b32 v11, v37                                       // 000000630B10: D8D80000 0B000025
	ds_load_b32 v12, v37 offset:32                             // 000000630B18: D8D80020 0C000025

0000000000630b20 <openLoopL_12>:
	s_cmp_le_u32 s5, 1                                         // 000000630B20: BF0B8105
	s_cbranch_scc1 LoopEndL_2                                  // 000000630B24: BFA20489

0000000000630b28 <label_0013>:
	ds_load_b32 v8, v36 offset:64                              // 000000630B28: D8D80040 08000024
	ds_load_b32 v9, v36 offset:96                              // 000000630B30: D8D80060 09000024
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000630B38: E0500000 80421411
	ds_load_b32 v13, v37 offset:64                             // 000000630B40: D8D80040 0D000025
	ds_load_b32 v14, v37 offset:96                             // 000000630B48: D8D80060 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000630B50: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000630B54: 56001706
	s_setprio 1                                                // 000000630B58: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000630B5C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000630B60: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000630B64: 56061907
	s_setprio 0                                                // 000000630B68: BFB50000
	ds_load_b32 v6, v36 offset:128                             // 000000630B6C: D8D80080 06000024
	ds_load_b32 v7, v36 offset:160                             // 000000630B74: D8D800A0 07000024
	buffer_load_b32 v21, v17, s[8:11], s54 offen               // 000000630B7C: E0500000 36421511
	ds_load_b32 v11, v37 offset:128                            // 000000630B84: D8D80080 0B000025
	ds_load_b32 v12, v37 offset:160                            // 000000630B8C: D8D800A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000630B94: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000630B98: 56001B08
	s_setprio 1                                                // 000000630B9C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000630BA0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000630BA4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000630BA8: 56061D09
	s_setprio 0                                                // 000000630BAC: BFB50000
	ds_load_b32 v8, v36 offset:192                             // 000000630BB0: D8D800C0 08000024
	ds_load_b32 v9, v36 offset:224                             // 000000630BB8: D8D800E0 09000024
	buffer_load_b32 v22, v17, s[8:11], s55 offen               // 000000630BC0: E0500000 37421611
	ds_load_b32 v13, v37 offset:192                            // 000000630BC8: D8D800C0 0D000025
	ds_load_b32 v14, v37 offset:224                            // 000000630BD0: D8D800E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000630BD8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000630BDC: 56001706
	s_setprio 1                                                // 000000630BE0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000630BE4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000630BE8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000630BEC: 56061907
	s_setprio 0                                                // 000000630BF0: BFB50000
	ds_load_b32 v6, v36 offset:256                             // 000000630BF4: D8D80100 06000024
	ds_load_b32 v7, v36 offset:288                             // 000000630BFC: D8D80120 07000024
	buffer_load_b32 v23, v17, s[8:11], s56 offen               // 000000630C04: E0500000 38421711
	ds_load_b32 v11, v37 offset:256                            // 000000630C0C: D8D80100 0B000025
	ds_load_b32 v12, v37 offset:288                            // 000000630C14: D8D80120 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000630C1C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000630C20: 56001B08
	s_setprio 1                                                // 000000630C24: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000630C28: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000630C2C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000630C30: 56061D09
	s_setprio 0                                                // 000000630C34: BFB50000
	ds_load_b32 v8, v36 offset:320                             // 000000630C38: D8D80140 08000024
	ds_load_b32 v9, v36 offset:352                             // 000000630C40: D8D80160 09000024
	buffer_load_b32 v24, v17, s[8:11], s57 offen               // 000000630C48: E0500000 39421811
	ds_load_b32 v13, v37 offset:320                            // 000000630C50: D8D80140 0D000025
	ds_load_b32 v14, v37 offset:352                            // 000000630C58: D8D80160 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000630C60: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000630C64: 56001706
	s_setprio 1                                                // 000000630C68: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000630C6C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000630C70: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000630C74: 56061907
	s_setprio 0                                                // 000000630C78: BFB50000
	ds_load_b32 v6, v36 offset:384                             // 000000630C7C: D8D80180 06000024
	ds_load_b32 v7, v36 offset:416                             // 000000630C84: D8D801A0 07000024
	buffer_load_b32 v25, v17, s[8:11], s58 offen               // 000000630C8C: E0500000 3A421911
	ds_load_b32 v11, v37 offset:384                            // 000000630C94: D8D80180 0B000025
	ds_load_b32 v12, v37 offset:416                            // 000000630C9C: D8D801A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000630CA4: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000630CA8: 56001B08
	s_setprio 1                                                // 000000630CAC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000630CB0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000630CB4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000630CB8: 56061D09
	s_setprio 0                                                // 000000630CBC: BFB50000
	ds_load_b32 v8, v36 offset:448                             // 000000630CC0: D8D801C0 08000024
	ds_load_b32 v9, v36 offset:480                             // 000000630CC8: D8D801E0 09000024
	buffer_load_b32 v26, v17, s[8:11], s59 offen               // 000000630CD0: E0500000 3B421A11
	ds_load_b32 v13, v37 offset:448                            // 000000630CD8: D8D801C0 0D000025
	ds_load_b32 v14, v37 offset:480                            // 000000630CE0: D8D801E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000630CE8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000630CEC: 56001706
	s_setprio 1                                                // 000000630CF0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000630CF4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000630CF8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000630CFC: 56061907
	s_setprio 0                                                // 000000630D00: BFB50000
	ds_load_b32 v6, v36 offset:512                             // 000000630D04: D8D80200 06000024
	ds_load_b32 v7, v36 offset:544                             // 000000630D0C: D8D80220 07000024
	buffer_load_b32 v27, v17, s[8:11], s60 offen               // 000000630D14: E0500000 3C421B11
	ds_load_b32 v11, v37 offset:512                            // 000000630D1C: D8D80200 0B000025
	ds_load_b32 v12, v37 offset:544                            // 000000630D24: D8D80220 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000630D2C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000630D30: 56001B08
	s_setprio 1                                                // 000000630D34: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000630D38: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000630D3C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000630D40: 56061D09
	s_setprio 0                                                // 000000630D44: BFB50000
	ds_load_b32 v8, v36 offset:576                             // 000000630D48: D8D80240 08000024
	ds_load_b32 v9, v36 offset:608                             // 000000630D50: D8D80260 09000024
	buffer_load_b32 v28, v18, s[12:15], 0 offen                // 000000630D58: E0500000 80431C12
	ds_load_b32 v13, v37 offset:576                            // 000000630D60: D8D80240 0D000025
	ds_load_b32 v14, v37 offset:608                            // 000000630D68: D8D80260 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000630D70: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000630D74: 56001706
	s_setprio 1                                                // 000000630D78: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000630D7C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000630D80: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000630D84: 56061907
	s_setprio 0                                                // 000000630D88: BFB50000
	ds_load_b32 v6, v36 offset:640                             // 000000630D8C: D8D80280 06000024
	ds_load_b32 v7, v36 offset:672                             // 000000630D94: D8D802A0 07000024
	buffer_load_b32 v29, v18, s[12:15], s61 offen              // 000000630D9C: E0500000 3D431D12
	ds_load_b32 v11, v37 offset:640                            // 000000630DA4: D8D80280 0B000025
	ds_load_b32 v12, v37 offset:672                            // 000000630DAC: D8D802A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000630DB4: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000630DB8: 56001B08
	s_setprio 1                                                // 000000630DBC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000630DC0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000630DC4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000630DC8: 56061D09
	s_setprio 0                                                // 000000630DCC: BFB50000
	ds_load_b32 v8, v36 offset:704                             // 000000630DD0: D8D802C0 08000024
	ds_load_b32 v9, v36 offset:736                             // 000000630DD8: D8D802E0 09000024
	buffer_load_b32 v30, v18, s[12:15], s62 offen              // 000000630DE0: E0500000 3E431E12
	ds_load_b32 v13, v37 offset:704                            // 000000630DE8: D8D802C0 0D000025
	ds_load_b32 v14, v37 offset:736                            // 000000630DF0: D8D802E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000630DF8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000630DFC: 56001706
	s_setprio 1                                                // 000000630E00: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000630E04: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000630E08: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000630E0C: 56061907
	s_setprio 0                                                // 000000630E10: BFB50000
	ds_load_b32 v6, v36 offset:768                             // 000000630E14: D8D80300 06000024
	ds_load_b32 v7, v36 offset:800                             // 000000630E1C: D8D80320 07000024
	buffer_load_b32 v31, v18, s[12:15], s63 offen              // 000000630E24: E0500000 3F431F12
	ds_load_b32 v11, v37 offset:768                            // 000000630E2C: D8D80300 0B000025
	ds_load_b32 v12, v37 offset:800                            // 000000630E34: D8D80320 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000630E3C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000630E40: 56001B08
	s_setprio 1                                                // 000000630E44: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000630E48: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000630E4C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000630E50: 56061D09
	s_setprio 0                                                // 000000630E54: BFB50000
	ds_load_b32 v8, v36 offset:832                             // 000000630E58: D8D80340 08000024
	ds_load_b32 v9, v36 offset:864                             // 000000630E60: D8D80360 09000024
	buffer_load_b32 v32, v18, s[12:15], s64 offen              // 000000630E68: E0500000 40432012
	ds_load_b32 v13, v37 offset:832                            // 000000630E70: D8D80340 0D000025
	ds_load_b32 v14, v37 offset:864                            // 000000630E78: D8D80360 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000630E80: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000630E84: 56001706
	s_setprio 1                                                // 000000630E88: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000630E8C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000630E90: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000630E94: 56061907
	s_setprio 0                                                // 000000630E98: BFB50000
	ds_load_b32 v6, v36 offset:896                             // 000000630E9C: D8D80380 06000024
	ds_load_b32 v7, v36 offset:928                             // 000000630EA4: D8D803A0 07000024
	buffer_load_b32 v33, v18, s[12:15], s65 offen              // 000000630EAC: E0500000 41432112
	ds_load_b32 v11, v37 offset:896                            // 000000630EB4: D8D80380 0B000025
	ds_load_b32 v12, v37 offset:928                            // 000000630EBC: D8D803A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000630EC4: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000630EC8: 56001B08
	s_setprio 1                                                // 000000630ECC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000630ED0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000630ED4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000630ED8: 56061D09
	s_setprio 0                                                // 000000630EDC: BFB50000
	ds_load_b32 v8, v36 offset:960                             // 000000630EE0: D8D803C0 08000024
	ds_load_b32 v9, v36 offset:992                             // 000000630EE8: D8D803E0 09000024
	buffer_load_b32 v34, v18, s[12:15], s66 offen              // 000000630EF0: E0500000 42432212
	ds_load_b32 v13, v37 offset:960                            // 000000630EF8: D8D803C0 0D000025
	ds_load_b32 v14, v37 offset:992                            // 000000630F00: D8D803E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000630F08: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000630F0C: 56001706
	s_setprio 1                                                // 000000630F10: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000630F14: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000630F18: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000630F1C: 56061907
	s_setprio 0                                                // 000000630F20: BFB50000
	ds_load_b32 v6, v36 offset:1024                            // 000000630F24: D8D80400 06000024
	ds_load_b32 v7, v36 offset:1056                            // 000000630F2C: D8D80420 07000024
	buffer_load_b32 v35, v18, s[12:15], s67 offen              // 000000630F34: E0500000 43432312
	ds_load_b32 v11, v37 offset:1024                           // 000000630F3C: D8D80400 0B000025
	ds_load_b32 v12, v37 offset:1056                           // 000000630F44: D8D80420 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000630F4C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000630F50: 56001B08
	s_setprio 1                                                // 000000630F54: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000630F58: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000630F5C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000630F60: 56061D09
	s_setprio 0                                                // 000000630F64: BFB50000
	ds_load_b32 v8, v36 offset:1088                            // 000000630F68: D8D80440 08000024
	ds_load_b32 v9, v36 offset:1120                            // 000000630F70: D8D80460 09000024
	s_add_u32 s8, s8, s7                                       // 000000630F78: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000630F7C: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000630F80: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000630F84: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000630F88: BF068001
	s_cmov_b32 s10, s0                                         // 000000630F8C: BE8A0200
	ds_load_b32 v13, v37 offset:1088                           // 000000630F90: D8D80440 0D000025
	ds_load_b32 v14, v37 offset:1120                           // 000000630F98: D8D80460 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000630FA0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000630FA4: 56001706
	s_setprio 1                                                // 000000630FA8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000630FAC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000630FB0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000630FB4: 56061907
	s_setprio 0                                                // 000000630FB8: BFB50000
	ds_load_b32 v6, v36 offset:1152                            // 000000630FBC: D8D80480 06000024
	ds_load_b32 v7, v36 offset:1184                            // 000000630FC4: D8D804A0 07000024
	s_add_u32 s12, s12, s30                                    // 000000630FCC: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000630FD0: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000630FD4: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000630FD8: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000630FDC: BF06801D
	s_cmov_b32 s14, s28                                        // 000000630FE0: BE8E021C
	ds_load_b32 v11, v37 offset:1152                           // 000000630FE4: D8D80480 0B000025
	ds_load_b32 v12, v37 offset:1184                           // 000000630FEC: D8D804A0 0C000025
	s_waitcnt vmcnt(15)                                        // 000000630FF4: BF893FF7
	ds_store_b32 v15, v20 offset:4096                          // 000000630FF8: D8341000 0000140F
	s_waitcnt lgkmcnt(5)                                       // 000000631000: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631004: 56001B08
	s_setprio 1                                                // 000000631008: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 00000063100C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631010: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631014: 56061D09
	s_setprio 0                                                // 000000631018: BFB50000
	ds_load_b32 v8, v36 offset:1216                            // 00000063101C: D8D804C0 08000024
	ds_load_b32 v9, v36 offset:1248                            // 000000631024: D8D804E0 09000024
	ds_load_b32 v13, v37 offset:1216                           // 00000063102C: D8D804C0 0D000025
	ds_load_b32 v14, v37 offset:1248                           // 000000631034: D8D804E0 0E000025
	s_waitcnt vmcnt(14)                                        // 00000063103C: BF893BF7
	ds_store_b32 v15, v21 offset:4104                          // 000000631040: D8341008 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000631048: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 00000063104C: 56001706
	s_setprio 1                                                // 000000631050: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631054: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631058: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063105C: 56061907
	s_setprio 0                                                // 000000631060: BFB50000
	ds_load_b32 v6, v36 offset:1280                            // 000000631064: D8D80500 06000024
	ds_load_b32 v7, v36 offset:1312                            // 00000063106C: D8D80520 07000024
	ds_load_b32 v11, v37 offset:1280                           // 000000631074: D8D80500 0B000025
	ds_load_b32 v12, v37 offset:1312                           // 00000063107C: D8D80520 0C000025
	s_waitcnt vmcnt(13)                                        // 000000631084: BF8937F7
	ds_store_b32 v15, v22 offset:4112                          // 000000631088: D8341010 0000160F
	s_waitcnt lgkmcnt(5)                                       // 000000631090: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631094: 56001B08
	s_setprio 1                                                // 000000631098: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 00000063109C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006310A0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006310A4: 56061D09
	s_setprio 0                                                // 0000006310A8: BFB50000
	ds_load_b32 v8, v36 offset:1344                            // 0000006310AC: D8D80540 08000024
	ds_load_b32 v9, v36 offset:1376                            // 0000006310B4: D8D80560 09000024
	ds_load_b32 v13, v37 offset:1344                           // 0000006310BC: D8D80540 0D000025
	ds_load_b32 v14, v37 offset:1376                           // 0000006310C4: D8D80560 0E000025
	s_waitcnt vmcnt(12)                                        // 0000006310CC: BF8933F7
	ds_store_b32 v15, v23 offset:4120                          // 0000006310D0: D8341018 0000170F
	s_waitcnt lgkmcnt(5)                                       // 0000006310D8: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006310DC: 56001706
	s_setprio 1                                                // 0000006310E0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006310E4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006310E8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 0000006310EC: 56061907
	s_setprio 0                                                // 0000006310F0: BFB50000
	ds_load_b32 v6, v36 offset:1408                            // 0000006310F4: D8D80580 06000024
	ds_load_b32 v7, v36 offset:1440                            // 0000006310FC: D8D805A0 07000024
	ds_load_b32 v11, v37 offset:1408                           // 000000631104: D8D80580 0B000025
	ds_load_b32 v12, v37 offset:1440                           // 00000063110C: D8D805A0 0C000025
	s_waitcnt vmcnt(11)                                        // 000000631114: BF892FF7
	ds_store_b32 v15, v24 offset:4128                          // 000000631118: D8341020 0000180F
	s_waitcnt lgkmcnt(5)                                       // 000000631120: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631124: 56001B08
	s_setprio 1                                                // 000000631128: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 00000063112C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631130: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631134: 56061D09
	s_setprio 0                                                // 000000631138: BFB50000
	ds_load_b32 v8, v36 offset:1472                            // 00000063113C: D8D805C0 08000024
	ds_load_b32 v9, v36 offset:1504                            // 000000631144: D8D805E0 09000024
	ds_load_b32 v13, v37 offset:1472                           // 00000063114C: D8D805C0 0D000025
	ds_load_b32 v14, v37 offset:1504                           // 000000631154: D8D805E0 0E000025
	s_waitcnt vmcnt(10)                                        // 00000063115C: BF892BF7
	ds_store_b32 v15, v25 offset:4136                          // 000000631160: D8341028 0000190F
	s_waitcnt lgkmcnt(5)                                       // 000000631168: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 00000063116C: 56001706
	s_setprio 1                                                // 000000631170: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631174: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631178: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063117C: 56061907
	s_setprio 0                                                // 000000631180: BFB50000
	ds_load_b32 v6, v36 offset:1536                            // 000000631184: D8D80600 06000024
	ds_load_b32 v7, v36 offset:1568                            // 00000063118C: D8D80620 07000024
	ds_load_b32 v11, v37 offset:1536                           // 000000631194: D8D80600 0B000025
	ds_load_b32 v12, v37 offset:1568                           // 00000063119C: D8D80620 0C000025
	s_waitcnt vmcnt(9)                                         // 0000006311A4: BF8927F7
	ds_store_b32 v15, v26 offset:4144                          // 0000006311A8: D8341030 00001A0F
	s_waitcnt lgkmcnt(5)                                       // 0000006311B0: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006311B4: 56001B08
	s_setprio 1                                                // 0000006311B8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006311BC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006311C0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006311C4: 56061D09
	s_setprio 0                                                // 0000006311C8: BFB50000
	ds_load_b32 v8, v36 offset:1600                            // 0000006311CC: D8D80640 08000024
	ds_load_b32 v9, v36 offset:1632                            // 0000006311D4: D8D80660 09000024
	ds_load_b32 v13, v37 offset:1600                           // 0000006311DC: D8D80640 0D000025
	ds_load_b32 v14, v37 offset:1632                           // 0000006311E4: D8D80660 0E000025
	s_waitcnt vmcnt(8)                                         // 0000006311EC: BF8923F7
	ds_store_b32 v15, v27 offset:4152                          // 0000006311F0: D8341038 00001B0F
	s_waitcnt lgkmcnt(5)                                       // 0000006311F8: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006311FC: 56001706
	s_setprio 1                                                // 000000631200: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631204: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631208: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063120C: 56061907
	s_setprio 0                                                // 000000631210: BFB50000
	ds_load_b32 v6, v36 offset:1664                            // 000000631214: D8D80680 06000024
	ds_load_b32 v7, v36 offset:1696                            // 00000063121C: D8D806A0 07000024
	ds_load_b32 v11, v37 offset:1664                           // 000000631224: D8D80680 0B000025
	ds_load_b32 v12, v37 offset:1696                           // 00000063122C: D8D806A0 0C000025
	s_waitcnt vmcnt(7)                                         // 000000631234: BF891FF7
	ds_store_b32 v16, v28 offset:4096                          // 000000631238: D8341000 00001C10
	s_waitcnt lgkmcnt(5)                                       // 000000631240: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631244: 56001B08
	s_setprio 1                                                // 000000631248: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 00000063124C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631250: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631254: 56061D09
	s_setprio 0                                                // 000000631258: BFB50000
	ds_load_b32 v8, v36 offset:1728                            // 00000063125C: D8D806C0 08000024
	ds_load_b32 v9, v36 offset:1760                            // 000000631264: D8D806E0 09000024
	ds_load_b32 v13, v37 offset:1728                           // 00000063126C: D8D806C0 0D000025
	ds_load_b32 v14, v37 offset:1760                           // 000000631274: D8D806E0 0E000025
	s_waitcnt vmcnt(6)                                         // 00000063127C: BF891BF7
	ds_store_b32 v16, v29 offset:4352                          // 000000631280: D8341100 00001D10
	s_waitcnt lgkmcnt(5)                                       // 000000631288: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 00000063128C: 56001706
	s_setprio 1                                                // 000000631290: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631294: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631298: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063129C: 56061907
	s_setprio 0                                                // 0000006312A0: BFB50000
	ds_load_b32 v6, v36 offset:1792                            // 0000006312A4: D8D80700 06000024
	ds_load_b32 v7, v36 offset:1824                            // 0000006312AC: D8D80720 07000024
	ds_load_b32 v11, v37 offset:1792                           // 0000006312B4: D8D80700 0B000025
	ds_load_b32 v12, v37 offset:1824                           // 0000006312BC: D8D80720 0C000025
	s_waitcnt vmcnt(5)                                         // 0000006312C4: BF8917F7
	ds_store_b32 v16, v30 offset:4608                          // 0000006312C8: D8341200 00001E10
	s_waitcnt lgkmcnt(5)                                       // 0000006312D0: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006312D4: 56001B08
	s_setprio 1                                                // 0000006312D8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006312DC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006312E0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006312E4: 56061D09
	s_setprio 0                                                // 0000006312E8: BFB50000
	ds_load_b32 v8, v36 offset:1856                            // 0000006312EC: D8D80740 08000024
	ds_load_b32 v9, v36 offset:1888                            // 0000006312F4: D8D80760 09000024
	ds_load_b32 v13, v37 offset:1856                           // 0000006312FC: D8D80740 0D000025
	ds_load_b32 v14, v37 offset:1888                           // 000000631304: D8D80760 0E000025
	s_waitcnt vmcnt(4)                                         // 00000063130C: BF8913F7
	ds_store_b32 v16, v31 offset:4864                          // 000000631310: D8341300 00001F10
	s_waitcnt lgkmcnt(5)                                       // 000000631318: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 00000063131C: 56001706
	s_setprio 1                                                // 000000631320: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631324: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631328: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063132C: 56061907
	s_setprio 0                                                // 000000631330: BFB50000
	ds_load_b32 v6, v36 offset:1920                            // 000000631334: D8D80780 06000024
	ds_load_b32 v7, v36 offset:1952                            // 00000063133C: D8D807A0 07000024
	ds_load_b32 v11, v37 offset:1920                           // 000000631344: D8D80780 0B000025
	ds_load_b32 v12, v37 offset:1952                           // 00000063134C: D8D807A0 0C000025
	s_waitcnt vmcnt(3)                                         // 000000631354: BF890FF7
	ds_store_b32 v16, v32 offset:5120                          // 000000631358: D8341400 00002010
	s_waitcnt lgkmcnt(5)                                       // 000000631360: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631364: 56001B08
	s_setprio 1                                                // 000000631368: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 00000063136C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631370: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631374: 56061D09
	s_setprio 0                                                // 000000631378: BFB50000
	ds_load_b32 v8, v36 offset:1984                            // 00000063137C: D8D807C0 08000024
	ds_load_b32 v9, v36 offset:2016                            // 000000631384: D8D807E0 09000024
	ds_load_b32 v13, v37 offset:1984                           // 00000063138C: D8D807C0 0D000025
	ds_load_b32 v14, v37 offset:2016                           // 000000631394: D8D807E0 0E000025
	s_waitcnt vmcnt(2)                                         // 00000063139C: BF890BF7
	ds_store_b32 v16, v33 offset:5376                          // 0000006313A0: D8341500 00002110
	s_waitcnt vmcnt(1)                                         // 0000006313A8: BF8907F7
	ds_store_b32 v16, v34 offset:5632                          // 0000006313AC: D8341600 00002210
	s_waitcnt vmcnt(0)                                         // 0000006313B4: BF8903F7
	ds_store_b32 v16, v35 offset:5888                          // 0000006313B8: D8341700 00002310
	s_waitcnt lgkmcnt(7)                                       // 0000006313C0: BF89FC77
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006313C4: 56001706
	s_setprio 1                                                // 0000006313C8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006313CC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006313D0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 0000006313D4: 56061907
	s_setprio 0                                                // 0000006313D8: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 0000006313DC: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 0000006313E0: BDFC0000
	s_barrier                                                  // 0000006313E4: BFBD0000
	ds_load_b32 v6, v36 offset:4096                            // 0000006313E8: D8D81000 06000024
	ds_load_b32 v7, v36 offset:4128                            // 0000006313F0: D8D81020 07000024
	ds_load_b32 v11, v37 offset:4096                           // 0000006313F8: D8D81000 0B000025
	ds_load_b32 v12, v37 offset:4128                           // 000000631400: D8D81020 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000631408: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 00000063140C: 56001B08
	s_setprio 1                                                // 000000631410: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000631414: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631418: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 00000063141C: 56061D09
	s_setprio 0                                                // 000000631420: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000631424: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000631428: BF008105
	s_cbranch_scc1 LoopEndL_oddexit_3                          // 00000063142C: BFA20243

0000000000631430 <label_0014>:
	ds_load_b32 v8, v36 offset:4160                            // 000000631430: D8D81040 08000024
	ds_load_b32 v9, v36 offset:4192                            // 000000631438: D8D81060 09000024
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000631440: E0500000 80421411
	ds_load_b32 v13, v37 offset:4160                           // 000000631448: D8D81040 0D000025
	ds_load_b32 v14, v37 offset:4192                           // 000000631450: D8D81060 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000631458: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 00000063145C: 56001706
	s_setprio 1                                                // 000000631460: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631464: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631468: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063146C: 56061907
	s_setprio 0                                                // 000000631470: BFB50000
	ds_load_b32 v6, v36 offset:4224                            // 000000631474: D8D81080 06000024
	ds_load_b32 v7, v36 offset:4256                            // 00000063147C: D8D810A0 07000024
	buffer_load_b32 v21, v17, s[8:11], s54 offen               // 000000631484: E0500000 36421511
	ds_load_b32 v11, v37 offset:4224                           // 00000063148C: D8D81080 0B000025
	ds_load_b32 v12, v37 offset:4256                           // 000000631494: D8D810A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 00000063149C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006314A0: 56001B08
	s_setprio 1                                                // 0000006314A4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006314A8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006314AC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006314B0: 56061D09
	s_setprio 0                                                // 0000006314B4: BFB50000
	ds_load_b32 v8, v36 offset:4288                            // 0000006314B8: D8D810C0 08000024
	ds_load_b32 v9, v36 offset:4320                            // 0000006314C0: D8D810E0 09000024
	buffer_load_b32 v22, v17, s[8:11], s55 offen               // 0000006314C8: E0500000 37421611
	ds_load_b32 v13, v37 offset:4288                           // 0000006314D0: D8D810C0 0D000025
	ds_load_b32 v14, v37 offset:4320                           // 0000006314D8: D8D810E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 0000006314E0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006314E4: 56001706
	s_setprio 1                                                // 0000006314E8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006314EC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006314F0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 0000006314F4: 56061907
	s_setprio 0                                                // 0000006314F8: BFB50000
	ds_load_b32 v6, v36 offset:4352                            // 0000006314FC: D8D81100 06000024
	ds_load_b32 v7, v36 offset:4384                            // 000000631504: D8D81120 07000024
	buffer_load_b32 v23, v17, s[8:11], s56 offen               // 00000063150C: E0500000 38421711
	ds_load_b32 v11, v37 offset:4352                           // 000000631514: D8D81100 0B000025
	ds_load_b32 v12, v37 offset:4384                           // 00000063151C: D8D81120 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000631524: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631528: 56001B08
	s_setprio 1                                                // 00000063152C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000631530: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631534: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631538: 56061D09
	s_setprio 0                                                // 00000063153C: BFB50000
	ds_load_b32 v8, v36 offset:4416                            // 000000631540: D8D81140 08000024
	ds_load_b32 v9, v36 offset:4448                            // 000000631548: D8D81160 09000024
	buffer_load_b32 v24, v17, s[8:11], s57 offen               // 000000631550: E0500000 39421811
	ds_load_b32 v13, v37 offset:4416                           // 000000631558: D8D81140 0D000025
	ds_load_b32 v14, v37 offset:4448                           // 000000631560: D8D81160 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000631568: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 00000063156C: 56001706
	s_setprio 1                                                // 000000631570: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631574: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631578: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063157C: 56061907
	s_setprio 0                                                // 000000631580: BFB50000
	ds_load_b32 v6, v36 offset:4480                            // 000000631584: D8D81180 06000024
	ds_load_b32 v7, v36 offset:4512                            // 00000063158C: D8D811A0 07000024
	buffer_load_b32 v25, v17, s[8:11], s58 offen               // 000000631594: E0500000 3A421911
	ds_load_b32 v11, v37 offset:4480                           // 00000063159C: D8D81180 0B000025
	ds_load_b32 v12, v37 offset:4512                           // 0000006315A4: D8D811A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 0000006315AC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006315B0: 56001B08
	s_setprio 1                                                // 0000006315B4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006315B8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006315BC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006315C0: 56061D09
	s_setprio 0                                                // 0000006315C4: BFB50000
	ds_load_b32 v8, v36 offset:4544                            // 0000006315C8: D8D811C0 08000024
	ds_load_b32 v9, v36 offset:4576                            // 0000006315D0: D8D811E0 09000024
	buffer_load_b32 v26, v17, s[8:11], s59 offen               // 0000006315D8: E0500000 3B421A11
	ds_load_b32 v13, v37 offset:4544                           // 0000006315E0: D8D811C0 0D000025
	ds_load_b32 v14, v37 offset:4576                           // 0000006315E8: D8D811E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 0000006315F0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006315F4: 56001706
	s_setprio 1                                                // 0000006315F8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006315FC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631600: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000631604: 56061907
	s_setprio 0                                                // 000000631608: BFB50000
	ds_load_b32 v6, v36 offset:4608                            // 00000063160C: D8D81200 06000024
	ds_load_b32 v7, v36 offset:4640                            // 000000631614: D8D81220 07000024
	buffer_load_b32 v27, v17, s[8:11], s60 offen               // 00000063161C: E0500000 3C421B11
	ds_load_b32 v11, v37 offset:4608                           // 000000631624: D8D81200 0B000025
	ds_load_b32 v12, v37 offset:4640                           // 00000063162C: D8D81220 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000631634: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631638: 56001B08
	s_setprio 1                                                // 00000063163C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000631640: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631644: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631648: 56061D09
	s_setprio 0                                                // 00000063164C: BFB50000
	ds_load_b32 v8, v36 offset:4672                            // 000000631650: D8D81240 08000024
	ds_load_b32 v9, v36 offset:4704                            // 000000631658: D8D81260 09000024
	buffer_load_b32 v28, v18, s[12:15], 0 offen                // 000000631660: E0500000 80431C12
	ds_load_b32 v13, v37 offset:4672                           // 000000631668: D8D81240 0D000025
	ds_load_b32 v14, v37 offset:4704                           // 000000631670: D8D81260 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000631678: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 00000063167C: 56001706
	s_setprio 1                                                // 000000631680: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631684: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631688: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063168C: 56061907
	s_setprio 0                                                // 000000631690: BFB50000
	ds_load_b32 v6, v36 offset:4736                            // 000000631694: D8D81280 06000024
	ds_load_b32 v7, v36 offset:4768                            // 00000063169C: D8D812A0 07000024
	buffer_load_b32 v29, v18, s[12:15], s61 offen              // 0000006316A4: E0500000 3D431D12
	ds_load_b32 v11, v37 offset:4736                           // 0000006316AC: D8D81280 0B000025
	ds_load_b32 v12, v37 offset:4768                           // 0000006316B4: D8D812A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 0000006316BC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006316C0: 56001B08
	s_setprio 1                                                // 0000006316C4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006316C8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006316CC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006316D0: 56061D09
	s_setprio 0                                                // 0000006316D4: BFB50000
	ds_load_b32 v8, v36 offset:4800                            // 0000006316D8: D8D812C0 08000024
	ds_load_b32 v9, v36 offset:4832                            // 0000006316E0: D8D812E0 09000024
	buffer_load_b32 v30, v18, s[12:15], s62 offen              // 0000006316E8: E0500000 3E431E12
	ds_load_b32 v13, v37 offset:4800                           // 0000006316F0: D8D812C0 0D000025
	ds_load_b32 v14, v37 offset:4832                           // 0000006316F8: D8D812E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000631700: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000631704: 56001706
	s_setprio 1                                                // 000000631708: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 00000063170C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631710: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000631714: 56061907
	s_setprio 0                                                // 000000631718: BFB50000
	ds_load_b32 v6, v36 offset:4864                            // 00000063171C: D8D81300 06000024
	ds_load_b32 v7, v36 offset:4896                            // 000000631724: D8D81320 07000024
	buffer_load_b32 v31, v18, s[12:15], s63 offen              // 00000063172C: E0500000 3F431F12
	ds_load_b32 v11, v37 offset:4864                           // 000000631734: D8D81300 0B000025
	ds_load_b32 v12, v37 offset:4896                           // 00000063173C: D8D81320 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000631744: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631748: 56001B08
	s_setprio 1                                                // 00000063174C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000631750: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631754: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631758: 56061D09
	s_setprio 0                                                // 00000063175C: BFB50000
	ds_load_b32 v8, v36 offset:4928                            // 000000631760: D8D81340 08000024
	ds_load_b32 v9, v36 offset:4960                            // 000000631768: D8D81360 09000024
	buffer_load_b32 v32, v18, s[12:15], s64 offen              // 000000631770: E0500000 40432012
	ds_load_b32 v13, v37 offset:4928                           // 000000631778: D8D81340 0D000025
	ds_load_b32 v14, v37 offset:4960                           // 000000631780: D8D81360 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000631788: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 00000063178C: 56001706
	s_setprio 1                                                // 000000631790: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631794: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631798: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063179C: 56061907
	s_setprio 0                                                // 0000006317A0: BFB50000
	ds_load_b32 v6, v36 offset:4992                            // 0000006317A4: D8D81380 06000024
	ds_load_b32 v7, v36 offset:5024                            // 0000006317AC: D8D813A0 07000024
	buffer_load_b32 v33, v18, s[12:15], s65 offen              // 0000006317B4: E0500000 41432112
	ds_load_b32 v11, v37 offset:4992                           // 0000006317BC: D8D81380 0B000025
	ds_load_b32 v12, v37 offset:5024                           // 0000006317C4: D8D813A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 0000006317CC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006317D0: 56001B08
	s_setprio 1                                                // 0000006317D4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006317D8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006317DC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006317E0: 56061D09
	s_setprio 0                                                // 0000006317E4: BFB50000
	ds_load_b32 v8, v36 offset:5056                            // 0000006317E8: D8D813C0 08000024
	ds_load_b32 v9, v36 offset:5088                            // 0000006317F0: D8D813E0 09000024
	buffer_load_b32 v34, v18, s[12:15], s66 offen              // 0000006317F8: E0500000 42432212
	ds_load_b32 v13, v37 offset:5056                           // 000000631800: D8D813C0 0D000025
	ds_load_b32 v14, v37 offset:5088                           // 000000631808: D8D813E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000631810: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000631814: 56001706
	s_setprio 1                                                // 000000631818: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 00000063181C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631820: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000631824: 56061907
	s_setprio 0                                                // 000000631828: BFB50000
	ds_load_b32 v6, v36 offset:5120                            // 00000063182C: D8D81400 06000024
	ds_load_b32 v7, v36 offset:5152                            // 000000631834: D8D81420 07000024
	buffer_load_b32 v35, v18, s[12:15], s67 offen              // 00000063183C: E0500000 43432312
	ds_load_b32 v11, v37 offset:5120                           // 000000631844: D8D81400 0B000025
	ds_load_b32 v12, v37 offset:5152                           // 00000063184C: D8D81420 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000631854: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631858: 56001B08
	s_setprio 1                                                // 00000063185C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000631860: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631864: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631868: 56061D09
	s_setprio 0                                                // 00000063186C: BFB50000
	ds_load_b32 v8, v36 offset:5184                            // 000000631870: D8D81440 08000024
	ds_load_b32 v9, v36 offset:5216                            // 000000631878: D8D81460 09000024
	s_add_u32 s8, s8, s7                                       // 000000631880: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000631884: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000631888: 80800700
	s_subb_u32 s1, s1, 0                                       // 00000063188C: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000631890: BF068001
	s_cmov_b32 s10, s0                                         // 000000631894: BE8A0200
	ds_load_b32 v13, v37 offset:5184                           // 000000631898: D8D81440 0D000025
	ds_load_b32 v14, v37 offset:5216                           // 0000006318A0: D8D81460 0E000025
	s_waitcnt lgkmcnt(4)                                       // 0000006318A8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006318AC: 56001706
	s_setprio 1                                                // 0000006318B0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006318B4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006318B8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 0000006318BC: 56061907
	s_setprio 0                                                // 0000006318C0: BFB50000
	ds_load_b32 v6, v36 offset:5248                            // 0000006318C4: D8D81480 06000024
	ds_load_b32 v7, v36 offset:5280                            // 0000006318CC: D8D814A0 07000024
	s_add_u32 s12, s12, s30                                    // 0000006318D4: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 0000006318D8: 820D800D
	s_sub_u32 s28, s28, s30                                    // 0000006318DC: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 0000006318E0: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 0000006318E4: BF06801D
	s_cmov_b32 s14, s28                                        // 0000006318E8: BE8E021C
	ds_load_b32 v11, v37 offset:5248                           // 0000006318EC: D8D81480 0B000025
	ds_load_b32 v12, v37 offset:5280                           // 0000006318F4: D8D814A0 0C000025
	s_waitcnt vmcnt(15)                                        // 0000006318FC: BF893FF7
	ds_store_b32 v15, v20                                      // 000000631900: D8340000 0000140F
	s_waitcnt lgkmcnt(5)                                       // 000000631908: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 00000063190C: 56001B08
	s_setprio 1                                                // 000000631910: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000631914: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631918: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 00000063191C: 56061D09
	s_setprio 0                                                // 000000631920: BFB50000
	ds_load_b32 v8, v36 offset:5312                            // 000000631924: D8D814C0 08000024
	ds_load_b32 v9, v36 offset:5344                            // 00000063192C: D8D814E0 09000024
	ds_load_b32 v13, v37 offset:5312                           // 000000631934: D8D814C0 0D000025
	ds_load_b32 v14, v37 offset:5344                           // 00000063193C: D8D814E0 0E000025
	s_waitcnt vmcnt(14)                                        // 000000631944: BF893BF7
	ds_store_b32 v15, v21 offset:8                             // 000000631948: D8340008 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000631950: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000631954: 56001706
	s_setprio 1                                                // 000000631958: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 00000063195C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631960: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000631964: 56061907
	s_setprio 0                                                // 000000631968: BFB50000
	ds_load_b32 v6, v36 offset:5376                            // 00000063196C: D8D81500 06000024
	ds_load_b32 v7, v36 offset:5408                            // 000000631974: D8D81520 07000024
	ds_load_b32 v11, v37 offset:5376                           // 00000063197C: D8D81500 0B000025
	ds_load_b32 v12, v37 offset:5408                           // 000000631984: D8D81520 0C000025
	s_waitcnt vmcnt(13)                                        // 00000063198C: BF8937F7
	ds_store_b32 v15, v22 offset:16                            // 000000631990: D8340010 0000160F
	s_waitcnt lgkmcnt(5)                                       // 000000631998: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 00000063199C: 56001B08
	s_setprio 1                                                // 0000006319A0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006319A4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006319A8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006319AC: 56061D09
	s_setprio 0                                                // 0000006319B0: BFB50000
	ds_load_b32 v8, v36 offset:5440                            // 0000006319B4: D8D81540 08000024
	ds_load_b32 v9, v36 offset:5472                            // 0000006319BC: D8D81560 09000024
	ds_load_b32 v13, v37 offset:5440                           // 0000006319C4: D8D81540 0D000025
	ds_load_b32 v14, v37 offset:5472                           // 0000006319CC: D8D81560 0E000025
	s_waitcnt vmcnt(12)                                        // 0000006319D4: BF8933F7
	ds_store_b32 v15, v23 offset:24                            // 0000006319D8: D8340018 0000170F
	s_waitcnt lgkmcnt(5)                                       // 0000006319E0: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006319E4: 56001706
	s_setprio 1                                                // 0000006319E8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006319EC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006319F0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 0000006319F4: 56061907
	s_setprio 0                                                // 0000006319F8: BFB50000
	ds_load_b32 v6, v36 offset:5504                            // 0000006319FC: D8D81580 06000024
	ds_load_b32 v7, v36 offset:5536                            // 000000631A04: D8D815A0 07000024
	ds_load_b32 v11, v37 offset:5504                           // 000000631A0C: D8D81580 0B000025
	ds_load_b32 v12, v37 offset:5536                           // 000000631A14: D8D815A0 0C000025
	s_waitcnt vmcnt(11)                                        // 000000631A1C: BF892FF7
	ds_store_b32 v15, v24 offset:32                            // 000000631A20: D8340020 0000180F
	s_waitcnt lgkmcnt(5)                                       // 000000631A28: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631A2C: 56001B08
	s_setprio 1                                                // 000000631A30: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000631A34: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631A38: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631A3C: 56061D09
	s_setprio 0                                                // 000000631A40: BFB50000
	ds_load_b32 v8, v36 offset:5568                            // 000000631A44: D8D815C0 08000024
	ds_load_b32 v9, v36 offset:5600                            // 000000631A4C: D8D815E0 09000024
	ds_load_b32 v13, v37 offset:5568                           // 000000631A54: D8D815C0 0D000025
	ds_load_b32 v14, v37 offset:5600                           // 000000631A5C: D8D815E0 0E000025
	s_waitcnt vmcnt(10)                                        // 000000631A64: BF892BF7
	ds_store_b32 v15, v25 offset:40                            // 000000631A68: D8340028 0000190F
	s_waitcnt lgkmcnt(5)                                       // 000000631A70: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000631A74: 56001706
	s_setprio 1                                                // 000000631A78: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631A7C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631A80: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000631A84: 56061907
	s_setprio 0                                                // 000000631A88: BFB50000
	ds_load_b32 v6, v36 offset:5632                            // 000000631A8C: D8D81600 06000024
	ds_load_b32 v7, v36 offset:5664                            // 000000631A94: D8D81620 07000024
	ds_load_b32 v11, v37 offset:5632                           // 000000631A9C: D8D81600 0B000025
	ds_load_b32 v12, v37 offset:5664                           // 000000631AA4: D8D81620 0C000025
	s_waitcnt vmcnt(9)                                         // 000000631AAC: BF8927F7
	ds_store_b32 v15, v26 offset:48                            // 000000631AB0: D8340030 00001A0F
	s_waitcnt lgkmcnt(5)                                       // 000000631AB8: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631ABC: 56001B08
	s_setprio 1                                                // 000000631AC0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000631AC4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631AC8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631ACC: 56061D09
	s_setprio 0                                                // 000000631AD0: BFB50000
	ds_load_b32 v8, v36 offset:5696                            // 000000631AD4: D8D81640 08000024
	ds_load_b32 v9, v36 offset:5728                            // 000000631ADC: D8D81660 09000024
	ds_load_b32 v13, v37 offset:5696                           // 000000631AE4: D8D81640 0D000025
	ds_load_b32 v14, v37 offset:5728                           // 000000631AEC: D8D81660 0E000025
	s_waitcnt vmcnt(8)                                         // 000000631AF4: BF8923F7
	ds_store_b32 v15, v27 offset:56                            // 000000631AF8: D8340038 00001B0F
	s_waitcnt lgkmcnt(5)                                       // 000000631B00: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000631B04: 56001706
	s_setprio 1                                                // 000000631B08: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631B0C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631B10: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000631B14: 56061907
	s_setprio 0                                                // 000000631B18: BFB50000
	ds_load_b32 v6, v36 offset:5760                            // 000000631B1C: D8D81680 06000024
	ds_load_b32 v7, v36 offset:5792                            // 000000631B24: D8D816A0 07000024
	ds_load_b32 v11, v37 offset:5760                           // 000000631B2C: D8D81680 0B000025
	ds_load_b32 v12, v37 offset:5792                           // 000000631B34: D8D816A0 0C000025
	s_waitcnt vmcnt(7)                                         // 000000631B3C: BF891FF7
	ds_store_b32 v16, v28                                      // 000000631B40: D8340000 00001C10
	s_waitcnt lgkmcnt(5)                                       // 000000631B48: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631B4C: 56001B08
	s_setprio 1                                                // 000000631B50: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000631B54: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631B58: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631B5C: 56061D09
	s_setprio 0                                                // 000000631B60: BFB50000
	ds_load_b32 v8, v36 offset:5824                            // 000000631B64: D8D816C0 08000024
	ds_load_b32 v9, v36 offset:5856                            // 000000631B6C: D8D816E0 09000024
	ds_load_b32 v13, v37 offset:5824                           // 000000631B74: D8D816C0 0D000025
	ds_load_b32 v14, v37 offset:5856                           // 000000631B7C: D8D816E0 0E000025
	s_waitcnt vmcnt(6)                                         // 000000631B84: BF891BF7
	ds_store_b32 v16, v29 offset:256                           // 000000631B88: D8340100 00001D10
	s_waitcnt lgkmcnt(5)                                       // 000000631B90: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000631B94: 56001706
	s_setprio 1                                                // 000000631B98: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631B9C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631BA0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000631BA4: 56061907
	s_setprio 0                                                // 000000631BA8: BFB50000
	ds_load_b32 v6, v36 offset:5888                            // 000000631BAC: D8D81700 06000024
	ds_load_b32 v7, v36 offset:5920                            // 000000631BB4: D8D81720 07000024
	ds_load_b32 v11, v37 offset:5888                           // 000000631BBC: D8D81700 0B000025
	ds_load_b32 v12, v37 offset:5920                           // 000000631BC4: D8D81720 0C000025
	s_waitcnt vmcnt(5)                                         // 000000631BCC: BF8917F7
	ds_store_b32 v16, v30 offset:512                           // 000000631BD0: D8340200 00001E10
	s_waitcnt lgkmcnt(5)                                       // 000000631BD8: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631BDC: 56001B08
	s_setprio 1                                                // 000000631BE0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000631BE4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631BE8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631BEC: 56061D09
	s_setprio 0                                                // 000000631BF0: BFB50000
	ds_load_b32 v8, v36 offset:5952                            // 000000631BF4: D8D81740 08000024
	ds_load_b32 v9, v36 offset:5984                            // 000000631BFC: D8D81760 09000024
	ds_load_b32 v13, v37 offset:5952                           // 000000631C04: D8D81740 0D000025
	ds_load_b32 v14, v37 offset:5984                           // 000000631C0C: D8D81760 0E000025
	s_waitcnt vmcnt(4)                                         // 000000631C14: BF8913F7
	ds_store_b32 v16, v31 offset:768                           // 000000631C18: D8340300 00001F10
	s_waitcnt lgkmcnt(5)                                       // 000000631C20: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000631C24: 56001706
	s_setprio 1                                                // 000000631C28: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631C2C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631C30: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000631C34: 56061907
	s_setprio 0                                                // 000000631C38: BFB50000
	ds_load_b32 v6, v36 offset:6016                            // 000000631C3C: D8D81780 06000024
	ds_load_b32 v7, v36 offset:6048                            // 000000631C44: D8D817A0 07000024
	ds_load_b32 v11, v37 offset:6016                           // 000000631C4C: D8D81780 0B000025
	ds_load_b32 v12, v37 offset:6048                           // 000000631C54: D8D817A0 0C000025
	s_waitcnt vmcnt(3)                                         // 000000631C5C: BF890FF7
	ds_store_b32 v16, v32 offset:1024                          // 000000631C60: D8340400 00002010
	s_waitcnt lgkmcnt(5)                                       // 000000631C68: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631C6C: 56001B08
	s_setprio 1                                                // 000000631C70: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000631C74: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631C78: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631C7C: 56061D09
	s_setprio 0                                                // 000000631C80: BFB50000
	ds_load_b32 v8, v36 offset:6080                            // 000000631C84: D8D817C0 08000024
	ds_load_b32 v9, v36 offset:6112                            // 000000631C8C: D8D817E0 09000024
	ds_load_b32 v13, v37 offset:6080                           // 000000631C94: D8D817C0 0D000025
	ds_load_b32 v14, v37 offset:6112                           // 000000631C9C: D8D817E0 0E000025
	s_waitcnt vmcnt(2)                                         // 000000631CA4: BF890BF7
	ds_store_b32 v16, v33 offset:1280                          // 000000631CA8: D8340500 00002110
	s_waitcnt vmcnt(1)                                         // 000000631CB0: BF8907F7
	ds_store_b32 v16, v34 offset:1536                          // 000000631CB4: D8340600 00002210
	s_waitcnt vmcnt(0)                                         // 000000631CBC: BF8903F7
	ds_store_b32 v16, v35 offset:1792                          // 000000631CC0: D8340700 00002310
	s_waitcnt lgkmcnt(7)                                       // 000000631CC8: BF89FC77
	v_fmac_f32_e32 v0, v6, v11                                 // 000000631CCC: 56001706
	s_setprio 1                                                // 000000631CD0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631CD4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631CD8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000631CDC: 56061907
	s_setprio 0                                                // 000000631CE0: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000631CE4: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000631CE8: BDFC0000
	s_barrier                                                  // 000000631CEC: BFBD0000
	ds_load_b32 v6, v36                                        // 000000631CF0: D8D80000 06000024
	ds_load_b32 v7, v36 offset:32                              // 000000631CF8: D8D80020 07000024
	ds_load_b32 v11, v37                                       // 000000631D00: D8D80000 0B000025
	ds_load_b32 v12, v37 offset:32                             // 000000631D08: D8D80020 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000631D10: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631D14: 56001B08
	s_setprio 1                                                // 000000631D18: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000631D1C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631D20: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631D24: 56061D09
	s_setprio 0                                                // 000000631D28: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000631D2C: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000631D30: BF008105
	s_cbranch_scc0 LoopBeginL_1                                // 000000631D34: BFA1FB7C

0000000000631d38 <LoopEndL_evenexit_4>:
	s_branch LoopEndL_2                                        // 000000631D38: BFA00004

0000000000631d3c <LoopEndL_oddexit_3>:
	v_xor_b32_e32 v36, 0x1000, v36                             // 000000631D3C: 3A4848FF 00001000
	v_xor_b32_e32 v37, 0x1000, v37                             // 000000631D44: 3A4A4AFF 00001000

0000000000631d4c <LoopEndL_2>:
	s_cmpk_eq_u32 s37, 0x0                                     // 000000631D4C: B4A50000
	s_cbranch_scc0 OptNLL_End_15                               // 000000631D50: BFA10204
	s_cmp_eq_u32 s36, 1.0                                      // 000000631D54: BF06F224
	s_cbranch_scc0 OptNLL_End_15                               // 000000631D58: BFA10202
	s_and_b32 s32, 15, s46                                     // 000000631D5C: 8B202E8F
	s_add_u32 s33, -1, s50                                     // 000000631D60: 802132C1
	s_cmp_ge_u32 s2, s33                                       // 000000631D64: BF092102
	s_cselect_b32 s32, s32, 0                                  // 000000631D68: 98208020
	s_cmpk_gt_u32 s32, 0x0                                     // 000000631D6C: B5A00000
	s_cbranch_scc1 OptNLL_End_15                               // 000000631D70: BFA201FC
	s_and_b32 s32, 15, s47                                     // 000000631D74: 8B202F8F
	s_add_u32 s33, -1, s51                                     // 000000631D78: 802133C1
	s_cmp_ge_u32 s3, s33                                       // 000000631D7C: BF092103
	s_cselect_b32 s32, s32, 0                                  // 000000631D80: 98208020
	s_cmpk_gt_u32 s32, 0x0                                     // 000000631D84: B5A00000
	s_cbranch_scc1 OptNLL_End_15                               // 000000631D88: BFA201F6
	s_and_b32 s33, 31, s49                                     // 000000631D8C: 8B21319F
	s_cmp_eq_u32 s33, 0                                        // 000000631D90: BF068021
	s_cbranch_scc0 OptNLL_End_15                               // 000000631D94: BFA101F3
	ds_load_b32 v8, v36 offset:64                              // 000000631D98: D8D80040 08000024
	ds_load_b32 v9, v36 offset:96                              // 000000631DA0: D8D80060 09000024
	ds_load_b32 v13, v37 offset:64                             // 000000631DA8: D8D80040 0D000025
	ds_load_b32 v14, v37 offset:96                             // 000000631DB0: D8D80060 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000631DB8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000631DBC: 56001706
	s_setprio 1                                                // 000000631DC0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631DC4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631DC8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000631DCC: 56061907
	s_setprio 0                                                // 000000631DD0: BFB50000
	ds_load_b32 v6, v36 offset:128                             // 000000631DD4: D8D80080 06000024
	ds_load_b32 v7, v36 offset:160                             // 000000631DDC: D8D800A0 07000024
	ds_load_b32 v11, v37 offset:128                            // 000000631DE4: D8D80080 0B000025
	ds_load_b32 v12, v37 offset:160                            // 000000631DEC: D8D800A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000631DF4: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631DF8: 56001B08
	s_setprio 1                                                // 000000631DFC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000631E00: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631E04: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631E08: 56061D09
	s_setprio 0                                                // 000000631E0C: BFB50000
	ds_load_b32 v8, v36 offset:192                             // 000000631E10: D8D800C0 08000024
	ds_load_b32 v9, v36 offset:224                             // 000000631E18: D8D800E0 09000024
	ds_load_b32 v13, v37 offset:192                            // 000000631E20: D8D800C0 0D000025
	ds_load_b32 v14, v37 offset:224                            // 000000631E28: D8D800E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000631E30: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000631E34: 56001706
	s_setprio 1                                                // 000000631E38: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631E3C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631E40: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000631E44: 56061907
	s_setprio 0                                                // 000000631E48: BFB50000
	ds_load_b32 v6, v36 offset:256                             // 000000631E4C: D8D80100 06000024
	ds_load_b32 v7, v36 offset:288                             // 000000631E54: D8D80120 07000024
	ds_load_b32 v11, v37 offset:256                            // 000000631E5C: D8D80100 0B000025
	ds_load_b32 v12, v37 offset:288                            // 000000631E64: D8D80120 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000631E6C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631E70: 56001B08
	s_setprio 1                                                // 000000631E74: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000631E78: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631E7C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631E80: 56061D09
	s_setprio 0                                                // 000000631E84: BFB50000
	ds_load_b32 v8, v36 offset:320                             // 000000631E88: D8D80140 08000024
	ds_load_b32 v9, v36 offset:352                             // 000000631E90: D8D80160 09000024
	ds_load_b32 v13, v37 offset:320                            // 000000631E98: D8D80140 0D000025
	ds_load_b32 v14, v37 offset:352                            // 000000631EA0: D8D80160 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000631EA8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000631EAC: 56001706
	s_setprio 1                                                // 000000631EB0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631EB4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631EB8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000631EBC: 56061907
	s_setprio 0                                                // 000000631EC0: BFB50000
	ds_load_b32 v6, v36 offset:384                             // 000000631EC4: D8D80180 06000024
	ds_load_b32 v7, v36 offset:416                             // 000000631ECC: D8D801A0 07000024
	ds_load_b32 v11, v37 offset:384                            // 000000631ED4: D8D80180 0B000025
	ds_load_b32 v12, v37 offset:416                            // 000000631EDC: D8D801A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000631EE4: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631EE8: 56001B08
	s_setprio 1                                                // 000000631EEC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000631EF0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631EF4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631EF8: 56061D09
	s_setprio 0                                                // 000000631EFC: BFB50000
	ds_load_b32 v8, v36 offset:448                             // 000000631F00: D8D801C0 08000024
	ds_load_b32 v9, v36 offset:480                             // 000000631F08: D8D801E0 09000024
	ds_load_b32 v13, v37 offset:448                            // 000000631F10: D8D801C0 0D000025
	ds_load_b32 v14, v37 offset:480                            // 000000631F18: D8D801E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000631F20: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000631F24: 56001706
	s_setprio 1                                                // 000000631F28: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631F2C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631F30: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000631F34: 56061907
	s_setprio 0                                                // 000000631F38: BFB50000
	ds_load_b32 v6, v36 offset:512                             // 000000631F3C: D8D80200 06000024
	ds_load_b32 v7, v36 offset:544                             // 000000631F44: D8D80220 07000024
	ds_load_b32 v11, v37 offset:512                            // 000000631F4C: D8D80200 0B000025
	ds_load_b32 v12, v37 offset:544                            // 000000631F54: D8D80220 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000631F5C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631F60: 56001B08
	s_setprio 1                                                // 000000631F64: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000631F68: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631F6C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631F70: 56061D09
	s_setprio 0                                                // 000000631F74: BFB50000
	ds_load_b32 v8, v36 offset:576                             // 000000631F78: D8D80240 08000024
	ds_load_b32 v9, v36 offset:608                             // 000000631F80: D8D80260 09000024
	ds_load_b32 v13, v37 offset:576                            // 000000631F88: D8D80240 0D000025
	ds_load_b32 v14, v37 offset:608                            // 000000631F90: D8D80260 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000631F98: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000631F9C: 56001706
	s_setprio 1                                                // 000000631FA0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000631FA4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000631FA8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000631FAC: 56061907
	s_setprio 0                                                // 000000631FB0: BFB50000
	ds_load_b32 v6, v36 offset:640                             // 000000631FB4: D8D80280 06000024
	ds_load_b32 v7, v36 offset:672                             // 000000631FBC: D8D802A0 07000024
	ds_load_b32 v11, v37 offset:640                            // 000000631FC4: D8D80280 0B000025
	ds_load_b32 v12, v37 offset:672                            // 000000631FCC: D8D802A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000631FD4: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000631FD8: 56001B08
	s_setprio 1                                                // 000000631FDC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000631FE0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000631FE4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000631FE8: 56061D09
	s_setprio 0                                                // 000000631FEC: BFB50000
	ds_load_b32 v8, v36 offset:704                             // 000000631FF0: D8D802C0 08000024
	ds_load_b32 v9, v36 offset:736                             // 000000631FF8: D8D802E0 09000024
	ds_load_b32 v13, v37 offset:704                            // 000000632000: D8D802C0 0D000025
	ds_load_b32 v14, v37 offset:736                            // 000000632008: D8D802E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000632010: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000632014: 56001706
	s_setprio 1                                                // 000000632018: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 00000063201C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632020: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000632024: 56061907
	s_setprio 0                                                // 000000632028: BFB50000
	ds_load_b32 v6, v36 offset:768                             // 00000063202C: D8D80300 06000024
	ds_load_b32 v7, v36 offset:800                             // 000000632034: D8D80320 07000024
	ds_load_b32 v11, v37 offset:768                            // 00000063203C: D8D80300 0B000025
	ds_load_b32 v12, v37 offset:800                            // 000000632044: D8D80320 0C000025
	s_waitcnt lgkmcnt(4)                                       // 00000063204C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000632050: 56001B08
	s_setprio 1                                                // 000000632054: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000632058: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 00000063205C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000632060: 56061D09
	s_setprio 0                                                // 000000632064: BFB50000
	ds_load_b32 v8, v36 offset:832                             // 000000632068: D8D80340 08000024
	ds_load_b32 v9, v36 offset:864                             // 000000632070: D8D80360 09000024
	ds_load_b32 v13, v37 offset:832                            // 000000632078: D8D80340 0D000025
	ds_load_b32 v14, v37 offset:864                            // 000000632080: D8D80360 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000632088: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 00000063208C: 56001706
	s_setprio 1                                                // 000000632090: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000632094: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632098: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063209C: 56061907
	s_setprio 0                                                // 0000006320A0: BFB50000
	ds_load_b32 v6, v36 offset:896                             // 0000006320A4: D8D80380 06000024
	ds_load_b32 v7, v36 offset:928                             // 0000006320AC: D8D803A0 07000024
	ds_load_b32 v11, v37 offset:896                            // 0000006320B4: D8D80380 0B000025
	ds_load_b32 v12, v37 offset:928                            // 0000006320BC: D8D803A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 0000006320C4: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006320C8: 56001B08
	s_setprio 1                                                // 0000006320CC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006320D0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006320D4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006320D8: 56061D09
	s_setprio 0                                                // 0000006320DC: BFB50000
	ds_load_b32 v8, v36 offset:960                             // 0000006320E0: D8D803C0 08000024
	ds_load_b32 v9, v36 offset:992                             // 0000006320E8: D8D803E0 09000024
	ds_load_b32 v13, v37 offset:960                            // 0000006320F0: D8D803C0 0D000025
	ds_load_b32 v14, v37 offset:992                            // 0000006320F8: D8D803E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000632100: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000632104: 56001706
	s_setprio 1                                                // 000000632108: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 00000063210C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632110: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000632114: 56061907
	s_setprio 0                                                // 000000632118: BFB50000
	ds_load_b32 v6, v36 offset:1024                            // 00000063211C: D8D80400 06000024
	ds_load_b32 v7, v36 offset:1056                            // 000000632124: D8D80420 07000024
	ds_load_b32 v11, v37 offset:1024                           // 00000063212C: D8D80400 0B000025
	ds_load_b32 v12, v37 offset:1056                           // 000000632134: D8D80420 0C000025
	s_waitcnt lgkmcnt(4)                                       // 00000063213C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000632140: 56001B08
	s_setprio 1                                                // 000000632144: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000632148: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 00000063214C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000632150: 56061D09
	s_setprio 0                                                // 000000632154: BFB50000
	ds_load_b32 v8, v36 offset:1088                            // 000000632158: D8D80440 08000024
	ds_load_b32 v9, v36 offset:1120                            // 000000632160: D8D80460 09000024
	ds_load_b32 v13, v37 offset:1088                           // 000000632168: D8D80440 0D000025
	ds_load_b32 v14, v37 offset:1120                           // 000000632170: D8D80460 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000632178: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 00000063217C: 56001706
	s_setprio 1                                                // 000000632180: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000632184: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632188: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063218C: 56061907
	s_setprio 0                                                // 000000632190: BFB50000
	ds_load_b32 v6, v36 offset:1152                            // 000000632194: D8D80480 06000024
	ds_load_b32 v7, v36 offset:1184                            // 00000063219C: D8D804A0 07000024
	ds_load_b32 v11, v37 offset:1152                           // 0000006321A4: D8D80480 0B000025
	ds_load_b32 v12, v37 offset:1184                           // 0000006321AC: D8D804A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 0000006321B4: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006321B8: 56001B08
	s_setprio 1                                                // 0000006321BC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006321C0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006321C4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006321C8: 56061D09
	s_setprio 0                                                // 0000006321CC: BFB50000
	ds_load_b32 v8, v36 offset:1216                            // 0000006321D0: D8D804C0 08000024
	ds_load_b32 v9, v36 offset:1248                            // 0000006321D8: D8D804E0 09000024
	ds_load_b32 v13, v37 offset:1216                           // 0000006321E0: D8D804C0 0D000025
	ds_load_b32 v14, v37 offset:1248                           // 0000006321E8: D8D804E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 0000006321F0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006321F4: 56001706
	s_setprio 1                                                // 0000006321F8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006321FC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632200: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000632204: 56061907
	s_setprio 0                                                // 000000632208: BFB50000
	ds_load_b32 v6, v36 offset:1280                            // 00000063220C: D8D80500 06000024
	ds_load_b32 v7, v36 offset:1312                            // 000000632214: D8D80520 07000024
	ds_load_b32 v11, v37 offset:1280                           // 00000063221C: D8D80500 0B000025
	ds_load_b32 v12, v37 offset:1312                           // 000000632224: D8D80520 0C000025
	s_waitcnt lgkmcnt(4)                                       // 00000063222C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000632230: 56001B08
	s_setprio 1                                                // 000000632234: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000632238: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 00000063223C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000632240: 56061D09
	s_setprio 0                                                // 000000632244: BFB50000
	ds_load_b32 v8, v36 offset:1344                            // 000000632248: D8D80540 08000024
	ds_load_b32 v9, v36 offset:1376                            // 000000632250: D8D80560 09000024
	ds_load_b32 v13, v37 offset:1344                           // 000000632258: D8D80540 0D000025
	ds_load_b32 v14, v37 offset:1376                           // 000000632260: D8D80560 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000632268: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 00000063226C: 56001706
	s_setprio 1                                                // 000000632270: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000632274: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632278: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063227C: 56061907
	s_setprio 0                                                // 000000632280: BFB50000
	ds_load_b32 v6, v36 offset:1408                            // 000000632284: D8D80580 06000024
	ds_load_b32 v7, v36 offset:1440                            // 00000063228C: D8D805A0 07000024
	ds_load_b32 v11, v37 offset:1408                           // 000000632294: D8D80580 0B000025
	ds_load_b32 v12, v37 offset:1440                           // 00000063229C: D8D805A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 0000006322A4: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006322A8: 56001B08
	s_setprio 1                                                // 0000006322AC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006322B0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006322B4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006322B8: 56061D09
	s_setprio 0                                                // 0000006322BC: BFB50000
	ds_load_b32 v8, v36 offset:1472                            // 0000006322C0: D8D805C0 08000024
	ds_load_b32 v9, v36 offset:1504                            // 0000006322C8: D8D805E0 09000024
	ds_load_b32 v13, v37 offset:1472                           // 0000006322D0: D8D805C0 0D000025
	ds_load_b32 v14, v37 offset:1504                           // 0000006322D8: D8D805E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 0000006322E0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006322E4: 56001706
	s_setprio 1                                                // 0000006322E8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006322EC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006322F0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 0000006322F4: 56061907
	s_setprio 0                                                // 0000006322F8: BFB50000
	ds_load_b32 v6, v36 offset:1536                            // 0000006322FC: D8D80600 06000024
	ds_load_b32 v7, v36 offset:1568                            // 000000632304: D8D80620 07000024
	ds_load_b32 v11, v37 offset:1536                           // 00000063230C: D8D80600 0B000025
	ds_load_b32 v12, v37 offset:1568                           // 000000632314: D8D80620 0C000025
	s_waitcnt lgkmcnt(4)                                       // 00000063231C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000632320: 56001B08
	s_setprio 1                                                // 000000632324: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000632328: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 00000063232C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000632330: 56061D09
	s_setprio 0                                                // 000000632334: BFB50000
	ds_load_b32 v8, v36 offset:1600                            // 000000632338: D8D80640 08000024
	ds_load_b32 v9, v36 offset:1632                            // 000000632340: D8D80660 09000024
	ds_load_b32 v13, v37 offset:1600                           // 000000632348: D8D80640 0D000025
	ds_load_b32 v14, v37 offset:1632                           // 000000632350: D8D80660 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000632358: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 00000063235C: 56001706
	s_setprio 1                                                // 000000632360: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000632364: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632368: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063236C: 56061907
	s_setprio 0                                                // 000000632370: BFB50000
	ds_load_b32 v6, v36 offset:1664                            // 000000632374: D8D80680 06000024
	ds_load_b32 v7, v36 offset:1696                            // 00000063237C: D8D806A0 07000024
	ds_load_b32 v11, v37 offset:1664                           // 000000632384: D8D80680 0B000025
	ds_load_b32 v12, v37 offset:1696                           // 00000063238C: D8D806A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000632394: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000632398: 56001B08
	s_setprio 1                                                // 00000063239C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006323A0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006323A4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006323A8: 56061D09
	s_setprio 0                                                // 0000006323AC: BFB50000
	ds_load_b32 v8, v36 offset:1728                            // 0000006323B0: D8D806C0 08000024
	ds_load_b32 v9, v36 offset:1760                            // 0000006323B8: D8D806E0 09000024
	ds_load_b32 v13, v37 offset:1728                           // 0000006323C0: D8D806C0 0D000025
	ds_load_b32 v14, v37 offset:1760                           // 0000006323C8: D8D806E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 0000006323D0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006323D4: 56001706
	s_setprio 1                                                // 0000006323D8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006323DC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006323E0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 0000006323E4: 56061907
	s_setprio 0                                                // 0000006323E8: BFB50000
	ds_load_b32 v6, v36 offset:1792                            // 0000006323EC: D8D80700 06000024
	ds_load_b32 v7, v36 offset:1824                            // 0000006323F4: D8D80720 07000024
	ds_load_b32 v11, v37 offset:1792                           // 0000006323FC: D8D80700 0B000025
	ds_load_b32 v12, v37 offset:1824                           // 000000632404: D8D80720 0C000025
	s_waitcnt lgkmcnt(4)                                       // 00000063240C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000632410: 56001B08
	s_setprio 1                                                // 000000632414: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000632418: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 00000063241C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000632420: 56061D09
	s_setprio 0                                                // 000000632424: BFB50000
	ds_load_b32 v8, v36 offset:1856                            // 000000632428: D8D80740 08000024
	ds_load_b32 v9, v36 offset:1888                            // 000000632430: D8D80760 09000024
	ds_load_b32 v13, v37 offset:1856                           // 000000632438: D8D80740 0D000025
	ds_load_b32 v14, v37 offset:1888                           // 000000632440: D8D80760 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000632448: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 00000063244C: 56001706
	s_setprio 1                                                // 000000632450: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000632454: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632458: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063245C: 56061907
	s_setprio 0                                                // 000000632460: BFB50000
	ds_load_b32 v6, v36 offset:1920                            // 000000632464: D8D80780 06000024
	ds_load_b32 v7, v36 offset:1952                            // 00000063246C: D8D807A0 07000024
	ds_load_b32 v11, v37 offset:1920                           // 000000632474: D8D80780 0B000025
	ds_load_b32 v12, v37 offset:1952                           // 00000063247C: D8D807A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000632484: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000632488: 56001B08
	s_setprio 1                                                // 00000063248C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000632490: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000632494: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000632498: 56061D09
	s_setprio 0                                                // 00000063249C: BFB50000
	ds_load_b32 v8, v36 offset:1984                            // 0000006324A0: D8D807C0 08000024
	ds_load_b32 v9, v36 offset:2016                            // 0000006324A8: D8D807E0 09000024
	ds_load_b32 v13, v37 offset:1984                           // 0000006324B0: D8D807C0 0D000025
	ds_load_b32 v14, v37 offset:2016                           // 0000006324B8: D8D807E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 0000006324C0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006324C4: 56001706
	s_setprio 1                                                // 0000006324C8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006324CC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006324D0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 0000006324D4: 56061907
	s_setprio 0                                                // 0000006324D8: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 0000006324DC: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006324E0: 56001B08
	s_setprio 1                                                // 0000006324E4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006324E8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006324EC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006324F0: 56061D09
	s_setprio 0                                                // 0000006324F4: BFB50000

00000000006324f8 <Summation_End_OptNLL_16>:
	v_lshrrev_b32_e32 v7, 3, v38                               // 0000006324F8: 320E4C83
	v_and_b32_e32 v6, 7, v38                                   // 0000006324FC: 360C4C87
	v_mul_lo_u32 v8, v7, s40                                   // 000000632500: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000632508: D72C0009 00004D07
	s_mul_i32 s32, 16, s2                                      // 000000632510: 96200290
	v_add_co_u32 v6, vcc_lo, s32, v6                           // 000000632514: D7006A06 00020C20
	s_mul_i32 s34, 16, s3                                      // 00000063251C: 96220390
	v_add_co_u32 v7, vcc_lo, s34, v7                           // 000000632520: D7006A07 00020E22

0000000000632528 <GW_B0_E0_19>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000632528: D647000C 020A0D09
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000632530: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:32      // 000000632538: E0680020 8044010C
	s_mul_i32 s32, s38, 32                                     // 000000632540: 9620A026
	s_add_u32 s16, s16, s32                                    // 000000632544: 80102010
	s_addc_u32 s17, s17, 0                                     // 000000632548: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 00000063254C: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:32      // 000000632554: E0680020 8044030C
	s_branch label_GW_End_21                                   // 00000063255C: BFA00000

0000000000632560 <label_GW_End_21>:
	s_endpgm                                                   // 000000632560: BFB00000

0000000000632564 <OptNLL_End_15>:
	ds_load_b32 v8, v36 offset:64                              // 000000632564: D8D80040 08000024
	ds_load_b32 v9, v36 offset:96                              // 00000063256C: D8D80060 09000024
	ds_load_b32 v13, v37 offset:64                             // 000000632574: D8D80040 0D000025
	ds_load_b32 v14, v37 offset:96                             // 00000063257C: D8D80060 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000632584: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000632588: 56001706
	s_setprio 1                                                // 00000063258C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000632590: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632594: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000632598: 56061907
	s_setprio 0                                                // 00000063259C: BFB50000
	ds_load_b32 v6, v36 offset:128                             // 0000006325A0: D8D80080 06000024
	ds_load_b32 v7, v36 offset:160                             // 0000006325A8: D8D800A0 07000024
	ds_load_b32 v11, v37 offset:128                            // 0000006325B0: D8D80080 0B000025
	ds_load_b32 v12, v37 offset:160                            // 0000006325B8: D8D800A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 0000006325C0: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006325C4: 56001B08
	s_setprio 1                                                // 0000006325C8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006325CC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006325D0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006325D4: 56061D09
	s_setprio 0                                                // 0000006325D8: BFB50000
	ds_load_b32 v8, v36 offset:192                             // 0000006325DC: D8D800C0 08000024
	ds_load_b32 v9, v36 offset:224                             // 0000006325E4: D8D800E0 09000024
	ds_load_b32 v13, v37 offset:192                            // 0000006325EC: D8D800C0 0D000025
	ds_load_b32 v14, v37 offset:224                            // 0000006325F4: D8D800E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 0000006325FC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000632600: 56001706
	s_setprio 1                                                // 000000632604: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000632608: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 00000063260C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000632610: 56061907
	s_setprio 0                                                // 000000632614: BFB50000
	ds_load_b32 v6, v36 offset:256                             // 000000632618: D8D80100 06000024
	ds_load_b32 v7, v36 offset:288                             // 000000632620: D8D80120 07000024
	ds_load_b32 v11, v37 offset:256                            // 000000632628: D8D80100 0B000025
	ds_load_b32 v12, v37 offset:288                            // 000000632630: D8D80120 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000632638: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 00000063263C: 56001B08
	s_setprio 1                                                // 000000632640: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000632644: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000632648: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 00000063264C: 56061D09
	s_setprio 0                                                // 000000632650: BFB50000
	ds_load_b32 v8, v36 offset:320                             // 000000632654: D8D80140 08000024
	ds_load_b32 v9, v36 offset:352                             // 00000063265C: D8D80160 09000024
	ds_load_b32 v13, v37 offset:320                            // 000000632664: D8D80140 0D000025
	ds_load_b32 v14, v37 offset:352                            // 00000063266C: D8D80160 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000632674: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000632678: 56001706
	s_setprio 1                                                // 00000063267C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000632680: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632684: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000632688: 56061907
	s_setprio 0                                                // 00000063268C: BFB50000
	ds_load_b32 v6, v36 offset:384                             // 000000632690: D8D80180 06000024
	ds_load_b32 v7, v36 offset:416                             // 000000632698: D8D801A0 07000024
	ds_load_b32 v11, v37 offset:384                            // 0000006326A0: D8D80180 0B000025
	ds_load_b32 v12, v37 offset:416                            // 0000006326A8: D8D801A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 0000006326B0: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006326B4: 56001B08
	s_setprio 1                                                // 0000006326B8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006326BC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006326C0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006326C4: 56061D09
	s_setprio 0                                                // 0000006326C8: BFB50000
	ds_load_b32 v8, v36 offset:448                             // 0000006326CC: D8D801C0 08000024
	ds_load_b32 v9, v36 offset:480                             // 0000006326D4: D8D801E0 09000024
	ds_load_b32 v13, v37 offset:448                            // 0000006326DC: D8D801C0 0D000025
	ds_load_b32 v14, v37 offset:480                            // 0000006326E4: D8D801E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 0000006326EC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006326F0: 56001706
	s_setprio 1                                                // 0000006326F4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006326F8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006326FC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000632700: 56061907
	s_setprio 0                                                // 000000632704: BFB50000
	ds_load_b32 v6, v36 offset:512                             // 000000632708: D8D80200 06000024
	ds_load_b32 v7, v36 offset:544                             // 000000632710: D8D80220 07000024
	ds_load_b32 v11, v37 offset:512                            // 000000632718: D8D80200 0B000025
	ds_load_b32 v12, v37 offset:544                            // 000000632720: D8D80220 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000632728: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 00000063272C: 56001B08
	s_setprio 1                                                // 000000632730: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000632734: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000632738: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 00000063273C: 56061D09
	s_setprio 0                                                // 000000632740: BFB50000
	ds_load_b32 v8, v36 offset:576                             // 000000632744: D8D80240 08000024
	ds_load_b32 v9, v36 offset:608                             // 00000063274C: D8D80260 09000024
	ds_load_b32 v13, v37 offset:576                            // 000000632754: D8D80240 0D000025
	ds_load_b32 v14, v37 offset:608                            // 00000063275C: D8D80260 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000632764: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000632768: 56001706
	s_setprio 1                                                // 00000063276C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000632770: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632774: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000632778: 56061907
	s_setprio 0                                                // 00000063277C: BFB50000
	ds_load_b32 v6, v36 offset:640                             // 000000632780: D8D80280 06000024
	ds_load_b32 v7, v36 offset:672                             // 000000632788: D8D802A0 07000024
	ds_load_b32 v11, v37 offset:640                            // 000000632790: D8D80280 0B000025
	ds_load_b32 v12, v37 offset:672                            // 000000632798: D8D802A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 0000006327A0: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006327A4: 56001B08
	s_setprio 1                                                // 0000006327A8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006327AC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006327B0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006327B4: 56061D09
	s_setprio 0                                                // 0000006327B8: BFB50000
	ds_load_b32 v8, v36 offset:704                             // 0000006327BC: D8D802C0 08000024
	ds_load_b32 v9, v36 offset:736                             // 0000006327C4: D8D802E0 09000024
	ds_load_b32 v13, v37 offset:704                            // 0000006327CC: D8D802C0 0D000025
	ds_load_b32 v14, v37 offset:736                            // 0000006327D4: D8D802E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 0000006327DC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006327E0: 56001706
	s_setprio 1                                                // 0000006327E4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006327E8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006327EC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 0000006327F0: 56061907
	s_setprio 0                                                // 0000006327F4: BFB50000
	ds_load_b32 v6, v36 offset:768                             // 0000006327F8: D8D80300 06000024
	ds_load_b32 v7, v36 offset:800                             // 000000632800: D8D80320 07000024
	ds_load_b32 v11, v37 offset:768                            // 000000632808: D8D80300 0B000025
	ds_load_b32 v12, v37 offset:800                            // 000000632810: D8D80320 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000632818: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 00000063281C: 56001B08
	s_setprio 1                                                // 000000632820: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000632824: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000632828: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 00000063282C: 56061D09
	s_setprio 0                                                // 000000632830: BFB50000
	ds_load_b32 v8, v36 offset:832                             // 000000632834: D8D80340 08000024
	ds_load_b32 v9, v36 offset:864                             // 00000063283C: D8D80360 09000024
	ds_load_b32 v13, v37 offset:832                            // 000000632844: D8D80340 0D000025
	ds_load_b32 v14, v37 offset:864                            // 00000063284C: D8D80360 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000632854: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000632858: 56001706
	s_setprio 1                                                // 00000063285C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000632860: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632864: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000632868: 56061907
	s_setprio 0                                                // 00000063286C: BFB50000
	ds_load_b32 v6, v36 offset:896                             // 000000632870: D8D80380 06000024
	ds_load_b32 v7, v36 offset:928                             // 000000632878: D8D803A0 07000024
	ds_load_b32 v11, v37 offset:896                            // 000000632880: D8D80380 0B000025
	ds_load_b32 v12, v37 offset:928                            // 000000632888: D8D803A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000632890: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000632894: 56001B08
	s_setprio 1                                                // 000000632898: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 00000063289C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006328A0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006328A4: 56061D09
	s_setprio 0                                                // 0000006328A8: BFB50000
	ds_load_b32 v8, v36 offset:960                             // 0000006328AC: D8D803C0 08000024
	ds_load_b32 v9, v36 offset:992                             // 0000006328B4: D8D803E0 09000024
	ds_load_b32 v13, v37 offset:960                            // 0000006328BC: D8D803C0 0D000025
	ds_load_b32 v14, v37 offset:992                            // 0000006328C4: D8D803E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 0000006328CC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006328D0: 56001706
	s_setprio 1                                                // 0000006328D4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006328D8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006328DC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 0000006328E0: 56061907
	s_setprio 0                                                // 0000006328E4: BFB50000
	ds_load_b32 v6, v36 offset:1024                            // 0000006328E8: D8D80400 06000024
	ds_load_b32 v7, v36 offset:1056                            // 0000006328F0: D8D80420 07000024
	ds_load_b32 v11, v37 offset:1024                           // 0000006328F8: D8D80400 0B000025
	ds_load_b32 v12, v37 offset:1056                           // 000000632900: D8D80420 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000632908: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 00000063290C: 56001B08
	s_setprio 1                                                // 000000632910: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000632914: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000632918: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 00000063291C: 56061D09
	s_setprio 0                                                // 000000632920: BFB50000
	ds_load_b32 v8, v36 offset:1088                            // 000000632924: D8D80440 08000024
	ds_load_b32 v9, v36 offset:1120                            // 00000063292C: D8D80460 09000024
	ds_load_b32 v13, v37 offset:1088                           // 000000632934: D8D80440 0D000025
	ds_load_b32 v14, v37 offset:1120                           // 00000063293C: D8D80460 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000632944: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000632948: 56001706
	s_setprio 1                                                // 00000063294C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000632950: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632954: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000632958: 56061907
	s_setprio 0                                                // 00000063295C: BFB50000
	ds_load_b32 v6, v36 offset:1152                            // 000000632960: D8D80480 06000024
	ds_load_b32 v7, v36 offset:1184                            // 000000632968: D8D804A0 07000024
	ds_load_b32 v11, v37 offset:1152                           // 000000632970: D8D80480 0B000025
	ds_load_b32 v12, v37 offset:1184                           // 000000632978: D8D804A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000632980: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000632984: 56001B08
	s_setprio 1                                                // 000000632988: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 00000063298C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000632990: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000632994: 56061D09
	s_setprio 0                                                // 000000632998: BFB50000
	ds_load_b32 v8, v36 offset:1216                            // 00000063299C: D8D804C0 08000024
	ds_load_b32 v9, v36 offset:1248                            // 0000006329A4: D8D804E0 09000024
	ds_load_b32 v13, v37 offset:1216                           // 0000006329AC: D8D804C0 0D000025
	ds_load_b32 v14, v37 offset:1248                           // 0000006329B4: D8D804E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 0000006329BC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006329C0: 56001706
	s_setprio 1                                                // 0000006329C4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006329C8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006329CC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 0000006329D0: 56061907
	s_setprio 0                                                // 0000006329D4: BFB50000
	ds_load_b32 v6, v36 offset:1280                            // 0000006329D8: D8D80500 06000024
	ds_load_b32 v7, v36 offset:1312                            // 0000006329E0: D8D80520 07000024
	ds_load_b32 v11, v37 offset:1280                           // 0000006329E8: D8D80500 0B000025
	ds_load_b32 v12, v37 offset:1312                           // 0000006329F0: D8D80520 0C000025
	s_waitcnt lgkmcnt(4)                                       // 0000006329F8: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006329FC: 56001B08
	s_setprio 1                                                // 000000632A00: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000632A04: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000632A08: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000632A0C: 56061D09
	s_setprio 0                                                // 000000632A10: BFB50000
	ds_load_b32 v8, v36 offset:1344                            // 000000632A14: D8D80540 08000024
	ds_load_b32 v9, v36 offset:1376                            // 000000632A1C: D8D80560 09000024
	ds_load_b32 v13, v37 offset:1344                           // 000000632A24: D8D80540 0D000025
	ds_load_b32 v14, v37 offset:1376                           // 000000632A2C: D8D80560 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000632A34: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000632A38: 56001706
	s_setprio 1                                                // 000000632A3C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000632A40: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632A44: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000632A48: 56061907
	s_setprio 0                                                // 000000632A4C: BFB50000
	ds_load_b32 v6, v36 offset:1408                            // 000000632A50: D8D80580 06000024
	ds_load_b32 v7, v36 offset:1440                            // 000000632A58: D8D805A0 07000024
	ds_load_b32 v11, v37 offset:1408                           // 000000632A60: D8D80580 0B000025
	ds_load_b32 v12, v37 offset:1440                           // 000000632A68: D8D805A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000632A70: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000632A74: 56001B08
	s_setprio 1                                                // 000000632A78: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000632A7C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000632A80: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000632A84: 56061D09
	s_setprio 0                                                // 000000632A88: BFB50000
	ds_load_b32 v8, v36 offset:1472                            // 000000632A8C: D8D805C0 08000024
	ds_load_b32 v9, v36 offset:1504                            // 000000632A94: D8D805E0 09000024
	ds_load_b32 v13, v37 offset:1472                           // 000000632A9C: D8D805C0 0D000025
	ds_load_b32 v14, v37 offset:1504                           // 000000632AA4: D8D805E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000632AAC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000632AB0: 56001706
	s_setprio 1                                                // 000000632AB4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000632AB8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632ABC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000632AC0: 56061907
	s_setprio 0                                                // 000000632AC4: BFB50000
	ds_load_b32 v6, v36 offset:1536                            // 000000632AC8: D8D80600 06000024
	ds_load_b32 v7, v36 offset:1568                            // 000000632AD0: D8D80620 07000024
	ds_load_b32 v11, v37 offset:1536                           // 000000632AD8: D8D80600 0B000025
	ds_load_b32 v12, v37 offset:1568                           // 000000632AE0: D8D80620 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000632AE8: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000632AEC: 56001B08
	s_setprio 1                                                // 000000632AF0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000632AF4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000632AF8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000632AFC: 56061D09
	s_setprio 0                                                // 000000632B00: BFB50000
	ds_load_b32 v8, v36 offset:1600                            // 000000632B04: D8D80640 08000024
	ds_load_b32 v9, v36 offset:1632                            // 000000632B0C: D8D80660 09000024
	ds_load_b32 v13, v37 offset:1600                           // 000000632B14: D8D80640 0D000025
	ds_load_b32 v14, v37 offset:1632                           // 000000632B1C: D8D80660 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000632B24: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000632B28: 56001706
	s_setprio 1                                                // 000000632B2C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000632B30: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632B34: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000632B38: 56061907
	s_setprio 0                                                // 000000632B3C: BFB50000
	ds_load_b32 v6, v36 offset:1664                            // 000000632B40: D8D80680 06000024
	ds_load_b32 v7, v36 offset:1696                            // 000000632B48: D8D806A0 07000024
	ds_load_b32 v11, v37 offset:1664                           // 000000632B50: D8D80680 0B000025
	ds_load_b32 v12, v37 offset:1696                           // 000000632B58: D8D806A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000632B60: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000632B64: 56001B08
	s_setprio 1                                                // 000000632B68: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000632B6C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000632B70: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000632B74: 56061D09
	s_setprio 0                                                // 000000632B78: BFB50000
	ds_load_b32 v8, v36 offset:1728                            // 000000632B7C: D8D806C0 08000024
	ds_load_b32 v9, v36 offset:1760                            // 000000632B84: D8D806E0 09000024
	ds_load_b32 v13, v37 offset:1728                           // 000000632B8C: D8D806C0 0D000025
	ds_load_b32 v14, v37 offset:1760                           // 000000632B94: D8D806E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000632B9C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000632BA0: 56001706
	s_setprio 1                                                // 000000632BA4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000632BA8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632BAC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000632BB0: 56061907
	s_setprio 0                                                // 000000632BB4: BFB50000
	ds_load_b32 v6, v36 offset:1792                            // 000000632BB8: D8D80700 06000024
	ds_load_b32 v7, v36 offset:1824                            // 000000632BC0: D8D80720 07000024
	ds_load_b32 v11, v37 offset:1792                           // 000000632BC8: D8D80700 0B000025
	ds_load_b32 v12, v37 offset:1824                           // 000000632BD0: D8D80720 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000632BD8: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000632BDC: 56001B08
	s_setprio 1                                                // 000000632BE0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000632BE4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000632BE8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000632BEC: 56061D09
	s_setprio 0                                                // 000000632BF0: BFB50000
	ds_load_b32 v8, v36 offset:1856                            // 000000632BF4: D8D80740 08000024
	ds_load_b32 v9, v36 offset:1888                            // 000000632BFC: D8D80760 09000024
	ds_load_b32 v13, v37 offset:1856                           // 000000632C04: D8D80740 0D000025
	ds_load_b32 v14, v37 offset:1888                           // 000000632C0C: D8D80760 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000632C14: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000632C18: 56001706
	s_setprio 1                                                // 000000632C1C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000632C20: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632C24: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000632C28: 56061907
	s_setprio 0                                                // 000000632C2C: BFB50000
	ds_load_b32 v6, v36 offset:1920                            // 000000632C30: D8D80780 06000024
	ds_load_b32 v7, v36 offset:1952                            // 000000632C38: D8D807A0 07000024
	ds_load_b32 v11, v37 offset:1920                           // 000000632C40: D8D80780 0B000025
	ds_load_b32 v12, v37 offset:1952                           // 000000632C48: D8D807A0 0C000025
	s_waitcnt lgkmcnt(4)                                       // 000000632C50: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000632C54: 56001B08
	s_setprio 1                                                // 000000632C58: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000632C5C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000632C60: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000632C64: 56061D09
	s_setprio 0                                                // 000000632C68: BFB50000
	ds_load_b32 v8, v36 offset:1984                            // 000000632C6C: D8D807C0 08000024
	ds_load_b32 v9, v36 offset:2016                            // 000000632C74: D8D807E0 09000024
	ds_load_b32 v13, v37 offset:1984                           // 000000632C7C: D8D807C0 0D000025
	ds_load_b32 v14, v37 offset:2016                           // 000000632C84: D8D807E0 0E000025
	s_waitcnt lgkmcnt(4)                                       // 000000632C8C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000632C90: 56001706
	s_setprio 1                                                // 000000632C94: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000632C98: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632C9C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000632CA0: 56061907
	s_setprio 0                                                // 000000632CA4: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000632CA8: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000632CAC: 56001B08
	s_setprio 1                                                // 000000632CB0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000632CB4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000632CB8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000632CBC: 56061D09
	s_setprio 0                                                // 000000632CC0: BFB50000

0000000000632cc4 <PrefetchGlobalLastIterEnd_5>:
	v_and_b32_e32 v15, 0xf00fff, v15                           // 000000632CC4: 361E1EFF 00F00FFF
	v_and_b32_e32 v16, 0xf00fff, v16                           // 000000632CCC: 362020FF 00F00FFF
	s_and_b32 s5, 31, s49                                      // 000000632CD4: 8B05319F
	s_cmp_eq_u32 s5, 0                                         // 000000632CD8: BF068005
	s_cbranch_scc1 SkipTailLoopL_8                             // 000000632CDC: BFA20064
	s_mov_b32 s6, 0                                            // 000000632CE0: BE860080
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000632CE4: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s54 offen               // 000000632CEC: E0500000 36421511
	buffer_load_b32 v22, v17, s[8:11], s55 offen               // 000000632CF4: E0500000 37421611
	buffer_load_b32 v23, v17, s[8:11], s56 offen               // 000000632CFC: E0500000 38421711
	buffer_load_b32 v24, v17, s[8:11], s57 offen               // 000000632D04: E0500000 39421811
	buffer_load_b32 v25, v17, s[8:11], s58 offen               // 000000632D0C: E0500000 3A421911
	buffer_load_b32 v26, v17, s[8:11], s59 offen               // 000000632D14: E0500000 3B421A11
	buffer_load_b32 v27, v17, s[8:11], s60 offen               // 000000632D1C: E0500000 3C421B11
	buffer_load_b32 v28, v18, s[12:15], 0 offen                // 000000632D24: E0500000 80431C12
	buffer_load_b32 v29, v18, s[12:15], s61 offen              // 000000632D2C: E0500000 3D431D12
	buffer_load_b32 v30, v18, s[12:15], s62 offen              // 000000632D34: E0500000 3E431E12
	buffer_load_b32 v31, v18, s[12:15], s63 offen              // 000000632D3C: E0500000 3F431F12
	buffer_load_b32 v32, v18, s[12:15], s64 offen              // 000000632D44: E0500000 40432012
	buffer_load_b32 v33, v18, s[12:15], s65 offen              // 000000632D4C: E0500000 41432112
	buffer_load_b32 v34, v18, s[12:15], s66 offen              // 000000632D54: E0500000 42432212
	buffer_load_b32 v35, v18, s[12:15], s67 offen              // 000000632D5C: E0500000 43432312
	s_waitcnt vmcnt(0)                                         // 000000632D64: BF8903F7
	s_waitcnt_lgkmcnt null, 0x0                                // 000000632D68: BDFC0000
	s_barrier                                                  // 000000632D6C: BFBD0000
	ds_store_b32 v15, v20                                      // 000000632D70: D8340000 0000140F
	ds_store_b32 v15, v21 offset:8                             // 000000632D78: D8340008 0000150F
	ds_store_b32 v15, v22 offset:16                            // 000000632D80: D8340010 0000160F
	ds_store_b32 v15, v23 offset:24                            // 000000632D88: D8340018 0000170F
	ds_store_b32 v15, v24 offset:32                            // 000000632D90: D8340020 0000180F
	ds_store_b32 v15, v25 offset:40                            // 000000632D98: D8340028 0000190F
	ds_store_b32 v15, v26 offset:48                            // 000000632DA0: D8340030 00001A0F
	ds_store_b32 v15, v27 offset:56                            // 000000632DA8: D8340038 00001B0F
	ds_store_b32 v16, v28                                      // 000000632DB0: D8340000 00001C10
	ds_store_b32 v16, v29 offset:256                           // 000000632DB8: D8340100 00001D10
	ds_store_b32 v16, v30 offset:512                           // 000000632DC0: D8340200 00001E10
	ds_store_b32 v16, v31 offset:768                           // 000000632DC8: D8340300 00001F10
	ds_store_b32 v16, v32 offset:1024                          // 000000632DD0: D8340400 00002010
	ds_store_b32 v16, v33 offset:1280                          // 000000632DD8: D8340500 00002110
	ds_store_b32 v16, v34 offset:1536                          // 000000632DE0: D8340600 00002210
	ds_store_b32 v16, v35 offset:1792                          // 000000632DE8: D8340700 00002310
	s_waitcnt lgkmcnt(0)                                       // 000000632DF0: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000632DF4: BDFC0000
	s_barrier                                                  // 000000632DF8: BFBD0000
	v_and_b32_e32 v36, 0xfff, v36                              // 000000632DFC: 364848FF 00000FFF
	v_and_b32_e32 v37, 0xfff, v37                              // 000000632E04: 364A4AFF 00000FFF

0000000000632e0c <TailLoopBeginL_6>:
	ds_load_b32 v6, v36                                        // 000000632E0C: D8D80000 06000024
	ds_load_b32 v7, v36 offset:32                              // 000000632E14: D8D80020 07000024
	ds_load_b32 v11, v37                                       // 000000632E1C: D8D80000 0B000025
	ds_load_b32 v12, v37 offset:32                             // 000000632E24: D8D80020 0C000025
	s_mov_b32 s31, 64                                          // 000000632E2C: BE9F00C0
	v_add_co_u32 v36, vcc_lo, s31, v36                         // 000000632E30: D7006A24 0002481F
	s_mov_b32 s31, 64                                          // 000000632E38: BE9F00C0
	v_add_co_u32 v37, vcc_lo, s31, v37                         // 000000632E3C: D7006A25 00024A1F
	s_waitcnt lgkmcnt(0)                                       // 000000632E44: BF89FC07
	v_fmac_f32_e32 v0, v6, v11                                 // 000000632E48: 56001706
	s_setprio 1                                                // 000000632E4C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000632E50: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000632E54: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000632E58: 56061907
	s_setprio 0                                                // 000000632E5C: BFB50000
	s_sub_i32 s5, s5, 1                                        // 000000632E60: 81858105
	s_add_u32 s6, s6, 1                                        // 000000632E64: 80068106
	s_cmp_le_i32 s5, 0                                         // 000000632E68: BF058005
	s_cbranch_scc0 TailLoopBeginL_6                            // 000000632E6C: BFA1FFE7

0000000000632e70 <TailLoopEndL_7>:
	v_lshrrev_b32_e32 v7, 3, v38                               // 000000632E70: 320E4C83
	v_and_b32_e32 v6, 7, v38                                   // 000000632E74: 360C4C87
	v_mul_lo_u32 v8, v7, s40                                   // 000000632E78: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000632E80: D72C0009 00004D07
	s_mul_i32 s32, 16, s2                                      // 000000632E88: 96200290
	v_add_co_u32 v6, vcc_lo, s32, v6                           // 000000632E8C: D7006A06 00020C20
	s_mul_i32 s34, 16, s3                                      // 000000632E94: 96220390
	v_add_co_u32 v7, vcc_lo, s34, v7                           // 000000632E98: D7006A07 00020E22
	s_cmpk_eq_u32 s37, 0x0                                     // 000000632EA0: B4A50000
	s_cbranch_scc0 GW_Beta_43                                  // 000000632EA4: BFA1005B
	s_and_b32 s32, 15, s46                                     // 000000632EA8: 8B202E8F
	s_add_u32 s33, -1, s50                                     // 000000632EAC: 802132C1
	s_cmp_ge_u32 s2, s33                                       // 000000632EB0: BF092102
	s_cselect_b32 s32, s32, 0                                  // 000000632EB4: 98208020
	s_cmpk_gt_u32 s32, 0x0                                     // 000000632EB8: B5A00000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000632EBC: BFA20018
	s_and_b32 s32, 15, s47                                     // 000000632EC0: 8B202F8F
	s_add_u32 s33, -1, s51                                     // 000000632EC4: 802133C1
	s_cmp_ge_u32 s3, s33                                       // 000000632EC8: BF092103
	s_cselect_b32 s32, s32, 0                                  // 000000632ECC: 98208020
	s_cmpk_gt_u32 s32, 0x0                                     // 000000632ED0: B5A00000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000632ED4: BFA20012

0000000000632ed8 <GW_B0_E0_31>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000632ED8: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000632EE0: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000632EE4: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000632EE8: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000632EEC: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000632EF0: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:32      // 000000632EF8: E0680020 8044010C
	s_mul_i32 s32, s38, 32                                     // 000000632F00: 9620A026
	s_add_u32 s16, s16, s32                                    // 000000632F04: 80102010
	s_addc_u32 s17, s17, 0                                     // 000000632F08: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000632F0C: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:32      // 000000632F14: E0680020 8044030C
	s_branch label_0047                                        // 000000632F1C: BFA000D3

0000000000632f20 <GW_B0_E1_34>:
	v_cmp_lt_u32_e64 s32, v6, s46                              // 000000632F20: D4490020 00005D06
	v_cmp_lt_u32_e64 s34, v7, s47                              // 000000632F28: D4490022 00005F07
	s_and_b32 s34, s32, s34                                    // 000000632F30: 8B222220
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000632F34: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s34                        // 000000632F3C: D501000C 008A18C1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 000000632F44: D7006A0A 00011106
	v_cmp_lt_u32_e64 s32, v10, s46                             // 000000632F4C: D4490020 00005D0A
	v_cmp_lt_u32_e64 s34, v7, s47                              // 000000632F54: D4490022 00005F07
	s_and_b32 s34, s32, s34                                    // 000000632F5C: 8B222220
	v_add_lshl_u32 v13, v9, v10, 2                             // 000000632F60: D647000D 020A1509
	v_cndmask_b32_e64 v13, -1, v13, s34                        // 000000632F68: D501000D 008A1AC1
	v_add_co_u32 v7, vcc_lo, v7, 8                             // 000000632F70: D7006A07 00011107
	s_mul_i32 s32, s40, 8                                      // 000000632F78: 96208828
	v_add_nc_u32_e64 v8, v8, s32                               // 000000632F7C: D5250008 00004108
	s_mul_i32 s32, s38, 8                                      // 000000632F84: 96208826
	v_add_nc_u32_e64 v9, v9, s32                               // 000000632F88: D5250009 00004109
	v_cmp_lt_u32_e64 s32, v6, s46                              // 000000632F90: D4490020 00005D06
	v_cmp_lt_u32_e64 s34, v7, s47                              // 000000632F98: D4490022 00005F07
	s_and_b32 s34, s32, s34                                    // 000000632FA0: 8B222220
	v_add_lshl_u32 v14, v9, v6, 2                              // 000000632FA4: D647000E 020A0D09
	v_cndmask_b32_e64 v14, -1, v14, s34                        // 000000632FAC: D501000E 008A1CC1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 000000632FB4: D7006A0A 00011106
	v_cmp_lt_u32_e64 s32, v10, s46                             // 000000632FBC: D4490020 00005D0A
	v_cmp_lt_u32_e64 s34, v7, s47                              // 000000632FC4: D4490022 00005F07
	s_and_b32 s34, s32, s34                                    // 000000632FCC: 8B222220
	v_add_lshl_u32 v15, v9, v10, 2                             // 000000632FD0: D647000F 020A1509
	v_cndmask_b32_e64 v15, -1, v15, s34                        // 000000632FD8: D501000F 008A1EC1
	v_mul_f32_e32 v0, s36, v0                                  // 000000632FE0: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000632FE4: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000632FE8: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000632FEC: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000632FF0: E0680000 8044000C
	buffer_store_b32 v1, v13, s[16:19], 0 offen                // 000000632FF8: E0680000 8044010D
	buffer_store_b32 v2, v14, s[16:19], 0 offen                // 000000633000: E0680000 8044020E
	buffer_store_b32 v3, v15, s[16:19], 0 offen                // 000000633008: E0680000 8044030F
	s_branch label_0047                                        // 000000633010: BFA00096

0000000000633014 <GW_Beta_43>:
	s_and_b32 s32, 15, s46                                     // 000000633014: 8B202E8F
	s_add_u32 s33, -1, s50                                     // 000000633018: 802132C1
	s_cmp_ge_u32 s2, s33                                       // 00000063301C: BF092102
	s_cselect_b32 s32, s32, 0                                  // 000000633020: 98208020
	s_cmpk_gt_u32 s32, 0x0                                     // 000000633024: B5A00000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000633028: BFA20031
	s_and_b32 s32, 15, s47                                     // 00000063302C: 8B202F8F
	s_add_u32 s33, -1, s51                                     // 000000633030: 802133C1
	s_cmp_ge_u32 s3, s33                                       // 000000633034: BF092103
	s_cselect_b32 s32, s32, 0                                  // 000000633038: 98208020
	s_cmpk_gt_u32 s32, 0x0                                     // 00000063303C: B5A00000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000633040: BFA2002B

0000000000633044 <GW_B1_E0_38>:
	v_add_lshl_u32 v13, v8, v6, 2                              // 000000633044: D647000D 020A0D08
	buffer_load_b32 v14, v13, s[20:23], 0 offen                // 00000063304C: E0500000 80450E0D
	buffer_load_b32 v15, v13, s[20:23], 0 offen offset:32      // 000000633054: E0500020 80450F0D
	s_mul_i32 s32, s40, 32                                     // 00000063305C: 9620A028
	s_add_u32 s20, s20, s32                                    // 000000633060: 80142014
	s_addc_u32 s21, s21, 0                                     // 000000633064: 82158015
	buffer_load_b32 v16, v13, s[20:23], 0 offen                // 000000633068: E0500000 8045100D
	buffer_load_b32 v17, v13, s[20:23], 0 offen offset:32      // 000000633070: E0500020 8045110D
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000633078: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000633080: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000633084: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000633088: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 00000063308C: 10060624
	s_waitcnt vmcnt(3)                                         // 000000633090: BF890FF7
	v_fmac_f32_e64 v0, v14, s37                                // 000000633094: D52B0000 00004B0E
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 00000063309C: E0680000 8044000C
	s_waitcnt vmcnt(2)                                         // 0000006330A4: BF890BF7
	v_fmac_f32_e64 v1, v15, s37                                // 0000006330A8: D52B0001 00004B0F
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:32      // 0000006330B0: E0680020 8044010C
	s_waitcnt vmcnt(1)                                         // 0000006330B8: BF8907F7
	v_fmac_f32_e64 v2, v16, s37                                // 0000006330BC: D52B0002 00004B10
	s_mul_i32 s32, s38, 32                                     // 0000006330C4: 9620A026
	s_add_u32 s16, s16, s32                                    // 0000006330C8: 80102010
	s_addc_u32 s17, s17, 0                                     // 0000006330CC: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 0000006330D0: E0680000 8044020C
	s_waitcnt vmcnt(0)                                         // 0000006330D8: BF8903F7
	v_fmac_f32_e64 v3, v17, s37                                // 0000006330DC: D52B0003 00004B11
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:32      // 0000006330E4: E0680020 8044030C
	s_branch label_0047                                        // 0000006330EC: BFA0005F

00000000006330f0 <GW_B1_E1_41>:
	v_cmp_lt_u32_e64 s32, v6, s46                              // 0000006330F0: D4490020 00005D06
	v_cmp_lt_u32_e64 s34, v7, s47                              // 0000006330F8: D4490022 00005F07
	s_and_b32 s34, s32, s34                                    // 000000633100: 8B222220
	v_add_lshl_u32 v12, v8, v6, 2                              // 000000633104: D647000C 020A0D08
	v_cndmask_b32_e64 v12, -1, v12, s34                        // 00000063310C: D501000C 008A18C1
	buffer_load_b32 v13, v12, s[20:23], 0 offen                // 000000633114: E0500000 80450D0C
	v_add_lshl_u32 v12, v9, v6, 2                              // 00000063311C: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s34                        // 000000633124: D501000C 008A18C1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 00000063312C: D7006A0A 00011106
	v_cmp_lt_u32_e64 s32, v10, s46                             // 000000633134: D4490020 00005D0A
	v_cmp_lt_u32_e64 s34, v7, s47                              // 00000063313C: D4490022 00005F07
	s_and_b32 s34, s32, s34                                    // 000000633144: 8B222220
	v_add_lshl_u32 v14, v8, v10, 2                             // 000000633148: D647000E 020A1508
	v_cndmask_b32_e64 v14, -1, v14, s34                        // 000000633150: D501000E 008A1CC1
	buffer_load_b32 v15, v14, s[20:23], 0 offen                // 000000633158: E0500000 80450F0E
	v_add_lshl_u32 v14, v9, v10, 2                             // 000000633160: D647000E 020A1509
	v_cndmask_b32_e64 v14, -1, v14, s34                        // 000000633168: D501000E 008A1CC1
	v_add_co_u32 v7, vcc_lo, v7, 8                             // 000000633170: D7006A07 00011107
	s_mul_i32 s32, s40, 8                                      // 000000633178: 96208828
	v_add_nc_u32_e64 v8, v8, s32                               // 00000063317C: D5250008 00004108
	s_mul_i32 s32, s38, 8                                      // 000000633184: 96208826
	v_add_nc_u32_e64 v9, v9, s32                               // 000000633188: D5250009 00004109
	v_cmp_lt_u32_e64 s32, v6, s46                              // 000000633190: D4490020 00005D06
	v_cmp_lt_u32_e64 s34, v7, s47                              // 000000633198: D4490022 00005F07
	s_and_b32 s34, s32, s34                                    // 0000006331A0: 8B222220
	v_add_lshl_u32 v16, v8, v6, 2                              // 0000006331A4: D6470010 020A0D08
	v_cndmask_b32_e64 v16, -1, v16, s34                        // 0000006331AC: D5010010 008A20C1
	buffer_load_b32 v17, v16, s[20:23], 0 offen                // 0000006331B4: E0500000 80451110
	v_add_lshl_u32 v16, v9, v6, 2                              // 0000006331BC: D6470010 020A0D09
	v_cndmask_b32_e64 v16, -1, v16, s34                        // 0000006331C4: D5010010 008A20C1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 0000006331CC: D7006A0A 00011106
	v_cmp_lt_u32_e64 s32, v10, s46                             // 0000006331D4: D4490020 00005D0A
	v_cmp_lt_u32_e64 s34, v7, s47                              // 0000006331DC: D4490022 00005F07
	s_and_b32 s34, s32, s34                                    // 0000006331E4: 8B222220
	v_add_lshl_u32 v18, v8, v10, 2                             // 0000006331E8: D6470012 020A1508
	v_cndmask_b32_e64 v18, -1, v18, s34                        // 0000006331F0: D5010012 008A24C1
	buffer_load_b32 v19, v18, s[20:23], 0 offen                // 0000006331F8: E0500000 80451312
	v_add_lshl_u32 v18, v9, v10, 2                             // 000000633200: D6470012 020A1509
	v_cndmask_b32_e64 v18, -1, v18, s34                        // 000000633208: D5010012 008A24C1
	v_mul_f32_e32 v0, s36, v0                                  // 000000633210: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000633214: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000633218: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 00000063321C: 10060624
	s_waitcnt vmcnt(0)                                         // 000000633220: BF8903F7
	s_waitcnt_vscnt null, 0x0                                  // 000000633224: BC7C0000
	v_fmac_f32_e64 v0, v13, s37                                // 000000633228: D52B0000 00004B0D
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000633230: E0680000 8044000C
	v_fmac_f32_e64 v1, v15, s37                                // 000000633238: D52B0001 00004B0F
	buffer_store_b32 v1, v14, s[16:19], 0 offen                // 000000633240: E0680000 8044010E
	v_fmac_f32_e64 v2, v17, s37                                // 000000633248: D52B0002 00004B11
	buffer_store_b32 v2, v16, s[16:19], 0 offen                // 000000633250: E0680000 80440210
	v_fmac_f32_e64 v3, v19, s37                                // 000000633258: D52B0003 00004B13
	buffer_store_b32 v3, v18, s[16:19], 0 offen                // 000000633260: E0680000 80440312
	s_branch label_0047                                        // 000000633268: BFA00000

000000000063326c <label_GW_End_42>:
	s_endpgm                                                   // 00000063326C: BFB00000
		...
