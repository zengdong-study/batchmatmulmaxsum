
/root/batchmatmulmaxsum/implement/hip/results/s0_20261028/code_objects/_code_object0005.o:	file format elf64-amdgpu

Disassembly of section .text:

0000000000d93200 <Cijk_Alik_Bljk_SB_MT64x64x8_SN_1LDSB0_APM1_ABV0_ACED0_AF0EM1_AF1EM1_AMAS0_ASE_ASGT_ASLT_ASM_ASAE01_ASCE01_ASEM1_AAC0_BL1_BS1_CLR0_DTLA0_DTLB0_DTVA0_DTVB0_DVO0_ETSP_EPS1_ELFLR0_EMLL0_FSSC10_FL0_GLVWA1_GLVWB1_GRCGA1_GRCGB1_GRPM1_GRVW1_GSU1_GSUASB_GLS0_ISA1100_IU1_K1_KLA_LBSPPA0_LBSPPB0_LPA0_LPB0_LDL1_LRVW1_LWPMn1_LDW0_FMA_MIAV0_MDA2_MO40_MMFGLC_MKFGSU256_NTA0_NTB0_NTC0_NTD0_NEPBS0_NLCA1_NLCB1_ONLL1_OPLV0_PK0_PAP0_PGR1_PLR1_PKA0_SIA1_SLW1_SS0_SU0_SUM0_SUS0_SCIUI1_SPO0_SRVW0_SSO0_SVW4_SNLL0_TSGRA0_TSGRB0_TT4_4_TLDS0_UMLDSA0_UMLDSB0_U64SL1_USFGROn1_VAW1_VSn1_VW1_VWB1_VFLRP0_WSGRA0_WSGRB0_WS32_WG16_16_1_WGM4_preloaded>:
	s_mov_b32 vcc_hi, 0                                        // 000000D93200: BEEB0080
	s_load_b512 s[24:39], s[0:1], null                         // 000000D93204: F4100600 F8000000
	s_load_b256 s[40:47], s[0:1], 0x40                         // 000000D9320C: F40C0A00 F8000040
	s_load_b128 s[48:51], s[0:1], 0x60                         // 000000D93214: F4080C00 F8000060
	s_load_b64 s[52:53], s[0:1], 0x70                          // 000000D9321C: F4040D00 F8000070
	s_load_b32 s54, s[0:1], 0x78                               // 000000D93224: F4000D80 F8000078
	s_mov_b32 m0, 0x2000                                       // 000000D9322C: BEFD00FF 00002000
	v_mov_b32_e32 v46, v0                                      // 000000D93234: 7E5C0300
	v_lshrrev_b32_e32 v0, 4, v46                               // 000000D93238: 32005C84
	v_and_b32_e32 v1, 15, v46                                  // 000000D9323C: 36025C8F
	v_lshrrev_b32_e32 v2, 4, v0                                // 000000D93240: 32040084
	v_and_b32_e32 v3, 15, v0                                   // 000000D93244: 3606008F
	v_lshrrev_b32_e32 v0, 8, v46                               // 000000D93248: 32005C88
	v_lshlrev_b32_e32 v0, 6, v0                                // 000000D9324C: 30000086
	v_add_lshl_u32 v44, v0, v1, 2                              // 000000D93250: D647002C 020A0300
	v_lshrrev_b32_e32 v0, 8, v46                               // 000000D93258: 32005C88
	v_lshlrev_b32_e32 v0, 6, v0                                // 000000D9325C: 30000086
	v_add_lshl_u32 v45, v0, v3, 2                              // 000000D93260: D647002D 020A0700
	v_add_co_u32 v45, vcc_lo, 0x800, v45                       // 000000D93268: D7006A2D 00025AFF 00000800
	v_lshrrev_b32_e32 v0, 3, v46                               // 000000D93274: 32005C83
	v_and_b32_e32 v1, 7, v46                                   // 000000D93278: 36025C87
	v_lshrrev_b32_e32 v2, 3, v46                               // 000000D9327C: 32045C83
	v_and_b32_e32 v3, 7, v46                                   // 000000D93280: 36065C87
	v_mul_u32_u24_e32 v35, 64, v1                              // 000000D93284: 164602C0
	v_add_lshl_u32 v35, v0, v35, 2                             // 000000D93288: D6470023 020A4700
	v_mul_u32_u24_e32 v36, 64, v3                              // 000000D93290: 164806C0
	v_add_lshl_u32 v36, v2, v36, 2                             // 000000D93294: D6470024 020A4902
	v_add_co_u32 v36, vcc_lo, 0x800, v36                       // 000000D9329C: D7006A24 000248FF 00000800
	s_waitcnt lgkmcnt(0)                                       // 000000D932A8: BF89FC07
	s_mov_b64 s[20:21], s[30:31]                               // 000000D932AC: BE94011E
	s_mov_b64 s[16:17], s[28:29]                               // 000000D932B0: BE90011C
	s_sub_u32 s8, s32, 4                                       // 000000D932B4: 80888420
	s_subb_u32 s9, s33, 0                                      // 000000D932B8: 82898021
	s_sub_u32 s12, s34, 4                                      // 000000D932BC: 808C8422
	s_subb_u32 s13, s35, 0                                     // 000000D932C0: 828D8023
	v_cmp_eq_f32_e64 vcc_lo, s36, 0                            // 000000D932C4: D412006A 00010024
	s_cbranch_vccz label_AlphaNonZero                          // 000000D932CC: BFA30001
	s_mov_b32 s49, 0                                           // 000000D932D0: BEB10080

0000000000d932d4 <label_AlphaNonZero>:
	s_mov_b32 s61, 0x20000001                                  // 000000D932D4: BEBD00FF 20000001
	s_mul_hi_u32 s59, s3, s61                                  // 000000D932DC: 96BB3D03
	s_mul_i32 s58, s3, s61                                     // 000000D932E0: 963A3D03
	s_lshr_b64 s[58:59], s[58:59], 31                          // 000000D932E4: 85BA9F3A
	s_mul_i32 s59, s58, 4                                      // 000000D932E8: 963B843A
	s_sub_u32 s59, s3, s59                                     // 000000D932EC: 80BB3B03
	s_mul_i32 s59, s59, s50                                    // 000000D932F0: 963B323B
	s_add_u32 s59, s59, s2                                     // 000000D932F4: 803B023B
	s_cmp_ge_u32 s58, s52                                      // 000000D932F8: BF09343A
	s_cmov_b32 s61, s54                                        // 000000D932FC: BEBD0236
	s_cselect_b32 s60, s53, 4                                  // 000000D93300: 983C8435
	s_mul_hi_u32 s3, s59, s61                                  // 000000D93304: 96833D3B
	s_mul_i32 s2, s59, s61                                     // 000000D93308: 96023D3B
	s_lshr_b64 s[2:3], s[2:3], 31                              // 000000D9330C: 85829F02
	s_mul_i32 s3, s2, s60                                      // 000000D93310: 96033C02
	s_sub_u32 s3, s59, s3                                      // 000000D93314: 8083033B
	s_mul_i32 s58, s58, 4                                      // 000000D93318: 963A843A
	s_add_u32 s3, s3, s58                                      // 000000D9331C: 80033A03
	v_mul_lo_u32 v4, s42, v0                                   // 000000D93320: D72C0004 0002002A
	v_add_co_u32 v37, vcc_lo, v1, v4                           // 000000D93328: D7006A25 00020901
	v_add_nc_u32_e32 v37, 1, v37                               // 000000D93330: 4A4A4A81
	v_lshlrev_b32_e32 v37, 2, v37                              // 000000D93334: 304A4A82
	s_mul_i32 s31, s42, 32                                     // 000000D93338: 961FA02A
	s_lshl_b32 s31, s31, 2                                     // 000000D9333C: 841F821F
	v_mul_lo_u32 v4, s44, v2                                   // 000000D93340: D72C0004 0002042C
	v_add_co_u32 v38, vcc_lo, v3, v4                           // 000000D93348: D7006A26 00020903
	v_add_nc_u32_e32 v38, 1, v38                               // 000000D93350: 4A4C4C81
	v_lshlrev_b32_e32 v38, 2, v38                              // 000000D93354: 304C4C82
	s_mul_i32 s32, s44, 32                                     // 000000D93358: 9620A02C
	s_lshl_b32 s32, s32, 2                                     // 000000D9335C: 84208220
	s_mul_hi_u32 s59, s2, 64                                   // 000000D93360: 96BBC002
	s_mul_i32 s58, s2, 64                                      // 000000D93364: 963AC002
	s_mul_hi_u32 s59, s58, s42                                 // 000000D93368: 96BB2A3A
	s_mul_i32 s58, s58, s42                                    // 000000D9336C: 963A2A3A
	s_sub_u32 s0, s24, s58                                     // 000000D93370: 80803A18
	s_subb_u32 s1, s25, s59                                    // 000000D93374: 82813B19
	s_lshl_b64 s[0:1], s[0:1], 2                               // 000000D93378: 84808200
	s_add_u32 s0, s0, 4                                        // 000000D9337C: 80008400
	s_addc_u32 s1, s1, 0                                       // 000000D93380: 82018001
	s_cmp_eq_u32 s1, 0                                         // 000000D93384: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000D93388: 980AC100
	s_mul_hi_u32 s35, s43, s4                                  // 000000D9338C: 96A3042B
	s_mul_i32 s34, s43, s4                                     // 000000D93390: 9622042B
	s_add_u32 s58, s58, s34                                    // 000000D93394: 803A223A
	s_addc_u32 s59, s59, s35                                   // 000000D93398: 823B233B
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000D9339C: 84BA823A
	s_add_u32 s8, s8, s58                                      // 000000D933A0: 80083A08
	s_addc_u32 s9, s9, s59                                     // 000000D933A4: 82093B09
	s_mov_b32 s11, 0x31004000                                  // 000000D933A8: BE8B00FF 31004000
	s_mul_hi_u32 s59, s3, 64                                   // 000000D933B0: 96BBC003
	s_mul_i32 s58, s3, 64                                      // 000000D933B4: 963AC003
	s_mul_hi_u32 s59, s58, s44                                 // 000000D933B8: 96BB2C3A
	s_mul_i32 s58, s58, s44                                    // 000000D933BC: 963A2C3A
	s_sub_u32 s28, s26, s58                                    // 000000D933C0: 809C3A1A
	s_subb_u32 s29, s27, s59                                   // 000000D933C4: 829D3B1B
	s_lshl_b64 s[28:29], s[28:29], 2                           // 000000D933C8: 849C821C
	s_add_u32 s28, s28, 4                                      // 000000D933CC: 801C841C
	s_addc_u32 s29, s29, 0                                     // 000000D933D0: 821D801D
	s_cmp_eq_u32 s29, 0                                        // 000000D933D4: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000D933D8: 980EC11C
	s_mul_hi_u32 s35, s45, s4                                  // 000000D933DC: 96A3042D
	s_mul_i32 s34, s45, s4                                     // 000000D933E0: 9622042D
	s_add_u32 s58, s58, s34                                    // 000000D933E4: 803A223A
	s_addc_u32 s59, s59, s35                                   // 000000D933E8: 823B233B
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000D933EC: 84BA823A
	s_add_u32 s12, s12, s58                                    // 000000D933F0: 800C3A0C
	s_addc_u32 s13, s13, s59                                   // 000000D933F4: 820D3B0D
	s_mov_b32 s15, 0x31004000                                  // 000000D933F8: BE8F00FF 31004000
	s_mov_b32 s7, 32                                           // 000000D93400: BE8700A0
	s_mov_b32 s30, 32                                          // 000000D93404: BE9E00A0
	s_lshr_b32 s5, s49, 3                                      // 000000D93408: 85058331
	s_mov_b32 s6, s5                                           // 000000D9340C: BE860005
	s_cmp_eq_u32 s5, 0                                         // 000000D93410: BF068005
	s_cbranch_scc1 ShadowInitStart_10                          // 000000D93414: BFA20014
	buffer_load_b32 v40, v37, s[8:11], 0 offen                 // 000000D93418: E0500000 80422825
	buffer_load_b32 v41, v37, s[8:11], s31 offen               // 000000D93420: E0500000 1F422925
	buffer_load_b32 v42, v38, s[12:15], 0 offen                // 000000D93428: E0500000 80432A26
	buffer_load_b32 v43, v38, s[12:15], s32 offen              // 000000D93430: E0500000 20432B26
	s_add_u32 s8, s8, s7                                       // 000000D93438: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000D9343C: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000D93440: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000D93444: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000D93448: BF068001
	s_cmov_b32 s10, s0                                         // 000000D9344C: BE8A0200
	s_add_u32 s12, s12, s30                                    // 000000D93450: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000D93454: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000D93458: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000D9345C: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000D93460: BF06801D
	s_cmov_b32 s14, s28                                        // 000000D93464: BE8E021C

0000000000d93468 <ShadowInitStart_10>:
	s_mov_b32 s18, 0xfffff000                                  // 000000D93468: BE9200FF FFFFF000
	s_mov_b32 s19, 0x31004000                                  // 000000D93470: BE9300FF 31004000
	s_mov_b32 s22, 0xfffff000                                  // 000000D93478: BE9600FF FFFFF000
	s_mov_b32 s23, 0x31004000                                  // 000000D93480: BE9700FF 31004000
	s_mul_i32 s58, 64, s3                                      // 000000D93488: 963A03C0
	s_mul_hi_u32 s57, s58, s40                                 // 000000D9348C: 96B9283A
	s_mul_i32 s56, s58, s40                                    // 000000D93490: 9638283A
	s_lshl_b64 s[56:57], s[56:57], 2                           // 000000D93494: 84B88238
	s_add_u32 s20, s20, s56                                    // 000000D93498: 80143814
	s_addc_u32 s21, s21, s57                                   // 000000D9349C: 82153915
	s_mul_hi_u32 s57, s58, s38                                 // 000000D934A0: 96B9263A
	s_mul_i32 s56, s58, s38                                    // 000000D934A4: 9638263A
	s_lshl_b64 s[56:57], s[56:57], 2                           // 000000D934A8: 84B88238
	s_add_u32 s16, s16, s56                                    // 000000D934AC: 80103810
	s_addc_u32 s17, s17, s57                                   // 000000D934B0: 82113911
	s_mul_hi_u32 s57, s4, s41                                  // 000000D934B4: 96B92904
	s_mul_i32 s56, s4, s41                                     // 000000D934B8: 96382904
	s_lshl_b64 s[56:57], s[56:57], 2                           // 000000D934BC: 84B88238
	s_add_u32 s20, s20, s56                                    // 000000D934C0: 80143814
	s_addc_u32 s21, s21, s57                                   // 000000D934C4: 82153915
	s_mul_hi_u32 s57, s4, s39                                  // 000000D934C8: 96B92704
	s_mul_i32 s56, s4, s39                                     // 000000D934CC: 96382704
	s_lshl_b64 s[56:57], s[56:57], 2                           // 000000D934D0: 84B88238
	s_add_u32 s16, s16, s56                                    // 000000D934D4: 80103810
	s_addc_u32 s17, s17, s57                                   // 000000D934D8: 82113911
	v_mov_b32_e32 v0, 0                                        // 000000D934DC: 7E000280
	v_mov_b32_e32 v1, 0                                        // 000000D934E0: 7E020280
	v_mov_b32_e32 v2, 0                                        // 000000D934E4: 7E040280
	v_mov_b32_e32 v3, 0                                        // 000000D934E8: 7E060280
	v_mov_b32_e32 v4, 0                                        // 000000D934EC: 7E080280
	v_mov_b32_e32 v5, 0                                        // 000000D934F0: 7E0A0280
	v_mov_b32_e32 v6, 0                                        // 000000D934F4: 7E0C0280
	v_mov_b32_e32 v7, 0                                        // 000000D934F8: 7E0E0280
	v_mov_b32_e32 v8, 0                                        // 000000D934FC: 7E100280
	v_mov_b32_e32 v9, 0                                        // 000000D93500: 7E120280
	v_mov_b32_e32 v10, 0                                       // 000000D93504: 7E140280
	v_mov_b32_e32 v11, 0                                       // 000000D93508: 7E160280
	v_mov_b32_e32 v12, 0                                       // 000000D9350C: 7E180280
	v_mov_b32_e32 v13, 0                                       // 000000D93510: 7E1A0280
	v_mov_b32_e32 v14, 0                                       // 000000D93514: 7E1C0280
	v_mov_b32_e32 v15, 0                                       // 000000D93518: 7E1E0280
	s_cmp_eq_u32 s5, 0                                         // 000000D9351C: BF068005
	s_cbranch_scc0 label_NoBranch_11                           // 000000D93520: BFA10006
	s_getpc_b64 s[56:57]                                       // 000000D93524: BEB84700
	s_add_i32 s58, 0x13fc, 4                                   // 000000D93528: 813A84FF 000013FC
	s_add_u32 s56, s56, s58                                    // 000000D93530: 80383A38
	s_addc_u32 s57, s57, 0                                     // 000000D93534: 82398039
	s_setpc_b64 s[56:57]                                       // 000000D93538: BE804838

0000000000d9353c <label_NoBranch_11>:
	s_waitcnt vmcnt(0)                                         // 000000D9353C: BF8903F7
	ds_store_b32 v35, v40                                      // 000000D93540: D8340000 00002823
	ds_store_b32 v35, v41 offset:128                           // 000000D93548: D8340080 00002923
	ds_store_b32 v36, v42                                      // 000000D93550: D8340000 00002A24
	ds_store_b32 v36, v43 offset:128                           // 000000D93558: D8340080 00002B24
	s_waitcnt lgkmcnt(0)                                       // 000000D93560: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000D93564: BDFC0000
	s_barrier                                                  // 000000D93568: BFBD0000
	ds_load_b32 v18, v44                                       // 000000D9356C: D8D80000 1200002C
	ds_load_b32 v19, v44 offset:64                             // 000000D93574: D8D80040 1300002C
	ds_load_b32 v20, v44 offset:128                            // 000000D9357C: D8D80080 1400002C
	ds_load_b32 v21, v44 offset:192                            // 000000D93584: D8D800C0 1500002C
	ds_load_b32 v27, v45                                       // 000000D9358C: D8D80000 1B00002D
	ds_load_b32 v28, v45 offset:64                             // 000000D93594: D8D80040 1C00002D
	ds_load_b32 v29, v45 offset:128                            // 000000D9359C: D8D80080 1D00002D
	ds_load_b32 v30, v45 offset:192                            // 000000D935A4: D8D800C0 1E00002D

0000000000d935ac <openLoopL_12>:
	s_cmp_le_u32 s5, 1                                         // 000000D935AC: BF0B8105
	s_cbranch_scc1 LoopEndL_2                                  // 000000D935B0: BFA20281

0000000000d935b4 <label_0013>:
	ds_load_b32 v22, v44 offset:256                            // 000000D935B4: D8D80100 1600002C
	ds_load_b32 v23, v44 offset:320                            // 000000D935BC: D8D80140 1700002C
	ds_load_b32 v24, v44 offset:384                            // 000000D935C4: D8D80180 1800002C
	ds_load_b32 v25, v44 offset:448                            // 000000D935CC: D8D801C0 1900002C
	buffer_load_b32 v40, v37, s[8:11], 0 offen                 // 000000D935D4: E0500000 80422825
	buffer_load_b32 v41, v37, s[8:11], s31 offen               // 000000D935DC: E0500000 1F422925
	buffer_load_b32 v42, v38, s[12:15], 0 offen                // 000000D935E4: E0500000 80432A26
	ds_load_b32 v31, v45 offset:256                            // 000000D935EC: D8D80100 1F00002D
	ds_load_b32 v32, v45 offset:320                            // 000000D935F4: D8D80140 2000002D
	ds_load_b32 v33, v45 offset:384                            // 000000D935FC: D8D80180 2100002D
	ds_load_b32 v34, v45 offset:448                            // 000000D93604: D8D801C0 2200002D
	s_waitcnt lgkmcnt(8)                                       // 000000D9360C: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000D93610: 56003712
	s_setprio 1                                                // 000000D93614: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000D93618: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000D9361C: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000D93620: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000D93624: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000D93628: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000D9362C: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000D93630: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000D93634: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000D93638: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000D9363C: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000D93640: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000D93644: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000D93648: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000D9364C: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000D93650: 561E3D15
	s_setprio 0                                                // 000000D93654: BFB50000
	ds_load_b32 v18, v44 offset:512                            // 000000D93658: D8D80200 1200002C
	ds_load_b32 v19, v44 offset:576                            // 000000D93660: D8D80240 1300002C
	ds_load_b32 v20, v44 offset:640                            // 000000D93668: D8D80280 1400002C
	ds_load_b32 v21, v44 offset:704                            // 000000D93670: D8D802C0 1500002C
	buffer_load_b32 v43, v38, s[12:15], s32 offen              // 000000D93678: E0500000 20432B26
	ds_load_b32 v27, v45 offset:512                            // 000000D93680: D8D80200 1B00002D
	ds_load_b32 v28, v45 offset:576                            // 000000D93688: D8D80240 1C00002D
	ds_load_b32 v29, v45 offset:640                            // 000000D93690: D8D80280 1D00002D
	ds_load_b32 v30, v45 offset:704                            // 000000D93698: D8D802C0 1E00002D
	s_waitcnt lgkmcnt(8)                                       // 000000D936A0: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000D936A4: 56003F16
	s_setprio 1                                                // 000000D936A8: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000D936AC: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000D936B0: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000D936B4: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000D936B8: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000D936BC: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000D936C0: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000D936C4: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000D936C8: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000D936CC: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000D936D0: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000D936D4: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000D936D8: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000D936DC: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000D936E0: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000D936E4: 561E4519
	s_setprio 0                                                // 000000D936E8: BFB50000
	ds_load_b32 v22, v44 offset:768                            // 000000D936EC: D8D80300 1600002C
	ds_load_b32 v23, v44 offset:832                            // 000000D936F4: D8D80340 1700002C
	ds_load_b32 v24, v44 offset:896                            // 000000D936FC: D8D80380 1800002C
	ds_load_b32 v25, v44 offset:960                            // 000000D93704: D8D803C0 1900002C
	s_add_u32 s8, s8, s7                                       // 000000D9370C: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000D93710: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000D93714: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000D93718: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000D9371C: BF068001
	s_cmov_b32 s10, s0                                         // 000000D93720: BE8A0200
	ds_load_b32 v31, v45 offset:768                            // 000000D93724: D8D80300 1F00002D
	ds_load_b32 v32, v45 offset:832                            // 000000D9372C: D8D80340 2000002D
	ds_load_b32 v33, v45 offset:896                            // 000000D93734: D8D80380 2100002D
	ds_load_b32 v34, v45 offset:960                            // 000000D9373C: D8D803C0 2200002D
	s_waitcnt lgkmcnt(8)                                       // 000000D93744: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000D93748: 56003712
	s_setprio 1                                                // 000000D9374C: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000D93750: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000D93754: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000D93758: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000D9375C: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000D93760: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000D93764: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000D93768: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000D9376C: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000D93770: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000D93774: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000D93778: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000D9377C: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000D93780: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000D93784: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000D93788: 561E3D15
	s_setprio 0                                                // 000000D9378C: BFB50000
	ds_load_b32 v18, v44 offset:1024                           // 000000D93790: D8D80400 1200002C
	ds_load_b32 v19, v44 offset:1088                           // 000000D93798: D8D80440 1300002C
	ds_load_b32 v20, v44 offset:1152                           // 000000D937A0: D8D80480 1400002C
	ds_load_b32 v21, v44 offset:1216                           // 000000D937A8: D8D804C0 1500002C
	s_add_u32 s12, s12, s30                                    // 000000D937B0: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000D937B4: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000D937B8: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000D937BC: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000D937C0: BF06801D
	s_cmov_b32 s14, s28                                        // 000000D937C4: BE8E021C
	ds_load_b32 v27, v45 offset:1024                           // 000000D937C8: D8D80400 1B00002D
	ds_load_b32 v28, v45 offset:1088                           // 000000D937D0: D8D80440 1C00002D
	ds_load_b32 v29, v45 offset:1152                           // 000000D937D8: D8D80480 1D00002D
	ds_load_b32 v30, v45 offset:1216                           // 000000D937E0: D8D804C0 1E00002D
	s_waitcnt vmcnt(3)                                         // 000000D937E8: BF890FF7
	ds_store_b32 v35, v40 offset:4096                          // 000000D937EC: D8341000 00002823
	s_waitcnt lgkmcnt(9)                                       // 000000D937F4: BF89FC97
	v_fmac_f32_e32 v0, v22, v31                                // 000000D937F8: 56003F16
	s_setprio 1                                                // 000000D937FC: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000D93800: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000D93804: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000D93808: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000D9380C: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000D93810: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000D93814: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000D93818: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000D9381C: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000D93820: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000D93824: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000D93828: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000D9382C: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000D93830: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000D93834: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000D93838: 561E4519
	s_setprio 0                                                // 000000D9383C: BFB50000
	ds_load_b32 v22, v44 offset:1280                           // 000000D93840: D8D80500 1600002C
	ds_load_b32 v23, v44 offset:1344                           // 000000D93848: D8D80540 1700002C
	ds_load_b32 v24, v44 offset:1408                           // 000000D93850: D8D80580 1800002C
	ds_load_b32 v25, v44 offset:1472                           // 000000D93858: D8D805C0 1900002C
	ds_load_b32 v31, v45 offset:1280                           // 000000D93860: D8D80500 1F00002D
	ds_load_b32 v32, v45 offset:1344                           // 000000D93868: D8D80540 2000002D
	ds_load_b32 v33, v45 offset:1408                           // 000000D93870: D8D80580 2100002D
	ds_load_b32 v34, v45 offset:1472                           // 000000D93878: D8D805C0 2200002D
	s_waitcnt vmcnt(2)                                         // 000000D93880: BF890BF7
	ds_store_b32 v35, v41 offset:4224                          // 000000D93884: D8341080 00002923
	s_waitcnt lgkmcnt(9)                                       // 000000D9388C: BF89FC97
	v_fmac_f32_e32 v0, v18, v27                                // 000000D93890: 56003712
	s_setprio 1                                                // 000000D93894: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000D93898: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000D9389C: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000D938A0: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000D938A4: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000D938A8: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000D938AC: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000D938B0: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000D938B4: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000D938B8: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000D938BC: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000D938C0: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000D938C4: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000D938C8: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000D938CC: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000D938D0: 561E3D15
	s_setprio 0                                                // 000000D938D4: BFB50000
	ds_load_b32 v18, v44 offset:1536                           // 000000D938D8: D8D80600 1200002C
	ds_load_b32 v19, v44 offset:1600                           // 000000D938E0: D8D80640 1300002C
	ds_load_b32 v20, v44 offset:1664                           // 000000D938E8: D8D80680 1400002C
	ds_load_b32 v21, v44 offset:1728                           // 000000D938F0: D8D806C0 1500002C
	ds_load_b32 v27, v45 offset:1536                           // 000000D938F8: D8D80600 1B00002D
	ds_load_b32 v28, v45 offset:1600                           // 000000D93900: D8D80640 1C00002D
	ds_load_b32 v29, v45 offset:1664                           // 000000D93908: D8D80680 1D00002D
	ds_load_b32 v30, v45 offset:1728                           // 000000D93910: D8D806C0 1E00002D
	s_waitcnt vmcnt(1)                                         // 000000D93918: BF8907F7
	ds_store_b32 v36, v42 offset:4096                          // 000000D9391C: D8341000 00002A24
	s_waitcnt lgkmcnt(9)                                       // 000000D93924: BF89FC97
	v_fmac_f32_e32 v0, v22, v31                                // 000000D93928: 56003F16
	s_setprio 1                                                // 000000D9392C: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000D93930: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000D93934: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000D93938: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000D9393C: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000D93940: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000D93944: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000D93948: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000D9394C: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000D93950: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000D93954: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000D93958: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000D9395C: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000D93960: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000D93964: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000D93968: 561E4519
	s_setprio 0                                                // 000000D9396C: BFB50000
	ds_load_b32 v22, v44 offset:1792                           // 000000D93970: D8D80700 1600002C
	ds_load_b32 v23, v44 offset:1856                           // 000000D93978: D8D80740 1700002C
	ds_load_b32 v24, v44 offset:1920                           // 000000D93980: D8D80780 1800002C
	ds_load_b32 v25, v44 offset:1984                           // 000000D93988: D8D807C0 1900002C
	ds_load_b32 v31, v45 offset:1792                           // 000000D93990: D8D80700 1F00002D
	ds_load_b32 v32, v45 offset:1856                           // 000000D93998: D8D80740 2000002D
	ds_load_b32 v33, v45 offset:1920                           // 000000D939A0: D8D80780 2100002D
	ds_load_b32 v34, v45 offset:1984                           // 000000D939A8: D8D807C0 2200002D
	s_waitcnt vmcnt(0)                                         // 000000D939B0: BF8903F7
	ds_store_b32 v36, v43 offset:4224                          // 000000D939B4: D8341080 00002B24
	s_waitcnt lgkmcnt(9)                                       // 000000D939BC: BF89FC97
	v_fmac_f32_e32 v0, v18, v27                                // 000000D939C0: 56003712
	s_setprio 1                                                // 000000D939C4: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000D939C8: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000D939CC: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000D939D0: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000D939D4: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000D939D8: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000D939DC: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000D939E0: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000D939E4: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000D939E8: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000D939EC: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000D939F0: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000D939F4: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000D939F8: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000D939FC: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000D93A00: 561E3D15
	s_setprio 0                                                // 000000D93A04: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000D93A08: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000D93A0C: BDFC0000
	s_barrier                                                  // 000000D93A10: BFBD0000
	ds_load_b32 v18, v44 offset:4096                           // 000000D93A14: D8D81000 1200002C
	ds_load_b32 v19, v44 offset:4160                           // 000000D93A1C: D8D81040 1300002C
	ds_load_b32 v20, v44 offset:4224                           // 000000D93A24: D8D81080 1400002C
	ds_load_b32 v21, v44 offset:4288                           // 000000D93A2C: D8D810C0 1500002C
	ds_load_b32 v27, v45 offset:4096                           // 000000D93A34: D8D81000 1B00002D
	ds_load_b32 v28, v45 offset:4160                           // 000000D93A3C: D8D81040 1C00002D
	ds_load_b32 v29, v45 offset:4224                           // 000000D93A44: D8D81080 1D00002D
	ds_load_b32 v30, v45 offset:4288                           // 000000D93A4C: D8D810C0 1E00002D
	s_waitcnt lgkmcnt(8)                                       // 000000D93A54: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000D93A58: 56003F16
	s_setprio 1                                                // 000000D93A5C: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000D93A60: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000D93A64: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000D93A68: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000D93A6C: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000D93A70: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000D93A74: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000D93A78: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000D93A7C: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000D93A80: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000D93A84: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000D93A88: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000D93A8C: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000D93A90: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000D93A94: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000D93A98: 561E4519
	s_setprio 0                                                // 000000D93A9C: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000D93AA0: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000D93AA4: BF008105
	s_cbranch_scc1 LoopEndL_oddexit_3                          // 000000D93AA8: BFA2013F

0000000000d93aac <label_0014>:
	ds_load_b32 v22, v44 offset:4352                           // 000000D93AAC: D8D81100 1600002C
	ds_load_b32 v23, v44 offset:4416                           // 000000D93AB4: D8D81140 1700002C
	ds_load_b32 v24, v44 offset:4480                           // 000000D93ABC: D8D81180 1800002C
	ds_load_b32 v25, v44 offset:4544                           // 000000D93AC4: D8D811C0 1900002C
	buffer_load_b32 v40, v37, s[8:11], 0 offen                 // 000000D93ACC: E0500000 80422825
	buffer_load_b32 v41, v37, s[8:11], s31 offen               // 000000D93AD4: E0500000 1F422925
	buffer_load_b32 v42, v38, s[12:15], 0 offen                // 000000D93ADC: E0500000 80432A26
	ds_load_b32 v31, v45 offset:4352                           // 000000D93AE4: D8D81100 1F00002D
	ds_load_b32 v32, v45 offset:4416                           // 000000D93AEC: D8D81140 2000002D
	ds_load_b32 v33, v45 offset:4480                           // 000000D93AF4: D8D81180 2100002D
	ds_load_b32 v34, v45 offset:4544                           // 000000D93AFC: D8D811C0 2200002D
	s_waitcnt lgkmcnt(8)                                       // 000000D93B04: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000D93B08: 56003712
	s_setprio 1                                                // 000000D93B0C: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000D93B10: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000D93B14: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000D93B18: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000D93B1C: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000D93B20: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000D93B24: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000D93B28: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000D93B2C: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000D93B30: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000D93B34: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000D93B38: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000D93B3C: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000D93B40: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000D93B44: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000D93B48: 561E3D15
	s_setprio 0                                                // 000000D93B4C: BFB50000
	ds_load_b32 v18, v44 offset:4608                           // 000000D93B50: D8D81200 1200002C
	ds_load_b32 v19, v44 offset:4672                           // 000000D93B58: D8D81240 1300002C
	ds_load_b32 v20, v44 offset:4736                           // 000000D93B60: D8D81280 1400002C
	ds_load_b32 v21, v44 offset:4800                           // 000000D93B68: D8D812C0 1500002C
	buffer_load_b32 v43, v38, s[12:15], s32 offen              // 000000D93B70: E0500000 20432B26
	ds_load_b32 v27, v45 offset:4608                           // 000000D93B78: D8D81200 1B00002D
	ds_load_b32 v28, v45 offset:4672                           // 000000D93B80: D8D81240 1C00002D
	ds_load_b32 v29, v45 offset:4736                           // 000000D93B88: D8D81280 1D00002D
	ds_load_b32 v30, v45 offset:4800                           // 000000D93B90: D8D812C0 1E00002D
	s_waitcnt lgkmcnt(8)                                       // 000000D93B98: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000D93B9C: 56003F16
	s_setprio 1                                                // 000000D93BA0: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000D93BA4: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000D93BA8: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000D93BAC: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000D93BB0: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000D93BB4: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000D93BB8: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000D93BBC: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000D93BC0: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000D93BC4: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000D93BC8: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000D93BCC: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000D93BD0: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000D93BD4: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000D93BD8: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000D93BDC: 561E4519
	s_setprio 0                                                // 000000D93BE0: BFB50000
	ds_load_b32 v22, v44 offset:4864                           // 000000D93BE4: D8D81300 1600002C
	ds_load_b32 v23, v44 offset:4928                           // 000000D93BEC: D8D81340 1700002C
	ds_load_b32 v24, v44 offset:4992                           // 000000D93BF4: D8D81380 1800002C
	ds_load_b32 v25, v44 offset:5056                           // 000000D93BFC: D8D813C0 1900002C
	s_add_u32 s8, s8, s7                                       // 000000D93C04: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000D93C08: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000D93C0C: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000D93C10: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000D93C14: BF068001
	s_cmov_b32 s10, s0                                         // 000000D93C18: BE8A0200
	ds_load_b32 v31, v45 offset:4864                           // 000000D93C1C: D8D81300 1F00002D
	ds_load_b32 v32, v45 offset:4928                           // 000000D93C24: D8D81340 2000002D
	ds_load_b32 v33, v45 offset:4992                           // 000000D93C2C: D8D81380 2100002D
	ds_load_b32 v34, v45 offset:5056                           // 000000D93C34: D8D813C0 2200002D
	s_waitcnt lgkmcnt(8)                                       // 000000D93C3C: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000D93C40: 56003712
	s_setprio 1                                                // 000000D93C44: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000D93C48: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000D93C4C: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000D93C50: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000D93C54: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000D93C58: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000D93C5C: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000D93C60: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000D93C64: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000D93C68: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000D93C6C: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000D93C70: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000D93C74: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000D93C78: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000D93C7C: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000D93C80: 561E3D15
	s_setprio 0                                                // 000000D93C84: BFB50000
	ds_load_b32 v18, v44 offset:5120                           // 000000D93C88: D8D81400 1200002C
	ds_load_b32 v19, v44 offset:5184                           // 000000D93C90: D8D81440 1300002C
	ds_load_b32 v20, v44 offset:5248                           // 000000D93C98: D8D81480 1400002C
	ds_load_b32 v21, v44 offset:5312                           // 000000D93CA0: D8D814C0 1500002C
	s_add_u32 s12, s12, s30                                    // 000000D93CA8: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000D93CAC: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000D93CB0: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000D93CB4: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000D93CB8: BF06801D
	s_cmov_b32 s14, s28                                        // 000000D93CBC: BE8E021C
	ds_load_b32 v27, v45 offset:5120                           // 000000D93CC0: D8D81400 1B00002D
	ds_load_b32 v28, v45 offset:5184                           // 000000D93CC8: D8D81440 1C00002D
	ds_load_b32 v29, v45 offset:5248                           // 000000D93CD0: D8D81480 1D00002D
	ds_load_b32 v30, v45 offset:5312                           // 000000D93CD8: D8D814C0 1E00002D
	s_waitcnt vmcnt(3)                                         // 000000D93CE0: BF890FF7
	ds_store_b32 v35, v40                                      // 000000D93CE4: D8340000 00002823
	s_waitcnt lgkmcnt(9)                                       // 000000D93CEC: BF89FC97
	v_fmac_f32_e32 v0, v22, v31                                // 000000D93CF0: 56003F16
	s_setprio 1                                                // 000000D93CF4: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000D93CF8: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000D93CFC: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000D93D00: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000D93D04: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000D93D08: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000D93D0C: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000D93D10: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000D93D14: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000D93D18: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000D93D1C: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000D93D20: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000D93D24: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000D93D28: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000D93D2C: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000D93D30: 561E4519
	s_setprio 0                                                // 000000D93D34: BFB50000
	ds_load_b32 v22, v44 offset:5376                           // 000000D93D38: D8D81500 1600002C
	ds_load_b32 v23, v44 offset:5440                           // 000000D93D40: D8D81540 1700002C
	ds_load_b32 v24, v44 offset:5504                           // 000000D93D48: D8D81580 1800002C
	ds_load_b32 v25, v44 offset:5568                           // 000000D93D50: D8D815C0 1900002C
	ds_load_b32 v31, v45 offset:5376                           // 000000D93D58: D8D81500 1F00002D
	ds_load_b32 v32, v45 offset:5440                           // 000000D93D60: D8D81540 2000002D
	ds_load_b32 v33, v45 offset:5504                           // 000000D93D68: D8D81580 2100002D
	ds_load_b32 v34, v45 offset:5568                           // 000000D93D70: D8D815C0 2200002D
	s_waitcnt vmcnt(2)                                         // 000000D93D78: BF890BF7
	ds_store_b32 v35, v41 offset:128                           // 000000D93D7C: D8340080 00002923
	s_waitcnt lgkmcnt(9)                                       // 000000D93D84: BF89FC97
	v_fmac_f32_e32 v0, v18, v27                                // 000000D93D88: 56003712
	s_setprio 1                                                // 000000D93D8C: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000D93D90: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000D93D94: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000D93D98: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000D93D9C: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000D93DA0: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000D93DA4: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000D93DA8: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000D93DAC: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000D93DB0: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000D93DB4: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000D93DB8: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000D93DBC: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000D93DC0: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000D93DC4: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000D93DC8: 561E3D15
	s_setprio 0                                                // 000000D93DCC: BFB50000
	ds_load_b32 v18, v44 offset:5632                           // 000000D93DD0: D8D81600 1200002C
	ds_load_b32 v19, v44 offset:5696                           // 000000D93DD8: D8D81640 1300002C
	ds_load_b32 v20, v44 offset:5760                           // 000000D93DE0: D8D81680 1400002C
	ds_load_b32 v21, v44 offset:5824                           // 000000D93DE8: D8D816C0 1500002C
	ds_load_b32 v27, v45 offset:5632                           // 000000D93DF0: D8D81600 1B00002D
	ds_load_b32 v28, v45 offset:5696                           // 000000D93DF8: D8D81640 1C00002D
	ds_load_b32 v29, v45 offset:5760                           // 000000D93E00: D8D81680 1D00002D
	ds_load_b32 v30, v45 offset:5824                           // 000000D93E08: D8D816C0 1E00002D
	s_waitcnt vmcnt(1)                                         // 000000D93E10: BF8907F7
	ds_store_b32 v36, v42                                      // 000000D93E14: D8340000 00002A24
	s_waitcnt lgkmcnt(9)                                       // 000000D93E1C: BF89FC97
	v_fmac_f32_e32 v0, v22, v31                                // 000000D93E20: 56003F16
	s_setprio 1                                                // 000000D93E24: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000D93E28: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000D93E2C: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000D93E30: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000D93E34: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000D93E38: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000D93E3C: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000D93E40: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000D93E44: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000D93E48: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000D93E4C: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000D93E50: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000D93E54: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000D93E58: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000D93E5C: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000D93E60: 561E4519
	s_setprio 0                                                // 000000D93E64: BFB50000
	ds_load_b32 v22, v44 offset:5888                           // 000000D93E68: D8D81700 1600002C
	ds_load_b32 v23, v44 offset:5952                           // 000000D93E70: D8D81740 1700002C
	ds_load_b32 v24, v44 offset:6016                           // 000000D93E78: D8D81780 1800002C
	ds_load_b32 v25, v44 offset:6080                           // 000000D93E80: D8D817C0 1900002C
	ds_load_b32 v31, v45 offset:5888                           // 000000D93E88: D8D81700 1F00002D
	ds_load_b32 v32, v45 offset:5952                           // 000000D93E90: D8D81740 2000002D
	ds_load_b32 v33, v45 offset:6016                           // 000000D93E98: D8D81780 2100002D
	ds_load_b32 v34, v45 offset:6080                           // 000000D93EA0: D8D817C0 2200002D
	s_waitcnt vmcnt(0)                                         // 000000D93EA8: BF8903F7
	ds_store_b32 v36, v43 offset:128                           // 000000D93EAC: D8340080 00002B24
	s_waitcnt lgkmcnt(9)                                       // 000000D93EB4: BF89FC97
	v_fmac_f32_e32 v0, v18, v27                                // 000000D93EB8: 56003712
	s_setprio 1                                                // 000000D93EBC: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000D93EC0: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000D93EC4: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000D93EC8: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000D93ECC: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000D93ED0: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000D93ED4: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000D93ED8: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000D93EDC: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000D93EE0: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000D93EE4: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000D93EE8: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000D93EEC: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000D93EF0: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000D93EF4: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000D93EF8: 561E3D15
	s_setprio 0                                                // 000000D93EFC: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000D93F00: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000D93F04: BDFC0000
	s_barrier                                                  // 000000D93F08: BFBD0000
	ds_load_b32 v18, v44                                       // 000000D93F0C: D8D80000 1200002C
	ds_load_b32 v19, v44 offset:64                             // 000000D93F14: D8D80040 1300002C
	ds_load_b32 v20, v44 offset:128                            // 000000D93F1C: D8D80080 1400002C
	ds_load_b32 v21, v44 offset:192                            // 000000D93F24: D8D800C0 1500002C
	ds_load_b32 v27, v45                                       // 000000D93F2C: D8D80000 1B00002D
	ds_load_b32 v28, v45 offset:64                             // 000000D93F34: D8D80040 1C00002D
	ds_load_b32 v29, v45 offset:128                            // 000000D93F3C: D8D80080 1D00002D
	ds_load_b32 v30, v45 offset:192                            // 000000D93F44: D8D800C0 1E00002D
	s_waitcnt lgkmcnt(8)                                       // 000000D93F4C: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000D93F50: 56003F16
	s_setprio 1                                                // 000000D93F54: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000D93F58: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000D93F5C: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000D93F60: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000D93F64: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000D93F68: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000D93F6C: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000D93F70: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000D93F74: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000D93F78: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000D93F7C: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000D93F80: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000D93F84: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000D93F88: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000D93F8C: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000D93F90: 561E4519
	s_setprio 0                                                // 000000D93F94: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000D93F98: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000D93F9C: BF008105
	s_cbranch_scc0 LoopBeginL_1                                // 000000D93FA0: BFA1FD84

0000000000d93fa4 <LoopEndL_evenexit_4>:
	s_branch LoopEndL_2                                        // 000000D93FA4: BFA00004

0000000000d93fa8 <LoopEndL_oddexit_3>:
	v_xor_b32_e32 v44, 0x1000, v44                             // 000000D93FA8: 3A5858FF 00001000
	v_xor_b32_e32 v45, 0x1000, v45                             // 000000D93FB0: 3A5A5AFF 00001000

0000000000d93fb8 <LoopEndL_2>:
	s_cmpk_eq_u32 s37, 0x0                                     // 000000D93FB8: B4A50000
	s_cbranch_scc0 OptNLL_End_15                               // 000000D93FBC: BFA10152
	s_cmp_eq_u32 s36, 1.0                                      // 000000D93FC0: BF06F224
	s_cbranch_scc0 OptNLL_End_15                               // 000000D93FC4: BFA10150
	s_and_b32 s56, 63, s46                                     // 000000D93FC8: 8B382EBF
	s_add_u32 s57, -1, s50                                     // 000000D93FCC: 803932C1
	s_cmp_ge_u32 s2, s57                                       // 000000D93FD0: BF093902
	s_cselect_b32 s56, s56, 0                                  // 000000D93FD4: 98388038
	s_cmpk_gt_u32 s56, 0x0                                     // 000000D93FD8: B5B80000
	s_cbranch_scc1 OptNLL_End_15                               // 000000D93FDC: BFA2014A
	s_and_b32 s56, 63, s47                                     // 000000D93FE0: 8B382FBF
	s_add_u32 s57, -1, s51                                     // 000000D93FE4: 803933C1
	s_cmp_ge_u32 s3, s57                                       // 000000D93FE8: BF093903
	s_cselect_b32 s56, s56, 0                                  // 000000D93FEC: 98388038
	s_cmpk_gt_u32 s56, 0x0                                     // 000000D93FF0: B5B80000
	s_cbranch_scc1 OptNLL_End_15                               // 000000D93FF4: BFA20144
	s_and_b32 s57, 7, s49                                      // 000000D93FF8: 8B393187
	s_cmp_eq_u32 s57, 0                                        // 000000D93FFC: BF068039
	s_cbranch_scc0 OptNLL_End_15                               // 000000D94000: BFA10141
	ds_load_b32 v22, v44 offset:256                            // 000000D94004: D8D80100 1600002C
	ds_load_b32 v23, v44 offset:320                            // 000000D9400C: D8D80140 1700002C
	ds_load_b32 v24, v44 offset:384                            // 000000D94014: D8D80180 1800002C
	ds_load_b32 v25, v44 offset:448                            // 000000D9401C: D8D801C0 1900002C
	ds_load_b32 v31, v45 offset:256                            // 000000D94024: D8D80100 1F00002D
	ds_load_b32 v32, v45 offset:320                            // 000000D9402C: D8D80140 2000002D
	ds_load_b32 v33, v45 offset:384                            // 000000D94034: D8D80180 2100002D
	ds_load_b32 v34, v45 offset:448                            // 000000D9403C: D8D801C0 2200002D
	s_waitcnt lgkmcnt(8)                                       // 000000D94044: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000D94048: 56003712
	s_setprio 1                                                // 000000D9404C: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000D94050: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000D94054: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000D94058: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000D9405C: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000D94060: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000D94064: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000D94068: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000D9406C: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000D94070: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000D94074: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000D94078: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000D9407C: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000D94080: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000D94084: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000D94088: 561E3D15
	s_setprio 0                                                // 000000D9408C: BFB50000
	ds_load_b32 v18, v44 offset:512                            // 000000D94090: D8D80200 1200002C
	ds_load_b32 v19, v44 offset:576                            // 000000D94098: D8D80240 1300002C
	ds_load_b32 v20, v44 offset:640                            // 000000D940A0: D8D80280 1400002C
	ds_load_b32 v21, v44 offset:704                            // 000000D940A8: D8D802C0 1500002C
	ds_load_b32 v27, v45 offset:512                            // 000000D940B0: D8D80200 1B00002D
	ds_load_b32 v28, v45 offset:576                            // 000000D940B8: D8D80240 1C00002D
	ds_load_b32 v29, v45 offset:640                            // 000000D940C0: D8D80280 1D00002D
	ds_load_b32 v30, v45 offset:704                            // 000000D940C8: D8D802C0 1E00002D
	s_waitcnt lgkmcnt(8)                                       // 000000D940D0: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000D940D4: 56003F16
	s_setprio 1                                                // 000000D940D8: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000D940DC: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000D940E0: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000D940E4: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000D940E8: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000D940EC: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000D940F0: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000D940F4: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000D940F8: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000D940FC: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000D94100: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000D94104: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000D94108: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000D9410C: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000D94110: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000D94114: 561E4519
	s_setprio 0                                                // 000000D94118: BFB50000
	ds_load_b32 v22, v44 offset:768                            // 000000D9411C: D8D80300 1600002C
	ds_load_b32 v23, v44 offset:832                            // 000000D94124: D8D80340 1700002C
	ds_load_b32 v24, v44 offset:896                            // 000000D9412C: D8D80380 1800002C
	ds_load_b32 v25, v44 offset:960                            // 000000D94134: D8D803C0 1900002C
	ds_load_b32 v31, v45 offset:768                            // 000000D9413C: D8D80300 1F00002D
	ds_load_b32 v32, v45 offset:832                            // 000000D94144: D8D80340 2000002D
	ds_load_b32 v33, v45 offset:896                            // 000000D9414C: D8D80380 2100002D
	ds_load_b32 v34, v45 offset:960                            // 000000D94154: D8D803C0 2200002D
	s_waitcnt lgkmcnt(8)                                       // 000000D9415C: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000D94160: 56003712
	s_setprio 1                                                // 000000D94164: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000D94168: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000D9416C: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000D94170: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000D94174: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000D94178: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000D9417C: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000D94180: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000D94184: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000D94188: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000D9418C: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000D94190: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000D94194: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000D94198: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000D9419C: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000D941A0: 561E3D15
	s_setprio 0                                                // 000000D941A4: BFB50000
	ds_load_b32 v18, v44 offset:1024                           // 000000D941A8: D8D80400 1200002C
	ds_load_b32 v19, v44 offset:1088                           // 000000D941B0: D8D80440 1300002C
	ds_load_b32 v20, v44 offset:1152                           // 000000D941B8: D8D80480 1400002C
	ds_load_b32 v21, v44 offset:1216                           // 000000D941C0: D8D804C0 1500002C
	ds_load_b32 v27, v45 offset:1024                           // 000000D941C8: D8D80400 1B00002D
	ds_load_b32 v28, v45 offset:1088                           // 000000D941D0: D8D80440 1C00002D
	ds_load_b32 v29, v45 offset:1152                           // 000000D941D8: D8D80480 1D00002D
	ds_load_b32 v30, v45 offset:1216                           // 000000D941E0: D8D804C0 1E00002D
	s_waitcnt lgkmcnt(8)                                       // 000000D941E8: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000D941EC: 56003F16
	s_setprio 1                                                // 000000D941F0: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000D941F4: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000D941F8: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000D941FC: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000D94200: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000D94204: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000D94208: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000D9420C: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000D94210: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000D94214: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000D94218: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000D9421C: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000D94220: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000D94224: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000D94228: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000D9422C: 561E4519
	s_setprio 0                                                // 000000D94230: BFB50000
	ds_load_b32 v22, v44 offset:1280                           // 000000D94234: D8D80500 1600002C
	ds_load_b32 v23, v44 offset:1344                           // 000000D9423C: D8D80540 1700002C
	ds_load_b32 v24, v44 offset:1408                           // 000000D94244: D8D80580 1800002C
	ds_load_b32 v25, v44 offset:1472                           // 000000D9424C: D8D805C0 1900002C
	ds_load_b32 v31, v45 offset:1280                           // 000000D94254: D8D80500 1F00002D
	ds_load_b32 v32, v45 offset:1344                           // 000000D9425C: D8D80540 2000002D
	ds_load_b32 v33, v45 offset:1408                           // 000000D94264: D8D80580 2100002D
	ds_load_b32 v34, v45 offset:1472                           // 000000D9426C: D8D805C0 2200002D
	s_waitcnt lgkmcnt(8)                                       // 000000D94274: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000D94278: 56003712
	s_setprio 1                                                // 000000D9427C: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000D94280: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000D94284: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000D94288: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000D9428C: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000D94290: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000D94294: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000D94298: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000D9429C: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000D942A0: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000D942A4: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000D942A8: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000D942AC: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000D942B0: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000D942B4: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000D942B8: 561E3D15
	s_setprio 0                                                // 000000D942BC: BFB50000
	ds_load_b32 v18, v44 offset:1536                           // 000000D942C0: D8D80600 1200002C
	ds_load_b32 v19, v44 offset:1600                           // 000000D942C8: D8D80640 1300002C
	ds_load_b32 v20, v44 offset:1664                           // 000000D942D0: D8D80680 1400002C
	ds_load_b32 v21, v44 offset:1728                           // 000000D942D8: D8D806C0 1500002C
	ds_load_b32 v27, v45 offset:1536                           // 000000D942E0: D8D80600 1B00002D
	ds_load_b32 v28, v45 offset:1600                           // 000000D942E8: D8D80640 1C00002D
	ds_load_b32 v29, v45 offset:1664                           // 000000D942F0: D8D80680 1D00002D
	ds_load_b32 v30, v45 offset:1728                           // 000000D942F8: D8D806C0 1E00002D
	s_waitcnt lgkmcnt(8)                                       // 000000D94300: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000D94304: 56003F16
	s_setprio 1                                                // 000000D94308: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000D9430C: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000D94310: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000D94314: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000D94318: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000D9431C: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000D94320: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000D94324: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000D94328: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000D9432C: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000D94330: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000D94334: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000D94338: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000D9433C: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000D94340: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000D94344: 561E4519
	s_setprio 0                                                // 000000D94348: BFB50000
	ds_load_b32 v22, v44 offset:1792                           // 000000D9434C: D8D80700 1600002C
	ds_load_b32 v23, v44 offset:1856                           // 000000D94354: D8D80740 1700002C
	ds_load_b32 v24, v44 offset:1920                           // 000000D9435C: D8D80780 1800002C
	ds_load_b32 v25, v44 offset:1984                           // 000000D94364: D8D807C0 1900002C
	ds_load_b32 v31, v45 offset:1792                           // 000000D9436C: D8D80700 1F00002D
	ds_load_b32 v32, v45 offset:1856                           // 000000D94374: D8D80740 2000002D
	ds_load_b32 v33, v45 offset:1920                           // 000000D9437C: D8D80780 2100002D
	ds_load_b32 v34, v45 offset:1984                           // 000000D94384: D8D807C0 2200002D
	s_waitcnt lgkmcnt(8)                                       // 000000D9438C: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000D94390: 56003712
	s_setprio 1                                                // 000000D94394: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000D94398: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000D9439C: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000D943A0: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000D943A4: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000D943A8: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000D943AC: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000D943B0: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000D943B4: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000D943B8: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000D943BC: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000D943C0: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000D943C4: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000D943C8: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000D943CC: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000D943D0: 561E3D15
	s_setprio 0                                                // 000000D943D4: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000D943D8: BF89FC07
	v_fmac_f32_e32 v0, v22, v31                                // 000000D943DC: 56003F16
	s_setprio 1                                                // 000000D943E0: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000D943E4: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000D943E8: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000D943EC: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000D943F0: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000D943F4: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000D943F8: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000D943FC: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000D94400: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000D94404: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000D94408: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000D9440C: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000D94410: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000D94414: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000D94418: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000D9441C: 561E4519
	s_setprio 0                                                // 000000D94420: BFB50000

0000000000d94424 <Summation_End_OptNLL_16>:
	v_lshrrev_b32_e32 v19, 4, v46                              // 000000D94424: 32265C84
	v_and_b32_e32 v18, 15, v46                                 // 000000D94428: 36245C8F
	v_mul_lo_u32 v20, v19, s40                                 // 000000D9442C: D72C0014 00005113
	v_mul_lo_u32 v21, v19, s38                                 // 000000D94434: D72C0015 00004D13
	s_mul_i32 s52, 64, s2                                      // 000000D9443C: 963402C0
	v_add_co_u32 v18, vcc_lo, s52, v18                         // 000000D94440: D7006A12 00022434
	s_mul_i32 s54, 64, s3                                      // 000000D94448: 963603C0
	v_add_co_u32 v19, vcc_lo, s54, v19                         // 000000D9444C: D7006A13 00022636

0000000000d94454 <GW_B0_E0_19>:
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000D94454: D6470018 020A2515
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000D9445C: E0680000 80440018
	buffer_store_b32 v1, v24, s[16:19], 0 offen offset:64      // 000000D94464: E0680040 80440118
	buffer_store_b32 v2, v24, s[16:19], 0 offen offset:128     // 000000D9446C: E0680080 80440218
	buffer_store_b32 v3, v24, s[16:19], 0 offen offset:192     // 000000D94474: E06800C0 80440318
	s_mul_i32 s34, s38, 64                                     // 000000D9447C: 9622C026
	s_add_u32 s16, s16, s34                                    // 000000D94480: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000D94484: 82118011
	buffer_store_b32 v4, v24, s[16:19], 0 offen                // 000000D94488: E0680000 80440418
	buffer_store_b32 v5, v24, s[16:19], 0 offen offset:64      // 000000D94490: E0680040 80440518
	buffer_store_b32 v6, v24, s[16:19], 0 offen offset:128     // 000000D94498: E0680080 80440618
	buffer_store_b32 v7, v24, s[16:19], 0 offen offset:192     // 000000D944A0: E06800C0 80440718
	s_mul_i32 s34, s38, 64                                     // 000000D944A8: 9622C026
	s_add_u32 s16, s16, s34                                    // 000000D944AC: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000D944B0: 82118011
	buffer_store_b32 v8, v24, s[16:19], 0 offen                // 000000D944B4: E0680000 80440818
	buffer_store_b32 v9, v24, s[16:19], 0 offen offset:64      // 000000D944BC: E0680040 80440918
	buffer_store_b32 v10, v24, s[16:19], 0 offen offset:128    // 000000D944C4: E0680080 80440A18
	buffer_store_b32 v11, v24, s[16:19], 0 offen offset:192    // 000000D944CC: E06800C0 80440B18
	s_mul_i32 s34, s38, 64                                     // 000000D944D4: 9622C026
	s_add_u32 s16, s16, s34                                    // 000000D944D8: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000D944DC: 82118011
	buffer_store_b32 v12, v24, s[16:19], 0 offen               // 000000D944E0: E0680000 80440C18
	buffer_store_b32 v13, v24, s[16:19], 0 offen offset:64     // 000000D944E8: E0680040 80440D18
	buffer_store_b32 v14, v24, s[16:19], 0 offen offset:128    // 000000D944F0: E0680080 80440E18
	buffer_store_b32 v15, v24, s[16:19], 0 offen offset:192    // 000000D944F8: E06800C0 80440F18
	s_branch label_GW_End_21                                   // 000000D94500: BFA00000

0000000000d94504 <label_GW_End_21>:
	s_endpgm                                                   // 000000D94504: BFB00000

0000000000d94508 <OptNLL_End_15>:
	ds_load_b32 v22, v44 offset:256                            // 000000D94508: D8D80100 1600002C
	ds_load_b32 v23, v44 offset:320                            // 000000D94510: D8D80140 1700002C
	ds_load_b32 v24, v44 offset:384                            // 000000D94518: D8D80180 1800002C
	ds_load_b32 v25, v44 offset:448                            // 000000D94520: D8D801C0 1900002C
	ds_load_b32 v31, v45 offset:256                            // 000000D94528: D8D80100 1F00002D
	ds_load_b32 v32, v45 offset:320                            // 000000D94530: D8D80140 2000002D
	ds_load_b32 v33, v45 offset:384                            // 000000D94538: D8D80180 2100002D
	ds_load_b32 v34, v45 offset:448                            // 000000D94540: D8D801C0 2200002D
	s_waitcnt lgkmcnt(8)                                       // 000000D94548: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000D9454C: 56003712
	s_setprio 1                                                // 000000D94550: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000D94554: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000D94558: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000D9455C: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000D94560: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000D94564: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000D94568: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000D9456C: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000D94570: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000D94574: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000D94578: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000D9457C: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000D94580: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000D94584: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000D94588: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000D9458C: 561E3D15
	s_setprio 0                                                // 000000D94590: BFB50000
	ds_load_b32 v18, v44 offset:512                            // 000000D94594: D8D80200 1200002C
	ds_load_b32 v19, v44 offset:576                            // 000000D9459C: D8D80240 1300002C
	ds_load_b32 v20, v44 offset:640                            // 000000D945A4: D8D80280 1400002C
	ds_load_b32 v21, v44 offset:704                            // 000000D945AC: D8D802C0 1500002C
	ds_load_b32 v27, v45 offset:512                            // 000000D945B4: D8D80200 1B00002D
	ds_load_b32 v28, v45 offset:576                            // 000000D945BC: D8D80240 1C00002D
	ds_load_b32 v29, v45 offset:640                            // 000000D945C4: D8D80280 1D00002D
	ds_load_b32 v30, v45 offset:704                            // 000000D945CC: D8D802C0 1E00002D
	s_waitcnt lgkmcnt(8)                                       // 000000D945D4: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000D945D8: 56003F16
	s_setprio 1                                                // 000000D945DC: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000D945E0: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000D945E4: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000D945E8: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000D945EC: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000D945F0: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000D945F4: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000D945F8: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000D945FC: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000D94600: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000D94604: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000D94608: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000D9460C: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000D94610: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000D94614: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000D94618: 561E4519
	s_setprio 0                                                // 000000D9461C: BFB50000
	ds_load_b32 v22, v44 offset:768                            // 000000D94620: D8D80300 1600002C
	ds_load_b32 v23, v44 offset:832                            // 000000D94628: D8D80340 1700002C
	ds_load_b32 v24, v44 offset:896                            // 000000D94630: D8D80380 1800002C
	ds_load_b32 v25, v44 offset:960                            // 000000D94638: D8D803C0 1900002C
	ds_load_b32 v31, v45 offset:768                            // 000000D94640: D8D80300 1F00002D
	ds_load_b32 v32, v45 offset:832                            // 000000D94648: D8D80340 2000002D
	ds_load_b32 v33, v45 offset:896                            // 000000D94650: D8D80380 2100002D
	ds_load_b32 v34, v45 offset:960                            // 000000D94658: D8D803C0 2200002D
	s_waitcnt lgkmcnt(8)                                       // 000000D94660: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000D94664: 56003712
	s_setprio 1                                                // 000000D94668: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000D9466C: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000D94670: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000D94674: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000D94678: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000D9467C: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000D94680: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000D94684: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000D94688: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000D9468C: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000D94690: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000D94694: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000D94698: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000D9469C: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000D946A0: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000D946A4: 561E3D15
	s_setprio 0                                                // 000000D946A8: BFB50000
	ds_load_b32 v18, v44 offset:1024                           // 000000D946AC: D8D80400 1200002C
	ds_load_b32 v19, v44 offset:1088                           // 000000D946B4: D8D80440 1300002C
	ds_load_b32 v20, v44 offset:1152                           // 000000D946BC: D8D80480 1400002C
	ds_load_b32 v21, v44 offset:1216                           // 000000D946C4: D8D804C0 1500002C
	ds_load_b32 v27, v45 offset:1024                           // 000000D946CC: D8D80400 1B00002D
	ds_load_b32 v28, v45 offset:1088                           // 000000D946D4: D8D80440 1C00002D
	ds_load_b32 v29, v45 offset:1152                           // 000000D946DC: D8D80480 1D00002D
	ds_load_b32 v30, v45 offset:1216                           // 000000D946E4: D8D804C0 1E00002D
	s_waitcnt lgkmcnt(8)                                       // 000000D946EC: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000D946F0: 56003F16
	s_setprio 1                                                // 000000D946F4: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000D946F8: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000D946FC: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000D94700: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000D94704: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000D94708: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000D9470C: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000D94710: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000D94714: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000D94718: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000D9471C: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000D94720: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000D94724: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000D94728: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000D9472C: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000D94730: 561E4519
	s_setprio 0                                                // 000000D94734: BFB50000
	ds_load_b32 v22, v44 offset:1280                           // 000000D94738: D8D80500 1600002C
	ds_load_b32 v23, v44 offset:1344                           // 000000D94740: D8D80540 1700002C
	ds_load_b32 v24, v44 offset:1408                           // 000000D94748: D8D80580 1800002C
	ds_load_b32 v25, v44 offset:1472                           // 000000D94750: D8D805C0 1900002C
	ds_load_b32 v31, v45 offset:1280                           // 000000D94758: D8D80500 1F00002D
	ds_load_b32 v32, v45 offset:1344                           // 000000D94760: D8D80540 2000002D
	ds_load_b32 v33, v45 offset:1408                           // 000000D94768: D8D80580 2100002D
	ds_load_b32 v34, v45 offset:1472                           // 000000D94770: D8D805C0 2200002D
	s_waitcnt lgkmcnt(8)                                       // 000000D94778: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000D9477C: 56003712
	s_setprio 1                                                // 000000D94780: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000D94784: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000D94788: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000D9478C: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000D94790: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000D94794: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000D94798: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000D9479C: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000D947A0: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000D947A4: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000D947A8: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000D947AC: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000D947B0: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000D947B4: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000D947B8: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000D947BC: 561E3D15
	s_setprio 0                                                // 000000D947C0: BFB50000
	ds_load_b32 v18, v44 offset:1536                           // 000000D947C4: D8D80600 1200002C
	ds_load_b32 v19, v44 offset:1600                           // 000000D947CC: D8D80640 1300002C
	ds_load_b32 v20, v44 offset:1664                           // 000000D947D4: D8D80680 1400002C
	ds_load_b32 v21, v44 offset:1728                           // 000000D947DC: D8D806C0 1500002C
	ds_load_b32 v27, v45 offset:1536                           // 000000D947E4: D8D80600 1B00002D
	ds_load_b32 v28, v45 offset:1600                           // 000000D947EC: D8D80640 1C00002D
	ds_load_b32 v29, v45 offset:1664                           // 000000D947F4: D8D80680 1D00002D
	ds_load_b32 v30, v45 offset:1728                           // 000000D947FC: D8D806C0 1E00002D
	s_waitcnt lgkmcnt(8)                                       // 000000D94804: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000D94808: 56003F16
	s_setprio 1                                                // 000000D9480C: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000D94810: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000D94814: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000D94818: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000D9481C: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000D94820: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000D94824: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000D94828: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000D9482C: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000D94830: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000D94834: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000D94838: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000D9483C: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000D94840: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000D94844: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000D94848: 561E4519
	s_setprio 0                                                // 000000D9484C: BFB50000
	ds_load_b32 v22, v44 offset:1792                           // 000000D94850: D8D80700 1600002C
	ds_load_b32 v23, v44 offset:1856                           // 000000D94858: D8D80740 1700002C
	ds_load_b32 v24, v44 offset:1920                           // 000000D94860: D8D80780 1800002C
	ds_load_b32 v25, v44 offset:1984                           // 000000D94868: D8D807C0 1900002C
	ds_load_b32 v31, v45 offset:1792                           // 000000D94870: D8D80700 1F00002D
	ds_load_b32 v32, v45 offset:1856                           // 000000D94878: D8D80740 2000002D
	ds_load_b32 v33, v45 offset:1920                           // 000000D94880: D8D80780 2100002D
	ds_load_b32 v34, v45 offset:1984                           // 000000D94888: D8D807C0 2200002D
	s_waitcnt lgkmcnt(8)                                       // 000000D94890: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000D94894: 56003712
	s_setprio 1                                                // 000000D94898: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000D9489C: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000D948A0: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000D948A4: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000D948A8: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000D948AC: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000D948B0: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000D948B4: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000D948B8: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000D948BC: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000D948C0: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000D948C4: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000D948C8: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000D948CC: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000D948D0: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000D948D4: 561E3D15
	s_setprio 0                                                // 000000D948D8: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000D948DC: BF89FC07
	v_fmac_f32_e32 v0, v22, v31                                // 000000D948E0: 56003F16
	s_setprio 1                                                // 000000D948E4: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000D948E8: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000D948EC: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000D948F0: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000D948F4: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000D948F8: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000D948FC: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000D94900: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000D94904: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000D94908: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000D9490C: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000D94910: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000D94914: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000D94918: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000D9491C: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000D94920: 561E4519
	s_setprio 0                                                // 000000D94924: BFB50000

0000000000d94928 <PrefetchGlobalLastIterEnd_5>:
	v_and_b32_e32 v35, 0xf00fff, v35                           // 000000D94928: 364646FF 00F00FFF
	v_and_b32_e32 v36, 0xf00fff, v36                           // 000000D94930: 364848FF 00F00FFF
	s_and_b32 s5, 7, s49                                       // 000000D94938: 8B053187
	s_cmp_eq_u32 s5, 0                                         // 000000D9493C: BF068005
	s_cbranch_scc1 SkipTailLoopL_8                             // 000000D94940: BFA2004A
	s_mov_b32 s6, 0                                            // 000000D94944: BE860080
	buffer_load_b32 v40, v37, s[8:11], 0 offen                 // 000000D94948: E0500000 80422825
	buffer_load_b32 v41, v37, s[8:11], s31 offen               // 000000D94950: E0500000 1F422925
	buffer_load_b32 v42, v38, s[12:15], 0 offen                // 000000D94958: E0500000 80432A26
	buffer_load_b32 v43, v38, s[12:15], s32 offen              // 000000D94960: E0500000 20432B26
	s_waitcnt vmcnt(0)                                         // 000000D94968: BF8903F7
	s_waitcnt_lgkmcnt null, 0x0                                // 000000D9496C: BDFC0000
	s_barrier                                                  // 000000D94970: BFBD0000
	ds_store_b32 v35, v40                                      // 000000D94974: D8340000 00002823
	ds_store_b32 v35, v41 offset:128                           // 000000D9497C: D8340080 00002923
	ds_store_b32 v36, v42                                      // 000000D94984: D8340000 00002A24
	ds_store_b32 v36, v43 offset:128                           // 000000D9498C: D8340080 00002B24
	s_waitcnt lgkmcnt(0)                                       // 000000D94994: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000D94998: BDFC0000
	s_barrier                                                  // 000000D9499C: BFBD0000
	v_and_b32_e32 v44, 0xfff, v44                              // 000000D949A0: 365858FF 00000FFF
	v_and_b32_e32 v45, 0xfff, v45                              // 000000D949A8: 365A5AFF 00000FFF

0000000000d949b0 <TailLoopBeginL_6>:
	ds_load_b32 v18, v44                                       // 000000D949B0: D8D80000 1200002C
	ds_load_b32 v19, v44 offset:64                             // 000000D949B8: D8D80040 1300002C
	ds_load_b32 v20, v44 offset:128                            // 000000D949C0: D8D80080 1400002C
	ds_load_b32 v21, v44 offset:192                            // 000000D949C8: D8D800C0 1500002C
	ds_load_b32 v27, v45                                       // 000000D949D0: D8D80000 1B00002D
	ds_load_b32 v28, v45 offset:64                             // 000000D949D8: D8D80040 1C00002D
	ds_load_b32 v29, v45 offset:128                            // 000000D949E0: D8D80080 1D00002D
	ds_load_b32 v30, v45 offset:192                            // 000000D949E8: D8D800C0 1E00002D
	s_mov_b32 s33, 0x100                                       // 000000D949F0: BEA100FF 00000100
	v_add_co_u32 v44, vcc_lo, s33, v44                         // 000000D949F8: D7006A2C 00025821
	s_mov_b32 s33, 0x100                                       // 000000D94A00: BEA100FF 00000100
	v_add_co_u32 v45, vcc_lo, s33, v45                         // 000000D94A08: D7006A2D 00025A21
	s_waitcnt lgkmcnt(0)                                       // 000000D94A10: BF89FC07
	v_fmac_f32_e32 v0, v18, v27                                // 000000D94A14: 56003712
	s_setprio 1                                                // 000000D94A18: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000D94A1C: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000D94A20: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000D94A24: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000D94A28: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000D94A2C: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000D94A30: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000D94A34: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000D94A38: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000D94A3C: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000D94A40: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000D94A44: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000D94A48: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000D94A4C: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000D94A50: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000D94A54: 561E3D15
	s_setprio 0                                                // 000000D94A58: BFB50000
	s_sub_i32 s5, s5, 1                                        // 000000D94A5C: 81858105
	s_add_u32 s6, s6, 1                                        // 000000D94A60: 80068106
	s_cmp_le_i32 s5, 0                                         // 000000D94A64: BF058005
	s_cbranch_scc0 TailLoopBeginL_6                            // 000000D94A68: BFA1FFD1

0000000000d94a6c <TailLoopEndL_7>:
	v_lshrrev_b32_e32 v19, 4, v46                              // 000000D94A6C: 32265C84
	v_and_b32_e32 v18, 15, v46                                 // 000000D94A70: 36245C8F
	v_mul_lo_u32 v20, v19, s40                                 // 000000D94A74: D72C0014 00005113
	v_mul_lo_u32 v21, v19, s38                                 // 000000D94A7C: D72C0015 00004D13
	s_mul_i32 s52, 64, s2                                      // 000000D94A84: 963402C0
	v_add_co_u32 v18, vcc_lo, s52, v18                         // 000000D94A88: D7006A12 00022434
	s_mul_i32 s54, 64, s3                                      // 000000D94A90: 963603C0
	v_add_co_u32 v19, vcc_lo, s54, v19                         // 000000D94A94: D7006A13 00022636
	s_cmpk_eq_u32 s37, 0x0                                     // 000000D94A9C: B4A50000
	s_cbranch_scc0 GW_Beta_43                                  // 000000D94AA0: BFA10139
	s_and_b32 s52, 63, s46                                     // 000000D94AA4: 8B342EBF
	s_add_u32 s53, -1, s50                                     // 000000D94AA8: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000D94AAC: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000D94AB0: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000D94AB4: B5B40000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000D94AB8: BFA20042
	s_and_b32 s52, 63, s47                                     // 000000D94ABC: 8B342FBF
	s_add_u32 s53, -1, s51                                     // 000000D94AC0: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000D94AC4: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000D94AC8: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000D94ACC: B5B40000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000D94AD0: BFA2003C

0000000000d94ad4 <GW_B0_E0_31>:
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000D94AD4: D6470018 020A2515
	v_mul_f32_e32 v0, s36, v0                                  // 000000D94ADC: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000D94AE0: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000D94AE4: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000D94AE8: 10060624
	v_mul_f32_e32 v4, s36, v4                                  // 000000D94AEC: 10080824
	v_mul_f32_e32 v5, s36, v5                                  // 000000D94AF0: 100A0A24
	v_mul_f32_e32 v6, s36, v6                                  // 000000D94AF4: 100C0C24
	v_mul_f32_e32 v7, s36, v7                                  // 000000D94AF8: 100E0E24
	v_mul_f32_e32 v8, s36, v8                                  // 000000D94AFC: 10101024
	v_mul_f32_e32 v9, s36, v9                                  // 000000D94B00: 10121224
	v_mul_f32_e32 v10, s36, v10                                // 000000D94B04: 10141424
	v_mul_f32_e32 v11, s36, v11                                // 000000D94B08: 10161624
	v_mul_f32_e32 v12, s36, v12                                // 000000D94B0C: 10181824
	v_mul_f32_e32 v13, s36, v13                                // 000000D94B10: 101A1A24
	v_mul_f32_e32 v14, s36, v14                                // 000000D94B14: 101C1C24
	v_mul_f32_e32 v15, s36, v15                                // 000000D94B18: 101E1E24
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000D94B1C: E0680000 80440018
	buffer_store_b32 v1, v24, s[16:19], 0 offen offset:64      // 000000D94B24: E0680040 80440118
	buffer_store_b32 v2, v24, s[16:19], 0 offen offset:128     // 000000D94B2C: E0680080 80440218
	buffer_store_b32 v3, v24, s[16:19], 0 offen offset:192     // 000000D94B34: E06800C0 80440318
	s_mul_i32 s34, s38, 64                                     // 000000D94B3C: 9622C026
	s_add_u32 s16, s16, s34                                    // 000000D94B40: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000D94B44: 82118011
	buffer_store_b32 v4, v24, s[16:19], 0 offen                // 000000D94B48: E0680000 80440418
	buffer_store_b32 v5, v24, s[16:19], 0 offen offset:64      // 000000D94B50: E0680040 80440518
	buffer_store_b32 v6, v24, s[16:19], 0 offen offset:128     // 000000D94B58: E0680080 80440618
	buffer_store_b32 v7, v24, s[16:19], 0 offen offset:192     // 000000D94B60: E06800C0 80440718
	s_mul_i32 s34, s38, 64                                     // 000000D94B68: 9622C026
	s_add_u32 s16, s16, s34                                    // 000000D94B6C: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000D94B70: 82118011
	buffer_store_b32 v8, v24, s[16:19], 0 offen                // 000000D94B74: E0680000 80440818
	buffer_store_b32 v9, v24, s[16:19], 0 offen offset:64      // 000000D94B7C: E0680040 80440918
	buffer_store_b32 v10, v24, s[16:19], 0 offen offset:128    // 000000D94B84: E0680080 80440A18
	buffer_store_b32 v11, v24, s[16:19], 0 offen offset:192    // 000000D94B8C: E06800C0 80440B18
	s_mul_i32 s34, s38, 64                                     // 000000D94B94: 9622C026
	s_add_u32 s16, s16, s34                                    // 000000D94B98: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000D94B9C: 82118011
	buffer_store_b32 v12, v24, s[16:19], 0 offen               // 000000D94BA0: E0680000 80440C18
	buffer_store_b32 v13, v24, s[16:19], 0 offen offset:64     // 000000D94BA8: E0680040 80440D18
	buffer_store_b32 v14, v24, s[16:19], 0 offen offset:128    // 000000D94BB0: E0680080 80440E18
	buffer_store_b32 v15, v24, s[16:19], 0 offen offset:192    // 000000D94BB8: E06800C0 80440F18
	s_branch label_0047                                        // 000000D94BC0: BFA00309

0000000000d94bc4 <GW_B0_E1_34>:
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000D94BC4: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D94BCC: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D94BD4: 8B363634
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000D94BD8: D6470018 020A2515
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000D94BE0: D5010018 00DA30C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000D94BE8: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D94BF0: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D94BF8: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D94C00: 8B363634
	v_add_lshl_u32 v25, v21, v22, 2                            // 000000D94C04: D6470019 020A2D15
	v_cndmask_b32_e64 v25, -1, v25, s54                        // 000000D94C0C: D5010019 00DA32C1
	v_add_co_u32 v22, vcc_lo, v18, 32                          // 000000D94C14: D7006A16 00014112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D94C1C: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D94C24: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D94C2C: 8B363634
	v_add_lshl_u32 v26, v21, v22, 2                            // 000000D94C30: D647001A 020A2D15
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000D94C38: D501001A 00DA34C1
	v_add_co_u32 v22, vcc_lo, v18, 48                          // 000000D94C40: D7006A16 00016112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D94C48: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D94C50: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D94C58: 8B363634
	v_add_lshl_u32 v27, v21, v22, 2                            // 000000D94C5C: D647001B 020A2D15
	v_cndmask_b32_e64 v27, -1, v27, s54                        // 000000D94C64: D501001B 00DA36C1
	v_add_co_u32 v19, vcc_lo, v19, 16                          // 000000D94C6C: D7006A13 00012113
	s_mul_i32 s52, s40, 16                                     // 000000D94C74: 96349028
	v_add_nc_u32_e64 v20, v20, s52                             // 000000D94C78: D5250014 00006914
	s_mul_i32 s52, s38, 16                                     // 000000D94C80: 96349026
	v_add_nc_u32_e64 v21, v21, s52                             // 000000D94C84: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000D94C8C: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D94C94: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D94C9C: 8B363634
	v_add_lshl_u32 v28, v21, v18, 2                            // 000000D94CA0: D647001C 020A2515
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000D94CA8: D501001C 00DA38C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000D94CB0: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D94CB8: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D94CC0: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D94CC8: 8B363634
	v_add_lshl_u32 v29, v21, v22, 2                            // 000000D94CCC: D647001D 020A2D15
	v_cndmask_b32_e64 v29, -1, v29, s54                        // 000000D94CD4: D501001D 00DA3AC1
	v_add_co_u32 v22, vcc_lo, v18, 32                          // 000000D94CDC: D7006A16 00014112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D94CE4: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D94CEC: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D94CF4: 8B363634
	v_add_lshl_u32 v30, v21, v22, 2                            // 000000D94CF8: D647001E 020A2D15
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000D94D00: D501001E 00DA3CC1
	v_add_co_u32 v22, vcc_lo, v18, 48                          // 000000D94D08: D7006A16 00016112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D94D10: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D94D18: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D94D20: 8B363634
	v_add_lshl_u32 v31, v21, v22, 2                            // 000000D94D24: D647001F 020A2D15
	v_cndmask_b32_e64 v31, -1, v31, s54                        // 000000D94D2C: D501001F 00DA3EC1
	v_add_co_u32 v19, vcc_lo, v19, 16                          // 000000D94D34: D7006A13 00012113
	s_mul_i32 s52, s40, 16                                     // 000000D94D3C: 96349028
	v_add_nc_u32_e64 v20, v20, s52                             // 000000D94D40: D5250014 00006914
	s_mul_i32 s52, s38, 16                                     // 000000D94D48: 96349026
	v_add_nc_u32_e64 v21, v21, s52                             // 000000D94D4C: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000D94D54: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D94D5C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D94D64: 8B363634
	v_add_lshl_u32 v32, v21, v18, 2                            // 000000D94D68: D6470020 020A2515
	v_cndmask_b32_e64 v32, -1, v32, s54                        // 000000D94D70: D5010020 00DA40C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000D94D78: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D94D80: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D94D88: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D94D90: 8B363634
	v_add_lshl_u32 v33, v21, v22, 2                            // 000000D94D94: D6470021 020A2D15
	v_cndmask_b32_e64 v33, -1, v33, s54                        // 000000D94D9C: D5010021 00DA42C1
	v_add_co_u32 v22, vcc_lo, v18, 32                          // 000000D94DA4: D7006A16 00014112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D94DAC: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D94DB4: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D94DBC: 8B363634
	v_add_lshl_u32 v34, v21, v22, 2                            // 000000D94DC0: D6470022 020A2D15
	v_cndmask_b32_e64 v34, -1, v34, s54                        // 000000D94DC8: D5010022 00DA44C1
	v_add_co_u32 v22, vcc_lo, v18, 48                          // 000000D94DD0: D7006A16 00016112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D94DD8: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D94DE0: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D94DE8: 8B363634
	v_add_lshl_u32 v35, v21, v22, 2                            // 000000D94DEC: D6470023 020A2D15
	v_cndmask_b32_e64 v35, -1, v35, s54                        // 000000D94DF4: D5010023 00DA46C1
	v_add_co_u32 v19, vcc_lo, v19, 16                          // 000000D94DFC: D7006A13 00012113
	s_mul_i32 s52, s40, 16                                     // 000000D94E04: 96349028
	v_add_nc_u32_e64 v20, v20, s52                             // 000000D94E08: D5250014 00006914
	s_mul_i32 s52, s38, 16                                     // 000000D94E10: 96349026
	v_add_nc_u32_e64 v21, v21, s52                             // 000000D94E14: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000D94E1C: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D94E24: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D94E2C: 8B363634
	v_add_lshl_u32 v36, v21, v18, 2                            // 000000D94E30: D6470024 020A2515
	v_cndmask_b32_e64 v36, -1, v36, s54                        // 000000D94E38: D5010024 00DA48C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000D94E40: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D94E48: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D94E50: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D94E58: 8B363634
	v_add_lshl_u32 v37, v21, v22, 2                            // 000000D94E5C: D6470025 020A2D15
	v_cndmask_b32_e64 v37, -1, v37, s54                        // 000000D94E64: D5010025 00DA4AC1
	v_add_co_u32 v22, vcc_lo, v18, 32                          // 000000D94E6C: D7006A16 00014112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D94E74: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D94E7C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D94E84: 8B363634
	v_add_lshl_u32 v38, v21, v22, 2                            // 000000D94E88: D6470026 020A2D15
	v_cndmask_b32_e64 v38, -1, v38, s54                        // 000000D94E90: D5010026 00DA4CC1
	v_add_co_u32 v22, vcc_lo, v18, 48                          // 000000D94E98: D7006A16 00016112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D94EA0: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D94EA8: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D94EB0: 8B363634
	v_add_lshl_u32 v39, v21, v22, 2                            // 000000D94EB4: D6470027 020A2D15
	v_cndmask_b32_e64 v39, -1, v39, s54                        // 000000D94EBC: D5010027 00DA4EC1
	v_mul_f32_e32 v0, s36, v0                                  // 000000D94EC4: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000D94EC8: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000D94ECC: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000D94ED0: 10060624
	v_mul_f32_e32 v4, s36, v4                                  // 000000D94ED4: 10080824
	v_mul_f32_e32 v5, s36, v5                                  // 000000D94ED8: 100A0A24
	v_mul_f32_e32 v6, s36, v6                                  // 000000D94EDC: 100C0C24
	v_mul_f32_e32 v7, s36, v7                                  // 000000D94EE0: 100E0E24
	v_mul_f32_e32 v8, s36, v8                                  // 000000D94EE4: 10101024
	v_mul_f32_e32 v9, s36, v9                                  // 000000D94EE8: 10121224
	v_mul_f32_e32 v10, s36, v10                                // 000000D94EEC: 10141424
	v_mul_f32_e32 v11, s36, v11                                // 000000D94EF0: 10161624
	v_mul_f32_e32 v12, s36, v12                                // 000000D94EF4: 10181824
	v_mul_f32_e32 v13, s36, v13                                // 000000D94EF8: 101A1A24
	v_mul_f32_e32 v14, s36, v14                                // 000000D94EFC: 101C1C24
	v_mul_f32_e32 v15, s36, v15                                // 000000D94F00: 101E1E24
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000D94F04: E0680000 80440018
	buffer_store_b32 v1, v25, s[16:19], 0 offen                // 000000D94F0C: E0680000 80440119
	buffer_store_b32 v2, v26, s[16:19], 0 offen                // 000000D94F14: E0680000 8044021A
	buffer_store_b32 v3, v27, s[16:19], 0 offen                // 000000D94F1C: E0680000 8044031B
	buffer_store_b32 v4, v28, s[16:19], 0 offen                // 000000D94F24: E0680000 8044041C
	buffer_store_b32 v5, v29, s[16:19], 0 offen                // 000000D94F2C: E0680000 8044051D
	buffer_store_b32 v6, v30, s[16:19], 0 offen                // 000000D94F34: E0680000 8044061E
	buffer_store_b32 v7, v31, s[16:19], 0 offen                // 000000D94F3C: E0680000 8044071F
	buffer_store_b32 v8, v32, s[16:19], 0 offen                // 000000D94F44: E0680000 80440820
	buffer_store_b32 v9, v33, s[16:19], 0 offen                // 000000D94F4C: E0680000 80440921
	buffer_store_b32 v10, v34, s[16:19], 0 offen               // 000000D94F54: E0680000 80440A22
	buffer_store_b32 v11, v35, s[16:19], 0 offen               // 000000D94F5C: E0680000 80440B23
	buffer_store_b32 v12, v36, s[16:19], 0 offen               // 000000D94F64: E0680000 80440C24
	buffer_store_b32 v13, v37, s[16:19], 0 offen               // 000000D94F6C: E0680000 80440D25
	buffer_store_b32 v14, v38, s[16:19], 0 offen               // 000000D94F74: E0680000 80440E26
	buffer_store_b32 v15, v39, s[16:19], 0 offen               // 000000D94F7C: E0680000 80440F27
	s_branch label_0047                                        // 000000D94F84: BFA00218

0000000000d94f88 <GW_Beta_43>:
	s_and_b32 s52, 63, s46                                     // 000000D94F88: 8B342EBF
	s_add_u32 s53, -1, s50                                     // 000000D94F8C: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000D94F90: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000D94F94: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000D94F98: B5B40000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000D94F9C: BFA2009D
	s_and_b32 s52, 63, s47                                     // 000000D94FA0: 8B342FBF
	s_add_u32 s53, -1, s51                                     // 000000D94FA4: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000D94FA8: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000D94FAC: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000D94FB0: B5B40000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000D94FB4: BFA20097

0000000000d94fb8 <GW_B1_E0_38>:
	v_add_lshl_u32 v25, v20, v18, 2                            // 000000D94FB8: D6470019 020A2514
	buffer_load_b32 v26, v25, s[20:23], 0 offen                // 000000D94FC0: E0500000 80451A19
	buffer_load_b32 v27, v25, s[20:23], 0 offen offset:64      // 000000D94FC8: E0500040 80451B19
	buffer_load_b32 v28, v25, s[20:23], 0 offen offset:128     // 000000D94FD0: E0500080 80451C19
	buffer_load_b32 v29, v25, s[20:23], 0 offen offset:192     // 000000D94FD8: E05000C0 80451D19
	s_mul_i32 s34, s40, 64                                     // 000000D94FE0: 9622C028
	s_add_u32 s20, s20, s34                                    // 000000D94FE4: 80142214
	s_addc_u32 s21, s21, 0                                     // 000000D94FE8: 82158015
	buffer_load_b32 v30, v25, s[20:23], 0 offen                // 000000D94FEC: E0500000 80451E19
	buffer_load_b32 v31, v25, s[20:23], 0 offen offset:64      // 000000D94FF4: E0500040 80451F19
	buffer_load_b32 v32, v25, s[20:23], 0 offen offset:128     // 000000D94FFC: E0500080 80452019
	buffer_load_b32 v33, v25, s[20:23], 0 offen offset:192     // 000000D95004: E05000C0 80452119
	s_mul_i32 s34, s40, 64                                     // 000000D9500C: 9622C028
	s_add_u32 s20, s20, s34                                    // 000000D95010: 80142214
	s_addc_u32 s21, s21, 0                                     // 000000D95014: 82158015
	buffer_load_b32 v34, v25, s[20:23], 0 offen                // 000000D95018: E0500000 80452219
	buffer_load_b32 v35, v25, s[20:23], 0 offen offset:64      // 000000D95020: E0500040 80452319
	buffer_load_b32 v36, v25, s[20:23], 0 offen offset:128     // 000000D95028: E0500080 80452419
	buffer_load_b32 v37, v25, s[20:23], 0 offen offset:192     // 000000D95030: E05000C0 80452519
	s_mul_i32 s34, s40, 64                                     // 000000D95038: 9622C028
	s_add_u32 s20, s20, s34                                    // 000000D9503C: 80142214
	s_addc_u32 s21, s21, 0                                     // 000000D95040: 82158015
	buffer_load_b32 v38, v25, s[20:23], 0 offen                // 000000D95044: E0500000 80452619
	buffer_load_b32 v39, v25, s[20:23], 0 offen offset:64      // 000000D9504C: E0500040 80452719
	buffer_load_b32 v40, v25, s[20:23], 0 offen offset:128     // 000000D95054: E0500080 80452819
	buffer_load_b32 v41, v25, s[20:23], 0 offen offset:192     // 000000D9505C: E05000C0 80452919
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000D95064: D6470018 020A2515
	v_mul_f32_e32 v0, s36, v0                                  // 000000D9506C: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000D95070: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000D95074: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000D95078: 10060624
	v_mul_f32_e32 v4, s36, v4                                  // 000000D9507C: 10080824
	v_mul_f32_e32 v5, s36, v5                                  // 000000D95080: 100A0A24
	v_mul_f32_e32 v6, s36, v6                                  // 000000D95084: 100C0C24
	v_mul_f32_e32 v7, s36, v7                                  // 000000D95088: 100E0E24
	v_mul_f32_e32 v8, s36, v8                                  // 000000D9508C: 10101024
	v_mul_f32_e32 v9, s36, v9                                  // 000000D95090: 10121224
	v_mul_f32_e32 v10, s36, v10                                // 000000D95094: 10141424
	v_mul_f32_e32 v11, s36, v11                                // 000000D95098: 10161624
	v_mul_f32_e32 v12, s36, v12                                // 000000D9509C: 10181824
	v_mul_f32_e32 v13, s36, v13                                // 000000D950A0: 101A1A24
	v_mul_f32_e32 v14, s36, v14                                // 000000D950A4: 101C1C24
	v_mul_f32_e32 v15, s36, v15                                // 000000D950A8: 101E1E24
	s_waitcnt vmcnt(15)                                        // 000000D950AC: BF893FF7
	v_fmac_f32_e64 v0, v26, s37                                // 000000D950B0: D52B0000 00004B1A
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000D950B8: E0680000 80440018
	s_waitcnt vmcnt(14)                                        // 000000D950C0: BF893BF7
	v_fmac_f32_e64 v1, v27, s37                                // 000000D950C4: D52B0001 00004B1B
	buffer_store_b32 v1, v24, s[16:19], 0 offen offset:64      // 000000D950CC: E0680040 80440118
	s_waitcnt vmcnt(13)                                        // 000000D950D4: BF8937F7
	v_fmac_f32_e64 v2, v28, s37                                // 000000D950D8: D52B0002 00004B1C
	buffer_store_b32 v2, v24, s[16:19], 0 offen offset:128     // 000000D950E0: E0680080 80440218
	s_waitcnt vmcnt(12)                                        // 000000D950E8: BF8933F7
	v_fmac_f32_e64 v3, v29, s37                                // 000000D950EC: D52B0003 00004B1D
	buffer_store_b32 v3, v24, s[16:19], 0 offen offset:192     // 000000D950F4: E06800C0 80440318
	s_waitcnt vmcnt(11)                                        // 000000D950FC: BF892FF7
	v_fmac_f32_e64 v4, v30, s37                                // 000000D95100: D52B0004 00004B1E
	s_mul_i32 s34, s38, 64                                     // 000000D95108: 9622C026
	s_add_u32 s16, s16, s34                                    // 000000D9510C: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000D95110: 82118011
	buffer_store_b32 v4, v24, s[16:19], 0 offen                // 000000D95114: E0680000 80440418
	s_waitcnt vmcnt(10)                                        // 000000D9511C: BF892BF7
	v_fmac_f32_e64 v5, v31, s37                                // 000000D95120: D52B0005 00004B1F
	buffer_store_b32 v5, v24, s[16:19], 0 offen offset:64      // 000000D95128: E0680040 80440518
	s_waitcnt vmcnt(9)                                         // 000000D95130: BF8927F7
	v_fmac_f32_e64 v6, v32, s37                                // 000000D95134: D52B0006 00004B20
	buffer_store_b32 v6, v24, s[16:19], 0 offen offset:128     // 000000D9513C: E0680080 80440618
	s_waitcnt vmcnt(8)                                         // 000000D95144: BF8923F7
	v_fmac_f32_e64 v7, v33, s37                                // 000000D95148: D52B0007 00004B21
	buffer_store_b32 v7, v24, s[16:19], 0 offen offset:192     // 000000D95150: E06800C0 80440718
	s_waitcnt vmcnt(7)                                         // 000000D95158: BF891FF7
	v_fmac_f32_e64 v8, v34, s37                                // 000000D9515C: D52B0008 00004B22
	s_mul_i32 s34, s38, 64                                     // 000000D95164: 9622C026
	s_add_u32 s16, s16, s34                                    // 000000D95168: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000D9516C: 82118011
	buffer_store_b32 v8, v24, s[16:19], 0 offen                // 000000D95170: E0680000 80440818
	s_waitcnt vmcnt(6)                                         // 000000D95178: BF891BF7
	v_fmac_f32_e64 v9, v35, s37                                // 000000D9517C: D52B0009 00004B23
	buffer_store_b32 v9, v24, s[16:19], 0 offen offset:64      // 000000D95184: E0680040 80440918
	s_waitcnt vmcnt(5)                                         // 000000D9518C: BF8917F7
	v_fmac_f32_e64 v10, v36, s37                               // 000000D95190: D52B000A 00004B24
	buffer_store_b32 v10, v24, s[16:19], 0 offen offset:128    // 000000D95198: E0680080 80440A18
	s_waitcnt vmcnt(4)                                         // 000000D951A0: BF8913F7
	v_fmac_f32_e64 v11, v37, s37                               // 000000D951A4: D52B000B 00004B25
	buffer_store_b32 v11, v24, s[16:19], 0 offen offset:192    // 000000D951AC: E06800C0 80440B18
	s_waitcnt vmcnt(3)                                         // 000000D951B4: BF890FF7
	v_fmac_f32_e64 v12, v38, s37                               // 000000D951B8: D52B000C 00004B26
	s_mul_i32 s34, s38, 64                                     // 000000D951C0: 9622C026
	s_add_u32 s16, s16, s34                                    // 000000D951C4: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000D951C8: 82118011
	buffer_store_b32 v12, v24, s[16:19], 0 offen               // 000000D951CC: E0680000 80440C18
	s_waitcnt vmcnt(2)                                         // 000000D951D4: BF890BF7
	v_fmac_f32_e64 v13, v39, s37                               // 000000D951D8: D52B000D 00004B27
	buffer_store_b32 v13, v24, s[16:19], 0 offen offset:64     // 000000D951E0: E0680040 80440D18
	s_waitcnt vmcnt(1)                                         // 000000D951E8: BF8907F7
	v_fmac_f32_e64 v14, v40, s37                               // 000000D951EC: D52B000E 00004B28
	buffer_store_b32 v14, v24, s[16:19], 0 offen offset:128    // 000000D951F4: E0680080 80440E18
	s_waitcnt vmcnt(0)                                         // 000000D951FC: BF8903F7
	v_fmac_f32_e64 v15, v41, s37                               // 000000D95200: D52B000F 00004B29
	buffer_store_b32 v15, v24, s[16:19], 0 offen offset:192    // 000000D95208: E06800C0 80440F18
	s_branch label_0047                                        // 000000D95210: BFA00175

0000000000d95214 <GW_B1_E1_41>:
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000D95214: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D9521C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D95224: 8B363634
	v_add_lshl_u32 v24, v20, v18, 2                            // 000000D95228: D6470018 020A2514
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000D95230: D5010018 00DA30C1
	buffer_load_b32 v25, v24, s[20:23], 0 offen                // 000000D95238: E0500000 80451918
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000D95240: D6470018 020A2515
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000D95248: D5010018 00DA30C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000D95250: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D95258: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D95260: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D95268: 8B363634
	v_add_lshl_u32 v26, v20, v22, 2                            // 000000D9526C: D647001A 020A2D14
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000D95274: D501001A 00DA34C1
	buffer_load_b32 v27, v26, s[20:23], 0 offen                // 000000D9527C: E0500000 80451B1A
	v_add_lshl_u32 v26, v21, v22, 2                            // 000000D95284: D647001A 020A2D15
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000D9528C: D501001A 00DA34C1
	v_add_co_u32 v22, vcc_lo, v18, 32                          // 000000D95294: D7006A16 00014112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D9529C: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D952A4: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D952AC: 8B363634
	v_add_lshl_u32 v28, v20, v22, 2                            // 000000D952B0: D647001C 020A2D14
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000D952B8: D501001C 00DA38C1
	buffer_load_b32 v29, v28, s[20:23], 0 offen                // 000000D952C0: E0500000 80451D1C
	v_add_lshl_u32 v28, v21, v22, 2                            // 000000D952C8: D647001C 020A2D15
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000D952D0: D501001C 00DA38C1
	v_add_co_u32 v22, vcc_lo, v18, 48                          // 000000D952D8: D7006A16 00016112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D952E0: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D952E8: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D952F0: 8B363634
	v_add_lshl_u32 v30, v20, v22, 2                            // 000000D952F4: D647001E 020A2D14
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000D952FC: D501001E 00DA3CC1
	buffer_load_b32 v31, v30, s[20:23], 0 offen                // 000000D95304: E0500000 80451F1E
	v_add_lshl_u32 v30, v21, v22, 2                            // 000000D9530C: D647001E 020A2D15
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000D95314: D501001E 00DA3CC1
	v_add_co_u32 v19, vcc_lo, v19, 16                          // 000000D9531C: D7006A13 00012113
	s_mul_i32 s52, s40, 16                                     // 000000D95324: 96349028
	v_add_nc_u32_e64 v20, v20, s52                             // 000000D95328: D5250014 00006914
	s_mul_i32 s52, s38, 16                                     // 000000D95330: 96349026
	v_add_nc_u32_e64 v21, v21, s52                             // 000000D95334: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000D9533C: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D95344: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D9534C: 8B363634
	v_add_lshl_u32 v32, v20, v18, 2                            // 000000D95350: D6470020 020A2514
	v_cndmask_b32_e64 v32, -1, v32, s54                        // 000000D95358: D5010020 00DA40C1
	buffer_load_b32 v33, v32, s[20:23], 0 offen                // 000000D95360: E0500000 80452120
	v_add_lshl_u32 v32, v21, v18, 2                            // 000000D95368: D6470020 020A2515
	v_cndmask_b32_e64 v32, -1, v32, s54                        // 000000D95370: D5010020 00DA40C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000D95378: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D95380: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D95388: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D95390: 8B363634
	v_add_lshl_u32 v34, v20, v22, 2                            // 000000D95394: D6470022 020A2D14
	v_cndmask_b32_e64 v34, -1, v34, s54                        // 000000D9539C: D5010022 00DA44C1
	buffer_load_b32 v35, v34, s[20:23], 0 offen                // 000000D953A4: E0500000 80452322
	v_add_lshl_u32 v34, v21, v22, 2                            // 000000D953AC: D6470022 020A2D15
	v_cndmask_b32_e64 v34, -1, v34, s54                        // 000000D953B4: D5010022 00DA44C1
	v_add_co_u32 v22, vcc_lo, v18, 32                          // 000000D953BC: D7006A16 00014112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D953C4: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D953CC: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D953D4: 8B363634
	v_add_lshl_u32 v36, v20, v22, 2                            // 000000D953D8: D6470024 020A2D14
	v_cndmask_b32_e64 v36, -1, v36, s54                        // 000000D953E0: D5010024 00DA48C1
	buffer_load_b32 v37, v36, s[20:23], 0 offen                // 000000D953E8: E0500000 80452524
	v_add_lshl_u32 v36, v21, v22, 2                            // 000000D953F0: D6470024 020A2D15
	v_cndmask_b32_e64 v36, -1, v36, s54                        // 000000D953F8: D5010024 00DA48C1
	v_add_co_u32 v22, vcc_lo, v18, 48                          // 000000D95400: D7006A16 00016112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D95408: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D95410: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D95418: 8B363634
	v_add_lshl_u32 v38, v20, v22, 2                            // 000000D9541C: D6470026 020A2D14
	v_cndmask_b32_e64 v38, -1, v38, s54                        // 000000D95424: D5010026 00DA4CC1
	buffer_load_b32 v39, v38, s[20:23], 0 offen                // 000000D9542C: E0500000 80452726
	v_add_lshl_u32 v38, v21, v22, 2                            // 000000D95434: D6470026 020A2D15
	v_cndmask_b32_e64 v38, -1, v38, s54                        // 000000D9543C: D5010026 00DA4CC1
	v_add_co_u32 v19, vcc_lo, v19, 16                          // 000000D95444: D7006A13 00012113
	s_mul_i32 s52, s40, 16                                     // 000000D9544C: 96349028
	v_add_nc_u32_e64 v20, v20, s52                             // 000000D95450: D5250014 00006914
	s_mul_i32 s52, s38, 16                                     // 000000D95458: 96349026
	v_add_nc_u32_e64 v21, v21, s52                             // 000000D9545C: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000D95464: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D9546C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D95474: 8B363634
	v_add_lshl_u32 v40, v20, v18, 2                            // 000000D95478: D6470028 020A2514
	v_cndmask_b32_e64 v40, -1, v40, s54                        // 000000D95480: D5010028 00DA50C1
	buffer_load_b32 v41, v40, s[20:23], 0 offen                // 000000D95488: E0500000 80452928
	v_add_lshl_u32 v40, v21, v18, 2                            // 000000D95490: D6470028 020A2515
	v_cndmask_b32_e64 v40, -1, v40, s54                        // 000000D95498: D5010028 00DA50C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000D954A0: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D954A8: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D954B0: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D954B8: 8B363634
	v_add_lshl_u32 v42, v20, v22, 2                            // 000000D954BC: D647002A 020A2D14
	v_cndmask_b32_e64 v42, -1, v42, s54                        // 000000D954C4: D501002A 00DA54C1
	buffer_load_b32 v43, v42, s[20:23], 0 offen                // 000000D954CC: E0500000 80452B2A
	v_add_lshl_u32 v42, v21, v22, 2                            // 000000D954D4: D647002A 020A2D15
	v_cndmask_b32_e64 v42, -1, v42, s54                        // 000000D954DC: D501002A 00DA54C1
	v_mul_f32_e32 v0, s36, v0                                  // 000000D954E4: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000D954E8: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000D954EC: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000D954F0: 10060624
	v_mul_f32_e32 v4, s36, v4                                  // 000000D954F4: 10080824
	v_mul_f32_e32 v5, s36, v5                                  // 000000D954F8: 100A0A24
	v_mul_f32_e32 v6, s36, v6                                  // 000000D954FC: 100C0C24
	v_mul_f32_e32 v7, s36, v7                                  // 000000D95500: 100E0E24
	v_mul_f32_e32 v8, s36, v8                                  // 000000D95504: 10101024
	v_mul_f32_e32 v9, s36, v9                                  // 000000D95508: 10121224
	s_waitcnt vmcnt(0)                                         // 000000D9550C: BF8903F7
	s_waitcnt_vscnt null, 0x0                                  // 000000D95510: BC7C0000
	v_fmac_f32_e64 v0, v25, s37                                // 000000D95514: D52B0000 00004B19
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000D9551C: E0680000 80440018
	v_fmac_f32_e64 v1, v27, s37                                // 000000D95524: D52B0001 00004B1B
	buffer_store_b32 v1, v26, s[16:19], 0 offen                // 000000D9552C: E0680000 8044011A
	v_fmac_f32_e64 v2, v29, s37                                // 000000D95534: D52B0002 00004B1D
	buffer_store_b32 v2, v28, s[16:19], 0 offen                // 000000D9553C: E0680000 8044021C
	v_fmac_f32_e64 v3, v31, s37                                // 000000D95544: D52B0003 00004B1F
	buffer_store_b32 v3, v30, s[16:19], 0 offen                // 000000D9554C: E0680000 8044031E
	v_fmac_f32_e64 v4, v33, s37                                // 000000D95554: D52B0004 00004B21
	buffer_store_b32 v4, v32, s[16:19], 0 offen                // 000000D9555C: E0680000 80440420
	v_fmac_f32_e64 v5, v35, s37                                // 000000D95564: D52B0005 00004B23
	buffer_store_b32 v5, v34, s[16:19], 0 offen                // 000000D9556C: E0680000 80440522
	v_fmac_f32_e64 v6, v37, s37                                // 000000D95574: D52B0006 00004B25
	buffer_store_b32 v6, v36, s[16:19], 0 offen                // 000000D9557C: E0680000 80440624
	v_fmac_f32_e64 v7, v39, s37                                // 000000D95584: D52B0007 00004B27
	buffer_store_b32 v7, v38, s[16:19], 0 offen                // 000000D9558C: E0680000 80440726
	v_fmac_f32_e64 v8, v41, s37                                // 000000D95594: D52B0008 00004B29
	buffer_store_b32 v8, v40, s[16:19], 0 offen                // 000000D9559C: E0680000 80440828
	v_fmac_f32_e64 v9, v43, s37                                // 000000D955A4: D52B0009 00004B2B
	buffer_store_b32 v9, v42, s[16:19], 0 offen                // 000000D955AC: E0680000 8044092A
	v_add_co_u32 v22, vcc_lo, v18, 32                          // 000000D955B4: D7006A16 00014112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D955BC: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D955C4: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D955CC: 8B363634
	v_add_lshl_u32 v24, v20, v22, 2                            // 000000D955D0: D6470018 020A2D14
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000D955D8: D5010018 00DA30C1
	buffer_load_b32 v25, v24, s[20:23], 0 offen                // 000000D955E0: E0500000 80451918
	v_add_lshl_u32 v24, v21, v22, 2                            // 000000D955E8: D6470018 020A2D15
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000D955F0: D5010018 00DA30C1
	v_add_co_u32 v22, vcc_lo, v18, 48                          // 000000D955F8: D7006A16 00016112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D95600: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D95608: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D95610: 8B363634
	v_add_lshl_u32 v26, v20, v22, 2                            // 000000D95614: D647001A 020A2D14
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000D9561C: D501001A 00DA34C1
	buffer_load_b32 v27, v26, s[20:23], 0 offen                // 000000D95624: E0500000 80451B1A
	v_add_lshl_u32 v26, v21, v22, 2                            // 000000D9562C: D647001A 020A2D15
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000D95634: D501001A 00DA34C1
	v_add_co_u32 v19, vcc_lo, v19, 16                          // 000000D9563C: D7006A13 00012113
	s_mul_i32 s52, s40, 16                                     // 000000D95644: 96349028
	v_add_nc_u32_e64 v20, v20, s52                             // 000000D95648: D5250014 00006914
	s_mul_i32 s52, s38, 16                                     // 000000D95650: 96349026
	v_add_nc_u32_e64 v21, v21, s52                             // 000000D95654: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000D9565C: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D95664: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D9566C: 8B363634
	v_add_lshl_u32 v28, v20, v18, 2                            // 000000D95670: D647001C 020A2514
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000D95678: D501001C 00DA38C1
	buffer_load_b32 v29, v28, s[20:23], 0 offen                // 000000D95680: E0500000 80451D1C
	v_add_lshl_u32 v28, v21, v18, 2                            // 000000D95688: D647001C 020A2515
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000D95690: D501001C 00DA38C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000D95698: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D956A0: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D956A8: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D956B0: 8B363634
	v_add_lshl_u32 v30, v20, v22, 2                            // 000000D956B4: D647001E 020A2D14
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000D956BC: D501001E 00DA3CC1
	buffer_load_b32 v31, v30, s[20:23], 0 offen                // 000000D956C4: E0500000 80451F1E
	v_add_lshl_u32 v30, v21, v22, 2                            // 000000D956CC: D647001E 020A2D15
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000D956D4: D501001E 00DA3CC1
	v_add_co_u32 v22, vcc_lo, v18, 32                          // 000000D956DC: D7006A16 00014112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D956E4: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D956EC: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D956F4: 8B363634
	v_add_lshl_u32 v32, v20, v22, 2                            // 000000D956F8: D6470020 020A2D14
	v_cndmask_b32_e64 v32, -1, v32, s54                        // 000000D95700: D5010020 00DA40C1
	buffer_load_b32 v33, v32, s[20:23], 0 offen                // 000000D95708: E0500000 80452120
	v_add_lshl_u32 v32, v21, v22, 2                            // 000000D95710: D6470020 020A2D15
	v_cndmask_b32_e64 v32, -1, v32, s54                        // 000000D95718: D5010020 00DA40C1
	v_add_co_u32 v22, vcc_lo, v18, 48                          // 000000D95720: D7006A16 00016112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000D95728: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000D95730: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000D95738: 8B363634
	v_add_lshl_u32 v34, v20, v22, 2                            // 000000D9573C: D6470022 020A2D14
	v_cndmask_b32_e64 v34, -1, v34, s54                        // 000000D95744: D5010022 00DA44C1
	buffer_load_b32 v35, v34, s[20:23], 0 offen                // 000000D9574C: E0500000 80452322
	v_add_lshl_u32 v34, v21, v22, 2                            // 000000D95754: D6470022 020A2D15
	v_cndmask_b32_e64 v34, -1, v34, s54                        // 000000D9575C: D5010022 00DA44C1
	v_mul_f32_e32 v10, s36, v10                                // 000000D95764: 10141424
	v_mul_f32_e32 v11, s36, v11                                // 000000D95768: 10161624
	v_mul_f32_e32 v12, s36, v12                                // 000000D9576C: 10181824
	v_mul_f32_e32 v13, s36, v13                                // 000000D95770: 101A1A24
	v_mul_f32_e32 v14, s36, v14                                // 000000D95774: 101C1C24
	v_mul_f32_e32 v15, s36, v15                                // 000000D95778: 101E1E24
	s_waitcnt vmcnt(0)                                         // 000000D9577C: BF8903F7
	s_waitcnt_vscnt null, 0x0                                  // 000000D95780: BC7C0000
	v_fmac_f32_e64 v10, v25, s37                               // 000000D95784: D52B000A 00004B19
	buffer_store_b32 v10, v24, s[16:19], 0 offen               // 000000D9578C: E0680000 80440A18
	v_fmac_f32_e64 v11, v27, s37                               // 000000D95794: D52B000B 00004B1B
	buffer_store_b32 v11, v26, s[16:19], 0 offen               // 000000D9579C: E0680000 80440B1A
	v_fmac_f32_e64 v12, v29, s37                               // 000000D957A4: D52B000C 00004B1D
	buffer_store_b32 v12, v28, s[16:19], 0 offen               // 000000D957AC: E0680000 80440C1C
	v_fmac_f32_e64 v13, v31, s37                               // 000000D957B4: D52B000D 00004B1F
	buffer_store_b32 v13, v30, s[16:19], 0 offen               // 000000D957BC: E0680000 80440D1E
	v_fmac_f32_e64 v14, v33, s37                               // 000000D957C4: D52B000E 00004B21
	buffer_store_b32 v14, v32, s[16:19], 0 offen               // 000000D957CC: E0680000 80440E20
	v_fmac_f32_e64 v15, v35, s37                               // 000000D957D4: D52B000F 00004B23
	buffer_store_b32 v15, v34, s[16:19], 0 offen               // 000000D957DC: E0680000 80440F22
	s_branch label_0047                                        // 000000D957E4: BFA00000

0000000000d957e8 <label_GW_End_42>:
	s_endpgm                                                   // 000000D957E8: BFB00000
		...
