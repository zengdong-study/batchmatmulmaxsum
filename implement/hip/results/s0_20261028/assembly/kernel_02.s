
/root/batchmatmulmaxsum/implement/hip/results/s0_20261028/code_objects/_code_object0006.o:	file format elf64-amdgpu

Disassembly of section .text:

0000000000b7f100 <Cijk_Ailk_Bjlk_SB_MT32x32x8_SN_1LDSB0_APM1_ABV0_ACED0_AF0EM1_AF1EM1_AMAS0_ASE_ASGT_ASLT_ASM_ASAE01_ASCE01_ASEM1_AAC0_BL1_BS1_CLR0_DTLA0_DTLB0_DTVA0_DTVB0_DVO0_ETSP_EPS1_ELFLR0_EMLL0_FSSC10_FL0_GLVWA1_GLVWB1_GRCGA1_GRCGB1_GRPM1_GRVW1_GSU1_GSUASB_GLS0_ISA1100_IU1_K1_KLA_LBSPPA0_LBSPPB0_LPA0_LPB0_LDL1_LRVW1_LWPMn1_LDW0_FMA_MIAV0_MDA2_MO40_MMFGLC_MKFGSU256_NTA0_NTB0_NTC0_NTD0_NEPBS0_NLCA1_NLCB1_ONLL1_OPLV0_PK0_PAP0_PGR1_PLR1_PKA0_SIA1_SLW1_SS0_SU0_SUM0_SUS0_SCIUI1_SPO0_SRVW0_SSO0_SVW4_SNLL0_TSGRA0_TSGRB0_TT4_4_TLDS0_UMLDSA0_UMLDSB0_U64SL1_USFGROn1_VAW1_VSn1_VW1_VWB1_VFLRP0_WSGRA0_WSGRB0_WS32_WG8_8_1_WGM1_preloaded>:
	s_mov_b32 vcc_hi, 0                                        // 000000B7F100: BEEB0080
	s_load_b512 s[24:39], s[0:1], null                         // 000000B7F104: F4100600 F8000000
	s_load_b256 s[40:47], s[0:1], 0x40                         // 000000B7F10C: F40C0A00 F8000040
	s_load_b128 s[48:51], s[0:1], 0x60                         // 000000B7F114: F4080C00 F8000060
	s_mov_b32 m0, 0x1000                                       // 000000B7F11C: BEFD00FF 00001000
	v_mov_b32_e32 v50, v0                                      // 000000B7F124: 7E640300
	v_lshrrev_b32_e32 v0, 3, v50                               // 000000B7F128: 32006483
	v_and_b32_e32 v1, 7, v50                                   // 000000B7F12C: 36026487
	v_lshrrev_b32_e32 v2, 3, v0                                // 000000B7F130: 32040083
	v_and_b32_e32 v3, 7, v0                                    // 000000B7F134: 36060087
	v_lshrrev_b32_e32 v0, 6, v50                               // 000000B7F138: 32006486
	v_lshlrev_b32_e32 v0, 5, v0                                // 000000B7F13C: 30000085
	v_add_lshl_u32 v48, v0, v1, 2                              // 000000B7F140: D6470030 020A0300
	v_lshrrev_b32_e32 v0, 6, v50                               // 000000B7F148: 32006486
	v_lshlrev_b32_e32 v0, 5, v0                                // 000000B7F14C: 30000085
	v_add_lshl_u32 v49, v0, v3, 2                              // 000000B7F150: D6470031 020A0700
	v_add_co_u32 v49, vcc_lo, 0x400, v49                       // 000000B7F158: D7006A31 000262FF 00000400
	v_lshrrev_b32_e32 v1, 5, v50                               // 000000B7F164: 32026485
	v_and_b32_e32 v0, 31, v50                                  // 000000B7F168: 3600649F
	v_lshrrev_b32_e32 v3, 5, v50                               // 000000B7F16C: 32066485
	v_and_b32_e32 v2, 31, v50                                  // 000000B7F170: 3604649F
	v_mul_u32_u24_e32 v35, 32, v1                              // 000000B7F174: 164602A0
	v_add_lshl_u32 v35, v0, v35, 2                             // 000000B7F178: D6470023 020A4700
	v_mul_u32_u24_e32 v36, 32, v3                              // 000000B7F180: 164806A0
	v_add_lshl_u32 v36, v2, v36, 2                             // 000000B7F184: D6470024 020A4902
	v_add_co_u32 v36, vcc_lo, 0x400, v36                       // 000000B7F18C: D7006A24 000248FF 00000400
	s_waitcnt lgkmcnt(0)                                       // 000000B7F198: BF89FC07
	s_mov_b64 s[20:21], s[30:31]                               // 000000B7F19C: BE94011E
	s_mov_b64 s[16:17], s[28:29]                               // 000000B7F1A0: BE90011C
	s_sub_u32 s8, s32, 4                                       // 000000B7F1A4: 80888420
	s_subb_u32 s9, s33, 0                                      // 000000B7F1A8: 82898021
	s_sub_u32 s12, s34, 4                                      // 000000B7F1AC: 808C8422
	s_subb_u32 s13, s35, 0                                     // 000000B7F1B0: 828D8023
	v_cmp_eq_f32_e64 vcc_lo, s36, 0                            // 000000B7F1B4: D412006A 00010024
	s_cbranch_vccz label_AlphaNonZero                          // 000000B7F1BC: BFA30001
	s_mov_b32 s49, 0                                           // 000000B7F1C0: BEB10080

0000000000b7f1c4 <label_AlphaNonZero>:
	v_mul_lo_u32 v4, s42, v1                                   // 000000B7F1C4: D72C0004 0002022A
	v_add_co_u32 v37, vcc_lo, v0, v4                           // 000000B7F1CC: D7006A25 00020900
	v_add_nc_u32_e32 v37, 1, v37                               // 000000B7F1D4: 4A4A4A81
	v_lshlrev_b32_e32 v37, 2, v37                              // 000000B7F1D8: 304A4A82
	s_mul_i32 s31, s42, 2                                      // 000000B7F1DC: 961F822A
	s_lshl_b32 s31, s31, 2                                     // 000000B7F1E0: 841F821F
	s_mul_i32 s32, s42, 4                                      // 000000B7F1E4: 9620842A
	s_lshl_b32 s32, s32, 2                                     // 000000B7F1E8: 84208220
	s_mul_i32 s33, s42, 6                                      // 000000B7F1EC: 9621862A
	s_lshl_b32 s33, s33, 2                                     // 000000B7F1F0: 84218221
	v_mul_lo_u32 v4, s44, v3                                   // 000000B7F1F4: D72C0004 0002062C
	v_add_co_u32 v38, vcc_lo, v2, v4                           // 000000B7F1FC: D7006A26 00020902
	v_add_nc_u32_e32 v38, 1, v38                               // 000000B7F204: 4A4C4C81
	v_lshlrev_b32_e32 v38, 2, v38                              // 000000B7F208: 304C4C82
	s_mul_i32 s54, s44, 2                                      // 000000B7F20C: 9636822C
	s_lshl_b32 s54, s54, 2                                     // 000000B7F210: 84368236
	s_mul_i32 s55, s44, 4                                      // 000000B7F214: 9637842C
	s_lshl_b32 s55, s55, 2                                     // 000000B7F218: 84378237
	s_mul_i32 s56, s44, 6                                      // 000000B7F21C: 9638862C
	s_lshl_b32 s56, s56, 2                                     // 000000B7F220: 84388238
	s_mul_hi_u32 s59, s2, 32                                   // 000000B7F224: 96BBA002
	s_mul_i32 s58, s2, 32                                      // 000000B7F228: 963AA002
	s_sub_u32 s0, s24, s58                                     // 000000B7F22C: 80803A18
	s_subb_u32 s1, s25, s59                                    // 000000B7F230: 82813B19
	s_lshl_b64 s[0:1], s[0:1], 2                               // 000000B7F234: 84808200
	s_add_u32 s0, s0, 4                                        // 000000B7F238: 80008400
	s_addc_u32 s1, s1, 0                                       // 000000B7F23C: 82018001
	s_cmp_eq_u32 s1, 0                                         // 000000B7F240: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000B7F244: 980AC100
	s_mul_hi_u32 s35, s43, s4                                  // 000000B7F248: 96A3042B
	s_mul_i32 s34, s43, s4                                     // 000000B7F24C: 9622042B
	s_add_u32 s58, s58, s34                                    // 000000B7F250: 803A223A
	s_addc_u32 s59, s59, s35                                   // 000000B7F254: 823B233B
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000B7F258: 84BA823A
	s_add_u32 s8, s8, s58                                      // 000000B7F25C: 80083A08
	s_addc_u32 s9, s9, s59                                     // 000000B7F260: 82093B09
	s_mov_b32 s11, 0x31004000                                  // 000000B7F264: BE8B00FF 31004000
	s_mul_hi_u32 s59, s3, 32                                   // 000000B7F26C: 96BBA003
	s_mul_i32 s58, s3, 32                                      // 000000B7F270: 963AA003
	s_sub_u32 s28, s26, s58                                    // 000000B7F274: 809C3A1A
	s_subb_u32 s29, s27, s59                                   // 000000B7F278: 829D3B1B
	s_lshl_b64 s[28:29], s[28:29], 2                           // 000000B7F27C: 849C821C
	s_add_u32 s28, s28, 4                                      // 000000B7F280: 801C841C
	s_addc_u32 s29, s29, 0                                     // 000000B7F284: 821D801D
	s_cmp_eq_u32 s29, 0                                        // 000000B7F288: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000B7F28C: 980EC11C
	s_mul_hi_u32 s35, s45, s4                                  // 000000B7F290: 96A3042D
	s_mul_i32 s34, s45, s4                                     // 000000B7F294: 9622042D
	s_add_u32 s58, s58, s34                                    // 000000B7F298: 803A223A
	s_addc_u32 s59, s59, s35                                   // 000000B7F29C: 823B233B
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000B7F2A0: 84BA823A
	s_add_u32 s12, s12, s58                                    // 000000B7F2A4: 800C3A0C
	s_addc_u32 s13, s13, s59                                   // 000000B7F2A8: 820D3B0D
	s_mov_b32 s15, 0x31004000                                  // 000000B7F2AC: BE8F00FF 31004000
	s_mul_i32 s7, 32, s42                                      // 000000B7F2B4: 96072AA0
	s_mul_i32 s30, 32, s44                                     // 000000B7F2B8: 961E2CA0
	s_lshr_b32 s5, s49, 3                                      // 000000B7F2BC: 85058331
	s_mov_b32 s6, s5                                           // 000000B7F2C0: BE860005
	s_cmp_eq_u32 s5, 0                                         // 000000B7F2C4: BF068005
	s_cbranch_scc1 ShadowInitStart_10                          // 000000B7F2C8: BFA2001C
	buffer_load_b32 v40, v37, s[8:11], 0 offen                 // 000000B7F2CC: E0500000 80422825
	buffer_load_b32 v41, v37, s[8:11], s31 offen               // 000000B7F2D4: E0500000 1F422925
	buffer_load_b32 v42, v37, s[8:11], s32 offen               // 000000B7F2DC: E0500000 20422A25
	buffer_load_b32 v43, v37, s[8:11], s33 offen               // 000000B7F2E4: E0500000 21422B25
	buffer_load_b32 v44, v38, s[12:15], 0 offen                // 000000B7F2EC: E0500000 80432C26
	buffer_load_b32 v45, v38, s[12:15], s54 offen              // 000000B7F2F4: E0500000 36432D26
	buffer_load_b32 v46, v38, s[12:15], s55 offen              // 000000B7F2FC: E0500000 37432E26
	buffer_load_b32 v47, v38, s[12:15], s56 offen              // 000000B7F304: E0500000 38432F26
	s_add_u32 s8, s8, s7                                       // 000000B7F30C: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000B7F310: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000B7F314: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000B7F318: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000B7F31C: BF068001
	s_cmov_b32 s10, s0                                         // 000000B7F320: BE8A0200
	s_add_u32 s12, s12, s30                                    // 000000B7F324: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000B7F328: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000B7F32C: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000B7F330: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000B7F334: BF06801D
	s_cmov_b32 s14, s28                                        // 000000B7F338: BE8E021C

0000000000b7f33c <ShadowInitStart_10>:
	s_mov_b32 s18, 0xfffff000                                  // 000000B7F33C: BE9200FF FFFFF000
	s_mov_b32 s19, 0x31004000                                  // 000000B7F344: BE9300FF 31004000
	s_mov_b32 s22, 0xfffff000                                  // 000000B7F34C: BE9600FF FFFFF000
	s_mov_b32 s23, 0x31004000                                  // 000000B7F354: BE9700FF 31004000
	s_mul_i32 s60, 32, s3                                      // 000000B7F35C: 963C03A0
	s_mul_hi_u32 s59, s60, s40                                 // 000000B7F360: 96BB283C
	s_mul_i32 s58, s60, s40                                    // 000000B7F364: 963A283C
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000B7F368: 84BA823A
	s_add_u32 s20, s20, s58                                    // 000000B7F36C: 80143A14
	s_addc_u32 s21, s21, s59                                   // 000000B7F370: 82153B15
	s_mul_hi_u32 s59, s60, s38                                 // 000000B7F374: 96BB263C
	s_mul_i32 s58, s60, s38                                    // 000000B7F378: 963A263C
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000B7F37C: 84BA823A
	s_add_u32 s16, s16, s58                                    // 000000B7F380: 80103A10
	s_addc_u32 s17, s17, s59                                   // 000000B7F384: 82113B11
	s_mul_hi_u32 s59, s4, s41                                  // 000000B7F388: 96BB2904
	s_mul_i32 s58, s4, s41                                     // 000000B7F38C: 963A2904
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000B7F390: 84BA823A
	s_add_u32 s20, s20, s58                                    // 000000B7F394: 80143A14
	s_addc_u32 s21, s21, s59                                   // 000000B7F398: 82153B15
	s_mul_hi_u32 s59, s4, s39                                  // 000000B7F39C: 96BB2704
	s_mul_i32 s58, s4, s39                                     // 000000B7F3A0: 963A2704
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000B7F3A4: 84BA823A
	s_add_u32 s16, s16, s58                                    // 000000B7F3A8: 80103A10
	s_addc_u32 s17, s17, s59                                   // 000000B7F3AC: 82113B11
	v_mov_b32_e32 v0, 0                                        // 000000B7F3B0: 7E000280
	v_mov_b32_e32 v1, 0                                        // 000000B7F3B4: 7E020280
	v_mov_b32_e32 v2, 0                                        // 000000B7F3B8: 7E040280
	v_mov_b32_e32 v3, 0                                        // 000000B7F3BC: 7E060280
	v_mov_b32_e32 v4, 0                                        // 000000B7F3C0: 7E080280
	v_mov_b32_e32 v5, 0                                        // 000000B7F3C4: 7E0A0280
	v_mov_b32_e32 v6, 0                                        // 000000B7F3C8: 7E0C0280
	v_mov_b32_e32 v7, 0                                        // 000000B7F3CC: 7E0E0280
	v_mov_b32_e32 v8, 0                                        // 000000B7F3D0: 7E100280
	v_mov_b32_e32 v9, 0                                        // 000000B7F3D4: 7E120280
	v_mov_b32_e32 v10, 0                                       // 000000B7F3D8: 7E140280
	v_mov_b32_e32 v11, 0                                       // 000000B7F3DC: 7E160280
	v_mov_b32_e32 v12, 0                                       // 000000B7F3E0: 7E180280
	v_mov_b32_e32 v13, 0                                       // 000000B7F3E4: 7E1A0280
	v_mov_b32_e32 v14, 0                                       // 000000B7F3E8: 7E1C0280
	v_mov_b32_e32 v15, 0                                       // 000000B7F3EC: 7E1E0280
	s_cmp_eq_u32 s5, 0                                         // 000000B7F3F0: BF068005
	s_cbranch_scc0 label_NoBranch_11                           // 000000B7F3F4: BFA10006
	s_getpc_b64 s[58:59]                                       // 000000B7F3F8: BEBA4700
	s_add_i32 s60, 0x14bc, 4                                   // 000000B7F3FC: 813C84FF 000014BC
	s_add_u32 s58, s58, s60                                    // 000000B7F404: 803A3C3A
	s_addc_u32 s59, s59, 0                                     // 000000B7F408: 823B803B
	s_setpc_b64 s[58:59]                                       // 000000B7F40C: BE80483A

0000000000b7f410 <label_NoBranch_11>:
	s_waitcnt vmcnt(0)                                         // 000000B7F410: BF8903F7
	ds_store_b32 v35, v40                                      // 000000B7F414: D8340000 00002823
	ds_store_b32 v35, v41 offset:256                           // 000000B7F41C: D8340100 00002923
	ds_store_b32 v35, v42 offset:512                           // 000000B7F424: D8340200 00002A23
	ds_store_b32 v35, v43 offset:768                           // 000000B7F42C: D8340300 00002B23
	ds_store_b32 v36, v44                                      // 000000B7F434: D8340000 00002C24
	ds_store_b32 v36, v45 offset:256                           // 000000B7F43C: D8340100 00002D24
	ds_store_b32 v36, v46 offset:512                           // 000000B7F444: D8340200 00002E24
	ds_store_b32 v36, v47 offset:768                           // 000000B7F44C: D8340300 00002F24
	s_waitcnt lgkmcnt(0)                                       // 000000B7F454: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000B7F458: BDFC0000
	s_barrier                                                  // 000000B7F45C: BFBD0000
	ds_load_b32 v18, v48                                       // 000000B7F460: D8D80000 12000030
	ds_load_b32 v19, v48 offset:32                             // 000000B7F468: D8D80020 13000030
	ds_load_b32 v20, v48 offset:64                             // 000000B7F470: D8D80040 14000030
	ds_load_b32 v21, v48 offset:96                             // 000000B7F478: D8D80060 15000030
	ds_load_b32 v27, v49                                       // 000000B7F480: D8D80000 1B000031
	ds_load_b32 v28, v49 offset:32                             // 000000B7F488: D8D80020 1C000031
	ds_load_b32 v29, v49 offset:64                             // 000000B7F490: D8D80040 1D000031
	ds_load_b32 v30, v49 offset:96                             // 000000B7F498: D8D80060 1E000031

0000000000b7f4a0 <openLoopL_12>:
	s_cmp_le_u32 s5, 1                                         // 000000B7F4A0: BF0B8105
	s_cbranch_scc1 LoopEndL_2                                  // 000000B7F4A4: BFA202A9

0000000000b7f4a8 <label_0013>:
	ds_load_b32 v22, v48 offset:128                            // 000000B7F4A8: D8D80080 16000030
	ds_load_b32 v23, v48 offset:160                            // 000000B7F4B0: D8D800A0 17000030
	ds_load_b32 v24, v48 offset:192                            // 000000B7F4B8: D8D800C0 18000030
	ds_load_b32 v25, v48 offset:224                            // 000000B7F4C0: D8D800E0 19000030
	buffer_load_b32 v40, v37, s[8:11], 0 offen                 // 000000B7F4C8: E0500000 80422825
	buffer_load_b32 v41, v37, s[8:11], s31 offen               // 000000B7F4D0: E0500000 1F422925
	buffer_load_b32 v42, v37, s[8:11], s32 offen               // 000000B7F4D8: E0500000 20422A25
	buffer_load_b32 v43, v37, s[8:11], s33 offen               // 000000B7F4E0: E0500000 21422B25
	buffer_load_b32 v44, v38, s[12:15], 0 offen                // 000000B7F4E8: E0500000 80432C26
	buffer_load_b32 v45, v38, s[12:15], s54 offen              // 000000B7F4F0: E0500000 36432D26
	buffer_load_b32 v46, v38, s[12:15], s55 offen              // 000000B7F4F8: E0500000 37432E26
	ds_load_b32 v31, v49 offset:128                            // 000000B7F500: D8D80080 1F000031
	ds_load_b32 v32, v49 offset:160                            // 000000B7F508: D8D800A0 20000031
	ds_load_b32 v33, v49 offset:192                            // 000000B7F510: D8D800C0 21000031
	ds_load_b32 v34, v49 offset:224                            // 000000B7F518: D8D800E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000B7F520: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000B7F524: 56003712
	s_setprio 1                                                // 000000B7F528: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000B7F52C: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000B7F530: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000B7F534: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000B7F538: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000B7F53C: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000B7F540: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000B7F544: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000B7F548: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000B7F54C: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000B7F550: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000B7F554: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000B7F558: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000B7F55C: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000B7F560: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000B7F564: 561E3D15
	s_setprio 0                                                // 000000B7F568: BFB50000
	ds_load_b32 v18, v48 offset:256                            // 000000B7F56C: D8D80100 12000030
	ds_load_b32 v19, v48 offset:288                            // 000000B7F574: D8D80120 13000030
	ds_load_b32 v20, v48 offset:320                            // 000000B7F57C: D8D80140 14000030
	ds_load_b32 v21, v48 offset:352                            // 000000B7F584: D8D80160 15000030
	buffer_load_b32 v47, v38, s[12:15], s56 offen              // 000000B7F58C: E0500000 38432F26
	ds_load_b32 v27, v49 offset:256                            // 000000B7F594: D8D80100 1B000031
	ds_load_b32 v28, v49 offset:288                            // 000000B7F59C: D8D80120 1C000031
	ds_load_b32 v29, v49 offset:320                            // 000000B7F5A4: D8D80140 1D000031
	ds_load_b32 v30, v49 offset:352                            // 000000B7F5AC: D8D80160 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000B7F5B4: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000B7F5B8: 56003F16
	s_setprio 1                                                // 000000B7F5BC: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000B7F5C0: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000B7F5C4: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000B7F5C8: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000B7F5CC: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000B7F5D0: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000B7F5D4: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000B7F5D8: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000B7F5DC: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000B7F5E0: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000B7F5E4: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000B7F5E8: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000B7F5EC: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000B7F5F0: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000B7F5F4: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000B7F5F8: 561E4519
	s_setprio 0                                                // 000000B7F5FC: BFB50000
	ds_load_b32 v22, v48 offset:384                            // 000000B7F600: D8D80180 16000030
	ds_load_b32 v23, v48 offset:416                            // 000000B7F608: D8D801A0 17000030
	ds_load_b32 v24, v48 offset:448                            // 000000B7F610: D8D801C0 18000030
	ds_load_b32 v25, v48 offset:480                            // 000000B7F618: D8D801E0 19000030
	s_add_u32 s8, s8, s7                                       // 000000B7F620: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000B7F624: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000B7F628: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000B7F62C: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000B7F630: BF068001
	s_cmov_b32 s10, s0                                         // 000000B7F634: BE8A0200
	ds_load_b32 v31, v49 offset:384                            // 000000B7F638: D8D80180 1F000031
	ds_load_b32 v32, v49 offset:416                            // 000000B7F640: D8D801A0 20000031
	ds_load_b32 v33, v49 offset:448                            // 000000B7F648: D8D801C0 21000031
	ds_load_b32 v34, v49 offset:480                            // 000000B7F650: D8D801E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000B7F658: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000B7F65C: 56003712
	s_setprio 1                                                // 000000B7F660: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000B7F664: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000B7F668: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000B7F66C: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000B7F670: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000B7F674: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000B7F678: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000B7F67C: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000B7F680: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000B7F684: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000B7F688: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000B7F68C: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000B7F690: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000B7F694: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000B7F698: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000B7F69C: 561E3D15
	s_setprio 0                                                // 000000B7F6A0: BFB50000
	ds_load_b32 v18, v48 offset:512                            // 000000B7F6A4: D8D80200 12000030
	ds_load_b32 v19, v48 offset:544                            // 000000B7F6AC: D8D80220 13000030
	ds_load_b32 v20, v48 offset:576                            // 000000B7F6B4: D8D80240 14000030
	ds_load_b32 v21, v48 offset:608                            // 000000B7F6BC: D8D80260 15000030
	s_add_u32 s12, s12, s30                                    // 000000B7F6C4: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000B7F6C8: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000B7F6CC: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000B7F6D0: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000B7F6D4: BF06801D
	s_cmov_b32 s14, s28                                        // 000000B7F6D8: BE8E021C
	ds_load_b32 v27, v49 offset:512                            // 000000B7F6DC: D8D80200 1B000031
	ds_load_b32 v28, v49 offset:544                            // 000000B7F6E4: D8D80220 1C000031
	ds_load_b32 v29, v49 offset:576                            // 000000B7F6EC: D8D80240 1D000031
	ds_load_b32 v30, v49 offset:608                            // 000000B7F6F4: D8D80260 1E000031
	s_waitcnt vmcnt(7)                                         // 000000B7F6FC: BF891FF7
	ds_store_b32 v35, v40 offset:2048                          // 000000B7F700: D8340800 00002823
	s_waitcnt lgkmcnt(9)                                       // 000000B7F708: BF89FC97
	v_fmac_f32_e32 v0, v22, v31                                // 000000B7F70C: 56003F16
	s_setprio 1                                                // 000000B7F710: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000B7F714: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000B7F718: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000B7F71C: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000B7F720: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000B7F724: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000B7F728: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000B7F72C: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000B7F730: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000B7F734: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000B7F738: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000B7F73C: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000B7F740: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000B7F744: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000B7F748: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000B7F74C: 561E4519
	s_setprio 0                                                // 000000B7F750: BFB50000
	ds_load_b32 v22, v48 offset:640                            // 000000B7F754: D8D80280 16000030
	ds_load_b32 v23, v48 offset:672                            // 000000B7F75C: D8D802A0 17000030
	ds_load_b32 v24, v48 offset:704                            // 000000B7F764: D8D802C0 18000030
	ds_load_b32 v25, v48 offset:736                            // 000000B7F76C: D8D802E0 19000030
	ds_load_b32 v31, v49 offset:640                            // 000000B7F774: D8D80280 1F000031
	ds_load_b32 v32, v49 offset:672                            // 000000B7F77C: D8D802A0 20000031
	ds_load_b32 v33, v49 offset:704                            // 000000B7F784: D8D802C0 21000031
	ds_load_b32 v34, v49 offset:736                            // 000000B7F78C: D8D802E0 22000031
	s_waitcnt vmcnt(6)                                         // 000000B7F794: BF891BF7
	ds_store_b32 v35, v41 offset:2304                          // 000000B7F798: D8340900 00002923
	s_waitcnt lgkmcnt(9)                                       // 000000B7F7A0: BF89FC97
	v_fmac_f32_e32 v0, v18, v27                                // 000000B7F7A4: 56003712
	s_setprio 1                                                // 000000B7F7A8: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000B7F7AC: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000B7F7B0: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000B7F7B4: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000B7F7B8: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000B7F7BC: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000B7F7C0: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000B7F7C4: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000B7F7C8: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000B7F7CC: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000B7F7D0: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000B7F7D4: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000B7F7D8: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000B7F7DC: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000B7F7E0: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000B7F7E4: 561E3D15
	s_setprio 0                                                // 000000B7F7E8: BFB50000
	ds_load_b32 v18, v48 offset:768                            // 000000B7F7EC: D8D80300 12000030
	ds_load_b32 v19, v48 offset:800                            // 000000B7F7F4: D8D80320 13000030
	ds_load_b32 v20, v48 offset:832                            // 000000B7F7FC: D8D80340 14000030
	ds_load_b32 v21, v48 offset:864                            // 000000B7F804: D8D80360 15000030
	ds_load_b32 v27, v49 offset:768                            // 000000B7F80C: D8D80300 1B000031
	ds_load_b32 v28, v49 offset:800                            // 000000B7F814: D8D80320 1C000031
	ds_load_b32 v29, v49 offset:832                            // 000000B7F81C: D8D80340 1D000031
	ds_load_b32 v30, v49 offset:864                            // 000000B7F824: D8D80360 1E000031
	s_waitcnt vmcnt(5)                                         // 000000B7F82C: BF8917F7
	ds_store_b32 v35, v42 offset:2560                          // 000000B7F830: D8340A00 00002A23
	s_waitcnt lgkmcnt(9)                                       // 000000B7F838: BF89FC97
	v_fmac_f32_e32 v0, v22, v31                                // 000000B7F83C: 56003F16
	s_setprio 1                                                // 000000B7F840: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000B7F844: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000B7F848: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000B7F84C: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000B7F850: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000B7F854: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000B7F858: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000B7F85C: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000B7F860: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000B7F864: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000B7F868: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000B7F86C: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000B7F870: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000B7F874: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000B7F878: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000B7F87C: 561E4519
	s_setprio 0                                                // 000000B7F880: BFB50000
	ds_load_b32 v22, v48 offset:896                            // 000000B7F884: D8D80380 16000030
	ds_load_b32 v23, v48 offset:928                            // 000000B7F88C: D8D803A0 17000030
	ds_load_b32 v24, v48 offset:960                            // 000000B7F894: D8D803C0 18000030
	ds_load_b32 v25, v48 offset:992                            // 000000B7F89C: D8D803E0 19000030
	ds_load_b32 v31, v49 offset:896                            // 000000B7F8A4: D8D80380 1F000031
	ds_load_b32 v32, v49 offset:928                            // 000000B7F8AC: D8D803A0 20000031
	ds_load_b32 v33, v49 offset:960                            // 000000B7F8B4: D8D803C0 21000031
	ds_load_b32 v34, v49 offset:992                            // 000000B7F8BC: D8D803E0 22000031
	s_waitcnt vmcnt(4)                                         // 000000B7F8C4: BF8913F7
	ds_store_b32 v35, v43 offset:2816                          // 000000B7F8C8: D8340B00 00002B23
	s_waitcnt vmcnt(3)                                         // 000000B7F8D0: BF890FF7
	ds_store_b32 v36, v44 offset:2048                          // 000000B7F8D4: D8340800 00002C24
	s_waitcnt vmcnt(2)                                         // 000000B7F8DC: BF890BF7
	ds_store_b32 v36, v45 offset:2304                          // 000000B7F8E0: D8340900 00002D24
	s_waitcnt vmcnt(1)                                         // 000000B7F8E8: BF8907F7
	ds_store_b32 v36, v46 offset:2560                          // 000000B7F8EC: D8340A00 00002E24
	s_waitcnt vmcnt(0)                                         // 000000B7F8F4: BF8903F7
	ds_store_b32 v36, v47 offset:2816                          // 000000B7F8F8: D8340B00 00002F24
	s_waitcnt lgkmcnt(13)                                      // 000000B7F900: BF89FCD7
	v_fmac_f32_e32 v0, v18, v27                                // 000000B7F904: 56003712
	s_setprio 1                                                // 000000B7F908: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000B7F90C: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000B7F910: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000B7F914: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000B7F918: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000B7F91C: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000B7F920: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000B7F924: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000B7F928: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000B7F92C: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000B7F930: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000B7F934: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000B7F938: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000B7F93C: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000B7F940: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000B7F944: 561E3D15
	s_setprio 0                                                // 000000B7F948: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000B7F94C: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000B7F950: BDFC0000
	s_barrier                                                  // 000000B7F954: BFBD0000
	ds_load_b32 v18, v48 offset:2048                           // 000000B7F958: D8D80800 12000030
	ds_load_b32 v19, v48 offset:2080                           // 000000B7F960: D8D80820 13000030
	ds_load_b32 v20, v48 offset:2112                           // 000000B7F968: D8D80840 14000030
	ds_load_b32 v21, v48 offset:2144                           // 000000B7F970: D8D80860 15000030
	ds_load_b32 v27, v49 offset:2048                           // 000000B7F978: D8D80800 1B000031
	ds_load_b32 v28, v49 offset:2080                           // 000000B7F980: D8D80820 1C000031
	ds_load_b32 v29, v49 offset:2112                           // 000000B7F988: D8D80840 1D000031
	ds_load_b32 v30, v49 offset:2144                           // 000000B7F990: D8D80860 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000B7F998: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000B7F99C: 56003F16
	s_setprio 1                                                // 000000B7F9A0: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000B7F9A4: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000B7F9A8: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000B7F9AC: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000B7F9B0: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000B7F9B4: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000B7F9B8: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000B7F9BC: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000B7F9C0: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000B7F9C4: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000B7F9C8: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000B7F9CC: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000B7F9D0: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000B7F9D4: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000B7F9D8: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000B7F9DC: 561E4519
	s_setprio 0                                                // 000000B7F9E0: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000B7F9E4: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000B7F9E8: BF008105
	s_cbranch_scc1 LoopEndL_oddexit_3                          // 000000B7F9EC: BFA20153

0000000000b7f9f0 <label_0014>:
	ds_load_b32 v22, v48 offset:2176                           // 000000B7F9F0: D8D80880 16000030
	ds_load_b32 v23, v48 offset:2208                           // 000000B7F9F8: D8D808A0 17000030
	ds_load_b32 v24, v48 offset:2240                           // 000000B7FA00: D8D808C0 18000030
	ds_load_b32 v25, v48 offset:2272                           // 000000B7FA08: D8D808E0 19000030
	buffer_load_b32 v40, v37, s[8:11], 0 offen                 // 000000B7FA10: E0500000 80422825
	buffer_load_b32 v41, v37, s[8:11], s31 offen               // 000000B7FA18: E0500000 1F422925
	buffer_load_b32 v42, v37, s[8:11], s32 offen               // 000000B7FA20: E0500000 20422A25
	buffer_load_b32 v43, v37, s[8:11], s33 offen               // 000000B7FA28: E0500000 21422B25
	buffer_load_b32 v44, v38, s[12:15], 0 offen                // 000000B7FA30: E0500000 80432C26
	buffer_load_b32 v45, v38, s[12:15], s54 offen              // 000000B7FA38: E0500000 36432D26
	buffer_load_b32 v46, v38, s[12:15], s55 offen              // 000000B7FA40: E0500000 37432E26
	ds_load_b32 v31, v49 offset:2176                           // 000000B7FA48: D8D80880 1F000031
	ds_load_b32 v32, v49 offset:2208                           // 000000B7FA50: D8D808A0 20000031
	ds_load_b32 v33, v49 offset:2240                           // 000000B7FA58: D8D808C0 21000031
	ds_load_b32 v34, v49 offset:2272                           // 000000B7FA60: D8D808E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000B7FA68: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000B7FA6C: 56003712
	s_setprio 1                                                // 000000B7FA70: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000B7FA74: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000B7FA78: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000B7FA7C: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000B7FA80: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000B7FA84: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000B7FA88: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000B7FA8C: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000B7FA90: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000B7FA94: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000B7FA98: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000B7FA9C: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000B7FAA0: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000B7FAA4: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000B7FAA8: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000B7FAAC: 561E3D15
	s_setprio 0                                                // 000000B7FAB0: BFB50000
	ds_load_b32 v18, v48 offset:2304                           // 000000B7FAB4: D8D80900 12000030
	ds_load_b32 v19, v48 offset:2336                           // 000000B7FABC: D8D80920 13000030
	ds_load_b32 v20, v48 offset:2368                           // 000000B7FAC4: D8D80940 14000030
	ds_load_b32 v21, v48 offset:2400                           // 000000B7FACC: D8D80960 15000030
	buffer_load_b32 v47, v38, s[12:15], s56 offen              // 000000B7FAD4: E0500000 38432F26
	ds_load_b32 v27, v49 offset:2304                           // 000000B7FADC: D8D80900 1B000031
	ds_load_b32 v28, v49 offset:2336                           // 000000B7FAE4: D8D80920 1C000031
	ds_load_b32 v29, v49 offset:2368                           // 000000B7FAEC: D8D80940 1D000031
	ds_load_b32 v30, v49 offset:2400                           // 000000B7FAF4: D8D80960 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000B7FAFC: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000B7FB00: 56003F16
	s_setprio 1                                                // 000000B7FB04: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000B7FB08: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000B7FB0C: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000B7FB10: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000B7FB14: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000B7FB18: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000B7FB1C: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000B7FB20: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000B7FB24: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000B7FB28: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000B7FB2C: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000B7FB30: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000B7FB34: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000B7FB38: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000B7FB3C: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000B7FB40: 561E4519
	s_setprio 0                                                // 000000B7FB44: BFB50000
	ds_load_b32 v22, v48 offset:2432                           // 000000B7FB48: D8D80980 16000030
	ds_load_b32 v23, v48 offset:2464                           // 000000B7FB50: D8D809A0 17000030
	ds_load_b32 v24, v48 offset:2496                           // 000000B7FB58: D8D809C0 18000030
	ds_load_b32 v25, v48 offset:2528                           // 000000B7FB60: D8D809E0 19000030
	s_add_u32 s8, s8, s7                                       // 000000B7FB68: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000B7FB6C: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000B7FB70: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000B7FB74: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000B7FB78: BF068001
	s_cmov_b32 s10, s0                                         // 000000B7FB7C: BE8A0200
	ds_load_b32 v31, v49 offset:2432                           // 000000B7FB80: D8D80980 1F000031
	ds_load_b32 v32, v49 offset:2464                           // 000000B7FB88: D8D809A0 20000031
	ds_load_b32 v33, v49 offset:2496                           // 000000B7FB90: D8D809C0 21000031
	ds_load_b32 v34, v49 offset:2528                           // 000000B7FB98: D8D809E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000B7FBA0: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000B7FBA4: 56003712
	s_setprio 1                                                // 000000B7FBA8: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000B7FBAC: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000B7FBB0: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000B7FBB4: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000B7FBB8: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000B7FBBC: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000B7FBC0: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000B7FBC4: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000B7FBC8: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000B7FBCC: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000B7FBD0: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000B7FBD4: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000B7FBD8: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000B7FBDC: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000B7FBE0: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000B7FBE4: 561E3D15
	s_setprio 0                                                // 000000B7FBE8: BFB50000
	ds_load_b32 v18, v48 offset:2560                           // 000000B7FBEC: D8D80A00 12000030
	ds_load_b32 v19, v48 offset:2592                           // 000000B7FBF4: D8D80A20 13000030
	ds_load_b32 v20, v48 offset:2624                           // 000000B7FBFC: D8D80A40 14000030
	ds_load_b32 v21, v48 offset:2656                           // 000000B7FC04: D8D80A60 15000030
	s_add_u32 s12, s12, s30                                    // 000000B7FC0C: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000B7FC10: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000B7FC14: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000B7FC18: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000B7FC1C: BF06801D
	s_cmov_b32 s14, s28                                        // 000000B7FC20: BE8E021C
	ds_load_b32 v27, v49 offset:2560                           // 000000B7FC24: D8D80A00 1B000031
	ds_load_b32 v28, v49 offset:2592                           // 000000B7FC2C: D8D80A20 1C000031
	ds_load_b32 v29, v49 offset:2624                           // 000000B7FC34: D8D80A40 1D000031
	ds_load_b32 v30, v49 offset:2656                           // 000000B7FC3C: D8D80A60 1E000031
	s_waitcnt vmcnt(7)                                         // 000000B7FC44: BF891FF7
	ds_store_b32 v35, v40                                      // 000000B7FC48: D8340000 00002823
	s_waitcnt lgkmcnt(9)                                       // 000000B7FC50: BF89FC97
	v_fmac_f32_e32 v0, v22, v31                                // 000000B7FC54: 56003F16
	s_setprio 1                                                // 000000B7FC58: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000B7FC5C: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000B7FC60: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000B7FC64: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000B7FC68: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000B7FC6C: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000B7FC70: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000B7FC74: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000B7FC78: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000B7FC7C: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000B7FC80: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000B7FC84: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000B7FC88: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000B7FC8C: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000B7FC90: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000B7FC94: 561E4519
	s_setprio 0                                                // 000000B7FC98: BFB50000
	ds_load_b32 v22, v48 offset:2688                           // 000000B7FC9C: D8D80A80 16000030
	ds_load_b32 v23, v48 offset:2720                           // 000000B7FCA4: D8D80AA0 17000030
	ds_load_b32 v24, v48 offset:2752                           // 000000B7FCAC: D8D80AC0 18000030
	ds_load_b32 v25, v48 offset:2784                           // 000000B7FCB4: D8D80AE0 19000030
	ds_load_b32 v31, v49 offset:2688                           // 000000B7FCBC: D8D80A80 1F000031
	ds_load_b32 v32, v49 offset:2720                           // 000000B7FCC4: D8D80AA0 20000031
	ds_load_b32 v33, v49 offset:2752                           // 000000B7FCCC: D8D80AC0 21000031
	ds_load_b32 v34, v49 offset:2784                           // 000000B7FCD4: D8D80AE0 22000031
	s_waitcnt vmcnt(6)                                         // 000000B7FCDC: BF891BF7
	ds_store_b32 v35, v41 offset:256                           // 000000B7FCE0: D8340100 00002923
	s_waitcnt lgkmcnt(9)                                       // 000000B7FCE8: BF89FC97
	v_fmac_f32_e32 v0, v18, v27                                // 000000B7FCEC: 56003712
	s_setprio 1                                                // 000000B7FCF0: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000B7FCF4: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000B7FCF8: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000B7FCFC: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000B7FD00: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000B7FD04: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000B7FD08: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000B7FD0C: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000B7FD10: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000B7FD14: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000B7FD18: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000B7FD1C: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000B7FD20: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000B7FD24: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000B7FD28: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000B7FD2C: 561E3D15
	s_setprio 0                                                // 000000B7FD30: BFB50000
	ds_load_b32 v18, v48 offset:2816                           // 000000B7FD34: D8D80B00 12000030
	ds_load_b32 v19, v48 offset:2848                           // 000000B7FD3C: D8D80B20 13000030
	ds_load_b32 v20, v48 offset:2880                           // 000000B7FD44: D8D80B40 14000030
	ds_load_b32 v21, v48 offset:2912                           // 000000B7FD4C: D8D80B60 15000030
	ds_load_b32 v27, v49 offset:2816                           // 000000B7FD54: D8D80B00 1B000031
	ds_load_b32 v28, v49 offset:2848                           // 000000B7FD5C: D8D80B20 1C000031
	ds_load_b32 v29, v49 offset:2880                           // 000000B7FD64: D8D80B40 1D000031
	ds_load_b32 v30, v49 offset:2912                           // 000000B7FD6C: D8D80B60 1E000031
	s_waitcnt vmcnt(5)                                         // 000000B7FD74: BF8917F7
	ds_store_b32 v35, v42 offset:512                           // 000000B7FD78: D8340200 00002A23
	s_waitcnt lgkmcnt(9)                                       // 000000B7FD80: BF89FC97
	v_fmac_f32_e32 v0, v22, v31                                // 000000B7FD84: 56003F16
	s_setprio 1                                                // 000000B7FD88: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000B7FD8C: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000B7FD90: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000B7FD94: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000B7FD98: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000B7FD9C: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000B7FDA0: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000B7FDA4: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000B7FDA8: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000B7FDAC: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000B7FDB0: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000B7FDB4: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000B7FDB8: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000B7FDBC: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000B7FDC0: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000B7FDC4: 561E4519
	s_setprio 0                                                // 000000B7FDC8: BFB50000
	ds_load_b32 v22, v48 offset:2944                           // 000000B7FDCC: D8D80B80 16000030
	ds_load_b32 v23, v48 offset:2976                           // 000000B7FDD4: D8D80BA0 17000030
	ds_load_b32 v24, v48 offset:3008                           // 000000B7FDDC: D8D80BC0 18000030
	ds_load_b32 v25, v48 offset:3040                           // 000000B7FDE4: D8D80BE0 19000030
	ds_load_b32 v31, v49 offset:2944                           // 000000B7FDEC: D8D80B80 1F000031
	ds_load_b32 v32, v49 offset:2976                           // 000000B7FDF4: D8D80BA0 20000031
	ds_load_b32 v33, v49 offset:3008                           // 000000B7FDFC: D8D80BC0 21000031
	ds_load_b32 v34, v49 offset:3040                           // 000000B7FE04: D8D80BE0 22000031
	s_waitcnt vmcnt(4)                                         // 000000B7FE0C: BF8913F7
	ds_store_b32 v35, v43 offset:768                           // 000000B7FE10: D8340300 00002B23
	s_waitcnt vmcnt(3)                                         // 000000B7FE18: BF890FF7
	ds_store_b32 v36, v44                                      // 000000B7FE1C: D8340000 00002C24
	s_waitcnt vmcnt(2)                                         // 000000B7FE24: BF890BF7
	ds_store_b32 v36, v45 offset:256                           // 000000B7FE28: D8340100 00002D24
	s_waitcnt vmcnt(1)                                         // 000000B7FE30: BF8907F7
	ds_store_b32 v36, v46 offset:512                           // 000000B7FE34: D8340200 00002E24
	s_waitcnt vmcnt(0)                                         // 000000B7FE3C: BF8903F7
	ds_store_b32 v36, v47 offset:768                           // 000000B7FE40: D8340300 00002F24
	s_waitcnt lgkmcnt(13)                                      // 000000B7FE48: BF89FCD7
	v_fmac_f32_e32 v0, v18, v27                                // 000000B7FE4C: 56003712
	s_setprio 1                                                // 000000B7FE50: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000B7FE54: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000B7FE58: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000B7FE5C: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000B7FE60: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000B7FE64: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000B7FE68: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000B7FE6C: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000B7FE70: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000B7FE74: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000B7FE78: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000B7FE7C: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000B7FE80: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000B7FE84: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000B7FE88: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000B7FE8C: 561E3D15
	s_setprio 0                                                // 000000B7FE90: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000B7FE94: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000B7FE98: BDFC0000
	s_barrier                                                  // 000000B7FE9C: BFBD0000
	ds_load_b32 v18, v48                                       // 000000B7FEA0: D8D80000 12000030
	ds_load_b32 v19, v48 offset:32                             // 000000B7FEA8: D8D80020 13000030
	ds_load_b32 v20, v48 offset:64                             // 000000B7FEB0: D8D80040 14000030
	ds_load_b32 v21, v48 offset:96                             // 000000B7FEB8: D8D80060 15000030
	ds_load_b32 v27, v49                                       // 000000B7FEC0: D8D80000 1B000031
	ds_load_b32 v28, v49 offset:32                             // 000000B7FEC8: D8D80020 1C000031
	ds_load_b32 v29, v49 offset:64                             // 000000B7FED0: D8D80040 1D000031
	ds_load_b32 v30, v49 offset:96                             // 000000B7FED8: D8D80060 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000B7FEE0: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000B7FEE4: 56003F16
	s_setprio 1                                                // 000000B7FEE8: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000B7FEEC: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000B7FEF0: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000B7FEF4: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000B7FEF8: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000B7FEFC: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000B7FF00: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000B7FF04: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000B7FF08: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000B7FF0C: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000B7FF10: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000B7FF14: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000B7FF18: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000B7FF1C: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000B7FF20: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000B7FF24: 561E4519
	s_setprio 0                                                // 000000B7FF28: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000B7FF2C: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000B7FF30: BF008105
	s_cbranch_scc0 LoopBeginL_1                                // 000000B7FF34: BFA1FD5C

0000000000b7ff38 <LoopEndL_evenexit_4>:
	s_branch LoopEndL_2                                        // 000000B7FF38: BFA00004

0000000000b7ff3c <LoopEndL_oddexit_3>:
	v_xor_b32_e32 v48, 0x800, v48                              // 000000B7FF3C: 3A6060FF 00000800
	v_xor_b32_e32 v49, 0x800, v49                              // 000000B7FF44: 3A6262FF 00000800

0000000000b7ff4c <LoopEndL_2>:
	s_cmpk_eq_u32 s37, 0x0                                     // 000000B7FF4C: B4A50000
	s_cbranch_scc0 OptNLL_End_15                               // 000000B7FF50: BFA10152
	s_cmp_eq_u32 s36, 1.0                                      // 000000B7FF54: BF06F224
	s_cbranch_scc0 OptNLL_End_15                               // 000000B7FF58: BFA10150
	s_and_b32 s58, 31, s46                                     // 000000B7FF5C: 8B3A2E9F
	s_add_u32 s59, -1, s50                                     // 000000B7FF60: 803B32C1
	s_cmp_ge_u32 s2, s59                                       // 000000B7FF64: BF093B02
	s_cselect_b32 s58, s58, 0                                  // 000000B7FF68: 983A803A
	s_cmpk_gt_u32 s58, 0x0                                     // 000000B7FF6C: B5BA0000
	s_cbranch_scc1 OptNLL_End_15                               // 000000B7FF70: BFA2014A
	s_and_b32 s58, 31, s47                                     // 000000B7FF74: 8B3A2F9F
	s_add_u32 s59, -1, s51                                     // 000000B7FF78: 803B33C1
	s_cmp_ge_u32 s3, s59                                       // 000000B7FF7C: BF093B03
	s_cselect_b32 s58, s58, 0                                  // 000000B7FF80: 983A803A
	s_cmpk_gt_u32 s58, 0x0                                     // 000000B7FF84: B5BA0000
	s_cbranch_scc1 OptNLL_End_15                               // 000000B7FF88: BFA20144
	s_and_b32 s59, 7, s49                                      // 000000B7FF8C: 8B3B3187
	s_cmp_eq_u32 s59, 0                                        // 000000B7FF90: BF06803B
	s_cbranch_scc0 OptNLL_End_15                               // 000000B7FF94: BFA10141
	ds_load_b32 v22, v48 offset:128                            // 000000B7FF98: D8D80080 16000030
	ds_load_b32 v23, v48 offset:160                            // 000000B7FFA0: D8D800A0 17000030
	ds_load_b32 v24, v48 offset:192                            // 000000B7FFA8: D8D800C0 18000030
	ds_load_b32 v25, v48 offset:224                            // 000000B7FFB0: D8D800E0 19000030
	ds_load_b32 v31, v49 offset:128                            // 000000B7FFB8: D8D80080 1F000031
	ds_load_b32 v32, v49 offset:160                            // 000000B7FFC0: D8D800A0 20000031
	ds_load_b32 v33, v49 offset:192                            // 000000B7FFC8: D8D800C0 21000031
	ds_load_b32 v34, v49 offset:224                            // 000000B7FFD0: D8D800E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000B7FFD8: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000B7FFDC: 56003712
	s_setprio 1                                                // 000000B7FFE0: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000B7FFE4: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000B7FFE8: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000B7FFEC: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000B7FFF0: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000B7FFF4: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000B7FFF8: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000B7FFFC: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000B80000: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000B80004: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000B80008: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000B8000C: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000B80010: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000B80014: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000B80018: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000B8001C: 561E3D15
	s_setprio 0                                                // 000000B80020: BFB50000
	ds_load_b32 v18, v48 offset:256                            // 000000B80024: D8D80100 12000030
	ds_load_b32 v19, v48 offset:288                            // 000000B8002C: D8D80120 13000030
	ds_load_b32 v20, v48 offset:320                            // 000000B80034: D8D80140 14000030
	ds_load_b32 v21, v48 offset:352                            // 000000B8003C: D8D80160 15000030
	ds_load_b32 v27, v49 offset:256                            // 000000B80044: D8D80100 1B000031
	ds_load_b32 v28, v49 offset:288                            // 000000B8004C: D8D80120 1C000031
	ds_load_b32 v29, v49 offset:320                            // 000000B80054: D8D80140 1D000031
	ds_load_b32 v30, v49 offset:352                            // 000000B8005C: D8D80160 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000B80064: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000B80068: 56003F16
	s_setprio 1                                                // 000000B8006C: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000B80070: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000B80074: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000B80078: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000B8007C: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000B80080: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000B80084: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000B80088: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000B8008C: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000B80090: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000B80094: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000B80098: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000B8009C: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000B800A0: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000B800A4: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000B800A8: 561E4519
	s_setprio 0                                                // 000000B800AC: BFB50000
	ds_load_b32 v22, v48 offset:384                            // 000000B800B0: D8D80180 16000030
	ds_load_b32 v23, v48 offset:416                            // 000000B800B8: D8D801A0 17000030
	ds_load_b32 v24, v48 offset:448                            // 000000B800C0: D8D801C0 18000030
	ds_load_b32 v25, v48 offset:480                            // 000000B800C8: D8D801E0 19000030
	ds_load_b32 v31, v49 offset:384                            // 000000B800D0: D8D80180 1F000031
	ds_load_b32 v32, v49 offset:416                            // 000000B800D8: D8D801A0 20000031
	ds_load_b32 v33, v49 offset:448                            // 000000B800E0: D8D801C0 21000031
	ds_load_b32 v34, v49 offset:480                            // 000000B800E8: D8D801E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000B800F0: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000B800F4: 56003712
	s_setprio 1                                                // 000000B800F8: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000B800FC: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000B80100: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000B80104: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000B80108: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000B8010C: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000B80110: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000B80114: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000B80118: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000B8011C: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000B80120: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000B80124: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000B80128: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000B8012C: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000B80130: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000B80134: 561E3D15
	s_setprio 0                                                // 000000B80138: BFB50000
	ds_load_b32 v18, v48 offset:512                            // 000000B8013C: D8D80200 12000030
	ds_load_b32 v19, v48 offset:544                            // 000000B80144: D8D80220 13000030
	ds_load_b32 v20, v48 offset:576                            // 000000B8014C: D8D80240 14000030
	ds_load_b32 v21, v48 offset:608                            // 000000B80154: D8D80260 15000030
	ds_load_b32 v27, v49 offset:512                            // 000000B8015C: D8D80200 1B000031
	ds_load_b32 v28, v49 offset:544                            // 000000B80164: D8D80220 1C000031
	ds_load_b32 v29, v49 offset:576                            // 000000B8016C: D8D80240 1D000031
	ds_load_b32 v30, v49 offset:608                            // 000000B80174: D8D80260 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000B8017C: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000B80180: 56003F16
	s_setprio 1                                                // 000000B80184: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000B80188: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000B8018C: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000B80190: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000B80194: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000B80198: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000B8019C: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000B801A0: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000B801A4: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000B801A8: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000B801AC: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000B801B0: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000B801B4: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000B801B8: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000B801BC: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000B801C0: 561E4519
	s_setprio 0                                                // 000000B801C4: BFB50000
	ds_load_b32 v22, v48 offset:640                            // 000000B801C8: D8D80280 16000030
	ds_load_b32 v23, v48 offset:672                            // 000000B801D0: D8D802A0 17000030
	ds_load_b32 v24, v48 offset:704                            // 000000B801D8: D8D802C0 18000030
	ds_load_b32 v25, v48 offset:736                            // 000000B801E0: D8D802E0 19000030
	ds_load_b32 v31, v49 offset:640                            // 000000B801E8: D8D80280 1F000031
	ds_load_b32 v32, v49 offset:672                            // 000000B801F0: D8D802A0 20000031
	ds_load_b32 v33, v49 offset:704                            // 000000B801F8: D8D802C0 21000031
	ds_load_b32 v34, v49 offset:736                            // 000000B80200: D8D802E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000B80208: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000B8020C: 56003712
	s_setprio 1                                                // 000000B80210: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000B80214: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000B80218: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000B8021C: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000B80220: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000B80224: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000B80228: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000B8022C: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000B80230: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000B80234: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000B80238: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000B8023C: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000B80240: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000B80244: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000B80248: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000B8024C: 561E3D15
	s_setprio 0                                                // 000000B80250: BFB50000
	ds_load_b32 v18, v48 offset:768                            // 000000B80254: D8D80300 12000030
	ds_load_b32 v19, v48 offset:800                            // 000000B8025C: D8D80320 13000030
	ds_load_b32 v20, v48 offset:832                            // 000000B80264: D8D80340 14000030
	ds_load_b32 v21, v48 offset:864                            // 000000B8026C: D8D80360 15000030
	ds_load_b32 v27, v49 offset:768                            // 000000B80274: D8D80300 1B000031
	ds_load_b32 v28, v49 offset:800                            // 000000B8027C: D8D80320 1C000031
	ds_load_b32 v29, v49 offset:832                            // 000000B80284: D8D80340 1D000031
	ds_load_b32 v30, v49 offset:864                            // 000000B8028C: D8D80360 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000B80294: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000B80298: 56003F16
	s_setprio 1                                                // 000000B8029C: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000B802A0: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000B802A4: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000B802A8: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000B802AC: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000B802B0: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000B802B4: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000B802B8: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000B802BC: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000B802C0: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000B802C4: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000B802C8: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000B802CC: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000B802D0: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000B802D4: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000B802D8: 561E4519
	s_setprio 0                                                // 000000B802DC: BFB50000
	ds_load_b32 v22, v48 offset:896                            // 000000B802E0: D8D80380 16000030
	ds_load_b32 v23, v48 offset:928                            // 000000B802E8: D8D803A0 17000030
	ds_load_b32 v24, v48 offset:960                            // 000000B802F0: D8D803C0 18000030
	ds_load_b32 v25, v48 offset:992                            // 000000B802F8: D8D803E0 19000030
	ds_load_b32 v31, v49 offset:896                            // 000000B80300: D8D80380 1F000031
	ds_load_b32 v32, v49 offset:928                            // 000000B80308: D8D803A0 20000031
	ds_load_b32 v33, v49 offset:960                            // 000000B80310: D8D803C0 21000031
	ds_load_b32 v34, v49 offset:992                            // 000000B80318: D8D803E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000B80320: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000B80324: 56003712
	s_setprio 1                                                // 000000B80328: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000B8032C: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000B80330: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000B80334: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000B80338: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000B8033C: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000B80340: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000B80344: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000B80348: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000B8034C: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000B80350: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000B80354: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000B80358: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000B8035C: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000B80360: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000B80364: 561E3D15
	s_setprio 0                                                // 000000B80368: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000B8036C: BF89FC07
	v_fmac_f32_e32 v0, v22, v31                                // 000000B80370: 56003F16
	s_setprio 1                                                // 000000B80374: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000B80378: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000B8037C: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000B80380: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000B80384: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000B80388: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000B8038C: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000B80390: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000B80394: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000B80398: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000B8039C: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000B803A0: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000B803A4: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000B803A8: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000B803AC: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000B803B0: 561E4519
	s_setprio 0                                                // 000000B803B4: BFB50000

0000000000b803b8 <Summation_End_OptNLL_16>:
	v_lshrrev_b32_e32 v19, 3, v50                              // 000000B803B8: 32266483
	v_and_b32_e32 v18, 7, v50                                  // 000000B803BC: 36246487
	v_mul_lo_u32 v20, v19, s40                                 // 000000B803C0: D72C0014 00005113
	v_mul_lo_u32 v21, v19, s38                                 // 000000B803C8: D72C0015 00004D13
	s_mul_i32 s52, 32, s2                                      // 000000B803D0: 963402A0
	v_add_co_u32 v18, vcc_lo, s52, v18                         // 000000B803D4: D7006A12 00022434
	s_mul_i32 s54, 32, s3                                      // 000000B803DC: 963603A0
	v_add_co_u32 v19, vcc_lo, s54, v19                         // 000000B803E0: D7006A13 00022636

0000000000b803e8 <GW_B0_E0_19>:
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000B803E8: D6470018 020A2515
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000B803F0: E0680000 80440018
	buffer_store_b32 v1, v24, s[16:19], 0 offen offset:32      // 000000B803F8: E0680020 80440118
	buffer_store_b32 v2, v24, s[16:19], 0 offen offset:64      // 000000B80400: E0680040 80440218
	buffer_store_b32 v3, v24, s[16:19], 0 offen offset:96      // 000000B80408: E0680060 80440318
	s_mul_i32 s34, s38, 32                                     // 000000B80410: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000B80414: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000B80418: 82118011
	buffer_store_b32 v4, v24, s[16:19], 0 offen                // 000000B8041C: E0680000 80440418
	buffer_store_b32 v5, v24, s[16:19], 0 offen offset:32      // 000000B80424: E0680020 80440518
	buffer_store_b32 v6, v24, s[16:19], 0 offen offset:64      // 000000B8042C: E0680040 80440618
	buffer_store_b32 v7, v24, s[16:19], 0 offen offset:96      // 000000B80434: E0680060 80440718
	s_mul_i32 s34, s38, 32                                     // 000000B8043C: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000B80440: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000B80444: 82118011
	buffer_store_b32 v8, v24, s[16:19], 0 offen                // 000000B80448: E0680000 80440818
	buffer_store_b32 v9, v24, s[16:19], 0 offen offset:32      // 000000B80450: E0680020 80440918
	buffer_store_b32 v10, v24, s[16:19], 0 offen offset:64     // 000000B80458: E0680040 80440A18
	buffer_store_b32 v11, v24, s[16:19], 0 offen offset:96     // 000000B80460: E0680060 80440B18
	s_mul_i32 s34, s38, 32                                     // 000000B80468: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000B8046C: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000B80470: 82118011
	buffer_store_b32 v12, v24, s[16:19], 0 offen               // 000000B80474: E0680000 80440C18
	buffer_store_b32 v13, v24, s[16:19], 0 offen offset:32     // 000000B8047C: E0680020 80440D18
	buffer_store_b32 v14, v24, s[16:19], 0 offen offset:64     // 000000B80484: E0680040 80440E18
	buffer_store_b32 v15, v24, s[16:19], 0 offen offset:96     // 000000B8048C: E0680060 80440F18
	s_branch label_GW_End_21                                   // 000000B80494: BFA00000

0000000000b80498 <label_GW_End_21>:
	s_endpgm                                                   // 000000B80498: BFB00000

0000000000b8049c <OptNLL_End_15>:
	ds_load_b32 v22, v48 offset:128                            // 000000B8049C: D8D80080 16000030
	ds_load_b32 v23, v48 offset:160                            // 000000B804A4: D8D800A0 17000030
	ds_load_b32 v24, v48 offset:192                            // 000000B804AC: D8D800C0 18000030
	ds_load_b32 v25, v48 offset:224                            // 000000B804B4: D8D800E0 19000030
	ds_load_b32 v31, v49 offset:128                            // 000000B804BC: D8D80080 1F000031
	ds_load_b32 v32, v49 offset:160                            // 000000B804C4: D8D800A0 20000031
	ds_load_b32 v33, v49 offset:192                            // 000000B804CC: D8D800C0 21000031
	ds_load_b32 v34, v49 offset:224                            // 000000B804D4: D8D800E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000B804DC: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000B804E0: 56003712
	s_setprio 1                                                // 000000B804E4: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000B804E8: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000B804EC: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000B804F0: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000B804F4: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000B804F8: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000B804FC: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000B80500: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000B80504: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000B80508: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000B8050C: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000B80510: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000B80514: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000B80518: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000B8051C: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000B80520: 561E3D15
	s_setprio 0                                                // 000000B80524: BFB50000
	ds_load_b32 v18, v48 offset:256                            // 000000B80528: D8D80100 12000030
	ds_load_b32 v19, v48 offset:288                            // 000000B80530: D8D80120 13000030
	ds_load_b32 v20, v48 offset:320                            // 000000B80538: D8D80140 14000030
	ds_load_b32 v21, v48 offset:352                            // 000000B80540: D8D80160 15000030
	ds_load_b32 v27, v49 offset:256                            // 000000B80548: D8D80100 1B000031
	ds_load_b32 v28, v49 offset:288                            // 000000B80550: D8D80120 1C000031
	ds_load_b32 v29, v49 offset:320                            // 000000B80558: D8D80140 1D000031
	ds_load_b32 v30, v49 offset:352                            // 000000B80560: D8D80160 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000B80568: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000B8056C: 56003F16
	s_setprio 1                                                // 000000B80570: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000B80574: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000B80578: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000B8057C: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000B80580: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000B80584: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000B80588: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000B8058C: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000B80590: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000B80594: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000B80598: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000B8059C: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000B805A0: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000B805A4: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000B805A8: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000B805AC: 561E4519
	s_setprio 0                                                // 000000B805B0: BFB50000
	ds_load_b32 v22, v48 offset:384                            // 000000B805B4: D8D80180 16000030
	ds_load_b32 v23, v48 offset:416                            // 000000B805BC: D8D801A0 17000030
	ds_load_b32 v24, v48 offset:448                            // 000000B805C4: D8D801C0 18000030
	ds_load_b32 v25, v48 offset:480                            // 000000B805CC: D8D801E0 19000030
	ds_load_b32 v31, v49 offset:384                            // 000000B805D4: D8D80180 1F000031
	ds_load_b32 v32, v49 offset:416                            // 000000B805DC: D8D801A0 20000031
	ds_load_b32 v33, v49 offset:448                            // 000000B805E4: D8D801C0 21000031
	ds_load_b32 v34, v49 offset:480                            // 000000B805EC: D8D801E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000B805F4: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000B805F8: 56003712
	s_setprio 1                                                // 000000B805FC: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000B80600: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000B80604: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000B80608: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000B8060C: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000B80610: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000B80614: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000B80618: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000B8061C: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000B80620: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000B80624: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000B80628: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000B8062C: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000B80630: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000B80634: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000B80638: 561E3D15
	s_setprio 0                                                // 000000B8063C: BFB50000
	ds_load_b32 v18, v48 offset:512                            // 000000B80640: D8D80200 12000030
	ds_load_b32 v19, v48 offset:544                            // 000000B80648: D8D80220 13000030
	ds_load_b32 v20, v48 offset:576                            // 000000B80650: D8D80240 14000030
	ds_load_b32 v21, v48 offset:608                            // 000000B80658: D8D80260 15000030
	ds_load_b32 v27, v49 offset:512                            // 000000B80660: D8D80200 1B000031
	ds_load_b32 v28, v49 offset:544                            // 000000B80668: D8D80220 1C000031
	ds_load_b32 v29, v49 offset:576                            // 000000B80670: D8D80240 1D000031
	ds_load_b32 v30, v49 offset:608                            // 000000B80678: D8D80260 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000B80680: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000B80684: 56003F16
	s_setprio 1                                                // 000000B80688: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000B8068C: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000B80690: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000B80694: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000B80698: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000B8069C: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000B806A0: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000B806A4: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000B806A8: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000B806AC: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000B806B0: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000B806B4: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000B806B8: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000B806BC: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000B806C0: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000B806C4: 561E4519
	s_setprio 0                                                // 000000B806C8: BFB50000
	ds_load_b32 v22, v48 offset:640                            // 000000B806CC: D8D80280 16000030
	ds_load_b32 v23, v48 offset:672                            // 000000B806D4: D8D802A0 17000030
	ds_load_b32 v24, v48 offset:704                            // 000000B806DC: D8D802C0 18000030
	ds_load_b32 v25, v48 offset:736                            // 000000B806E4: D8D802E0 19000030
	ds_load_b32 v31, v49 offset:640                            // 000000B806EC: D8D80280 1F000031
	ds_load_b32 v32, v49 offset:672                            // 000000B806F4: D8D802A0 20000031
	ds_load_b32 v33, v49 offset:704                            // 000000B806FC: D8D802C0 21000031
	ds_load_b32 v34, v49 offset:736                            // 000000B80704: D8D802E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000B8070C: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000B80710: 56003712
	s_setprio 1                                                // 000000B80714: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000B80718: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000B8071C: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000B80720: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000B80724: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000B80728: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000B8072C: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000B80730: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000B80734: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000B80738: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000B8073C: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000B80740: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000B80744: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000B80748: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000B8074C: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000B80750: 561E3D15
	s_setprio 0                                                // 000000B80754: BFB50000
	ds_load_b32 v18, v48 offset:768                            // 000000B80758: D8D80300 12000030
	ds_load_b32 v19, v48 offset:800                            // 000000B80760: D8D80320 13000030
	ds_load_b32 v20, v48 offset:832                            // 000000B80768: D8D80340 14000030
	ds_load_b32 v21, v48 offset:864                            // 000000B80770: D8D80360 15000030
	ds_load_b32 v27, v49 offset:768                            // 000000B80778: D8D80300 1B000031
	ds_load_b32 v28, v49 offset:800                            // 000000B80780: D8D80320 1C000031
	ds_load_b32 v29, v49 offset:832                            // 000000B80788: D8D80340 1D000031
	ds_load_b32 v30, v49 offset:864                            // 000000B80790: D8D80360 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000B80798: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000B8079C: 56003F16
	s_setprio 1                                                // 000000B807A0: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000B807A4: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000B807A8: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000B807AC: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000B807B0: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000B807B4: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000B807B8: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000B807BC: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000B807C0: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000B807C4: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000B807C8: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000B807CC: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000B807D0: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000B807D4: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000B807D8: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000B807DC: 561E4519
	s_setprio 0                                                // 000000B807E0: BFB50000
	ds_load_b32 v22, v48 offset:896                            // 000000B807E4: D8D80380 16000030
	ds_load_b32 v23, v48 offset:928                            // 000000B807EC: D8D803A0 17000030
	ds_load_b32 v24, v48 offset:960                            // 000000B807F4: D8D803C0 18000030
	ds_load_b32 v25, v48 offset:992                            // 000000B807FC: D8D803E0 19000030
	ds_load_b32 v31, v49 offset:896                            // 000000B80804: D8D80380 1F000031
	ds_load_b32 v32, v49 offset:928                            // 000000B8080C: D8D803A0 20000031
	ds_load_b32 v33, v49 offset:960                            // 000000B80814: D8D803C0 21000031
	ds_load_b32 v34, v49 offset:992                            // 000000B8081C: D8D803E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000B80824: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000B80828: 56003712
	s_setprio 1                                                // 000000B8082C: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000B80830: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000B80834: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000B80838: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000B8083C: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000B80840: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000B80844: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000B80848: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000B8084C: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000B80850: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000B80854: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000B80858: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000B8085C: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000B80860: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000B80864: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000B80868: 561E3D15
	s_setprio 0                                                // 000000B8086C: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000B80870: BF89FC07
	v_fmac_f32_e32 v0, v22, v31                                // 000000B80874: 56003F16
	s_setprio 1                                                // 000000B80878: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000B8087C: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000B80880: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000B80884: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000B80888: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000B8088C: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000B80890: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000B80894: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000B80898: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000B8089C: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000B808A0: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000B808A4: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000B808A8: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000B808AC: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000B808B0: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000B808B4: 561E4519
	s_setprio 0                                                // 000000B808B8: BFB50000

0000000000b808bc <PrefetchGlobalLastIterEnd_5>:
	v_and_b32_e32 v35, 0xf007ff, v35                           // 000000B808BC: 364646FF 00F007FF
	v_and_b32_e32 v36, 0xf007ff, v36                           // 000000B808C4: 364848FF 00F007FF
	s_and_b32 s5, 7, s49                                       // 000000B808CC: 8B053187
	s_cmp_eq_u32 s5, 0                                         // 000000B808D0: BF068005
	s_cbranch_scc1 SkipTailLoopL_8                             // 000000B808D4: BFA2005A
	s_mov_b32 s6, 0                                            // 000000B808D8: BE860080
	buffer_load_b32 v40, v37, s[8:11], 0 offen                 // 000000B808DC: E0500000 80422825
	buffer_load_b32 v41, v37, s[8:11], s31 offen               // 000000B808E4: E0500000 1F422925
	buffer_load_b32 v42, v37, s[8:11], s32 offen               // 000000B808EC: E0500000 20422A25
	buffer_load_b32 v43, v37, s[8:11], s33 offen               // 000000B808F4: E0500000 21422B25
	buffer_load_b32 v44, v38, s[12:15], 0 offen                // 000000B808FC: E0500000 80432C26
	buffer_load_b32 v45, v38, s[12:15], s54 offen              // 000000B80904: E0500000 36432D26
	buffer_load_b32 v46, v38, s[12:15], s55 offen              // 000000B8090C: E0500000 37432E26
	buffer_load_b32 v47, v38, s[12:15], s56 offen              // 000000B80914: E0500000 38432F26
	s_waitcnt vmcnt(0)                                         // 000000B8091C: BF8903F7
	s_waitcnt_lgkmcnt null, 0x0                                // 000000B80920: BDFC0000
	s_barrier                                                  // 000000B80924: BFBD0000
	ds_store_b32 v35, v40                                      // 000000B80928: D8340000 00002823
	ds_store_b32 v35, v41 offset:256                           // 000000B80930: D8340100 00002923
	ds_store_b32 v35, v42 offset:512                           // 000000B80938: D8340200 00002A23
	ds_store_b32 v35, v43 offset:768                           // 000000B80940: D8340300 00002B23
	ds_store_b32 v36, v44                                      // 000000B80948: D8340000 00002C24
	ds_store_b32 v36, v45 offset:256                           // 000000B80950: D8340100 00002D24
	ds_store_b32 v36, v46 offset:512                           // 000000B80958: D8340200 00002E24
	ds_store_b32 v36, v47 offset:768                           // 000000B80960: D8340300 00002F24
	s_waitcnt lgkmcnt(0)                                       // 000000B80968: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000B8096C: BDFC0000
	s_barrier                                                  // 000000B80970: BFBD0000
	v_and_b32_e32 v48, 0x7ff, v48                              // 000000B80974: 366060FF 000007FF
	v_and_b32_e32 v49, 0x7ff, v49                              // 000000B8097C: 366262FF 000007FF

0000000000b80984 <TailLoopBeginL_6>:
	ds_load_b32 v18, v48                                       // 000000B80984: D8D80000 12000030
	ds_load_b32 v19, v48 offset:32                             // 000000B8098C: D8D80020 13000030
	ds_load_b32 v20, v48 offset:64                             // 000000B80994: D8D80040 14000030
	ds_load_b32 v21, v48 offset:96                             // 000000B8099C: D8D80060 15000030
	ds_load_b32 v27, v49                                       // 000000B809A4: D8D80000 1B000031
	ds_load_b32 v28, v49 offset:32                             // 000000B809AC: D8D80020 1C000031
	ds_load_b32 v29, v49 offset:64                             // 000000B809B4: D8D80040 1D000031
	ds_load_b32 v30, v49 offset:96                             // 000000B809BC: D8D80060 1E000031
	s_mov_b32 s34, 0x80                                        // 000000B809C4: BEA200FF 00000080
	v_add_co_u32 v48, vcc_lo, s34, v48                         // 000000B809CC: D7006A30 00026022
	s_mov_b32 s34, 0x80                                        // 000000B809D4: BEA200FF 00000080
	v_add_co_u32 v49, vcc_lo, s34, v49                         // 000000B809DC: D7006A31 00026222
	s_waitcnt lgkmcnt(0)                                       // 000000B809E4: BF89FC07
	v_fmac_f32_e32 v0, v18, v27                                // 000000B809E8: 56003712
	s_setprio 1                                                // 000000B809EC: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000B809F0: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000B809F4: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000B809F8: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000B809FC: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000B80A00: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000B80A04: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000B80A08: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000B80A0C: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000B80A10: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000B80A14: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000B80A18: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000B80A1C: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000B80A20: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000B80A24: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000B80A28: 561E3D15
	s_setprio 0                                                // 000000B80A2C: BFB50000
	s_sub_i32 s5, s5, 1                                        // 000000B80A30: 81858105
	s_add_u32 s6, s6, 1                                        // 000000B80A34: 80068106
	s_cmp_le_i32 s5, 0                                         // 000000B80A38: BF058005
	s_cbranch_scc0 TailLoopBeginL_6                            // 000000B80A3C: BFA1FFD1

0000000000b80a40 <TailLoopEndL_7>:
	v_lshrrev_b32_e32 v19, 3, v50                              // 000000B80A40: 32266483
	v_and_b32_e32 v18, 7, v50                                  // 000000B80A44: 36246487
	v_mul_lo_u32 v20, v19, s40                                 // 000000B80A48: D72C0014 00005113
	v_mul_lo_u32 v21, v19, s38                                 // 000000B80A50: D72C0015 00004D13
	s_mul_i32 s52, 32, s2                                      // 000000B80A58: 963402A0
	v_add_co_u32 v18, vcc_lo, s52, v18                         // 000000B80A5C: D7006A12 00022434
	s_mul_i32 s54, 32, s3                                      // 000000B80A64: 963603A0
	v_add_co_u32 v19, vcc_lo, s54, v19                         // 000000B80A68: D7006A13 00022636
	s_cmpk_eq_u32 s37, 0x0                                     // 000000B80A70: B4A50000
	s_cbranch_scc0 GW_Beta_43                                  // 000000B80A74: BFA10139
	s_and_b32 s52, 31, s46                                     // 000000B80A78: 8B342E9F
	s_add_u32 s53, -1, s50                                     // 000000B80A7C: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000B80A80: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000B80A84: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000B80A88: B5B40000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000B80A8C: BFA20042
	s_and_b32 s52, 31, s47                                     // 000000B80A90: 8B342F9F
	s_add_u32 s53, -1, s51                                     // 000000B80A94: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000B80A98: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000B80A9C: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000B80AA0: B5B40000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000B80AA4: BFA2003C

0000000000b80aa8 <GW_B0_E0_31>:
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000B80AA8: D6470018 020A2515
	v_mul_f32_e32 v0, s36, v0                                  // 000000B80AB0: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000B80AB4: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000B80AB8: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000B80ABC: 10060624
	v_mul_f32_e32 v4, s36, v4                                  // 000000B80AC0: 10080824
	v_mul_f32_e32 v5, s36, v5                                  // 000000B80AC4: 100A0A24
	v_mul_f32_e32 v6, s36, v6                                  // 000000B80AC8: 100C0C24
	v_mul_f32_e32 v7, s36, v7                                  // 000000B80ACC: 100E0E24
	v_mul_f32_e32 v8, s36, v8                                  // 000000B80AD0: 10101024
	v_mul_f32_e32 v9, s36, v9                                  // 000000B80AD4: 10121224
	v_mul_f32_e32 v10, s36, v10                                // 000000B80AD8: 10141424
	v_mul_f32_e32 v11, s36, v11                                // 000000B80ADC: 10161624
	v_mul_f32_e32 v12, s36, v12                                // 000000B80AE0: 10181824
	v_mul_f32_e32 v13, s36, v13                                // 000000B80AE4: 101A1A24
	v_mul_f32_e32 v14, s36, v14                                // 000000B80AE8: 101C1C24
	v_mul_f32_e32 v15, s36, v15                                // 000000B80AEC: 101E1E24
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000B80AF0: E0680000 80440018
	buffer_store_b32 v1, v24, s[16:19], 0 offen offset:32      // 000000B80AF8: E0680020 80440118
	buffer_store_b32 v2, v24, s[16:19], 0 offen offset:64      // 000000B80B00: E0680040 80440218
	buffer_store_b32 v3, v24, s[16:19], 0 offen offset:96      // 000000B80B08: E0680060 80440318
	s_mul_i32 s34, s38, 32                                     // 000000B80B10: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000B80B14: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000B80B18: 82118011
	buffer_store_b32 v4, v24, s[16:19], 0 offen                // 000000B80B1C: E0680000 80440418
	buffer_store_b32 v5, v24, s[16:19], 0 offen offset:32      // 000000B80B24: E0680020 80440518
	buffer_store_b32 v6, v24, s[16:19], 0 offen offset:64      // 000000B80B2C: E0680040 80440618
	buffer_store_b32 v7, v24, s[16:19], 0 offen offset:96      // 000000B80B34: E0680060 80440718
	s_mul_i32 s34, s38, 32                                     // 000000B80B3C: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000B80B40: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000B80B44: 82118011
	buffer_store_b32 v8, v24, s[16:19], 0 offen                // 000000B80B48: E0680000 80440818
	buffer_store_b32 v9, v24, s[16:19], 0 offen offset:32      // 000000B80B50: E0680020 80440918
	buffer_store_b32 v10, v24, s[16:19], 0 offen offset:64     // 000000B80B58: E0680040 80440A18
	buffer_store_b32 v11, v24, s[16:19], 0 offen offset:96     // 000000B80B60: E0680060 80440B18
	s_mul_i32 s34, s38, 32                                     // 000000B80B68: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000B80B6C: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000B80B70: 82118011
	buffer_store_b32 v12, v24, s[16:19], 0 offen               // 000000B80B74: E0680000 80440C18
	buffer_store_b32 v13, v24, s[16:19], 0 offen offset:32     // 000000B80B7C: E0680020 80440D18
	buffer_store_b32 v14, v24, s[16:19], 0 offen offset:64     // 000000B80B84: E0680040 80440E18
	buffer_store_b32 v15, v24, s[16:19], 0 offen offset:96     // 000000B80B8C: E0680060 80440F18
	s_branch label_0047                                        // 000000B80B94: BFA00309

0000000000b80b98 <GW_B0_E1_34>:
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000B80B98: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B80BA0: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B80BA8: 8B363634
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000B80BAC: D6470018 020A2515
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000B80BB4: D5010018 00DA30C1
	v_add_co_u32 v22, vcc_lo, v18, 8                           // 000000B80BBC: D7006A16 00011112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B80BC4: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B80BCC: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B80BD4: 8B363634
	v_add_lshl_u32 v25, v21, v22, 2                            // 000000B80BD8: D6470019 020A2D15
	v_cndmask_b32_e64 v25, -1, v25, s54                        // 000000B80BE0: D5010019 00DA32C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000B80BE8: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B80BF0: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B80BF8: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B80C00: 8B363634
	v_add_lshl_u32 v26, v21, v22, 2                            // 000000B80C04: D647001A 020A2D15
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000B80C0C: D501001A 00DA34C1
	v_add_co_u32 v22, vcc_lo, v18, 24                          // 000000B80C14: D7006A16 00013112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B80C1C: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B80C24: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B80C2C: 8B363634
	v_add_lshl_u32 v27, v21, v22, 2                            // 000000B80C30: D647001B 020A2D15
	v_cndmask_b32_e64 v27, -1, v27, s54                        // 000000B80C38: D501001B 00DA36C1
	v_add_co_u32 v19, vcc_lo, v19, 8                           // 000000B80C40: D7006A13 00011113
	s_mul_i32 s52, s40, 8                                      // 000000B80C48: 96348828
	v_add_nc_u32_e64 v20, v20, s52                             // 000000B80C4C: D5250014 00006914
	s_mul_i32 s52, s38, 8                                      // 000000B80C54: 96348826
	v_add_nc_u32_e64 v21, v21, s52                             // 000000B80C58: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000B80C60: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B80C68: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B80C70: 8B363634
	v_add_lshl_u32 v28, v21, v18, 2                            // 000000B80C74: D647001C 020A2515
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000B80C7C: D501001C 00DA38C1
	v_add_co_u32 v22, vcc_lo, v18, 8                           // 000000B80C84: D7006A16 00011112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B80C8C: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B80C94: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B80C9C: 8B363634
	v_add_lshl_u32 v29, v21, v22, 2                            // 000000B80CA0: D647001D 020A2D15
	v_cndmask_b32_e64 v29, -1, v29, s54                        // 000000B80CA8: D501001D 00DA3AC1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000B80CB0: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B80CB8: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B80CC0: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B80CC8: 8B363634
	v_add_lshl_u32 v30, v21, v22, 2                            // 000000B80CCC: D647001E 020A2D15
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000B80CD4: D501001E 00DA3CC1
	v_add_co_u32 v22, vcc_lo, v18, 24                          // 000000B80CDC: D7006A16 00013112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B80CE4: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B80CEC: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B80CF4: 8B363634
	v_add_lshl_u32 v31, v21, v22, 2                            // 000000B80CF8: D647001F 020A2D15
	v_cndmask_b32_e64 v31, -1, v31, s54                        // 000000B80D00: D501001F 00DA3EC1
	v_add_co_u32 v19, vcc_lo, v19, 8                           // 000000B80D08: D7006A13 00011113
	s_mul_i32 s52, s40, 8                                      // 000000B80D10: 96348828
	v_add_nc_u32_e64 v20, v20, s52                             // 000000B80D14: D5250014 00006914
	s_mul_i32 s52, s38, 8                                      // 000000B80D1C: 96348826
	v_add_nc_u32_e64 v21, v21, s52                             // 000000B80D20: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000B80D28: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B80D30: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B80D38: 8B363634
	v_add_lshl_u32 v32, v21, v18, 2                            // 000000B80D3C: D6470020 020A2515
	v_cndmask_b32_e64 v32, -1, v32, s54                        // 000000B80D44: D5010020 00DA40C1
	v_add_co_u32 v22, vcc_lo, v18, 8                           // 000000B80D4C: D7006A16 00011112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B80D54: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B80D5C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B80D64: 8B363634
	v_add_lshl_u32 v33, v21, v22, 2                            // 000000B80D68: D6470021 020A2D15
	v_cndmask_b32_e64 v33, -1, v33, s54                        // 000000B80D70: D5010021 00DA42C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000B80D78: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B80D80: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B80D88: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B80D90: 8B363634
	v_add_lshl_u32 v34, v21, v22, 2                            // 000000B80D94: D6470022 020A2D15
	v_cndmask_b32_e64 v34, -1, v34, s54                        // 000000B80D9C: D5010022 00DA44C1
	v_add_co_u32 v22, vcc_lo, v18, 24                          // 000000B80DA4: D7006A16 00013112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B80DAC: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B80DB4: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B80DBC: 8B363634
	v_add_lshl_u32 v35, v21, v22, 2                            // 000000B80DC0: D6470023 020A2D15
	v_cndmask_b32_e64 v35, -1, v35, s54                        // 000000B80DC8: D5010023 00DA46C1
	v_add_co_u32 v19, vcc_lo, v19, 8                           // 000000B80DD0: D7006A13 00011113
	s_mul_i32 s52, s40, 8                                      // 000000B80DD8: 96348828
	v_add_nc_u32_e64 v20, v20, s52                             // 000000B80DDC: D5250014 00006914
	s_mul_i32 s52, s38, 8                                      // 000000B80DE4: 96348826
	v_add_nc_u32_e64 v21, v21, s52                             // 000000B80DE8: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000B80DF0: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B80DF8: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B80E00: 8B363634
	v_add_lshl_u32 v36, v21, v18, 2                            // 000000B80E04: D6470024 020A2515
	v_cndmask_b32_e64 v36, -1, v36, s54                        // 000000B80E0C: D5010024 00DA48C1
	v_add_co_u32 v22, vcc_lo, v18, 8                           // 000000B80E14: D7006A16 00011112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B80E1C: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B80E24: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B80E2C: 8B363634
	v_add_lshl_u32 v37, v21, v22, 2                            // 000000B80E30: D6470025 020A2D15
	v_cndmask_b32_e64 v37, -1, v37, s54                        // 000000B80E38: D5010025 00DA4AC1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000B80E40: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B80E48: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B80E50: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B80E58: 8B363634
	v_add_lshl_u32 v38, v21, v22, 2                            // 000000B80E5C: D6470026 020A2D15
	v_cndmask_b32_e64 v38, -1, v38, s54                        // 000000B80E64: D5010026 00DA4CC1
	v_add_co_u32 v22, vcc_lo, v18, 24                          // 000000B80E6C: D7006A16 00013112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B80E74: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B80E7C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B80E84: 8B363634
	v_add_lshl_u32 v39, v21, v22, 2                            // 000000B80E88: D6470027 020A2D15
	v_cndmask_b32_e64 v39, -1, v39, s54                        // 000000B80E90: D5010027 00DA4EC1
	v_mul_f32_e32 v0, s36, v0                                  // 000000B80E98: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000B80E9C: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000B80EA0: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000B80EA4: 10060624
	v_mul_f32_e32 v4, s36, v4                                  // 000000B80EA8: 10080824
	v_mul_f32_e32 v5, s36, v5                                  // 000000B80EAC: 100A0A24
	v_mul_f32_e32 v6, s36, v6                                  // 000000B80EB0: 100C0C24
	v_mul_f32_e32 v7, s36, v7                                  // 000000B80EB4: 100E0E24
	v_mul_f32_e32 v8, s36, v8                                  // 000000B80EB8: 10101024
	v_mul_f32_e32 v9, s36, v9                                  // 000000B80EBC: 10121224
	v_mul_f32_e32 v10, s36, v10                                // 000000B80EC0: 10141424
	v_mul_f32_e32 v11, s36, v11                                // 000000B80EC4: 10161624
	v_mul_f32_e32 v12, s36, v12                                // 000000B80EC8: 10181824
	v_mul_f32_e32 v13, s36, v13                                // 000000B80ECC: 101A1A24
	v_mul_f32_e32 v14, s36, v14                                // 000000B80ED0: 101C1C24
	v_mul_f32_e32 v15, s36, v15                                // 000000B80ED4: 101E1E24
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000B80ED8: E0680000 80440018
	buffer_store_b32 v1, v25, s[16:19], 0 offen                // 000000B80EE0: E0680000 80440119
	buffer_store_b32 v2, v26, s[16:19], 0 offen                // 000000B80EE8: E0680000 8044021A
	buffer_store_b32 v3, v27, s[16:19], 0 offen                // 000000B80EF0: E0680000 8044031B
	buffer_store_b32 v4, v28, s[16:19], 0 offen                // 000000B80EF8: E0680000 8044041C
	buffer_store_b32 v5, v29, s[16:19], 0 offen                // 000000B80F00: E0680000 8044051D
	buffer_store_b32 v6, v30, s[16:19], 0 offen                // 000000B80F08: E0680000 8044061E
	buffer_store_b32 v7, v31, s[16:19], 0 offen                // 000000B80F10: E0680000 8044071F
	buffer_store_b32 v8, v32, s[16:19], 0 offen                // 000000B80F18: E0680000 80440820
	buffer_store_b32 v9, v33, s[16:19], 0 offen                // 000000B80F20: E0680000 80440921
	buffer_store_b32 v10, v34, s[16:19], 0 offen               // 000000B80F28: E0680000 80440A22
	buffer_store_b32 v11, v35, s[16:19], 0 offen               // 000000B80F30: E0680000 80440B23
	buffer_store_b32 v12, v36, s[16:19], 0 offen               // 000000B80F38: E0680000 80440C24
	buffer_store_b32 v13, v37, s[16:19], 0 offen               // 000000B80F40: E0680000 80440D25
	buffer_store_b32 v14, v38, s[16:19], 0 offen               // 000000B80F48: E0680000 80440E26
	buffer_store_b32 v15, v39, s[16:19], 0 offen               // 000000B80F50: E0680000 80440F27
	s_branch label_0047                                        // 000000B80F58: BFA00218

0000000000b80f5c <GW_Beta_43>:
	s_and_b32 s52, 31, s46                                     // 000000B80F5C: 8B342E9F
	s_add_u32 s53, -1, s50                                     // 000000B80F60: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000B80F64: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000B80F68: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000B80F6C: B5B40000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000B80F70: BFA2009D
	s_and_b32 s52, 31, s47                                     // 000000B80F74: 8B342F9F
	s_add_u32 s53, -1, s51                                     // 000000B80F78: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000B80F7C: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000B80F80: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000B80F84: B5B40000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000B80F88: BFA20097

0000000000b80f8c <GW_B1_E0_38>:
	v_add_lshl_u32 v25, v20, v18, 2                            // 000000B80F8C: D6470019 020A2514
	buffer_load_b32 v26, v25, s[20:23], 0 offen                // 000000B80F94: E0500000 80451A19
	buffer_load_b32 v27, v25, s[20:23], 0 offen offset:32      // 000000B80F9C: E0500020 80451B19
	buffer_load_b32 v28, v25, s[20:23], 0 offen offset:64      // 000000B80FA4: E0500040 80451C19
	buffer_load_b32 v29, v25, s[20:23], 0 offen offset:96      // 000000B80FAC: E0500060 80451D19
	s_mul_i32 s34, s40, 32                                     // 000000B80FB4: 9622A028
	s_add_u32 s20, s20, s34                                    // 000000B80FB8: 80142214
	s_addc_u32 s21, s21, 0                                     // 000000B80FBC: 82158015
	buffer_load_b32 v30, v25, s[20:23], 0 offen                // 000000B80FC0: E0500000 80451E19
	buffer_load_b32 v31, v25, s[20:23], 0 offen offset:32      // 000000B80FC8: E0500020 80451F19
	buffer_load_b32 v32, v25, s[20:23], 0 offen offset:64      // 000000B80FD0: E0500040 80452019
	buffer_load_b32 v33, v25, s[20:23], 0 offen offset:96      // 000000B80FD8: E0500060 80452119
	s_mul_i32 s34, s40, 32                                     // 000000B80FE0: 9622A028
	s_add_u32 s20, s20, s34                                    // 000000B80FE4: 80142214
	s_addc_u32 s21, s21, 0                                     // 000000B80FE8: 82158015
	buffer_load_b32 v34, v25, s[20:23], 0 offen                // 000000B80FEC: E0500000 80452219
	buffer_load_b32 v35, v25, s[20:23], 0 offen offset:32      // 000000B80FF4: E0500020 80452319
	buffer_load_b32 v36, v25, s[20:23], 0 offen offset:64      // 000000B80FFC: E0500040 80452419
	buffer_load_b32 v37, v25, s[20:23], 0 offen offset:96      // 000000B81004: E0500060 80452519
	s_mul_i32 s34, s40, 32                                     // 000000B8100C: 9622A028
	s_add_u32 s20, s20, s34                                    // 000000B81010: 80142214
	s_addc_u32 s21, s21, 0                                     // 000000B81014: 82158015
	buffer_load_b32 v38, v25, s[20:23], 0 offen                // 000000B81018: E0500000 80452619
	buffer_load_b32 v39, v25, s[20:23], 0 offen offset:32      // 000000B81020: E0500020 80452719
	buffer_load_b32 v40, v25, s[20:23], 0 offen offset:64      // 000000B81028: E0500040 80452819
	buffer_load_b32 v41, v25, s[20:23], 0 offen offset:96      // 000000B81030: E0500060 80452919
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000B81038: D6470018 020A2515
	v_mul_f32_e32 v0, s36, v0                                  // 000000B81040: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000B81044: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000B81048: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000B8104C: 10060624
	v_mul_f32_e32 v4, s36, v4                                  // 000000B81050: 10080824
	v_mul_f32_e32 v5, s36, v5                                  // 000000B81054: 100A0A24
	v_mul_f32_e32 v6, s36, v6                                  // 000000B81058: 100C0C24
	v_mul_f32_e32 v7, s36, v7                                  // 000000B8105C: 100E0E24
	v_mul_f32_e32 v8, s36, v8                                  // 000000B81060: 10101024
	v_mul_f32_e32 v9, s36, v9                                  // 000000B81064: 10121224
	v_mul_f32_e32 v10, s36, v10                                // 000000B81068: 10141424
	v_mul_f32_e32 v11, s36, v11                                // 000000B8106C: 10161624
	v_mul_f32_e32 v12, s36, v12                                // 000000B81070: 10181824
	v_mul_f32_e32 v13, s36, v13                                // 000000B81074: 101A1A24
	v_mul_f32_e32 v14, s36, v14                                // 000000B81078: 101C1C24
	v_mul_f32_e32 v15, s36, v15                                // 000000B8107C: 101E1E24
	s_waitcnt vmcnt(15)                                        // 000000B81080: BF893FF7
	v_fmac_f32_e64 v0, v26, s37                                // 000000B81084: D52B0000 00004B1A
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000B8108C: E0680000 80440018
	s_waitcnt vmcnt(14)                                        // 000000B81094: BF893BF7
	v_fmac_f32_e64 v1, v27, s37                                // 000000B81098: D52B0001 00004B1B
	buffer_store_b32 v1, v24, s[16:19], 0 offen offset:32      // 000000B810A0: E0680020 80440118
	s_waitcnt vmcnt(13)                                        // 000000B810A8: BF8937F7
	v_fmac_f32_e64 v2, v28, s37                                // 000000B810AC: D52B0002 00004B1C
	buffer_store_b32 v2, v24, s[16:19], 0 offen offset:64      // 000000B810B4: E0680040 80440218
	s_waitcnt vmcnt(12)                                        // 000000B810BC: BF8933F7
	v_fmac_f32_e64 v3, v29, s37                                // 000000B810C0: D52B0003 00004B1D
	buffer_store_b32 v3, v24, s[16:19], 0 offen offset:96      // 000000B810C8: E0680060 80440318
	s_waitcnt vmcnt(11)                                        // 000000B810D0: BF892FF7
	v_fmac_f32_e64 v4, v30, s37                                // 000000B810D4: D52B0004 00004B1E
	s_mul_i32 s34, s38, 32                                     // 000000B810DC: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000B810E0: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000B810E4: 82118011
	buffer_store_b32 v4, v24, s[16:19], 0 offen                // 000000B810E8: E0680000 80440418
	s_waitcnt vmcnt(10)                                        // 000000B810F0: BF892BF7
	v_fmac_f32_e64 v5, v31, s37                                // 000000B810F4: D52B0005 00004B1F
	buffer_store_b32 v5, v24, s[16:19], 0 offen offset:32      // 000000B810FC: E0680020 80440518
	s_waitcnt vmcnt(9)                                         // 000000B81104: BF8927F7
	v_fmac_f32_e64 v6, v32, s37                                // 000000B81108: D52B0006 00004B20
	buffer_store_b32 v6, v24, s[16:19], 0 offen offset:64      // 000000B81110: E0680040 80440618
	s_waitcnt vmcnt(8)                                         // 000000B81118: BF8923F7
	v_fmac_f32_e64 v7, v33, s37                                // 000000B8111C: D52B0007 00004B21
	buffer_store_b32 v7, v24, s[16:19], 0 offen offset:96      // 000000B81124: E0680060 80440718
	s_waitcnt vmcnt(7)                                         // 000000B8112C: BF891FF7
	v_fmac_f32_e64 v8, v34, s37                                // 000000B81130: D52B0008 00004B22
	s_mul_i32 s34, s38, 32                                     // 000000B81138: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000B8113C: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000B81140: 82118011
	buffer_store_b32 v8, v24, s[16:19], 0 offen                // 000000B81144: E0680000 80440818
	s_waitcnt vmcnt(6)                                         // 000000B8114C: BF891BF7
	v_fmac_f32_e64 v9, v35, s37                                // 000000B81150: D52B0009 00004B23
	buffer_store_b32 v9, v24, s[16:19], 0 offen offset:32      // 000000B81158: E0680020 80440918
	s_waitcnt vmcnt(5)                                         // 000000B81160: BF8917F7
	v_fmac_f32_e64 v10, v36, s37                               // 000000B81164: D52B000A 00004B24
	buffer_store_b32 v10, v24, s[16:19], 0 offen offset:64     // 000000B8116C: E0680040 80440A18
	s_waitcnt vmcnt(4)                                         // 000000B81174: BF8913F7
	v_fmac_f32_e64 v11, v37, s37                               // 000000B81178: D52B000B 00004B25
	buffer_store_b32 v11, v24, s[16:19], 0 offen offset:96     // 000000B81180: E0680060 80440B18
	s_waitcnt vmcnt(3)                                         // 000000B81188: BF890FF7
	v_fmac_f32_e64 v12, v38, s37                               // 000000B8118C: D52B000C 00004B26
	s_mul_i32 s34, s38, 32                                     // 000000B81194: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000B81198: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000B8119C: 82118011
	buffer_store_b32 v12, v24, s[16:19], 0 offen               // 000000B811A0: E0680000 80440C18
	s_waitcnt vmcnt(2)                                         // 000000B811A8: BF890BF7
	v_fmac_f32_e64 v13, v39, s37                               // 000000B811AC: D52B000D 00004B27
	buffer_store_b32 v13, v24, s[16:19], 0 offen offset:32     // 000000B811B4: E0680020 80440D18
	s_waitcnt vmcnt(1)                                         // 000000B811BC: BF8907F7
	v_fmac_f32_e64 v14, v40, s37                               // 000000B811C0: D52B000E 00004B28
	buffer_store_b32 v14, v24, s[16:19], 0 offen offset:64     // 000000B811C8: E0680040 80440E18
	s_waitcnt vmcnt(0)                                         // 000000B811D0: BF8903F7
	v_fmac_f32_e64 v15, v41, s37                               // 000000B811D4: D52B000F 00004B29
	buffer_store_b32 v15, v24, s[16:19], 0 offen offset:96     // 000000B811DC: E0680060 80440F18
	s_branch label_0047                                        // 000000B811E4: BFA00175

0000000000b811e8 <GW_B1_E1_41>:
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000B811E8: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B811F0: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B811F8: 8B363634
	v_add_lshl_u32 v24, v20, v18, 2                            // 000000B811FC: D6470018 020A2514
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000B81204: D5010018 00DA30C1
	buffer_load_b32 v25, v24, s[20:23], 0 offen                // 000000B8120C: E0500000 80451918
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000B81214: D6470018 020A2515
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000B8121C: D5010018 00DA30C1
	v_add_co_u32 v22, vcc_lo, v18, 8                           // 000000B81224: D7006A16 00011112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B8122C: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B81234: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B8123C: 8B363634
	v_add_lshl_u32 v26, v20, v22, 2                            // 000000B81240: D647001A 020A2D14
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000B81248: D501001A 00DA34C1
	buffer_load_b32 v27, v26, s[20:23], 0 offen                // 000000B81250: E0500000 80451B1A
	v_add_lshl_u32 v26, v21, v22, 2                            // 000000B81258: D647001A 020A2D15
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000B81260: D501001A 00DA34C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000B81268: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B81270: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B81278: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B81280: 8B363634
	v_add_lshl_u32 v28, v20, v22, 2                            // 000000B81284: D647001C 020A2D14
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000B8128C: D501001C 00DA38C1
	buffer_load_b32 v29, v28, s[20:23], 0 offen                // 000000B81294: E0500000 80451D1C
	v_add_lshl_u32 v28, v21, v22, 2                            // 000000B8129C: D647001C 020A2D15
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000B812A4: D501001C 00DA38C1
	v_add_co_u32 v22, vcc_lo, v18, 24                          // 000000B812AC: D7006A16 00013112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B812B4: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B812BC: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B812C4: 8B363634
	v_add_lshl_u32 v30, v20, v22, 2                            // 000000B812C8: D647001E 020A2D14
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000B812D0: D501001E 00DA3CC1
	buffer_load_b32 v31, v30, s[20:23], 0 offen                // 000000B812D8: E0500000 80451F1E
	v_add_lshl_u32 v30, v21, v22, 2                            // 000000B812E0: D647001E 020A2D15
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000B812E8: D501001E 00DA3CC1
	v_add_co_u32 v19, vcc_lo, v19, 8                           // 000000B812F0: D7006A13 00011113
	s_mul_i32 s52, s40, 8                                      // 000000B812F8: 96348828
	v_add_nc_u32_e64 v20, v20, s52                             // 000000B812FC: D5250014 00006914
	s_mul_i32 s52, s38, 8                                      // 000000B81304: 96348826
	v_add_nc_u32_e64 v21, v21, s52                             // 000000B81308: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000B81310: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B81318: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B81320: 8B363634
	v_add_lshl_u32 v32, v20, v18, 2                            // 000000B81324: D6470020 020A2514
	v_cndmask_b32_e64 v32, -1, v32, s54                        // 000000B8132C: D5010020 00DA40C1
	buffer_load_b32 v33, v32, s[20:23], 0 offen                // 000000B81334: E0500000 80452120
	v_add_lshl_u32 v32, v21, v18, 2                            // 000000B8133C: D6470020 020A2515
	v_cndmask_b32_e64 v32, -1, v32, s54                        // 000000B81344: D5010020 00DA40C1
	v_add_co_u32 v22, vcc_lo, v18, 8                           // 000000B8134C: D7006A16 00011112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B81354: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B8135C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B81364: 8B363634
	v_add_lshl_u32 v34, v20, v22, 2                            // 000000B81368: D6470022 020A2D14
	v_cndmask_b32_e64 v34, -1, v34, s54                        // 000000B81370: D5010022 00DA44C1
	buffer_load_b32 v35, v34, s[20:23], 0 offen                // 000000B81378: E0500000 80452322
	v_add_lshl_u32 v34, v21, v22, 2                            // 000000B81380: D6470022 020A2D15
	v_cndmask_b32_e64 v34, -1, v34, s54                        // 000000B81388: D5010022 00DA44C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000B81390: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B81398: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B813A0: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B813A8: 8B363634
	v_add_lshl_u32 v36, v20, v22, 2                            // 000000B813AC: D6470024 020A2D14
	v_cndmask_b32_e64 v36, -1, v36, s54                        // 000000B813B4: D5010024 00DA48C1
	buffer_load_b32 v37, v36, s[20:23], 0 offen                // 000000B813BC: E0500000 80452524
	v_add_lshl_u32 v36, v21, v22, 2                            // 000000B813C4: D6470024 020A2D15
	v_cndmask_b32_e64 v36, -1, v36, s54                        // 000000B813CC: D5010024 00DA48C1
	v_add_co_u32 v22, vcc_lo, v18, 24                          // 000000B813D4: D7006A16 00013112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B813DC: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B813E4: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B813EC: 8B363634
	v_add_lshl_u32 v38, v20, v22, 2                            // 000000B813F0: D6470026 020A2D14
	v_cndmask_b32_e64 v38, -1, v38, s54                        // 000000B813F8: D5010026 00DA4CC1
	buffer_load_b32 v39, v38, s[20:23], 0 offen                // 000000B81400: E0500000 80452726
	v_add_lshl_u32 v38, v21, v22, 2                            // 000000B81408: D6470026 020A2D15
	v_cndmask_b32_e64 v38, -1, v38, s54                        // 000000B81410: D5010026 00DA4CC1
	v_add_co_u32 v19, vcc_lo, v19, 8                           // 000000B81418: D7006A13 00011113
	s_mul_i32 s52, s40, 8                                      // 000000B81420: 96348828
	v_add_nc_u32_e64 v20, v20, s52                             // 000000B81424: D5250014 00006914
	s_mul_i32 s52, s38, 8                                      // 000000B8142C: 96348826
	v_add_nc_u32_e64 v21, v21, s52                             // 000000B81430: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000B81438: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B81440: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B81448: 8B363634
	v_add_lshl_u32 v40, v20, v18, 2                            // 000000B8144C: D6470028 020A2514
	v_cndmask_b32_e64 v40, -1, v40, s54                        // 000000B81454: D5010028 00DA50C1
	buffer_load_b32 v41, v40, s[20:23], 0 offen                // 000000B8145C: E0500000 80452928
	v_add_lshl_u32 v40, v21, v18, 2                            // 000000B81464: D6470028 020A2515
	v_cndmask_b32_e64 v40, -1, v40, s54                        // 000000B8146C: D5010028 00DA50C1
	v_add_co_u32 v22, vcc_lo, v18, 8                           // 000000B81474: D7006A16 00011112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B8147C: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B81484: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B8148C: 8B363634
	v_add_lshl_u32 v42, v20, v22, 2                            // 000000B81490: D647002A 020A2D14
	v_cndmask_b32_e64 v42, -1, v42, s54                        // 000000B81498: D501002A 00DA54C1
	buffer_load_b32 v43, v42, s[20:23], 0 offen                // 000000B814A0: E0500000 80452B2A
	v_add_lshl_u32 v42, v21, v22, 2                            // 000000B814A8: D647002A 020A2D15
	v_cndmask_b32_e64 v42, -1, v42, s54                        // 000000B814B0: D501002A 00DA54C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000B814B8: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B814C0: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B814C8: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B814D0: 8B363634
	v_add_lshl_u32 v44, v20, v22, 2                            // 000000B814D4: D647002C 020A2D14
	v_cndmask_b32_e64 v44, -1, v44, s54                        // 000000B814DC: D501002C 00DA58C1
	buffer_load_b32 v45, v44, s[20:23], 0 offen                // 000000B814E4: E0500000 80452D2C
	v_add_lshl_u32 v44, v21, v22, 2                            // 000000B814EC: D647002C 020A2D15
	v_cndmask_b32_e64 v44, -1, v44, s54                        // 000000B814F4: D501002C 00DA58C1
	v_add_co_u32 v22, vcc_lo, v18, 24                          // 000000B814FC: D7006A16 00013112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B81504: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B8150C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B81514: 8B363634
	v_add_lshl_u32 v46, v20, v22, 2                            // 000000B81518: D647002E 020A2D14
	v_cndmask_b32_e64 v46, -1, v46, s54                        // 000000B81520: D501002E 00DA5CC1
	buffer_load_b32 v47, v46, s[20:23], 0 offen                // 000000B81528: E0500000 80452F2E
	v_add_lshl_u32 v46, v21, v22, 2                            // 000000B81530: D647002E 020A2D15
	v_cndmask_b32_e64 v46, -1, v46, s54                        // 000000B81538: D501002E 00DA5CC1
	v_mul_f32_e32 v0, s36, v0                                  // 000000B81540: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000B81544: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000B81548: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000B8154C: 10060624
	v_mul_f32_e32 v4, s36, v4                                  // 000000B81550: 10080824
	v_mul_f32_e32 v5, s36, v5                                  // 000000B81554: 100A0A24
	v_mul_f32_e32 v6, s36, v6                                  // 000000B81558: 100C0C24
	v_mul_f32_e32 v7, s36, v7                                  // 000000B8155C: 100E0E24
	v_mul_f32_e32 v8, s36, v8                                  // 000000B81560: 10101024
	v_mul_f32_e32 v9, s36, v9                                  // 000000B81564: 10121224
	v_mul_f32_e32 v10, s36, v10                                // 000000B81568: 10141424
	v_mul_f32_e32 v11, s36, v11                                // 000000B8156C: 10161624
	s_waitcnt vmcnt(0)                                         // 000000B81570: BF8903F7
	s_waitcnt_vscnt null, 0x0                                  // 000000B81574: BC7C0000
	v_fmac_f32_e64 v0, v25, s37                                // 000000B81578: D52B0000 00004B19
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000B81580: E0680000 80440018
	v_fmac_f32_e64 v1, v27, s37                                // 000000B81588: D52B0001 00004B1B
	buffer_store_b32 v1, v26, s[16:19], 0 offen                // 000000B81590: E0680000 8044011A
	v_fmac_f32_e64 v2, v29, s37                                // 000000B81598: D52B0002 00004B1D
	buffer_store_b32 v2, v28, s[16:19], 0 offen                // 000000B815A0: E0680000 8044021C
	v_fmac_f32_e64 v3, v31, s37                                // 000000B815A8: D52B0003 00004B1F
	buffer_store_b32 v3, v30, s[16:19], 0 offen                // 000000B815B0: E0680000 8044031E
	v_fmac_f32_e64 v4, v33, s37                                // 000000B815B8: D52B0004 00004B21
	buffer_store_b32 v4, v32, s[16:19], 0 offen                // 000000B815C0: E0680000 80440420
	v_fmac_f32_e64 v5, v35, s37                                // 000000B815C8: D52B0005 00004B23
	buffer_store_b32 v5, v34, s[16:19], 0 offen                // 000000B815D0: E0680000 80440522
	v_fmac_f32_e64 v6, v37, s37                                // 000000B815D8: D52B0006 00004B25
	buffer_store_b32 v6, v36, s[16:19], 0 offen                // 000000B815E0: E0680000 80440624
	v_fmac_f32_e64 v7, v39, s37                                // 000000B815E8: D52B0007 00004B27
	buffer_store_b32 v7, v38, s[16:19], 0 offen                // 000000B815F0: E0680000 80440726
	v_fmac_f32_e64 v8, v41, s37                                // 000000B815F8: D52B0008 00004B29
	buffer_store_b32 v8, v40, s[16:19], 0 offen                // 000000B81600: E0680000 80440828
	v_fmac_f32_e64 v9, v43, s37                                // 000000B81608: D52B0009 00004B2B
	buffer_store_b32 v9, v42, s[16:19], 0 offen                // 000000B81610: E0680000 8044092A
	v_fmac_f32_e64 v10, v45, s37                               // 000000B81618: D52B000A 00004B2D
	buffer_store_b32 v10, v44, s[16:19], 0 offen               // 000000B81620: E0680000 80440A2C
	v_fmac_f32_e64 v11, v47, s37                               // 000000B81628: D52B000B 00004B2F
	buffer_store_b32 v11, v46, s[16:19], 0 offen               // 000000B81630: E0680000 80440B2E
	v_add_co_u32 v19, vcc_lo, v19, 8                           // 000000B81638: D7006A13 00011113
	s_mul_i32 s52, s40, 8                                      // 000000B81640: 96348828
	v_add_nc_u32_e64 v20, v20, s52                             // 000000B81644: D5250014 00006914
	s_mul_i32 s52, s38, 8                                      // 000000B8164C: 96348826
	v_add_nc_u32_e64 v21, v21, s52                             // 000000B81650: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000B81658: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B81660: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B81668: 8B363634
	v_add_lshl_u32 v24, v20, v18, 2                            // 000000B8166C: D6470018 020A2514
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000B81674: D5010018 00DA30C1
	buffer_load_b32 v25, v24, s[20:23], 0 offen                // 000000B8167C: E0500000 80451918
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000B81684: D6470018 020A2515
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000B8168C: D5010018 00DA30C1
	v_add_co_u32 v22, vcc_lo, v18, 8                           // 000000B81694: D7006A16 00011112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B8169C: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B816A4: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B816AC: 8B363634
	v_add_lshl_u32 v26, v20, v22, 2                            // 000000B816B0: D647001A 020A2D14
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000B816B8: D501001A 00DA34C1
	buffer_load_b32 v27, v26, s[20:23], 0 offen                // 000000B816C0: E0500000 80451B1A
	v_add_lshl_u32 v26, v21, v22, 2                            // 000000B816C8: D647001A 020A2D15
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000B816D0: D501001A 00DA34C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000B816D8: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B816E0: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B816E8: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B816F0: 8B363634
	v_add_lshl_u32 v28, v20, v22, 2                            // 000000B816F4: D647001C 020A2D14
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000B816FC: D501001C 00DA38C1
	buffer_load_b32 v29, v28, s[20:23], 0 offen                // 000000B81704: E0500000 80451D1C
	v_add_lshl_u32 v28, v21, v22, 2                            // 000000B8170C: D647001C 020A2D15
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000B81714: D501001C 00DA38C1
	v_add_co_u32 v22, vcc_lo, v18, 24                          // 000000B8171C: D7006A16 00013112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000B81724: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000B8172C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000B81734: 8B363634
	v_add_lshl_u32 v30, v20, v22, 2                            // 000000B81738: D647001E 020A2D14
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000B81740: D501001E 00DA3CC1
	buffer_load_b32 v31, v30, s[20:23], 0 offen                // 000000B81748: E0500000 80451F1E
	v_add_lshl_u32 v30, v21, v22, 2                            // 000000B81750: D647001E 020A2D15
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000B81758: D501001E 00DA3CC1
	v_mul_f32_e32 v12, s36, v12                                // 000000B81760: 10181824
	v_mul_f32_e32 v13, s36, v13                                // 000000B81764: 101A1A24
	v_mul_f32_e32 v14, s36, v14                                // 000000B81768: 101C1C24
	v_mul_f32_e32 v15, s36, v15                                // 000000B8176C: 101E1E24
	s_waitcnt vmcnt(0)                                         // 000000B81770: BF8903F7
	s_waitcnt_vscnt null, 0x0                                  // 000000B81774: BC7C0000
	v_fmac_f32_e64 v12, v25, s37                               // 000000B81778: D52B000C 00004B19
	buffer_store_b32 v12, v24, s[16:19], 0 offen               // 000000B81780: E0680000 80440C18
	v_fmac_f32_e64 v13, v27, s37                               // 000000B81788: D52B000D 00004B1B
	buffer_store_b32 v13, v26, s[16:19], 0 offen               // 000000B81790: E0680000 80440D1A
	v_fmac_f32_e64 v14, v29, s37                               // 000000B81798: D52B000E 00004B1D
	buffer_store_b32 v14, v28, s[16:19], 0 offen               // 000000B817A0: E0680000 80440E1C
	v_fmac_f32_e64 v15, v31, s37                               // 000000B817A8: D52B000F 00004B1F
	buffer_store_b32 v15, v30, s[16:19], 0 offen               // 000000B817B0: E0680000 80440F1E
	s_branch label_0047                                        // 000000B817B8: BFA00000

0000000000b817bc <label_GW_End_42>:
	s_endpgm                                                   // 000000B817BC: BFB00000
		...
