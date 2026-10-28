
/root/batchmatmulmaxsum/implement/hip/results/s0_20261028/code_objects/_code_object0005.o:	file format elf64-amdgpu

Disassembly of section .text:

0000000000e06600 <Cijk_Alik_Bljk_SB_MT32x8x8_SN_1LDSB0_APM1_ABV0_ACED0_AF0EM1_AF1EM1_AMAS0_ASE_ASGT_ASLT_ASM_ASAE01_ASCE01_ASEM1_AAC0_BL1_BS1_CLR0_DTLA0_DTLB0_DTVA0_DTVB0_DVO0_ETSP_EPS1_ELFLR0_EMLL0_FSSC10_FL0_GLVWA1_GLVWB1_GRCGA1_GRCGB1_GRPM1_GRVW1_GSU1_GSUASB_GLS0_ISA1100_IU1_K1_KLA_LBSPPA0_LBSPPB0_LPA0_LPB0_LDL1_LRVW1_LWPMn1_LDW0_FMA_MIAV0_MDA2_MO40_MMFGLC_MKFGSU256_NTA0_NTB0_NTC0_NTD0_NEPBS0_NLCA1_NLCB1_ONLL1_OPLV0_PK0_PAP0_PGR1_PLR1_PKA0_SIA1_SLW1_SS0_SU32_SUM3_SUS128_SCIUI1_SPO0_SRVW0_SSO0_SVW4_SNLL0_TSGRA0_TSGRB0_TT2_2_TLDS0_UMLDSA0_UMLDSB0_U64SL1_USFGROn1_VAW1_VSn1_VW1_VWB1_VFLRP0_WSGRA0_WSGRB0_WS32_WG16_4_1_WGM8_preloaded>:
	s_mov_b32 vcc_hi, 0                                        // 000000E06600: BEEB0080
	s_load_b512 s[24:39], s[0:1], null                         // 000000E06604: F4100600 F8000000
	s_load_b512 s[40:55], s[0:1], 0x40                         // 000000E0660C: F4100A00 F8000040
	s_mov_b32 m0, 0xd00                                        // 000000E06614: BEFD00FF 00000D00
	v_mov_b32_e32 v27, v0                                      // 000000E0661C: 7E360300
	v_lshrrev_b32_e32 v0, 4, v27                               // 000000E06620: 32003684
	v_and_b32_e32 v1, 15, v27                                  // 000000E06624: 3602368F
	v_lshrrev_b32_e32 v2, 2, v0                                // 000000E06628: 32040082
	v_and_b32_e32 v3, 3, v0                                    // 000000E0662C: 36060083
	v_lshrrev_b32_e32 v0, 6, v27                               // 000000E06630: 32003686
	v_lshlrev_b32_e32 v0, 5, v0                                // 000000E06634: 30000085
	v_add_lshl_u32 v25, v0, v1, 2                              // 000000E06638: D6470019 020A0300
	v_lshrrev_b32_e32 v0, 6, v27                               // 000000E06640: 32003686
	v_lshlrev_b32_e32 v0, 3, v0                                // 000000E06644: 30000083
	v_add_lshl_u32 v26, v0, v3, 2                              // 000000E06648: D647001A 020A0700
	v_add_co_u32 v26, vcc_lo, 0x400, v26                       // 000000E06650: D7006A1A 000234FF 00000400
	v_lshrrev_b32_e32 v0, 3, v27                               // 000000E0665C: 32003683
	v_and_b32_e32 v1, 7, v27                                   // 000000E06660: 36023687
	v_lshrrev_b32_e32 v2, 3, v27                               // 000000E06664: 32043683
	v_and_b32_e32 v3, 7, v27                                   // 000000E06668: 36063687
	v_mul_u32_u24_e32 v15, 32, v1                              // 000000E0666C: 161E02A0
	v_add_lshl_u32 v15, v0, v15, 2                             // 000000E06670: D647000F 020A1F00
	v_mul_u32_u24_e32 v16, 8, v3                               // 000000E06678: 16200688
	v_add_lshl_u32 v16, v2, v16, 2                             // 000000E0667C: D6470010 020A2102
	v_add_co_u32 v16, vcc_lo, 0x400, v16                       // 000000E06684: D7006A10 000220FF 00000400
	s_waitcnt lgkmcnt(0)                                       // 000000E06690: BF89FC07
	s_mov_b64 s[20:21], s[30:31]                               // 000000E06694: BE94011E
	s_mov_b64 s[16:17], s[28:29]                               // 000000E06698: BE90011C
	s_sub_u32 s8, s32, 4                                       // 000000E0669C: 80888420
	s_subb_u32 s9, s33, 0                                      // 000000E066A0: 82898021
	s_sub_u32 s12, s34, 4                                      // 000000E066A4: 808C8422
	s_subb_u32 s13, s35, 0                                     // 000000E066A8: 828D8023
	v_cmp_eq_f32_e64 vcc_lo, s36, 0                            // 000000E066AC: D412006A 00010024
	s_cbranch_vccz label_AlphaNonZero                          // 000000E066B4: BFA30001
	s_mov_b32 s49, 0                                           // 000000E066B8: BEB10080

0000000000e066bc <label_AlphaNonZero>:
	s_mov_b32 s65, 0x10000001                                  // 000000E066BC: BEC100FF 10000001
	s_mul_hi_u32 s63, s3, s65                                  // 000000E066C4: 96BF4103
	s_mul_i32 s62, s3, s65                                     // 000000E066C8: 963E4103
	s_lshr_b64 s[62:63], s[62:63], 31                          // 000000E066CC: 85BE9F3E
	s_mul_i32 s63, s62, 8                                      // 000000E066D0: 963F883E
	s_sub_u32 s63, s3, s63                                     // 000000E066D4: 80BF3F03
	s_mul_i32 s63, s63, s51                                    // 000000E066D8: 963F333F
	s_add_u32 s63, s63, s2                                     // 000000E066DC: 803F023F
	s_cmp_ge_u32 s62, s53                                      // 000000E066E0: BF09353E
	s_cmov_b32 s65, s55                                        // 000000E066E4: BEC10237
	s_cselect_b32 s64, s54, 8                                  // 000000E066E8: 98408836
	s_mul_hi_u32 s3, s63, s65                                  // 000000E066EC: 9683413F
	s_mul_i32 s2, s63, s65                                     // 000000E066F0: 9602413F
	s_lshr_b64 s[2:3], s[2:3], 31                              // 000000E066F4: 85829F02
	s_mul_i32 s3, s2, s64                                      // 000000E066F8: 96034002
	s_sub_u32 s3, s63, s3                                      // 000000E066FC: 8083033F
	s_mul_i32 s62, s62, 8                                      // 000000E06700: 963E883E
	s_add_u32 s3, s3, s62                                      // 000000E06704: 80033E03
	v_mul_lo_u32 v6, s42, v0                                   // 000000E06708: D72C0006 0002002A
	v_add_co_u32 v17, vcc_lo, v1, v6                           // 000000E06710: D7006A11 00020D01
	v_add_nc_u32_e32 v17, 1, v17                               // 000000E06718: 4A222281
	v_lshlrev_b32_e32 v17, 2, v17                              // 000000E0671C: 30222282
	s_mul_i32 s58, s42, 8                                      // 000000E06720: 963A882A
	s_lshl_b32 s58, s58, 2                                     // 000000E06724: 843A823A
	s_mul_i32 s59, s42, 16                                     // 000000E06728: 963B902A
	s_lshl_b32 s59, s59, 2                                     // 000000E0672C: 843B823B
	s_mul_i32 s60, s42, 24                                     // 000000E06730: 963C982A
	s_lshl_b32 s60, s60, 2                                     // 000000E06734: 843C823C
	v_mul_lo_u32 v6, s44, v2                                   // 000000E06738: D72C0006 0002042C
	v_add_co_u32 v18, vcc_lo, v3, v6                           // 000000E06740: D7006A12 00020D03
	v_add_nc_u32_e32 v18, 1, v18                               // 000000E06748: 4A242481
	v_lshlrev_b32_e32 v18, 2, v18                              // 000000E0674C: 30242482
	s_mul_hi_u32 s65, s2, 32                                   // 000000E06750: 96C1A002
	s_mul_i32 s64, s2, 32                                      // 000000E06754: 9640A002
	s_mul_hi_u32 s65, s64, s42                                 // 000000E06758: 96C12A40
	s_mul_i32 s64, s64, s42                                    // 000000E0675C: 96402A40
	s_sub_u32 s0, s24, s64                                     // 000000E06760: 80804018
	s_subb_u32 s1, s25, s65                                    // 000000E06764: 82814119
	s_lshl_b64 s[0:1], s[0:1], 2                               // 000000E06768: 84808200
	s_add_u32 s0, s0, 4                                        // 000000E0676C: 80008400
	s_addc_u32 s1, s1, 0                                       // 000000E06770: 82018001
	s_cmp_eq_u32 s1, 0                                         // 000000E06774: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000E06778: 980AC100
	s_mul_hi_u32 s63, s43, s4                                  // 000000E0677C: 96BF042B
	s_mul_i32 s62, s43, s4                                     // 000000E06780: 963E042B
	s_add_u32 s64, s64, s62                                    // 000000E06784: 80403E40
	s_addc_u32 s65, s65, s63                                   // 000000E06788: 82413F41
	s_lshl_b64 s[64:65], s[64:65], 2                           // 000000E0678C: 84C08240
	s_add_u32 s8, s8, s64                                      // 000000E06790: 80084008
	s_addc_u32 s9, s9, s65                                     // 000000E06794: 82094109
	s_mov_b32 s11, 0x31004000                                  // 000000E06798: BE8B00FF 31004000
	s_mul_hi_u32 s65, s3, 8                                    // 000000E067A0: 96C18803
	s_mul_i32 s64, s3, 8                                       // 000000E067A4: 96408803
	s_mul_hi_u32 s65, s64, s44                                 // 000000E067A8: 96C12C40
	s_mul_i32 s64, s64, s44                                    // 000000E067AC: 96402C40
	s_sub_u32 s28, s26, s64                                    // 000000E067B0: 809C401A
	s_subb_u32 s29, s27, s65                                   // 000000E067B4: 829D411B
	s_lshl_b64 s[28:29], s[28:29], 2                           // 000000E067B8: 849C821C
	s_add_u32 s28, s28, 4                                      // 000000E067BC: 801C841C
	s_addc_u32 s29, s29, 0                                     // 000000E067C0: 821D801D
	s_cmp_eq_u32 s29, 0                                        // 000000E067C4: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000E067C8: 980EC11C
	s_mul_hi_u32 s63, s45, s4                                  // 000000E067CC: 96BF042D
	s_mul_i32 s62, s45, s4                                     // 000000E067D0: 963E042D
	s_add_u32 s64, s64, s62                                    // 000000E067D4: 80403E40
	s_addc_u32 s65, s65, s63                                   // 000000E067D8: 82413F41
	s_lshl_b64 s[64:65], s[64:65], 2                           // 000000E067DC: 84C08240
	s_add_u32 s12, s12, s64                                    // 000000E067E0: 800C400C
	s_addc_u32 s13, s13, s65                                   // 000000E067E4: 820D410D
	s_mov_b32 s15, 0x31004000                                  // 000000E067E8: BE8F00FF 31004000
	s_mov_b32 s34, 32                                          // 000000E067F0: BEA200A0
	s_mov_b32 s35, 32                                          // 000000E067F4: BEA300A0
	s_lshr_b32 s5, s49, 3                                      // 000000E067F8: 85058331
	s_mov_b32 s6, s5                                           // 000000E067FC: BE860005
	s_mul_i32 s62, s51, s52                                    // 000000E06800: 963E3433
	s_mul_i32 s62, s62, s4                                     // 000000E06804: 963E043E
	s_mul_i32 s63, s51, s3                                     // 000000E06808: 963F0333
	s_add_u32 s62, s62, s63                                    // 000000E0680C: 803E3F3E
	s_add_u32 s62, s62, s2                                     // 000000E06810: 803E023E
	s_and_b32 s7, s50, s62                                     // 000000E06814: 8B073E32
	s_lshl_b32 s7, s7, 2                                       // 000000E06818: 84078207
	s_mul_hi_u32 s63, s7, s34                                  // 000000E0681C: 96BF2207
	s_mul_i32 s62, s7, s34                                     // 000000E06820: 963E2207
	s_mul_hi_u32 s31, s5, s34                                  // 000000E06824: 969F2205
	s_mul_i32 s30, s5, s34                                     // 000000E06828: 961E2205
	s_sub_u32 s30, s34, s30                                    // 000000E0682C: 809E1E22
	s_subb_u32 s31, 0, s31                                     // 000000E06830: 829F1F80
	s_add_u32 s8, s8, s62                                      // 000000E06834: 80083E08
	s_addc_u32 s9, s9, s63                                     // 000000E06838: 82093F09
	s_sub_u32 s0, s0, s62                                      // 000000E0683C: 80803E00
	s_subb_u32 s1, s1, s63                                     // 000000E06840: 82813F01
	s_cmp_eq_u32 s1, 0                                         // 000000E06844: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000E06848: 980AC100
	s_mul_hi_u32 s63, s7, s35                                  // 000000E0684C: 96BF2307
	s_mul_i32 s62, s7, s35                                     // 000000E06850: 963E2307
	s_mul_hi_u32 s33, s5, s35                                  // 000000E06854: 96A12305
	s_mul_i32 s32, s5, s35                                     // 000000E06858: 96202305
	s_sub_u32 s32, s35, s32                                    // 000000E0685C: 80A02023
	s_subb_u32 s33, 0, s33                                     // 000000E06860: 82A12180
	s_add_u32 s12, s12, s62                                    // 000000E06864: 800C3E0C
	s_addc_u32 s13, s13, s63                                   // 000000E06868: 820D3F0D
	s_sub_u32 s28, s28, s62                                    // 000000E0686C: 809C3E1C
	s_subb_u32 s29, s29, s63                                   // 000000E06870: 829D3F1D
	s_cmp_eq_u32 s29, 0                                        // 000000E06874: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000E06878: 980EC11C
	s_add_u32 s7, s7, 2                                        // 000000E0687C: 80078207
	s_cmp_eq_u32 s5, 0                                         // 000000E06880: BF068005
	s_cbranch_scc1 ShadowInitStart_10                          // 000000E06884: BFA2001E
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000E06888: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s58 offen               // 000000E06890: E0500000 3A421511
	buffer_load_b32 v22, v17, s[8:11], s59 offen               // 000000E06898: E0500000 3B421611
	buffer_load_b32 v23, v17, s[8:11], s60 offen               // 000000E068A0: E0500000 3C421711
	buffer_load_b32 v24, v18, s[12:15], 0 offen                // 000000E068A8: E0500000 80431812
	s_add_u32 s64, s5, 1                                       // 000000E068B0: 80408105
	s_cmp_eq_u32 s7, s64                                       // 000000E068B4: BF064007
	s_cselect_b32 s62, s30, s34                                // 000000E068B8: 983E221E
	s_cselect_b32 s63, s31, 0                                  // 000000E068BC: 983F801F
	s_add_u32 s8, s8, s62                                      // 000000E068C0: 80083E08
	s_addc_u32 s9, s9, s63                                     // 000000E068C4: 82093F09
	s_sub_u32 s0, s0, s62                                      // 000000E068C8: 80803E00
	s_subb_u32 s1, s1, s63                                     // 000000E068CC: 82813F01
	s_cmp_eq_u32 s1, 0                                         // 000000E068D0: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000E068D4: 980AC100
	s_add_u32 s64, s5, 1                                       // 000000E068D8: 80408105
	s_cmp_eq_u32 s7, s64                                       // 000000E068DC: BF064007
	s_cselect_b32 s62, s32, s35                                // 000000E068E0: 983E2320
	s_cselect_b32 s63, s33, 0                                  // 000000E068E4: 983F8021
	s_add_u32 s12, s12, s62                                    // 000000E068E8: 800C3E0C
	s_addc_u32 s13, s13, s63                                   // 000000E068EC: 820D3F0D
	s_sub_u32 s28, s28, s62                                    // 000000E068F0: 809C3E1C
	s_subb_u32 s29, s29, s63                                   // 000000E068F4: 829D3F1D
	s_cmp_eq_u32 s29, 0                                        // 000000E068F8: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000E068FC: 980EC11C

0000000000e06900 <ShadowInitStart_10>:
	s_mov_b32 s18, 0xfffff000                                  // 000000E06900: BE9200FF FFFFF000
	s_mov_b32 s19, 0x31004000                                  // 000000E06908: BE9300FF 31004000
	s_mov_b32 s22, 0xfffff000                                  // 000000E06910: BE9600FF FFFFF000
	s_mov_b32 s23, 0x31004000                                  // 000000E06918: BE9700FF 31004000
	s_mul_i32 s64, 8, s3                                       // 000000E06920: 96400388
	s_mul_hi_u32 s63, s64, s40                                 // 000000E06924: 96BF2840
	s_mul_i32 s62, s64, s40                                    // 000000E06928: 963E2840
	s_lshl_b64 s[62:63], s[62:63], 2                           // 000000E0692C: 84BE823E
	s_add_u32 s20, s20, s62                                    // 000000E06930: 80143E14
	s_addc_u32 s21, s21, s63                                   // 000000E06934: 82153F15
	s_mul_hi_u32 s63, s64, s38                                 // 000000E06938: 96BF2640
	s_mul_i32 s62, s64, s38                                    // 000000E0693C: 963E2640
	s_lshl_b64 s[62:63], s[62:63], 2                           // 000000E06940: 84BE823E
	s_add_u32 s16, s16, s62                                    // 000000E06944: 80103E10
	s_addc_u32 s17, s17, s63                                   // 000000E06948: 82113F11
	s_mul_hi_u32 s63, s4, s41                                  // 000000E0694C: 96BF2904
	s_mul_i32 s62, s4, s41                                     // 000000E06950: 963E2904
	s_lshl_b64 s[62:63], s[62:63], 2                           // 000000E06954: 84BE823E
	s_add_u32 s20, s20, s62                                    // 000000E06958: 80143E14
	s_addc_u32 s21, s21, s63                                   // 000000E0695C: 82153F15
	s_mul_hi_u32 s63, s4, s39                                  // 000000E06960: 96BF2704
	s_mul_i32 s62, s4, s39                                     // 000000E06964: 963E2704
	s_lshl_b64 s[62:63], s[62:63], 2                           // 000000E06968: 84BE823E
	s_add_u32 s16, s16, s62                                    // 000000E0696C: 80103E10
	s_addc_u32 s17, s17, s63                                   // 000000E06970: 82113F11
	v_mov_b32_e32 v0, 0                                        // 000000E06974: 7E000280
	v_mov_b32_e32 v1, 0                                        // 000000E06978: 7E020280
	v_mov_b32_e32 v2, 0                                        // 000000E0697C: 7E040280
	v_mov_b32_e32 v3, 0                                        // 000000E06980: 7E060280
	s_cmp_eq_u32 s5, 0                                         // 000000E06984: BF068005
	s_cbranch_scc0 label_NoBranch_11                           // 000000E06988: BFA10006
	s_getpc_b64 s[62:63]                                       // 000000E0698C: BEBE4700
	s_add_i32 s64, 0xa04, 4                                    // 000000E06990: 814084FF 00000A04
	s_add_u32 s62, s62, s64                                    // 000000E06998: 803E403E
	s_addc_u32 s63, s63, 0                                     // 000000E0699C: 823F803F
	s_setpc_b64 s[62:63]                                       // 000000E069A0: BE80483E

0000000000e069a4 <label_NoBranch_11>:
	s_waitcnt vmcnt(0)                                         // 000000E069A4: BF8903F7
	ds_store_b32 v15, v20                                      // 000000E069A8: D8340000 0000140F
	ds_store_b32 v15, v21 offset:32                            // 000000E069B0: D8340020 0000150F
	ds_store_b32 v15, v22 offset:64                            // 000000E069B8: D8340040 0000160F
	ds_store_b32 v15, v23 offset:96                            // 000000E069C0: D8340060 0000170F
	ds_store_b32 v16, v24                                      // 000000E069C8: D8340000 00001810
	s_waitcnt lgkmcnt(0)                                       // 000000E069D0: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000E069D4: BDFC0000
	s_barrier                                                  // 000000E069D8: BFBD0000
	ds_load_b32 v6, v25                                        // 000000E069DC: D8D80000 06000019
	ds_load_b32 v7, v25 offset:64                              // 000000E069E4: D8D80040 07000019
	ds_load_b32 v11, v26                                       // 000000E069EC: D8D80000 0B00001A
	ds_load_b32 v12, v26 offset:16                             // 000000E069F4: D8D80010 0C00001A

0000000000e069fc <openLoopL_12>:
	s_cmp_le_u32 s5, 1                                         // 000000E069FC: BF0B8105
	s_cbranch_scc1 LoopEndL_2                                  // 000000E06A00: BFA20157

0000000000e06a04 <label_0013>:
	ds_load_b32 v8, v25 offset:128                             // 000000E06A04: D8D80080 08000019
	ds_load_b32 v9, v25 offset:192                             // 000000E06A0C: D8D800C0 09000019
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000E06A14: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s58 offen               // 000000E06A1C: E0500000 3A421511
	buffer_load_b32 v22, v17, s[8:11], s59 offen               // 000000E06A24: E0500000 3B421611
	buffer_load_b32 v23, v17, s[8:11], s60 offen               // 000000E06A2C: E0500000 3C421711
	ds_load_b32 v13, v26 offset:32                             // 000000E06A34: D8D80020 0D00001A
	ds_load_b32 v14, v26 offset:48                             // 000000E06A3C: D8D80030 0E00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E06A44: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000E06A48: 56001706
	s_setprio 1                                                // 000000E06A4C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000E06A50: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000E06A54: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000E06A58: 56061907
	s_setprio 0                                                // 000000E06A5C: BFB50000
	ds_load_b32 v6, v25 offset:256                             // 000000E06A60: D8D80100 06000019
	ds_load_b32 v7, v25 offset:320                             // 000000E06A68: D8D80140 07000019
	buffer_load_b32 v24, v18, s[12:15], 0 offen                // 000000E06A70: E0500000 80431812
	ds_load_b32 v11, v26 offset:64                             // 000000E06A78: D8D80040 0B00001A
	ds_load_b32 v12, v26 offset:80                             // 000000E06A80: D8D80050 0C00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E06A88: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000E06A8C: 56001B08
	s_setprio 1                                                // 000000E06A90: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000E06A94: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000E06A98: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000E06A9C: 56061D09
	s_setprio 0                                                // 000000E06AA0: BFB50000
	ds_load_b32 v8, v25 offset:384                             // 000000E06AA4: D8D80180 08000019
	ds_load_b32 v9, v25 offset:448                             // 000000E06AAC: D8D801C0 09000019
	s_cmp_eq_u32 s5, s7                                        // 000000E06AB4: BF060705
	s_cselect_b32 s62, s30, s34                                // 000000E06AB8: 983E221E
	s_cselect_b32 s63, s31, 0                                  // 000000E06ABC: 983F801F
	s_add_u32 s8, s8, s62                                      // 000000E06AC0: 80083E08
	s_addc_u32 s9, s9, s63                                     // 000000E06AC4: 82093F09
	s_sub_u32 s0, s0, s62                                      // 000000E06AC8: 80803E00
	s_subb_u32 s1, s1, s63                                     // 000000E06ACC: 82813F01
	s_cmp_eq_u32 s1, 0                                         // 000000E06AD0: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000E06AD4: 980AC100
	ds_load_b32 v13, v26 offset:96                             // 000000E06AD8: D8D80060 0D00001A
	ds_load_b32 v14, v26 offset:112                            // 000000E06AE0: D8D80070 0E00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E06AE8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000E06AEC: 56001706
	s_setprio 1                                                // 000000E06AF0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000E06AF4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000E06AF8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000E06AFC: 56061907
	s_setprio 0                                                // 000000E06B00: BFB50000
	ds_load_b32 v6, v25 offset:512                             // 000000E06B04: D8D80200 06000019
	ds_load_b32 v7, v25 offset:576                             // 000000E06B0C: D8D80240 07000019
	s_cmp_eq_u32 s5, s7                                        // 000000E06B14: BF060705
	s_cselect_b32 s62, s32, s35                                // 000000E06B18: 983E2320
	s_cselect_b32 s63, s33, 0                                  // 000000E06B1C: 983F8021
	s_add_u32 s12, s12, s62                                    // 000000E06B20: 800C3E0C
	s_addc_u32 s13, s13, s63                                   // 000000E06B24: 820D3F0D
	s_sub_u32 s28, s28, s62                                    // 000000E06B28: 809C3E1C
	s_subb_u32 s29, s29, s63                                   // 000000E06B2C: 829D3F1D
	s_cmp_eq_u32 s29, 0                                        // 000000E06B30: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000E06B34: 980EC11C
	ds_load_b32 v11, v26 offset:128                            // 000000E06B38: D8D80080 0B00001A
	ds_load_b32 v12, v26 offset:144                            // 000000E06B40: D8D80090 0C00001A
	s_waitcnt vmcnt(4)                                         // 000000E06B48: BF8913F7
	ds_store_b32 v15, v20 offset:2048                          // 000000E06B4C: D8340800 0000140F
	s_waitcnt lgkmcnt(5)                                       // 000000E06B54: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000E06B58: 56001B08
	s_setprio 1                                                // 000000E06B5C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000E06B60: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000E06B64: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000E06B68: 56061D09
	s_setprio 0                                                // 000000E06B6C: BFB50000
	ds_load_b32 v8, v25 offset:640                             // 000000E06B70: D8D80280 08000019
	ds_load_b32 v9, v25 offset:704                             // 000000E06B78: D8D802C0 09000019
	ds_load_b32 v13, v26 offset:160                            // 000000E06B80: D8D800A0 0D00001A
	ds_load_b32 v14, v26 offset:176                            // 000000E06B88: D8D800B0 0E00001A
	s_waitcnt vmcnt(3)                                         // 000000E06B90: BF890FF7
	ds_store_b32 v15, v21 offset:2080                          // 000000E06B94: D8340820 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000E06B9C: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000E06BA0: 56001706
	s_setprio 1                                                // 000000E06BA4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000E06BA8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000E06BAC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000E06BB0: 56061907
	s_setprio 0                                                // 000000E06BB4: BFB50000
	ds_load_b32 v6, v25 offset:768                             // 000000E06BB8: D8D80300 06000019
	ds_load_b32 v7, v25 offset:832                             // 000000E06BC0: D8D80340 07000019
	ds_load_b32 v11, v26 offset:192                            // 000000E06BC8: D8D800C0 0B00001A
	ds_load_b32 v12, v26 offset:208                            // 000000E06BD0: D8D800D0 0C00001A
	s_waitcnt vmcnt(2)                                         // 000000E06BD8: BF890BF7
	ds_store_b32 v15, v22 offset:2112                          // 000000E06BDC: D8340840 0000160F
	s_waitcnt lgkmcnt(5)                                       // 000000E06BE4: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000E06BE8: 56001B08
	s_setprio 1                                                // 000000E06BEC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000E06BF0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000E06BF4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000E06BF8: 56061D09
	s_setprio 0                                                // 000000E06BFC: BFB50000
	ds_load_b32 v8, v25 offset:896                             // 000000E06C00: D8D80380 08000019
	ds_load_b32 v9, v25 offset:960                             // 000000E06C08: D8D803C0 09000019
	ds_load_b32 v13, v26 offset:224                            // 000000E06C10: D8D800E0 0D00001A
	ds_load_b32 v14, v26 offset:240                            // 000000E06C18: D8D800F0 0E00001A
	s_waitcnt vmcnt(1)                                         // 000000E06C20: BF8907F7
	ds_store_b32 v15, v23 offset:2144                          // 000000E06C24: D8340860 0000170F
	s_waitcnt vmcnt(0)                                         // 000000E06C2C: BF8903F7
	ds_store_b32 v16, v24 offset:2048                          // 000000E06C30: D8340800 00001810
	s_waitcnt lgkmcnt(6)                                       // 000000E06C38: BF89FC67
	v_fmac_f32_e32 v0, v6, v11                                 // 000000E06C3C: 56001706
	s_setprio 1                                                // 000000E06C40: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000E06C44: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000E06C48: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000E06C4C: 56061907
	s_setprio 0                                                // 000000E06C50: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000E06C54: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000E06C58: BDFC0000
	s_barrier                                                  // 000000E06C5C: BFBD0000
	ds_load_b32 v6, v25 offset:2048                            // 000000E06C60: D8D80800 06000019
	ds_load_b32 v7, v25 offset:2112                            // 000000E06C68: D8D80840 07000019
	ds_load_b32 v11, v26 offset:2048                           // 000000E06C70: D8D80800 0B00001A
	ds_load_b32 v12, v26 offset:2064                           // 000000E06C78: D8D80810 0C00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E06C80: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000E06C84: 56001B08
	s_setprio 1                                                // 000000E06C88: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000E06C8C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000E06C90: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000E06C94: 56061D09
	s_setprio 0                                                // 000000E06C98: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000E06C9C: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000E06CA0: BF008105
	s_cbranch_scc1 LoopEndL_oddexit_3                          // 000000E06CA4: BFA200AA

0000000000e06ca8 <label_0014>:
	ds_load_b32 v8, v25 offset:2176                            // 000000E06CA8: D8D80880 08000019
	ds_load_b32 v9, v25 offset:2240                            // 000000E06CB0: D8D808C0 09000019
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000E06CB8: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s58 offen               // 000000E06CC0: E0500000 3A421511
	buffer_load_b32 v22, v17, s[8:11], s59 offen               // 000000E06CC8: E0500000 3B421611
	buffer_load_b32 v23, v17, s[8:11], s60 offen               // 000000E06CD0: E0500000 3C421711
	ds_load_b32 v13, v26 offset:2080                           // 000000E06CD8: D8D80820 0D00001A
	ds_load_b32 v14, v26 offset:2096                           // 000000E06CE0: D8D80830 0E00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E06CE8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000E06CEC: 56001706
	s_setprio 1                                                // 000000E06CF0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000E06CF4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000E06CF8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000E06CFC: 56061907
	s_setprio 0                                                // 000000E06D00: BFB50000
	ds_load_b32 v6, v25 offset:2304                            // 000000E06D04: D8D80900 06000019
	ds_load_b32 v7, v25 offset:2368                            // 000000E06D0C: D8D80940 07000019
	buffer_load_b32 v24, v18, s[12:15], 0 offen                // 000000E06D14: E0500000 80431812
	ds_load_b32 v11, v26 offset:2112                           // 000000E06D1C: D8D80840 0B00001A
	ds_load_b32 v12, v26 offset:2128                           // 000000E06D24: D8D80850 0C00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E06D2C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000E06D30: 56001B08
	s_setprio 1                                                // 000000E06D34: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000E06D38: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000E06D3C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000E06D40: 56061D09
	s_setprio 0                                                // 000000E06D44: BFB50000
	ds_load_b32 v8, v25 offset:2432                            // 000000E06D48: D8D80980 08000019
	ds_load_b32 v9, v25 offset:2496                            // 000000E06D50: D8D809C0 09000019
	s_cmp_eq_u32 s5, s7                                        // 000000E06D58: BF060705
	s_cselect_b32 s62, s30, s34                                // 000000E06D5C: 983E221E
	s_cselect_b32 s63, s31, 0                                  // 000000E06D60: 983F801F
	s_add_u32 s8, s8, s62                                      // 000000E06D64: 80083E08
	s_addc_u32 s9, s9, s63                                     // 000000E06D68: 82093F09
	s_sub_u32 s0, s0, s62                                      // 000000E06D6C: 80803E00
	s_subb_u32 s1, s1, s63                                     // 000000E06D70: 82813F01
	s_cmp_eq_u32 s1, 0                                         // 000000E06D74: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000E06D78: 980AC100
	ds_load_b32 v13, v26 offset:2144                           // 000000E06D7C: D8D80860 0D00001A
	ds_load_b32 v14, v26 offset:2160                           // 000000E06D84: D8D80870 0E00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E06D8C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000E06D90: 56001706
	s_setprio 1                                                // 000000E06D94: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000E06D98: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000E06D9C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000E06DA0: 56061907
	s_setprio 0                                                // 000000E06DA4: BFB50000
	ds_load_b32 v6, v25 offset:2560                            // 000000E06DA8: D8D80A00 06000019
	ds_load_b32 v7, v25 offset:2624                            // 000000E06DB0: D8D80A40 07000019
	s_cmp_eq_u32 s5, s7                                        // 000000E06DB8: BF060705
	s_cselect_b32 s62, s32, s35                                // 000000E06DBC: 983E2320
	s_cselect_b32 s63, s33, 0                                  // 000000E06DC0: 983F8021
	s_add_u32 s12, s12, s62                                    // 000000E06DC4: 800C3E0C
	s_addc_u32 s13, s13, s63                                   // 000000E06DC8: 820D3F0D
	s_sub_u32 s28, s28, s62                                    // 000000E06DCC: 809C3E1C
	s_subb_u32 s29, s29, s63                                   // 000000E06DD0: 829D3F1D
	s_cmp_eq_u32 s29, 0                                        // 000000E06DD4: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000E06DD8: 980EC11C
	ds_load_b32 v11, v26 offset:2176                           // 000000E06DDC: D8D80880 0B00001A
	ds_load_b32 v12, v26 offset:2192                           // 000000E06DE4: D8D80890 0C00001A
	s_waitcnt vmcnt(4)                                         // 000000E06DEC: BF8913F7
	ds_store_b32 v15, v20                                      // 000000E06DF0: D8340000 0000140F
	s_waitcnt lgkmcnt(5)                                       // 000000E06DF8: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000E06DFC: 56001B08
	s_setprio 1                                                // 000000E06E00: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000E06E04: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000E06E08: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000E06E0C: 56061D09
	s_setprio 0                                                // 000000E06E10: BFB50000
	ds_load_b32 v8, v25 offset:2688                            // 000000E06E14: D8D80A80 08000019
	ds_load_b32 v9, v25 offset:2752                            // 000000E06E1C: D8D80AC0 09000019
	ds_load_b32 v13, v26 offset:2208                           // 000000E06E24: D8D808A0 0D00001A
	ds_load_b32 v14, v26 offset:2224                           // 000000E06E2C: D8D808B0 0E00001A
	s_waitcnt vmcnt(3)                                         // 000000E06E34: BF890FF7
	ds_store_b32 v15, v21 offset:32                            // 000000E06E38: D8340020 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000E06E40: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000E06E44: 56001706
	s_setprio 1                                                // 000000E06E48: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000E06E4C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000E06E50: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000E06E54: 56061907
	s_setprio 0                                                // 000000E06E58: BFB50000
	ds_load_b32 v6, v25 offset:2816                            // 000000E06E5C: D8D80B00 06000019
	ds_load_b32 v7, v25 offset:2880                            // 000000E06E64: D8D80B40 07000019
	ds_load_b32 v11, v26 offset:2240                           // 000000E06E6C: D8D808C0 0B00001A
	ds_load_b32 v12, v26 offset:2256                           // 000000E06E74: D8D808D0 0C00001A
	s_waitcnt vmcnt(2)                                         // 000000E06E7C: BF890BF7
	ds_store_b32 v15, v22 offset:64                            // 000000E06E80: D8340040 0000160F
	s_waitcnt lgkmcnt(5)                                       // 000000E06E88: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000E06E8C: 56001B08
	s_setprio 1                                                // 000000E06E90: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000E06E94: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000E06E98: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000E06E9C: 56061D09
	s_setprio 0                                                // 000000E06EA0: BFB50000
	ds_load_b32 v8, v25 offset:2944                            // 000000E06EA4: D8D80B80 08000019
	ds_load_b32 v9, v25 offset:3008                            // 000000E06EAC: D8D80BC0 09000019
	ds_load_b32 v13, v26 offset:2272                           // 000000E06EB4: D8D808E0 0D00001A
	ds_load_b32 v14, v26 offset:2288                           // 000000E06EBC: D8D808F0 0E00001A
	s_waitcnt vmcnt(1)                                         // 000000E06EC4: BF8907F7
	ds_store_b32 v15, v23 offset:96                            // 000000E06EC8: D8340060 0000170F
	s_waitcnt vmcnt(0)                                         // 000000E06ED0: BF8903F7
	ds_store_b32 v16, v24                                      // 000000E06ED4: D8340000 00001810
	s_waitcnt lgkmcnt(6)                                       // 000000E06EDC: BF89FC67
	v_fmac_f32_e32 v0, v6, v11                                 // 000000E06EE0: 56001706
	s_setprio 1                                                // 000000E06EE4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000E06EE8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000E06EEC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000E06EF0: 56061907
	s_setprio 0                                                // 000000E06EF4: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000E06EF8: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000E06EFC: BDFC0000
	s_barrier                                                  // 000000E06F00: BFBD0000
	ds_load_b32 v6, v25                                        // 000000E06F04: D8D80000 06000019
	ds_load_b32 v7, v25 offset:64                              // 000000E06F0C: D8D80040 07000019
	ds_load_b32 v11, v26                                       // 000000E06F14: D8D80000 0B00001A
	ds_load_b32 v12, v26 offset:16                             // 000000E06F1C: D8D80010 0C00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E06F24: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000E06F28: 56001B08
	s_setprio 1                                                // 000000E06F2C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000E06F30: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000E06F34: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000E06F38: 56061D09
	s_setprio 0                                                // 000000E06F3C: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000E06F40: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000E06F44: BF008105
	s_cbranch_scc0 LoopBeginL_1                                // 000000E06F48: BFA1FEAE

0000000000e06f4c <LoopEndL_evenexit_4>:
	s_branch LoopEndL_2                                        // 000000E06F4C: BFA00004

0000000000e06f50 <LoopEndL_oddexit_3>:
	v_xor_b32_e32 v25, 0x800, v25                              // 000000E06F50: 3A3232FF 00000800
	v_xor_b32_e32 v26, 0x800, v26                              // 000000E06F58: 3A3434FF 00000800

0000000000e06f60 <LoopEndL_2>:
	s_cmpk_eq_u32 s37, 0x0                                     // 000000E06F60: B4A50000
	s_cbranch_scc0 OptNLL_End_15                               // 000000E06F64: BFA1009C
	s_cmp_eq_u32 s36, 1.0                                      // 000000E06F68: BF06F224
	s_cbranch_scc0 OptNLL_End_15                               // 000000E06F6C: BFA1009A
	s_and_b32 s62, 31, s46                                     // 000000E06F70: 8B3E2E9F
	s_add_u32 s63, -1, s51                                     // 000000E06F74: 803F33C1
	s_cmp_ge_u32 s2, s63                                       // 000000E06F78: BF093F02
	s_cselect_b32 s62, s62, 0                                  // 000000E06F7C: 983E803E
	s_cmpk_gt_u32 s62, 0x0                                     // 000000E06F80: B5BE0000
	s_cbranch_scc1 OptNLL_End_15                               // 000000E06F84: BFA20094
	s_and_b32 s62, 7, s47                                      // 000000E06F88: 8B3E2F87
	s_add_u32 s63, -1, s52                                     // 000000E06F8C: 803F34C1
	s_cmp_ge_u32 s3, s63                                       // 000000E06F90: BF093F03
	s_cselect_b32 s62, s62, 0                                  // 000000E06F94: 983E803E
	s_cmpk_gt_u32 s62, 0x0                                     // 000000E06F98: B5BE0000
	s_cbranch_scc1 OptNLL_End_15                               // 000000E06F9C: BFA2008E
	s_and_b32 s63, 7, s49                                      // 000000E06FA0: 8B3F3187
	s_cmp_eq_u32 s63, 0                                        // 000000E06FA4: BF06803F
	s_cbranch_scc0 OptNLL_End_15                               // 000000E06FA8: BFA1008B
	ds_load_b32 v8, v25 offset:128                             // 000000E06FAC: D8D80080 08000019
	ds_load_b32 v9, v25 offset:192                             // 000000E06FB4: D8D800C0 09000019
	ds_load_b32 v13, v26 offset:32                             // 000000E06FBC: D8D80020 0D00001A
	ds_load_b32 v14, v26 offset:48                             // 000000E06FC4: D8D80030 0E00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E06FCC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000E06FD0: 56001706
	s_setprio 1                                                // 000000E06FD4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000E06FD8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000E06FDC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000E06FE0: 56061907
	s_setprio 0                                                // 000000E06FE4: BFB50000
	ds_load_b32 v6, v25 offset:256                             // 000000E06FE8: D8D80100 06000019
	ds_load_b32 v7, v25 offset:320                             // 000000E06FF0: D8D80140 07000019
	ds_load_b32 v11, v26 offset:64                             // 000000E06FF8: D8D80040 0B00001A
	ds_load_b32 v12, v26 offset:80                             // 000000E07000: D8D80050 0C00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E07008: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000E0700C: 56001B08
	s_setprio 1                                                // 000000E07010: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000E07014: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000E07018: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000E0701C: 56061D09
	s_setprio 0                                                // 000000E07020: BFB50000
	ds_load_b32 v8, v25 offset:384                             // 000000E07024: D8D80180 08000019
	ds_load_b32 v9, v25 offset:448                             // 000000E0702C: D8D801C0 09000019
	ds_load_b32 v13, v26 offset:96                             // 000000E07034: D8D80060 0D00001A
	ds_load_b32 v14, v26 offset:112                            // 000000E0703C: D8D80070 0E00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E07044: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000E07048: 56001706
	s_setprio 1                                                // 000000E0704C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000E07050: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000E07054: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000E07058: 56061907
	s_setprio 0                                                // 000000E0705C: BFB50000
	ds_load_b32 v6, v25 offset:512                             // 000000E07060: D8D80200 06000019
	ds_load_b32 v7, v25 offset:576                             // 000000E07068: D8D80240 07000019
	ds_load_b32 v11, v26 offset:128                            // 000000E07070: D8D80080 0B00001A
	ds_load_b32 v12, v26 offset:144                            // 000000E07078: D8D80090 0C00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E07080: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000E07084: 56001B08
	s_setprio 1                                                // 000000E07088: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000E0708C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000E07090: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000E07094: 56061D09
	s_setprio 0                                                // 000000E07098: BFB50000
	ds_load_b32 v8, v25 offset:640                             // 000000E0709C: D8D80280 08000019
	ds_load_b32 v9, v25 offset:704                             // 000000E070A4: D8D802C0 09000019
	ds_load_b32 v13, v26 offset:160                            // 000000E070AC: D8D800A0 0D00001A
	ds_load_b32 v14, v26 offset:176                            // 000000E070B4: D8D800B0 0E00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E070BC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000E070C0: 56001706
	s_setprio 1                                                // 000000E070C4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000E070C8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000E070CC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000E070D0: 56061907
	s_setprio 0                                                // 000000E070D4: BFB50000
	ds_load_b32 v6, v25 offset:768                             // 000000E070D8: D8D80300 06000019
	ds_load_b32 v7, v25 offset:832                             // 000000E070E0: D8D80340 07000019
	ds_load_b32 v11, v26 offset:192                            // 000000E070E8: D8D800C0 0B00001A
	ds_load_b32 v12, v26 offset:208                            // 000000E070F0: D8D800D0 0C00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E070F8: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000E070FC: 56001B08
	s_setprio 1                                                // 000000E07100: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000E07104: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000E07108: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000E0710C: 56061D09
	s_setprio 0                                                // 000000E07110: BFB50000
	ds_load_b32 v8, v25 offset:896                             // 000000E07114: D8D80380 08000019
	ds_load_b32 v9, v25 offset:960                             // 000000E0711C: D8D803C0 09000019
	ds_load_b32 v13, v26 offset:224                            // 000000E07124: D8D800E0 0D00001A
	ds_load_b32 v14, v26 offset:240                            // 000000E0712C: D8D800F0 0E00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E07134: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000E07138: 56001706
	s_setprio 1                                                // 000000E0713C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000E07140: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000E07144: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000E07148: 56061907
	s_setprio 0                                                // 000000E0714C: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000E07150: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000E07154: 56001B08
	s_setprio 1                                                // 000000E07158: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000E0715C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000E07160: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000E07164: 56061D09
	s_setprio 0                                                // 000000E07168: BFB50000

0000000000e0716c <Summation_End_OptNLL_16>:
	v_lshrrev_b32_e32 v7, 4, v27                               // 000000E0716C: 320E3684
	v_and_b32_e32 v6, 15, v27                                  // 000000E07170: 360C368F
	v_mul_lo_u32 v8, v7, s40                                   // 000000E07174: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000E0717C: D72C0009 00004D07
	s_mul_i32 s54, 32, s2                                      // 000000E07184: 963602A0
	v_add_co_u32 v6, vcc_lo, s54, v6                           // 000000E07188: D7006A06 00020C36
	s_mul_i32 s56, 8, s3                                       // 000000E07190: 96380388
	v_add_co_u32 v7, vcc_lo, s56, v7                           // 000000E07194: D7006A07 00020E38

0000000000e0719c <GW_B0_E0_19>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000E0719C: D647000C 020A0D09
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000E071A4: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:64      // 000000E071AC: E0680040 8044010C
	s_mul_i32 s54, s38, 16                                     // 000000E071B4: 96369026
	s_add_u32 s16, s16, s54                                    // 000000E071B8: 80103610
	s_addc_u32 s17, s17, 0                                     // 000000E071BC: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000E071C0: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:64      // 000000E071C8: E0680040 8044030C
	s_branch label_GW_End_21                                   // 000000E071D0: BFA00000

0000000000e071d4 <label_GW_End_21>:
	s_endpgm                                                   // 000000E071D4: BFB00000

0000000000e071d8 <OptNLL_End_15>:
	ds_load_b32 v8, v25 offset:128                             // 000000E071D8: D8D80080 08000019
	ds_load_b32 v9, v25 offset:192                             // 000000E071E0: D8D800C0 09000019
	ds_load_b32 v13, v26 offset:32                             // 000000E071E8: D8D80020 0D00001A
	ds_load_b32 v14, v26 offset:48                             // 000000E071F0: D8D80030 0E00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E071F8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000E071FC: 56001706
	s_setprio 1                                                // 000000E07200: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000E07204: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000E07208: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000E0720C: 56061907
	s_setprio 0                                                // 000000E07210: BFB50000
	ds_load_b32 v6, v25 offset:256                             // 000000E07214: D8D80100 06000019
	ds_load_b32 v7, v25 offset:320                             // 000000E0721C: D8D80140 07000019
	ds_load_b32 v11, v26 offset:64                             // 000000E07224: D8D80040 0B00001A
	ds_load_b32 v12, v26 offset:80                             // 000000E0722C: D8D80050 0C00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E07234: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000E07238: 56001B08
	s_setprio 1                                                // 000000E0723C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000E07240: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000E07244: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000E07248: 56061D09
	s_setprio 0                                                // 000000E0724C: BFB50000
	ds_load_b32 v8, v25 offset:384                             // 000000E07250: D8D80180 08000019
	ds_load_b32 v9, v25 offset:448                             // 000000E07258: D8D801C0 09000019
	ds_load_b32 v13, v26 offset:96                             // 000000E07260: D8D80060 0D00001A
	ds_load_b32 v14, v26 offset:112                            // 000000E07268: D8D80070 0E00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E07270: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000E07274: 56001706
	s_setprio 1                                                // 000000E07278: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000E0727C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000E07280: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000E07284: 56061907
	s_setprio 0                                                // 000000E07288: BFB50000
	ds_load_b32 v6, v25 offset:512                             // 000000E0728C: D8D80200 06000019
	ds_load_b32 v7, v25 offset:576                             // 000000E07294: D8D80240 07000019
	ds_load_b32 v11, v26 offset:128                            // 000000E0729C: D8D80080 0B00001A
	ds_load_b32 v12, v26 offset:144                            // 000000E072A4: D8D80090 0C00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E072AC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000E072B0: 56001B08
	s_setprio 1                                                // 000000E072B4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000E072B8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000E072BC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000E072C0: 56061D09
	s_setprio 0                                                // 000000E072C4: BFB50000
	ds_load_b32 v8, v25 offset:640                             // 000000E072C8: D8D80280 08000019
	ds_load_b32 v9, v25 offset:704                             // 000000E072D0: D8D802C0 09000019
	ds_load_b32 v13, v26 offset:160                            // 000000E072D8: D8D800A0 0D00001A
	ds_load_b32 v14, v26 offset:176                            // 000000E072E0: D8D800B0 0E00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E072E8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000E072EC: 56001706
	s_setprio 1                                                // 000000E072F0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000E072F4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000E072F8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000E072FC: 56061907
	s_setprio 0                                                // 000000E07300: BFB50000
	ds_load_b32 v6, v25 offset:768                             // 000000E07304: D8D80300 06000019
	ds_load_b32 v7, v25 offset:832                             // 000000E0730C: D8D80340 07000019
	ds_load_b32 v11, v26 offset:192                            // 000000E07314: D8D800C0 0B00001A
	ds_load_b32 v12, v26 offset:208                            // 000000E0731C: D8D800D0 0C00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E07324: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000E07328: 56001B08
	s_setprio 1                                                // 000000E0732C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000E07330: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000E07334: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000E07338: 56061D09
	s_setprio 0                                                // 000000E0733C: BFB50000
	ds_load_b32 v8, v25 offset:896                             // 000000E07340: D8D80380 08000019
	ds_load_b32 v9, v25 offset:960                             // 000000E07348: D8D803C0 09000019
	ds_load_b32 v13, v26 offset:224                            // 000000E07350: D8D800E0 0D00001A
	ds_load_b32 v14, v26 offset:240                            // 000000E07358: D8D800F0 0E00001A
	s_waitcnt lgkmcnt(4)                                       // 000000E07360: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000E07364: 56001706
	s_setprio 1                                                // 000000E07368: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000E0736C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000E07370: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000E07374: 56061907
	s_setprio 0                                                // 000000E07378: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000E0737C: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000E07380: 56001B08
	s_setprio 1                                                // 000000E07384: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000E07388: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000E0738C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000E07390: 56061D09
	s_setprio 0                                                // 000000E07394: BFB50000

0000000000e07398 <PrefetchGlobalLastIterEnd_5>:
	v_and_b32_e32 v15, 0xf007ff, v15                           // 000000E07398: 361E1EFF 00F007FF
	v_and_b32_e32 v16, 0xf007ff, v16                           // 000000E073A0: 362020FF 00F007FF
	s_and_b32 s5, 7, s49                                       // 000000E073A8: 8B053187
	s_cmp_eq_u32 s5, 0                                         // 000000E073AC: BF068005
	s_cbranch_scc1 SkipTailLoopL_8                             // 000000E073B0: BFA20057
	s_mov_b32 s6, 0                                            // 000000E073B4: BE860080
	s_mov_b32 s64, 3                                           // 000000E073B8: BEC00083
	s_mul_hi_u32 s63, s64, s34                                 // 000000E073BC: 96BF2240
	s_mul_i32 s62, s64, s34                                    // 000000E073C0: 963E2240
	s_mul_hi_u32 s65, s7, s34                                  // 000000E073C4: 96C12207
	s_mul_i32 s64, s7, s34                                     // 000000E073C8: 96402207
	s_sub_u32 s62, s62, s64                                    // 000000E073CC: 80BE403E
	s_subb_u32 s63, s63, s65                                   // 000000E073D0: 82BF413F
	s_sub_u32 s62, s62, s30                                    // 000000E073D4: 80BE1E3E
	s_subb_u32 s63, s63, s31                                   // 000000E073D8: 82BF1F3F
	s_add_u32 s8, s8, s62                                      // 000000E073DC: 80083E08
	s_addc_u32 s9, s9, s63                                     // 000000E073E0: 82093F09
	s_sub_u32 s0, s0, s62                                      // 000000E073E4: 80803E00
	s_subb_u32 s1, s1, s63                                     // 000000E073E8: 82813F01
	s_cmp_eq_u32 s1, 0                                         // 000000E073EC: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000E073F0: 980AC100
	s_mov_b32 s64, 3                                           // 000000E073F4: BEC00083
	s_mul_hi_u32 s63, s64, s35                                 // 000000E073F8: 96BF2340
	s_mul_i32 s62, s64, s35                                    // 000000E073FC: 963E2340
	s_mul_hi_u32 s65, s7, s35                                  // 000000E07400: 96C12307
	s_mul_i32 s64, s7, s35                                     // 000000E07404: 96402307
	s_sub_u32 s62, s62, s64                                    // 000000E07408: 80BE403E
	s_subb_u32 s63, s63, s65                                   // 000000E0740C: 82BF413F
	s_sub_u32 s62, s62, s32                                    // 000000E07410: 80BE203E
	s_subb_u32 s63, s63, s33                                   // 000000E07414: 82BF213F
	s_add_u32 s12, s12, s62                                    // 000000E07418: 800C3E0C
	s_addc_u32 s13, s13, s63                                   // 000000E0741C: 820D3F0D
	s_sub_u32 s28, s28, s62                                    // 000000E07420: 809C3E1C
	s_subb_u32 s29, s29, s63                                   // 000000E07424: 829D3F1D
	s_cmp_eq_u32 s29, 0                                        // 000000E07428: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000E0742C: 980EC11C
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000E07430: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s58 offen               // 000000E07438: E0500000 3A421511
	buffer_load_b32 v22, v17, s[8:11], s59 offen               // 000000E07440: E0500000 3B421611
	buffer_load_b32 v23, v17, s[8:11], s60 offen               // 000000E07448: E0500000 3C421711
	buffer_load_b32 v24, v18, s[12:15], 0 offen                // 000000E07450: E0500000 80431812
	s_waitcnt vmcnt(0)                                         // 000000E07458: BF8903F7
	s_waitcnt_lgkmcnt null, 0x0                                // 000000E0745C: BDFC0000
	s_barrier                                                  // 000000E07460: BFBD0000
	ds_store_b32 v15, v20                                      // 000000E07464: D8340000 0000140F
	ds_store_b32 v15, v21 offset:32                            // 000000E0746C: D8340020 0000150F
	ds_store_b32 v15, v22 offset:64                            // 000000E07474: D8340040 0000160F
	ds_store_b32 v15, v23 offset:96                            // 000000E0747C: D8340060 0000170F
	ds_store_b32 v16, v24                                      // 000000E07484: D8340000 00001810
	s_waitcnt lgkmcnt(0)                                       // 000000E0748C: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000E07490: BDFC0000
	s_barrier                                                  // 000000E07494: BFBD0000
	v_and_b32_e32 v25, 0x7ff, v25                              // 000000E07498: 363232FF 000007FF
	v_and_b32_e32 v26, 0x7ff, v26                              // 000000E074A0: 363434FF 000007FF

0000000000e074a8 <TailLoopBeginL_6>:
	ds_load_b32 v6, v25                                        // 000000E074A8: D8D80000 06000019
	ds_load_b32 v7, v25 offset:64                              // 000000E074B0: D8D80040 07000019
	ds_load_b32 v11, v26                                       // 000000E074B8: D8D80000 0B00001A
	ds_load_b32 v12, v26 offset:16                             // 000000E074C0: D8D80010 0C00001A
	s_mov_b32 s56, 0x80                                        // 000000E074C8: BEB800FF 00000080
	v_add_co_u32 v25, vcc_lo, s56, v25                         // 000000E074D0: D7006A19 00023238
	s_mov_b32 s56, 32                                          // 000000E074D8: BEB800A0
	v_add_co_u32 v26, vcc_lo, s56, v26                         // 000000E074DC: D7006A1A 00023438
	s_waitcnt lgkmcnt(0)                                       // 000000E074E4: BF89FC07
	v_fmac_f32_e32 v0, v6, v11                                 // 000000E074E8: 56001706
	s_setprio 1                                                // 000000E074EC: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000E074F0: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000E074F4: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000E074F8: 56061907
	s_setprio 0                                                // 000000E074FC: BFB50000
	s_sub_i32 s5, s5, 1                                        // 000000E07500: 81858105
	s_add_u32 s6, s6, 1                                        // 000000E07504: 80068106
	s_cmp_le_i32 s5, 0                                         // 000000E07508: BF058005
	s_cbranch_scc0 TailLoopBeginL_6                            // 000000E0750C: BFA1FFE6

0000000000e07510 <TailLoopEndL_7>:
	v_lshrrev_b32_e32 v7, 4, v27                               // 000000E07510: 320E3684
	v_and_b32_e32 v6, 15, v27                                  // 000000E07514: 360C368F
	v_mul_lo_u32 v8, v7, s40                                   // 000000E07518: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000E07520: D72C0009 00004D07
	s_mul_i32 s54, 32, s2                                      // 000000E07528: 963602A0
	v_add_co_u32 v6, vcc_lo, s54, v6                           // 000000E0752C: D7006A06 00020C36
	s_mul_i32 s56, 8, s3                                       // 000000E07534: 96380388
	v_add_co_u32 v7, vcc_lo, s56, v7                           // 000000E07538: D7006A07 00020E38
	s_cmpk_eq_u32 s37, 0x0                                     // 000000E07540: B4A50000
	s_cbranch_scc0 GW_Beta_43                                  // 000000E07544: BFA1005B
	s_and_b32 s54, 31, s46                                     // 000000E07548: 8B362E9F
	s_add_u32 s55, -1, s51                                     // 000000E0754C: 803733C1
	s_cmp_ge_u32 s2, s55                                       // 000000E07550: BF093702
	s_cselect_b32 s54, s54, 0                                  // 000000E07554: 98368036
	s_cmpk_gt_u32 s54, 0x0                                     // 000000E07558: B5B60000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000E0755C: BFA20018
	s_and_b32 s54, 7, s47                                      // 000000E07560: 8B362F87
	s_add_u32 s55, -1, s52                                     // 000000E07564: 803734C1
	s_cmp_ge_u32 s3, s55                                       // 000000E07568: BF093703
	s_cselect_b32 s54, s54, 0                                  // 000000E0756C: 98368036
	s_cmpk_gt_u32 s54, 0x0                                     // 000000E07570: B5B60000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000E07574: BFA20012

0000000000e07578 <GW_B0_E0_31>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000E07578: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000E07580: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000E07584: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000E07588: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000E0758C: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000E07590: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:64      // 000000E07598: E0680040 8044010C
	s_mul_i32 s54, s38, 16                                     // 000000E075A0: 96369026
	s_add_u32 s16, s16, s54                                    // 000000E075A4: 80103610
	s_addc_u32 s17, s17, 0                                     // 000000E075A8: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000E075AC: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:64      // 000000E075B4: E0680040 8044030C
	s_branch label_0047                                        // 000000E075BC: BFA000D3

0000000000e075c0 <GW_B0_E1_34>:
	v_cmp_lt_u32_e64 s54, v6, s46                              // 000000E075C0: D4490036 00005D06
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000E075C8: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000E075D0: 8B383836
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000E075D4: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s56                        // 000000E075DC: D501000C 00E218C1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000E075E4: D7006A0A 00012106
	v_cmp_lt_u32_e64 s54, v10, s46                             // 000000E075EC: D4490036 00005D0A
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000E075F4: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000E075FC: 8B383836
	v_add_lshl_u32 v13, v9, v10, 2                             // 000000E07600: D647000D 020A1509
	v_cndmask_b32_e64 v13, -1, v13, s56                        // 000000E07608: D501000D 00E21AC1
	v_add_co_u32 v7, vcc_lo, v7, 4                             // 000000E07610: D7006A07 00010907
	s_mul_i32 s54, s40, 4                                      // 000000E07618: 96368428
	v_add_nc_u32_e64 v8, v8, s54                               // 000000E0761C: D5250008 00006D08
	s_mul_i32 s54, s38, 4                                      // 000000E07624: 96368426
	v_add_nc_u32_e64 v9, v9, s54                               // 000000E07628: D5250009 00006D09
	v_cmp_lt_u32_e64 s54, v6, s46                              // 000000E07630: D4490036 00005D06
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000E07638: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000E07640: 8B383836
	v_add_lshl_u32 v14, v9, v6, 2                              // 000000E07644: D647000E 020A0D09
	v_cndmask_b32_e64 v14, -1, v14, s56                        // 000000E0764C: D501000E 00E21CC1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000E07654: D7006A0A 00012106
	v_cmp_lt_u32_e64 s54, v10, s46                             // 000000E0765C: D4490036 00005D0A
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000E07664: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000E0766C: 8B383836
	v_add_lshl_u32 v15, v9, v10, 2                             // 000000E07670: D647000F 020A1509
	v_cndmask_b32_e64 v15, -1, v15, s56                        // 000000E07678: D501000F 00E21EC1
	v_mul_f32_e32 v0, s36, v0                                  // 000000E07680: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000E07684: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000E07688: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000E0768C: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000E07690: E0680000 8044000C
	buffer_store_b32 v1, v13, s[16:19], 0 offen                // 000000E07698: E0680000 8044010D
	buffer_store_b32 v2, v14, s[16:19], 0 offen                // 000000E076A0: E0680000 8044020E
	buffer_store_b32 v3, v15, s[16:19], 0 offen                // 000000E076A8: E0680000 8044030F
	s_branch label_0047                                        // 000000E076B0: BFA00096

0000000000e076b4 <GW_Beta_43>:
	s_and_b32 s54, 31, s46                                     // 000000E076B4: 8B362E9F
	s_add_u32 s55, -1, s51                                     // 000000E076B8: 803733C1
	s_cmp_ge_u32 s2, s55                                       // 000000E076BC: BF093702
	s_cselect_b32 s54, s54, 0                                  // 000000E076C0: 98368036
	s_cmpk_gt_u32 s54, 0x0                                     // 000000E076C4: B5B60000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000E076C8: BFA20031
	s_and_b32 s54, 7, s47                                      // 000000E076CC: 8B362F87
	s_add_u32 s55, -1, s52                                     // 000000E076D0: 803734C1
	s_cmp_ge_u32 s3, s55                                       // 000000E076D4: BF093703
	s_cselect_b32 s54, s54, 0                                  // 000000E076D8: 98368036
	s_cmpk_gt_u32 s54, 0x0                                     // 000000E076DC: B5B60000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000E076E0: BFA2002B

0000000000e076e4 <GW_B1_E0_38>:
	v_add_lshl_u32 v13, v8, v6, 2                              // 000000E076E4: D647000D 020A0D08
	buffer_load_b32 v14, v13, s[20:23], 0 offen                // 000000E076EC: E0500000 80450E0D
	buffer_load_b32 v15, v13, s[20:23], 0 offen offset:64      // 000000E076F4: E0500040 80450F0D
	s_mul_i32 s54, s40, 16                                     // 000000E076FC: 96369028
	s_add_u32 s20, s20, s54                                    // 000000E07700: 80143614
	s_addc_u32 s21, s21, 0                                     // 000000E07704: 82158015
	buffer_load_b32 v16, v13, s[20:23], 0 offen                // 000000E07708: E0500000 8045100D
	buffer_load_b32 v17, v13, s[20:23], 0 offen offset:64      // 000000E07710: E0500040 8045110D
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000E07718: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000E07720: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000E07724: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000E07728: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000E0772C: 10060624
	s_waitcnt vmcnt(3)                                         // 000000E07730: BF890FF7
	v_fmac_f32_e64 v0, v14, s37                                // 000000E07734: D52B0000 00004B0E
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000E0773C: E0680000 8044000C
	s_waitcnt vmcnt(2)                                         // 000000E07744: BF890BF7
	v_fmac_f32_e64 v1, v15, s37                                // 000000E07748: D52B0001 00004B0F
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:64      // 000000E07750: E0680040 8044010C
	s_waitcnt vmcnt(1)                                         // 000000E07758: BF8907F7
	v_fmac_f32_e64 v2, v16, s37                                // 000000E0775C: D52B0002 00004B10
	s_mul_i32 s54, s38, 16                                     // 000000E07764: 96369026
	s_add_u32 s16, s16, s54                                    // 000000E07768: 80103610
	s_addc_u32 s17, s17, 0                                     // 000000E0776C: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000E07770: E0680000 8044020C
	s_waitcnt vmcnt(0)                                         // 000000E07778: BF8903F7
	v_fmac_f32_e64 v3, v17, s37                                // 000000E0777C: D52B0003 00004B11
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:64      // 000000E07784: E0680040 8044030C
	s_branch label_0047                                        // 000000E0778C: BFA0005F

0000000000e07790 <GW_B1_E1_41>:
	v_cmp_lt_u32_e64 s54, v6, s46                              // 000000E07790: D4490036 00005D06
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000E07798: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000E077A0: 8B383836
	v_add_lshl_u32 v12, v8, v6, 2                              // 000000E077A4: D647000C 020A0D08
	v_cndmask_b32_e64 v12, -1, v12, s56                        // 000000E077AC: D501000C 00E218C1
	buffer_load_b32 v13, v12, s[20:23], 0 offen                // 000000E077B4: E0500000 80450D0C
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000E077BC: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s56                        // 000000E077C4: D501000C 00E218C1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000E077CC: D7006A0A 00012106
	v_cmp_lt_u32_e64 s54, v10, s46                             // 000000E077D4: D4490036 00005D0A
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000E077DC: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000E077E4: 8B383836
	v_add_lshl_u32 v14, v8, v10, 2                             // 000000E077E8: D647000E 020A1508
	v_cndmask_b32_e64 v14, -1, v14, s56                        // 000000E077F0: D501000E 00E21CC1
	buffer_load_b32 v15, v14, s[20:23], 0 offen                // 000000E077F8: E0500000 80450F0E
	v_add_lshl_u32 v14, v9, v10, 2                             // 000000E07800: D647000E 020A1509
	v_cndmask_b32_e64 v14, -1, v14, s56                        // 000000E07808: D501000E 00E21CC1
	v_add_co_u32 v7, vcc_lo, v7, 4                             // 000000E07810: D7006A07 00010907
	s_mul_i32 s54, s40, 4                                      // 000000E07818: 96368428
	v_add_nc_u32_e64 v8, v8, s54                               // 000000E0781C: D5250008 00006D08
	s_mul_i32 s54, s38, 4                                      // 000000E07824: 96368426
	v_add_nc_u32_e64 v9, v9, s54                               // 000000E07828: D5250009 00006D09
	v_cmp_lt_u32_e64 s54, v6, s46                              // 000000E07830: D4490036 00005D06
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000E07838: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000E07840: 8B383836
	v_add_lshl_u32 v16, v8, v6, 2                              // 000000E07844: D6470010 020A0D08
	v_cndmask_b32_e64 v16, -1, v16, s56                        // 000000E0784C: D5010010 00E220C1
	buffer_load_b32 v17, v16, s[20:23], 0 offen                // 000000E07854: E0500000 80451110
	v_add_lshl_u32 v16, v9, v6, 2                              // 000000E0785C: D6470010 020A0D09
	v_cndmask_b32_e64 v16, -1, v16, s56                        // 000000E07864: D5010010 00E220C1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000E0786C: D7006A0A 00012106
	v_cmp_lt_u32_e64 s54, v10, s46                             // 000000E07874: D4490036 00005D0A
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000E0787C: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000E07884: 8B383836
	v_add_lshl_u32 v18, v8, v10, 2                             // 000000E07888: D6470012 020A1508
	v_cndmask_b32_e64 v18, -1, v18, s56                        // 000000E07890: D5010012 00E224C1
	buffer_load_b32 v19, v18, s[20:23], 0 offen                // 000000E07898: E0500000 80451312
	v_add_lshl_u32 v18, v9, v10, 2                             // 000000E078A0: D6470012 020A1509
	v_cndmask_b32_e64 v18, -1, v18, s56                        // 000000E078A8: D5010012 00E224C1
	v_mul_f32_e32 v0, s36, v0                                  // 000000E078B0: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000E078B4: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000E078B8: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000E078BC: 10060624
	s_waitcnt vmcnt(0)                                         // 000000E078C0: BF8903F7
	s_waitcnt_vscnt null, 0x0                                  // 000000E078C4: BC7C0000
	v_fmac_f32_e64 v0, v13, s37                                // 000000E078C8: D52B0000 00004B0D
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000E078D0: E0680000 8044000C
	v_fmac_f32_e64 v1, v15, s37                                // 000000E078D8: D52B0001 00004B0F
	buffer_store_b32 v1, v14, s[16:19], 0 offen                // 000000E078E0: E0680000 8044010E
	v_fmac_f32_e64 v2, v17, s37                                // 000000E078E8: D52B0002 00004B11
	buffer_store_b32 v2, v16, s[16:19], 0 offen                // 000000E078F0: E0680000 80440210
	v_fmac_f32_e64 v3, v19, s37                                // 000000E078F8: D52B0003 00004B13
	buffer_store_b32 v3, v18, s[16:19], 0 offen                // 000000E07900: E0680000 80440312
	s_branch label_0047                                        // 000000E07908: BFA00000

0000000000e0790c <label_GW_End_42>:
	s_endpgm                                                   // 000000E0790C: BFB00000
		...
