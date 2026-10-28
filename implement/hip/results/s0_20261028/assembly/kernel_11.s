
/root/batchmatmulmaxsum/implement/hip/results/s0_20261028/code_objects/_code_object0007.o:	file format elf64-amdgpu

Disassembly of section .text:

0000000000626400 <Cijk_Alik_Bjlk_SB_MT16x16x8_SN_1LDSB0_APM1_ABV0_ACED0_AF0EM1_AF1EM1_AMAS0_ASE_ASGT_ASLT_ASM_ASAE01_ASCE01_ASEM1_AAC0_BL1_BS1_CLR0_DTLA0_DTLB0_DTVA0_DTVB0_DVO0_ETSP_EPS1_ELFLR0_EMLL0_FSSC10_FL0_GLVWA1_GLVWB1_GRCGA1_GRCGB1_GRPM1_GRVW1_GSU1_GSUASB_GLS0_ISA1100_IU1_K1_KLA_LBSPPA0_LBSPPB0_LPA0_LPB0_LDL1_LRVW1_LWPMn1_LDW0_FMA_MIAV0_MDA2_MO40_MMFGLC_MKFGSU256_NTA0_NTB0_NTC0_NTD0_NEPBS0_NLCA1_NLCB1_ONLL1_OPLV0_PK0_PAP0_PGR1_PLR1_PKA0_SIA1_SLW1_SS0_SU0_SUM0_SUS0_SCIUI1_SPO0_SRVW0_SSO0_SVW4_SNLL0_TSGRA0_TSGRB0_TT2_2_TLDS0_UMLDSA0_UMLDSB0_U64SL1_USFGROn1_VAW1_VSn1_VW1_VWB1_VFLRP0_WSGRA0_WSGRB0_WS32_WG8_8_1_WGM1_preloaded>:
	s_mov_b32 vcc_hi, 0                                        // 000000626400: BEEB0080
	s_load_b512 s[24:39], s[0:1], null                         // 000000626404: F4100600 F8000000
	s_load_b256 s[40:47], s[0:1], 0x40                         // 00000062640C: F40C0A00 F8000040
	s_load_b128 s[48:51], s[0:1], 0x60                         // 000000626414: F4080C00 F8000060
	s_mov_b32 m0, 0x800                                        // 00000062641C: BEFD00FF 00000800
	v_mov_b32_e32 v26, v0                                      // 000000626424: 7E340300
	v_lshrrev_b32_e32 v0, 3, v26                               // 000000626428: 32003483
	v_and_b32_e32 v1, 7, v26                                   // 00000062642C: 36023487
	v_lshrrev_b32_e32 v2, 3, v0                                // 000000626430: 32040083
	v_and_b32_e32 v3, 7, v0                                    // 000000626434: 36060087
	v_lshrrev_b32_e32 v0, 6, v26                               // 000000626438: 32003486
	v_lshlrev_b32_e32 v0, 4, v0                                // 00000062643C: 30000084
	v_add_lshl_u32 v24, v0, v1, 2                              // 000000626440: D6470018 020A0300
	v_lshrrev_b32_e32 v0, 6, v26                               // 000000626448: 32003486
	v_lshlrev_b32_e32 v0, 4, v0                                // 00000062644C: 30000084
	v_add_lshl_u32 v25, v0, v3, 2                              // 000000626450: D6470019 020A0700
	v_add_co_u32 v25, vcc_lo, 0x200, v25                       // 000000626458: D7006A19 000232FF 00000200
	v_lshrrev_b32_e32 v0, 3, v26                               // 000000626464: 32003483
	v_and_b32_e32 v1, 7, v26                                   // 000000626468: 36023487
	v_lshrrev_b32_e32 v3, 4, v26                               // 00000062646C: 32063484
	v_and_b32_e32 v2, 15, v26                                  // 000000626470: 3604348F
	v_mul_u32_u24_e32 v15, 16, v1                              // 000000626474: 161E0290
	v_add_lshl_u32 v15, v0, v15, 2                             // 000000626478: D647000F 020A1F00
	v_mul_u32_u24_e32 v16, 16, v3                              // 000000626480: 16200690
	v_add_lshl_u32 v16, v2, v16, 2                             // 000000626484: D6470010 020A2102
	v_add_co_u32 v16, vcc_lo, 0x200, v16                       // 00000062648C: D7006A10 000220FF 00000200
	s_waitcnt lgkmcnt(0)                                       // 000000626498: BF89FC07
	s_mov_b64 s[20:21], s[30:31]                               // 00000062649C: BE94011E
	s_mov_b64 s[16:17], s[28:29]                               // 0000006264A0: BE90011C
	s_sub_u32 s8, s32, 4                                       // 0000006264A4: 80888420
	s_subb_u32 s9, s33, 0                                      // 0000006264A8: 82898021
	s_sub_u32 s12, s34, 4                                      // 0000006264AC: 808C8422
	s_subb_u32 s13, s35, 0                                     // 0000006264B0: 828D8023
	v_cmp_eq_f32_e64 vcc_lo, s36, 0                            // 0000006264B4: D412006A 00010024
	s_cbranch_vccz label_AlphaNonZero                          // 0000006264BC: BFA30001
	s_mov_b32 s49, 0                                           // 0000006264C0: BEB10080

00000000006264c4 <label_AlphaNonZero>:
	v_mul_lo_u32 v6, s42, v0                                   // 0000006264C4: D72C0006 0002002A
	v_add_co_u32 v17, vcc_lo, v1, v6                           // 0000006264CC: D7006A11 00020D01
	v_add_nc_u32_e32 v17, 1, v17                               // 0000006264D4: 4A222281
	v_lshlrev_b32_e32 v17, 2, v17                              // 0000006264D8: 30222282
	s_mul_i32 s31, s42, 8                                      // 0000006264DC: 961F882A
	s_lshl_b32 s31, s31, 2                                     // 0000006264E0: 841F821F
	v_mul_lo_u32 v6, s44, v3                                   // 0000006264E4: D72C0006 0002062C
	v_add_co_u32 v18, vcc_lo, v2, v6                           // 0000006264EC: D7006A12 00020D02
	v_add_nc_u32_e32 v18, 1, v18                               // 0000006264F4: 4A242481
	v_lshlrev_b32_e32 v18, 2, v18                              // 0000006264F8: 30242482
	s_mul_i32 s32, s44, 4                                      // 0000006264FC: 9620842C
	s_lshl_b32 s32, s32, 2                                     // 000000626500: 84208220
	s_mul_hi_u32 s55, s2, 16                                   // 000000626504: 96B79002
	s_mul_i32 s54, s2, 16                                      // 000000626508: 96369002
	s_mul_hi_u32 s55, s54, s42                                 // 00000062650C: 96B72A36
	s_mul_i32 s54, s54, s42                                    // 000000626510: 96362A36
	s_sub_u32 s0, s24, s54                                     // 000000626514: 80803618
	s_subb_u32 s1, s25, s55                                    // 000000626518: 82813719
	s_lshl_b64 s[0:1], s[0:1], 2                               // 00000062651C: 84808200
	s_add_u32 s0, s0, 4                                        // 000000626520: 80008400
	s_addc_u32 s1, s1, 0                                       // 000000626524: 82018001
	s_cmp_eq_u32 s1, 0                                         // 000000626528: BF068001
	s_cselect_b32 s10, s0, -1                                  // 00000062652C: 980AC100
	s_mul_hi_u32 s35, s43, s4                                  // 000000626530: 96A3042B
	s_mul_i32 s34, s43, s4                                     // 000000626534: 9622042B
	s_add_u32 s54, s54, s34                                    // 000000626538: 80362236
	s_addc_u32 s55, s55, s35                                   // 00000062653C: 82372337
	s_lshl_b64 s[54:55], s[54:55], 2                           // 000000626540: 84B68236
	s_add_u32 s8, s8, s54                                      // 000000626544: 80083608
	s_addc_u32 s9, s9, s55                                     // 000000626548: 82093709
	s_mov_b32 s11, 0x31004000                                  // 00000062654C: BE8B00FF 31004000
	s_mul_hi_u32 s55, s3, 16                                   // 000000626554: 96B79003
	s_mul_i32 s54, s3, 16                                      // 000000626558: 96369003
	s_sub_u32 s28, s26, s54                                    // 00000062655C: 809C361A
	s_subb_u32 s29, s27, s55                                   // 000000626560: 829D371B
	s_lshl_b64 s[28:29], s[28:29], 2                           // 000000626564: 849C821C
	s_add_u32 s28, s28, 4                                      // 000000626568: 801C841C
	s_addc_u32 s29, s29, 0                                     // 00000062656C: 821D801D
	s_cmp_eq_u32 s29, 0                                        // 000000626570: BF06801D
	s_cselect_b32 s14, s28, -1                                 // 000000626574: 980EC11C
	s_mul_hi_u32 s35, s45, s4                                  // 000000626578: 96A3042D
	s_mul_i32 s34, s45, s4                                     // 00000062657C: 9622042D
	s_add_u32 s54, s54, s34                                    // 000000626580: 80362236
	s_addc_u32 s55, s55, s35                                   // 000000626584: 82372337
	s_lshl_b64 s[54:55], s[54:55], 2                           // 000000626588: 84B68236
	s_add_u32 s12, s12, s54                                    // 00000062658C: 800C360C
	s_addc_u32 s13, s13, s55                                   // 000000626590: 820D370D
	s_mov_b32 s15, 0x31004000                                  // 000000626594: BE8F00FF 31004000
	s_mov_b32 s7, 32                                           // 00000062659C: BE8700A0
	s_mul_i32 s30, 32, s44                                     // 0000006265A0: 961E2CA0
	s_lshr_b32 s5, s49, 3                                      // 0000006265A4: 85058331
	s_mov_b32 s6, s5                                           // 0000006265A8: BE860005
	s_cmp_eq_u32 s5, 0                                         // 0000006265AC: BF068005
	s_cbranch_scc1 ShadowInitStart_10                          // 0000006265B0: BFA20014
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 0000006265B4: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 0000006265BC: E0500000 1F421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 0000006265C4: E0500000 80431612
	buffer_load_b32 v23, v18, s[12:15], s32 offen              // 0000006265CC: E0500000 20431712
	s_add_u32 s8, s8, s7                                       // 0000006265D4: 80080708
	s_addc_u32 s9, s9, 0                                       // 0000006265D8: 82098009
	s_sub_u32 s0, s0, s7                                       // 0000006265DC: 80800700
	s_subb_u32 s1, s1, 0                                       // 0000006265E0: 82818001
	s_cmp_eq_u32 s1, 0                                         // 0000006265E4: BF068001
	s_cmov_b32 s10, s0                                         // 0000006265E8: BE8A0200
	s_add_u32 s12, s12, s30                                    // 0000006265EC: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 0000006265F0: 820D800D
	s_sub_u32 s28, s28, s30                                    // 0000006265F4: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 0000006265F8: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 0000006265FC: BF06801D
	s_cmov_b32 s14, s28                                        // 000000626600: BE8E021C

0000000000626604 <ShadowInitStart_10>:
	s_mov_b32 s18, 0xfffff000                                  // 000000626604: BE9200FF FFFFF000
	s_mov_b32 s19, 0x31004000                                  // 00000062660C: BE9300FF 31004000
	s_mov_b32 s22, 0xfffff000                                  // 000000626614: BE9600FF FFFFF000
	s_mov_b32 s23, 0x31004000                                  // 00000062661C: BE9700FF 31004000
	s_mul_i32 s54, 16, s3                                      // 000000626624: 96360390
	s_mul_hi_u32 s53, s54, s40                                 // 000000626628: 96B52836
	s_mul_i32 s52, s54, s40                                    // 00000062662C: 96342836
	s_lshl_b64 s[52:53], s[52:53], 2                           // 000000626630: 84B48234
	s_add_u32 s20, s20, s52                                    // 000000626634: 80143414
	s_addc_u32 s21, s21, s53                                   // 000000626638: 82153515
	s_mul_hi_u32 s53, s54, s38                                 // 00000062663C: 96B52636
	s_mul_i32 s52, s54, s38                                    // 000000626640: 96342636
	s_lshl_b64 s[52:53], s[52:53], 2                           // 000000626644: 84B48234
	s_add_u32 s16, s16, s52                                    // 000000626648: 80103410
	s_addc_u32 s17, s17, s53                                   // 00000062664C: 82113511
	s_mul_hi_u32 s53, s4, s41                                  // 000000626650: 96B52904
	s_mul_i32 s52, s4, s41                                     // 000000626654: 96342904
	s_lshl_b64 s[52:53], s[52:53], 2                           // 000000626658: 84B48234
	s_add_u32 s20, s20, s52                                    // 00000062665C: 80143414
	s_addc_u32 s21, s21, s53                                   // 000000626660: 82153515
	s_mul_hi_u32 s53, s4, s39                                  // 000000626664: 96B52704
	s_mul_i32 s52, s4, s39                                     // 000000626668: 96342704
	s_lshl_b64 s[52:53], s[52:53], 2                           // 00000062666C: 84B48234
	s_add_u32 s16, s16, s52                                    // 000000626670: 80103410
	s_addc_u32 s17, s17, s53                                   // 000000626674: 82113511
	v_mov_b32_e32 v0, 0                                        // 000000626678: 7E000280
	v_mov_b32_e32 v1, 0                                        // 00000062667C: 7E020280
	v_mov_b32_e32 v2, 0                                        // 000000626680: 7E040280
	v_mov_b32_e32 v3, 0                                        // 000000626684: 7E060280
	s_cmp_eq_u32 s5, 0                                         // 000000626688: BF068005
	s_cbranch_scc0 label_NoBranch_11                           // 00000062668C: BFA10006
	s_getpc_b64 s[52:53]                                       // 000000626690: BEB44700
	s_add_i32 s54, 0x9a4, 4                                    // 000000626694: 813684FF 000009A4
	s_add_u32 s52, s52, s54                                    // 00000062669C: 80343634
	s_addc_u32 s53, s53, 0                                     // 0000006266A0: 82358035
	s_setpc_b64 s[52:53]                                       // 0000006266A4: BE804834

00000000006266a8 <label_NoBranch_11>:
	s_waitcnt vmcnt(0)                                         // 0000006266A8: BF8903F7
	ds_store_b32 v15, v20                                      // 0000006266AC: D8340000 0000140F
	ds_store_b32 v15, v21 offset:32                            // 0000006266B4: D8340020 0000150F
	ds_store_b32 v16, v22                                      // 0000006266BC: D8340000 00001610
	ds_store_b32 v16, v23 offset:256                           // 0000006266C4: D8340100 00001710
	s_waitcnt lgkmcnt(0)                                       // 0000006266CC: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 0000006266D0: BDFC0000
	s_barrier                                                  // 0000006266D4: BFBD0000
	ds_load_b32 v6, v24                                        // 0000006266D8: D8D80000 06000018
	ds_load_b32 v7, v24 offset:32                              // 0000006266E0: D8D80020 07000018
	ds_load_b32 v11, v25                                       // 0000006266E8: D8D80000 0B000019
	ds_load_b32 v12, v25 offset:32                             // 0000006266F0: D8D80020 0C000019

00000000006266f8 <openLoopL_12>:
	s_cmp_le_u32 s5, 1                                         // 0000006266F8: BF0B8105
	s_cbranch_scc1 LoopEndL_2                                  // 0000006266FC: BFA20141

0000000000626700 <label_0013>:
	ds_load_b32 v8, v24 offset:64                              // 000000626700: D8D80040 08000018
	ds_load_b32 v9, v24 offset:96                              // 000000626708: D8D80060 09000018
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000626710: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000626718: E0500000 1F421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 000000626720: E0500000 80431612
	ds_load_b32 v13, v25 offset:64                             // 000000626728: D8D80040 0D000019
	ds_load_b32 v14, v25 offset:96                             // 000000626730: D8D80060 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000626738: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 00000062673C: 56001706
	s_setprio 1                                                // 000000626740: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000626744: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000626748: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000062674C: 56061907
	s_setprio 0                                                // 000000626750: BFB50000
	ds_load_b32 v6, v24 offset:128                             // 000000626754: D8D80080 06000018
	ds_load_b32 v7, v24 offset:160                             // 00000062675C: D8D800A0 07000018
	buffer_load_b32 v23, v18, s[12:15], s32 offen              // 000000626764: E0500000 20431712
	ds_load_b32 v11, v25 offset:128                            // 00000062676C: D8D80080 0B000019
	ds_load_b32 v12, v25 offset:160                            // 000000626774: D8D800A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 00000062677C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000626780: 56001B08
	s_setprio 1                                                // 000000626784: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000626788: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 00000062678C: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000626790: 56061D09
	s_setprio 0                                                // 000000626794: BFB50000
	ds_load_b32 v8, v24 offset:192                             // 000000626798: D8D800C0 08000018
	ds_load_b32 v9, v24 offset:224                             // 0000006267A0: D8D800E0 09000018
	s_add_u32 s8, s8, s7                                       // 0000006267A8: 80080708
	s_addc_u32 s9, s9, 0                                       // 0000006267AC: 82098009
	s_sub_u32 s0, s0, s7                                       // 0000006267B0: 80800700
	s_subb_u32 s1, s1, 0                                       // 0000006267B4: 82818001
	s_cmp_eq_u32 s1, 0                                         // 0000006267B8: BF068001
	s_cmov_b32 s10, s0                                         // 0000006267BC: BE8A0200
	ds_load_b32 v13, v25 offset:192                            // 0000006267C0: D8D800C0 0D000019
	ds_load_b32 v14, v25 offset:224                            // 0000006267C8: D8D800E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 0000006267D0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006267D4: 56001706
	s_setprio 1                                                // 0000006267D8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006267DC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006267E0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 0000006267E4: 56061907
	s_setprio 0                                                // 0000006267E8: BFB50000
	ds_load_b32 v6, v24 offset:256                             // 0000006267EC: D8D80100 06000018
	ds_load_b32 v7, v24 offset:288                             // 0000006267F4: D8D80120 07000018
	s_add_u32 s12, s12, s30                                    // 0000006267FC: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000626800: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000626804: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000626808: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 00000062680C: BF06801D
	s_cmov_b32 s14, s28                                        // 000000626810: BE8E021C
	ds_load_b32 v11, v25 offset:256                            // 000000626814: D8D80100 0B000019
	ds_load_b32 v12, v25 offset:288                            // 00000062681C: D8D80120 0C000019
	s_waitcnt vmcnt(3)                                         // 000000626824: BF890FF7
	ds_store_b32 v15, v20 offset:1024                          // 000000626828: D8340400 0000140F
	s_waitcnt lgkmcnt(5)                                       // 000000626830: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000626834: 56001B08
	s_setprio 1                                                // 000000626838: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 00000062683C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000626840: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000626844: 56061D09
	s_setprio 0                                                // 000000626848: BFB50000
	ds_load_b32 v8, v24 offset:320                             // 00000062684C: D8D80140 08000018
	ds_load_b32 v9, v24 offset:352                             // 000000626854: D8D80160 09000018
	ds_load_b32 v13, v25 offset:320                            // 00000062685C: D8D80140 0D000019
	ds_load_b32 v14, v25 offset:352                            // 000000626864: D8D80160 0E000019
	s_waitcnt vmcnt(2)                                         // 00000062686C: BF890BF7
	ds_store_b32 v15, v21 offset:1056                          // 000000626870: D8340420 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000626878: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 00000062687C: 56001706
	s_setprio 1                                                // 000000626880: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000626884: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000626888: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000062688C: 56061907
	s_setprio 0                                                // 000000626890: BFB50000
	ds_load_b32 v6, v24 offset:384                             // 000000626894: D8D80180 06000018
	ds_load_b32 v7, v24 offset:416                             // 00000062689C: D8D801A0 07000018
	ds_load_b32 v11, v25 offset:384                            // 0000006268A4: D8D80180 0B000019
	ds_load_b32 v12, v25 offset:416                            // 0000006268AC: D8D801A0 0C000019
	s_waitcnt vmcnt(1)                                         // 0000006268B4: BF8907F7
	ds_store_b32 v16, v22 offset:1024                          // 0000006268B8: D8340400 00001610
	s_waitcnt lgkmcnt(5)                                       // 0000006268C0: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006268C4: 56001B08
	s_setprio 1                                                // 0000006268C8: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 0000006268CC: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 0000006268D0: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 0000006268D4: 56061D09
	s_setprio 0                                                // 0000006268D8: BFB50000
	ds_load_b32 v8, v24 offset:448                             // 0000006268DC: D8D801C0 08000018
	ds_load_b32 v9, v24 offset:480                             // 0000006268E4: D8D801E0 09000018
	ds_load_b32 v13, v25 offset:448                            // 0000006268EC: D8D801C0 0D000019
	ds_load_b32 v14, v25 offset:480                            // 0000006268F4: D8D801E0 0E000019
	s_waitcnt vmcnt(0)                                         // 0000006268FC: BF8903F7
	ds_store_b32 v16, v23 offset:1280                          // 000000626900: D8340500 00001710
	s_waitcnt lgkmcnt(5)                                       // 000000626908: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 00000062690C: 56001706
	s_setprio 1                                                // 000000626910: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000626914: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000626918: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 00000062691C: 56061907
	s_setprio 0                                                // 000000626920: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000626924: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000626928: BDFC0000
	s_barrier                                                  // 00000062692C: BFBD0000
	ds_load_b32 v6, v24 offset:1024                            // 000000626930: D8D80400 06000018
	ds_load_b32 v7, v24 offset:1056                            // 000000626938: D8D80420 07000018
	ds_load_b32 v11, v25 offset:1024                           // 000000626940: D8D80400 0B000019
	ds_load_b32 v12, v25 offset:1056                           // 000000626948: D8D80420 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000626950: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000626954: 56001B08
	s_setprio 1                                                // 000000626958: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 00000062695C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000626960: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000626964: 56061D09
	s_setprio 0                                                // 000000626968: BFB50000
	s_sub_u32 s5, s5, 1                                        // 00000062696C: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000626970: BF008105
	s_cbranch_scc1 LoopEndL_oddexit_3                          // 000000626974: BFA2009F

0000000000626978 <label_0014>:
	ds_load_b32 v8, v24 offset:1088                            // 000000626978: D8D80440 08000018
	ds_load_b32 v9, v24 offset:1120                            // 000000626980: D8D80460 09000018
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 000000626988: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000626990: E0500000 1F421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 000000626998: E0500000 80431612
	ds_load_b32 v13, v25 offset:1088                           // 0000006269A0: D8D80440 0D000019
	ds_load_b32 v14, v25 offset:1120                           // 0000006269A8: D8D80460 0E000019
	s_waitcnt lgkmcnt(4)                                       // 0000006269B0: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 0000006269B4: 56001706
	s_setprio 1                                                // 0000006269B8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 0000006269BC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 0000006269C0: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 0000006269C4: 56061907
	s_setprio 0                                                // 0000006269C8: BFB50000
	ds_load_b32 v6, v24 offset:1152                            // 0000006269CC: D8D80480 06000018
	ds_load_b32 v7, v24 offset:1184                            // 0000006269D4: D8D804A0 07000018
	buffer_load_b32 v23, v18, s[12:15], s32 offen              // 0000006269DC: E0500000 20431712
	ds_load_b32 v11, v25 offset:1152                           // 0000006269E4: D8D80480 0B000019
	ds_load_b32 v12, v25 offset:1184                           // 0000006269EC: D8D804A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 0000006269F4: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 0000006269F8: 56001B08
	s_setprio 1                                                // 0000006269FC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000626A00: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000626A04: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000626A08: 56061D09
	s_setprio 0                                                // 000000626A0C: BFB50000
	ds_load_b32 v8, v24 offset:1216                            // 000000626A10: D8D804C0 08000018
	ds_load_b32 v9, v24 offset:1248                            // 000000626A18: D8D804E0 09000018
	s_add_u32 s8, s8, s7                                       // 000000626A20: 80080708
	s_addc_u32 s9, s9, 0                                       // 000000626A24: 82098009
	s_sub_u32 s0, s0, s7                                       // 000000626A28: 80800700
	s_subb_u32 s1, s1, 0                                       // 000000626A2C: 82818001
	s_cmp_eq_u32 s1, 0                                         // 000000626A30: BF068001
	s_cmov_b32 s10, s0                                         // 000000626A34: BE8A0200
	ds_load_b32 v13, v25 offset:1216                           // 000000626A38: D8D804C0 0D000019
	ds_load_b32 v14, v25 offset:1248                           // 000000626A40: D8D804E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000626A48: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000626A4C: 56001706
	s_setprio 1                                                // 000000626A50: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000626A54: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000626A58: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000626A5C: 56061907
	s_setprio 0                                                // 000000626A60: BFB50000
	ds_load_b32 v6, v24 offset:1280                            // 000000626A64: D8D80500 06000018
	ds_load_b32 v7, v24 offset:1312                            // 000000626A6C: D8D80520 07000018
	s_add_u32 s12, s12, s30                                    // 000000626A74: 800C1E0C
	s_addc_u32 s13, s13, 0                                     // 000000626A78: 820D800D
	s_sub_u32 s28, s28, s30                                    // 000000626A7C: 809C1E1C
	s_subb_u32 s29, s29, 0                                     // 000000626A80: 829D801D
	s_cmp_eq_u32 s29, 0                                        // 000000626A84: BF06801D
	s_cmov_b32 s14, s28                                        // 000000626A88: BE8E021C
	ds_load_b32 v11, v25 offset:1280                           // 000000626A8C: D8D80500 0B000019
	ds_load_b32 v12, v25 offset:1312                           // 000000626A94: D8D80520 0C000019
	s_waitcnt vmcnt(3)                                         // 000000626A9C: BF890FF7
	ds_store_b32 v15, v20                                      // 000000626AA0: D8340000 0000140F
	s_waitcnt lgkmcnt(5)                                       // 000000626AA8: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000626AAC: 56001B08
	s_setprio 1                                                // 000000626AB0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000626AB4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000626AB8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000626ABC: 56061D09
	s_setprio 0                                                // 000000626AC0: BFB50000
	ds_load_b32 v8, v24 offset:1344                            // 000000626AC4: D8D80540 08000018
	ds_load_b32 v9, v24 offset:1376                            // 000000626ACC: D8D80560 09000018
	ds_load_b32 v13, v25 offset:1344                           // 000000626AD4: D8D80540 0D000019
	ds_load_b32 v14, v25 offset:1376                           // 000000626ADC: D8D80560 0E000019
	s_waitcnt vmcnt(2)                                         // 000000626AE4: BF890BF7
	ds_store_b32 v15, v21 offset:32                            // 000000626AE8: D8340020 0000150F
	s_waitcnt lgkmcnt(5)                                       // 000000626AF0: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000626AF4: 56001706
	s_setprio 1                                                // 000000626AF8: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000626AFC: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000626B00: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000626B04: 56061907
	s_setprio 0                                                // 000000626B08: BFB50000
	ds_load_b32 v6, v24 offset:1408                            // 000000626B0C: D8D80580 06000018
	ds_load_b32 v7, v24 offset:1440                            // 000000626B14: D8D805A0 07000018
	ds_load_b32 v11, v25 offset:1408                           // 000000626B1C: D8D80580 0B000019
	ds_load_b32 v12, v25 offset:1440                           // 000000626B24: D8D805A0 0C000019
	s_waitcnt vmcnt(1)                                         // 000000626B2C: BF8907F7
	ds_store_b32 v16, v22                                      // 000000626B30: D8340000 00001610
	s_waitcnt lgkmcnt(5)                                       // 000000626B38: BF89FC57
	v_fmac_f32_e32 v0, v8, v13                                 // 000000626B3C: 56001B08
	s_setprio 1                                                // 000000626B40: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000626B44: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000626B48: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000626B4C: 56061D09
	s_setprio 0                                                // 000000626B50: BFB50000
	ds_load_b32 v8, v24 offset:1472                            // 000000626B54: D8D805C0 08000018
	ds_load_b32 v9, v24 offset:1504                            // 000000626B5C: D8D805E0 09000018
	ds_load_b32 v13, v25 offset:1472                           // 000000626B64: D8D805C0 0D000019
	ds_load_b32 v14, v25 offset:1504                           // 000000626B6C: D8D805E0 0E000019
	s_waitcnt vmcnt(0)                                         // 000000626B74: BF8903F7
	ds_store_b32 v16, v23 offset:256                           // 000000626B78: D8340100 00001710
	s_waitcnt lgkmcnt(5)                                       // 000000626B80: BF89FC57
	v_fmac_f32_e32 v0, v6, v11                                 // 000000626B84: 56001706
	s_setprio 1                                                // 000000626B88: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000626B8C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000626B90: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000626B94: 56061907
	s_setprio 0                                                // 000000626B98: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000626B9C: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 000000626BA0: BDFC0000
	s_barrier                                                  // 000000626BA4: BFBD0000
	ds_load_b32 v6, v24                                        // 000000626BA8: D8D80000 06000018
	ds_load_b32 v7, v24 offset:32                              // 000000626BB0: D8D80020 07000018
	ds_load_b32 v11, v25                                       // 000000626BB8: D8D80000 0B000019
	ds_load_b32 v12, v25 offset:32                             // 000000626BC0: D8D80020 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000626BC8: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000626BCC: 56001B08
	s_setprio 1                                                // 000000626BD0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000626BD4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000626BD8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000626BDC: 56061D09
	s_setprio 0                                                // 000000626BE0: BFB50000
	s_sub_u32 s5, s5, 1                                        // 000000626BE4: 80858105
	s_cmp_eq_i32 s5, 1                                         // 000000626BE8: BF008105
	s_cbranch_scc0 LoopBeginL_1                                // 000000626BEC: BFA1FEC4

0000000000626bf0 <LoopEndL_evenexit_4>:
	s_branch LoopEndL_2                                        // 000000626BF0: BFA00004

0000000000626bf4 <LoopEndL_oddexit_3>:
	v_xor_b32_e32 v24, 0x400, v24                              // 000000626BF4: 3A3030FF 00000400
	v_xor_b32_e32 v25, 0x400, v25                              // 000000626BFC: 3A3232FF 00000400

0000000000626c04 <LoopEndL_2>:
	s_cmpk_eq_u32 s37, 0x0                                     // 000000626C04: B4A50000
	s_cbranch_scc0 OptNLL_End_15                               // 000000626C08: BFA1009C
	s_cmp_eq_u32 s36, 1.0                                      // 000000626C0C: BF06F224
	s_cbranch_scc0 OptNLL_End_15                               // 000000626C10: BFA1009A
	s_and_b32 s52, 15, s46                                     // 000000626C14: 8B342E8F
	s_add_u32 s53, -1, s50                                     // 000000626C18: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000626C1C: BF093502
	s_cselect_b32 s52, s52, 0                                  // 000000626C20: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000626C24: B5B40000
	s_cbranch_scc1 OptNLL_End_15                               // 000000626C28: BFA20094
	s_and_b32 s52, 15, s47                                     // 000000626C2C: 8B342F8F
	s_add_u32 s53, -1, s51                                     // 000000626C30: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000626C34: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000626C38: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000626C3C: B5B40000
	s_cbranch_scc1 OptNLL_End_15                               // 000000626C40: BFA2008E
	s_and_b32 s53, 7, s49                                      // 000000626C44: 8B353187
	s_cmp_eq_u32 s53, 0                                        // 000000626C48: BF068035
	s_cbranch_scc0 OptNLL_End_15                               // 000000626C4C: BFA1008B
	ds_load_b32 v8, v24 offset:64                              // 000000626C50: D8D80040 08000018
	ds_load_b32 v9, v24 offset:96                              // 000000626C58: D8D80060 09000018
	ds_load_b32 v13, v25 offset:64                             // 000000626C60: D8D80040 0D000019
	ds_load_b32 v14, v25 offset:96                             // 000000626C68: D8D80060 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000626C70: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000626C74: 56001706
	s_setprio 1                                                // 000000626C78: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000626C7C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000626C80: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000626C84: 56061907
	s_setprio 0                                                // 000000626C88: BFB50000
	ds_load_b32 v6, v24 offset:128                             // 000000626C8C: D8D80080 06000018
	ds_load_b32 v7, v24 offset:160                             // 000000626C94: D8D800A0 07000018
	ds_load_b32 v11, v25 offset:128                            // 000000626C9C: D8D80080 0B000019
	ds_load_b32 v12, v25 offset:160                            // 000000626CA4: D8D800A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000626CAC: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000626CB0: 56001B08
	s_setprio 1                                                // 000000626CB4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000626CB8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000626CBC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000626CC0: 56061D09
	s_setprio 0                                                // 000000626CC4: BFB50000
	ds_load_b32 v8, v24 offset:192                             // 000000626CC8: D8D800C0 08000018
	ds_load_b32 v9, v24 offset:224                             // 000000626CD0: D8D800E0 09000018
	ds_load_b32 v13, v25 offset:192                            // 000000626CD8: D8D800C0 0D000019
	ds_load_b32 v14, v25 offset:224                            // 000000626CE0: D8D800E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000626CE8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000626CEC: 56001706
	s_setprio 1                                                // 000000626CF0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000626CF4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000626CF8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000626CFC: 56061907
	s_setprio 0                                                // 000000626D00: BFB50000
	ds_load_b32 v6, v24 offset:256                             // 000000626D04: D8D80100 06000018
	ds_load_b32 v7, v24 offset:288                             // 000000626D0C: D8D80120 07000018
	ds_load_b32 v11, v25 offset:256                            // 000000626D14: D8D80100 0B000019
	ds_load_b32 v12, v25 offset:288                            // 000000626D1C: D8D80120 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000626D24: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000626D28: 56001B08
	s_setprio 1                                                // 000000626D2C: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000626D30: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000626D34: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000626D38: 56061D09
	s_setprio 0                                                // 000000626D3C: BFB50000
	ds_load_b32 v8, v24 offset:320                             // 000000626D40: D8D80140 08000018
	ds_load_b32 v9, v24 offset:352                             // 000000626D48: D8D80160 09000018
	ds_load_b32 v13, v25 offset:320                            // 000000626D50: D8D80140 0D000019
	ds_load_b32 v14, v25 offset:352                            // 000000626D58: D8D80160 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000626D60: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000626D64: 56001706
	s_setprio 1                                                // 000000626D68: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000626D6C: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000626D70: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000626D74: 56061907
	s_setprio 0                                                // 000000626D78: BFB50000
	ds_load_b32 v6, v24 offset:384                             // 000000626D7C: D8D80180 06000018
	ds_load_b32 v7, v24 offset:416                             // 000000626D84: D8D801A0 07000018
	ds_load_b32 v11, v25 offset:384                            // 000000626D8C: D8D80180 0B000019
	ds_load_b32 v12, v25 offset:416                            // 000000626D94: D8D801A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000626D9C: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000626DA0: 56001B08
	s_setprio 1                                                // 000000626DA4: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000626DA8: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000626DAC: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000626DB0: 56061D09
	s_setprio 0                                                // 000000626DB4: BFB50000
	ds_load_b32 v8, v24 offset:448                             // 000000626DB8: D8D801C0 08000018
	ds_load_b32 v9, v24 offset:480                             // 000000626DC0: D8D801E0 09000018
	ds_load_b32 v13, v25 offset:448                            // 000000626DC8: D8D801C0 0D000019
	ds_load_b32 v14, v25 offset:480                            // 000000626DD0: D8D801E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000626DD8: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000626DDC: 56001706
	s_setprio 1                                                // 000000626DE0: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000626DE4: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000626DE8: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000626DEC: 56061907
	s_setprio 0                                                // 000000626DF0: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000626DF4: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000626DF8: 56001B08
	s_setprio 1                                                // 000000626DFC: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000626E00: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000626E04: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000626E08: 56061D09
	s_setprio 0                                                // 000000626E0C: BFB50000

0000000000626e10 <Summation_End_OptNLL_16>:
	v_lshrrev_b32_e32 v7, 3, v26                               // 000000626E10: 320E3483
	v_and_b32_e32 v6, 7, v26                                   // 000000626E14: 360C3487
	v_mul_lo_u32 v8, v7, s40                                   // 000000626E18: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000626E20: D72C0009 00004D07
	s_mul_i32 s52, 16, s2                                      // 000000626E28: 96340290
	v_add_co_u32 v6, vcc_lo, s52, v6                           // 000000626E2C: D7006A06 00020C34
	s_mul_i32 s54, 16, s3                                      // 000000626E34: 96360390
	v_add_co_u32 v7, vcc_lo, s54, v7                           // 000000626E38: D7006A07 00020E36

0000000000626e40 <GW_B0_E0_19>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000626E40: D647000C 020A0D09
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000626E48: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:32      // 000000626E50: E0680020 8044010C
	s_mul_i32 s34, s38, 32                                     // 000000626E58: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000626E5C: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000626E60: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000626E64: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:32      // 000000626E6C: E0680020 8044030C
	s_branch label_GW_End_21                                   // 000000626E74: BFA00000

0000000000626e78 <label_GW_End_21>:
	s_endpgm                                                   // 000000626E78: BFB00000

0000000000626e7c <OptNLL_End_15>:
	ds_load_b32 v8, v24 offset:64                              // 000000626E7C: D8D80040 08000018
	ds_load_b32 v9, v24 offset:96                              // 000000626E84: D8D80060 09000018
	ds_load_b32 v13, v25 offset:64                             // 000000626E8C: D8D80040 0D000019
	ds_load_b32 v14, v25 offset:96                             // 000000626E94: D8D80060 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000626E9C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000626EA0: 56001706
	s_setprio 1                                                // 000000626EA4: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000626EA8: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000626EAC: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000626EB0: 56061907
	s_setprio 0                                                // 000000626EB4: BFB50000
	ds_load_b32 v6, v24 offset:128                             // 000000626EB8: D8D80080 06000018
	ds_load_b32 v7, v24 offset:160                             // 000000626EC0: D8D800A0 07000018
	ds_load_b32 v11, v25 offset:128                            // 000000626EC8: D8D80080 0B000019
	ds_load_b32 v12, v25 offset:160                            // 000000626ED0: D8D800A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000626ED8: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000626EDC: 56001B08
	s_setprio 1                                                // 000000626EE0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000626EE4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000626EE8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000626EEC: 56061D09
	s_setprio 0                                                // 000000626EF0: BFB50000
	ds_load_b32 v8, v24 offset:192                             // 000000626EF4: D8D800C0 08000018
	ds_load_b32 v9, v24 offset:224                             // 000000626EFC: D8D800E0 09000018
	ds_load_b32 v13, v25 offset:192                            // 000000626F04: D8D800C0 0D000019
	ds_load_b32 v14, v25 offset:224                            // 000000626F0C: D8D800E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000626F14: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000626F18: 56001706
	s_setprio 1                                                // 000000626F1C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000626F20: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000626F24: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000626F28: 56061907
	s_setprio 0                                                // 000000626F2C: BFB50000
	ds_load_b32 v6, v24 offset:256                             // 000000626F30: D8D80100 06000018
	ds_load_b32 v7, v24 offset:288                             // 000000626F38: D8D80120 07000018
	ds_load_b32 v11, v25 offset:256                            // 000000626F40: D8D80100 0B000019
	ds_load_b32 v12, v25 offset:288                            // 000000626F48: D8D80120 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000626F50: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000626F54: 56001B08
	s_setprio 1                                                // 000000626F58: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000626F5C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000626F60: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000626F64: 56061D09
	s_setprio 0                                                // 000000626F68: BFB50000
	ds_load_b32 v8, v24 offset:320                             // 000000626F6C: D8D80140 08000018
	ds_load_b32 v9, v24 offset:352                             // 000000626F74: D8D80160 09000018
	ds_load_b32 v13, v25 offset:320                            // 000000626F7C: D8D80140 0D000019
	ds_load_b32 v14, v25 offset:352                            // 000000626F84: D8D80160 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000626F8C: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000626F90: 56001706
	s_setprio 1                                                // 000000626F94: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000626F98: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000626F9C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000626FA0: 56061907
	s_setprio 0                                                // 000000626FA4: BFB50000
	ds_load_b32 v6, v24 offset:384                             // 000000626FA8: D8D80180 06000018
	ds_load_b32 v7, v24 offset:416                             // 000000626FB0: D8D801A0 07000018
	ds_load_b32 v11, v25 offset:384                            // 000000626FB8: D8D80180 0B000019
	ds_load_b32 v12, v25 offset:416                            // 000000626FC0: D8D801A0 0C000019
	s_waitcnt lgkmcnt(4)                                       // 000000626FC8: BF89FC47
	v_fmac_f32_e32 v0, v8, v13                                 // 000000626FCC: 56001B08
	s_setprio 1                                                // 000000626FD0: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 000000626FD4: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000626FD8: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000626FDC: 56061D09
	s_setprio 0                                                // 000000626FE0: BFB50000
	ds_load_b32 v8, v24 offset:448                             // 000000626FE4: D8D801C0 08000018
	ds_load_b32 v9, v24 offset:480                             // 000000626FEC: D8D801E0 09000018
	ds_load_b32 v13, v25 offset:448                            // 000000626FF4: D8D801C0 0D000019
	ds_load_b32 v14, v25 offset:480                            // 000000626FFC: D8D801E0 0E000019
	s_waitcnt lgkmcnt(4)                                       // 000000627004: BF89FC47
	v_fmac_f32_e32 v0, v6, v11                                 // 000000627008: 56001706
	s_setprio 1                                                // 00000062700C: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000627010: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 000000627014: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000627018: 56061907
	s_setprio 0                                                // 00000062701C: BFB50000
	s_waitcnt lgkmcnt(0)                                       // 000000627020: BF89FC07
	v_fmac_f32_e32 v0, v8, v13                                 // 000000627024: 56001B08
	s_setprio 1                                                // 000000627028: BFB50001
	v_fmac_f32_e32 v1, v9, v13                                 // 00000062702C: 56021B09
	v_fmac_f32_e32 v2, v8, v14                                 // 000000627030: 56041D08
	v_fmac_f32_e32 v3, v9, v14                                 // 000000627034: 56061D09
	s_setprio 0                                                // 000000627038: BFB50000

000000000062703c <PrefetchGlobalLastIterEnd_5>:
	v_and_b32_e32 v15, 0xf003ff, v15                           // 00000062703C: 361E1EFF 00F003FF
	v_and_b32_e32 v16, 0xf003ff, v16                           // 000000627044: 362020FF 00F003FF
	s_and_b32 s5, 7, s49                                       // 00000062704C: 8B053187
	s_cmp_eq_u32 s5, 0                                         // 000000627050: BF068005
	s_cbranch_scc1 SkipTailLoopL_8                             // 000000627054: BFA20034
	s_mov_b32 s6, 0                                            // 000000627058: BE860080
	buffer_load_b32 v20, v17, s[8:11], 0 offen                 // 00000062705C: E0500000 80421411
	buffer_load_b32 v21, v17, s[8:11], s31 offen               // 000000627064: E0500000 1F421511
	buffer_load_b32 v22, v18, s[12:15], 0 offen                // 00000062706C: E0500000 80431612
	buffer_load_b32 v23, v18, s[12:15], s32 offen              // 000000627074: E0500000 20431712
	s_waitcnt vmcnt(0)                                         // 00000062707C: BF8903F7
	s_waitcnt_lgkmcnt null, 0x0                                // 000000627080: BDFC0000
	s_barrier                                                  // 000000627084: BFBD0000
	ds_store_b32 v15, v20                                      // 000000627088: D8340000 0000140F
	ds_store_b32 v15, v21 offset:32                            // 000000627090: D8340020 0000150F
	ds_store_b32 v16, v22                                      // 000000627098: D8340000 00001610
	ds_store_b32 v16, v23 offset:256                           // 0000006270A0: D8340100 00001710
	s_waitcnt lgkmcnt(0)                                       // 0000006270A8: BF89FC07
	s_waitcnt_lgkmcnt null, 0x0                                // 0000006270AC: BDFC0000
	s_barrier                                                  // 0000006270B0: BFBD0000
	v_and_b32_e32 v24, 0x3ff, v24                              // 0000006270B4: 363030FF 000003FF
	v_and_b32_e32 v25, 0x3ff, v25                              // 0000006270BC: 363232FF 000003FF

00000000006270c4 <TailLoopBeginL_6>:
	ds_load_b32 v6, v24                                        // 0000006270C4: D8D80000 06000018
	ds_load_b32 v7, v24 offset:32                              // 0000006270CC: D8D80020 07000018
	ds_load_b32 v11, v25                                       // 0000006270D4: D8D80000 0B000019
	ds_load_b32 v12, v25 offset:32                             // 0000006270DC: D8D80020 0C000019
	s_mov_b32 s33, 64                                          // 0000006270E4: BEA100C0
	v_add_co_u32 v24, vcc_lo, s33, v24                         // 0000006270E8: D7006A18 00023021
	s_mov_b32 s33, 64                                          // 0000006270F0: BEA100C0
	v_add_co_u32 v25, vcc_lo, s33, v25                         // 0000006270F4: D7006A19 00023221
	s_waitcnt lgkmcnt(0)                                       // 0000006270FC: BF89FC07
	v_fmac_f32_e32 v0, v6, v11                                 // 000000627100: 56001706
	s_setprio 1                                                // 000000627104: BFB50001
	v_fmac_f32_e32 v1, v7, v11                                 // 000000627108: 56021707
	v_fmac_f32_e32 v2, v6, v12                                 // 00000062710C: 56041906
	v_fmac_f32_e32 v3, v7, v12                                 // 000000627110: 56061907
	s_setprio 0                                                // 000000627114: BFB50000
	s_sub_i32 s5, s5, 1                                        // 000000627118: 81858105
	s_add_u32 s6, s6, 1                                        // 00000062711C: 80068106
	s_cmp_le_i32 s5, 0                                         // 000000627120: BF058005
	s_cbranch_scc0 TailLoopBeginL_6                            // 000000627124: BFA1FFE7

0000000000627128 <TailLoopEndL_7>:
	v_lshrrev_b32_e32 v7, 3, v26                               // 000000627128: 320E3483
	v_and_b32_e32 v6, 7, v26                                   // 00000062712C: 360C3487
	v_mul_lo_u32 v8, v7, s40                                   // 000000627130: D72C0008 00005107
	v_mul_lo_u32 v9, v7, s38                                   // 000000627138: D72C0009 00004D07
	s_mul_i32 s52, 16, s2                                      // 000000627140: 96340290
	v_add_co_u32 v6, vcc_lo, s52, v6                           // 000000627144: D7006A06 00020C34
	s_mul_i32 s54, 16, s3                                      // 00000062714C: 96360390
	v_add_co_u32 v7, vcc_lo, s54, v7                           // 000000627150: D7006A07 00020E36
	s_cmpk_eq_u32 s37, 0x0                                     // 000000627158: B4A50000
	s_cbranch_scc0 GW_Beta_43                                  // 00000062715C: BFA1005B
	s_and_b32 s52, 15, s46                                     // 000000627160: 8B342E8F
	s_add_u32 s53, -1, s50                                     // 000000627164: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 000000627168: BF093502
	s_cselect_b32 s52, s52, 0                                  // 00000062716C: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000627170: B5B40000
	s_cbranch_scc1 GW_B0_E1_34                                 // 000000627174: BFA20018
	s_and_b32 s52, 15, s47                                     // 000000627178: 8B342F8F
	s_add_u32 s53, -1, s51                                     // 00000062717C: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 000000627180: BF093503
	s_cselect_b32 s52, s52, 0                                  // 000000627184: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 000000627188: B5B40000
	s_cbranch_scc1 GW_B0_E1_34                                 // 00000062718C: BFA20012

0000000000627190 <GW_B0_E0_31>:
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000627190: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000627198: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 00000062719C: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 0000006271A0: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 0000006271A4: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 0000006271A8: E0680000 8044000C
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:32      // 0000006271B0: E0680020 8044010C
	s_mul_i32 s34, s38, 32                                     // 0000006271B8: 9622A026
	s_add_u32 s16, s16, s34                                    // 0000006271BC: 80102210
	s_addc_u32 s17, s17, 0                                     // 0000006271C0: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 0000006271C4: E0680000 8044020C
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:32      // 0000006271CC: E0680020 8044030C
	s_branch label_0047                                        // 0000006271D4: BFA000D3

00000000006271d8 <GW_B0_E1_34>:
	v_cmp_lt_u32_e64 s52, v6, s46                              // 0000006271D8: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 0000006271E0: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 0000006271E8: 8B363634
	v_add_lshl_u32 v12, v9, v6, 2                              // 0000006271EC: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s54                        // 0000006271F4: D501000C 00DA18C1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 0000006271FC: D7006A0A 00011106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 000000627204: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 00000062720C: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000627214: 8B363634
	v_add_lshl_u32 v13, v9, v10, 2                             // 000000627218: D647000D 020A1509
	v_cndmask_b32_e64 v13, -1, v13, s54                        // 000000627220: D501000D 00DA1AC1
	v_add_co_u32 v7, vcc_lo, v7, 8                             // 000000627228: D7006A07 00011107
	s_mul_i32 s52, s40, 8                                      // 000000627230: 96348828
	v_add_nc_u32_e64 v8, v8, s52                               // 000000627234: D5250008 00006908
	s_mul_i32 s52, s38, 8                                      // 00000062723C: 96348826
	v_add_nc_u32_e64 v9, v9, s52                               // 000000627240: D5250009 00006909
	v_cmp_lt_u32_e64 s52, v6, s46                              // 000000627248: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000627250: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000627258: 8B363634
	v_add_lshl_u32 v14, v9, v6, 2                              // 00000062725C: D647000E 020A0D09
	v_cndmask_b32_e64 v14, -1, v14, s54                        // 000000627264: D501000E 00DA1CC1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 00000062726C: D7006A0A 00011106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 000000627274: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 00000062727C: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000627284: 8B363634
	v_add_lshl_u32 v15, v9, v10, 2                             // 000000627288: D647000F 020A1509
	v_cndmask_b32_e64 v15, -1, v15, s54                        // 000000627290: D501000F 00DA1EC1
	v_mul_f32_e32 v0, s36, v0                                  // 000000627298: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 00000062729C: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 0000006272A0: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 0000006272A4: 10060624
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 0000006272A8: E0680000 8044000C
	buffer_store_b32 v1, v13, s[16:19], 0 offen                // 0000006272B0: E0680000 8044010D
	buffer_store_b32 v2, v14, s[16:19], 0 offen                // 0000006272B8: E0680000 8044020E
	buffer_store_b32 v3, v15, s[16:19], 0 offen                // 0000006272C0: E0680000 8044030F
	s_branch label_0047                                        // 0000006272C8: BFA00096

00000000006272cc <GW_Beta_43>:
	s_and_b32 s52, 15, s46                                     // 0000006272CC: 8B342E8F
	s_add_u32 s53, -1, s50                                     // 0000006272D0: 803532C1
	s_cmp_ge_u32 s2, s53                                       // 0000006272D4: BF093502
	s_cselect_b32 s52, s52, 0                                  // 0000006272D8: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 0000006272DC: B5B40000
	s_cbranch_scc1 GW_B1_E1_41                                 // 0000006272E0: BFA20031
	s_and_b32 s52, 15, s47                                     // 0000006272E4: 8B342F8F
	s_add_u32 s53, -1, s51                                     // 0000006272E8: 803533C1
	s_cmp_ge_u32 s3, s53                                       // 0000006272EC: BF093503
	s_cselect_b32 s52, s52, 0                                  // 0000006272F0: 98348034
	s_cmpk_gt_u32 s52, 0x0                                     // 0000006272F4: B5B40000
	s_cbranch_scc1 GW_B1_E1_41                                 // 0000006272F8: BFA2002B

00000000006272fc <GW_B1_E0_38>:
	v_add_lshl_u32 v13, v8, v6, 2                              // 0000006272FC: D647000D 020A0D08
	buffer_load_b32 v14, v13, s[20:23], 0 offen                // 000000627304: E0500000 80450E0D
	buffer_load_b32 v15, v13, s[20:23], 0 offen offset:32      // 00000062730C: E0500020 80450F0D
	s_mul_i32 s34, s40, 32                                     // 000000627314: 9622A028
	s_add_u32 s20, s20, s34                                    // 000000627318: 80142214
	s_addc_u32 s21, s21, 0                                     // 00000062731C: 82158015
	buffer_load_b32 v16, v13, s[20:23], 0 offen                // 000000627320: E0500000 8045100D
	buffer_load_b32 v17, v13, s[20:23], 0 offen offset:32      // 000000627328: E0500020 8045110D
	v_add_lshl_u32 v12, v9, v6, 2                              // 000000627330: D647000C 020A0D09
	v_mul_f32_e32 v0, s36, v0                                  // 000000627338: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 00000062733C: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 000000627340: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 000000627344: 10060624
	s_waitcnt vmcnt(3)                                         // 000000627348: BF890FF7
	v_fmac_f32_e64 v0, v14, s37                                // 00000062734C: D52B0000 00004B0E
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 000000627354: E0680000 8044000C
	s_waitcnt vmcnt(2)                                         // 00000062735C: BF890BF7
	v_fmac_f32_e64 v1, v15, s37                                // 000000627360: D52B0001 00004B0F
	buffer_store_b32 v1, v12, s[16:19], 0 offen offset:32      // 000000627368: E0680020 8044010C
	s_waitcnt vmcnt(1)                                         // 000000627370: BF8907F7
	v_fmac_f32_e64 v2, v16, s37                                // 000000627374: D52B0002 00004B10
	s_mul_i32 s34, s38, 32                                     // 00000062737C: 9622A026
	s_add_u32 s16, s16, s34                                    // 000000627380: 80102210
	s_addc_u32 s17, s17, 0                                     // 000000627384: 82118011
	buffer_store_b32 v2, v12, s[16:19], 0 offen                // 000000627388: E0680000 8044020C
	s_waitcnt vmcnt(0)                                         // 000000627390: BF8903F7
	v_fmac_f32_e64 v3, v17, s37                                // 000000627394: D52B0003 00004B11
	buffer_store_b32 v3, v12, s[16:19], 0 offen offset:32      // 00000062739C: E0680020 8044030C
	s_branch label_0047                                        // 0000006273A4: BFA0005F

00000000006273a8 <GW_B1_E1_41>:
	v_cmp_lt_u32_e64 s52, v6, s46                              // 0000006273A8: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 0000006273B0: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 0000006273B8: 8B363634
	v_add_lshl_u32 v12, v8, v6, 2                              // 0000006273BC: D647000C 020A0D08
	v_cndmask_b32_e64 v12, -1, v12, s54                        // 0000006273C4: D501000C 00DA18C1
	buffer_load_b32 v13, v12, s[20:23], 0 offen                // 0000006273CC: E0500000 80450D0C
	v_add_lshl_u32 v12, v9, v6, 2                              // 0000006273D4: D647000C 020A0D09
	v_cndmask_b32_e64 v12, -1, v12, s54                        // 0000006273DC: D501000C 00DA18C1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 0000006273E4: D7006A0A 00011106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 0000006273EC: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 0000006273F4: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 0000006273FC: 8B363634
	v_add_lshl_u32 v14, v8, v10, 2                             // 000000627400: D647000E 020A1508
	v_cndmask_b32_e64 v14, -1, v14, s54                        // 000000627408: D501000E 00DA1CC1
	buffer_load_b32 v15, v14, s[20:23], 0 offen                // 000000627410: E0500000 80450F0E
	v_add_lshl_u32 v14, v9, v10, 2                             // 000000627418: D647000E 020A1509
	v_cndmask_b32_e64 v14, -1, v14, s54                        // 000000627420: D501000E 00DA1CC1
	v_add_co_u32 v7, vcc_lo, v7, 8                             // 000000627428: D7006A07 00011107
	s_mul_i32 s52, s40, 8                                      // 000000627430: 96348828
	v_add_nc_u32_e64 v8, v8, s52                               // 000000627434: D5250008 00006908
	s_mul_i32 s52, s38, 8                                      // 00000062743C: 96348826
	v_add_nc_u32_e64 v9, v9, s52                               // 000000627440: D5250009 00006909
	v_cmp_lt_u32_e64 s52, v6, s46                              // 000000627448: D4490034 00005D06
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000627450: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 000000627458: 8B363634
	v_add_lshl_u32 v16, v8, v6, 2                              // 00000062745C: D6470010 020A0D08
	v_cndmask_b32_e64 v16, -1, v16, s54                        // 000000627464: D5010010 00DA20C1
	buffer_load_b32 v17, v16, s[20:23], 0 offen                // 00000062746C: E0500000 80451110
	v_add_lshl_u32 v16, v9, v6, 2                              // 000000627474: D6470010 020A0D09
	v_cndmask_b32_e64 v16, -1, v16, s54                        // 00000062747C: D5010010 00DA20C1
	v_add_co_u32 v10, vcc_lo, v6, 8                            // 000000627484: D7006A0A 00011106
	v_cmp_lt_u32_e64 s52, v10, s46                             // 00000062748C: D4490034 00005D0A
	v_cmp_lt_u32_e64 s54, v7, s47                              // 000000627494: D4490036 00005F07
	s_and_b32 s54, s52, s54                                    // 00000062749C: 8B363634
	v_add_lshl_u32 v18, v8, v10, 2                             // 0000006274A0: D6470012 020A1508
	v_cndmask_b32_e64 v18, -1, v18, s54                        // 0000006274A8: D5010012 00DA24C1
	buffer_load_b32 v19, v18, s[20:23], 0 offen                // 0000006274B0: E0500000 80451312
	v_add_lshl_u32 v18, v9, v10, 2                             // 0000006274B8: D6470012 020A1509
	v_cndmask_b32_e64 v18, -1, v18, s54                        // 0000006274C0: D5010012 00DA24C1
	v_mul_f32_e32 v0, s36, v0                                  // 0000006274C8: 10000024
	v_mul_f32_e32 v1, s36, v1                                  // 0000006274CC: 10020224
	v_mul_f32_e32 v2, s36, v2                                  // 0000006274D0: 10040424
	v_mul_f32_e32 v3, s36, v3                                  // 0000006274D4: 10060624
	s_waitcnt vmcnt(0)                                         // 0000006274D8: BF8903F7
	s_waitcnt_vscnt null, 0x0                                  // 0000006274DC: BC7C0000
	v_fmac_f32_e64 v0, v13, s37                                // 0000006274E0: D52B0000 00004B0D
	buffer_store_b32 v0, v12, s[16:19], 0 offen                // 0000006274E8: E0680000 8044000C
	v_fmac_f32_e64 v1, v15, s37                                // 0000006274F0: D52B0001 00004B0F
	buffer_store_b32 v1, v14, s[16:19], 0 offen                // 0000006274F8: E0680000 8044010E
	v_fmac_f32_e64 v2, v17, s37                                // 000000627500: D52B0002 00004B11
	buffer_store_b32 v2, v16, s[16:19], 0 offen                // 000000627508: E0680000 80440210
	v_fmac_f32_e64 v3, v19, s37                                // 000000627510: D52B0003 00004B13
	buffer_store_b32 v3, v18, s[16:19], 0 offen                // 000000627518: E0680000 80440312
	s_branch label_0047                                        // 000000627520: BFA00000

0000000000627524 <label_GW_End_42>:
	s_endpgm                                                   // 000000627524: BFB00000
		...
