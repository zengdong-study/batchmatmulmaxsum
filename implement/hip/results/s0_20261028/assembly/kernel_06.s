
/root/batchmatmulmaxsum/implement/hip/results/s0_20261028/code_objects/_code_object0002.o:	file format elf64-amdgpu

Disassembly of section .text:

0000000000a53a00 <Cijk_Ailk_Bljk_SB_MT32x16x16_SN_1LDSB0_APM1_ABV0_ACED0_AF0EM1_AF1EM1_AMAS0_ASE_ASGT_ASLT_ASM_ASAE01_ASCE01_ASEM1_AAC0_BL1_BS1_CLR0_DTLA0_DTLB0_DTVA0_DTVB0_DVO0_ETSP_EPS1_ELFLR0_EMLL0_FSSC10_FL0_GLVWA1_GLVWB1_GRCGA1_GRCGB1_GRPM1_GRVW1_GSU1_GSUASB_GLS0_ISA1100_IU1_K1_KLA_LBSPPA0_LBSPPB0_LPA0_LPB0_LDL1_LRVW1_LWPMn1_LDW0_FMA_MIAV0_MDA2_MO40_MMFGLC_MKFGSU256_NTA0_NTB0_NTC0_NTD0_NEPBS0_NLCA1_NLCB1_ONLL1_OPLV0_PK0_PAP0_PGR1_PLR1_PKA0_SIA1_SLW1_SS0_SU0_SUM0_SUS0_SCIUI1_SPO0_SRVW0_SSO0_SVW4_SNLL0_TSGRA0_TSGRB0_TT2_2_TLDS0_UMLDSA0_UMLDSB0_U64SL1_USFGROn1_VAW1_VSn1_VW1_VWB1_VFLRP0_WSGRA0_WSGRB0_WS32_WG16_8_1_WGM4_preloaded>:
	s_mov_b32 vcc_hi, 0                                        // 000000A53A00: BEEB0080
	s_load_b512 s[24:39], s[0:1], null                         // 000000A53A04: F4100600 F8000000
	s_load_b256 s[40:47], s[0:1], 0x40                         // 000000A53A0C: F40C0A00 F8000040
	s_load_b128 s[48:51], s[0:1], 0x60                         // 000000A53A14: F4080C00 F8000060
	s_load_b64 s[52:53], s[0:1], 0x70                          // 000000A53A1C: F4040D00 F8000070
	s_load_b32 s54, s[0:1], 0x78                               // 000000A53A24: F4000D80 F8000078
	s_mov_b32 m0, 0x1c00                                       // 000000A53A2C: BEFD00FF 00001C00
	v_mov_b32_e32 v28, v0                                      // 000000A53A34: 7E380300
	v_lshrrev_b32_e32 v0, 4, v28                               // 000000A53A38: 32003884
	v_and_b32_e32 v1, 15, v28                                  // 000000A53A3C: 3602388F
	v_lshrrev_b32_e32 v2, 3, v0                                // 000000A53A40: 32040083
	v_and_b32_e32 v3, 7, v0                                    // 000000A53A44: 36060087
	v_lshrrev_b32_e32 v0, 7, v28                               // 000000A53A48: 32003887
	v_lshlrev_b32_e32 v0, 5, v0                                // 000000A53A4C: 30000085
	v_add_lshl_u32 v26, v0, v1, 2                              // 000000A53A50: D647001A 020A0300
	v_lshrrev_b32_e32 v0, 7, v28                               // 000000A53A58: 32003887
	v_lshlrev_b32_e32 v0, 4, v0                                // 000000A53A5C: 30000084
	v_add_lshl_u32 v27, v0, v3, 2                              // 000000A53A60: D647001B 020A0700
	v_add_co_u32 v27, vcc_lo, 0x800, v27                       // 000000A53A68: D7006A1B 000236FF 00000800
	v_lshrrev_b32_e32 v1, 5, v28                               // 000000A53A74: 32023885
	v_and_b32_e32 v0, 31, v28                                  // 000000A53A78: 3600389F
	v_lshrrev_b32_e32 v2, 4, v28                               // 000000A53A7C: 32043884
	v_and_b32_e32 v3, 15, v28                                  // 000000A53A80: 3606388F
	v_mul_u32_u24_e32 v15, 32, v1                              // 000000A53A84: 161E02A0
	v_add_lshl_u32 v15, v0, v15, 2                             // 000000A53A88: D647000F 020A1F00
	v_mul_u32_u24_e32 v16, 16, v3                              // 000000A53A90: 16200690
	v_add_lshl_u32 v16, v2, v16, 2                             // 000000A53A94: D6470010 020A2102
	v_add_co_u32 v16, vcc_lo, 0x800, v16                       // 000000A53A9C: D7006A10 000220FF 00000800
	s_waitcnt lgkmcnt(0)                                       // 000000A53AA8: BF89FC07
	s_mov_b64 s[20:21], s[30:31]                               // 000000A53AAC: BE94011E
	s_mov_b64 s[16:17], s[28:29]                               // 000000A53AB0: BE90011C
	s_sub_u32 s8, s32, 4                                       // 000000A53AB4: 80888420
	s_subb_u32 s9, s33, 0                                      // 000000A53AB8: 82898021
	s_sub_u32 s12, s34, 4                                      // 000000A53ABC: 808C8422
	s_subb_u32 s13, s35, 0                                     // 000000A53AC0: 828D8023
	v_cmp_eq_f32_e64 vcc_lo, s36, 0                            // 000000A53AC4: D412006A 00010024
	s_cbranch_vccz label_AlphaNonZero                          // 000000A53ACC: BFA30001
	s_mov_b32 s49, 0                                           // 000000A53AD0: BEB10080

0000000000a53ad4 <label_AlphaNonZero>:
	s_mov_b32 s61, 0x20000001                                  // 000000A53AD4: BEBD00FF 20000001
	s_mul_hi_u32 s59, s3, s61                                  // 000000A53ADC: 96BB3D03
	s_mul_i32 s58, s3, s61                                     // 000000A53AE0: 963A3D03
	s_lshr_b64 s[58:59], s[58:59], 31                          // 000000A53AE4: 85BA9F3A
	s_mul_i32 s59, s58, 4                                      // 000000A53AE8: 963B843A
	s_sub_u32 s59, s3, s59                                     // 000000A53AEC: 80BB3B03
	s_mul_i32 s59, s59, s50                                    // 000000A53AF0: 963B323B
	s_add_u32 s59, s59, s2                                     // 000000A53AF4: 803B023B
	s_cmp_ge_u32 s58, s52                                      // 000000A53AF8: BF09343A
	s_cmov_b32 s61, s54                                        // 000000A53AFC: BEBD0236
	s_cselect_b32 s60, s53, 4                                  // 000000A53B00: 983C8435
	s_mul_hi_u32 s3, s59, s61                                  // 000000A53B04: 96833D3B
	s_mul_i32 s2, s59, s61                                     // 000000A53B08: 96023D3B
	s_lshr_b64 s[2:3], s[2:3], 31                              // 000000A53B0C: 85829F02
	s_mul_i32 s3, s2, s60                                      // 000000A53B10: 96033C02
	s_sub_u32 s3, s59, s3                                      // 000000A53B14: 8083033B
	s_mul_i32 s58, s58, 4                                      // 000000A53B18: 963A843A
	s_add_u32 s3, s3, s58                                      // 000000A53B1C: 80033A03
	v_mul_lo_u32 v6, s42, v1                                   // 000000A53B20: D72C0006 0002022A
	v_add_co_u32 v17, vcc_lo, v0, v6                           // 000000A53B28: D7006A11 00020D00
	v_add_nc_u32_e32 v17, 1, v17                               // 000000A53B30: 4A222281
	v_lshlrev_b32_e32 v17, 2, v17                              // 000000A53B34: 30222282
	s_mul_i32 s31, s42, 4                                      // 000000A53B38: 961F842A
	s_lshl_b32 s31, s31, 2                                     // 000000A53B3C: 841F821F
	s_mul_i32 s32, s42, 8                                      // 000000A53B40: 9620882A
	s_lshl_b32 s32, s32, 2                                     // 000000A53B44: 84208220
	s_mul_i32 s33, s42, 12                                     // 000000A53B48: 96218C2A
	s_lshl_b32 s33, s33, 2                                     // 000000A53B4C: 84218221
	v_mul_lo_u32 v6, s44, v2                                   // 000000A53B50: D72C0006 0002042C
	v_add_co_u32 v18, vcc_lo, v3, v6                           // 000000A53B58: D7006A12 00020D03
	v_add_nc_u32_e32 v18, 1, v18                               // 000000A53B60: 4A242481
	v_lshlrev_b32_e32 v18, 2, v18                              // 000000A53B64: 30242482
	s_mul_i32 s34, s44, 8                                      // 000000A53B68: 9622882C
	s_lshl_b32 s34, s34, 2                                     // 000000A53B6C: 84228222
	s_mul_hi_u32 s61, s2, 32                                   // 000000A53B70: 96BDA002
	s_mul_i32 s60, s2, 32                                      // 000000A53B74: 963CA002
	s_sub_u32 s0, s24, s60                                     // 000000A53B78: 80803C18
	s_subb_u32 s1, s25, s61                                    // 000000A53B7C: 82813D19
	s_lshl_b64 s[0:1], s[0:1], 2                               // 000000A53B80: 84808200
	s_add_u32 s0, s0, 4                                        // 000000A53B84: 80008400
	s_addc_u32 s1, s1, 0                                       // 000000A53B88: 82018001
	s_cmp_eq_u32 s1, 0                                         // 000000A53B8C: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000A53B90: 980AC100
	s_mul_hi_u32 s59, s43, s4                                  // 000000A53B94: 96BB042B
	s_mul_i32 s58, s43, s4                                     // 000000A53B98: 963A042B
	s_add_u32 s60, s60, s58                                    // 000000A53B9C: 803C3A3C
	s_addc_u32 s61, s61, s59                                   // 000000A53BA0: 823D3B3D
	s_lshl_b64 s[60:61], s[60:61], 2                           // 000000A53BA4: 84BC823C
	s_add_u32 s8, s8, s60                                      // 000000A53BA8: 80083C08
	s_addc_u32 s9, s9, s61                                     // 000000A53BAC: 82093D09
	s_mov_b32 s11, 0x31004000                                  // 000000A53BB0: BE8B00FF 31004000
	s_mul_hi_u32 s61, s3, 16                                   // 000000A53BB8: 96BD9003
	s_mul_i32 s60, s3, 16                                      // 000000A53BBC: 963C9003
	s_mul_hi_u32 s61, s60, s44                                 // 000000A53BC0: 96BD2C3C
	s_mul_i32 s60, s60, s44                                    // 000000A53BC4: 963C2C3C
	s_sub_u32 s28, s26, s60                                    // 000000A53BC8: 809C3C1A
	s_subb_u32 s29, s27, s61                                   // 000000A53BCC: 829D3D1B
	s_lshl_b64 s[28:29], s[28:29], 2                           // 000000A53BD0: 849C821C
	s_add_u32 s28, s28, 4                                      // 000000A53BD4: 801C841C
	s_addc_u32 s29, s29, 0                                     // 000000A53BD8: 821D801D
	s_cmp_eq_u32 s29, 0                                        // 000000A53BDC: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000A53BE0: 980EC11C
	s_mul_hi_u32 s59, s45, s4                                  // 000000A53BE4: 96BB042D
	s_mul_i32 s58, s45, s4                                     // 000000A53BE8: 963A042D
	s_add_u32 s60, s60, s58                                    // 000000A53BEC: 803C3A3C
	s_addc_u32 s61, s61, s59                                   // 000000A53BF0: 823D3B3D
	s_lshl_b64 s[60:61], s[60:61], 2                           // 000000A53BF4: 84BC823C
	s_add_u32 s12, s12, s60                                    // 000000A53BF8: 800C3C0C
	s_addc_u32 s13, s13, s61                                   // 000000A53BFC: 820D3D0D
	s_mov_b32 s15, 0x31004000                                  // 000000A53C00: BE8F00FF 31004000
	s_mul_i32 s7, 64, s42                                      // 000000A53C08: 96072AC0
	s_mov_b32 s30, 64                                          // 000000A53C0C: BE9E00C0
	s_lshr_b32 s5, s49, 4                                      // 000000A53C10: 85058431
	s_mov_b32 s6, s5                                           // 000000A53C14: BE860005
	s_cmp_eq_u32 s5, 0                                         // 000000A53C18: BF068005
	s_cbranch_scc1 ShadowInitStart_10                          // 000000A53C1C: BFA20018
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000A53C20: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000A53C28: E0500000 1F421511
	buffer_load_b32 v22, v17, s[8:11], s32 offen               // 000000A53C30: E0500000 20421611
	buffer_load_b32 v23, v17, s[8:11], s33 offen               // 000000A53C38: E0500000 21421711
	buffer_load_b32 v24, v18, s[12:15], 0 offen                // 000000A53C40: E0500000 80431812
	buffer_load_b32 v25, v18, s[12:15], s34 offen              // 000000A53C48: E0500000 22431912
	s_add_u32 s8, s8, s7                                       // 000000A53C50: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000A53C54: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000A53C58: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000A53C5C: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000A53C60: BF068001
	s_cmov_b32 s10, s0                                         // 000000A53C64: BE8A0200
	s_add_u32 s12, s12, s30                                    // 000000A53C68: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000A53C6C: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000A53C70: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000A53C74: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000A53C78: BF06801D
	s_cmov_b32 s14, s28                                        // 000000A53C7C: BE8E021C

0000000000a53c80 <ShadowInitStart_10>:
	s_mov_b32 s18, 0xfffff000                                  // 000000A53C80: BE9200FF FFFFF000
	s_mov_b32 s19, 0x31004000                                  // 000000A53C88: BE9300FF 31004000
	s_mov_b32 s22, 0xfffff000                                  // 000000A53C90: BE9600FF FFFFF000
	s_mov_b32 s23, 0x31004000                                  // 000000A53C98: BE9700FF 31004000
	s_mul_i32 s58, 16, s3                                      // 000000A53CA0: 963A0390
	s_mul_hi_u32 s57, s58, s40                                 // 000000A53CA4: 96B9283A
	s_mul_i32 s56, s58, s40                                    // 000000A53CA8: 9638283A
	s_lshl_b64 s[56:57], s[56:57], 2                           // 000000A53CAC: 84B88238
	s_add_u32 s20, s20, s56                                    // 000000A53CB0: 80143814
	s_addc_u32 s21, s21, s57                                   // 000000A53CB4: 82153915
	s_mul_hi_u32 s57, s58, s38                                 // 000000A53CB8: 96B9263A
	s_mul_i32 s56, s58, s38                                    // 000000A53CBC: 9638263A
	s_lshl_b64 s[56:57], s[56:57], 2                           // 000000A53CC0: 84B88238
	s_add_u32 s16, s16, s56                                    // 000000A53CC4: 80103810
	s_addc_u32 s17, s17, s57                                   // 000000A53CC8: 82113911
	s_mul_hi_u32 s57, s4, s41                                  // 000000A53CCC: 96B92904
	s_mul_i32 s56, s4, s41                                     // 000000A53CD0: 96382904
	s_lshl_b64 s[56:57], s[56:57], 2                           // 000000A53CD4: 84B88238
	s_add_u32 s20, s20, s56                                    // 000000A53CD8: 80143814
	s_addc_u32 s21, s21, s57                                   // 000000A53CDC: 82153915
	s_mul_hi_u32 s57, s4, s39                                  // 000000A53CE0: 96B92704
	s_mul_i32 s56, s4, s39                                     // 000000A53CE4: 96382704
	s_lshl_b64 s[56:57], s[56:57], 2                           // 000000A53CE8: 84B88238
	s_add_u32 s16, s16, s56                                    // 000000A53CEC: 80103810
	s_addc_u32 s17, s17, s57                                   // 000000A53CF0: 82113911
	v_mov_b32_e32 v0, 0                                        // 000000A53CF4: 7E000280
	v_mov_b32_e32 v1, 0                                        // 000000A53CF8: 7E020280
	v_mov_b32_e32 v2, 0                                        // 000000A53CFC: 7E040280
	v_mov_b32_e32 v3, 0                                        // 000000A53D00: 7E060280
	s_cmp_eq_u32 s5, 0                                         // 000000A53D04: BF068005
	s_cbranch_scc0 label_NoBranch_11                           // 000000A53D08: BFA10006
	s_getpc_b64 s[56:57]                                       // 000000A53D0C: BEB84700
	s_add_i32 s58, 0x1184, 4                                   // 000000A53D10: 813A84FF 00001184
	s_add_u32 s56, s56, s58                                    // 000000A53D18: 80383A38
	s_addc_u32 s57, s57, 0                                     // 000000A53D1C: 82398039
	s_setpc_b64 s[56:57]                                       // 000000A53D20: BE804838

0000000000a53d24 <label_NoBranch_11>:
	s_waitcnt vmcnt(0)                                         // 000000A53D24: BF8903F7
	ds_store_b32 v15, v20                                      // 000000A53D28: D8340000 0000140F
	ds_store_b32 v15, v21 offset:512                           // 000000A53D30: D8340200 0000150F
	ds_store_b32 v15, v22 offset:1024                          // 000000A53D38: D8340400 0000160F
	ds_store_b32 v15, v23 offset:1536                          // 000000A53D40: D8340600 0000170F
	ds_store_b32 v16, v24                                      // 000000A53D48: D8340000 00001810
	ds_store_b32 v16, v25 offset:32                            // 000000A53D50: D8340020 00001910
	s_waitcnt lgkmcnt(0)                                       // 000000A53D58: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000A53D5C: BDFC0000
	s_barrier                                                  // 000000A53D60: BFBD0000
	ds_load_b32 v6, v26                                        // 000000A53D64: D8D80000 0600001A
	ds_load_b32 v7, v26 offset:64                              // 000000A53D6C: D8D80040 0700001A
	ds_load_b32 v11, v27                                       // 000000A53D74: D8D80000 0B00001B
	ds_load_b32 v12, v27 offset:32                             // 000000A53D7C: D8D80020 0C00001B

0000000000a53d84 <openLoopL_12>:
	s_cmp_le_u32 s5, 1                                         // 000000A53D84: BF0B8105
	s_cbranch_scc1 LoopEndL_2                                  // 000000A53D88: BFA20245

0000000000a53d8c <label_0013>:
	ds_load_b32 v8, v26 offset:128                             // 000000A53D8C: D8D80080 0800001A
	ds_load_b32 v9, v26 offset:192                             // 000000A53D94: D8D800C0 0900001A
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000A53D9C: E0500000 80421411
	ds_load_b32 v13, v27 offset:64                             // 000000A53DA4: D8D80040 0D00001B
	ds_load_b32 v14, v27 offset:96                             // 000000A53DAC: D8D80060 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A53DB4: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A53DB8: 56001706
	s_setprio 1                                                // 000000A53DBC: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A53DC0: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A53DC4: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A53DC8: 56061907
	s_setprio 0                                                // 000000A53DCC: BFB50000
	ds_load_b32 v6, v26 offset:256                             // 000000A53DD0: D8D80100 0600001A
	ds_load_b32 v7, v26 offset:320                             // 000000A53DD8: D8D80140 0700001A
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000A53DE0: E0500000 1F421511
	ds_load_b32 v11, v27 offset:128                            // 000000A53DE8: D8D80080 0B00001B
	ds_load_b32 v12, v27 offset:160                            // 000000A53DF0: D8D800A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A53DF8: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A53DFC: 56001B08
	s_setprio 1                                                // 000000A53E00: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A53E04: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A53E08: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A53E0C: 56061D09
	s_setprio 0                                                // 000000A53E10: BFB50000
	ds_load_b32 v8, v26 offset:384                             // 000000A53E14: D8D80180 0800001A
	ds_load_b32 v9, v26 offset:448                             // 000000A53E1C: D8D801C0 0900001A
	buffer_load_b32 v22, v17, s[8:11], s32 offen               // 000000A53E24: E0500000 20421611
	ds_load_b32 v13, v27 offset:192                            // 000000A53E2C: D8D800C0 0D00001B
	ds_load_b32 v14, v27 offset:224                            // 000000A53E34: D8D800E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A53E3C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A53E40: 56001706
	s_setprio 1                                                // 000000A53E44: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A53E48: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A53E4C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A53E50: 56061907
	s_setprio 0                                                // 000000A53E54: BFB50000
	ds_load_b32 v6, v26 offset:512                             // 000000A53E58: D8D80200 0600001A
	ds_load_b32 v7, v26 offset:576                             // 000000A53E60: D8D80240 0700001A
	buffer_load_b32 v23, v17, s[8:11], s33 offen               // 000000A53E68: E0500000 21421711
	ds_load_b32 v11, v27 offset:256                            // 000000A53E70: D8D80100 0B00001B
	ds_load_b32 v12, v27 offset:288                            // 000000A53E78: D8D80120 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A53E80: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A53E84: 56001B08
	s_setprio 1                                                // 000000A53E88: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A53E8C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A53E90: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A53E94: 56061D09
	s_setprio 0                                                // 000000A53E98: BFB50000
	ds_load_b32 v8, v26 offset:640                             // 000000A53E9C: D8D80280 0800001A
	ds_load_b32 v9, v26 offset:704                             // 000000A53EA4: D8D802C0 0900001A
	buffer_load_b32 v24, v18, s[12:15], 0 offen                // 000000A53EAC: E0500000 80431812
	ds_load_b32 v13, v27 offset:320                            // 000000A53EB4: D8D80140 0D00001B
	ds_load_b32 v14, v27 offset:352                            // 000000A53EBC: D8D80160 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A53EC4: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A53EC8: 56001706
	s_setprio 1                                                // 000000A53ECC: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A53ED0: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A53ED4: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A53ED8: 56061907
	s_setprio 0                                                // 000000A53EDC: BFB50000
	ds_load_b32 v6, v26 offset:768                             // 000000A53EE0: D8D80300 0600001A
	ds_load_b32 v7, v26 offset:832                             // 000000A53EE8: D8D80340 0700001A
	buffer_load_b32 v25, v18, s[12:15], s34 offen              // 000000A53EF0: E0500000 22431912
	ds_load_b32 v11, v27 offset:384                            // 000000A53EF8: D8D80180 0B00001B
	ds_load_b32 v12, v27 offset:416                            // 000000A53F00: D8D801A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A53F08: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A53F0C: 56001B08
	s_setprio 1                                                // 000000A53F10: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A53F14: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A53F18: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A53F1C: 56061D09
	s_setprio 0                                                // 000000A53F20: BFB50000
	ds_load_b32 v8, v26 offset:896                             // 000000A53F24: D8D80380 0800001A
	ds_load_b32 v9, v26 offset:960                             // 000000A53F2C: D8D803C0 0900001A
	s_add_u32 s8, s8, s7                                       // 000000A53F34: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000A53F38: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000A53F3C: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000A53F40: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000A53F44: BF068001
	s_cmov_b32 s10, s0                                         // 000000A53F48: BE8A0200
	ds_load_b32 v13, v27 offset:448                            // 000000A53F4C: D8D801C0 0D00001B
	ds_load_b32 v14, v27 offset:480                            // 000000A53F54: D8D801E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A53F5C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A53F60: 56001706
	s_setprio 1                                                // 000000A53F64: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A53F68: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A53F6C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A53F70: 56061907
	s_setprio 0                                                // 000000A53F74: BFB50000
	ds_load_b32 v6, v26 offset:1024                            // 000000A53F78: D8D80400 0600001A
	ds_load_b32 v7, v26 offset:1088                            // 000000A53F80: D8D80440 0700001A
	s_add_u32 s12, s12, s30                                    // 000000A53F88: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000A53F8C: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000A53F90: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000A53F94: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000A53F98: BF06801D
	s_cmov_b32 s14, s28                                        // 000000A53F9C: BE8E021C
	ds_load_b32 v11, v27 offset:512                            // 000000A53FA0: D8D80200 0B00001B
	ds_load_b32 v12, v27 offset:544                            // 000000A53FA8: D8D80220 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A53FB0: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A53FB4: 56001B08
	s_setprio 1                                                // 000000A53FB8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A53FBC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A53FC0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A53FC4: 56061D09
	s_setprio 0                                                // 000000A53FC8: BFB50000
	ds_load_b32 v8, v26 offset:1152                            // 000000A53FCC: D8D80480 0800001A
	ds_load_b32 v9, v26 offset:1216                            // 000000A53FD4: D8D804C0 0900001A
	ds_load_b32 v13, v27 offset:576                            // 000000A53FDC: D8D80240 0D00001B
	ds_load_b32 v14, v27 offset:608                            // 000000A53FE4: D8D80260 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A53FEC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A53FF0: 56001706
	s_setprio 1                                                // 000000A53FF4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A53FF8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A53FFC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54000: 56061907
	s_setprio 0                                                // 000000A54004: BFB50000
	ds_load_b32 v6, v26 offset:1280                            // 000000A54008: D8D80500 0600001A
	ds_load_b32 v7, v26 offset:1344                            // 000000A54010: D8D80540 0700001A
	ds_load_b32 v11, v27 offset:640                            // 000000A54018: D8D80280 0B00001B
	ds_load_b32 v12, v27 offset:672                            // 000000A54020: D8D802A0 0C00001B
	s_waitcnt vmcnt(5)                                         // 000000A54028: BF8917F7
	ds_store_b32 v15, v20 offset:4096                          // 000000A5402C: D8341000 0000140F
	s_waitcnt lgkmcnt(5)                                       // 000000A54034: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A54038: 56001B08
	s_setprio 1                                                // 000000A5403C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54040: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54044: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A54048: 56061D09
	s_setprio 0                                                // 000000A5404C: BFB50000
	ds_load_b32 v8, v26 offset:1408                            // 000000A54050: D8D80580 0800001A
	ds_load_b32 v9, v26 offset:1472                            // 000000A54058: D8D805C0 0900001A
	ds_load_b32 v13, v27 offset:704                            // 000000A54060: D8D802C0 0D00001B
	ds_load_b32 v14, v27 offset:736                            // 000000A54068: D8D802E0 0E00001B
	s_waitcnt vmcnt(4)                                         // 000000A54070: BF8913F7
	ds_store_b32 v15, v21 offset:4608                          // 000000A54074: D8341200 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000A5407C: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54080: 56001706
	s_setprio 1                                                // 000000A54084: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54088: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A5408C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54090: 56061907
	s_setprio 0                                                // 000000A54094: BFB50000
	ds_load_b32 v6, v26 offset:1536                            // 000000A54098: D8D80600 0600001A
	ds_load_b32 v7, v26 offset:1600                            // 000000A540A0: D8D80640 0700001A
	ds_load_b32 v11, v27 offset:768                            // 000000A540A8: D8D80300 0B00001B
	ds_load_b32 v12, v27 offset:800                            // 000000A540B0: D8D80320 0C00001B
	s_waitcnt vmcnt(3)                                         // 000000A540B8: BF890FF7
	ds_store_b32 v15, v22 offset:5120                          // 000000A540BC: D8341400 0000160F
	s_waitcnt lgkmcnt(5)                                       // 000000A540C4: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A540C8: 56001B08
	s_setprio 1                                                // 000000A540CC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A540D0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A540D4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A540D8: 56061D09
	s_setprio 0                                                // 000000A540DC: BFB50000
	ds_load_b32 v8, v26 offset:1664                            // 000000A540E0: D8D80680 0800001A
	ds_load_b32 v9, v26 offset:1728                            // 000000A540E8: D8D806C0 0900001A
	ds_load_b32 v13, v27 offset:832                            // 000000A540F0: D8D80340 0D00001B
	ds_load_b32 v14, v27 offset:864                            // 000000A540F8: D8D80360 0E00001B
	s_waitcnt vmcnt(2)                                         // 000000A54100: BF890BF7
	ds_store_b32 v15, v23 offset:5632                          // 000000A54104: D8341600 0000170F
	s_waitcnt lgkmcnt(5)                                       // 000000A5410C: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54110: 56001706
	s_setprio 1                                                // 000000A54114: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54118: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A5411C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54120: 56061907
	s_setprio 0                                                // 000000A54124: BFB50000
	ds_load_b32 v6, v26 offset:1792                            // 000000A54128: D8D80700 0600001A
	ds_load_b32 v7, v26 offset:1856                            // 000000A54130: D8D80740 0700001A
	ds_load_b32 v11, v27 offset:896                            // 000000A54138: D8D80380 0B00001B
	ds_load_b32 v12, v27 offset:928                            // 000000A54140: D8D803A0 0C00001B
	s_waitcnt vmcnt(1)                                         // 000000A54148: BF8907F7
	ds_store_b32 v16, v24 offset:4096                          // 000000A5414C: D8341000 00001810
	s_waitcnt lgkmcnt(5)                                       // 000000A54154: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A54158: 56001B08
	s_setprio 1                                                // 000000A5415C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54160: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54164: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A54168: 56061D09
	s_setprio 0                                                // 000000A5416C: BFB50000
	ds_load_b32 v8, v26 offset:1920                            // 000000A54170: D8D80780 0800001A
	ds_load_b32 v9, v26 offset:1984                            // 000000A54178: D8D807C0 0900001A
	ds_load_b32 v13, v27 offset:960                            // 000000A54180: D8D803C0 0D00001B
	ds_load_b32 v14, v27 offset:992                            // 000000A54188: D8D803E0 0E00001B
	s_waitcnt vmcnt(0)                                         // 000000A54190: BF8903F7
	ds_store_b32 v16, v25 offset:4128                          // 000000A54194: D8341020 00001910
	s_waitcnt lgkmcnt(5)                                       // 000000A5419C: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A541A0: 56001706
	s_setprio 1                                                // 000000A541A4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A541A8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A541AC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A541B0: 56061907
	s_setprio 0                                                // 000000A541B4: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000A541B8: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000A541BC: BDFC0000
	s_barrier                                                  // 000000A541C0: BFBD0000
	ds_load_b32 v6, v26 offset:4096                            // 000000A541C4: D8D81000 0600001A
	ds_load_b32 v7, v26 offset:4160                            // 000000A541CC: D8D81040 0700001A
	ds_load_b32 v11, v27 offset:4096                           // 000000A541D4: D8D81000 0B00001B
	ds_load_b32 v12, v27 offset:4128                           // 000000A541DC: D8D81020 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A541E4: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A541E8: 56001B08
	s_setprio 1                                                // 000000A541EC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A541F0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A541F4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A541F8: 56061D09
	s_setprio 0                                                // 000000A541FC: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000A54200: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000A54204: BF008105
	s_cbranch_scc1 LoopEndL_oddexit_3                          // 000000A54208: BFA20121

0000000000a5420c <label_0014>:
	ds_load_b32 v8, v26 offset:4224                            // 000000A5420C: D8D81080 0800001A
	ds_load_b32 v9, v26 offset:4288                            // 000000A54214: D8D810C0 0900001A
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000A5421C: E0500000 80421411
	ds_load_b32 v13, v27 offset:4160                           // 000000A54224: D8D81040 0D00001B
	ds_load_b32 v14, v27 offset:4192                           // 000000A5422C: D8D81060 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54234: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54238: 56001706
	s_setprio 1                                                // 000000A5423C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54240: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A54244: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54248: 56061907
	s_setprio 0                                                // 000000A5424C: BFB50000
	ds_load_b32 v6, v26 offset:4352                            // 000000A54250: D8D81100 0600001A
	ds_load_b32 v7, v26 offset:4416                            // 000000A54258: D8D81140 0700001A
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000A54260: E0500000 1F421511
	ds_load_b32 v11, v27 offset:4224                           // 000000A54268: D8D81080 0B00001B
	ds_load_b32 v12, v27 offset:4256                           // 000000A54270: D8D810A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54278: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A5427C: 56001B08
	s_setprio 1                                                // 000000A54280: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54284: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54288: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A5428C: 56061D09
	s_setprio 0                                                // 000000A54290: BFB50000
	ds_load_b32 v8, v26 offset:4480                            // 000000A54294: D8D81180 0800001A
	ds_load_b32 v9, v26 offset:4544                            // 000000A5429C: D8D811C0 0900001A
	buffer_load_b32 v22, v17, s[8:11], s32 offen               // 000000A542A4: E0500000 20421611
	ds_load_b32 v13, v27 offset:4288                           // 000000A542AC: D8D810C0 0D00001B
	ds_load_b32 v14, v27 offset:4320                           // 000000A542B4: D8D810E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A542BC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A542C0: 56001706
	s_setprio 1                                                // 000000A542C4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A542C8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A542CC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A542D0: 56061907
	s_setprio 0                                                // 000000A542D4: BFB50000
	ds_load_b32 v6, v26 offset:4608                            // 000000A542D8: D8D81200 0600001A
	ds_load_b32 v7, v26 offset:4672                            // 000000A542E0: D8D81240 0700001A
	buffer_load_b32 v23, v17, s[8:11], s33 offen               // 000000A542E8: E0500000 21421711
	ds_load_b32 v11, v27 offset:4352                           // 000000A542F0: D8D81100 0B00001B
	ds_load_b32 v12, v27 offset:4384                           // 000000A542F8: D8D81120 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54300: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A54304: 56001B08
	s_setprio 1                                                // 000000A54308: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A5430C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54310: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A54314: 56061D09
	s_setprio 0                                                // 000000A54318: BFB50000
	ds_load_b32 v8, v26 offset:4736                            // 000000A5431C: D8D81280 0800001A
	ds_load_b32 v9, v26 offset:4800                            // 000000A54324: D8D812C0 0900001A
	buffer_load_b32 v24, v18, s[12:15], 0 offen                // 000000A5432C: E0500000 80431812
	ds_load_b32 v13, v27 offset:4416                           // 000000A54334: D8D81140 0D00001B
	ds_load_b32 v14, v27 offset:4448                           // 000000A5433C: D8D81160 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54344: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54348: 56001706
	s_setprio 1                                                // 000000A5434C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54350: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A54354: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54358: 56061907
	s_setprio 0                                                // 000000A5435C: BFB50000
	ds_load_b32 v6, v26 offset:4864                            // 000000A54360: D8D81300 0600001A
	ds_load_b32 v7, v26 offset:4928                            // 000000A54368: D8D81340 0700001A
	buffer_load_b32 v25, v18, s[12:15], s34 offen              // 000000A54370: E0500000 22431912
	ds_load_b32 v11, v27 offset:4480                           // 000000A54378: D8D81180 0B00001B
	ds_load_b32 v12, v27 offset:4512                           // 000000A54380: D8D811A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54388: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A5438C: 56001B08
	s_setprio 1                                                // 000000A54390: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54394: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54398: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A5439C: 56061D09
	s_setprio 0                                                // 000000A543A0: BFB50000
	ds_load_b32 v8, v26 offset:4992                            // 000000A543A4: D8D81380 0800001A
	ds_load_b32 v9, v26 offset:5056                            // 000000A543AC: D8D813C0 0900001A
	s_add_u32 s8, s8, s7                                       // 000000A543B4: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000A543B8: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000A543BC: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000A543C0: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000A543C4: BF068001
	s_cmov_b32 s10, s0                                         // 000000A543C8: BE8A0200
	ds_load_b32 v13, v27 offset:4544                           // 000000A543CC: D8D811C0 0D00001B
	ds_load_b32 v14, v27 offset:4576                           // 000000A543D4: D8D811E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A543DC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A543E0: 56001706
	s_setprio 1                                                // 000000A543E4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A543E8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A543EC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A543F0: 56061907
	s_setprio 0                                                // 000000A543F4: BFB50000
	ds_load_b32 v6, v26 offset:5120                            // 000000A543F8: D8D81400 0600001A
	ds_load_b32 v7, v26 offset:5184                            // 000000A54400: D8D81440 0700001A
	s_add_u32 s12, s12, s30                                    // 000000A54408: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000A5440C: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000A54410: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000A54414: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000A54418: BF06801D
	s_cmov_b32 s14, s28                                        // 000000A5441C: BE8E021C
	ds_load_b32 v11, v27 offset:4608                           // 000000A54420: D8D81200 0B00001B
	ds_load_b32 v12, v27 offset:4640                           // 000000A54428: D8D81220 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54430: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A54434: 56001B08
	s_setprio 1                                                // 000000A54438: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A5443C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54440: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A54444: 56061D09
	s_setprio 0                                                // 000000A54448: BFB50000
	ds_load_b32 v8, v26 offset:5248                            // 000000A5444C: D8D81480 0800001A
	ds_load_b32 v9, v26 offset:5312                            // 000000A54454: D8D814C0 0900001A
	ds_load_b32 v13, v27 offset:4672                           // 000000A5445C: D8D81240 0D00001B
	ds_load_b32 v14, v27 offset:4704                           // 000000A54464: D8D81260 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A5446C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54470: 56001706
	s_setprio 1                                                // 000000A54474: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54478: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A5447C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54480: 56061907
	s_setprio 0                                                // 000000A54484: BFB50000
	ds_load_b32 v6, v26 offset:5376                            // 000000A54488: D8D81500 0600001A
	ds_load_b32 v7, v26 offset:5440                            // 000000A54490: D8D81540 0700001A
	ds_load_b32 v11, v27 offset:4736                           // 000000A54498: D8D81280 0B00001B
	ds_load_b32 v12, v27 offset:4768                           // 000000A544A0: D8D812A0 0C00001B
	s_waitcnt vmcnt(5)                                         // 000000A544A8: BF8917F7
	ds_store_b32 v15, v20                                      // 000000A544AC: D8340000 0000140F
	s_waitcnt lgkmcnt(5)                                       // 000000A544B4: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A544B8: 56001B08
	s_setprio 1                                                // 000000A544BC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A544C0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A544C4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A544C8: 56061D09
	s_setprio 0                                                // 000000A544CC: BFB50000
	ds_load_b32 v8, v26 offset:5504                            // 000000A544D0: D8D81580 0800001A
	ds_load_b32 v9, v26 offset:5568                            // 000000A544D8: D8D815C0 0900001A
	ds_load_b32 v13, v27 offset:4800                           // 000000A544E0: D8D812C0 0D00001B
	ds_load_b32 v14, v27 offset:4832                           // 000000A544E8: D8D812E0 0E00001B
	s_waitcnt vmcnt(4)                                         // 000000A544F0: BF8913F7
	ds_store_b32 v15, v21 offset:512                           // 000000A544F4: D8340200 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000A544FC: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54500: 56001706
	s_setprio 1                                                // 000000A54504: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54508: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A5450C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54510: 56061907
	s_setprio 0                                                // 000000A54514: BFB50000
	ds_load_b32 v6, v26 offset:5632                            // 000000A54518: D8D81600 0600001A
	ds_load_b32 v7, v26 offset:5696                            // 000000A54520: D8D81640 0700001A
	ds_load_b32 v11, v27 offset:4864                           // 000000A54528: D8D81300 0B00001B
	ds_load_b32 v12, v27 offset:4896                           // 000000A54530: D8D81320 0C00001B
	s_waitcnt vmcnt(3)                                         // 000000A54538: BF890FF7
	ds_store_b32 v15, v22 offset:1024                          // 000000A5453C: D8340400 0000160F
	s_waitcnt lgkmcnt(5)                                       // 000000A54544: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A54548: 56001B08
	s_setprio 1                                                // 000000A5454C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54550: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54554: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A54558: 56061D09
	s_setprio 0                                                // 000000A5455C: BFB50000
	ds_load_b32 v8, v26 offset:5760                            // 000000A54560: D8D81680 0800001A
	ds_load_b32 v9, v26 offset:5824                            // 000000A54568: D8D816C0 0900001A
	ds_load_b32 v13, v27 offset:4928                           // 000000A54570: D8D81340 0D00001B
	ds_load_b32 v14, v27 offset:4960                           // 000000A54578: D8D81360 0E00001B
	s_waitcnt vmcnt(2)                                         // 000000A54580: BF890BF7
	ds_store_b32 v15, v23 offset:1536                          // 000000A54584: D8340600 0000170F
	s_waitcnt lgkmcnt(5)                                       // 000000A5458C: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54590: 56001706
	s_setprio 1                                                // 000000A54594: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54598: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A5459C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A545A0: 56061907
	s_setprio 0                                                // 000000A545A4: BFB50000
	ds_load_b32 v6, v26 offset:5888                            // 000000A545A8: D8D81700 0600001A
	ds_load_b32 v7, v26 offset:5952                            // 000000A545B0: D8D81740 0700001A
	ds_load_b32 v11, v27 offset:4992                           // 000000A545B8: D8D81380 0B00001B
	ds_load_b32 v12, v27 offset:5024                           // 000000A545C0: D8D813A0 0C00001B
	s_waitcnt vmcnt(1)                                         // 000000A545C8: BF8907F7
	ds_store_b32 v16, v24                                      // 000000A545CC: D8340000 00001810
	s_waitcnt lgkmcnt(5)                                       // 000000A545D4: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A545D8: 56001B08
	s_setprio 1                                                // 000000A545DC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A545E0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A545E4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A545E8: 56061D09
	s_setprio 0                                                // 000000A545EC: BFB50000
	ds_load_b32 v8, v26 offset:6016                            // 000000A545F0: D8D81780 0800001A
	ds_load_b32 v9, v26 offset:6080                            // 000000A545F8: D8D817C0 0900001A
	ds_load_b32 v13, v27 offset:5056                           // 000000A54600: D8D813C0 0D00001B
	ds_load_b32 v14, v27 offset:5088                           // 000000A54608: D8D813E0 0E00001B
	s_waitcnt vmcnt(0)                                         // 000000A54610: BF8903F7
	ds_store_b32 v16, v25 offset:32                            // 000000A54614: D8340020 00001910
	s_waitcnt lgkmcnt(5)                                       // 000000A5461C: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54620: 56001706
	s_setprio 1                                                // 000000A54624: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54628: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A5462C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54630: 56061907
	s_setprio 0                                                // 000000A54634: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000A54638: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000A5463C: BDFC0000
	s_barrier                                                  // 000000A54640: BFBD0000
	ds_load_b32 v6, v26                                        // 000000A54644: D8D80000 0600001A
	ds_load_b32 v7, v26 offset:64                              // 000000A5464C: D8D80040 0700001A
	ds_load_b32 v11, v27                                       // 000000A54654: D8D80000 0B00001B
	ds_load_b32 v12, v27 offset:32                             // 000000A5465C: D8D80020 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54664: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A54668: 56001B08
	s_setprio 1                                                // 000000A5466C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54670: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54674: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A54678: 56061D09
	s_setprio 0                                                // 000000A5467C: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000A54680: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000A54684: BF008105
	s_cbranch_scc0 LoopBeginL_1                                // 000000A54688: BFA1FDC0

0000000000a5468c <LoopEndL_evenexit_4>:
	s_branch LoopEndL_2                                        // 000000A5468C: BFA00004

0000000000a54690 <LoopEndL_oddexit_3>:
	v_xor_b32_e32 v26, 0x1000, v26                             // 000000A54690: 3A3434FF 00001000
	v_xor_b32_e32 v27, 0x1000, v27                             // 000000A54698: 3A3636FF 00001000

0000000000a546a0 <LoopEndL_2>:
	s_cmpk_eq_u32 s37, 0x0                                     // 000000A546A0: B4A50000
	s_cbranch_scc0 OptNLL_End_15                               // 000000A546A4: BFA10114
	s_cmp_eq_u32 s36, 1.0                                      // 000000A546A8: BF06F224
	s_cbranch_scc0 OptNLL_End_15                               // 000000A546AC: BFA10112
	s_and_b32 s56, 31, s46                                     // 000000A546B0: 8B382E9F
	s_add_u32 s57, -1, s50                                     // 000000A546B4: 803932C1
	s_cmp_ge_u32 s2, s57                                       // 000000A546B8: BF093902
	s_cselect_b32 s56, s56, 0                                  // 000000A546BC: 98388038
	s_cmpk_gt_u32 s56, 0x0                                     // 000000A546C0: B5B80000
	s_cbranch_scc1 OptNLL_End_15                               // 000000A546C4: BFA2010C
	s_and_b32 s56, 15, s47                                     // 000000A546C8: 8B382F8F
	s_add_u32 s57, -1, s51                                     // 000000A546CC: 803933C1
	s_cmp_ge_u32 s3, s57                                       // 000000A546D0: BF093903
	s_cselect_b32 s56, s56, 0                                  // 000000A546D4: 98388038
	s_cmpk_gt_u32 s56, 0x0                                     // 000000A546D8: B5B80000
	s_cbranch_scc1 OptNLL_End_15                               // 000000A546DC: BFA20106
	s_and_b32 s57, 15, s49                                     // 000000A546E0: 8B39318F
	s_cmp_eq_u32 s57, 0                                        // 000000A546E4: BF068039
	s_cbranch_scc0 OptNLL_End_15                               // 000000A546E8: BFA10103
	ds_load_b32 v8, v26 offset:128                             // 000000A546EC: D8D80080 0800001A
	ds_load_b32 v9, v26 offset:192                             // 000000A546F4: D8D800C0 0900001A
	ds_load_b32 v13, v27 offset:64                             // 000000A546FC: D8D80040 0D00001B
	ds_load_b32 v14, v27 offset:96                             // 000000A54704: D8D80060 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A5470C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54710: 56001706
	s_setprio 1                                                // 000000A54714: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54718: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A5471C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54720: 56061907
	s_setprio 0                                                // 000000A54724: BFB50000
	ds_load_b32 v6, v26 offset:256                             // 000000A54728: D8D80100 0600001A
	ds_load_b32 v7, v26 offset:320                             // 000000A54730: D8D80140 0700001A
	ds_load_b32 v11, v27 offset:128                            // 000000A54738: D8D80080 0B00001B
	ds_load_b32 v12, v27 offset:160                            // 000000A54740: D8D800A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54748: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A5474C: 56001B08
	s_setprio 1                                                // 000000A54750: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54754: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54758: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A5475C: 56061D09
	s_setprio 0                                                // 000000A54760: BFB50000
	ds_load_b32 v8, v26 offset:384                             // 000000A54764: D8D80180 0800001A
	ds_load_b32 v9, v26 offset:448                             // 000000A5476C: D8D801C0 0900001A
	ds_load_b32 v13, v27 offset:192                            // 000000A54774: D8D800C0 0D00001B
	ds_load_b32 v14, v27 offset:224                            // 000000A5477C: D8D800E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54784: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54788: 56001706
	s_setprio 1                                                // 000000A5478C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54790: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A54794: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54798: 56061907
	s_setprio 0                                                // 000000A5479C: BFB50000
	ds_load_b32 v6, v26 offset:512                             // 000000A547A0: D8D80200 0600001A
	ds_load_b32 v7, v26 offset:576                             // 000000A547A8: D8D80240 0700001A
	ds_load_b32 v11, v27 offset:256                            // 000000A547B0: D8D80100 0B00001B
	ds_load_b32 v12, v27 offset:288                            // 000000A547B8: D8D80120 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A547C0: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A547C4: 56001B08
	s_setprio 1                                                // 000000A547C8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A547CC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A547D0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A547D4: 56061D09
	s_setprio 0                                                // 000000A547D8: BFB50000
	ds_load_b32 v8, v26 offset:640                             // 000000A547DC: D8D80280 0800001A
	ds_load_b32 v9, v26 offset:704                             // 000000A547E4: D8D802C0 0900001A
	ds_load_b32 v13, v27 offset:320                            // 000000A547EC: D8D80140 0D00001B
	ds_load_b32 v14, v27 offset:352                            // 000000A547F4: D8D80160 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A547FC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54800: 56001706
	s_setprio 1                                                // 000000A54804: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54808: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A5480C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54810: 56061907
	s_setprio 0                                                // 000000A54814: BFB50000
	ds_load_b32 v6, v26 offset:768                             // 000000A54818: D8D80300 0600001A
	ds_load_b32 v7, v26 offset:832                             // 000000A54820: D8D80340 0700001A
	ds_load_b32 v11, v27 offset:384                            // 000000A54828: D8D80180 0B00001B
	ds_load_b32 v12, v27 offset:416                            // 000000A54830: D8D801A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54838: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A5483C: 56001B08
	s_setprio 1                                                // 000000A54840: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54844: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54848: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A5484C: 56061D09
	s_setprio 0                                                // 000000A54850: BFB50000
	ds_load_b32 v8, v26 offset:896                             // 000000A54854: D8D80380 0800001A
	ds_load_b32 v9, v26 offset:960                             // 000000A5485C: D8D803C0 0900001A
	ds_load_b32 v13, v27 offset:448                            // 000000A54864: D8D801C0 0D00001B
	ds_load_b32 v14, v27 offset:480                            // 000000A5486C: D8D801E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54874: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54878: 56001706
	s_setprio 1                                                // 000000A5487C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54880: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A54884: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54888: 56061907
	s_setprio 0                                                // 000000A5488C: BFB50000
	ds_load_b32 v6, v26 offset:1024                            // 000000A54890: D8D80400 0600001A
	ds_load_b32 v7, v26 offset:1088                            // 000000A54898: D8D80440 0700001A
	ds_load_b32 v11, v27 offset:512                            // 000000A548A0: D8D80200 0B00001B
	ds_load_b32 v12, v27 offset:544                            // 000000A548A8: D8D80220 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A548B0: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A548B4: 56001B08
	s_setprio 1                                                // 000000A548B8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A548BC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A548C0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A548C4: 56061D09
	s_setprio 0                                                // 000000A548C8: BFB50000
	ds_load_b32 v8, v26 offset:1152                            // 000000A548CC: D8D80480 0800001A
	ds_load_b32 v9, v26 offset:1216                            // 000000A548D4: D8D804C0 0900001A
	ds_load_b32 v13, v27 offset:576                            // 000000A548DC: D8D80240 0D00001B
	ds_load_b32 v14, v27 offset:608                            // 000000A548E4: D8D80260 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A548EC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A548F0: 56001706
	s_setprio 1                                                // 000000A548F4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A548F8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A548FC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54900: 56061907
	s_setprio 0                                                // 000000A54904: BFB50000
	ds_load_b32 v6, v26 offset:1280                            // 000000A54908: D8D80500 0600001A
	ds_load_b32 v7, v26 offset:1344                            // 000000A54910: D8D80540 0700001A
	ds_load_b32 v11, v27 offset:640                            // 000000A54918: D8D80280 0B00001B
	ds_load_b32 v12, v27 offset:672                            // 000000A54920: D8D802A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54928: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A5492C: 56001B08
	s_setprio 1                                                // 000000A54930: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54934: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54938: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A5493C: 56061D09
	s_setprio 0                                                // 000000A54940: BFB50000
	ds_load_b32 v8, v26 offset:1408                            // 000000A54944: D8D80580 0800001A
	ds_load_b32 v9, v26 offset:1472                            // 000000A5494C: D8D805C0 0900001A
	ds_load_b32 v13, v27 offset:704                            // 000000A54954: D8D802C0 0D00001B
	ds_load_b32 v14, v27 offset:736                            // 000000A5495C: D8D802E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54964: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54968: 56001706
	s_setprio 1                                                // 000000A5496C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54970: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A54974: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54978: 56061907
	s_setprio 0                                                // 000000A5497C: BFB50000
	ds_load_b32 v6, v26 offset:1536                            // 000000A54980: D8D80600 0600001A
	ds_load_b32 v7, v26 offset:1600                            // 000000A54988: D8D80640 0700001A
	ds_load_b32 v11, v27 offset:768                            // 000000A54990: D8D80300 0B00001B
	ds_load_b32 v12, v27 offset:800                            // 000000A54998: D8D80320 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A549A0: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A549A4: 56001B08
	s_setprio 1                                                // 000000A549A8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A549AC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A549B0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A549B4: 56061D09
	s_setprio 0                                                // 000000A549B8: BFB50000
	ds_load_b32 v8, v26 offset:1664                            // 000000A549BC: D8D80680 0800001A
	ds_load_b32 v9, v26 offset:1728                            // 000000A549C4: D8D806C0 0900001A
	ds_load_b32 v13, v27 offset:832                            // 000000A549CC: D8D80340 0D00001B
	ds_load_b32 v14, v27 offset:864                            // 000000A549D4: D8D80360 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A549DC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A549E0: 56001706
	s_setprio 1                                                // 000000A549E4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A549E8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A549EC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A549F0: 56061907
	s_setprio 0                                                // 000000A549F4: BFB50000
	ds_load_b32 v6, v26 offset:1792                            // 000000A549F8: D8D80700 0600001A
	ds_load_b32 v7, v26 offset:1856                            // 000000A54A00: D8D80740 0700001A
	ds_load_b32 v11, v27 offset:896                            // 000000A54A08: D8D80380 0B00001B
	ds_load_b32 v12, v27 offset:928                            // 000000A54A10: D8D803A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54A18: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A54A1C: 56001B08
	s_setprio 1                                                // 000000A54A20: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54A24: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54A28: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A54A2C: 56061D09
	s_setprio 0                                                // 000000A54A30: BFB50000
	ds_load_b32 v8, v26 offset:1920                            // 000000A54A34: D8D80780 0800001A
	ds_load_b32 v9, v26 offset:1984                            // 000000A54A3C: D8D807C0 0900001A
	ds_load_b32 v13, v27 offset:960                            // 000000A54A44: D8D803C0 0D00001B
	ds_load_b32 v14, v27 offset:992                            // 000000A54A4C: D8D803E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54A54: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54A58: 56001706
	s_setprio 1                                                // 000000A54A5C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54A60: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A54A64: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54A68: 56061907
	s_setprio 0                                                // 000000A54A6C: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000A54A70: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A54A74: 56001B08
	s_setprio 1                                                // 000000A54A78: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54A7C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54A80: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A54A84: 56061D09
	s_setprio 0                                                // 000000A54A88: BFB50000

0000000000a54a8c <Summation_End_OptNLL_16>:
	v_lshrrev_b32_e32 v7, 4, v28                               // 000000A54A8C: 320E3884
	v_and_b32_e32 v6, 15, v28                                  // 000000A54A90: 360C388F
	v_mul_lo_u32 v8, v7, s40                                   // 000000A54A94: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000A54A9C: D72C0009 00004D07
	s_mul_i32 s52, 32, s2                                      // 000000A54AA4: 963402A0
	v_add_co_u32 v6, vcc_lo, s52, v6                           // 000000A54AA8: D7006A06 00020C34
	s_mul_i32 s54, 16, s3                                      // 000000A54AB0: 96360390
	v_add_co_u32 v7, vcc_lo, s54, v7                           // 000000A54AB4: D7006A07 00020E36

0000000000a54abc <GW_B0_E0_19>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000A54ABC: D647000C 020A0D09
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000A54AC4: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:64      // 000000A54ACC: E0680040 8044010C
	s_mul_i32 s52, s38, 32                                     // 000000A54AD4: 9634A026
	s_add_u32 s16, s16, s52                                    // 000000A54AD8: 80103410
	s_addc_u32 s17, s17, 0                                     // 000000A54ADC: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000A54AE0: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:64      // 000000A54AE8: E0680040 8044030C
	s_branch label_GW_End_21                                   // 000000A54AF0: BFA00000

0000000000a54af4 <label_GW_End_21>:
	s_endpgm                                                   // 000000A54AF4: BFB00000

0000000000a54af8 <OptNLL_End_15>:
	ds_load_b32 v8, v26 offset:128                             // 000000A54AF8: D8D80080 0800001A
	ds_load_b32 v9, v26 offset:192                             // 000000A54B00: D8D800C0 0900001A
	ds_load_b32 v13, v27 offset:64                             // 000000A54B08: D8D80040 0D00001B
	ds_load_b32 v14, v27 offset:96                             // 000000A54B10: D8D80060 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54B18: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54B1C: 56001706
	s_setprio 1                                                // 000000A54B20: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54B24: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A54B28: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54B2C: 56061907
	s_setprio 0                                                // 000000A54B30: BFB50000
	ds_load_b32 v6, v26 offset:256                             // 000000A54B34: D8D80100 0600001A
	ds_load_b32 v7, v26 offset:320                             // 000000A54B3C: D8D80140 0700001A
	ds_load_b32 v11, v27 offset:128                            // 000000A54B44: D8D80080 0B00001B
	ds_load_b32 v12, v27 offset:160                            // 000000A54B4C: D8D800A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54B54: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A54B58: 56001B08
	s_setprio 1                                                // 000000A54B5C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54B60: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54B64: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A54B68: 56061D09
	s_setprio 0                                                // 000000A54B6C: BFB50000
	ds_load_b32 v8, v26 offset:384                             // 000000A54B70: D8D80180 0800001A
	ds_load_b32 v9, v26 offset:448                             // 000000A54B78: D8D801C0 0900001A
	ds_load_b32 v13, v27 offset:192                            // 000000A54B80: D8D800C0 0D00001B
	ds_load_b32 v14, v27 offset:224                            // 000000A54B88: D8D800E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54B90: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54B94: 56001706
	s_setprio 1                                                // 000000A54B98: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54B9C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A54BA0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54BA4: 56061907
	s_setprio 0                                                // 000000A54BA8: BFB50000
	ds_load_b32 v6, v26 offset:512                             // 000000A54BAC: D8D80200 0600001A
	ds_load_b32 v7, v26 offset:576                             // 000000A54BB4: D8D80240 0700001A
	ds_load_b32 v11, v27 offset:256                            // 000000A54BBC: D8D80100 0B00001B
	ds_load_b32 v12, v27 offset:288                            // 000000A54BC4: D8D80120 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54BCC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A54BD0: 56001B08
	s_setprio 1                                                // 000000A54BD4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54BD8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54BDC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A54BE0: 56061D09
	s_setprio 0                                                // 000000A54BE4: BFB50000
	ds_load_b32 v8, v26 offset:640                             // 000000A54BE8: D8D80280 0800001A
	ds_load_b32 v9, v26 offset:704                             // 000000A54BF0: D8D802C0 0900001A
	ds_load_b32 v13, v27 offset:320                            // 000000A54BF8: D8D80140 0D00001B
	ds_load_b32 v14, v27 offset:352                            // 000000A54C00: D8D80160 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54C08: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54C0C: 56001706
	s_setprio 1                                                // 000000A54C10: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54C14: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A54C18: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54C1C: 56061907
	s_setprio 0                                                // 000000A54C20: BFB50000
	ds_load_b32 v6, v26 offset:768                             // 000000A54C24: D8D80300 0600001A
	ds_load_b32 v7, v26 offset:832                             // 000000A54C2C: D8D80340 0700001A
	ds_load_b32 v11, v27 offset:384                            // 000000A54C34: D8D80180 0B00001B
	ds_load_b32 v12, v27 offset:416                            // 000000A54C3C: D8D801A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54C44: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A54C48: 56001B08
	s_setprio 1                                                // 000000A54C4C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54C50: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54C54: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A54C58: 56061D09
	s_setprio 0                                                // 000000A54C5C: BFB50000
	ds_load_b32 v8, v26 offset:896                             // 000000A54C60: D8D80380 0800001A
	ds_load_b32 v9, v26 offset:960                             // 000000A54C68: D8D803C0 0900001A
	ds_load_b32 v13, v27 offset:448                            // 000000A54C70: D8D801C0 0D00001B
	ds_load_b32 v14, v27 offset:480                            // 000000A54C78: D8D801E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54C80: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54C84: 56001706
	s_setprio 1                                                // 000000A54C88: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54C8C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A54C90: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54C94: 56061907
	s_setprio 0                                                // 000000A54C98: BFB50000
	ds_load_b32 v6, v26 offset:1024                            // 000000A54C9C: D8D80400 0600001A
	ds_load_b32 v7, v26 offset:1088                            // 000000A54CA4: D8D80440 0700001A
	ds_load_b32 v11, v27 offset:512                            // 000000A54CAC: D8D80200 0B00001B
	ds_load_b32 v12, v27 offset:544                            // 000000A54CB4: D8D80220 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54CBC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A54CC0: 56001B08
	s_setprio 1                                                // 000000A54CC4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54CC8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54CCC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A54CD0: 56061D09
	s_setprio 0                                                // 000000A54CD4: BFB50000
	ds_load_b32 v8, v26 offset:1152                            // 000000A54CD8: D8D80480 0800001A
	ds_load_b32 v9, v26 offset:1216                            // 000000A54CE0: D8D804C0 0900001A
	ds_load_b32 v13, v27 offset:576                            // 000000A54CE8: D8D80240 0D00001B
	ds_load_b32 v14, v27 offset:608                            // 000000A54CF0: D8D80260 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54CF8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54CFC: 56001706
	s_setprio 1                                                // 000000A54D00: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54D04: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A54D08: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54D0C: 56061907
	s_setprio 0                                                // 000000A54D10: BFB50000
	ds_load_b32 v6, v26 offset:1280                            // 000000A54D14: D8D80500 0600001A
	ds_load_b32 v7, v26 offset:1344                            // 000000A54D1C: D8D80540 0700001A
	ds_load_b32 v11, v27 offset:640                            // 000000A54D24: D8D80280 0B00001B
	ds_load_b32 v12, v27 offset:672                            // 000000A54D2C: D8D802A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54D34: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A54D38: 56001B08
	s_setprio 1                                                // 000000A54D3C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54D40: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54D44: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A54D48: 56061D09
	s_setprio 0                                                // 000000A54D4C: BFB50000
	ds_load_b32 v8, v26 offset:1408                            // 000000A54D50: D8D80580 0800001A
	ds_load_b32 v9, v26 offset:1472                            // 000000A54D58: D8D805C0 0900001A
	ds_load_b32 v13, v27 offset:704                            // 000000A54D60: D8D802C0 0D00001B
	ds_load_b32 v14, v27 offset:736                            // 000000A54D68: D8D802E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54D70: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54D74: 56001706
	s_setprio 1                                                // 000000A54D78: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54D7C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A54D80: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54D84: 56061907
	s_setprio 0                                                // 000000A54D88: BFB50000
	ds_load_b32 v6, v26 offset:1536                            // 000000A54D8C: D8D80600 0600001A
	ds_load_b32 v7, v26 offset:1600                            // 000000A54D94: D8D80640 0700001A
	ds_load_b32 v11, v27 offset:768                            // 000000A54D9C: D8D80300 0B00001B
	ds_load_b32 v12, v27 offset:800                            // 000000A54DA4: D8D80320 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54DAC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A54DB0: 56001B08
	s_setprio 1                                                // 000000A54DB4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54DB8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54DBC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A54DC0: 56061D09
	s_setprio 0                                                // 000000A54DC4: BFB50000
	ds_load_b32 v8, v26 offset:1664                            // 000000A54DC8: D8D80680 0800001A
	ds_load_b32 v9, v26 offset:1728                            // 000000A54DD0: D8D806C0 0900001A
	ds_load_b32 v13, v27 offset:832                            // 000000A54DD8: D8D80340 0D00001B
	ds_load_b32 v14, v27 offset:864                            // 000000A54DE0: D8D80360 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54DE8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54DEC: 56001706
	s_setprio 1                                                // 000000A54DF0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54DF4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A54DF8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54DFC: 56061907
	s_setprio 0                                                // 000000A54E00: BFB50000
	ds_load_b32 v6, v26 offset:1792                            // 000000A54E04: D8D80700 0600001A
	ds_load_b32 v7, v26 offset:1856                            // 000000A54E0C: D8D80740 0700001A
	ds_load_b32 v11, v27 offset:896                            // 000000A54E14: D8D80380 0B00001B
	ds_load_b32 v12, v27 offset:928                            // 000000A54E1C: D8D803A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54E24: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A54E28: 56001B08
	s_setprio 1                                                // 000000A54E2C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54E30: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54E34: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A54E38: 56061D09
	s_setprio 0                                                // 000000A54E3C: BFB50000
	ds_load_b32 v8, v26 offset:1920                            // 000000A54E40: D8D80780 0800001A
	ds_load_b32 v9, v26 offset:1984                            // 000000A54E48: D8D807C0 0900001A
	ds_load_b32 v13, v27 offset:960                            // 000000A54E50: D8D803C0 0D00001B
	ds_load_b32 v14, v27 offset:992                            // 000000A54E58: D8D803E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A54E60: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54E64: 56001706
	s_setprio 1                                                // 000000A54E68: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54E6C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A54E70: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54E74: 56061907
	s_setprio 0                                                // 000000A54E78: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000A54E7C: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A54E80: 56001B08
	s_setprio 1                                                // 000000A54E84: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A54E88: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A54E8C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A54E90: 56061D09
	s_setprio 0                                                // 000000A54E94: BFB50000

0000000000a54e98 <PrefetchGlobalLastIterEnd_5>:
	v_and_b32_e32 v15, 0xf00fff, v15                           // 000000A54E98: 361E1EFF 00F00FFF
	v_and_b32_e32 v16, 0xf00fff, v16                           // 000000A54EA0: 362020FF 00F00FFF
	s_and_b32 s5, 15, s49                                      // 000000A54EA8: 8B05318F
	s_cmp_eq_u32 s5, 0                                         // 000000A54EAC: BF068005
	s_cbranch_scc1 SkipTailLoopL_8                             // 000000A54EB0: BFA2003D
	s_mov_b32 s6, 0                                            // 000000A54EB4: BE860080
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000A54EB8: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000A54EC0: E0500000 1F421511
	buffer_load_b32 v22, v17, s[8:11], s32 offen               // 000000A54EC8: E0500000 20421611
	buffer_load_b32 v23, v17, s[8:11], s33 offen               // 000000A54ED0: E0500000 21421711
	buffer_load_b32 v24, v18, s[12:15], 0 offen                // 000000A54ED8: E0500000 80431812
	buffer_load_b32 v25, v18, s[12:15], s34 offen              // 000000A54EE0: E0500000 22431912
	s_waitcnt vmcnt(0)                                         // 000000A54EE8: BF8903F7
	s_waitcnt_lgkmcnt null, 0x0                                // 000000A54EEC: BDFC0000
	s_barrier                                                  // 000000A54EF0: BFBD0000
	ds_store_b32 v15, v20                                      // 000000A54EF4: D8340000 0000140F
	ds_store_b32 v15, v21 offset:512                           // 000000A54EFC: D8340200 0000150F
	ds_store_b32 v15, v22 offset:1024                          // 000000A54F04: D8340400 0000160F
	ds_store_b32 v15, v23 offset:1536                          // 000000A54F0C: D8340600 0000170F
	ds_store_b32 v16, v24                                      // 000000A54F14: D8340000 00001810
	ds_store_b32 v16, v25 offset:32                            // 000000A54F1C: D8340020 00001910
	s_waitcnt lgkmcnt(0)                                       // 000000A54F24: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000A54F28: BDFC0000
	s_barrier                                                  // 000000A54F2C: BFBD0000
	v_and_b32_e32 v26, 0xfff, v26                              // 000000A54F30: 363434FF 00000FFF
	v_and_b32_e32 v27, 0xfff, v27                              // 000000A54F38: 363636FF 00000FFF

0000000000a54f40 <TailLoopBeginL_6>:
	ds_load_b32 v6, v26                                        // 000000A54F40: D8D80000 0600001A
	ds_load_b32 v7, v26 offset:64                              // 000000A54F48: D8D80040 0700001A
	ds_load_b32 v11, v27                                       // 000000A54F50: D8D80000 0B00001B
	ds_load_b32 v12, v27 offset:32                             // 000000A54F58: D8D80020 0C00001B
	s_mov_b32 s35, 0x80                                        // 000000A54F60: BEA300FF 00000080
	v_add_co_u32 v26, vcc_lo, s35, v26                         // 000000A54F68: D7006A1A 00023423
	s_mov_b32 s35, 64                                          // 000000A54F70: BEA300C0
	v_add_co_u32 v27, vcc_lo, s35, v27                         // 000000A54F74: D7006A1B 00023623
	s_waitcnt lgkmcnt(0)                                       // 000000A54F7C: BF89FC07
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A54F80: 56001706
	s_setprio 1                                                // 000000A54F84: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A54F88: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A54F8C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A54F90: 56061907
	s_setprio 0                                                // 000000A54F94: BFB50000
	s_sub_i32 s5, s5, 1                                        // 000000A54F98: 81858105
	s_add_u32 s6, s6, 1                                        // 000000A54F9C: 80068106
	s_cmp_le_i32 s5, 0                                         // 000000A54FA0: BF058005
	s_cbranch_scc0 TailLoopBeginL_6                            // 000000A54FA4: BFA1FFE6

0000000000a54fa8 <TailLoopEndL_7>:
	v_lshrrev_b32_e32 v7, 4, v28                               // 000000A54FA8: 320E3884
	v_and_b32_e32 v6, 15, v28                                  // 000000A54FAC: 360C388F
	v_mul_lo_u32 v8, v7, s40                                   // 000000A54FB0: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000A54FB8: D72C0009 00004D07
	s_mul_i32 s52, 32, s2                                      // 000000A54FC0: 963402A0
	v_add_co_u32 v6, vcc_lo, s52, v6                           // 000000A54FC4: D7006A06 00020C34
	s_mul_i32 s54, 16, s3                                      // 000000A54FCC: 96360390
	v_add_co_u32 v7, vcc_lo, s54, v7                           // 000000A54FD0: D7006A07 00020E36
	s_cmpk_eq_u32 s37, 0x0                                     // 000000A54FD8: B4A50000
	s_cbranch_scc0 GW_Beta_43                                  // 000000A54FDC: BFA1005B
	s_and_b32 s52, 31, s46                                     // 000000A54FE0: 8B342E9F
	s_add_u32 s53, -1, s50                                     // 000000A54FE4: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000A54FE8: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000A54FEC: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000A54FF0: B5B40000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000A54FF4: BFA20018
	s_and_b32 s52, 15, s47                                     // 000000A54FF8: 8B342F8F
	s_add_u32 s53, -1, s51                                     // 000000A54FFC: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000A55000: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000A55004: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000A55008: B5B40000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000A5500C: BFA20012

0000000000a55010 <GW_B0_E0_31>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000A55010: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000A55018: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000A5501C: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000A55020: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000A55024: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000A55028: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:64      // 000000A55030: E0680040 8044010C
	s_mul_i32 s52, s38, 32                                     // 000000A55038: 9634A026
	s_add_u32 s16, s16, s52                                    // 000000A5503C: 80103410
	s_addc_u32 s17, s17, 0                                     // 000000A55040: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000A55044: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:64      // 000000A5504C: E0680040 8044030C
	s_branch label_0047                                        // 000000A55054: BFA000D3

0000000000a55058 <GW_B0_E1_34>:
	v_cmp_lt_u32_e64 s52, v6, s46                              // 000000A55058: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000A55060: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000A55068: 8B363634
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000A5506C: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s54                        // 000000A55074: D501000C 00DA18C1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000A5507C: D7006A0A 00012106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 000000A55084: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000A5508C: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000A55094: 8B363634
	v_add_lshl_u32 v13, v9, v10, 2                             // 000000A55098: D647000D 020A1509
	v_cndmask_b32_e64 v13, -1, v13, s54                        // 000000A550A0: D501000D 00DA1AC1
	v_add_co_u32 v7, vcc_lo, v7, 8                             // 000000A550A8: D7006A07 00011107
	s_mul_i32 s52, s40, 8                                      // 000000A550B0: 96348828
	v_add_nc_u32_e64 v8, v8, s52                               // 000000A550B4: D5250008 00006908
	s_mul_i32 s52, s38, 8                                      // 000000A550BC: 96348826
	v_add_nc_u32_e64 v9, v9, s52                               // 000000A550C0: D5250009 00006909
	v_cmp_lt_u32_e64 s52, v6, s46                              // 000000A550C8: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000A550D0: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000A550D8: 8B363634
	v_add_lshl_u32 v14, v9, v6, 2                              // 000000A550DC: D647000E 020A0D09
	v_cndmask_b32_e64 v14, -1, v14, s54                        // 000000A550E4: D501000E 00DA1CC1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000A550EC: D7006A0A 00012106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 000000A550F4: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000A550FC: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000A55104: 8B363634
	v_add_lshl_u32 v15, v9, v10, 2                             // 000000A55108: D647000F 020A1509
	v_cndmask_b32_e64 v15, -1, v15, s54                        // 000000A55110: D501000F 00DA1EC1
	v_mul_f32_e32 v0, s36, v0                                  // 000000A55118: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000A5511C: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000A55120: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000A55124: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000A55128: E0680000 8044000C
	buffer_store_b32 v1, v13, s[16:19], 0 offen                // 000000A55130: E0680000 8044010D
	buffer_store_b32 v2, v14, s[16:19], 0 offen                // 000000A55138: E0680000 8044020E
	buffer_store_b32 v3, v15, s[16:19], 0 offen                // 000000A55140: E0680000 8044030F
	s_branch label_0047                                        // 000000A55148: BFA00096

0000000000a5514c <GW_Beta_43>:
	s_and_b32 s52, 31, s46                                     // 000000A5514C: 8B342E9F
	s_add_u32 s53, -1, s50                                     // 000000A55150: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000A55154: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000A55158: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000A5515C: B5B40000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000A55160: BFA20031
	s_and_b32 s52, 15, s47                                     // 000000A55164: 8B342F8F
	s_add_u32 s53, -1, s51                                     // 000000A55168: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000A5516C: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000A55170: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000A55174: B5B40000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000A55178: BFA2002B

0000000000a5517c <GW_B1_E0_38>:
	v_add_lshl_u32 v13, v8, v6, 2                              // 000000A5517C: D647000D 020A0D08
	buffer_load_b32 v14, v13, s[20:23], 0 offen                // 000000A55184: E0500000 80450E0D
	buffer_load_b32 v15, v13, s[20:23], 0 offen offset:64      // 000000A5518C: E0500040 80450F0D
	s_mul_i32 s52, s40, 32                                     // 000000A55194: 9634A028
	s_add_u32 s20, s20, s52                                    // 000000A55198: 80143414
	s_addc_u32 s21, s21, 0                                     // 000000A5519C: 82158015
	buffer_load_b32 v16, v13, s[20:23], 0 offen                // 000000A551A0: E0500000 8045100D
	buffer_load_b32 v17, v13, s[20:23], 0 offen offset:64      // 000000A551A8: E0500040 8045110D
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000A551B0: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000A551B8: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000A551BC: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000A551C0: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000A551C4: 10060624
	s_waitcnt vmcnt(3)                                         // 000000A551C8: BF890FF7
	v_fmac_f32_e64 v0, v14, s37                                // 000000A551CC: D52B0000 00004B0E
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000A551D4: E0680000 8044000C
	s_waitcnt vmcnt(2)                                         // 000000A551DC: BF890BF7
	v_fmac_f32_e64 v1, v15, s37                                // 000000A551E0: D52B0001 00004B0F
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:64      // 000000A551E8: E0680040 8044010C
	s_waitcnt vmcnt(1)                                         // 000000A551F0: BF8907F7
	v_fmac_f32_e64 v2, v16, s37                                // 000000A551F4: D52B0002 00004B10
	s_mul_i32 s52, s38, 32                                     // 000000A551FC: 9634A026
	s_add_u32 s16, s16, s52                                    // 000000A55200: 80103410
	s_addc_u32 s17, s17, 0                                     // 000000A55204: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000A55208: E0680000 8044020C
	s_waitcnt vmcnt(0)                                         // 000000A55210: BF8903F7
	v_fmac_f32_e64 v3, v17, s37                                // 000000A55214: D52B0003 00004B11
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:64      // 000000A5521C: E0680040 8044030C
	s_branch label_0047                                        // 000000A55224: BFA0005F

0000000000a55228 <GW_B1_E1_41>:
	v_cmp_lt_u32_e64 s52, v6, s46                              // 000000A55228: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000A55230: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000A55238: 8B363634
	v_add_lshl_u32 v12, v8, v6, 2                              // 000000A5523C: D647000C 020A0D08
	v_cndmask_b32_e64 v12, -1, v12, s54                        // 000000A55244: D501000C 00DA18C1
	buffer_load_b32 v13, v12, s[20:23], 0 offen                // 000000A5524C: E0500000 80450D0C
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000A55254: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s54                        // 000000A5525C: D501000C 00DA18C1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000A55264: D7006A0A 00012106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 000000A5526C: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000A55274: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000A5527C: 8B363634
	v_add_lshl_u32 v14, v8, v10, 2                             // 000000A55280: D647000E 020A1508
	v_cndmask_b32_e64 v14, -1, v14, s54                        // 000000A55288: D501000E 00DA1CC1
	buffer_load_b32 v15, v14, s[20:23], 0 offen                // 000000A55290: E0500000 80450F0E
	v_add_lshl_u32 v14, v9, v10, 2                             // 000000A55298: D647000E 020A1509
	v_cndmask_b32_e64 v14, -1, v14, s54                        // 000000A552A0: D501000E 00DA1CC1
	v_add_co_u32 v7, vcc_lo, v7, 8                             // 000000A552A8: D7006A07 00011107
	s_mul_i32 s52, s40, 8                                      // 000000A552B0: 96348828
	v_add_nc_u32_e64 v8, v8, s52                               // 000000A552B4: D5250008 00006908
	s_mul_i32 s52, s38, 8                                      // 000000A552BC: 96348826
	v_add_nc_u32_e64 v9, v9, s52                               // 000000A552C0: D5250009 00006909
	v_cmp_lt_u32_e64 s52, v6, s46                              // 000000A552C8: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000A552D0: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000A552D8: 8B363634
	v_add_lshl_u32 v16, v8, v6, 2                              // 000000A552DC: D6470010 020A0D08
	v_cndmask_b32_e64 v16, -1, v16, s54                        // 000000A552E4: D5010010 00DA20C1
	buffer_load_b32 v17, v16, s[20:23], 0 offen                // 000000A552EC: E0500000 80451110
	v_add_lshl_u32 v16, v9, v6, 2                              // 000000A552F4: D6470010 020A0D09
	v_cndmask_b32_e64 v16, -1, v16, s54                        // 000000A552FC: D5010010 00DA20C1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000A55304: D7006A0A 00012106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 000000A5530C: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000A55314: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000A5531C: 8B363634
	v_add_lshl_u32 v18, v8, v10, 2                             // 000000A55320: D6470012 020A1508
	v_cndmask_b32_e64 v18, -1, v18, s54                        // 000000A55328: D5010012 00DA24C1
	buffer_load_b32 v19, v18, s[20:23], 0 offen                // 000000A55330: E0500000 80451312
	v_add_lshl_u32 v18, v9, v10, 2                             // 000000A55338: D6470012 020A1509
	v_cndmask_b32_e64 v18, -1, v18, s54                        // 000000A55340: D5010012 00DA24C1
	v_mul_f32_e32 v0, s36, v0                                  // 000000A55348: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000A5534C: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000A55350: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000A55354: 10060624
	s_waitcnt vmcnt(0)                                         // 000000A55358: BF8903F7
	s_waitcnt_vscnt null, 0x0                                  // 000000A5535C: BC7C0000
	v_fmac_f32_e64 v0, v13, s37                                // 000000A55360: D52B0000 00004B0D
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000A55368: E0680000 8044000C
	v_fmac_f32_e64 v1, v15, s37                                // 000000A55370: D52B0001 00004B0F
	buffer_store_b32 v1, v14, s[16:19], 0 offen                // 000000A55378: E0680000 8044010E
	v_fmac_f32_e64 v2, v17, s37                                // 000000A55380: D52B0002 00004B11
	buffer_store_b32 v2, v16, s[16:19], 0 offen                // 000000A55388: E0680000 80440210
	v_fmac_f32_e64 v3, v19, s37                                // 000000A55390: D52B0003 00004B13
	buffer_store_b32 v3, v18, s[16:19], 0 offen                // 000000A55398: E0680000 80440312
	s_branch label_0047                                        // 000000A553A0: BFA00000

0000000000a553a4 <label_GW_End_42>:
	s_endpgm                                                   // 000000A553A4: BFB00000
		...
