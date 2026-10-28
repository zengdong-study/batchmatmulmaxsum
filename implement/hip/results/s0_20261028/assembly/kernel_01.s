
/root/batchmatmulmaxsum/implement/hip/results/s0_20261028/code_objects/_code_object0006.o:	file format elf64-amdgpu

Disassembly of section .text:

0000000000b93000 <Cijk_Ailk_Bjlk_SB_MT32x32x16_SN_1LDSB0_APM1_ABV0_ACED0_AF0EM1_AF1EM1_AMAS0_ASE_ASGT_ASLT_ASM_ASAE01_ASCE01_ASEM1_AAC0_BL1_BS1_CLR0_DTLA0_DTLB0_DTVA0_DTVB0_DVO0_ETSP_EPS1_ELFLR0_EMLL0_FSSC10_FL0_GLVWA1_GLVWB1_GRCGA1_GRCGB1_GRPM1_GRVW1_GSU1_GSUASB_GLS0_ISA1100_IU1_K1_KLA_LBSPPA0_LBSPPB0_LPA0_LPB0_LDL1_LRVW1_LWPMn1_LDW0_FMA_MIAV0_MDA2_MO40_MMFGLC_MKFGSU256_NTA0_NTB0_NTC0_NTD0_NEPBS0_NLCA1_NLCB1_ONLL1_OPLV0_PK0_PAP0_PGR1_PLR1_PKA0_SIA1_SLW1_SS0_SU0_SUM0_SUS0_SCIUI1_SPO0_SRVW0_SSO0_SVW4_SNLL0_TSGRA0_TSGRB0_TT2_2_TLDS0_UMLDSA0_UMLDSB0_U64SL1_USFGROn1_VAW1_VSn1_VW1_VWB1_VFLRP0_WSGRA0_WSGRB0_WS32_WG16_16_1_WGM1_preloaded>:
	s_mov_b32 vcc_hi, 0                                        // 000000B93000: BEEB0080
	s_load_b512 s[24:39], s[0:1], null                         // 000000B93004: F4100600 F8000000
	s_load_b256 s[40:47], s[0:1], 0x40                         // 000000B9300C: F40C0A00 F8000040
	s_load_b128 s[48:51], s[0:1], 0x60                         // 000000B93014: F4080C00 F8000060
	s_mov_b32 m0, 0x2000                                       // 000000B9301C: BEFD00FF 00002000
	v_mov_b32_e32 v26, v0                                      // 000000B93024: 7E340300
	v_lshrrev_b32_e32 v0, 4, v26                               // 000000B93028: 32003484
	v_and_b32_e32 v1, 15, v26                                  // 000000B9302C: 3602348F
	v_lshrrev_b32_e32 v2, 4, v0                                // 000000B93030: 32040084
	v_and_b32_e32 v3, 15, v0                                   // 000000B93034: 3606008F
	v_lshrrev_b32_e32 v0, 8, v26                               // 000000B93038: 32003488
	v_lshlrev_b32_e32 v0, 5, v0                                // 000000B9303C: 30000085
	v_add_lshl_u32 v24, v0, v1, 2                              // 000000B93040: D6470018 020A0300
	v_lshrrev_b32_e32 v0, 8, v26                               // 000000B93048: 32003488
	v_lshlrev_b32_e32 v0, 5, v0                                // 000000B9304C: 30000085
	v_add_lshl_u32 v25, v0, v3, 2                              // 000000B93050: D6470019 020A0700
	v_add_co_u32 v25, vcc_lo, 0x800, v25                       // 000000B93058: D7006A19 000232FF 00000800
	v_lshrrev_b32_e32 v1, 5, v26                               // 000000B93064: 32023485
	v_and_b32_e32 v0, 31, v26                                  // 000000B93068: 3600349F
	v_lshrrev_b32_e32 v3, 5, v26                               // 000000B9306C: 32063485
	v_and_b32_e32 v2, 31, v26                                  // 000000B93070: 3604349F
	v_mul_u32_u24_e32 v15, 32, v1                              // 000000B93074: 161E02A0
	v_add_lshl_u32 v15, v0, v15, 2                             // 000000B93078: D647000F 020A1F00
	v_mul_u32_u24_e32 v16, 32, v3                              // 000000B93080: 162006A0
	v_add_lshl_u32 v16, v2, v16, 2                             // 000000B93084: D6470010 020A2102
	v_add_co_u32 v16, vcc_lo, 0x800, v16                       // 000000B9308C: D7006A10 000220FF 00000800
	s_waitcnt lgkmcnt(0)                                       // 000000B93098: BF89FC07
	s_mov_b64 s[20:21], s[30:31]                               // 000000B9309C: BE94011E
	s_mov_b64 s[16:17], s[28:29]                               // 000000B930A0: BE90011C
	s_sub_u32 s8, s32, 4                                       // 000000B930A4: 80888420
	s_subb_u32 s9, s33, 0                                      // 000000B930A8: 82898021
	s_sub_u32 s12, s34, 4                                      // 000000B930AC: 808C8422
	s_subb_u32 s13, s35, 0                                     // 000000B930B0: 828D8023
	v_cmp_eq_f32_e64 vcc_lo, s36, 0                            // 000000B930B4: D412006A 00010024
	s_cbranch_vccz label_AlphaNonZero                          // 000000B930BC: BFA30001
	s_mov_b32 s49, 0                                           // 000000B930C0: BEB10080

0000000000b930c4 <label_AlphaNonZero>:
	v_mul_lo_u32 v6, s42, v1                                   // 000000B930C4: D72C0006 0002022A
	v_add_co_u32 v17, vcc_lo, v0, v6                           // 000000B930CC: D7006A11 00020D00
	v_add_nc_u32_e32 v17, 1, v17                               // 000000B930D4: 4A222281
	v_lshlrev_b32_e32 v17, 2, v17                              // 000000B930D8: 30222282
	s_mul_i32 s31, s42, 8                                      // 000000B930DC: 961F882A
	s_lshl_b32 s31, s31, 2                                     // 000000B930E0: 841F821F
	v_mul_lo_u32 v6, s44, v3                                   // 000000B930E4: D72C0006 0002062C
	v_add_co_u32 v18, vcc_lo, v2, v6                           // 000000B930EC: D7006A12 00020D02
	v_add_nc_u32_e32 v18, 1, v18                               // 000000B930F4: 4A242481
	v_lshlrev_b32_e32 v18, 2, v18                              // 000000B930F8: 30242482
	s_mul_i32 s32, s44, 8                                      // 000000B930FC: 9620882C
	s_lshl_b32 s32, s32, 2                                     // 000000B93100: 84208220
	s_mul_hi_u32 s55, s2, 32                                   // 000000B93104: 96B7A002
	s_mul_i32 s54, s2, 32                                      // 000000B93108: 9636A002
	s_sub_u32 s0, s24, s54                                     // 000000B9310C: 80803618
	s_subb_u32 s1, s25, s55                                    // 000000B93110: 82813719
	s_lshl_b64 s[0:1], s[0:1], 2                               // 000000B93114: 84808200
	s_add_u32 s0, s0, 4                                        // 000000B93118: 80008400
	s_addc_u32 s1, s1, 0                                       // 000000B9311C: 82018001
	s_cmp_eq_u32 s1, 0                                         // 000000B93120: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000B93124: 980AC100
	s_mul_hi_u32 s35, s43, s4                                  // 000000B93128: 96A3042B
	s_mul_i32 s34, s43, s4                                     // 000000B9312C: 9622042B
	s_add_u32 s54, s54, s34                                    // 000000B93130: 80362236
	s_addc_u32 s55, s55, s35                                   // 000000B93134: 82372337
	s_lshl_b64 s[54:55], s[54:55], 2                           // 000000B93138: 84B68236
	s_add_u32 s8, s8, s54                                      // 000000B9313C: 80083608
	s_addc_u32 s9, s9, s55                                     // 000000B93140: 82093709
	s_mov_b32 s11, 0x31004000                                  // 000000B93144: BE8B00FF 31004000
	s_mul_hi_u32 s55, s3, 32                                   // 000000B9314C: 96B7A003
	s_mul_i32 s54, s3, 32                                      // 000000B93150: 9636A003
	s_sub_u32 s28, s26, s54                                    // 000000B93154: 809C361A
	s_subb_u32 s29, s27, s55                                   // 000000B93158: 829D371B
	s_lshl_b64 s[28:29], s[28:29], 2                           // 000000B9315C: 849C821C
	s_add_u32 s28, s28, 4                                      // 000000B93160: 801C841C
	s_addc_u32 s29, s29, 0                                     // 000000B93164: 821D801D
	s_cmp_eq_u32 s29, 0                                        // 000000B93168: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000B9316C: 980EC11C
	s_mul_hi_u32 s35, s45, s4                                  // 000000B93170: 96A3042D
	s_mul_i32 s34, s45, s4                                     // 000000B93174: 9622042D
	s_add_u32 s54, s54, s34                                    // 000000B93178: 80362236
	s_addc_u32 s55, s55, s35                                   // 000000B9317C: 82372337
	s_lshl_b64 s[54:55], s[54:55], 2                           // 000000B93180: 84B68236
	s_add_u32 s12, s12, s54                                    // 000000B93184: 800C360C
	s_addc_u32 s13, s13, s55                                   // 000000B93188: 820D370D
	s_mov_b32 s15, 0x31004000                                  // 000000B9318C: BE8F00FF 31004000
	s_mul_i32 s7, 64, s42                                      // 000000B93194: 96072AC0
	s_mul_i32 s30, 64, s44                                     // 000000B93198: 961E2CC0
	s_lshr_b32 s5, s49, 4                                      // 000000B9319C: 85058431
	s_mov_b32 s6, s5                                           // 000000B931A0: BE860005
	s_cmp_eq_u32 s5, 0                                         // 000000B931A4: BF068005
	s_cbranch_scc1 ShadowInitStart_10                          // 000000B931A8: BFA20014
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000B931AC: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000B931B4: E0500000 1F421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 000000B931BC: E0500000 80431612
	buffer_load_b32 v23, v18, s[12:15], s32 offen              // 000000B931C4: E0500000 20431712
	s_add_u32 s8, s8, s7                                       // 000000B931CC: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000B931D0: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000B931D4: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000B931D8: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000B931DC: BF068001
	s_cmov_b32 s10, s0                                         // 000000B931E0: BE8A0200
	s_add_u32 s12, s12, s30                                    // 000000B931E4: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000B931E8: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000B931EC: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000B931F0: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000B931F4: BF06801D
	s_cmov_b32 s14, s28                                        // 000000B931F8: BE8E021C

0000000000b931fc <ShadowInitStart_10>:
	s_mov_b32 s18, 0xfffff000                                  // 000000B931FC: BE9200FF FFFFF000
	s_mov_b32 s19, 0x31004000                                  // 000000B93204: BE9300FF 31004000
	s_mov_b32 s22, 0xfffff000                                  // 000000B9320C: BE9600FF FFFFF000
	s_mov_b32 s23, 0x31004000                                  // 000000B93214: BE9700FF 31004000
	s_mul_i32 s54, 32, s3                                      // 000000B9321C: 963603A0
	s_mul_hi_u32 s53, s54, s40                                 // 000000B93220: 96B52836
	s_mul_i32 s52, s54, s40                                    // 000000B93224: 96342836
	s_lshl_b64 s[52:53], s[52:53], 2                           // 000000B93228: 84B48234
	s_add_u32 s20, s20, s52                                    // 000000B9322C: 80143414
	s_addc_u32 s21, s21, s53                                   // 000000B93230: 82153515
	s_mul_hi_u32 s53, s54, s38                                 // 000000B93234: 96B52636
	s_mul_i32 s52, s54, s38                                    // 000000B93238: 96342636
	s_lshl_b64 s[52:53], s[52:53], 2                           // 000000B9323C: 84B48234
	s_add_u32 s16, s16, s52                                    // 000000B93240: 80103410
	s_addc_u32 s17, s17, s53                                   // 000000B93244: 82113511
	s_mul_hi_u32 s53, s4, s41                                  // 000000B93248: 96B52904
	s_mul_i32 s52, s4, s41                                     // 000000B9324C: 96342904
	s_lshl_b64 s[52:53], s[52:53], 2                           // 000000B93250: 84B48234
	s_add_u32 s20, s20, s52                                    // 000000B93254: 80143414
	s_addc_u32 s21, s21, s53                                   // 000000B93258: 82153515
	s_mul_hi_u32 s53, s4, s39                                  // 000000B9325C: 96B52704
	s_mul_i32 s52, s4, s39                                     // 000000B93260: 96342704
	s_lshl_b64 s[52:53], s[52:53], 2                           // 000000B93264: 84B48234
	s_add_u32 s16, s16, s52                                    // 000000B93268: 80103410
	s_addc_u32 s17, s17, s53                                   // 000000B9326C: 82113511
	v_mov_b32_e32 v0, 0                                        // 000000B93270: 7E000280
	v_mov_b32_e32 v1, 0                                        // 000000B93274: 7E020280
	v_mov_b32_e32 v2, 0                                        // 000000B93278: 7E040280
	v_mov_b32_e32 v3, 0                                        // 000000B9327C: 7E060280
	s_cmp_eq_u32 s5, 0                                         // 000000B93280: BF068005
	s_cbranch_scc0 label_NoBranch_11                           // 000000B93284: BFA10006
	s_getpc_b64 s[52:53]                                       // 000000B93288: BEB44700
	s_add_i32 s54, 0x1124, 4                                   // 000000B9328C: 813684FF 00001124
	s_add_u32 s52, s52, s54                                    // 000000B93294: 80343634
	s_addc_u32 s53, s53, 0                                     // 000000B93298: 82358035
	s_setpc_b64 s[52:53]                                       // 000000B9329C: BE804834

0000000000b932a0 <label_NoBranch_11>:
	s_waitcnt vmcnt(0)                                         // 000000B932A0: BF8903F7
	ds_store_b32 v15, v20                                      // 000000B932A4: D8340000 0000140F
	ds_store_b32 v15, v21 offset:1024                          // 000000B932AC: D8340400 0000150F
	ds_store_b32 v16, v22                                      // 000000B932B4: D8340000 00001610
	ds_store_b32 v16, v23 offset:1024                          // 000000B932BC: D8340400 00001710
	s_waitcnt lgkmcnt(0)                                       // 000000B932C4: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000B932C8: BDFC0000
	s_barrier                                                  // 000000B932CC: BFBD0000
	ds_load_b32 v6, v24                                        // 000000B932D0: D8D80000 06000018
	ds_load_b32 v7, v24 offset:64                              // 000000B932D8: D8D80040 07000018
	ds_load_b32 v11, v25                                       // 000000B932E0: D8D80000 0B000019
	ds_load_b32 v12, v25 offset:64                             // 000000B932E8: D8D80040 0C000019

0000000000b932f0 <openLoopL_12>:
	s_cmp_le_u32 s5, 1                                         // 000000B932F0: BF0B8105
	s_cbranch_scc1 LoopEndL_2                                  // 000000B932F4: BFA20231

0000000000b932f8 <label_0013>:
	ds_load_b32 v8, v24 offset:128                             // 000000B932F8: D8D80080 08000018
	ds_load_b32 v9, v24 offset:192                             // 000000B93300: D8D800C0 09000018
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000B93308: E0500000 80421411
	ds_load_b32 v13, v25 offset:128                            // 000000B93310: D8D80080 0D000019
	ds_load_b32 v14, v25 offset:192                            // 000000B93318: D8D800C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93320: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B93324: 56001706
	s_setprio 1                                                // 000000B93328: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B9332C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B93330: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B93334: 56061907
	s_setprio 0                                                // 000000B93338: BFB50000
	ds_load_b32 v6, v24 offset:256                             // 000000B9333C: D8D80100 06000018
	ds_load_b32 v7, v24 offset:320                             // 000000B93344: D8D80140 07000018
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000B9334C: E0500000 1F421511
	ds_load_b32 v11, v25 offset:256                            // 000000B93354: D8D80100 0B000019
	ds_load_b32 v12, v25 offset:320                            // 000000B9335C: D8D80140 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93364: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B93368: 56001B08
	s_setprio 1                                                // 000000B9336C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B93370: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B93374: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B93378: 56061D09
	s_setprio 0                                                // 000000B9337C: BFB50000
	ds_load_b32 v8, v24 offset:384                             // 000000B93380: D8D80180 08000018
	ds_load_b32 v9, v24 offset:448                             // 000000B93388: D8D801C0 09000018
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 000000B93390: E0500000 80431612
	ds_load_b32 v13, v25 offset:384                            // 000000B93398: D8D80180 0D000019
	ds_load_b32 v14, v25 offset:448                            // 000000B933A0: D8D801C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B933A8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B933AC: 56001706
	s_setprio 1                                                // 000000B933B0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B933B4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B933B8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B933BC: 56061907
	s_setprio 0                                                // 000000B933C0: BFB50000
	ds_load_b32 v6, v24 offset:512                             // 000000B933C4: D8D80200 06000018
	ds_load_b32 v7, v24 offset:576                             // 000000B933CC: D8D80240 07000018
	buffer_load_b32 v23, v18, s[12:15], s32 offen              // 000000B933D4: E0500000 20431712
	ds_load_b32 v11, v25 offset:512                            // 000000B933DC: D8D80200 0B000019
	ds_load_b32 v12, v25 offset:576                            // 000000B933E4: D8D80240 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B933EC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B933F0: 56001B08
	s_setprio 1                                                // 000000B933F4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B933F8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B933FC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B93400: 56061D09
	s_setprio 0                                                // 000000B93404: BFB50000
	ds_load_b32 v8, v24 offset:640                             // 000000B93408: D8D80280 08000018
	ds_load_b32 v9, v24 offset:704                             // 000000B93410: D8D802C0 09000018
	s_add_u32 s8, s8, s7                                       // 000000B93418: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000B9341C: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000B93420: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000B93424: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000B93428: BF068001
	s_cmov_b32 s10, s0                                         // 000000B9342C: BE8A0200
	ds_load_b32 v13, v25 offset:640                            // 000000B93430: D8D80280 0D000019
	ds_load_b32 v14, v25 offset:704                            // 000000B93438: D8D802C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93440: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B93444: 56001706
	s_setprio 1                                                // 000000B93448: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B9344C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B93450: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B93454: 56061907
	s_setprio 0                                                // 000000B93458: BFB50000
	ds_load_b32 v6, v24 offset:768                             // 000000B9345C: D8D80300 06000018
	ds_load_b32 v7, v24 offset:832                             // 000000B93464: D8D80340 07000018
	s_add_u32 s12, s12, s30                                    // 000000B9346C: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000B93470: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000B93474: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000B93478: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000B9347C: BF06801D
	s_cmov_b32 s14, s28                                        // 000000B93480: BE8E021C
	ds_load_b32 v11, v25 offset:768                            // 000000B93484: D8D80300 0B000019
	ds_load_b32 v12, v25 offset:832                            // 000000B9348C: D8D80340 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93494: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B93498: 56001B08
	s_setprio 1                                                // 000000B9349C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B934A0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B934A4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B934A8: 56061D09
	s_setprio 0                                                // 000000B934AC: BFB50000
	ds_load_b32 v8, v24 offset:896                             // 000000B934B0: D8D80380 08000018
	ds_load_b32 v9, v24 offset:960                             // 000000B934B8: D8D803C0 09000018
	ds_load_b32 v13, v25 offset:896                            // 000000B934C0: D8D80380 0D000019
	ds_load_b32 v14, v25 offset:960                            // 000000B934C8: D8D803C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B934D0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B934D4: 56001706
	s_setprio 1                                                // 000000B934D8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B934DC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B934E0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B934E4: 56061907
	s_setprio 0                                                // 000000B934E8: BFB50000
	ds_load_b32 v6, v24 offset:1024                            // 000000B934EC: D8D80400 06000018
	ds_load_b32 v7, v24 offset:1088                            // 000000B934F4: D8D80440 07000018
	ds_load_b32 v11, v25 offset:1024                           // 000000B934FC: D8D80400 0B000019
	ds_load_b32 v12, v25 offset:1088                           // 000000B93504: D8D80440 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B9350C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B93510: 56001B08
	s_setprio 1                                                // 000000B93514: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B93518: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B9351C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B93520: 56061D09
	s_setprio 0                                                // 000000B93524: BFB50000
	ds_load_b32 v8, v24 offset:1152                            // 000000B93528: D8D80480 08000018
	ds_load_b32 v9, v24 offset:1216                            // 000000B93530: D8D804C0 09000018
	ds_load_b32 v13, v25 offset:1152                           // 000000B93538: D8D80480 0D000019
	ds_load_b32 v14, v25 offset:1216                           // 000000B93540: D8D804C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93548: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B9354C: 56001706
	s_setprio 1                                                // 000000B93550: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B93554: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B93558: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B9355C: 56061907
	s_setprio 0                                                // 000000B93560: BFB50000
	ds_load_b32 v6, v24 offset:1280                            // 000000B93564: D8D80500 06000018
	ds_load_b32 v7, v24 offset:1344                            // 000000B9356C: D8D80540 07000018
	ds_load_b32 v11, v25 offset:1280                           // 000000B93574: D8D80500 0B000019
	ds_load_b32 v12, v25 offset:1344                           // 000000B9357C: D8D80540 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93584: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B93588: 56001B08
	s_setprio 1                                                // 000000B9358C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B93590: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B93594: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B93598: 56061D09
	s_setprio 0                                                // 000000B9359C: BFB50000
	ds_load_b32 v8, v24 offset:1408                            // 000000B935A0: D8D80580 08000018
	ds_load_b32 v9, v24 offset:1472                            // 000000B935A8: D8D805C0 09000018
	ds_load_b32 v13, v25 offset:1408                           // 000000B935B0: D8D80580 0D000019
	ds_load_b32 v14, v25 offset:1472                           // 000000B935B8: D8D805C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B935C0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B935C4: 56001706
	s_setprio 1                                                // 000000B935C8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B935CC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B935D0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B935D4: 56061907
	s_setprio 0                                                // 000000B935D8: BFB50000
	ds_load_b32 v6, v24 offset:1536                            // 000000B935DC: D8D80600 06000018
	ds_load_b32 v7, v24 offset:1600                            // 000000B935E4: D8D80640 07000018
	ds_load_b32 v11, v25 offset:1536                           // 000000B935EC: D8D80600 0B000019
	ds_load_b32 v12, v25 offset:1600                           // 000000B935F4: D8D80640 0C000019
	s_waitcnt vmcnt(3)                                         // 000000B935FC: BF890FF7
	ds_store_b32 v15, v20 offset:4096                          // 000000B93600: D8341000 0000140F
	s_waitcnt lgkmcnt(5)                                       // 000000B93608: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B9360C: 56001B08
	s_setprio 1                                                // 000000B93610: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B93614: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B93618: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B9361C: 56061D09
	s_setprio 0                                                // 000000B93620: BFB50000
	ds_load_b32 v8, v24 offset:1664                            // 000000B93624: D8D80680 08000018
	ds_load_b32 v9, v24 offset:1728                            // 000000B9362C: D8D806C0 09000018
	ds_load_b32 v13, v25 offset:1664                           // 000000B93634: D8D80680 0D000019
	ds_load_b32 v14, v25 offset:1728                           // 000000B9363C: D8D806C0 0E000019
	s_waitcnt vmcnt(2)                                         // 000000B93644: BF890BF7
	ds_store_b32 v15, v21 offset:5120                          // 000000B93648: D8341400 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000B93650: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B93654: 56001706
	s_setprio 1                                                // 000000B93658: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B9365C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B93660: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B93664: 56061907
	s_setprio 0                                                // 000000B93668: BFB50000
	ds_load_b32 v6, v24 offset:1792                            // 000000B9366C: D8D80700 06000018
	ds_load_b32 v7, v24 offset:1856                            // 000000B93674: D8D80740 07000018
	ds_load_b32 v11, v25 offset:1792                           // 000000B9367C: D8D80700 0B000019
	ds_load_b32 v12, v25 offset:1856                           // 000000B93684: D8D80740 0C000019
	s_waitcnt vmcnt(1)                                         // 000000B9368C: BF8907F7
	ds_store_b32 v16, v22 offset:4096                          // 000000B93690: D8341000 00001610
	s_waitcnt lgkmcnt(5)                                       // 000000B93698: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B9369C: 56001B08
	s_setprio 1                                                // 000000B936A0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B936A4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B936A8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B936AC: 56061D09
	s_setprio 0                                                // 000000B936B0: BFB50000
	ds_load_b32 v8, v24 offset:1920                            // 000000B936B4: D8D80780 08000018
	ds_load_b32 v9, v24 offset:1984                            // 000000B936BC: D8D807C0 09000018
	ds_load_b32 v13, v25 offset:1920                           // 000000B936C4: D8D80780 0D000019
	ds_load_b32 v14, v25 offset:1984                           // 000000B936CC: D8D807C0 0E000019
	s_waitcnt vmcnt(0)                                         // 000000B936D4: BF8903F7
	ds_store_b32 v16, v23 offset:5120                          // 000000B936D8: D8341400 00001710
	s_waitcnt lgkmcnt(5)                                       // 000000B936E0: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B936E4: 56001706
	s_setprio 1                                                // 000000B936E8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B936EC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B936F0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B936F4: 56061907
	s_setprio 0                                                // 000000B936F8: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000B936FC: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000B93700: BDFC0000
	s_barrier                                                  // 000000B93704: BFBD0000
	ds_load_b32 v6, v24 offset:4096                            // 000000B93708: D8D81000 06000018
	ds_load_b32 v7, v24 offset:4160                            // 000000B93710: D8D81040 07000018
	ds_load_b32 v11, v25 offset:4096                           // 000000B93718: D8D81000 0B000019
	ds_load_b32 v12, v25 offset:4160                           // 000000B93720: D8D81040 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93728: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B9372C: 56001B08
	s_setprio 1                                                // 000000B93730: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B93734: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B93738: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B9373C: 56061D09
	s_setprio 0                                                // 000000B93740: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000B93744: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000B93748: BF008105
	s_cbranch_scc1 LoopEndL_oddexit_3                          // 000000B9374C: BFA20117

0000000000b93750 <label_0014>:
	ds_load_b32 v8, v24 offset:4224                            // 000000B93750: D8D81080 08000018
	ds_load_b32 v9, v24 offset:4288                            // 000000B93758: D8D810C0 09000018
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000B93760: E0500000 80421411
	ds_load_b32 v13, v25 offset:4224                           // 000000B93768: D8D81080 0D000019
	ds_load_b32 v14, v25 offset:4288                           // 000000B93770: D8D810C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93778: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B9377C: 56001706
	s_setprio 1                                                // 000000B93780: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B93784: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B93788: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B9378C: 56061907
	s_setprio 0                                                // 000000B93790: BFB50000
	ds_load_b32 v6, v24 offset:4352                            // 000000B93794: D8D81100 06000018
	ds_load_b32 v7, v24 offset:4416                            // 000000B9379C: D8D81140 07000018
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000B937A4: E0500000 1F421511
	ds_load_b32 v11, v25 offset:4352                           // 000000B937AC: D8D81100 0B000019
	ds_load_b32 v12, v25 offset:4416                           // 000000B937B4: D8D81140 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B937BC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B937C0: 56001B08
	s_setprio 1                                                // 000000B937C4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B937C8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B937CC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B937D0: 56061D09
	s_setprio 0                                                // 000000B937D4: BFB50000
	ds_load_b32 v8, v24 offset:4480                            // 000000B937D8: D8D81180 08000018
	ds_load_b32 v9, v24 offset:4544                            // 000000B937E0: D8D811C0 09000018
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 000000B937E8: E0500000 80431612
	ds_load_b32 v13, v25 offset:4480                           // 000000B937F0: D8D81180 0D000019
	ds_load_b32 v14, v25 offset:4544                           // 000000B937F8: D8D811C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93800: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B93804: 56001706
	s_setprio 1                                                // 000000B93808: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B9380C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B93810: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B93814: 56061907
	s_setprio 0                                                // 000000B93818: BFB50000
	ds_load_b32 v6, v24 offset:4608                            // 000000B9381C: D8D81200 06000018
	ds_load_b32 v7, v24 offset:4672                            // 000000B93824: D8D81240 07000018
	buffer_load_b32 v23, v18, s[12:15], s32 offen              // 000000B9382C: E0500000 20431712
	ds_load_b32 v11, v25 offset:4608                           // 000000B93834: D8D81200 0B000019
	ds_load_b32 v12, v25 offset:4672                           // 000000B9383C: D8D81240 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93844: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B93848: 56001B08
	s_setprio 1                                                // 000000B9384C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B93850: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B93854: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B93858: 56061D09
	s_setprio 0                                                // 000000B9385C: BFB50000
	ds_load_b32 v8, v24 offset:4736                            // 000000B93860: D8D81280 08000018
	ds_load_b32 v9, v24 offset:4800                            // 000000B93868: D8D812C0 09000018
	s_add_u32 s8, s8, s7                                       // 000000B93870: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000B93874: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000B93878: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000B9387C: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000B93880: BF068001
	s_cmov_b32 s10, s0                                         // 000000B93884: BE8A0200
	ds_load_b32 v13, v25 offset:4736                           // 000000B93888: D8D81280 0D000019
	ds_load_b32 v14, v25 offset:4800                           // 000000B93890: D8D812C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93898: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B9389C: 56001706
	s_setprio 1                                                // 000000B938A0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B938A4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B938A8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B938AC: 56061907
	s_setprio 0                                                // 000000B938B0: BFB50000
	ds_load_b32 v6, v24 offset:4864                            // 000000B938B4: D8D81300 06000018
	ds_load_b32 v7, v24 offset:4928                            // 000000B938BC: D8D81340 07000018
	s_add_u32 s12, s12, s30                                    // 000000B938C4: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000B938C8: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000B938CC: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000B938D0: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000B938D4: BF06801D
	s_cmov_b32 s14, s28                                        // 000000B938D8: BE8E021C
	ds_load_b32 v11, v25 offset:4864                           // 000000B938DC: D8D81300 0B000019
	ds_load_b32 v12, v25 offset:4928                           // 000000B938E4: D8D81340 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B938EC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B938F0: 56001B08
	s_setprio 1                                                // 000000B938F4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B938F8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B938FC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B93900: 56061D09
	s_setprio 0                                                // 000000B93904: BFB50000
	ds_load_b32 v8, v24 offset:4992                            // 000000B93908: D8D81380 08000018
	ds_load_b32 v9, v24 offset:5056                            // 000000B93910: D8D813C0 09000018
	ds_load_b32 v13, v25 offset:4992                           // 000000B93918: D8D81380 0D000019
	ds_load_b32 v14, v25 offset:5056                           // 000000B93920: D8D813C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93928: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B9392C: 56001706
	s_setprio 1                                                // 000000B93930: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B93934: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B93938: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B9393C: 56061907
	s_setprio 0                                                // 000000B93940: BFB50000
	ds_load_b32 v6, v24 offset:5120                            // 000000B93944: D8D81400 06000018
	ds_load_b32 v7, v24 offset:5184                            // 000000B9394C: D8D81440 07000018
	ds_load_b32 v11, v25 offset:5120                           // 000000B93954: D8D81400 0B000019
	ds_load_b32 v12, v25 offset:5184                           // 000000B9395C: D8D81440 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93964: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B93968: 56001B08
	s_setprio 1                                                // 000000B9396C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B93970: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B93974: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B93978: 56061D09
	s_setprio 0                                                // 000000B9397C: BFB50000
	ds_load_b32 v8, v24 offset:5248                            // 000000B93980: D8D81480 08000018
	ds_load_b32 v9, v24 offset:5312                            // 000000B93988: D8D814C0 09000018
	ds_load_b32 v13, v25 offset:5248                           // 000000B93990: D8D81480 0D000019
	ds_load_b32 v14, v25 offset:5312                           // 000000B93998: D8D814C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B939A0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B939A4: 56001706
	s_setprio 1                                                // 000000B939A8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B939AC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B939B0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B939B4: 56061907
	s_setprio 0                                                // 000000B939B8: BFB50000
	ds_load_b32 v6, v24 offset:5376                            // 000000B939BC: D8D81500 06000018
	ds_load_b32 v7, v24 offset:5440                            // 000000B939C4: D8D81540 07000018
	ds_load_b32 v11, v25 offset:5376                           // 000000B939CC: D8D81500 0B000019
	ds_load_b32 v12, v25 offset:5440                           // 000000B939D4: D8D81540 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B939DC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B939E0: 56001B08
	s_setprio 1                                                // 000000B939E4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B939E8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B939EC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B939F0: 56061D09
	s_setprio 0                                                // 000000B939F4: BFB50000
	ds_load_b32 v8, v24 offset:5504                            // 000000B939F8: D8D81580 08000018
	ds_load_b32 v9, v24 offset:5568                            // 000000B93A00: D8D815C0 09000018
	ds_load_b32 v13, v25 offset:5504                           // 000000B93A08: D8D81580 0D000019
	ds_load_b32 v14, v25 offset:5568                           // 000000B93A10: D8D815C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93A18: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B93A1C: 56001706
	s_setprio 1                                                // 000000B93A20: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B93A24: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B93A28: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B93A2C: 56061907
	s_setprio 0                                                // 000000B93A30: BFB50000
	ds_load_b32 v6, v24 offset:5632                            // 000000B93A34: D8D81600 06000018
	ds_load_b32 v7, v24 offset:5696                            // 000000B93A3C: D8D81640 07000018
	ds_load_b32 v11, v25 offset:5632                           // 000000B93A44: D8D81600 0B000019
	ds_load_b32 v12, v25 offset:5696                           // 000000B93A4C: D8D81640 0C000019
	s_waitcnt vmcnt(3)                                         // 000000B93A54: BF890FF7
	ds_store_b32 v15, v20                                      // 000000B93A58: D8340000 0000140F
	s_waitcnt lgkmcnt(5)                                       // 000000B93A60: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B93A64: 56001B08
	s_setprio 1                                                // 000000B93A68: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B93A6C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B93A70: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B93A74: 56061D09
	s_setprio 0                                                // 000000B93A78: BFB50000
	ds_load_b32 v8, v24 offset:5760                            // 000000B93A7C: D8D81680 08000018
	ds_load_b32 v9, v24 offset:5824                            // 000000B93A84: D8D816C0 09000018
	ds_load_b32 v13, v25 offset:5760                           // 000000B93A8C: D8D81680 0D000019
	ds_load_b32 v14, v25 offset:5824                           // 000000B93A94: D8D816C0 0E000019
	s_waitcnt vmcnt(2)                                         // 000000B93A9C: BF890BF7
	ds_store_b32 v15, v21 offset:1024                          // 000000B93AA0: D8340400 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000B93AA8: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B93AAC: 56001706
	s_setprio 1                                                // 000000B93AB0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B93AB4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B93AB8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B93ABC: 56061907
	s_setprio 0                                                // 000000B93AC0: BFB50000
	ds_load_b32 v6, v24 offset:5888                            // 000000B93AC4: D8D81700 06000018
	ds_load_b32 v7, v24 offset:5952                            // 000000B93ACC: D8D81740 07000018
	ds_load_b32 v11, v25 offset:5888                           // 000000B93AD4: D8D81700 0B000019
	ds_load_b32 v12, v25 offset:5952                           // 000000B93ADC: D8D81740 0C000019
	s_waitcnt vmcnt(1)                                         // 000000B93AE4: BF8907F7
	ds_store_b32 v16, v22                                      // 000000B93AE8: D8340000 00001610
	s_waitcnt lgkmcnt(5)                                       // 000000B93AF0: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B93AF4: 56001B08
	s_setprio 1                                                // 000000B93AF8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B93AFC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B93B00: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B93B04: 56061D09
	s_setprio 0                                                // 000000B93B08: BFB50000
	ds_load_b32 v8, v24 offset:6016                            // 000000B93B0C: D8D81780 08000018
	ds_load_b32 v9, v24 offset:6080                            // 000000B93B14: D8D817C0 09000018
	ds_load_b32 v13, v25 offset:6016                           // 000000B93B1C: D8D81780 0D000019
	ds_load_b32 v14, v25 offset:6080                           // 000000B93B24: D8D817C0 0E000019
	s_waitcnt vmcnt(0)                                         // 000000B93B2C: BF8903F7
	ds_store_b32 v16, v23 offset:1024                          // 000000B93B30: D8340400 00001710
	s_waitcnt lgkmcnt(5)                                       // 000000B93B38: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B93B3C: 56001706
	s_setprio 1                                                // 000000B93B40: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B93B44: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B93B48: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B93B4C: 56061907
	s_setprio 0                                                // 000000B93B50: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000B93B54: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000B93B58: BDFC0000
	s_barrier                                                  // 000000B93B5C: BFBD0000
	ds_load_b32 v6, v24                                        // 000000B93B60: D8D80000 06000018
	ds_load_b32 v7, v24 offset:64                              // 000000B93B68: D8D80040 07000018
	ds_load_b32 v11, v25                                       // 000000B93B70: D8D80000 0B000019
	ds_load_b32 v12, v25 offset:64                             // 000000B93B78: D8D80040 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93B80: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B93B84: 56001B08
	s_setprio 1                                                // 000000B93B88: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B93B8C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B93B90: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B93B94: 56061D09
	s_setprio 0                                                // 000000B93B98: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000B93B9C: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000B93BA0: BF008105
	s_cbranch_scc0 LoopBeginL_1                                // 000000B93BA4: BFA1FDD4

0000000000b93ba8 <LoopEndL_evenexit_4>:
	s_branch LoopEndL_2                                        // 000000B93BA8: BFA00004

0000000000b93bac <LoopEndL_oddexit_3>:
	v_xor_b32_e32 v24, 0x1000, v24                             // 000000B93BAC: 3A3030FF 00001000
	v_xor_b32_e32 v25, 0x1000, v25                             // 000000B93BB4: 3A3232FF 00001000

0000000000b93bbc <LoopEndL_2>:
	s_cmpk_eq_u32 s37, 0x0                                     // 000000B93BBC: B4A50000
	s_cbranch_scc0 OptNLL_End_15                               // 000000B93BC0: BFA10114
	s_cmp_eq_u32 s36, 1.0                                      // 000000B93BC4: BF06F224
	s_cbranch_scc0 OptNLL_End_15                               // 000000B93BC8: BFA10112
	s_and_b32 s52, 31, s46                                     // 000000B93BCC: 8B342E9F
	s_add_u32 s53, -1, s50                                     // 000000B93BD0: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000B93BD4: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000B93BD8: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000B93BDC: B5B40000
	s_cbranch_scc1 OptNLL_End_15                               // 000000B93BE0: BFA2010C
	s_and_b32 s52, 31, s47                                     // 000000B93BE4: 8B342F9F
	s_add_u32 s53, -1, s51                                     // 000000B93BE8: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000B93BEC: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000B93BF0: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000B93BF4: B5B40000
	s_cbranch_scc1 OptNLL_End_15                               // 000000B93BF8: BFA20106
	s_and_b32 s53, 15, s49                                     // 000000B93BFC: 8B35318F
	s_cmp_eq_u32 s53, 0                                        // 000000B93C00: BF068035
	s_cbranch_scc0 OptNLL_End_15                               // 000000B93C04: BFA10103
	ds_load_b32 v8, v24 offset:128                             // 000000B93C08: D8D80080 08000018
	ds_load_b32 v9, v24 offset:192                             // 000000B93C10: D8D800C0 09000018
	ds_load_b32 v13, v25 offset:128                            // 000000B93C18: D8D80080 0D000019
	ds_load_b32 v14, v25 offset:192                            // 000000B93C20: D8D800C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93C28: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B93C2C: 56001706
	s_setprio 1                                                // 000000B93C30: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B93C34: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B93C38: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B93C3C: 56061907
	s_setprio 0                                                // 000000B93C40: BFB50000
	ds_load_b32 v6, v24 offset:256                             // 000000B93C44: D8D80100 06000018
	ds_load_b32 v7, v24 offset:320                             // 000000B93C4C: D8D80140 07000018
	ds_load_b32 v11, v25 offset:256                            // 000000B93C54: D8D80100 0B000019
	ds_load_b32 v12, v25 offset:320                            // 000000B93C5C: D8D80140 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93C64: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B93C68: 56001B08
	s_setprio 1                                                // 000000B93C6C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B93C70: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B93C74: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B93C78: 56061D09
	s_setprio 0                                                // 000000B93C7C: BFB50000
	ds_load_b32 v8, v24 offset:384                             // 000000B93C80: D8D80180 08000018
	ds_load_b32 v9, v24 offset:448                             // 000000B93C88: D8D801C0 09000018
	ds_load_b32 v13, v25 offset:384                            // 000000B93C90: D8D80180 0D000019
	ds_load_b32 v14, v25 offset:448                            // 000000B93C98: D8D801C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93CA0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B93CA4: 56001706
	s_setprio 1                                                // 000000B93CA8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B93CAC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B93CB0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B93CB4: 56061907
	s_setprio 0                                                // 000000B93CB8: BFB50000
	ds_load_b32 v6, v24 offset:512                             // 000000B93CBC: D8D80200 06000018
	ds_load_b32 v7, v24 offset:576                             // 000000B93CC4: D8D80240 07000018
	ds_load_b32 v11, v25 offset:512                            // 000000B93CCC: D8D80200 0B000019
	ds_load_b32 v12, v25 offset:576                            // 000000B93CD4: D8D80240 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93CDC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B93CE0: 56001B08
	s_setprio 1                                                // 000000B93CE4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B93CE8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B93CEC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B93CF0: 56061D09
	s_setprio 0                                                // 000000B93CF4: BFB50000
	ds_load_b32 v8, v24 offset:640                             // 000000B93CF8: D8D80280 08000018
	ds_load_b32 v9, v24 offset:704                             // 000000B93D00: D8D802C0 09000018
	ds_load_b32 v13, v25 offset:640                            // 000000B93D08: D8D80280 0D000019
	ds_load_b32 v14, v25 offset:704                            // 000000B93D10: D8D802C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93D18: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B93D1C: 56001706
	s_setprio 1                                                // 000000B93D20: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B93D24: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B93D28: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B93D2C: 56061907
	s_setprio 0                                                // 000000B93D30: BFB50000
	ds_load_b32 v6, v24 offset:768                             // 000000B93D34: D8D80300 06000018
	ds_load_b32 v7, v24 offset:832                             // 000000B93D3C: D8D80340 07000018
	ds_load_b32 v11, v25 offset:768                            // 000000B93D44: D8D80300 0B000019
	ds_load_b32 v12, v25 offset:832                            // 000000B93D4C: D8D80340 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93D54: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B93D58: 56001B08
	s_setprio 1                                                // 000000B93D5C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B93D60: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B93D64: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B93D68: 56061D09
	s_setprio 0                                                // 000000B93D6C: BFB50000
	ds_load_b32 v8, v24 offset:896                             // 000000B93D70: D8D80380 08000018
	ds_load_b32 v9, v24 offset:960                             // 000000B93D78: D8D803C0 09000018
	ds_load_b32 v13, v25 offset:896                            // 000000B93D80: D8D80380 0D000019
	ds_load_b32 v14, v25 offset:960                            // 000000B93D88: D8D803C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93D90: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B93D94: 56001706
	s_setprio 1                                                // 000000B93D98: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B93D9C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B93DA0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B93DA4: 56061907
	s_setprio 0                                                // 000000B93DA8: BFB50000
	ds_load_b32 v6, v24 offset:1024                            // 000000B93DAC: D8D80400 06000018
	ds_load_b32 v7, v24 offset:1088                            // 000000B93DB4: D8D80440 07000018
	ds_load_b32 v11, v25 offset:1024                           // 000000B93DBC: D8D80400 0B000019
	ds_load_b32 v12, v25 offset:1088                           // 000000B93DC4: D8D80440 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93DCC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B93DD0: 56001B08
	s_setprio 1                                                // 000000B93DD4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B93DD8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B93DDC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B93DE0: 56061D09
	s_setprio 0                                                // 000000B93DE4: BFB50000
	ds_load_b32 v8, v24 offset:1152                            // 000000B93DE8: D8D80480 08000018
	ds_load_b32 v9, v24 offset:1216                            // 000000B93DF0: D8D804C0 09000018
	ds_load_b32 v13, v25 offset:1152                           // 000000B93DF8: D8D80480 0D000019
	ds_load_b32 v14, v25 offset:1216                           // 000000B93E00: D8D804C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93E08: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B93E0C: 56001706
	s_setprio 1                                                // 000000B93E10: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B93E14: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B93E18: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B93E1C: 56061907
	s_setprio 0                                                // 000000B93E20: BFB50000
	ds_load_b32 v6, v24 offset:1280                            // 000000B93E24: D8D80500 06000018
	ds_load_b32 v7, v24 offset:1344                            // 000000B93E2C: D8D80540 07000018
	ds_load_b32 v11, v25 offset:1280                           // 000000B93E34: D8D80500 0B000019
	ds_load_b32 v12, v25 offset:1344                           // 000000B93E3C: D8D80540 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93E44: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B93E48: 56001B08
	s_setprio 1                                                // 000000B93E4C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B93E50: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B93E54: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B93E58: 56061D09
	s_setprio 0                                                // 000000B93E5C: BFB50000
	ds_load_b32 v8, v24 offset:1408                            // 000000B93E60: D8D80580 08000018
	ds_load_b32 v9, v24 offset:1472                            // 000000B93E68: D8D805C0 09000018
	ds_load_b32 v13, v25 offset:1408                           // 000000B93E70: D8D80580 0D000019
	ds_load_b32 v14, v25 offset:1472                           // 000000B93E78: D8D805C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93E80: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B93E84: 56001706
	s_setprio 1                                                // 000000B93E88: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B93E8C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B93E90: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B93E94: 56061907
	s_setprio 0                                                // 000000B93E98: BFB50000
	ds_load_b32 v6, v24 offset:1536                            // 000000B93E9C: D8D80600 06000018
	ds_load_b32 v7, v24 offset:1600                            // 000000B93EA4: D8D80640 07000018
	ds_load_b32 v11, v25 offset:1536                           // 000000B93EAC: D8D80600 0B000019
	ds_load_b32 v12, v25 offset:1600                           // 000000B93EB4: D8D80640 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93EBC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B93EC0: 56001B08
	s_setprio 1                                                // 000000B93EC4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B93EC8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B93ECC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B93ED0: 56061D09
	s_setprio 0                                                // 000000B93ED4: BFB50000
	ds_load_b32 v8, v24 offset:1664                            // 000000B93ED8: D8D80680 08000018
	ds_load_b32 v9, v24 offset:1728                            // 000000B93EE0: D8D806C0 09000018
	ds_load_b32 v13, v25 offset:1664                           // 000000B93EE8: D8D80680 0D000019
	ds_load_b32 v14, v25 offset:1728                           // 000000B93EF0: D8D806C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93EF8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B93EFC: 56001706
	s_setprio 1                                                // 000000B93F00: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B93F04: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B93F08: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B93F0C: 56061907
	s_setprio 0                                                // 000000B93F10: BFB50000
	ds_load_b32 v6, v24 offset:1792                            // 000000B93F14: D8D80700 06000018
	ds_load_b32 v7, v24 offset:1856                            // 000000B93F1C: D8D80740 07000018
	ds_load_b32 v11, v25 offset:1792                           // 000000B93F24: D8D80700 0B000019
	ds_load_b32 v12, v25 offset:1856                           // 000000B93F2C: D8D80740 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93F34: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B93F38: 56001B08
	s_setprio 1                                                // 000000B93F3C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B93F40: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B93F44: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B93F48: 56061D09
	s_setprio 0                                                // 000000B93F4C: BFB50000
	ds_load_b32 v8, v24 offset:1920                            // 000000B93F50: D8D80780 08000018
	ds_load_b32 v9, v24 offset:1984                            // 000000B93F58: D8D807C0 09000018
	ds_load_b32 v13, v25 offset:1920                           // 000000B93F60: D8D80780 0D000019
	ds_load_b32 v14, v25 offset:1984                           // 000000B93F68: D8D807C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B93F70: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B93F74: 56001706
	s_setprio 1                                                // 000000B93F78: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B93F7C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B93F80: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B93F84: 56061907
	s_setprio 0                                                // 000000B93F88: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000B93F8C: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B93F90: 56001B08
	s_setprio 1                                                // 000000B93F94: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B93F98: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B93F9C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B93FA0: 56061D09
	s_setprio 0                                                // 000000B93FA4: BFB50000

0000000000b93fa8 <Summation_End_OptNLL_16>:
	v_lshrrev_b32_e32 v7, 4, v26                               // 000000B93FA8: 320E3484
	v_and_b32_e32 v6, 15, v26                                  // 000000B93FAC: 360C348F
	v_mul_lo_u32 v8, v7, s40                                   // 000000B93FB0: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000B93FB8: D72C0009 00004D07
	s_mul_i32 s52, 32, s2                                      // 000000B93FC0: 963402A0
	v_add_co_u32 v6, vcc_lo, s52, v6                           // 000000B93FC4: D7006A06 00020C34
	s_mul_i32 s54, 32, s3                                      // 000000B93FCC: 963603A0
	v_add_co_u32 v7, vcc_lo, s54, v7                           // 000000B93FD0: D7006A07 00020E36

0000000000b93fd8 <GW_B0_E0_19>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000B93FD8: D647000C 020A0D09
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000B93FE0: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:64      // 000000B93FE8: E0680040 8044010C
	s_mul_i32 s34, s38, 64                                     // 000000B93FF0: 9622C026
	s_add_u32 s16, s16, s34                                    // 000000B93FF4: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000B93FF8: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000B93FFC: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:64      // 000000B94004: E0680040 8044030C
	s_branch label_GW_End_21                                   // 000000B9400C: BFA00000

0000000000b94010 <label_GW_End_21>:
	s_endpgm                                                   // 000000B94010: BFB00000

0000000000b94014 <OptNLL_End_15>:
	ds_load_b32 v8, v24 offset:128                             // 000000B94014: D8D80080 08000018
	ds_load_b32 v9, v24 offset:192                             // 000000B9401C: D8D800C0 09000018
	ds_load_b32 v13, v25 offset:128                            // 000000B94024: D8D80080 0D000019
	ds_load_b32 v14, v25 offset:192                            // 000000B9402C: D8D800C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B94034: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B94038: 56001706
	s_setprio 1                                                // 000000B9403C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B94040: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B94044: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B94048: 56061907
	s_setprio 0                                                // 000000B9404C: BFB50000
	ds_load_b32 v6, v24 offset:256                             // 000000B94050: D8D80100 06000018
	ds_load_b32 v7, v24 offset:320                             // 000000B94058: D8D80140 07000018
	ds_load_b32 v11, v25 offset:256                            // 000000B94060: D8D80100 0B000019
	ds_load_b32 v12, v25 offset:320                            // 000000B94068: D8D80140 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B94070: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B94074: 56001B08
	s_setprio 1                                                // 000000B94078: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B9407C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B94080: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B94084: 56061D09
	s_setprio 0                                                // 000000B94088: BFB50000
	ds_load_b32 v8, v24 offset:384                             // 000000B9408C: D8D80180 08000018
	ds_load_b32 v9, v24 offset:448                             // 000000B94094: D8D801C0 09000018
	ds_load_b32 v13, v25 offset:384                            // 000000B9409C: D8D80180 0D000019
	ds_load_b32 v14, v25 offset:448                            // 000000B940A4: D8D801C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B940AC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B940B0: 56001706
	s_setprio 1                                                // 000000B940B4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B940B8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B940BC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B940C0: 56061907
	s_setprio 0                                                // 000000B940C4: BFB50000
	ds_load_b32 v6, v24 offset:512                             // 000000B940C8: D8D80200 06000018
	ds_load_b32 v7, v24 offset:576                             // 000000B940D0: D8D80240 07000018
	ds_load_b32 v11, v25 offset:512                            // 000000B940D8: D8D80200 0B000019
	ds_load_b32 v12, v25 offset:576                            // 000000B940E0: D8D80240 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B940E8: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B940EC: 56001B08
	s_setprio 1                                                // 000000B940F0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B940F4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B940F8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B940FC: 56061D09
	s_setprio 0                                                // 000000B94100: BFB50000
	ds_load_b32 v8, v24 offset:640                             // 000000B94104: D8D80280 08000018
	ds_load_b32 v9, v24 offset:704                             // 000000B9410C: D8D802C0 09000018
	ds_load_b32 v13, v25 offset:640                            // 000000B94114: D8D80280 0D000019
	ds_load_b32 v14, v25 offset:704                            // 000000B9411C: D8D802C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B94124: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B94128: 56001706
	s_setprio 1                                                // 000000B9412C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B94130: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B94134: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B94138: 56061907
	s_setprio 0                                                // 000000B9413C: BFB50000
	ds_load_b32 v6, v24 offset:768                             // 000000B94140: D8D80300 06000018
	ds_load_b32 v7, v24 offset:832                             // 000000B94148: D8D80340 07000018
	ds_load_b32 v11, v25 offset:768                            // 000000B94150: D8D80300 0B000019
	ds_load_b32 v12, v25 offset:832                            // 000000B94158: D8D80340 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B94160: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B94164: 56001B08
	s_setprio 1                                                // 000000B94168: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B9416C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B94170: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B94174: 56061D09
	s_setprio 0                                                // 000000B94178: BFB50000
	ds_load_b32 v8, v24 offset:896                             // 000000B9417C: D8D80380 08000018
	ds_load_b32 v9, v24 offset:960                             // 000000B94184: D8D803C0 09000018
	ds_load_b32 v13, v25 offset:896                            // 000000B9418C: D8D80380 0D000019
	ds_load_b32 v14, v25 offset:960                            // 000000B94194: D8D803C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B9419C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B941A0: 56001706
	s_setprio 1                                                // 000000B941A4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B941A8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B941AC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B941B0: 56061907
	s_setprio 0                                                // 000000B941B4: BFB50000
	ds_load_b32 v6, v24 offset:1024                            // 000000B941B8: D8D80400 06000018
	ds_load_b32 v7, v24 offset:1088                            // 000000B941C0: D8D80440 07000018
	ds_load_b32 v11, v25 offset:1024                           // 000000B941C8: D8D80400 0B000019
	ds_load_b32 v12, v25 offset:1088                           // 000000B941D0: D8D80440 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B941D8: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B941DC: 56001B08
	s_setprio 1                                                // 000000B941E0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B941E4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B941E8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B941EC: 56061D09
	s_setprio 0                                                // 000000B941F0: BFB50000
	ds_load_b32 v8, v24 offset:1152                            // 000000B941F4: D8D80480 08000018
	ds_load_b32 v9, v24 offset:1216                            // 000000B941FC: D8D804C0 09000018
	ds_load_b32 v13, v25 offset:1152                           // 000000B94204: D8D80480 0D000019
	ds_load_b32 v14, v25 offset:1216                           // 000000B9420C: D8D804C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B94214: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B94218: 56001706
	s_setprio 1                                                // 000000B9421C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B94220: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B94224: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B94228: 56061907
	s_setprio 0                                                // 000000B9422C: BFB50000
	ds_load_b32 v6, v24 offset:1280                            // 000000B94230: D8D80500 06000018
	ds_load_b32 v7, v24 offset:1344                            // 000000B94238: D8D80540 07000018
	ds_load_b32 v11, v25 offset:1280                           // 000000B94240: D8D80500 0B000019
	ds_load_b32 v12, v25 offset:1344                           // 000000B94248: D8D80540 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B94250: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B94254: 56001B08
	s_setprio 1                                                // 000000B94258: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B9425C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B94260: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B94264: 56061D09
	s_setprio 0                                                // 000000B94268: BFB50000
	ds_load_b32 v8, v24 offset:1408                            // 000000B9426C: D8D80580 08000018
	ds_load_b32 v9, v24 offset:1472                            // 000000B94274: D8D805C0 09000018
	ds_load_b32 v13, v25 offset:1408                           // 000000B9427C: D8D80580 0D000019
	ds_load_b32 v14, v25 offset:1472                           // 000000B94284: D8D805C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B9428C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B94290: 56001706
	s_setprio 1                                                // 000000B94294: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B94298: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B9429C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B942A0: 56061907
	s_setprio 0                                                // 000000B942A4: BFB50000
	ds_load_b32 v6, v24 offset:1536                            // 000000B942A8: D8D80600 06000018
	ds_load_b32 v7, v24 offset:1600                            // 000000B942B0: D8D80640 07000018
	ds_load_b32 v11, v25 offset:1536                           // 000000B942B8: D8D80600 0B000019
	ds_load_b32 v12, v25 offset:1600                           // 000000B942C0: D8D80640 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B942C8: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B942CC: 56001B08
	s_setprio 1                                                // 000000B942D0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B942D4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B942D8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B942DC: 56061D09
	s_setprio 0                                                // 000000B942E0: BFB50000
	ds_load_b32 v8, v24 offset:1664                            // 000000B942E4: D8D80680 08000018
	ds_load_b32 v9, v24 offset:1728                            // 000000B942EC: D8D806C0 09000018
	ds_load_b32 v13, v25 offset:1664                           // 000000B942F4: D8D80680 0D000019
	ds_load_b32 v14, v25 offset:1728                           // 000000B942FC: D8D806C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B94304: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B94308: 56001706
	s_setprio 1                                                // 000000B9430C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B94310: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B94314: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B94318: 56061907
	s_setprio 0                                                // 000000B9431C: BFB50000
	ds_load_b32 v6, v24 offset:1792                            // 000000B94320: D8D80700 06000018
	ds_load_b32 v7, v24 offset:1856                            // 000000B94328: D8D80740 07000018
	ds_load_b32 v11, v25 offset:1792                           // 000000B94330: D8D80700 0B000019
	ds_load_b32 v12, v25 offset:1856                           // 000000B94338: D8D80740 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000B94340: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B94344: 56001B08
	s_setprio 1                                                // 000000B94348: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B9434C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B94350: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B94354: 56061D09
	s_setprio 0                                                // 000000B94358: BFB50000
	ds_load_b32 v8, v24 offset:1920                            // 000000B9435C: D8D80780 08000018
	ds_load_b32 v9, v24 offset:1984                            // 000000B94364: D8D807C0 09000018
	ds_load_b32 v13, v25 offset:1920                           // 000000B9436C: D8D80780 0D000019
	ds_load_b32 v14, v25 offset:1984                           // 000000B94374: D8D807C0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000B9437C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B94380: 56001706
	s_setprio 1                                                // 000000B94384: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B94388: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B9438C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B94390: 56061907
	s_setprio 0                                                // 000000B94394: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000B94398: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000B9439C: 56001B08
	s_setprio 1                                                // 000000B943A0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000B943A4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000B943A8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000B943AC: 56061D09
	s_setprio 0                                                // 000000B943B0: BFB50000

0000000000b943b4 <PrefetchGlobalLastIterEnd_5>:
	v_and_b32_e32 v15, 0xf00fff, v15                           // 000000B943B4: 361E1EFF 00F00FFF
	v_and_b32_e32 v16, 0xf00fff, v16                           // 000000B943BC: 362020FF 00F00FFF
	s_and_b32 s5, 15, s49                                      // 000000B943C4: 8B05318F
	s_cmp_eq_u32 s5, 0                                         // 000000B943C8: BF068005
	s_cbranch_scc1 SkipTailLoopL_8                             // 000000B943CC: BFA20036
	s_mov_b32 s6, 0                                            // 000000B943D0: BE860080
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000B943D4: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000B943DC: E0500000 1F421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 000000B943E4: E0500000 80431612
	buffer_load_b32 v23, v18, s[12:15], s32 offen              // 000000B943EC: E0500000 20431712
	s_waitcnt vmcnt(0)                                         // 000000B943F4: BF8903F7
	s_waitcnt_lgkmcnt null, 0x0                                // 000000B943F8: BDFC0000
	s_barrier                                                  // 000000B943FC: BFBD0000
	ds_store_b32 v15, v20                                      // 000000B94400: D8340000 0000140F
	ds_store_b32 v15, v21 offset:1024                          // 000000B94408: D8340400 0000150F
	ds_store_b32 v16, v22                                      // 000000B94410: D8340000 00001610
	ds_store_b32 v16, v23 offset:1024                          // 000000B94418: D8340400 00001710
	s_waitcnt lgkmcnt(0)                                       // 000000B94420: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000B94424: BDFC0000
	s_barrier                                                  // 000000B94428: BFBD0000
	v_and_b32_e32 v24, 0xfff, v24                              // 000000B9442C: 363030FF 00000FFF
	v_and_b32_e32 v25, 0xfff, v25                              // 000000B94434: 363232FF 00000FFF

0000000000b9443c <TailLoopBeginL_6>:
	ds_load_b32 v6, v24                                        // 000000B9443C: D8D80000 06000018
	ds_load_b32 v7, v24 offset:64                              // 000000B94444: D8D80040 07000018
	ds_load_b32 v11, v25                                       // 000000B9444C: D8D80000 0B000019
	ds_load_b32 v12, v25 offset:64                             // 000000B94454: D8D80040 0C000019
	s_mov_b32 s33, 0x80                                        // 000000B9445C: BEA100FF 00000080
	v_add_co_u32 v24, vcc_lo, s33, v24                         // 000000B94464: D7006A18 00023021
	s_mov_b32 s33, 0x80                                        // 000000B9446C: BEA100FF 00000080
	v_add_co_u32 v25, vcc_lo, s33, v25                         // 000000B94474: D7006A19 00023221
	s_waitcnt lgkmcnt(0)                                       // 000000B9447C: BF89FC07
	v_fmac_f32_e32 v0, v6, v11                                 // 000000B94480: 56001706
	s_setprio 1                                                // 000000B94484: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000B94488: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000B9448C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000B94490: 56061907
	s_setprio 0                                                // 000000B94494: BFB50000
	s_sub_i32 s5, s5, 1                                        // 000000B94498: 81858105
	s_add_u32 s6, s6, 1                                        // 000000B9449C: 80068106
	s_cmp_le_i32 s5, 0                                         // 000000B944A0: BF058005
	s_cbranch_scc0 TailLoopBeginL_6                            // 000000B944A4: BFA1FFE5

0000000000b944a8 <TailLoopEndL_7>:
	v_lshrrev_b32_e32 v7, 4, v26                               // 000000B944A8: 320E3484
	v_and_b32_e32 v6, 15, v26                                  // 000000B944AC: 360C348F
	v_mul_lo_u32 v8, v7, s40                                   // 000000B944B0: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000B944B8: D72C0009 00004D07
	s_mul_i32 s52, 32, s2                                      // 000000B944C0: 963402A0
	v_add_co_u32 v6, vcc_lo, s52, v6                           // 000000B944C4: D7006A06 00020C34
	s_mul_i32 s54, 32, s3                                      // 000000B944CC: 963603A0
	v_add_co_u32 v7, vcc_lo, s54, v7                           // 000000B944D0: D7006A07 00020E36
	s_cmpk_eq_u32 s37, 0x0                                     // 000000B944D8: B4A50000
	s_cbranch_scc0 GW_Beta_43                                  // 000000B944DC: BFA1005B
	s_and_b32 s52, 31, s46                                     // 000000B944E0: 8B342E9F
	s_add_u32 s53, -1, s50                                     // 000000B944E4: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000B944E8: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000B944EC: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000B944F0: B5B40000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000B944F4: BFA20018
	s_and_b32 s52, 31, s47                                     // 000000B944F8: 8B342F9F
	s_add_u32 s53, -1, s51                                     // 000000B944FC: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000B94500: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000B94504: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000B94508: B5B40000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000B9450C: BFA20012

0000000000b94510 <GW_B0_E0_31>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000B94510: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000B94518: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000B9451C: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000B94520: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000B94524: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000B94528: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:64      // 000000B94530: E0680040 8044010C
	s_mul_i32 s34, s38, 64                                     // 000000B94538: 9622C026
	s_add_u32 s16, s16, s34                                    // 000000B9453C: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000B94540: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000B94544: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:64      // 000000B9454C: E0680040 8044030C
	s_branch label_0047                                        // 000000B94554: BFA000D3

0000000000b94558 <GW_B0_E1_34>:
	v_cmp_lt_u32_e64 s52, v6, s46                              // 000000B94558: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000B94560: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000B94568: 8B363634
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000B9456C: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s54                        // 000000B94574: D501000C 00DA18C1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000B9457C: D7006A0A 00012106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 000000B94584: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000B9458C: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000B94594: 8B363634
	v_add_lshl_u32 v13, v9, v10, 2                             // 000000B94598: D647000D 020A1509
	v_cndmask_b32_e64 v13, -1, v13, s54                        // 000000B945A0: D501000D 00DA1AC1
	v_add_co_u32 v7, vcc_lo, v7, 16                            // 000000B945A8: D7006A07 00012107
	s_mul_i32 s52, s40, 16                                     // 000000B945B0: 96349028
	v_add_nc_u32_e64 v8, v8, s52                               // 000000B945B4: D5250008 00006908
	s_mul_i32 s52, s38, 16                                     // 000000B945BC: 96349026
	v_add_nc_u32_e64 v9, v9, s52                               // 000000B945C0: D5250009 00006909
	v_cmp_lt_u32_e64 s52, v6, s46                              // 000000B945C8: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000B945D0: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000B945D8: 8B363634
	v_add_lshl_u32 v14, v9, v6, 2                              // 000000B945DC: D647000E 020A0D09
	v_cndmask_b32_e64 v14, -1, v14, s54                        // 000000B945E4: D501000E 00DA1CC1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000B945EC: D7006A0A 00012106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 000000B945F4: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000B945FC: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000B94604: 8B363634
	v_add_lshl_u32 v15, v9, v10, 2                             // 000000B94608: D647000F 020A1509
	v_cndmask_b32_e64 v15, -1, v15, s54                        // 000000B94610: D501000F 00DA1EC1
	v_mul_f32_e32 v0, s36, v0                                  // 000000B94618: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000B9461C: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000B94620: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000B94624: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000B94628: E0680000 8044000C
	buffer_store_b32 v1, v13, s[16:19], 0 offen                // 000000B94630: E0680000 8044010D
	buffer_store_b32 v2, v14, s[16:19], 0 offen                // 000000B94638: E0680000 8044020E
	buffer_store_b32 v3, v15, s[16:19], 0 offen                // 000000B94640: E0680000 8044030F
	s_branch label_0047                                        // 000000B94648: BFA00096

0000000000b9464c <GW_Beta_43>:
	s_and_b32 s52, 31, s46                                     // 000000B9464C: 8B342E9F
	s_add_u32 s53, -1, s50                                     // 000000B94650: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000B94654: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000B94658: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000B9465C: B5B40000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000B94660: BFA20031
	s_and_b32 s52, 31, s47                                     // 000000B94664: 8B342F9F
	s_add_u32 s53, -1, s51                                     // 000000B94668: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000B9466C: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000B94670: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000B94674: B5B40000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000B94678: BFA2002B

0000000000b9467c <GW_B1_E0_38>:
	v_add_lshl_u32 v13, v8, v6, 2                              // 000000B9467C: D647000D 020A0D08
	buffer_load_b32 v14, v13, s[20:23], 0 offen                // 000000B94684: E0500000 80450E0D
	buffer_load_b32 v15, v13, s[20:23], 0 offen offset:64      // 000000B9468C: E0500040 80450F0D
	s_mul_i32 s34, s40, 64                                     // 000000B94694: 9622C028
	s_add_u32 s20, s20, s34                                    // 000000B94698: 80142214
	s_addc_u32 s21, s21, 0                                     // 000000B9469C: 82158015
	buffer_load_b32 v16, v13, s[20:23], 0 offen                // 000000B946A0: E0500000 8045100D
	buffer_load_b32 v17, v13, s[20:23], 0 offen offset:64      // 000000B946A8: E0500040 8045110D
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000B946B0: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000B946B8: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000B946BC: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000B946C0: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000B946C4: 10060624
	s_waitcnt vmcnt(3)                                         // 000000B946C8: BF890FF7
	v_fmac_f32_e64 v0, v14, s37                                // 000000B946CC: D52B0000 00004B0E
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000B946D4: E0680000 8044000C
	s_waitcnt vmcnt(2)                                         // 000000B946DC: BF890BF7
	v_fmac_f32_e64 v1, v15, s37                                // 000000B946E0: D52B0001 00004B0F
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:64      // 000000B946E8: E0680040 8044010C
	s_waitcnt vmcnt(1)                                         // 000000B946F0: BF8907F7
	v_fmac_f32_e64 v2, v16, s37                                // 000000B946F4: D52B0002 00004B10
	s_mul_i32 s34, s38, 64                                     // 000000B946FC: 9622C026
	s_add_u32 s16, s16, s34                                    // 000000B94700: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000B94704: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000B94708: E0680000 8044020C
	s_waitcnt vmcnt(0)                                         // 000000B94710: BF8903F7
	v_fmac_f32_e64 v3, v17, s37                                // 000000B94714: D52B0003 00004B11
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:64      // 000000B9471C: E0680040 8044030C
	s_branch label_0047                                        // 000000B94724: BFA0005F

0000000000b94728 <GW_B1_E1_41>:
	v_cmp_lt_u32_e64 s52, v6, s46                              // 000000B94728: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000B94730: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000B94738: 8B363634
	v_add_lshl_u32 v12, v8, v6, 2                              // 000000B9473C: D647000C 020A0D08
	v_cndmask_b32_e64 v12, -1, v12, s54                        // 000000B94744: D501000C 00DA18C1
	buffer_load_b32 v13, v12, s[20:23], 0 offen                // 000000B9474C: E0500000 80450D0C
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000B94754: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s54                        // 000000B9475C: D501000C 00DA18C1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000B94764: D7006A0A 00012106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 000000B9476C: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000B94774: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000B9477C: 8B363634
	v_add_lshl_u32 v14, v8, v10, 2                             // 000000B94780: D647000E 020A1508
	v_cndmask_b32_e64 v14, -1, v14, s54                        // 000000B94788: D501000E 00DA1CC1
	buffer_load_b32 v15, v14, s[20:23], 0 offen                // 000000B94790: E0500000 80450F0E
	v_add_lshl_u32 v14, v9, v10, 2                             // 000000B94798: D647000E 020A1509
	v_cndmask_b32_e64 v14, -1, v14, s54                        // 000000B947A0: D501000E 00DA1CC1
	v_add_co_u32 v7, vcc_lo, v7, 16                            // 000000B947A8: D7006A07 00012107
	s_mul_i32 s52, s40, 16                                     // 000000B947B0: 96349028
	v_add_nc_u32_e64 v8, v8, s52                               // 000000B947B4: D5250008 00006908
	s_mul_i32 s52, s38, 16                                     // 000000B947BC: 96349026
	v_add_nc_u32_e64 v9, v9, s52                               // 000000B947C0: D5250009 00006909
	v_cmp_lt_u32_e64 s52, v6, s46                              // 000000B947C8: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000B947D0: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000B947D8: 8B363634
	v_add_lshl_u32 v16, v8, v6, 2                              // 000000B947DC: D6470010 020A0D08
	v_cndmask_b32_e64 v16, -1, v16, s54                        // 000000B947E4: D5010010 00DA20C1
	buffer_load_b32 v17, v16, s[20:23], 0 offen                // 000000B947EC: E0500000 80451110
	v_add_lshl_u32 v16, v9, v6, 2                              // 000000B947F4: D6470010 020A0D09
	v_cndmask_b32_e64 v16, -1, v16, s54                        // 000000B947FC: D5010010 00DA20C1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000B94804: D7006A0A 00012106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 000000B9480C: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000B94814: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000B9481C: 8B363634
	v_add_lshl_u32 v18, v8, v10, 2                             // 000000B94820: D6470012 020A1508
	v_cndmask_b32_e64 v18, -1, v18, s54                        // 000000B94828: D5010012 00DA24C1
	buffer_load_b32 v19, v18, s[20:23], 0 offen                // 000000B94830: E0500000 80451312
	v_add_lshl_u32 v18, v9, v10, 2                             // 000000B94838: D6470012 020A1509
	v_cndmask_b32_e64 v18, -1, v18, s54                        // 000000B94840: D5010012 00DA24C1
	v_mul_f32_e32 v0, s36, v0                                  // 000000B94848: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000B9484C: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000B94850: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000B94854: 10060624
	s_waitcnt vmcnt(0)                                         // 000000B94858: BF8903F7
	s_waitcnt_vscnt null, 0x0                                  // 000000B9485C: BC7C0000
	v_fmac_f32_e64 v0, v13, s37                                // 000000B94860: D52B0000 00004B0D
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000B94868: E0680000 8044000C
	v_fmac_f32_e64 v1, v15, s37                                // 000000B94870: D52B0001 00004B0F
	buffer_store_b32 v1, v14, s[16:19], 0 offen                // 000000B94878: E0680000 8044010E
	v_fmac_f32_e64 v2, v17, s37                                // 000000B94880: D52B0002 00004B11
	buffer_store_b32 v2, v16, s[16:19], 0 offen                // 000000B94888: E0680000 80440210
	v_fmac_f32_e64 v3, v19, s37                                // 000000B94890: D52B0003 00004B13
	buffer_store_b32 v3, v18, s[16:19], 0 offen                // 000000B94898: E0680000 80440312
	s_branch label_0047                                        // 000000B948A0: BFA00000

0000000000b948a4 <label_GW_End_42>:
	s_endpgm                                                   // 000000B948A4: BFB00000
		...
