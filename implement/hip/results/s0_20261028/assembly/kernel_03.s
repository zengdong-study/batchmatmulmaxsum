
/root/batchmatmulmaxsum/implement/hip/results/s0_20261028/code_objects/_code_object0006.o:	file format elf64-amdgpu

Disassembly of section .text:

0000000000bc5600 <Cijk_Ailk_Bjlk_SB_MT64x32x8_SN_1LDSB0_APM1_ABV0_ACED0_AF0EM1_AF1EM1_AMAS0_ASE_ASGT_ASLT_ASM_ASAE01_ASCE01_ASEM1_AAC0_BL1_BS1_CLR0_DTLA0_DTLB0_DTVA0_DTVB0_DVO0_ETSP_EPS1_ELFLR0_EMLL0_FSSC10_FL0_GLVWA1_GLVWB1_GRCGA1_GRCGB1_GRPM1_GRVW1_GSU1_GSUASB_GLS0_ISA1100_IU1_K1_KLA_LBSPPA0_LBSPPB0_LPA0_LPB0_LDL1_LRVW1_LWPMn1_LDW0_FMA_MIAV0_MDA2_MO40_MMFGLC_MKFGSU256_NTA0_NTB0_NTC0_NTD0_NEPBS0_NLCA1_NLCB1_ONLL1_OPLV0_PK0_PAP0_PGR1_PLR1_PKA0_SIA1_SLW1_SS0_SU0_SUM0_SUS0_SCIUI1_SPO0_SRVW0_SSO0_SVW4_SNLL0_TSGRA0_TSGRB0_TT4_4_TLDS0_UMLDSA0_UMLDSB0_U64SL1_USFGROn1_VAW1_VSn1_VW1_VWB1_VFLRP0_WSGRA0_WSGRB0_WS32_WG16_8_1_WGM4_preloaded>:
	s_mov_b32 vcc_hi, 0                                        // 000000BC5600: BEEB0080
	s_load_b512 s[24:39], s[0:1], null                         // 000000BC5604: F4100600 F8000000
	s_load_b256 s[40:47], s[0:1], 0x40                         // 000000BC560C: F40C0A00 F8000040
	s_load_b128 s[48:51], s[0:1], 0x60                         // 000000BC5614: F4080C00 F8000060
	s_load_b64 s[52:53], s[0:1], 0x70                          // 000000BC561C: F4040D00 F8000070
	s_load_b32 s54, s[0:1], 0x78                               // 000000BC5624: F4000D80 F8000078
	s_mov_b32 m0, 0x1c00                                       // 000000BC562C: BEFD00FF 00001C00
	v_mov_b32_e32 v48, v0                                      // 000000BC5634: 7E600300
	v_lshrrev_b32_e32 v0, 4, v48                               // 000000BC5638: 32006084
	v_and_b32_e32 v1, 15, v48                                  // 000000BC563C: 3602608F
	v_lshrrev_b32_e32 v2, 3, v0                                // 000000BC5640: 32040083
	v_and_b32_e32 v3, 7, v0                                    // 000000BC5644: 36060087
	v_lshrrev_b32_e32 v0, 7, v48                               // 000000BC5648: 32006087
	v_lshlrev_b32_e32 v0, 6, v0                                // 000000BC564C: 30000086
	v_add_lshl_u32 v46, v0, v1, 2                              // 000000BC5650: D647002E 020A0300
	v_lshrrev_b32_e32 v0, 7, v48                               // 000000BC5658: 32006087
	v_lshlrev_b32_e32 v0, 5, v0                                // 000000BC565C: 30000085
	v_add_lshl_u32 v47, v0, v3, 2                              // 000000BC5660: D647002F 020A0700
	v_add_co_u32 v47, vcc_lo, 0x800, v47                       // 000000BC5668: D7006A2F 00025EFF 00000800
	v_lshrrev_b32_e32 v1, 6, v48                               // 000000BC5674: 32026086
	v_and_b32_e32 v0, 63, v48                                  // 000000BC5678: 360060BF
	v_lshrrev_b32_e32 v3, 5, v48                               // 000000BC567C: 32066085
	v_and_b32_e32 v2, 31, v48                                  // 000000BC5680: 3604609F
	v_mul_u32_u24_e32 v35, 64, v1                              // 000000BC5684: 164602C0
	v_add_lshl_u32 v35, v0, v35, 2                             // 000000BC5688: D6470023 020A4700
	v_mul_u32_u24_e32 v36, 32, v3                              // 000000BC5690: 164806A0
	v_add_lshl_u32 v36, v2, v36, 2                             // 000000BC5694: D6470024 020A4902
	v_add_co_u32 v36, vcc_lo, 0x800, v36                       // 000000BC569C: D7006A24 000248FF 00000800
	s_waitcnt lgkmcnt(0)                                       // 000000BC56A8: BF89FC07
	s_mov_b64 s[20:21], s[30:31]                               // 000000BC56AC: BE94011E
	s_mov_b64 s[16:17], s[28:29]                               // 000000BC56B0: BE90011C
	s_sub_u32 s8, s32, 4                                       // 000000BC56B4: 80888420
	s_subb_u32 s9, s33, 0                                      // 000000BC56B8: 82898021
	s_sub_u32 s12, s34, 4                                      // 000000BC56BC: 808C8422
	s_subb_u32 s13, s35, 0                                     // 000000BC56C0: 828D8023
	v_cmp_eq_f32_e64 vcc_lo, s36, 0                            // 000000BC56C4: D412006A 00010024
	s_cbranch_vccz label_AlphaNonZero                          // 000000BC56CC: BFA30001
	s_mov_b32 s49, 0                                           // 000000BC56D0: BEB10080

0000000000bc56d4 <label_AlphaNonZero>:
	s_mov_b32 s61, 0x20000001                                  // 000000BC56D4: BEBD00FF 20000001
	s_mul_hi_u32 s59, s3, s61                                  // 000000BC56DC: 96BB3D03
	s_mul_i32 s58, s3, s61                                     // 000000BC56E0: 963A3D03
	s_lshr_b64 s[58:59], s[58:59], 31                          // 000000BC56E4: 85BA9F3A
	s_mul_i32 s59, s58, 4                                      // 000000BC56E8: 963B843A
	s_sub_u32 s59, s3, s59                                     // 000000BC56EC: 80BB3B03
	s_mul_i32 s59, s59, s50                                    // 000000BC56F0: 963B323B
	s_add_u32 s59, s59, s2                                     // 000000BC56F4: 803B023B
	s_cmp_ge_u32 s58, s52                                      // 000000BC56F8: BF09343A
	s_cmov_b32 s61, s54                                        // 000000BC56FC: BEBD0236
	s_cselect_b32 s60, s53, 4                                  // 000000BC5700: 983C8435
	s_mul_hi_u32 s3, s59, s61                                  // 000000BC5704: 96833D3B
	s_mul_i32 s2, s59, s61                                     // 000000BC5708: 96023D3B
	s_lshr_b64 s[2:3], s[2:3], 31                              // 000000BC570C: 85829F02
	s_mul_i32 s3, s2, s60                                      // 000000BC5710: 96033C02
	s_sub_u32 s3, s59, s3                                      // 000000BC5714: 8083033B
	s_mul_i32 s58, s58, 4                                      // 000000BC5718: 963A843A
	s_add_u32 s3, s3, s58                                      // 000000BC571C: 80033A03
	v_mul_lo_u32 v4, s42, v1                                   // 000000BC5720: D72C0004 0002022A
	v_add_co_u32 v37, vcc_lo, v0, v4                           // 000000BC5728: D7006A25 00020900
	v_add_nc_u32_e32 v37, 1, v37                               // 000000BC5730: 4A4A4A81
	v_lshlrev_b32_e32 v37, 2, v37                              // 000000BC5734: 304A4A82
	s_mul_i32 s31, s42, 2                                      // 000000BC5738: 961F822A
	s_lshl_b32 s31, s31, 2                                     // 000000BC573C: 841F821F
	s_mul_i32 s32, s42, 4                                      // 000000BC5740: 9620842A
	s_lshl_b32 s32, s32, 2                                     // 000000BC5744: 84208220
	s_mul_i32 s33, s42, 6                                      // 000000BC5748: 9621862A
	s_lshl_b32 s33, s33, 2                                     // 000000BC574C: 84218221
	v_mul_lo_u32 v4, s44, v3                                   // 000000BC5750: D72C0004 0002062C
	v_add_co_u32 v38, vcc_lo, v2, v4                           // 000000BC5758: D7006A26 00020902
	v_add_nc_u32_e32 v38, 1, v38                               // 000000BC5760: 4A4C4C81
	v_lshlrev_b32_e32 v38, 2, v38                              // 000000BC5764: 304C4C82
	s_mul_i32 s34, s44, 4                                      // 000000BC5768: 9622842C
	s_lshl_b32 s34, s34, 2                                     // 000000BC576C: 84228222
	s_mul_hi_u32 s61, s2, 64                                   // 000000BC5770: 96BDC002
	s_mul_i32 s60, s2, 64                                      // 000000BC5774: 963CC002
	s_sub_u32 s0, s24, s60                                     // 000000BC5778: 80803C18
	s_subb_u32 s1, s25, s61                                    // 000000BC577C: 82813D19
	s_lshl_b64 s[0:1], s[0:1], 2                               // 000000BC5780: 84808200
	s_add_u32 s0, s0, 4                                        // 000000BC5784: 80008400
	s_addc_u32 s1, s1, 0                                       // 000000BC5788: 82018001
	s_cmp_eq_u32 s1, 0                                         // 000000BC578C: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000BC5790: 980AC100
	s_mul_hi_u32 s59, s43, s4                                  // 000000BC5794: 96BB042B
	s_mul_i32 s58, s43, s4                                     // 000000BC5798: 963A042B
	s_add_u32 s60, s60, s58                                    // 000000BC579C: 803C3A3C
	s_addc_u32 s61, s61, s59                                   // 000000BC57A0: 823D3B3D
	s_lshl_b64 s[60:61], s[60:61], 2                           // 000000BC57A4: 84BC823C
	s_add_u32 s8, s8, s60                                      // 000000BC57A8: 80083C08
	s_addc_u32 s9, s9, s61                                     // 000000BC57AC: 82093D09
	s_mov_b32 s11, 0x31004000                                  // 000000BC57B0: BE8B00FF 31004000
	s_mul_hi_u32 s61, s3, 32                                   // 000000BC57B8: 96BDA003
	s_mul_i32 s60, s3, 32                                      // 000000BC57BC: 963CA003
	s_sub_u32 s28, s26, s60                                    // 000000BC57C0: 809C3C1A
	s_subb_u32 s29, s27, s61                                   // 000000BC57C4: 829D3D1B
	s_lshl_b64 s[28:29], s[28:29], 2                           // 000000BC57C8: 849C821C
	s_add_u32 s28, s28, 4                                      // 000000BC57CC: 801C841C
	s_addc_u32 s29, s29, 0                                     // 000000BC57D0: 821D801D
	s_cmp_eq_u32 s29, 0                                        // 000000BC57D4: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000BC57D8: 980EC11C
	s_mul_hi_u32 s59, s45, s4                                  // 000000BC57DC: 96BB042D
	s_mul_i32 s58, s45, s4                                     // 000000BC57E0: 963A042D
	s_add_u32 s60, s60, s58                                    // 000000BC57E4: 803C3A3C
	s_addc_u32 s61, s61, s59                                   // 000000BC57E8: 823D3B3D
	s_lshl_b64 s[60:61], s[60:61], 2                           // 000000BC57EC: 84BC823C
	s_add_u32 s12, s12, s60                                    // 000000BC57F0: 800C3C0C
	s_addc_u32 s13, s13, s61                                   // 000000BC57F4: 820D3D0D
	s_mov_b32 s15, 0x31004000                                  // 000000BC57F8: BE8F00FF 31004000
	s_mul_i32 s7, 32, s42                                      // 000000BC5800: 96072AA0
	s_mul_i32 s30, 32, s44                                     // 000000BC5804: 961E2CA0
	s_lshr_b32 s5, s49, 3                                      // 000000BC5808: 85058331
	s_mov_b32 s6, s5                                           // 000000BC580C: BE860005
	s_cmp_eq_u32 s5, 0                                         // 000000BC5810: BF068005
	s_cbranch_scc1 ShadowInitStart_10                          // 000000BC5814: BFA20018
	buffer_load_b32 v40, v37, s[8:11], 0 offen                 // 000000BC5818: E0500000 80422825
	buffer_load_b32 v41, v37, s[8:11], s31 offen               // 000000BC5820: E0500000 1F422925
	buffer_load_b32 v42, v37, s[8:11], s32 offen               // 000000BC5828: E0500000 20422A25
	buffer_load_b32 v43, v37, s[8:11], s33 offen               // 000000BC5830: E0500000 21422B25
	buffer_load_b32 v44, v38, s[12:15], 0 offen                // 000000BC5838: E0500000 80432C26
	buffer_load_b32 v45, v38, s[12:15], s34 offen              // 000000BC5840: E0500000 22432D26
	s_add_u32 s8, s8, s7                                       // 000000BC5848: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000BC584C: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000BC5850: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000BC5854: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000BC5858: BF068001
	s_cmov_b32 s10, s0                                         // 000000BC585C: BE8A0200
	s_add_u32 s12, s12, s30                                    // 000000BC5860: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000BC5864: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000BC5868: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000BC586C: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000BC5870: BF06801D
	s_cmov_b32 s14, s28                                        // 000000BC5874: BE8E021C

0000000000bc5878 <ShadowInitStart_10>:
	s_mov_b32 s18, 0xfffff000                                  // 000000BC5878: BE9200FF FFFFF000
	s_mov_b32 s19, 0x31004000                                  // 000000BC5880: BE9300FF 31004000
	s_mov_b32 s22, 0xfffff000                                  // 000000BC5888: BE9600FF FFFFF000
	s_mov_b32 s23, 0x31004000                                  // 000000BC5890: BE9700FF 31004000
	s_mul_i32 s58, 32, s3                                      // 000000BC5898: 963A03A0
	s_mul_hi_u32 s57, s58, s40                                 // 000000BC589C: 96B9283A
	s_mul_i32 s56, s58, s40                                    // 000000BC58A0: 9638283A
	s_lshl_b64 s[56:57], s[56:57], 2                           // 000000BC58A4: 84B88238
	s_add_u32 s20, s20, s56                                    // 000000BC58A8: 80143814
	s_addc_u32 s21, s21, s57                                   // 000000BC58AC: 82153915
	s_mul_hi_u32 s57, s58, s38                                 // 000000BC58B0: 96B9263A
	s_mul_i32 s56, s58, s38                                    // 000000BC58B4: 9638263A
	s_lshl_b64 s[56:57], s[56:57], 2                           // 000000BC58B8: 84B88238
	s_add_u32 s16, s16, s56                                    // 000000BC58BC: 80103810
	s_addc_u32 s17, s17, s57                                   // 000000BC58C0: 82113911
	s_mul_hi_u32 s57, s4, s41                                  // 000000BC58C4: 96B92904
	s_mul_i32 s56, s4, s41                                     // 000000BC58C8: 96382904
	s_lshl_b64 s[56:57], s[56:57], 2                           // 000000BC58CC: 84B88238
	s_add_u32 s20, s20, s56                                    // 000000BC58D0: 80143814
	s_addc_u32 s21, s21, s57                                   // 000000BC58D4: 82153915
	s_mul_hi_u32 s57, s4, s39                                  // 000000BC58D8: 96B92704
	s_mul_i32 s56, s4, s39                                     // 000000BC58DC: 96382704
	s_lshl_b64 s[56:57], s[56:57], 2                           // 000000BC58E0: 84B88238
	s_add_u32 s16, s16, s56                                    // 000000BC58E4: 80103810
	s_addc_u32 s17, s17, s57                                   // 000000BC58E8: 82113911
	v_mov_b32_e32 v0, 0                                        // 000000BC58EC: 7E000280
	v_mov_b32_e32 v1, 0                                        // 000000BC58F0: 7E020280
	v_mov_b32_e32 v2, 0                                        // 000000BC58F4: 7E040280
	v_mov_b32_e32 v3, 0                                        // 000000BC58F8: 7E060280
	v_mov_b32_e32 v4, 0                                        // 000000BC58FC: 7E080280
	v_mov_b32_e32 v5, 0                                        // 000000BC5900: 7E0A0280
	v_mov_b32_e32 v6, 0                                        // 000000BC5904: 7E0C0280
	v_mov_b32_e32 v7, 0                                        // 000000BC5908: 7E0E0280
	v_mov_b32_e32 v8, 0                                        // 000000BC590C: 7E100280
	v_mov_b32_e32 v9, 0                                        // 000000BC5910: 7E120280
	v_mov_b32_e32 v10, 0                                       // 000000BC5914: 7E140280
	v_mov_b32_e32 v11, 0                                       // 000000BC5918: 7E160280
	v_mov_b32_e32 v12, 0                                       // 000000BC591C: 7E180280
	v_mov_b32_e32 v13, 0                                       // 000000BC5920: 7E1A0280
	v_mov_b32_e32 v14, 0                                       // 000000BC5924: 7E1C0280
	v_mov_b32_e32 v15, 0                                       // 000000BC5928: 7E1E0280
	s_cmp_eq_u32 s5, 0                                         // 000000BC592C: BF068005
	s_cbranch_scc0 label_NoBranch_11                           // 000000BC5930: BFA10006
	s_getpc_b64 s[56:57]                                       // 000000BC5934: BEB84700
	s_add_i32 s58, 0x145c, 4                                   // 000000BC5938: 813A84FF 0000145C
	s_add_u32 s56, s56, s58                                    // 000000BC5940: 80383A38
	s_addc_u32 s57, s57, 0                                     // 000000BC5944: 82398039
	s_setpc_b64 s[56:57]                                       // 000000BC5948: BE804838

0000000000bc594c <label_NoBranch_11>:
	s_waitcnt vmcnt(0)                                         // 000000BC594C: BF8903F7
	ds_store_b32 v35, v40                                      // 000000BC5950: D8340000 00002823
	ds_store_b32 v35, v41 offset:512                           // 000000BC5958: D8340200 00002923
	ds_store_b32 v35, v42 offset:1024                          // 000000BC5960: D8340400 00002A23
	ds_store_b32 v35, v43 offset:1536                          // 000000BC5968: D8340600 00002B23
	ds_store_b32 v36, v44                                      // 000000BC5970: D8340000 00002C24
	ds_store_b32 v36, v45 offset:512                           // 000000BC5978: D8340200 00002D24
	s_waitcnt lgkmcnt(0)                                       // 000000BC5980: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000BC5984: BDFC0000
	s_barrier                                                  // 000000BC5988: BFBD0000
	ds_load_b32 v18, v46                                       // 000000BC598C: D8D80000 1200002E
	ds_load_b32 v19, v46 offset:64                             // 000000BC5994: D8D80040 1300002E
	ds_load_b32 v20, v46 offset:128                            // 000000BC599C: D8D80080 1400002E
	ds_load_b32 v21, v46 offset:192                            // 000000BC59A4: D8D800C0 1500002E
	ds_load_b32 v27, v47                                       // 000000BC59AC: D8D80000 1B00002F
	ds_load_b32 v28, v47 offset:32                             // 000000BC59B4: D8D80020 1C00002F
	ds_load_b32 v29, v47 offset:64                             // 000000BC59BC: D8D80040 1D00002F
	ds_load_b32 v30, v47 offset:96                             // 000000BC59C4: D8D80060 1E00002F

0000000000bc59cc <openLoopL_12>:
	s_cmp_le_u32 s5, 1                                         // 000000BC59CC: BF0B8105
	s_cbranch_scc1 LoopEndL_2                                  // 000000BC59D0: BFA20295

0000000000bc59d4 <label_0013>:
	ds_load_b32 v22, v46 offset:256                            // 000000BC59D4: D8D80100 1600002E
	ds_load_b32 v23, v46 offset:320                            // 000000BC59DC: D8D80140 1700002E
	ds_load_b32 v24, v46 offset:384                            // 000000BC59E4: D8D80180 1800002E
	ds_load_b32 v25, v46 offset:448                            // 000000BC59EC: D8D801C0 1900002E
	buffer_load_b32 v40, v37, s[8:11], 0 offen                 // 000000BC59F4: E0500000 80422825
	buffer_load_b32 v41, v37, s[8:11], s31 offen               // 000000BC59FC: E0500000 1F422925
	buffer_load_b32 v42, v37, s[8:11], s32 offen               // 000000BC5A04: E0500000 20422A25
	buffer_load_b32 v43, v37, s[8:11], s33 offen               // 000000BC5A0C: E0500000 21422B25
	buffer_load_b32 v44, v38, s[12:15], 0 offen                // 000000BC5A14: E0500000 80432C26
	ds_load_b32 v31, v47 offset:128                            // 000000BC5A1C: D8D80080 1F00002F
	ds_load_b32 v32, v47 offset:160                            // 000000BC5A24: D8D800A0 2000002F
	ds_load_b32 v33, v47 offset:192                            // 000000BC5A2C: D8D800C0 2100002F
	ds_load_b32 v34, v47 offset:224                            // 000000BC5A34: D8D800E0 2200002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC5A3C: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000BC5A40: 56003712
	s_setprio 1                                                // 000000BC5A44: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000BC5A48: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000BC5A4C: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000BC5A50: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000BC5A54: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000BC5A58: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000BC5A5C: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000BC5A60: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000BC5A64: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000BC5A68: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000BC5A6C: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000BC5A70: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000BC5A74: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000BC5A78: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000BC5A7C: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000BC5A80: 561E3D15
	s_setprio 0                                                // 000000BC5A84: BFB50000
	ds_load_b32 v18, v46 offset:512                            // 000000BC5A88: D8D80200 1200002E
	ds_load_b32 v19, v46 offset:576                            // 000000BC5A90: D8D80240 1300002E
	ds_load_b32 v20, v46 offset:640                            // 000000BC5A98: D8D80280 1400002E
	ds_load_b32 v21, v46 offset:704                            // 000000BC5AA0: D8D802C0 1500002E
	buffer_load_b32 v45, v38, s[12:15], s34 offen              // 000000BC5AA8: E0500000 22432D26
	ds_load_b32 v27, v47 offset:256                            // 000000BC5AB0: D8D80100 1B00002F
	ds_load_b32 v28, v47 offset:288                            // 000000BC5AB8: D8D80120 1C00002F
	ds_load_b32 v29, v47 offset:320                            // 000000BC5AC0: D8D80140 1D00002F
	ds_load_b32 v30, v47 offset:352                            // 000000BC5AC8: D8D80160 1E00002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC5AD0: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000BC5AD4: 56003F16
	s_setprio 1                                                // 000000BC5AD8: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000BC5ADC: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000BC5AE0: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000BC5AE4: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000BC5AE8: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000BC5AEC: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000BC5AF0: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000BC5AF4: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000BC5AF8: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000BC5AFC: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000BC5B00: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000BC5B04: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000BC5B08: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000BC5B0C: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000BC5B10: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000BC5B14: 561E4519
	s_setprio 0                                                // 000000BC5B18: BFB50000
	ds_load_b32 v22, v46 offset:768                            // 000000BC5B1C: D8D80300 1600002E
	ds_load_b32 v23, v46 offset:832                            // 000000BC5B24: D8D80340 1700002E
	ds_load_b32 v24, v46 offset:896                            // 000000BC5B2C: D8D80380 1800002E
	ds_load_b32 v25, v46 offset:960                            // 000000BC5B34: D8D803C0 1900002E
	s_add_u32 s8, s8, s7                                       // 000000BC5B3C: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000BC5B40: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000BC5B44: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000BC5B48: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000BC5B4C: BF068001
	s_cmov_b32 s10, s0                                         // 000000BC5B50: BE8A0200
	ds_load_b32 v31, v47 offset:384                            // 000000BC5B54: D8D80180 1F00002F
	ds_load_b32 v32, v47 offset:416                            // 000000BC5B5C: D8D801A0 2000002F
	ds_load_b32 v33, v47 offset:448                            // 000000BC5B64: D8D801C0 2100002F
	ds_load_b32 v34, v47 offset:480                            // 000000BC5B6C: D8D801E0 2200002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC5B74: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000BC5B78: 56003712
	s_setprio 1                                                // 000000BC5B7C: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000BC5B80: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000BC5B84: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000BC5B88: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000BC5B8C: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000BC5B90: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000BC5B94: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000BC5B98: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000BC5B9C: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000BC5BA0: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000BC5BA4: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000BC5BA8: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000BC5BAC: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000BC5BB0: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000BC5BB4: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000BC5BB8: 561E3D15
	s_setprio 0                                                // 000000BC5BBC: BFB50000
	ds_load_b32 v18, v46 offset:1024                           // 000000BC5BC0: D8D80400 1200002E
	ds_load_b32 v19, v46 offset:1088                           // 000000BC5BC8: D8D80440 1300002E
	ds_load_b32 v20, v46 offset:1152                           // 000000BC5BD0: D8D80480 1400002E
	ds_load_b32 v21, v46 offset:1216                           // 000000BC5BD8: D8D804C0 1500002E
	s_add_u32 s12, s12, s30                                    // 000000BC5BE0: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000BC5BE4: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000BC5BE8: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000BC5BEC: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000BC5BF0: BF06801D
	s_cmov_b32 s14, s28                                        // 000000BC5BF4: BE8E021C
	ds_load_b32 v27, v47 offset:512                            // 000000BC5BF8: D8D80200 1B00002F
	ds_load_b32 v28, v47 offset:544                            // 000000BC5C00: D8D80220 1C00002F
	ds_load_b32 v29, v47 offset:576                            // 000000BC5C08: D8D80240 1D00002F
	ds_load_b32 v30, v47 offset:608                            // 000000BC5C10: D8D80260 1E00002F
	s_waitcnt vmcnt(5)                                         // 000000BC5C18: BF8917F7
	ds_store_b32 v35, v40 offset:4096                          // 000000BC5C1C: D8341000 00002823
	s_waitcnt lgkmcnt(9)                                       // 000000BC5C24: BF89FC97
	v_fmac_f32_e32 v0, v22, v31                                // 000000BC5C28: 56003F16
	s_setprio 1                                                // 000000BC5C2C: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000BC5C30: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000BC5C34: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000BC5C38: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000BC5C3C: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000BC5C40: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000BC5C44: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000BC5C48: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000BC5C4C: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000BC5C50: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000BC5C54: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000BC5C58: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000BC5C5C: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000BC5C60: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000BC5C64: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000BC5C68: 561E4519
	s_setprio 0                                                // 000000BC5C6C: BFB50000
	ds_load_b32 v22, v46 offset:1280                           // 000000BC5C70: D8D80500 1600002E
	ds_load_b32 v23, v46 offset:1344                           // 000000BC5C78: D8D80540 1700002E
	ds_load_b32 v24, v46 offset:1408                           // 000000BC5C80: D8D80580 1800002E
	ds_load_b32 v25, v46 offset:1472                           // 000000BC5C88: D8D805C0 1900002E
	ds_load_b32 v31, v47 offset:640                            // 000000BC5C90: D8D80280 1F00002F
	ds_load_b32 v32, v47 offset:672                            // 000000BC5C98: D8D802A0 2000002F
	ds_load_b32 v33, v47 offset:704                            // 000000BC5CA0: D8D802C0 2100002F
	ds_load_b32 v34, v47 offset:736                            // 000000BC5CA8: D8D802E0 2200002F
	s_waitcnt vmcnt(4)                                         // 000000BC5CB0: BF8913F7
	ds_store_b32 v35, v41 offset:4608                          // 000000BC5CB4: D8341200 00002923
	s_waitcnt lgkmcnt(9)                                       // 000000BC5CBC: BF89FC97
	v_fmac_f32_e32 v0, v18, v27                                // 000000BC5CC0: 56003712
	s_setprio 1                                                // 000000BC5CC4: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000BC5CC8: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000BC5CCC: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000BC5CD0: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000BC5CD4: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000BC5CD8: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000BC5CDC: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000BC5CE0: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000BC5CE4: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000BC5CE8: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000BC5CEC: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000BC5CF0: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000BC5CF4: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000BC5CF8: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000BC5CFC: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000BC5D00: 561E3D15
	s_setprio 0                                                // 000000BC5D04: BFB50000
	ds_load_b32 v18, v46 offset:1536                           // 000000BC5D08: D8D80600 1200002E
	ds_load_b32 v19, v46 offset:1600                           // 000000BC5D10: D8D80640 1300002E
	ds_load_b32 v20, v46 offset:1664                           // 000000BC5D18: D8D80680 1400002E
	ds_load_b32 v21, v46 offset:1728                           // 000000BC5D20: D8D806C0 1500002E
	ds_load_b32 v27, v47 offset:768                            // 000000BC5D28: D8D80300 1B00002F
	ds_load_b32 v28, v47 offset:800                            // 000000BC5D30: D8D80320 1C00002F
	ds_load_b32 v29, v47 offset:832                            // 000000BC5D38: D8D80340 1D00002F
	ds_load_b32 v30, v47 offset:864                            // 000000BC5D40: D8D80360 1E00002F
	s_waitcnt vmcnt(3)                                         // 000000BC5D48: BF890FF7
	ds_store_b32 v35, v42 offset:5120                          // 000000BC5D4C: D8341400 00002A23
	s_waitcnt lgkmcnt(9)                                       // 000000BC5D54: BF89FC97
	v_fmac_f32_e32 v0, v22, v31                                // 000000BC5D58: 56003F16
	s_setprio 1                                                // 000000BC5D5C: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000BC5D60: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000BC5D64: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000BC5D68: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000BC5D6C: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000BC5D70: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000BC5D74: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000BC5D78: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000BC5D7C: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000BC5D80: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000BC5D84: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000BC5D88: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000BC5D8C: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000BC5D90: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000BC5D94: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000BC5D98: 561E4519
	s_setprio 0                                                // 000000BC5D9C: BFB50000
	ds_load_b32 v22, v46 offset:1792                           // 000000BC5DA0: D8D80700 1600002E
	ds_load_b32 v23, v46 offset:1856                           // 000000BC5DA8: D8D80740 1700002E
	ds_load_b32 v24, v46 offset:1920                           // 000000BC5DB0: D8D80780 1800002E
	ds_load_b32 v25, v46 offset:1984                           // 000000BC5DB8: D8D807C0 1900002E
	ds_load_b32 v31, v47 offset:896                            // 000000BC5DC0: D8D80380 1F00002F
	ds_load_b32 v32, v47 offset:928                            // 000000BC5DC8: D8D803A0 2000002F
	ds_load_b32 v33, v47 offset:960                            // 000000BC5DD0: D8D803C0 2100002F
	ds_load_b32 v34, v47 offset:992                            // 000000BC5DD8: D8D803E0 2200002F
	s_waitcnt vmcnt(2)                                         // 000000BC5DE0: BF890BF7
	ds_store_b32 v35, v43 offset:5632                          // 000000BC5DE4: D8341600 00002B23
	s_waitcnt vmcnt(1)                                         // 000000BC5DEC: BF8907F7
	ds_store_b32 v36, v44 offset:4096                          // 000000BC5DF0: D8341000 00002C24
	s_waitcnt vmcnt(0)                                         // 000000BC5DF8: BF8903F7
	ds_store_b32 v36, v45 offset:4608                          // 000000BC5DFC: D8341200 00002D24
	s_waitcnt lgkmcnt(11)                                      // 000000BC5E04: BF89FCB7
	v_fmac_f32_e32 v0, v18, v27                                // 000000BC5E08: 56003712
	s_setprio 1                                                // 000000BC5E0C: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000BC5E10: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000BC5E14: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000BC5E18: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000BC5E1C: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000BC5E20: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000BC5E24: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000BC5E28: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000BC5E2C: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000BC5E30: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000BC5E34: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000BC5E38: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000BC5E3C: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000BC5E40: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000BC5E44: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000BC5E48: 561E3D15
	s_setprio 0                                                // 000000BC5E4C: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000BC5E50: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000BC5E54: BDFC0000
	s_barrier                                                  // 000000BC5E58: BFBD0000
	ds_load_b32 v18, v46 offset:4096                           // 000000BC5E5C: D8D81000 1200002E
	ds_load_b32 v19, v46 offset:4160                           // 000000BC5E64: D8D81040 1300002E
	ds_load_b32 v20, v46 offset:4224                           // 000000BC5E6C: D8D81080 1400002E
	ds_load_b32 v21, v46 offset:4288                           // 000000BC5E74: D8D810C0 1500002E
	ds_load_b32 v27, v47 offset:4096                           // 000000BC5E7C: D8D81000 1B00002F
	ds_load_b32 v28, v47 offset:4128                           // 000000BC5E84: D8D81020 1C00002F
	ds_load_b32 v29, v47 offset:4160                           // 000000BC5E8C: D8D81040 1D00002F
	ds_load_b32 v30, v47 offset:4192                           // 000000BC5E94: D8D81060 1E00002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC5E9C: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000BC5EA0: 56003F16
	s_setprio 1                                                // 000000BC5EA4: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000BC5EA8: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000BC5EAC: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000BC5EB0: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000BC5EB4: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000BC5EB8: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000BC5EBC: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000BC5EC0: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000BC5EC4: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000BC5EC8: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000BC5ECC: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000BC5ED0: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000BC5ED4: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000BC5ED8: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000BC5EDC: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000BC5EE0: 561E4519
	s_setprio 0                                                // 000000BC5EE4: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000BC5EE8: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000BC5EEC: BF008105
	s_cbranch_scc1 LoopEndL_oddexit_3                          // 000000BC5EF0: BFA20149

0000000000bc5ef4 <label_0014>:
	ds_load_b32 v22, v46 offset:4352                           // 000000BC5EF4: D8D81100 1600002E
	ds_load_b32 v23, v46 offset:4416                           // 000000BC5EFC: D8D81140 1700002E
	ds_load_b32 v24, v46 offset:4480                           // 000000BC5F04: D8D81180 1800002E
	ds_load_b32 v25, v46 offset:4544                           // 000000BC5F0C: D8D811C0 1900002E
	buffer_load_b32 v40, v37, s[8:11], 0 offen                 // 000000BC5F14: E0500000 80422825
	buffer_load_b32 v41, v37, s[8:11], s31 offen               // 000000BC5F1C: E0500000 1F422925
	buffer_load_b32 v42, v37, s[8:11], s32 offen               // 000000BC5F24: E0500000 20422A25
	buffer_load_b32 v43, v37, s[8:11], s33 offen               // 000000BC5F2C: E0500000 21422B25
	buffer_load_b32 v44, v38, s[12:15], 0 offen                // 000000BC5F34: E0500000 80432C26
	ds_load_b32 v31, v47 offset:4224                           // 000000BC5F3C: D8D81080 1F00002F
	ds_load_b32 v32, v47 offset:4256                           // 000000BC5F44: D8D810A0 2000002F
	ds_load_b32 v33, v47 offset:4288                           // 000000BC5F4C: D8D810C0 2100002F
	ds_load_b32 v34, v47 offset:4320                           // 000000BC5F54: D8D810E0 2200002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC5F5C: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000BC5F60: 56003712
	s_setprio 1                                                // 000000BC5F64: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000BC5F68: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000BC5F6C: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000BC5F70: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000BC5F74: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000BC5F78: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000BC5F7C: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000BC5F80: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000BC5F84: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000BC5F88: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000BC5F8C: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000BC5F90: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000BC5F94: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000BC5F98: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000BC5F9C: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000BC5FA0: 561E3D15
	s_setprio 0                                                // 000000BC5FA4: BFB50000
	ds_load_b32 v18, v46 offset:4608                           // 000000BC5FA8: D8D81200 1200002E
	ds_load_b32 v19, v46 offset:4672                           // 000000BC5FB0: D8D81240 1300002E
	ds_load_b32 v20, v46 offset:4736                           // 000000BC5FB8: D8D81280 1400002E
	ds_load_b32 v21, v46 offset:4800                           // 000000BC5FC0: D8D812C0 1500002E
	buffer_load_b32 v45, v38, s[12:15], s34 offen              // 000000BC5FC8: E0500000 22432D26
	ds_load_b32 v27, v47 offset:4352                           // 000000BC5FD0: D8D81100 1B00002F
	ds_load_b32 v28, v47 offset:4384                           // 000000BC5FD8: D8D81120 1C00002F
	ds_load_b32 v29, v47 offset:4416                           // 000000BC5FE0: D8D81140 1D00002F
	ds_load_b32 v30, v47 offset:4448                           // 000000BC5FE8: D8D81160 1E00002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC5FF0: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000BC5FF4: 56003F16
	s_setprio 1                                                // 000000BC5FF8: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000BC5FFC: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000BC6000: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000BC6004: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000BC6008: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000BC600C: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000BC6010: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000BC6014: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000BC6018: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000BC601C: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000BC6020: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000BC6024: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000BC6028: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000BC602C: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000BC6030: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000BC6034: 561E4519
	s_setprio 0                                                // 000000BC6038: BFB50000
	ds_load_b32 v22, v46 offset:4864                           // 000000BC603C: D8D81300 1600002E
	ds_load_b32 v23, v46 offset:4928                           // 000000BC6044: D8D81340 1700002E
	ds_load_b32 v24, v46 offset:4992                           // 000000BC604C: D8D81380 1800002E
	ds_load_b32 v25, v46 offset:5056                           // 000000BC6054: D8D813C0 1900002E
	s_add_u32 s8, s8, s7                                       // 000000BC605C: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000BC6060: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000BC6064: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000BC6068: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000BC606C: BF068001
	s_cmov_b32 s10, s0                                         // 000000BC6070: BE8A0200
	ds_load_b32 v31, v47 offset:4480                           // 000000BC6074: D8D81180 1F00002F
	ds_load_b32 v32, v47 offset:4512                           // 000000BC607C: D8D811A0 2000002F
	ds_load_b32 v33, v47 offset:4544                           // 000000BC6084: D8D811C0 2100002F
	ds_load_b32 v34, v47 offset:4576                           // 000000BC608C: D8D811E0 2200002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC6094: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000BC6098: 56003712
	s_setprio 1                                                // 000000BC609C: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000BC60A0: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000BC60A4: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000BC60A8: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000BC60AC: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000BC60B0: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000BC60B4: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000BC60B8: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000BC60BC: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000BC60C0: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000BC60C4: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000BC60C8: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000BC60CC: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000BC60D0: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000BC60D4: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000BC60D8: 561E3D15
	s_setprio 0                                                // 000000BC60DC: BFB50000
	ds_load_b32 v18, v46 offset:5120                           // 000000BC60E0: D8D81400 1200002E
	ds_load_b32 v19, v46 offset:5184                           // 000000BC60E8: D8D81440 1300002E
	ds_load_b32 v20, v46 offset:5248                           // 000000BC60F0: D8D81480 1400002E
	ds_load_b32 v21, v46 offset:5312                           // 000000BC60F8: D8D814C0 1500002E
	s_add_u32 s12, s12, s30                                    // 000000BC6100: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000BC6104: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000BC6108: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000BC610C: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000BC6110: BF06801D
	s_cmov_b32 s14, s28                                        // 000000BC6114: BE8E021C
	ds_load_b32 v27, v47 offset:4608                           // 000000BC6118: D8D81200 1B00002F
	ds_load_b32 v28, v47 offset:4640                           // 000000BC6120: D8D81220 1C00002F
	ds_load_b32 v29, v47 offset:4672                           // 000000BC6128: D8D81240 1D00002F
	ds_load_b32 v30, v47 offset:4704                           // 000000BC6130: D8D81260 1E00002F
	s_waitcnt vmcnt(5)                                         // 000000BC6138: BF8917F7
	ds_store_b32 v35, v40                                      // 000000BC613C: D8340000 00002823
	s_waitcnt lgkmcnt(9)                                       // 000000BC6144: BF89FC97
	v_fmac_f32_e32 v0, v22, v31                                // 000000BC6148: 56003F16
	s_setprio 1                                                // 000000BC614C: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000BC6150: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000BC6154: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000BC6158: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000BC615C: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000BC6160: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000BC6164: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000BC6168: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000BC616C: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000BC6170: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000BC6174: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000BC6178: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000BC617C: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000BC6180: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000BC6184: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000BC6188: 561E4519
	s_setprio 0                                                // 000000BC618C: BFB50000
	ds_load_b32 v22, v46 offset:5376                           // 000000BC6190: D8D81500 1600002E
	ds_load_b32 v23, v46 offset:5440                           // 000000BC6198: D8D81540 1700002E
	ds_load_b32 v24, v46 offset:5504                           // 000000BC61A0: D8D81580 1800002E
	ds_load_b32 v25, v46 offset:5568                           // 000000BC61A8: D8D815C0 1900002E
	ds_load_b32 v31, v47 offset:4736                           // 000000BC61B0: D8D81280 1F00002F
	ds_load_b32 v32, v47 offset:4768                           // 000000BC61B8: D8D812A0 2000002F
	ds_load_b32 v33, v47 offset:4800                           // 000000BC61C0: D8D812C0 2100002F
	ds_load_b32 v34, v47 offset:4832                           // 000000BC61C8: D8D812E0 2200002F
	s_waitcnt vmcnt(4)                                         // 000000BC61D0: BF8913F7
	ds_store_b32 v35, v41 offset:512                           // 000000BC61D4: D8340200 00002923
	s_waitcnt lgkmcnt(9)                                       // 000000BC61DC: BF89FC97
	v_fmac_f32_e32 v0, v18, v27                                // 000000BC61E0: 56003712
	s_setprio 1                                                // 000000BC61E4: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000BC61E8: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000BC61EC: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000BC61F0: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000BC61F4: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000BC61F8: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000BC61FC: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000BC6200: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000BC6204: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000BC6208: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000BC620C: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000BC6210: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000BC6214: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000BC6218: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000BC621C: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000BC6220: 561E3D15
	s_setprio 0                                                // 000000BC6224: BFB50000
	ds_load_b32 v18, v46 offset:5632                           // 000000BC6228: D8D81600 1200002E
	ds_load_b32 v19, v46 offset:5696                           // 000000BC6230: D8D81640 1300002E
	ds_load_b32 v20, v46 offset:5760                           // 000000BC6238: D8D81680 1400002E
	ds_load_b32 v21, v46 offset:5824                           // 000000BC6240: D8D816C0 1500002E
	ds_load_b32 v27, v47 offset:4864                           // 000000BC6248: D8D81300 1B00002F
	ds_load_b32 v28, v47 offset:4896                           // 000000BC6250: D8D81320 1C00002F
	ds_load_b32 v29, v47 offset:4928                           // 000000BC6258: D8D81340 1D00002F
	ds_load_b32 v30, v47 offset:4960                           // 000000BC6260: D8D81360 1E00002F
	s_waitcnt vmcnt(3)                                         // 000000BC6268: BF890FF7
	ds_store_b32 v35, v42 offset:1024                          // 000000BC626C: D8340400 00002A23
	s_waitcnt lgkmcnt(9)                                       // 000000BC6274: BF89FC97
	v_fmac_f32_e32 v0, v22, v31                                // 000000BC6278: 56003F16
	s_setprio 1                                                // 000000BC627C: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000BC6280: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000BC6284: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000BC6288: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000BC628C: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000BC6290: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000BC6294: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000BC6298: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000BC629C: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000BC62A0: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000BC62A4: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000BC62A8: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000BC62AC: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000BC62B0: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000BC62B4: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000BC62B8: 561E4519
	s_setprio 0                                                // 000000BC62BC: BFB50000
	ds_load_b32 v22, v46 offset:5888                           // 000000BC62C0: D8D81700 1600002E
	ds_load_b32 v23, v46 offset:5952                           // 000000BC62C8: D8D81740 1700002E
	ds_load_b32 v24, v46 offset:6016                           // 000000BC62D0: D8D81780 1800002E
	ds_load_b32 v25, v46 offset:6080                           // 000000BC62D8: D8D817C0 1900002E
	ds_load_b32 v31, v47 offset:4992                           // 000000BC62E0: D8D81380 1F00002F
	ds_load_b32 v32, v47 offset:5024                           // 000000BC62E8: D8D813A0 2000002F
	ds_load_b32 v33, v47 offset:5056                           // 000000BC62F0: D8D813C0 2100002F
	ds_load_b32 v34, v47 offset:5088                           // 000000BC62F8: D8D813E0 2200002F
	s_waitcnt vmcnt(2)                                         // 000000BC6300: BF890BF7
	ds_store_b32 v35, v43 offset:1536                          // 000000BC6304: D8340600 00002B23
	s_waitcnt vmcnt(1)                                         // 000000BC630C: BF8907F7
	ds_store_b32 v36, v44                                      // 000000BC6310: D8340000 00002C24
	s_waitcnt vmcnt(0)                                         // 000000BC6318: BF8903F7
	ds_store_b32 v36, v45 offset:512                           // 000000BC631C: D8340200 00002D24
	s_waitcnt lgkmcnt(11)                                      // 000000BC6324: BF89FCB7
	v_fmac_f32_e32 v0, v18, v27                                // 000000BC6328: 56003712
	s_setprio 1                                                // 000000BC632C: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000BC6330: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000BC6334: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000BC6338: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000BC633C: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000BC6340: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000BC6344: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000BC6348: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000BC634C: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000BC6350: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000BC6354: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000BC6358: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000BC635C: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000BC6360: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000BC6364: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000BC6368: 561E3D15
	s_setprio 0                                                // 000000BC636C: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000BC6370: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000BC6374: BDFC0000
	s_barrier                                                  // 000000BC6378: BFBD0000
	ds_load_b32 v18, v46                                       // 000000BC637C: D8D80000 1200002E
	ds_load_b32 v19, v46 offset:64                             // 000000BC6384: D8D80040 1300002E
	ds_load_b32 v20, v46 offset:128                            // 000000BC638C: D8D80080 1400002E
	ds_load_b32 v21, v46 offset:192                            // 000000BC6394: D8D800C0 1500002E
	ds_load_b32 v27, v47                                       // 000000BC639C: D8D80000 1B00002F
	ds_load_b32 v28, v47 offset:32                             // 000000BC63A4: D8D80020 1C00002F
	ds_load_b32 v29, v47 offset:64                             // 000000BC63AC: D8D80040 1D00002F
	ds_load_b32 v30, v47 offset:96                             // 000000BC63B4: D8D80060 1E00002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC63BC: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000BC63C0: 56003F16
	s_setprio 1                                                // 000000BC63C4: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000BC63C8: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000BC63CC: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000BC63D0: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000BC63D4: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000BC63D8: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000BC63DC: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000BC63E0: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000BC63E4: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000BC63E8: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000BC63EC: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000BC63F0: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000BC63F4: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000BC63F8: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000BC63FC: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000BC6400: 561E4519
	s_setprio 0                                                // 000000BC6404: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000BC6408: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000BC640C: BF008105
	s_cbranch_scc0 LoopBeginL_1                                // 000000BC6410: BFA1FD70

0000000000bc6414 <LoopEndL_evenexit_4>:
	s_branch LoopEndL_2                                        // 000000BC6414: BFA00004

0000000000bc6418 <LoopEndL_oddexit_3>:
	v_xor_b32_e32 v46, 0x1000, v46                             // 000000BC6418: 3A5C5CFF 00001000
	v_xor_b32_e32 v47, 0x1000, v47                             // 000000BC6420: 3A5E5EFF 00001000

0000000000bc6428 <LoopEndL_2>:
	s_cmpk_eq_u32 s37, 0x0                                     // 000000BC6428: B4A50000
	s_cbranch_scc0 OptNLL_End_15                               // 000000BC642C: BFA10152
	s_cmp_eq_u32 s36, 1.0                                      // 000000BC6430: BF06F224
	s_cbranch_scc0 OptNLL_End_15                               // 000000BC6434: BFA10150
	s_and_b32 s56, 63, s46                                     // 000000BC6438: 8B382EBF
	s_add_u32 s57, -1, s50                                     // 000000BC643C: 803932C1
	s_cmp_ge_u32 s2, s57                                       // 000000BC6440: BF093902
	s_cselect_b32 s56, s56, 0                                  // 000000BC6444: 98388038
	s_cmpk_gt_u32 s56, 0x0                                     // 000000BC6448: B5B80000
	s_cbranch_scc1 OptNLL_End_15                               // 000000BC644C: BFA2014A
	s_and_b32 s56, 31, s47                                     // 000000BC6450: 8B382F9F
	s_add_u32 s57, -1, s51                                     // 000000BC6454: 803933C1
	s_cmp_ge_u32 s3, s57                                       // 000000BC6458: BF093903
	s_cselect_b32 s56, s56, 0                                  // 000000BC645C: 98388038
	s_cmpk_gt_u32 s56, 0x0                                     // 000000BC6460: B5B80000
	s_cbranch_scc1 OptNLL_End_15                               // 000000BC6464: BFA20144
	s_and_b32 s57, 7, s49                                      // 000000BC6468: 8B393187
	s_cmp_eq_u32 s57, 0                                        // 000000BC646C: BF068039
	s_cbranch_scc0 OptNLL_End_15                               // 000000BC6470: BFA10141
	ds_load_b32 v22, v46 offset:256                            // 000000BC6474: D8D80100 1600002E
	ds_load_b32 v23, v46 offset:320                            // 000000BC647C: D8D80140 1700002E
	ds_load_b32 v24, v46 offset:384                            // 000000BC6484: D8D80180 1800002E
	ds_load_b32 v25, v46 offset:448                            // 000000BC648C: D8D801C0 1900002E
	ds_load_b32 v31, v47 offset:128                            // 000000BC6494: D8D80080 1F00002F
	ds_load_b32 v32, v47 offset:160                            // 000000BC649C: D8D800A0 2000002F
	ds_load_b32 v33, v47 offset:192                            // 000000BC64A4: D8D800C0 2100002F
	ds_load_b32 v34, v47 offset:224                            // 000000BC64AC: D8D800E0 2200002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC64B4: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000BC64B8: 56003712
	s_setprio 1                                                // 000000BC64BC: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000BC64C0: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000BC64C4: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000BC64C8: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000BC64CC: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000BC64D0: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000BC64D4: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000BC64D8: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000BC64DC: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000BC64E0: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000BC64E4: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000BC64E8: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000BC64EC: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000BC64F0: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000BC64F4: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000BC64F8: 561E3D15
	s_setprio 0                                                // 000000BC64FC: BFB50000
	ds_load_b32 v18, v46 offset:512                            // 000000BC6500: D8D80200 1200002E
	ds_load_b32 v19, v46 offset:576                            // 000000BC6508: D8D80240 1300002E
	ds_load_b32 v20, v46 offset:640                            // 000000BC6510: D8D80280 1400002E
	ds_load_b32 v21, v46 offset:704                            // 000000BC6518: D8D802C0 1500002E
	ds_load_b32 v27, v47 offset:256                            // 000000BC6520: D8D80100 1B00002F
	ds_load_b32 v28, v47 offset:288                            // 000000BC6528: D8D80120 1C00002F
	ds_load_b32 v29, v47 offset:320                            // 000000BC6530: D8D80140 1D00002F
	ds_load_b32 v30, v47 offset:352                            // 000000BC6538: D8D80160 1E00002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC6540: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000BC6544: 56003F16
	s_setprio 1                                                // 000000BC6548: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000BC654C: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000BC6550: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000BC6554: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000BC6558: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000BC655C: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000BC6560: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000BC6564: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000BC6568: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000BC656C: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000BC6570: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000BC6574: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000BC6578: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000BC657C: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000BC6580: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000BC6584: 561E4519
	s_setprio 0                                                // 000000BC6588: BFB50000
	ds_load_b32 v22, v46 offset:768                            // 000000BC658C: D8D80300 1600002E
	ds_load_b32 v23, v46 offset:832                            // 000000BC6594: D8D80340 1700002E
	ds_load_b32 v24, v46 offset:896                            // 000000BC659C: D8D80380 1800002E
	ds_load_b32 v25, v46 offset:960                            // 000000BC65A4: D8D803C0 1900002E
	ds_load_b32 v31, v47 offset:384                            // 000000BC65AC: D8D80180 1F00002F
	ds_load_b32 v32, v47 offset:416                            // 000000BC65B4: D8D801A0 2000002F
	ds_load_b32 v33, v47 offset:448                            // 000000BC65BC: D8D801C0 2100002F
	ds_load_b32 v34, v47 offset:480                            // 000000BC65C4: D8D801E0 2200002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC65CC: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000BC65D0: 56003712
	s_setprio 1                                                // 000000BC65D4: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000BC65D8: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000BC65DC: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000BC65E0: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000BC65E4: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000BC65E8: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000BC65EC: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000BC65F0: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000BC65F4: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000BC65F8: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000BC65FC: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000BC6600: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000BC6604: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000BC6608: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000BC660C: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000BC6610: 561E3D15
	s_setprio 0                                                // 000000BC6614: BFB50000
	ds_load_b32 v18, v46 offset:1024                           // 000000BC6618: D8D80400 1200002E
	ds_load_b32 v19, v46 offset:1088                           // 000000BC6620: D8D80440 1300002E
	ds_load_b32 v20, v46 offset:1152                           // 000000BC6628: D8D80480 1400002E
	ds_load_b32 v21, v46 offset:1216                           // 000000BC6630: D8D804C0 1500002E
	ds_load_b32 v27, v47 offset:512                            // 000000BC6638: D8D80200 1B00002F
	ds_load_b32 v28, v47 offset:544                            // 000000BC6640: D8D80220 1C00002F
	ds_load_b32 v29, v47 offset:576                            // 000000BC6648: D8D80240 1D00002F
	ds_load_b32 v30, v47 offset:608                            // 000000BC6650: D8D80260 1E00002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC6658: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000BC665C: 56003F16
	s_setprio 1                                                // 000000BC6660: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000BC6664: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000BC6668: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000BC666C: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000BC6670: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000BC6674: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000BC6678: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000BC667C: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000BC6680: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000BC6684: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000BC6688: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000BC668C: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000BC6690: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000BC6694: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000BC6698: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000BC669C: 561E4519
	s_setprio 0                                                // 000000BC66A0: BFB50000
	ds_load_b32 v22, v46 offset:1280                           // 000000BC66A4: D8D80500 1600002E
	ds_load_b32 v23, v46 offset:1344                           // 000000BC66AC: D8D80540 1700002E
	ds_load_b32 v24, v46 offset:1408                           // 000000BC66B4: D8D80580 1800002E
	ds_load_b32 v25, v46 offset:1472                           // 000000BC66BC: D8D805C0 1900002E
	ds_load_b32 v31, v47 offset:640                            // 000000BC66C4: D8D80280 1F00002F
	ds_load_b32 v32, v47 offset:672                            // 000000BC66CC: D8D802A0 2000002F
	ds_load_b32 v33, v47 offset:704                            // 000000BC66D4: D8D802C0 2100002F
	ds_load_b32 v34, v47 offset:736                            // 000000BC66DC: D8D802E0 2200002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC66E4: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000BC66E8: 56003712
	s_setprio 1                                                // 000000BC66EC: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000BC66F0: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000BC66F4: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000BC66F8: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000BC66FC: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000BC6700: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000BC6704: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000BC6708: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000BC670C: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000BC6710: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000BC6714: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000BC6718: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000BC671C: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000BC6720: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000BC6724: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000BC6728: 561E3D15
	s_setprio 0                                                // 000000BC672C: BFB50000
	ds_load_b32 v18, v46 offset:1536                           // 000000BC6730: D8D80600 1200002E
	ds_load_b32 v19, v46 offset:1600                           // 000000BC6738: D8D80640 1300002E
	ds_load_b32 v20, v46 offset:1664                           // 000000BC6740: D8D80680 1400002E
	ds_load_b32 v21, v46 offset:1728                           // 000000BC6748: D8D806C0 1500002E
	ds_load_b32 v27, v47 offset:768                            // 000000BC6750: D8D80300 1B00002F
	ds_load_b32 v28, v47 offset:800                            // 000000BC6758: D8D80320 1C00002F
	ds_load_b32 v29, v47 offset:832                            // 000000BC6760: D8D80340 1D00002F
	ds_load_b32 v30, v47 offset:864                            // 000000BC6768: D8D80360 1E00002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC6770: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000BC6774: 56003F16
	s_setprio 1                                                // 000000BC6778: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000BC677C: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000BC6780: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000BC6784: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000BC6788: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000BC678C: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000BC6790: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000BC6794: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000BC6798: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000BC679C: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000BC67A0: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000BC67A4: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000BC67A8: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000BC67AC: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000BC67B0: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000BC67B4: 561E4519
	s_setprio 0                                                // 000000BC67B8: BFB50000
	ds_load_b32 v22, v46 offset:1792                           // 000000BC67BC: D8D80700 1600002E
	ds_load_b32 v23, v46 offset:1856                           // 000000BC67C4: D8D80740 1700002E
	ds_load_b32 v24, v46 offset:1920                           // 000000BC67CC: D8D80780 1800002E
	ds_load_b32 v25, v46 offset:1984                           // 000000BC67D4: D8D807C0 1900002E
	ds_load_b32 v31, v47 offset:896                            // 000000BC67DC: D8D80380 1F00002F
	ds_load_b32 v32, v47 offset:928                            // 000000BC67E4: D8D803A0 2000002F
	ds_load_b32 v33, v47 offset:960                            // 000000BC67EC: D8D803C0 2100002F
	ds_load_b32 v34, v47 offset:992                            // 000000BC67F4: D8D803E0 2200002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC67FC: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000BC6800: 56003712
	s_setprio 1                                                // 000000BC6804: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000BC6808: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000BC680C: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000BC6810: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000BC6814: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000BC6818: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000BC681C: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000BC6820: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000BC6824: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000BC6828: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000BC682C: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000BC6830: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000BC6834: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000BC6838: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000BC683C: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000BC6840: 561E3D15
	s_setprio 0                                                // 000000BC6844: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000BC6848: BF89FC07
	v_fmac_f32_e32 v0, v22, v31                                // 000000BC684C: 56003F16
	s_setprio 1                                                // 000000BC6850: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000BC6854: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000BC6858: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000BC685C: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000BC6860: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000BC6864: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000BC6868: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000BC686C: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000BC6870: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000BC6874: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000BC6878: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000BC687C: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000BC6880: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000BC6884: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000BC6888: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000BC688C: 561E4519
	s_setprio 0                                                // 000000BC6890: BFB50000

0000000000bc6894 <Summation_End_OptNLL_16>:
	v_lshrrev_b32_e32 v19, 4, v48                              // 000000BC6894: 32266084
	v_and_b32_e32 v18, 15, v48                                 // 000000BC6898: 3624608F
	v_mul_lo_u32 v20, v19, s40                                 // 000000BC689C: D72C0014 00005113
	v_mul_lo_u32 v21, v19, s38                                 // 000000BC68A4: D72C0015 00004D13
	s_mul_i32 s52, 64, s2                                      // 000000BC68AC: 963402C0
	v_add_co_u32 v18, vcc_lo, s52, v18                         // 000000BC68B0: D7006A12 00022434
	s_mul_i32 s54, 32, s3                                      // 000000BC68B8: 963603A0
	v_add_co_u32 v19, vcc_lo, s54, v19                         // 000000BC68BC: D7006A13 00022636

0000000000bc68c4 <GW_B0_E0_19>:
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000BC68C4: D6470018 020A2515
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000BC68CC: E0680000 80440018
	buffer_store_b32 v1, v24, s[16:19], 0 offen offset:64      // 000000BC68D4: E0680040 80440118
	buffer_store_b32 v2, v24, s[16:19], 0 offen offset:128     // 000000BC68DC: E0680080 80440218
	buffer_store_b32 v3, v24, s[16:19], 0 offen offset:192     // 000000BC68E4: E06800C0 80440318
	s_mul_i32 s52, s38, 32                                     // 000000BC68EC: 9634A026
	s_add_u32 s16, s16, s52                                    // 000000BC68F0: 80103410
	s_addc_u32 s17, s17, 0                                     // 000000BC68F4: 82118011
	buffer_store_b32 v4, v24, s[16:19], 0 offen                // 000000BC68F8: E0680000 80440418
	buffer_store_b32 v5, v24, s[16:19], 0 offen offset:64      // 000000BC6900: E0680040 80440518
	buffer_store_b32 v6, v24, s[16:19], 0 offen offset:128     // 000000BC6908: E0680080 80440618
	buffer_store_b32 v7, v24, s[16:19], 0 offen offset:192     // 000000BC6910: E06800C0 80440718
	s_mul_i32 s52, s38, 32                                     // 000000BC6918: 9634A026
	s_add_u32 s16, s16, s52                                    // 000000BC691C: 80103410
	s_addc_u32 s17, s17, 0                                     // 000000BC6920: 82118011
	buffer_store_b32 v8, v24, s[16:19], 0 offen                // 000000BC6924: E0680000 80440818
	buffer_store_b32 v9, v24, s[16:19], 0 offen offset:64      // 000000BC692C: E0680040 80440918
	buffer_store_b32 v10, v24, s[16:19], 0 offen offset:128    // 000000BC6934: E0680080 80440A18
	buffer_store_b32 v11, v24, s[16:19], 0 offen offset:192    // 000000BC693C: E06800C0 80440B18
	s_mul_i32 s52, s38, 32                                     // 000000BC6944: 9634A026
	s_add_u32 s16, s16, s52                                    // 000000BC6948: 80103410
	s_addc_u32 s17, s17, 0                                     // 000000BC694C: 82118011
	buffer_store_b32 v12, v24, s[16:19], 0 offen               // 000000BC6950: E0680000 80440C18
	buffer_store_b32 v13, v24, s[16:19], 0 offen offset:64     // 000000BC6958: E0680040 80440D18
	buffer_store_b32 v14, v24, s[16:19], 0 offen offset:128    // 000000BC6960: E0680080 80440E18
	buffer_store_b32 v15, v24, s[16:19], 0 offen offset:192    // 000000BC6968: E06800C0 80440F18
	s_branch label_GW_End_21                                   // 000000BC6970: BFA00000

0000000000bc6974 <label_GW_End_21>:
	s_endpgm                                                   // 000000BC6974: BFB00000

0000000000bc6978 <OptNLL_End_15>:
	ds_load_b32 v22, v46 offset:256                            // 000000BC6978: D8D80100 1600002E
	ds_load_b32 v23, v46 offset:320                            // 000000BC6980: D8D80140 1700002E
	ds_load_b32 v24, v46 offset:384                            // 000000BC6988: D8D80180 1800002E
	ds_load_b32 v25, v46 offset:448                            // 000000BC6990: D8D801C0 1900002E
	ds_load_b32 v31, v47 offset:128                            // 000000BC6998: D8D80080 1F00002F
	ds_load_b32 v32, v47 offset:160                            // 000000BC69A0: D8D800A0 2000002F
	ds_load_b32 v33, v47 offset:192                            // 000000BC69A8: D8D800C0 2100002F
	ds_load_b32 v34, v47 offset:224                            // 000000BC69B0: D8D800E0 2200002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC69B8: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000BC69BC: 56003712
	s_setprio 1                                                // 000000BC69C0: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000BC69C4: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000BC69C8: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000BC69CC: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000BC69D0: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000BC69D4: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000BC69D8: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000BC69DC: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000BC69E0: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000BC69E4: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000BC69E8: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000BC69EC: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000BC69F0: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000BC69F4: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000BC69F8: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000BC69FC: 561E3D15
	s_setprio 0                                                // 000000BC6A00: BFB50000
	ds_load_b32 v18, v46 offset:512                            // 000000BC6A04: D8D80200 1200002E
	ds_load_b32 v19, v46 offset:576                            // 000000BC6A0C: D8D80240 1300002E
	ds_load_b32 v20, v46 offset:640                            // 000000BC6A14: D8D80280 1400002E
	ds_load_b32 v21, v46 offset:704                            // 000000BC6A1C: D8D802C0 1500002E
	ds_load_b32 v27, v47 offset:256                            // 000000BC6A24: D8D80100 1B00002F
	ds_load_b32 v28, v47 offset:288                            // 000000BC6A2C: D8D80120 1C00002F
	ds_load_b32 v29, v47 offset:320                            // 000000BC6A34: D8D80140 1D00002F
	ds_load_b32 v30, v47 offset:352                            // 000000BC6A3C: D8D80160 1E00002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC6A44: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000BC6A48: 56003F16
	s_setprio 1                                                // 000000BC6A4C: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000BC6A50: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000BC6A54: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000BC6A58: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000BC6A5C: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000BC6A60: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000BC6A64: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000BC6A68: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000BC6A6C: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000BC6A70: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000BC6A74: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000BC6A78: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000BC6A7C: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000BC6A80: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000BC6A84: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000BC6A88: 561E4519
	s_setprio 0                                                // 000000BC6A8C: BFB50000
	ds_load_b32 v22, v46 offset:768                            // 000000BC6A90: D8D80300 1600002E
	ds_load_b32 v23, v46 offset:832                            // 000000BC6A98: D8D80340 1700002E
	ds_load_b32 v24, v46 offset:896                            // 000000BC6AA0: D8D80380 1800002E
	ds_load_b32 v25, v46 offset:960                            // 000000BC6AA8: D8D803C0 1900002E
	ds_load_b32 v31, v47 offset:384                            // 000000BC6AB0: D8D80180 1F00002F
	ds_load_b32 v32, v47 offset:416                            // 000000BC6AB8: D8D801A0 2000002F
	ds_load_b32 v33, v47 offset:448                            // 000000BC6AC0: D8D801C0 2100002F
	ds_load_b32 v34, v47 offset:480                            // 000000BC6AC8: D8D801E0 2200002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC6AD0: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000BC6AD4: 56003712
	s_setprio 1                                                // 000000BC6AD8: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000BC6ADC: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000BC6AE0: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000BC6AE4: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000BC6AE8: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000BC6AEC: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000BC6AF0: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000BC6AF4: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000BC6AF8: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000BC6AFC: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000BC6B00: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000BC6B04: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000BC6B08: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000BC6B0C: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000BC6B10: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000BC6B14: 561E3D15
	s_setprio 0                                                // 000000BC6B18: BFB50000
	ds_load_b32 v18, v46 offset:1024                           // 000000BC6B1C: D8D80400 1200002E
	ds_load_b32 v19, v46 offset:1088                           // 000000BC6B24: D8D80440 1300002E
	ds_load_b32 v20, v46 offset:1152                           // 000000BC6B2C: D8D80480 1400002E
	ds_load_b32 v21, v46 offset:1216                           // 000000BC6B34: D8D804C0 1500002E
	ds_load_b32 v27, v47 offset:512                            // 000000BC6B3C: D8D80200 1B00002F
	ds_load_b32 v28, v47 offset:544                            // 000000BC6B44: D8D80220 1C00002F
	ds_load_b32 v29, v47 offset:576                            // 000000BC6B4C: D8D80240 1D00002F
	ds_load_b32 v30, v47 offset:608                            // 000000BC6B54: D8D80260 1E00002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC6B5C: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000BC6B60: 56003F16
	s_setprio 1                                                // 000000BC6B64: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000BC6B68: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000BC6B6C: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000BC6B70: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000BC6B74: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000BC6B78: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000BC6B7C: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000BC6B80: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000BC6B84: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000BC6B88: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000BC6B8C: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000BC6B90: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000BC6B94: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000BC6B98: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000BC6B9C: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000BC6BA0: 561E4519
	s_setprio 0                                                // 000000BC6BA4: BFB50000
	ds_load_b32 v22, v46 offset:1280                           // 000000BC6BA8: D8D80500 1600002E
	ds_load_b32 v23, v46 offset:1344                           // 000000BC6BB0: D8D80540 1700002E
	ds_load_b32 v24, v46 offset:1408                           // 000000BC6BB8: D8D80580 1800002E
	ds_load_b32 v25, v46 offset:1472                           // 000000BC6BC0: D8D805C0 1900002E
	ds_load_b32 v31, v47 offset:640                            // 000000BC6BC8: D8D80280 1F00002F
	ds_load_b32 v32, v47 offset:672                            // 000000BC6BD0: D8D802A0 2000002F
	ds_load_b32 v33, v47 offset:704                            // 000000BC6BD8: D8D802C0 2100002F
	ds_load_b32 v34, v47 offset:736                            // 000000BC6BE0: D8D802E0 2200002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC6BE8: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000BC6BEC: 56003712
	s_setprio 1                                                // 000000BC6BF0: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000BC6BF4: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000BC6BF8: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000BC6BFC: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000BC6C00: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000BC6C04: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000BC6C08: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000BC6C0C: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000BC6C10: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000BC6C14: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000BC6C18: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000BC6C1C: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000BC6C20: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000BC6C24: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000BC6C28: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000BC6C2C: 561E3D15
	s_setprio 0                                                // 000000BC6C30: BFB50000
	ds_load_b32 v18, v46 offset:1536                           // 000000BC6C34: D8D80600 1200002E
	ds_load_b32 v19, v46 offset:1600                           // 000000BC6C3C: D8D80640 1300002E
	ds_load_b32 v20, v46 offset:1664                           // 000000BC6C44: D8D80680 1400002E
	ds_load_b32 v21, v46 offset:1728                           // 000000BC6C4C: D8D806C0 1500002E
	ds_load_b32 v27, v47 offset:768                            // 000000BC6C54: D8D80300 1B00002F
	ds_load_b32 v28, v47 offset:800                            // 000000BC6C5C: D8D80320 1C00002F
	ds_load_b32 v29, v47 offset:832                            // 000000BC6C64: D8D80340 1D00002F
	ds_load_b32 v30, v47 offset:864                            // 000000BC6C6C: D8D80360 1E00002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC6C74: BF89FC87
	v_fmac_f32_e32 v0, v22, v31                                // 000000BC6C78: 56003F16
	s_setprio 1                                                // 000000BC6C7C: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000BC6C80: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000BC6C84: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000BC6C88: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000BC6C8C: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000BC6C90: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000BC6C94: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000BC6C98: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000BC6C9C: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000BC6CA0: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000BC6CA4: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000BC6CA8: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000BC6CAC: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000BC6CB0: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000BC6CB4: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000BC6CB8: 561E4519
	s_setprio 0                                                // 000000BC6CBC: BFB50000
	ds_load_b32 v22, v46 offset:1792                           // 000000BC6CC0: D8D80700 1600002E
	ds_load_b32 v23, v46 offset:1856                           // 000000BC6CC8: D8D80740 1700002E
	ds_load_b32 v24, v46 offset:1920                           // 000000BC6CD0: D8D80780 1800002E
	ds_load_b32 v25, v46 offset:1984                           // 000000BC6CD8: D8D807C0 1900002E
	ds_load_b32 v31, v47 offset:896                            // 000000BC6CE0: D8D80380 1F00002F
	ds_load_b32 v32, v47 offset:928                            // 000000BC6CE8: D8D803A0 2000002F
	ds_load_b32 v33, v47 offset:960                            // 000000BC6CF0: D8D803C0 2100002F
	ds_load_b32 v34, v47 offset:992                            // 000000BC6CF8: D8D803E0 2200002F
	s_waitcnt lgkmcnt(8)                                       // 000000BC6D00: BF89FC87
	v_fmac_f32_e32 v0, v18, v27                                // 000000BC6D04: 56003712
	s_setprio 1                                                // 000000BC6D08: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000BC6D0C: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000BC6D10: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000BC6D14: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000BC6D18: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000BC6D1C: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000BC6D20: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000BC6D24: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000BC6D28: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000BC6D2C: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000BC6D30: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000BC6D34: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000BC6D38: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000BC6D3C: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000BC6D40: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000BC6D44: 561E3D15
	s_setprio 0                                                // 000000BC6D48: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000BC6D4C: BF89FC07
	v_fmac_f32_e32 v0, v22, v31                                // 000000BC6D50: 56003F16
	s_setprio 1                                                // 000000BC6D54: BFB50001
	v_fmac_f32_e32 v1, v23, v31                                // 000000BC6D58: 56023F17
	v_fmac_f32_e32 v2, v24, v31                                // 000000BC6D5C: 56043F18
	v_fmac_f32_e32 v3, v25, v31                                // 000000BC6D60: 56063F19
	v_fmac_f32_e32 v4, v22, v32                                // 000000BC6D64: 56084116
	v_fmac_f32_e32 v5, v23, v32                                // 000000BC6D68: 560A4117
	v_fmac_f32_e32 v6, v24, v32                                // 000000BC6D6C: 560C4118
	v_fmac_f32_e32 v7, v25, v32                                // 000000BC6D70: 560E4119
	v_fmac_f32_e32 v8, v22, v33                                // 000000BC6D74: 56104316
	v_fmac_f32_e32 v9, v23, v33                                // 000000BC6D78: 56124317
	v_fmac_f32_e32 v10, v24, v33                               // 000000BC6D7C: 56144318
	v_fmac_f32_e32 v11, v25, v33                               // 000000BC6D80: 56164319
	v_fmac_f32_e32 v12, v22, v34                               // 000000BC6D84: 56184516
	v_fmac_f32_e32 v13, v23, v34                               // 000000BC6D88: 561A4517
	v_fmac_f32_e32 v14, v24, v34                               // 000000BC6D8C: 561C4518
	v_fmac_f32_e32 v15, v25, v34                               // 000000BC6D90: 561E4519
	s_setprio 0                                                // 000000BC6D94: BFB50000

0000000000bc6d98 <PrefetchGlobalLastIterEnd_5>:
	v_and_b32_e32 v35, 0xf00fff, v35                           // 000000BC6D98: 364646FF 00F00FFF
	v_and_b32_e32 v36, 0xf00fff, v36                           // 000000BC6DA0: 364848FF 00F00FFF
	s_and_b32 s5, 7, s49                                       // 000000BC6DA8: 8B053187
	s_cmp_eq_u32 s5, 0                                         // 000000BC6DAC: BF068005
	s_cbranch_scc1 SkipTailLoopL_8                             // 000000BC6DB0: BFA20052
	s_mov_b32 s6, 0                                            // 000000BC6DB4: BE860080
	buffer_load_b32 v40, v37, s[8:11], 0 offen                 // 000000BC6DB8: E0500000 80422825
	buffer_load_b32 v41, v37, s[8:11], s31 offen               // 000000BC6DC0: E0500000 1F422925
	buffer_load_b32 v42, v37, s[8:11], s32 offen               // 000000BC6DC8: E0500000 20422A25
	buffer_load_b32 v43, v37, s[8:11], s33 offen               // 000000BC6DD0: E0500000 21422B25
	buffer_load_b32 v44, v38, s[12:15], 0 offen                // 000000BC6DD8: E0500000 80432C26
	buffer_load_b32 v45, v38, s[12:15], s34 offen              // 000000BC6DE0: E0500000 22432D26
	s_waitcnt vmcnt(0)                                         // 000000BC6DE8: BF8903F7
	s_waitcnt_lgkmcnt null, 0x0                                // 000000BC6DEC: BDFC0000
	s_barrier                                                  // 000000BC6DF0: BFBD0000
	ds_store_b32 v35, v40                                      // 000000BC6DF4: D8340000 00002823
	ds_store_b32 v35, v41 offset:512                           // 000000BC6DFC: D8340200 00002923
	ds_store_b32 v35, v42 offset:1024                          // 000000BC6E04: D8340400 00002A23
	ds_store_b32 v35, v43 offset:1536                          // 000000BC6E0C: D8340600 00002B23
	ds_store_b32 v36, v44                                      // 000000BC6E14: D8340000 00002C24
	ds_store_b32 v36, v45 offset:512                           // 000000BC6E1C: D8340200 00002D24
	s_waitcnt lgkmcnt(0)                                       // 000000BC6E24: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000BC6E28: BDFC0000
	s_barrier                                                  // 000000BC6E2C: BFBD0000
	v_and_b32_e32 v46, 0xfff, v46                              // 000000BC6E30: 365C5CFF 00000FFF
	v_and_b32_e32 v47, 0xfff, v47                              // 000000BC6E38: 365E5EFF 00000FFF

0000000000bc6e40 <TailLoopBeginL_6>:
	ds_load_b32 v18, v46                                       // 000000BC6E40: D8D80000 1200002E
	ds_load_b32 v19, v46 offset:64                             // 000000BC6E48: D8D80040 1300002E
	ds_load_b32 v20, v46 offset:128                            // 000000BC6E50: D8D80080 1400002E
	ds_load_b32 v21, v46 offset:192                            // 000000BC6E58: D8D800C0 1500002E
	ds_load_b32 v27, v47                                       // 000000BC6E60: D8D80000 1B00002F
	ds_load_b32 v28, v47 offset:32                             // 000000BC6E68: D8D80020 1C00002F
	ds_load_b32 v29, v47 offset:64                             // 000000BC6E70: D8D80040 1D00002F
	ds_load_b32 v30, v47 offset:96                             // 000000BC6E78: D8D80060 1E00002F
	s_mov_b32 s35, 0x100                                       // 000000BC6E80: BEA300FF 00000100
	v_add_co_u32 v46, vcc_lo, s35, v46                         // 000000BC6E88: D7006A2E 00025C23
	s_mov_b32 s35, 0x80                                        // 000000BC6E90: BEA300FF 00000080
	v_add_co_u32 v47, vcc_lo, s35, v47                         // 000000BC6E98: D7006A2F 00025E23
	s_waitcnt lgkmcnt(0)                                       // 000000BC6EA0: BF89FC07
	v_fmac_f32_e32 v0, v18, v27                                // 000000BC6EA4: 56003712
	s_setprio 1                                                // 000000BC6EA8: BFB50001
	v_fmac_f32_e32 v1, v19, v27                                // 000000BC6EAC: 56023713
	v_fmac_f32_e32 v2, v20, v27                                // 000000BC6EB0: 56043714
	v_fmac_f32_e32 v3, v21, v27                                // 000000BC6EB4: 56063715
	v_fmac_f32_e32 v4, v18, v28                                // 000000BC6EB8: 56083912
	v_fmac_f32_e32 v5, v19, v28                                // 000000BC6EBC: 560A3913
	v_fmac_f32_e32 v6, v20, v28                                // 000000BC6EC0: 560C3914
	v_fmac_f32_e32 v7, v21, v28                                // 000000BC6EC4: 560E3915
	v_fmac_f32_e32 v8, v18, v29                                // 000000BC6EC8: 56103B12
	v_fmac_f32_e32 v9, v19, v29                                // 000000BC6ECC: 56123B13
	v_fmac_f32_e32 v10, v20, v29                               // 000000BC6ED0: 56143B14
	v_fmac_f32_e32 v11, v21, v29                               // 000000BC6ED4: 56163B15
	v_fmac_f32_e32 v12, v18, v30                               // 000000BC6ED8: 56183D12
	v_fmac_f32_e32 v13, v19, v30                               // 000000BC6EDC: 561A3D13
	v_fmac_f32_e32 v14, v20, v30                               // 000000BC6EE0: 561C3D14
	v_fmac_f32_e32 v15, v21, v30                               // 000000BC6EE4: 561E3D15
	s_setprio 0                                                // 000000BC6EE8: BFB50000
	s_sub_i32 s5, s5, 1                                        // 000000BC6EEC: 81858105
	s_add_u32 s6, s6, 1                                        // 000000BC6EF0: 80068106
	s_cmp_le_i32 s5, 0                                         // 000000BC6EF4: BF058005
	s_cbranch_scc0 TailLoopBeginL_6                            // 000000BC6EF8: BFA1FFD1

0000000000bc6efc <TailLoopEndL_7>:
	v_lshrrev_b32_e32 v19, 4, v48                              // 000000BC6EFC: 32266084
	v_and_b32_e32 v18, 15, v48                                 // 000000BC6F00: 3624608F
	v_mul_lo_u32 v20, v19, s40                                 // 000000BC6F04: D72C0014 00005113
	v_mul_lo_u32 v21, v19, s38                                 // 000000BC6F0C: D72C0015 00004D13
	s_mul_i32 s52, 64, s2                                      // 000000BC6F14: 963402C0
	v_add_co_u32 v18, vcc_lo, s52, v18                         // 000000BC6F18: D7006A12 00022434
	s_mul_i32 s54, 32, s3                                      // 000000BC6F20: 963603A0
	v_add_co_u32 v19, vcc_lo, s54, v19                         // 000000BC6F24: D7006A13 00022636
	s_cmpk_eq_u32 s37, 0x0                                     // 000000BC6F2C: B4A50000
	s_cbranch_scc0 GW_Beta_43                                  // 000000BC6F30: BFA10139
	s_and_b32 s52, 63, s46                                     // 000000BC6F34: 8B342EBF
	s_add_u32 s53, -1, s50                                     // 000000BC6F38: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000BC6F3C: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000BC6F40: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000BC6F44: B5B40000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000BC6F48: BFA20042
	s_and_b32 s52, 31, s47                                     // 000000BC6F4C: 8B342F9F
	s_add_u32 s53, -1, s51                                     // 000000BC6F50: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000BC6F54: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000BC6F58: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000BC6F5C: B5B40000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000BC6F60: BFA2003C

0000000000bc6f64 <GW_B0_E0_31>:
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000BC6F64: D6470018 020A2515
	v_mul_f32_e32 v0, s36, v0                                  // 000000BC6F6C: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000BC6F70: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000BC6F74: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000BC6F78: 10060624
	v_mul_f32_e32 v4, s36, v4                                  // 000000BC6F7C: 10080824
	v_mul_f32_e32 v5, s36, v5                                  // 000000BC6F80: 100A0A24
	v_mul_f32_e32 v6, s36, v6                                  // 000000BC6F84: 100C0C24
	v_mul_f32_e32 v7, s36, v7                                  // 000000BC6F88: 100E0E24
	v_mul_f32_e32 v8, s36, v8                                  // 000000BC6F8C: 10101024
	v_mul_f32_e32 v9, s36, v9                                  // 000000BC6F90: 10121224
	v_mul_f32_e32 v10, s36, v10                                // 000000BC6F94: 10141424
	v_mul_f32_e32 v11, s36, v11                                // 000000BC6F98: 10161624
	v_mul_f32_e32 v12, s36, v12                                // 000000BC6F9C: 10181824
	v_mul_f32_e32 v13, s36, v13                                // 000000BC6FA0: 101A1A24
	v_mul_f32_e32 v14, s36, v14                                // 000000BC6FA4: 101C1C24
	v_mul_f32_e32 v15, s36, v15                                // 000000BC6FA8: 101E1E24
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000BC6FAC: E0680000 80440018
	buffer_store_b32 v1, v24, s[16:19], 0 offen offset:64      // 000000BC6FB4: E0680040 80440118
	buffer_store_b32 v2, v24, s[16:19], 0 offen offset:128     // 000000BC6FBC: E0680080 80440218
	buffer_store_b32 v3, v24, s[16:19], 0 offen offset:192     // 000000BC6FC4: E06800C0 80440318
	s_mul_i32 s52, s38, 32                                     // 000000BC6FCC: 9634A026
	s_add_u32 s16, s16, s52                                    // 000000BC6FD0: 80103410
	s_addc_u32 s17, s17, 0                                     // 000000BC6FD4: 82118011
	buffer_store_b32 v4, v24, s[16:19], 0 offen                // 000000BC6FD8: E0680000 80440418
	buffer_store_b32 v5, v24, s[16:19], 0 offen offset:64      // 000000BC6FE0: E0680040 80440518
	buffer_store_b32 v6, v24, s[16:19], 0 offen offset:128     // 000000BC6FE8: E0680080 80440618
	buffer_store_b32 v7, v24, s[16:19], 0 offen offset:192     // 000000BC6FF0: E06800C0 80440718
	s_mul_i32 s52, s38, 32                                     // 000000BC6FF8: 9634A026
	s_add_u32 s16, s16, s52                                    // 000000BC6FFC: 80103410
	s_addc_u32 s17, s17, 0                                     // 000000BC7000: 82118011
	buffer_store_b32 v8, v24, s[16:19], 0 offen                // 000000BC7004: E0680000 80440818
	buffer_store_b32 v9, v24, s[16:19], 0 offen offset:64      // 000000BC700C: E0680040 80440918
	buffer_store_b32 v10, v24, s[16:19], 0 offen offset:128    // 000000BC7014: E0680080 80440A18
	buffer_store_b32 v11, v24, s[16:19], 0 offen offset:192    // 000000BC701C: E06800C0 80440B18
	s_mul_i32 s52, s38, 32                                     // 000000BC7024: 9634A026
	s_add_u32 s16, s16, s52                                    // 000000BC7028: 80103410
	s_addc_u32 s17, s17, 0                                     // 000000BC702C: 82118011
	buffer_store_b32 v12, v24, s[16:19], 0 offen               // 000000BC7030: E0680000 80440C18
	buffer_store_b32 v13, v24, s[16:19], 0 offen offset:64     // 000000BC7038: E0680040 80440D18
	buffer_store_b32 v14, v24, s[16:19], 0 offen offset:128    // 000000BC7040: E0680080 80440E18
	buffer_store_b32 v15, v24, s[16:19], 0 offen offset:192    // 000000BC7048: E06800C0 80440F18
	s_branch label_0047                                        // 000000BC7050: BFA00309

0000000000bc7054 <GW_B0_E1_34>:
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000BC7054: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC705C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC7064: 8B363634
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000BC7068: D6470018 020A2515
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000BC7070: D5010018 00DA30C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000BC7078: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC7080: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC7088: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC7090: 8B363634
	v_add_lshl_u32 v25, v21, v22, 2                            // 000000BC7094: D6470019 020A2D15
	v_cndmask_b32_e64 v25, -1, v25, s54                        // 000000BC709C: D5010019 00DA32C1
	v_add_co_u32 v22, vcc_lo, v18, 32                          // 000000BC70A4: D7006A16 00014112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC70AC: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC70B4: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC70BC: 8B363634
	v_add_lshl_u32 v26, v21, v22, 2                            // 000000BC70C0: D647001A 020A2D15
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000BC70C8: D501001A 00DA34C1
	v_add_co_u32 v22, vcc_lo, v18, 48                          // 000000BC70D0: D7006A16 00016112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC70D8: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC70E0: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC70E8: 8B363634
	v_add_lshl_u32 v27, v21, v22, 2                            // 000000BC70EC: D647001B 020A2D15
	v_cndmask_b32_e64 v27, -1, v27, s54                        // 000000BC70F4: D501001B 00DA36C1
	v_add_co_u32 v19, vcc_lo, v19, 8                           // 000000BC70FC: D7006A13 00011113
	s_mul_i32 s52, s40, 8                                      // 000000BC7104: 96348828
	v_add_nc_u32_e64 v20, v20, s52                             // 000000BC7108: D5250014 00006914
	s_mul_i32 s52, s38, 8                                      // 000000BC7110: 96348826
	v_add_nc_u32_e64 v21, v21, s52                             // 000000BC7114: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000BC711C: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC7124: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC712C: 8B363634
	v_add_lshl_u32 v28, v21, v18, 2                            // 000000BC7130: D647001C 020A2515
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000BC7138: D501001C 00DA38C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000BC7140: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC7148: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC7150: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC7158: 8B363634
	v_add_lshl_u32 v29, v21, v22, 2                            // 000000BC715C: D647001D 020A2D15
	v_cndmask_b32_e64 v29, -1, v29, s54                        // 000000BC7164: D501001D 00DA3AC1
	v_add_co_u32 v22, vcc_lo, v18, 32                          // 000000BC716C: D7006A16 00014112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC7174: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC717C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC7184: 8B363634
	v_add_lshl_u32 v30, v21, v22, 2                            // 000000BC7188: D647001E 020A2D15
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000BC7190: D501001E 00DA3CC1
	v_add_co_u32 v22, vcc_lo, v18, 48                          // 000000BC7198: D7006A16 00016112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC71A0: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC71A8: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC71B0: 8B363634
	v_add_lshl_u32 v31, v21, v22, 2                            // 000000BC71B4: D647001F 020A2D15
	v_cndmask_b32_e64 v31, -1, v31, s54                        // 000000BC71BC: D501001F 00DA3EC1
	v_add_co_u32 v19, vcc_lo, v19, 8                           // 000000BC71C4: D7006A13 00011113
	s_mul_i32 s52, s40, 8                                      // 000000BC71CC: 96348828
	v_add_nc_u32_e64 v20, v20, s52                             // 000000BC71D0: D5250014 00006914
	s_mul_i32 s52, s38, 8                                      // 000000BC71D8: 96348826
	v_add_nc_u32_e64 v21, v21, s52                             // 000000BC71DC: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000BC71E4: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC71EC: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC71F4: 8B363634
	v_add_lshl_u32 v32, v21, v18, 2                            // 000000BC71F8: D6470020 020A2515
	v_cndmask_b32_e64 v32, -1, v32, s54                        // 000000BC7200: D5010020 00DA40C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000BC7208: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC7210: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC7218: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC7220: 8B363634
	v_add_lshl_u32 v33, v21, v22, 2                            // 000000BC7224: D6470021 020A2D15
	v_cndmask_b32_e64 v33, -1, v33, s54                        // 000000BC722C: D5010021 00DA42C1
	v_add_co_u32 v22, vcc_lo, v18, 32                          // 000000BC7234: D7006A16 00014112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC723C: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC7244: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC724C: 8B363634
	v_add_lshl_u32 v34, v21, v22, 2                            // 000000BC7250: D6470022 020A2D15
	v_cndmask_b32_e64 v34, -1, v34, s54                        // 000000BC7258: D5010022 00DA44C1
	v_add_co_u32 v22, vcc_lo, v18, 48                          // 000000BC7260: D7006A16 00016112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC7268: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC7270: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC7278: 8B363634
	v_add_lshl_u32 v35, v21, v22, 2                            // 000000BC727C: D6470023 020A2D15
	v_cndmask_b32_e64 v35, -1, v35, s54                        // 000000BC7284: D5010023 00DA46C1
	v_add_co_u32 v19, vcc_lo, v19, 8                           // 000000BC728C: D7006A13 00011113
	s_mul_i32 s52, s40, 8                                      // 000000BC7294: 96348828
	v_add_nc_u32_e64 v20, v20, s52                             // 000000BC7298: D5250014 00006914
	s_mul_i32 s52, s38, 8                                      // 000000BC72A0: 96348826
	v_add_nc_u32_e64 v21, v21, s52                             // 000000BC72A4: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000BC72AC: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC72B4: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC72BC: 8B363634
	v_add_lshl_u32 v36, v21, v18, 2                            // 000000BC72C0: D6470024 020A2515
	v_cndmask_b32_e64 v36, -1, v36, s54                        // 000000BC72C8: D5010024 00DA48C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000BC72D0: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC72D8: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC72E0: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC72E8: 8B363634
	v_add_lshl_u32 v37, v21, v22, 2                            // 000000BC72EC: D6470025 020A2D15
	v_cndmask_b32_e64 v37, -1, v37, s54                        // 000000BC72F4: D5010025 00DA4AC1
	v_add_co_u32 v22, vcc_lo, v18, 32                          // 000000BC72FC: D7006A16 00014112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC7304: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC730C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC7314: 8B363634
	v_add_lshl_u32 v38, v21, v22, 2                            // 000000BC7318: D6470026 020A2D15
	v_cndmask_b32_e64 v38, -1, v38, s54                        // 000000BC7320: D5010026 00DA4CC1
	v_add_co_u32 v22, vcc_lo, v18, 48                          // 000000BC7328: D7006A16 00016112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC7330: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC7338: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC7340: 8B363634
	v_add_lshl_u32 v39, v21, v22, 2                            // 000000BC7344: D6470027 020A2D15
	v_cndmask_b32_e64 v39, -1, v39, s54                        // 000000BC734C: D5010027 00DA4EC1
	v_mul_f32_e32 v0, s36, v0                                  // 000000BC7354: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000BC7358: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000BC735C: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000BC7360: 10060624
	v_mul_f32_e32 v4, s36, v4                                  // 000000BC7364: 10080824
	v_mul_f32_e32 v5, s36, v5                                  // 000000BC7368: 100A0A24
	v_mul_f32_e32 v6, s36, v6                                  // 000000BC736C: 100C0C24
	v_mul_f32_e32 v7, s36, v7                                  // 000000BC7370: 100E0E24
	v_mul_f32_e32 v8, s36, v8                                  // 000000BC7374: 10101024
	v_mul_f32_e32 v9, s36, v9                                  // 000000BC7378: 10121224
	v_mul_f32_e32 v10, s36, v10                                // 000000BC737C: 10141424
	v_mul_f32_e32 v11, s36, v11                                // 000000BC7380: 10161624
	v_mul_f32_e32 v12, s36, v12                                // 000000BC7384: 10181824
	v_mul_f32_e32 v13, s36, v13                                // 000000BC7388: 101A1A24
	v_mul_f32_e32 v14, s36, v14                                // 000000BC738C: 101C1C24
	v_mul_f32_e32 v15, s36, v15                                // 000000BC7390: 101E1E24
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000BC7394: E0680000 80440018
	buffer_store_b32 v1, v25, s[16:19], 0 offen                // 000000BC739C: E0680000 80440119
	buffer_store_b32 v2, v26, s[16:19], 0 offen                // 000000BC73A4: E0680000 8044021A
	buffer_store_b32 v3, v27, s[16:19], 0 offen                // 000000BC73AC: E0680000 8044031B
	buffer_store_b32 v4, v28, s[16:19], 0 offen                // 000000BC73B4: E0680000 8044041C
	buffer_store_b32 v5, v29, s[16:19], 0 offen                // 000000BC73BC: E0680000 8044051D
	buffer_store_b32 v6, v30, s[16:19], 0 offen                // 000000BC73C4: E0680000 8044061E
	buffer_store_b32 v7, v31, s[16:19], 0 offen                // 000000BC73CC: E0680000 8044071F
	buffer_store_b32 v8, v32, s[16:19], 0 offen                // 000000BC73D4: E0680000 80440820
	buffer_store_b32 v9, v33, s[16:19], 0 offen                // 000000BC73DC: E0680000 80440921
	buffer_store_b32 v10, v34, s[16:19], 0 offen               // 000000BC73E4: E0680000 80440A22
	buffer_store_b32 v11, v35, s[16:19], 0 offen               // 000000BC73EC: E0680000 80440B23
	buffer_store_b32 v12, v36, s[16:19], 0 offen               // 000000BC73F4: E0680000 80440C24
	buffer_store_b32 v13, v37, s[16:19], 0 offen               // 000000BC73FC: E0680000 80440D25
	buffer_store_b32 v14, v38, s[16:19], 0 offen               // 000000BC7404: E0680000 80440E26
	buffer_store_b32 v15, v39, s[16:19], 0 offen               // 000000BC740C: E0680000 80440F27
	s_branch label_0047                                        // 000000BC7414: BFA00218

0000000000bc7418 <GW_Beta_43>:
	s_and_b32 s52, 63, s46                                     // 000000BC7418: 8B342EBF
	s_add_u32 s53, -1, s50                                     // 000000BC741C: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000BC7420: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000BC7424: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000BC7428: B5B40000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000BC742C: BFA2009D
	s_and_b32 s52, 31, s47                                     // 000000BC7430: 8B342F9F
	s_add_u32 s53, -1, s51                                     // 000000BC7434: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000BC7438: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000BC743C: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000BC7440: B5B40000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000BC7444: BFA20097

0000000000bc7448 <GW_B1_E0_38>:
	v_add_lshl_u32 v25, v20, v18, 2                            // 000000BC7448: D6470019 020A2514
	buffer_load_b32 v26, v25, s[20:23], 0 offen                // 000000BC7450: E0500000 80451A19
	buffer_load_b32 v27, v25, s[20:23], 0 offen offset:64      // 000000BC7458: E0500040 80451B19
	buffer_load_b32 v28, v25, s[20:23], 0 offen offset:128     // 000000BC7460: E0500080 80451C19
	buffer_load_b32 v29, v25, s[20:23], 0 offen offset:192     // 000000BC7468: E05000C0 80451D19
	s_mul_i32 s52, s40, 32                                     // 000000BC7470: 9634A028
	s_add_u32 s20, s20, s52                                    // 000000BC7474: 80143414
	s_addc_u32 s21, s21, 0                                     // 000000BC7478: 82158015
	buffer_load_b32 v30, v25, s[20:23], 0 offen                // 000000BC747C: E0500000 80451E19
	buffer_load_b32 v31, v25, s[20:23], 0 offen offset:64      // 000000BC7484: E0500040 80451F19
	buffer_load_b32 v32, v25, s[20:23], 0 offen offset:128     // 000000BC748C: E0500080 80452019
	buffer_load_b32 v33, v25, s[20:23], 0 offen offset:192     // 000000BC7494: E05000C0 80452119
	s_mul_i32 s52, s40, 32                                     // 000000BC749C: 9634A028
	s_add_u32 s20, s20, s52                                    // 000000BC74A0: 80143414
	s_addc_u32 s21, s21, 0                                     // 000000BC74A4: 82158015
	buffer_load_b32 v34, v25, s[20:23], 0 offen                // 000000BC74A8: E0500000 80452219
	buffer_load_b32 v35, v25, s[20:23], 0 offen offset:64      // 000000BC74B0: E0500040 80452319
	buffer_load_b32 v36, v25, s[20:23], 0 offen offset:128     // 000000BC74B8: E0500080 80452419
	buffer_load_b32 v37, v25, s[20:23], 0 offen offset:192     // 000000BC74C0: E05000C0 80452519
	s_mul_i32 s52, s40, 32                                     // 000000BC74C8: 9634A028
	s_add_u32 s20, s20, s52                                    // 000000BC74CC: 80143414
	s_addc_u32 s21, s21, 0                                     // 000000BC74D0: 82158015
	buffer_load_b32 v38, v25, s[20:23], 0 offen                // 000000BC74D4: E0500000 80452619
	buffer_load_b32 v39, v25, s[20:23], 0 offen offset:64      // 000000BC74DC: E0500040 80452719
	buffer_load_b32 v40, v25, s[20:23], 0 offen offset:128     // 000000BC74E4: E0500080 80452819
	buffer_load_b32 v41, v25, s[20:23], 0 offen offset:192     // 000000BC74EC: E05000C0 80452919
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000BC74F4: D6470018 020A2515
	v_mul_f32_e32 v0, s36, v0                                  // 000000BC74FC: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000BC7500: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000BC7504: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000BC7508: 10060624
	v_mul_f32_e32 v4, s36, v4                                  // 000000BC750C: 10080824
	v_mul_f32_e32 v5, s36, v5                                  // 000000BC7510: 100A0A24
	v_mul_f32_e32 v6, s36, v6                                  // 000000BC7514: 100C0C24
	v_mul_f32_e32 v7, s36, v7                                  // 000000BC7518: 100E0E24
	v_mul_f32_e32 v8, s36, v8                                  // 000000BC751C: 10101024
	v_mul_f32_e32 v9, s36, v9                                  // 000000BC7520: 10121224
	v_mul_f32_e32 v10, s36, v10                                // 000000BC7524: 10141424
	v_mul_f32_e32 v11, s36, v11                                // 000000BC7528: 10161624
	v_mul_f32_e32 v12, s36, v12                                // 000000BC752C: 10181824
	v_mul_f32_e32 v13, s36, v13                                // 000000BC7530: 101A1A24
	v_mul_f32_e32 v14, s36, v14                                // 000000BC7534: 101C1C24
	v_mul_f32_e32 v15, s36, v15                                // 000000BC7538: 101E1E24
	s_waitcnt vmcnt(15)                                        // 000000BC753C: BF893FF7
	v_fmac_f32_e64 v0, v26, s37                                // 000000BC7540: D52B0000 00004B1A
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000BC7548: E0680000 80440018
	s_waitcnt vmcnt(14)                                        // 000000BC7550: BF893BF7
	v_fmac_f32_e64 v1, v27, s37                                // 000000BC7554: D52B0001 00004B1B
	buffer_store_b32 v1, v24, s[16:19], 0 offen offset:64      // 000000BC755C: E0680040 80440118
	s_waitcnt vmcnt(13)                                        // 000000BC7564: BF8937F7
	v_fmac_f32_e64 v2, v28, s37                                // 000000BC7568: D52B0002 00004B1C
	buffer_store_b32 v2, v24, s[16:19], 0 offen offset:128     // 000000BC7570: E0680080 80440218
	s_waitcnt vmcnt(12)                                        // 000000BC7578: BF8933F7
	v_fmac_f32_e64 v3, v29, s37                                // 000000BC757C: D52B0003 00004B1D
	buffer_store_b32 v3, v24, s[16:19], 0 offen offset:192     // 000000BC7584: E06800C0 80440318
	s_waitcnt vmcnt(11)                                        // 000000BC758C: BF892FF7
	v_fmac_f32_e64 v4, v30, s37                                // 000000BC7590: D52B0004 00004B1E
	s_mul_i32 s52, s38, 32                                     // 000000BC7598: 9634A026
	s_add_u32 s16, s16, s52                                    // 000000BC759C: 80103410
	s_addc_u32 s17, s17, 0                                     // 000000BC75A0: 82118011
	buffer_store_b32 v4, v24, s[16:19], 0 offen                // 000000BC75A4: E0680000 80440418
	s_waitcnt vmcnt(10)                                        // 000000BC75AC: BF892BF7
	v_fmac_f32_e64 v5, v31, s37                                // 000000BC75B0: D52B0005 00004B1F
	buffer_store_b32 v5, v24, s[16:19], 0 offen offset:64      // 000000BC75B8: E0680040 80440518
	s_waitcnt vmcnt(9)                                         // 000000BC75C0: BF8927F7
	v_fmac_f32_e64 v6, v32, s37                                // 000000BC75C4: D52B0006 00004B20
	buffer_store_b32 v6, v24, s[16:19], 0 offen offset:128     // 000000BC75CC: E0680080 80440618
	s_waitcnt vmcnt(8)                                         // 000000BC75D4: BF8923F7
	v_fmac_f32_e64 v7, v33, s37                                // 000000BC75D8: D52B0007 00004B21
	buffer_store_b32 v7, v24, s[16:19], 0 offen offset:192     // 000000BC75E0: E06800C0 80440718
	s_waitcnt vmcnt(7)                                         // 000000BC75E8: BF891FF7
	v_fmac_f32_e64 v8, v34, s37                                // 000000BC75EC: D52B0008 00004B22
	s_mul_i32 s52, s38, 32                                     // 000000BC75F4: 9634A026
	s_add_u32 s16, s16, s52                                    // 000000BC75F8: 80103410
	s_addc_u32 s17, s17, 0                                     // 000000BC75FC: 82118011
	buffer_store_b32 v8, v24, s[16:19], 0 offen                // 000000BC7600: E0680000 80440818
	s_waitcnt vmcnt(6)                                         // 000000BC7608: BF891BF7
	v_fmac_f32_e64 v9, v35, s37                                // 000000BC760C: D52B0009 00004B23
	buffer_store_b32 v9, v24, s[16:19], 0 offen offset:64      // 000000BC7614: E0680040 80440918
	s_waitcnt vmcnt(5)                                         // 000000BC761C: BF8917F7
	v_fmac_f32_e64 v10, v36, s37                               // 000000BC7620: D52B000A 00004B24
	buffer_store_b32 v10, v24, s[16:19], 0 offen offset:128    // 000000BC7628: E0680080 80440A18
	s_waitcnt vmcnt(4)                                         // 000000BC7630: BF8913F7
	v_fmac_f32_e64 v11, v37, s37                               // 000000BC7634: D52B000B 00004B25
	buffer_store_b32 v11, v24, s[16:19], 0 offen offset:192    // 000000BC763C: E06800C0 80440B18
	s_waitcnt vmcnt(3)                                         // 000000BC7644: BF890FF7
	v_fmac_f32_e64 v12, v38, s37                               // 000000BC7648: D52B000C 00004B26
	s_mul_i32 s52, s38, 32                                     // 000000BC7650: 9634A026
	s_add_u32 s16, s16, s52                                    // 000000BC7654: 80103410
	s_addc_u32 s17, s17, 0                                     // 000000BC7658: 82118011
	buffer_store_b32 v12, v24, s[16:19], 0 offen               // 000000BC765C: E0680000 80440C18
	s_waitcnt vmcnt(2)                                         // 000000BC7664: BF890BF7
	v_fmac_f32_e64 v13, v39, s37                               // 000000BC7668: D52B000D 00004B27
	buffer_store_b32 v13, v24, s[16:19], 0 offen offset:64     // 000000BC7670: E0680040 80440D18
	s_waitcnt vmcnt(1)                                         // 000000BC7678: BF8907F7
	v_fmac_f32_e64 v14, v40, s37                               // 000000BC767C: D52B000E 00004B28
	buffer_store_b32 v14, v24, s[16:19], 0 offen offset:128    // 000000BC7684: E0680080 80440E18
	s_waitcnt vmcnt(0)                                         // 000000BC768C: BF8903F7
	v_fmac_f32_e64 v15, v41, s37                               // 000000BC7690: D52B000F 00004B29
	buffer_store_b32 v15, v24, s[16:19], 0 offen offset:192    // 000000BC7698: E06800C0 80440F18
	s_branch label_0047                                        // 000000BC76A0: BFA00175

0000000000bc76a4 <GW_B1_E1_41>:
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000BC76A4: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC76AC: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC76B4: 8B363634
	v_add_lshl_u32 v24, v20, v18, 2                            // 000000BC76B8: D6470018 020A2514
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000BC76C0: D5010018 00DA30C1
	buffer_load_b32 v25, v24, s[20:23], 0 offen                // 000000BC76C8: E0500000 80451918
	v_add_lshl_u32 v24, v21, v18, 2                            // 000000BC76D0: D6470018 020A2515
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000BC76D8: D5010018 00DA30C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000BC76E0: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC76E8: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC76F0: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC76F8: 8B363634
	v_add_lshl_u32 v26, v20, v22, 2                            // 000000BC76FC: D647001A 020A2D14
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000BC7704: D501001A 00DA34C1
	buffer_load_b32 v27, v26, s[20:23], 0 offen                // 000000BC770C: E0500000 80451B1A
	v_add_lshl_u32 v26, v21, v22, 2                            // 000000BC7714: D647001A 020A2D15
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000BC771C: D501001A 00DA34C1
	v_add_co_u32 v22, vcc_lo, v18, 32                          // 000000BC7724: D7006A16 00014112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC772C: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC7734: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC773C: 8B363634
	v_add_lshl_u32 v28, v20, v22, 2                            // 000000BC7740: D647001C 020A2D14
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000BC7748: D501001C 00DA38C1
	buffer_load_b32 v29, v28, s[20:23], 0 offen                // 000000BC7750: E0500000 80451D1C
	v_add_lshl_u32 v28, v21, v22, 2                            // 000000BC7758: D647001C 020A2D15
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000BC7760: D501001C 00DA38C1
	v_add_co_u32 v22, vcc_lo, v18, 48                          // 000000BC7768: D7006A16 00016112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC7770: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC7778: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC7780: 8B363634
	v_add_lshl_u32 v30, v20, v22, 2                            // 000000BC7784: D647001E 020A2D14
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000BC778C: D501001E 00DA3CC1
	buffer_load_b32 v31, v30, s[20:23], 0 offen                // 000000BC7794: E0500000 80451F1E
	v_add_lshl_u32 v30, v21, v22, 2                            // 000000BC779C: D647001E 020A2D15
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000BC77A4: D501001E 00DA3CC1
	v_add_co_u32 v19, vcc_lo, v19, 8                           // 000000BC77AC: D7006A13 00011113
	s_mul_i32 s52, s40, 8                                      // 000000BC77B4: 96348828
	v_add_nc_u32_e64 v20, v20, s52                             // 000000BC77B8: D5250014 00006914
	s_mul_i32 s52, s38, 8                                      // 000000BC77C0: 96348826
	v_add_nc_u32_e64 v21, v21, s52                             // 000000BC77C4: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000BC77CC: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC77D4: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC77DC: 8B363634
	v_add_lshl_u32 v32, v20, v18, 2                            // 000000BC77E0: D6470020 020A2514
	v_cndmask_b32_e64 v32, -1, v32, s54                        // 000000BC77E8: D5010020 00DA40C1
	buffer_load_b32 v33, v32, s[20:23], 0 offen                // 000000BC77F0: E0500000 80452120
	v_add_lshl_u32 v32, v21, v18, 2                            // 000000BC77F8: D6470020 020A2515
	v_cndmask_b32_e64 v32, -1, v32, s54                        // 000000BC7800: D5010020 00DA40C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000BC7808: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC7810: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC7818: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC7820: 8B363634
	v_add_lshl_u32 v34, v20, v22, 2                            // 000000BC7824: D6470022 020A2D14
	v_cndmask_b32_e64 v34, -1, v34, s54                        // 000000BC782C: D5010022 00DA44C1
	buffer_load_b32 v35, v34, s[20:23], 0 offen                // 000000BC7834: E0500000 80452322
	v_add_lshl_u32 v34, v21, v22, 2                            // 000000BC783C: D6470022 020A2D15
	v_cndmask_b32_e64 v34, -1, v34, s54                        // 000000BC7844: D5010022 00DA44C1
	v_add_co_u32 v22, vcc_lo, v18, 32                          // 000000BC784C: D7006A16 00014112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC7854: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC785C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC7864: 8B363634
	v_add_lshl_u32 v36, v20, v22, 2                            // 000000BC7868: D6470024 020A2D14
	v_cndmask_b32_e64 v36, -1, v36, s54                        // 000000BC7870: D5010024 00DA48C1
	buffer_load_b32 v37, v36, s[20:23], 0 offen                // 000000BC7878: E0500000 80452524
	v_add_lshl_u32 v36, v21, v22, 2                            // 000000BC7880: D6470024 020A2D15
	v_cndmask_b32_e64 v36, -1, v36, s54                        // 000000BC7888: D5010024 00DA48C1
	v_add_co_u32 v22, vcc_lo, v18, 48                          // 000000BC7890: D7006A16 00016112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC7898: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC78A0: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC78A8: 8B363634
	v_add_lshl_u32 v38, v20, v22, 2                            // 000000BC78AC: D6470026 020A2D14
	v_cndmask_b32_e64 v38, -1, v38, s54                        // 000000BC78B4: D5010026 00DA4CC1
	buffer_load_b32 v39, v38, s[20:23], 0 offen                // 000000BC78BC: E0500000 80452726
	v_add_lshl_u32 v38, v21, v22, 2                            // 000000BC78C4: D6470026 020A2D15
	v_cndmask_b32_e64 v38, -1, v38, s54                        // 000000BC78CC: D5010026 00DA4CC1
	v_add_co_u32 v19, vcc_lo, v19, 8                           // 000000BC78D4: D7006A13 00011113
	s_mul_i32 s52, s40, 8                                      // 000000BC78DC: 96348828
	v_add_nc_u32_e64 v20, v20, s52                             // 000000BC78E0: D5250014 00006914
	s_mul_i32 s52, s38, 8                                      // 000000BC78E8: 96348826
	v_add_nc_u32_e64 v21, v21, s52                             // 000000BC78EC: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000BC78F4: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC78FC: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC7904: 8B363634
	v_add_lshl_u32 v40, v20, v18, 2                            // 000000BC7908: D6470028 020A2514
	v_cndmask_b32_e64 v40, -1, v40, s54                        // 000000BC7910: D5010028 00DA50C1
	buffer_load_b32 v41, v40, s[20:23], 0 offen                // 000000BC7918: E0500000 80452928
	v_add_lshl_u32 v40, v21, v18, 2                            // 000000BC7920: D6470028 020A2515
	v_cndmask_b32_e64 v40, -1, v40, s54                        // 000000BC7928: D5010028 00DA50C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000BC7930: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC7938: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC7940: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC7948: 8B363634
	v_add_lshl_u32 v42, v20, v22, 2                            // 000000BC794C: D647002A 020A2D14
	v_cndmask_b32_e64 v42, -1, v42, s54                        // 000000BC7954: D501002A 00DA54C1
	buffer_load_b32 v43, v42, s[20:23], 0 offen                // 000000BC795C: E0500000 80452B2A
	v_add_lshl_u32 v42, v21, v22, 2                            // 000000BC7964: D647002A 020A2D15
	v_cndmask_b32_e64 v42, -1, v42, s54                        // 000000BC796C: D501002A 00DA54C1
	v_add_co_u32 v22, vcc_lo, v18, 32                          // 000000BC7974: D7006A16 00014112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC797C: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC7984: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC798C: 8B363634
	v_add_lshl_u32 v44, v20, v22, 2                            // 000000BC7990: D647002C 020A2D14
	v_cndmask_b32_e64 v44, -1, v44, s54                        // 000000BC7998: D501002C 00DA58C1
	buffer_load_b32 v45, v44, s[20:23], 0 offen                // 000000BC79A0: E0500000 80452D2C
	v_add_lshl_u32 v44, v21, v22, 2                            // 000000BC79A8: D647002C 020A2D15
	v_cndmask_b32_e64 v44, -1, v44, s54                        // 000000BC79B0: D501002C 00DA58C1
	v_mul_f32_e32 v0, s36, v0                                  // 000000BC79B8: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 000000BC79BC: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000BC79C0: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000BC79C4: 10060624
	v_mul_f32_e32 v4, s36, v4                                  // 000000BC79C8: 10080824
	v_mul_f32_e32 v5, s36, v5                                  // 000000BC79CC: 100A0A24
	v_mul_f32_e32 v6, s36, v6                                  // 000000BC79D0: 100C0C24
	v_mul_f32_e32 v7, s36, v7                                  // 000000BC79D4: 100E0E24
	v_mul_f32_e32 v8, s36, v8                                  // 000000BC79D8: 10101024
	v_mul_f32_e32 v9, s36, v9                                  // 000000BC79DC: 10121224
	v_mul_f32_e32 v10, s36, v10                                // 000000BC79E0: 10141424
	s_waitcnt vmcnt(0)                                         // 000000BC79E4: BF8903F7
	s_waitcnt_vscnt null, 0x0                                  // 000000BC79E8: BC7C0000
	v_fmac_f32_e64 v0, v25, s37                                // 000000BC79EC: D52B0000 00004B19
	buffer_store_b32 v0, v24, s[16:19], 0 offen                // 000000BC79F4: E0680000 80440018
	v_fmac_f32_e64 v1, v27, s37                                // 000000BC79FC: D52B0001 00004B1B
	buffer_store_b32 v1, v26, s[16:19], 0 offen                // 000000BC7A04: E0680000 8044011A
	v_fmac_f32_e64 v2, v29, s37                                // 000000BC7A0C: D52B0002 00004B1D
	buffer_store_b32 v2, v28, s[16:19], 0 offen                // 000000BC7A14: E0680000 8044021C
	v_fmac_f32_e64 v3, v31, s37                                // 000000BC7A1C: D52B0003 00004B1F
	buffer_store_b32 v3, v30, s[16:19], 0 offen                // 000000BC7A24: E0680000 8044031E
	v_fmac_f32_e64 v4, v33, s37                                // 000000BC7A2C: D52B0004 00004B21
	buffer_store_b32 v4, v32, s[16:19], 0 offen                // 000000BC7A34: E0680000 80440420
	v_fmac_f32_e64 v5, v35, s37                                // 000000BC7A3C: D52B0005 00004B23
	buffer_store_b32 v5, v34, s[16:19], 0 offen                // 000000BC7A44: E0680000 80440522
	v_fmac_f32_e64 v6, v37, s37                                // 000000BC7A4C: D52B0006 00004B25
	buffer_store_b32 v6, v36, s[16:19], 0 offen                // 000000BC7A54: E0680000 80440624
	v_fmac_f32_e64 v7, v39, s37                                // 000000BC7A5C: D52B0007 00004B27
	buffer_store_b32 v7, v38, s[16:19], 0 offen                // 000000BC7A64: E0680000 80440726
	v_fmac_f32_e64 v8, v41, s37                                // 000000BC7A6C: D52B0008 00004B29
	buffer_store_b32 v8, v40, s[16:19], 0 offen                // 000000BC7A74: E0680000 80440828
	v_fmac_f32_e64 v9, v43, s37                                // 000000BC7A7C: D52B0009 00004B2B
	buffer_store_b32 v9, v42, s[16:19], 0 offen                // 000000BC7A84: E0680000 8044092A
	v_fmac_f32_e64 v10, v45, s37                               // 000000BC7A8C: D52B000A 00004B2D
	buffer_store_b32 v10, v44, s[16:19], 0 offen               // 000000BC7A94: E0680000 80440A2C
	v_add_co_u32 v22, vcc_lo, v18, 48                          // 000000BC7A9C: D7006A16 00016112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC7AA4: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC7AAC: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC7AB4: 8B363634
	v_add_lshl_u32 v24, v20, v22, 2                            // 000000BC7AB8: D6470018 020A2D14
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000BC7AC0: D5010018 00DA30C1
	buffer_load_b32 v25, v24, s[20:23], 0 offen                // 000000BC7AC8: E0500000 80451918
	v_add_lshl_u32 v24, v21, v22, 2                            // 000000BC7AD0: D6470018 020A2D15
	v_cndmask_b32_e64 v24, -1, v24, s54                        // 000000BC7AD8: D5010018 00DA30C1
	v_add_co_u32 v19, vcc_lo, v19, 8                           // 000000BC7AE0: D7006A13 00011113
	s_mul_i32 s52, s40, 8                                      // 000000BC7AE8: 96348828
	v_add_nc_u32_e64 v20, v20, s52                             // 000000BC7AEC: D5250014 00006914
	s_mul_i32 s52, s38, 8                                      // 000000BC7AF4: 96348826
	v_add_nc_u32_e64 v21, v21, s52                             // 000000BC7AF8: D5250015 00006915
	v_cmp_lt_u32_e64 s52, v18, s46                             // 000000BC7B00: D4490034 00005D12
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC7B08: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC7B10: 8B363634
	v_add_lshl_u32 v26, v20, v18, 2                            // 000000BC7B14: D647001A 020A2514
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000BC7B1C: D501001A 00DA34C1
	buffer_load_b32 v27, v26, s[20:23], 0 offen                // 000000BC7B24: E0500000 80451B1A
	v_add_lshl_u32 v26, v21, v18, 2                            // 000000BC7B2C: D647001A 020A2515
	v_cndmask_b32_e64 v26, -1, v26, s54                        // 000000BC7B34: D501001A 00DA34C1
	v_add_co_u32 v22, vcc_lo, v18, 16                          // 000000BC7B3C: D7006A16 00012112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC7B44: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC7B4C: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC7B54: 8B363634
	v_add_lshl_u32 v28, v20, v22, 2                            // 000000BC7B58: D647001C 020A2D14
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000BC7B60: D501001C 00DA38C1
	buffer_load_b32 v29, v28, s[20:23], 0 offen                // 000000BC7B68: E0500000 80451D1C
	v_add_lshl_u32 v28, v21, v22, 2                            // 000000BC7B70: D647001C 020A2D15
	v_cndmask_b32_e64 v28, -1, v28, s54                        // 000000BC7B78: D501001C 00DA38C1
	v_add_co_u32 v22, vcc_lo, v18, 32                          // 000000BC7B80: D7006A16 00014112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC7B88: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC7B90: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC7B98: 8B363634
	v_add_lshl_u32 v30, v20, v22, 2                            // 000000BC7B9C: D647001E 020A2D14
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000BC7BA4: D501001E 00DA3CC1
	buffer_load_b32 v31, v30, s[20:23], 0 offen                // 000000BC7BAC: E0500000 80451F1E
	v_add_lshl_u32 v30, v21, v22, 2                            // 000000BC7BB4: D647001E 020A2D15
	v_cndmask_b32_e64 v30, -1, v30, s54                        // 000000BC7BBC: D501001E 00DA3CC1
	v_add_co_u32 v22, vcc_lo, v18, 48                          // 000000BC7BC4: D7006A16 00016112
	v_cmp_lt_u32_e64 s52, v22, s46                             // 000000BC7BCC: D4490034 00005D16
	v_cmp_lt_u32_e64 s54, v19, s47                             // 000000BC7BD4: D4490036 00005F13
	s_and_b32 s54, s52, s54                                    // 000000BC7BDC: 8B363634
	v_add_lshl_u32 v32, v20, v22, 2                            // 000000BC7BE0: D6470020 020A2D14
	v_cndmask_b32_e64 v32, -1, v32, s54                        // 000000BC7BE8: D5010020 00DA40C1
	buffer_load_b32 v33, v32, s[20:23], 0 offen                // 000000BC7BF0: E0500000 80452120
	v_add_lshl_u32 v32, v21, v22, 2                            // 000000BC7BF8: D6470020 020A2D15
	v_cndmask_b32_e64 v32, -1, v32, s54                        // 000000BC7C00: D5010020 00DA40C1
	v_mul_f32_e32 v11, s36, v11                                // 000000BC7C08: 10161624
	v_mul_f32_e32 v12, s36, v12                                // 000000BC7C0C: 10181824
	v_mul_f32_e32 v13, s36, v13                                // 000000BC7C10: 101A1A24
	v_mul_f32_e32 v14, s36, v14                                // 000000BC7C14: 101C1C24
	v_mul_f32_e32 v15, s36, v15                                // 000000BC7C18: 101E1E24
	s_waitcnt vmcnt(0)                                         // 000000BC7C1C: BF8903F7
	s_waitcnt_vscnt null, 0x0                                  // 000000BC7C20: BC7C0000
	v_fmac_f32_e64 v11, v25, s37                               // 000000BC7C24: D52B000B 00004B19
	buffer_store_b32 v11, v24, s[16:19], 0 offen               // 000000BC7C2C: E0680000 80440B18
	v_fmac_f32_e64 v12, v27, s37                               // 000000BC7C34: D52B000C 00004B1B
	buffer_store_b32 v12, v26, s[16:19], 0 offen               // 000000BC7C3C: E0680000 80440C1A
	v_fmac_f32_e64 v13, v29, s37                               // 000000BC7C44: D52B000D 00004B1D
	buffer_store_b32 v13, v28, s[16:19], 0 offen               // 000000BC7C4C: E0680000 80440D1C
	v_fmac_f32_e64 v14, v31, s37                               // 000000BC7C54: D52B000E 00004B1F
	buffer_store_b32 v14, v30, s[16:19], 0 offen               // 000000BC7C5C: E0680000 80440E1E
	v_fmac_f32_e64 v15, v33, s37                               // 000000BC7C64: D52B000F 00004B21
	buffer_store_b32 v15, v32, s[16:19], 0 offen               // 000000BC7C6C: E0680000 80440F20
	s_branch label_0047                                        // 000000BC7C74: BFA00000

0000000000bc7c78 <label_GW_End_42>:
	s_endpgm                                                   // 000000BC7C78: BFB00000
		...
