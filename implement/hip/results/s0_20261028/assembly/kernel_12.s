
/root/batchmatmulmaxsum/implement/hip/results/s0_20261028/code_objects/_code_object0007.o:	file format elf64-amdgpu

Disassembly of section .text:

0000000000633300 <Cijk_Alik_Bjlk_SB_MT16x16x8_SN_1LDSB0_APM1_ABV0_ACED0_AF0EM1_AF1EM1_AMAS0_ASE_ASGT_ASLT_ASM_ASAE01_ASCE01_ASEM1_AAC0_BL1_BS1_CLR0_DTLA0_DTLB0_DTVA0_DTVB0_DVO0_ETSP_EPS1_ELFLR0_EMLL0_FSSC10_FL0_GLVWA1_GLVWB1_GRCGA1_GRCGB1_GRPM1_GRVW1_GSU1_GSUASB_GLS0_ISA1100_IU1_K1_KLA_LBSPPA0_LBSPPB0_LPA0_LPB0_LDL1_LRVW1_LWPMn1_LDW0_FMA_MIAV0_MDA2_MO40_MMFGLC_MKFGSU256_NTA0_NTB0_NTC0_NTD0_NEPBS0_NLCA1_NLCB1_ONLL1_OPLV0_PK0_PAP0_PGR1_PLR1_PKA0_SIA1_SLW1_SS0_SU32_SUM3_SUS128_SCIUI1_SPO0_SRVW0_SSO0_SVW4_SNLL0_TSGRA0_TSGRB0_TT2_2_TLDS0_UMLDSA0_UMLDSB0_U64SL1_USFGROn1_VAW1_VSn1_VW1_VWB1_VFLRP0_WSGRA0_WSGRB0_WS32_WG8_8_1_WGM1_preloaded>:
	s_mov_b32 vcc_hi, 0                                        // 000000633300: BEEB0080
	s_load_b512 s[24:39], s[0:1], null                         // 000000633304: F4100600 F8000000
	s_load_b256 s[40:47], s[0:1], 0x40                         // 00000063330C: F40C0A00 F8000040
	s_load_b128 s[48:51], s[0:1], 0x60                         // 000000633314: F4080C00 F8000060
	s_load_b32 s52, s[0:1], 0x70                               // 00000063331C: F4000D00 F8000070
	s_mov_b32 m0, 0x800                                        // 000000633324: BEFD00FF 00000800
	v_mov_b32_e32 v26, v0                                      // 00000063332C: 7E340300
	v_lshrrev_b32_e32 v0, 3, v26                               // 000000633330: 32003483
	v_and_b32_e32 v1, 7, v26                                   // 000000633334: 36023487
	v_lshrrev_b32_e32 v2, 3, v0                                // 000000633338: 32040083
	v_and_b32_e32 v3, 7, v0                                    // 00000063333C: 36060087
	v_lshrrev_b32_e32 v0, 6, v26                               // 000000633340: 32003486
	v_lshlrev_b32_e32 v0, 4, v0                                // 000000633344: 30000084
	v_add_lshl_u32 v24, v0, v1, 2                              // 000000633348: D6470018 020A0300
	v_lshrrev_b32_e32 v0, 6, v26                               // 000000633350: 32003486
	v_lshlrev_b32_e32 v0, 4, v0                                // 000000633354: 30000084
	v_add_lshl_u32 v25, v0, v3, 2                              // 000000633358: D6470019 020A0700
	v_add_co_u32 v25, vcc_lo, 0x200, v25                       // 000000633360: D7006A19 000232FF 00000200
	v_lshrrev_b32_e32 v0, 3, v26                               // 00000063336C: 32003483
	v_and_b32_e32 v1, 7, v26                                   // 000000633370: 36023487
	v_lshrrev_b32_e32 v3, 4, v26                               // 000000633374: 32063484
	v_and_b32_e32 v2, 15, v26                                  // 000000633378: 3604348F
	v_mul_u32_u24_e32 v15, 16, v1                              // 00000063337C: 161E0290
	v_add_lshl_u32 v15, v0, v15, 2                             // 000000633380: D647000F 020A1F00
	v_mul_u32_u24_e32 v16, 16, v3                              // 000000633388: 16200690
	v_add_lshl_u32 v16, v2, v16, 2                             // 00000063338C: D6470010 020A2102
	v_add_co_u32 v16, vcc_lo, 0x200, v16                       // 000000633394: D7006A10 000220FF 00000200
	s_waitcnt lgkmcnt(0)                                       // 0000006333A0: BF89FC07
	s_mov_b64 s[20:21], s[30:31]                               // 0000006333A4: BE94011E
	s_mov_b64 s[16:17], s[28:29]                               // 0000006333A8: BE90011C
	s_sub_u32 s8, s32, 4                                       // 0000006333AC: 80888420
	s_subb_u32 s9, s33, 0                                      // 0000006333B0: 82898021
	s_sub_u32 s12, s34, 4                                      // 0000006333B4: 808C8422
	s_subb_u32 s13, s35, 0                                     // 0000006333B8: 828D8023
	v_cmp_eq_f32_e64 vcc_lo, s36, 0                            // 0000006333BC: D412006A 00010024
	s_cbranch_vccz label_AlphaNonZero                          // 0000006333C4: BFA30001
	s_mov_b32 s49, 0                                           // 0000006333C8: BEB10080

00000000006333cc <label_AlphaNonZero>:
	v_mul_lo_u32 v6, s42, v0                                   // 0000006333CC: D72C0006 0002002A
	v_add_co_u32 v17, vcc_lo, v1, v6                           // 0000006333D4: D7006A11 00020D01
	v_add_nc_u32_e32 v17, 1, v17                               // 0000006333DC: 4A222281
	v_lshlrev_b32_e32 v17, 2, v17                              // 0000006333E0: 30222282
	s_mul_i32 s53, s42, 8                                      // 0000006333E4: 9635882A
	s_lshl_b32 s53, s53, 2                                     // 0000006333E8: 84358235
	v_mul_lo_u32 v6, s44, v3                                   // 0000006333EC: D72C0006 0002062C
	v_add_co_u32 v18, vcc_lo, v2, v6                           // 0000006333F4: D7006A12 00020D02
	v_add_nc_u32_e32 v18, 1, v18                               // 0000006333FC: 4A242481
	v_lshlrev_b32_e32 v18, 2, v18                              // 000000633400: 30242482
	s_mul_i32 s56, s44, 4                                      // 000000633404: 9638842C
	s_lshl_b32 s56, s56, 2                                     // 000000633408: 84388238
	s_mul_hi_u32 s61, s2, 16                                   // 00000063340C: 96BD9002
	s_mul_i32 s60, s2, 16                                      // 000000633410: 963C9002
	s_mul_hi_u32 s61, s60, s42                                 // 000000633414: 96BD2A3C
	s_mul_i32 s60, s60, s42                                    // 000000633418: 963C2A3C
	s_sub_u32 s0, s24, s60                                     // 00000063341C: 80803C18
	s_subb_u32 s1, s25, s61                                    // 000000633420: 82813D19
	s_lshl_b64 s[0:1], s[0:1], 2                               // 000000633424: 84808200
	s_add_u32 s0, s0, 4                                        // 000000633428: 80008400
	s_addc_u32 s1, s1, 0                                       // 00000063342C: 82018001
	s_cmp_eq_u32 s1, 0                                         // 000000633430: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000633434: 980AC100
	s_mul_hi_u32 s59, s43, s4                                  // 000000633438: 96BB042B
	s_mul_i32 s58, s43, s4                                     // 00000063343C: 963A042B
	s_add_u32 s60, s60, s58                                    // 000000633440: 803C3A3C
	s_addc_u32 s61, s61, s59                                   // 000000633444: 823D3B3D
	s_lshl_b64 s[60:61], s[60:61], 2                           // 000000633448: 84BC823C
	s_add_u32 s8, s8, s60                                      // 00000063344C: 80083C08
	s_addc_u32 s9, s9, s61                                     // 000000633450: 82093D09
	s_mov_b32 s11, 0x31004000                                  // 000000633454: BE8B00FF 31004000
	s_mul_hi_u32 s61, s3, 16                                   // 00000063345C: 96BD9003
	s_mul_i32 s60, s3, 16                                      // 000000633460: 963C9003
	s_sub_u32 s28, s26, s60                                    // 000000633464: 809C3C1A
	s_subb_u32 s29, s27, s61                                   // 000000633468: 829D3D1B
	s_lshl_b64 s[28:29], s[28:29], 2                           // 00000063346C: 849C821C
	s_add_u32 s28, s28, 4                                      // 000000633470: 801C841C
	s_addc_u32 s29, s29, 0                                     // 000000633474: 821D801D
	s_cmp_eq_u32 s29, 0                                        // 000000633478: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 00000063347C: 980EC11C
	s_mul_hi_u32 s59, s45, s4                                  // 000000633480: 96BB042D
	s_mul_i32 s58, s45, s4                                     // 000000633484: 963A042D
	s_add_u32 s60, s60, s58                                    // 000000633488: 803C3A3C
	s_addc_u32 s61, s61, s59                                   // 00000063348C: 823D3B3D
	s_lshl_b64 s[60:61], s[60:61], 2                           // 000000633490: 84BC823C
	s_add_u32 s12, s12, s60                                    // 000000633494: 800C3C0C
	s_addc_u32 s13, s13, s61                                   // 000000633498: 820D3D0D
	s_mov_b32 s15, 0x31004000                                  // 00000063349C: BE8F00FF 31004000
	s_mov_b32 s34, 32                                          // 0000006334A4: BEA200A0
	s_mul_i32 s35, 32, s44                                     // 0000006334A8: 96232CA0
	s_lshr_b32 s5, s49, 3                                      // 0000006334AC: 85058331
	s_mov_b32 s6, s5                                           // 0000006334B0: BE860005
	s_mul_i32 s58, s51, s52                                    // 0000006334B4: 963A3433
	s_mul_i32 s58, s58, s4                                     // 0000006334B8: 963A043A
	s_mul_i32 s59, s51, s3                                     // 0000006334BC: 963B0333
	s_add_u32 s58, s58, s59                                    // 0000006334C0: 803A3B3A
	s_add_u32 s58, s58, s2                                     // 0000006334C4: 803A023A
	s_and_b32 s7, s50, s58                                     // 0000006334C8: 8B073A32
	s_lshl_b32 s7, s7, 2                                       // 0000006334CC: 84078207
	s_mul_hi_u32 s59, s7, s34                                  // 0000006334D0: 96BB2207
	s_mul_i32 s58, s7, s34                                     // 0000006334D4: 963A2207
	s_mul_hi_u32 s31, s5, s34                                  // 0000006334D8: 969F2205
	s_mul_i32 s30, s5, s34                                     // 0000006334DC: 961E2205
	s_sub_u32 s30, s34, s30                                    // 0000006334E0: 809E1E22
	s_subb_u32 s31, 0, s31                                     // 0000006334E4: 829F1F80
	s_add_u32 s8, s8, s58                                      // 0000006334E8: 80083A08
	s_addc_u32 s9, s9, s59                                     // 0000006334EC: 82093B09
	s_sub_u32 s0, s0, s58                                      // 0000006334F0: 80803A00
	s_subb_u32 s1, s1, s59                                     // 0000006334F4: 82813B01
	s_cmp_eq_u32 s1, 0                                         // 0000006334F8: BF068001
	s_cselect_b32 s10, s0, -1                                  // 0000006334FC: 980AC100
	s_mul_hi_u32 s59, s7, s35                                  // 000000633500: 96BB2307
	s_mul_i32 s58, s7, s35                                     // 000000633504: 963A2307
	s_mul_hi_u32 s33, s5, s35                                  // 000000633508: 96A12305
	s_mul_i32 s32, s5, s35                                     // 00000063350C: 96202305
	s_sub_u32 s32, s35, s32                                    // 000000633510: 80A02023
	s_subb_u32 s33, 0, s33                                     // 000000633514: 82A12180
	s_add_u32 s12, s12, s58                                    // 000000633518: 800C3A0C
	s_addc_u32 s13, s13, s59                                   // 00000063351C: 820D3B0D
	s_sub_u32 s28, s28, s58                                    // 000000633520: 809C3A1C
	s_subb_u32 s29, s29, s59                                   // 000000633524: 829D3B1D
	s_cmp_eq_u32 s29, 0                                        // 000000633528: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 00000063352C: 980EC11C
	s_add_u32 s7, s7, 2                                        // 000000633530: 80078207
	s_cmp_eq_u32 s5, 0                                         // 000000633534: BF068005
	s_cbranch_scc1 ShadowInitStart_10                          // 000000633538: BFA2001C
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 00000063353C: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s53 offen               // 000000633544: E0500000 35421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 00000063354C: E0500000 80431612
	buffer_load_b32 v23, v18, s[12:15], s56 offen              // 000000633554: E0500000 38431712
	s_add_u32 s60, s5, 1                                       // 00000063355C: 803C8105
	s_cmp_eq_u32 s7, s60                                       // 000000633560: BF063C07
	s_cselect_b32 s58, s30, s34                                // 000000633564: 983A221E
	s_cselect_b32 s59, s31, 0                                  // 000000633568: 983B801F
	s_add_u32 s8, s8, s58                                      // 00000063356C: 80083A08
	s_addc_u32 s9, s9, s59                                     // 000000633570: 82093B09
	s_sub_u32 s0, s0, s58                                      // 000000633574: 80803A00
	s_subb_u32 s1, s1, s59                                     // 000000633578: 82813B01
	s_cmp_eq_u32 s1, 0                                         // 00000063357C: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000633580: 980AC100
	s_add_u32 s60, s5, 1                                       // 000000633584: 803C8105
	s_cmp_eq_u32 s7, s60                                       // 000000633588: BF063C07
	s_cselect_b32 s58, s32, s35                                // 00000063358C: 983A2320
	s_cselect_b32 s59, s33, 0                                  // 000000633590: 983B8021
	s_add_u32 s12, s12, s58                                    // 000000633594: 800C3A0C
	s_addc_u32 s13, s13, s59                                   // 000000633598: 820D3B0D
	s_sub_u32 s28, s28, s58                                    // 00000063359C: 809C3A1C
	s_subb_u32 s29, s29, s59                                   // 0000006335A0: 829D3B1D
	s_cmp_eq_u32 s29, 0                                        // 0000006335A4: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 0000006335A8: 980EC11C

00000000006335ac <ShadowInitStart_10>:
	s_mov_b32 s18, 0xfffff000                                  // 0000006335AC: BE9200FF FFFFF000
	s_mov_b32 s19, 0x31004000                                  // 0000006335B4: BE9300FF 31004000
	s_mov_b32 s22, 0xfffff000                                  // 0000006335BC: BE9600FF FFFFF000
	s_mov_b32 s23, 0x31004000                                  // 0000006335C4: BE9700FF 31004000
	s_mul_i32 s60, 16, s3                                      // 0000006335CC: 963C0390
	s_mul_hi_u32 s59, s60, s40                                 // 0000006335D0: 96BB283C
	s_mul_i32 s58, s60, s40                                    // 0000006335D4: 963A283C
	s_lshl_b64 s[58:59], s[58:59], 2                           // 0000006335D8: 84BA823A
	s_add_u32 s20, s20, s58                                    // 0000006335DC: 80143A14
	s_addc_u32 s21, s21, s59                                   // 0000006335E0: 82153B15
	s_mul_hi_u32 s59, s60, s38                                 // 0000006335E4: 96BB263C
	s_mul_i32 s58, s60, s38                                    // 0000006335E8: 963A263C
	s_lshl_b64 s[58:59], s[58:59], 2                           // 0000006335EC: 84BA823A
	s_add_u32 s16, s16, s58                                    // 0000006335F0: 80103A10
	s_addc_u32 s17, s17, s59                                   // 0000006335F4: 82113B11
	s_mul_hi_u32 s59, s4, s41                                  // 0000006335F8: 96BB2904
	s_mul_i32 s58, s4, s41                                     // 0000006335FC: 963A2904
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000633600: 84BA823A
	s_add_u32 s20, s20, s58                                    // 000000633604: 80143A14
	s_addc_u32 s21, s21, s59                                   // 000000633608: 82153B15
	s_mul_hi_u32 s59, s4, s39                                  // 00000063360C: 96BB2704
	s_mul_i32 s58, s4, s39                                     // 000000633610: 963A2704
	s_lshl_b64 s[58:59], s[58:59], 2                           // 000000633614: 84BA823A
	s_add_u32 s16, s16, s58                                    // 000000633618: 80103A10
	s_addc_u32 s17, s17, s59                                   // 00000063361C: 82113B11
	v_mov_b32_e32 v0, 0                                        // 000000633620: 7E000280
	v_mov_b32_e32 v1, 0                                        // 000000633624: 7E020280
	v_mov_b32_e32 v2, 0                                        // 000000633628: 7E040280
	v_mov_b32_e32 v3, 0                                        // 00000063362C: 7E060280
	s_cmp_eq_u32 s5, 0                                         // 000000633630: BF068005
	s_cbranch_scc0 label_NoBranch_11                           // 000000633634: BFA10006
	s_getpc_b64 s[58:59]                                       // 000000633638: BEBA4700
	s_add_i32 s60, 0x9d4, 4                                    // 00000063363C: 813C84FF 000009D4
	s_add_u32 s58, s58, s60                                    // 000000633644: 803A3C3A
	s_addc_u32 s59, s59, 0                                     // 000000633648: 823B803B
	s_setpc_b64 s[58:59]                                       // 00000063364C: BE80483A

0000000000633650 <label_NoBranch_11>:
	s_waitcnt vmcnt(0)                                         // 000000633650: BF8903F7
	ds_store_b32 v15, v20                                      // 000000633654: D8340000 0000140F
	ds_store_b32 v15, v21 offset:32                            // 00000063365C: D8340020 0000150F
	ds_store_b32 v16, v22                                      // 000000633664: D8340000 00001610
	ds_store_b32 v16, v23 offset:256                           // 00000063366C: D8340100 00001710
	s_waitcnt lgkmcnt(0)                                       // 000000633674: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000633678: BDFC0000
	s_barrier                                                  // 00000063367C: BFBD0000
	ds_load_b32 v6, v24                                        // 000000633680: D8D80000 06000018
	ds_load_b32 v7, v24 offset:32                              // 000000633688: D8D80020 07000018
	ds_load_b32 v11, v25                                       // 000000633690: D8D80000 0B000019
	ds_load_b32 v12, v25 offset:32                             // 000000633698: D8D80020 0C000019

00000000006336a0 <openLoopL_12>:
	s_cmp_le_u32 s5, 1                                         // 0000006336A0: BF0B8105
	s_cbranch_scc1 LoopEndL_2                                  // 0000006336A4: BFA2014D

00000000006336a8 <label_0013>:
	ds_load_b32 v8, v24 offset:64                              // 0000006336A8: D8D80040 08000018
	ds_load_b32 v9, v24 offset:96                              // 0000006336B0: D8D80060 09000018
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 0000006336B8: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s53 offen               // 0000006336C0: E0500000 35421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 0000006336C8: E0500000 80431612
	ds_load_b32 v13, v25 offset:64                             // 0000006336D0: D8D80040 0D000019
	ds_load_b32 v14, v25 offset:96                             // 0000006336D8: D8D80060 0E000019
	s_waitcnt lgkmcnt(4)                                       // 0000006336E0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006336E4: 56001706
	s_setprio 1                                                // 0000006336E8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006336EC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006336F0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 0000006336F4: 56061907
	s_setprio 0                                                // 0000006336F8: BFB50000
	ds_load_b32 v6, v24 offset:128                             // 0000006336FC: D8D80080 06000018
	ds_load_b32 v7, v24 offset:160                             // 000000633704: D8D800A0 07000018
	buffer_load_b32 v23, v18, s[12:15], s56 offen              // 00000063370C: E0500000 38431712
	ds_load_b32 v11, v25 offset:128                            // 000000633714: D8D80080 0B000019
	ds_load_b32 v12, v25 offset:160                            // 00000063371C: D8D800A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000633724: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000633728: 56001B08
	s_setprio 1                                                // 00000063372C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000633730: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000633734: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000633738: 56061D09
	s_setprio 0                                                // 00000063373C: BFB50000
	ds_load_b32 v8, v24 offset:192                             // 000000633740: D8D800C0 08000018
	ds_load_b32 v9, v24 offset:224                             // 000000633748: D8D800E0 09000018
	s_cmp_eq_u32 s5, s7                                        // 000000633750: BF060705
	s_cselect_b32 s58, s30, s34                                // 000000633754: 983A221E
	s_cselect_b32 s59, s31, 0                                  // 000000633758: 983B801F
	s_add_u32 s8, s8, s58                                      // 00000063375C: 80083A08
	s_addc_u32 s9, s9, s59                                     // 000000633760: 82093B09
	s_sub_u32 s0, s0, s58                                      // 000000633764: 80803A00
	s_subb_u32 s1, s1, s59                                     // 000000633768: 82813B01
	s_cmp_eq_u32 s1, 0                                         // 00000063376C: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000633770: 980AC100
	ds_load_b32 v13, v25 offset:192                            // 000000633774: D8D800C0 0D000019
	ds_load_b32 v14, v25 offset:224                            // 00000063377C: D8D800E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000633784: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000633788: 56001706
	s_setprio 1                                                // 00000063378C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000633790: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000633794: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000633798: 56061907
	s_setprio 0                                                // 00000063379C: BFB50000
	ds_load_b32 v6, v24 offset:256                             // 0000006337A0: D8D80100 06000018
	ds_load_b32 v7, v24 offset:288                             // 0000006337A8: D8D80120 07000018
	s_cmp_eq_u32 s5, s7                                        // 0000006337B0: BF060705
	s_cselect_b32 s58, s32, s35                                // 0000006337B4: 983A2320
	s_cselect_b32 s59, s33, 0                                  // 0000006337B8: 983B8021
	s_add_u32 s12, s12, s58                                    // 0000006337BC: 800C3A0C
	s_addc_u32 s13, s13, s59                                   // 0000006337C0: 820D3B0D
	s_sub_u32 s28, s28, s58                                    // 0000006337C4: 809C3A1C
	s_subb_u32 s29, s29, s59                                   // 0000006337C8: 829D3B1D
	s_cmp_eq_u32 s29, 0                                        // 0000006337CC: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 0000006337D0: 980EC11C
	ds_load_b32 v11, v25 offset:256                            // 0000006337D4: D8D80100 0B000019
	ds_load_b32 v12, v25 offset:288                            // 0000006337DC: D8D80120 0C000019
	s_waitcnt vmcnt(3)                                         // 0000006337E4: BF890FF7
	ds_store_b32 v15, v20 offset:1024                          // 0000006337E8: D8340400 0000140F
	s_waitcnt lgkmcnt(5)                                       // 0000006337F0: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006337F4: 56001B08
	s_setprio 1                                                // 0000006337F8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006337FC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000633800: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000633804: 56061D09
	s_setprio 0                                                // 000000633808: BFB50000
	ds_load_b32 v8, v24 offset:320                             // 00000063380C: D8D80140 08000018
	ds_load_b32 v9, v24 offset:352                             // 000000633814: D8D80160 09000018
	ds_load_b32 v13, v25 offset:320                            // 00000063381C: D8D80140 0D000019
	ds_load_b32 v14, v25 offset:352                            // 000000633824: D8D80160 0E000019
	s_waitcnt vmcnt(2)                                         // 00000063382C: BF890BF7
	ds_store_b32 v15, v21 offset:1056                          // 000000633830: D8340420 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000633838: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 00000063383C: 56001706
	s_setprio 1                                                // 000000633840: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000633844: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000633848: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000063384C: 56061907
	s_setprio 0                                                // 000000633850: BFB50000
	ds_load_b32 v6, v24 offset:384                             // 000000633854: D8D80180 06000018
	ds_load_b32 v7, v24 offset:416                             // 00000063385C: D8D801A0 07000018
	ds_load_b32 v11, v25 offset:384                            // 000000633864: D8D80180 0B000019
	ds_load_b32 v12, v25 offset:416                            // 00000063386C: D8D801A0 0C000019
	s_waitcnt vmcnt(1)                                         // 000000633874: BF8907F7
	ds_store_b32 v16, v22 offset:1024                          // 000000633878: D8340400 00001610
	s_waitcnt lgkmcnt(5)                                       // 000000633880: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000633884: 56001B08
	s_setprio 1                                                // 000000633888: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 00000063388C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000633890: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000633894: 56061D09
	s_setprio 0                                                // 000000633898: BFB50000
	ds_load_b32 v8, v24 offset:448                             // 00000063389C: D8D801C0 08000018
	ds_load_b32 v9, v24 offset:480                             // 0000006338A4: D8D801E0 09000018
	ds_load_b32 v13, v25 offset:448                            // 0000006338AC: D8D801C0 0D000019
	ds_load_b32 v14, v25 offset:480                            // 0000006338B4: D8D801E0 0E000019
	s_waitcnt vmcnt(0)                                         // 0000006338BC: BF8903F7
	ds_store_b32 v16, v23 offset:1280                          // 0000006338C0: D8340500 00001710
	s_waitcnt lgkmcnt(5)                                       // 0000006338C8: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006338CC: 56001706
	s_setprio 1                                                // 0000006338D0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006338D4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006338D8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 0000006338DC: 56061907
	s_setprio 0                                                // 0000006338E0: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 0000006338E4: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 0000006338E8: BDFC0000
	s_barrier                                                  // 0000006338EC: BFBD0000
	ds_load_b32 v6, v24 offset:1024                            // 0000006338F0: D8D80400 06000018
	ds_load_b32 v7, v24 offset:1056                            // 0000006338F8: D8D80420 07000018
	ds_load_b32 v11, v25 offset:1024                           // 000000633900: D8D80400 0B000019
	ds_load_b32 v12, v25 offset:1056                           // 000000633908: D8D80420 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000633910: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000633914: 56001B08
	s_setprio 1                                                // 000000633918: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 00000063391C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000633920: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000633924: 56061D09
	s_setprio 0                                                // 000000633928: BFB50000
	s_sub_u32 s5, s5, 1                                        // 00000063392C: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000633930: BF008105
	s_cbranch_scc1 LoopEndL_oddexit_3                          // 000000633934: BFA200A5

0000000000633938 <label_0014>:
	ds_load_b32 v8, v24 offset:1088                            // 000000633938: D8D80440 08000018
	ds_load_b32 v9, v24 offset:1120                            // 000000633940: D8D80460 09000018
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000633948: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s53 offen               // 000000633950: E0500000 35421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 000000633958: E0500000 80431612
	ds_load_b32 v13, v25 offset:1088                           // 000000633960: D8D80440 0D000019
	ds_load_b32 v14, v25 offset:1120                           // 000000633968: D8D80460 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000633970: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000633974: 56001706
	s_setprio 1                                                // 000000633978: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 00000063397C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000633980: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000633984: 56061907
	s_setprio 0                                                // 000000633988: BFB50000
	ds_load_b32 v6, v24 offset:1152                            // 00000063398C: D8D80480 06000018
	ds_load_b32 v7, v24 offset:1184                            // 000000633994: D8D804A0 07000018
	buffer_load_b32 v23, v18, s[12:15], s56 offen              // 00000063399C: E0500000 38431712
	ds_load_b32 v11, v25 offset:1152                           // 0000006339A4: D8D80480 0B000019
	ds_load_b32 v12, v25 offset:1184                           // 0000006339AC: D8D804A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 0000006339B4: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006339B8: 56001B08
	s_setprio 1                                                // 0000006339BC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006339C0: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006339C4: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006339C8: 56061D09
	s_setprio 0                                                // 0000006339CC: BFB50000
	ds_load_b32 v8, v24 offset:1216                            // 0000006339D0: D8D804C0 08000018
	ds_load_b32 v9, v24 offset:1248                            // 0000006339D8: D8D804E0 09000018
	s_cmp_eq_u32 s5, s7                                        // 0000006339E0: BF060705
	s_cselect_b32 s58, s30, s34                                // 0000006339E4: 983A221E
	s_cselect_b32 s59, s31, 0                                  // 0000006339E8: 983B801F
	s_add_u32 s8, s8, s58                                      // 0000006339EC: 80083A08
	s_addc_u32 s9, s9, s59                                     // 0000006339F0: 82093B09
	s_sub_u32 s0, s0, s58                                      // 0000006339F4: 80803A00
	s_subb_u32 s1, s1, s59                                     // 0000006339F8: 82813B01
	s_cmp_eq_u32 s1, 0                                         // 0000006339FC: BF068001
	s_cselect_b32 s10, s0, -1                                  // 000000633A00: 980AC100
	ds_load_b32 v13, v25 offset:1216                           // 000000633A04: D8D804C0 0D000019
	ds_load_b32 v14, v25 offset:1248                           // 000000633A0C: D8D804E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000633A14: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000633A18: 56001706
	s_setprio 1                                                // 000000633A1C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000633A20: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000633A24: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000633A28: 56061907
	s_setprio 0                                                // 000000633A2C: BFB50000
	ds_load_b32 v6, v24 offset:1280                            // 000000633A30: D8D80500 06000018
	ds_load_b32 v7, v24 offset:1312                            // 000000633A38: D8D80520 07000018
	s_cmp_eq_u32 s5, s7                                        // 000000633A40: BF060705
	s_cselect_b32 s58, s32, s35                                // 000000633A44: 983A2320
	s_cselect_b32 s59, s33, 0                                  // 000000633A48: 983B8021
	s_add_u32 s12, s12, s58                                    // 000000633A4C: 800C3A0C
	s_addc_u32 s13, s13, s59                                   // 000000633A50: 820D3B0D
	s_sub_u32 s28, s28, s58                                    // 000000633A54: 809C3A1C
	s_subb_u32 s29, s29, s59                                   // 000000633A58: 829D3B1D
	s_cmp_eq_u32 s29, 0                                        // 000000633A5C: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000633A60: 980EC11C
	ds_load_b32 v11, v25 offset:1280                           // 000000633A64: D8D80500 0B000019
	ds_load_b32 v12, v25 offset:1312                           // 000000633A6C: D8D80520 0C000019
	s_waitcnt vmcnt(3)                                         // 000000633A74: BF890FF7
	ds_store_b32 v15, v20                                      // 000000633A78: D8340000 0000140F
	s_waitcnt lgkmcnt(5)                                       // 000000633A80: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000633A84: 56001B08
	s_setprio 1                                                // 000000633A88: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000633A8C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000633A90: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000633A94: 56061D09
	s_setprio 0                                                // 000000633A98: BFB50000
	ds_load_b32 v8, v24 offset:1344                            // 000000633A9C: D8D80540 08000018
	ds_load_b32 v9, v24 offset:1376                            // 000000633AA4: D8D80560 09000018
	ds_load_b32 v13, v25 offset:1344                           // 000000633AAC: D8D80540 0D000019
	ds_load_b32 v14, v25 offset:1376                           // 000000633AB4: D8D80560 0E000019
	s_waitcnt vmcnt(2)                                         // 000000633ABC: BF890BF7
	ds_store_b32 v15, v21 offset:32                            // 000000633AC0: D8340020 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000633AC8: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000633ACC: 56001706
	s_setprio 1                                                // 000000633AD0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000633AD4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000633AD8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000633ADC: 56061907
	s_setprio 0                                                // 000000633AE0: BFB50000
	ds_load_b32 v6, v24 offset:1408                            // 000000633AE4: D8D80580 06000018
	ds_load_b32 v7, v24 offset:1440                            // 000000633AEC: D8D805A0 07000018
	ds_load_b32 v11, v25 offset:1408                           // 000000633AF4: D8D80580 0B000019
	ds_load_b32 v12, v25 offset:1440                           // 000000633AFC: D8D805A0 0C000019
	s_waitcnt vmcnt(1)                                         // 000000633B04: BF8907F7
	ds_store_b32 v16, v22                                      // 000000633B08: D8340000 00001610
	s_waitcnt lgkmcnt(5)                                       // 000000633B10: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000633B14: 56001B08
	s_setprio 1                                                // 000000633B18: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000633B1C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000633B20: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000633B24: 56061D09
	s_setprio 0                                                // 000000633B28: BFB50000
	ds_load_b32 v8, v24 offset:1472                            // 000000633B2C: D8D805C0 08000018
	ds_load_b32 v9, v24 offset:1504                            // 000000633B34: D8D805E0 09000018
	ds_load_b32 v13, v25 offset:1472                           // 000000633B3C: D8D805C0 0D000019
	ds_load_b32 v14, v25 offset:1504                           // 000000633B44: D8D805E0 0E000019
	s_waitcnt vmcnt(0)                                         // 000000633B4C: BF8903F7
	ds_store_b32 v16, v23 offset:256                           // 000000633B50: D8340100 00001710
	s_waitcnt lgkmcnt(5)                                       // 000000633B58: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000633B5C: 56001706
	s_setprio 1                                                // 000000633B60: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000633B64: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000633B68: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000633B6C: 56061907
	s_setprio 0                                                // 000000633B70: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000633B74: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000633B78: BDFC0000
	s_barrier                                                  // 000000633B7C: BFBD0000
	ds_load_b32 v6, v24                                        // 000000633B80: D8D80000 06000018
	ds_load_b32 v7, v24 offset:32                              // 000000633B88: D8D80020 07000018
	ds_load_b32 v11, v25                                       // 000000633B90: D8D80000 0B000019
	ds_load_b32 v12, v25 offset:32                             // 000000633B98: D8D80020 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000633BA0: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000633BA4: 56001B08
	s_setprio 1                                                // 000000633BA8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000633BAC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000633BB0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000633BB4: 56061D09
	s_setprio 0                                                // 000000633BB8: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000633BBC: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000633BC0: BF008105
	s_cbranch_scc0 LoopBeginL_1                                // 000000633BC4: BFA1FEB8

0000000000633bc8 <LoopEndL_evenexit_4>:
	s_branch LoopEndL_2                                        // 000000633BC8: BFA00004

0000000000633bcc <LoopEndL_oddexit_3>:
	v_xor_b32_e32 v24, 0x400, v24                              // 000000633BCC: 3A3030FF 00000400
	v_xor_b32_e32 v25, 0x400, v25                              // 000000633BD4: 3A3232FF 00000400

0000000000633bdc <LoopEndL_2>:
	s_cmpk_eq_u32 s37, 0x0                                     // 000000633BDC: B4A50000
	s_cbranch_scc0 OptNLL_End_15                               // 000000633BE0: BFA1009C
	s_cmp_eq_u32 s36, 1.0                                      // 000000633BE4: BF06F224
	s_cbranch_scc0 OptNLL_End_15                               // 000000633BE8: BFA1009A
	s_and_b32 s58, 15, s46                                     // 000000633BEC: 8B3A2E8F
	s_add_u32 s59, -1, s51                                     // 000000633BF0: 803B33C1
	s_cmp_ge_u32 s2, s59                                       // 000000633BF4: BF093B02
	s_cselect_b32 s58, s58, 0                                  // 000000633BF8: 983A803A
	s_cmpk_gt_u32 s58, 0x0                                     // 000000633BFC: B5BA0000
	s_cbranch_scc1 OptNLL_End_15                               // 000000633C00: BFA20094
	s_and_b32 s58, 15, s47                                     // 000000633C04: 8B3A2F8F
	s_add_u32 s59, -1, s52                                     // 000000633C08: 803B34C1
	s_cmp_ge_u32 s3, s59                                       // 000000633C0C: BF093B03
	s_cselect_b32 s58, s58, 0                                  // 000000633C10: 983A803A
	s_cmpk_gt_u32 s58, 0x0                                     // 000000633C14: B5BA0000
	s_cbranch_scc1 OptNLL_End_15                               // 000000633C18: BFA2008E
	s_and_b32 s59, 7, s49                                      // 000000633C1C: 8B3B3187
	s_cmp_eq_u32 s59, 0                                        // 000000633C20: BF06803B
	s_cbranch_scc0 OptNLL_End_15                               // 000000633C24: BFA1008B
	ds_load_b32 v8, v24 offset:64                              // 000000633C28: D8D80040 08000018
	ds_load_b32 v9, v24 offset:96                              // 000000633C30: D8D80060 09000018
	ds_load_b32 v13, v25 offset:64                             // 000000633C38: D8D80040 0D000019
	ds_load_b32 v14, v25 offset:96                             // 000000633C40: D8D80060 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000633C48: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000633C4C: 56001706
	s_setprio 1                                                // 000000633C50: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000633C54: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000633C58: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000633C5C: 56061907
	s_setprio 0                                                // 000000633C60: BFB50000
	ds_load_b32 v6, v24 offset:128                             // 000000633C64: D8D80080 06000018
	ds_load_b32 v7, v24 offset:160                             // 000000633C6C: D8D800A0 07000018
	ds_load_b32 v11, v25 offset:128                            // 000000633C74: D8D80080 0B000019
	ds_load_b32 v12, v25 offset:160                            // 000000633C7C: D8D800A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000633C84: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000633C88: 56001B08
	s_setprio 1                                                // 000000633C8C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000633C90: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000633C94: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000633C98: 56061D09
	s_setprio 0                                                // 000000633C9C: BFB50000
	ds_load_b32 v8, v24 offset:192                             // 000000633CA0: D8D800C0 08000018
	ds_load_b32 v9, v24 offset:224                             // 000000633CA8: D8D800E0 09000018
	ds_load_b32 v13, v25 offset:192                            // 000000633CB0: D8D800C0 0D000019
	ds_load_b32 v14, v25 offset:224                            // 000000633CB8: D8D800E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000633CC0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000633CC4: 56001706
	s_setprio 1                                                // 000000633CC8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000633CCC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000633CD0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000633CD4: 56061907
	s_setprio 0                                                // 000000633CD8: BFB50000
	ds_load_b32 v6, v24 offset:256                             // 000000633CDC: D8D80100 06000018
	ds_load_b32 v7, v24 offset:288                             // 000000633CE4: D8D80120 07000018
	ds_load_b32 v11, v25 offset:256                            // 000000633CEC: D8D80100 0B000019
	ds_load_b32 v12, v25 offset:288                            // 000000633CF4: D8D80120 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000633CFC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000633D00: 56001B08
	s_setprio 1                                                // 000000633D04: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000633D08: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000633D0C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000633D10: 56061D09
	s_setprio 0                                                // 000000633D14: BFB50000
	ds_load_b32 v8, v24 offset:320                             // 000000633D18: D8D80140 08000018
	ds_load_b32 v9, v24 offset:352                             // 000000633D20: D8D80160 09000018
	ds_load_b32 v13, v25 offset:320                            // 000000633D28: D8D80140 0D000019
	ds_load_b32 v14, v25 offset:352                            // 000000633D30: D8D80160 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000633D38: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000633D3C: 56001706
	s_setprio 1                                                // 000000633D40: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000633D44: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000633D48: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000633D4C: 56061907
	s_setprio 0                                                // 000000633D50: BFB50000
	ds_load_b32 v6, v24 offset:384                             // 000000633D54: D8D80180 06000018
	ds_load_b32 v7, v24 offset:416                             // 000000633D5C: D8D801A0 07000018
	ds_load_b32 v11, v25 offset:384                            // 000000633D64: D8D80180 0B000019
	ds_load_b32 v12, v25 offset:416                            // 000000633D6C: D8D801A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000633D74: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000633D78: 56001B08
	s_setprio 1                                                // 000000633D7C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000633D80: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000633D84: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000633D88: 56061D09
	s_setprio 0                                                // 000000633D8C: BFB50000
	ds_load_b32 v8, v24 offset:448                             // 000000633D90: D8D801C0 08000018
	ds_load_b32 v9, v24 offset:480                             // 000000633D98: D8D801E0 09000018
	ds_load_b32 v13, v25 offset:448                            // 000000633DA0: D8D801C0 0D000019
	ds_load_b32 v14, v25 offset:480                            // 000000633DA8: D8D801E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000633DB0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000633DB4: 56001706
	s_setprio 1                                                // 000000633DB8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000633DBC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000633DC0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000633DC4: 56061907
	s_setprio 0                                                // 000000633DC8: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000633DCC: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000633DD0: 56001B08
	s_setprio 1                                                // 000000633DD4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000633DD8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000633DDC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000633DE0: 56061D09
	s_setprio 0                                                // 000000633DE4: BFB50000

0000000000633de8 <Summation_End_OptNLL_16>:
	v_lshrrev_b32_e32 v7, 3, v26                               // 000000633DE8: 320E3483
	v_and_b32_e32 v6, 7, v26                                   // 000000633DEC: 360C3487
	v_mul_lo_u32 v8, v7, s40                                   // 000000633DF0: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000633DF8: D72C0009 00004D07
	s_mul_i32 s54, 16, s2                                      // 000000633E00: 96360290
	v_add_co_u32 v6, vcc_lo, s54, v6                           // 000000633E04: D7006A06 00020C36
	s_mul_i32 s56, 16, s3                                      // 000000633E0C: 96380390
	v_add_co_u32 v7, vcc_lo, s56, v7                           // 000000633E10: D7006A07 00020E38

0000000000633e18 <GW_B0_E0_19>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000633E18: D647000C 020A0D09
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000633E20: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:32      // 000000633E28: E0680020 8044010C
	s_mul_i32 s54, s38, 32                                     // 000000633E30: 9636A026
	s_add_u32 s16, s16, s54                                    // 000000633E34: 80103610
	s_addc_u32 s17, s17, 0                                     // 000000633E38: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000633E3C: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:32      // 000000633E44: E0680020 8044030C
	s_branch label_GW_End_21                                   // 000000633E4C: BFA00000

0000000000633e50 <label_GW_End_21>:
	s_endpgm                                                   // 000000633E50: BFB00000

0000000000633e54 <OptNLL_End_15>:
	ds_load_b32 v8, v24 offset:64                              // 000000633E54: D8D80040 08000018
	ds_load_b32 v9, v24 offset:96                              // 000000633E5C: D8D80060 09000018
	ds_load_b32 v13, v25 offset:64                             // 000000633E64: D8D80040 0D000019
	ds_load_b32 v14, v25 offset:96                             // 000000633E6C: D8D80060 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000633E74: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000633E78: 56001706
	s_setprio 1                                                // 000000633E7C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000633E80: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000633E84: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000633E88: 56061907
	s_setprio 0                                                // 000000633E8C: BFB50000
	ds_load_b32 v6, v24 offset:128                             // 000000633E90: D8D80080 06000018
	ds_load_b32 v7, v24 offset:160                             // 000000633E98: D8D800A0 07000018
	ds_load_b32 v11, v25 offset:128                            // 000000633EA0: D8D80080 0B000019
	ds_load_b32 v12, v25 offset:160                            // 000000633EA8: D8D800A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000633EB0: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000633EB4: 56001B08
	s_setprio 1                                                // 000000633EB8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000633EBC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000633EC0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000633EC4: 56061D09
	s_setprio 0                                                // 000000633EC8: BFB50000
	ds_load_b32 v8, v24 offset:192                             // 000000633ECC: D8D800C0 08000018
	ds_load_b32 v9, v24 offset:224                             // 000000633ED4: D8D800E0 09000018
	ds_load_b32 v13, v25 offset:192                            // 000000633EDC: D8D800C0 0D000019
	ds_load_b32 v14, v25 offset:224                            // 000000633EE4: D8D800E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000633EEC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000633EF0: 56001706
	s_setprio 1                                                // 000000633EF4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000633EF8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000633EFC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000633F00: 56061907
	s_setprio 0                                                // 000000633F04: BFB50000
	ds_load_b32 v6, v24 offset:256                             // 000000633F08: D8D80100 06000018
	ds_load_b32 v7, v24 offset:288                             // 000000633F10: D8D80120 07000018
	ds_load_b32 v11, v25 offset:256                            // 000000633F18: D8D80100 0B000019
	ds_load_b32 v12, v25 offset:288                            // 000000633F20: D8D80120 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000633F28: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000633F2C: 56001B08
	s_setprio 1                                                // 000000633F30: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000633F34: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000633F38: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000633F3C: 56061D09
	s_setprio 0                                                // 000000633F40: BFB50000
	ds_load_b32 v8, v24 offset:320                             // 000000633F44: D8D80140 08000018
	ds_load_b32 v9, v24 offset:352                             // 000000633F4C: D8D80160 09000018
	ds_load_b32 v13, v25 offset:320                            // 000000633F54: D8D80140 0D000019
	ds_load_b32 v14, v25 offset:352                            // 000000633F5C: D8D80160 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000633F64: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000633F68: 56001706
	s_setprio 1                                                // 000000633F6C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000633F70: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000633F74: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000633F78: 56061907
	s_setprio 0                                                // 000000633F7C: BFB50000
	ds_load_b32 v6, v24 offset:384                             // 000000633F80: D8D80180 06000018
	ds_load_b32 v7, v24 offset:416                             // 000000633F88: D8D801A0 07000018
	ds_load_b32 v11, v25 offset:384                            // 000000633F90: D8D80180 0B000019
	ds_load_b32 v12, v25 offset:416                            // 000000633F98: D8D801A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000633FA0: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000633FA4: 56001B08
	s_setprio 1                                                // 000000633FA8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000633FAC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000633FB0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000633FB4: 56061D09
	s_setprio 0                                                // 000000633FB8: BFB50000
	ds_load_b32 v8, v24 offset:448                             // 000000633FBC: D8D801C0 08000018
	ds_load_b32 v9, v24 offset:480                             // 000000633FC4: D8D801E0 09000018
	ds_load_b32 v13, v25 offset:448                            // 000000633FCC: D8D801C0 0D000019
	ds_load_b32 v14, v25 offset:480                            // 000000633FD4: D8D801E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000633FDC: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000633FE0: 56001706
	s_setprio 1                                                // 000000633FE4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000633FE8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000633FEC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000633FF0: 56061907
	s_setprio 0                                                // 000000633FF4: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000633FF8: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000633FFC: 56001B08
	s_setprio 1                                                // 000000634000: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000634004: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000634008: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 00000063400C: 56061D09
	s_setprio 0                                                // 000000634010: BFB50000

0000000000634014 <PrefetchGlobalLastIterEnd_5>:
	v_and_b32_e32 v15, 0xf003ff, v15                           // 000000634014: 361E1EFF 00F003FF
	v_and_b32_e32 v16, 0xf003ff, v16                           // 00000063401C: 362020FF 00F003FF
	s_and_b32 s5, 7, s49                                       // 000000634024: 8B053187
	s_cmp_eq_u32 s5, 0                                         // 000000634028: BF068005
	s_cbranch_scc1 SkipTailLoopL_8                             // 00000063402C: BFA20052
	s_mov_b32 s6, 0                                            // 000000634030: BE860080
	s_mov_b32 s60, 3                                           // 000000634034: BEBC0083
	s_mul_hi_u32 s59, s60, s34                                 // 000000634038: 96BB223C
	s_mul_i32 s58, s60, s34                                    // 00000063403C: 963A223C
	s_mul_hi_u32 s61, s7, s34                                  // 000000634040: 96BD2207
	s_mul_i32 s60, s7, s34                                     // 000000634044: 963C2207
	s_sub_u32 s58, s58, s60                                    // 000000634048: 80BA3C3A
	s_subb_u32 s59, s59, s61                                   // 00000063404C: 82BB3D3B
	s_sub_u32 s58, s58, s30                                    // 000000634050: 80BA1E3A
	s_subb_u32 s59, s59, s31                                   // 000000634054: 82BB1F3B
	s_add_u32 s8, s8, s58                                      // 000000634058: 80083A08
	s_addc_u32 s9, s9, s59                                     // 00000063405C: 82093B09
	s_sub_u32 s0, s0, s58                                      // 000000634060: 80803A00
	s_subb_u32 s1, s1, s59                                     // 000000634064: 82813B01
	s_cmp_eq_u32 s1, 0                                         // 000000634068: BF068001
	s_cselect_b32 s10, s0, -1                                  // 00000063406C: 980AC100
	s_mov_b32 s60, 3                                           // 000000634070: BEBC0083
	s_mul_hi_u32 s59, s60, s35                                 // 000000634074: 96BB233C
	s_mul_i32 s58, s60, s35                                    // 000000634078: 963A233C
	s_mul_hi_u32 s61, s7, s35                                  // 00000063407C: 96BD2307
	s_mul_i32 s60, s7, s35                                     // 000000634080: 963C2307
	s_sub_u32 s58, s58, s60                                    // 000000634084: 80BA3C3A
	s_subb_u32 s59, s59, s61                                   // 000000634088: 82BB3D3B
	s_sub_u32 s58, s58, s32                                    // 00000063408C: 80BA203A
	s_subb_u32 s59, s59, s33                                   // 000000634090: 82BB213B
	s_add_u32 s12, s12, s58                                    // 000000634094: 800C3A0C
	s_addc_u32 s13, s13, s59                                   // 000000634098: 820D3B0D
	s_sub_u32 s28, s28, s58                                    // 00000063409C: 809C3A1C
	s_subb_u32 s29, s29, s59                                   // 0000006340A0: 829D3B1D
	s_cmp_eq_u32 s29, 0                                        // 0000006340A4: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 0000006340A8: 980EC11C
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 0000006340AC: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s53 offen               // 0000006340B4: E0500000 35421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 0000006340BC: E0500000 80431612
	buffer_load_b32 v23, v18, s[12:15], s56 offen              // 0000006340C4: E0500000 38431712
	s_waitcnt vmcnt(0)                                         // 0000006340CC: BF8903F7
	s_waitcnt_lgkmcnt null, 0x0                                // 0000006340D0: BDFC0000
	s_barrier                                                  // 0000006340D4: BFBD0000
	ds_store_b32 v15, v20                                      // 0000006340D8: D8340000 0000140F
	ds_store_b32 v15, v21 offset:32                            // 0000006340E0: D8340020 0000150F
	ds_store_b32 v16, v22                                      // 0000006340E8: D8340000 00001610
	ds_store_b32 v16, v23 offset:256                           // 0000006340F0: D8340100 00001710
	s_waitcnt lgkmcnt(0)                                       // 0000006340F8: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 0000006340FC: BDFC0000
	s_barrier                                                  // 000000634100: BFBD0000
	v_and_b32_e32 v24, 0x3ff, v24                              // 000000634104: 363030FF 000003FF
	v_and_b32_e32 v25, 0x3ff, v25                              // 00000063410C: 363232FF 000003FF

0000000000634114 <TailLoopBeginL_6>:
	ds_load_b32 v6, v24                                        // 000000634114: D8D80000 06000018
	ds_load_b32 v7, v24 offset:32                              // 00000063411C: D8D80020 07000018
	ds_load_b32 v11, v25                                       // 000000634124: D8D80000 0B000019
	ds_load_b32 v12, v25 offset:32                             // 00000063412C: D8D80020 0C000019
	s_mov_b32 s54, 64                                          // 000000634134: BEB600C0
	v_add_co_u32 v24, vcc_lo, s54, v24                         // 000000634138: D7006A18 00023036
	s_mov_b32 s54, 64                                          // 000000634140: BEB600C0
	v_add_co_u32 v25, vcc_lo, s54, v25                         // 000000634144: D7006A19 00023236
	s_waitcnt lgkmcnt(0)                                       // 00000063414C: BF89FC07
	v_fmac_f32_e32 v0, v6, v11                                 // 000000634150: 56001706
	s_setprio 1                                                // 000000634154: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000634158: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 00000063415C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000634160: 56061907
	s_setprio 0                                                // 000000634164: BFB50000
	s_sub_i32 s5, s5, 1                                        // 000000634168: 81858105
	s_add_u32 s6, s6, 1                                        // 00000063416C: 80068106
	s_cmp_le_i32 s5, 0                                         // 000000634170: BF058005
	s_cbranch_scc0 TailLoopBeginL_6                            // 000000634174: BFA1FFE7

0000000000634178 <TailLoopEndL_7>:
	v_lshrrev_b32_e32 v7, 3, v26                               // 000000634178: 320E3483
	v_and_b32_e32 v6, 7, v26                                   // 00000063417C: 360C3487
	v_mul_lo_u32 v8, v7, s40                                   // 000000634180: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000634188: D72C0009 00004D07
	s_mul_i32 s54, 16, s2                                      // 000000634190: 96360290
	v_add_co_u32 v6, vcc_lo, s54, v6                           // 000000634194: D7006A06 00020C36
	s_mul_i32 s56, 16, s3                                      // 00000063419C: 96380390
	v_add_co_u32 v7, vcc_lo, s56, v7                           // 0000006341A0: D7006A07 00020E38
	s_cmpk_eq_u32 s37, 0x0                                     // 0000006341A8: B4A50000
	s_cbranch_scc0 GW_Beta_43                                  // 0000006341AC: BFA1005B
	s_and_b32 s54, 15, s46                                     // 0000006341B0: 8B362E8F
	s_add_u32 s55, -1, s51                                     // 0000006341B4: 803733C1
	s_cmp_ge_u32 s2, s55                                       // 0000006341B8: BF093702
	s_cselect_b32 s54, s54, 0                                  // 0000006341BC: 98368036
	s_cmpk_gt_u32 s54, 0x0                                     // 0000006341C0: B5B60000
	s_cbranch_scc1 GW_B0_E1_34                                 // 0000006341C4: BFA20018
	s_and_b32 s54, 15, s47                                     // 0000006341C8: 8B362F8F
	s_add_u32 s55, -1, s52                                     // 0000006341CC: 803734C1
	s_cmp_ge_u32 s3, s55                                       // 0000006341D0: BF093703
	s_cselect_b32 s54, s54, 0                                  // 0000006341D4: 98368036
	s_cmpk_gt_u32 s54, 0x0                                     // 0000006341D8: B5B60000
	s_cbranch_scc1 GW_B0_E1_34                                 // 0000006341DC: BFA20012

00000000006341e0 <GW_B0_E0_31>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 0000006341E0: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 0000006341E8: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 0000006341EC: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 0000006341F0: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 0000006341F4: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 0000006341F8: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:32      // 000000634200: E0680020 8044010C
	s_mul_i32 s54, s38, 32                                     // 000000634208: 9636A026
	s_add_u32 s16, s16, s54                                    // 00000063420C: 80103610
	s_addc_u32 s17, s17, 0                                     // 000000634210: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000634214: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:32      // 00000063421C: E0680020 8044030C
	s_branch label_0047                                        // 000000634224: BFA000D3

0000000000634228 <GW_B0_E1_34>:
	v_cmp_lt_u32_e64 s54, v6, s46                              // 000000634228: D4490036 00005D06
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000634230: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000634238: 8B383836
	v_add_lshl_u32 v12, v9, v6, 2                              // 00000063423C: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s56                        // 000000634244: D501000C 00E218C1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 00000063424C: D7006A0A 00011106
	v_cmp_lt_u32_e64 s54, v10, s46                             // 000000634254: D4490036 00005D0A
	v_cmp_lt_u32_e64 s56, v7, s47                              // 00000063425C: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000634264: 8B383836
	v_add_lshl_u32 v13, v9, v10, 2                             // 000000634268: D647000D 020A1509
	v_cndmask_b32_e64 v13, -1, v13, s56                        // 000000634270: D501000D 00E21AC1
	v_add_co_u32 v7, vcc_lo, v7, 8                             // 000000634278: D7006A07 00011107
	s_mul_i32 s54, s40, 8                                      // 000000634280: 96368828
	v_add_nc_u32_e64 v8, v8, s54                               // 000000634284: D5250008 00006D08
	s_mul_i32 s54, s38, 8                                      // 00000063428C: 96368826
	v_add_nc_u32_e64 v9, v9, s54                               // 000000634290: D5250009 00006D09
	v_cmp_lt_u32_e64 s54, v6, s46                              // 000000634298: D4490036 00005D06
	v_cmp_lt_u32_e64 s56, v7, s47                              // 0000006342A0: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 0000006342A8: 8B383836
	v_add_lshl_u32 v14, v9, v6, 2                              // 0000006342AC: D647000E 020A0D09
	v_cndmask_b32_e64 v14, -1, v14, s56                        // 0000006342B4: D501000E 00E21CC1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 0000006342BC: D7006A0A 00011106
	v_cmp_lt_u32_e64 s54, v10, s46                             // 0000006342C4: D4490036 00005D0A
	v_cmp_lt_u32_e64 s56, v7, s47                              // 0000006342CC: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 0000006342D4: 8B383836
	v_add_lshl_u32 v15, v9, v10, 2                             // 0000006342D8: D647000F 020A1509
	v_cndmask_b32_e64 v15, -1, v15, s56                        // 0000006342E0: D501000F 00E21EC1
	v_mul_f32_e32 v0, s36, v0                                  // 0000006342E8: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 0000006342EC: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 0000006342F0: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 0000006342F4: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 0000006342F8: E0680000 8044000C
	buffer_store_b32 v1, v13, s[16:19], 0 offen                // 000000634300: E0680000 8044010D
	buffer_store_b32 v2, v14, s[16:19], 0 offen                // 000000634308: E0680000 8044020E
	buffer_store_b32 v3, v15, s[16:19], 0 offen                // 000000634310: E0680000 8044030F
	s_branch label_0047                                        // 000000634318: BFA00096

000000000063431c <GW_Beta_43>:
	s_and_b32 s54, 15, s46                                     // 00000063431C: 8B362E8F
	s_add_u32 s55, -1, s51                                     // 000000634320: 803733C1
	s_cmp_ge_u32 s2, s55                                       // 000000634324: BF093702
	s_cselect_b32 s54, s54, 0                                  // 000000634328: 98368036
	s_cmpk_gt_u32 s54, 0x0                                     // 00000063432C: B5B60000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000634330: BFA20031
	s_and_b32 s54, 15, s47                                     // 000000634334: 8B362F8F
	s_add_u32 s55, -1, s52                                     // 000000634338: 803734C1
	s_cmp_ge_u32 s3, s55                                       // 00000063433C: BF093703
	s_cselect_b32 s54, s54, 0                                  // 000000634340: 98368036
	s_cmpk_gt_u32 s54, 0x0                                     // 000000634344: B5B60000
	s_cbranch_scc1 GW_B1_E1_41                                 // 000000634348: BFA2002B

000000000063434c <GW_B1_E0_38>:
	v_add_lshl_u32 v13, v8, v6, 2                              // 00000063434C: D647000D 020A0D08
	buffer_load_b32 v14, v13, s[20:23], 0 offen                // 000000634354: E0500000 80450E0D
	buffer_load_b32 v15, v13, s[20:23], 0 offen offset:32      // 00000063435C: E0500020 80450F0D
	s_mul_i32 s54, s40, 32                                     // 000000634364: 9636A028
	s_add_u32 s20, s20, s54                                    // 000000634368: 80143614
	s_addc_u32 s21, s21, 0                                     // 00000063436C: 82158015
	buffer_load_b32 v16, v13, s[20:23], 0 offen                // 000000634370: E0500000 8045100D
	buffer_load_b32 v17, v13, s[20:23], 0 offen offset:32      // 000000634378: E0500020 8045110D
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000634380: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000634388: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 00000063438C: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000634390: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000634394: 10060624
	s_waitcnt vmcnt(3)                                         // 000000634398: BF890FF7
	v_fmac_f32_e64 v0, v14, s37                                // 00000063439C: D52B0000 00004B0E
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 0000006343A4: E0680000 8044000C
	s_waitcnt vmcnt(2)                                         // 0000006343AC: BF890BF7
	v_fmac_f32_e64 v1, v15, s37                                // 0000006343B0: D52B0001 00004B0F
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:32      // 0000006343B8: E0680020 8044010C
	s_waitcnt vmcnt(1)                                         // 0000006343C0: BF8907F7
	v_fmac_f32_e64 v2, v16, s37                                // 0000006343C4: D52B0002 00004B10
	s_mul_i32 s54, s38, 32                                     // 0000006343CC: 9636A026
	s_add_u32 s16, s16, s54                                    // 0000006343D0: 80103610
	s_addc_u32 s17, s17, 0                                     // 0000006343D4: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 0000006343D8: E0680000 8044020C
	s_waitcnt vmcnt(0)                                         // 0000006343E0: BF8903F7
	v_fmac_f32_e64 v3, v17, s37                                // 0000006343E4: D52B0003 00004B11
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:32      // 0000006343EC: E0680020 8044030C
	s_branch label_0047                                        // 0000006343F4: BFA0005F

00000000006343f8 <GW_B1_E1_41>:
	v_cmp_lt_u32_e64 s54, v6, s46                              // 0000006343F8: D4490036 00005D06
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000634400: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 000000634408: 8B383836
	v_add_lshl_u32 v12, v8, v6, 2                              // 00000063440C: D647000C 020A0D08
	v_cndmask_b32_e64 v12, -1, v12, s56                        // 000000634414: D501000C 00E218C1
	buffer_load_b32 v13, v12, s[20:23], 0 offen                // 00000063441C: E0500000 80450D0C
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000634424: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s56                        // 00000063442C: D501000C 00E218C1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 000000634434: D7006A0A 00011106
	v_cmp_lt_u32_e64 s54, v10, s46                             // 00000063443C: D4490036 00005D0A
	v_cmp_lt_u32_e64 s56, v7, s47                              // 000000634444: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 00000063444C: 8B383836
	v_add_lshl_u32 v14, v8, v10, 2                             // 000000634450: D647000E 020A1508
	v_cndmask_b32_e64 v14, -1, v14, s56                        // 000000634458: D501000E 00E21CC1
	buffer_load_b32 v15, v14, s[20:23], 0 offen                // 000000634460: E0500000 80450F0E
	v_add_lshl_u32 v14, v9, v10, 2                             // 000000634468: D647000E 020A1509
	v_cndmask_b32_e64 v14, -1, v14, s56                        // 000000634470: D501000E 00E21CC1
	v_add_co_u32 v7, vcc_lo, v7, 8                             // 000000634478: D7006A07 00011107
	s_mul_i32 s54, s40, 8                                      // 000000634480: 96368828
	v_add_nc_u32_e64 v8, v8, s54                               // 000000634484: D5250008 00006D08
	s_mul_i32 s54, s38, 8                                      // 00000063448C: 96368826
	v_add_nc_u32_e64 v9, v9, s54                               // 000000634490: D5250009 00006D09
	v_cmp_lt_u32_e64 s54, v6, s46                              // 000000634498: D4490036 00005D06
	v_cmp_lt_u32_e64 s56, v7, s47                              // 0000006344A0: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 0000006344A8: 8B383836
	v_add_lshl_u32 v16, v8, v6, 2                              // 0000006344AC: D6470010 020A0D08
	v_cndmask_b32_e64 v16, -1, v16, s56                        // 0000006344B4: D5010010 00E220C1
	buffer_load_b32 v17, v16, s[20:23], 0 offen                // 0000006344BC: E0500000 80451110
	v_add_lshl_u32 v16, v9, v6, 2                              // 0000006344C4: D6470010 020A0D09
	v_cndmask_b32_e64 v16, -1, v16, s56                        // 0000006344CC: D5010010 00E220C1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 0000006344D4: D7006A0A 00011106
	v_cmp_lt_u32_e64 s54, v10, s46                             // 0000006344DC: D4490036 00005D0A
	v_cmp_lt_u32_e64 s56, v7, s47                              // 0000006344E4: D4490038 00005F07
	s_and_b32 s56, s54, s56                                    // 0000006344EC: 8B383836
	v_add_lshl_u32 v18, v8, v10, 2                             // 0000006344F0: D6470012 020A1508
	v_cndmask_b32_e64 v18, -1, v18, s56                        // 0000006344F8: D5010012 00E224C1
	buffer_load_b32 v19, v18, s[20:23], 0 offen                // 000000634500: E0500000 80451312
	v_add_lshl_u32 v18, v9, v10, 2                             // 000000634508: D6470012 020A1509
	v_cndmask_b32_e64 v18, -1, v18, s56                        // 000000634510: D5010012 00E224C1
	v_mul_f32_e32 v0, s36, v0                                  // 000000634518: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 00000063451C: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000634520: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000634524: 10060624
	s_waitcnt vmcnt(0)                                         // 000000634528: BF8903F7
	s_waitcnt_vscnt null, 0x0                                  // 00000063452C: BC7C0000
	v_fmac_f32_e64 v0, v13, s37                                // 000000634530: D52B0000 00004B0D
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000634538: E0680000 8044000C
	v_fmac_f32_e64 v1, v15, s37                                // 000000634540: D52B0001 00004B0F
	buffer_store_b32 v1, v14, s[16:19], 0 offen                // 000000634548: E0680000 8044010E
	v_fmac_f32_e64 v2, v17, s37                                // 000000634550: D52B0002 00004B11
	buffer_store_b32 v2, v16, s[16:19], 0 offen                // 000000634558: E0680000 80440210
	v_fmac_f32_e64 v3, v19, s37                                // 000000634560: D52B0003 00004B13
	buffer_store_b32 v3, v18, s[16:19], 0 offen                // 000000634568: E0680000 80440312
	s_branch label_0047                                        // 000000634570: BFA00000

0000000000634574 <label_GW_End_42>:
	s_endpgm                                                   // 000000634574: BFB00000
		...
