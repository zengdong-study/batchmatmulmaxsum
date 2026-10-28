
/root/batchmatmulmaxsum/implement/hip/results/s0_20261028/code_objects/_code_object0005.o:	file format elf64-amdgpu

Disassembly of section .text:

0000000000d66100 <Cijk_Alik_Bljk_SB_MT16x16x8_SN_1LDSB0_APM1_ABV0_ACED0_AF0EM1_AF1EM1_AMAS0_ASE_ASGT_ASLT_ASM_ASAE01_ASCE01_ASEM1_AAC0_BL1_BS1_CLR0_DTLA0_DTLB0_DTVA0_DTVB0_DVO0_ETSP_EPS1_ELFLR0_EMLL0_FSSC10_FL0_GLVWA1_GLVWB1_GRCGA1_GRCGB1_GRPM1_GRVW1_GSU1_GSUASB_GLS0_ISA1100_IU1_K1_KLA_LBSPPA0_LBSPPB0_LPA0_LPB0_LDL1_LRVW1_LWPMn1_LDW0_FMA_MIAV0_MDA2_MO40_MMFGLC_MKFGSU256_NTA0_NTB0_NTC0_NTD0_NEPBS0_NLCA1_NLCB1_ONLL1_OPLV0_PK0_PAP0_PGR1_PLR1_PKA0_SIA1_SLW1_SS0_SU0_SUM0_SUS0_SCIUI1_SPO0_SRVW0_SSO0_SVW4_SNLL0_TSGRA0_TSGRB0_TT2_2_TLDS0_UMLDSA0_UMLDSB0_U64SL1_USFGROn1_VAW1_VSn1_VW1_VWB1_VFLRP0_WSGRA0_WSGRB0_WS32_WG8_8_1_WGM1_preloaded>:
	s_mov_b32 vcc_hi, 0                                        // 000000D66100: BEEB0080
	s_load_b512 s[24:39], s[0:1], null                         // 000000D66104: F4100600 F8000000
	s_load_b256 s[40:47], s[0:1], 0x40                         // 000000D6610C: F40C0A00 F8000040
	s_load_b128 s[48:51], s[0:1], 0x60                         // 000000D66114: F4080C00 F8000060
	s_mov_b32 m0, 0x800                                        // 000000D6611C: BEFD00FF 00000800
	v_mov_b32_e32 v26, v0                                      // 000000D66124: 7E340300
	v_lshrrev_b32_e32 v0, 3, v26                               // 000000D66128: 32003483
	v_and_b32_e32 v1, 7, v26                                   // 000000D6612C: 36023487
	v_lshrrev_b32_e32 v2, 3, v0                                // 000000D66130: 32040083
	v_and_b32_e32 v3, 7, v0                                    // 000000D66134: 36060087
	v_lshrrev_b32_e32 v0, 6, v26                               // 000000D66138: 32003486
	v_lshlrev_b32_e32 v0, 4, v0                                // 000000D6613C: 30000084
	v_add_lshl_u32 v24, v0, v1, 2                              // 000000D66140: D6470018 020A0300
	v_lshrrev_b32_e32 v0, 6, v26                               // 000000D66148: 32003486
	v_lshlrev_b32_e32 v0, 4, v0                                // 000000D6614C: 30000084
	v_add_lshl_u32 v25, v0, v3, 2                              // 000000D66150: D6470019 020A0700
	v_add_co_u32 v25, vcc_lo, 0x200, v25                       // 000000D66158: D7006A19 000232FF 00000200
	v_lshrrev_b32_e32 v0, 3, v26                               // 000000D66164: 32003483
	v_and_b32_e32 v1, 7, v26                                   // 000000D66168: 36023487
	v_lshrrev_b32_e32 v2, 3, v26                               // 000000D6616C: 32043483
	v_and_b32_e32 v3, 7, v26                                   // 000000D66170: 36063487
	v_mul_u32_u24_e32 v15, 16, v1                              // 000000D66174: 161E0290
	v_add_lshl_u32 v15, v0, v15, 2                             // 000000D66178: D647000F 020A1F00
	v_mul_u32_u24_e32 v16, 16, v3                              // 000000D66180: 16200690
	v_add_lshl_u32 v16, v2, v16, 2                             // 000000D66184: D6470010 020A2102
	v_add_co_u32 v16, vcc_lo, 0x200, v16                       // 000000D6618C: D7006A10 000220FF 00000200
	s_waitcnt lgkmcnt(0)                                       // 000000D66198: BF89FC07
	s_mov_b64 s[20:21], s[30:31]                               // 000000D6619C: BE94011E
	s_mov_b64 s[16:17], s[28:29]                               // 000000D661A0: BE90011C
	s_sub_u32 s8, s32, 4                                       // 000000D661A4: 80888420
	s_subb_u32 s9, s33, 0                                      // 000000D661A8: 82898021
	s_sub_u32 s12, s34, 4                                      // 000000D661AC: 808C8422
	s_subb_u32 s13, s35, 0                                     // 000000D661B0: 828D8023
	v_cmp_eq_f32_e64 vcc_lo, s36, 0                            // 000000D661B4: D412006A 00010024
	s_cbranch_vccz label_AlphaNonZero                          // 000000D661BC: BFA30001
	s_mov_b32 s49, 0                                           // 000000D661C0: BEB10080

0000000000d661c4 <label_AlphaNonZero>:
	v_mul_lo_u32 v6, s42, v0                                   // 000000D661C4: D72C0006 0002002A
	v_add_co_u32 v17, vcc_lo, v1, v6                           // 000000D661CC: D7006A11 00020D01
	v_add_nc_u32_e32 v17, 1, v17                               // 000000D661D4: 4A222281
	v_lshlrev_b32_e32 v17, 2, v17                              // 000000D661D8: 30222282
	s_mul_i32 s31, s42, 8                                      // 000000D661DC: 961F882A
	s_lshl_b32 s31, s31, 2                                     // 000000D661E0: 841F821F
	v_mul_lo_u32 v6, s44, v2                                   // 000000D661E4: D72C0006 0002042C
	v_add_co_u32 v18, vcc_lo, v3, v6                           // 000000D661EC: D7006A12 00020D03
	v_add_nc_u32_e32 v18, 1, v18                               // 000000D661F4: 4A242481
	v_lshlrev_b32_e32 v18, 2, v18                              // 000000D661F8: 30242482
	s_mul_i32 s32, s44, 8                                      // 000000D661FC: 9620882C
	s_lshl_b32 s32, s32, 2                                     // 000000D66200: 84208220
	s_mul_hi_u32 s55, s2, 16                                   // 000000D66204: 96B79002
	s_mul_i32 s54, s2, 16                                      // 000000D66208: 96369002
	s_mul_hi_u32 s55, s54, s42                                 // 000000D6620C: 96B72A36
	s_mul_i32 s54, s54, s42                                    // 000000D66210: 96362A36
	s_sub_u32 s0, s24, s54                                     // 000000D66214: 80803618
	s_subb_u32 s1, s25, s55                                    // 000000D66218: 82813719
	s_lshl_b64 s[0:1], s[0:1], 2                               // 000000D6621C: 84808200
	s_add_u32 s0, s0, 4                                        // 000000D66220: 80008400
	s_addc_u32 s1, s1, 0                                       // 000000D66224: 82018001
	s_cmp_eq_u32 s1, 0                                         // 000000D66228: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000D6622C: 980AC100
	s_mul_hi_u32 s35, s43, s4                                  // 000000D66230: 96A3042B
	s_mul_i32 s34, s43, s4                                     // 000000D66234: 9622042B
	s_add_u32 s54, s54, s34                                    // 000000D66238: 80362236
	s_addc_u32 s55, s55, s35                                   // 000000D6623C: 82372337
	s_lshl_b64 s[54:55], s[54:55], 2                           // 000000D66240: 84B68236
	s_add_u32 s8, s8, s54                                      // 000000D66244: 80083608
	s_addc_u32 s9, s9, s55                                     // 000000D66248: 82093709
	s_mov_b32 s11, 0x31004000                                  // 000000D6624C: BE8B00FF 31004000
	s_mul_hi_u32 s55, s3, 16                                   // 000000D66254: 96B79003
	s_mul_i32 s54, s3, 16                                      // 000000D66258: 96369003
	s_mul_hi_u32 s55, s54, s44                                 // 000000D6625C: 96B72C36
	s_mul_i32 s54, s54, s44                                    // 000000D66260: 96362C36
	s_sub_u32 s28, s26, s54                                    // 000000D66264: 809C361A
	s_subb_u32 s29, s27, s55                                   // 000000D66268: 829D371B
	s_lshl_b64 s[28:29], s[28:29], 2                           // 000000D6626C: 849C821C
	s_add_u32 s28, s28, 4                                      // 000000D66270: 801C841C
	s_addc_u32 s29, s29, 0                                     // 000000D66274: 821D801D
	s_cmp_eq_u32 s29, 0                                        // 000000D66278: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000D6627C: 980EC11C
	s_mul_hi_u32 s35, s45, s4                                  // 000000D66280: 96A3042D
	s_mul_i32 s34, s45, s4                                     // 000000D66284: 9622042D
	s_add_u32 s54, s54, s34                                    // 000000D66288: 80362236
	s_addc_u32 s55, s55, s35                                   // 000000D6628C: 82372337
	s_lshl_b64 s[54:55], s[54:55], 2                           // 000000D66290: 84B68236
	s_add_u32 s12, s12, s54                                    // 000000D66294: 800C360C
	s_addc_u32 s13, s13, s55                                   // 000000D66298: 820D370D
	s_mov_b32 s15, 0x31004000                                  // 000000D6629C: BE8F00FF 31004000
	s_mov_b32 s7, 32                                           // 000000D662A4: BE8700A0
	s_mov_b32 s30, 32                                          // 000000D662A8: BE9E00A0
	s_lshr_b32 s5, s49, 3                                      // 000000D662AC: 85058331
	s_mov_b32 s6, s5                                           // 000000D662B0: BE860005
	s_cmp_eq_u32 s5, 0                                         // 000000D662B4: BF068005
	s_cbranch_scc1 ShadowInitStart_10                          // 000000D662B8: BFA20014
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000D662BC: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000D662C4: E0500000 1F421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 000000D662CC: E0500000 80431612
	buffer_load_b32 v23, v18, s[12:15], s32 offen              // 000000D662D4: E0500000 20431712
	s_add_u32 s8, s8, s7                                       // 000000D662DC: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000D662E0: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000D662E4: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000D662E8: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000D662EC: BF068001
	s_cmov_b32 s10, s0                                         // 000000D662F0: BE8A0200
	s_add_u32 s12, s12, s30                                    // 000000D662F4: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000D662F8: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000D662FC: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000D66300: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000D66304: BF06801D
	s_cmov_b32 s14, s28                                        // 000000D66308: BE8E021C

0000000000d6630c <ShadowInitStart_10>:
	s_mov_b32 s18, 0xfffff000                                  // 000000D6630C: BE9200FF FFFFF000
	s_mov_b32 s19, 0x31004000                                  // 000000D66314: BE9300FF 31004000
	s_mov_b32 s22, 0xfffff000                                  // 000000D6631C: BE9600FF FFFFF000
	s_mov_b32 s23, 0x31004000                                  // 000000D66324: BE9700FF 31004000
	s_mul_i32 s54, 16, s3                                      // 000000D6632C: 96360390
	s_mul_hi_u32 s53, s54, s40                                 // 000000D66330: 96B52836
	s_mul_i32 s52, s54, s40                                    // 000000D66334: 96342836
	s_lshl_b64 s[52:53], s[52:53], 2                           // 000000D66338: 84B48234
	s_add_u32 s20, s20, s52                                    // 000000D6633C: 80143414
	s_addc_u32 s21, s21, s53                                   // 000000D66340: 82153515
	s_mul_hi_u32 s53, s54, s38                                 // 000000D66344: 96B52636
	s_mul_i32 s52, s54, s38                                    // 000000D66348: 96342636
	s_lshl_b64 s[52:53], s[52:53], 2                           // 000000D6634C: 84B48234
	s_add_u32 s16, s16, s52                                    // 000000D66350: 80103410
	s_addc_u32 s17, s17, s53                                   // 000000D66354: 82113511
	s_mul_hi_u32 s53, s4, s41                                  // 000000D66358: 96B52904
	s_mul_i32 s52, s4, s41                                     // 000000D6635C: 96342904
	s_lshl_b64 s[52:53], s[52:53], 2                           // 000000D66360: 84B48234
	s_add_u32 s20, s20, s52                                    // 000000D66364: 80143414
	s_addc_u32 s21, s21, s53                                   // 000000D66368: 82153515
	s_mul_hi_u32 s53, s4, s39                                  // 000000D6636C: 96B52704
	s_mul_i32 s52, s4, s39                                     // 000000D66370: 96342704
	s_lshl_b64 s[52:53], s[52:53], 2                           // 000000D66374: 84B48234
	s_add_u32 s16, s16, s52                                    // 000000D66378: 80103410
	s_addc_u32 s17, s17, s53                                   // 000000D6637C: 82113511
	v_mov_b32_e32 v0, 0                                        // 000000D66380: 7E000280
	v_mov_b32_e32 v1, 0                                        // 000000D66384: 7E020280
	v_mov_b32_e32 v2, 0                                        // 000000D66388: 7E040280
	v_mov_b32_e32 v3, 0                                        // 000000D6638C: 7E060280
	s_cmp_eq_u32 s5, 0                                         // 000000D66390: BF068005
	s_cbranch_scc0 label_NoBranch_11                           // 000000D66394: BFA10006
	s_getpc_b64 s[52:53]                                       // 000000D66398: BEB44700
	s_add_i32 s54, 0x9a4, 4                                    // 000000D6639C: 813684FF 000009A4
	s_add_u32 s52, s52, s54                                    // 000000D663A4: 80343634
	s_addc_u32 s53, s53, 0                                     // 000000D663A8: 82358035
	s_setpc_b64 s[52:53]                                       // 000000D663AC: BE804834

0000000000d663b0 <label_NoBranch_11>:
	s_waitcnt vmcnt(0)                                         // 000000D663B0: BF8903F7
	ds_store_b32 v15, v20                                      // 000000D663B4: D8340000 0000140F
	ds_store_b32 v15, v21 offset:32                            // 000000D663BC: D8340020 0000150F
	ds_store_b32 v16, v22                                      // 000000D663C4: D8340000 00001610
	ds_store_b32 v16, v23 offset:32                            // 000000D663CC: D8340020 00001710
	s_waitcnt lgkmcnt(0)                                       // 000000D663D4: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000D663D8: BDFC0000
	s_barrier                                                  // 000000D663DC: BFBD0000
	ds_load_b32 v6, v24                                        // 000000D663E0: D8D80000 06000018
	ds_load_b32 v7, v24 offset:32                              // 000000D663E8: D8D80020 07000018
	ds_load_b32 v11, v25                                       // 000000D663F0: D8D80000 0B000019
	ds_load_b32 v12, v25 offset:32                             // 000000D663F8: D8D80020 0C000019

0000000000d66400 <openLoopL_12>:
	s_cmp_le_u32 s5, 1                                         // 000000D66400: BF0B8105
	s_cbranch_scc1 LoopEndL_2                                  // 000000D66404: BFA20141

0000000000d66408 <label_0013>:
	ds_load_b32 v8, v24 offset:64                              // 000000D66408: D8D80040 08000018
	ds_load_b32 v9, v24 offset:96                              // 000000D66410: D8D80060 09000018
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000D66418: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000D66420: E0500000 1F421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 000000D66428: E0500000 80431612
	ds_load_b32 v13, v25 offset:64                             // 000000D66430: D8D80040 0D000019
	ds_load_b32 v14, v25 offset:96                             // 000000D66438: D8D80060 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D66440: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D66444: 56001706
	s_setprio 1                                                // 000000D66448: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D6644C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D66450: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D66454: 56061907
	s_setprio 0                                                // 000000D66458: BFB50000
	ds_load_b32 v6, v24 offset:128                             // 000000D6645C: D8D80080 06000018
	ds_load_b32 v7, v24 offset:160                             // 000000D66464: D8D800A0 07000018
	buffer_load_b32 v23, v18, s[12:15], s32 offen              // 000000D6646C: E0500000 20431712
	ds_load_b32 v11, v25 offset:128                            // 000000D66474: D8D80080 0B000019
	ds_load_b32 v12, v25 offset:160                            // 000000D6647C: D8D800A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D66484: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D66488: 56001B08
	s_setprio 1                                                // 000000D6648C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D66490: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D66494: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D66498: 56061D09
	s_setprio 0                                                // 000000D6649C: BFB50000
	ds_load_b32 v8, v24 offset:192                             // 000000D664A0: D8D800C0 08000018
	ds_load_b32 v9, v24 offset:224                             // 000000D664A8: D8D800E0 09000018
	s_add_u32 s8, s8, s7                                       // 000000D664B0: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000D664B4: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000D664B8: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000D664BC: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000D664C0: BF068001
	s_cmov_b32 s10, s0                                         // 000000D664C4: BE8A0200
	ds_load_b32 v13, v25 offset:192                            // 000000D664C8: D8D800C0 0D000019
	ds_load_b32 v14, v25 offset:224                            // 000000D664D0: D8D800E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D664D8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D664DC: 56001706
	s_setprio 1                                                // 000000D664E0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D664E4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D664E8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D664EC: 56061907
	s_setprio 0                                                // 000000D664F0: BFB50000
	ds_load_b32 v6, v24 offset:256                             // 000000D664F4: D8D80100 06000018
	ds_load_b32 v7, v24 offset:288                             // 000000D664FC: D8D80120 07000018
	s_add_u32 s12, s12, s30                                    // 000000D66504: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000D66508: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000D6650C: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000D66510: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000D66514: BF06801D
	s_cmov_b32 s14, s28                                        // 000000D66518: BE8E021C
	ds_load_b32 v11, v25 offset:256                            // 000000D6651C: D8D80100 0B000019
	ds_load_b32 v12, v25 offset:288                            // 000000D66524: D8D80120 0C000019
	s_waitcnt vmcnt(3)                                         // 000000D6652C: BF890FF7
	ds_store_b32 v15, v20 offset:1024                          // 000000D66530: D8340400 0000140F
	s_waitcnt lgkmcnt(5)                                       // 000000D66538: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D6653C: 56001B08
	s_setprio 1                                                // 000000D66540: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D66544: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D66548: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D6654C: 56061D09
	s_setprio 0                                                // 000000D66550: BFB50000
	ds_load_b32 v8, v24 offset:320                             // 000000D66554: D8D80140 08000018
	ds_load_b32 v9, v24 offset:352                             // 000000D6655C: D8D80160 09000018
	ds_load_b32 v13, v25 offset:320                            // 000000D66564: D8D80140 0D000019
	ds_load_b32 v14, v25 offset:352                            // 000000D6656C: D8D80160 0E000019
	s_waitcnt vmcnt(2)                                         // 000000D66574: BF890BF7
	ds_store_b32 v15, v21 offset:1056                          // 000000D66578: D8340420 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000D66580: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D66584: 56001706
	s_setprio 1                                                // 000000D66588: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D6658C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D66590: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D66594: 56061907
	s_setprio 0                                                // 000000D66598: BFB50000
	ds_load_b32 v6, v24 offset:384                             // 000000D6659C: D8D80180 06000018
	ds_load_b32 v7, v24 offset:416                             // 000000D665A4: D8D801A0 07000018
	ds_load_b32 v11, v25 offset:384                            // 000000D665AC: D8D80180 0B000019
	ds_load_b32 v12, v25 offset:416                            // 000000D665B4: D8D801A0 0C000019
	s_waitcnt vmcnt(1)                                         // 000000D665BC: BF8907F7
	ds_store_b32 v16, v22 offset:1024                          // 000000D665C0: D8340400 00001610
	s_waitcnt lgkmcnt(5)                                       // 000000D665C8: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D665CC: 56001B08
	s_setprio 1                                                // 000000D665D0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D665D4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D665D8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D665DC: 56061D09
	s_setprio 0                                                // 000000D665E0: BFB50000
	ds_load_b32 v8, v24 offset:448                             // 000000D665E4: D8D801C0 08000018
	ds_load_b32 v9, v24 offset:480                             // 000000D665EC: D8D801E0 09000018
	ds_load_b32 v13, v25 offset:448                            // 000000D665F4: D8D801C0 0D000019
	ds_load_b32 v14, v25 offset:480                            // 000000D665FC: D8D801E0 0E000019
	s_waitcnt vmcnt(0)                                         // 000000D66604: BF8903F7
	ds_store_b32 v16, v23 offset:1056                          // 000000D66608: D8340420 00001710
	s_waitcnt lgkmcnt(5)                                       // 000000D66610: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D66614: 56001706
	s_setprio 1                                                // 000000D66618: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D6661C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D66620: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D66624: 56061907
	s_setprio 0                                                // 000000D66628: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000D6662C: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000D66630: BDFC0000
	s_barrier                                                  // 000000D66634: BFBD0000
	ds_load_b32 v6, v24 offset:1024                            // 000000D66638: D8D80400 06000018
	ds_load_b32 v7, v24 offset:1056                            // 000000D66640: D8D80420 07000018
	ds_load_b32 v11, v25 offset:1024                           // 000000D66648: D8D80400 0B000019
	ds_load_b32 v12, v25 offset:1056                           // 000000D66650: D8D80420 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D66658: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D6665C: 56001B08
	s_setprio 1                                                // 000000D66660: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D66664: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D66668: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D6666C: 56061D09
	s_setprio 0                                                // 000000D66670: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000D66674: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000D66678: BF008105
	s_cbranch_scc1 LoopEndL_oddexit_3                          // 000000D6667C: BFA2009F

0000000000d66680 <label_0014>:
	ds_load_b32 v8, v24 offset:1088                            // 000000D66680: D8D80440 08000018
	ds_load_b32 v9, v24 offset:1120                            // 000000D66688: D8D80460 09000018
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000D66690: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000D66698: E0500000 1F421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 000000D666A0: E0500000 80431612
	ds_load_b32 v13, v25 offset:1088                           // 000000D666A8: D8D80440 0D000019
	ds_load_b32 v14, v25 offset:1120                           // 000000D666B0: D8D80460 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D666B8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D666BC: 56001706
	s_setprio 1                                                // 000000D666C0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D666C4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D666C8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D666CC: 56061907
	s_setprio 0                                                // 000000D666D0: BFB50000
	ds_load_b32 v6, v24 offset:1152                            // 000000D666D4: D8D80480 06000018
	ds_load_b32 v7, v24 offset:1184                            // 000000D666DC: D8D804A0 07000018
	buffer_load_b32 v23, v18, s[12:15], s32 offen              // 000000D666E4: E0500000 20431712
	ds_load_b32 v11, v25 offset:1152                           // 000000D666EC: D8D80480 0B000019
	ds_load_b32 v12, v25 offset:1184                           // 000000D666F4: D8D804A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D666FC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D66700: 56001B08
	s_setprio 1                                                // 000000D66704: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D66708: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D6670C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D66710: 56061D09
	s_setprio 0                                                // 000000D66714: BFB50000
	ds_load_b32 v8, v24 offset:1216                            // 000000D66718: D8D804C0 08000018
	ds_load_b32 v9, v24 offset:1248                            // 000000D66720: D8D804E0 09000018
	s_add_u32 s8, s8, s7                                       // 000000D66728: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000D6672C: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000D66730: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000D66734: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000D66738: BF068001
	s_cmov_b32 s10, s0                                         // 000000D6673C: BE8A0200
	ds_load_b32 v13, v25 offset:1216                           // 000000D66740: D8D804C0 0D000019
	ds_load_b32 v14, v25 offset:1248                           // 000000D66748: D8D804E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D66750: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D66754: 56001706
	s_setprio 1                                                // 000000D66758: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D6675C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D66760: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D66764: 56061907
	s_setprio 0                                                // 000000D66768: BFB50000
	ds_load_b32 v6, v24 offset:1280                            // 000000D6676C: D8D80500 06000018
	ds_load_b32 v7, v24 offset:1312                            // 000000D66774: D8D80520 07000018
	s_add_u32 s12, s12, s30                                    // 000000D6677C: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000D66780: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000D66784: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000D66788: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000D6678C: BF06801D
	s_cmov_b32 s14, s28                                        // 000000D66790: BE8E021C
	ds_load_b32 v11, v25 offset:1280                           // 000000D66794: D8D80500 0B000019
	ds_load_b32 v12, v25 offset:1312                           // 000000D6679C: D8D80520 0C000019
	s_waitcnt vmcnt(3)                                         // 000000D667A4: BF890FF7
	ds_store_b32 v15, v20                                      // 000000D667A8: D8340000 0000140F
	s_waitcnt lgkmcnt(5)                                       // 000000D667B0: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D667B4: 56001B08
	s_setprio 1                                                // 000000D667B8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D667BC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D667C0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D667C4: 56061D09
	s_setprio 0                                                // 000000D667C8: BFB50000
	ds_load_b32 v8, v24 offset:1344                            // 000000D667CC: D8D80540 08000018
	ds_load_b32 v9, v24 offset:1376                            // 000000D667D4: D8D80560 09000018
	ds_load_b32 v13, v25 offset:1344                           // 000000D667DC: D8D80540 0D000019
	ds_load_b32 v14, v25 offset:1376                           // 000000D667E4: D8D80560 0E000019
	s_waitcnt vmcnt(2)                                         // 000000D667EC: BF890BF7
	ds_store_b32 v15, v21 offset:32                            // 000000D667F0: D8340020 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000D667F8: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D667FC: 56001706
	s_setprio 1                                                // 000000D66800: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D66804: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D66808: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D6680C: 56061907
	s_setprio 0                                                // 000000D66810: BFB50000
	ds_load_b32 v6, v24 offset:1408                            // 000000D66814: D8D80580 06000018
	ds_load_b32 v7, v24 offset:1440                            // 000000D6681C: D8D805A0 07000018
	ds_load_b32 v11, v25 offset:1408                           // 000000D66824: D8D80580 0B000019
	ds_load_b32 v12, v25 offset:1440                           // 000000D6682C: D8D805A0 0C000019
	s_waitcnt vmcnt(1)                                         // 000000D66834: BF8907F7
	ds_store_b32 v16, v22                                      // 000000D66838: D8340000 00001610
	s_waitcnt lgkmcnt(5)                                       // 000000D66840: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D66844: 56001B08
	s_setprio 1                                                // 000000D66848: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D6684C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D66850: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D66854: 56061D09
	s_setprio 0                                                // 000000D66858: BFB50000
	ds_load_b32 v8, v24 offset:1472                            // 000000D6685C: D8D805C0 08000018
	ds_load_b32 v9, v24 offset:1504                            // 000000D66864: D8D805E0 09000018
	ds_load_b32 v13, v25 offset:1472                           // 000000D6686C: D8D805C0 0D000019
	ds_load_b32 v14, v25 offset:1504                           // 000000D66874: D8D805E0 0E000019
	s_waitcnt vmcnt(0)                                         // 000000D6687C: BF8903F7
	ds_store_b32 v16, v23 offset:32                            // 000000D66880: D8340020 00001710
	s_waitcnt lgkmcnt(5)                                       // 000000D66888: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D6688C: 56001706
	s_setprio 1                                                // 000000D66890: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D66894: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D66898: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D6689C: 56061907
	s_setprio 0                                                // 000000D668A0: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000D668A4: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000D668A8: BDFC0000
	s_barrier                                                  // 000000D668AC: BFBD0000
	ds_load_b32 v6, v24                                        // 000000D668B0: D8D80000 06000018
	ds_load_b32 v7, v24 offset:32                              // 000000D668B8: D8D80020 07000018
	ds_load_b32 v11, v25                                       // 000000D668C0: D8D80000 0B000019
	ds_load_b32 v12, v25 offset:32                             // 000000D668C8: D8D80020 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D668D0: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D668D4: 56001B08
	s_setprio 1                                                // 000000D668D8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D668DC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D668E0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D668E4: 56061D09
	s_setprio 0                                                // 000000D668E8: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000D668EC: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000D668F0: BF008105
	s_cbranch_scc0 LoopBeginL_1                                // 000000D668F4: BFA1FEC4

0000000000d668f8 <LoopEndL_evenexit_4>:
	s_branch LoopEndL_2                                        // 000000D668F8: BFA00004

0000000000d668fc <LoopEndL_oddexit_3>:
	v_xor_b32_e32 v24, 0x400, v24                              // 000000D668FC: 3A3030FF 00000400
	v_xor_b32_e32 v25, 0x400, v25                              // 000000D66904: 3A3232FF 00000400

0000000000d6690c <LoopEndL_2>:
	s_cmpk_eq_u32 s37, 0x0                                     // 000000D6690C: B4A50000
	s_cbranch_scc0 OptNLL_End_15                               // 000000D66910: BFA1009C
	s_cmp_eq_u32 s36, 1.0                                      // 000000D66914: BF06F224
	s_cbranch_scc0 OptNLL_End_15                               // 000000D66918: BFA1009A
	s_and_b32 s52, 15, s46                                     // 000000D6691C: 8B342E8F
	s_add_u32 s53, -1, s50                                     // 000000D66920: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000D66924: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000D66928: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000D6692C: B5B40000
	s_cbranch_scc1 OptNLL_End_15                               // 000000D66930: BFA20094
	s_and_b32 s52, 15, s47                                     // 000000D66934: 8B342F8F
	s_add_u32 s53, -1, s51                                     // 000000D66938: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000D6693C: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000D66940: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000D66944: B5B40000
	s_cbranch_scc1 OptNLL_End_15                               // 000000D66948: BFA2008E
	s_and_b32 s53, 7, s49                                      // 000000D6694C: 8B353187
	s_cmp_eq_u32 s53, 0                                        // 000000D66950: BF068035
	s_cbranch_scc0 OptNLL_End_15                               // 000000D66954: BFA1008B
	ds_load_b32 v8, v24 offset:64                              // 000000D66958: D8D80040 08000018
	ds_load_b32 v9, v24 offset:96                              // 000000D66960: D8D80060 09000018
	ds_load_b32 v13, v25 offset:64                             // 000000D66968: D8D80040 0D000019
	ds_load_b32 v14, v25 offset:96                             // 000000D66970: D8D80060 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D66978: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D6697C: 56001706
	s_setprio 1                                                // 000000D66980: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D66984: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D66988: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D6698C: 56061907
	s_setprio 0                                                // 000000D66990: BFB50000
	ds_load_b32 v6, v24 offset:128                             // 000000D66994: D8D80080 06000018
	ds_load_b32 v7, v24 offset:160                             // 000000D6699C: D8D800A0 07000018
	ds_load_b32 v11, v25 offset:128                            // 000000D669A4: D8D80080 0B000019
	ds_load_b32 v12, v25 offset:160                            // 000000D669AC: D8D800A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D669B4: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D669B8: 56001B08
	s_setprio 1                                                // 000000D669BC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D669C0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D669C4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D669C8: 56061D09
	s_setprio 0                                                // 000000D669CC: BFB50000
	ds_load_b32 v8, v24 offset:192                             // 000000D669D0: D8D800C0 08000018
	ds_load_b32 v9, v24 offset:224                             // 000000D669D8: D8D800E0 09000018
	ds_load_b32 v13, v25 offset:192                            // 000000D669E0: D8D800C0 0D000019
	ds_load_b32 v14, v25 offset:224                            // 000000D669E8: D8D800E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D669F0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D669F4: 56001706
	s_setprio 1                                                // 000000D669F8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D669FC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D66A00: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D66A04: 56061907
	s_setprio 0                                                // 000000D66A08: BFB50000
	ds_load_b32 v6, v24 offset:256                             // 000000D66A0C: D8D80100 06000018
	ds_load_b32 v7, v24 offset:288                             // 000000D66A14: D8D80120 07000018
	ds_load_b32 v11, v25 offset:256                            // 000000D66A1C: D8D80100 0B000019
	ds_load_b32 v12, v25 offset:288                            // 000000D66A24: D8D80120 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D66A2C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D66A30: 56001B08
	s_setprio 1                                                // 000000D66A34: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D66A38: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D66A3C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D66A40: 56061D09
	s_setprio 0                                                // 000000D66A44: BFB50000
	ds_load_b32 v8, v24 offset:320                             // 000000D66A48: D8D80140 08000018
	ds_load_b32 v9, v24 offset:352                             // 000000D66A50: D8D80160 09000018
	ds_load_b32 v13, v25 offset:320                            // 000000D66A58: D8D80140 0D000019
	ds_load_b32 v14, v25 offset:352                            // 000000D66A60: D8D80160 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D66A68: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D66A6C: 56001706
	s_setprio 1                                                // 000000D66A70: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D66A74: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D66A78: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D66A7C: 56061907
	s_setprio 0                                                // 000000D66A80: BFB50000
	ds_load_b32 v6, v24 offset:384                             // 000000D66A84: D8D80180 06000018
	ds_load_b32 v7, v24 offset:416                             // 000000D66A8C: D8D801A0 07000018
	ds_load_b32 v11, v25 offset:384                            // 000000D66A94: D8D80180 0B000019
	ds_load_b32 v12, v25 offset:416                            // 000000D66A9C: D8D801A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D66AA4: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D66AA8: 56001B08
	s_setprio 1                                                // 000000D66AAC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D66AB0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D66AB4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D66AB8: 56061D09
	s_setprio 0                                                // 000000D66ABC: BFB50000
	ds_load_b32 v8, v24 offset:448                             // 000000D66AC0: D8D801C0 08000018
	ds_load_b32 v9, v24 offset:480                             // 000000D66AC8: D8D801E0 09000018
	ds_load_b32 v13, v25 offset:448                            // 000000D66AD0: D8D801C0 0D000019
	ds_load_b32 v14, v25 offset:480                            // 000000D66AD8: D8D801E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D66AE0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D66AE4: 56001706
	s_setprio 1                                                // 000000D66AE8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D66AEC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D66AF0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D66AF4: 56061907
	s_setprio 0                                                // 000000D66AF8: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000D66AFC: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D66B00: 56001B08
	s_setprio 1                                                // 000000D66B04: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D66B08: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D66B0C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D66B10: 56061D09
	s_setprio 0                                                // 000000D66B14: BFB50000

0000000000d66b18 <Summation_End_OptNLL_16>:
	v_lshrrev_b32_e32 v7, 3, v26                               // 000000D66B18: 320E3483
	v_and_b32_e32 v6, 7, v26                                   // 000000D66B1C: 360C3487
	v_mul_lo_u32 v8, v7, s40                                   // 000000D66B20: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000D66B28: D72C0009 00004D07
	s_mul_i32 s52, 16, s2                                      // 000000D66B30: 96340290
	v_add_co_u32 v6, vcc_lo, s52, v6                           // 000000D66B34: D7006A06 00020C34
	s_mul_i32 s54, 16, s3                                      // 000000D66B3C: 96360390
	v_add_co_u32 v7, vcc_lo, s54, v7                           // 000000D66B40: D7006A07 00020E36

0000000000d66b48 <GW_B0_E0_19>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000D66B48: D647000C 020A0D09
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000D66B50: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:32      // 000000D66B58: E0680020 8044010C
	s_mul_i32 s34, s38, 32                                     // 000000D66B60: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000D66B64: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000D66B68: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000D66B6C: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:32      // 000000D66B74: E0680020 8044030C
	s_branch label_GW_End_21                                   // 000000D66B7C: BFA00000

0000000000d66b80 <label_GW_End_21>:
	s_endpgm                                                   // 000000D66B80: BFB00000

0000000000d66b84 <OptNLL_End_15>:
	ds_load_b32 v8, v24 offset:64                              // 000000D66B84: D8D80040 08000018
	ds_load_b32 v9, v24 offset:96                              // 000000D66B8C: D8D80060 09000018
	ds_load_b32 v13, v25 offset:64                             // 000000D66B94: D8D80040 0D000019
	ds_load_b32 v14, v25 offset:96                             // 000000D66B9C: D8D80060 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D66BA4: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D66BA8: 56001706
	s_setprio 1                                                // 000000D66BAC: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D66BB0: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D66BB4: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D66BB8: 56061907
	s_setprio 0                                                // 000000D66BBC: BFB50000
	ds_load_b32 v6, v24 offset:128                             // 000000D66BC0: D8D80080 06000018
	ds_load_b32 v7, v24 offset:160                             // 000000D66BC8: D8D800A0 07000018
	ds_load_b32 v11, v25 offset:128                            // 000000D66BD0: D8D80080 0B000019
	ds_load_b32 v12, v25 offset:160                            // 000000D66BD8: D8D800A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D66BE0: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D66BE4: 56001B08
	s_setprio 1                                                // 000000D66BE8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D66BEC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D66BF0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D66BF4: 56061D09
	s_setprio 0                                                // 000000D66BF8: BFB50000
	ds_load_b32 v8, v24 offset:192                             // 000000D66BFC: D8D800C0 08000018
	ds_load_b32 v9, v24 offset:224                             // 000000D66C04: D8D800E0 09000018
	ds_load_b32 v13, v25 offset:192                            // 000000D66C0C: D8D800C0 0D000019
	ds_load_b32 v14, v25 offset:224                            // 000000D66C14: D8D800E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D66C1C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D66C20: 56001706
	s_setprio 1                                                // 000000D66C24: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D66C28: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D66C2C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D66C30: 56061907
	s_setprio 0                                                // 000000D66C34: BFB50000
	ds_load_b32 v6, v24 offset:256                             // 000000D66C38: D8D80100 06000018
	ds_load_b32 v7, v24 offset:288                             // 000000D66C40: D8D80120 07000018
	ds_load_b32 v11, v25 offset:256                            // 000000D66C48: D8D80100 0B000019
	ds_load_b32 v12, v25 offset:288                            // 000000D66C50: D8D80120 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D66C58: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D66C5C: 56001B08
	s_setprio 1                                                // 000000D66C60: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D66C64: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D66C68: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D66C6C: 56061D09
	s_setprio 0                                                // 000000D66C70: BFB50000
	ds_load_b32 v8, v24 offset:320                             // 000000D66C74: D8D80140 08000018
	ds_load_b32 v9, v24 offset:352                             // 000000D66C7C: D8D80160 09000018
	ds_load_b32 v13, v25 offset:320                            // 000000D66C84: D8D80140 0D000019
	ds_load_b32 v14, v25 offset:352                            // 000000D66C8C: D8D80160 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D66C94: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D66C98: 56001706
	s_setprio 1                                                // 000000D66C9C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D66CA0: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D66CA4: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D66CA8: 56061907
	s_setprio 0                                                // 000000D66CAC: BFB50000
	ds_load_b32 v6, v24 offset:384                             // 000000D66CB0: D8D80180 06000018
	ds_load_b32 v7, v24 offset:416                             // 000000D66CB8: D8D801A0 07000018
	ds_load_b32 v11, v25 offset:384                            // 000000D66CC0: D8D80180 0B000019
	ds_load_b32 v12, v25 offset:416                            // 000000D66CC8: D8D801A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000D66CD0: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D66CD4: 56001B08
	s_setprio 1                                                // 000000D66CD8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D66CDC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D66CE0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D66CE4: 56061D09
	s_setprio 0                                                // 000000D66CE8: BFB50000
	ds_load_b32 v8, v24 offset:448                             // 000000D66CEC: D8D801C0 08000018
	ds_load_b32 v9, v24 offset:480                             // 000000D66CF4: D8D801E0 09000018
	ds_load_b32 v13, v25 offset:448                            // 000000D66CFC: D8D801C0 0D000019
	ds_load_b32 v14, v25 offset:480                            // 000000D66D04: D8D801E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000D66D0C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D66D10: 56001706
	s_setprio 1                                                // 000000D66D14: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D66D18: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D66D1C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D66D20: 56061907
	s_setprio 0                                                // 000000D66D24: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000D66D28: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000D66D2C: 56001B08
	s_setprio 1                                                // 000000D66D30: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000D66D34: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000D66D38: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000D66D3C: 56061D09
	s_setprio 0                                                // 000000D66D40: BFB50000

0000000000d66d44 <PrefetchGlobalLastIterEnd_5>:
	v_and_b32_e32 v15, 0xf003ff, v15                           // 000000D66D44: 361E1EFF 00F003FF
	v_and_b32_e32 v16, 0xf003ff, v16                           // 000000D66D4C: 362020FF 00F003FF
	s_and_b32 s5, 7, s49                                       // 000000D66D54: 8B053187
	s_cmp_eq_u32 s5, 0                                         // 000000D66D58: BF068005
	s_cbranch_scc1 SkipTailLoopL_8                             // 000000D66D5C: BFA20034
	s_mov_b32 s6, 0                                            // 000000D66D60: BE860080
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000D66D64: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000D66D6C: E0500000 1F421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 000000D66D74: E0500000 80431612
	buffer_load_b32 v23, v18, s[12:15], s32 offen              // 000000D66D7C: E0500000 20431712
	s_waitcnt vmcnt(0)                                         // 000000D66D84: BF8903F7
	s_waitcnt_lgkmcnt null, 0x0                                // 000000D66D88: BDFC0000
	s_barrier                                                  // 000000D66D8C: BFBD0000
	ds_store_b32 v15, v20                                      // 000000D66D90: D8340000 0000140F
	ds_store_b32 v15, v21 offset:32                            // 000000D66D98: D8340020 0000150F
	ds_store_b32 v16, v22                                      // 000000D66DA0: D8340000 00001610
	ds_store_b32 v16, v23 offset:32                            // 000000D66DA8: D8340020 00001710
	s_waitcnt lgkmcnt(0)                                       // 000000D66DB0: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000D66DB4: BDFC0000
	s_barrier                                                  // 000000D66DB8: BFBD0000
	v_and_b32_e32 v24, 0x3ff, v24                              // 000000D66DBC: 363030FF 000003FF
	v_and_b32_e32 v25, 0x3ff, v25                              // 000000D66DC4: 363232FF 000003FF

0000000000d66dcc <TailLoopBeginL_6>:
	ds_load_b32 v6, v24                                        // 000000D66DCC: D8D80000 06000018
	ds_load_b32 v7, v24 offset:32                              // 000000D66DD4: D8D80020 07000018
	ds_load_b32 v11, v25                                       // 000000D66DDC: D8D80000 0B000019
	ds_load_b32 v12, v25 offset:32                             // 000000D66DE4: D8D80020 0C000019
	s_mov_b32 s33, 64                                          // 000000D66DEC: BEA100C0
	v_add_co_u32 v24, vcc_lo, s33, v24                         // 000000D66DF0: D7006A18 00023021
	s_mov_b32 s33, 64                                          // 000000D66DF8: BEA100C0
	v_add_co_u32 v25, vcc_lo, s33, v25                         // 000000D66DFC: D7006A19 00023221
	s_waitcnt lgkmcnt(0)                                       // 000000D66E04: BF89FC07
	v_fmac_f32_e32 v0, v6, v11                                 // 000000D66E08: 56001706
	s_setprio 1                                                // 000000D66E0C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000D66E10: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000D66E14: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000D66E18: 56061907
	s_setprio 0                                                // 000000D66E1C: BFB50000
	s_sub_i32 s5, s5, 1                                        // 000000D66E20: 81858105
	s_add_u32 s6, s6, 1                                        // 000000D66E24: 80068106
	s_cmp_le_i32 s5, 0                                         // 000000D66E28: BF058005
	s_cbranch_scc0 TailLoopBeginL_6                            // 000000D66E2C: BFA1FFE7

0000000000d66e30 <TailLoopEndL_7>:
	v_lshrrev_b32_e32 v7, 3, v26                               // 000000D66E30: 320E3483
	v_and_b32_e32 v6, 7, v26                                   // 000000D66E34: 360C3487
	v_mul_lo_u32 v8, v7, s40                                   // 000000D66E38: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000D66E40: D72C0009 00004D07
	s_mul_i32 s52, 16, s2                                      // 000000D66E48: 96340290
	v_add_co_u32 v6, vcc_lo, s52, v6                           // 000000D66E4C: D7006A06 00020C34
	s_mul_i32 s54, 16, s3                                      // 000000D66E54: 96360390
	v_add_co_u32 v7, vcc_lo, s54, v7                           // 000000D66E58: D7006A07 00020E36
	s_cmpk_eq_u32 s37, 0x0                                     // 000000D66E60: B4A50000
	s_cbranch_scc0 GW_Beta_43                                  // 000000D66E64: BFA1005B
	s_and_b32 s52, 15, s46                                     // 000000D66E68: 8B342E8F
	s_add_u32 s53, -1, s50                                     // 000000D66E6C: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000D66E70: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000D66E74: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000D66E78: B5B40000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000D66E7C: BFA20018
	s_and_b32 s52, 15, s47                                     // 000000D66E80: 8B342F8F
	s_add_u32 s53, -1, s51                                     // 000000D66E84: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000D66E88: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000D66E8C: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000D66E90: B5B40000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000D66E94: BFA20012

0000000000d66e98 <GW_B0_E0_31>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000D66E98: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000D66EA0: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000D66EA4: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000D66EA8: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000D66EAC: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000D66EB0: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:32      // 000000D66EB8: E0680020 8044010C
	s_mul_i32 s34, s38, 32                                     // 000000D66EC0: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000D66EC4: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000D66EC8: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000D66ECC: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:32      // 000000D66ED4: E0680020 8044030C
	s_branch label_0047                                        // 000000D66EDC: BFA000D3

0000000000d66ee0 <GW_B0_E1_34>:
	v_cmp_lt_u32_e64 s52, v6, s46                              // 000000D66EE0: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000D66EE8: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000D66EF0: 8B363634
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000D66EF4: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s54                        // 000000D66EFC: D501000C 00DA18C1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 000000D66F04: D7006A0A 00011106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 000000D66F0C: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000D66F14: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000D66F1C: 8B363634
	v_add_lshl_u32 v13, v9, v10, 2                             // 000000D66F20: D647000D 020A1509
	v_cndmask_b32_e64 v13, -1, v13, s54                        // 000000D66F28: D501000D 00DA1AC1
	v_add_co_u32 v7, vcc_lo, v7, 8                             // 000000D66F30: D7006A07 00011107
	s_mul_i32 s52, s40, 8                                      // 000000D66F38: 96348828
	v_add_nc_u32_e64 v8, v8, s52                               // 000000D66F3C: D5250008 00006908
	s_mul_i32 s52, s38, 8                                      // 000000D66F44: 96348826
	v_add_nc_u32_e64 v9, v9, s52                               // 000000D66F48: D5250009 00006909
	v_cmp_lt_u32_e64 s52, v6, s46                              // 000000D66F50: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000D66F58: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000D66F60: 8B363634
	v_add_lshl_u32 v14, v9, v6, 2                              // 000000D66F64: D647000E 020A0D09
	v_cndmask_b32_e64 v14, -1, v14, s54                        // 000000D66F6C: D501000E 00DA1CC1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 000000D66F74: D7006A0A 00011106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 000000D66F7C: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000D66F84: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000D66F8C: 8B363634
	v_add_lshl_u32 v15, v9, v10, 2                             // 000000D66F90: D647000F 020A1509
	v_cndmask_b32_e64 v15, -1, v15, s54                        // 000000D66F98: D501000F 00DA1EC1
	v_mul_f32_e32 v0, s36, v0                                  // 000000D66FA0: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000D66FA4: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000D66FA8: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000D66FAC: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000D66FB0: E0680000 8044000C
	buffer_store_b32 v1, v13, s[16:19], 0 offen                // 000000D66FB8: E0680000 8044010D
	buffer_store_b32 v2, v14, s[16:19], 0 offen                // 000000D66FC0: E0680000 8044020E
	buffer_store_b32 v3, v15, s[16:19], 0 offen                // 000000D66FC8: E0680000 8044030F
	s_branch label_0047                                        // 000000D66FD0: BFA00096

0000000000d66fd4 <GW_Beta_43>:
	s_and_b32 s52, 15, s46                                     // 000000D66FD4: 8B342E8F
	s_add_u32 s53, -1, s50                                     // 000000D66FD8: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000D66FDC: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000D66FE0: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000D66FE4: B5B40000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000D66FE8: BFA20031
	s_and_b32 s52, 15, s47                                     // 000000D66FEC: 8B342F8F
	s_add_u32 s53, -1, s51                                     // 000000D66FF0: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000D66FF4: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000D66FF8: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000D66FFC: B5B40000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000D67000: BFA2002B

0000000000d67004 <GW_B1_E0_38>:
	v_add_lshl_u32 v13, v8, v6, 2                              // 000000D67004: D647000D 020A0D08
	buffer_load_b32 v14, v13, s[20:23], 0 offen                // 000000D6700C: E0500000 80450E0D
	buffer_load_b32 v15, v13, s[20:23], 0 offen offset:32      // 000000D67014: E0500020 80450F0D
	s_mul_i32 s34, s40, 32                                     // 000000D6701C: 9622A028
	s_add_u32 s20, s20, s34                                    // 000000D67020: 80142214
	s_addc_u32 s21, s21, 0                                     // 000000D67024: 82158015
	buffer_load_b32 v16, v13, s[20:23], 0 offen                // 000000D67028: E0500000 8045100D
	buffer_load_b32 v17, v13, s[20:23], 0 offen offset:32      // 000000D67030: E0500020 8045110D
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000D67038: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000D67040: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000D67044: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000D67048: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000D6704C: 10060624
	s_waitcnt vmcnt(3)                                         // 000000D67050: BF890FF7
	v_fmac_f32_e64 v0, v14, s37                                // 000000D67054: D52B0000 00004B0E
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000D6705C: E0680000 8044000C
	s_waitcnt vmcnt(2)                                         // 000000D67064: BF890BF7
	v_fmac_f32_e64 v1, v15, s37                                // 000000D67068: D52B0001 00004B0F
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:32      // 000000D67070: E0680020 8044010C
	s_waitcnt vmcnt(1)                                         // 000000D67078: BF8907F7
	v_fmac_f32_e64 v2, v16, s37                                // 000000D6707C: D52B0002 00004B10
	s_mul_i32 s34, s38, 32                                     // 000000D67084: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000D67088: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000D6708C: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000D67090: E0680000 8044020C
	s_waitcnt vmcnt(0)                                         // 000000D67098: BF8903F7
	v_fmac_f32_e64 v3, v17, s37                                // 000000D6709C: D52B0003 00004B11
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:32      // 000000D670A4: E0680020 8044030C
	s_branch label_0047                                        // 000000D670AC: BFA0005F

0000000000d670b0 <GW_B1_E1_41>:
	v_cmp_lt_u32_e64 s52, v6, s46                              // 000000D670B0: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000D670B8: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000D670C0: 8B363634
	v_add_lshl_u32 v12, v8, v6, 2                              // 000000D670C4: D647000C 020A0D08
	v_cndmask_b32_e64 v12, -1, v12, s54                        // 000000D670CC: D501000C 00DA18C1
	buffer_load_b32 v13, v12, s[20:23], 0 offen                // 000000D670D4: E0500000 80450D0C
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000D670DC: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s54                        // 000000D670E4: D501000C 00DA18C1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 000000D670EC: D7006A0A 00011106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 000000D670F4: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000D670FC: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000D67104: 8B363634
	v_add_lshl_u32 v14, v8, v10, 2                             // 000000D67108: D647000E 020A1508
	v_cndmask_b32_e64 v14, -1, v14, s54                        // 000000D67110: D501000E 00DA1CC1
	buffer_load_b32 v15, v14, s[20:23], 0 offen                // 000000D67118: E0500000 80450F0E
	v_add_lshl_u32 v14, v9, v10, 2                             // 000000D67120: D647000E 020A1509
	v_cndmask_b32_e64 v14, -1, v14, s54                        // 000000D67128: D501000E 00DA1CC1
	v_add_co_u32 v7, vcc_lo, v7, 8                             // 000000D67130: D7006A07 00011107
	s_mul_i32 s52, s40, 8                                      // 000000D67138: 96348828
	v_add_nc_u32_e64 v8, v8, s52                               // 000000D6713C: D5250008 00006908
	s_mul_i32 s52, s38, 8                                      // 000000D67144: 96348826
	v_add_nc_u32_e64 v9, v9, s52                               // 000000D67148: D5250009 00006909
	v_cmp_lt_u32_e64 s52, v6, s46                              // 000000D67150: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000D67158: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000D67160: 8B363634
	v_add_lshl_u32 v16, v8, v6, 2                              // 000000D67164: D6470010 020A0D08
	v_cndmask_b32_e64 v16, -1, v16, s54                        // 000000D6716C: D5010010 00DA20C1
	buffer_load_b32 v17, v16, s[20:23], 0 offen                // 000000D67174: E0500000 80451110
	v_add_lshl_u32 v16, v9, v6, 2                              // 000000D6717C: D6470010 020A0D09
	v_cndmask_b32_e64 v16, -1, v16, s54                        // 000000D67184: D5010010 00DA20C1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 000000D6718C: D7006A0A 00011106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 000000D67194: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000D6719C: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000D671A4: 8B363634
	v_add_lshl_u32 v18, v8, v10, 2                             // 000000D671A8: D6470012 020A1508
	v_cndmask_b32_e64 v18, -1, v18, s54                        // 000000D671B0: D5010012 00DA24C1
	buffer_load_b32 v19, v18, s[20:23], 0 offen                // 000000D671B8: E0500000 80451312
	v_add_lshl_u32 v18, v9, v10, 2                             // 000000D671C0: D6470012 020A1509
	v_cndmask_b32_e64 v18, -1, v18, s54                        // 000000D671C8: D5010012 00DA24C1
	v_mul_f32_e32 v0, s36, v0                                  // 000000D671D0: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000D671D4: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000D671D8: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000D671DC: 10060624
	s_waitcnt vmcnt(0)                                         // 000000D671E0: BF8903F7
	s_waitcnt_vscnt null, 0x0                                  // 000000D671E4: BC7C0000
	v_fmac_f32_e64 v0, v13, s37                                // 000000D671E8: D52B0000 00004B0D
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000D671F0: E0680000 8044000C
	v_fmac_f32_e64 v1, v15, s37                                // 000000D671F8: D52B0001 00004B0F
	buffer_store_b32 v1, v14, s[16:19], 0 offen                // 000000D67200: E0680000 8044010E
	v_fmac_f32_e64 v2, v17, s37                                // 000000D67208: D52B0002 00004B11
	buffer_store_b32 v2, v16, s[16:19], 0 offen                // 000000D67210: E0680000 80440210
	v_fmac_f32_e64 v3, v19, s37                                // 000000D67218: D52B0003 00004B13
	buffer_store_b32 v3, v18, s[16:19], 0 offen                // 000000D67220: E0680000 80440312
	s_branch label_0047                                        // 000000D67228: BFA00000

0000000000d6722c <label_GW_End_42>:
	s_endpgm                                                   // 000000D6722C: BFB00000
		...
