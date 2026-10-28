
/root/batchmatmulmaxsum/implement/hip/results/s0_20261028/code_objects/_code_object0002.o:	file format elf64-amdgpu

Disassembly of section .text:

0000000000a17a00 <Cijk_Ailk_Bljk_SB_MT32x32x8_SN_1LDSB0_APM1_ABV0_ACED0_AF0EM1_AF1EM1_AMAS0_ASE_ASGT_ASLT_ASM_ASAE01_ASCE01_ASEM1_AAC0_BL1_BS1_CLR0_DTLA0_DTLB0_DTVA0_DTVB0_DVO0_ETSP_EPS1_ELFLR0_EMLL0_FSSC10_FL0_GLVWA1_GLVWB1_GRCGA1_GRCGB1_GRPM1_GRVW1_GSU1_GSUASB_GLS0_ISA1100_IU1_K1_KLA_LBSPPA0_LBSPPB0_LPA0_LPB0_LDL1_LRVW1_LWPMn1_LDW0_FMA_MIAV0_MDA2_MO40_MMFGLC_MKFGSU256_NTA0_NTB0_NTC0_NTD0_NEPBS0_NLCA1_NLCB1_ONLL1_OPLV0_PK0_PAP0_PGR1_PLR1_PKA0_SIA1_SLW1_SS0_SU0_SUM0_SUS0_SCIUI1_SPO0_SRVW0_SSO0_SVW4_SNLL0_TSGRA0_TSGRB0_TT4_4_TLDS0_UMLDSA0_UMLDSB0_U64SL1_USFGROn1_VAW1_VSn1_VW1_VWB1_VFLRP0_WSGRA0_WSGRB0_WS32_WG8_8_1_WGM1_preloaded>:
	s_mov_b32 vcc_hi, 0                                        // 000000A17A00: BEEB0080
	s_load_b512 s[24:39], s[0:1], null                         // 000000A17A04: F4100600 F8000000
	s_load_b256 s[40:47], s[0:1], 0x40                         // 000000A17A0C: F40C0A00 F8000040
	s_load_b128 s[48:51], s[0:1], 0x60                         // 000000A17A14: F4080C00 F8000060
	s_mov_b32 m0, 0x1000                                       // 000000A17A1C: BEFD00FF 00001000
	v_mov_b32_e32 v50, v0                                      // 000000A17A24: 7E640300
	v_lshrrev_b32_e32 v0, 3, v50                               // 000000A17A28: 32006483
	v_and_b32_e32 v1, 7, v50                                   // 000000A17A2C: 36026487
	v_lshrrev_b32_e32 v2, 3, v0                                // 000000A17A30: 32040083
	v_and_b32_e32 v3, 7, v0                                    // 000000A17A34: 36060087
	v_lshrrev_b32_e32 v0, 6, v50                               // 000000A17A38: 32006486
	v_lshlrev_b32_e32 v0, 5, v0                                // 000000A17A3C: 30000085
	v_add_lshl_u32 v48, v0, v1, 2                              // 000000A17A40: D6470030 020A0300
	v_lshrrev_b32_e32 v0, 6, v50                               // 000000A17A48: 32006486
	v_lshlrev_b32_e32 v0, 5, v0                                // 000000A17A4C: 30000085
	v_add_lshl_u32 v49, v0, v3, 2                              // 000000A17A50: D6470031 020A0700
	v_add_co_u32 v49, vcc_lo, 0x400, v49                       // 000000A17A58: D7006A31 000262FF 00000400
	v_lshrrev_b32_e32 v1, 5, v50                               // 000000A17A64: 32026485
	v_and_b32_e32 v0, 31, v50                                  // 000000A17A68: 3600649F
	v_lshrrev_b32_e32 v2, 3, v50                               // 000000A17A6C: 32046483
	v_and_b32_e32 v3, 7, v50                                   // 000000A17A70: 36066487
	v_mul_u32_u24_e32 v35, 32, v1                              // 000000A17A74: 164602A0
	v_add_lshl_u32 v35, v0, v35, 2                             // 000000A17A78: D6470023 020A4700
	v_mul_u32_u24_e32 v36, 32, v3                              // 000000A17A80: 164806A0
	v_add_lshl_u32 v36, v2, v36, 2                             // 000000A17A84: D6470024 020A4902
	v_add_co_u32 v36, vcc_lo, 0x400, v36                       // 000000A17A8C: D7006A24 000248FF 00000400
	s_waitcnt lgkmcnt(0)                                       // 000000A17A98: BF89FC07
	s_mov_b64 s[20:21], s[30:31]                               // 000000A17A9C: BE94011E
	s_mov_b64 s[16:17], s[28:29]                               // 000000A17AA0: BE90011C
	s_sub_u32 s8, s32, 4                                       // 000000A17AA4: 80888420
	s_subb_u32 s9, s33, 0                                      // 000000A17AA8: 82898021
	s_sub_u32 s12, s34, 4                                      // 000000A17AAC: 808C8422
	s_subb_u32 s13, s35, 0                                     // 000000A17AB0: 828D8023
	v_cmp_eq_f32_e64 vcc_lo, s36, 0                            // 000000A17AB4: D412006A 00010024
	s_cbranch_vccz label_AlphaNonZero                          // 000000A17ABC: BFA30001
	s_mov_b32 s49, 0                                           // 000000A17AC0: BEB10080

0000000000a17ac4 <label_AlphaNonZero>:
	v_mul_lo_u32 v4, s42, v1                                   // 000000A17AC4: D72C0004 0002022A
	v_add_co_u32 v37, vcc_lo, v0, v4                           // 000000A17ACC: D7006A25 00020900
	v_add_nc_u32_e32 v37, 1, v37                               // 000000A17AD4: 4A4A4A81
	v_lshlrev_b32_e32 v37, 2, v37                              // 000000A17AD8: 304A4A82
	s_mul_i32 s31, s42, 2                                      // 000000A17ADC: 961F822A
	s_lshl_b32 s31, s31, 2                                     // 000000A17AE0: 841F821F
	s_mul_i32 s32, s42, 4                                      // 000000A17AE4: 9620842A
	s_lshl_b32 s32, s32, 2                                     // 000000A17AE8: 84208220
	s_mul_i32 s33, s42, 6                                      // 000000A17AEC: 9621862A
	s_lshl_b32 s33, s33, 2                                     // 000000A17AF0: 84218221
	v_mul_lo_u32 v4, s44, v2                                   // 000000A17AF4: D72C0004 0002042C
	v_add_co_u32 v38, vcc_lo, v3, v4                           // 000000A17AFC: D7006A26 00020903
	v_add_nc_u32_e32 v38, 1, v38                               // 000000A17B04: 4A4C4C81
	v_lshlrev_b32_e32 v38, 2, v38                              // 000000A17B08: 304C4C82
	s_mul_i32 s54, s44, 8                                      // 000000A17B0C: 9636882C
	s_lshl_b32 s54, s54, 2                                     // 000000A17B10: 84368236
	s_mul_i32 s55, s44, 16                                     // 000000A17B14: 9637902C
	s_lshl_b32 s55, s55, 2                                     // 000000A17B18: 84378237
	s_mul_i32 s56, s44, 24                                     // 000000A17B1C: 9638982C
	s_lshl_b32 s56, s56, 2                                     // 000000A17B20: 84388238
	s_mul_hi_u32 s59, s2, 32                                   // 000000A17B24: 96BBA002
	s_mul_i32 s58, s2, 32                                      // 000000A17B28: 963AA002
	s_sub_u32 s0, s24, s58                                     // 000000A17B2C: 80803A18
	s_subb_u32 s1, s25, s59                                    // 000000A17B30: 82813B19
	s_lshl_b64 s[0:1], s[0:1], 2                               // 000000A17B34: 84808200
	s_add_u32 s0, s0, 4                                        // 000000A17B38: 80008400
	s_addc_u32 s1, s1, 0                                       // 000000A17B3C: 82018001
	s_cmp_eq_u32 s1, 0                                         // 000000A17B40: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000A17B44: 980AC100
	s_mul_hi_u32 s35, s43, s4                                  // 000000A17B48: 96A3042B
	s_mul_i32 s34, s43, s4                                     // 000000A17B4C: 9622042B
	s_add_u32 s58, s58, s34                                    // 000000A17B50: 803A223A
	s_addc_u32 s59, s59, s35                                   // 000000A17B54: 823B233B
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000A17B58: 84BA823A
	s_add_u32 s8, s8, s58                                      // 000000A17B5C: 80083A08
	s_addc_u32 s9, s9, s59                                     // 000000A17B60: 82093B09
	s_mov_b32 s11, 0x31004000                                  // 000000A17B64: BE8B00FF 31004000
	s_mul_hi_u32 s59, s3, 32                                   // 000000A17B6C: 96BBA003
	s_mul_i32 s58, s3, 32                                      // 000000A17B70: 963AA003
	s_mul_hi_u32 s59, s58, s44                                 // 000000A17B74: 96BB2C3A
	s_mul_i32 s58, s58, s44                                    // 000000A17B78: 963A2C3A
	s_sub_u32 s28, s26, s58                                    // 000000A17B7C: 809C3A1A
	s_subb_u32 s29, s27, s59                                   // 000000A17B80: 829D3B1B
	s_lshl_b64 s[28:29], s[28:29], 2                           // 000000A17B84: 849C821C
	s_add_u32 s28, s28, 4                                      // 000000A17B88: 801C841C
	s_addc_u32 s29, s29, 0                                     // 000000A17B8C: 821D801D
	s_cmp_eq_u32 s29, 0                                        // 000000A17B90: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000A17B94: 980EC11C
	s_mul_hi_u32 s35, s45, s4                                  // 000000A17B98: 96A3042D
	s_mul_i32 s34, s45, s4                                     // 000000A17B9C: 9622042D
	s_add_u32 s58, s58, s34                                    // 000000A17BA0: 803A223A
	s_addc_u32 s59, s59, s35                                   // 000000A17BA4: 823B233B
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000A17BA8: 84BA823A
	s_add_u32 s12, s12, s58                                    // 000000A17BAC: 800C3A0C
	s_addc_u32 s13, s13, s59                                   // 000000A17BB0: 820D3B0D
	s_mov_b32 s15, 0x31004000                                  // 000000A17BB4: BE8F00FF 31004000
	s_mul_i32 s7, 32, s42                                      // 000000A17BBC: 96072AA0
	s_mov_b32 s30, 32                                          // 000000A17BC0: BE9E00A0
	s_lshr_b32 s5, s49, 3                                      // 000000A17BC4: 85058331
	s_mov_b32 s6, s5                                           // 000000A17BC8: BE860005
	s_cmp_eq_u32 s5, 0                                         // 000000A17BCC: BF068005
	s_cbranch_scc1 ShadowInitStart_10                          // 000000A17BD0: BFA2001C
	buffer_load_b32 v40, v37, s[8:11], 0 offen                 // 000000A17BD4: E0500000 80422825
	buffer_load_b32 v41, v37, s[8:11], s31 offen               // 000000A17BDC: E0500000 1F422925
	buffer_load_b32 v42, v37, s[8:11], s32 offen               // 000000A17BE4: E0500000 20422A25
	buffer_load_b32 v43, v37, s[8:11], s33 offen               // 000000A17BEC: E0500000 21422B25
	buffer_load_b32 v44, v38, s[12:15], 0 offen                // 000000A17BF4: E0500000 80432C26
	buffer_load_b32 v45, v38, s[12:15], s54 offen              // 000000A17BFC: E0500000 36432D26
	buffer_load_b32 v46, v38, s[12:15], s55 offen              // 000000A17C04: E0500000 37432E26
	buffer_load_b32 v47, v38, s[12:15], s56 offen              // 000000A17C0C: E0500000 38432F26
	s_add_u32 s8, s8, s7                                       // 000000A17C14: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000A17C18: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000A17C1C: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000A17C20: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000A17C24: BF068001
	s_cmov_b32 s10, s0                                         // 000000A17C28: BE8A0200
	s_add_u32 s12, s12, s30                                    // 000000A17C2C: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000A17C30: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000A17C34: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000A17C38: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000A17C3C: BF06801D
	s_cmov_b32 s14, s28                                        // 000000A17C40: BE8E021C

0000000000a17c44 <ShadowInitStart_10>:
	s_mov_b32 s18, 0xfffff000                                  // 000000A17C44: BE9200FF FFFFF000
	s_mov_b32 s19, 0x31004000                                  // 000000A17C4C: BE9300FF 31004000
	s_mov_b32 s22, 0xfffff000                                  // 000000A17C54: BE9600FF FFFFF000
	s_mov_b32 s23, 0x31004000                                  // 000000A17C5C: BE9700FF 31004000
	s_mul_i32 s60, 32, s3                                      // 000000A17C64: 963C03A0
	s_mul_hi_u32 s59, s60, s40                                 // 000000A17C68: 96BB283C
	s_mul_i32 s58, s60, s40                                    // 000000A17C6C: 963A283C
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000A17C70: 84BA823A
	s_add_u32 s20, s20, s58                                    // 000000A17C74: 80143A14
	s_addc_u32 s21, s21, s59                                   // 000000A17C78: 82153B15
	s_mul_hi_u32 s59, s60, s38                                 // 000000A17C7C: 96BB263C
	s_mul_i32 s58, s60, s38                                    // 000000A17C80: 963A263C
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000A17C84: 84BA823A
	s_add_u32 s16, s16, s58                                    // 000000A17C88: 80103A10
	s_addc_u32 s17, s17, s59                                   // 000000A17C8C: 82113B11
	s_mul_hi_u32 s59, s4, s41                                  // 000000A17C90: 96BB2904
	s_mul_i32 s58, s4, s41                                     // 000000A17C94: 963A2904
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000A17C98: 84BA823A
	s_add_u32 s20, s20, s58                                    // 000000A17C9C: 80143A14
	s_addc_u32 s21, s21, s59                                   // 000000A17CA0: 82153B15
	s_mul_hi_u32 s59, s4, s39                                  // 000000A17CA4: 96BB2704
	s_mul_i32 s58, s4, s39                                     // 000000A17CA8: 963A2704
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000A17CAC: 84BA823A
	s_add_u32 s16, s16, s58                                    // 000000A17CB0: 80103A10
	s_addc_u32 s17, s17, s59                                   // 000000A17CB4: 82113B11
	v_mov_b32_e32 v0, 0                                        // 000000A17CB8: 7E000280
	v_mov_b32_e32 v1, 0                                        // 000000A17CBC: 7E020280
	v_mov_b32_e32 v2, 0                                        // 000000A17CC0: 7E040280
	v_mov_b32_e32 v3, 0                                        // 000000A17CC4: 7E060280
	v_mov_b32_e32 v4, 0                                        // 000000A17CC8: 7E080280
	v_mov_b32_e32 v5, 0                                        // 000000A17CCC: 7E0A0280
	v_mov_b32_e32 v6, 0                                        // 000000A17CD0: 7E0C0280
	v_mov_b32_e32 v7, 0                                        // 000000A17CD4: 7E0E0280
	v_mov_b32_e32 v8, 0                                        // 000000A17CD8: 7E100280
	v_mov_b32_e32 v9, 0                                        // 000000A17CDC: 7E120280
	v_mov_b32_e32 v10, 0                                       // 000000A17CE0: 7E140280
	v_mov_b32_e32 v11, 0                                       // 000000A17CE4: 7E160280
	v_mov_b32_e32 v12, 0                                       // 000000A17CE8: 7E180280
	v_mov_b32_e32 v13, 0                                       // 000000A17CEC: 7E1A0280
	v_mov_b32_e32 v14, 0                                       // 000000A17CF0: 7E1C0280
	v_mov_b32_e32 v15, 0                                       // 000000A17CF4: 7E1E0280
	s_cmp_eq_u32 s5, 0                                         // 000000A17CF8: BF068005
	s_cbranch_scc0 label_NoBranch_11                           // 000000A17CFC: BFA10006
	s_getpc_b64 s[58:59]                                       // 000000A17D00: BEBA4700
	s_add_i32 s60, 0x14bc, 4                                   // 000000A17D04: 813C84FF 000014BC
	s_add_u32 s58, s58, s60                                    // 000000A17D0C: 803A3C3A
	s_addc_u32 s59, s59, 0                                     // 000000A17D10: 823B803B
	s_setpc_b64 s[58:59]                                       // 000000A17D14: BE80483A

0000000000a17d18 <label_NoBranch_11>:
	s_waitcnt vmcnt(0)                                         // 000000A17D18: BF8903F7
	ds_store_b32 v35, v40                                      // 000000A17D1C: D8340000 00002823
	ds_store_b32 v35, v41 offset:256                           // 000000A17D24: D8340100 00002923
	ds_store_b32 v35, v42 offset:512                           // 000000A17D2C: D8340200 00002A23
	ds_store_b32 v35, v43 offset:768                           // 000000A17D34: D8340300 00002B23
	ds_store_b32 v36, v44                                      // 000000A17D3C: D8340000 00002C24
	ds_store_b32 v36, v45 offset:32                            // 000000A17D44: D8340020 00002D24
	ds_store_b32 v36, v46 offset:64                            // 000000A17D4C: D8340040 00002E24
	ds_store_b32 v36, v47 offset:96                            // 000000A17D54: D8340060 00002F24
	s_waitcnt lgkmcnt(0)                                       // 000000A17D5C: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000A17D60: BDFC0000
	s_barrier                                                  // 000000A17D64: BFBD0000
	ds_load_b32 v18, v48                                       // 000000A17D68: D8D80000 12000030
	ds_load_b32 v19, v48 offset:32                             // 000000A17D70: D8D80020 13000030
	ds_load_b32 v20, v48 offset:64                             // 000000A17D78: D8D80040 14000030
	ds_load_b32 v21, v48 offset:96                             // 000000A17D80: D8D80060 15000030
	ds_load_b32 v27, v49                                       // 000000A17D88: D8D80000 1B000031
	ds_load_b32 v28, v49 offset:32                             // 000000A17D90: D8D80020 1C000031
	ds_load_b32 v29, v49 offset:64                             // 000000A17D98: D8D80040 1D000031
	ds_load_b32 v30, v49 offset:96                             // 000000A17DA0: D8D80060 1E000031

0000000000a17da8 <openLoopL_12>:
	s_cmp_le_u32 s5, 1                                         // 000000A17DA8: BF0B8105
	s_cbranch_scc1 LoopEndL_2                                  // 000000A17DAC: BFA202A9

0000000000a17db0 <label_0013>:
	ds_load_b32 v22, v48 offset:128                            // 000000A17DB0: D8D80080 16000030
	ds_load_b32 v23, v48 offset:160                            // 000000A17DB8: D8D800A0 17000030
	ds_load_b32 v24, v48 offset:192                            // 000000A17DC0: D8D800C0 18000030
	ds_load_b32 v25, v48 offset:224                            // 000000A17DC8: D8D800E0 19000030
	buffer_load_b32 v40, v37, s[8:11], 0 offen                 // 000000A17DD0: E0500000 80422825
	buffer_load_b32 v41, v37, s[8:11], s31 offen               // 000000A17DD8: E0500000 1F422925
	buffer_load_b32 v42, v37, s[8:11], s32 offen               // 000000A17DE0: E0500000 20422A25
	buffer_load_b32 v43, v37, s[8:11], s33 offen               // 000000A17DE8: E0500000 21422B25
	buffer_load_b32 v44, v38, s[12:15], 0 offen                // 000000A17DF0: E0500000 80432C26
	buffer_load_b32 v45, v38, s[12:15], s54 offen              // 000000A17DF8: E0500000 36432D26
	buffer_load_b32 v46, v38, s[12:15], s55 offen              // 000000A17E00: E0500000 37432E26
	ds_load_b32 v31, v49 offset:128                            // 000000A17E08: D8D80080 1F000031
	ds_load_b32 v32, v49 offset:160                            // 000000A17E10: D8D800A0 20000031
	ds_load_b32 v33, v49 offset:192                            // 000000A17E18: D8D800C0 21000031
	ds_load_b32 v34, v49 offset:224                            // 000000A17E20: D8D800E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000A17E28: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000A17E2C: 56003712
	s_setprio 1                                                // 000000A17E30: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000A17E34: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000A17E38: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000A17E3C: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000A17E40: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000A17E44: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000A17E48: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000A17E4C: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000A17E50: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000A17E54: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000A17E58: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000A17E5C: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000A17E60: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000A17E64: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000A17E68: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000A17E6C: 561E3D15
	s_setprio 0                                                // 000000A17E70: BFB50000
	ds_load_b32 v18, v48 offset:256                            // 000000A17E74: D8D80100 12000030
	ds_load_b32 v19, v48 offset:288                            // 000000A17E7C: D8D80120 13000030
	ds_load_b32 v20, v48 offset:320                            // 000000A17E84: D8D80140 14000030
	ds_load_b32 v21, v48 offset:352                            // 000000A17E8C: D8D80160 15000030
	buffer_load_b32 v47, v38, s[12:15], s56 offen              // 000000A17E94: E0500000 38432F26
	ds_load_b32 v27, v49 offset:256                            // 000000A17E9C: D8D80100 1B000031
	ds_load_b32 v28, v49 offset:288                            // 000000A17EA4: D8D80120 1C000031
	ds_load_b32 v29, v49 offset:320                            // 000000A17EAC: D8D80140 1D000031
	ds_load_b32 v30, v49 offset:352                            // 000000A17EB4: D8D80160 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000A17EBC: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000A17EC0: 56003F16
	s_setprio 1                                                // 000000A17EC4: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000A17EC8: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000A17ECC: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000A17ED0: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000A17ED4: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000A17ED8: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000A17EDC: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000A17EE0: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000A17EE4: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000A17EE8: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000A17EEC: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000A17EF0: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000A17EF4: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000A17EF8: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000A17EFC: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000A17F00: 561E4519
	s_setprio 0                                                // 000000A17F04: BFB50000
	ds_load_b32 v22, v48 offset:384                            // 000000A17F08: D8D80180 16000030
	ds_load_b32 v23, v48 offset:416                            // 000000A17F10: D8D801A0 17000030
	ds_load_b32 v24, v48 offset:448                            // 000000A17F18: D8D801C0 18000030
	ds_load_b32 v25, v48 offset:480                            // 000000A17F20: D8D801E0 19000030
	s_add_u32 s8, s8, s7                                       // 000000A17F28: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000A17F2C: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000A17F30: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000A17F34: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000A17F38: BF068001
	s_cmov_b32 s10, s0                                         // 000000A17F3C: BE8A0200
	ds_load_b32 v31, v49 offset:384                            // 000000A17F40: D8D80180 1F000031
	ds_load_b32 v32, v49 offset:416                            // 000000A17F48: D8D801A0 20000031
	ds_load_b32 v33, v49 offset:448                            // 000000A17F50: D8D801C0 21000031
	ds_load_b32 v34, v49 offset:480                            // 000000A17F58: D8D801E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000A17F60: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000A17F64: 56003712
	s_setprio 1                                                // 000000A17F68: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000A17F6C: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000A17F70: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000A17F74: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000A17F78: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000A17F7C: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000A17F80: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000A17F84: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000A17F88: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000A17F8C: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000A17F90: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000A17F94: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000A17F98: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000A17F9C: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000A17FA0: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000A17FA4: 561E3D15
	s_setprio 0                                                // 000000A17FA8: BFB50000
	ds_load_b32 v18, v48 offset:512                            // 000000A17FAC: D8D80200 12000030
	ds_load_b32 v19, v48 offset:544                            // 000000A17FB4: D8D80220 13000030
	ds_load_b32 v20, v48 offset:576                            // 000000A17FBC: D8D80240 14000030
	ds_load_b32 v21, v48 offset:608                            // 000000A17FC4: D8D80260 15000030
	s_add_u32 s12, s12, s30                                    // 000000A17FCC: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000A17FD0: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000A17FD4: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000A17FD8: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000A17FDC: BF06801D
	s_cmov_b32 s14, s28                                        // 000000A17FE0: BE8E021C
	ds_load_b32 v27, v49 offset:512                            // 000000A17FE4: D8D80200 1B000031
	ds_load_b32 v28, v49 offset:544                            // 000000A17FEC: D8D80220 1C000031
	ds_load_b32 v29, v49 offset:576                            // 000000A17FF4: D8D80240 1D000031
	ds_load_b32 v30, v49 offset:608                            // 000000A17FFC: D8D80260 1E000031
	s_waitcnt vmcnt(7)                                         // 000000A18004: BF891FF7
	ds_store_b32 v35, v40 offset:2048                          // 000000A18008: D8340800 00002823
	s_waitcnt lgkmcnt(9)                                       // 000000A18010: BF89FC97
	v_fmac_f32_e32 v0, v22, v31                                // 000000A18014: 56003F16
	s_setprio 1                                                // 000000A18018: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000A1801C: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000A18020: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000A18024: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000A18028: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000A1802C: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000A18030: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000A18034: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000A18038: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000A1803C: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000A18040: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000A18044: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000A18048: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000A1804C: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000A18050: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000A18054: 561E4519
	s_setprio 0                                                // 000000A18058: BFB50000
	ds_load_b32 v22, v48 offset:640                            // 000000A1805C: D8D80280 16000030
	ds_load_b32 v23, v48 offset:672                            // 000000A18064: D8D802A0 17000030
	ds_load_b32 v24, v48 offset:704                            // 000000A1806C: D8D802C0 18000030
	ds_load_b32 v25, v48 offset:736                            // 000000A18074: D8D802E0 19000030
	ds_load_b32 v31, v49 offset:640                            // 000000A1807C: D8D80280 1F000031
	ds_load_b32 v32, v49 offset:672                            // 000000A18084: D8D802A0 20000031
	ds_load_b32 v33, v49 offset:704                            // 000000A1808C: D8D802C0 21000031
	ds_load_b32 v34, v49 offset:736                            // 000000A18094: D8D802E0 22000031
	s_waitcnt vmcnt(6)                                         // 000000A1809C: BF891BF7
	ds_store_b32 v35, v41 offset:2304                          // 000000A180A0: D8340900 00002923
	s_waitcnt lgkmcnt(9)                                       // 000000A180A8: BF89FC97
	v_fmac_f32_e32 v0, v18, v27                                // 000000A180AC: 56003712
	s_setprio 1                                                // 000000A180B0: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000A180B4: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000A180B8: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000A180BC: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000A180C0: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000A180C4: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000A180C8: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000A180CC: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000A180D0: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000A180D4: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000A180D8: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000A180DC: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000A180E0: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000A180E4: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000A180E8: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000A180EC: 561E3D15
	s_setprio 0                                                // 000000A180F0: BFB50000
	ds_load_b32 v18, v48 offset:768                            // 000000A180F4: D8D80300 12000030
	ds_load_b32 v19, v48 offset:800                            // 000000A180FC: D8D80320 13000030
	ds_load_b32 v20, v48 offset:832                            // 000000A18104: D8D80340 14000030
	ds_load_b32 v21, v48 offset:864                            // 000000A1810C: D8D80360 15000030
	ds_load_b32 v27, v49 offset:768                            // 000000A18114: D8D80300 1B000031
	ds_load_b32 v28, v49 offset:800                            // 000000A1811C: D8D80320 1C000031
	ds_load_b32 v29, v49 offset:832                            // 000000A18124: D8D80340 1D000031
	ds_load_b32 v30, v49 offset:864                            // 000000A1812C: D8D80360 1E000031
	s_waitcnt vmcnt(5)                                         // 000000A18134: BF8917F7
	ds_store_b32 v35, v42 offset:2560                          // 000000A18138: D8340A00 00002A23
	s_waitcnt lgkmcnt(9)                                       // 000000A18140: BF89FC97
	v_fmac_f32_e32 v0, v22, v31                                // 000000A18144: 56003F16
	s_setprio 1                                                // 000000A18148: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000A1814C: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000A18150: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000A18154: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000A18158: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000A1815C: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000A18160: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000A18164: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000A18168: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000A1816C: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000A18170: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000A18174: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000A18178: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000A1817C: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000A18180: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000A18184: 561E4519
	s_setprio 0                                                // 000000A18188: BFB50000
	ds_load_b32 v22, v48 offset:896                            // 000000A1818C: D8D80380 16000030
	ds_load_b32 v23, v48 offset:928                            // 000000A18194: D8D803A0 17000030
	ds_load_b32 v24, v48 offset:960                            // 000000A1819C: D8D803C0 18000030
	ds_load_b32 v25, v48 offset:992                            // 000000A181A4: D8D803E0 19000030
	ds_load_b32 v31, v49 offset:896                            // 000000A181AC: D8D80380 1F000031
	ds_load_b32 v32, v49 offset:928                            // 000000A181B4: D8D803A0 20000031
	ds_load_b32 v33, v49 offset:960                            // 000000A181BC: D8D803C0 21000031
	ds_load_b32 v34, v49 offset:992                            // 000000A181C4: D8D803E0 22000031
	s_waitcnt vmcnt(4)                                         // 000000A181CC: BF8913F7
	ds_store_b32 v35, v43 offset:2816                          // 000000A181D0: D8340B00 00002B23
	s_waitcnt vmcnt(3)                                         // 000000A181D8: BF890FF7
	ds_store_b32 v36, v44 offset:2048                          // 000000A181DC: D8340800 00002C24
	s_waitcnt vmcnt(2)                                         // 000000A181E4: BF890BF7
	ds_store_b32 v36, v45 offset:2080                          // 000000A181E8: D8340820 00002D24
	s_waitcnt vmcnt(1)                                         // 000000A181F0: BF8907F7
	ds_store_b32 v36, v46 offset:2112                          // 000000A181F4: D8340840 00002E24
	s_waitcnt vmcnt(0)                                         // 000000A181FC: BF8903F7
	ds_store_b32 v36, v47 offset:2144                          // 000000A18200: D8340860 00002F24
	s_waitcnt lgkmcnt(13)                                      // 000000A18208: BF89FCD7
	v_fmac_f32_e32 v0, v18, v27                                // 000000A1820C: 56003712
	s_setprio 1                                                // 000000A18210: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000A18214: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000A18218: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000A1821C: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000A18220: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000A18224: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000A18228: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000A1822C: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000A18230: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000A18234: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000A18238: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000A1823C: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000A18240: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000A18244: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000A18248: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000A1824C: 561E3D15
	s_setprio 0                                                // 000000A18250: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000A18254: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000A18258: BDFC0000
	s_barrier                                                  // 000000A1825C: BFBD0000
	ds_load_b32 v18, v48 offset:2048                           // 000000A18260: D8D80800 12000030
	ds_load_b32 v19, v48 offset:2080                           // 000000A18268: D8D80820 13000030
	ds_load_b32 v20, v48 offset:2112                           // 000000A18270: D8D80840 14000030
	ds_load_b32 v21, v48 offset:2144                           // 000000A18278: D8D80860 15000030
	ds_load_b32 v27, v49 offset:2048                           // 000000A18280: D8D80800 1B000031
	ds_load_b32 v28, v49 offset:2080                           // 000000A18288: D8D80820 1C000031
	ds_load_b32 v29, v49 offset:2112                           // 000000A18290: D8D80840 1D000031
	ds_load_b32 v30, v49 offset:2144                           // 000000A18298: D8D80860 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000A182A0: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000A182A4: 56003F16
	s_setprio 1                                                // 000000A182A8: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000A182AC: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000A182B0: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000A182B4: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000A182B8: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000A182BC: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000A182C0: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000A182C4: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000A182C8: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000A182CC: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000A182D0: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000A182D4: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000A182D8: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000A182DC: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000A182E0: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000A182E4: 561E4519
	s_setprio 0                                                // 000000A182E8: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000A182EC: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000A182F0: BF008105
	s_cbranch_scc1 LoopEndL_oddexit_3                          // 000000A182F4: BFA20153

0000000000a182f8 <label_0014>:
	ds_load_b32 v22, v48 offset:2176                           // 000000A182F8: D8D80880 16000030
	ds_load_b32 v23, v48 offset:2208                           // 000000A18300: D8D808A0 17000030
	ds_load_b32 v24, v48 offset:2240                           // 000000A18308: D8D808C0 18000030
	ds_load_b32 v25, v48 offset:2272                           // 000000A18310: D8D808E0 19000030
	buffer_load_b32 v40, v37, s[8:11], 0 offen                 // 000000A18318: E0500000 80422825
	buffer_load_b32 v41, v37, s[8:11], s31 offen               // 000000A18320: E0500000 1F422925
	buffer_load_b32 v42, v37, s[8:11], s32 offen               // 000000A18328: E0500000 20422A25
	buffer_load_b32 v43, v37, s[8:11], s33 offen               // 000000A18330: E0500000 21422B25
	buffer_load_b32 v44, v38, s[12:15], 0 offen                // 000000A18338: E0500000 80432C26
	buffer_load_b32 v45, v38, s[12:15], s54 offen              // 000000A18340: E0500000 36432D26
	buffer_load_b32 v46, v38, s[12:15], s55 offen              // 000000A18348: E0500000 37432E26
	ds_load_b32 v31, v49 offset:2176                           // 000000A18350: D8D80880 1F000031
	ds_load_b32 v32, v49 offset:2208                           // 000000A18358: D8D808A0 20000031
	ds_load_b32 v33, v49 offset:2240                           // 000000A18360: D8D808C0 21000031
	ds_load_b32 v34, v49 offset:2272                           // 000000A18368: D8D808E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000A18370: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000A18374: 56003712
	s_setprio 1                                                // 000000A18378: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000A1837C: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000A18380: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000A18384: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000A18388: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000A1838C: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000A18390: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000A18394: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000A18398: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000A1839C: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000A183A0: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000A183A4: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000A183A8: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000A183AC: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000A183B0: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000A183B4: 561E3D15
	s_setprio 0                                                // 000000A183B8: BFB50000
	ds_load_b32 v18, v48 offset:2304                           // 000000A183BC: D8D80900 12000030
	ds_load_b32 v19, v48 offset:2336                           // 000000A183C4: D8D80920 13000030
	ds_load_b32 v20, v48 offset:2368                           // 000000A183CC: D8D80940 14000030
	ds_load_b32 v21, v48 offset:2400                           // 000000A183D4: D8D80960 15000030
	buffer_load_b32 v47, v38, s[12:15], s56 offen              // 000000A183DC: E0500000 38432F26
	ds_load_b32 v27, v49 offset:2304                           // 000000A183E4: D8D80900 1B000031
	ds_load_b32 v28, v49 offset:2336                           // 000000A183EC: D8D80920 1C000031
	ds_load_b32 v29, v49 offset:2368                           // 000000A183F4: D8D80940 1D000031
	ds_load_b32 v30, v49 offset:2400                           // 000000A183FC: D8D80960 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000A18404: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000A18408: 56003F16
	s_setprio 1                                                // 000000A1840C: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000A18410: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000A18414: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000A18418: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000A1841C: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000A18420: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000A18424: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000A18428: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000A1842C: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000A18430: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000A18434: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000A18438: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000A1843C: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000A18440: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000A18444: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000A18448: 561E4519
	s_setprio 0                                                // 000000A1844C: BFB50000
	ds_load_b32 v22, v48 offset:2432                           // 000000A18450: D8D80980 16000030
	ds_load_b32 v23, v48 offset:2464                           // 000000A18458: D8D809A0 17000030
	ds_load_b32 v24, v48 offset:2496                           // 000000A18460: D8D809C0 18000030
	ds_load_b32 v25, v48 offset:2528                           // 000000A18468: D8D809E0 19000030
	s_add_u32 s8, s8, s7                                       // 000000A18470: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000A18474: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000A18478: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000A1847C: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000A18480: BF068001
	s_cmov_b32 s10, s0                                         // 000000A18484: BE8A0200
	ds_load_b32 v31, v49 offset:2432                           // 000000A18488: D8D80980 1F000031
	ds_load_b32 v32, v49 offset:2464                           // 000000A18490: D8D809A0 20000031
	ds_load_b32 v33, v49 offset:2496                           // 000000A18498: D8D809C0 21000031
	ds_load_b32 v34, v49 offset:2528                           // 000000A184A0: D8D809E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000A184A8: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000A184AC: 56003712
	s_setprio 1                                                // 000000A184B0: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000A184B4: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000A184B8: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000A184BC: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000A184C0: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000A184C4: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000A184C8: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000A184CC: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000A184D0: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000A184D4: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000A184D8: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000A184DC: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000A184E0: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000A184E4: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000A184E8: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000A184EC: 561E3D15
	s_setprio 0                                                // 000000A184F0: BFB50000
	ds_load_b32 v18, v48 offset:2560                           // 000000A184F4: D8D80A00 12000030
	ds_load_b32 v19, v48 offset:2592                           // 000000A184FC: D8D80A20 13000030
	ds_load_b32 v20, v48 offset:2624                           // 000000A18504: D8D80A40 14000030
	ds_load_b32 v21, v48 offset:2656                           // 000000A1850C: D8D80A60 15000030
	s_add_u32 s12, s12, s30                                    // 000000A18514: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000A18518: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000A1851C: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000A18520: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000A18524: BF06801D
	s_cmov_b32 s14, s28                                        // 000000A18528: BE8E021C
	ds_load_b32 v27, v49 offset:2560                           // 000000A1852C: D8D80A00 1B000031
	ds_load_b32 v28, v49 offset:2592                           // 000000A18534: D8D80A20 1C000031
	ds_load_b32 v29, v49 offset:2624                           // 000000A1853C: D8D80A40 1D000031
	ds_load_b32 v30, v49 offset:2656                           // 000000A18544: D8D80A60 1E000031
	s_waitcnt vmcnt(7)                                         // 000000A1854C: BF891FF7
	ds_store_b32 v35, v40                                      // 000000A18550: D8340000 00002823
	s_waitcnt lgkmcnt(9)                                       // 000000A18558: BF89FC97
	v_fmac_f32_e32 v0, v22, v31                                // 000000A1855C: 56003F16
	s_setprio 1                                                // 000000A18560: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000A18564: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000A18568: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000A1856C: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000A18570: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000A18574: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000A18578: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000A1857C: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000A18580: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000A18584: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000A18588: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000A1858C: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000A18590: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000A18594: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000A18598: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000A1859C: 561E4519
	s_setprio 0                                                // 000000A185A0: BFB50000
	ds_load_b32 v22, v48 offset:2688                           // 000000A185A4: D8D80A80 16000030
	ds_load_b32 v23, v48 offset:2720                           // 000000A185AC: D8D80AA0 17000030
	ds_load_b32 v24, v48 offset:2752                           // 000000A185B4: D8D80AC0 18000030
	ds_load_b32 v25, v48 offset:2784                           // 000000A185BC: D8D80AE0 19000030
	ds_load_b32 v31, v49 offset:2688                           // 000000A185C4: D8D80A80 1F000031
	ds_load_b32 v32, v49 offset:2720                           // 000000A185CC: D8D80AA0 20000031
	ds_load_b32 v33, v49 offset:2752                           // 000000A185D4: D8D80AC0 21000031
	ds_load_b32 v34, v49 offset:2784                           // 000000A185DC: D8D80AE0 22000031
	s_waitcnt vmcnt(6)                                         // 000000A185E4: BF891BF7
	ds_store_b32 v35, v41 offset:256                           // 000000A185E8: D8340100 00002923
	s_waitcnt lgkmcnt(9)                                       // 000000A185F0: BF89FC97
	v_fmac_f32_e32 v0, v18, v27                                // 000000A185F4: 56003712
	s_setprio 1                                                // 000000A185F8: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000A185FC: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000A18600: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000A18604: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000A18608: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000A1860C: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000A18610: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000A18614: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000A18618: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000A1861C: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000A18620: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000A18624: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000A18628: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000A1862C: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000A18630: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000A18634: 561E3D15
	s_setprio 0                                                // 000000A18638: BFB50000
	ds_load_b32 v18, v48 offset:2816                           // 000000A1863C: D8D80B00 12000030
	ds_load_b32 v19, v48 offset:2848                           // 000000A18644: D8D80B20 13000030
	ds_load_b32 v20, v48 offset:2880                           // 000000A1864C: D8D80B40 14000030
	ds_load_b32 v21, v48 offset:2912                           // 000000A18654: D8D80B60 15000030
	ds_load_b32 v27, v49 offset:2816                           // 000000A1865C: D8D80B00 1B000031
	ds_load_b32 v28, v49 offset:2848                           // 000000A18664: D8D80B20 1C000031
	ds_load_b32 v29, v49 offset:2880                           // 000000A1866C: D8D80B40 1D000031
	ds_load_b32 v30, v49 offset:2912                           // 000000A18674: D8D80B60 1E000031
	s_waitcnt vmcnt(5)                                         // 000000A1867C: BF8917F7
	ds_store_b32 v35, v42 offset:512                           // 000000A18680: D8340200 00002A23
	s_waitcnt lgkmcnt(9)                                       // 000000A18688: BF89FC97
	v_fmac_f32_e32 v0, v22, v31                                // 000000A1868C: 56003F16
	s_setprio 1                                                // 000000A18690: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000A18694: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000A18698: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000A1869C: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000A186A0: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000A186A4: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000A186A8: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000A186AC: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000A186B0: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000A186B4: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000A186B8: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000A186BC: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000A186C0: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000A186C4: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000A186C8: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000A186CC: 561E4519
	s_setprio 0                                                // 000000A186D0: BFB50000
	ds_load_b32 v22, v48 offset:2944                           // 000000A186D4: D8D80B80 16000030
	ds_load_b32 v23, v48 offset:2976                           // 000000A186DC: D8D80BA0 17000030
	ds_load_b32 v24, v48 offset:3008                           // 000000A186E4: D8D80BC0 18000030
	ds_load_b32 v25, v48 offset:3040                           // 000000A186EC: D8D80BE0 19000030
	ds_load_b32 v31, v49 offset:2944                           // 000000A186F4: D8D80B80 1F000031
	ds_load_b32 v32, v49 offset:2976                           // 000000A186FC: D8D80BA0 20000031
	ds_load_b32 v33, v49 offset:3008                           // 000000A18704: D8D80BC0 21000031
	ds_load_b32 v34, v49 offset:3040                           // 000000A1870C: D8D80BE0 22000031
	s_waitcnt vmcnt(4)                                         // 000000A18714: BF8913F7
	ds_store_b32 v35, v43 offset:768                           // 000000A18718: D8340300 00002B23
	s_waitcnt vmcnt(3)                                         // 000000A18720: BF890FF7
	ds_store_b32 v36, v44                                      // 000000A18724: D8340000 00002C24
	s_waitcnt vmcnt(2)                                         // 000000A1872C: BF890BF7
	ds_store_b32 v36, v45 offset:32                            // 000000A18730: D8340020 00002D24
	s_waitcnt vmcnt(1)                                         // 000000A18738: BF8907F7
	ds_store_b32 v36, v46 offset:64                            // 000000A1873C: D8340040 00002E24
	s_waitcnt vmcnt(0)                                         // 000000A18744: BF8903F7
	ds_store_b32 v36, v47 offset:96                            // 000000A18748: D8340060 00002F24
	s_waitcnt lgkmcnt(13)                                      // 000000A18750: BF89FCD7
	v_fmac_f32_e32 v0, v18, v27                                // 000000A18754: 56003712
	s_setprio 1                                                // 000000A18758: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000A1875C: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000A18760: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000A18764: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000A18768: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000A1876C: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000A18770: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000A18774: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000A18778: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000A1877C: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000A18780: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000A18784: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000A18788: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000A1878C: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000A18790: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000A18794: 561E3D15
	s_setprio 0                                                // 000000A18798: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000A1879C: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000A187A0: BDFC0000
	s_barrier                                                  // 000000A187A4: BFBD0000
	ds_load_b32 v18, v48                                       // 000000A187A8: D8D80000 12000030
	ds_load_b32 v19, v48 offset:32                             // 000000A187B0: D8D80020 13000030
	ds_load_b32 v20, v48 offset:64                             // 000000A187B8: D8D80040 14000030
	ds_load_b32 v21, v48 offset:96                             // 000000A187C0: D8D80060 15000030
	ds_load_b32 v27, v49                                       // 000000A187C8: D8D80000 1B000031
	ds_load_b32 v28, v49 offset:32                             // 000000A187D0: D8D80020 1C000031
	ds_load_b32 v29, v49 offset:64                             // 000000A187D8: D8D80040 1D000031
	ds_load_b32 v30, v49 offset:96                             // 000000A187E0: D8D80060 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000A187E8: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000A187EC: 56003F16
	s_setprio 1                                                // 000000A187F0: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000A187F4: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000A187F8: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000A187FC: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000A18800: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000A18804: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000A18808: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000A1880C: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000A18810: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000A18814: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000A18818: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000A1881C: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000A18820: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000A18824: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000A18828: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000A1882C: 561E4519
	s_setprio 0                                                // 000000A18830: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000A18834: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000A18838: BF008105
	s_cbranch_scc0 LoopBeginL_1                                // 000000A1883C: BFA1FD5C

0000000000a18840 <LoopEndL_evenexit_4>:
	s_branch LoopEndL_2                                        // 000000A18840: BFA00004

0000000000a18844 <LoopEndL_oddexit_3>:
	v_xor_b32_e32 v48, 0x800, v48                              // 000000A18844: 3A6060FF 00000800
	v_xor_b32_e32 v49, 0x800, v49                              // 000000A1884C: 3A6262FF 00000800

0000000000a18854 <LoopEndL_2>:
	s_cmpk_eq_u32 s37, 0x0                                     // 000000A18854: B4A50000
	s_cbranch_scc0 OptNLL_End_15                               // 000000A18858: BFA10152
	s_cmp_eq_u32 s36, 1.0                                      // 000000A1885C: BF06F224
	s_cbranch_scc0 OptNLL_End_15                               // 000000A18860: BFA10150
	s_and_b32 s58, 31, s46                                     // 000000A18864: 8B3A2E9F
	s_add_u32 s59, -1, s50                                     // 000000A18868: 803B32C1
	s_cmp_ge_u32 s2, s59                                       // 000000A1886C: BF093B02
	s_cselect_b32 s58, s58, 0                                  // 000000A18870: 983A803A
	s_cmpk_gt_u32 s58, 0x0                                     // 000000A18874: B5BA0000
	s_cbranch_scc1 OptNLL_End_15                               // 000000A18878: BFA2014A
	s_and_b32 s58, 31, s47                                     // 000000A1887C: 8B3A2F9F
	s_add_u32 s59, -1, s51                                     // 000000A18880: 803B33C1
	s_cmp_ge_u32 s3, s59                                       // 000000A18884: BF093B03
	s_cselect_b32 s58, s58, 0                                  // 000000A18888: 983A803A
	s_cmpk_gt_u32 s58, 0x0                                     // 000000A1888C: B5BA0000
	s_cbranch_scc1 OptNLL_End_15                               // 000000A18890: BFA20144
	s_and_b32 s59, 7, s49                                      // 000000A18894: 8B3B3187
	s_cmp_eq_u32 s59, 0                                        // 000000A18898: BF06803B
	s_cbranch_scc0 OptNLL_End_15                               // 000000A1889C: BFA10141
	ds_load_b32 v22, v48 offset:128                            // 000000A188A0: D8D80080 16000030
	ds_load_b32 v23, v48 offset:160                            // 000000A188A8: D8D800A0 17000030
	ds_load_b32 v24, v48 offset:192                            // 000000A188B0: D8D800C0 18000030
	ds_load_b32 v25, v48 offset:224                            // 000000A188B8: D8D800E0 19000030
	ds_load_b32 v31, v49 offset:128                            // 000000A188C0: D8D80080 1F000031
	ds_load_b32 v32, v49 offset:160                            // 000000A188C8: D8D800A0 20000031
	ds_load_b32 v33, v49 offset:192                            // 000000A188D0: D8D800C0 21000031
	ds_load_b32 v34, v49 offset:224                            // 000000A188D8: D8D800E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000A188E0: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000A188E4: 56003712
	s_setprio 1                                                // 000000A188E8: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000A188EC: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000A188F0: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000A188F4: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000A188F8: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000A188FC: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000A18900: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000A18904: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000A18908: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000A1890C: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000A18910: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000A18914: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000A18918: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000A1891C: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000A18920: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000A18924: 561E3D15
	s_setprio 0                                                // 000000A18928: BFB50000
	ds_load_b32 v18, v48 offset:256                            // 000000A1892C: D8D80100 12000030
	ds_load_b32 v19, v48 offset:288                            // 000000A18934: D8D80120 13000030
	ds_load_b32 v20, v48 offset:320                            // 000000A1893C: D8D80140 14000030
	ds_load_b32 v21, v48 offset:352                            // 000000A18944: D8D80160 15000030
	ds_load_b32 v27, v49 offset:256                            // 000000A1894C: D8D80100 1B000031
	ds_load_b32 v28, v49 offset:288                            // 000000A18954: D8D80120 1C000031
	ds_load_b32 v29, v49 offset:320                            // 000000A1895C: D8D80140 1D000031
	ds_load_b32 v30, v49 offset:352                            // 000000A18964: D8D80160 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000A1896C: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000A18970: 56003F16
	s_setprio 1                                                // 000000A18974: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000A18978: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000A1897C: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000A18980: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000A18984: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000A18988: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000A1898C: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000A18990: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000A18994: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000A18998: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000A1899C: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000A189A0: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000A189A4: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000A189A8: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000A189AC: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000A189B0: 561E4519
	s_setprio 0                                                // 000000A189B4: BFB50000
	ds_load_b32 v22, v48 offset:384                            // 000000A189B8: D8D80180 16000030
	ds_load_b32 v23, v48 offset:416                            // 000000A189C0: D8D801A0 17000030
	ds_load_b32 v24, v48 offset:448                            // 000000A189C8: D8D801C0 18000030
	ds_load_b32 v25, v48 offset:480                            // 000000A189D0: D8D801E0 19000030
	ds_load_b32 v31, v49 offset:384                            // 000000A189D8: D8D80180 1F000031
	ds_load_b32 v32, v49 offset:416                            // 000000A189E0: D8D801A0 20000031
	ds_load_b32 v33, v49 offset:448                            // 000000A189E8: D8D801C0 21000031
	ds_load_b32 v34, v49 offset:480                            // 000000A189F0: D8D801E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000A189F8: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000A189FC: 56003712
	s_setprio 1                                                // 000000A18A00: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000A18A04: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000A18A08: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000A18A0C: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000A18A10: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000A18A14: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000A18A18: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000A18A1C: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000A18A20: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000A18A24: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000A18A28: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000A18A2C: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000A18A30: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000A18A34: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000A18A38: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000A18A3C: 561E3D15
	s_setprio 0                                                // 000000A18A40: BFB50000
	ds_load_b32 v18, v48 offset:512                            // 000000A18A44: D8D80200 12000030
	ds_load_b32 v19, v48 offset:544                            // 000000A18A4C: D8D80220 13000030
	ds_load_b32 v20, v48 offset:576                            // 000000A18A54: D8D80240 14000030
	ds_load_b32 v21, v48 offset:608                            // 000000A18A5C: D8D80260 15000030
	ds_load_b32 v27, v49 offset:512                            // 000000A18A64: D8D80200 1B000031
	ds_load_b32 v28, v49 offset:544                            // 000000A18A6C: D8D80220 1C000031
	ds_load_b32 v29, v49 offset:576                            // 000000A18A74: D8D80240 1D000031
	ds_load_b32 v30, v49 offset:608                            // 000000A18A7C: D8D80260 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000A18A84: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000A18A88: 56003F16
	s_setprio 1                                                // 000000A18A8C: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000A18A90: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000A18A94: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000A18A98: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000A18A9C: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000A18AA0: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000A18AA4: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000A18AA8: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000A18AAC: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000A18AB0: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000A18AB4: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000A18AB8: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000A18ABC: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000A18AC0: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000A18AC4: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000A18AC8: 561E4519
	s_setprio 0                                                // 000000A18ACC: BFB50000
	ds_load_b32 v22, v48 offset:640                            // 000000A18AD0: D8D80280 16000030
	ds_load_b32 v23, v48 offset:672                            // 000000A18AD8: D8D802A0 17000030
	ds_load_b32 v24, v48 offset:704                            // 000000A18AE0: D8D802C0 18000030
	ds_load_b32 v25, v48 offset:736                            // 000000A18AE8: D8D802E0 19000030
	ds_load_b32 v31, v49 offset:640                            // 000000A18AF0: D8D80280 1F000031
	ds_load_b32 v32, v49 offset:672                            // 000000A18AF8: D8D802A0 20000031
	ds_load_b32 v33, v49 offset:704                            // 000000A18B00: D8D802C0 21000031
	ds_load_b32 v34, v49 offset:736                            // 000000A18B08: D8D802E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000A18B10: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000A18B14: 56003712
	s_setprio 1                                                // 000000A18B18: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000A18B1C: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000A18B20: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000A18B24: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000A18B28: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000A18B2C: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000A18B30: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000A18B34: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000A18B38: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000A18B3C: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000A18B40: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000A18B44: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000A18B48: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000A18B4C: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000A18B50: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000A18B54: 561E3D15
	s_setprio 0                                                // 000000A18B58: BFB50000
	ds_load_b32 v18, v48 offset:768                            // 000000A18B5C: D8D80300 12000030
	ds_load_b32 v19, v48 offset:800                            // 000000A18B64: D8D80320 13000030
	ds_load_b32 v20, v48 offset:832                            // 000000A18B6C: D8D80340 14000030
	ds_load_b32 v21, v48 offset:864                            // 000000A18B74: D8D80360 15000030
	ds_load_b32 v27, v49 offset:768                            // 000000A18B7C: D8D80300 1B000031
	ds_load_b32 v28, v49 offset:800                            // 000000A18B84: D8D80320 1C000031
	ds_load_b32 v29, v49 offset:832                            // 000000A18B8C: D8D80340 1D000031
	ds_load_b32 v30, v49 offset:864                            // 000000A18B94: D8D80360 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000A18B9C: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000A18BA0: 56003F16
	s_setprio 1                                                // 000000A18BA4: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000A18BA8: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000A18BAC: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000A18BB0: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000A18BB4: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000A18BB8: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000A18BBC: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000A18BC0: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000A18BC4: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000A18BC8: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000A18BCC: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000A18BD0: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000A18BD4: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000A18BD8: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000A18BDC: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000A18BE0: 561E4519
	s_setprio 0                                                // 000000A18BE4: BFB50000
	ds_load_b32 v22, v48 offset:896                            // 000000A18BE8: D8D80380 16000030
	ds_load_b32 v23, v48 offset:928                            // 000000A18BF0: D8D803A0 17000030
	ds_load_b32 v24, v48 offset:960                            // 000000A18BF8: D8D803C0 18000030
	ds_load_b32 v25, v48 offset:992                            // 000000A18C00: D8D803E0 19000030
	ds_load_b32 v31, v49 offset:896                            // 000000A18C08: D8D80380 1F000031
	ds_load_b32 v32, v49 offset:928                            // 000000A18C10: D8D803A0 20000031
	ds_load_b32 v33, v49 offset:960                            // 000000A18C18: D8D803C0 21000031
	ds_load_b32 v34, v49 offset:992                            // 000000A18C20: D8D803E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000A18C28: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000A18C2C: 56003712
	s_setprio 1                                                // 000000A18C30: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000A18C34: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000A18C38: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000A18C3C: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000A18C40: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000A18C44: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000A18C48: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000A18C4C: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000A18C50: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000A18C54: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000A18C58: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000A18C5C: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000A18C60: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000A18C64: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000A18C68: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000A18C6C: 561E3D15
	s_setprio 0                                                // 000000A18C70: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000A18C74: BF89FC07
	v_fmac_f32_e32 v0, v22, v31                                // 000000A18C78: 56003F16
	s_setprio 1                                                // 000000A18C7C: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000A18C80: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000A18C84: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000A18C88: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000A18C8C: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000A18C90: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000A18C94: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000A18C98: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000A18C9C: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000A18CA0: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000A18CA4: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000A18CA8: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000A18CAC: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000A18CB0: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000A18CB4: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000A18CB8: 561E4519
	s_setprio 0                                                // 000000A18CBC: BFB50000

0000000000a18cc0 <Summation_End_OptNLL_16>:
	v_lshrrev_b32_e32 v19, 3, v50                              // 000000A18CC0: 32266483
	v_and_b32_e32 v18, 7, v50                                  // 000000A18CC4: 36246487
	v_mul_lo_u32 v20, v19, s40                                 // 000000A18CC8: D72C0014 00005113
	v_mul_lo_u32 v21, v19, s38                                 // 000000A18CD0: D72C0015 00004D13
	s_mul_i32 s52, 32, s2                                      // 000000A18CD8: 963402A0
	v_add_co_u32 v18, vcc_lo, s52, v18                         // 000000A18CDC: D7006A12 00022434
	s_mul_i32 s54, 32, s3                                      // 000000A18CE4: 963603A0
	v_add_co_u32 v19, vcc_lo, s54, v19                         // 000000A18CE8: D7006A13 00022636

0000000000a18cf0 <GW_B0_E0_19>:
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000A18CF0: D6470018 020A2515
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000A18CF8: E0680000 80440018
	buffer_store_b32 v1, v24, s[16:19], 0 offen offset:32      // 000000A18D00: E0680020 80440118
	buffer_store_b32 v2, v24, s[16:19], 0 offen offset:64      // 000000A18D08: E0680040 80440218
	buffer_store_b32 v3, v24, s[16:19], 0 offen offset:96      // 000000A18D10: E0680060 80440318
	s_mul_i32 s34, s38, 32                                     // 000000A18D18: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000A18D1C: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000A18D20: 82118011
	buffer_store_b32 v4, v24, s[16:19], 0 offen                // 000000A18D24: E0680000 80440418
	buffer_store_b32 v5, v24, s[16:19], 0 offen offset:32      // 000000A18D2C: E0680020 80440518
	buffer_store_b32 v6, v24, s[16:19], 0 offen offset:64      // 000000A18D34: E0680040 80440618
	buffer_store_b32 v7, v24, s[16:19], 0 offen offset:96      // 000000A18D3C: E0680060 80440718
	s_mul_i32 s34, s38, 32                                     // 000000A18D44: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000A18D48: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000A18D4C: 82118011
	buffer_store_b32 v8, v24, s[16:19], 0 offen                // 000000A18D50: E0680000 80440818
	buffer_store_b32 v9, v24, s[16:19], 0 offen offset:32      // 000000A18D58: E0680020 80440918
	buffer_store_b32 v10, v24, s[16:19], 0 offen offset:64     // 000000A18D60: E0680040 80440A18
	buffer_store_b32 v11, v24, s[16:19], 0 offen offset:96     // 000000A18D68: E0680060 80440B18
	s_mul_i32 s34, s38, 32                                     // 000000A18D70: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000A18D74: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000A18D78: 82118011
	buffer_store_b32 v12, v24, s[16:19], 0 offen               // 000000A18D7C: E0680000 80440C18
	buffer_store_b32 v13, v24, s[16:19], 0 offen offset:32     // 000000A18D84: E0680020 80440D18
	buffer_store_b32 v14, v24, s[16:19], 0 offen offset:64     // 000000A18D8C: E0680040 80440E18
	buffer_store_b32 v15, v24, s[16:19], 0 offen offset:96     // 000000A18D94: E0680060 80440F18
	s_branch label_GW_End_21                                   // 000000A18D9C: BFA00000

0000000000a18da0 <label_GW_End_21>:
	s_endpgm                                                   // 000000A18DA0: BFB00000

0000000000a18da4 <OptNLL_End_15>:
	ds_load_b32 v22, v48 offset:128                            // 000000A18DA4: D8D80080 16000030
	ds_load_b32 v23, v48 offset:160                            // 000000A18DAC: D8D800A0 17000030
	ds_load_b32 v24, v48 offset:192                            // 000000A18DB4: D8D800C0 18000030
	ds_load_b32 v25, v48 offset:224                            // 000000A18DBC: D8D800E0 19000030
	ds_load_b32 v31, v49 offset:128                            // 000000A18DC4: D8D80080 1F000031
	ds_load_b32 v32, v49 offset:160                            // 000000A18DCC: D8D800A0 20000031
	ds_load_b32 v33, v49 offset:192                            // 000000A18DD4: D8D800C0 21000031
	ds_load_b32 v34, v49 offset:224                            // 000000A18DDC: D8D800E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000A18DE4: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000A18DE8: 56003712
	s_setprio 1                                                // 000000A18DEC: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000A18DF0: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000A18DF4: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000A18DF8: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000A18DFC: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000A18E00: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000A18E04: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000A18E08: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000A18E0C: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000A18E10: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000A18E14: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000A18E18: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000A18E1C: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000A18E20: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000A18E24: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000A18E28: 561E3D15
	s_setprio 0                                                // 000000A18E2C: BFB50000
	ds_load_b32 v18, v48 offset:256                            // 000000A18E30: D8D80100 12000030
	ds_load_b32 v19, v48 offset:288                            // 000000A18E38: D8D80120 13000030
	ds_load_b32 v20, v48 offset:320                            // 000000A18E40: D8D80140 14000030
	ds_load_b32 v21, v48 offset:352                            // 000000A18E48: D8D80160 15000030
	ds_load_b32 v27, v49 offset:256                            // 000000A18E50: D8D80100 1B000031
	ds_load_b32 v28, v49 offset:288                            // 000000A18E58: D8D80120 1C000031
	ds_load_b32 v29, v49 offset:320                            // 000000A18E60: D8D80140 1D000031
	ds_load_b32 v30, v49 offset:352                            // 000000A18E68: D8D80160 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000A18E70: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000A18E74: 56003F16
	s_setprio 1                                                // 000000A18E78: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000A18E7C: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000A18E80: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000A18E84: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000A18E88: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000A18E8C: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000A18E90: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000A18E94: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000A18E98: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000A18E9C: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000A18EA0: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000A18EA4: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000A18EA8: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000A18EAC: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000A18EB0: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000A18EB4: 561E4519
	s_setprio 0                                                // 000000A18EB8: BFB50000
	ds_load_b32 v22, v48 offset:384                            // 000000A18EBC: D8D80180 16000030
	ds_load_b32 v23, v48 offset:416                            // 000000A18EC4: D8D801A0 17000030
	ds_load_b32 v24, v48 offset:448                            // 000000A18ECC: D8D801C0 18000030
	ds_load_b32 v25, v48 offset:480                            // 000000A18ED4: D8D801E0 19000030
	ds_load_b32 v31, v49 offset:384                            // 000000A18EDC: D8D80180 1F000031
	ds_load_b32 v32, v49 offset:416                            // 000000A18EE4: D8D801A0 20000031
	ds_load_b32 v33, v49 offset:448                            // 000000A18EEC: D8D801C0 21000031
	ds_load_b32 v34, v49 offset:480                            // 000000A18EF4: D8D801E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000A18EFC: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000A18F00: 56003712
	s_setprio 1                                                // 000000A18F04: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000A18F08: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000A18F0C: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000A18F10: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000A18F14: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000A18F18: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000A18F1C: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000A18F20: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000A18F24: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000A18F28: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000A18F2C: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000A18F30: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000A18F34: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000A18F38: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000A18F3C: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000A18F40: 561E3D15
	s_setprio 0                                                // 000000A18F44: BFB50000
	ds_load_b32 v18, v48 offset:512                            // 000000A18F48: D8D80200 12000030
	ds_load_b32 v19, v48 offset:544                            // 000000A18F50: D8D80220 13000030
	ds_load_b32 v20, v48 offset:576                            // 000000A18F58: D8D80240 14000030
	ds_load_b32 v21, v48 offset:608                            // 000000A18F60: D8D80260 15000030
	ds_load_b32 v27, v49 offset:512                            // 000000A18F68: D8D80200 1B000031
	ds_load_b32 v28, v49 offset:544                            // 000000A18F70: D8D80220 1C000031
	ds_load_b32 v29, v49 offset:576                            // 000000A18F78: D8D80240 1D000031
	ds_load_b32 v30, v49 offset:608                            // 000000A18F80: D8D80260 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000A18F88: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000A18F8C: 56003F16
	s_setprio 1                                                // 000000A18F90: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000A18F94: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000A18F98: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000A18F9C: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000A18FA0: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000A18FA4: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000A18FA8: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000A18FAC: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000A18FB0: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000A18FB4: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000A18FB8: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000A18FBC: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000A18FC0: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000A18FC4: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000A18FC8: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000A18FCC: 561E4519
	s_setprio 0                                                // 000000A18FD0: BFB50000
	ds_load_b32 v22, v48 offset:640                            // 000000A18FD4: D8D80280 16000030
	ds_load_b32 v23, v48 offset:672                            // 000000A18FDC: D8D802A0 17000030
	ds_load_b32 v24, v48 offset:704                            // 000000A18FE4: D8D802C0 18000030
	ds_load_b32 v25, v48 offset:736                            // 000000A18FEC: D8D802E0 19000030
	ds_load_b32 v31, v49 offset:640                            // 000000A18FF4: D8D80280 1F000031
	ds_load_b32 v32, v49 offset:672                            // 000000A18FFC: D8D802A0 20000031
	ds_load_b32 v33, v49 offset:704                            // 000000A19004: D8D802C0 21000031
	ds_load_b32 v34, v49 offset:736                            // 000000A1900C: D8D802E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000A19014: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000A19018: 56003712
	s_setprio 1                                                // 000000A1901C: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000A19020: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000A19024: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000A19028: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000A1902C: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000A19030: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000A19034: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000A19038: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000A1903C: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000A19040: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000A19044: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000A19048: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000A1904C: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000A19050: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000A19054: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000A19058: 561E3D15
	s_setprio 0                                                // 000000A1905C: BFB50000
	ds_load_b32 v18, v48 offset:768                            // 000000A19060: D8D80300 12000030
	ds_load_b32 v19, v48 offset:800                            // 000000A19068: D8D80320 13000030
	ds_load_b32 v20, v48 offset:832                            // 000000A19070: D8D80340 14000030
	ds_load_b32 v21, v48 offset:864                            // 000000A19078: D8D80360 15000030
	ds_load_b32 v27, v49 offset:768                            // 000000A19080: D8D80300 1B000031
	ds_load_b32 v28, v49 offset:800                            // 000000A19088: D8D80320 1C000031
	ds_load_b32 v29, v49 offset:832                            // 000000A19090: D8D80340 1D000031
	ds_load_b32 v30, v49 offset:864                            // 000000A19098: D8D80360 1E000031
	s_waitcnt lgkmcnt(8)                                       // 000000A190A0: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000A190A4: 56003F16
	s_setprio 1                                                // 000000A190A8: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000A190AC: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000A190B0: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000A190B4: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000A190B8: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000A190BC: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000A190C0: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000A190C4: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000A190C8: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000A190CC: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000A190D0: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000A190D4: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000A190D8: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000A190DC: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000A190E0: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000A190E4: 561E4519
	s_setprio 0                                                // 000000A190E8: BFB50000
	ds_load_b32 v22, v48 offset:896                            // 000000A190EC: D8D80380 16000030
	ds_load_b32 v23, v48 offset:928                            // 000000A190F4: D8D803A0 17000030
	ds_load_b32 v24, v48 offset:960                            // 000000A190FC: D8D803C0 18000030
	ds_load_b32 v25, v48 offset:992                            // 000000A19104: D8D803E0 19000030
	ds_load_b32 v31, v49 offset:896                            // 000000A1910C: D8D80380 1F000031
	ds_load_b32 v32, v49 offset:928                            // 000000A19114: D8D803A0 20000031
	ds_load_b32 v33, v49 offset:960                            // 000000A1911C: D8D803C0 21000031
	ds_load_b32 v34, v49 offset:992                            // 000000A19124: D8D803E0 22000031
	s_waitcnt lgkmcnt(8)                                       // 000000A1912C: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000A19130: 56003712
	s_setprio 1                                                // 000000A19134: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000A19138: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000A1913C: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000A19140: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000A19144: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000A19148: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000A1914C: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000A19150: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000A19154: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000A19158: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000A1915C: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000A19160: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000A19164: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000A19168: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000A1916C: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000A19170: 561E3D15
	s_setprio 0                                                // 000000A19174: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000A19178: BF89FC07
	v_fmac_f32_e32 v0, v22, v31                                // 000000A1917C: 56003F16
	s_setprio 1                                                // 000000A19180: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000A19184: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000A19188: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000A1918C: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000A19190: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000A19194: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000A19198: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000A1919C: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000A191A0: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000A191A4: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000A191A8: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000A191AC: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000A191B0: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000A191B4: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000A191B8: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000A191BC: 561E4519
	s_setprio 0                                                // 000000A191C0: BFB50000

0000000000a191c4 <PrefetchGlobalLastIterEnd_5>:
	v_and_b32_e32 v35, 0xf007ff, v35                           // 000000A191C4: 364646FF 00F007FF
	v_and_b32_e32 v36, 0xf007ff, v36                           // 000000A191CC: 364848FF 00F007FF
	s_and_b32 s5, 7, s49                                       // 000000A191D4: 8B053187
	s_cmp_eq_u32 s5, 0                                         // 000000A191D8: BF068005
	s_cbranch_scc1 SkipTailLoopL_8                             // 000000A191DC: BFA2005A
	s_mov_b32 s6, 0                                            // 000000A191E0: BE860080
	buffer_load_b32 v40, v37, s[8:11], 0 offen                 // 000000A191E4: E0500000 80422825
	buffer_load_b32 v41, v37, s[8:11], s31 offen               // 000000A191EC: E0500000 1F422925
	buffer_load_b32 v42, v37, s[8:11], s32 offen               // 000000A191F4: E0500000 20422A25
	buffer_load_b32 v43, v37, s[8:11], s33 offen               // 000000A191FC: E0500000 21422B25
	buffer_load_b32 v44, v38, s[12:15], 0 offen                // 000000A19204: E0500000 80432C26
	buffer_load_b32 v45, v38, s[12:15], s54 offen              // 000000A1920C: E0500000 36432D26
	buffer_load_b32 v46, v38, s[12:15], s55 offen              // 000000A19214: E0500000 37432E26
	buffer_load_b32 v47, v38, s[12:15], s56 offen              // 000000A1921C: E0500000 38432F26
	s_waitcnt vmcnt(0)                                         // 000000A19224: BF8903F7
	s_waitcnt_lgkmcnt null, 0x0                                // 000000A19228: BDFC0000
	s_barrier                                                  // 000000A1922C: BFBD0000
	ds_store_b32 v35, v40                                      // 000000A19230: D8340000 00002823
	ds_store_b32 v35, v41 offset:256                           // 000000A19238: D8340100 00002923
	ds_store_b32 v35, v42 offset:512                           // 000000A19240: D8340200 00002A23
	ds_store_b32 v35, v43 offset:768                           // 000000A19248: D8340300 00002B23
	ds_store_b32 v36, v44                                      // 000000A19250: D8340000 00002C24
	ds_store_b32 v36, v45 offset:32                            // 000000A19258: D8340020 00002D24
	ds_store_b32 v36, v46 offset:64                            // 000000A19260: D8340040 00002E24
	ds_store_b32 v36, v47 offset:96                            // 000000A19268: D8340060 00002F24
	s_waitcnt lgkmcnt(0)                                       // 000000A19270: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000A19274: BDFC0000
	s_barrier                                                  // 000000A19278: BFBD0000
	v_and_b32_e32 v48, 0x7ff, v48                              // 000000A1927C: 366060FF 000007FF
	v_and_b32_e32 v49, 0x7ff, v49                              // 000000A19284: 366262FF 000007FF

0000000000a1928c <TailLoopBeginL_6>:
	ds_load_b32 v18, v48                                       // 000000A1928C: D8D80000 12000030
	ds_load_b32 v19, v48 offset:32                             // 000000A19294: D8D80020 13000030
	ds_load_b32 v20, v48 offset:64                             // 000000A1929C: D8D80040 14000030
	ds_load_b32 v21, v48 offset:96                             // 000000A192A4: D8D80060 15000030
	ds_load_b32 v27, v49                                       // 000000A192AC: D8D80000 1B000031
	ds_load_b32 v28, v49 offset:32                             // 000000A192B4: D8D80020 1C000031
	ds_load_b32 v29, v49 offset:64                             // 000000A192BC: D8D80040 1D000031
	ds_load_b32 v30, v49 offset:96                             // 000000A192C4: D8D80060 1E000031
	s_mov_b32 s34, 0x80                                        // 000000A192CC: BEA200FF 00000080
	v_add_co_u32 v48, vcc_lo, s34, v48                         // 000000A192D4: D7006A30 00026022
	s_mov_b32 s34, 0x80                                        // 000000A192DC: BEA200FF 00000080
	v_add_co_u32 v49, vcc_lo, s34, v49                         // 000000A192E4: D7006A31 00026222
	s_waitcnt lgkmcnt(0)                                       // 000000A192EC: BF89FC07
	v_fmac_f32_e32 v0, v18, v27                                // 000000A192F0: 56003712
	s_setprio 1                                                // 000000A192F4: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000A192F8: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000A192FC: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000A19300: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000A19304: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000A19308: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000A1930C: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000A19310: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000A19314: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000A19318: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000A1931C: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000A19320: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000A19324: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000A19328: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000A1932C: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000A19330: 561E3D15
	s_setprio 0                                                // 000000A19334: BFB50000
	s_sub_i32 s5, s5, 1                                        // 000000A19338: 81858105
	s_add_u32 s6, s6, 1                                        // 000000A1933C: 80068106
	s_cmp_le_i32 s5, 0                                         // 000000A19340: BF058005
	s_cbranch_scc0 TailLoopBeginL_6                            // 000000A19344: BFA1FFD1

0000000000a19348 <TailLoopEndL_7>:
	v_lshrrev_b32_e32 v19, 3, v50                              // 000000A19348: 32266483
	v_and_b32_e32 v18, 7, v50                                  // 000000A1934C: 36246487
	v_mul_lo_u32 v20, v19, s40                                 // 000000A19350: D72C0014 00005113
	v_mul_lo_u32 v21, v19, s38                                 // 000000A19358: D72C0015 00004D13
	s_mul_i32 s52, 32, s2                                      // 000000A19360: 963402A0
	v_add_co_u32 v18, vcc_lo, s52, v18                         // 000000A19364: D7006A12 00022434
	s_mul_i32 s54, 32, s3                                      // 000000A1936C: 963603A0
	v_add_co_u32 v19, vcc_lo, s54, v19                         // 000000A19370: D7006A13 00022636
	s_cmpk_eq_u32 s37, 0x0                                     // 000000A19378: B4A50000
	s_cbranch_scc0 GW_Beta_43                                  // 000000A1937C: BFA10139
	s_and_b32 s52, 31, s46                                     // 000000A19380: 8B342E9F
	s_add_u32 s53, -1, s50                                     // 000000A19384: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000A19388: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000A1938C: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000A19390: B5B40000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000A19394: BFA20042
	s_and_b32 s52, 31, s47                                     // 000000A19398: 8B342F9F
	s_add_u32 s53, -1, s51                                     // 000000A1939C: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000A193A0: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000A193A4: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000A193A8: B5B40000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000A193AC: BFA2003C

0000000000a193b0 <GW_B0_E0_31>:
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000A193B0: D6470018 020A2515
	v_mul_f32_e32 v0, s36, v0                                  // 000000A193B8: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000A193BC: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000A193C0: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000A193C4: 10060624
	v_mul_f32_e32 v4, s36, v4                                  // 000000A193C8: 10080824
	v_mul_f32_e32 v5, s36, v5                                  // 000000A193CC: 100A0A24
	v_mul_f32_e32 v6, s36, v6                                  // 000000A193D0: 100C0C24
	v_mul_f32_e32 v7, s36, v7                                  // 000000A193D4: 100E0E24
	v_mul_f32_e32 v8, s36, v8                                  // 000000A193D8: 10101024
	v_mul_f32_e32 v9, s36, v9                                  // 000000A193DC: 10121224
	v_mul_f32_e32 v10, s36, v10                                // 000000A193E0: 10141424
	v_mul_f32_e32 v11, s36, v11                                // 000000A193E4: 10161624
	v_mul_f32_e32 v12, s36, v12                                // 000000A193E8: 10181824
	v_mul_f32_e32 v13, s36, v13                                // 000000A193EC: 101A1A24
	v_mul_f32_e32 v14, s36, v14                                // 000000A193F0: 101C1C24
	v_mul_f32_e32 v15, s36, v15                                // 000000A193F4: 101E1E24
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000A193F8: E0680000 80440018
	buffer_store_b32 v1, v24, s[16:19], 0 offen offset:32      // 000000A19400: E0680020 80440118
	buffer_store_b32 v2, v24, s[16:19], 0 offen offset:64      // 000000A19408: E0680040 80440218
	buffer_store_b32 v3, v24, s[16:19], 0 offen offset:96      // 000000A19410: E0680060 80440318
	s_mul_i32 s34, s38, 32                                     // 000000A19418: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000A1941C: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000A19420: 82118011
	buffer_store_b32 v4, v24, s[16:19], 0 offen                // 000000A19424: E0680000 80440418
	buffer_store_b32 v5, v24, s[16:19], 0 offen offset:32      // 000000A1942C: E0680020 80440518
	buffer_store_b32 v6, v24, s[16:19], 0 offen offset:64      // 000000A19434: E0680040 80440618
	buffer_store_b32 v7, v24, s[16:19], 0 offen offset:96      // 000000A1943C: E0680060 80440718
	s_mul_i32 s34, s38, 32                                     // 000000A19444: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000A19448: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000A1944C: 82118011
	buffer_store_b32 v8, v24, s[16:19], 0 offen                // 000000A19450: E0680000 80440818
	buffer_store_b32 v9, v24, s[16:19], 0 offen offset:32      // 000000A19458: E0680020 80440918
	buffer_store_b32 v10, v24, s[16:19], 0 offen offset:64     // 000000A19460: E0680040 80440A18
	buffer_store_b32 v11, v24, s[16:19], 0 offen offset:96     // 000000A19468: E0680060 80440B18
	s_mul_i32 s34, s38, 32                                     // 000000A19470: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000A19474: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000A19478: 82118011
	buffer_store_b32 v12, v24, s[16:19], 0 offen               // 000000A1947C: E0680000 80440C18
	buffer_store_b32 v13, v24, s[16:19], 0 offen offset:32     // 000000A19484: E0680020 80440D18
	buffer_store_b32 v14, v24, s[16:19], 0 offen offset:64     // 000000A1948C: E0680040 80440E18
	buffer_store_b32 v15, v24, s[16:19], 0 offen offset:96     // 000000A19494: E0680060 80440F18
	s_branch label_0047                                        // 000000A1949C: BFA00309

0000000000a194a0 <GW_B0_E1_34>:
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000A194A0: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A194A8: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A194B0: 8B363634
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000A194B4: D6470018 020A2515
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000A194BC: D5010018 00DA30C1
	v_add_co_u32 v22, vcc_lo, v18, 8                           // 000000A194C4: D7006A16 00011112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A194CC: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A194D4: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A194DC: 8B363634
	v_add_lshl_u32 v25, v21, v22, 2                            // 000000A194E0: D6470019 020A2D15
	v_cndmask_b32_e64 v25, -1, v25, s54                        // 000000A194E8: D5010019 00DA32C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000A194F0: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A194F8: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19500: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19508: 8B363634
	v_add_lshl_u32 v26, v21, v22, 2                            // 000000A1950C: D647001A 020A2D15
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000A19514: D501001A 00DA34C1
	v_add_co_u32 v22, vcc_lo, v18, 24                          // 000000A1951C: D7006A16 00013112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A19524: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A1952C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19534: 8B363634
	v_add_lshl_u32 v27, v21, v22, 2                            // 000000A19538: D647001B 020A2D15
	v_cndmask_b32_e64 v27, -1, v27, s54                        // 000000A19540: D501001B 00DA36C1
	v_add_co_u32 v19, vcc_lo, v19, 8                           // 000000A19548: D7006A13 00011113
	s_mul_i32 s52, s40, 8                                      // 000000A19550: 96348828
	v_add_nc_u32_e64 v20, v20, s52                             // 000000A19554: D5250014 00006914
	s_mul_i32 s52, s38, 8                                      // 000000A1955C: 96348826
	v_add_nc_u32_e64 v21, v21, s52                             // 000000A19560: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000A19568: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19570: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19578: 8B363634
	v_add_lshl_u32 v28, v21, v18, 2                            // 000000A1957C: D647001C 020A2515
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000A19584: D501001C 00DA38C1
	v_add_co_u32 v22, vcc_lo, v18, 8                           // 000000A1958C: D7006A16 00011112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A19594: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A1959C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A195A4: 8B363634
	v_add_lshl_u32 v29, v21, v22, 2                            // 000000A195A8: D647001D 020A2D15
	v_cndmask_b32_e64 v29, -1, v29, s54                        // 000000A195B0: D501001D 00DA3AC1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000A195B8: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A195C0: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A195C8: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A195D0: 8B363634
	v_add_lshl_u32 v30, v21, v22, 2                            // 000000A195D4: D647001E 020A2D15
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000A195DC: D501001E 00DA3CC1
	v_add_co_u32 v22, vcc_lo, v18, 24                          // 000000A195E4: D7006A16 00013112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A195EC: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A195F4: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A195FC: 8B363634
	v_add_lshl_u32 v31, v21, v22, 2                            // 000000A19600: D647001F 020A2D15
	v_cndmask_b32_e64 v31, -1, v31, s54                        // 000000A19608: D501001F 00DA3EC1
	v_add_co_u32 v19, vcc_lo, v19, 8                           // 000000A19610: D7006A13 00011113
	s_mul_i32 s52, s40, 8                                      // 000000A19618: 96348828
	v_add_nc_u32_e64 v20, v20, s52                             // 000000A1961C: D5250014 00006914
	s_mul_i32 s52, s38, 8                                      // 000000A19624: 96348826
	v_add_nc_u32_e64 v21, v21, s52                             // 000000A19628: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000A19630: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19638: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19640: 8B363634
	v_add_lshl_u32 v32, v21, v18, 2                            // 000000A19644: D6470020 020A2515
	v_cndmask_b32_e64 v32, -1, v32, s54                        // 000000A1964C: D5010020 00DA40C1
	v_add_co_u32 v22, vcc_lo, v18, 8                           // 000000A19654: D7006A16 00011112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A1965C: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19664: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A1966C: 8B363634
	v_add_lshl_u32 v33, v21, v22, 2                            // 000000A19670: D6470021 020A2D15
	v_cndmask_b32_e64 v33, -1, v33, s54                        // 000000A19678: D5010021 00DA42C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000A19680: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A19688: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19690: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19698: 8B363634
	v_add_lshl_u32 v34, v21, v22, 2                            // 000000A1969C: D6470022 020A2D15
	v_cndmask_b32_e64 v34, -1, v34, s54                        // 000000A196A4: D5010022 00DA44C1
	v_add_co_u32 v22, vcc_lo, v18, 24                          // 000000A196AC: D7006A16 00013112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A196B4: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A196BC: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A196C4: 8B363634
	v_add_lshl_u32 v35, v21, v22, 2                            // 000000A196C8: D6470023 020A2D15
	v_cndmask_b32_e64 v35, -1, v35, s54                        // 000000A196D0: D5010023 00DA46C1
	v_add_co_u32 v19, vcc_lo, v19, 8                           // 000000A196D8: D7006A13 00011113
	s_mul_i32 s52, s40, 8                                      // 000000A196E0: 96348828
	v_add_nc_u32_e64 v20, v20, s52                             // 000000A196E4: D5250014 00006914
	s_mul_i32 s52, s38, 8                                      // 000000A196EC: 96348826
	v_add_nc_u32_e64 v21, v21, s52                             // 000000A196F0: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000A196F8: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19700: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19708: 8B363634
	v_add_lshl_u32 v36, v21, v18, 2                            // 000000A1970C: D6470024 020A2515
	v_cndmask_b32_e64 v36, -1, v36, s54                        // 000000A19714: D5010024 00DA48C1
	v_add_co_u32 v22, vcc_lo, v18, 8                           // 000000A1971C: D7006A16 00011112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A19724: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A1972C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19734: 8B363634
	v_add_lshl_u32 v37, v21, v22, 2                            // 000000A19738: D6470025 020A2D15
	v_cndmask_b32_e64 v37, -1, v37, s54                        // 000000A19740: D5010025 00DA4AC1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000A19748: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A19750: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19758: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19760: 8B363634
	v_add_lshl_u32 v38, v21, v22, 2                            // 000000A19764: D6470026 020A2D15
	v_cndmask_b32_e64 v38, -1, v38, s54                        // 000000A1976C: D5010026 00DA4CC1
	v_add_co_u32 v22, vcc_lo, v18, 24                          // 000000A19774: D7006A16 00013112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A1977C: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19784: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A1978C: 8B363634
	v_add_lshl_u32 v39, v21, v22, 2                            // 000000A19790: D6470027 020A2D15
	v_cndmask_b32_e64 v39, -1, v39, s54                        // 000000A19798: D5010027 00DA4EC1
	v_mul_f32_e32 v0, s36, v0                                  // 000000A197A0: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000A197A4: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000A197A8: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000A197AC: 10060624
	v_mul_f32_e32 v4, s36, v4                                  // 000000A197B0: 10080824
	v_mul_f32_e32 v5, s36, v5                                  // 000000A197B4: 100A0A24
	v_mul_f32_e32 v6, s36, v6                                  // 000000A197B8: 100C0C24
	v_mul_f32_e32 v7, s36, v7                                  // 000000A197BC: 100E0E24
	v_mul_f32_e32 v8, s36, v8                                  // 000000A197C0: 10101024
	v_mul_f32_e32 v9, s36, v9                                  // 000000A197C4: 10121224
	v_mul_f32_e32 v10, s36, v10                                // 000000A197C8: 10141424
	v_mul_f32_e32 v11, s36, v11                                // 000000A197CC: 10161624
	v_mul_f32_e32 v12, s36, v12                                // 000000A197D0: 10181824
	v_mul_f32_e32 v13, s36, v13                                // 000000A197D4: 101A1A24
	v_mul_f32_e32 v14, s36, v14                                // 000000A197D8: 101C1C24
	v_mul_f32_e32 v15, s36, v15                                // 000000A197DC: 101E1E24
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000A197E0: E0680000 80440018
	buffer_store_b32 v1, v25, s[16:19], 0 offen                // 000000A197E8: E0680000 80440119
	buffer_store_b32 v2, v26, s[16:19], 0 offen                // 000000A197F0: E0680000 8044021A
	buffer_store_b32 v3, v27, s[16:19], 0 offen                // 000000A197F8: E0680000 8044031B
	buffer_store_b32 v4, v28, s[16:19], 0 offen                // 000000A19800: E0680000 8044041C
	buffer_store_b32 v5, v29, s[16:19], 0 offen                // 000000A19808: E0680000 8044051D
	buffer_store_b32 v6, v30, s[16:19], 0 offen                // 000000A19810: E0680000 8044061E
	buffer_store_b32 v7, v31, s[16:19], 0 offen                // 000000A19818: E0680000 8044071F
	buffer_store_b32 v8, v32, s[16:19], 0 offen                // 000000A19820: E0680000 80440820
	buffer_store_b32 v9, v33, s[16:19], 0 offen                // 000000A19828: E0680000 80440921
	buffer_store_b32 v10, v34, s[16:19], 0 offen               // 000000A19830: E0680000 80440A22
	buffer_store_b32 v11, v35, s[16:19], 0 offen               // 000000A19838: E0680000 80440B23
	buffer_store_b32 v12, v36, s[16:19], 0 offen               // 000000A19840: E0680000 80440C24
	buffer_store_b32 v13, v37, s[16:19], 0 offen               // 000000A19848: E0680000 80440D25
	buffer_store_b32 v14, v38, s[16:19], 0 offen               // 000000A19850: E0680000 80440E26
	buffer_store_b32 v15, v39, s[16:19], 0 offen               // 000000A19858: E0680000 80440F27
	s_branch label_0047                                        // 000000A19860: BFA00218

0000000000a19864 <GW_Beta_43>:
	s_and_b32 s52, 31, s46                                     // 000000A19864: 8B342E9F
	s_add_u32 s53, -1, s50                                     // 000000A19868: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000A1986C: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000A19870: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000A19874: B5B40000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000A19878: BFA2009D
	s_and_b32 s52, 31, s47                                     // 000000A1987C: 8B342F9F
	s_add_u32 s53, -1, s51                                     // 000000A19880: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000A19884: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000A19888: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000A1988C: B5B40000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000A19890: BFA20097

0000000000a19894 <GW_B1_E0_38>:
	v_add_lshl_u32 v25, v20, v18, 2                            // 000000A19894: D6470019 020A2514
	buffer_load_b32 v26, v25, s[20:23], 0 offen                // 000000A1989C: E0500000 80451A19
	buffer_load_b32 v27, v25, s[20:23], 0 offen offset:32      // 000000A198A4: E0500020 80451B19
	buffer_load_b32 v28, v25, s[20:23], 0 offen offset:64      // 000000A198AC: E0500040 80451C19
	buffer_load_b32 v29, v25, s[20:23], 0 offen offset:96      // 000000A198B4: E0500060 80451D19
	s_mul_i32 s34, s40, 32                                     // 000000A198BC: 9622A028
	s_add_u32 s20, s20, s34                                    // 000000A198C0: 80142214
	s_addc_u32 s21, s21, 0                                     // 000000A198C4: 82158015
	buffer_load_b32 v30, v25, s[20:23], 0 offen                // 000000A198C8: E0500000 80451E19
	buffer_load_b32 v31, v25, s[20:23], 0 offen offset:32      // 000000A198D0: E0500020 80451F19
	buffer_load_b32 v32, v25, s[20:23], 0 offen offset:64      // 000000A198D8: E0500040 80452019
	buffer_load_b32 v33, v25, s[20:23], 0 offen offset:96      // 000000A198E0: E0500060 80452119
	s_mul_i32 s34, s40, 32                                     // 000000A198E8: 9622A028
	s_add_u32 s20, s20, s34                                    // 000000A198EC: 80142214
	s_addc_u32 s21, s21, 0                                     // 000000A198F0: 82158015
	buffer_load_b32 v34, v25, s[20:23], 0 offen                // 000000A198F4: E0500000 80452219
	buffer_load_b32 v35, v25, s[20:23], 0 offen offset:32      // 000000A198FC: E0500020 80452319
	buffer_load_b32 v36, v25, s[20:23], 0 offen offset:64      // 000000A19904: E0500040 80452419
	buffer_load_b32 v37, v25, s[20:23], 0 offen offset:96      // 000000A1990C: E0500060 80452519
	s_mul_i32 s34, s40, 32                                     // 000000A19914: 9622A028
	s_add_u32 s20, s20, s34                                    // 000000A19918: 80142214
	s_addc_u32 s21, s21, 0                                     // 000000A1991C: 82158015
	buffer_load_b32 v38, v25, s[20:23], 0 offen                // 000000A19920: E0500000 80452619
	buffer_load_b32 v39, v25, s[20:23], 0 offen offset:32      // 000000A19928: E0500020 80452719
	buffer_load_b32 v40, v25, s[20:23], 0 offen offset:64      // 000000A19930: E0500040 80452819
	buffer_load_b32 v41, v25, s[20:23], 0 offen offset:96      // 000000A19938: E0500060 80452919
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000A19940: D6470018 020A2515
	v_mul_f32_e32 v0, s36, v0                                  // 000000A19948: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000A1994C: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000A19950: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000A19954: 10060624
	v_mul_f32_e32 v4, s36, v4                                  // 000000A19958: 10080824
	v_mul_f32_e32 v5, s36, v5                                  // 000000A1995C: 100A0A24
	v_mul_f32_e32 v6, s36, v6                                  // 000000A19960: 100C0C24
	v_mul_f32_e32 v7, s36, v7                                  // 000000A19964: 100E0E24
	v_mul_f32_e32 v8, s36, v8                                  // 000000A19968: 10101024
	v_mul_f32_e32 v9, s36, v9                                  // 000000A1996C: 10121224
	v_mul_f32_e32 v10, s36, v10                                // 000000A19970: 10141424
	v_mul_f32_e32 v11, s36, v11                                // 000000A19974: 10161624
	v_mul_f32_e32 v12, s36, v12                                // 000000A19978: 10181824
	v_mul_f32_e32 v13, s36, v13                                // 000000A1997C: 101A1A24
	v_mul_f32_e32 v14, s36, v14                                // 000000A19980: 101C1C24
	v_mul_f32_e32 v15, s36, v15                                // 000000A19984: 101E1E24
	s_waitcnt vmcnt(15)                                        // 000000A19988: BF893FF7
	v_fmac_f32_e64 v0, v26, s37                                // 000000A1998C: D52B0000 00004B1A
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000A19994: E0680000 80440018
	s_waitcnt vmcnt(14)                                        // 000000A1999C: BF893BF7
	v_fmac_f32_e64 v1, v27, s37                                // 000000A199A0: D52B0001 00004B1B
	buffer_store_b32 v1, v24, s[16:19], 0 offen offset:32      // 000000A199A8: E0680020 80440118
	s_waitcnt vmcnt(13)                                        // 000000A199B0: BF8937F7
	v_fmac_f32_e64 v2, v28, s37                                // 000000A199B4: D52B0002 00004B1C
	buffer_store_b32 v2, v24, s[16:19], 0 offen offset:64      // 000000A199BC: E0680040 80440218
	s_waitcnt vmcnt(12)                                        // 000000A199C4: BF8933F7
	v_fmac_f32_e64 v3, v29, s37                                // 000000A199C8: D52B0003 00004B1D
	buffer_store_b32 v3, v24, s[16:19], 0 offen offset:96      // 000000A199D0: E0680060 80440318
	s_waitcnt vmcnt(11)                                        // 000000A199D8: BF892FF7
	v_fmac_f32_e64 v4, v30, s37                                // 000000A199DC: D52B0004 00004B1E
	s_mul_i32 s34, s38, 32                                     // 000000A199E4: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000A199E8: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000A199EC: 82118011
	buffer_store_b32 v4, v24, s[16:19], 0 offen                // 000000A199F0: E0680000 80440418
	s_waitcnt vmcnt(10)                                        // 000000A199F8: BF892BF7
	v_fmac_f32_e64 v5, v31, s37                                // 000000A199FC: D52B0005 00004B1F
	buffer_store_b32 v5, v24, s[16:19], 0 offen offset:32      // 000000A19A04: E0680020 80440518
	s_waitcnt vmcnt(9)                                         // 000000A19A0C: BF8927F7
	v_fmac_f32_e64 v6, v32, s37                                // 000000A19A10: D52B0006 00004B20
	buffer_store_b32 v6, v24, s[16:19], 0 offen offset:64      // 000000A19A18: E0680040 80440618
	s_waitcnt vmcnt(8)                                         // 000000A19A20: BF8923F7
	v_fmac_f32_e64 v7, v33, s37                                // 000000A19A24: D52B0007 00004B21
	buffer_store_b32 v7, v24, s[16:19], 0 offen offset:96      // 000000A19A2C: E0680060 80440718
	s_waitcnt vmcnt(7)                                         // 000000A19A34: BF891FF7
	v_fmac_f32_e64 v8, v34, s37                                // 000000A19A38: D52B0008 00004B22
	s_mul_i32 s34, s38, 32                                     // 000000A19A40: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000A19A44: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000A19A48: 82118011
	buffer_store_b32 v8, v24, s[16:19], 0 offen                // 000000A19A4C: E0680000 80440818
	s_waitcnt vmcnt(6)                                         // 000000A19A54: BF891BF7
	v_fmac_f32_e64 v9, v35, s37                                // 000000A19A58: D52B0009 00004B23
	buffer_store_b32 v9, v24, s[16:19], 0 offen offset:32      // 000000A19A60: E0680020 80440918
	s_waitcnt vmcnt(5)                                         // 000000A19A68: BF8917F7
	v_fmac_f32_e64 v10, v36, s37                               // 000000A19A6C: D52B000A 00004B24
	buffer_store_b32 v10, v24, s[16:19], 0 offen offset:64     // 000000A19A74: E0680040 80440A18
	s_waitcnt vmcnt(4)                                         // 000000A19A7C: BF8913F7
	v_fmac_f32_e64 v11, v37, s37                               // 000000A19A80: D52B000B 00004B25
	buffer_store_b32 v11, v24, s[16:19], 0 offen offset:96     // 000000A19A88: E0680060 80440B18
	s_waitcnt vmcnt(3)                                         // 000000A19A90: BF890FF7
	v_fmac_f32_e64 v12, v38, s37                               // 000000A19A94: D52B000C 00004B26
	s_mul_i32 s34, s38, 32                                     // 000000A19A9C: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000A19AA0: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000A19AA4: 82118011
	buffer_store_b32 v12, v24, s[16:19], 0 offen               // 000000A19AA8: E0680000 80440C18
	s_waitcnt vmcnt(2)                                         // 000000A19AB0: BF890BF7
	v_fmac_f32_e64 v13, v39, s37                               // 000000A19AB4: D52B000D 00004B27
	buffer_store_b32 v13, v24, s[16:19], 0 offen offset:32     // 000000A19ABC: E0680020 80440D18
	s_waitcnt vmcnt(1)                                         // 000000A19AC4: BF8907F7
	v_fmac_f32_e64 v14, v40, s37                               // 000000A19AC8: D52B000E 00004B28
	buffer_store_b32 v14, v24, s[16:19], 0 offen offset:64     // 000000A19AD0: E0680040 80440E18
	s_waitcnt vmcnt(0)                                         // 000000A19AD8: BF8903F7
	v_fmac_f32_e64 v15, v41, s37                               // 000000A19ADC: D52B000F 00004B29
	buffer_store_b32 v15, v24, s[16:19], 0 offen offset:96     // 000000A19AE4: E0680060 80440F18
	s_branch label_0047                                        // 000000A19AEC: BFA00175

0000000000a19af0 <GW_B1_E1_41>:
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000A19AF0: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19AF8: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19B00: 8B363634
	v_add_lshl_u32 v24, v20, v18, 2                            // 000000A19B04: D6470018 020A2514
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000A19B0C: D5010018 00DA30C1
	buffer_load_b32 v25, v24, s[20:23], 0 offen                // 000000A19B14: E0500000 80451918
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000A19B1C: D6470018 020A2515
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000A19B24: D5010018 00DA30C1
	v_add_co_u32 v22, vcc_lo, v18, 8                           // 000000A19B2C: D7006A16 00011112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A19B34: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19B3C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19B44: 8B363634
	v_add_lshl_u32 v26, v20, v22, 2                            // 000000A19B48: D647001A 020A2D14
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000A19B50: D501001A 00DA34C1
	buffer_load_b32 v27, v26, s[20:23], 0 offen                // 000000A19B58: E0500000 80451B1A
	v_add_lshl_u32 v26, v21, v22, 2                            // 000000A19B60: D647001A 020A2D15
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000A19B68: D501001A 00DA34C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000A19B70: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A19B78: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19B80: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19B88: 8B363634
	v_add_lshl_u32 v28, v20, v22, 2                            // 000000A19B8C: D647001C 020A2D14
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000A19B94: D501001C 00DA38C1
	buffer_load_b32 v29, v28, s[20:23], 0 offen                // 000000A19B9C: E0500000 80451D1C
	v_add_lshl_u32 v28, v21, v22, 2                            // 000000A19BA4: D647001C 020A2D15
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000A19BAC: D501001C 00DA38C1
	v_add_co_u32 v22, vcc_lo, v18, 24                          // 000000A19BB4: D7006A16 00013112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A19BBC: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19BC4: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19BCC: 8B363634
	v_add_lshl_u32 v30, v20, v22, 2                            // 000000A19BD0: D647001E 020A2D14
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000A19BD8: D501001E 00DA3CC1
	buffer_load_b32 v31, v30, s[20:23], 0 offen                // 000000A19BE0: E0500000 80451F1E
	v_add_lshl_u32 v30, v21, v22, 2                            // 000000A19BE8: D647001E 020A2D15
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000A19BF0: D501001E 00DA3CC1
	v_add_co_u32 v19, vcc_lo, v19, 8                           // 000000A19BF8: D7006A13 00011113
	s_mul_i32 s52, s40, 8                                      // 000000A19C00: 96348828
	v_add_nc_u32_e64 v20, v20, s52                             // 000000A19C04: D5250014 00006914
	s_mul_i32 s52, s38, 8                                      // 000000A19C0C: 96348826
	v_add_nc_u32_e64 v21, v21, s52                             // 000000A19C10: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000A19C18: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19C20: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19C28: 8B363634
	v_add_lshl_u32 v32, v20, v18, 2                            // 000000A19C2C: D6470020 020A2514
	v_cndmask_b32_e64 v32, -1, v32, s54                        // 000000A19C34: D5010020 00DA40C1
	buffer_load_b32 v33, v32, s[20:23], 0 offen                // 000000A19C3C: E0500000 80452120
	v_add_lshl_u32 v32, v21, v18, 2                            // 000000A19C44: D6470020 020A2515
	v_cndmask_b32_e64 v32, -1, v32, s54                        // 000000A19C4C: D5010020 00DA40C1
	v_add_co_u32 v22, vcc_lo, v18, 8                           // 000000A19C54: D7006A16 00011112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A19C5C: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19C64: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19C6C: 8B363634
	v_add_lshl_u32 v34, v20, v22, 2                            // 000000A19C70: D6470022 020A2D14
	v_cndmask_b32_e64 v34, -1, v34, s54                        // 000000A19C78: D5010022 00DA44C1
	buffer_load_b32 v35, v34, s[20:23], 0 offen                // 000000A19C80: E0500000 80452322
	v_add_lshl_u32 v34, v21, v22, 2                            // 000000A19C88: D6470022 020A2D15
	v_cndmask_b32_e64 v34, -1, v34, s54                        // 000000A19C90: D5010022 00DA44C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000A19C98: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A19CA0: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19CA8: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19CB0: 8B363634
	v_add_lshl_u32 v36, v20, v22, 2                            // 000000A19CB4: D6470024 020A2D14
	v_cndmask_b32_e64 v36, -1, v36, s54                        // 000000A19CBC: D5010024 00DA48C1
	buffer_load_b32 v37, v36, s[20:23], 0 offen                // 000000A19CC4: E0500000 80452524
	v_add_lshl_u32 v36, v21, v22, 2                            // 000000A19CCC: D6470024 020A2D15
	v_cndmask_b32_e64 v36, -1, v36, s54                        // 000000A19CD4: D5010024 00DA48C1
	v_add_co_u32 v22, vcc_lo, v18, 24                          // 000000A19CDC: D7006A16 00013112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A19CE4: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19CEC: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19CF4: 8B363634
	v_add_lshl_u32 v38, v20, v22, 2                            // 000000A19CF8: D6470026 020A2D14
	v_cndmask_b32_e64 v38, -1, v38, s54                        // 000000A19D00: D5010026 00DA4CC1
	buffer_load_b32 v39, v38, s[20:23], 0 offen                // 000000A19D08: E0500000 80452726
	v_add_lshl_u32 v38, v21, v22, 2                            // 000000A19D10: D6470026 020A2D15
	v_cndmask_b32_e64 v38, -1, v38, s54                        // 000000A19D18: D5010026 00DA4CC1
	v_add_co_u32 v19, vcc_lo, v19, 8                           // 000000A19D20: D7006A13 00011113
	s_mul_i32 s52, s40, 8                                      // 000000A19D28: 96348828
	v_add_nc_u32_e64 v20, v20, s52                             // 000000A19D2C: D5250014 00006914
	s_mul_i32 s52, s38, 8                                      // 000000A19D34: 96348826
	v_add_nc_u32_e64 v21, v21, s52                             // 000000A19D38: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000A19D40: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19D48: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19D50: 8B363634
	v_add_lshl_u32 v40, v20, v18, 2                            // 000000A19D54: D6470028 020A2514
	v_cndmask_b32_e64 v40, -1, v40, s54                        // 000000A19D5C: D5010028 00DA50C1
	buffer_load_b32 v41, v40, s[20:23], 0 offen                // 000000A19D64: E0500000 80452928
	v_add_lshl_u32 v40, v21, v18, 2                            // 000000A19D6C: D6470028 020A2515
	v_cndmask_b32_e64 v40, -1, v40, s54                        // 000000A19D74: D5010028 00DA50C1
	v_add_co_u32 v22, vcc_lo, v18, 8                           // 000000A19D7C: D7006A16 00011112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A19D84: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19D8C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19D94: 8B363634
	v_add_lshl_u32 v42, v20, v22, 2                            // 000000A19D98: D647002A 020A2D14
	v_cndmask_b32_e64 v42, -1, v42, s54                        // 000000A19DA0: D501002A 00DA54C1
	buffer_load_b32 v43, v42, s[20:23], 0 offen                // 000000A19DA8: E0500000 80452B2A
	v_add_lshl_u32 v42, v21, v22, 2                            // 000000A19DB0: D647002A 020A2D15
	v_cndmask_b32_e64 v42, -1, v42, s54                        // 000000A19DB8: D501002A 00DA54C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000A19DC0: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A19DC8: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19DD0: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19DD8: 8B363634
	v_add_lshl_u32 v44, v20, v22, 2                            // 000000A19DDC: D647002C 020A2D14
	v_cndmask_b32_e64 v44, -1, v44, s54                        // 000000A19DE4: D501002C 00DA58C1
	buffer_load_b32 v45, v44, s[20:23], 0 offen                // 000000A19DEC: E0500000 80452D2C
	v_add_lshl_u32 v44, v21, v22, 2                            // 000000A19DF4: D647002C 020A2D15
	v_cndmask_b32_e64 v44, -1, v44, s54                        // 000000A19DFC: D501002C 00DA58C1
	v_add_co_u32 v22, vcc_lo, v18, 24                          // 000000A19E04: D7006A16 00013112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A19E0C: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19E14: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19E1C: 8B363634
	v_add_lshl_u32 v46, v20, v22, 2                            // 000000A19E20: D647002E 020A2D14
	v_cndmask_b32_e64 v46, -1, v46, s54                        // 000000A19E28: D501002E 00DA5CC1
	buffer_load_b32 v47, v46, s[20:23], 0 offen                // 000000A19E30: E0500000 80452F2E
	v_add_lshl_u32 v46, v21, v22, 2                            // 000000A19E38: D647002E 020A2D15
	v_cndmask_b32_e64 v46, -1, v46, s54                        // 000000A19E40: D501002E 00DA5CC1
	v_mul_f32_e32 v0, s36, v0                                  // 000000A19E48: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000A19E4C: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000A19E50: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000A19E54: 10060624
	v_mul_f32_e32 v4, s36, v4                                  // 000000A19E58: 10080824
	v_mul_f32_e32 v5, s36, v5                                  // 000000A19E5C: 100A0A24
	v_mul_f32_e32 v6, s36, v6                                  // 000000A19E60: 100C0C24
	v_mul_f32_e32 v7, s36, v7                                  // 000000A19E64: 100E0E24
	v_mul_f32_e32 v8, s36, v8                                  // 000000A19E68: 10101024
	v_mul_f32_e32 v9, s36, v9                                  // 000000A19E6C: 10121224
	v_mul_f32_e32 v10, s36, v10                                // 000000A19E70: 10141424
	v_mul_f32_e32 v11, s36, v11                                // 000000A19E74: 10161624
	s_waitcnt vmcnt(0)                                         // 000000A19E78: BF8903F7
	s_waitcnt_vscnt null, 0x0                                  // 000000A19E7C: BC7C0000
	v_fmac_f32_e64 v0, v25, s37                                // 000000A19E80: D52B0000 00004B19
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000A19E88: E0680000 80440018
	v_fmac_f32_e64 v1, v27, s37                                // 000000A19E90: D52B0001 00004B1B
	buffer_store_b32 v1, v26, s[16:19], 0 offen                // 000000A19E98: E0680000 8044011A
	v_fmac_f32_e64 v2, v29, s37                                // 000000A19EA0: D52B0002 00004B1D
	buffer_store_b32 v2, v28, s[16:19], 0 offen                // 000000A19EA8: E0680000 8044021C
	v_fmac_f32_e64 v3, v31, s37                                // 000000A19EB0: D52B0003 00004B1F
	buffer_store_b32 v3, v30, s[16:19], 0 offen                // 000000A19EB8: E0680000 8044031E
	v_fmac_f32_e64 v4, v33, s37                                // 000000A19EC0: D52B0004 00004B21
	buffer_store_b32 v4, v32, s[16:19], 0 offen                // 000000A19EC8: E0680000 80440420
	v_fmac_f32_e64 v5, v35, s37                                // 000000A19ED0: D52B0005 00004B23
	buffer_store_b32 v5, v34, s[16:19], 0 offen                // 000000A19ED8: E0680000 80440522
	v_fmac_f32_e64 v6, v37, s37                                // 000000A19EE0: D52B0006 00004B25
	buffer_store_b32 v6, v36, s[16:19], 0 offen                // 000000A19EE8: E0680000 80440624
	v_fmac_f32_e64 v7, v39, s37                                // 000000A19EF0: D52B0007 00004B27
	buffer_store_b32 v7, v38, s[16:19], 0 offen                // 000000A19EF8: E0680000 80440726
	v_fmac_f32_e64 v8, v41, s37                                // 000000A19F00: D52B0008 00004B29
	buffer_store_b32 v8, v40, s[16:19], 0 offen                // 000000A19F08: E0680000 80440828
	v_fmac_f32_e64 v9, v43, s37                                // 000000A19F10: D52B0009 00004B2B
	buffer_store_b32 v9, v42, s[16:19], 0 offen                // 000000A19F18: E0680000 8044092A
	v_fmac_f32_e64 v10, v45, s37                               // 000000A19F20: D52B000A 00004B2D
	buffer_store_b32 v10, v44, s[16:19], 0 offen               // 000000A19F28: E0680000 80440A2C
	v_fmac_f32_e64 v11, v47, s37                               // 000000A19F30: D52B000B 00004B2F
	buffer_store_b32 v11, v46, s[16:19], 0 offen               // 000000A19F38: E0680000 80440B2E
	v_add_co_u32 v19, vcc_lo, v19, 8                           // 000000A19F40: D7006A13 00011113
	s_mul_i32 s52, s40, 8                                      // 000000A19F48: 96348828
	v_add_nc_u32_e64 v20, v20, s52                             // 000000A19F4C: D5250014 00006914
	s_mul_i32 s52, s38, 8                                      // 000000A19F54: 96348826
	v_add_nc_u32_e64 v21, v21, s52                             // 000000A19F58: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000A19F60: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19F68: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19F70: 8B363634
	v_add_lshl_u32 v24, v20, v18, 2                            // 000000A19F74: D6470018 020A2514
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000A19F7C: D5010018 00DA30C1
	buffer_load_b32 v25, v24, s[20:23], 0 offen                // 000000A19F84: E0500000 80451918
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000A19F8C: D6470018 020A2515
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000A19F94: D5010018 00DA30C1
	v_add_co_u32 v22, vcc_lo, v18, 8                           // 000000A19F9C: D7006A16 00011112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A19FA4: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19FAC: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19FB4: 8B363634
	v_add_lshl_u32 v26, v20, v22, 2                            // 000000A19FB8: D647001A 020A2D14
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000A19FC0: D501001A 00DA34C1
	buffer_load_b32 v27, v26, s[20:23], 0 offen                // 000000A19FC8: E0500000 80451B1A
	v_add_lshl_u32 v26, v21, v22, 2                            // 000000A19FD0: D647001A 020A2D15
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000A19FD8: D501001A 00DA34C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000A19FE0: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A19FE8: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A19FF0: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A19FF8: 8B363634
	v_add_lshl_u32 v28, v20, v22, 2                            // 000000A19FFC: D647001C 020A2D14
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000A1A004: D501001C 00DA38C1
	buffer_load_b32 v29, v28, s[20:23], 0 offen                // 000000A1A00C: E0500000 80451D1C
	v_add_lshl_u32 v28, v21, v22, 2                            // 000000A1A014: D647001C 020A2D15
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000A1A01C: D501001C 00DA38C1
	v_add_co_u32 v22, vcc_lo, v18, 24                          // 000000A1A024: D7006A16 00013112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000A1A02C: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000A1A034: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000A1A03C: 8B363634
	v_add_lshl_u32 v30, v20, v22, 2                            // 000000A1A040: D647001E 020A2D14
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000A1A048: D501001E 00DA3CC1
	buffer_load_b32 v31, v30, s[20:23], 0 offen                // 000000A1A050: E0500000 80451F1E
	v_add_lshl_u32 v30, v21, v22, 2                            // 000000A1A058: D647001E 020A2D15
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000A1A060: D501001E 00DA3CC1
	v_mul_f32_e32 v12, s36, v12                                // 000000A1A068: 10181824
	v_mul_f32_e32 v13, s36, v13                                // 000000A1A06C: 101A1A24
	v_mul_f32_e32 v14, s36, v14                                // 000000A1A070: 101C1C24
	v_mul_f32_e32 v15, s36, v15                                // 000000A1A074: 101E1E24
	s_waitcnt vmcnt(0)                                         // 000000A1A078: BF8903F7
	s_waitcnt_vscnt null, 0x0                                  // 000000A1A07C: BC7C0000
	v_fmac_f32_e64 v12, v25, s37                               // 000000A1A080: D52B000C 00004B19
	buffer_store_b32 v12, v24, s[16:19], 0 offen               // 000000A1A088: E0680000 80440C18
	v_fmac_f32_e64 v13, v27, s37                               // 000000A1A090: D52B000D 00004B1B
	buffer_store_b32 v13, v26, s[16:19], 0 offen               // 000000A1A098: E0680000 80440D1A
	v_fmac_f32_e64 v14, v29, s37                               // 000000A1A0A0: D52B000E 00004B1D
	buffer_store_b32 v14, v28, s[16:19], 0 offen               // 000000A1A0A8: E0680000 80440E1C
	v_fmac_f32_e64 v15, v31, s37                               // 000000A1A0B0: D52B000F 00004B1F
	buffer_store_b32 v15, v30, s[16:19], 0 offen               // 000000A1A0B8: E0680000 80440F1E
	s_branch label_0047                                        // 000000A1A0C0: BFA00000

0000000000a1a0c4 <label_GW_End_42>:
	s_endpgm                                                   // 000000A1A0C4: BFB00000
		...
