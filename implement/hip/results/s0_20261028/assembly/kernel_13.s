
/root/batchmatmulmaxsum/implement/hip/results/s0_20261028/code_objects/_code_object0007.o:	file format elf64-amdgpu

Disassembly of section .text:

0000000000636f00 <Cijk_Alik_Bjlk_SB_MT32x16x8_SN_1LDSB0_APM1_ABV0_ACED0_AF0EM1_AF1EM1_AMAS0_ASE_ASGT_ASLT_ASM_ASAE01_ASCE01_ASEM1_AAC0_BL1_BS1_CLR0_DTLA0_DTLB0_DTVA0_DTVB0_DVO0_ETSP_EPS1_ELFLR0_EMLL0_FSSC10_FL0_GLVWA1_GLVWB1_GRCGA1_GRCGB1_GRPM1_GRVW1_GSU1_GSUASB_GLS0_ISA1100_IU1_K1_KLA_LBSPPA0_LBSPPB0_LPA0_LPB0_LDL1_LRVW1_LWPMn1_LDW0_FMA_MIAV0_MDA2_MO40_MMFGLC_MKFGSU256_NTA0_NTB0_NTC0_NTD0_NEPBS0_NLCA1_NLCB1_ONLL1_OPLV0_PK0_PAP0_PGR1_PLR1_PKA0_SIA1_SLW1_SS0_SU32_SUM3_SUS128_SCIUI1_SPO0_SRVW0_SSO0_SVW4_SNLL0_TSGRA0_TSGRB0_TT2_2_TLDS0_UMLDSA0_UMLDSB0_U64SL1_USFGROn1_VAW1_VSn1_VW1_VWB1_VFLRP0_WSGRA0_WSGRB0_WS32_WG16_8_1_WGM1_preloaded>:
	s_mov_b32 vcc_hi, 0                                        // 000000636F00: BEEB0080
	s_load_b512 s[24:39], s[0:1], null                         // 000000636F04: F4100600 F8000000
	s_load_b256 s[40:47], s[0:1], 0x40                         // 000000636F0C: F40C0A00 F8000040
	s_load_b128 s[48:51], s[0:1], 0x60                         // 000000636F14: F4080C00 F8000060
	s_load_b32 s52, s[0:1], 0x70                               // 000000636F1C: F4000D00 F8000070
	s_mov_b32 m0, 0xe00                                        // 000000636F24: BEFD00FF 00000E00
	v_mov_b32_e32 v25, v0                                      // 000000636F2C: 7E320300
	v_lshrrev_b32_e32 v0, 4, v25                               // 000000636F30: 32003284
	v_and_b32_e32 v1, 15, v25                                  // 000000636F34: 3602328F
	v_lshrrev_b32_e32 v2, 3, v0                                // 000000636F38: 32040083
	v_and_b32_e32 v3, 7, v0                                    // 000000636F3C: 36060087
	v_lshrrev_b32_e32 v0, 7, v25                               // 000000636F40: 32003287
	v_lshlrev_b32_e32 v0, 5, v0                                // 000000636F44: 30000085
	v_add_lshl_u32 v23, v0, v1, 2                              // 000000636F48: D6470017 020A0300
	v_lshrrev_b32_e32 v0, 7, v25                               // 000000636F50: 32003287
	v_lshlrev_b32_e32 v0, 4, v0                                // 000000636F54: 30000084
	v_add_lshl_u32 v24, v0, v3, 2                              // 000000636F58: D6470018 020A0700
	v_add_co_u32 v24, vcc_lo, 0x400, v24                       // 000000636F60: D7006A18 000230FF 00000400
	v_lshrrev_b32_e32 v0, 3, v25                               // 000000636F6C: 32003283
	v_and_b32_e32 v1, 7, v25                                   // 000000636F70: 36023287
	v_lshrrev_b32_e32 v3, 4, v25                               // 000000636F74: 32063284
	v_and_b32_e32 v2, 15, v25                                  // 000000636F78: 3604328F
	v_mul_u32_u24_e32 v15, 32, v1                              // 000000636F7C: 161E02A0
	v_add_lshl_u32 v15, v0, v15, 2                             // 000000636F80: D647000F 020A1F00
	v_mul_u32_u24_e32 v16, 16, v3                              // 000000636F88: 16200690
	v_add_lshl_u32 v16, v2, v16, 2                             // 000000636F8C: D6470010 020A2102
	v_add_co_u32 v16, vcc_lo, 0x400, v16                       // 000000636F94: D7006A10 000220FF 00000400
	s_waitcnt lgkmcnt(0)                                       // 000000636FA0: BF89FC07
	s_mov_b64 s[20:21], s[30:31]                               // 000000636FA4: BE94011E
	s_mov_b64 s[16:17], s[28:29]                               // 000000636FA8: BE90011C
	s_sub_u32 s8, s32, 4                                       // 000000636FAC: 80888420
	s_subb_u32 s9, s33, 0                                      // 000000636FB0: 82898021
	s_sub_u32 s12, s34, 4                                      // 000000636FB4: 808C8422
	s_subb_u32 s13, s35, 0                                     // 000000636FB8: 828D8023
	v_cmp_eq_f32_e64 vcc_lo, s36, 0                            // 000000636FBC: D412006A 00010024
	s_cbranch_vccz label_AlphaNonZero                          // 000000636FC4: BFA30001
	s_mov_b32 s49, 0                                           // 000000636FC8: BEB10080

0000000000636fcc <label_AlphaNonZero>:
	v_mul_lo_u32 v6, s42, v0                                   // 000000636FCC: D72C0006 0002002A
	v_add_co_u32 v17, vcc_lo, v1, v6                           // 000000636FD4: D7006A11 00020D01
	v_add_nc_u32_e32 v17, 1, v17                               // 000000636FDC: 4A222281
	v_lshlrev_b32_e32 v17, 2, v17                              // 000000636FE0: 30222282
	s_mul_i32 s53, s42, 16                                     // 000000636FE4: 9635902A
	s_lshl_b32 s53, s53, 2                                     // 000000636FE8: 84358235
	v_mul_lo_u32 v6, s44, v3                                   // 000000636FEC: D72C0006 0002062C
	v_add_co_u32 v18, vcc_lo, v2, v6                           // 000000636FF4: D7006A12 00020D02
	v_add_nc_u32_e32 v18, 1, v18                               // 000000636FFC: 4A242481
	v_lshlrev_b32_e32 v18, 2, v18                              // 000000637000: 30242482
	s_mul_hi_u32 s59, s2, 32                                   // 000000637004: 96BBA002
	s_mul_i32 s58, s2, 32                                      // 000000637008: 963AA002
	s_mul_hi_u32 s59, s58, s42                                 // 00000063700C: 96BB2A3A
	s_mul_i32 s58, s58, s42                                    // 000000637010: 963A2A3A
	s_sub_u32 s0, s24, s58                                     // 000000637014: 80803A18
	s_subb_u32 s1, s25, s59                                    // 000000637018: 82813B19
	s_lshl_b64 s[0:1], s[0:1], 2                               // 00000063701C: 84808200
	s_add_u32 s0, s0, 4                                        // 000000637020: 80008400
	s_addc_u32 s1, s1, 0                                       // 000000637024: 82018001
	s_cmp_eq_u32 s1, 0                                         // 000000637028: BF068001
	s_cselect_b32 s10, s0, -1                                  // 00000063702C: 980AC100
	s_mul_hi_u32 s57, s43, s4                                  // 000000637030: 96B9042B
	s_mul_i32 s56, s43, s4                                     // 000000637034: 9638042B
	s_add_u32 s58, s58, s56                                    // 000000637038: 803A383A
	s_addc_u32 s59, s59, s57                                   // 00000063703C: 823B393B
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000637040: 84BA823A
	s_add_u32 s8, s8, s58                                      // 000000637044: 80083A08
	s_addc_u32 s9, s9, s59                                     // 000000637048: 82093B09
	s_mov_b32 s11, 0x31004000                                  // 00000063704C: BE8B00FF 31004000
	s_mul_hi_u32 s59, s3, 16                                   // 000000637054: 96BB9003
	s_mul_i32 s58, s3, 16                                      // 000000637058: 963A9003
	s_sub_u32 s28, s26, s58                                    // 00000063705C: 809C3A1A
	s_subb_u32 s29, s27, s59                                   // 000000637060: 829D3B1B
	s_lshl_b64 s[28:29], s[28:29], 2                           // 000000637064: 849C821C
	s_add_u32 s28, s28, 4                                      // 000000637068: 801C841C
	s_addc_u32 s29, s29, 0                                     // 00000063706C: 821D801D
	s_cmp_eq_u32 s29, 0                                        // 000000637070: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000637074: 980EC11C
	s_mul_hi_u32 s57, s45, s4                                  // 000000637078: 96B9042D
	s_mul_i32 s56, s45, s4                                     // 00000063707C: 9638042D
	s_add_u32 s58, s58, s56                                    // 000000637080: 803A383A
	s_addc_u32 s59, s59, s57                                   // 000000637084: 823B393B
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000637088: 84BA823A
	s_add_u32 s12, s12, s58                                    // 00000063708C: 800C3A0C
	s_addc_u32 s13, s13, s59                                   // 000000637090: 820D3B0D
	s_mov_b32 s15, 0x31004000                                  // 000000637094: BE8F00FF 31004000
	s_mov_b32 s34, 32                                          // 00000063709C: BEA200A0
	s_mul_i32 s35, 32, s44                                     // 0000006370A0: 96232CA0
	s_lshr_b32 s5, s49, 3                                      // 0000006370A4: 85058331
	s_mov_b32 s6, s5                                           // 0000006370A8: BE860005
	s_mul_i32 s56, s51, s52                                    // 0000006370AC: 96383433
	s_mul_i32 s56, s56, s4                                     // 0000006370B0: 96380438
	s_mul_i32 s57, s51, s3                                     // 0000006370B4: 96390333
	s_add_u32 s56, s56, s57                                    // 0000006370B8: 80383938
	s_add_u32 s56, s56, s2                                     // 0000006370BC: 80380238
	s_and_b32 s7, s50, s56                                     // 0000006370C0: 8B073832
	s_lshl_b32 s7, s7, 2                                       // 0000006370C4: 84078207
	s_mul_hi_u32 s57, s7, s34                                  // 0000006370C8: 96B92207
	s_mul_i32 s56, s7, s34                                     // 0000006370CC: 96382207
	s_mul_hi_u32 s31, s5, s34                                  // 0000006370D0: 969F2205
	s_mul_i32 s30, s5, s34                                     // 0000006370D4: 961E2205
	s_sub_u32 s30, s34, s30                                    // 0000006370D8: 809E1E22
	s_subb_u32 s31, 0, s31                                     // 0000006370DC: 829F1F80
	s_add_u32 s8, s8, s56                                      // 0000006370E0: 80083808
	s_addc_u32 s9, s9, s57                                     // 0000006370E4: 82093909
	s_sub_u32 s0, s0, s56                                      // 0000006370E8: 80803800
	s_subb_u32 s1, s1, s57                                     // 0000006370EC: 82813901
	s_cmp_eq_u32 s1, 0                                         // 0000006370F0: BF068001
	s_cselect_b32 s10, s0, -1                                  // 0000006370F4: 980AC100
	s_mul_hi_u32 s57, s7, s35                                  // 0000006370F8: 96B92307
	s_mul_i32 s56, s7, s35                                     // 0000006370FC: 96382307
	s_mul_hi_u32 s33, s5, s35                                  // 000000637100: 96A12305
	s_mul_i32 s32, s5, s35                                     // 000000637104: 96202305
	s_sub_u32 s32, s35, s32                                    // 000000637108: 80A02023
	s_subb_u32 s33, 0, s33                                     // 00000063710C: 82A12180
	s_add_u32 s12, s12, s56                                    // 000000637110: 800C380C
	s_addc_u32 s13, s13, s57                                   // 000000637114: 820D390D
	s_sub_u32 s28, s28, s56                                    // 000000637118: 809C381C
	s_subb_u32 s29, s29, s57                                   // 00000063711C: 829D391D
	s_cmp_eq_u32 s29, 0                                        // 000000637120: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000637124: 980EC11C
	s_add_u32 s7, s7, 2                                        // 000000637128: 80078207
	s_cmp_eq_u32 s5, 0                                         // 00000063712C: BF068005
	s_cbranch_scc1 ShadowInitStart_10                          // 000000637130: BFA2001A
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000637134: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s53 offen               // 00000063713C: E0500000 35421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 000000637144: E0500000 80431612
	s_add_u32 s58, s5, 1                                       // 00000063714C: 803A8105
	s_cmp_eq_u32 s7, s58                                       // 000000637150: BF063A07
	s_cselect_b32 s56, s30, s34                                // 000000637154: 9838221E
	s_cselect_b32 s57, s31, 0                                  // 000000637158: 9839801F
	s_add_u32 s8, s8, s56                                      // 00000063715C: 80083808
	s_addc_u32 s9, s9, s57                                     // 000000637160: 82093909
	s_sub_u32 s0, s0, s56                                      // 000000637164: 80803800
	s_subb_u32 s1, s1, s57                                     // 000000637168: 82813901
	s_cmp_eq_u32 s1, 0                                         // 00000063716C: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000637170: 980AC100
	s_add_u32 s58, s5, 1                                       // 000000637174: 803A8105
	s_cmp_eq_u32 s7, s58                                       // 000000637178: BF063A07
	s_cselect_b32 s56, s32, s35                                // 00000063717C: 98382320
	s_cselect_b32 s57, s33, 0                                  // 000000637180: 98398021
	s_add_u32 s12, s12, s56                                    // 000000637184: 800C380C
	s_addc_u32 s13, s13, s57                                   // 000000637188: 820D390D
	s_sub_u32 s28, s28, s56                                    // 00000063718C: 809C381C
	s_subb_u32 s29, s29, s57                                   // 000000637190: 829D391D
	s_cmp_eq_u32 s29, 0                                        // 000000637194: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000637198: 980EC11C

000000000063719c <ShadowInitStart_10>:
	s_mov_b32 s18, 0xfffff000                                  // 00000063719C: BE9200FF FFFFF000
	s_mov_b32 s19, 0x31004000                                  // 0000006371A4: BE9300FF 31004000
	s_mov_b32 s22, 0xfffff000                                  // 0000006371AC: BE9600FF FFFFF000
	s_mov_b32 s23, 0x31004000                                  // 0000006371B4: BE9700FF 31004000
	s_mul_i32 s56, 16, s3                                      // 0000006371BC: 96380390
	s_mul_hi_u32 s55, s56, s40                                 // 0000006371C0: 96B72838
	s_mul_i32 s54, s56, s40                                    // 0000006371C4: 96362838
	s_lshl_b64 s[54:55], s[54:55], 2                           // 0000006371C8: 84B68236
	s_add_u32 s20, s20, s54                                    // 0000006371CC: 80143614
	s_addc_u32 s21, s21, s55                                   // 0000006371D0: 82153715
	s_mul_hi_u32 s55, s56, s38                                 // 0000006371D4: 96B72638
	s_mul_i32 s54, s56, s38                                    // 0000006371D8: 96362638
	s_lshl_b64 s[54:55], s[54:55], 2                           // 0000006371DC: 84B68236
	s_add_u32 s16, s16, s54                                    // 0000006371E0: 80103610
	s_addc_u32 s17, s17, s55                                   // 0000006371E4: 82113711
	s_mul_hi_u32 s55, s4, s41                                  // 0000006371E8: 96B72904
	s_mul_i32 s54, s4, s41                                     // 0000006371EC: 96362904
	s_lshl_b64 s[54:55], s[54:55], 2                           // 0000006371F0: 84B68236
	s_add_u32 s20, s20, s54                                    // 0000006371F4: 80143614
	s_addc_u32 s21, s21, s55                                   // 0000006371F8: 82153715
	s_mul_hi_u32 s55, s4, s39                                  // 0000006371FC: 96B72704
	s_mul_i32 s54, s4, s39                                     // 000000637200: 96362704
	s_lshl_b64 s[54:55], s[54:55], 2                           // 000000637204: 84B68236
	s_add_u32 s16, s16, s54                                    // 000000637208: 80103610
	s_addc_u32 s17, s17, s55                                   // 00000063720C: 82113711
	v_mov_b32_e32 v0, 0                                        // 000000637210: 7E000280
	v_mov_b32_e32 v1, 0                                        // 000000637214: 7E020280
	v_mov_b32_e32 v2, 0                                        // 000000637218: 7E040280
	v_mov_b32_e32 v3, 0                                        // 00000063721C: 7E060280
	s_cmp_eq_u32 s5, 0                                         // 000000637220: BF068005
	s_cbranch_scc0 label_NoBranch_11                           // 000000637224: BFA10006
	s_getpc_b64 s[54:55]                                       // 000000637228: BEB64700
	s_add_i32 s56, 0x9a4, 4                                    // 00000063722C: 813884FF 000009A4
	s_add_u32 s54, s54, s56                                    // 000000637234: 80363836
	s_addc_u32 s55, s55, 0                                     // 000000637238: 82378037
	s_setpc_b64 s[54:55]                                       // 00000063723C: BE804836

0000000000637240 <label_NoBranch_11>:
	s_waitcnt vmcnt(0)                                         // 000000637240: BF8903F7
	ds_store_b32 v15, v20                                      // 000000637244: D8340000 0000140F
	ds_store_b32 v15, v21 offset:64                            // 00000063724C: D8340040 0000150F
	ds_store_b32 v16, v22                                      // 000000637254: D8340000 00001610
	s_waitcnt lgkmcnt(0)                                       // 00000063725C: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000637260: BDFC0000
	s_barrier                                                  // 000000637264: BFBD0000
	ds_load_b32 v6, v23                                        // 000000637268: D8D80000 06000017
	ds_load_b32 v7, v23 offset:64                              // 000000637270: D8D80040 07000017
	ds_load_b32 v11, v24                                       // 000000637278: D8D80000 0B000018
	ds_load_b32 v12, v24 offset:32                             // 000000637280: D8D80020 0C000018

0000000000637288 <openLoopL_12>:
	s_cmp_le_u32 s5, 1                                         // 000000637288: BF0B8105
	s_cbranch_scc1 LoopEndL_2                                  // 00000063728C: BFA20143

0000000000637290 <label_0013>:
	ds_load_b32 v8, v23 offset:128                             // 000000637290: D8D80080 08000017
	ds_load_b32 v9, v23 offset:192                             // 000000637298: D8D800C0 09000017
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 0000006372A0: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s53 offen               // 0000006372A8: E0500000 35421511
	ds_load_b32 v13, v24 offset:64                             // 0000006372B0: D8D80040 0D000018
	ds_load_b32 v14, v24 offset:96                             // 0000006372B8: D8D80060 0E000018
	s_waitcnt lgkmcnt(4)                                       // 0000006372C0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006372C4: 56001706
	s_setprio 1                                                // 0000006372C8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006372CC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006372D0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 0000006372D4: 56061907
	s_setprio 0                                                // 0000006372D8: BFB50000
	ds_load_b32 v6, v23 offset:256                             // 0000006372DC: D8D80100 06000017
	ds_load_b32 v7, v23 offset:320                             // 0000006372E4: D8D80140 07000017
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 0000006372EC: E0500000 80431612
	ds_load_b32 v11, v24 offset:128                            // 0000006372F4: D8D80080 0B000018
	ds_load_b32 v12, v24 offset:160                            // 0000006372FC: D8D800A0 0C000018
	s_waitcnt lgkmcnt(4)                                       // 000000637304: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000637308: 56001B08
	s_setprio 1                                                // 00000063730C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000637310: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000637314: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000637318: 56061D09
	s_setprio 0                                                // 00000063731C: BFB50000
	ds_load_b32 v8, v23 offset:384                             // 000000637320: D8D80180 08000017
	ds_load_b32 v9, v23 offset:448                             // 000000637328: D8D801C0 09000017
	s_cmp_eq_u32 s5, s7                                        // 000000637330: BF060705
	s_cselect_b32 s54, s30, s34                                // 000000637334: 9836221E
	s_cselect_b32 s55, s31, 0                                  // 000000637338: 9837801F
	s_add_u32 s8, s8, s54                                      // 00000063733C: 80083608
	s_addc_u32 s9, s9, s55                                     // 000000637340: 82093709
	s_sub_u32 s0, s0, s54                                      // 000000637344: 80803600
	s_subb_u32 s1, s1, s55                                     // 000000637348: 82813701
	s_cmp_eq_u32 s1, 0                                         // 00000063734C: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000637350: 980AC100
	ds_load_b32 v13, v24 offset:192                            // 000000637354: D8D800C0 0D000018
	ds_load_b32 v14, v24 offset:224                            // 00000063735C: D8D800E0 0E000018
	s_waitcnt lgkmcnt(4)                                       // 000000637364: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000637368: 56001706
	s_setprio 1                                                // 00000063736C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000637370: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000637374: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000637378: 56061907
	s_setprio 0                                                // 00000063737C: BFB50000
	ds_load_b32 v6, v23 offset:512                             // 000000637380: D8D80200 06000017
	ds_load_b32 v7, v23 offset:576                             // 000000637388: D8D80240 07000017
	s_cmp_eq_u32 s5, s7                                        // 000000637390: BF060705
	s_cselect_b32 s54, s32, s35                                // 000000637394: 98362320
	s_cselect_b32 s55, s33, 0                                  // 000000637398: 98378021
	s_add_u32 s12, s12, s54                                    // 00000063739C: 800C360C
	s_addc_u32 s13, s13, s55                                   // 0000006373A0: 820D370D
	s_sub_u32 s28, s28, s54                                    // 0000006373A4: 809C361C
	s_subb_u32 s29, s29, s55                                   // 0000006373A8: 829D371D
	s_cmp_eq_u32 s29, 0                                        // 0000006373AC: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 0000006373B0: 980EC11C
	ds_load_b32 v11, v24 offset:256                            // 0000006373B4: D8D80100 0B000018
	ds_load_b32 v12, v24 offset:288                            // 0000006373BC: D8D80120 0C000018
	s_waitcnt lgkmcnt(4)                                       // 0000006373C4: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006373C8: 56001B08
	s_setprio 1                                                // 0000006373CC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006373D0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006373D4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006373D8: 56061D09
	s_setprio 0                                                // 0000006373DC: BFB50000
	ds_load_b32 v8, v23 offset:640                             // 0000006373E0: D8D80280 08000017
	ds_load_b32 v9, v23 offset:704                             // 0000006373E8: D8D802C0 09000017
	ds_load_b32 v13, v24 offset:320                            // 0000006373F0: D8D80140 0D000018
	ds_load_b32 v14, v24 offset:352                            // 0000006373F8: D8D80160 0E000018
	s_waitcnt vmcnt(2)                                         // 000000637400: BF890BF7
	ds_store_b32 v15, v20 offset:2048                          // 000000637404: D8340800 0000140F
	s_waitcnt lgkmcnt(5)                                       // 00000063740C: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000637410: 56001706
	s_setprio 1                                                // 000000637414: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000637418: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 00000063741C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000637420: 56061907
	s_setprio 0                                                // 000000637424: BFB50000
	ds_load_b32 v6, v23 offset:768                             // 000000637428: D8D80300 06000017
	ds_load_b32 v7, v23 offset:832                             // 000000637430: D8D80340 07000017
	ds_load_b32 v11, v24 offset:384                            // 000000637438: D8D80180 0B000018
	ds_load_b32 v12, v24 offset:416                            // 000000637440: D8D801A0 0C000018
	s_waitcnt vmcnt(1)                                         // 000000637448: BF8907F7
	ds_store_b32 v15, v21 offset:2112                          // 00000063744C: D8340840 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000637454: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000637458: 56001B08
	s_setprio 1                                                // 00000063745C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000637460: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000637464: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000637468: 56061D09
	s_setprio 0                                                // 00000063746C: BFB50000
	ds_load_b32 v8, v23 offset:896                             // 000000637470: D8D80380 08000017
	ds_load_b32 v9, v23 offset:960                             // 000000637478: D8D803C0 09000017
	ds_load_b32 v13, v24 offset:448                            // 000000637480: D8D801C0 0D000018
	ds_load_b32 v14, v24 offset:480                            // 000000637488: D8D801E0 0E000018
	s_waitcnt vmcnt(0)                                         // 000000637490: BF8903F7
	ds_store_b32 v16, v22 offset:2048                          // 000000637494: D8340800 00001610
	s_waitcnt lgkmcnt(5)                                       // 00000063749C: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006374A0: 56001706
	s_setprio 1                                                // 0000006374A4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006374A8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006374AC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 0000006374B0: 56061907
	s_setprio 0                                                // 0000006374B4: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 0000006374B8: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 0000006374BC: BDFC0000
	s_barrier                                                  // 0000006374C0: BFBD0000
	ds_load_b32 v6, v23 offset:2048                            // 0000006374C4: D8D80800 06000017
	ds_load_b32 v7, v23 offset:2112                            // 0000006374CC: D8D80840 07000017
	ds_load_b32 v11, v24 offset:2048                           // 0000006374D4: D8D80800 0B000018
	ds_load_b32 v12, v24 offset:2080                           // 0000006374DC: D8D80820 0C000018
	s_waitcnt lgkmcnt(4)                                       // 0000006374E4: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006374E8: 56001B08
	s_setprio 1                                                // 0000006374EC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006374F0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006374F4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006374F8: 56061D09
	s_setprio 0                                                // 0000006374FC: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000637500: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000637504: BF008105
	s_cbranch_scc1 LoopEndL_oddexit_3                          // 000000637508: BFA200A0

000000000063750c <label_0014>:
	ds_load_b32 v8, v23 offset:2176                            // 00000063750C: D8D80880 08000017
	ds_load_b32 v9, v23 offset:2240                            // 000000637514: D8D808C0 09000017
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 00000063751C: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s53 offen               // 000000637524: E0500000 35421511
	ds_load_b32 v13, v24 offset:2112                           // 00000063752C: D8D80840 0D000018
	ds_load_b32 v14, v24 offset:2144                           // 000000637534: D8D80860 0E000018
	s_waitcnt lgkmcnt(4)                                       // 00000063753C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000637540: 56001706
	s_setprio 1                                                // 000000637544: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000637548: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 00000063754C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000637550: 56061907
	s_setprio 0                                                // 000000637554: BFB50000
	ds_load_b32 v6, v23 offset:2304                            // 000000637558: D8D80900 06000017
	ds_load_b32 v7, v23 offset:2368                            // 000000637560: D8D80940 07000017
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 000000637568: E0500000 80431612
	ds_load_b32 v11, v24 offset:2176                           // 000000637570: D8D80880 0B000018
	ds_load_b32 v12, v24 offset:2208                           // 000000637578: D8D808A0 0C000018
	s_waitcnt lgkmcnt(4)                                       // 000000637580: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000637584: 56001B08
	s_setprio 1                                                // 000000637588: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 00000063758C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000637590: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000637594: 56061D09
	s_setprio 0                                                // 000000637598: BFB50000
	ds_load_b32 v8, v23 offset:2432                            // 00000063759C: D8D80980 08000017
	ds_load_b32 v9, v23 offset:2496                            // 0000006375A4: D8D809C0 09000017
	s_cmp_eq_u32 s5, s7                                        // 0000006375AC: BF060705
	s_cselect_b32 s54, s30, s34                                // 0000006375B0: 9836221E
	s_cselect_b32 s55, s31, 0                                  // 0000006375B4: 9837801F
	s_add_u32 s8, s8, s54                                      // 0000006375B8: 80083608
	s_addc_u32 s9, s9, s55                                     // 0000006375BC: 82093709
	s_sub_u32 s0, s0, s54                                      // 0000006375C0: 80803600
	s_subb_u32 s1, s1, s55                                     // 0000006375C4: 82813701
	s_cmp_eq_u32 s1, 0                                         // 0000006375C8: BF068001
	s_cselect_b32 s10, s0, -1                                  // 0000006375CC: 980AC100
	ds_load_b32 v13, v24 offset:2240                           // 0000006375D0: D8D808C0 0D000018
	ds_load_b32 v14, v24 offset:2272                           // 0000006375D8: D8D808E0 0E000018
	s_waitcnt lgkmcnt(4)                                       // 0000006375E0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006375E4: 56001706
	s_setprio 1                                                // 0000006375E8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006375EC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006375F0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 0000006375F4: 56061907
	s_setprio 0                                                // 0000006375F8: BFB50000
	ds_load_b32 v6, v23 offset:2560                            // 0000006375FC: D8D80A00 06000017
	ds_load_b32 v7, v23 offset:2624                            // 000000637604: D8D80A40 07000017
	s_cmp_eq_u32 s5, s7                                        // 00000063760C: BF060705
	s_cselect_b32 s54, s32, s35                                // 000000637610: 98362320
	s_cselect_b32 s55, s33, 0                                  // 000000637614: 98378021
	s_add_u32 s12, s12, s54                                    // 000000637618: 800C360C
	s_addc_u32 s13, s13, s55                                   // 00000063761C: 820D370D
	s_sub_u32 s28, s28, s54                                    // 000000637620: 809C361C
	s_subb_u32 s29, s29, s55                                   // 000000637624: 829D371D
	s_cmp_eq_u32 s29, 0                                        // 000000637628: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 00000063762C: 980EC11C
	ds_load_b32 v11, v24 offset:2304                           // 000000637630: D8D80900 0B000018
	ds_load_b32 v12, v24 offset:2336                           // 000000637638: D8D80920 0C000018
	s_waitcnt lgkmcnt(4)                                       // 000000637640: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000637644: 56001B08
	s_setprio 1                                                // 000000637648: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 00000063764C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000637650: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000637654: 56061D09
	s_setprio 0                                                // 000000637658: BFB50000
	ds_load_b32 v8, v23 offset:2688                            // 00000063765C: D8D80A80 08000017
	ds_load_b32 v9, v23 offset:2752                            // 000000637664: D8D80AC0 09000017
	ds_load_b32 v13, v24 offset:2368                           // 00000063766C: D8D80940 0D000018
	ds_load_b32 v14, v24 offset:2400                           // 000000637674: D8D80960 0E000018
	s_waitcnt vmcnt(2)                                         // 00000063767C: BF890BF7
	ds_store_b32 v15, v20                                      // 000000637680: D8340000 0000140F
	s_waitcnt lgkmcnt(5)                                       // 000000637688: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 00000063768C: 56001706
	s_setprio 1                                                // 000000637690: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000637694: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000637698: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063769C: 56061907
	s_setprio 0                                                // 0000006376A0: BFB50000
	ds_load_b32 v6, v23 offset:2816                            // 0000006376A4: D8D80B00 06000017
	ds_load_b32 v7, v23 offset:2880                            // 0000006376AC: D8D80B40 07000017
	ds_load_b32 v11, v24 offset:2432                           // 0000006376B4: D8D80980 0B000018
	ds_load_b32 v12, v24 offset:2464                           // 0000006376BC: D8D809A0 0C000018
	s_waitcnt vmcnt(1)                                         // 0000006376C4: BF8907F7
	ds_store_b32 v15, v21 offset:64                            // 0000006376C8: D8340040 0000150F
	s_waitcnt lgkmcnt(5)                                       // 0000006376D0: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006376D4: 56001B08
	s_setprio 1                                                // 0000006376D8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006376DC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006376E0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006376E4: 56061D09
	s_setprio 0                                                // 0000006376E8: BFB50000
	ds_load_b32 v8, v23 offset:2944                            // 0000006376EC: D8D80B80 08000017
	ds_load_b32 v9, v23 offset:3008                            // 0000006376F4: D8D80BC0 09000017
	ds_load_b32 v13, v24 offset:2496                           // 0000006376FC: D8D809C0 0D000018
	ds_load_b32 v14, v24 offset:2528                           // 000000637704: D8D809E0 0E000018
	s_waitcnt vmcnt(0)                                         // 00000063770C: BF8903F7
	ds_store_b32 v16, v22                                      // 000000637710: D8340000 00001610
	s_waitcnt lgkmcnt(5)                                       // 000000637718: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 00000063771C: 56001706
	s_setprio 1                                                // 000000637720: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000637724: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000637728: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063772C: 56061907
	s_setprio 0                                                // 000000637730: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000637734: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000637738: BDFC0000
	s_barrier                                                  // 00000063773C: BFBD0000
	ds_load_b32 v6, v23                                        // 000000637740: D8D80000 06000017
	ds_load_b32 v7, v23 offset:64                              // 000000637748: D8D80040 07000017
	ds_load_b32 v11, v24                                       // 000000637750: D8D80000 0B000018
	ds_load_b32 v12, v24 offset:32                             // 000000637758: D8D80020 0C000018
	s_waitcnt lgkmcnt(4)                                       // 000000637760: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000637764: 56001B08
	s_setprio 1                                                // 000000637768: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 00000063776C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000637770: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000637774: 56061D09
	s_setprio 0                                                // 000000637778: BFB50000
	s_sub_u32 s5, s5, 1                                        // 00000063777C: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000637780: BF008105
	s_cbranch_scc0 LoopBeginL_1                                // 000000637784: BFA1FEC2

0000000000637788 <LoopEndL_evenexit_4>:
	s_branch LoopEndL_2                                        // 000000637788: BFA00004

000000000063778c <LoopEndL_oddexit_3>:
	v_xor_b32_e32 v23, 0x800, v23                              // 00000063778C: 3A2E2EFF 00000800
	v_xor_b32_e32 v24, 0x800, v24                              // 000000637794: 3A3030FF 00000800

000000000063779c <LoopEndL_2>:
	s_cmpk_eq_u32 s37, 0x0                                     // 00000063779C: B4A50000
	s_cbranch_scc0 OptNLL_End_15                               // 0000006377A0: BFA1009C
	s_cmp_eq_u32 s36, 1.0                                      // 0000006377A4: BF06F224
	s_cbranch_scc0 OptNLL_End_15                               // 0000006377A8: BFA1009A
	s_and_b32 s54, 31, s46                                     // 0000006377AC: 8B362E9F
	s_add_u32 s55, -1, s51                                     // 0000006377B0: 803733C1
	s_cmp_ge_u32 s2, s55                                       // 0000006377B4: BF093702
	s_cselect_b32 s54, s54, 0                                  // 0000006377B8: 98368036
	s_cmpk_gt_u32 s54, 0x0                                     // 0000006377BC: B5B60000
	s_cbranch_scc1 OptNLL_End_15                               // 0000006377C0: BFA20094
	s_and_b32 s54, 15, s47                                     // 0000006377C4: 8B362F8F
	s_add_u32 s55, -1, s52                                     // 0000006377C8: 803734C1
	s_cmp_ge_u32 s3, s55                                       // 0000006377CC: BF093703
	s_cselect_b32 s54, s54, 0                                  // 0000006377D0: 98368036
	s_cmpk_gt_u32 s54, 0x0                                     // 0000006377D4: B5B60000
	s_cbranch_scc1 OptNLL_End_15                               // 0000006377D8: BFA2008E
	s_and_b32 s55, 7, s49                                      // 0000006377DC: 8B373187
	s_cmp_eq_u32 s55, 0                                        // 0000006377E0: BF068037
	s_cbranch_scc0 OptNLL_End_15                               // 0000006377E4: BFA1008B
	ds_load_b32 v8, v23 offset:128                             // 0000006377E8: D8D80080 08000017
	ds_load_b32 v9, v23 offset:192                             // 0000006377F0: D8D800C0 09000017
	ds_load_b32 v13, v24 offset:64                             // 0000006377F8: D8D80040 0D000018
	ds_load_b32 v14, v24 offset:96                             // 000000637800: D8D80060 0E000018
	s_waitcnt lgkmcnt(4)                                       // 000000637808: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 00000063780C: 56001706
	s_setprio 1                                                // 000000637810: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000637814: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000637818: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063781C: 56061907
	s_setprio 0                                                // 000000637820: BFB50000
	ds_load_b32 v6, v23 offset:256                             // 000000637824: D8D80100 06000017
	ds_load_b32 v7, v23 offset:320                             // 00000063782C: D8D80140 07000017
	ds_load_b32 v11, v24 offset:128                            // 000000637834: D8D80080 0B000018
	ds_load_b32 v12, v24 offset:160                            // 00000063783C: D8D800A0 0C000018
	s_waitcnt lgkmcnt(4)                                       // 000000637844: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000637848: 56001B08
	s_setprio 1                                                // 00000063784C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000637850: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000637854: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000637858: 56061D09
	s_setprio 0                                                // 00000063785C: BFB50000
	ds_load_b32 v8, v23 offset:384                             // 000000637860: D8D80180 08000017
	ds_load_b32 v9, v23 offset:448                             // 000000637868: D8D801C0 09000017
	ds_load_b32 v13, v24 offset:192                            // 000000637870: D8D800C0 0D000018
	ds_load_b32 v14, v24 offset:224                            // 000000637878: D8D800E0 0E000018
	s_waitcnt lgkmcnt(4)                                       // 000000637880: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000637884: 56001706
	s_setprio 1                                                // 000000637888: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 00000063788C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000637890: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000637894: 56061907
	s_setprio 0                                                // 000000637898: BFB50000
	ds_load_b32 v6, v23 offset:512                             // 00000063789C: D8D80200 06000017
	ds_load_b32 v7, v23 offset:576                             // 0000006378A4: D8D80240 07000017
	ds_load_b32 v11, v24 offset:256                            // 0000006378AC: D8D80100 0B000018
	ds_load_b32 v12, v24 offset:288                            // 0000006378B4: D8D80120 0C000018
	s_waitcnt lgkmcnt(4)                                       // 0000006378BC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006378C0: 56001B08
	s_setprio 1                                                // 0000006378C4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006378C8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006378CC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006378D0: 56061D09
	s_setprio 0                                                // 0000006378D4: BFB50000
	ds_load_b32 v8, v23 offset:640                             // 0000006378D8: D8D80280 08000017
	ds_load_b32 v9, v23 offset:704                             // 0000006378E0: D8D802C0 09000017
	ds_load_b32 v13, v24 offset:320                            // 0000006378E8: D8D80140 0D000018
	ds_load_b32 v14, v24 offset:352                            // 0000006378F0: D8D80160 0E000018
	s_waitcnt lgkmcnt(4)                                       // 0000006378F8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006378FC: 56001706
	s_setprio 1                                                // 000000637900: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000637904: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000637908: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063790C: 56061907
	s_setprio 0                                                // 000000637910: BFB50000
	ds_load_b32 v6, v23 offset:768                             // 000000637914: D8D80300 06000017
	ds_load_b32 v7, v23 offset:832                             // 00000063791C: D8D80340 07000017
	ds_load_b32 v11, v24 offset:384                            // 000000637924: D8D80180 0B000018
	ds_load_b32 v12, v24 offset:416                            // 00000063792C: D8D801A0 0C000018
	s_waitcnt lgkmcnt(4)                                       // 000000637934: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000637938: 56001B08
	s_setprio 1                                                // 00000063793C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000637940: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000637944: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000637948: 56061D09
	s_setprio 0                                                // 00000063794C: BFB50000
	ds_load_b32 v8, v23 offset:896                             // 000000637950: D8D80380 08000017
	ds_load_b32 v9, v23 offset:960                             // 000000637958: D8D803C0 09000017
	ds_load_b32 v13, v24 offset:448                            // 000000637960: D8D801C0 0D000018
	ds_load_b32 v14, v24 offset:480                            // 000000637968: D8D801E0 0E000018
	s_waitcnt lgkmcnt(4)                                       // 000000637970: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000637974: 56001706
	s_setprio 1                                                // 000000637978: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 00000063797C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000637980: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000637984: 56061907
	s_setprio 0                                                // 000000637988: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 00000063798C: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000637990: 56001B08
	s_setprio 1                                                // 000000637994: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000637998: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 00000063799C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006379A0: 56061D09
	s_setprio 0                                                // 0000006379A4: BFB50000

00000000006379a8 <Summation_End_OptNLL_16>:
	v_lshrrev_b32_e32 v7, 4, v25                               // 0000006379A8: 320E3284
	v_and_b32_e32 v6, 15, v25                                  // 0000006379AC: 360C328F
	v_mul_lo_u32 v8, v7, s40                                   // 0000006379B0: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 0000006379B8: D72C0009 00004D07
	s_mul_i32 s54, 32, s2                                      // 0000006379C0: 963602A0
	v_add_co_u32 v6, vcc_lo, s54, v6                           // 0000006379C4: D7006A06 00020C36
	s_mul_i32 s56, 16, s3                                      // 0000006379CC: 96380390
	v_add_co_u32 v7, vcc_lo, s56, v7                           // 0000006379D0: D7006A07 00020E38

00000000006379d8 <GW_B0_E0_19>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 0000006379D8: D647000C 020A0D09
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 0000006379E0: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:64      // 0000006379E8: E0680040 8044010C
	s_mul_i32 s54, s38, 32                                     // 0000006379F0: 9636A026
	s_add_u32 s16, s16, s54                                    // 0000006379F4: 80103610
	s_addc_u32 s17, s17, 0                                     // 0000006379F8: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 0000006379FC: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:64      // 000000637A04: E0680040 8044030C
	s_branch label_GW_End_21                                   // 000000637A0C: BFA00000

0000000000637a10 <label_GW_End_21>:
	s_endpgm                                                   // 000000637A10: BFB00000

0000000000637a14 <OptNLL_End_15>:
	ds_load_b32 v8, v23 offset:128                             // 000000637A14: D8D80080 08000017
	ds_load_b32 v9, v23 offset:192                             // 000000637A1C: D8D800C0 09000017
	ds_load_b32 v13, v24 offset:64                             // 000000637A24: D8D80040 0D000018
	ds_load_b32 v14, v24 offset:96                             // 000000637A2C: D8D80060 0E000018
	s_waitcnt lgkmcnt(4)                                       // 000000637A34: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000637A38: 56001706
	s_setprio 1                                                // 000000637A3C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000637A40: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000637A44: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000637A48: 56061907
	s_setprio 0                                                // 000000637A4C: BFB50000
	ds_load_b32 v6, v23 offset:256                             // 000000637A50: D8D80100 06000017
	ds_load_b32 v7, v23 offset:320                             // 000000637A58: D8D80140 07000017
	ds_load_b32 v11, v24 offset:128                            // 000000637A60: D8D80080 0B000018
	ds_load_b32 v12, v24 offset:160                            // 000000637A68: D8D800A0 0C000018
	s_waitcnt lgkmcnt(4)                                       // 000000637A70: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000637A74: 56001B08
	s_setprio 1                                                // 000000637A78: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000637A7C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000637A80: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000637A84: 56061D09
	s_setprio 0                                                // 000000637A88: BFB50000
	ds_load_b32 v8, v23 offset:384                             // 000000637A8C: D8D80180 08000017
	ds_load_b32 v9, v23 offset:448                             // 000000637A94: D8D801C0 09000017
	ds_load_b32 v13, v24 offset:192                            // 000000637A9C: D8D800C0 0D000018
	ds_load_b32 v14, v24 offset:224                            // 000000637AA4: D8D800E0 0E000018
	s_waitcnt lgkmcnt(4)                                       // 000000637AAC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000637AB0: 56001706
	s_setprio 1                                                // 000000637AB4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000637AB8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000637ABC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000637AC0: 56061907
	s_setprio 0                                                // 000000637AC4: BFB50000
	ds_load_b32 v6, v23 offset:512                             // 000000637AC8: D8D80200 06000017
	ds_load_b32 v7, v23 offset:576                             // 000000637AD0: D8D80240 07000017
	ds_load_b32 v11, v24 offset:256                            // 000000637AD8: D8D80100 0B000018
	ds_load_b32 v12, v24 offset:288                            // 000000637AE0: D8D80120 0C000018
	s_waitcnt lgkmcnt(4)                                       // 000000637AE8: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000637AEC: 56001B08
	s_setprio 1                                                // 000000637AF0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000637AF4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000637AF8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000637AFC: 56061D09
	s_setprio 0                                                // 000000637B00: BFB50000
	ds_load_b32 v8, v23 offset:640                             // 000000637B04: D8D80280 08000017
	ds_load_b32 v9, v23 offset:704                             // 000000637B0C: D8D802C0 09000017
	ds_load_b32 v13, v24 offset:320                            // 000000637B14: D8D80140 0D000018
	ds_load_b32 v14, v24 offset:352                            // 000000637B1C: D8D80160 0E000018
	s_waitcnt lgkmcnt(4)                                       // 000000637B24: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000637B28: 56001706
	s_setprio 1                                                // 000000637B2C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000637B30: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000637B34: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000637B38: 56061907
	s_setprio 0                                                // 000000637B3C: BFB50000
	ds_load_b32 v6, v23 offset:768                             // 000000637B40: D8D80300 06000017
	ds_load_b32 v7, v23 offset:832                             // 000000637B48: D8D80340 07000017
	ds_load_b32 v11, v24 offset:384                            // 000000637B50: D8D80180 0B000018
	ds_load_b32 v12, v24 offset:416                            // 000000637B58: D8D801A0 0C000018
	s_waitcnt lgkmcnt(4)                                       // 000000637B60: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000637B64: 56001B08
	s_setprio 1                                                // 000000637B68: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000637B6C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000637B70: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000637B74: 56061D09
	s_setprio 0                                                // 000000637B78: BFB50000
	ds_load_b32 v8, v23 offset:896                             // 000000637B7C: D8D80380 08000017
	ds_load_b32 v9, v23 offset:960                             // 000000637B84: D8D803C0 09000017
	ds_load_b32 v13, v24 offset:448                            // 000000637B8C: D8D801C0 0D000018
	ds_load_b32 v14, v24 offset:480                            // 000000637B94: D8D801E0 0E000018
	s_waitcnt lgkmcnt(4)                                       // 000000637B9C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000637BA0: 56001706
	s_setprio 1                                                // 000000637BA4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000637BA8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000637BAC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000637BB0: 56061907
	s_setprio 0                                                // 000000637BB4: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000637BB8: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000637BBC: 56001B08
	s_setprio 1                                                // 000000637BC0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000637BC4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000637BC8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000637BCC: 56061D09
	s_setprio 0                                                // 000000637BD0: BFB50000

0000000000637bd4 <PrefetchGlobalLastIterEnd_5>:
	v_and_b32_e32 v15, 0xf007ff, v15                           // 000000637BD4: 361E1EFF 00F007FF
	v_and_b32_e32 v16, 0xf007ff, v16                           // 000000637BDC: 362020FF 00F007FF
	s_and_b32 s5, 7, s49                                       // 000000637BE4: 8B053187
	s_cmp_eq_u32 s5, 0                                         // 000000637BE8: BF068005
	s_cbranch_scc1 SkipTailLoopL_8                             // 000000637BEC: BFA2004F
	s_mov_b32 s6, 0                                            // 000000637BF0: BE860080
	s_mov_b32 s56, 3                                           // 000000637BF4: BEB80083
	s_mul_hi_u32 s55, s56, s34                                 // 000000637BF8: 96B72238
	s_mul_i32 s54, s56, s34                                    // 000000637BFC: 96362238
	s_mul_hi_u32 s57, s7, s34                                  // 000000637C00: 96B92207
	s_mul_i32 s56, s7, s34                                     // 000000637C04: 96382207
	s_sub_u32 s54, s54, s56                                    // 000000637C08: 80B63836
	s_subb_u32 s55, s55, s57                                   // 000000637C0C: 82B73937
	s_sub_u32 s54, s54, s30                                    // 000000637C10: 80B61E36
	s_subb_u32 s55, s55, s31                                   // 000000637C14: 82B71F37
	s_add_u32 s8, s8, s54                                      // 000000637C18: 80083608
	s_addc_u32 s9, s9, s55                                     // 000000637C1C: 82093709
	s_sub_u32 s0, s0, s54                                      // 000000637C20: 80803600
	s_subb_u32 s1, s1, s55                                     // 000000637C24: 82813701
	s_cmp_eq_u32 s1, 0                                         // 000000637C28: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000637C2C: 980AC100
	s_mov_b32 s56, 3                                           // 000000637C30: BEB80083
	s_mul_hi_u32 s55, s56, s35                                 // 000000637C34: 96B72338
	s_mul_i32 s54, s56, s35                                    // 000000637C38: 96362338
	s_mul_hi_u32 s57, s7, s35                                  // 000000637C3C: 96B92307
	s_mul_i32 s56, s7, s35                                     // 000000637C40: 96382307
	s_sub_u32 s54, s54, s56                                    // 000000637C44: 80B63836
	s_subb_u32 s55, s55, s57                                   // 000000637C48: 82B73937
	s_sub_u32 s54, s54, s32                                    // 000000637C4C: 80B62036
	s_subb_u32 s55, s55, s33                                   // 000000637C50: 82B72137
	s_add_u32 s12, s12, s54                                    // 000000637C54: 800C360C
	s_addc_u32 s13, s13, s55                                   // 000000637C58: 820D370D
	s_sub_u32 s28, s28, s54                                    // 000000637C5C: 809C361C
	s_subb_u32 s29, s29, s55                                   // 000000637C60: 829D371D
	s_cmp_eq_u32 s29, 0                                        // 000000637C64: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000637C68: 980EC11C
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000637C6C: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s53 offen               // 000000637C74: E0500000 35421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 000000637C7C: E0500000 80431612
	s_waitcnt vmcnt(0)                                         // 000000637C84: BF8903F7
	s_waitcnt_lgkmcnt null, 0x0                                // 000000637C88: BDFC0000
	s_barrier                                                  // 000000637C8C: BFBD0000
	ds_store_b32 v15, v20                                      // 000000637C90: D8340000 0000140F
	ds_store_b32 v15, v21 offset:64                            // 000000637C98: D8340040 0000150F
	ds_store_b32 v16, v22                                      // 000000637CA0: D8340000 00001610
	s_waitcnt lgkmcnt(0)                                       // 000000637CA8: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000637CAC: BDFC0000
	s_barrier                                                  // 000000637CB0: BFBD0000
	v_and_b32_e32 v23, 0x7ff, v23                              // 000000637CB4: 362E2EFF 000007FF
	v_and_b32_e32 v24, 0x7ff, v24                              // 000000637CBC: 363030FF 000007FF

0000000000637cc4 <TailLoopBeginL_6>:
	ds_load_b32 v6, v23                                        // 000000637CC4: D8D80000 06000017
	ds_load_b32 v7, v23 offset:64                              // 000000637CCC: D8D80040 07000017
	ds_load_b32 v11, v24                                       // 000000637CD4: D8D80000 0B000018
	ds_load_b32 v12, v24 offset:32                             // 000000637CDC: D8D80020 0C000018
	s_mov_b32 s54, 0x80                                        // 000000637CE4: BEB600FF 00000080
	v_add_co_u32 v23, vcc_lo, s54, v23                         // 000000637CEC: D7006A17 00022E36
	s_mov_b32 s54, 64                                          // 000000637CF4: BEB600C0
	v_add_co_u32 v24, vcc_lo, s54, v24                         // 000000637CF8: D7006A18 00023036
	s_waitcnt lgkmcnt(0)                                       // 000000637D00: BF89FC07
	v_fmac_f32_e32 v0, v6, v11                                 // 000000637D04: 56001706
	s_setprio 1                                                // 000000637D08: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000637D0C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000637D10: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000637D14: 56061907
	s_setprio 0                                                // 000000637D18: BFB50000
	s_sub_i32 s5, s5, 1                                        // 000000637D1C: 81858105
	s_add_u32 s6, s6, 1                                        // 000000637D20: 80068106
	s_cmp_le_i32 s5, 0                                         // 000000637D24: BF058005
	s_cbranch_scc0 TailLoopBeginL_6                            // 000000637D28: BFA1FFE6

0000000000637d2c <TailLoopEndL_7>:
	v_lshrrev_b32_e32 v7, 4, v25                               // 000000637D2C: 320E3284
	v_and_b32_e32 v6, 15, v25                                  // 000000637D30: 360C328F
	v_mul_lo_u32 v8, v7, s40                                   // 000000637D34: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000637D3C: D72C0009 00004D07
	s_mul_i32 s54, 32, s2                                      // 000000637D44: 963602A0
	v_add_co_u32 v6, vcc_lo, s54, v6                           // 000000637D48: D7006A06 00020C36
	s_mul_i32 s56, 16, s3                                      // 000000637D50: 96380390
	v_add_co_u32 v7, vcc_lo, s56, v7                           // 000000637D54: D7006A07 00020E38
	s_cmpk_eq_u32 s37, 0x0                                     // 000000637D5C: B4A50000
	s_cbranch_scc0 GW_Beta_43                                  // 000000637D60: BFA1005B
	s_and_b32 s54, 31, s46                                     // 000000637D64: 8B362E9F
	s_add_u32 s55, -1, s51                                     // 000000637D68: 803733C1
	s_cmp_ge_u32 s2, s55                                       // 000000637D6C: BF093702
	s_cselect_b32 s54, s54, 0                                  // 000000637D70: 98368036
	s_cmpk_gt_u32 s54, 0x0                                     // 000000637D74: B5B60000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000637D78: BFA20018
	s_and_b32 s54, 15, s47                                     // 000000637D7C: 8B362F8F
	s_add_u32 s55, -1, s52                                     // 000000637D80: 803734C1
	s_cmp_ge_u32 s3, s55                                       // 000000637D84: BF093703
	s_cselect_b32 s54, s54, 0                                  // 000000637D88: 98368036
	s_cmpk_gt_u32 s54, 0x0                                     // 000000637D8C: B5B60000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000637D90: BFA20012

0000000000637d94 <GW_B0_E0_31>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000637D94: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000637D9C: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000637DA0: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000637DA4: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000637DA8: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000637DAC: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:64      // 000000637DB4: E0680040 8044010C
	s_mul_i32 s54, s38, 32                                     // 000000637DBC: 9636A026
	s_add_u32 s16, s16, s54                                    // 000000637DC0: 80103610
	s_addc_u32 s17, s17, 0                                     // 000000637DC4: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000637DC8: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:64      // 000000637DD0: E0680040 8044030C
	s_branch label_0047                                        // 000000637DD8: BFA000D3

0000000000637ddc <GW_B0_E1_34>:
	v_cmp_lt_u32_e64 s54, v6, s46                              // 000000637DDC: D4490036 00005D06
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000637DE4: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000637DEC: 8B383836
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000637DF0: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s56                        // 000000637DF8: D501000C 00E218C1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000637E00: D7006A0A 00012106
	v_cmp_lt_u32_e64 s54, v10, s46                             // 000000637E08: D4490036 00005D0A
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000637E10: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000637E18: 8B383836
	v_add_lshl_u32 v13, v9, v10, 2                             // 000000637E1C: D647000D 020A1509
	v_cndmask_b32_e64 v13, -1, v13, s56                        // 000000637E24: D501000D 00E21AC1
	v_add_co_u32 v7, vcc_lo, v7, 8                             // 000000637E2C: D7006A07 00011107
	s_mul_i32 s54, s40, 8                                      // 000000637E34: 96368828
	v_add_nc_u32_e64 v8, v8, s54                               // 000000637E38: D5250008 00006D08
	s_mul_i32 s54, s38, 8                                      // 000000637E40: 96368826
	v_add_nc_u32_e64 v9, v9, s54                               // 000000637E44: D5250009 00006D09
	v_cmp_lt_u32_e64 s54, v6, s46                              // 000000637E4C: D4490036 00005D06
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000637E54: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000637E5C: 8B383836
	v_add_lshl_u32 v14, v9, v6, 2                              // 000000637E60: D647000E 020A0D09
	v_cndmask_b32_e64 v14, -1, v14, s56                        // 000000637E68: D501000E 00E21CC1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000637E70: D7006A0A 00012106
	v_cmp_lt_u32_e64 s54, v10, s46                             // 000000637E78: D4490036 00005D0A
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000637E80: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000637E88: 8B383836
	v_add_lshl_u32 v15, v9, v10, 2                             // 000000637E8C: D647000F 020A1509
	v_cndmask_b32_e64 v15, -1, v15, s56                        // 000000637E94: D501000F 00E21EC1
	v_mul_f32_e32 v0, s36, v0                                  // 000000637E9C: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000637EA0: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000637EA4: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000637EA8: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000637EAC: E0680000 8044000C
	buffer_store_b32 v1, v13, s[16:19], 0 offen                // 000000637EB4: E0680000 8044010D
	buffer_store_b32 v2, v14, s[16:19], 0 offen                // 000000637EBC: E0680000 8044020E
	buffer_store_b32 v3, v15, s[16:19], 0 offen                // 000000637EC4: E0680000 8044030F
	s_branch label_0047                                        // 000000637ECC: BFA00096

0000000000637ed0 <GW_Beta_43>:
	s_and_b32 s54, 31, s46                                     // 000000637ED0: 8B362E9F
	s_add_u32 s55, -1, s51                                     // 000000637ED4: 803733C1
	s_cmp_ge_u32 s2, s55                                       // 000000637ED8: BF093702
	s_cselect_b32 s54, s54, 0                                  // 000000637EDC: 98368036
	s_cmpk_gt_u32 s54, 0x0                                     // 000000637EE0: B5B60000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000637EE4: BFA20031
	s_and_b32 s54, 15, s47                                     // 000000637EE8: 8B362F8F
	s_add_u32 s55, -1, s52                                     // 000000637EEC: 803734C1
	s_cmp_ge_u32 s3, s55                                       // 000000637EF0: BF093703
	s_cselect_b32 s54, s54, 0                                  // 000000637EF4: 98368036
	s_cmpk_gt_u32 s54, 0x0                                     // 000000637EF8: B5B60000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000637EFC: BFA2002B

0000000000637f00 <GW_B1_E0_38>:
	v_add_lshl_u32 v13, v8, v6, 2                              // 000000637F00: D647000D 020A0D08
	buffer_load_b32 v14, v13, s[20:23], 0 offen                // 000000637F08: E0500000 80450E0D
	buffer_load_b32 v15, v13, s[20:23], 0 offen offset:64      // 000000637F10: E0500040 80450F0D
	s_mul_i32 s54, s40, 32                                     // 000000637F18: 9636A028
	s_add_u32 s20, s20, s54                                    // 000000637F1C: 80143614
	s_addc_u32 s21, s21, 0                                     // 000000637F20: 82158015
	buffer_load_b32 v16, v13, s[20:23], 0 offen                // 000000637F24: E0500000 8045100D
	buffer_load_b32 v17, v13, s[20:23], 0 offen offset:64      // 000000637F2C: E0500040 8045110D
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000637F34: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000637F3C: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000637F40: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000637F44: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000637F48: 10060624
	s_waitcnt vmcnt(3)                                         // 000000637F4C: BF890FF7
	v_fmac_f32_e64 v0, v14, s37                                // 000000637F50: D52B0000 00004B0E
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000637F58: E0680000 8044000C
	s_waitcnt vmcnt(2)                                         // 000000637F60: BF890BF7
	v_fmac_f32_e64 v1, v15, s37                                // 000000637F64: D52B0001 00004B0F
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:64      // 000000637F6C: E0680040 8044010C
	s_waitcnt vmcnt(1)                                         // 000000637F74: BF8907F7
	v_fmac_f32_e64 v2, v16, s37                                // 000000637F78: D52B0002 00004B10
	s_mul_i32 s54, s38, 32                                     // 000000637F80: 9636A026
	s_add_u32 s16, s16, s54                                    // 000000637F84: 80103610
	s_addc_u32 s17, s17, 0                                     // 000000637F88: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000637F8C: E0680000 8044020C
	s_waitcnt vmcnt(0)                                         // 000000637F94: BF8903F7
	v_fmac_f32_e64 v3, v17, s37                                // 000000637F98: D52B0003 00004B11
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:64      // 000000637FA0: E0680040 8044030C
	s_branch label_0047                                        // 000000637FA8: BFA0005F

0000000000637fac <GW_B1_E1_41>:
	v_cmp_lt_u32_e64 s54, v6, s46                              // 000000637FAC: D4490036 00005D06
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000637FB4: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000637FBC: 8B383836
	v_add_lshl_u32 v12, v8, v6, 2                              // 000000637FC0: D647000C 020A0D08
	v_cndmask_b32_e64 v12, -1, v12, s56                        // 000000637FC8: D501000C 00E218C1
	buffer_load_b32 v13, v12, s[20:23], 0 offen                // 000000637FD0: E0500000 80450D0C
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000637FD8: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s56                        // 000000637FE0: D501000C 00E218C1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000637FE8: D7006A0A 00012106
	v_cmp_lt_u32_e64 s54, v10, s46                             // 000000637FF0: D4490036 00005D0A
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000637FF8: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000638000: 8B383836
	v_add_lshl_u32 v14, v8, v10, 2                             // 000000638004: D647000E 020A1508
	v_cndmask_b32_e64 v14, -1, v14, s56                        // 00000063800C: D501000E 00E21CC1
	buffer_load_b32 v15, v14, s[20:23], 0 offen                // 000000638014: E0500000 80450F0E
	v_add_lshl_u32 v14, v9, v10, 2                             // 00000063801C: D647000E 020A1509
	v_cndmask_b32_e64 v14, -1, v14, s56                        // 000000638024: D501000E 00E21CC1
	v_add_co_u32 v7, vcc_lo, v7, 8                             // 00000063802C: D7006A07 00011107
	s_mul_i32 s54, s40, 8                                      // 000000638034: 96368828
	v_add_nc_u32_e64 v8, v8, s54                               // 000000638038: D5250008 00006D08
	s_mul_i32 s54, s38, 8                                      // 000000638040: 96368826
	v_add_nc_u32_e64 v9, v9, s54                               // 000000638044: D5250009 00006D09
	v_cmp_lt_u32_e64 s54, v6, s46                              // 00000063804C: D4490036 00005D06
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000638054: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 00000063805C: 8B383836
	v_add_lshl_u32 v16, v8, v6, 2                              // 000000638060: D6470010 020A0D08
	v_cndmask_b32_e64 v16, -1, v16, s56                        // 000000638068: D5010010 00E220C1
	buffer_load_b32 v17, v16, s[20:23], 0 offen                // 000000638070: E0500000 80451110
	v_add_lshl_u32 v16, v9, v6, 2                              // 000000638078: D6470010 020A0D09
	v_cndmask_b32_e64 v16, -1, v16, s56                        // 000000638080: D5010010 00E220C1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000638088: D7006A0A 00012106
	v_cmp_lt_u32_e64 s54, v10, s46                             // 000000638090: D4490036 00005D0A
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000638098: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 0000006380A0: 8B383836
	v_add_lshl_u32 v18, v8, v10, 2                             // 0000006380A4: D6470012 020A1508
	v_cndmask_b32_e64 v18, -1, v18, s56                        // 0000006380AC: D5010012 00E224C1
	buffer_load_b32 v19, v18, s[20:23], 0 offen                // 0000006380B4: E0500000 80451312
	v_add_lshl_u32 v18, v9, v10, 2                             // 0000006380BC: D6470012 020A1509
	v_cndmask_b32_e64 v18, -1, v18, s56                        // 0000006380C4: D5010012 00E224C1
	v_mul_f32_e32 v0, s36, v0                                  // 0000006380CC: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 0000006380D0: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 0000006380D4: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 0000006380D8: 10060624
	s_waitcnt vmcnt(0)                                         // 0000006380DC: BF8903F7
	s_waitcnt_vscnt null, 0x0                                  // 0000006380E0: BC7C0000
	v_fmac_f32_e64 v0, v13, s37                                // 0000006380E4: D52B0000 00004B0D
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 0000006380EC: E0680000 8044000C
	v_fmac_f32_e64 v1, v15, s37                                // 0000006380F4: D52B0001 00004B0F
	buffer_store_b32 v1, v14, s[16:19], 0 offen                // 0000006380FC: E0680000 8044010E
	v_fmac_f32_e64 v2, v17, s37                                // 000000638104: D52B0002 00004B11
	buffer_store_b32 v2, v16, s[16:19], 0 offen                // 00000063810C: E0680000 80440210
	v_fmac_f32_e64 v3, v19, s37                                // 000000638114: D52B0003 00004B13
	buffer_store_b32 v3, v18, s[16:19], 0 offen                // 00000063811C: E0680000 80440312
	s_branch label_0047                                        // 000000638124: BFA00000

0000000000638128 <label_GW_End_42>:
	s_endpgm                                                   // 000000638128: BFB00000
		...
