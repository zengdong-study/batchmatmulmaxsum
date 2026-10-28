
/root/batchmatmulmaxsum/implement/hip/results/s0_20261028/code_objects/_code_object0002.o:	file format elf64-amdgpu

Disassembly of section .text:

0000000000a77600 <Cijk_Ailk_Bljk_SB_MT32x16x16_SN_1LDSB0_APM1_ABV0_ACED0_AF0EM1_AF1EM1_AMAS0_ASE_ASGT_ASLT_ASM_ASAE01_ASCE01_ASEM1_AAC0_BL1_BS1_CLR0_DTLA0_DTLB0_DTVA0_DTVB0_DVO0_ETSP_EPS1_ELFLR0_EMLL0_FSSC10_FL0_GLVWA1_GLVWB1_GRCGA1_GRCGB1_GRPM1_GRVW1_GSU1_GSUASB_GLS0_ISA1100_IU1_K1_KLA_LBSPPA0_LBSPPB0_LPA0_LPB0_LDL1_LRVW1_LWPMn1_LDW0_FMA_MIAV0_MDA2_MO40_MMFGLC_MKFGSU256_NTA0_NTB0_NTC0_NTD0_NEPBS0_NLCA1_NLCB1_ONLL1_OPLV0_PK0_PAP0_PGR1_PLR1_PKA0_SIA1_SLW1_SS0_SU0_SUM0_SUS0_SCIUI1_SPO0_SRVW0_SSO0_SVW4_SNLL0_TSGRA0_TSGRB0_TT2_2_TLDS0_UMLDSA0_UMLDSB0_U64SL1_USFGROn1_VAW1_VSn1_VW1_VWB1_VFLRP0_WSGRA0_WSGRB0_WS32_WG16_8_1_WGM8_preloaded>:
	s_mov_b32 vcc_hi, 0                                        // 000000A77600: BEEB0080
	s_load_b512 s[24:39], s[0:1], null                         // 000000A77604: F4100600 F8000000
	s_load_b256 s[40:47], s[0:1], 0x40                         // 000000A7760C: F40C0A00 F8000040
	s_load_b128 s[48:51], s[0:1], 0x60                         // 000000A77614: F4080C00 F8000060
	s_load_b64 s[52:53], s[0:1], 0x70                          // 000000A7761C: F4040D00 F8000070
	s_load_b32 s54, s[0:1], 0x78                               // 000000A77624: F4000D80 F8000078
	s_mov_b32 m0, 0x1c00                                       // 000000A7762C: BEFD00FF 00001C00
	v_mov_b32_e32 v28, v0                                      // 000000A77634: 7E380300
	v_lshrrev_b32_e32 v0, 4, v28                               // 000000A77638: 32003884
	v_and_b32_e32 v1, 15, v28                                  // 000000A7763C: 3602388F
	v_lshrrev_b32_e32 v2, 3, v0                                // 000000A77640: 32040083
	v_and_b32_e32 v3, 7, v0                                    // 000000A77644: 36060087
	v_lshrrev_b32_e32 v0, 7, v28                               // 000000A77648: 32003887
	v_lshlrev_b32_e32 v0, 5, v0                                // 000000A7764C: 30000085
	v_add_lshl_u32 v26, v0, v1, 2                              // 000000A77650: D647001A 020A0300
	v_lshrrev_b32_e32 v0, 7, v28                               // 000000A77658: 32003887
	v_lshlrev_b32_e32 v0, 4, v0                                // 000000A7765C: 30000084
	v_add_lshl_u32 v27, v0, v3, 2                              // 000000A77660: D647001B 020A0700
	v_add_co_u32 v27, vcc_lo, 0x800, v27                       // 000000A77668: D7006A1B 000236FF 00000800
	v_lshrrev_b32_e32 v1, 5, v28                               // 000000A77674: 32023885
	v_and_b32_e32 v0, 31, v28                                  // 000000A77678: 3600389F
	v_lshrrev_b32_e32 v2, 4, v28                               // 000000A7767C: 32043884
	v_and_b32_e32 v3, 15, v28                                  // 000000A77680: 3606388F
	v_mul_u32_u24_e32 v15, 32, v1                              // 000000A77684: 161E02A0
	v_add_lshl_u32 v15, v0, v15, 2                             // 000000A77688: D647000F 020A1F00
	v_mul_u32_u24_e32 v16, 16, v3                              // 000000A77690: 16200690
	v_add_lshl_u32 v16, v2, v16, 2                             // 000000A77694: D6470010 020A2102
	v_add_co_u32 v16, vcc_lo, 0x800, v16                       // 000000A7769C: D7006A10 000220FF 00000800
	s_waitcnt lgkmcnt(0)                                       // 000000A776A8: BF89FC07
	s_mov_b64 s[20:21], s[30:31]                               // 000000A776AC: BE94011E
	s_mov_b64 s[16:17], s[28:29]                               // 000000A776B0: BE90011C
	s_sub_u32 s8, s32, 4                                       // 000000A776B4: 80888420
	s_subb_u32 s9, s33, 0                                      // 000000A776B8: 82898021
	s_sub_u32 s12, s34, 4                                      // 000000A776BC: 808C8422
	s_subb_u32 s13, s35, 0                                     // 000000A776C0: 828D8023
	v_cmp_eq_f32_e64 vcc_lo, s36, 0                            // 000000A776C4: D412006A 00010024
	s_cbranch_vccz label_AlphaNonZero                          // 000000A776CC: BFA30001
	s_mov_b32 s49, 0                                           // 000000A776D0: BEB10080

0000000000a776d4 <label_AlphaNonZero>:
	s_mov_b32 s61, 0x10000001                                  // 000000A776D4: BEBD00FF 10000001
	s_mul_hi_u32 s59, s3, s61                                  // 000000A776DC: 96BB3D03
	s_mul_i32 s58, s3, s61                                     // 000000A776E0: 963A3D03
	s_lshr_b64 s[58:59], s[58:59], 31                          // 000000A776E4: 85BA9F3A
	s_mul_i32 s59, s58, 8                                      // 000000A776E8: 963B883A
	s_sub_u32 s59, s3, s59                                     // 000000A776EC: 80BB3B03
	s_mul_i32 s59, s59, s50                                    // 000000A776F0: 963B323B
	s_add_u32 s59, s59, s2                                     // 000000A776F4: 803B023B
	s_cmp_ge_u32 s58, s52                                      // 000000A776F8: BF09343A
	s_cmov_b32 s61, s54                                        // 000000A776FC: BEBD0236
	s_cselect_b32 s60, s53, 8                                  // 000000A77700: 983C8835
	s_mul_hi_u32 s3, s59, s61                                  // 000000A77704: 96833D3B
	s_mul_i32 s2, s59, s61                                     // 000000A77708: 96023D3B
	s_lshr_b64 s[2:3], s[2:3], 31                              // 000000A7770C: 85829F02
	s_mul_i32 s3, s2, s60                                      // 000000A77710: 96033C02
	s_sub_u32 s3, s59, s3                                      // 000000A77714: 8083033B
	s_mul_i32 s58, s58, 8                                      // 000000A77718: 963A883A
	s_add_u32 s3, s3, s58                                      // 000000A7771C: 80033A03
	v_mul_lo_u32 v6, s42, v1                                   // 000000A77720: D72C0006 0002022A
	v_add_co_u32 v17, vcc_lo, v0, v6                           // 000000A77728: D7006A11 00020D00
	v_add_nc_u32_e32 v17, 1, v17                               // 000000A77730: 4A222281
	v_lshlrev_b32_e32 v17, 2, v17                              // 000000A77734: 30222282
	s_mul_i32 s31, s42, 4                                      // 000000A77738: 961F842A
	s_lshl_b32 s31, s31, 2                                     // 000000A7773C: 841F821F
	s_mul_i32 s32, s42, 8                                      // 000000A77740: 9620882A
	s_lshl_b32 s32, s32, 2                                     // 000000A77744: 84208220
	s_mul_i32 s33, s42, 12                                     // 000000A77748: 96218C2A
	s_lshl_b32 s33, s33, 2                                     // 000000A7774C: 84218221
	v_mul_lo_u32 v6, s44, v2                                   // 000000A77750: D72C0006 0002042C
	v_add_co_u32 v18, vcc_lo, v3, v6                           // 000000A77758: D7006A12 00020D03
	v_add_nc_u32_e32 v18, 1, v18                               // 000000A77760: 4A242481
	v_lshlrev_b32_e32 v18, 2, v18                              // 000000A77764: 30242482
	s_mul_i32 s34, s44, 8                                      // 000000A77768: 9622882C
	s_lshl_b32 s34, s34, 2                                     // 000000A7776C: 84228222
	s_mul_hi_u32 s61, s2, 32                                   // 000000A77770: 96BDA002
	s_mul_i32 s60, s2, 32                                      // 000000A77774: 963CA002
	s_sub_u32 s0, s24, s60                                     // 000000A77778: 80803C18
	s_subb_u32 s1, s25, s61                                    // 000000A7777C: 82813D19
	s_lshl_b64 s[0:1], s[0:1], 2                               // 000000A77780: 84808200
	s_add_u32 s0, s0, 4                                        // 000000A77784: 80008400
	s_addc_u32 s1, s1, 0                                       // 000000A77788: 82018001
	s_cmp_eq_u32 s1, 0                                         // 000000A7778C: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000A77790: 980AC100
	s_mul_hi_u32 s59, s43, s4                                  // 000000A77794: 96BB042B
	s_mul_i32 s58, s43, s4                                     // 000000A77798: 963A042B
	s_add_u32 s60, s60, s58                                    // 000000A7779C: 803C3A3C
	s_addc_u32 s61, s61, s59                                   // 000000A777A0: 823D3B3D
	s_lshl_b64 s[60:61], s[60:61], 2                           // 000000A777A4: 84BC823C
	s_add_u32 s8, s8, s60                                      // 000000A777A8: 80083C08
	s_addc_u32 s9, s9, s61                                     // 000000A777AC: 82093D09
	s_mov_b32 s11, 0x31004000                                  // 000000A777B0: BE8B00FF 31004000
	s_mul_hi_u32 s61, s3, 16                                   // 000000A777B8: 96BD9003
	s_mul_i32 s60, s3, 16                                      // 000000A777BC: 963C9003
	s_mul_hi_u32 s61, s60, s44                                 // 000000A777C0: 96BD2C3C
	s_mul_i32 s60, s60, s44                                    // 000000A777C4: 963C2C3C
	s_sub_u32 s28, s26, s60                                    // 000000A777C8: 809C3C1A
	s_subb_u32 s29, s27, s61                                   // 000000A777CC: 829D3D1B
	s_lshl_b64 s[28:29], s[28:29], 2                           // 000000A777D0: 849C821C
	s_add_u32 s28, s28, 4                                      // 000000A777D4: 801C841C
	s_addc_u32 s29, s29, 0                                     // 000000A777D8: 821D801D
	s_cmp_eq_u32 s29, 0                                        // 000000A777DC: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000A777E0: 980EC11C
	s_mul_hi_u32 s59, s45, s4                                  // 000000A777E4: 96BB042D
	s_mul_i32 s58, s45, s4                                     // 000000A777E8: 963A042D
	s_add_u32 s60, s60, s58                                    // 000000A777EC: 803C3A3C
	s_addc_u32 s61, s61, s59                                   // 000000A777F0: 823D3B3D
	s_lshl_b64 s[60:61], s[60:61], 2                           // 000000A777F4: 84BC823C
	s_add_u32 s12, s12, s60                                    // 000000A777F8: 800C3C0C
	s_addc_u32 s13, s13, s61                                   // 000000A777FC: 820D3D0D
	s_mov_b32 s15, 0x31004000                                  // 000000A77800: BE8F00FF 31004000
	s_mul_i32 s7, 64, s42                                      // 000000A77808: 96072AC0
	s_mov_b32 s30, 64                                          // 000000A7780C: BE9E00C0
	s_lshr_b32 s5, s49, 4                                      // 000000A77810: 85058431
	s_mov_b32 s6, s5                                           // 000000A77814: BE860005
	s_cmp_eq_u32 s5, 0                                         // 000000A77818: BF068005
	s_cbranch_scc1 ShadowInitStart_10                          // 000000A7781C: BFA20018
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000A77820: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000A77828: E0500000 1F421511
	buffer_load_b32 v22, v17, s[8:11], s32 offen               // 000000A77830: E0500000 20421611
	buffer_load_b32 v23, v17, s[8:11], s33 offen               // 000000A77838: E0500000 21421711
	buffer_load_b32 v24, v18, s[12:15], 0 offen                // 000000A77840: E0500000 80431812
	buffer_load_b32 v25, v18, s[12:15], s34 offen              // 000000A77848: E0500000 22431912
	s_add_u32 s8, s8, s7                                       // 000000A77850: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000A77854: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000A77858: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000A7785C: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000A77860: BF068001
	s_cmov_b32 s10, s0                                         // 000000A77864: BE8A0200
	s_add_u32 s12, s12, s30                                    // 000000A77868: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000A7786C: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000A77870: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000A77874: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000A77878: BF06801D
	s_cmov_b32 s14, s28                                        // 000000A7787C: BE8E021C

0000000000a77880 <ShadowInitStart_10>:
	s_mov_b32 s18, 0xfffff000                                  // 000000A77880: BE9200FF FFFFF000
	s_mov_b32 s19, 0x31004000                                  // 000000A77888: BE9300FF 31004000
	s_mov_b32 s22, 0xfffff000                                  // 000000A77890: BE9600FF FFFFF000
	s_mov_b32 s23, 0x31004000                                  // 000000A77898: BE9700FF 31004000
	s_mul_i32 s58, 16, s3                                      // 000000A778A0: 963A0390
	s_mul_hi_u32 s57, s58, s40                                 // 000000A778A4: 96B9283A
	s_mul_i32 s56, s58, s40                                    // 000000A778A8: 9638283A
	s_lshl_b64 s[56:57], s[56:57], 2                           // 000000A778AC: 84B88238
	s_add_u32 s20, s20, s56                                    // 000000A778B0: 80143814
	s_addc_u32 s21, s21, s57                                   // 000000A778B4: 82153915
	s_mul_hi_u32 s57, s58, s38                                 // 000000A778B8: 96B9263A
	s_mul_i32 s56, s58, s38                                    // 000000A778BC: 9638263A
	s_lshl_b64 s[56:57], s[56:57], 2                           // 000000A778C0: 84B88238
	s_add_u32 s16, s16, s56                                    // 000000A778C4: 80103810
	s_addc_u32 s17, s17, s57                                   // 000000A778C8: 82113911
	s_mul_hi_u32 s57, s4, s41                                  // 000000A778CC: 96B92904
	s_mul_i32 s56, s4, s41                                     // 000000A778D0: 96382904
	s_lshl_b64 s[56:57], s[56:57], 2                           // 000000A778D4: 84B88238
	s_add_u32 s20, s20, s56                                    // 000000A778D8: 80143814
	s_addc_u32 s21, s21, s57                                   // 000000A778DC: 82153915
	s_mul_hi_u32 s57, s4, s39                                  // 000000A778E0: 96B92704
	s_mul_i32 s56, s4, s39                                     // 000000A778E4: 96382704
	s_lshl_b64 s[56:57], s[56:57], 2                           // 000000A778E8: 84B88238
	s_add_u32 s16, s16, s56                                    // 000000A778EC: 80103810
	s_addc_u32 s17, s17, s57                                   // 000000A778F0: 82113911
	v_mov_b32_e32 v0, 0                                        // 000000A778F4: 7E000280
	v_mov_b32_e32 v1, 0                                        // 000000A778F8: 7E020280
	v_mov_b32_e32 v2, 0                                        // 000000A778FC: 7E040280
	v_mov_b32_e32 v3, 0                                        // 000000A77900: 7E060280
	s_cmp_eq_u32 s5, 0                                         // 000000A77904: BF068005
	s_cbranch_scc0 label_NoBranch_11                           // 000000A77908: BFA10006
	s_getpc_b64 s[56:57]                                       // 000000A7790C: BEB84700
	s_add_i32 s58, 0x1184, 4                                   // 000000A77910: 813A84FF 00001184
	s_add_u32 s56, s56, s58                                    // 000000A77918: 80383A38
	s_addc_u32 s57, s57, 0                                     // 000000A7791C: 82398039
	s_setpc_b64 s[56:57]                                       // 000000A77920: BE804838

0000000000a77924 <label_NoBranch_11>:
	s_waitcnt vmcnt(0)                                         // 000000A77924: BF8903F7
	ds_store_b32 v15, v20                                      // 000000A77928: D8340000 0000140F
	ds_store_b32 v15, v21 offset:512                           // 000000A77930: D8340200 0000150F
	ds_store_b32 v15, v22 offset:1024                          // 000000A77938: D8340400 0000160F
	ds_store_b32 v15, v23 offset:1536                          // 000000A77940: D8340600 0000170F
	ds_store_b32 v16, v24                                      // 000000A77948: D8340000 00001810
	ds_store_b32 v16, v25 offset:32                            // 000000A77950: D8340020 00001910
	s_waitcnt lgkmcnt(0)                                       // 000000A77958: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000A7795C: BDFC0000
	s_barrier                                                  // 000000A77960: BFBD0000
	ds_load_b32 v6, v26                                        // 000000A77964: D8D80000 0600001A
	ds_load_b32 v7, v26 offset:64                              // 000000A7796C: D8D80040 0700001A
	ds_load_b32 v11, v27                                       // 000000A77974: D8D80000 0B00001B
	ds_load_b32 v12, v27 offset:32                             // 000000A7797C: D8D80020 0C00001B

0000000000a77984 <openLoopL_12>:
	s_cmp_le_u32 s5, 1                                         // 000000A77984: BF0B8105
	s_cbranch_scc1 LoopEndL_2                                  // 000000A77988: BFA20245

0000000000a7798c <label_0013>:
	ds_load_b32 v8, v26 offset:128                             // 000000A7798C: D8D80080 0800001A
	ds_load_b32 v9, v26 offset:192                             // 000000A77994: D8D800C0 0900001A
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000A7799C: E0500000 80421411
	ds_load_b32 v13, v27 offset:64                             // 000000A779A4: D8D80040 0D00001B
	ds_load_b32 v14, v27 offset:96                             // 000000A779AC: D8D80060 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A779B4: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A779B8: 56001706
	s_setprio 1                                                // 000000A779BC: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A779C0: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A779C4: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A779C8: 56061907
	s_setprio 0                                                // 000000A779CC: BFB50000
	ds_load_b32 v6, v26 offset:256                             // 000000A779D0: D8D80100 0600001A
	ds_load_b32 v7, v26 offset:320                             // 000000A779D8: D8D80140 0700001A
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000A779E0: E0500000 1F421511
	ds_load_b32 v11, v27 offset:128                            // 000000A779E8: D8D80080 0B00001B
	ds_load_b32 v12, v27 offset:160                            // 000000A779F0: D8D800A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A779F8: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A779FC: 56001B08
	s_setprio 1                                                // 000000A77A00: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A77A04: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A77A08: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A77A0C: 56061D09
	s_setprio 0                                                // 000000A77A10: BFB50000
	ds_load_b32 v8, v26 offset:384                             // 000000A77A14: D8D80180 0800001A
	ds_load_b32 v9, v26 offset:448                             // 000000A77A1C: D8D801C0 0900001A
	buffer_load_b32 v22, v17, s[8:11], s32 offen               // 000000A77A24: E0500000 20421611
	ds_load_b32 v13, v27 offset:192                            // 000000A77A2C: D8D800C0 0D00001B
	ds_load_b32 v14, v27 offset:224                            // 000000A77A34: D8D800E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A77A3C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A77A40: 56001706
	s_setprio 1                                                // 000000A77A44: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A77A48: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A77A4C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A77A50: 56061907
	s_setprio 0                                                // 000000A77A54: BFB50000
	ds_load_b32 v6, v26 offset:512                             // 000000A77A58: D8D80200 0600001A
	ds_load_b32 v7, v26 offset:576                             // 000000A77A60: D8D80240 0700001A
	buffer_load_b32 v23, v17, s[8:11], s33 offen               // 000000A77A68: E0500000 21421711
	ds_load_b32 v11, v27 offset:256                            // 000000A77A70: D8D80100 0B00001B
	ds_load_b32 v12, v27 offset:288                            // 000000A77A78: D8D80120 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A77A80: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A77A84: 56001B08
	s_setprio 1                                                // 000000A77A88: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A77A8C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A77A90: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A77A94: 56061D09
	s_setprio 0                                                // 000000A77A98: BFB50000
	ds_load_b32 v8, v26 offset:640                             // 000000A77A9C: D8D80280 0800001A
	ds_load_b32 v9, v26 offset:704                             // 000000A77AA4: D8D802C0 0900001A
	buffer_load_b32 v24, v18, s[12:15], 0 offen                // 000000A77AAC: E0500000 80431812
	ds_load_b32 v13, v27 offset:320                            // 000000A77AB4: D8D80140 0D00001B
	ds_load_b32 v14, v27 offset:352                            // 000000A77ABC: D8D80160 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A77AC4: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A77AC8: 56001706
	s_setprio 1                                                // 000000A77ACC: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A77AD0: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A77AD4: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A77AD8: 56061907
	s_setprio 0                                                // 000000A77ADC: BFB50000
	ds_load_b32 v6, v26 offset:768                             // 000000A77AE0: D8D80300 0600001A
	ds_load_b32 v7, v26 offset:832                             // 000000A77AE8: D8D80340 0700001A
	buffer_load_b32 v25, v18, s[12:15], s34 offen              // 000000A77AF0: E0500000 22431912
	ds_load_b32 v11, v27 offset:384                            // 000000A77AF8: D8D80180 0B00001B
	ds_load_b32 v12, v27 offset:416                            // 000000A77B00: D8D801A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A77B08: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A77B0C: 56001B08
	s_setprio 1                                                // 000000A77B10: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A77B14: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A77B18: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A77B1C: 56061D09
	s_setprio 0                                                // 000000A77B20: BFB50000
	ds_load_b32 v8, v26 offset:896                             // 000000A77B24: D8D80380 0800001A
	ds_load_b32 v9, v26 offset:960                             // 000000A77B2C: D8D803C0 0900001A
	s_add_u32 s8, s8, s7                                       // 000000A77B34: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000A77B38: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000A77B3C: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000A77B40: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000A77B44: BF068001
	s_cmov_b32 s10, s0                                         // 000000A77B48: BE8A0200
	ds_load_b32 v13, v27 offset:448                            // 000000A77B4C: D8D801C0 0D00001B
	ds_load_b32 v14, v27 offset:480                            // 000000A77B54: D8D801E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A77B5C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A77B60: 56001706
	s_setprio 1                                                // 000000A77B64: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A77B68: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A77B6C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A77B70: 56061907
	s_setprio 0                                                // 000000A77B74: BFB50000
	ds_load_b32 v6, v26 offset:1024                            // 000000A77B78: D8D80400 0600001A
	ds_load_b32 v7, v26 offset:1088                            // 000000A77B80: D8D80440 0700001A
	s_add_u32 s12, s12, s30                                    // 000000A77B88: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000A77B8C: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000A77B90: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000A77B94: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000A77B98: BF06801D
	s_cmov_b32 s14, s28                                        // 000000A77B9C: BE8E021C
	ds_load_b32 v11, v27 offset:512                            // 000000A77BA0: D8D80200 0B00001B
	ds_load_b32 v12, v27 offset:544                            // 000000A77BA8: D8D80220 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A77BB0: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A77BB4: 56001B08
	s_setprio 1                                                // 000000A77BB8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A77BBC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A77BC0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A77BC4: 56061D09
	s_setprio 0                                                // 000000A77BC8: BFB50000
	ds_load_b32 v8, v26 offset:1152                            // 000000A77BCC: D8D80480 0800001A
	ds_load_b32 v9, v26 offset:1216                            // 000000A77BD4: D8D804C0 0900001A
	ds_load_b32 v13, v27 offset:576                            // 000000A77BDC: D8D80240 0D00001B
	ds_load_b32 v14, v27 offset:608                            // 000000A77BE4: D8D80260 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A77BEC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A77BF0: 56001706
	s_setprio 1                                                // 000000A77BF4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A77BF8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A77BFC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A77C00: 56061907
	s_setprio 0                                                // 000000A77C04: BFB50000
	ds_load_b32 v6, v26 offset:1280                            // 000000A77C08: D8D80500 0600001A
	ds_load_b32 v7, v26 offset:1344                            // 000000A77C10: D8D80540 0700001A
	ds_load_b32 v11, v27 offset:640                            // 000000A77C18: D8D80280 0B00001B
	ds_load_b32 v12, v27 offset:672                            // 000000A77C20: D8D802A0 0C00001B
	s_waitcnt vmcnt(5)                                         // 000000A77C28: BF8917F7
	ds_store_b32 v15, v20 offset:4096                          // 000000A77C2C: D8341000 0000140F
	s_waitcnt lgkmcnt(5)                                       // 000000A77C34: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A77C38: 56001B08
	s_setprio 1                                                // 000000A77C3C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A77C40: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A77C44: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A77C48: 56061D09
	s_setprio 0                                                // 000000A77C4C: BFB50000
	ds_load_b32 v8, v26 offset:1408                            // 000000A77C50: D8D80580 0800001A
	ds_load_b32 v9, v26 offset:1472                            // 000000A77C58: D8D805C0 0900001A
	ds_load_b32 v13, v27 offset:704                            // 000000A77C60: D8D802C0 0D00001B
	ds_load_b32 v14, v27 offset:736                            // 000000A77C68: D8D802E0 0E00001B
	s_waitcnt vmcnt(4)                                         // 000000A77C70: BF8913F7
	ds_store_b32 v15, v21 offset:4608                          // 000000A77C74: D8341200 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000A77C7C: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A77C80: 56001706
	s_setprio 1                                                // 000000A77C84: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A77C88: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A77C8C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A77C90: 56061907
	s_setprio 0                                                // 000000A77C94: BFB50000
	ds_load_b32 v6, v26 offset:1536                            // 000000A77C98: D8D80600 0600001A
	ds_load_b32 v7, v26 offset:1600                            // 000000A77CA0: D8D80640 0700001A
	ds_load_b32 v11, v27 offset:768                            // 000000A77CA8: D8D80300 0B00001B
	ds_load_b32 v12, v27 offset:800                            // 000000A77CB0: D8D80320 0C00001B
	s_waitcnt vmcnt(3)                                         // 000000A77CB8: BF890FF7
	ds_store_b32 v15, v22 offset:5120                          // 000000A77CBC: D8341400 0000160F
	s_waitcnt lgkmcnt(5)                                       // 000000A77CC4: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A77CC8: 56001B08
	s_setprio 1                                                // 000000A77CCC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A77CD0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A77CD4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A77CD8: 56061D09
	s_setprio 0                                                // 000000A77CDC: BFB50000
	ds_load_b32 v8, v26 offset:1664                            // 000000A77CE0: D8D80680 0800001A
	ds_load_b32 v9, v26 offset:1728                            // 000000A77CE8: D8D806C0 0900001A
	ds_load_b32 v13, v27 offset:832                            // 000000A77CF0: D8D80340 0D00001B
	ds_load_b32 v14, v27 offset:864                            // 000000A77CF8: D8D80360 0E00001B
	s_waitcnt vmcnt(2)                                         // 000000A77D00: BF890BF7
	ds_store_b32 v15, v23 offset:5632                          // 000000A77D04: D8341600 0000170F
	s_waitcnt lgkmcnt(5)                                       // 000000A77D0C: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A77D10: 56001706
	s_setprio 1                                                // 000000A77D14: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A77D18: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A77D1C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A77D20: 56061907
	s_setprio 0                                                // 000000A77D24: BFB50000
	ds_load_b32 v6, v26 offset:1792                            // 000000A77D28: D8D80700 0600001A
	ds_load_b32 v7, v26 offset:1856                            // 000000A77D30: D8D80740 0700001A
	ds_load_b32 v11, v27 offset:896                            // 000000A77D38: D8D80380 0B00001B
	ds_load_b32 v12, v27 offset:928                            // 000000A77D40: D8D803A0 0C00001B
	s_waitcnt vmcnt(1)                                         // 000000A77D48: BF8907F7
	ds_store_b32 v16, v24 offset:4096                          // 000000A77D4C: D8341000 00001810
	s_waitcnt lgkmcnt(5)                                       // 000000A77D54: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A77D58: 56001B08
	s_setprio 1                                                // 000000A77D5C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A77D60: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A77D64: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A77D68: 56061D09
	s_setprio 0                                                // 000000A77D6C: BFB50000
	ds_load_b32 v8, v26 offset:1920                            // 000000A77D70: D8D80780 0800001A
	ds_load_b32 v9, v26 offset:1984                            // 000000A77D78: D8D807C0 0900001A
	ds_load_b32 v13, v27 offset:960                            // 000000A77D80: D8D803C0 0D00001B
	ds_load_b32 v14, v27 offset:992                            // 000000A77D88: D8D803E0 0E00001B
	s_waitcnt vmcnt(0)                                         // 000000A77D90: BF8903F7
	ds_store_b32 v16, v25 offset:4128                          // 000000A77D94: D8341020 00001910
	s_waitcnt lgkmcnt(5)                                       // 000000A77D9C: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A77DA0: 56001706
	s_setprio 1                                                // 000000A77DA4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A77DA8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A77DAC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A77DB0: 56061907
	s_setprio 0                                                // 000000A77DB4: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000A77DB8: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000A77DBC: BDFC0000
	s_barrier                                                  // 000000A77DC0: BFBD0000
	ds_load_b32 v6, v26 offset:4096                            // 000000A77DC4: D8D81000 0600001A
	ds_load_b32 v7, v26 offset:4160                            // 000000A77DCC: D8D81040 0700001A
	ds_load_b32 v11, v27 offset:4096                           // 000000A77DD4: D8D81000 0B00001B
	ds_load_b32 v12, v27 offset:4128                           // 000000A77DDC: D8D81020 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A77DE4: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A77DE8: 56001B08
	s_setprio 1                                                // 000000A77DEC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A77DF0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A77DF4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A77DF8: 56061D09
	s_setprio 0                                                // 000000A77DFC: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000A77E00: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000A77E04: BF008105
	s_cbranch_scc1 LoopEndL_oddexit_3                          // 000000A77E08: BFA20121

0000000000a77e0c <label_0014>:
	ds_load_b32 v8, v26 offset:4224                            // 000000A77E0C: D8D81080 0800001A
	ds_load_b32 v9, v26 offset:4288                            // 000000A77E14: D8D810C0 0900001A
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000A77E1C: E0500000 80421411
	ds_load_b32 v13, v27 offset:4160                           // 000000A77E24: D8D81040 0D00001B
	ds_load_b32 v14, v27 offset:4192                           // 000000A77E2C: D8D81060 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A77E34: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A77E38: 56001706
	s_setprio 1                                                // 000000A77E3C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A77E40: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A77E44: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A77E48: 56061907
	s_setprio 0                                                // 000000A77E4C: BFB50000
	ds_load_b32 v6, v26 offset:4352                            // 000000A77E50: D8D81100 0600001A
	ds_load_b32 v7, v26 offset:4416                            // 000000A77E58: D8D81140 0700001A
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000A77E60: E0500000 1F421511
	ds_load_b32 v11, v27 offset:4224                           // 000000A77E68: D8D81080 0B00001B
	ds_load_b32 v12, v27 offset:4256                           // 000000A77E70: D8D810A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A77E78: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A77E7C: 56001B08
	s_setprio 1                                                // 000000A77E80: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A77E84: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A77E88: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A77E8C: 56061D09
	s_setprio 0                                                // 000000A77E90: BFB50000
	ds_load_b32 v8, v26 offset:4480                            // 000000A77E94: D8D81180 0800001A
	ds_load_b32 v9, v26 offset:4544                            // 000000A77E9C: D8D811C0 0900001A
	buffer_load_b32 v22, v17, s[8:11], s32 offen               // 000000A77EA4: E0500000 20421611
	ds_load_b32 v13, v27 offset:4288                           // 000000A77EAC: D8D810C0 0D00001B
	ds_load_b32 v14, v27 offset:4320                           // 000000A77EB4: D8D810E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A77EBC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A77EC0: 56001706
	s_setprio 1                                                // 000000A77EC4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A77EC8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A77ECC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A77ED0: 56061907
	s_setprio 0                                                // 000000A77ED4: BFB50000
	ds_load_b32 v6, v26 offset:4608                            // 000000A77ED8: D8D81200 0600001A
	ds_load_b32 v7, v26 offset:4672                            // 000000A77EE0: D8D81240 0700001A
	buffer_load_b32 v23, v17, s[8:11], s33 offen               // 000000A77EE8: E0500000 21421711
	ds_load_b32 v11, v27 offset:4352                           // 000000A77EF0: D8D81100 0B00001B
	ds_load_b32 v12, v27 offset:4384                           // 000000A77EF8: D8D81120 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A77F00: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A77F04: 56001B08
	s_setprio 1                                                // 000000A77F08: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A77F0C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A77F10: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A77F14: 56061D09
	s_setprio 0                                                // 000000A77F18: BFB50000
	ds_load_b32 v8, v26 offset:4736                            // 000000A77F1C: D8D81280 0800001A
	ds_load_b32 v9, v26 offset:4800                            // 000000A77F24: D8D812C0 0900001A
	buffer_load_b32 v24, v18, s[12:15], 0 offen                // 000000A77F2C: E0500000 80431812
	ds_load_b32 v13, v27 offset:4416                           // 000000A77F34: D8D81140 0D00001B
	ds_load_b32 v14, v27 offset:4448                           // 000000A77F3C: D8D81160 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A77F44: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A77F48: 56001706
	s_setprio 1                                                // 000000A77F4C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A77F50: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A77F54: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A77F58: 56061907
	s_setprio 0                                                // 000000A77F5C: BFB50000
	ds_load_b32 v6, v26 offset:4864                            // 000000A77F60: D8D81300 0600001A
	ds_load_b32 v7, v26 offset:4928                            // 000000A77F68: D8D81340 0700001A
	buffer_load_b32 v25, v18, s[12:15], s34 offen              // 000000A77F70: E0500000 22431912
	ds_load_b32 v11, v27 offset:4480                           // 000000A77F78: D8D81180 0B00001B
	ds_load_b32 v12, v27 offset:4512                           // 000000A77F80: D8D811A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A77F88: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A77F8C: 56001B08
	s_setprio 1                                                // 000000A77F90: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A77F94: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A77F98: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A77F9C: 56061D09
	s_setprio 0                                                // 000000A77FA0: BFB50000
	ds_load_b32 v8, v26 offset:4992                            // 000000A77FA4: D8D81380 0800001A
	ds_load_b32 v9, v26 offset:5056                            // 000000A77FAC: D8D813C0 0900001A
	s_add_u32 s8, s8, s7                                       // 000000A77FB4: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000A77FB8: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000A77FBC: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000A77FC0: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000A77FC4: BF068001
	s_cmov_b32 s10, s0                                         // 000000A77FC8: BE8A0200
	ds_load_b32 v13, v27 offset:4544                           // 000000A77FCC: D8D811C0 0D00001B
	ds_load_b32 v14, v27 offset:4576                           // 000000A77FD4: D8D811E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A77FDC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A77FE0: 56001706
	s_setprio 1                                                // 000000A77FE4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A77FE8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A77FEC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A77FF0: 56061907
	s_setprio 0                                                // 000000A77FF4: BFB50000
	ds_load_b32 v6, v26 offset:5120                            // 000000A77FF8: D8D81400 0600001A
	ds_load_b32 v7, v26 offset:5184                            // 000000A78000: D8D81440 0700001A
	s_add_u32 s12, s12, s30                                    // 000000A78008: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000A7800C: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000A78010: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000A78014: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000A78018: BF06801D
	s_cmov_b32 s14, s28                                        // 000000A7801C: BE8E021C
	ds_load_b32 v11, v27 offset:4608                           // 000000A78020: D8D81200 0B00001B
	ds_load_b32 v12, v27 offset:4640                           // 000000A78028: D8D81220 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78030: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A78034: 56001B08
	s_setprio 1                                                // 000000A78038: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A7803C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A78040: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A78044: 56061D09
	s_setprio 0                                                // 000000A78048: BFB50000
	ds_load_b32 v8, v26 offset:5248                            // 000000A7804C: D8D81480 0800001A
	ds_load_b32 v9, v26 offset:5312                            // 000000A78054: D8D814C0 0900001A
	ds_load_b32 v13, v27 offset:4672                           // 000000A7805C: D8D81240 0D00001B
	ds_load_b32 v14, v27 offset:4704                           // 000000A78064: D8D81260 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A7806C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A78070: 56001706
	s_setprio 1                                                // 000000A78074: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A78078: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A7807C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A78080: 56061907
	s_setprio 0                                                // 000000A78084: BFB50000
	ds_load_b32 v6, v26 offset:5376                            // 000000A78088: D8D81500 0600001A
	ds_load_b32 v7, v26 offset:5440                            // 000000A78090: D8D81540 0700001A
	ds_load_b32 v11, v27 offset:4736                           // 000000A78098: D8D81280 0B00001B
	ds_load_b32 v12, v27 offset:4768                           // 000000A780A0: D8D812A0 0C00001B
	s_waitcnt vmcnt(5)                                         // 000000A780A8: BF8917F7
	ds_store_b32 v15, v20                                      // 000000A780AC: D8340000 0000140F
	s_waitcnt lgkmcnt(5)                                       // 000000A780B4: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A780B8: 56001B08
	s_setprio 1                                                // 000000A780BC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A780C0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A780C4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A780C8: 56061D09
	s_setprio 0                                                // 000000A780CC: BFB50000
	ds_load_b32 v8, v26 offset:5504                            // 000000A780D0: D8D81580 0800001A
	ds_load_b32 v9, v26 offset:5568                            // 000000A780D8: D8D815C0 0900001A
	ds_load_b32 v13, v27 offset:4800                           // 000000A780E0: D8D812C0 0D00001B
	ds_load_b32 v14, v27 offset:4832                           // 000000A780E8: D8D812E0 0E00001B
	s_waitcnt vmcnt(4)                                         // 000000A780F0: BF8913F7
	ds_store_b32 v15, v21 offset:512                           // 000000A780F4: D8340200 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000A780FC: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A78100: 56001706
	s_setprio 1                                                // 000000A78104: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A78108: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A7810C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A78110: 56061907
	s_setprio 0                                                // 000000A78114: BFB50000
	ds_load_b32 v6, v26 offset:5632                            // 000000A78118: D8D81600 0600001A
	ds_load_b32 v7, v26 offset:5696                            // 000000A78120: D8D81640 0700001A
	ds_load_b32 v11, v27 offset:4864                           // 000000A78128: D8D81300 0B00001B
	ds_load_b32 v12, v27 offset:4896                           // 000000A78130: D8D81320 0C00001B
	s_waitcnt vmcnt(3)                                         // 000000A78138: BF890FF7
	ds_store_b32 v15, v22 offset:1024                          // 000000A7813C: D8340400 0000160F
	s_waitcnt lgkmcnt(5)                                       // 000000A78144: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A78148: 56001B08
	s_setprio 1                                                // 000000A7814C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A78150: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A78154: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A78158: 56061D09
	s_setprio 0                                                // 000000A7815C: BFB50000
	ds_load_b32 v8, v26 offset:5760                            // 000000A78160: D8D81680 0800001A
	ds_load_b32 v9, v26 offset:5824                            // 000000A78168: D8D816C0 0900001A
	ds_load_b32 v13, v27 offset:4928                           // 000000A78170: D8D81340 0D00001B
	ds_load_b32 v14, v27 offset:4960                           // 000000A78178: D8D81360 0E00001B
	s_waitcnt vmcnt(2)                                         // 000000A78180: BF890BF7
	ds_store_b32 v15, v23 offset:1536                          // 000000A78184: D8340600 0000170F
	s_waitcnt lgkmcnt(5)                                       // 000000A7818C: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A78190: 56001706
	s_setprio 1                                                // 000000A78194: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A78198: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A7819C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A781A0: 56061907
	s_setprio 0                                                // 000000A781A4: BFB50000
	ds_load_b32 v6, v26 offset:5888                            // 000000A781A8: D8D81700 0600001A
	ds_load_b32 v7, v26 offset:5952                            // 000000A781B0: D8D81740 0700001A
	ds_load_b32 v11, v27 offset:4992                           // 000000A781B8: D8D81380 0B00001B
	ds_load_b32 v12, v27 offset:5024                           // 000000A781C0: D8D813A0 0C00001B
	s_waitcnt vmcnt(1)                                         // 000000A781C8: BF8907F7
	ds_store_b32 v16, v24                                      // 000000A781CC: D8340000 00001810
	s_waitcnt lgkmcnt(5)                                       // 000000A781D4: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A781D8: 56001B08
	s_setprio 1                                                // 000000A781DC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A781E0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A781E4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A781E8: 56061D09
	s_setprio 0                                                // 000000A781EC: BFB50000
	ds_load_b32 v8, v26 offset:6016                            // 000000A781F0: D8D81780 0800001A
	ds_load_b32 v9, v26 offset:6080                            // 000000A781F8: D8D817C0 0900001A
	ds_load_b32 v13, v27 offset:5056                           // 000000A78200: D8D813C0 0D00001B
	ds_load_b32 v14, v27 offset:5088                           // 000000A78208: D8D813E0 0E00001B
	s_waitcnt vmcnt(0)                                         // 000000A78210: BF8903F7
	ds_store_b32 v16, v25 offset:32                            // 000000A78214: D8340020 00001910
	s_waitcnt lgkmcnt(5)                                       // 000000A7821C: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A78220: 56001706
	s_setprio 1                                                // 000000A78224: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A78228: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A7822C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A78230: 56061907
	s_setprio 0                                                // 000000A78234: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000A78238: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000A7823C: BDFC0000
	s_barrier                                                  // 000000A78240: BFBD0000
	ds_load_b32 v6, v26                                        // 000000A78244: D8D80000 0600001A
	ds_load_b32 v7, v26 offset:64                              // 000000A7824C: D8D80040 0700001A
	ds_load_b32 v11, v27                                       // 000000A78254: D8D80000 0B00001B
	ds_load_b32 v12, v27 offset:32                             // 000000A7825C: D8D80020 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78264: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A78268: 56001B08
	s_setprio 1                                                // 000000A7826C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A78270: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A78274: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A78278: 56061D09
	s_setprio 0                                                // 000000A7827C: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000A78280: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000A78284: BF008105
	s_cbranch_scc0 LoopBeginL_1                                // 000000A78288: BFA1FDC0

0000000000a7828c <LoopEndL_evenexit_4>:
	s_branch LoopEndL_2                                        // 000000A7828C: BFA00004

0000000000a78290 <LoopEndL_oddexit_3>:
	v_xor_b32_e32 v26, 0x1000, v26                             // 000000A78290: 3A3434FF 00001000
	v_xor_b32_e32 v27, 0x1000, v27                             // 000000A78298: 3A3636FF 00001000

0000000000a782a0 <LoopEndL_2>:
	s_cmpk_eq_u32 s37, 0x0                                     // 000000A782A0: B4A50000
	s_cbranch_scc0 OptNLL_End_15                               // 000000A782A4: BFA10114
	s_cmp_eq_u32 s36, 1.0                                      // 000000A782A8: BF06F224
	s_cbranch_scc0 OptNLL_End_15                               // 000000A782AC: BFA10112
	s_and_b32 s56, 31, s46                                     // 000000A782B0: 8B382E9F
	s_add_u32 s57, -1, s50                                     // 000000A782B4: 803932C1
	s_cmp_ge_u32 s2, s57                                       // 000000A782B8: BF093902
	s_cselect_b32 s56, s56, 0                                  // 000000A782BC: 98388038
	s_cmpk_gt_u32 s56, 0x0                                     // 000000A782C0: B5B80000
	s_cbranch_scc1 OptNLL_End_15                               // 000000A782C4: BFA2010C
	s_and_b32 s56, 15, s47                                     // 000000A782C8: 8B382F8F
	s_add_u32 s57, -1, s51                                     // 000000A782CC: 803933C1
	s_cmp_ge_u32 s3, s57                                       // 000000A782D0: BF093903
	s_cselect_b32 s56, s56, 0                                  // 000000A782D4: 98388038
	s_cmpk_gt_u32 s56, 0x0                                     // 000000A782D8: B5B80000
	s_cbranch_scc1 OptNLL_End_15                               // 000000A782DC: BFA20106
	s_and_b32 s57, 15, s49                                     // 000000A782E0: 8B39318F
	s_cmp_eq_u32 s57, 0                                        // 000000A782E4: BF068039
	s_cbranch_scc0 OptNLL_End_15                               // 000000A782E8: BFA10103
	ds_load_b32 v8, v26 offset:128                             // 000000A782EC: D8D80080 0800001A
	ds_load_b32 v9, v26 offset:192                             // 000000A782F4: D8D800C0 0900001A
	ds_load_b32 v13, v27 offset:64                             // 000000A782FC: D8D80040 0D00001B
	ds_load_b32 v14, v27 offset:96                             // 000000A78304: D8D80060 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A7830C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A78310: 56001706
	s_setprio 1                                                // 000000A78314: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A78318: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A7831C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A78320: 56061907
	s_setprio 0                                                // 000000A78324: BFB50000
	ds_load_b32 v6, v26 offset:256                             // 000000A78328: D8D80100 0600001A
	ds_load_b32 v7, v26 offset:320                             // 000000A78330: D8D80140 0700001A
	ds_load_b32 v11, v27 offset:128                            // 000000A78338: D8D80080 0B00001B
	ds_load_b32 v12, v27 offset:160                            // 000000A78340: D8D800A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78348: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A7834C: 56001B08
	s_setprio 1                                                // 000000A78350: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A78354: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A78358: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A7835C: 56061D09
	s_setprio 0                                                // 000000A78360: BFB50000
	ds_load_b32 v8, v26 offset:384                             // 000000A78364: D8D80180 0800001A
	ds_load_b32 v9, v26 offset:448                             // 000000A7836C: D8D801C0 0900001A
	ds_load_b32 v13, v27 offset:192                            // 000000A78374: D8D800C0 0D00001B
	ds_load_b32 v14, v27 offset:224                            // 000000A7837C: D8D800E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78384: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A78388: 56001706
	s_setprio 1                                                // 000000A7838C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A78390: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A78394: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A78398: 56061907
	s_setprio 0                                                // 000000A7839C: BFB50000
	ds_load_b32 v6, v26 offset:512                             // 000000A783A0: D8D80200 0600001A
	ds_load_b32 v7, v26 offset:576                             // 000000A783A8: D8D80240 0700001A
	ds_load_b32 v11, v27 offset:256                            // 000000A783B0: D8D80100 0B00001B
	ds_load_b32 v12, v27 offset:288                            // 000000A783B8: D8D80120 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A783C0: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A783C4: 56001B08
	s_setprio 1                                                // 000000A783C8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A783CC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A783D0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A783D4: 56061D09
	s_setprio 0                                                // 000000A783D8: BFB50000
	ds_load_b32 v8, v26 offset:640                             // 000000A783DC: D8D80280 0800001A
	ds_load_b32 v9, v26 offset:704                             // 000000A783E4: D8D802C0 0900001A
	ds_load_b32 v13, v27 offset:320                            // 000000A783EC: D8D80140 0D00001B
	ds_load_b32 v14, v27 offset:352                            // 000000A783F4: D8D80160 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A783FC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A78400: 56001706
	s_setprio 1                                                // 000000A78404: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A78408: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A7840C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A78410: 56061907
	s_setprio 0                                                // 000000A78414: BFB50000
	ds_load_b32 v6, v26 offset:768                             // 000000A78418: D8D80300 0600001A
	ds_load_b32 v7, v26 offset:832                             // 000000A78420: D8D80340 0700001A
	ds_load_b32 v11, v27 offset:384                            // 000000A78428: D8D80180 0B00001B
	ds_load_b32 v12, v27 offset:416                            // 000000A78430: D8D801A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78438: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A7843C: 56001B08
	s_setprio 1                                                // 000000A78440: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A78444: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A78448: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A7844C: 56061D09
	s_setprio 0                                                // 000000A78450: BFB50000
	ds_load_b32 v8, v26 offset:896                             // 000000A78454: D8D80380 0800001A
	ds_load_b32 v9, v26 offset:960                             // 000000A7845C: D8D803C0 0900001A
	ds_load_b32 v13, v27 offset:448                            // 000000A78464: D8D801C0 0D00001B
	ds_load_b32 v14, v27 offset:480                            // 000000A7846C: D8D801E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78474: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A78478: 56001706
	s_setprio 1                                                // 000000A7847C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A78480: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A78484: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A78488: 56061907
	s_setprio 0                                                // 000000A7848C: BFB50000
	ds_load_b32 v6, v26 offset:1024                            // 000000A78490: D8D80400 0600001A
	ds_load_b32 v7, v26 offset:1088                            // 000000A78498: D8D80440 0700001A
	ds_load_b32 v11, v27 offset:512                            // 000000A784A0: D8D80200 0B00001B
	ds_load_b32 v12, v27 offset:544                            // 000000A784A8: D8D80220 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A784B0: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A784B4: 56001B08
	s_setprio 1                                                // 000000A784B8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A784BC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A784C0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A784C4: 56061D09
	s_setprio 0                                                // 000000A784C8: BFB50000
	ds_load_b32 v8, v26 offset:1152                            // 000000A784CC: D8D80480 0800001A
	ds_load_b32 v9, v26 offset:1216                            // 000000A784D4: D8D804C0 0900001A
	ds_load_b32 v13, v27 offset:576                            // 000000A784DC: D8D80240 0D00001B
	ds_load_b32 v14, v27 offset:608                            // 000000A784E4: D8D80260 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A784EC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A784F0: 56001706
	s_setprio 1                                                // 000000A784F4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A784F8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A784FC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A78500: 56061907
	s_setprio 0                                                // 000000A78504: BFB50000
	ds_load_b32 v6, v26 offset:1280                            // 000000A78508: D8D80500 0600001A
	ds_load_b32 v7, v26 offset:1344                            // 000000A78510: D8D80540 0700001A
	ds_load_b32 v11, v27 offset:640                            // 000000A78518: D8D80280 0B00001B
	ds_load_b32 v12, v27 offset:672                            // 000000A78520: D8D802A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78528: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A7852C: 56001B08
	s_setprio 1                                                // 000000A78530: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A78534: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A78538: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A7853C: 56061D09
	s_setprio 0                                                // 000000A78540: BFB50000
	ds_load_b32 v8, v26 offset:1408                            // 000000A78544: D8D80580 0800001A
	ds_load_b32 v9, v26 offset:1472                            // 000000A7854C: D8D805C0 0900001A
	ds_load_b32 v13, v27 offset:704                            // 000000A78554: D8D802C0 0D00001B
	ds_load_b32 v14, v27 offset:736                            // 000000A7855C: D8D802E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78564: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A78568: 56001706
	s_setprio 1                                                // 000000A7856C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A78570: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A78574: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A78578: 56061907
	s_setprio 0                                                // 000000A7857C: BFB50000
	ds_load_b32 v6, v26 offset:1536                            // 000000A78580: D8D80600 0600001A
	ds_load_b32 v7, v26 offset:1600                            // 000000A78588: D8D80640 0700001A
	ds_load_b32 v11, v27 offset:768                            // 000000A78590: D8D80300 0B00001B
	ds_load_b32 v12, v27 offset:800                            // 000000A78598: D8D80320 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A785A0: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A785A4: 56001B08
	s_setprio 1                                                // 000000A785A8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A785AC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A785B0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A785B4: 56061D09
	s_setprio 0                                                // 000000A785B8: BFB50000
	ds_load_b32 v8, v26 offset:1664                            // 000000A785BC: D8D80680 0800001A
	ds_load_b32 v9, v26 offset:1728                            // 000000A785C4: D8D806C0 0900001A
	ds_load_b32 v13, v27 offset:832                            // 000000A785CC: D8D80340 0D00001B
	ds_load_b32 v14, v27 offset:864                            // 000000A785D4: D8D80360 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A785DC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A785E0: 56001706
	s_setprio 1                                                // 000000A785E4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A785E8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A785EC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A785F0: 56061907
	s_setprio 0                                                // 000000A785F4: BFB50000
	ds_load_b32 v6, v26 offset:1792                            // 000000A785F8: D8D80700 0600001A
	ds_load_b32 v7, v26 offset:1856                            // 000000A78600: D8D80740 0700001A
	ds_load_b32 v11, v27 offset:896                            // 000000A78608: D8D80380 0B00001B
	ds_load_b32 v12, v27 offset:928                            // 000000A78610: D8D803A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78618: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A7861C: 56001B08
	s_setprio 1                                                // 000000A78620: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A78624: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A78628: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A7862C: 56061D09
	s_setprio 0                                                // 000000A78630: BFB50000
	ds_load_b32 v8, v26 offset:1920                            // 000000A78634: D8D80780 0800001A
	ds_load_b32 v9, v26 offset:1984                            // 000000A7863C: D8D807C0 0900001A
	ds_load_b32 v13, v27 offset:960                            // 000000A78644: D8D803C0 0D00001B
	ds_load_b32 v14, v27 offset:992                            // 000000A7864C: D8D803E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78654: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A78658: 56001706
	s_setprio 1                                                // 000000A7865C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A78660: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A78664: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A78668: 56061907
	s_setprio 0                                                // 000000A7866C: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000A78670: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A78674: 56001B08
	s_setprio 1                                                // 000000A78678: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A7867C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A78680: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A78684: 56061D09
	s_setprio 0                                                // 000000A78688: BFB50000

0000000000a7868c <Summation_End_OptNLL_16>:
	v_lshrrev_b32_e32 v7, 4, v28                               // 000000A7868C: 320E3884
	v_and_b32_e32 v6, 15, v28                                  // 000000A78690: 360C388F
	v_mul_lo_u32 v8, v7, s40                                   // 000000A78694: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000A7869C: D72C0009 00004D07
	s_mul_i32 s52, 32, s2                                      // 000000A786A4: 963402A0
	v_add_co_u32 v6, vcc_lo, s52, v6                           // 000000A786A8: D7006A06 00020C34
	s_mul_i32 s54, 16, s3                                      // 000000A786B0: 96360390
	v_add_co_u32 v7, vcc_lo, s54, v7                           // 000000A786B4: D7006A07 00020E36

0000000000a786bc <GW_B0_E0_19>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000A786BC: D647000C 020A0D09
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000A786C4: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:64      // 000000A786CC: E0680040 8044010C
	s_mul_i32 s52, s38, 32                                     // 000000A786D4: 9634A026
	s_add_u32 s16, s16, s52                                    // 000000A786D8: 80103410
	s_addc_u32 s17, s17, 0                                     // 000000A786DC: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000A786E0: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:64      // 000000A786E8: E0680040 8044030C
	s_branch label_GW_End_21                                   // 000000A786F0: BFA00000

0000000000a786f4 <label_GW_End_21>:
	s_endpgm                                                   // 000000A786F4: BFB00000

0000000000a786f8 <OptNLL_End_15>:
	ds_load_b32 v8, v26 offset:128                             // 000000A786F8: D8D80080 0800001A
	ds_load_b32 v9, v26 offset:192                             // 000000A78700: D8D800C0 0900001A
	ds_load_b32 v13, v27 offset:64                             // 000000A78708: D8D80040 0D00001B
	ds_load_b32 v14, v27 offset:96                             // 000000A78710: D8D80060 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78718: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A7871C: 56001706
	s_setprio 1                                                // 000000A78720: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A78724: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A78728: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A7872C: 56061907
	s_setprio 0                                                // 000000A78730: BFB50000
	ds_load_b32 v6, v26 offset:256                             // 000000A78734: D8D80100 0600001A
	ds_load_b32 v7, v26 offset:320                             // 000000A7873C: D8D80140 0700001A
	ds_load_b32 v11, v27 offset:128                            // 000000A78744: D8D80080 0B00001B
	ds_load_b32 v12, v27 offset:160                            // 000000A7874C: D8D800A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78754: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A78758: 56001B08
	s_setprio 1                                                // 000000A7875C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A78760: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A78764: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A78768: 56061D09
	s_setprio 0                                                // 000000A7876C: BFB50000
	ds_load_b32 v8, v26 offset:384                             // 000000A78770: D8D80180 0800001A
	ds_load_b32 v9, v26 offset:448                             // 000000A78778: D8D801C0 0900001A
	ds_load_b32 v13, v27 offset:192                            // 000000A78780: D8D800C0 0D00001B
	ds_load_b32 v14, v27 offset:224                            // 000000A78788: D8D800E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78790: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A78794: 56001706
	s_setprio 1                                                // 000000A78798: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A7879C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A787A0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A787A4: 56061907
	s_setprio 0                                                // 000000A787A8: BFB50000
	ds_load_b32 v6, v26 offset:512                             // 000000A787AC: D8D80200 0600001A
	ds_load_b32 v7, v26 offset:576                             // 000000A787B4: D8D80240 0700001A
	ds_load_b32 v11, v27 offset:256                            // 000000A787BC: D8D80100 0B00001B
	ds_load_b32 v12, v27 offset:288                            // 000000A787C4: D8D80120 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A787CC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A787D0: 56001B08
	s_setprio 1                                                // 000000A787D4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A787D8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A787DC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A787E0: 56061D09
	s_setprio 0                                                // 000000A787E4: BFB50000
	ds_load_b32 v8, v26 offset:640                             // 000000A787E8: D8D80280 0800001A
	ds_load_b32 v9, v26 offset:704                             // 000000A787F0: D8D802C0 0900001A
	ds_load_b32 v13, v27 offset:320                            // 000000A787F8: D8D80140 0D00001B
	ds_load_b32 v14, v27 offset:352                            // 000000A78800: D8D80160 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78808: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A7880C: 56001706
	s_setprio 1                                                // 000000A78810: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A78814: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A78818: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A7881C: 56061907
	s_setprio 0                                                // 000000A78820: BFB50000
	ds_load_b32 v6, v26 offset:768                             // 000000A78824: D8D80300 0600001A
	ds_load_b32 v7, v26 offset:832                             // 000000A7882C: D8D80340 0700001A
	ds_load_b32 v11, v27 offset:384                            // 000000A78834: D8D80180 0B00001B
	ds_load_b32 v12, v27 offset:416                            // 000000A7883C: D8D801A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78844: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A78848: 56001B08
	s_setprio 1                                                // 000000A7884C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A78850: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A78854: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A78858: 56061D09
	s_setprio 0                                                // 000000A7885C: BFB50000
	ds_load_b32 v8, v26 offset:896                             // 000000A78860: D8D80380 0800001A
	ds_load_b32 v9, v26 offset:960                             // 000000A78868: D8D803C0 0900001A
	ds_load_b32 v13, v27 offset:448                            // 000000A78870: D8D801C0 0D00001B
	ds_load_b32 v14, v27 offset:480                            // 000000A78878: D8D801E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78880: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A78884: 56001706
	s_setprio 1                                                // 000000A78888: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A7888C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A78890: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A78894: 56061907
	s_setprio 0                                                // 000000A78898: BFB50000
	ds_load_b32 v6, v26 offset:1024                            // 000000A7889C: D8D80400 0600001A
	ds_load_b32 v7, v26 offset:1088                            // 000000A788A4: D8D80440 0700001A
	ds_load_b32 v11, v27 offset:512                            // 000000A788AC: D8D80200 0B00001B
	ds_load_b32 v12, v27 offset:544                            // 000000A788B4: D8D80220 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A788BC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A788C0: 56001B08
	s_setprio 1                                                // 000000A788C4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A788C8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A788CC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A788D0: 56061D09
	s_setprio 0                                                // 000000A788D4: BFB50000
	ds_load_b32 v8, v26 offset:1152                            // 000000A788D8: D8D80480 0800001A
	ds_load_b32 v9, v26 offset:1216                            // 000000A788E0: D8D804C0 0900001A
	ds_load_b32 v13, v27 offset:576                            // 000000A788E8: D8D80240 0D00001B
	ds_load_b32 v14, v27 offset:608                            // 000000A788F0: D8D80260 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A788F8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A788FC: 56001706
	s_setprio 1                                                // 000000A78900: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A78904: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A78908: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A7890C: 56061907
	s_setprio 0                                                // 000000A78910: BFB50000
	ds_load_b32 v6, v26 offset:1280                            // 000000A78914: D8D80500 0600001A
	ds_load_b32 v7, v26 offset:1344                            // 000000A7891C: D8D80540 0700001A
	ds_load_b32 v11, v27 offset:640                            // 000000A78924: D8D80280 0B00001B
	ds_load_b32 v12, v27 offset:672                            // 000000A7892C: D8D802A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78934: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A78938: 56001B08
	s_setprio 1                                                // 000000A7893C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A78940: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A78944: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A78948: 56061D09
	s_setprio 0                                                // 000000A7894C: BFB50000
	ds_load_b32 v8, v26 offset:1408                            // 000000A78950: D8D80580 0800001A
	ds_load_b32 v9, v26 offset:1472                            // 000000A78958: D8D805C0 0900001A
	ds_load_b32 v13, v27 offset:704                            // 000000A78960: D8D802C0 0D00001B
	ds_load_b32 v14, v27 offset:736                            // 000000A78968: D8D802E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78970: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A78974: 56001706
	s_setprio 1                                                // 000000A78978: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A7897C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A78980: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A78984: 56061907
	s_setprio 0                                                // 000000A78988: BFB50000
	ds_load_b32 v6, v26 offset:1536                            // 000000A7898C: D8D80600 0600001A
	ds_load_b32 v7, v26 offset:1600                            // 000000A78994: D8D80640 0700001A
	ds_load_b32 v11, v27 offset:768                            // 000000A7899C: D8D80300 0B00001B
	ds_load_b32 v12, v27 offset:800                            // 000000A789A4: D8D80320 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A789AC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A789B0: 56001B08
	s_setprio 1                                                // 000000A789B4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A789B8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A789BC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A789C0: 56061D09
	s_setprio 0                                                // 000000A789C4: BFB50000
	ds_load_b32 v8, v26 offset:1664                            // 000000A789C8: D8D80680 0800001A
	ds_load_b32 v9, v26 offset:1728                            // 000000A789D0: D8D806C0 0900001A
	ds_load_b32 v13, v27 offset:832                            // 000000A789D8: D8D80340 0D00001B
	ds_load_b32 v14, v27 offset:864                            // 000000A789E0: D8D80360 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A789E8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A789EC: 56001706
	s_setprio 1                                                // 000000A789F0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A789F4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A789F8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A789FC: 56061907
	s_setprio 0                                                // 000000A78A00: BFB50000
	ds_load_b32 v6, v26 offset:1792                            // 000000A78A04: D8D80700 0600001A
	ds_load_b32 v7, v26 offset:1856                            // 000000A78A0C: D8D80740 0700001A
	ds_load_b32 v11, v27 offset:896                            // 000000A78A14: D8D80380 0B00001B
	ds_load_b32 v12, v27 offset:928                            // 000000A78A1C: D8D803A0 0C00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78A24: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A78A28: 56001B08
	s_setprio 1                                                // 000000A78A2C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A78A30: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A78A34: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A78A38: 56061D09
	s_setprio 0                                                // 000000A78A3C: BFB50000
	ds_load_b32 v8, v26 offset:1920                            // 000000A78A40: D8D80780 0800001A
	ds_load_b32 v9, v26 offset:1984                            // 000000A78A48: D8D807C0 0900001A
	ds_load_b32 v13, v27 offset:960                            // 000000A78A50: D8D803C0 0D00001B
	ds_load_b32 v14, v27 offset:992                            // 000000A78A58: D8D803E0 0E00001B
	s_waitcnt lgkmcnt(4)                                       // 000000A78A60: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A78A64: 56001706
	s_setprio 1                                                // 000000A78A68: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A78A6C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A78A70: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A78A74: 56061907
	s_setprio 0                                                // 000000A78A78: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000A78A7C: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000A78A80: 56001B08
	s_setprio 1                                                // 000000A78A84: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000A78A88: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000A78A8C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000A78A90: 56061D09
	s_setprio 0                                                // 000000A78A94: BFB50000

0000000000a78a98 <PrefetchGlobalLastIterEnd_5>:
	v_and_b32_e32 v15, 0xf00fff, v15                           // 000000A78A98: 361E1EFF 00F00FFF
	v_and_b32_e32 v16, 0xf00fff, v16                           // 000000A78AA0: 362020FF 00F00FFF
	s_and_b32 s5, 15, s49                                      // 000000A78AA8: 8B05318F
	s_cmp_eq_u32 s5, 0                                         // 000000A78AAC: BF068005
	s_cbranch_scc1 SkipTailLoopL_8                             // 000000A78AB0: BFA2003D
	s_mov_b32 s6, 0                                            // 000000A78AB4: BE860080
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000A78AB8: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000A78AC0: E0500000 1F421511
	buffer_load_b32 v22, v17, s[8:11], s32 offen               // 000000A78AC8: E0500000 20421611
	buffer_load_b32 v23, v17, s[8:11], s33 offen               // 000000A78AD0: E0500000 21421711
	buffer_load_b32 v24, v18, s[12:15], 0 offen                // 000000A78AD8: E0500000 80431812
	buffer_load_b32 v25, v18, s[12:15], s34 offen              // 000000A78AE0: E0500000 22431912
	s_waitcnt vmcnt(0)                                         // 000000A78AE8: BF8903F7
	s_waitcnt_lgkmcnt null, 0x0                                // 000000A78AEC: BDFC0000
	s_barrier                                                  // 000000A78AF0: BFBD0000
	ds_store_b32 v15, v20                                      // 000000A78AF4: D8340000 0000140F
	ds_store_b32 v15, v21 offset:512                           // 000000A78AFC: D8340200 0000150F
	ds_store_b32 v15, v22 offset:1024                          // 000000A78B04: D8340400 0000160F
	ds_store_b32 v15, v23 offset:1536                          // 000000A78B0C: D8340600 0000170F
	ds_store_b32 v16, v24                                      // 000000A78B14: D8340000 00001810
	ds_store_b32 v16, v25 offset:32                            // 000000A78B1C: D8340020 00001910
	s_waitcnt lgkmcnt(0)                                       // 000000A78B24: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000A78B28: BDFC0000
	s_barrier                                                  // 000000A78B2C: BFBD0000
	v_and_b32_e32 v26, 0xfff, v26                              // 000000A78B30: 363434FF 00000FFF
	v_and_b32_e32 v27, 0xfff, v27                              // 000000A78B38: 363636FF 00000FFF

0000000000a78b40 <TailLoopBeginL_6>:
	ds_load_b32 v6, v26                                        // 000000A78B40: D8D80000 0600001A
	ds_load_b32 v7, v26 offset:64                              // 000000A78B48: D8D80040 0700001A
	ds_load_b32 v11, v27                                       // 000000A78B50: D8D80000 0B00001B
	ds_load_b32 v12, v27 offset:32                             // 000000A78B58: D8D80020 0C00001B
	s_mov_b32 s35, 0x80                                        // 000000A78B60: BEA300FF 00000080
	v_add_co_u32 v26, vcc_lo, s35, v26                         // 000000A78B68: D7006A1A 00023423
	s_mov_b32 s35, 64                                          // 000000A78B70: BEA300C0
	v_add_co_u32 v27, vcc_lo, s35, v27                         // 000000A78B74: D7006A1B 00023623
	s_waitcnt lgkmcnt(0)                                       // 000000A78B7C: BF89FC07
	v_fmac_f32_e32 v0, v6, v11                                 // 000000A78B80: 56001706
	s_setprio 1                                                // 000000A78B84: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000A78B88: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000A78B8C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000A78B90: 56061907
	s_setprio 0                                                // 000000A78B94: BFB50000
	s_sub_i32 s5, s5, 1                                        // 000000A78B98: 81858105
	s_add_u32 s6, s6, 1                                        // 000000A78B9C: 80068106
	s_cmp_le_i32 s5, 0                                         // 000000A78BA0: BF058005
	s_cbranch_scc0 TailLoopBeginL_6                            // 000000A78BA4: BFA1FFE6

0000000000a78ba8 <TailLoopEndL_7>:
	v_lshrrev_b32_e32 v7, 4, v28                               // 000000A78BA8: 320E3884
	v_and_b32_e32 v6, 15, v28                                  // 000000A78BAC: 360C388F
	v_mul_lo_u32 v8, v7, s40                                   // 000000A78BB0: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000A78BB8: D72C0009 00004D07
	s_mul_i32 s52, 32, s2                                      // 000000A78BC0: 963402A0
	v_add_co_u32 v6, vcc_lo, s52, v6                           // 000000A78BC4: D7006A06 00020C34
	s_mul_i32 s54, 16, s3                                      // 000000A78BCC: 96360390
	v_add_co_u32 v7, vcc_lo, s54, v7                           // 000000A78BD0: D7006A07 00020E36
	s_cmpk_eq_u32 s37, 0x0                                     // 000000A78BD8: B4A50000
	s_cbranch_scc0 GW_Beta_43                                  // 000000A78BDC: BFA1005B
	s_and_b32 s52, 31, s46                                     // 000000A78BE0: 8B342E9F
	s_add_u32 s53, -1, s50                                     // 000000A78BE4: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000A78BE8: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000A78BEC: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000A78BF0: B5B40000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000A78BF4: BFA20018
	s_and_b32 s52, 15, s47                                     // 000000A78BF8: 8B342F8F
	s_add_u32 s53, -1, s51                                     // 000000A78BFC: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000A78C00: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000A78C04: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000A78C08: B5B40000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000A78C0C: BFA20012

0000000000a78c10 <GW_B0_E0_31>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000A78C10: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000A78C18: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000A78C1C: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000A78C20: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000A78C24: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000A78C28: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:64      // 000000A78C30: E0680040 8044010C
	s_mul_i32 s52, s38, 32                                     // 000000A78C38: 9634A026
	s_add_u32 s16, s16, s52                                    // 000000A78C3C: 80103410
	s_addc_u32 s17, s17, 0                                     // 000000A78C40: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000A78C44: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:64      // 000000A78C4C: E0680040 8044030C
	s_branch label_0047                                        // 000000A78C54: BFA000D3

0000000000a78c58 <GW_B0_E1_34>:
	v_cmp_lt_u32_e64 s52, v6, s46                              // 000000A78C58: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000A78C60: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000A78C68: 8B363634
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000A78C6C: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s54                        // 000000A78C74: D501000C 00DA18C1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000A78C7C: D7006A0A 00012106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 000000A78C84: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000A78C8C: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000A78C94: 8B363634
	v_add_lshl_u32 v13, v9, v10, 2                             // 000000A78C98: D647000D 020A1509
	v_cndmask_b32_e64 v13, -1, v13, s54                        // 000000A78CA0: D501000D 00DA1AC1
	v_add_co_u32 v7, vcc_lo, v7, 8                             // 000000A78CA8: D7006A07 00011107
	s_mul_i32 s52, s40, 8                                      // 000000A78CB0: 96348828
	v_add_nc_u32_e64 v8, v8, s52                               // 000000A78CB4: D5250008 00006908
	s_mul_i32 s52, s38, 8                                      // 000000A78CBC: 96348826
	v_add_nc_u32_e64 v9, v9, s52                               // 000000A78CC0: D5250009 00006909
	v_cmp_lt_u32_e64 s52, v6, s46                              // 000000A78CC8: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000A78CD0: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000A78CD8: 8B363634
	v_add_lshl_u32 v14, v9, v6, 2                              // 000000A78CDC: D647000E 020A0D09
	v_cndmask_b32_e64 v14, -1, v14, s54                        // 000000A78CE4: D501000E 00DA1CC1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000A78CEC: D7006A0A 00012106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 000000A78CF4: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000A78CFC: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000A78D04: 8B363634
	v_add_lshl_u32 v15, v9, v10, 2                             // 000000A78D08: D647000F 020A1509
	v_cndmask_b32_e64 v15, -1, v15, s54                        // 000000A78D10: D501000F 00DA1EC1
	v_mul_f32_e32 v0, s36, v0                                  // 000000A78D18: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000A78D1C: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000A78D20: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000A78D24: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000A78D28: E0680000 8044000C
	buffer_store_b32 v1, v13, s[16:19], 0 offen                // 000000A78D30: E0680000 8044010D
	buffer_store_b32 v2, v14, s[16:19], 0 offen                // 000000A78D38: E0680000 8044020E
	buffer_store_b32 v3, v15, s[16:19], 0 offen                // 000000A78D40: E0680000 8044030F
	s_branch label_0047                                        // 000000A78D48: BFA00096

0000000000a78d4c <GW_Beta_43>:
	s_and_b32 s52, 31, s46                                     // 000000A78D4C: 8B342E9F
	s_add_u32 s53, -1, s50                                     // 000000A78D50: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000A78D54: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000A78D58: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000A78D5C: B5B40000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000A78D60: BFA20031
	s_and_b32 s52, 15, s47                                     // 000000A78D64: 8B342F8F
	s_add_u32 s53, -1, s51                                     // 000000A78D68: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000A78D6C: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000A78D70: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000A78D74: B5B40000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000A78D78: BFA2002B

0000000000a78d7c <GW_B1_E0_38>:
	v_add_lshl_u32 v13, v8, v6, 2                              // 000000A78D7C: D647000D 020A0D08
	buffer_load_b32 v14, v13, s[20:23], 0 offen                // 000000A78D84: E0500000 80450E0D
	buffer_load_b32 v15, v13, s[20:23], 0 offen offset:64      // 000000A78D8C: E0500040 80450F0D
	s_mul_i32 s52, s40, 32                                     // 000000A78D94: 9634A028
	s_add_u32 s20, s20, s52                                    // 000000A78D98: 80143414
	s_addc_u32 s21, s21, 0                                     // 000000A78D9C: 82158015
	buffer_load_b32 v16, v13, s[20:23], 0 offen                // 000000A78DA0: E0500000 8045100D
	buffer_load_b32 v17, v13, s[20:23], 0 offen offset:64      // 000000A78DA8: E0500040 8045110D
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000A78DB0: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000A78DB8: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000A78DBC: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000A78DC0: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000A78DC4: 10060624
	s_waitcnt vmcnt(3)                                         // 000000A78DC8: BF890FF7
	v_fmac_f32_e64 v0, v14, s37                                // 000000A78DCC: D52B0000 00004B0E
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000A78DD4: E0680000 8044000C
	s_waitcnt vmcnt(2)                                         // 000000A78DDC: BF890BF7
	v_fmac_f32_e64 v1, v15, s37                                // 000000A78DE0: D52B0001 00004B0F
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:64      // 000000A78DE8: E0680040 8044010C
	s_waitcnt vmcnt(1)                                         // 000000A78DF0: BF8907F7
	v_fmac_f32_e64 v2, v16, s37                                // 000000A78DF4: D52B0002 00004B10
	s_mul_i32 s52, s38, 32                                     // 000000A78DFC: 9634A026
	s_add_u32 s16, s16, s52                                    // 000000A78E00: 80103410
	s_addc_u32 s17, s17, 0                                     // 000000A78E04: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000A78E08: E0680000 8044020C
	s_waitcnt vmcnt(0)                                         // 000000A78E10: BF8903F7
	v_fmac_f32_e64 v3, v17, s37                                // 000000A78E14: D52B0003 00004B11
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:64      // 000000A78E1C: E0680040 8044030C
	s_branch label_0047                                        // 000000A78E24: BFA0005F

0000000000a78e28 <GW_B1_E1_41>:
	v_cmp_lt_u32_e64 s52, v6, s46                              // 000000A78E28: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000A78E30: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000A78E38: 8B363634
	v_add_lshl_u32 v12, v8, v6, 2                              // 000000A78E3C: D647000C 020A0D08
	v_cndmask_b32_e64 v12, -1, v12, s54                        // 000000A78E44: D501000C 00DA18C1
	buffer_load_b32 v13, v12, s[20:23], 0 offen                // 000000A78E4C: E0500000 80450D0C
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000A78E54: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s54                        // 000000A78E5C: D501000C 00DA18C1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000A78E64: D7006A0A 00012106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 000000A78E6C: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000A78E74: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000A78E7C: 8B363634
	v_add_lshl_u32 v14, v8, v10, 2                             // 000000A78E80: D647000E 020A1508
	v_cndmask_b32_e64 v14, -1, v14, s54                        // 000000A78E88: D501000E 00DA1CC1
	buffer_load_b32 v15, v14, s[20:23], 0 offen                // 000000A78E90: E0500000 80450F0E
	v_add_lshl_u32 v14, v9, v10, 2                             // 000000A78E98: D647000E 020A1509
	v_cndmask_b32_e64 v14, -1, v14, s54                        // 000000A78EA0: D501000E 00DA1CC1
	v_add_co_u32 v7, vcc_lo, v7, 8                             // 000000A78EA8: D7006A07 00011107
	s_mul_i32 s52, s40, 8                                      // 000000A78EB0: 96348828
	v_add_nc_u32_e64 v8, v8, s52                               // 000000A78EB4: D5250008 00006908
	s_mul_i32 s52, s38, 8                                      // 000000A78EBC: 96348826
	v_add_nc_u32_e64 v9, v9, s52                               // 000000A78EC0: D5250009 00006909
	v_cmp_lt_u32_e64 s52, v6, s46                              // 000000A78EC8: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000A78ED0: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000A78ED8: 8B363634
	v_add_lshl_u32 v16, v8, v6, 2                              // 000000A78EDC: D6470010 020A0D08
	v_cndmask_b32_e64 v16, -1, v16, s54                        // 000000A78EE4: D5010010 00DA20C1
	buffer_load_b32 v17, v16, s[20:23], 0 offen                // 000000A78EEC: E0500000 80451110
	v_add_lshl_u32 v16, v9, v6, 2                              // 000000A78EF4: D6470010 020A0D09
	v_cndmask_b32_e64 v16, -1, v16, s54                        // 000000A78EFC: D5010010 00DA20C1
	v_add_co_u32 v10, vcc_lo, v6, 16                           // 000000A78F04: D7006A0A 00012106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 000000A78F0C: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000A78F14: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000A78F1C: 8B363634
	v_add_lshl_u32 v18, v8, v10, 2                             // 000000A78F20: D6470012 020A1508
	v_cndmask_b32_e64 v18, -1, v18, s54                        // 000000A78F28: D5010012 00DA24C1
	buffer_load_b32 v19, v18, s[20:23], 0 offen                // 000000A78F30: E0500000 80451312
	v_add_lshl_u32 v18, v9, v10, 2                             // 000000A78F38: D6470012 020A1509
	v_cndmask_b32_e64 v18, -1, v18, s54                        // 000000A78F40: D5010012 00DA24C1
	v_mul_f32_e32 v0, s36, v0                                  // 000000A78F48: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000A78F4C: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000A78F50: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000A78F54: 10060624
	s_waitcnt vmcnt(0)                                         // 000000A78F58: BF8903F7
	s_waitcnt_vscnt null, 0x0                                  // 000000A78F5C: BC7C0000
	v_fmac_f32_e64 v0, v13, s37                                // 000000A78F60: D52B0000 00004B0D
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000A78F68: E0680000 8044000C
	v_fmac_f32_e64 v1, v15, s37                                // 000000A78F70: D52B0001 00004B0F
	buffer_store_b32 v1, v14, s[16:19], 0 offen                // 000000A78F78: E0680000 8044010E
	v_fmac_f32_e64 v2, v17, s37                                // 000000A78F80: D52B0002 00004B11
	buffer_store_b32 v2, v16, s[16:19], 0 offen                // 000000A78F88: E0680000 80440210
	v_fmac_f32_e64 v3, v19, s37                                // 000000A78F90: D52B0003 00004B13
	buffer_store_b32 v3, v18, s[16:19], 0 offen                // 000000A78F98: E0680000 80440312
	s_branch label_0047                                        // 000000A78FA0: BFA00000

0000000000a78fa4 <label_GW_End_42>:
	s_endpgm                                                   // 000000A78FA4: BFB00000
		...
