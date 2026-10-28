
/root/batchmatmulmaxsum/implement/hip/results/s0_20261028/code_objects/_code_object0003.o:	file format elf64-amdgpu

Disassembly of section .text:

0000000000075100 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_>:
	s_clause 0x2                                               // 000000075100: BF850002
	s_load_b128 s[36:39], s[0:1], 0x20                         // 000000075104: F4080900 F8000020
	s_load_b32 s2, s[0:1], 0x30                                // 00000007510C: F4000080 F8000030
	s_load_b32 s35, s[0:1], 0x18                               // 000000075114: F40008C0 F8000018
	v_and_b32_e32 v25, 0x3ff, v0                               // 00000007511C: 363200FF 000003FF
	s_load_b32 s6, s[0:1], 0x14c                               // 000000075124: F4000180 F800014C
	v_bfe_u32 v24, v0, 10, 10                                  // 00000007512C: D6100018 02291500
	s_mov_b32 s7, -1                                           // 000000075134: BE8700C1
	s_waitcnt lgkmcnt(0)                                       // 000000075138: BF89FC07
	v_mul_lo_u32 v1, s39, v25                                  // 00000007513C: D72C0001 00023227
	s_mul_i32 s35, s35, s14                                    // 000000075144: 96230E23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 000000075148: BF8704A1
	v_mad_u64_u32 v[2:3], null, s2, v24, v[1:2]                // 00000007514C: D6FE7C02 04063002
	s_add_i32 s2, s6, -1                                       // 000000075154: 8102C106
	s_cmp_lt_u32 s2, 2                                         // 000000075158: BF0A8202
	v_add_lshl_u32 v40, v2, s35, 2                             // 00000007515C: D6470028 02084702
	s_cbranch_scc1 148                                         // 000000075164: BFA20094 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2b8>
	s_cmp_lg_u32 s6, 0                                         // 000000075168: BF078006
	s_mov_b32 s7, 0                                            // 00000007516C: BE870080
	s_cbranch_scc0 92                                          // 000000075170: BFA1005C <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1e4>
	s_min_u32 s9, s2, 15                                       // 000000075174: 89898F02
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000075178: BF870009
	s_add_i32 s9, s9, 1                                        // 00000007517C: 81098109
	s_cmp_eq_u32 s2, 2                                         // 000000075180: BF068202
	s_cbranch_scc1 89                                          // 000000075184: BFA20059 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1ec>
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, v40             // 000000075188: CA100080 00000128
	s_and_b32 s8, s9, 28                                       // 000000075190: 8B089C09
	s_add_u32 s2, s0, 0x214                                    // 000000075194: 8002FF00 00000214
	s_addc_u32 s3, s1, 0                                       // 00000007519C: 82038001
	s_mov_b32 s10, 0                                           // 0000000751A0: BE8A0080
	s_mov_b64 s[4:5], s[0:1]                                   // 0000000751A4: BE840100
	s_clause 0x1                                               // 0000000751A8: BF850001
	s_load_b256 s[16:23], s[4:5], 0x150                        // 0000000751AC: F40C0402 F8000150
	s_load_b128 s[24:27], s[4:5], 0x170                        // 0000000751B4: F4080602 F8000170
	s_clause 0x2                                               // 0000000751BC: BF850002
	s_load_b32 s11, s[2:3], null                               // 0000000751C0: F40002C1 F8000000
	s_load_b32 s12, s[2:3], 0x8                                // 0000000751C8: F4000301 F8000008
	s_load_b32 s13, s[2:3], 0x10                               // 0000000751D0: F4000341 F8000010
	s_add_i32 s10, s10, 4                                      // 0000000751D8: 810A840A
	s_waitcnt lgkmcnt(0)                                       // 0000000751DC: BF89FC07
	v_mul_hi_u32 v2, s17, v1                                   // 0000000751E0: D72D0002 00020211
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000751E8: BF870091
	v_add_nc_u32_e32 v2, v1, v2                                // 0000000751EC: 4A040501
	v_lshrrev_b32_e32 v2, s18, v2                              // 0000000751F0: 32040412
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000751F4: BF870001
	v_mul_hi_u32 v3, s20, v2                                   // 0000000751F8: D72D0003 00020414
	v_mul_lo_u32 v6, v2, s16                                   // 000000075200: D72C0006 00002102
	s_load_b32 s16, s[2:3], 0x18                               // 000000075208: F4000401 F8000018
	s_add_u32 s2, s2, 32                                       // 000000075210: 8002A002
	s_addc_u32 s3, s3, 0                                       // 000000075214: 82038003
	s_add_u32 s4, s4, 48                                       // 000000075218: 8004B004
	s_addc_u32 s5, s5, 0                                       // 00000007521C: 82058005
	s_cmp_lg_u32 s8, s10                                       // 000000075220: BF070A08
	v_add_nc_u32_e32 v3, v2, v3                                // 000000075224: 4A060702
	v_sub_nc_u32_e32 v6, v1, v6                                // 000000075228: 4C0C0D01
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007522C: BF870112
	v_lshrrev_b32_e32 v3, s21, v3                              // 000000075230: 32060615
	v_mul_lo_u32 v6, v6, s11                                   // 000000075234: D72C0006 00001706
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 00000007523C: BF870122
	v_mul_hi_u32 v4, s23, v3                                   // 000000075240: D72D0004 00020617
	v_mul_lo_u32 v7, v3, s19                                   // 000000075248: D72C0007 00002703
	v_add_nc_u32_e32 v4, v3, v4                                // 000000075250: 4A080903
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075254: BF870112
	v_sub_nc_u32_e32 v2, v2, v7                                // 000000075258: 4C040F02
	v_lshrrev_b32_e32 v4, s24, v4                              // 00000007525C: 32080818
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075260: BF870112
	v_mul_lo_u32 v2, v2, s12                                   // 000000075264: D72C0002 00001902
	v_mul_hi_u32 v5, s26, v4                                   // 00000007526C: D72D0005 0002081A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075274: BF870112
	v_add3_u32 v0, v6, v0, v2                                  // 000000075278: D6550000 040A0106
	v_add_nc_u32_e32 v5, v4, v5                                // 000000075280: 4A0A0B04
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000075284: BF870121
	v_lshrrev_b32_e32 v1, s27, v5                              // 000000075288: 32020A1B
	v_mul_lo_u32 v5, v4, s22                                   // 00000007528C: D72C0005 00002D04
	v_mul_lo_u32 v8, v1, s25                                   // 000000075294: D72C0008 00003301
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007529C: BF870112
	v_sub_nc_u32_e32 v3, v3, v5                                // 0000000752A0: 4C060B03
	v_sub_nc_u32_e32 v4, v4, v8                                // 0000000752A4: 4C081104
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000752A8: BF870122
	v_mul_lo_u32 v3, v3, s13                                   // 0000000752AC: D72C0003 00001B03
	s_waitcnt lgkmcnt(0)                                       // 0000000752B4: BF89FC07
	v_mul_lo_u32 v4, v4, s16                                   // 0000000752B8: D72C0004 00002104
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000752C0: BF870001
	v_add3_u32 v0, v3, v0, v4                                  // 0000000752C4: D6550000 04120103
	s_cbranch_scc1 65462                                       // 0000000752CC: BFA2FFB6 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xa8>
	s_and_b32 s9, s9, 3                                        // 0000000752D0: 8B098309
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000752D4: BF870009
	s_cmp_eq_u32 s9, 0                                         // 0000000752D8: BF068009
	s_cbranch_scc0 10                                          // 0000000752DC: BFA1000A <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x208>
	s_branch 53                                                // 0000000752E0: BFA00035 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2b8>
	v_mov_b32_e32 v0, 0                                        // 0000000752E4: 7E000280
	s_branch 51                                                // 0000000752E8: BFA00033 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2b8>
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, v40             // 0000000752EC: CA100080 00000128
	s_mov_b32 s8, 0                                            // 0000000752F4: BE880080
	s_and_b32 s9, s9, 3                                        // 0000000752F8: 8B098309
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000752FC: BF870009
	s_cmp_eq_u32 s9, 0                                         // 000000075300: BF068009
	s_cbranch_scc1 44                                          // 000000075304: BFA2002C <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2b8>
	s_lshl_b32 s2, s8, 3                                       // 000000075308: 84028308
	s_mul_i32 s4, s8, 12                                       // 00000007530C: 96048C08
	s_add_u32 s2, s0, s2                                       // 000000075310: 80020200
	s_addc_u32 s3, s1, 0                                       // 000000075314: 82038001
	s_add_u32 s2, s2, 0x214                                    // 000000075318: 8002FF02 00000214
	s_addc_u32 s3, s3, 0                                       // 000000075320: 82038003
	s_add_u32 s4, s0, s4                                       // 000000075324: 80040400
	s_addc_u32 s5, s1, 0                                       // 000000075328: 82058001
	s_nop 0                                                    // 00000007532C: BF800000
	s_nop 0                                                    // 000000075330: BF800000
	s_nop 0                                                    // 000000075334: BF800000
	s_nop 0                                                    // 000000075338: BF800000
	s_nop 0                                                    // 00000007533C: BF800000
	s_clause 0x1                                               // 000000075340: BF850001
	s_load_b64 s[10:11], s[4:5], 0x150                         // 000000075344: F4040282 F8000150
	s_load_b32 s8, s[4:5], 0x158                               // 00000007534C: F4000202 F8000158
	s_waitcnt lgkmcnt(0)                                       // 000000075354: BF89FC07
	v_mul_hi_u32 v2, s11, v1                                   // 000000075358: D72D0002 0002020B
	s_load_b32 s11, s[2:3], null                               // 000000075360: F40002C1 F8000000
	s_add_u32 s2, s2, 8                                        // 000000075368: 80028802
	s_addc_u32 s3, s3, 0                                       // 00000007536C: 82038003
	s_add_u32 s4, s4, 12                                       // 000000075370: 80048C04
	s_addc_u32 s5, s5, 0                                       // 000000075374: 82058005
	s_add_i32 s9, s9, -1                                       // 000000075378: 8109C109
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 00000007537C: BF8700A9
	s_cmp_lg_u32 s9, 0                                         // 000000075380: BF078009
	v_add_nc_u32_e32 v2, v1, v2                                // 000000075384: 4A040501
	v_lshrrev_b32_e32 v4, s8, v2                               // 000000075388: 32080408
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007538C: BF870091
	v_mul_lo_u32 v2, v4, s10                                   // 000000075390: D72C0002 00001504
	v_sub_nc_u32_e32 v1, v1, v2                                // 000000075398: 4C020501
	s_waitcnt lgkmcnt(0)                                       // 00000007539C: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000753A0: BF870091
	v_mad_u64_u32 v[2:3], null, v1, s11, v[0:1]                // 0000000753A4: D6FE7C02 04001701
	v_dual_mov_b32 v1, v4 :: v_dual_mov_b32 v0, v2             // 0000000753AC: CA100104 01000102
	s_cbranch_scc1 65506                                       // 0000000753B4: BFA2FFE2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x240>
	s_and_not1_b32 vcc_lo, exec_lo, s7                         // 0000000753B8: 916A077E
	s_cbranch_vccnz 39                                         // 0000000753BC: BFA40027 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x35c>
	s_clause 0x1                                               // 0000000753C0: BF850001
	s_load_b128 s[8:11], s[0:1], 0x150                         // 0000000753C4: F4080200 F8000150
	s_load_b32 s2, s[0:1], 0x214                               // 0000000753CC: F4000080 F8000214
	s_cmp_lt_u32 s6, 2                                         // 0000000753D4: BF0A8206
	s_waitcnt lgkmcnt(0)                                       // 0000000753D8: BF89FC07
	v_mul_hi_u32 v0, s9, v40                                   // 0000000753DC: D72D0000 00025009
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000753E4: BF870091
	v_add_nc_u32_e32 v0, v40, v0                               // 0000000753E8: 4A000128
	v_lshrrev_b32_e32 v1, s10, v0                              // 0000000753EC: 3202000A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000753F0: BF870091
	v_mul_lo_u32 v0, v1, s8                                    // 0000000753F4: D72C0000 00001101
	v_sub_nc_u32_e32 v0, v40, v0                               // 0000000753FC: 4C000128
	s_delay_alu instid0(VALU_DEP_1)                            // 000000075400: BF870001
	v_mul_lo_u32 v0, v0, s2                                    // 000000075404: D72C0000 00000500
	s_cbranch_scc1 19                                          // 00000007540C: BFA20013 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x35c>
	s_clause 0x1                                               // 000000075410: BF850001
	s_load_b128 s[4:7], s[0:1], 0x15c                          // 000000075414: F4080100 F800015C
	s_load_b32 s2, s[0:1], 0x21c                               // 00000007541C: F4000080 F800021C
	s_waitcnt lgkmcnt(0)                                       // 000000075424: BF89FC07
	v_mul_hi_u32 v2, s5, v1                                    // 000000075428: D72D0002 00020205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075430: BF870091
	v_add_nc_u32_e32 v2, v1, v2                                // 000000075434: 4A040501
	v_lshrrev_b32_e32 v2, s6, v2                               // 000000075438: 32040406
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007543C: BF870091
	v_mul_lo_u32 v2, v2, s4                                    // 000000075440: D72C0002 00000902
	v_sub_nc_u32_e32 v3, v1, v2                                // 000000075448: 4C060501
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007544C: BF870091
	v_mad_u64_u32 v[1:2], null, v3, s2, v[0:1]                 // 000000075450: D6FE7C01 04000503
	v_mov_b32_e32 v0, v1                                       // 000000075458: 7E000301
	s_load_b64 s[44:45], s[0:1], 0xc                           // 00000007545C: F4040B00 F800000C
	v_mul_lo_u32 v16, s36, v25                                 // 000000075464: D72C0010 00023224
	v_mul_lo_u32 v17, s37, v24                                 // 00000007546C: D72C0011 00023025
	s_mul_i32 s52, s38, s15                                    // 000000075474: 96340F26
	s_mov_b32 s3, -1                                           // 000000075478: BE8300C1
	s_mov_b32 s36, 0                                           // 00000007547C: BEA40080
	s_mov_b32 s20, 0                                           // 000000075480: BE940080
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075484: BF870091
	v_add_nc_u32_e32 v1, v17, v16                              // 000000075488: 4A022111
	v_add_nc_u32_e32 v20, s52, v1                              // 00000007548C: 4A280234
	s_waitcnt lgkmcnt(0)                                       // 000000075490: BF89FC07
	v_cmp_gt_u32_e32 vcc_lo, s45, v40                          // 000000075494: 7C98502D
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 000000075498: BF8704A2
	v_cmp_gt_u32_e64 s2, s44, v20                              // 00000007549C: D44C0002 0002282C
	s_and_b32 s2, vcc_lo, s2                                   // 0000000754A4: 8B02026A
	s_and_saveexec_b32 s45, s2                                 // 0000000754A8: BEAD2002
	s_cbranch_execz 2808                                       // 0000000754AC: BFA50AF8 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2f90>
	s_load_b32 s2, s[0:1], 0x40                                // 0000000754B0: F4000080 F8000040
	s_waitcnt lgkmcnt(0)                                       // 0000000754B8: BF89FC07
	s_bitcmp0_b32 s2, 0                                        // 0000000754BC: BF0C8002
	s_cbranch_scc0 894                                         // 0000000754C0: BFA1037E <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x11bc>
	s_clause 0x4                                               // 0000000754C4: BF850004
	s_load_b32 s53, s[0:1], 0x10c                              // 0000000754C8: F4000D40 F800010C
	s_load_b32 s54, s[0:1], 0x48                               // 0000000754D0: F4000D80 F8000048
	s_load_b32 s48, s[0:1], 0x14                               // 0000000754D8: F4000C00 F8000014
	s_load_b64 s[4:5], s[0:1], 0x290                           // 0000000754E0: F4040100 F8000290
	s_load_b32 s50, s[0:1], 0x4                                // 0000000754E8: F4000C80 F8000004
	s_add_u32 s38, s0, 0x10c                                   // 0000000754F0: 8026FF00 0000010C
	s_addc_u32 s39, s1, 0                                      // 0000000754F8: 82278001
	s_waitcnt lgkmcnt(0)                                       // 0000000754FC: BF89FC07
	s_lshr_b32 s51, s53, 2                                     // 000000075500: 85338235
	s_cmp_lg_u32 s54, 1                                        // 000000075504: BF078136
	s_mul_i32 s49, s48, 3                                      // 000000075508: 96318330
	s_cselect_b32 s3, -1, 0                                    // 00000007550C: 980380C1
	s_cmp_eq_u32 s54, 1                                        // 000000075510: BF068136
	v_add_nc_u32_e32 v21, s49, v20                             // 000000075514: 4A2A2831
	s_cselect_b32 s2, -1, 0                                    // 000000075518: 980280C1
	s_cmp_eq_u32 s51, 1                                        // 00000007551C: BF068133
	s_cselect_b32 s6, -1, 0                                    // 000000075520: 980680C1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000075524: BF8700A9
	s_and_b32 s6, s2, s6                                       // 000000075528: 8B060602
	v_add_co_u32 v18, s2, s4, v0                               // 00000007552C: D7000212 00020004
	v_add_co_ci_u32_e64 v19, null, s5, 0, s2                   // 000000075534: D5207C13 00090005
	v_cmp_gt_u32_e64 s2, s44, v21                              // 00000007553C: D44C0002 00022A2C
	s_and_not1_b32 vcc_lo, exec_lo, s6                         // 000000075544: 916A067E
	s_cbranch_vccz 862                                         // 000000075548: BFA3035E <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x11c4>
	s_and_b32 vcc_lo, exec_lo, s3                              // 00000007554C: 8B6A037E
	s_cbranch_vccz 861                                         // 000000075550: BFA3035D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x11c8>
	v_dual_mov_b32 v34, s50 :: v_dual_mov_b32 v37, s50         // 000000075554: CA100032 22240032
	v_dual_mov_b32 v42, v20 :: v_dual_mov_b32 v35, s50         // 00000007555C: CA100114 2A220032
	v_dual_mov_b32 v32, s50 :: v_dual_mov_b32 v39, s50         // 000000075564: CA100032 20260032
	v_dual_mov_b32 v38, s50 :: v_dual_mov_b32 v33, s50         // 00000007556C: CA100032 26200032
	v_dual_mov_b32 v36, s50 :: v_dual_mov_b32 v31, s50         // 000000075574: CA100032 241E0032
	v_dual_mov_b32 v30, s50 :: v_dual_mov_b32 v29, s50         // 00000007557C: CA100032 1E1C0032
	v_dual_mov_b32 v28, s50 :: v_dual_mov_b32 v27, s50         // 000000075584: CA100032 1C1A0032
	v_dual_mov_b32 v26, s50 :: v_dual_mov_b32 v23, s50         // 00000007558C: CA100032 1A160032
	v_mov_b32_e32 v22, s50                                     // 000000075594: 7E2C0232
	s_and_saveexec_b32 s55, s2                                 // 000000075598: BEB72002
	s_cbranch_execz 845                                        // 00000007559C: BFA5034D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x11d4>
	s_clause 0x2                                               // 0000000755A0: BF850002
	s_load_b128 s[40:43], s[0:1], 0x4c                         // 0000000755A4: F4080A00 F800004C
	s_load_b64 s[46:47], s[0:1], 0x5c                          // 0000000755AC: F4040B80 F800005C
	s_load_b32 s56, s[0:1], 0x110                              // 0000000755B4: F4000E00 F8000110
	v_sub_co_u32 v0, s3, s54, 1                                // 0000000755BC: D7010300 00010236
	s_xor_b32 s57, s3, -1                                      // 0000000755C4: 8D39C103
	v_dual_mov_b32 v22, s50 :: v_dual_mov_b32 v23, s50         // 0000000755C8: CA100032 16160032
	v_readfirstlane_b32 s4, v0                                 // 0000000755D0: 7E080500
	v_cndmask_b32_e64 v41, 0, 1, s57                           // 0000000755D4: D5010029 00E50280
	v_cmp_ne_u32_e64 s3, 2, v0                                 // 0000000755DC: D44D0003 00020082
	v_dual_mov_b32 v26, s50 :: v_dual_mov_b32 v27, s50         // 0000000755E4: CA100032 1A1A0032
	s_min_u32 s4, s4, 15                                       // 0000000755EC: 89848F04
	v_dual_mov_b32 v28, s50 :: v_dual_mov_b32 v29, s50         // 0000000755F0: CA100032 1C1C0032
	s_add_i32 s4, s4, 1                                        // 0000000755F8: 81048104
	v_dual_mov_b32 v30, s50 :: v_dual_mov_b32 v31, s50         // 0000000755FC: CA100032 1E1E0032
	s_and_b32 s58, s4, 3                                       // 000000075604: 8B3A8304
	s_and_b32 s59, s4, 28                                      // 000000075608: 8B3B9C04
	v_cmp_lt_u32_e64 s4, 1, v0                                 // 00000007560C: D4490004 00020081
	v_dual_mov_b32 v33, s50 :: v_dual_mov_b32 v36, s50         // 000000075614: CA100032 21240032
	v_dual_mov_b32 v38, s50 :: v_dual_mov_b32 v39, s50         // 00000007561C: CA100032 26260032
	v_dual_mov_b32 v32, s50 :: v_dual_mov_b32 v35, s50         // 000000075624: CA100032 20220032
	v_dual_mov_b32 v37, s50 :: v_dual_mov_b32 v34, s50         // 00000007562C: CA100032 25220032
	v_mov_b32_e32 v42, v20                                     // 000000075634: 7E540314
	s_cmp_lg_u32 s58, 0                                        // 000000075638: BF07803A
	s_mov_b32 s61, 0                                           // 00000007563C: BEBD0080
	s_cselect_b32 s60, -1, 0                                   // 000000075640: 983C80C1
	s_branch 115                                               // 000000075644: BFA00073 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x714>
	s_delay_alu instid0(VALU_DEP_1)                            // 000000075648: BF870001
	v_and_b32_e32 v8, -16, v8                                  // 00000007564C: 361010D0
	s_waitcnt vmcnt(2)                                         // 000000075650: BF890BF7
	v_cmp_gt_f32_e64 s5, v34, v12                              // 000000075654: D4140005 00021922
	v_cmp_u_f32_e64 s6, v37, v37                               // 00000007565C: D4180006 00024B25
	v_cmp_gt_f32_e64 s7, v37, v13                              // 000000075664: D4140007 00021B25
	v_cmp_u_f32_e64 s8, v35, v35                               // 00000007566C: D4180008 00024723
	v_add_co_u32 v8, vcc_lo, v18, v8                           // 000000075674: D7006A08 00021112
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007567C: BF870001
	v_add_co_ci_u32_e64 v9, null, 0, v19, vcc_lo               // 000000075680: D5207C09 01AA2680
	v_cmp_u_f32_e32 vcc_lo, v34, v34                           // 000000075688: 7C304522
	v_cmp_gt_f32_e64 s9, v35, v14                              // 00000007568C: D4140009 00021D23
	v_cmp_u_f32_e64 s10, v32, v32                              // 000000075694: D418000A 00024120
	global_load_b128 v[8:11], v[8:9], off                      // 00000007569C: DC5E0000 087C0008
	v_cmp_gt_f32_e64 s11, v32, v15                             // 0000000756A4: D414000B 00021F20
	s_or_b32 vcc_lo, vcc_lo, s5                                // 0000000756AC: 8C6A056A
	v_cmp_u_f32_e64 s12, v39, v39                              // 0000000756B0: D418000C 00024F27
	v_cndmask_b32_e32 v34, v12, v34, vcc_lo                    // 0000000756B8: 0244450C
	s_or_b32 vcc_lo, s6, s7                                    // 0000000756BC: 8C6A0706
	s_waitcnt vmcnt(2)                                         // 0000000756C0: BF890BF7
	v_cmp_gt_f32_e64 s13, v39, v0                              // 0000000756C4: D414000D 00020127
	v_cndmask_b32_e32 v37, v13, v37, vcc_lo                    // 0000000756CC: 024A4B0D
	s_or_b32 vcc_lo, s8, s9                                    // 0000000756D0: 8C6A0908
	v_cmp_u_f32_e64 s16, v38, v38                              // 0000000756D4: D4180010 00024D26
	v_cmp_gt_f32_e64 s17, v38, v1                              // 0000000756DC: D4140011 00020326
	v_dual_cndmask_b32 v35, v14, v35 :: v_dual_add_nc_u32 v42, s48, v42// 0000000756E4: CA60470E 232A5430
	s_or_b32 vcc_lo, s10, s11                                  // 0000000756EC: 8C6A0B0A
	v_cmp_u_f32_e64 s18, v36, v36                              // 0000000756F0: D4180012 00024924
	v_cmp_gt_f32_e64 s19, v36, v2                              // 0000000756F8: D4140013 00020524
	v_cndmask_b32_e32 v32, v15, v32, vcc_lo                    // 000000075700: 0240410F
	s_or_b32 vcc_lo, s12, s13                                  // 000000075704: 8C6A0D0C
	v_cmp_u_f32_e64 s20, v33, v33                              // 000000075708: D4180014 00024321
	v_cmp_gt_f32_e64 s21, v33, v3                              // 000000075710: D4140015 00020721
	v_cndmask_b32_e32 v39, v0, v39, vcc_lo                     // 000000075718: 024E4F00
	s_or_b32 vcc_lo, s16, s17                                  // 00000007571C: 8C6A1110
	v_cmp_u_f32_e64 s22, v31, v31                              // 000000075720: D4180016 00023F1F
	s_waitcnt vmcnt(1)                                         // 000000075728: BF8907F7
	v_cmp_gt_f32_e64 s23, v31, v4                              // 00000007572C: D4140017 0002091F
	v_cndmask_b32_e32 v38, v1, v38, vcc_lo                     // 000000075734: 024C4D01
	s_or_b32 vcc_lo, s18, s19                                  // 000000075738: 8C6A1312
	v_cmp_u_f32_e64 s24, v30, v30                              // 00000007573C: D4180018 00023D1E
	v_cmp_gt_f32_e64 s25, v30, v5                              // 000000075744: D4140019 00020B1E
	v_cndmask_b32_e32 v36, v2, v36, vcc_lo                     // 00000007574C: 02484902
	s_or_b32 vcc_lo, s20, s21                                  // 000000075750: 8C6A1514
	v_cmp_u_f32_e64 s26, v29, v29                              // 000000075754: D418001A 00023B1D
	v_cmp_gt_f32_e64 s27, v29, v6                              // 00000007575C: D414001B 00020D1D
	v_cndmask_b32_e32 v33, v3, v33, vcc_lo                     // 000000075764: 02424303
	s_or_b32 vcc_lo, s22, s23                                  // 000000075768: 8C6A1716
	v_cmp_u_f32_e64 s28, v28, v28                              // 00000007576C: D418001C 0002391C
	v_cmp_gt_f32_e64 s29, v28, v7                              // 000000075774: D414001D 00020F1C
	v_cndmask_b32_e32 v31, v4, v31, vcc_lo                     // 00000007577C: 023E3F04
	s_or_b32 vcc_lo, s24, s25                                  // 000000075780: 8C6A1918
	v_cmp_u_f32_e64 s30, v27, v27                              // 000000075784: D418001E 0002371B
	v_cndmask_b32_e32 v30, v5, v30, vcc_lo                     // 00000007578C: 023C3D05
	s_or_b32 vcc_lo, s26, s27                                  // 000000075790: 8C6A1B1A
	v_cmp_u_f32_e64 s31, v26, v26                              // 000000075794: D418001F 0002351A
	v_cndmask_b32_e32 v29, v6, v29, vcc_lo                     // 00000007579C: 023A3B06
	s_or_b32 vcc_lo, s28, s29                                  // 0000000757A0: 8C6A1D1C
	v_cmp_u_f32_e64 s33, v23, v23                              // 0000000757A4: D4180021 00022F17
	v_cndmask_b32_e32 v28, v7, v28, vcc_lo                     // 0000000757AC: 02383907
	v_cmp_u_f32_e64 s34, v22, v22                              // 0000000757B0: D4180022 00022D16
	s_waitcnt vmcnt(0)                                         // 0000000757B8: BF8903F7
	v_cmp_gt_f32_e32 vcc_lo, v27, v8                           // 0000000757BC: 7C28111B
	v_cmp_gt_f32_e64 s6, v26, v9                               // 0000000757C0: D4140006 0002131A
	v_cmp_gt_f32_e64 s7, v23, v10                              // 0000000757C8: D4140007 00021517
	v_cmp_gt_f32_e64 s8, v22, v11                              // 0000000757D0: D4140008 00021716
	s_or_b32 vcc_lo, s30, vcc_lo                               // 0000000757D8: 8C6A6A1E
	v_cndmask_b32_e32 v27, v8, v27, vcc_lo                     // 0000000757DC: 02363708
	s_or_b32 vcc_lo, s31, s6                                   // 0000000757E0: 8C6A061F
	v_cndmask_b32_e32 v26, v9, v26, vcc_lo                     // 0000000757E4: 02343509
	s_or_b32 vcc_lo, s33, s7                                   // 0000000757E8: 8C6A0721
	v_dual_cndmask_b32 v23, v10, v23 :: v_dual_add_nc_u32 v12, s49, v42// 0000000757EC: CA602F0A 170C5431
	s_or_b32 vcc_lo, s34, s8                                   // 0000000757F4: 8C6A0822
	v_cndmask_b32_e32 v22, v11, v22, vcc_lo                    // 0000000757F8: 022C2D0B
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 0000000757FC: BF8704A2
	v_cmp_le_u32_e64 s5, s44, v12                              // 000000075800: D44B0005 0002182C
	s_or_b32 s61, s5, s61                                      // 000000075808: 8C3D3D05
	s_and_not1_b32 exec_lo, exec_lo, s61                       // 00000007580C: 917E3D7E
	s_cbranch_execz 687                                        // 000000075810: BFA502AF <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x11d0>
	v_cmp_ne_u32_e64 s5, 1, v41                                // 000000075814: D44D0005 00025281
	s_and_b32 vcc_lo, exec_lo, s4                              // 00000007581C: 8B6A047E
	s_mov_b32 s6, -1                                           // 000000075820: BE8600C1
	s_cbranch_vccz 117                                         // 000000075824: BFA30075 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x8fc>
	v_mov_b32_e32 v0, 0                                        // 000000075828: 7E000280
	s_and_b32 vcc_lo, exec_lo, s5                              // 00000007582C: 8B6A057E
	s_cbranch_vccnz 113                                        // 000000075830: BFA40071 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x8f8>
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, v42             // 000000075834: CA100080 0000012A
	s_mov_b32 s5, 0                                            // 00000007583C: BE850080
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 000000075840: 916A037E
	s_cbranch_vccnz 69                                         // 000000075844: BFA40045 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x85c>
	s_mov_b64 s[6:7], s[0:1]                                   // 000000075848: BE860100
	s_mov_b64 s[8:9], s[38:39]                                 // 00000007584C: BE880126
	s_clause 0x1                                               // 000000075850: BF850001
	s_load_b256 s[16:23], s[6:7], 0x4c                         // 000000075854: F40C0403 F800004C
	s_load_b128 s[24:27], s[6:7], 0x6c                         // 00000007585C: F4080603 F800006C
	s_load_b128 s[28:31], s[8:9], null                         // 000000075864: F4080704 F8000000
	s_add_i32 s5, s5, 4                                        // 00000007586C: 81058405
	s_add_u32 s8, s8, 16                                       // 000000075870: 80089008
	s_addc_u32 s9, s9, 0                                       // 000000075874: 82098009
	s_add_u32 s6, s6, 48                                       // 000000075878: 8006B006
	s_addc_u32 s7, s7, 0                                       // 00000007587C: 82078007
	s_cmp_lg_u32 s59, s5                                       // 000000075880: BF07053B
	s_waitcnt lgkmcnt(0)                                       // 000000075884: BF89FC07
	v_mul_hi_u32 v2, s17, v1                                   // 000000075888: D72D0002 00020211
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075890: BF870091
	v_add_nc_u32_e32 v2, v1, v2                                // 000000075894: 4A040501
	v_lshrrev_b32_e32 v2, s18, v2                              // 000000075898: 32040412
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 00000007589C: BF870121
	v_mul_hi_u32 v3, s20, v2                                   // 0000000758A0: D72D0003 00020414
	v_mul_lo_u32 v6, v2, s16                                   // 0000000758A8: D72C0006 00002102
	v_add_nc_u32_e32 v3, v2, v3                                // 0000000758B0: 4A060702
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000758B4: BF870112
	v_sub_nc_u32_e32 v6, v1, v6                                // 0000000758B8: 4C0C0D01
	v_lshrrev_b32_e32 v3, s21, v3                              // 0000000758BC: 32060615
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000758C0: BF870112
	v_mul_lo_u32 v6, v6, s28                                   // 0000000758C4: D72C0006 00003906
	v_mul_hi_u32 v4, s23, v3                                   // 0000000758CC: D72D0004 00020617
	v_mul_lo_u32 v7, v3, s19                                   // 0000000758D4: D72C0007 00002703
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000758DC: BF870112
	v_add_nc_u32_e32 v4, v3, v4                                // 0000000758E0: 4A080903
	v_sub_nc_u32_e32 v2, v2, v7                                // 0000000758E4: 4C040F02
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000758E8: BF870112
	v_lshrrev_b32_e32 v4, s24, v4                              // 0000000758EC: 32080818
	v_mul_lo_u32 v2, v2, s29                                   // 0000000758F0: D72C0002 00003B02
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000758F8: BF870112
	v_mul_hi_u32 v5, s26, v4                                   // 0000000758FC: D72D0005 0002081A
	v_add3_u32 v0, v6, v0, v2                                  // 000000075904: D6550000 040A0106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007590C: BF870092
	v_add_nc_u32_e32 v5, v4, v5                                // 000000075910: 4A0A0B04
	v_lshrrev_b32_e32 v1, s27, v5                              // 000000075914: 32020A1B
	v_mul_lo_u32 v5, v4, s22                                   // 000000075918: D72C0005 00002D04
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075920: BF870112
	v_mul_lo_u32 v8, v1, s25                                   // 000000075924: D72C0008 00003301
	v_sub_nc_u32_e32 v3, v3, v5                                // 00000007592C: 4C060B03
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075930: BF870112
	v_sub_nc_u32_e32 v4, v4, v8                                // 000000075934: 4C081104
	v_mul_lo_u32 v3, v3, s30                                   // 000000075938: D72C0003 00003D03
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075940: BF870092
	v_mul_lo_u32 v4, v4, s31                                   // 000000075944: D72C0004 00003F04
	v_add3_u32 v0, v3, v0, v4                                  // 00000007594C: D6550000 04120103
	s_cbranch_scc1 65470                                       // 000000075954: BFA2FFBE <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x750>
	s_mov_b32 s5, s59                                          // 000000075958: BE85003B
	s_and_not1_b32 vcc_lo, exec_lo, s60                        // 00000007595C: 916A3C7E
	s_cbranch_vccnz 37                                         // 000000075960: BFA40025 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x8f8>
	s_lshl_b32 s6, s5, 2                                       // 000000075964: 84068205
	s_mul_i32 s5, s5, 12                                       // 000000075968: 96058C05
	s_add_u32 s6, s38, s6                                      // 00000007596C: 80060626
	s_addc_u32 s7, s39, 0                                      // 000000075970: 82078027
	s_add_u32 s8, s0, s5                                       // 000000075974: 80080500
	s_addc_u32 s9, s1, 0                                       // 000000075978: 82098001
	s_mov_b32 s5, s58                                          // 00000007597C: BE85003A
	s_clause 0x1                                               // 000000075980: BF850001
	s_load_b64 s[10:11], s[8:9], 0x4c                          // 000000075984: F4040284 F800004C
	s_load_b32 s12, s[8:9], 0x54                               // 00000007598C: F4000304 F8000054
	s_waitcnt lgkmcnt(0)                                       // 000000075994: BF89FC07
	v_mul_hi_u32 v2, s11, v1                                   // 000000075998: D72D0002 0002020B
	s_load_b32 s11, s[6:7], null                               // 0000000759A0: F40002C3 F8000000
	s_add_u32 s6, s6, 4                                        // 0000000759A8: 80068406
	s_addc_u32 s7, s7, 0                                       // 0000000759AC: 82078007
	s_add_u32 s8, s8, 12                                       // 0000000759B0: 80088C08
	s_addc_u32 s9, s9, 0                                       // 0000000759B4: 82098009
	s_add_i32 s5, s5, -1                                       // 0000000759B8: 8105C105
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000759BC: BF8700A9
	s_cmp_lg_u32 s5, 0                                         // 0000000759C0: BF078005
	v_add_nc_u32_e32 v2, v1, v2                                // 0000000759C4: 4A040501
	v_lshrrev_b32_e32 v4, s12, v2                              // 0000000759C8: 3208040C
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000759CC: BF870091
	v_mul_lo_u32 v2, v4, s10                                   // 0000000759D0: D72C0002 00001504
	v_sub_nc_u32_e32 v1, v1, v2                                // 0000000759D8: 4C020501
	s_waitcnt lgkmcnt(0)                                       // 0000000759DC: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000759E0: BF870091
	v_mad_u64_u32 v[2:3], null, v1, s11, v[0:1]                // 0000000759E4: D6FE7C02 04001701
	v_dual_mov_b32 v1, v4 :: v_dual_mov_b32 v0, v2             // 0000000759EC: CA100104 01000102
	s_cbranch_scc1 65506                                       // 0000000759F4: BFA2FFE2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x880>
	s_mov_b32 s6, 0                                            // 0000000759F8: BE860080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000759FC: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s6                         // 000000075A00: 916A067E
	s_cbranch_vccnz 28                                         // 000000075A04: BFA4001C <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x978>
	s_waitcnt lgkmcnt(0)                                       // 000000075A08: BF89FC07
	v_mul_hi_u32 v0, v42, s41                                  // 000000075A0C: D72D0000 0000532A
	s_and_not1_b32 vcc_lo, exec_lo, s57                        // 000000075A14: 916A397E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075A18: BF870091
	v_add_nc_u32_e32 v0, v42, v0                               // 000000075A1C: 4A00012A
	v_lshrrev_b32_e32 v1, s42, v0                              // 000000075A20: 3202002A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075A24: BF870091
	v_mul_lo_u32 v0, v1, s40                                   // 000000075A28: D72C0000 00005101
	v_sub_nc_u32_e32 v0, v42, v0                               // 000000075A30: 4C00012A
	s_delay_alu instid0(VALU_DEP_1)                            // 000000075A34: BF870001
	v_mul_lo_u32 v0, v0, s53                                   // 000000075A38: D72C0000 00006B00
	s_cbranch_vccnz 13                                         // 000000075A40: BFA4000D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x978>
	v_mul_hi_u32 v2, v1, s46                                   // 000000075A44: D72D0002 00005D01
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075A4C: BF870091
	v_add_nc_u32_e32 v2, v1, v2                                // 000000075A50: 4A040501
	v_lshrrev_b32_e32 v2, s47, v2                              // 000000075A54: 3204042F
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075A58: BF870091
	v_mul_lo_u32 v2, v2, s43                                   // 000000075A5C: D72C0002 00005702
	v_sub_nc_u32_e32 v3, v1, v2                                // 000000075A64: 4C060501
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075A68: BF870091
	v_mad_u64_u32 v[1:2], null, v3, s56, v[0:1]                // 000000075A6C: D6FE7C01 04007103
	v_mov_b32_e32 v0, v1                                       // 000000075A74: 7E000301
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 000000075A78: BF870131
	v_and_b32_e32 v0, -16, v0                                  // 000000075A7C: 360000D0
	v_add_nc_u32_e32 v4, s48, v42                              // 000000075A80: 4A085430
	s_mov_b32 s5, -1                                           // 000000075A84: BE8500C1
	v_add_co_u32 v0, vcc_lo, v18, v0                           // 000000075A88: D7006A00 00020112
	s_delay_alu instid0(VALU_DEP_1)                            // 000000075A90: BF870001
	v_add_co_ci_u32_e64 v1, null, 0, v19, vcc_lo               // 000000075A94: D5207C01 01AA2680
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 000000075A9C: 916A047E
	global_load_b128 v[12:15], v[0:1], off                     // 000000075AA0: DC5E0000 0C7C0000
	s_cbranch_vccnz 132                                        // 000000075AA8: BFA40084 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xbbc>
	v_mov_b32_e32 v0, 0                                        // 000000075AAC: 7E000280
	s_and_not1_b32 vcc_lo, exec_lo, s57                        // 000000075AB0: 916A397E
	s_cbranch_vccnz 128                                        // 000000075AB4: BFA40080 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xbb8>
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, v4              // 000000075AB8: CA100080 00000104
	s_mov_b32 s5, 0                                            // 000000075AC0: BE850080
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 000000075AC4: 916A037E
	s_cbranch_vccnz 69                                         // 000000075AC8: BFA40045 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xae0>
	s_mov_b64 s[6:7], s[0:1]                                   // 000000075ACC: BE860100
	s_mov_b64 s[8:9], s[38:39]                                 // 000000075AD0: BE880126
	s_clause 0x1                                               // 000000075AD4: BF850001
	s_load_b256 s[16:23], s[6:7], 0x4c                         // 000000075AD8: F40C0403 F800004C
	s_load_b128 s[24:27], s[6:7], 0x6c                         // 000000075AE0: F4080603 F800006C
	s_load_b128 s[28:31], s[8:9], null                         // 000000075AE8: F4080704 F8000000
	s_add_i32 s5, s5, 4                                        // 000000075AF0: 81058405
	s_add_u32 s8, s8, 16                                       // 000000075AF4: 80089008
	s_addc_u32 s9, s9, 0                                       // 000000075AF8: 82098009
	s_add_u32 s6, s6, 48                                       // 000000075AFC: 8006B006
	s_addc_u32 s7, s7, 0                                       // 000000075B00: 82078007
	s_cmp_eq_u32 s59, s5                                       // 000000075B04: BF06053B
	s_waitcnt lgkmcnt(0)                                       // 000000075B08: BF89FC07
	v_mul_hi_u32 v2, s17, v1                                   // 000000075B0C: D72D0002 00020211
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075B14: BF870091
	v_add_nc_u32_e32 v2, v1, v2                                // 000000075B18: 4A040501
	v_lshrrev_b32_e32 v2, s18, v2                              // 000000075B1C: 32040412
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000075B20: BF870121
	v_mul_hi_u32 v3, s20, v2                                   // 000000075B24: D72D0003 00020414
	v_mul_lo_u32 v7, v2, s16                                   // 000000075B2C: D72C0007 00002102
	v_add_nc_u32_e32 v3, v2, v3                                // 000000075B34: 4A060702
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075B38: BF870112
	v_sub_nc_u32_e32 v7, v1, v7                                // 000000075B3C: 4C0E0F01
	v_lshrrev_b32_e32 v3, s21, v3                              // 000000075B40: 32060615
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075B44: BF870112
	v_mul_lo_u32 v7, v7, s28                                   // 000000075B48: D72C0007 00003907
	v_mul_hi_u32 v5, s23, v3                                   // 000000075B50: D72D0005 00020617
	v_mul_lo_u32 v8, v3, s19                                   // 000000075B58: D72C0008 00002703
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075B60: BF870112
	v_add_nc_u32_e32 v5, v3, v5                                // 000000075B64: 4A0A0B03
	v_sub_nc_u32_e32 v2, v2, v8                                // 000000075B68: 4C041102
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075B6C: BF870112
	v_lshrrev_b32_e32 v5, s24, v5                              // 000000075B70: 320A0A18
	v_mul_lo_u32 v2, v2, s29                                   // 000000075B74: D72C0002 00003B02
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075B7C: BF870112
	v_mul_hi_u32 v6, s26, v5                                   // 000000075B80: D72D0006 00020A1A
	v_add3_u32 v0, v7, v0, v2                                  // 000000075B88: D6550000 040A0107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075B90: BF870092
	v_add_nc_u32_e32 v6, v5, v6                                // 000000075B94: 4A0C0D05
	v_lshrrev_b32_e32 v1, s27, v6                              // 000000075B98: 32020C1B
	v_mul_lo_u32 v6, v5, s22                                   // 000000075B9C: D72C0006 00002D05
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075BA4: BF870112
	v_mul_lo_u32 v9, v1, s25                                   // 000000075BA8: D72C0009 00003301
	v_sub_nc_u32_e32 v3, v3, v6                                // 000000075BB0: 4C060D03
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075BB4: BF870112
	v_sub_nc_u32_e32 v5, v5, v9                                // 000000075BB8: 4C0A1305
	v_mul_lo_u32 v3, v3, s30                                   // 000000075BBC: D72C0003 00003D03
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075BC4: BF870092
	v_mul_lo_u32 v5, v5, s31                                   // 000000075BC8: D72C0005 00003F05
	v_add3_u32 v0, v3, v0, v5                                  // 000000075BD0: D6550000 04160103
	s_cbranch_scc0 65470                                       // 000000075BD8: BFA1FFBE <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x9d4>
	s_mov_b32 s5, s59                                          // 000000075BDC: BE85003B
	s_and_not1_b32 vcc_lo, exec_lo, s60                        // 000000075BE0: 916A3C7E
	s_cbranch_vccnz 52                                         // 000000075BE4: BFA40034 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xbb8>
	s_lshl_b32 s6, s5, 2                                       // 000000075BE8: 84068205
	s_mul_i32 s5, s5, 12                                       // 000000075BEC: 96058C05
	s_add_u32 s6, s38, s6                                      // 000000075BF0: 80060626
	s_addc_u32 s7, s39, 0                                      // 000000075BF4: 82078027
	s_add_u32 s8, s0, s5                                       // 000000075BF8: 80080500
	s_addc_u32 s9, s1, 0                                       // 000000075BFC: 82098001
	s_mov_b32 s5, s58                                          // 000000075C00: BE85003A
	s_nop 0                                                    // 000000075C04: BF800000
	s_nop 0                                                    // 000000075C08: BF800000
	s_nop 0                                                    // 000000075C0C: BF800000
	s_nop 0                                                    // 000000075C10: BF800000
	s_nop 0                                                    // 000000075C14: BF800000
	s_nop 0                                                    // 000000075C18: BF800000
	s_nop 0                                                    // 000000075C1C: BF800000
	s_nop 0                                                    // 000000075C20: BF800000
	s_nop 0                                                    // 000000075C24: BF800000
	s_nop 0                                                    // 000000075C28: BF800000
	s_nop 0                                                    // 000000075C2C: BF800000
	s_nop 0                                                    // 000000075C30: BF800000
	s_nop 0                                                    // 000000075C34: BF800000
	s_nop 0                                                    // 000000075C38: BF800000
	s_nop 0                                                    // 000000075C3C: BF800000
	s_clause 0x1                                               // 000000075C40: BF850001
	s_load_b64 s[10:11], s[8:9], 0x4c                          // 000000075C44: F4040284 F800004C
	s_load_b32 s12, s[8:9], 0x54                               // 000000075C4C: F4000304 F8000054
	s_waitcnt lgkmcnt(0)                                       // 000000075C54: BF89FC07
	v_mul_hi_u32 v2, s11, v1                                   // 000000075C58: D72D0002 0002020B
	s_load_b32 s11, s[6:7], null                               // 000000075C60: F40002C3 F8000000
	s_add_u32 s6, s6, 4                                        // 000000075C68: 80068406
	s_addc_u32 s7, s7, 0                                       // 000000075C6C: 82078007
	s_add_u32 s8, s8, 12                                       // 000000075C70: 80088C08
	s_addc_u32 s9, s9, 0                                       // 000000075C74: 82098009
	s_add_i32 s5, s5, -1                                       // 000000075C78: 8105C105
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000075C7C: BF8700A9
	s_cmp_lg_u32 s5, 0                                         // 000000075C80: BF078005
	v_add_nc_u32_e32 v2, v1, v2                                // 000000075C84: 4A040501
	v_lshrrev_b32_e32 v5, s12, v2                              // 000000075C88: 320A040C
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075C8C: BF870091
	v_mul_lo_u32 v2, v5, s10                                   // 000000075C90: D72C0002 00001505
	v_sub_nc_u32_e32 v1, v1, v2                                // 000000075C98: 4C020501
	s_waitcnt lgkmcnt(0)                                       // 000000075C9C: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075CA0: BF870091
	v_mad_u64_u32 v[2:3], null, v1, s11, v[0:1]                // 000000075CA4: D6FE7C02 04001701
	v_dual_mov_b32 v1, v5 :: v_dual_mov_b32 v0, v2             // 000000075CAC: CA100105 01000102
	s_cbranch_scc1 65506                                       // 000000075CB4: BFA2FFE2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xb40>
	s_mov_b32 s5, 0                                            // 000000075CB8: BE850080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000075CBC: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 000000075CC0: 916A057E
	s_cbranch_vccnz 28                                         // 000000075CC4: BFA4001C <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xc38>
	s_waitcnt lgkmcnt(0)                                       // 000000075CC8: BF89FC07
	v_mul_hi_u32 v0, v4, s41                                   // 000000075CCC: D72D0000 00005304
	s_and_not1_b32 vcc_lo, exec_lo, s57                        // 000000075CD4: 916A397E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075CD8: BF870091
	v_add_nc_u32_e32 v0, v4, v0                                // 000000075CDC: 4A000104
	v_lshrrev_b32_e32 v1, s42, v0                              // 000000075CE0: 3202002A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075CE4: BF870091
	v_mul_lo_u32 v0, v1, s40                                   // 000000075CE8: D72C0000 00005101
	v_sub_nc_u32_e32 v0, v4, v0                                // 000000075CF0: 4C000104
	s_delay_alu instid0(VALU_DEP_1)                            // 000000075CF4: BF870001
	v_mul_lo_u32 v0, v0, s53                                   // 000000075CF8: D72C0000 00006B00
	s_cbranch_vccnz 13                                         // 000000075D00: BFA4000D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xc38>
	v_mul_hi_u32 v2, v1, s46                                   // 000000075D04: D72D0002 00005D01
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075D0C: BF870091
	v_add_nc_u32_e32 v2, v1, v2                                // 000000075D10: 4A040501
	v_lshrrev_b32_e32 v2, s47, v2                              // 000000075D14: 3204042F
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075D18: BF870091
	v_mul_lo_u32 v2, v2, s43                                   // 000000075D1C: D72C0002 00005702
	v_sub_nc_u32_e32 v3, v1, v2                                // 000000075D24: 4C060501
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075D28: BF870091
	v_mad_u64_u32 v[1:2], null, v3, s56, v[0:1]                // 000000075D2C: D6FE7C01 04007103
	v_mov_b32_e32 v0, v1                                       // 000000075D34: 7E000301
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 000000075D38: BF870131
	v_and_b32_e32 v0, -16, v0                                  // 000000075D3C: 360000D0
	v_add_nc_u32_e32 v8, s48, v4                               // 000000075D40: 4A100830
	s_mov_b32 s5, -1                                           // 000000075D44: BE8500C1
	v_add_co_u32 v0, vcc_lo, v18, v0                           // 000000075D48: D7006A00 00020112
	s_delay_alu instid0(VALU_DEP_1)                            // 000000075D50: BF870001
	v_add_co_ci_u32_e64 v1, null, 0, v19, vcc_lo               // 000000075D54: D5207C01 01AA2680
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 000000075D5C: 916A047E
	global_load_b128 v[0:3], v[0:1], off                       // 000000075D60: DC5E0000 007C0000
	s_cbranch_vccnz 132                                        // 000000075D68: BFA40084 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xe7c>
	v_mov_b32_e32 v4, 0                                        // 000000075D6C: 7E080280
	s_and_not1_b32 vcc_lo, exec_lo, s57                        // 000000075D70: 916A397E
	s_cbranch_vccnz 128                                        // 000000075D74: BFA40080 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xe78>
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, v8              // 000000075D78: CA100080 04040108
	s_mov_b32 s5, 0                                            // 000000075D80: BE850080
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 000000075D84: 916A037E
	s_cbranch_vccnz 69                                         // 000000075D88: BFA40045 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xda0>
	s_mov_b64 s[6:7], s[0:1]                                   // 000000075D8C: BE860100
	s_mov_b64 s[8:9], s[38:39]                                 // 000000075D90: BE880126
	s_clause 0x1                                               // 000000075D94: BF850001
	s_load_b256 s[16:23], s[6:7], 0x4c                         // 000000075D98: F40C0403 F800004C
	s_load_b128 s[24:27], s[6:7], 0x6c                         // 000000075DA0: F4080603 F800006C
	s_load_b128 s[28:31], s[8:9], null                         // 000000075DA8: F4080704 F8000000
	s_add_i32 s5, s5, 4                                        // 000000075DB0: 81058405
	s_add_u32 s8, s8, 16                                       // 000000075DB4: 80089008
	s_addc_u32 s9, s9, 0                                       // 000000075DB8: 82098009
	s_add_u32 s6, s6, 48                                       // 000000075DBC: 8006B006
	s_addc_u32 s7, s7, 0                                       // 000000075DC0: 82078007
	s_cmp_eq_u32 s59, s5                                       // 000000075DC4: BF06053B
	s_waitcnt lgkmcnt(0)                                       // 000000075DC8: BF89FC07
	v_mul_hi_u32 v6, s17, v5                                   // 000000075DCC: D72D0006 00020A11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075DD4: BF870091
	v_add_nc_u32_e32 v6, v5, v6                                // 000000075DD8: 4A0C0D05
	v_lshrrev_b32_e32 v6, s18, v6                              // 000000075DDC: 320C0C12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000075DE0: BF870121
	v_mul_hi_u32 v7, s20, v6                                   // 000000075DE4: D72D0007 00020C14
	v_mul_lo_u32 v11, v6, s16                                  // 000000075DEC: D72C000B 00002106
	v_add_nc_u32_e32 v7, v6, v7                                // 000000075DF4: 4A0E0F06
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075DF8: BF870112
	v_sub_nc_u32_e32 v11, v5, v11                              // 000000075DFC: 4C161705
	v_lshrrev_b32_e32 v7, s21, v7                              // 000000075E00: 320E0E15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075E04: BF870112
	v_mul_lo_u32 v11, v11, s28                                 // 000000075E08: D72C000B 0000390B
	v_mul_hi_u32 v9, s23, v7                                   // 000000075E10: D72D0009 00020E17
	v_mul_lo_u32 v42, v7, s19                                  // 000000075E18: D72C002A 00002707
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075E20: BF870112
	v_add_nc_u32_e32 v9, v7, v9                                // 000000075E24: 4A121307
	v_sub_nc_u32_e32 v6, v6, v42                               // 000000075E28: 4C0C5506
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075E2C: BF870112
	v_lshrrev_b32_e32 v9, s24, v9                              // 000000075E30: 32121218
	v_mul_lo_u32 v6, v6, s29                                   // 000000075E34: D72C0006 00003B06
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075E3C: BF870112
	v_mul_hi_u32 v10, s26, v9                                  // 000000075E40: D72D000A 0002121A
	v_add3_u32 v4, v11, v4, v6                                 // 000000075E48: D6550004 041A090B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075E50: BF870092
	v_add_nc_u32_e32 v10, v9, v10                              // 000000075E54: 4A141509
	v_lshrrev_b32_e32 v5, s27, v10                             // 000000075E58: 320A141B
	v_mul_lo_u32 v10, v9, s22                                  // 000000075E5C: D72C000A 00002D09
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075E64: BF870112
	v_mul_lo_u32 v43, v5, s25                                  // 000000075E68: D72C002B 00003305
	v_sub_nc_u32_e32 v7, v7, v10                               // 000000075E70: 4C0E1507
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000075E74: BF870112
	v_sub_nc_u32_e32 v9, v9, v43                               // 000000075E78: 4C125709
	v_mul_lo_u32 v7, v7, s30                                   // 000000075E7C: D72C0007 00003D07
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075E84: BF870092
	v_mul_lo_u32 v9, v9, s31                                   // 000000075E88: D72C0009 00003F09
	v_add3_u32 v4, v7, v4, v9                                  // 000000075E90: D6550004 04260907
	s_cbranch_scc0 65470                                       // 000000075E98: BFA1FFBE <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xc94>
	s_mov_b32 s5, s59                                          // 000000075E9C: BE85003B
	s_and_not1_b32 vcc_lo, exec_lo, s60                        // 000000075EA0: 916A3C7E
	s_cbranch_vccnz 52                                         // 000000075EA4: BFA40034 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xe78>
	s_lshl_b32 s6, s5, 2                                       // 000000075EA8: 84068205
	s_mul_i32 s5, s5, 12                                       // 000000075EAC: 96058C05
	s_add_u32 s6, s38, s6                                      // 000000075EB0: 80060626
	s_addc_u32 s7, s39, 0                                      // 000000075EB4: 82078027
	s_add_u32 s8, s0, s5                                       // 000000075EB8: 80080500
	s_addc_u32 s9, s1, 0                                       // 000000075EBC: 82098001
	s_mov_b32 s5, s58                                          // 000000075EC0: BE85003A
	s_nop 0                                                    // 000000075EC4: BF800000
	s_nop 0                                                    // 000000075EC8: BF800000
	s_nop 0                                                    // 000000075ECC: BF800000
	s_nop 0                                                    // 000000075ED0: BF800000
	s_nop 0                                                    // 000000075ED4: BF800000
	s_nop 0                                                    // 000000075ED8: BF800000
	s_nop 0                                                    // 000000075EDC: BF800000
	s_nop 0                                                    // 000000075EE0: BF800000
	s_nop 0                                                    // 000000075EE4: BF800000
	s_nop 0                                                    // 000000075EE8: BF800000
	s_nop 0                                                    // 000000075EEC: BF800000
	s_nop 0                                                    // 000000075EF0: BF800000
	s_nop 0                                                    // 000000075EF4: BF800000
	s_nop 0                                                    // 000000075EF8: BF800000
	s_nop 0                                                    // 000000075EFC: BF800000
	s_clause 0x1                                               // 000000075F00: BF850001
	s_load_b64 s[10:11], s[8:9], 0x4c                          // 000000075F04: F4040284 F800004C
	s_load_b32 s12, s[8:9], 0x54                               // 000000075F0C: F4000304 F8000054
	s_waitcnt lgkmcnt(0)                                       // 000000075F14: BF89FC07
	v_mul_hi_u32 v6, s11, v5                                   // 000000075F18: D72D0006 00020A0B
	s_load_b32 s11, s[6:7], null                               // 000000075F20: F40002C3 F8000000
	s_add_u32 s6, s6, 4                                        // 000000075F28: 80068406
	s_addc_u32 s7, s7, 0                                       // 000000075F2C: 82078007
	s_add_u32 s8, s8, 12                                       // 000000075F30: 80088C08
	s_addc_u32 s9, s9, 0                                       // 000000075F34: 82098009
	s_add_i32 s5, s5, -1                                       // 000000075F38: 8105C105
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000075F3C: BF8700A9
	s_cmp_lg_u32 s5, 0                                         // 000000075F40: BF078005
	v_add_nc_u32_e32 v6, v5, v6                                // 000000075F44: 4A0C0D05
	v_lshrrev_b32_e32 v9, s12, v6                              // 000000075F48: 32120C0C
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075F4C: BF870091
	v_mul_lo_u32 v6, v9, s10                                   // 000000075F50: D72C0006 00001509
	v_sub_nc_u32_e32 v5, v5, v6                                // 000000075F58: 4C0A0D05
	s_waitcnt lgkmcnt(0)                                       // 000000075F5C: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075F60: BF870091
	v_mad_u64_u32 v[6:7], null, v5, s11, v[4:5]                // 000000075F64: D6FE7C06 04101705
	v_dual_mov_b32 v5, v9 :: v_dual_mov_b32 v4, v6             // 000000075F6C: CA100109 05040106
	s_cbranch_scc1 65506                                       // 000000075F74: BFA2FFE2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xe00>
	s_mov_b32 s5, 0                                            // 000000075F78: BE850080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000075F7C: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 000000075F80: 916A057E
	s_cbranch_vccnz 28                                         // 000000075F84: BFA4001C <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xef8>
	s_waitcnt lgkmcnt(0)                                       // 000000075F88: BF89FC07
	v_mul_hi_u32 v4, v8, s41                                   // 000000075F8C: D72D0004 00005308
	s_and_not1_b32 vcc_lo, exec_lo, s57                        // 000000075F94: 916A397E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075F98: BF870091
	v_add_nc_u32_e32 v4, v8, v4                                // 000000075F9C: 4A080908
	v_lshrrev_b32_e32 v5, s42, v4                              // 000000075FA0: 320A082A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075FA4: BF870091
	v_mul_lo_u32 v4, v5, s40                                   // 000000075FA8: D72C0004 00005105
	v_sub_nc_u32_e32 v4, v8, v4                                // 000000075FB0: 4C080908
	s_delay_alu instid0(VALU_DEP_1)                            // 000000075FB4: BF870001
	v_mul_lo_u32 v4, v4, s53                                   // 000000075FB8: D72C0004 00006B04
	s_cbranch_vccnz 13                                         // 000000075FC0: BFA4000D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xef8>
	v_mul_hi_u32 v6, v5, s46                                   // 000000075FC4: D72D0006 00005D05
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075FCC: BF870091
	v_add_nc_u32_e32 v6, v5, v6                                // 000000075FD0: 4A0C0D05
	v_lshrrev_b32_e32 v6, s47, v6                              // 000000075FD4: 320C0C2F
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075FD8: BF870091
	v_mul_lo_u32 v6, v6, s43                                   // 000000075FDC: D72C0006 00005706
	v_sub_nc_u32_e32 v7, v5, v6                                // 000000075FE4: 4C0E0D05
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000075FE8: BF870091
	v_mad_u64_u32 v[5:6], null, v7, s56, v[4:5]                // 000000075FEC: D6FE7C05 04107107
	v_mov_b32_e32 v4, v5                                       // 000000075FF4: 7E080305
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 000000075FF8: BF870131
	v_and_b32_e32 v4, -16, v4                                  // 000000075FFC: 360808D0
	v_add_nc_u32_e32 v42, s48, v8                              // 000000076000: 4A541030
	s_mov_b32 s5, -1                                           // 000000076004: BE8500C1
	v_add_co_u32 v4, vcc_lo, v18, v4                           // 000000076008: D7006A04 00020912
	s_delay_alu instid0(VALU_DEP_1)                            // 000000076010: BF870001
	v_add_co_ci_u32_e64 v5, null, 0, v19, vcc_lo               // 000000076014: D5207C05 01AA2680
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 00000007601C: 916A047E
	global_load_b128 v[4:7], v[4:5], off                       // 000000076020: DC5E0000 047C0004
	s_cbranch_vccnz 132                                        // 000000076028: BFA40084 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x113c>
	v_mov_b32_e32 v8, 0                                        // 00000007602C: 7E100280
	s_and_not1_b32 vcc_lo, exec_lo, s57                        // 000000076030: 916A397E
	s_cbranch_vccnz 128                                        // 000000076034: BFA40080 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1138>
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, v42             // 000000076038: CA100080 0808012A
	s_mov_b32 s5, 0                                            // 000000076040: BE850080
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 000000076044: 916A037E
	s_cbranch_vccnz 69                                         // 000000076048: BFA40045 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1060>
	s_mov_b64 s[6:7], s[0:1]                                   // 00000007604C: BE860100
	s_mov_b64 s[8:9], s[38:39]                                 // 000000076050: BE880126
	s_clause 0x1                                               // 000000076054: BF850001
	s_load_b256 s[16:23], s[6:7], 0x4c                         // 000000076058: F40C0403 F800004C
	s_load_b128 s[24:27], s[6:7], 0x6c                         // 000000076060: F4080603 F800006C
	s_load_b128 s[28:31], s[8:9], null                         // 000000076068: F4080704 F8000000
	s_add_i32 s5, s5, 4                                        // 000000076070: 81058405
	s_add_u32 s8, s8, 16                                       // 000000076074: 80089008
	s_addc_u32 s9, s9, 0                                       // 000000076078: 82098009
	s_add_u32 s6, s6, 48                                       // 00000007607C: 8006B006
	s_addc_u32 s7, s7, 0                                       // 000000076080: 82078007
	s_cmp_eq_u32 s59, s5                                       // 000000076084: BF06053B
	s_waitcnt lgkmcnt(0)                                       // 000000076088: BF89FC07
	v_mul_hi_u32 v10, s17, v9                                  // 00000007608C: D72D000A 00021211
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076094: BF870091
	v_add_nc_u32_e32 v10, v9, v10                              // 000000076098: 4A141509
	v_lshrrev_b32_e32 v10, s18, v10                            // 00000007609C: 32141412
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000760A0: BF870121
	v_mul_hi_u32 v11, s20, v10                                 // 0000000760A4: D72D000B 00021414
	v_mul_lo_u32 v45, v10, s16                                 // 0000000760AC: D72C002D 0000210A
	v_add_nc_u32_e32 v11, v10, v11                             // 0000000760B4: 4A16170A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000760B8: BF870112
	v_sub_nc_u32_e32 v45, v9, v45                              // 0000000760BC: 4C5A5B09
	v_lshrrev_b32_e32 v11, s21, v11                            // 0000000760C0: 32161615
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000760C4: BF870112
	v_mul_lo_u32 v45, v45, s28                                 // 0000000760C8: D72C002D 0000392D
	v_mul_hi_u32 v43, s23, v11                                 // 0000000760D0: D72D002B 00021617
	v_mul_lo_u32 v46, v11, s19                                 // 0000000760D8: D72C002E 0000270B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000760E0: BF870112
	v_add_nc_u32_e32 v43, v11, v43                             // 0000000760E4: 4A56570B
	v_sub_nc_u32_e32 v10, v10, v46                             // 0000000760E8: 4C145D0A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000760EC: BF870112
	v_lshrrev_b32_e32 v43, s24, v43                            // 0000000760F0: 32565618
	v_mul_lo_u32 v10, v10, s29                                 // 0000000760F4: D72C000A 00003B0A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000760FC: BF870112
	v_mul_hi_u32 v44, s26, v43                                 // 000000076100: D72D002C 0002561A
	v_add3_u32 v8, v45, v8, v10                                // 000000076108: D6550008 042A112D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076110: BF870092
	v_add_nc_u32_e32 v44, v43, v44                             // 000000076114: 4A58592B
	v_lshrrev_b32_e32 v9, s27, v44                             // 000000076118: 3212581B
	v_mul_lo_u32 v44, v43, s22                                 // 00000007611C: D72C002C 00002D2B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000076124: BF870112
	v_mul_lo_u32 v47, v9, s25                                  // 000000076128: D72C002F 00003309
	v_sub_nc_u32_e32 v11, v11, v44                             // 000000076130: 4C16590B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000076134: BF870112
	v_sub_nc_u32_e32 v43, v43, v47                             // 000000076138: 4C565F2B
	v_mul_lo_u32 v11, v11, s30                                 // 00000007613C: D72C000B 00003D0B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076144: BF870092
	v_mul_lo_u32 v43, v43, s31                                 // 000000076148: D72C002B 00003F2B
	v_add3_u32 v8, v11, v8, v43                                // 000000076150: D6550008 04AE110B
	s_cbranch_scc0 65470                                       // 000000076158: BFA1FFBE <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0xf54>
	s_mov_b32 s5, s59                                          // 00000007615C: BE85003B
	s_and_not1_b32 vcc_lo, exec_lo, s60                        // 000000076160: 916A3C7E
	s_cbranch_vccnz 52                                         // 000000076164: BFA40034 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1138>
	s_lshl_b32 s6, s5, 2                                       // 000000076168: 84068205
	s_mul_i32 s5, s5, 12                                       // 00000007616C: 96058C05
	s_add_u32 s6, s38, s6                                      // 000000076170: 80060626
	s_addc_u32 s7, s39, 0                                      // 000000076174: 82078027
	s_add_u32 s8, s0, s5                                       // 000000076178: 80080500
	s_addc_u32 s9, s1, 0                                       // 00000007617C: 82098001
	s_mov_b32 s5, s58                                          // 000000076180: BE85003A
	s_nop 0                                                    // 000000076184: BF800000
	s_nop 0                                                    // 000000076188: BF800000
	s_nop 0                                                    // 00000007618C: BF800000
	s_nop 0                                                    // 000000076190: BF800000
	s_nop 0                                                    // 000000076194: BF800000
	s_nop 0                                                    // 000000076198: BF800000
	s_nop 0                                                    // 00000007619C: BF800000
	s_nop 0                                                    // 0000000761A0: BF800000
	s_nop 0                                                    // 0000000761A4: BF800000
	s_nop 0                                                    // 0000000761A8: BF800000
	s_nop 0                                                    // 0000000761AC: BF800000
	s_nop 0                                                    // 0000000761B0: BF800000
	s_nop 0                                                    // 0000000761B4: BF800000
	s_nop 0                                                    // 0000000761B8: BF800000
	s_nop 0                                                    // 0000000761BC: BF800000
	s_clause 0x1                                               // 0000000761C0: BF850001
	s_load_b64 s[10:11], s[8:9], 0x4c                          // 0000000761C4: F4040284 F800004C
	s_load_b32 s12, s[8:9], 0x54                               // 0000000761CC: F4000304 F8000054
	s_waitcnt lgkmcnt(0)                                       // 0000000761D4: BF89FC07
	v_mul_hi_u32 v10, s11, v9                                  // 0000000761D8: D72D000A 0002120B
	s_load_b32 s11, s[6:7], null                               // 0000000761E0: F40002C3 F8000000
	s_add_u32 s6, s6, 4                                        // 0000000761E8: 80068406
	s_addc_u32 s7, s7, 0                                       // 0000000761EC: 82078007
	s_add_u32 s8, s8, 12                                       // 0000000761F0: 80088C08
	s_addc_u32 s9, s9, 0                                       // 0000000761F4: 82098009
	s_add_i32 s5, s5, -1                                       // 0000000761F8: 8105C105
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000761FC: BF8700A9
	s_cmp_lg_u32 s5, 0                                         // 000000076200: BF078005
	v_add_nc_u32_e32 v10, v9, v10                              // 000000076204: 4A141509
	v_lshrrev_b32_e32 v43, s12, v10                            // 000000076208: 3256140C
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007620C: BF870091
	v_mul_lo_u32 v10, v43, s10                                 // 000000076210: D72C000A 0000152B
	v_sub_nc_u32_e32 v9, v9, v10                               // 000000076218: 4C121509
	s_waitcnt lgkmcnt(0)                                       // 00000007621C: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076220: BF870091
	v_mad_u64_u32 v[10:11], null, v9, s11, v[8:9]              // 000000076224: D6FE7C0A 04201709
	v_dual_mov_b32 v9, v43 :: v_dual_mov_b32 v8, v10           // 00000007622C: CA10012B 0908010A
	s_cbranch_scc1 65506                                       // 000000076234: BFA2FFE2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x10c0>
	s_mov_b32 s5, 0                                            // 000000076238: BE850080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007623C: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s5                         // 000000076240: 916A057E
	s_cbranch_vccnz 64768                                      // 000000076244: BFA4FD00 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x548>
	s_waitcnt lgkmcnt(0)                                       // 000000076248: BF89FC07
	v_mul_hi_u32 v8, v42, s41                                  // 00000007624C: D72D0008 0000532A
	s_and_not1_b32 vcc_lo, exec_lo, s57                        // 000000076254: 916A397E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076258: BF870091
	v_add_nc_u32_e32 v8, v42, v8                               // 00000007625C: 4A10112A
	v_lshrrev_b32_e32 v9, s42, v8                              // 000000076260: 3212102A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076264: BF870091
	v_mul_lo_u32 v8, v9, s40                                   // 000000076268: D72C0008 00005109
	v_sub_nc_u32_e32 v8, v42, v8                               // 000000076270: 4C10112A
	s_delay_alu instid0(VALU_DEP_1)                            // 000000076274: BF870001
	v_mul_lo_u32 v8, v8, s53                                   // 000000076278: D72C0008 00006B08
	s_cbranch_vccnz 64753                                      // 000000076280: BFA4FCF1 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x548>
	v_mul_hi_u32 v10, v9, s46                                  // 000000076284: D72D000A 00005D09
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007628C: BF870091
	v_add_nc_u32_e32 v10, v9, v10                              // 000000076290: 4A141509
	v_lshrrev_b32_e32 v10, s47, v10                            // 000000076294: 3214142F
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076298: BF870091
	v_mul_lo_u32 v10, v10, s43                                 // 00000007629C: D72C000A 0000570A
	v_sub_nc_u32_e32 v11, v9, v10                              // 0000000762A4: 4C161509
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000762A8: BF870091
	v_mad_u64_u32 v[9:10], null, v11, s56, v[8:9]              // 0000000762AC: D6FE7C09 0420710B
	v_mov_b32_e32 v8, v9                                       // 0000000762B4: 7E100309
	s_branch 64739                                             // 0000000762B8: BFA0FCE3 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x548>
	s_mov_b32 s2, 0                                            // 0000000762BC: BE820080
	s_branch 1904                                              // 0000000762C0: BFA00770 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2f84>
	s_branch 1440                                              // 0000000762C4: BFA005A0 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2848>
	s_cbranch_execnz 947                                       // 0000000762C8: BFA603B3 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2098>
	s_branch 1437                                              // 0000000762CC: BFA0059D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2844>
	s_or_b32 exec_lo, exec_lo, s61                             // 0000000762D0: 8C7E3D7E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 0000000762D4: BF870499
	s_or_b32 exec_lo, exec_lo, s55                             // 0000000762D8: 8C7E377E
	s_mov_b32 s22, exec_lo                                     // 0000000762DC: BE96007E
	v_cmpx_gt_u32_e64 s44, v42                                 // 0000000762E0: D4CC007E 0002542C
	s_cbranch_execz 867                                        // 0000000762E8: BFA50363 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1f78>
	v_sub_co_u32 v12, s5, s54, 1                               // 0000000762EC: D701050C 00010236
	s_mov_b32 s3, -1                                           // 0000000762F4: BE8300C1
	s_xor_b32 s10, s5, -1                                      // 0000000762F8: 8D0AC105
	v_cmp_lt_u32_e64 s4, 1, v12                                // 0000000762FC: D4490004 00021881
	v_readfirstlane_b32 s11, v12                               // 000000076304: 7E16050C
	s_and_b32 vcc_lo, exec_lo, s4                              // 000000076308: 8B6A047E
	s_min_u32 s12, s11, 15                                     // 00000007630C: 898C8F0B
	s_cbranch_vccz 127                                         // 000000076310: BFA3007F <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1410>
	v_mov_b32_e32 v12, 0                                       // 000000076314: 7E180280
	s_and_not1_b32 vcc_lo, exec_lo, s10                        // 000000076318: 916A0A7E
	s_cbranch_vccnz 123                                        // 00000007631C: BFA4007B <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x140c>
	s_add_i32 s5, s12, 1                                       // 000000076320: 8105810C
	s_cmp_eq_u32 s11, 2                                        // 000000076324: BF06820B
	s_cbranch_scc1 74                                          // 000000076328: BFA2004A <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1354>
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, v42           // 00000007632C: CA100080 0C0C012A
	s_and_b32 s3, s5, 28                                       // 000000076334: 8B039C05
	s_mov_b32 s13, 0                                           // 000000076338: BE8D0080
	s_mov_b64 s[6:7], s[0:1]                                   // 00000007633C: BE860100
	s_mov_b64 s[8:9], s[38:39]                                 // 000000076340: BE880126
	s_clause 0x1                                               // 000000076344: BF850001
	s_load_b256 s[24:31], s[6:7], 0x4c                         // 000000076348: F40C0603 F800004C
	s_load_b128 s[16:19], s[6:7], 0x6c                         // 000000076350: F4080403 F800006C
	s_waitcnt lgkmcnt(0)                                       // 000000076358: BF89FC07
	s_load_b128 s[40:43], s[8:9], null                         // 00000007635C: F4080A04 F8000000
	s_add_i32 s13, s13, 4                                      // 000000076364: 810D840D
	s_add_u32 s8, s8, 16                                       // 000000076368: 80089008
	s_addc_u32 s9, s9, 0                                       // 00000007636C: 82098009
	s_add_u32 s6, s6, 48                                       // 000000076370: 8006B006
	s_addc_u32 s7, s7, 0                                       // 000000076374: 82078007
	s_cmp_lg_u32 s3, s13                                       // 000000076378: BF070D03
	v_mul_hi_u32 v14, s25, v13                                 // 00000007637C: D72D000E 00021A19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076384: BF870091
	v_add_nc_u32_e32 v14, v13, v14                             // 000000076388: 4A1C1D0D
	v_lshrrev_b32_e32 v14, s26, v14                            // 00000007638C: 321C1C1A
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000076390: BF870121
	v_mul_hi_u32 v15, s28, v14                                 // 000000076394: D72D000F 00021C1C
	v_mul_lo_u32 v44, v14, s24                                 // 00000007639C: D72C002C 0000310E
	v_add_nc_u32_e32 v15, v14, v15                             // 0000000763A4: 4A1E1F0E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000763A8: BF870112
	v_sub_nc_u32_e32 v44, v13, v44                             // 0000000763AC: 4C58590D
	v_lshrrev_b32_e32 v15, s29, v15                            // 0000000763B0: 321E1E1D
	s_waitcnt lgkmcnt(0)                                       // 0000000763B4: BF89FC07
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000763B8: BF870112
	v_mul_lo_u32 v44, v44, s40                                 // 0000000763BC: D72C002C 0000512C
	v_mul_hi_u32 v41, s31, v15                                 // 0000000763C4: D72D0029 00021E1F
	v_mul_lo_u32 v45, v15, s27                                 // 0000000763CC: D72C002D 0000370F
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000763D4: BF870112
	v_add_nc_u32_e32 v41, v15, v41                             // 0000000763D8: 4A52530F
	v_sub_nc_u32_e32 v14, v14, v45                             // 0000000763DC: 4C1C5B0E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000763E0: BF870112
	v_lshrrev_b32_e32 v41, s16, v41                            // 0000000763E4: 32525210
	v_mul_lo_u32 v14, v14, s41                                 // 0000000763E8: D72C000E 0000530E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000763F0: BF870112
	v_mul_hi_u32 v43, s18, v41                                 // 0000000763F4: D72D002B 00025212
	v_add3_u32 v12, v44, v12, v14                              // 0000000763FC: D655000C 043A192C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076404: BF870092
	v_add_nc_u32_e32 v43, v41, v43                             // 000000076408: 4A565729
	v_lshrrev_b32_e32 v13, s19, v43                            // 00000007640C: 321A5613
	v_mul_lo_u32 v43, v41, s30                                 // 000000076410: D72C002B 00003D29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000076418: BF870112
	v_mul_lo_u32 v46, v13, s17                                 // 00000007641C: D72C002E 0000230D
	v_sub_nc_u32_e32 v15, v15, v43                             // 000000076424: 4C1E570F
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000076428: BF870112
	v_sub_nc_u32_e32 v41, v41, v46                             // 00000007642C: 4C525D29
	v_mul_lo_u32 v15, v15, s42                                 // 000000076430: D72C000F 0000550F
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076438: BF870092
	v_mul_lo_u32 v41, v41, s43                                 // 00000007643C: D72C0029 00005729
	v_add3_u32 v12, v15, v12, v41                              // 000000076444: D655000C 04A6190F
	s_cbranch_scc1 65469                                       // 00000007644C: BFA2FFBD <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1244>
	s_branch 3                                                 // 000000076450: BFA00003 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1360>
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, v42           // 000000076454: CA100080 0C0C012A
	s_mov_b32 s3, 0                                            // 00000007645C: BE830080
	s_and_b32 s5, s5, 3                                        // 000000076460: 8B058305
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000076464: BF870009
	s_cmp_eq_u32 s5, 0                                         // 000000076468: BF068005
	s_cbranch_scc1 39                                          // 00000007646C: BFA20027 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x140c>
	s_lshl_b32 s6, s3, 2                                       // 000000076470: 84068203
	s_mul_i32 s3, s3, 12                                       // 000000076474: 96038C03
	s_add_u32 s6, s0, s6                                       // 000000076478: 80060600
	s_addc_u32 s7, s1, 0                                       // 00000007647C: 82078001
	s_add_u32 s6, s6, 0x10c                                    // 000000076480: 8006FF06 0000010C
	s_addc_u32 s7, s7, 0                                       // 000000076488: 82078007
	s_add_u32 s8, s0, s3                                       // 00000007648C: 80080300
	s_addc_u32 s9, s1, 0                                       // 000000076490: 82098001
	s_clause 0x1                                               // 000000076494: BF850001
	s_load_b64 s[16:17], s[8:9], 0x4c                          // 000000076498: F4040404 F800004C
	s_load_b32 s3, s[8:9], 0x54                                // 0000000764A0: F40000C4 F8000054
	s_load_b32 s13, s[6:7], null                               // 0000000764A8: F4000343 F8000000
	s_add_u32 s6, s6, 4                                        // 0000000764B0: 80068406
	s_addc_u32 s7, s7, 0                                       // 0000000764B4: 82078007
	s_add_u32 s8, s8, 12                                       // 0000000764B8: 80088C08
	s_addc_u32 s9, s9, 0                                       // 0000000764BC: 82098009
	s_add_i32 s5, s5, -1                                       // 0000000764C0: 8105C105
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 0000000764C4: BF8700B9
	s_cmp_lg_u32 s5, 0                                         // 0000000764C8: BF078005
	s_waitcnt lgkmcnt(0)                                       // 0000000764CC: BF89FC07
	v_mul_hi_u32 v14, s17, v13                                 // 0000000764D0: D72D000E 00021A11
	v_add_nc_u32_e32 v14, v13, v14                             // 0000000764D8: 4A1C1D0D
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000764DC: BF870091
	v_lshrrev_b32_e32 v41, s3, v14                             // 0000000764E0: 32521C03
	v_mul_lo_u32 v14, v41, s16                                 // 0000000764E4: D72C000E 00002129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000764EC: BF870091
	v_sub_nc_u32_e32 v13, v13, v14                             // 0000000764F0: 4C1A1D0D
	v_mad_u64_u32 v[14:15], null, v13, s13, v[12:13]           // 0000000764F4: D6FE7C0E 04301B0D
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000764FC: BF870001
	v_dual_mov_b32 v13, v41 :: v_dual_mov_b32 v12, v14         // 000000076500: CA100129 0D0C010E
	s_cbranch_scc1 65506                                       // 000000076508: BFA2FFE2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1394>
	s_mov_b32 s3, 0                                            // 00000007650C: BE830080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000076510: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 000000076514: 916A037E
	s_cbranch_vccnz 36                                         // 000000076518: BFA40024 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x14ac>
	s_load_b128 s[16:19], s[0:1], 0x4c                         // 00000007651C: F4080400 F800004C
	s_and_not1_b32 vcc_lo, exec_lo, s10                        // 000000076524: 916A0A7E
	s_waitcnt lgkmcnt(0)                                       // 000000076528: BF89FC07
	v_mul_hi_u32 v12, s17, v42                                 // 00000007652C: D72D000C 00025411
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076534: BF870091
	v_add_nc_u32_e32 v12, v42, v12                             // 000000076538: 4A18192A
	v_lshrrev_b32_e32 v13, s18, v12                            // 00000007653C: 321A1812
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076540: BF870091
	v_mul_lo_u32 v12, v13, s16                                 // 000000076544: D72C000C 0000210D
	v_sub_nc_u32_e32 v12, v42, v12                             // 00000007654C: 4C18192A
	s_delay_alu instid0(VALU_DEP_1)                            // 000000076550: BF870001
	v_mul_lo_u32 v12, v12, s53                                 // 000000076554: D72C000C 00006B0C
	s_cbranch_vccnz 19                                         // 00000007655C: BFA40013 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x14ac>
	s_clause 0x1                                               // 000000076560: BF850001
	s_load_b128 s[16:19], s[0:1], 0x58                         // 000000076564: F4080400 F8000058
	s_load_b32 s3, s[0:1], 0x110                               // 00000007656C: F40000C0 F8000110
	s_waitcnt lgkmcnt(0)                                       // 000000076574: BF89FC07
	v_mul_hi_u32 v14, s17, v13                                 // 000000076578: D72D000E 00021A11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076580: BF870091
	v_add_nc_u32_e32 v14, v13, v14                             // 000000076584: 4A1C1D0D
	v_lshrrev_b32_e32 v14, s18, v14                            // 000000076588: 321C1C12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007658C: BF870091
	v_mul_lo_u32 v14, v14, s16                                 // 000000076590: D72C000E 0000210E
	v_sub_nc_u32_e32 v15, v13, v14                             // 000000076598: 4C1E1D0D
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007659C: BF870091
	v_mad_u64_u32 v[13:14], null, v15, s3, v[12:13]            // 0000000765A0: D6FE7C0D 0430070F
	v_mov_b32_e32 v12, v13                                     // 0000000765A8: 7E18030D
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000765AC: BF870121
	v_and_b32_e32 v12, -16, v12                                // 0000000765B0: 361818D0
	v_add_nc_u32_e32 v41, s48, v42                             // 0000000765B4: 4A525430
	v_add_co_u32 v12, vcc_lo, v18, v12                         // 0000000765B8: D7006A0C 00021912
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 0000000765C0: BF870191
	v_add_co_ci_u32_e64 v13, null, 0, v19, vcc_lo              // 0000000765C4: D5207C0D 01AA2680
	v_cmp_gt_u32_e64 s3, s44, v41                              // 0000000765CC: D44C0003 0002522C
	global_load_b128 v[12:15], v[12:13], off                   // 0000000765D4: DC5E0000 0C7C000C
	s_and_saveexec_b32 s8, s3                                  // 0000000765DC: BE882003
	s_cbranch_execz 547                                        // 0000000765E0: BFA50223 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1d70>
	v_cndmask_b32_e64 v42, 0, 1, s4                            // 0000000765E4: D501002A 00110280
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 0000000765EC: 916A047E
	s_cbranch_vccnz 79                                         // 0000000765F0: BFA4004F <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1630>
	v_mov_b32_e32 v0, 0                                        // 0000000765F4: 7E000280
	s_and_not1_b32 vcc_lo, exec_lo, s10                        // 0000000765F8: 916A0A7E
	s_cbranch_vccnz 124                                        // 0000000765FC: BFA4007C <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x16f0>
	s_add_i32 s13, s12, 1                                      // 000000076600: 810D810C
	s_cmp_eq_u32 s11, 2                                        // 000000076604: BF06820B
	s_cbranch_scc1 75                                          // 000000076608: BFA2004B <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1638>
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, v41             // 00000007660C: CA100080 00000129
	s_and_b32 s9, s13, 28                                      // 000000076614: 8B099C0D
	s_mov_b32 s16, 0                                           // 000000076618: BE900080
	s_mov_b64 s[4:5], s[0:1]                                   // 00000007661C: BE840100
	s_mov_b64 s[6:7], s[38:39]                                 // 000000076620: BE860126
	s_load_b256 s[24:31], s[4:5], 0x4c                         // 000000076624: F40C0602 F800004C
	s_waitcnt lgkmcnt(0)                                       // 00000007662C: BF89FC07
	s_load_b128 s[40:43], s[4:5], 0x6c                         // 000000076630: F4080A02 F800006C
	s_load_b128 s[56:59], s[6:7], null                         // 000000076638: F4080E03 F8000000
	s_add_i32 s16, s16, 4                                      // 000000076640: 81108410
	s_add_u32 s6, s6, 16                                       // 000000076644: 80069006
	s_addc_u32 s7, s7, 0                                       // 000000076648: 82078007
	s_add_u32 s4, s4, 48                                       // 00000007664C: 8004B004
	s_addc_u32 s5, s5, 0                                       // 000000076650: 82058005
	s_cmp_eq_u32 s9, s16                                       // 000000076654: BF061009
	v_mul_hi_u32 v2, s25, v1                                   // 000000076658: D72D0002 00020219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076660: BF870091
	v_add_nc_u32_e32 v2, v1, v2                                // 000000076664: 4A040501
	v_lshrrev_b32_e32 v2, s26, v2                              // 000000076668: 3204041A
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 00000007666C: BF870121
	v_mul_hi_u32 v3, s28, v2                                   // 000000076670: D72D0003 0002041C
	v_mul_lo_u32 v45, v2, s24                                  // 000000076678: D72C002D 00003102
	v_add_nc_u32_e32 v3, v2, v3                                // 000000076680: 4A060702
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000076684: BF870112
	v_sub_nc_u32_e32 v45, v1, v45                              // 000000076688: 4C5A5B01
	v_lshrrev_b32_e32 v3, s29, v3                              // 00000007668C: 3206061D
	s_waitcnt lgkmcnt(0)                                       // 000000076690: BF89FC07
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000076694: BF870112
	v_mul_lo_u32 v45, v45, s56                                 // 000000076698: D72C002D 0000712D
	v_mul_hi_u32 v43, s31, v3                                  // 0000000766A0: D72D002B 0002061F
	v_mul_lo_u32 v46, v3, s27                                  // 0000000766A8: D72C002E 00003703
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000766B0: BF870112
	v_add_nc_u32_e32 v43, v3, v43                              // 0000000766B4: 4A565703
	v_sub_nc_u32_e32 v2, v2, v46                               // 0000000766B8: 4C045D02
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000766BC: BF870112
	v_lshrrev_b32_e32 v43, s40, v43                            // 0000000766C0: 32565628
	v_mul_lo_u32 v2, v2, s57                                   // 0000000766C4: D72C0002 00007302
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000766CC: BF870112
	v_mul_hi_u32 v44, s42, v43                                 // 0000000766D0: D72D002C 0002562A
	v_add3_u32 v0, v45, v0, v2                                 // 0000000766D8: D6550000 040A012D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000766E0: BF870092
	v_add_nc_u32_e32 v44, v43, v44                             // 0000000766E4: 4A58592B
	v_lshrrev_b32_e32 v1, s43, v44                             // 0000000766E8: 3202582B
	v_mul_lo_u32 v44, v43, s30                                 // 0000000766EC: D72C002C 00003D2B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000766F4: BF870112
	v_mul_lo_u32 v47, v1, s41                                  // 0000000766F8: D72C002F 00005301
	v_sub_nc_u32_e32 v3, v3, v44                               // 000000076700: 4C065903
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000076704: BF870112
	v_sub_nc_u32_e32 v43, v43, v47                             // 000000076708: 4C565F2B
	v_mul_lo_u32 v3, v3, s58                                   // 00000007670C: D72C0003 00007503
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076714: BF870092
	v_mul_lo_u32 v43, v43, s59                                 // 000000076718: D72C002B 0000772B
	v_add3_u32 v0, v3, v0, v43                                 // 000000076720: D6550000 04AE0103
	s_cbranch_scc0 65470                                       // 000000076728: BFA1FFBE <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1524>
	s_branch 5                                                 // 00000007672C: BFA00005 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1644>
	s_mov_b32 s4, -1                                           // 000000076730: BE8400C1
	s_branch 47                                                // 000000076734: BFA0002F <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x16f4>
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, v41             // 000000076738: CA100080 00000129
	s_mov_b32 s9, 0                                            // 000000076740: BE890080
	s_and_b32 s13, s13, 3                                      // 000000076744: 8B0D830D
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000076748: BF870009
	s_cmp_eq_u32 s13, 0                                        // 00000007674C: BF06800D
	s_cbranch_scc1 39                                          // 000000076750: BFA20027 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x16f0>
	s_lshl_b32 s4, s9, 2                                       // 000000076754: 84048209
	s_mul_i32 s6, s9, 12                                       // 000000076758: 96068C09
	s_add_u32 s4, s0, s4                                       // 00000007675C: 80040400
	s_addc_u32 s5, s1, 0                                       // 000000076760: 82058001
	s_add_u32 s4, s4, 0x10c                                    // 000000076764: 8004FF04 0000010C
	s_addc_u32 s5, s5, 0                                       // 00000007676C: 82058005
	s_add_u32 s6, s0, s6                                       // 000000076770: 80060600
	s_addc_u32 s7, s1, 0                                       // 000000076774: 82078001
	s_clause 0x1                                               // 000000076778: BF850001
	s_load_b64 s[16:17], s[6:7], 0x4c                          // 00000007677C: F4040403 F800004C
	s_load_b32 s9, s[6:7], 0x54                                // 000000076784: F4000243 F8000054
	s_waitcnt lgkmcnt(0)                                       // 00000007678C: BF89FC07
	v_mul_hi_u32 v2, s17, v1                                   // 000000076790: D72D0002 00020211
	s_load_b32 s17, s[4:5], null                               // 000000076798: F4000442 F8000000
	s_add_u32 s4, s4, 4                                        // 0000000767A0: 80048404
	s_addc_u32 s5, s5, 0                                       // 0000000767A4: 82058005
	s_add_u32 s6, s6, 12                                       // 0000000767A8: 80068C06
	s_addc_u32 s7, s7, 0                                       // 0000000767AC: 82078007
	s_add_i32 s13, s13, -1                                     // 0000000767B0: 810DC10D
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000767B4: BF8700A9
	s_cmp_lg_u32 s13, 0                                        // 0000000767B8: BF07800D
	v_add_nc_u32_e32 v2, v1, v2                                // 0000000767BC: 4A040501
	v_lshrrev_b32_e32 v43, s9, v2                              // 0000000767C0: 32560409
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000767C4: BF870091
	v_mul_lo_u32 v2, v43, s16                                  // 0000000767C8: D72C0002 0000212B
	v_sub_nc_u32_e32 v1, v1, v2                                // 0000000767D0: 4C020501
	s_waitcnt lgkmcnt(0)                                       // 0000000767D4: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000767D8: BF870091
	v_mad_u64_u32 v[2:3], null, v1, s17, v[0:1]                // 0000000767DC: D6FE7C02 04002301
	v_dual_mov_b32 v1, v43 :: v_dual_mov_b32 v0, v2            // 0000000767E4: CA10012B 01000102
	s_cbranch_scc1 65506                                       // 0000000767EC: BFA2FFE2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1678>
	s_mov_b32 s4, 0                                            // 0000000767F0: BE840080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000767F4: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 0000000767F8: 916A047E
	s_cbranch_vccnz 36                                         // 0000000767FC: BFA40024 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1790>
	s_load_b128 s[4:7], s[0:1], 0x4c                           // 000000076800: F4080100 F800004C
	s_and_not1_b32 vcc_lo, exec_lo, s10                        // 000000076808: 916A0A7E
	s_waitcnt lgkmcnt(0)                                       // 00000007680C: BF89FC07
	v_mul_hi_u32 v0, s5, v41                                   // 000000076810: D72D0000 00025205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076818: BF870091
	v_add_nc_u32_e32 v0, v41, v0                               // 00000007681C: 4A000129
	v_lshrrev_b32_e32 v1, s6, v0                               // 000000076820: 32020006
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076824: BF870091
	v_mul_lo_u32 v0, v1, s4                                    // 000000076828: D72C0000 00000901
	v_sub_nc_u32_e32 v0, v41, v0                               // 000000076830: 4C000129
	s_delay_alu instid0(VALU_DEP_1)                            // 000000076834: BF870001
	v_mul_lo_u32 v0, v0, s53                                   // 000000076838: D72C0000 00006B00
	s_cbranch_vccnz 19                                         // 000000076840: BFA40013 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1790>
	s_load_b128 s[4:7], s[0:1], 0x58                           // 000000076844: F4080100 F8000058
	s_waitcnt lgkmcnt(0)                                       // 00000007684C: BF89FC07
	s_load_b32 s7, s[0:1], 0x110                               // 000000076850: F40001C0 F8000110
	v_mul_hi_u32 v2, s5, v1                                    // 000000076858: D72D0002 00020205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076860: BF870091
	v_add_nc_u32_e32 v2, v1, v2                                // 000000076864: 4A040501
	v_lshrrev_b32_e32 v2, s6, v2                               // 000000076868: 32040406
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007686C: BF870091
	v_mul_lo_u32 v2, v2, s4                                    // 000000076870: D72C0002 00000902
	v_sub_nc_u32_e32 v3, v1, v2                                // 000000076878: 4C060501
	s_waitcnt lgkmcnt(0)                                       // 00000007687C: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076880: BF870091
	v_mad_u64_u32 v[1:2], null, v3, s7, v[0:1]                 // 000000076884: D6FE7C01 04000F03
	v_mov_b32_e32 v0, v1                                       // 00000007688C: 7E000301
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 000000076890: BF870131
	v_and_b32_e32 v0, -16, v0                                  // 000000076894: 360000D0
	v_add_nc_u32_e32 v43, s48, v41                             // 000000076898: 4A565230
	s_mov_b32 s9, exec_lo                                      // 00000007689C: BE89007E
	v_add_co_u32 v0, vcc_lo, v18, v0                           // 0000000768A0: D7006A00 00020112
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000768A8: BF870001
	v_add_co_ci_u32_e64 v1, null, 0, v19, vcc_lo               // 0000000768AC: D5207C01 01AA2680
	global_load_b128 v[0:3], v[0:1], off                       // 0000000768B4: DC5E0000 007C0000
	v_cmpx_gt_u32_e64 s44, v43                                 // 0000000768BC: D4CC007E 0002562C
	s_cbranch_execz 360                                        // 0000000768C4: BFA50168 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1d68>
	v_cmp_ne_u32_e32 vcc_lo, 1, v42                            // 0000000768C8: 7C9A5481
	s_cbranch_vccnz 79                                         // 0000000768CC: BFA4004F <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x190c>
	v_mov_b32_e32 v4, 0                                        // 0000000768D0: 7E080280
	s_and_not1_b32 vcc_lo, exec_lo, s10                        // 0000000768D4: 916A0A7E
	s_cbranch_vccnz 124                                        // 0000000768D8: BFA4007C <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x19cc>
	s_add_i32 s16, s12, 1                                      // 0000000768DC: 8110810C
	s_cmp_eq_u32 s11, 2                                        // 0000000768E0: BF06820B
	s_cbranch_scc1 75                                          // 0000000768E4: BFA2004B <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1914>
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, v43             // 0000000768E8: CA100080 0404012B
	s_and_b32 s13, s16, 28                                     // 0000000768F0: 8B0D9C10
	s_mov_b32 s17, 0                                           // 0000000768F4: BE910080
	s_mov_b64 s[4:5], s[0:1]                                   // 0000000768F8: BE840100
	s_mov_b64 s[6:7], s[38:39]                                 // 0000000768FC: BE860126
	s_load_b256 s[24:31], s[4:5], 0x4c                         // 000000076900: F40C0602 F800004C
	s_waitcnt lgkmcnt(0)                                       // 000000076908: BF89FC07
	s_load_b128 s[40:43], s[4:5], 0x6c                         // 00000007690C: F4080A02 F800006C
	s_load_b128 s[56:59], s[6:7], null                         // 000000076914: F4080E03 F8000000
	s_add_i32 s17, s17, 4                                      // 00000007691C: 81118411
	s_add_u32 s6, s6, 16                                       // 000000076920: 80069006
	s_addc_u32 s7, s7, 0                                       // 000000076924: 82078007
	s_add_u32 s4, s4, 48                                       // 000000076928: 8004B004
	s_addc_u32 s5, s5, 0                                       // 00000007692C: 82058005
	s_cmp_eq_u32 s13, s17                                      // 000000076930: BF06110D
	v_mul_hi_u32 v6, s25, v5                                   // 000000076934: D72D0006 00020A19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007693C: BF870091
	v_add_nc_u32_e32 v6, v5, v6                                // 000000076940: 4A0C0D05
	v_lshrrev_b32_e32 v6, s26, v6                              // 000000076944: 320C0C1A
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000076948: BF870121
	v_mul_hi_u32 v7, s28, v6                                   // 00000007694C: D72D0007 00020C1C
	v_mul_lo_u32 v46, v6, s24                                  // 000000076954: D72C002E 00003106
	v_add_nc_u32_e32 v7, v6, v7                                // 00000007695C: 4A0E0F06
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000076960: BF870112
	v_sub_nc_u32_e32 v46, v5, v46                              // 000000076964: 4C5C5D05
	v_lshrrev_b32_e32 v7, s29, v7                              // 000000076968: 320E0E1D
	s_waitcnt lgkmcnt(0)                                       // 00000007696C: BF89FC07
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000076970: BF870112
	v_mul_lo_u32 v46, v46, s56                                 // 000000076974: D72C002E 0000712E
	v_mul_hi_u32 v44, s31, v7                                  // 00000007697C: D72D002C 00020E1F
	v_mul_lo_u32 v47, v7, s27                                  // 000000076984: D72C002F 00003707
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007698C: BF870112
	v_add_nc_u32_e32 v44, v7, v44                              // 000000076990: 4A585907
	v_sub_nc_u32_e32 v6, v6, v47                               // 000000076994: 4C0C5F06
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000076998: BF870112
	v_lshrrev_b32_e32 v44, s40, v44                            // 00000007699C: 32585828
	v_mul_lo_u32 v6, v6, s57                                   // 0000000769A0: D72C0006 00007306
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000769A8: BF870112
	v_mul_hi_u32 v45, s42, v44                                 // 0000000769AC: D72D002D 0002582A
	v_add3_u32 v4, v46, v4, v6                                 // 0000000769B4: D6550004 041A092E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000769BC: BF870092
	v_add_nc_u32_e32 v45, v44, v45                             // 0000000769C0: 4A5A5B2C
	v_lshrrev_b32_e32 v5, s43, v45                             // 0000000769C4: 320A5A2B
	v_mul_lo_u32 v45, v44, s30                                 // 0000000769C8: D72C002D 00003D2C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000769D0: BF870112
	v_mul_lo_u32 v48, v5, s41                                  // 0000000769D4: D72C0030 00005305
	v_sub_nc_u32_e32 v7, v7, v45                               // 0000000769DC: 4C0E5B07
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000769E0: BF870112
	v_sub_nc_u32_e32 v44, v44, v48                             // 0000000769E4: 4C58612C
	v_mul_lo_u32 v7, v7, s58                                   // 0000000769E8: D72C0007 00007507
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000769F0: BF870092
	v_mul_lo_u32 v44, v44, s59                                 // 0000000769F4: D72C002C 0000772C
	v_add3_u32 v4, v7, v4, v44                                 // 0000000769FC: D6550004 04B20907
	s_cbranch_scc0 65470                                       // 000000076A04: BFA1FFBE <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1800>
	s_branch 5                                                 // 000000076A08: BFA00005 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1920>
	s_mov_b32 s4, -1                                           // 000000076A0C: BE8400C1
	s_branch 47                                                // 000000076A10: BFA0002F <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x19d0>
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, v43             // 000000076A14: CA100080 0404012B
	s_mov_b32 s13, 0                                           // 000000076A1C: BE8D0080
	s_and_b32 s16, s16, 3                                      // 000000076A20: 8B108310
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000076A24: BF870009
	s_cmp_eq_u32 s16, 0                                        // 000000076A28: BF068010
	s_cbranch_scc1 39                                          // 000000076A2C: BFA20027 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x19cc>
	s_lshl_b32 s4, s13, 2                                      // 000000076A30: 8404820D
	s_mul_i32 s6, s13, 12                                      // 000000076A34: 96068C0D
	s_add_u32 s4, s0, s4                                       // 000000076A38: 80040400
	s_addc_u32 s5, s1, 0                                       // 000000076A3C: 82058001
	s_add_u32 s4, s4, 0x10c                                    // 000000076A40: 8004FF04 0000010C
	s_addc_u32 s5, s5, 0                                       // 000000076A48: 82058005
	s_add_u32 s6, s0, s6                                       // 000000076A4C: 80060600
	s_addc_u32 s7, s1, 0                                       // 000000076A50: 82078001
	s_clause 0x1                                               // 000000076A54: BF850001
	s_load_b64 s[18:19], s[6:7], 0x4c                          // 000000076A58: F4040483 F800004C
	s_load_b32 s13, s[6:7], 0x54                               // 000000076A60: F4000343 F8000054
	s_load_b32 s17, s[4:5], null                               // 000000076A68: F4000442 F8000000
	s_add_u32 s4, s4, 4                                        // 000000076A70: 80048404
	s_addc_u32 s5, s5, 0                                       // 000000076A74: 82058005
	s_add_u32 s6, s6, 12                                       // 000000076A78: 80068C06
	s_addc_u32 s7, s7, 0                                       // 000000076A7C: 82078007
	s_add_i32 s16, s16, -1                                     // 000000076A80: 8110C110
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 000000076A84: BF8700B9
	s_cmp_lg_u32 s16, 0                                        // 000000076A88: BF078010
	s_waitcnt lgkmcnt(0)                                       // 000000076A8C: BF89FC07
	v_mul_hi_u32 v6, s19, v5                                   // 000000076A90: D72D0006 00020A13
	v_add_nc_u32_e32 v6, v5, v6                                // 000000076A98: 4A0C0D05
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076A9C: BF870091
	v_lshrrev_b32_e32 v44, s13, v6                             // 000000076AA0: 32580C0D
	v_mul_lo_u32 v6, v44, s18                                  // 000000076AA4: D72C0006 0000252C
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076AAC: BF870091
	v_sub_nc_u32_e32 v5, v5, v6                                // 000000076AB0: 4C0A0D05
	v_mad_u64_u32 v[6:7], null, v5, s17, v[4:5]                // 000000076AB4: D6FE7C06 04102305
	s_delay_alu instid0(VALU_DEP_1)                            // 000000076ABC: BF870001
	v_dual_mov_b32 v5, v44 :: v_dual_mov_b32 v4, v6            // 000000076AC0: CA10012C 05040106
	s_cbranch_scc1 65506                                       // 000000076AC8: BFA2FFE2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1954>
	s_mov_b32 s4, 0                                            // 000000076ACC: BE840080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000076AD0: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 000000076AD4: 916A047E
	s_cbranch_vccnz 36                                         // 000000076AD8: BFA40024 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1a6c>
	s_load_b128 s[4:7], s[0:1], 0x4c                           // 000000076ADC: F4080100 F800004C
	s_and_not1_b32 vcc_lo, exec_lo, s10                        // 000000076AE4: 916A0A7E
	s_waitcnt lgkmcnt(0)                                       // 000000076AE8: BF89FC07
	v_mul_hi_u32 v4, s5, v43                                   // 000000076AEC: D72D0004 00025605
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076AF4: BF870091
	v_add_nc_u32_e32 v4, v43, v4                               // 000000076AF8: 4A08092B
	v_lshrrev_b32_e32 v5, s6, v4                               // 000000076AFC: 320A0806
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076B00: BF870091
	v_mul_lo_u32 v4, v5, s4                                    // 000000076B04: D72C0004 00000905
	v_sub_nc_u32_e32 v4, v43, v4                               // 000000076B0C: 4C08092B
	s_delay_alu instid0(VALU_DEP_1)                            // 000000076B10: BF870001
	v_mul_lo_u32 v4, v4, s53                                   // 000000076B14: D72C0004 00006B04
	s_cbranch_vccnz 19                                         // 000000076B1C: BFA40013 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1a6c>
	s_load_b128 s[4:7], s[0:1], 0x58                           // 000000076B20: F4080100 F8000058
	s_waitcnt lgkmcnt(0)                                       // 000000076B28: BF89FC07
	s_load_b32 s7, s[0:1], 0x110                               // 000000076B2C: F40001C0 F8000110
	v_mul_hi_u32 v6, s5, v5                                    // 000000076B34: D72D0006 00020A05
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076B3C: BF870091
	v_add_nc_u32_e32 v6, v5, v6                                // 000000076B40: 4A0C0D05
	v_lshrrev_b32_e32 v6, s6, v6                               // 000000076B44: 320C0C06
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076B48: BF870091
	v_mul_lo_u32 v6, v6, s4                                    // 000000076B4C: D72C0006 00000906
	v_sub_nc_u32_e32 v7, v5, v6                                // 000000076B54: 4C0E0D05
	s_waitcnt lgkmcnt(0)                                       // 000000076B58: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076B5C: BF870091
	v_mad_u64_u32 v[5:6], null, v7, s7, v[4:5]                 // 000000076B60: D6FE7C05 04100F07
	v_mov_b32_e32 v4, v5                                       // 000000076B68: 7E080305
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 000000076B6C: BF870131
	v_and_b32_e32 v4, -16, v4                                  // 000000076B70: 360808D0
	v_add_nc_u32_e32 v43, s48, v43                             // 000000076B74: 4A565630
	s_mov_b32 s13, exec_lo                                     // 000000076B78: BE8D007E
	v_add_co_u32 v4, vcc_lo, v18, v4                           // 000000076B7C: D7006A04 00020912
	s_delay_alu instid0(VALU_DEP_1)                            // 000000076B84: BF870001
	v_add_co_ci_u32_e64 v5, null, 0, v19, vcc_lo               // 000000076B88: D5207C05 01AA2680
	global_load_b128 v[4:7], v[4:5], off                       // 000000076B90: DC5E0000 047C0004
	v_cmpx_gt_u32_e64 s44, v43                                 // 000000076B98: D4CC007E 0002562C
	s_cbranch_execz 176                                        // 000000076BA0: BFA500B0 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1d64>
	v_cmp_ne_u32_e32 vcc_lo, 1, v42                            // 000000076BA4: 7C9A5481
	s_cbranch_vccnz 79                                         // 000000076BA8: BFA4004F <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1be8>
	v_mov_b32_e32 v8, 0                                        // 000000076BAC: 7E100280
	s_and_not1_b32 vcc_lo, exec_lo, s10                        // 000000076BB0: 916A0A7E
	s_cbranch_vccnz 122                                        // 000000076BB4: BFA4007A <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1ca0>
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, v43             // 000000076BB8: CA100080 0808012B
	s_add_i32 s12, s12, 1                                      // 000000076BC0: 810C810C
	s_cmp_eq_u32 s11, 2                                        // 000000076BC4: BF06820B
	s_cbranch_scc1 73                                          // 000000076BC8: BFA20049 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1bf0>
	s_and_b32 s6, s12, 28                                      // 000000076BCC: 8B069C0C
	s_mov_b32 s7, 0                                            // 000000076BD0: BE870080
	s_mov_b64 s[4:5], s[0:1]                                   // 000000076BD4: BE840100
	s_clause 0x1                                               // 000000076BD8: BF850001
	s_load_b256 s[24:31], s[4:5], 0x4c                         // 000000076BDC: F40C0602 F800004C
	s_load_b128 s[16:19], s[4:5], 0x6c                         // 000000076BE4: F4080402 F800006C
	s_waitcnt lgkmcnt(0)                                       // 000000076BEC: BF89FC07
	s_load_b128 s[40:43], s[38:39], null                       // 000000076BF0: F4080A13 F8000000
	s_add_i32 s7, s7, 4                                        // 000000076BF8: 81078407
	s_add_u32 s38, s38, 16                                     // 000000076BFC: 80269026
	s_addc_u32 s39, s39, 0                                     // 000000076C00: 82278027
	s_add_u32 s4, s4, 48                                       // 000000076C04: 8004B004
	s_addc_u32 s5, s5, 0                                       // 000000076C08: 82058005
	s_cmp_eq_u32 s6, s7                                        // 000000076C0C: BF060706
	v_mul_hi_u32 v10, s25, v9                                  // 000000076C10: D72D000A 00021219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076C18: BF870091
	v_add_nc_u32_e32 v10, v9, v10                              // 000000076C1C: 4A141509
	v_lshrrev_b32_e32 v10, s26, v10                            // 000000076C20: 3214141A
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000076C24: BF870121
	v_mul_hi_u32 v11, s28, v10                                 // 000000076C28: D72D000B 0002141C
	v_mul_lo_u32 v45, v10, s24                                 // 000000076C30: D72C002D 0000310A
	v_add_nc_u32_e32 v11, v10, v11                             // 000000076C38: 4A16170A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000076C3C: BF870112
	v_sub_nc_u32_e32 v45, v9, v45                              // 000000076C40: 4C5A5B09
	v_lshrrev_b32_e32 v11, s29, v11                            // 000000076C44: 3216161D
	s_waitcnt lgkmcnt(0)                                       // 000000076C48: BF89FC07
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000076C4C: BF870112
	v_mul_lo_u32 v45, v45, s40                                 // 000000076C50: D72C002D 0000512D
	v_mul_hi_u32 v42, s31, v11                                 // 000000076C58: D72D002A 0002161F
	v_mul_lo_u32 v46, v11, s27                                 // 000000076C60: D72C002E 0000370B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000076C68: BF870112
	v_add_nc_u32_e32 v42, v11, v42                             // 000000076C6C: 4A54550B
	v_sub_nc_u32_e32 v10, v10, v46                             // 000000076C70: 4C145D0A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000076C74: BF870112
	v_lshrrev_b32_e32 v42, s16, v42                            // 000000076C78: 32545410
	v_mul_lo_u32 v10, v10, s41                                 // 000000076C7C: D72C000A 0000530A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000076C84: BF870112
	v_mul_hi_u32 v44, s18, v42                                 // 000000076C88: D72D002C 00025412
	v_add3_u32 v8, v45, v8, v10                                // 000000076C90: D6550008 042A112D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076C98: BF870092
	v_add_nc_u32_e32 v44, v42, v44                             // 000000076C9C: 4A58592A
	v_lshrrev_b32_e32 v9, s19, v44                             // 000000076CA0: 32125813
	v_mul_lo_u32 v44, v42, s30                                 // 000000076CA4: D72C002C 00003D2A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000076CAC: BF870112
	v_mul_lo_u32 v47, v9, s17                                  // 000000076CB0: D72C002F 00002309
	v_sub_nc_u32_e32 v11, v11, v44                             // 000000076CB8: 4C16590B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000076CBC: BF870112
	v_sub_nc_u32_e32 v42, v42, v47                             // 000000076CC0: 4C545F2A
	v_mul_lo_u32 v11, v11, s42                                 // 000000076CC4: D72C000B 0000550B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076CCC: BF870092
	v_mul_lo_u32 v42, v42, s43                                 // 000000076CD0: D72C002A 0000572A
	v_add3_u32 v8, v11, v8, v42                                // 000000076CD8: D6550008 04AA110B
	s_cbranch_scc0 65469                                       // 000000076CE0: BFA1FFBD <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1ad8>
	s_branch 3                                                 // 000000076CE4: BFA00003 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1bf4>
	s_mov_b32 s4, -1                                           // 000000076CE8: BE8400C1
	s_branch 45                                                // 000000076CEC: BFA0002D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1ca4>
	s_mov_b32 s6, 0                                            // 000000076CF0: BE860080
	s_and_b32 s11, s12, 3                                      // 000000076CF4: 8B0B830C
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000076CF8: BF870009
	s_cmp_eq_u32 s11, 0                                        // 000000076CFC: BF06800B
	s_cbranch_scc1 39                                          // 000000076D00: BFA20027 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1ca0>
	s_lshl_b32 s4, s6, 2                                       // 000000076D04: 84048206
	s_mul_i32 s6, s6, 12                                       // 000000076D08: 96068C06
	s_add_u32 s4, s0, s4                                       // 000000076D0C: 80040400
	s_addc_u32 s5, s1, 0                                       // 000000076D10: 82058001
	s_add_u32 s4, s4, 0x10c                                    // 000000076D14: 8004FF04 0000010C
	s_addc_u32 s5, s5, 0                                       // 000000076D1C: 82058005
	s_add_u32 s6, s0, s6                                       // 000000076D20: 80060600
	s_addc_u32 s7, s1, 0                                       // 000000076D24: 82078001
	s_clause 0x1                                               // 000000076D28: BF850001
	s_load_b64 s[16:17], s[6:7], 0x4c                          // 000000076D2C: F4040403 F800004C
	s_load_b32 s12, s[6:7], 0x54                               // 000000076D34: F4000303 F8000054
	s_waitcnt lgkmcnt(0)                                       // 000000076D3C: BF89FC07
	v_mul_hi_u32 v10, s17, v9                                  // 000000076D40: D72D000A 00021211
	s_load_b32 s17, s[4:5], null                               // 000000076D48: F4000442 F8000000
	s_add_u32 s4, s4, 4                                        // 000000076D50: 80048404
	s_addc_u32 s5, s5, 0                                       // 000000076D54: 82058005
	s_add_u32 s6, s6, 12                                       // 000000076D58: 80068C06
	s_addc_u32 s7, s7, 0                                       // 000000076D5C: 82078007
	s_add_i32 s11, s11, -1                                     // 000000076D60: 810BC10B
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000076D64: BF8700A9
	s_cmp_lg_u32 s11, 0                                        // 000000076D68: BF07800B
	v_add_nc_u32_e32 v10, v9, v10                              // 000000076D6C: 4A141509
	v_lshrrev_b32_e32 v42, s12, v10                            // 000000076D70: 3254140C
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076D74: BF870091
	v_mul_lo_u32 v10, v42, s16                                 // 000000076D78: D72C000A 0000212A
	v_sub_nc_u32_e32 v9, v9, v10                               // 000000076D80: 4C121509
	s_waitcnt lgkmcnt(0)                                       // 000000076D84: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000076D88: BF870121
	v_mad_u64_u32 v[10:11], null, v9, s17, v[8:9]              // 000000076D8C: D6FE7C0A 04202309
	v_mov_b32_e32 v9, v42                                      // 000000076D94: 7E12032A
	v_mov_b32_e32 v8, v10                                      // 000000076D98: 7E10030A
	s_cbranch_scc1 65506                                       // 000000076D9C: BFA2FFE2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1c28>
	s_mov_b32 s4, 0                                            // 000000076DA0: BE840080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000076DA4: BF870009
	s_and_not1_b32 vcc_lo, exec_lo, s4                         // 000000076DA8: 916A047E
	s_cbranch_vccnz 36                                         // 000000076DAC: BFA40024 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1d40>
	s_load_b128 s[4:7], s[0:1], 0x4c                           // 000000076DB0: F4080100 F800004C
	s_and_not1_b32 vcc_lo, exec_lo, s10                        // 000000076DB8: 916A0A7E
	s_waitcnt lgkmcnt(0)                                       // 000000076DBC: BF89FC07
	v_mul_hi_u32 v8, s5, v43                                   // 000000076DC0: D72D0008 00025605
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076DC8: BF870091
	v_add_nc_u32_e32 v8, v43, v8                               // 000000076DCC: 4A10112B
	v_lshrrev_b32_e32 v9, s6, v8                               // 000000076DD0: 32121006
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076DD4: BF870091
	v_mul_lo_u32 v8, v9, s4                                    // 000000076DD8: D72C0008 00000909
	v_sub_nc_u32_e32 v8, v43, v8                               // 000000076DE0: 4C10112B
	s_delay_alu instid0(VALU_DEP_1)                            // 000000076DE4: BF870001
	v_mul_lo_u32 v8, v8, s53                                   // 000000076DE8: D72C0008 00006B08
	s_cbranch_vccnz 19                                         // 000000076DF0: BFA40013 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1d40>
	s_load_b128 s[4:7], s[0:1], 0x58                           // 000000076DF4: F4080100 F8000058
	s_waitcnt lgkmcnt(0)                                       // 000000076DFC: BF89FC07
	s_load_b32 s7, s[0:1], 0x110                               // 000000076E00: F40001C0 F8000110
	v_mul_hi_u32 v10, s5, v9                                   // 000000076E08: D72D000A 00021205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076E10: BF870091
	v_add_nc_u32_e32 v10, v9, v10                              // 000000076E14: 4A141509
	v_lshrrev_b32_e32 v10, s6, v10                             // 000000076E18: 32141406
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076E1C: BF870091
	v_mul_lo_u32 v10, v10, s4                                  // 000000076E20: D72C000A 0000090A
	v_sub_nc_u32_e32 v11, v9, v10                              // 000000076E28: 4C161509
	s_waitcnt lgkmcnt(0)                                       // 000000076E2C: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076E30: BF870091
	v_mad_u64_u32 v[9:10], null, v11, s7, v[8:9]               // 000000076E34: D6FE7C09 04200F0B
	v_mov_b32_e32 v8, v9                                       // 000000076E3C: 7E100309
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000076E40: BF870091
	v_and_b32_e32 v8, -16, v8                                  // 000000076E44: 361010D0
	v_add_co_u32 v8, vcc_lo, v18, v8                           // 000000076E48: D7006A08 00021112
	s_delay_alu instid0(VALU_DEP_1)                            // 000000076E50: BF870001
	v_add_co_ci_u32_e64 v9, null, 0, v19, vcc_lo               // 000000076E54: D5207C09 01AA2680
	global_load_b128 v[8:11], v[8:9], off                      // 000000076E5C: DC5E0000 087C0008
	s_or_b32 exec_lo, exec_lo, s13                             // 000000076E64: 8C7E0D7E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000076E68: BF870009
	s_or_b32 exec_lo, exec_lo, s9                              // 000000076E6C: 8C7E097E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000076E70: BF870009
	s_or_b32 exec_lo, exec_lo, s8                              // 000000076E74: 8C7E087E
	v_cmp_u_f32_e32 vcc_lo, v34, v34                           // 000000076E78: 7C304522
	s_waitcnt vmcnt(0)                                         // 000000076E7C: BF8903F7
	v_cmp_gt_f32_e64 s4, v34, v12                              // 000000076E80: D4140004 00021922
	v_cmp_u_f32_e64 s5, v37, v37                               // 000000076E88: D4180005 00024B25
	v_cmp_gt_f32_e64 s6, v37, v13                              // 000000076E90: D4140006 00021B25
	v_cmp_u_f32_e64 s7, v35, v35                               // 000000076E98: D4180007 00024723
	v_cmp_gt_f32_e64 s8, v35, v14                              // 000000076EA0: D4140008 00021D23
	v_cmp_u_f32_e64 s9, v32, v32                               // 000000076EA8: D4180009 00024120
	v_cmp_gt_f32_e64 s10, v32, v15                             // 000000076EB0: D414000A 00021F20
	s_or_b32 vcc_lo, vcc_lo, s4                                // 000000076EB8: 8C6A046A
	s_or_b32 s4, s5, s6                                        // 000000076EBC: 8C040605
	s_or_b32 s5, s7, s8                                        // 000000076EC0: 8C050807
	s_or_b32 s6, s9, s10                                       // 000000076EC4: 8C060A09
	s_and_saveexec_b32 s23, s3                                 // 000000076EC8: BE972003
	s_cbranch_execz 98                                         // 000000076ECC: BFA50062 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1f58>
	v_cmp_u_f32_e64 s3, v39, v39                               // 000000076ED0: D4180003 00024F27
	v_cmp_gt_f32_e64 s7, v39, v0                               // 000000076ED8: D4140007 00020127
	v_cmp_u_f32_e64 s8, v38, v38                               // 000000076EE0: D4180008 00024D26
	v_cmp_gt_f32_e64 s9, v38, v1                               // 000000076EE8: D4140009 00020326
	v_cmp_u_f32_e64 s10, v36, v36                              // 000000076EF0: D418000A 00024924
	v_cmp_gt_f32_e64 s11, v36, v2                              // 000000076EF8: D414000B 00020524
	v_cmp_u_f32_e64 s12, v33, v33                              // 000000076F00: D418000C 00024321
	v_cmp_gt_f32_e64 s13, v33, v3                              // 000000076F08: D414000D 00020721
	v_add_nc_u32_e32 v41, s48, v41                             // 000000076F10: 4A525230
	s_or_b32 s3, s3, s7                                        // 000000076F14: 8C030703
	s_or_b32 s7, s8, s9                                        // 000000076F18: 8C070908
	s_or_b32 s8, s10, s11                                      // 000000076F1C: 8C080B0A
	s_or_b32 s9, s12, s13                                      // 000000076F20: 8C090D0C
	s_mov_b32 s24, exec_lo                                     // 000000076F24: BE98007E
	v_cmpx_gt_u32_e64 s44, v41                                 // 000000076F28: D4CC007E 0002522C
	s_cbranch_execz 64                                         // 000000076F30: BFA50040 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1f34>
	v_cmp_u_f32_e64 s10, v31, v31                              // 000000076F34: D418000A 00023F1F
	v_cmp_gt_f32_e64 s11, v31, v4                              // 000000076F3C: D414000B 0002091F
	v_cmp_u_f32_e64 s12, v30, v30                              // 000000076F44: D418000C 00023D1E
	v_cmp_gt_f32_e64 s13, v30, v5                              // 000000076F4C: D414000D 00020B1E
	v_cmp_u_f32_e64 s16, v29, v29                              // 000000076F54: D4180010 00023B1D
	v_cmp_gt_f32_e64 s17, v29, v6                              // 000000076F5C: D4140011 00020D1D
	v_cmp_u_f32_e64 s18, v28, v28                              // 000000076F64: D4180012 0002391C
	v_cmp_gt_f32_e64 s19, v28, v7                              // 000000076F6C: D4140013 00020F1C
	v_add_nc_u32_e32 v41, s48, v41                             // 000000076F74: 4A525230
	s_or_b32 s10, s10, s11                                     // 000000076F78: 8C0A0B0A
	s_or_b32 s11, s12, s13                                     // 000000076F7C: 8C0B0D0C
	s_or_b32 s12, s16, s17                                     // 000000076F80: 8C0C1110
	s_or_b32 s13, s18, s19                                     // 000000076F84: 8C0D1312
	s_mov_b32 s25, exec_lo                                     // 000000076F88: BE99007E
	v_cmpx_gt_u32_e64 s44, v41                                 // 000000076F8C: D4CC007E 0002522C
	s_cbranch_execz 30                                         // 000000076F94: BFA5001E <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x1f10>
	v_cmp_u_f32_e64 s16, v27, v27                              // 000000076F98: D4180010 0002371B
	v_cmp_gt_f32_e64 s17, v27, v8                              // 000000076FA0: D4140011 0002111B
	v_cmp_u_f32_e64 s18, v26, v26                              // 000000076FA8: D4180012 0002351A
	v_cmp_gt_f32_e64 s19, v26, v9                              // 000000076FB0: D4140013 0002131A
	v_cmp_u_f32_e64 s20, v22, v22                              // 000000076FB8: D4180014 00022D16
	v_cmp_gt_f32_e64 s21, v22, v11                             // 000000076FC0: D4140015 00021716
	s_or_b32 s16, s16, s17                                     // 000000076FC8: 8C101110
	v_cmp_gt_f32_e64 s17, v23, v10                             // 000000076FCC: D4140011 00021517
	v_cndmask_b32_e64 v27, v8, v27, s16                        // 000000076FD4: D501001B 00423708
	v_cmp_u_f32_e64 s16, v23, v23                              // 000000076FDC: D4180010 00022F17
	s_or_b32 s18, s18, s19                                     // 000000076FE4: 8C121312
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 000000076FE8: BF8704A9
	v_cndmask_b32_e64 v26, v9, v26, s18                        // 000000076FEC: D501001A 004A3509
	s_or_b32 s16, s16, s17                                     // 000000076FF4: 8C101110
	v_cndmask_b32_e64 v23, v10, v23, s16                       // 000000076FF8: D5010017 00422F0A
	s_or_b32 s16, s20, s21                                     // 000000077000: 8C101514
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000077004: BF870009
	v_cndmask_b32_e64 v22, v11, v22, s16                       // 000000077008: D5010016 00422D0B
	s_or_b32 exec_lo, exec_lo, s25                             // 000000077010: 8C7E197E
	v_cndmask_b32_e64 v31, v4, v31, s10                        // 000000077014: D501001F 002A3F04
	v_cndmask_b32_e64 v30, v5, v30, s11                        // 00000007701C: D501001E 002E3D05
	v_cndmask_b32_e64 v29, v6, v29, s12                        // 000000077024: D501001D 00323B06
	v_cndmask_b32_e64 v28, v7, v28, s13                        // 00000007702C: D501001C 00363907
	s_or_b32 exec_lo, exec_lo, s24                             // 000000077034: 8C7E187E
	v_cndmask_b32_e64 v39, v0, v39, s3                         // 000000077038: D5010027 000E4F00
	v_cndmask_b32_e64 v38, v1, v38, s7                         // 000000077040: D5010026 001E4D01
	v_cndmask_b32_e64 v36, v2, v36, s8                         // 000000077048: D5010024 00224902
	v_cndmask_b32_e64 v33, v3, v33, s9                         // 000000077050: D5010021 00264303
	s_or_b32 exec_lo, exec_lo, s23                             // 000000077058: 8C7E177E
	v_cndmask_b32_e32 v34, v12, v34, vcc_lo                    // 00000007705C: 0244450C
	v_cndmask_b32_e64 v37, v13, v37, s4                        // 000000077060: D5010025 00124B0D
	v_cndmask_b32_e64 v35, v14, v35, s5                        // 000000077068: D5010023 0016470E
	v_cndmask_b32_e64 v32, v15, v32, s6                        // 000000077070: D5010020 001A410F
	s_or_b32 exec_lo, exec_lo, s22                             // 000000077078: 8C7E167E
	v_cmp_u_f32_e32 vcc_lo, v34, v34                           // 00000007707C: 7C304522
	v_cmp_gt_f32_e64 s3, v34, v39                              // 000000077080: D4140003 00024F22
	v_cmp_u_f32_e64 s4, v37, v37                               // 000000077088: D4180004 00024B25
	v_cmp_gt_f32_e64 s5, v37, v38                              // 000000077090: D4140005 00024D25
	v_cmp_u_f32_e64 s6, v35, v35                               // 000000077098: D4180006 00024723
	v_cmp_gt_f32_e64 s7, v35, v36                              // 0000000770A0: D4140007 00024923
	s_or_b32 vcc_lo, vcc_lo, s3                                // 0000000770A8: 8C6A036A
	v_cmp_gt_f32_e64 s3, v32, v33                              // 0000000770AC: D4140003 00024320
	v_cndmask_b32_e32 v0, v39, v34, vcc_lo                     // 0000000770B4: 02004527
	s_or_b32 vcc_lo, s4, s5                                    // 0000000770B8: 8C6A0504
	v_cndmask_b32_e32 v1, v38, v37, vcc_lo                     // 0000000770BC: 02024B26
	s_or_b32 vcc_lo, s6, s7                                    // 0000000770C0: 8C6A0706
	s_delay_alu instid0(VALU_DEP_2)                            // 0000000770C4: BF870002
	v_cmp_u_f32_e64 s4, v0, v0                                 // 0000000770C8: D4180004 00020100
	v_cndmask_b32_e32 v2, v36, v35, vcc_lo                     // 0000000770D0: 02044724
	v_cmp_u_f32_e32 vcc_lo, v32, v32                           // 0000000770D4: 7C304120
	v_cmp_gt_f32_e64 s5, v0, v31                               // 0000000770D8: D4140005 00023F00
	v_cmp_u_f32_e64 s6, v1, v1                                 // 0000000770E0: D4180006 00020301
	v_cmp_gt_f32_e64 s7, v1, v30                               // 0000000770E8: D4140007 00023D01
	s_or_b32 vcc_lo, vcc_lo, s3                                // 0000000770F0: 8C6A036A
	v_cndmask_b32_e32 v3, v33, v32, vcc_lo                     // 0000000770F4: 02064121
	s_or_b32 vcc_lo, s4, s5                                    // 0000000770F8: 8C6A0504
	v_cmp_gt_f32_e64 s3, v2, v29                               // 0000000770FC: D4140003 00023B02
	v_cndmask_b32_e32 v0, v31, v0, vcc_lo                      // 000000077104: 0200011F
	s_or_b32 vcc_lo, s6, s7                                    // 000000077108: 8C6A0706
	v_cmp_u_f32_e64 s4, v3, v3                                 // 00000007710C: D4180004 00020703
	v_cndmask_b32_e32 v1, v30, v1, vcc_lo                      // 000000077114: 0202031E
	v_cmp_u_f32_e32 vcc_lo, v2, v2                             // 000000077118: 7C300502
	v_cmp_gt_f32_e64 s5, v3, v28                               // 00000007711C: D4140005 00023903
	v_cmp_u_f32_e64 s6, v0, v0                                 // 000000077124: D4180006 00020100
	v_cmp_gt_f32_e64 s7, v0, v27                               // 00000007712C: D4140007 00023700
	s_or_b32 vcc_lo, vcc_lo, s3                                // 000000077134: 8C6A036A
	v_cmp_gt_f32_e64 s3, v1, v26                               // 000000077138: D4140003 00023501
	v_cndmask_b32_e32 v2, v29, v2, vcc_lo                      // 000000077140: 0204051D
	s_or_b32 vcc_lo, s4, s5                                    // 000000077144: 8C6A0504
	v_cndmask_b32_e32 v3, v28, v3, vcc_lo                      // 000000077148: 0206071C
	s_or_b32 vcc_lo, s6, s7                                    // 00000007714C: 8C6A0706
	s_delay_alu instid0(VALU_DEP_2)                            // 000000077150: BF870002
	v_cmp_u_f32_e64 s4, v2, v2                                 // 000000077154: D4180004 00020502
	v_cndmask_b32_e32 v0, v27, v0, vcc_lo                      // 00000007715C: 0200011B
	v_cmp_u_f32_e32 vcc_lo, v1, v1                             // 000000077160: 7C300301
	v_cmp_gt_f32_e64 s5, v2, v23                               // 000000077164: D4140005 00022F02
	v_cmp_u_f32_e64 s6, v3, v3                                 // 00000007716C: D4180006 00020703
	v_cmp_gt_f32_e64 s7, v3, v22                               // 000000077174: D4140007 00022D03
	s_or_b32 vcc_lo, vcc_lo, s3                                // 00000007717C: 8C6A036A
	v_cndmask_b32_e32 v1, v26, v1, vcc_lo                      // 000000077180: 0202031A
	s_or_b32 vcc_lo, s4, s5                                    // 000000077184: 8C6A0504
	v_cndmask_b32_e32 v2, v23, v2, vcc_lo                      // 000000077188: 02040517
	s_or_b32 vcc_lo, s6, s7                                    // 00000007718C: 8C6A0706
	v_cndmask_b32_e32 v3, v22, v3, vcc_lo                      // 000000077190: 02060716
	s_branch 491                                               // 000000077194: BFA001EB <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2844>
	v_dual_mov_b32 v34, s50 :: v_dual_mov_b32 v41, v20         // 000000077198: CA100032 22280114
	v_dual_mov_b32 v37, s50 :: v_dual_mov_b32 v32, s50         // 0000000771A0: CA100032 25200032
	v_dual_mov_b32 v35, s50 :: v_dual_mov_b32 v38, s50         // 0000000771A8: CA100032 23260032
	v_dual_mov_b32 v39, s50 :: v_dual_mov_b32 v36, s50         // 0000000771B0: CA100032 27240032
	v_dual_mov_b32 v33, s50 :: v_dual_mov_b32 v30, s50         // 0000000771B8: CA100032 211E0032
	v_dual_mov_b32 v31, s50 :: v_dual_mov_b32 v28, s50         // 0000000771C0: CA100032 1F1C0032
	v_dual_mov_b32 v29, s50 :: v_dual_mov_b32 v26, s50         // 0000000771C8: CA100032 1D1A0032
	v_dual_mov_b32 v27, s50 :: v_dual_mov_b32 v22, s50         // 0000000771D0: CA100032 1B160032
	v_mov_b32_e32 v23, s50                                     // 0000000771D8: 7E2E0232
	s_and_saveexec_b32 s25, s2                                 // 0000000771DC: BE992002
	s_cbranch_execz 192                                        // 0000000771E0: BFA500C0 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x23e4>
	v_dual_mov_b32 v23, s50 :: v_dual_add_nc_u32 v0, s48, v17  // 0000000771E4: CA200032 17002230
	v_lshl_add_u32 v1, s48, 1, v20                             // 0000000771EC: D6460001 04510230
	v_mul_lo_u32 v13, s51, v21                                 // 0000000771F4: D72C000D 00022A33
	v_mul_lo_u32 v14, s51, v20                                 // 0000000771FC: D72C000E 00022833
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)// 000000077204: BF870244
	v_add3_u32 v0, v0, v16, s52                                // 000000077208: D6550000 00D22100
	v_dual_mov_b32 v22, s50 :: v_dual_mov_b32 v27, s50         // 000000077210: CA100032 161A0032
	v_mul_lo_u32 v15, s51, v1                                  // 000000077218: D72C000F 00020233
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v29, s50           // 000000077220: CA100080 0C1C0032
	v_mul_lo_u32 v16, s51, v0                                  // 000000077228: D72C0010 00020033
	v_dual_mov_b32 v26, s50 :: v_dual_mov_b32 v31, s50         // 000000077230: CA100032 1A1E0032
	v_dual_mov_b32 v28, s50 :: v_dual_mov_b32 v33, s50         // 000000077238: CA100032 1C200032
	v_dual_mov_b32 v30, s50 :: v_dual_mov_b32 v39, s50         // 000000077240: CA100032 1E260032
	v_dual_mov_b32 v36, s50 :: v_dual_mov_b32 v35, s50         // 000000077248: CA100032 24220032
	v_dual_mov_b32 v38, s50 :: v_dual_mov_b32 v37, s50         // 000000077250: CA100032 26240032
	v_dual_mov_b32 v32, s50 :: v_dual_mov_b32 v41, v20         // 000000077258: CA100032 20280114
	v_mov_b32_e32 v34, s50                                     // 000000077260: 7E440232
	s_mul_i32 s3, s48, s51                                     // 000000077264: 96033330
	s_mov_b32 s27, 0                                           // 000000077268: BE9B0080
	s_lshl_b32 s26, s3, 2                                      // 00000007726C: 841A8203
	s_add_i32 s28, s48, s48                                    // 000000077270: 811C3030
	s_mov_b32 s29, 0                                           // 000000077274: BE9D0080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000077278: BF870009
	v_add_nc_u32_e32 v0, s29, v14                              // 00000007727C: 4A001C1D
	v_add_nc_u32_e32 v4, s29, v15                              // 000000077280: 4A081E1D
	v_cmp_u_f32_e64 s3, v37, v37                               // 000000077284: D4180003 00024B25
	v_add3_u32 v41, s28, s28, v41                              // 00000007728C: D6550029 04A4381C
	v_cmp_u_f32_e64 s4, v35, v35                               // 000000077294: D4180004 00024723
	v_lshrrev_b32_e32 v11, 2, v0                               // 00000007729C: 32160082
	v_cmp_u_f32_e64 s5, v32, v32                               // 0000000772A0: D4180005 00024120
	v_cmp_u_f32_e64 s6, v39, v39                               // 0000000772A8: D4180006 00024F27
	v_cmp_u_f32_e64 s7, v38, v38                               // 0000000772B0: D4180007 00024D26
	v_cmp_u_f32_e64 s8, v36, v36                               // 0000000772B8: D4180008 00024924
	v_lshlrev_b64 v[0:1], 4, v[11:12]                          // 0000000772C0: D73C0000 00021684
	v_cmp_u_f32_e64 s9, v33, v33                               // 0000000772C8: D4180009 00024321
	v_cmp_u_f32_e64 s10, v31, v31                              // 0000000772D0: D418000A 00023F1F
	v_cmp_u_f32_e64 s11, v30, v30                              // 0000000772D8: D418000B 00023D1E
	v_cmp_u_f32_e64 s12, v29, v29                              // 0000000772E0: D418000C 00023B1D
	v_cmp_u_f32_e64 s13, v28, v28                              // 0000000772E8: D418000D 0002391C
	v_add_co_u32 v0, vcc_lo, v18, v0                           // 0000000772F0: D7006A00 00020112
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000772F8: BF870001
	v_add_co_ci_u32_e64 v1, null, v19, v1, vcc_lo              // 0000000772FC: D5207C01 01AA0313
	v_cmp_u_f32_e64 s16, v27, v27                              // 000000077304: D4180010 0002371B
	v_cmp_u_f32_e64 s17, v26, v26                              // 00000007730C: D4180011 0002351A
	v_cmp_u_f32_e64 s18, v23, v23                              // 000000077314: D4180012 00022F17
	global_load_b128 v[42:45], v[0:1], off                     // 00000007731C: DC5E0000 2A7C0000
	v_add_nc_u32_e32 v2, s29, v16                              // 000000077324: 4A04201D
	v_cmp_u_f32_e64 s19, v22, v22                              // 000000077328: D4180013 00022D16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000077330: BF870092
	v_lshrrev_b32_e32 v11, 2, v2                               // 000000077334: 32160482
	v_lshlrev_b64 v[2:3], 4, v[11:12]                          // 000000077338: D73C0002 00021684
	v_lshrrev_b32_e32 v11, 2, v4                               // 000000077340: 32160882
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 000000077344: BF870191
	v_lshlrev_b64 v[4:5], 4, v[11:12]                          // 000000077348: D73C0004 00021684
	v_add_co_u32 v0, vcc_lo, v18, v2                           // 000000077350: D7006A00 00020512
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 000000077358: BF870191
	v_add_co_ci_u32_e64 v1, null, v19, v3, vcc_lo              // 00000007735C: D5207C01 01AA0713
	v_add_co_u32 v4, vcc_lo, v18, v4                           // 000000077364: D7006A04 00020912
	global_load_b128 v[0:3], v[0:1], off                       // 00000007736C: DC5E0000 007C0000
	v_add_nc_u32_e32 v6, s29, v13                              // 000000077374: 4A0C1A1D
	v_add_co_ci_u32_e64 v5, null, v19, v5, vcc_lo              // 000000077378: D5207C05 01AA0B13
	s_add_i32 s29, s29, s26                                    // 000000077380: 811D1A1D
	v_lshrrev_b32_e32 v11, 2, v6                               // 000000077384: 32160C82
	global_load_b128 v[4:7], v[4:5], off                       // 000000077388: DC5E0000 047C0004
	v_lshlrev_b64 v[8:9], 4, v[11:12]                          // 000000077390: D73C0008 00021684
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000077398: BF870091
	v_add_co_u32 v8, vcc_lo, v18, v8                           // 00000007739C: D7006A08 00021112
	v_add_co_ci_u32_e64 v9, null, v19, v9, vcc_lo              // 0000000773A4: D5207C09 01AA1313
	v_cmp_u_f32_e32 vcc_lo, v34, v34                           // 0000000773AC: 7C304522
	global_load_b128 v[8:11], v[8:9], off                      // 0000000773B0: DC5E0000 087C0008
	s_waitcnt vmcnt(3)                                         // 0000000773B8: BF890FF7
	v_cmp_gt_f32_e64 s21, v34, v42                             // 0000000773BC: D4140015 00025522
	v_cmp_gt_f32_e64 s22, v37, v43                             // 0000000773C4: D4140016 00025725
	v_cmp_gt_f32_e64 s23, v35, v44                             // 0000000773CC: D4140017 00025923
	v_cmp_gt_f32_e64 s24, v32, v45                             // 0000000773D4: D4140018 00025B20
	s_or_b32 vcc_lo, vcc_lo, s21                               // 0000000773DC: 8C6A156A
	v_dual_cndmask_b32 v34, v42, v34 :: v_dual_add_nc_u32 v17, s49, v41// 0000000773E0: CA60452A 22105231
	s_or_b32 vcc_lo, s3, s22                                   // 0000000773E8: 8C6A1603
	s_or_b32 s3, s5, s24                                       // 0000000773EC: 8C031805
	v_cndmask_b32_e32 v37, v43, v37, vcc_lo                    // 0000000773F0: 024A4B2B
	s_or_b32 vcc_lo, s4, s23                                   // 0000000773F4: 8C6A1704
	v_cndmask_b32_e64 v32, v45, v32, s3                        // 0000000773F8: D5010020 000E412D
	v_cndmask_b32_e32 v35, v44, v35, vcc_lo                    // 000000077400: 0246472C
	v_cmp_le_u32_e64 s20, s44, v17                             // 000000077404: D44B0014 0002222C
	s_waitcnt vmcnt(2)                                         // 00000007740C: BF890BF7
	v_cmp_gt_f32_e32 vcc_lo, v39, v0                           // 000000077410: 7C280127
	v_cmp_gt_f32_e64 s3, v38, v1                               // 000000077414: D4140003 00020326
	v_cmp_gt_f32_e64 s4, v36, v2                               // 00000007741C: D4140004 00020524
	v_cmp_gt_f32_e64 s5, v33, v3                               // 000000077424: D4140005 00020721
	s_or_b32 vcc_lo, s6, vcc_lo                                // 00000007742C: 8C6A6A06
	v_cndmask_b32_e32 v39, v0, v39, vcc_lo                     // 000000077430: 024E4F00
	s_or_b32 vcc_lo, s7, s3                                    // 000000077434: 8C6A0307
	s_or_b32 s3, s9, s5                                        // 000000077438: 8C030509
	v_cndmask_b32_e32 v38, v1, v38, vcc_lo                     // 00000007743C: 024C4D01
	s_or_b32 vcc_lo, s8, s4                                    // 000000077440: 8C6A0408
	v_cndmask_b32_e64 v33, v3, v33, s3                         // 000000077444: D5010021 000E4303
	v_cndmask_b32_e32 v36, v2, v36, vcc_lo                     // 00000007744C: 02484902
	s_waitcnt vmcnt(1)                                         // 000000077450: BF8907F7
	v_cmp_gt_f32_e32 vcc_lo, v31, v4                           // 000000077454: 7C28091F
	v_cmp_gt_f32_e64 s3, v30, v5                               // 000000077458: D4140003 00020B1E
	v_cmp_gt_f32_e64 s4, v29, v6                               // 000000077460: D4140004 00020D1D
	v_cmp_gt_f32_e64 s5, v28, v7                               // 000000077468: D4140005 00020F1C
	s_or_b32 vcc_lo, s10, vcc_lo                               // 000000077470: 8C6A6A0A
	v_cndmask_b32_e32 v31, v4, v31, vcc_lo                     // 000000077474: 023E3F04
	s_or_b32 vcc_lo, s11, s3                                   // 000000077478: 8C6A030B
	s_or_b32 s3, s13, s5                                       // 00000007747C: 8C03050D
	v_cndmask_b32_e32 v30, v5, v30, vcc_lo                     // 000000077480: 023C3D05
	s_or_b32 vcc_lo, s12, s4                                   // 000000077484: 8C6A040C
	v_cndmask_b32_e64 v28, v7, v28, s3                         // 000000077488: D501001C 000E3907
	v_cndmask_b32_e32 v29, v6, v29, vcc_lo                     // 000000077490: 023A3B06
	s_waitcnt vmcnt(0)                                         // 000000077494: BF8903F7
	v_cmp_gt_f32_e32 vcc_lo, v27, v8                           // 000000077498: 7C28111B
	v_cmp_gt_f32_e64 s3, v26, v9                               // 00000007749C: D4140003 0002131A
	v_cmp_gt_f32_e64 s4, v23, v10                              // 0000000774A4: D4140004 00021517
	v_cmp_gt_f32_e64 s5, v22, v11                              // 0000000774AC: D4140005 00021716
	s_or_b32 vcc_lo, s16, vcc_lo                               // 0000000774B4: 8C6A6A10
	v_cndmask_b32_e32 v27, v8, v27, vcc_lo                     // 0000000774B8: 02363708
	s_or_b32 vcc_lo, s17, s3                                   // 0000000774BC: 8C6A0311
	v_cndmask_b32_e32 v26, v9, v26, vcc_lo                     // 0000000774C0: 02343509
	s_or_b32 vcc_lo, s18, s4                                   // 0000000774C4: 8C6A0412
	v_cndmask_b32_e32 v23, v10, v23, vcc_lo                    // 0000000774C8: 022E2F0A
	s_or_b32 vcc_lo, s19, s5                                   // 0000000774CC: 8C6A0513
	s_or_b32 s27, s20, s27                                     // 0000000774D0: 8C1B1B14
	v_cndmask_b32_e32 v22, v11, v22, vcc_lo                    // 0000000774D4: 022C2D0B
	s_and_not1_b32 exec_lo, exec_lo, s27                       // 0000000774D8: 917E1B7E
	s_cbranch_execnz 65382                                     // 0000000774DC: BFA6FF66 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2178>
	s_or_b32 exec_lo, exec_lo, s27                             // 0000000774E0: 8C7E1B7E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 0000000774E4: BF870499
	s_or_b32 exec_lo, exec_lo, s25                             // 0000000774E8: 8C7E197E
	s_mov_b32 s22, exec_lo                                     // 0000000774EC: BE96007E
	v_cmpx_gt_u32_e64 s44, v41                                 // 0000000774F0: D4CC007E 0002522C
	s_cbranch_execz 203                                        // 0000000774F8: BFA500CB <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2728>
	v_mul_lo_u32 v12, v41, s51                                 // 0000000774FC: D72C000C 00006729
	v_mov_b32_e32 v17, 0                                       // 000000077504: 7E220280
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000077508: BF870092
	v_lshrrev_b32_e32 v16, 2, v12                              // 00000007750C: 32201882
	v_lshlrev_b64 v[12:13], 4, v[16:17]                        // 000000077510: D73C000C 00022084
	v_add_nc_u32_e32 v16, s48, v41                             // 000000077518: 4A205230
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)// 00000007751C: BF870191
	v_add_nc_u32_e32 v21, s48, v16                             // 000000077520: 4A2A2030
	v_add_co_u32 v12, vcc_lo, v18, v12                         // 000000077524: D7006A0C 00021912
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007752C: BF870001
	v_add_co_ci_u32_e64 v13, null, v19, v13, vcc_lo            // 000000077530: D5207C0D 01AA1B13
	v_cmp_gt_u32_e32 vcc_lo, s44, v16                          // 000000077538: 7C98202C
	global_load_b128 v[12:15], v[12:13], off                   // 00000007753C: DC5E0000 0C7C000C
	s_and_saveexec_b32 s4, vcc_lo                              // 000000077544: BE84206A
	s_cbranch_execz 54                                         // 000000077548: BFA50036 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2524>
	v_mul_lo_u32 v0, v16, s51                                  // 00000007754C: D72C0000 00006710
	s_mov_b32 s5, exec_lo                                      // 000000077554: BE85007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000077558: BF870091
	v_lshrrev_b32_e32 v16, 2, v0                               // 00000007755C: 32200082
	v_lshlrev_b64 v[0:1], 4, v[16:17]                          // 000000077560: D73C0000 00022084
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000077568: BF870091
	v_add_co_u32 v0, s3, v18, v0                               // 00000007756C: D7000300 00020112
	v_add_co_ci_u32_e64 v1, null, v19, v1, s3                  // 000000077574: D5207C01 000E0313
	global_load_b128 v[0:3], v[0:1], off                       // 00000007757C: DC5E0000 007C0000
	v_cmpx_gt_u32_e64 s44, v21                                 // 000000077584: D4CC007E 00022A2C
	s_xor_b32 s5, exec_lo, s5                                  // 00000007758C: 8D05057E
	s_cbranch_execz 34                                         // 000000077590: BFA50022 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x251c>
	v_mul_lo_u32 v4, v21, s51                                  // 000000077594: D72C0004 00006715
	v_mov_b32_e32 v17, 0                                       // 00000007759C: 7E220280
	s_mov_b32 s6, exec_lo                                      // 0000000775A0: BE86007E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000775A4: BF870092
	v_lshrrev_b32_e32 v16, 2, v4                               // 0000000775A8: 32200882
	v_lshlrev_b64 v[4:5], 4, v[16:17]                          // 0000000775AC: D73C0004 00022084
	v_add_nc_u32_e32 v16, s48, v21                             // 0000000775B4: 4A202A30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000775B8: BF870092
	v_add_co_u32 v4, s3, v18, v4                               // 0000000775BC: D7000304 00020912
	v_add_co_ci_u32_e64 v5, null, v19, v5, s3                  // 0000000775C4: D5207C05 000E0B13
	global_load_b128 v[4:7], v[4:5], off                       // 0000000775CC: DC5E0000 047C0004
	v_cmpx_gt_u32_e64 s44, v16                                 // 0000000775D4: D4CC007E 0002202C
	s_xor_b32 s6, exec_lo, s6                                  // 0000000775DC: 8D06067E
	s_cbranch_execz 13                                         // 0000000775E0: BFA5000D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2518>
	v_mul_lo_u32 v8, v16, s51                                  // 0000000775E4: D72C0008 00006710
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000775EC: BF870091
	v_lshrrev_b32_e32 v16, 2, v8                               // 0000000775F0: 32201082
	v_lshlrev_b64 v[8:9], 4, v[16:17]                          // 0000000775F4: D73C0008 00022084
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000775FC: BF870091
	v_add_co_u32 v8, s3, v18, v8                               // 000000077600: D7000308 00021112
	v_add_co_ci_u32_e64 v9, null, v19, v9, s3                  // 000000077608: D5207C09 000E1313
	global_load_b128 v[8:11], v[8:9], off                      // 000000077610: DC5E0000 087C0008
	s_or_b32 exec_lo, exec_lo, s6                              // 000000077618: 8C7E067E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007761C: BF870009
	s_or_b32 exec_lo, exec_lo, s5                              // 000000077620: 8C7E057E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000077624: BF870009
	s_or_b32 exec_lo, exec_lo, s4                              // 000000077628: 8C7E047E
	v_cmp_u_f32_e64 s3, v34, v34                               // 00000007762C: D4180003 00024522
	s_waitcnt vmcnt(0)                                         // 000000077634: BF8903F7
	v_cmp_gt_f32_e64 s4, v34, v12                              // 000000077638: D4140004 00021922
	v_cmp_u_f32_e64 s5, v37, v37                               // 000000077640: D4180005 00024B25
	v_cmp_gt_f32_e64 s6, v37, v13                              // 000000077648: D4140006 00021B25
	v_cmp_u_f32_e64 s7, v35, v35                               // 000000077650: D4180007 00024723
	v_cmp_gt_f32_e64 s8, v35, v14                              // 000000077658: D4140008 00021D23
	v_cmp_u_f32_e64 s9, v32, v32                               // 000000077660: D4180009 00024120
	v_cmp_gt_f32_e64 s10, v32, v15                             // 000000077668: D414000A 00021F20
	s_or_b32 s3, s3, s4                                        // 000000077670: 8C030403
	s_or_b32 s4, s5, s6                                        // 000000077674: 8C040605
	s_or_b32 s5, s7, s8                                        // 000000077678: 8C050807
	s_or_b32 s6, s9, s10                                       // 00000007767C: 8C060A09
	s_and_saveexec_b32 s23, vcc_lo                             // 000000077680: BE97206A
	s_cbranch_execz 95                                         // 000000077684: BFA5005F <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2704>
	v_cmp_u_f32_e32 vcc_lo, v39, v39                           // 000000077688: 7C304F27
	v_cmp_gt_f32_e64 s7, v39, v0                               // 00000007768C: D4140007 00020127
	v_cmp_u_f32_e64 s8, v38, v38                               // 000000077694: D4180008 00024D26
	v_cmp_gt_f32_e64 s9, v38, v1                               // 00000007769C: D4140009 00020326
	v_cmp_u_f32_e64 s10, v36, v36                              // 0000000776A4: D418000A 00024924
	v_cmp_gt_f32_e64 s11, v36, v2                              // 0000000776AC: D414000B 00020524
	v_cmp_u_f32_e64 s12, v33, v33                              // 0000000776B4: D418000C 00024321
	v_cmp_gt_f32_e64 s13, v33, v3                              // 0000000776BC: D414000D 00020721
	s_or_b32 vcc_lo, vcc_lo, s7                                // 0000000776C4: 8C6A076A
	s_or_b32 s7, s8, s9                                        // 0000000776C8: 8C070908
	s_or_b32 s8, s10, s11                                      // 0000000776CC: 8C080B0A
	s_mov_b32 s24, exec_lo                                     // 0000000776D0: BE98007E
	s_or_b32 s9, s12, s13                                      // 0000000776D4: 8C090D0C
	v_cmpx_gt_u32_e64 s44, v21                                 // 0000000776D8: D4CC007E 00022A2C
	s_cbranch_execz 64                                         // 0000000776E0: BFA50040 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x26e4>
	v_cmp_u_f32_e64 s10, v31, v31                              // 0000000776E4: D418000A 00023F1F
	v_cmp_gt_f32_e64 s11, v31, v4                              // 0000000776EC: D414000B 0002091F
	v_cmp_u_f32_e64 s12, v30, v30                              // 0000000776F4: D418000C 00023D1E
	v_cmp_gt_f32_e64 s13, v30, v5                              // 0000000776FC: D414000D 00020B1E
	v_cmp_u_f32_e64 s16, v29, v29                              // 000000077704: D4180010 00023B1D
	v_cmp_gt_f32_e64 s17, v29, v6                              // 00000007770C: D4140011 00020D1D
	v_cmp_u_f32_e64 s18, v28, v28                              // 000000077714: D4180012 0002391C
	v_cmp_gt_f32_e64 s19, v28, v7                              // 00000007771C: D4140013 00020F1C
	v_add_nc_u32_e32 v16, s48, v21                             // 000000077724: 4A202A30
	s_or_b32 s10, s10, s11                                     // 000000077728: 8C0A0B0A
	s_or_b32 s11, s12, s13                                     // 00000007772C: 8C0B0D0C
	s_or_b32 s12, s16, s17                                     // 000000077730: 8C0C1110
	s_or_b32 s13, s18, s19                                     // 000000077734: 8C0D1312
	s_mov_b32 s25, exec_lo                                     // 000000077738: BE99007E
	v_cmpx_gt_u32_e64 s44, v16                                 // 00000007773C: D4CC007E 0002202C
	s_cbranch_execz 30                                         // 000000077744: BFA5001E <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x26c0>
	v_cmp_u_f32_e64 s16, v27, v27                              // 000000077748: D4180010 0002371B
	v_cmp_gt_f32_e64 s17, v27, v8                              // 000000077750: D4140011 0002111B
	v_cmp_u_f32_e64 s18, v26, v26                              // 000000077758: D4180012 0002351A
	v_cmp_gt_f32_e64 s19, v26, v9                              // 000000077760: D4140013 0002131A
	v_cmp_u_f32_e64 s20, v22, v22                              // 000000077768: D4180014 00022D16
	v_cmp_gt_f32_e64 s21, v22, v11                             // 000000077770: D4140015 00021716
	s_or_b32 s16, s16, s17                                     // 000000077778: 8C101110
	v_cmp_gt_f32_e64 s17, v23, v10                             // 00000007777C: D4140011 00021517
	v_cndmask_b32_e64 v27, v8, v27, s16                        // 000000077784: D501001B 00423708
	v_cmp_u_f32_e64 s16, v23, v23                              // 00000007778C: D4180010 00022F17
	s_or_b32 s18, s18, s19                                     // 000000077794: 8C121312
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 000000077798: BF8704A9
	v_cndmask_b32_e64 v26, v9, v26, s18                        // 00000007779C: D501001A 004A3509
	s_or_b32 s16, s16, s17                                     // 0000000777A4: 8C101110
	v_cndmask_b32_e64 v23, v10, v23, s16                       // 0000000777A8: D5010017 00422F0A
	s_or_b32 s16, s20, s21                                     // 0000000777B0: 8C101514
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000777B4: BF870009
	v_cndmask_b32_e64 v22, v11, v22, s16                       // 0000000777B8: D5010016 00422D0B
	s_or_b32 exec_lo, exec_lo, s25                             // 0000000777C0: 8C7E197E
	v_cndmask_b32_e64 v31, v4, v31, s10                        // 0000000777C4: D501001F 002A3F04
	v_cndmask_b32_e64 v30, v5, v30, s11                        // 0000000777CC: D501001E 002E3D05
	v_cndmask_b32_e64 v29, v6, v29, s12                        // 0000000777D4: D501001D 00323B06
	v_cndmask_b32_e64 v28, v7, v28, s13                        // 0000000777DC: D501001C 00363907
	s_or_b32 exec_lo, exec_lo, s24                             // 0000000777E4: 8C7E187E
	v_cndmask_b32_e32 v39, v0, v39, vcc_lo                     // 0000000777E8: 024E4F00
	v_cndmask_b32_e64 v38, v1, v38, s7                         // 0000000777EC: D5010026 001E4D01
	v_cndmask_b32_e64 v36, v2, v36, s8                         // 0000000777F4: D5010024 00224902
	v_cndmask_b32_e64 v33, v3, v33, s9                         // 0000000777FC: D5010021 00264303
	s_or_b32 exec_lo, exec_lo, s23                             // 000000077804: 8C7E177E
	v_cndmask_b32_e64 v34, v12, v34, s3                        // 000000077808: D5010022 000E450C
	v_cndmask_b32_e64 v37, v13, v37, s4                        // 000000077810: D5010025 00124B0D
	v_cndmask_b32_e64 v35, v14, v35, s5                        // 000000077818: D5010023 0016470E
	v_cndmask_b32_e64 v32, v15, v32, s6                        // 000000077820: D5010020 001A410F
	s_or_b32 exec_lo, exec_lo, s22                             // 000000077828: 8C7E167E
	v_cmp_u_f32_e32 vcc_lo, v34, v34                           // 00000007782C: 7C304522
	v_cmp_gt_f32_e64 s3, v34, v39                              // 000000077830: D4140003 00024F22
	v_cmp_u_f32_e64 s4, v37, v37                               // 000000077838: D4180004 00024B25
	v_cmp_gt_f32_e64 s5, v37, v38                              // 000000077840: D4140005 00024D25
	v_cmp_u_f32_e64 s6, v35, v35                               // 000000077848: D4180006 00024723
	v_cmp_gt_f32_e64 s7, v35, v36                              // 000000077850: D4140007 00024923
	s_or_b32 vcc_lo, vcc_lo, s3                                // 000000077858: 8C6A036A
	v_cmp_gt_f32_e64 s3, v32, v33                              // 00000007785C: D4140003 00024320
	v_cndmask_b32_e32 v0, v39, v34, vcc_lo                     // 000000077864: 02004527
	s_or_b32 vcc_lo, s4, s5                                    // 000000077868: 8C6A0504
	v_cndmask_b32_e32 v1, v38, v37, vcc_lo                     // 00000007786C: 02024B26
	s_or_b32 vcc_lo, s6, s7                                    // 000000077870: 8C6A0706
	s_delay_alu instid0(VALU_DEP_2)                            // 000000077874: BF870002
	v_cmp_u_f32_e64 s4, v0, v0                                 // 000000077878: D4180004 00020100
	v_cndmask_b32_e32 v2, v36, v35, vcc_lo                     // 000000077880: 02044724
	v_cmp_u_f32_e32 vcc_lo, v32, v32                           // 000000077884: 7C304120
	v_cmp_gt_f32_e64 s5, v0, v31                               // 000000077888: D4140005 00023F00
	v_cmp_u_f32_e64 s6, v1, v1                                 // 000000077890: D4180006 00020301
	v_cmp_gt_f32_e64 s7, v1, v30                               // 000000077898: D4140007 00023D01
	s_or_b32 vcc_lo, vcc_lo, s3                                // 0000000778A0: 8C6A036A
	v_cndmask_b32_e32 v3, v33, v32, vcc_lo                     // 0000000778A4: 02064121
	s_or_b32 vcc_lo, s4, s5                                    // 0000000778A8: 8C6A0504
	v_cmp_gt_f32_e64 s3, v2, v29                               // 0000000778AC: D4140003 00023B02
	v_cndmask_b32_e32 v0, v31, v0, vcc_lo                      // 0000000778B4: 0200011F
	s_or_b32 vcc_lo, s6, s7                                    // 0000000778B8: 8C6A0706
	v_cmp_u_f32_e64 s4, v3, v3                                 // 0000000778BC: D4180004 00020703
	v_cndmask_b32_e32 v1, v30, v1, vcc_lo                      // 0000000778C4: 0202031E
	v_cmp_u_f32_e32 vcc_lo, v2, v2                             // 0000000778C8: 7C300502
	v_cmp_gt_f32_e64 s5, v3, v28                               // 0000000778CC: D4140005 00023903
	v_cmp_u_f32_e64 s6, v0, v0                                 // 0000000778D4: D4180006 00020100
	v_cmp_gt_f32_e64 s7, v0, v27                               // 0000000778DC: D4140007 00023700
	s_or_b32 vcc_lo, vcc_lo, s3                                // 0000000778E4: 8C6A036A
	v_cmp_gt_f32_e64 s3, v1, v26                               // 0000000778E8: D4140003 00023501
	v_cndmask_b32_e32 v2, v29, v2, vcc_lo                      // 0000000778F0: 0204051D
	s_or_b32 vcc_lo, s4, s5                                    // 0000000778F4: 8C6A0504
	v_cndmask_b32_e32 v3, v28, v3, vcc_lo                      // 0000000778F8: 0206071C
	s_or_b32 vcc_lo, s6, s7                                    // 0000000778FC: 8C6A0706
	s_delay_alu instid0(VALU_DEP_2)                            // 000000077900: BF870002
	v_cmp_u_f32_e64 s4, v2, v2                                 // 000000077904: D4180004 00020502
	v_cndmask_b32_e32 v0, v27, v0, vcc_lo                      // 00000007790C: 0200011B
	v_cmp_u_f32_e32 vcc_lo, v1, v1                             // 000000077910: 7C300301
	v_cmp_gt_f32_e64 s5, v2, v23                               // 000000077914: D4140005 00022F02
	v_cmp_u_f32_e64 s6, v3, v3                                 // 00000007791C: D4180006 00020703
	v_cmp_gt_f32_e64 s7, v3, v22                               // 000000077924: D4140007 00022D03
	s_or_b32 vcc_lo, vcc_lo, s3                                // 00000007792C: 8C6A036A
	v_cndmask_b32_e32 v1, v26, v1, vcc_lo                      // 000000077930: 0202031A
	s_or_b32 vcc_lo, s4, s5                                    // 000000077934: 8C6A0504
	v_cndmask_b32_e32 v2, v23, v2, vcc_lo                      // 000000077938: 02040517
	s_or_b32 vcc_lo, s6, s7                                    // 00000007793C: 8C6A0706
	v_cndmask_b32_e32 v3, v22, v3, vcc_lo                      // 000000077940: 02060716
	s_cbranch_execnz 461                                       // 000000077944: BFA601CD <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2f7c>
	v_dual_mov_b32 v33, s50 :: v_dual_mov_b32 v36, s50         // 000000077948: CA100032 21240032
	v_dual_mov_b32 v34, s50 :: v_dual_mov_b32 v31, s50         // 000000077950: CA100032 221E0032
	v_dual_mov_b32 v38, s50 :: v_dual_mov_b32 v37, s50         // 000000077958: CA100032 26240032
	v_dual_mov_b32 v35, s50 :: v_dual_mov_b32 v32, s50         // 000000077960: CA100032 23200032
	v_dual_mov_b32 v30, s50 :: v_dual_mov_b32 v29, s50         // 000000077968: CA100032 1E1C0032
	v_dual_mov_b32 v28, s50 :: v_dual_mov_b32 v27, s50         // 000000077970: CA100032 1C1A0032
	v_dual_mov_b32 v26, s50 :: v_dual_mov_b32 v23, s50         // 000000077978: CA100032 1A160032
	v_dual_mov_b32 v22, s50 :: v_dual_mov_b32 v21, s50         // 000000077980: CA100032 16140032
	s_and_saveexec_b32 s24, s2                                 // 000000077988: BE982002
	s_cbranch_execz 172                                        // 00000007798C: BFA500AC <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2b40>
	v_dual_mov_b32 v21, s50 :: v_dual_mov_b32 v12, 0           // 000000077990: CA100032 150C0080
	v_dual_mov_b32 v22, s50 :: v_dual_mov_b32 v23, s50         // 000000077998: CA100032 16160032
	v_dual_mov_b32 v26, s50 :: v_dual_mov_b32 v27, s50         // 0000000779A0: CA100032 1A1A0032
	v_dual_mov_b32 v28, s50 :: v_dual_mov_b32 v29, s50         // 0000000779A8: CA100032 1C1C0032
	v_dual_mov_b32 v30, s50 :: v_dual_mov_b32 v35, s50         // 0000000779B0: CA100032 1E220032
	v_dual_mov_b32 v32, s50 :: v_dual_mov_b32 v37, s50         // 0000000779B8: CA100032 20240032
	v_dual_mov_b32 v38, s50 :: v_dual_mov_b32 v31, s50         // 0000000779C0: CA100032 261E0032
	v_dual_mov_b32 v34, s50 :: v_dual_mov_b32 v33, s50         // 0000000779C8: CA100032 22200032
	v_mov_b32_e32 v36, s50                                     // 0000000779D0: 7E480232
	s_lshl_b32 s26, s48, 1                                     // 0000000779D4: 841A8130
	s_mov_b32 s25, 0                                           // 0000000779D8: BE990080
	s_add_i32 s27, s48, s48                                    // 0000000779DC: 811B3030
	v_lshrrev_b32_e32 v11, 2, v20                              // 0000000779E0: 32162882
	v_cmp_u_f32_e64 s2, v36, v36                               // 0000000779E4: D4180002 00024924
	v_cmp_u_f32_e64 s3, v34, v34                               // 0000000779EC: D4180003 00024522
	v_cmp_u_f32_e64 s4, v31, v31                               // 0000000779F4: D4180004 00023F1F
	v_cmp_u_f32_e64 s5, v38, v38                               // 0000000779FC: D4180005 00024D26
	v_lshlrev_b64 v[0:1], 4, v[11:12]                          // 000000077A04: D73C0000 00021684
	v_cmp_u_f32_e64 s6, v37, v37                               // 000000077A0C: D4180006 00024B25
	v_cmp_u_f32_e64 s7, v35, v35                               // 000000077A14: D4180007 00024723
	v_cmp_u_f32_e64 s8, v32, v32                               // 000000077A1C: D4180008 00024120
	v_cmp_u_f32_e64 s9, v30, v30                               // 000000077A24: D4180009 00023D1E
	v_cmp_u_f32_e64 s10, v29, v29                              // 000000077A2C: D418000A 00023B1D
	v_add_co_u32 v0, vcc_lo, v18, v0                           // 000000077A34: D7006A00 00020112
	s_delay_alu instid0(VALU_DEP_1)                            // 000000077A3C: BF870001
	v_add_co_ci_u32_e64 v1, null, v19, v1, vcc_lo              // 000000077A40: D5207C01 01AA0313
	v_cmp_u_f32_e64 s11, v28, v28                              // 000000077A48: D418000B 0002391C
	v_cmp_u_f32_e64 s12, v27, v27                              // 000000077A50: D418000C 0002371B
	v_cmp_u_f32_e64 s13, v26, v26                              // 000000077A58: D418000D 0002351A
	global_load_b128 v[13:16], v[0:1], off                     // 000000077A60: DC5E0000 0D7C0000
	v_add_nc_u32_e32 v17, s48, v20                             // 000000077A68: 4A222830
	v_add_nc_u32_e32 v4, s26, v20                              // 000000077A6C: 4A08281A
	v_cmp_u_f32_e64 s16, v23, v23                              // 000000077A70: D4180010 00022F17
	v_cmp_u_f32_e64 s17, v22, v22                              // 000000077A78: D4180011 00022D16
	v_cmp_u_f32_e64 s18, v21, v21                              // 000000077A80: D4180012 00022B15
	v_lshrrev_b32_e32 v11, 2, v17                              // 000000077A88: 32162282
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000077A8C: BF8700A1
	v_lshlrev_b64 v[2:3], 4, v[11:12]                          // 000000077A90: D73C0002 00021684
	v_lshrrev_b32_e32 v11, 2, v4                               // 000000077A98: 32160882
	v_lshlrev_b64 v[4:5], 4, v[11:12]                          // 000000077A9C: D73C0004 00021684
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000077AA4: BF870093
	v_add_co_u32 v0, vcc_lo, v18, v2                           // 000000077AA8: D7006A00 00020512
	v_add_co_ci_u32_e64 v1, null, v19, v3, vcc_lo              // 000000077AB0: D5207C01 01AA0713
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)// 000000077AB8: BF870143
	v_add_co_u32 v4, vcc_lo, v18, v4                           // 000000077ABC: D7006A04 00020912
	global_load_b128 v[0:3], v[0:1], off                       // 000000077AC4: DC5E0000 007C0000
	v_add_nc_u32_e32 v6, s49, v20                              // 000000077ACC: 4A0C2831
	v_add_co_ci_u32_e64 v5, null, v19, v5, vcc_lo              // 000000077AD0: D5207C05 01AA0B13
	v_lshrrev_b32_e32 v11, 2, v6                               // 000000077AD8: 32160C82
	global_load_b128 v[4:7], v[4:5], off                       // 000000077ADC: DC5E0000 047C0004
	v_lshlrev_b64 v[8:9], 4, v[11:12]                          // 000000077AE4: D73C0008 00021684
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000077AEC: BF870091
	v_add_co_u32 v8, vcc_lo, v18, v8                           // 000000077AF0: D7006A08 00021112
	v_add_co_ci_u32_e64 v9, null, v19, v9, vcc_lo              // 000000077AF8: D5207C09 01AA1313
	v_cmp_u_f32_e32 vcc_lo, v33, v33                           // 000000077B00: 7C304321
	global_load_b128 v[8:11], v[8:9], off                      // 000000077B04: DC5E0000 087C0008
	s_waitcnt vmcnt(3)                                         // 000000077B0C: BF890FF7
	v_cmp_gt_f32_e64 s20, v33, v13                             // 000000077B10: D4140014 00021B21
	v_cmp_gt_f32_e64 s21, v36, v14                             // 000000077B18: D4140015 00021D24
	v_cmp_gt_f32_e64 s22, v34, v15                             // 000000077B20: D4140016 00021F22
	v_cmp_gt_f32_e64 s23, v31, v16                             // 000000077B28: D4140017 0002211F
	s_or_b32 vcc_lo, vcc_lo, s20                               // 000000077B30: 8C6A146A
	v_cndmask_b32_e32 v33, v13, v33, vcc_lo                    // 000000077B34: 0242430D
	s_or_b32 vcc_lo, s2, s21                                   // 000000077B38: 8C6A1502
	s_or_b32 s2, s4, s23                                       // 000000077B3C: 8C021704
	v_cndmask_b32_e32 v36, v14, v36, vcc_lo                    // 000000077B40: 0248490E
	s_or_b32 vcc_lo, s3, s22                                   // 000000077B44: 8C6A1603
	v_cndmask_b32_e64 v31, v16, v31, s2                        // 000000077B48: D501001F 000A3F10
	v_cndmask_b32_e32 v34, v15, v34, vcc_lo                    // 000000077B50: 0244450F
	v_add3_u32 v20, s27, s48, v17                              // 000000077B54: D6550014 0444601B
	s_waitcnt vmcnt(2)                                         // 000000077B5C: BF890BF7
	v_cmp_gt_f32_e32 vcc_lo, v38, v0                           // 000000077B60: 7C280126
	v_cmp_gt_f32_e64 s2, v37, v1                               // 000000077B64: D4140002 00020325
	v_cmp_gt_f32_e64 s3, v35, v2                               // 000000077B6C: D4140003 00020523
	v_cmp_gt_f32_e64 s4, v32, v3                               // 000000077B74: D4140004 00020720
	s_or_b32 vcc_lo, s5, vcc_lo                                // 000000077B7C: 8C6A6A05
	v_dual_cndmask_b32 v38, v0, v38 :: v_dual_add_nc_u32 v17, s49, v20// 000000077B80: CA604D00 26102831
	s_or_b32 vcc_lo, s6, s2                                    // 000000077B88: 8C6A0206
	s_or_b32 s2, s8, s4                                        // 000000077B8C: 8C020408
	v_cndmask_b32_e32 v37, v1, v37, vcc_lo                     // 000000077B90: 024A4B01
	s_or_b32 vcc_lo, s7, s3                                    // 000000077B94: 8C6A0307
	v_cndmask_b32_e64 v32, v3, v32, s2                         // 000000077B98: D5010020 000A4103
	v_cndmask_b32_e32 v35, v2, v35, vcc_lo                     // 000000077BA0: 02464702
	s_waitcnt vmcnt(1)                                         // 000000077BA4: BF8907F7
	v_cmp_gt_f32_e32 vcc_lo, v30, v4                           // 000000077BA8: 7C28091E
	v_cmp_gt_f32_e64 s2, v29, v5                               // 000000077BAC: D4140002 00020B1D
	v_cmp_gt_f32_e64 s3, v28, v6                               // 000000077BB4: D4140003 00020D1C
	v_cmp_gt_f32_e64 s4, v27, v7                               // 000000077BBC: D4140004 00020F1B
	v_cmp_le_u32_e64 s19, s44, v17                             // 000000077BC4: D44B0013 0002222C
	s_or_b32 vcc_lo, s9, vcc_lo                                // 000000077BCC: 8C6A6A09
	v_cndmask_b32_e32 v30, v4, v30, vcc_lo                     // 000000077BD0: 023C3D04
	s_or_b32 vcc_lo, s10, s2                                   // 000000077BD4: 8C6A020A
	s_or_b32 s2, s12, s4                                       // 000000077BD8: 8C02040C
	v_cndmask_b32_e32 v29, v5, v29, vcc_lo                     // 000000077BDC: 023A3B05
	s_or_b32 vcc_lo, s11, s3                                   // 000000077BE0: 8C6A030B
	v_cndmask_b32_e64 v27, v7, v27, s2                         // 000000077BE4: D501001B 000A3707
	v_cndmask_b32_e32 v28, v6, v28, vcc_lo                     // 000000077BEC: 02383906
	s_waitcnt vmcnt(0)                                         // 000000077BF0: BF8903F7
	v_cmp_gt_f32_e32 vcc_lo, v26, v8                           // 000000077BF4: 7C28111A
	v_cmp_gt_f32_e64 s2, v23, v9                               // 000000077BF8: D4140002 00021317
	v_cmp_gt_f32_e64 s3, v22, v10                              // 000000077C00: D4140003 00021516
	v_cmp_gt_f32_e64 s4, v21, v11                              // 000000077C08: D4140004 00021715
	s_or_b32 vcc_lo, s13, vcc_lo                               // 000000077C10: 8C6A6A0D
	v_cndmask_b32_e32 v26, v8, v26, vcc_lo                     // 000000077C14: 02343508
	s_or_b32 vcc_lo, s16, s2                                   // 000000077C18: 8C6A0210
	v_cndmask_b32_e32 v23, v9, v23, vcc_lo                     // 000000077C1C: 022E2F09
	s_or_b32 vcc_lo, s17, s3                                   // 000000077C20: 8C6A0311
	v_cndmask_b32_e32 v22, v10, v22, vcc_lo                    // 000000077C24: 022C2D0A
	s_or_b32 vcc_lo, s18, s4                                   // 000000077C28: 8C6A0412
	s_or_b32 s25, s19, s25                                     // 000000077C2C: 8C191913
	v_cndmask_b32_e32 v21, v11, v21, vcc_lo                    // 000000077C30: 022A2B0B
	s_and_not1_b32 exec_lo, exec_lo, s25                       // 000000077C34: 917E197E
	s_cbranch_execnz 65385                                     // 000000077C38: BFA6FF69 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x28e0>
	s_or_b32 exec_lo, exec_lo, s25                             // 000000077C3C: 8C7E197E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000077C40: BF870499
	s_or_b32 exec_lo, exec_lo, s24                             // 000000077C44: 8C7E187E
	s_mov_b32 s21, exec_lo                                     // 000000077C48: BE95007E
	v_cmpx_gt_u32_e64 s44, v20                                 // 000000077C4C: D4CC007E 0002282C
	s_cbranch_execz 194                                        // 000000077C54: BFA500C2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2e60>
	v_lshrrev_b32_e32 v16, 2, v20                              // 000000077C58: 32202882
	v_mov_b32_e32 v17, 0                                       // 000000077C5C: 7E220280
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000077C60: BF8700A1
	v_lshlrev_b64 v[12:13], 4, v[16:17]                        // 000000077C64: D73C000C 00022084
	v_add_nc_u32_e32 v16, s48, v20                             // 000000077C6C: 4A202830
	v_add_nc_u32_e32 v20, s48, v16                             // 000000077C70: 4A282030
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000077C74: BF870093
	v_add_co_u32 v12, vcc_lo, v18, v12                         // 000000077C78: D7006A0C 00021912
	v_add_co_ci_u32_e64 v13, null, v19, v13, vcc_lo            // 000000077C80: D5207C0D 01AA1B13
	v_cmp_gt_u32_e32 vcc_lo, s44, v16                          // 000000077C88: 7C98202C
	global_load_b128 v[12:15], v[12:13], off                   // 000000077C8C: DC5E0000 0C7C000C
	s_and_saveexec_b32 s3, vcc_lo                              // 000000077C94: BE83206A
	s_cbranch_execz 48                                         // 000000077C98: BFA50030 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2c5c>
	v_lshrrev_b32_e32 v16, 2, v16                              // 000000077C9C: 32202082
	s_mov_b32 s4, exec_lo                                      // 000000077CA0: BE84007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000077CA4: BF870091
	v_lshlrev_b64 v[0:1], 4, v[16:17]                          // 000000077CA8: D73C0000 00022084
	v_add_co_u32 v0, s2, v18, v0                               // 000000077CB0: D7000200 00020112
	s_delay_alu instid0(VALU_DEP_1)                            // 000000077CB8: BF870001
	v_add_co_ci_u32_e64 v1, null, v19, v1, s2                  // 000000077CBC: D5207C01 000A0313
	global_load_b128 v[0:3], v[0:1], off                       // 000000077CC4: DC5E0000 007C0000
	v_cmpx_gt_u32_e64 s44, v20                                 // 000000077CCC: D4CC007E 0002282C
	s_xor_b32 s4, exec_lo, s4                                  // 000000077CD4: 8D04047E
	s_cbranch_execz 30                                         // 000000077CD8: BFA5001E <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2c54>
	v_lshrrev_b32_e32 v16, 2, v20                              // 000000077CDC: 32202882
	v_mov_b32_e32 v17, 0                                       // 000000077CE0: 7E220280
	s_mov_b32 s5, exec_lo                                      // 000000077CE4: BE85007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000077CE8: BF870121
	v_lshlrev_b64 v[4:5], 4, v[16:17]                          // 000000077CEC: D73C0004 00022084
	v_add_nc_u32_e32 v16, s48, v20                             // 000000077CF4: 4A202830
	v_add_co_u32 v4, s2, v18, v4                               // 000000077CF8: D7000204 00020912
	s_delay_alu instid0(VALU_DEP_1)                            // 000000077D00: BF870001
	v_add_co_ci_u32_e64 v5, null, v19, v5, s2                  // 000000077D04: D5207C05 000A0B13
	global_load_b128 v[4:7], v[4:5], off                       // 000000077D0C: DC5E0000 047C0004
	v_cmpx_gt_u32_e64 s44, v16                                 // 000000077D14: D4CC007E 0002202C
	s_xor_b32 s5, exec_lo, s5                                  // 000000077D1C: 8D05057E
	s_cbranch_execz 11                                         // 000000077D20: BFA5000B <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2c50>
	v_lshrrev_b32_e32 v16, 2, v16                              // 000000077D24: 32202082
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000077D28: BF870091
	v_lshlrev_b64 v[8:9], 4, v[16:17]                          // 000000077D2C: D73C0008 00022084
	v_add_co_u32 v8, s2, v18, v8                               // 000000077D34: D7000208 00021112
	s_delay_alu instid0(VALU_DEP_1)                            // 000000077D3C: BF870001
	v_add_co_ci_u32_e64 v9, null, v19, v9, s2                  // 000000077D40: D5207C09 000A1313
	global_load_b128 v[8:11], v[8:9], off                      // 000000077D48: DC5E0000 087C0008
	s_or_b32 exec_lo, exec_lo, s5                              // 000000077D50: 8C7E057E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000077D54: BF870009
	s_or_b32 exec_lo, exec_lo, s4                              // 000000077D58: 8C7E047E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000077D5C: BF870009
	s_or_b32 exec_lo, exec_lo, s3                              // 000000077D60: 8C7E037E
	v_cmp_u_f32_e64 s2, v33, v33                               // 000000077D64: D4180002 00024321
	s_waitcnt vmcnt(0)                                         // 000000077D6C: BF8903F7
	v_cmp_gt_f32_e64 s3, v33, v12                              // 000000077D70: D4140003 00021921
	v_cmp_u_f32_e64 s4, v36, v36                               // 000000077D78: D4180004 00024924
	v_cmp_gt_f32_e64 s5, v36, v13                              // 000000077D80: D4140005 00021B24
	v_cmp_u_f32_e64 s6, v34, v34                               // 000000077D88: D4180006 00024522
	v_cmp_gt_f32_e64 s7, v34, v14                              // 000000077D90: D4140007 00021D22
	v_cmp_u_f32_e64 s8, v31, v31                               // 000000077D98: D4180008 00023F1F
	v_cmp_gt_f32_e64 s9, v31, v15                              // 000000077DA0: D4140009 00021F1F
	s_or_b32 s2, s2, s3                                        // 000000077DA8: 8C020302
	s_or_b32 s3, s4, s5                                        // 000000077DAC: 8C030504
	s_or_b32 s4, s6, s7                                        // 000000077DB0: 8C040706
	s_or_b32 s5, s8, s9                                        // 000000077DB4: 8C050908
	s_and_saveexec_b32 s22, vcc_lo                             // 000000077DB8: BE96206A
	s_cbranch_execz 95                                         // 000000077DBC: BFA5005F <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2e3c>
	v_cmp_u_f32_e32 vcc_lo, v38, v38                           // 000000077DC0: 7C304D26
	v_cmp_gt_f32_e64 s6, v38, v0                               // 000000077DC4: D4140006 00020126
	v_cmp_u_f32_e64 s7, v37, v37                               // 000000077DCC: D4180007 00024B25
	v_cmp_gt_f32_e64 s8, v37, v1                               // 000000077DD4: D4140008 00020325
	v_cmp_u_f32_e64 s9, v35, v35                               // 000000077DDC: D4180009 00024723
	v_cmp_gt_f32_e64 s10, v35, v2                              // 000000077DE4: D414000A 00020523
	v_cmp_u_f32_e64 s11, v32, v32                              // 000000077DEC: D418000B 00024120
	v_cmp_gt_f32_e64 s12, v32, v3                              // 000000077DF4: D414000C 00020720
	s_or_b32 vcc_lo, vcc_lo, s6                                // 000000077DFC: 8C6A066A
	s_or_b32 s6, s7, s8                                        // 000000077E00: 8C060807
	s_or_b32 s7, s9, s10                                       // 000000077E04: 8C070A09
	s_mov_b32 s23, exec_lo                                     // 000000077E08: BE97007E
	s_or_b32 s8, s11, s12                                      // 000000077E0C: 8C080C0B
	v_cmpx_gt_u32_e64 s44, v20                                 // 000000077E10: D4CC007E 0002282C
	s_cbranch_execz 64                                         // 000000077E18: BFA50040 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2e1c>
	v_cmp_u_f32_e64 s9, v30, v30                               // 000000077E1C: D4180009 00023D1E
	v_cmp_gt_f32_e64 s10, v30, v4                              // 000000077E24: D414000A 0002091E
	v_cmp_u_f32_e64 s11, v29, v29                              // 000000077E2C: D418000B 00023B1D
	v_cmp_gt_f32_e64 s12, v29, v5                              // 000000077E34: D414000C 00020B1D
	v_cmp_u_f32_e64 s13, v28, v28                              // 000000077E3C: D418000D 0002391C
	v_cmp_gt_f32_e64 s16, v28, v6                              // 000000077E44: D4140010 00020D1C
	v_cmp_u_f32_e64 s17, v27, v27                              // 000000077E4C: D4180011 0002371B
	v_cmp_gt_f32_e64 s18, v27, v7                              // 000000077E54: D4140012 00020F1B
	v_add_nc_u32_e32 v16, s48, v20                             // 000000077E5C: 4A202830
	s_or_b32 s9, s9, s10                                       // 000000077E60: 8C090A09
	s_or_b32 s10, s11, s12                                     // 000000077E64: 8C0A0C0B
	s_or_b32 s11, s13, s16                                     // 000000077E68: 8C0B100D
	s_or_b32 s12, s17, s18                                     // 000000077E6C: 8C0C1211
	s_mov_b32 s24, exec_lo                                     // 000000077E70: BE98007E
	v_cmpx_gt_u32_e64 s44, v16                                 // 000000077E74: D4CC007E 0002202C
	s_cbranch_execz 30                                         // 000000077E7C: BFA5001E <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x2df8>
	v_cmp_u_f32_e64 s13, v26, v26                              // 000000077E80: D418000D 0002351A
	v_cmp_gt_f32_e64 s16, v26, v8                              // 000000077E88: D4140010 0002111A
	v_cmp_u_f32_e64 s17, v23, v23                              // 000000077E90: D4180011 00022F17
	v_cmp_gt_f32_e64 s18, v23, v9                              // 000000077E98: D4140012 00021317
	v_cmp_u_f32_e64 s19, v21, v21                              // 000000077EA0: D4180013 00022B15
	v_cmp_gt_f32_e64 s20, v21, v11                             // 000000077EA8: D4140014 00021715
	s_or_b32 s13, s13, s16                                     // 000000077EB0: 8C0D100D
	v_cmp_gt_f32_e64 s16, v22, v10                             // 000000077EB4: D4140010 00021516
	v_cndmask_b32_e64 v26, v8, v26, s13                        // 000000077EBC: D501001A 00363508
	v_cmp_u_f32_e64 s13, v22, v22                              // 000000077EC4: D418000D 00022D16
	s_or_b32 s17, s17, s18                                     // 000000077ECC: 8C111211
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 000000077ED0: BF8704A9
	v_cndmask_b32_e64 v23, v9, v23, s17                        // 000000077ED4: D5010017 00462F09
	s_or_b32 s13, s13, s16                                     // 000000077EDC: 8C0D100D
	v_cndmask_b32_e64 v22, v10, v22, s13                       // 000000077EE0: D5010016 00362D0A
	s_or_b32 s13, s19, s20                                     // 000000077EE8: 8C0D1413
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000077EEC: BF870009
	v_cndmask_b32_e64 v21, v11, v21, s13                       // 000000077EF0: D5010015 00362B0B
	s_or_b32 exec_lo, exec_lo, s24                             // 000000077EF8: 8C7E187E
	v_cndmask_b32_e64 v30, v4, v30, s9                         // 000000077EFC: D501001E 00263D04
	v_cndmask_b32_e64 v29, v5, v29, s10                        // 000000077F04: D501001D 002A3B05
	v_cndmask_b32_e64 v28, v6, v28, s11                        // 000000077F0C: D501001C 002E3906
	v_cndmask_b32_e64 v27, v7, v27, s12                        // 000000077F14: D501001B 00323707
	s_or_b32 exec_lo, exec_lo, s23                             // 000000077F1C: 8C7E177E
	v_cndmask_b32_e32 v38, v0, v38, vcc_lo                     // 000000077F20: 024C4D00
	v_cndmask_b32_e64 v37, v1, v37, s6                         // 000000077F24: D5010025 001A4B01
	v_cndmask_b32_e64 v35, v2, v35, s7                         // 000000077F2C: D5010023 001E4702
	v_cndmask_b32_e64 v32, v3, v32, s8                         // 000000077F34: D5010020 00224103
	s_or_b32 exec_lo, exec_lo, s22                             // 000000077F3C: 8C7E167E
	v_cndmask_b32_e64 v33, v12, v33, s2                        // 000000077F40: D5010021 000A430C
	v_cndmask_b32_e64 v36, v13, v36, s3                        // 000000077F48: D5010024 000E490D
	v_cndmask_b32_e64 v34, v14, v34, s4                        // 000000077F50: D5010022 0012450E
	v_cndmask_b32_e64 v31, v15, v31, s5                        // 000000077F58: D501001F 00163F0F
	s_or_b32 exec_lo, exec_lo, s21                             // 000000077F60: 8C7E157E
	v_cmp_u_f32_e32 vcc_lo, v33, v33                           // 000000077F64: 7C304321
	v_cmp_gt_f32_e64 s2, v33, v38                              // 000000077F68: D4140002 00024D21
	v_cmp_u_f32_e64 s3, v36, v36                               // 000000077F70: D4180003 00024924
	v_cmp_gt_f32_e64 s4, v36, v37                              // 000000077F78: D4140004 00024B24
	v_cmp_u_f32_e64 s5, v34, v34                               // 000000077F80: D4180005 00024522
	v_cmp_gt_f32_e64 s6, v34, v35                              // 000000077F88: D4140006 00024722
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000077F90: 8C6A026A
	v_cmp_gt_f32_e64 s2, v31, v32                              // 000000077F94: D4140002 0002411F
	v_cndmask_b32_e32 v0, v38, v33, vcc_lo                     // 000000077F9C: 02004326
	s_or_b32 vcc_lo, s3, s4                                    // 000000077FA0: 8C6A0403
	v_cndmask_b32_e32 v1, v37, v36, vcc_lo                     // 000000077FA4: 02024925
	s_or_b32 vcc_lo, s5, s6                                    // 000000077FA8: 8C6A0605
	s_delay_alu instid0(VALU_DEP_2)                            // 000000077FAC: BF870002
	v_cmp_u_f32_e64 s3, v0, v0                                 // 000000077FB0: D4180003 00020100
	v_cndmask_b32_e32 v2, v35, v34, vcc_lo                     // 000000077FB8: 02044523
	v_cmp_u_f32_e32 vcc_lo, v31, v31                           // 000000077FBC: 7C303F1F
	v_cmp_gt_f32_e64 s4, v0, v30                               // 000000077FC0: D4140004 00023D00
	v_cmp_u_f32_e64 s5, v1, v1                                 // 000000077FC8: D4180005 00020301
	v_cmp_gt_f32_e64 s6, v1, v29                               // 000000077FD0: D4140006 00023B01
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000077FD8: 8C6A026A
	v_cndmask_b32_e32 v3, v32, v31, vcc_lo                     // 000000077FDC: 02063F20
	s_or_b32 vcc_lo, s3, s4                                    // 000000077FE0: 8C6A0403
	v_cmp_gt_f32_e64 s2, v2, v28                               // 000000077FE4: D4140002 00023902
	v_cndmask_b32_e32 v0, v30, v0, vcc_lo                      // 000000077FEC: 0200011E
	s_or_b32 vcc_lo, s5, s6                                    // 000000077FF0: 8C6A0605
	v_cmp_u_f32_e64 s3, v3, v3                                 // 000000077FF4: D4180003 00020703
	v_cndmask_b32_e32 v1, v29, v1, vcc_lo                      // 000000077FFC: 0202031D
	v_cmp_u_f32_e32 vcc_lo, v2, v2                             // 000000078000: 7C300502
	v_cmp_gt_f32_e64 s4, v3, v27                               // 000000078004: D4140004 00023703
	v_cmp_u_f32_e64 s5, v0, v0                                 // 00000007800C: D4180005 00020100
	v_cmp_gt_f32_e64 s6, v0, v26                               // 000000078014: D4140006 00023500
	s_or_b32 vcc_lo, vcc_lo, s2                                // 00000007801C: 8C6A026A
	v_cmp_gt_f32_e64 s2, v1, v23                               // 000000078020: D4140002 00022F01
	v_cndmask_b32_e32 v2, v28, v2, vcc_lo                      // 000000078028: 0204051C
	s_or_b32 vcc_lo, s3, s4                                    // 00000007802C: 8C6A0403
	v_cndmask_b32_e32 v3, v27, v3, vcc_lo                      // 000000078030: 0206071B
	s_or_b32 vcc_lo, s5, s6                                    // 000000078034: 8C6A0605
	s_delay_alu instid0(VALU_DEP_2)                            // 000000078038: BF870002
	v_cmp_u_f32_e64 s3, v2, v2                                 // 00000007803C: D4180003 00020502
	v_cndmask_b32_e32 v0, v26, v0, vcc_lo                      // 000000078044: 0200011A
	v_cmp_u_f32_e32 vcc_lo, v1, v1                             // 000000078048: 7C300301
	v_cmp_gt_f32_e64 s4, v2, v22                               // 00000007804C: D4140004 00022D02
	v_cmp_u_f32_e64 s5, v3, v3                                 // 000000078054: D4180005 00020703
	v_cmp_gt_f32_e64 s6, v3, v21                               // 00000007805C: D4140006 00022B03
	s_or_b32 vcc_lo, vcc_lo, s2                                // 000000078064: 8C6A026A
	v_cndmask_b32_e32 v1, v23, v1, vcc_lo                      // 000000078068: 02020317
	s_or_b32 vcc_lo, s3, s4                                    // 00000007806C: 8C6A0403
	v_cndmask_b32_e32 v2, v22, v2, vcc_lo                      // 000000078070: 02040516
	s_or_b32 vcc_lo, s5, s6                                    // 000000078074: 8C6A0605
	v_cndmask_b32_e32 v3, v21, v3, vcc_lo                      // 000000078078: 02060715
	s_mov_b32 s2, -1                                           // 00000007807C: BE8200C1
	s_mov_b32 s3, 0                                            // 000000078080: BE830080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000078084: BF870009
	s_and_b32 s20, s3, exec_lo                                 // 000000078088: 8B147E03
	s_or_not1_b32 s3, s2, exec_lo                              // 00000007808C: 92037E02
	s_or_b32 exec_lo, exec_lo, s45                             // 000000078090: 8C7E2D7E
	s_and_saveexec_b32 s21, s3                                 // 000000078094: BE952003
	s_cbranch_execz 2845                                       // 000000078098: BFA50B1D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5c10>
	s_cmp_eq_u32 s37, 0                                        // 00000007809C: BF068025
	s_cbranch_scc1 83                                          // 0000000780A0: BFA20053 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x30f0>
	s_load_b32 s2, s[0:1], 0x2dc                               // 0000000780A4: F4000080 F80002DC
	v_lshlrev_b32_e32 v5, 4, v25                               // 0000000780AC: 300A3284
	s_waitcnt lgkmcnt(0)                                       // 0000000780B0: BF89FC07
	s_and_b32 s9, s2, 0xffff                                   // 0000000780B4: 8B09FF02 0000FFFF
	s_lshr_b32 s2, s2, 16                                      // 0000000780BC: 85029002
	v_mul_u32_u24_e32 v4, s9, v24                              // 0000000780C0: 16083009
	s_cmp_lt_u32 s2, 2                                         // 0000000780C4: BF0A8202
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000780C8: BF870091
	v_lshlrev_b32_e32 v4, 4, v4                                // 0000000780CC: 30080884
	v_add3_u32 v4, 1, v4, v5                                   // 0000000780D0: D6550004 04160881
	ds_store_2addr_b32 v4, v0, v1 offset1:1                    // 0000000780D8: D8380100 00010004
	ds_store_2addr_b32 v4, v2, v3 offset0:2 offset1:3          // 0000000780E0: D8380302 00030204
	s_cbranch_scc1 65                                          // 0000000780E8: BFA20041 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x30f0>
	v_lshl_add_u32 v5, v25, 4, 1                               // 0000000780EC: D6460005 02050919
	s_and_b32 s10, 0xffff, s2                                  // 0000000780F4: 8B0A02FF 0000FFFF
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000780FC: BF870009
	s_mov_b32 s11, s10                                         // 000000078100: BE8B000A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000078104: BF870009
	s_lshr_b32 s12, s11, 1                                     // 000000078108: 850C810B
	s_mov_b32 s13, exec_lo                                     // 00000007810C: BE8D007E
	s_waitcnt lgkmcnt(0)                                       // 000000078110: BF89FC07
	s_barrier                                                  // 000000078114: BFBD0000
	buffer_gl0_inv                                             // 000000078118: E0AC0000 00000000
	v_cmpx_gt_u32_e64 s12, v24                                 // 000000078120: D4CC007E 0002300C
	s_cbranch_execz 43                                         // 000000078128: BFA5002B <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x30d8>
	v_add_nc_u32_e32 v6, s12, v24                              // 00000007812C: 4A0C300C
	s_mov_b32 s16, exec_lo                                     // 000000078130: BE90007E
	s_delay_alu instid0(VALU_DEP_1)                            // 000000078134: BF870001
	v_cmpx_gt_u32_e64 s10, v6                                  // 000000078138: D4CC007E 00020C0A
	s_cbranch_execz 36                                         // 000000078140: BFA50024 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x30d4>
	v_mul_u32_u24_e32 v6, s9, v6                               // 000000078144: 160C0C09
	v_cmp_u_f32_e32 vcc_lo, v0, v0                             // 000000078148: 7C300100
	v_cmp_u_f32_e64 s2, v1, v1                                 // 00000007814C: D4180002 00020301
	v_cmp_u_f32_e64 s3, v2, v2                                 // 000000078154: D4180003 00020502
	v_cmp_u_f32_e64 s5, v3, v3                                 // 00000007815C: D4180005 00020703
	v_lshl_add_u32 v8, v6, 4, v5                               // 000000078164: D6460008 04150906
	ds_load_2addr_b32 v[6:7], v8 offset1:1                     // 00000007816C: D8DC0100 06000008
	ds_load_2addr_b32 v[8:9], v8 offset0:2 offset1:3           // 000000078174: D8DC0302 08000008
	s_waitcnt lgkmcnt(1)                                       // 00000007817C: BF89FC17
	v_cmp_gt_f32_e64 s4, v0, v6                                // 000000078180: D4140004 00020D00
	v_cmp_gt_f32_e64 s6, v1, v7                                // 000000078188: D4140006 00020F01
	s_waitcnt lgkmcnt(0)                                       // 000000078190: BF89FC07
	v_cmp_gt_f32_e64 s7, v2, v8                                // 000000078194: D4140007 00021102
	v_cmp_gt_f32_e64 s8, v3, v9                                // 00000007819C: D4140008 00021303
	s_or_b32 vcc_lo, vcc_lo, s4                                // 0000000781A4: 8C6A046A
	v_cndmask_b32_e32 v0, v6, v0, vcc_lo                       // 0000000781A8: 02000106
	s_or_b32 vcc_lo, s2, s6                                    // 0000000781AC: 8C6A0602
	v_cndmask_b32_e32 v1, v7, v1, vcc_lo                       // 0000000781B0: 02020307
	s_or_b32 vcc_lo, s3, s7                                    // 0000000781B4: 8C6A0703
	v_cndmask_b32_e32 v2, v8, v2, vcc_lo                       // 0000000781B8: 02040508
	s_or_b32 vcc_lo, s5, s8                                    // 0000000781BC: 8C6A0805
	v_cndmask_b32_e32 v3, v9, v3, vcc_lo                       // 0000000781C0: 02060709
	ds_store_2addr_b32 v4, v0, v1 offset1:1                    // 0000000781C4: D8380100 00010004
	ds_store_2addr_b32 v4, v2, v3 offset0:2 offset1:3          // 0000000781CC: D8380302 00030204
	s_or_b32 exec_lo, exec_lo, s16                             // 0000000781D4: 8C7E107E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000781D8: BF870009
	s_or_b32 exec_lo, exec_lo, s13                             // 0000000781DC: 8C7E0D7E
	s_cmp_gt_u32 s11, 3                                        // 0000000781E0: BF08830B
	s_cbranch_scc0 2                                           // 0000000781E4: BFA10002 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x30f0>
	s_mov_b32 s11, s12                                         // 0000000781E8: BE8B000C
	s_branch 65477                                             // 0000000781EC: BFA0FFC5 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3004>
	s_load_b32 s23, s[0:1], 0x20                               // 0000000781F0: F40005C0 F8000020
	s_waitcnt lgkmcnt(0)                                       // 0000000781F8: BF89FC07
	s_cmp_eq_u32 s23, 0                                        // 0000000781FC: BF068017
	s_cselect_b32 s22, -1, 0                                   // 000000078200: 981680C1
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000078204: BF870009
	s_and_b32 vcc_lo, exec_lo, s22                             // 000000078208: 8B6A167E
	s_cbranch_vccnz 153                                        // 00000007820C: BFA40099 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3374>
	s_load_b32 s2, s[0:1], 0x2dc                               // 000000078210: F4000080 F80002DC
	s_waitcnt lgkmcnt(0)                                       // 000000078218: BF89FC07
	s_and_b32 s9, s2, 0xffff                                   // 00000007821C: 8B09FF02 0000FFFF
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000078224: BF870009
	s_cmp_lt_u32 s9, 33                                        // 000000078228: BF0AA109
	s_cbranch_scc1 75                                          // 00000007822C: BFA2004B <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x325c>
	v_mul_u32_u24_e32 v4, s9, v24                              // 000000078230: 16083009
	v_lshlrev_b32_e32 v5, 4, v25                               // 000000078234: 300A3284
	s_cmp_lt_u32 s9, 64                                        // 000000078238: BF0AC009
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007823C: BF870092
	v_lshlrev_b32_e32 v4, 4, v4                                // 000000078240: 30080884
	v_add3_u32 v4, 1, v4, v5                                   // 000000078244: D6550004 04160881
	ds_store_2addr_b32 v4, v0, v1 offset1:1                    // 00000007824C: D8380100 00010004
	ds_store_2addr_b32 v4, v2, v3 offset0:2 offset1:3          // 000000078254: D8380302 00030204
	s_cbranch_scc1 61                                          // 00000007825C: BFA2003D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3254>
	s_mov_b32 s10, s9                                          // 000000078260: BE8A0009
	s_set_inst_prefetch_distance 0x1                           // 000000078264: BF840001
	s_nop 0                                                    // 000000078268: BF800000
	s_nop 0                                                    // 00000007826C: BF800000
	s_nop 0                                                    // 000000078270: BF800000
	s_nop 0                                                    // 000000078274: BF800000
	s_nop 0                                                    // 000000078278: BF800000
	s_nop 0                                                    // 00000007827C: BF800000
	s_lshr_b32 s11, s10, 1                                     // 000000078280: 850B810A
	s_waitcnt lgkmcnt(0)                                       // 000000078284: BF89FC07
	v_add_nc_u32_e32 v5, s11, v25                              // 000000078288: 4A0A320B
	v_cmp_gt_u32_e32 vcc_lo, s11, v25                          // 00000007828C: 7C98320B
	s_barrier                                                  // 000000078290: BFBD0000
	buffer_gl0_inv                                             // 000000078294: E0AC0000 00000000
	v_cmp_gt_u32_e64 s2, s9, v5                                // 00000007829C: D44C0002 00020A09
	s_and_b32 s2, vcc_lo, s2                                   // 0000000782A4: 8B02026A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000782A8: BF870009
	s_and_saveexec_b32 s12, s2                                 // 0000000782AC: BE8C2002
	s_cbranch_execz 35                                         // 0000000782B0: BFA50023 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3240>
	v_lshl_add_u32 v7, s11, 4, v4                              // 0000000782B4: D6460007 0411080B
	v_cmp_u_f32_e32 vcc_lo, v0, v0                             // 0000000782BC: 7C300100
	v_cmp_u_f32_e64 s2, v1, v1                                 // 0000000782C0: D4180002 00020301
	v_cmp_u_f32_e64 s3, v2, v2                                 // 0000000782C8: D4180003 00020502
	v_cmp_u_f32_e64 s5, v3, v3                                 // 0000000782D0: D4180005 00020703
	ds_load_2addr_b32 v[5:6], v7 offset1:1                     // 0000000782D8: D8DC0100 05000007
	ds_load_2addr_b32 v[7:8], v7 offset0:2 offset1:3           // 0000000782E0: D8DC0302 07000007
	s_waitcnt lgkmcnt(1)                                       // 0000000782E8: BF89FC17
	v_cmp_gt_f32_e64 s4, v0, v5                                // 0000000782EC: D4140004 00020B00
	v_cmp_gt_f32_e64 s6, v1, v6                                // 0000000782F4: D4140006 00020D01
	s_waitcnt lgkmcnt(0)                                       // 0000000782FC: BF89FC07
	v_cmp_gt_f32_e64 s7, v2, v7                                // 000000078300: D4140007 00020F02
	v_cmp_gt_f32_e64 s8, v3, v8                                // 000000078308: D4140008 00021103
	s_or_b32 vcc_lo, vcc_lo, s4                                // 000000078310: 8C6A046A
	v_cndmask_b32_e32 v0, v5, v0, vcc_lo                       // 000000078314: 02000105
	s_or_b32 vcc_lo, s2, s6                                    // 000000078318: 8C6A0602
	v_cndmask_b32_e32 v1, v6, v1, vcc_lo                       // 00000007831C: 02020306
	s_or_b32 vcc_lo, s3, s7                                    // 000000078320: 8C6A0703
	v_cndmask_b32_e32 v2, v7, v2, vcc_lo                       // 000000078324: 02040507
	s_or_b32 vcc_lo, s5, s8                                    // 000000078328: 8C6A0805
	v_cndmask_b32_e32 v3, v8, v3, vcc_lo                       // 00000007832C: 02060708
	ds_store_2addr_b32 v4, v0, v1 offset1:1                    // 000000078330: D8380100 00010004
	ds_store_2addr_b32 v4, v2, v3 offset0:2 offset1:3          // 000000078338: D8380302 00030204
	s_or_b32 exec_lo, exec_lo, s12                             // 000000078340: 8C7E0C7E
	s_cmpk_gt_u32 s10, 0x7f                                    // 000000078344: B58A007F
	s_cbranch_scc0 2                                           // 000000078348: BFA10002 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3254>
	s_mov_b32 s10, s11                                         // 00000007834C: BE8A000B
	s_branch 65483                                             // 000000078350: BFA0FFCB <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3180>
	s_set_inst_prefetch_distance 0x2                           // 000000078354: BF840002
	s_mov_b32 s9, 32                                           // 000000078358: BE8900A0
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007835C: BF870009
	s_cmp_lt_u32 s9, 2                                         // 000000078360: BF0A8209
	s_waitcnt lgkmcnt(0)                                       // 000000078364: BF89FC07
	s_barrier                                                  // 000000078368: BFBD0000
	buffer_gl0_inv                                             // 00000007836C: E0AC0000 00000000
	s_cbranch_scc1 63                                          // 000000078374: BFA2003F <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3374>
	v_mbcnt_lo_u32_b32 v4, -1, 0                               // 000000078378: D71F0004 000100C1
	s_mov_b32 s10, 1                                           // 000000078380: BE8A0081
	s_delay_alu instid0(VALU_DEP_1)                            // 000000078384: BF870001
	v_sub_nc_u32_e32 v5, 32, v4                                // 000000078388: 4C0A08A0
	s_set_inst_prefetch_distance 0x1                           // 00000007838C: BF840001
	s_nop 0                                                    // 000000078390: BF800000
	s_nop 0                                                    // 000000078394: BF800000
	s_nop 0                                                    // 000000078398: BF800000
	s_nop 0                                                    // 00000007839C: BF800000
	s_nop 0                                                    // 0000000783A0: BF800000
	s_nop 0                                                    // 0000000783A4: BF800000
	s_nop 0                                                    // 0000000783A8: BF800000
	s_nop 0                                                    // 0000000783AC: BF800000
	s_nop 0                                                    // 0000000783B0: BF800000
	s_nop 0                                                    // 0000000783B4: BF800000
	s_nop 0                                                    // 0000000783B8: BF800000
	s_nop 0                                                    // 0000000783BC: BF800000
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000783C0: BF870001
	v_cmp_lt_i32_e32 vcc_lo, s10, v5                           // 0000000783C4: 7C820A0A
	v_cmp_u_f32_e64 s2, v1, v1                                 // 0000000783C8: D4180002 00020301
	v_cmp_u_f32_e64 s3, v2, v2                                 // 0000000783D0: D4180003 00020502
	v_cmp_u_f32_e64 s4, v3, v3                                 // 0000000783D8: D4180004 00020703
	v_cndmask_b32_e64 v6, 0, s10, vcc_lo                       // 0000000783E0: D5010006 01A81480
	v_cmp_u_f32_e32 vcc_lo, v0, v0                             // 0000000783E8: 7C300100
	s_lshl_b32 s10, s10, 1                                     // 0000000783EC: 840A810A
	s_delay_alu instid0(VALU_DEP_2)                            // 0000000783F0: BF870002
	v_add_lshl_u32 v6, v6, v4, 2                               // 0000000783F4: D6470006 020A0906
	ds_bpermute_b32 v7, v6, v0                                 // 0000000783FC: DACC0000 07000006
	ds_bpermute_b32 v8, v6, v1                                 // 000000078404: DACC0000 08000106
	ds_bpermute_b32 v9, v6, v2                                 // 00000007840C: DACC0000 09000206
	ds_bpermute_b32 v6, v6, v3                                 // 000000078414: DACC0000 06000306
	s_waitcnt lgkmcnt(3)                                       // 00000007841C: BF89FC37
	v_cmp_gt_f32_e64 s5, v0, v7                                // 000000078420: D4140005 00020F00
	s_waitcnt lgkmcnt(2)                                       // 000000078428: BF89FC27
	v_cmp_gt_f32_e64 s6, v1, v8                                // 00000007842C: D4140006 00021101
	s_waitcnt lgkmcnt(1)                                       // 000000078434: BF89FC17
	v_cmp_gt_f32_e64 s7, v2, v9                                // 000000078438: D4140007 00021302
	s_waitcnt lgkmcnt(0)                                       // 000000078440: BF89FC07
	v_cmp_gt_f32_e64 s8, v3, v6                                // 000000078444: D4140008 00020D03
	s_or_b32 vcc_lo, vcc_lo, s5                                // 00000007844C: 8C6A056A
	v_cndmask_b32_e32 v0, v7, v0, vcc_lo                       // 000000078450: 02000107
	s_or_b32 vcc_lo, s2, s6                                    // 000000078454: 8C6A0602
	v_cndmask_b32_e32 v1, v8, v1, vcc_lo                       // 000000078458: 02020308
	s_or_b32 vcc_lo, s3, s7                                    // 00000007845C: 8C6A0703
	v_cndmask_b32_e32 v2, v9, v2, vcc_lo                       // 000000078460: 02040509
	s_or_b32 vcc_lo, s4, s8                                    // 000000078464: 8C6A0804
	s_cmp_lt_i32 s10, s9                                       // 000000078468: BF04090A
	v_cndmask_b32_e32 v3, v6, v3, vcc_lo                       // 00000007846C: 02060706
	s_cbranch_scc1 65491                                       // 000000078470: BFA2FFD3 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x32c0>
	s_set_inst_prefetch_distance 0x2                           // 000000078474: BF840002
	s_load_b256 s[4:11], s[0:1], 0x14c                         // 000000078478: F40C0100 F800014C
	s_mov_b32 s12, -1                                          // 000000078480: BE8C00C1
	s_waitcnt lgkmcnt(0)                                       // 000000078484: BF89FC07
	v_sub_co_u32 v5, s2, s4, 1                                 // 000000078488: D7010205 00010204
	s_xor_b32 s27, s2, -1                                      // 000000078490: 8D1BC102
	s_add_u32 s16, s0, 0x210                                   // 000000078494: 8010FF00 00000210
	v_cndmask_b32_e64 v4, 0, 1, s27                            // 00000007849C: D5010004 006D0280
	v_readfirstlane_b32 s11, v5                                // 0000000784A4: 7E160505
	v_cmp_gt_u32_e32 vcc_lo, 2, v5                             // 0000000784A8: 7C980A82
	s_addc_u32 s17, s1, 0                                      // 0000000784AC: 82118001
	v_cmp_lt_u32_e64 s2, 1, v5                                 // 0000000784B0: D4490002 00020A81
	v_cmp_ne_u32_e64 s3, 1, v4                                 // 0000000784B8: D44D0003 00020881
	s_min_u32 s25, s11, 15                                     // 0000000784C0: 89998F0B
	s_cmp_gt_u32 s4, 1                                         // 0000000784C4: BF088104
	s_cselect_b32 s26, -1, 0                                   // 0000000784C8: 981A80C1
	s_cbranch_vccnz 139                                        // 0000000784CC: BFA4008B <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x35fc>
	v_mov_b32_e32 v26, 0                                       // 0000000784D0: 7E340280
	s_and_b32 vcc_lo, exec_lo, s3                              // 0000000784D4: 8B6A037E
	s_cbranch_vccnz 135                                        // 0000000784D8: BFA40087 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x35f8>
	s_add_i32 s4, s25, 1                                       // 0000000784DC: 81048119
	s_cmp_eq_u32 s11, 2                                        // 0000000784E0: BF06820B
	s_cbranch_scc1 84                                          // 0000000784E4: BFA20054 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3538>
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v5, v40            // 0000000784E8: CA100080 1A040128
	s_and_b32 s3, s4, 28                                       // 0000000784F0: 8B039C04
	s_mov_b32 s24, 0                                           // 0000000784F4: BE980080
	s_mov_b64 s[12:13], s[0:1]                                 // 0000000784F8: BE8C0100
	s_mov_b64 s[18:19], s[16:17]                               // 0000000784FC: BE920110
	s_clause 0x1                                               // 000000078500: BF850001
	s_load_b256 s[36:43], s[12:13], 0x150                      // 000000078504: F40C0906 F8000150
	s_load_b128 s[28:31], s[12:13], 0x170                      // 00000007850C: F4080706 F8000170
	s_add_i32 s24, s24, 4                                      // 000000078514: 81188418
	s_waitcnt lgkmcnt(0)                                       // 000000078518: BF89FC07
	v_mul_hi_u32 v6, s37, v5                                   // 00000007851C: D72D0006 00020A25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078524: BF870091
	v_add_nc_u32_e32 v6, v5, v6                                // 000000078528: 4A0C0D05
	v_lshrrev_b32_e32 v6, s38, v6                              // 00000007852C: 320C0C26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000078530: BF870121
	v_mul_hi_u32 v7, s40, v6                                   // 000000078534: D72D0007 00020C28
	v_mul_lo_u32 v10, v6, s36                                  // 00000007853C: D72C000A 00004906
	v_add_nc_u32_e32 v7, v6, v7                                // 000000078544: 4A0E0F06
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000078548: BF870112
	v_sub_nc_u32_e32 v10, v5, v10                              // 00000007854C: 4C141505
	v_lshrrev_b32_e32 v7, s41, v7                              // 000000078550: 320E0E29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000078554: BF870121
	v_mul_hi_u32 v8, s43, v7                                   // 000000078558: D72D0008 00020E2B
	v_mul_lo_u32 v11, v7, s39                                  // 000000078560: D72C000B 00004F07
	v_add_nc_u32_e32 v8, v7, v8                                // 000000078568: 4A101107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007856C: BF870112
	v_sub_nc_u32_e32 v6, v6, v11                               // 000000078570: 4C0C1706
	v_lshrrev_b32_e32 v8, s28, v8                              // 000000078574: 3210101C
	s_load_b32 s28, s[18:19], null                             // 000000078578: F4000709 F8000000
	s_delay_alu instid0(VALU_DEP_1)                            // 000000078580: BF870001
	v_mul_hi_u32 v9, s30, v8                                   // 000000078584: D72D0009 0002101E
	s_clause 0x2                                               // 00000007858C: BF850002
	s_load_b32 s30, s[18:19], 0x8                              // 000000078590: F4000789 F8000008
	s_load_b32 s33, s[18:19], 0x10                             // 000000078598: F4000849 F8000010
	s_load_b32 s34, s[18:19], 0x18                             // 0000000785A0: F4000889 F8000018
	s_add_u32 s18, s18, 32                                     // 0000000785A8: 8012A012
	s_addc_u32 s19, s19, 0                                     // 0000000785AC: 82138013
	s_add_u32 s12, s12, 48                                     // 0000000785B0: 800CB00C
	s_addc_u32 s13, s13, 0                                     // 0000000785B4: 820D800D
	s_cmp_lg_u32 s3, s24                                       // 0000000785B8: BF071803
	v_add_nc_u32_e32 v9, v8, v9                                // 0000000785BC: 4A121308
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)// 0000000785C0: BF8701C1
	v_lshrrev_b32_e32 v5, s31, v9                              // 0000000785C4: 320A121F
	v_mul_lo_u32 v9, v8, s42                                   // 0000000785C8: D72C0009 00005508
	s_waitcnt lgkmcnt(0)                                       // 0000000785D0: BF89FC07
	v_mul_lo_u32 v10, v10, s28                                 // 0000000785D4: D72C000A 0000390A
	v_mul_lo_u32 v12, v5, s29                                  // 0000000785DC: D72C000C 00003B05
	v_mul_lo_u32 v6, v6, s30                                   // 0000000785E4: D72C0006 00003D06
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)// 0000000785EC: BF870194
	v_sub_nc_u32_e32 v7, v7, v9                                // 0000000785F0: 4C0E1307
	v_sub_nc_u32_e32 v8, v8, v12                               // 0000000785F4: 4C101908
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)// 0000000785F8: BF870212
	v_mul_lo_u32 v7, v7, s33                                   // 0000000785FC: D72C0007 00004307
	v_add3_u32 v6, v10, v26, v6                                // 000000078604: D6550006 041A350A
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007860C: BF870093
	v_mul_lo_u32 v8, v8, s34                                   // 000000078610: D72C0008 00004508
	v_add3_u32 v26, v7, v6, v8                                 // 000000078618: D655001A 04220D07
	s_cbranch_scc1 65463                                       // 000000078620: BFA2FFB7 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3400>
	s_and_b32 s4, s4, 3                                        // 000000078624: 8B048304
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000078628: BF870009
	s_cmp_eq_u32 s4, 0                                         // 00000007862C: BF068004
	s_cbranch_scc0 8                                           // 000000078630: BFA10008 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3554>
	s_branch 48                                                // 000000078634: BFA00030 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x35f8>
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v5, v40            // 000000078638: CA100080 1A040128
	s_mov_b32 s3, 0                                            // 000000078640: BE830080
	s_and_b32 s4, s4, 3                                        // 000000078644: 8B048304
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000078648: BF870009
	s_cmp_eq_u32 s4, 0                                         // 00000007864C: BF068004
	s_cbranch_scc1 41                                          // 000000078650: BFA20029 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x35f8>
	s_lshl_b32 s12, s3, 3                                      // 000000078654: 840C8303
	s_mul_i32 s3, s3, 12                                       // 000000078658: 96038C03
	s_add_u32 s12, s0, s12                                     // 00000007865C: 800C0C00
	s_addc_u32 s13, s1, 0                                      // 000000078660: 820D8001
	s_add_u32 s12, s12, 0x210                                  // 000000078664: 800CFF0C 00000210
	s_addc_u32 s13, s13, 0                                     // 00000007866C: 820D800D
	s_add_u32 s18, s0, s3                                      // 000000078670: 80120300
	s_addc_u32 s19, s1, 0                                      // 000000078674: 82138001
	s_nop 0                                                    // 000000078678: BF800000
	s_nop 0                                                    // 00000007867C: BF800000
	s_clause 0x1                                               // 000000078680: BF850001
	s_load_b64 s[28:29], s[18:19], 0x150                       // 000000078684: F4040709 F8000150
	s_load_b32 s3, s[18:19], 0x158                             // 00000007868C: F40000C9 F8000158
	s_load_b32 s24, s[12:13], null                             // 000000078694: F4000606 F8000000
	s_add_u32 s12, s12, 8                                      // 00000007869C: 800C880C
	s_addc_u32 s13, s13, 0                                     // 0000000786A0: 820D800D
	s_add_u32 s18, s18, 12                                     // 0000000786A4: 80128C12
	s_addc_u32 s19, s19, 0                                     // 0000000786A8: 82138013
	s_add_i32 s4, s4, -1                                       // 0000000786AC: 8104C104
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 0000000786B0: BF8700B9
	s_cmp_lg_u32 s4, 0                                         // 0000000786B4: BF078004
	s_waitcnt lgkmcnt(0)                                       // 0000000786B8: BF89FC07
	v_mul_hi_u32 v6, s29, v5                                   // 0000000786BC: D72D0006 00020A1D
	v_add_nc_u32_e32 v6, v5, v6                                // 0000000786C4: 4A0C0D05
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000786C8: BF870091
	v_lshrrev_b32_e32 v8, s3, v6                               // 0000000786CC: 32100C03
	v_mul_lo_u32 v6, v8, s28                                   // 0000000786D0: D72C0006 00003908
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000786D8: BF870091
	v_sub_nc_u32_e32 v5, v5, v6                                // 0000000786DC: 4C0A0D05
	v_mad_u64_u32 v[6:7], null, v5, s24, v[26:27]              // 0000000786E0: D6FE7C06 04683105
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000786E8: BF870001
	v_dual_mov_b32 v5, v8 :: v_dual_mov_b32 v26, v6            // 0000000786EC: CA100108 051A0106
	s_cbranch_scc1 65506                                       // 0000000786F4: BFA2FFE2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3580>
	s_mov_b32 s12, 0                                           // 0000000786F8: BE8C0080
	s_clause 0x1                                               // 0000000786FC: BF850001
	s_load_b32 s24, s[0:1], 0x210                              // 000000078700: F4000600 F8000210
	s_load_b32 s4, s[0:1], 0x218                               // 000000078708: F4000100 F8000218
	v_cndmask_b32_e64 v5, 0, 1, s26                            // 000000078710: D5010005 00690280
	s_and_not1_b32 vcc_lo, exec_lo, s12                        // 000000078718: 916A0C7E
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007871C: BF870001
	v_cmp_ne_u32_e64 s3, 1, v5                                 // 000000078720: D44D0003 00020A81
	s_cbranch_vccnz 28                                         // 000000078728: BFA4001C <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x369c>
	v_mul_hi_u32 v6, s6, v40                                   // 00000007872C: D72D0006 00025006
	s_and_b32 vcc_lo, exec_lo, s3                              // 000000078734: 8B6A037E
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078738: BF870091
	v_add_nc_u32_e32 v6, v40, v6                               // 00000007873C: 4A0C0D28
	v_lshrrev_b32_e32 v6, s7, v6                               // 000000078740: 320C0C07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078744: BF870091
	v_mul_lo_u32 v7, v6, s5                                    // 000000078748: D72C0007 00000B06
	v_sub_nc_u32_e32 v7, v40, v7                               // 000000078750: 4C0E0F28
	s_waitcnt lgkmcnt(0)                                       // 000000078754: BF89FC07
	s_delay_alu instid0(VALU_DEP_1)                            // 000000078758: BF870001
	v_mul_lo_u32 v26, v7, s24                                  // 00000007875C: D72C001A 00003107
	s_cbranch_vccnz 13                                         // 000000078764: BFA4000D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x369c>
	v_mul_hi_u32 v7, v6, s9                                    // 000000078768: D72D0007 00001306
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078770: BF870091
	v_add_nc_u32_e32 v7, v6, v7                                // 000000078774: 4A0E0F06
	v_lshrrev_b32_e32 v7, s10, v7                              // 000000078778: 320E0E0A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007877C: BF870091
	v_mul_lo_u32 v7, v7, s8                                    // 000000078780: D72C0007 00001107
	v_sub_nc_u32_e32 v8, v6, v7                                // 000000078788: 4C100F06
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007878C: BF870091
	v_mad_u64_u32 v[6:7], null, v8, s4, v[26:27]               // 000000078790: D6FE7C06 04680908
	v_mov_b32_e32 v26, v6                                      // 000000078798: 7E340306
	v_cndmask_b32_e64 v6, 0, 1, s2                             // 00000007879C: D5010006 00090280
	v_or_b32_e32 v7, 1, v40                                    // 0000000787A4: 380E5081
	s_and_not1_b32 vcc_lo, exec_lo, s2                         // 0000000787A8: 916A027E
	s_cbranch_vccnz 90                                         // 0000000787AC: BFA4005A <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3818>
	v_mov_b32_e32 v27, 0                                       // 0000000787B0: 7E360280
	s_and_not1_b32 vcc_lo, exec_lo, s27                        // 0000000787B4: 916A1B7E
	s_cbranch_vccnz 143                                        // 0000000787B8: BFA4008F <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x38f8>
	s_add_i32 s27, s25, 1                                      // 0000000787BC: 811B8119
	s_cmp_eq_u32 s11, 2                                        // 0000000787C0: BF06820B
	s_cbranch_scc1 85                                          // 0000000787C4: BFA20055 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x381c>
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v8, v7             // 0000000787C8: CA100080 1B080107
	s_and_b32 s3, s27, 28                                      // 0000000787D0: 8B039C1B
	s_mov_b32 s28, 0                                           // 0000000787D4: BE9C0080
	s_mov_b64 s[12:13], s[0:1]                                 // 0000000787D8: BE8C0100
	s_mov_b64 s[18:19], s[16:17]                               // 0000000787DC: BE920110
	s_clause 0x1                                               // 0000000787E0: BF850001
	s_load_b256 s[36:43], s[12:13], 0x150                      // 0000000787E4: F40C0906 F8000150
	s_load_b128 s[44:47], s[12:13], 0x170                      // 0000000787EC: F4080B06 F8000170
	s_clause 0x3                                               // 0000000787F4: BF850003
	s_load_b32 s29, s[18:19], null                             // 0000000787F8: F4000749 F8000000
	s_load_b32 s30, s[18:19], 0x8                              // 000000078800: F4000789 F8000008
	s_load_b32 s31, s[18:19], 0x10                             // 000000078808: F40007C9 F8000010
	s_load_b32 s33, s[18:19], 0x18                             // 000000078810: F4000849 F8000018
	s_add_i32 s28, s28, 4                                      // 000000078818: 811C841C
	s_add_u32 s18, s18, 32                                     // 00000007881C: 8012A012
	s_addc_u32 s19, s19, 0                                     // 000000078820: 82138013
	s_add_u32 s12, s12, 48                                     // 000000078824: 800CB00C
	s_addc_u32 s13, s13, 0                                     // 000000078828: 820D800D
	s_cmp_eq_u32 s3, s28                                       // 00000007882C: BF061C03
	s_waitcnt lgkmcnt(0)                                       // 000000078830: BF89FC07
	v_mul_hi_u32 v9, s37, v8                                   // 000000078834: D72D0009 00021025
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007883C: BF870091
	v_add_nc_u32_e32 v9, v8, v9                                // 000000078840: 4A121308
	v_lshrrev_b32_e32 v9, s38, v9                              // 000000078844: 32121226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000078848: BF870121
	v_mul_hi_u32 v10, s40, v9                                  // 00000007884C: D72D000A 00021228
	v_mul_lo_u32 v13, v9, s36                                  // 000000078854: D72C000D 00004909
	v_add_nc_u32_e32 v10, v9, v10                              // 00000007885C: 4A141509
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000078860: BF870112
	v_sub_nc_u32_e32 v13, v8, v13                              // 000000078864: 4C1A1B08
	v_lshrrev_b32_e32 v10, s41, v10                            // 000000078868: 32141429
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007886C: BF870112
	v_mul_lo_u32 v13, v13, s29                                 // 000000078870: D72C000D 00003B0D
	v_mul_hi_u32 v11, s43, v10                                 // 000000078878: D72D000B 0002142B
	v_mul_lo_u32 v14, v10, s39                                 // 000000078880: D72C000E 00004F0A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000078888: BF870112
	v_add_nc_u32_e32 v11, v10, v11                             // 00000007888C: 4A16170A
	v_sub_nc_u32_e32 v9, v9, v14                               // 000000078890: 4C121D09
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000078894: BF870112
	v_lshrrev_b32_e32 v11, s44, v11                            // 000000078898: 3216162C
	v_mul_lo_u32 v9, v9, s30                                   // 00000007889C: D72C0009 00003D09
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000788A4: BF870112
	v_mul_hi_u32 v12, s46, v11                                 // 0000000788A8: D72D000C 0002162E
	v_add3_u32 v9, v13, v27, v9                                // 0000000788B0: D6550009 0426370D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000788B8: BF870092
	v_add_nc_u32_e32 v12, v11, v12                             // 0000000788BC: 4A18190B
	v_lshrrev_b32_e32 v8, s47, v12                             // 0000000788C0: 3210182F
	v_mul_lo_u32 v12, v11, s42                                 // 0000000788C4: D72C000C 0000550B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000788CC: BF870112
	v_mul_lo_u32 v15, v8, s45                                  // 0000000788D0: D72C000F 00005B08
	v_sub_nc_u32_e32 v10, v10, v12                             // 0000000788D8: 4C14190A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000788DC: BF870112
	v_sub_nc_u32_e32 v11, v11, v15                             // 0000000788E0: 4C161F0B
	v_mul_lo_u32 v10, v10, s31                                 // 0000000788E4: D72C000A 00003F0A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000788EC: BF870092
	v_mul_lo_u32 v11, v11, s33                                 // 0000000788F0: D72C000B 0000430B
	v_add3_u32 v27, v10, v9, v11                               // 0000000788F8: D655001B 042E130A
	s_cbranch_scc0 65463                                       // 000000078900: BFA1FFB7 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x36e0>
	s_and_b32 s27, s27, 3                                      // 000000078904: 8B1B831B
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000078908: BF870009
	s_cmp_eq_u32 s27, 0                                        // 00000007890C: BF06801B
	s_cbranch_scc0 9                                           // 000000078910: BFA10009 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3838>
	s_branch 56                                                // 000000078914: BFA00038 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x38f8>
	s_branch 56                                                // 000000078918: BFA00038 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x38fc>
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v8, v7             // 00000007891C: CA100080 1B080107
	s_mov_b32 s3, 0                                            // 000000078924: BE830080
	s_and_b32 s27, s27, 3                                      // 000000078928: 8B1B831B
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007892C: BF870009
	s_cmp_eq_u32 s27, 0                                        // 000000078930: BF06801B
	s_cbranch_scc1 48                                          // 000000078934: BFA20030 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x38f8>
	s_lshl_b32 s12, s3, 3                                      // 000000078938: 840C8303
	s_mul_i32 s3, s3, 12                                       // 00000007893C: 96038C03
	s_add_u32 s12, s0, s12                                     // 000000078940: 800C0C00
	s_addc_u32 s13, s1, 0                                      // 000000078944: 820D8001
	s_add_u32 s12, s12, 0x210                                  // 000000078948: 800CFF0C 00000210
	s_addc_u32 s13, s13, 0                                     // 000000078950: 820D800D
	s_add_u32 s18, s0, s3                                      // 000000078954: 80120300
	s_addc_u32 s19, s1, 0                                      // 000000078958: 82138001
	s_nop 0                                                    // 00000007895C: BF800000
	s_nop 0                                                    // 000000078960: BF800000
	s_nop 0                                                    // 000000078964: BF800000
	s_nop 0                                                    // 000000078968: BF800000
	s_nop 0                                                    // 00000007896C: BF800000
	s_nop 0                                                    // 000000078970: BF800000
	s_nop 0                                                    // 000000078974: BF800000
	s_nop 0                                                    // 000000078978: BF800000
	s_nop 0                                                    // 00000007897C: BF800000
	s_clause 0x1                                               // 000000078980: BF850001
	s_load_b64 s[28:29], s[18:19], 0x150                       // 000000078984: F4040709 F8000150
	s_load_b32 s3, s[18:19], 0x158                             // 00000007898C: F40000C9 F8000158
	s_waitcnt lgkmcnt(0)                                       // 000000078994: BF89FC07
	v_mul_hi_u32 v9, s29, v8                                   // 000000078998: D72D0009 0002101D
	s_load_b32 s29, s[12:13], null                             // 0000000789A0: F4000746 F8000000
	s_add_u32 s12, s12, 8                                      // 0000000789A8: 800C880C
	s_addc_u32 s13, s13, 0                                     // 0000000789AC: 820D800D
	s_add_u32 s18, s18, 12                                     // 0000000789B0: 80128C12
	s_addc_u32 s19, s19, 0                                     // 0000000789B4: 82138013
	s_add_i32 s27, s27, -1                                     // 0000000789B8: 811BC11B
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000789BC: BF8700A9
	s_cmp_lg_u32 s27, 0                                        // 0000000789C0: BF07801B
	v_add_nc_u32_e32 v9, v8, v9                                // 0000000789C4: 4A121308
	v_lshrrev_b32_e32 v11, s3, v9                              // 0000000789C8: 32161203
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000789CC: BF870091
	v_mul_lo_u32 v9, v11, s28                                  // 0000000789D0: D72C0009 0000390B
	v_sub_nc_u32_e32 v8, v8, v9                                // 0000000789D8: 4C101308
	s_waitcnt lgkmcnt(0)                                       // 0000000789DC: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000789E0: BF870091
	v_mad_u64_u32 v[9:10], null, v8, s29, v[27:28]             // 0000000789E4: D6FE7C09 046C3B08
	v_dual_mov_b32 v8, v11 :: v_dual_mov_b32 v27, v9           // 0000000789EC: CA10010B 081A0109
	s_cbranch_scc1 65506                                       // 0000000789F4: BFA2FFE2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3880>
	s_cbranch_execnz 28                                        // 0000000789F8: BFA6001C <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x396c>
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000789FC: BF8700A1
	v_mul_hi_u32 v8, s6, v7                                    // 000000078A00: D72D0008 00020E06
	s_and_not1_b32 vcc_lo, exec_lo, s26                        // 000000078A08: 916A1A7E
	v_add_nc_u32_e32 v8, v7, v8                                // 000000078A0C: 4A101107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078A10: BF870091
	v_lshrrev_b32_e32 v8, s7, v8                               // 000000078A14: 32101007
	v_mul_lo_u32 v9, v8, s5                                    // 000000078A18: D72C0009 00000B08
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000078A20: BF8700A1
	v_sub_nc_u32_e32 v7, v7, v9                                // 000000078A24: 4C0E1307
	s_waitcnt lgkmcnt(0)                                       // 000000078A28: BF89FC07
	v_mul_lo_u32 v27, v7, s24                                  // 000000078A2C: D72C001B 00003107
	s_cbranch_vccnz 13                                         // 000000078A34: BFA4000D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x396c>
	v_mul_hi_u32 v7, v8, s9                                    // 000000078A38: D72D0007 00001308
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078A40: BF870091
	v_add_nc_u32_e32 v7, v8, v7                                // 000000078A44: 4A0E0F08
	v_lshrrev_b32_e32 v7, s10, v7                              // 000000078A48: 320E0E0A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078A4C: BF870091
	v_mul_lo_u32 v7, v7, s8                                    // 000000078A50: D72C0007 00001107
	v_sub_nc_u32_e32 v9, v8, v7                                // 000000078A58: 4C120F08
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078A5C: BF870091
	v_mad_u64_u32 v[7:8], null, v9, s4, v[27:28]               // 000000078A60: D6FE7C07 046C0909
	v_mov_b32_e32 v27, v7                                      // 000000078A68: 7E360307
	v_or_b32_e32 v7, 2, v40                                    // 000000078A6C: 380E5082
	s_and_not1_b32 vcc_lo, exec_lo, s2                         // 000000078A70: 916A027E
	s_cbranch_vccnz 90                                         // 000000078A74: BFA4005A <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3ae0>
	v_cmp_ne_u32_e32 vcc_lo, 1, v4                             // 000000078A78: 7C9A0881
	v_mov_b32_e32 v28, 0                                       // 000000078A7C: 7E380280
	s_cbranch_vccnz 141                                        // 000000078A80: BFA4008D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3bb8>
	s_add_i32 s26, s25, 1                                      // 000000078A84: 811A8119
	s_cmp_eq_u32 s11, 2                                        // 000000078A88: BF06820B
	s_cbranch_scc1 85                                          // 000000078A8C: BFA20055 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3ae4>
	v_mov_b32_e32 v28, 0                                       // 000000078A90: 7E380280
	v_mov_b32_e32 v8, v7                                       // 000000078A94: 7E100307
	s_and_b32 s3, s26, 28                                      // 000000078A98: 8B039C1A
	s_mov_b32 s27, 0                                           // 000000078A9C: BE9B0080
	s_mov_b64 s[12:13], s[0:1]                                 // 000000078AA0: BE8C0100
	s_mov_b64 s[18:19], s[16:17]                               // 000000078AA4: BE920110
	s_clause 0x1                                               // 000000078AA8: BF850001
	s_load_b256 s[36:43], s[12:13], 0x150                      // 000000078AAC: F40C0906 F8000150
	s_load_b128 s[28:31], s[12:13], 0x170                      // 000000078AB4: F4080706 F8000170
	s_add_i32 s27, s27, 4                                      // 000000078ABC: 811B841B
	s_waitcnt lgkmcnt(0)                                       // 000000078AC0: BF89FC07
	v_mul_hi_u32 v9, s37, v8                                   // 000000078AC4: D72D0009 00021025
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078ACC: BF870091
	v_add_nc_u32_e32 v9, v8, v9                                // 000000078AD0: 4A121308
	v_lshrrev_b32_e32 v9, s38, v9                              // 000000078AD4: 32121226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000078AD8: BF870121
	v_mul_hi_u32 v10, s40, v9                                  // 000000078ADC: D72D000A 00021228
	v_mul_lo_u32 v13, v9, s36                                  // 000000078AE4: D72C000D 00004909
	v_add_nc_u32_e32 v10, v9, v10                              // 000000078AEC: 4A141509
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000078AF0: BF870112
	v_sub_nc_u32_e32 v13, v8, v13                              // 000000078AF4: 4C1A1B08
	v_lshrrev_b32_e32 v10, s41, v10                            // 000000078AF8: 32141429
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000078AFC: BF870121
	v_mul_hi_u32 v11, s43, v10                                 // 000000078B00: D72D000B 0002142B
	v_mul_lo_u32 v14, v10, s39                                 // 000000078B08: D72C000E 00004F0A
	v_add_nc_u32_e32 v11, v10, v11                             // 000000078B10: 4A16170A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000078B14: BF870112
	v_sub_nc_u32_e32 v9, v9, v14                               // 000000078B18: 4C121D09
	v_lshrrev_b32_e32 v11, s28, v11                            // 000000078B1C: 3216161C
	s_load_b32 s28, s[18:19], null                             // 000000078B20: F4000709 F8000000
	s_delay_alu instid0(VALU_DEP_1)                            // 000000078B28: BF870001
	v_mul_hi_u32 v12, s30, v11                                 // 000000078B2C: D72D000C 0002161E
	s_clause 0x2                                               // 000000078B34: BF850002
	s_load_b32 s30, s[18:19], 0x8                              // 000000078B38: F4000789 F8000008
	s_load_b32 s33, s[18:19], 0x10                             // 000000078B40: F4000849 F8000010
	s_load_b32 s34, s[18:19], 0x18                             // 000000078B48: F4000889 F8000018
	s_add_u32 s18, s18, 32                                     // 000000078B50: 8012A012
	s_addc_u32 s19, s19, 0                                     // 000000078B54: 82138013
	s_add_u32 s12, s12, 48                                     // 000000078B58: 800CB00C
	s_addc_u32 s13, s13, 0                                     // 000000078B5C: 820D800D
	s_cmp_eq_u32 s3, s27                                       // 000000078B60: BF061B03
	v_add_nc_u32_e32 v12, v11, v12                             // 000000078B64: 4A18190B
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)// 000000078B68: BF8701C1
	v_lshrrev_b32_e32 v8, s31, v12                             // 000000078B6C: 3210181F
	v_mul_lo_u32 v12, v11, s42                                 // 000000078B70: D72C000C 0000550B
	s_waitcnt lgkmcnt(0)                                       // 000000078B78: BF89FC07
	v_mul_lo_u32 v13, v13, s28                                 // 000000078B7C: D72C000D 0000390D
	v_mul_lo_u32 v15, v8, s29                                  // 000000078B84: D72C000F 00003B08
	v_mul_lo_u32 v9, v9, s30                                   // 000000078B8C: D72C0009 00003D09
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)// 000000078B94: BF870194
	v_sub_nc_u32_e32 v10, v10, v12                             // 000000078B98: 4C14190A
	v_sub_nc_u32_e32 v11, v11, v15                             // 000000078B9C: 4C161F0B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)// 000000078BA0: BF870212
	v_mul_lo_u32 v10, v10, s33                                 // 000000078BA4: D72C000A 0000430A
	v_add3_u32 v9, v13, v28, v9                                // 000000078BAC: D6550009 0426390D
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078BB4: BF870093
	v_mul_lo_u32 v11, v11, s34                                 // 000000078BB8: D72C000B 0000450B
	v_add3_u32 v28, v10, v9, v11                               // 000000078BC0: D655001C 042E130A
	s_cbranch_scc0 65463                                       // 000000078BC8: BFA1FFB7 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x39a8>
	s_and_b32 s26, s26, 3                                      // 000000078BCC: 8B1A831A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000078BD0: BF870009
	s_cmp_eq_u32 s26, 0                                        // 000000078BD4: BF06801A
	s_cbranch_scc0 9                                           // 000000078BD8: BFA10009 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3b00>
	s_branch 54                                                // 000000078BDC: BFA00036 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3bb8>
	s_branch 54                                                // 000000078BE0: BFA00036 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3bbc>
	v_mov_b32_e32 v28, 0                                       // 000000078BE4: 7E380280
	v_mov_b32_e32 v8, v7                                       // 000000078BE8: 7E100307
	s_mov_b32 s3, 0                                            // 000000078BEC: BE830080
	s_and_b32 s26, s26, 3                                      // 000000078BF0: 8B1A831A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000078BF4: BF870009
	s_cmp_eq_u32 s26, 0                                        // 000000078BF8: BF06801A
	s_cbranch_scc1 46                                          // 000000078BFC: BFA2002E <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3bb8>
	s_lshl_b32 s12, s3, 3                                      // 000000078C00: 840C8303
	s_mul_i32 s3, s3, 12                                       // 000000078C04: 96038C03
	s_add_u32 s12, s0, s12                                     // 000000078C08: 800C0C00
	s_addc_u32 s13, s1, 0                                      // 000000078C0C: 820D8001
	s_add_u32 s12, s12, 0x210                                  // 000000078C10: 800CFF0C 00000210
	s_addc_u32 s13, s13, 0                                     // 000000078C18: 820D800D
	s_add_u32 s18, s0, s3                                      // 000000078C1C: 80120300
	s_addc_u32 s19, s1, 0                                      // 000000078C20: 82138001
	s_nop 0                                                    // 000000078C24: BF800000
	s_nop 0                                                    // 000000078C28: BF800000
	s_nop 0                                                    // 000000078C2C: BF800000
	s_nop 0                                                    // 000000078C30: BF800000
	s_nop 0                                                    // 000000078C34: BF800000
	s_nop 0                                                    // 000000078C38: BF800000
	s_nop 0                                                    // 000000078C3C: BF800000
	s_clause 0x1                                               // 000000078C40: BF850001
	s_load_b64 s[28:29], s[18:19], 0x150                       // 000000078C44: F4040709 F8000150
	s_load_b32 s3, s[18:19], 0x158                             // 000000078C4C: F40000C9 F8000158
	s_load_b32 s27, s[12:13], null                             // 000000078C54: F40006C6 F8000000
	s_add_u32 s12, s12, 8                                      // 000000078C5C: 800C880C
	s_addc_u32 s13, s13, 0                                     // 000000078C60: 820D800D
	s_add_u32 s18, s18, 12                                     // 000000078C64: 80128C12
	s_addc_u32 s19, s19, 0                                     // 000000078C68: 82138013
	s_add_i32 s26, s26, -1                                     // 000000078C6C: 811AC11A
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 000000078C70: BF8700B9
	s_cmp_lg_u32 s26, 0                                        // 000000078C74: BF07801A
	s_waitcnt lgkmcnt(0)                                       // 000000078C78: BF89FC07
	v_mul_hi_u32 v9, s29, v8                                   // 000000078C7C: D72D0009 0002101D
	v_add_nc_u32_e32 v9, v8, v9                                // 000000078C84: 4A121308
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078C88: BF870091
	v_lshrrev_b32_e32 v11, s3, v9                              // 000000078C8C: 32161203
	v_mul_lo_u32 v9, v11, s28                                  // 000000078C90: D72C0009 0000390B
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078C98: BF870091
	v_sub_nc_u32_e32 v8, v8, v9                                // 000000078C9C: 4C101308
	v_mad_u64_u32 v[9:10], null, v8, s27, v[28:29]             // 000000078CA0: D6FE7C09 04703708
	v_mov_b32_e32 v8, v11                                      // 000000078CA8: 7E10030B
	s_delay_alu instid0(VALU_DEP_2)                            // 000000078CAC: BF870002
	v_mov_b32_e32 v28, v9                                      // 000000078CB0: 7E380309
	s_cbranch_scc1 65506                                       // 000000078CB4: BFA2FFE2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3b40>
	s_cbranch_execnz 29                                        // 000000078CB8: BFA6001D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3c30>
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 000000078CBC: BF870131
	v_mul_hi_u32 v8, s6, v7                                    // 000000078CC0: D72D0008 00020E06
	v_cmp_ne_u32_e32 vcc_lo, 1, v5                             // 000000078CC8: 7C9A0A81
	s_and_b32 vcc_lo, exec_lo, vcc_lo                          // 000000078CCC: 8B6A6A7E
	v_add_nc_u32_e32 v8, v7, v8                                // 000000078CD0: 4A101107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078CD4: BF870091
	v_lshrrev_b32_e32 v8, s7, v8                               // 000000078CD8: 32101007
	v_mul_lo_u32 v9, v8, s5                                    // 000000078CDC: D72C0009 00000B08
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 000000078CE4: BF8700A1
	v_sub_nc_u32_e32 v7, v7, v9                                // 000000078CE8: 4C0E1307
	s_waitcnt lgkmcnt(0)                                       // 000000078CEC: BF89FC07
	v_mul_lo_u32 v28, v7, s24                                  // 000000078CF0: D72C001C 00003107
	s_cbranch_vccnz 13                                         // 000000078CF8: BFA4000D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3c30>
	v_mul_hi_u32 v7, v8, s9                                    // 000000078CFC: D72D0007 00001308
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078D04: BF870091
	v_add_nc_u32_e32 v7, v8, v7                                // 000000078D08: 4A0E0F08
	v_lshrrev_b32_e32 v7, s10, v7                              // 000000078D0C: 320E0E0A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078D10: BF870091
	v_mul_lo_u32 v7, v7, s8                                    // 000000078D14: D72C0007 00001107
	v_sub_nc_u32_e32 v9, v8, v7                                // 000000078D1C: 4C120F08
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078D20: BF870091
	v_mad_u64_u32 v[7:8], null, v9, s4, v[28:29]               // 000000078D24: D6FE7C07 04700909
	v_mov_b32_e32 v28, v7                                      // 000000078D2C: 7E380307
	v_or_b32_e32 v7, 3, v40                                    // 000000078D30: 380E5083
	s_and_not1_b32 vcc_lo, exec_lo, s2                         // 000000078D34: 916A027E
	s_cbranch_vccnz 90                                         // 000000078D38: BFA4005A <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3da4>
	v_cmp_ne_u32_e32 vcc_lo, 1, v4                             // 000000078D3C: 7C9A0881
	v_mov_b32_e32 v29, 0                                       // 000000078D40: 7E3A0280
	s_cbranch_vccnz 140                                        // 000000078D44: BFA4008C <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3e78>
	s_add_i32 s26, s25, 1                                      // 000000078D48: 811A8119
	s_cmp_eq_u32 s11, 2                                        // 000000078D4C: BF06820B
	s_cbranch_scc1 87                                          // 000000078D50: BFA20057 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3db0>
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v8, v7             // 000000078D54: CA100080 1D080107
	s_and_b32 s3, s26, 28                                      // 000000078D5C: 8B039C1A
	s_mov_b32 s27, 0                                           // 000000078D60: BE9B0080
	s_mov_b64 s[12:13], s[0:1]                                 // 000000078D64: BE8C0100
	s_mov_b64 s[18:19], s[16:17]                               // 000000078D68: BE920110
	s_clause 0x1                                               // 000000078D6C: BF850001
	s_load_b256 s[36:43], s[12:13], 0x150                      // 000000078D70: F40C0906 F8000150
	s_load_b128 s[28:31], s[12:13], 0x170                      // 000000078D78: F4080706 F8000170
	s_add_i32 s27, s27, 4                                      // 000000078D80: 811B841B
	s_waitcnt lgkmcnt(0)                                       // 000000078D84: BF89FC07
	v_mul_hi_u32 v9, s37, v8                                   // 000000078D88: D72D0009 00021025
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078D90: BF870091
	v_add_nc_u32_e32 v9, v8, v9                                // 000000078D94: 4A121308
	v_lshrrev_b32_e32 v9, s38, v9                              // 000000078D98: 32121226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000078D9C: BF870121
	v_mul_hi_u32 v10, s40, v9                                  // 000000078DA0: D72D000A 00021228
	v_mul_lo_u32 v13, v9, s36                                  // 000000078DA8: D72C000D 00004909
	v_add_nc_u32_e32 v10, v9, v10                              // 000000078DB0: 4A141509
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000078DB4: BF870112
	v_sub_nc_u32_e32 v13, v8, v13                              // 000000078DB8: 4C1A1B08
	v_lshrrev_b32_e32 v10, s41, v10                            // 000000078DBC: 32141429
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000078DC0: BF870121
	v_mul_hi_u32 v11, s43, v10                                 // 000000078DC4: D72D000B 0002142B
	v_mul_lo_u32 v14, v10, s39                                 // 000000078DCC: D72C000E 00004F0A
	v_add_nc_u32_e32 v11, v10, v11                             // 000000078DD4: 4A16170A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000078DD8: BF870112
	v_sub_nc_u32_e32 v9, v9, v14                               // 000000078DDC: 4C121D09
	v_lshrrev_b32_e32 v11, s28, v11                            // 000000078DE0: 3216161C
	s_load_b32 s28, s[18:19], null                             // 000000078DE4: F4000709 F8000000
	s_delay_alu instid0(VALU_DEP_1)                            // 000000078DEC: BF870001
	v_mul_hi_u32 v12, s30, v11                                 // 000000078DF0: D72D000C 0002161E
	s_clause 0x2                                               // 000000078DF8: BF850002
	s_load_b32 s30, s[18:19], 0x8                              // 000000078DFC: F4000789 F8000008
	s_load_b32 s33, s[18:19], 0x10                             // 000000078E04: F4000849 F8000010
	s_load_b32 s34, s[18:19], 0x18                             // 000000078E0C: F4000889 F8000018
	s_add_u32 s18, s18, 32                                     // 000000078E14: 8012A012
	s_addc_u32 s19, s19, 0                                     // 000000078E18: 82138013
	s_add_u32 s12, s12, 48                                     // 000000078E1C: 800CB00C
	s_addc_u32 s13, s13, 0                                     // 000000078E20: 820D800D
	s_cmp_eq_u32 s3, s27                                       // 000000078E24: BF061B03
	v_add_nc_u32_e32 v12, v11, v12                             // 000000078E28: 4A18190B
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)// 000000078E2C: BF8701C1
	v_lshrrev_b32_e32 v8, s31, v12                             // 000000078E30: 3210181F
	v_mul_lo_u32 v12, v11, s42                                 // 000000078E34: D72C000C 0000550B
	s_waitcnt lgkmcnt(0)                                       // 000000078E3C: BF89FC07
	v_mul_lo_u32 v13, v13, s28                                 // 000000078E40: D72C000D 0000390D
	v_mul_lo_u32 v15, v8, s29                                  // 000000078E48: D72C000F 00003B08
	v_mul_lo_u32 v9, v9, s30                                   // 000000078E50: D72C0009 00003D09
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)// 000000078E58: BF870194
	v_sub_nc_u32_e32 v10, v10, v12                             // 000000078E5C: 4C14190A
	v_sub_nc_u32_e32 v11, v11, v15                             // 000000078E60: 4C161F0B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)// 000000078E64: BF870212
	v_mul_lo_u32 v10, v10, s33                                 // 000000078E68: D72C000A 0000430A
	v_add3_u32 v9, v13, v29, v9                                // 000000078E70: D6550009 04263B0D
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078E78: BF870093
	v_mul_lo_u32 v11, v11, s34                                 // 000000078E7C: D72C000B 0000450B
	v_add3_u32 v29, v10, v9, v11                               // 000000078E84: D655001D 042E130A
	s_cbranch_scc0 65463                                       // 000000078E8C: BFA1FFB7 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3c6c>
	s_and_b32 s26, s26, 3                                      // 000000078E90: 8B1A831A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000078E94: BF870009
	s_cmp_eq_u32 s26, 0                                        // 000000078E98: BF06801A
	s_cbranch_scc0 11                                          // 000000078E9C: BFA1000B <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3dcc>
	s_branch 53                                                // 000000078EA0: BFA00035 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3e78>
	s_load_b64 s[12:13], s[0:1], 0x298                         // 000000078EA4: F4040300 F8000298
	s_branch 53                                                // 000000078EAC: BFA00035 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3e84>
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v8, v7             // 000000078EB0: CA100080 1D080107
	s_mov_b32 s3, 0                                            // 000000078EB8: BE830080
	s_and_b32 s26, s26, 3                                      // 000000078EBC: 8B1A831A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000078EC0: BF870009
	s_cmp_eq_u32 s26, 0                                        // 000000078EC4: BF06801A
	s_cbranch_scc1 43                                          // 000000078EC8: BFA2002B <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3e78>
	s_lshl_b32 s12, s3, 3                                      // 000000078ECC: 840C8303
	s_mul_i32 s3, s3, 12                                       // 000000078ED0: 96038C03
	s_add_u32 s12, s0, s12                                     // 000000078ED4: 800C0C00
	s_addc_u32 s13, s1, 0                                      // 000000078ED8: 820D8001
	s_add_u32 s12, s12, 0x210                                  // 000000078EDC: 800CFF0C 00000210
	s_addc_u32 s13, s13, 0                                     // 000000078EE4: 820D800D
	s_add_u32 s18, s0, s3                                      // 000000078EE8: 80120300
	s_addc_u32 s19, s1, 0                                      // 000000078EEC: 82138001
	s_nop 0                                                    // 000000078EF0: BF800000
	s_nop 0                                                    // 000000078EF4: BF800000
	s_nop 0                                                    // 000000078EF8: BF800000
	s_nop 0                                                    // 000000078EFC: BF800000
	s_clause 0x1                                               // 000000078F00: BF850001
	s_load_b64 s[28:29], s[18:19], 0x150                       // 000000078F04: F4040709 F8000150
	s_load_b32 s3, s[18:19], 0x158                             // 000000078F0C: F40000C9 F8000158
	s_load_b32 s27, s[12:13], null                             // 000000078F14: F40006C6 F8000000
	s_add_u32 s12, s12, 8                                      // 000000078F1C: 800C880C
	s_addc_u32 s13, s13, 0                                     // 000000078F20: 820D800D
	s_add_u32 s18, s18, 12                                     // 000000078F24: 80128C12
	s_addc_u32 s19, s19, 0                                     // 000000078F28: 82138013
	s_add_i32 s26, s26, -1                                     // 000000078F2C: 811AC11A
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 000000078F30: BF8700B9
	s_cmp_lg_u32 s26, 0                                        // 000000078F34: BF07801A
	s_waitcnt lgkmcnt(0)                                       // 000000078F38: BF89FC07
	v_mul_hi_u32 v9, s29, v8                                   // 000000078F3C: D72D0009 0002101D
	v_add_nc_u32_e32 v9, v8, v9                                // 000000078F44: 4A121308
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078F48: BF870091
	v_lshrrev_b32_e32 v11, s3, v9                              // 000000078F4C: 32161203
	v_mul_lo_u32 v9, v11, s28                                  // 000000078F50: D72C0009 0000390B
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078F58: BF870091
	v_sub_nc_u32_e32 v8, v8, v9                                // 000000078F5C: 4C101308
	v_mad_u64_u32 v[9:10], null, v8, s27, v[29:30]             // 000000078F60: D6FE7C09 04743708
	s_delay_alu instid0(VALU_DEP_1)                            // 000000078F68: BF870001
	v_dual_mov_b32 v8, v11 :: v_dual_mov_b32 v29, v9           // 000000078F6C: CA10010B 081C0109
	s_cbranch_scc1 65506                                       // 000000078F74: BFA2FFE2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3e00>
	s_load_b64 s[12:13], s[0:1], 0x298                         // 000000078F78: F4040300 F8000298
	s_cbranch_execnz 29                                        // 000000078F80: BFA6001D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3ef8>
	v_mul_hi_u32 v8, s6, v7                                    // 000000078F84: D72D0008 00020E06
	v_cmp_ne_u32_e32 vcc_lo, 1, v5                             // 000000078F8C: 7C9A0A81
	s_and_b32 vcc_lo, exec_lo, vcc_lo                          // 000000078F90: 8B6A6A7E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078F94: BF870092
	v_add_nc_u32_e32 v8, v7, v8                                // 000000078F98: 4A101107
	v_lshrrev_b32_e32 v8, s7, v8                               // 000000078F9C: 32101007
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078FA0: BF870091
	v_mul_lo_u32 v9, v8, s5                                    // 000000078FA4: D72C0009 00000B08
	v_sub_nc_u32_e32 v7, v7, v9                                // 000000078FAC: 4C0E1307
	s_waitcnt lgkmcnt(0)                                       // 000000078FB0: BF89FC07
	s_delay_alu instid0(VALU_DEP_1)                            // 000000078FB4: BF870001
	v_mul_lo_u32 v29, v7, s24                                  // 000000078FB8: D72C001D 00003107
	s_cbranch_vccnz 13                                         // 000000078FC0: BFA4000D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3ef8>
	v_mul_hi_u32 v7, v8, s9                                    // 000000078FC4: D72D0007 00001308
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078FCC: BF870091
	v_add_nc_u32_e32 v7, v8, v7                                // 000000078FD0: 4A0E0F08
	v_lshrrev_b32_e32 v7, s10, v7                              // 000000078FD4: 320E0E0A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078FD8: BF870091
	v_mul_lo_u32 v7, v7, s8                                    // 000000078FDC: D72C0007 00001107
	v_sub_nc_u32_e32 v9, v8, v7                                // 000000078FE4: 4C120F08
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000078FE8: BF870091
	v_mad_u64_u32 v[7:8], null, v9, s4, v[29:30]               // 000000078FEC: D6FE7C07 04740909
	v_mov_b32_e32 v29, v7                                      // 000000078FF4: 7E3A0307
	s_clause 0x1                                               // 000000078FF8: BF850001
	s_load_b64 s[18:19], s[0:1], 0x2a8                         // 000000078FFC: F4040480 F80002A8
	s_load_b32 s3, s[0:1], 0x28                                // 000000079004: F40000C0 F8000028
	s_waitcnt lgkmcnt(0)                                       // 00000007900C: BF89FC07
	v_add_co_u32 v30, s26, s18, v26                            // 000000079010: D7001A1E 00023412
	s_delay_alu instid0(VALU_DEP_1)                            // 000000079018: BF870001
	v_add_co_ci_u32_e64 v31, null, s19, 0, s26                 // 00000007901C: D5207C1F 00690013
	s_cmp_lg_u64 s[18:19], 0                                   // 000000079024: BF118012
	s_mov_b32 s18, 0                                           // 000000079028: BE920080
	s_cselect_b32 vcc_lo, -1, 0                                // 00000007902C: 986A80C1
	s_cmp_eq_u32 s3, 0                                         // 000000079030: BF068003
	v_dual_cndmask_b32 v33, 0, v31 :: v_dual_cndmask_b32 v32, 0, v30// 000000079034: CA523E80 21203C80
	s_cbranch_scc1 98                                          // 00000007903C: BFA20062 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x40c8>
	s_load_b64 s[18:19], s[0:1], 0x2c                          // 000000079040: F4040480 F800002C
	s_and_b32 vcc_lo, exec_lo, s2                              // 000000079048: 8B6A027E
	s_waitcnt lgkmcnt(0)                                       // 00000007904C: BF89FC07
	v_mul_lo_u32 v7, s18, v25                                  // 000000079050: D72C0007 00023212
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079058: BF870091
	v_mad_u64_u32 v[8:9], null, s19, v24, v[7:8]               // 00000007905C: D6FE7C08 041E3013
	v_add_lshl_u32 v7, v8, s35, 2                              // 000000079064: D6470007 02084708
	s_cbranch_vccz 88                                          // 00000007906C: BFA30058 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x40d0>
	v_cmp_ne_u32_e32 vcc_lo, 1, v4                             // 000000079070: 7C9A0881
	v_mov_b32_e32 v34, 0                                       // 000000079074: 7E440280
	s_cbranch_vccnz 143                                        // 000000079078: BFA4008F <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x41b8>
	s_add_i32 s27, s25, 1                                      // 00000007907C: 811B8119
	s_cmp_eq_u32 s11, 2                                        // 000000079080: BF06820B
	s_cbranch_scc1 83                                          // 000000079084: BFA20053 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x40d4>
	v_mov_b32_e32 v34, 0                                       // 000000079088: 7E440280
	v_mov_b32_e32 v8, v7                                       // 00000007908C: 7E100307
	s_and_b32 s26, s27, 28                                     // 000000079090: 8B1A9C1B
	s_mov_b32 s28, 0                                           // 000000079094: BE9C0080
	s_mov_b64 s[2:3], s[0:1]                                   // 000000079098: BE820100
	s_mov_b64 s[18:19], s[16:17]                               // 00000007909C: BE920110
	s_clause 0x1                                               // 0000000790A0: BF850001
	s_load_b256 s[36:43], s[2:3], 0x150                        // 0000000790A4: F40C0901 F8000150
	s_load_b128 s[44:47], s[2:3], 0x170                        // 0000000790AC: F4080B01 F8000170
	s_clause 0x3                                               // 0000000790B4: BF850003
	s_load_b32 s29, s[18:19], null                             // 0000000790B8: F4000749 F8000000
	s_load_b32 s30, s[18:19], 0x8                              // 0000000790C0: F4000789 F8000008
	s_load_b32 s31, s[18:19], 0x10                             // 0000000790C8: F40007C9 F8000010
	s_load_b32 s33, s[18:19], 0x18                             // 0000000790D0: F4000849 F8000018
	s_add_i32 s28, s28, 4                                      // 0000000790D8: 811C841C
	s_add_u32 s18, s18, 32                                     // 0000000790DC: 8012A012
	s_addc_u32 s19, s19, 0                                     // 0000000790E0: 82138013
	s_add_u32 s2, s2, 48                                       // 0000000790E4: 8002B002
	s_addc_u32 s3, s3, 0                                       // 0000000790E8: 82038003
	s_cmp_lg_u32 s26, s28                                      // 0000000790EC: BF071C1A
	s_waitcnt lgkmcnt(0)                                       // 0000000790F0: BF89FC07
	v_mul_hi_u32 v9, s37, v8                                   // 0000000790F4: D72D0009 00021025
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000790FC: BF870091
	v_add_nc_u32_e32 v9, v8, v9                                // 000000079100: 4A121308
	v_lshrrev_b32_e32 v9, s38, v9                              // 000000079104: 32121226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000079108: BF870121
	v_mul_hi_u32 v10, s40, v9                                  // 00000007910C: D72D000A 00021228
	v_mul_lo_u32 v13, v9, s36                                  // 000000079114: D72C000D 00004909
	v_add_nc_u32_e32 v10, v9, v10                              // 00000007911C: 4A141509
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000079120: BF870112
	v_sub_nc_u32_e32 v13, v8, v13                              // 000000079124: 4C1A1B08
	v_lshrrev_b32_e32 v10, s41, v10                            // 000000079128: 32141429
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007912C: BF870112
	v_mul_lo_u32 v13, v13, s29                                 // 000000079130: D72C000D 00003B0D
	v_mul_hi_u32 v11, s43, v10                                 // 000000079138: D72D000B 0002142B
	v_mul_lo_u32 v14, v10, s39                                 // 000000079140: D72C000E 00004F0A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000079148: BF870112
	v_add_nc_u32_e32 v11, v10, v11                             // 00000007914C: 4A16170A
	v_sub_nc_u32_e32 v9, v9, v14                               // 000000079150: 4C121D09
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000079154: BF870112
	v_lshrrev_b32_e32 v11, s44, v11                            // 000000079158: 3216162C
	v_mul_lo_u32 v9, v9, s30                                   // 00000007915C: D72C0009 00003D09
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000079164: BF870112
	v_mul_hi_u32 v12, s46, v11                                 // 000000079168: D72D000C 0002162E
	v_add3_u32 v9, v13, v34, v9                                // 000000079170: D6550009 0426450D
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079178: BF870092
	v_add_nc_u32_e32 v12, v11, v12                             // 00000007917C: 4A18190B
	v_lshrrev_b32_e32 v8, s47, v12                             // 000000079180: 3210182F
	v_mul_lo_u32 v12, v11, s42                                 // 000000079184: D72C000C 0000550B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007918C: BF870112
	v_mul_lo_u32 v15, v8, s45                                  // 000000079190: D72C000F 00005B08
	v_sub_nc_u32_e32 v10, v10, v12                             // 000000079198: 4C14190A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007919C: BF870112
	v_sub_nc_u32_e32 v11, v11, v15                             // 0000000791A0: 4C161F0B
	v_mul_lo_u32 v10, v10, s31                                 // 0000000791A4: D72C000A 00003F0A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000791AC: BF870092
	v_mul_lo_u32 v11, v11, s33                                 // 0000000791B0: D72C000B 0000430B
	v_add3_u32 v34, v10, v9, v11                               // 0000000791B8: D6550022 042E130A
	s_cbranch_scc1 65463                                       // 0000000791C0: BFA2FFB7 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x3fa0>
	s_branch 6                                                 // 0000000791C4: BFA00006 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x40e0>
	s_mov_b32 s24, -1                                          // 0000000791C8: BE9800C1
	s_branch 1527                                              // 0000000791CC: BFA005F7 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x58ac>
	s_branch 58                                                // 0000000791D0: BFA0003A <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x41bc>
	v_mov_b32_e32 v34, 0                                       // 0000000791D4: 7E440280
	v_mov_b32_e32 v8, v7                                       // 0000000791D8: 7E100307
	s_mov_b32 s26, 0                                           // 0000000791DC: BE9A0080
	s_and_b32 s27, s27, 3                                      // 0000000791E0: 8B1B831B
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000791E4: BF870009
	s_cmp_eq_u32 s27, 0                                        // 0000000791E8: BF06801B
	s_cbranch_scc1 50                                          // 0000000791EC: BFA20032 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x41b8>
	s_lshl_b32 s2, s26, 3                                      // 0000000791F0: 8402831A
	s_mul_i32 s18, s26, 12                                     // 0000000791F4: 96128C1A
	s_add_u32 s2, s0, s2                                       // 0000000791F8: 80020200
	s_addc_u32 s3, s1, 0                                       // 0000000791FC: 82038001
	s_add_u32 s2, s2, 0x210                                    // 000000079200: 8002FF02 00000210
	s_addc_u32 s3, s3, 0                                       // 000000079208: 82038003
	s_add_u32 s18, s0, s18                                     // 00000007920C: 80121200
	s_addc_u32 s19, s1, 0                                      // 000000079210: 82138001
	s_nop 0                                                    // 000000079214: BF800000
	s_nop 0                                                    // 000000079218: BF800000
	s_nop 0                                                    // 00000007921C: BF800000
	s_nop 0                                                    // 000000079220: BF800000
	s_nop 0                                                    // 000000079224: BF800000
	s_nop 0                                                    // 000000079228: BF800000
	s_nop 0                                                    // 00000007922C: BF800000
	s_nop 0                                                    // 000000079230: BF800000
	s_nop 0                                                    // 000000079234: BF800000
	s_nop 0                                                    // 000000079238: BF800000
	s_nop 0                                                    // 00000007923C: BF800000
	s_clause 0x1                                               // 000000079240: BF850001
	s_load_b64 s[28:29], s[18:19], 0x150                       // 000000079244: F4040709 F8000150
	s_load_b32 s26, s[18:19], 0x158                            // 00000007924C: F4000689 F8000158
	s_waitcnt lgkmcnt(0)                                       // 000000079254: BF89FC07
	v_mul_hi_u32 v9, s29, v8                                   // 000000079258: D72D0009 0002101D
	s_load_b32 s29, s[2:3], null                               // 000000079260: F4000741 F8000000
	s_add_u32 s2, s2, 8                                        // 000000079268: 80028802
	s_addc_u32 s3, s3, 0                                       // 00000007926C: 82038003
	s_add_u32 s18, s18, 12                                     // 000000079270: 80128C12
	s_addc_u32 s19, s19, 0                                     // 000000079274: 82138013
	s_add_i32 s27, s27, -1                                     // 000000079278: 811BC11B
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 00000007927C: BF8700A9
	s_cmp_lg_u32 s27, 0                                        // 000000079280: BF07801B
	v_add_nc_u32_e32 v9, v8, v9                                // 000000079284: 4A121308
	v_lshrrev_b32_e32 v11, s26, v9                             // 000000079288: 3216121A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007928C: BF870091
	v_mul_lo_u32 v9, v11, s28                                  // 000000079290: D72C0009 0000390B
	v_sub_nc_u32_e32 v8, v8, v9                                // 000000079298: 4C101308
	s_waitcnt lgkmcnt(0)                                       // 00000007929C: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000792A0: BF870121
	v_mad_u64_u32 v[9:10], null, v8, s29, v[34:35]             // 0000000792A4: D6FE7C09 04883B08
	v_mov_b32_e32 v8, v11                                      // 0000000792AC: 7E10030B
	v_mov_b32_e32 v34, v9                                      // 0000000792B0: 7E440309
	s_cbranch_scc1 65506                                       // 0000000792B4: BFA2FFE2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4140>
	s_cbranch_execnz 28                                        // 0000000792B8: BFA6001C <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x422c>
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 0000000792BC: BF870131
	v_mul_hi_u32 v8, v7, s6                                    // 0000000792C0: D72D0008 00000D07
	v_cmp_ne_u32_e32 vcc_lo, 1, v5                             // 0000000792C8: 7C9A0A81
	s_and_b32 vcc_lo, exec_lo, vcc_lo                          // 0000000792CC: 8B6A6A7E
	v_add_nc_u32_e32 v8, v7, v8                                // 0000000792D0: 4A101107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000792D4: BF870091
	v_lshrrev_b32_e32 v8, s7, v8                               // 0000000792D8: 32101007
	v_mul_lo_u32 v9, v8, s5                                    // 0000000792DC: D72C0009 00000B08
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000792E4: BF870091
	v_sub_nc_u32_e32 v9, v7, v9                                // 0000000792E8: 4C121307
	v_mul_lo_u32 v34, v9, s24                                  // 0000000792EC: D72C0022 00003109
	s_cbranch_vccnz 13                                         // 0000000792F4: BFA4000D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x422c>
	v_mul_hi_u32 v9, v8, s9                                    // 0000000792F8: D72D0009 00001308
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079300: BF870091
	v_add_nc_u32_e32 v9, v8, v9                                // 000000079304: 4A121308
	v_lshrrev_b32_e32 v9, s10, v9                              // 000000079308: 3212120A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007930C: BF870091
	v_mul_lo_u32 v9, v9, s8                                    // 000000079310: D72C0009 00001109
	v_sub_nc_u32_e32 v10, v8, v9                               // 000000079318: 4C141308
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007931C: BF870091
	v_mad_u64_u32 v[8:9], null, v10, s4, v[34:35]              // 000000079320: D6FE7C08 0488090A
	v_mov_b32_e32 v34, v8                                      // 000000079328: 7E440308
	v_cmp_ne_u32_e32 vcc_lo, 1, v6                             // 00000007932C: 7C9A0C81
	v_or_b32_e32 v8, 1, v7                                     // 000000079330: 38100E81
	s_cbranch_vccnz 86                                         // 000000079334: BFA40056 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4390>
	v_cmp_ne_u32_e32 vcc_lo, 1, v4                             // 000000079338: 7C9A0881
	v_mov_b32_e32 v35, 0                                       // 00000007933C: 7E460280
	s_cbranch_vccnz 141                                        // 000000079340: BFA4008D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4478>
	s_add_i32 s27, s25, 1                                      // 000000079344: 811B8119
	s_cmp_eq_u32 s11, 2                                        // 000000079348: BF06820B
	s_cbranch_scc1 81                                          // 00000007934C: BFA20051 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4394>
	v_mov_b32_e32 v35, 0                                       // 000000079350: 7E460280
	v_mov_b32_e32 v9, v8                                       // 000000079354: 7E120308
	s_and_b32 s26, s27, 28                                     // 000000079358: 8B1A9C1B
	s_mov_b32 s28, 0                                           // 00000007935C: BE9C0080
	s_mov_b64 s[2:3], s[0:1]                                   // 000000079360: BE820100
	s_mov_b64 s[18:19], s[16:17]                               // 000000079364: BE920110
	s_clause 0x1                                               // 000000079368: BF850001
	s_load_b256 s[36:43], s[2:3], 0x150                        // 00000007936C: F40C0901 F8000150
	s_load_b128 s[44:47], s[2:3], 0x170                        // 000000079374: F4080B01 F8000170
	s_clause 0x3                                               // 00000007937C: BF850003
	s_load_b32 s29, s[18:19], null                             // 000000079380: F4000749 F8000000
	s_load_b32 s30, s[18:19], 0x8                              // 000000079388: F4000789 F8000008
	s_load_b32 s31, s[18:19], 0x10                             // 000000079390: F40007C9 F8000010
	s_load_b32 s33, s[18:19], 0x18                             // 000000079398: F4000849 F8000018
	s_add_i32 s28, s28, 4                                      // 0000000793A0: 811C841C
	s_add_u32 s18, s18, 32                                     // 0000000793A4: 8012A012
	s_addc_u32 s19, s19, 0                                     // 0000000793A8: 82138013
	s_add_u32 s2, s2, 48                                       // 0000000793AC: 8002B002
	s_addc_u32 s3, s3, 0                                       // 0000000793B0: 82038003
	s_cmp_eq_u32 s26, s28                                      // 0000000793B4: BF061C1A
	s_waitcnt lgkmcnt(0)                                       // 0000000793B8: BF89FC07
	v_mul_hi_u32 v10, s37, v9                                  // 0000000793BC: D72D000A 00021225
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000793C4: BF870091
	v_add_nc_u32_e32 v10, v9, v10                              // 0000000793C8: 4A141509
	v_lshrrev_b32_e32 v10, s38, v10                            // 0000000793CC: 32141426
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000793D0: BF870121
	v_mul_hi_u32 v11, s40, v10                                 // 0000000793D4: D72D000B 00021428
	v_mul_lo_u32 v14, v10, s36                                 // 0000000793DC: D72C000E 0000490A
	v_add_nc_u32_e32 v11, v10, v11                             // 0000000793E4: 4A16170A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000793E8: BF870112
	v_sub_nc_u32_e32 v14, v9, v14                              // 0000000793EC: 4C1C1D09
	v_lshrrev_b32_e32 v11, s41, v11                            // 0000000793F0: 32161629
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000793F4: BF870112
	v_mul_lo_u32 v14, v14, s29                                 // 0000000793F8: D72C000E 00003B0E
	v_mul_hi_u32 v12, s43, v11                                 // 000000079400: D72D000C 0002162B
	v_mul_lo_u32 v15, v11, s39                                 // 000000079408: D72C000F 00004F0B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000079410: BF870112
	v_add_nc_u32_e32 v12, v11, v12                             // 000000079414: 4A18190B
	v_sub_nc_u32_e32 v10, v10, v15                             // 000000079418: 4C141F0A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007941C: BF870112
	v_lshrrev_b32_e32 v12, s44, v12                            // 000000079420: 3218182C
	v_mul_lo_u32 v10, v10, s30                                 // 000000079424: D72C000A 00003D0A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 00000007942C: BF870112
	v_mul_hi_u32 v13, s46, v12                                 // 000000079430: D72D000D 0002182E
	v_add3_u32 v10, v14, v35, v10                              // 000000079438: D655000A 042A470E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079440: BF870092
	v_add_nc_u32_e32 v13, v12, v13                             // 000000079444: 4A1A1B0C
	v_lshrrev_b32_e32 v9, s47, v13                             // 000000079448: 32121A2F
	v_mul_lo_u32 v13, v12, s42                                 // 00000007944C: D72C000D 0000550C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000079454: BF870112
	v_mul_lo_u32 v16, v9, s45                                  // 000000079458: D72C0010 00005B09
	v_sub_nc_u32_e32 v11, v11, v13                             // 000000079460: 4C161B0B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000079464: BF870112
	v_sub_nc_u32_e32 v12, v12, v16                             // 000000079468: 4C18210C
	v_mul_lo_u32 v11, v11, s31                                 // 00000007946C: D72C000B 00003F0B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079474: BF870092
	v_mul_lo_u32 v12, v12, s33                                 // 000000079478: D72C000C 0000430C
	v_add3_u32 v35, v11, v10, v12                              // 000000079480: D6550023 0432150B
	s_cbranch_scc0 65463                                       // 000000079488: BFA1FFB7 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4268>
	s_branch 4                                                 // 00000007948C: BFA00004 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x43a0>
	s_branch 58                                                // 000000079490: BFA0003A <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x447c>
	v_mov_b32_e32 v35, 0                                       // 000000079494: 7E460280
	v_mov_b32_e32 v9, v8                                       // 000000079498: 7E120308
	s_mov_b32 s26, 0                                           // 00000007949C: BE9A0080
	s_and_b32 s27, s27, 3                                      // 0000000794A0: 8B1B831B
	s_delay_alu instid0(SALU_CYCLE_1)                          // 0000000794A4: BF870009
	s_cmp_eq_u32 s27, 0                                        // 0000000794A8: BF06801B
	s_cbranch_scc1 50                                          // 0000000794AC: BFA20032 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4478>
	s_lshl_b32 s2, s26, 3                                      // 0000000794B0: 8402831A
	s_mul_i32 s18, s26, 12                                     // 0000000794B4: 96128C1A
	s_add_u32 s2, s0, s2                                       // 0000000794B8: 80020200
	s_addc_u32 s3, s1, 0                                       // 0000000794BC: 82038001
	s_add_u32 s2, s2, 0x210                                    // 0000000794C0: 8002FF02 00000210
	s_addc_u32 s3, s3, 0                                       // 0000000794C8: 82038003
	s_add_u32 s18, s0, s18                                     // 0000000794CC: 80121200
	s_addc_u32 s19, s1, 0                                      // 0000000794D0: 82138001
	s_nop 0                                                    // 0000000794D4: BF800000
	s_nop 0                                                    // 0000000794D8: BF800000
	s_nop 0                                                    // 0000000794DC: BF800000
	s_nop 0                                                    // 0000000794E0: BF800000
	s_nop 0                                                    // 0000000794E4: BF800000
	s_nop 0                                                    // 0000000794E8: BF800000
	s_nop 0                                                    // 0000000794EC: BF800000
	s_nop 0                                                    // 0000000794F0: BF800000
	s_nop 0                                                    // 0000000794F4: BF800000
	s_nop 0                                                    // 0000000794F8: BF800000
	s_nop 0                                                    // 0000000794FC: BF800000
	s_clause 0x1                                               // 000000079500: BF850001
	s_load_b64 s[28:29], s[18:19], 0x150                       // 000000079504: F4040709 F8000150
	s_load_b32 s26, s[18:19], 0x158                            // 00000007950C: F4000689 F8000158
	s_waitcnt lgkmcnt(0)                                       // 000000079514: BF89FC07
	v_mul_hi_u32 v10, s29, v9                                  // 000000079518: D72D000A 0002121D
	s_load_b32 s29, s[2:3], null                               // 000000079520: F4000741 F8000000
	s_add_u32 s2, s2, 8                                        // 000000079528: 80028802
	s_addc_u32 s3, s3, 0                                       // 00000007952C: 82038003
	s_add_u32 s18, s18, 12                                     // 000000079530: 80128C12
	s_addc_u32 s19, s19, 0                                     // 000000079534: 82138013
	s_add_i32 s27, s27, -1                                     // 000000079538: 811BC11B
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 00000007953C: BF8700A9
	s_cmp_lg_u32 s27, 0                                        // 000000079540: BF07801B
	v_add_nc_u32_e32 v10, v9, v10                              // 000000079544: 4A141509
	v_lshrrev_b32_e32 v12, s26, v10                            // 000000079548: 3218141A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007954C: BF870091
	v_mul_lo_u32 v10, v12, s28                                 // 000000079550: D72C000A 0000390C
	v_sub_nc_u32_e32 v9, v9, v10                               // 000000079558: 4C121509
	s_waitcnt lgkmcnt(0)                                       // 00000007955C: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000079560: BF870121
	v_mad_u64_u32 v[10:11], null, v9, s29, v[35:36]            // 000000079564: D6FE7C0A 048C3B09
	v_mov_b32_e32 v9, v12                                      // 00000007956C: 7E12030C
	v_mov_b32_e32 v35, v10                                     // 000000079570: 7E46030A
	s_cbranch_scc1 65506                                       // 000000079574: BFA2FFE2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4400>
	s_cbranch_execnz 28                                        // 000000079578: BFA6001C <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x44ec>
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 00000007957C: BF870131
	v_mul_hi_u32 v9, v8, s6                                    // 000000079580: D72D0009 00000D08
	v_cmp_ne_u32_e32 vcc_lo, 1, v5                             // 000000079588: 7C9A0A81
	s_and_b32 vcc_lo, exec_lo, vcc_lo                          // 00000007958C: 8B6A6A7E
	v_add_nc_u32_e32 v9, v8, v9                                // 000000079590: 4A121308
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079594: BF870091
	v_lshrrev_b32_e32 v9, s7, v9                               // 000000079598: 32121207
	v_mul_lo_u32 v10, v9, s5                                   // 00000007959C: D72C000A 00000B09
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000795A4: BF870091
	v_sub_nc_u32_e32 v8, v8, v10                               // 0000000795A8: 4C101508
	v_mul_lo_u32 v35, v8, s24                                  // 0000000795AC: D72C0023 00003108
	s_cbranch_vccnz 13                                         // 0000000795B4: BFA4000D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x44ec>
	v_mul_hi_u32 v8, v9, s9                                    // 0000000795B8: D72D0008 00001309
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000795C0: BF870091
	v_add_nc_u32_e32 v8, v9, v8                                // 0000000795C4: 4A101109
	v_lshrrev_b32_e32 v8, s10, v8                              // 0000000795C8: 3210100A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000795CC: BF870091
	v_mul_lo_u32 v8, v8, s8                                    // 0000000795D0: D72C0008 00001108
	v_sub_nc_u32_e32 v10, v9, v8                               // 0000000795D8: 4C141109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 0000000795DC: BF870091
	v_mad_u64_u32 v[8:9], null, v10, s4, v[35:36]              // 0000000795E0: D6FE7C08 048C090A
	v_mov_b32_e32 v35, v8                                      // 0000000795E8: 7E460308
	v_cmp_ne_u32_e32 vcc_lo, 1, v6                             // 0000000795EC: 7C9A0C81
	v_or_b32_e32 v8, 2, v7                                     // 0000000795F0: 38100E82
	s_cbranch_vccnz 86                                         // 0000000795F4: BFA40056 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4650>
	v_cmp_ne_u32_e32 vcc_lo, 1, v4                             // 0000000795F8: 7C9A0881
	v_mov_b32_e32 v36, 0                                       // 0000000795FC: 7E480280
	s_cbranch_vccnz 141                                        // 000000079600: BFA4008D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4738>
	s_add_i32 s27, s25, 1                                      // 000000079604: 811B8119
	s_cmp_eq_u32 s11, 2                                        // 000000079608: BF06820B
	s_cbranch_scc1 81                                          // 00000007960C: BFA20051 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4654>
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v9, v8             // 000000079610: CA100080 24080108
	s_and_b32 s26, s27, 28                                     // 000000079618: 8B1A9C1B
	s_mov_b32 s28, 0                                           // 00000007961C: BE9C0080
	s_mov_b64 s[2:3], s[0:1]                                   // 000000079620: BE820100
	s_mov_b64 s[18:19], s[16:17]                               // 000000079624: BE920110
	s_clause 0x1                                               // 000000079628: BF850001
	s_load_b256 s[36:43], s[2:3], 0x150                        // 00000007962C: F40C0901 F8000150
	s_load_b128 s[44:47], s[2:3], 0x170                        // 000000079634: F4080B01 F8000170
	s_clause 0x3                                               // 00000007963C: BF850003
	s_load_b32 s29, s[18:19], null                             // 000000079640: F4000749 F8000000
	s_load_b32 s30, s[18:19], 0x8                              // 000000079648: F4000789 F8000008
	s_load_b32 s31, s[18:19], 0x10                             // 000000079650: F40007C9 F8000010
	s_load_b32 s33, s[18:19], 0x18                             // 000000079658: F4000849 F8000018
	s_add_i32 s28, s28, 4                                      // 000000079660: 811C841C
	s_add_u32 s18, s18, 32                                     // 000000079664: 8012A012
	s_addc_u32 s19, s19, 0                                     // 000000079668: 82138013
	s_add_u32 s2, s2, 48                                       // 00000007966C: 8002B002
	s_addc_u32 s3, s3, 0                                       // 000000079670: 82038003
	s_cmp_eq_u32 s26, s28                                      // 000000079674: BF061C1A
	s_waitcnt lgkmcnt(0)                                       // 000000079678: BF89FC07
	v_mul_hi_u32 v10, s37, v9                                  // 00000007967C: D72D000A 00021225
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079684: BF870091
	v_add_nc_u32_e32 v10, v9, v10                              // 000000079688: 4A141509
	v_lshrrev_b32_e32 v10, s38, v10                            // 00000007968C: 32141426
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000079690: BF870121
	v_mul_hi_u32 v11, s40, v10                                 // 000000079694: D72D000B 00021428
	v_mul_lo_u32 v14, v10, s36                                 // 00000007969C: D72C000E 0000490A
	v_add_nc_u32_e32 v11, v10, v11                             // 0000000796A4: 4A16170A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000796A8: BF870112
	v_sub_nc_u32_e32 v14, v9, v14                              // 0000000796AC: 4C1C1D09
	v_lshrrev_b32_e32 v11, s41, v11                            // 0000000796B0: 32161629
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000796B4: BF870112
	v_mul_lo_u32 v14, v14, s29                                 // 0000000796B8: D72C000E 00003B0E
	v_mul_hi_u32 v12, s43, v11                                 // 0000000796C0: D72D000C 0002162B
	v_mul_lo_u32 v15, v11, s39                                 // 0000000796C8: D72C000F 00004F0B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000796D0: BF870112
	v_add_nc_u32_e32 v12, v11, v12                             // 0000000796D4: 4A18190B
	v_sub_nc_u32_e32 v10, v10, v15                             // 0000000796D8: 4C141F0A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000796DC: BF870112
	v_lshrrev_b32_e32 v12, s44, v12                            // 0000000796E0: 3218182C
	v_mul_lo_u32 v10, v10, s30                                 // 0000000796E4: D72C000A 00003D0A
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000796EC: BF870112
	v_mul_hi_u32 v13, s46, v12                                 // 0000000796F0: D72D000D 0002182E
	v_add3_u32 v10, v14, v36, v10                              // 0000000796F8: D655000A 042A490E
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079700: BF870092
	v_add_nc_u32_e32 v13, v12, v13                             // 000000079704: 4A1A1B0C
	v_lshrrev_b32_e32 v9, s47, v13                             // 000000079708: 32121A2F
	v_mul_lo_u32 v13, v12, s42                                 // 00000007970C: D72C000D 0000550C
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000079714: BF870112
	v_mul_lo_u32 v16, v9, s45                                  // 000000079718: D72C0010 00005B09
	v_sub_nc_u32_e32 v11, v11, v13                             // 000000079720: 4C161B0B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000079724: BF870112
	v_sub_nc_u32_e32 v12, v12, v16                             // 000000079728: 4C18210C
	v_mul_lo_u32 v11, v11, s31                                 // 00000007972C: D72C000B 00003F0B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079734: BF870092
	v_mul_lo_u32 v12, v12, s33                                 // 000000079738: D72C000C 0000430C
	v_add3_u32 v36, v11, v10, v12                              // 000000079740: D6550024 0432150B
	s_cbranch_scc0 65463                                       // 000000079748: BFA1FFB7 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4528>
	s_branch 4                                                 // 00000007974C: BFA00004 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4660>
	s_branch 58                                                // 000000079750: BFA0003A <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x473c>
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v9, v8             // 000000079754: CA100080 24080108
	s_mov_b32 s26, 0                                           // 00000007975C: BE9A0080
	s_and_b32 s27, s27, 3                                      // 000000079760: 8B1B831B
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000079764: BF870009
	s_cmp_eq_u32 s27, 0                                        // 000000079768: BF06801B
	s_cbranch_scc1 50                                          // 00000007976C: BFA20032 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4738>
	s_lshl_b32 s2, s26, 3                                      // 000000079770: 8402831A
	s_mul_i32 s18, s26, 12                                     // 000000079774: 96128C1A
	s_add_u32 s2, s0, s2                                       // 000000079778: 80020200
	s_addc_u32 s3, s1, 0                                       // 00000007977C: 82038001
	s_add_u32 s2, s2, 0x210                                    // 000000079780: 8002FF02 00000210
	s_addc_u32 s3, s3, 0                                       // 000000079788: 82038003
	s_add_u32 s18, s0, s18                                     // 00000007978C: 80121200
	s_addc_u32 s19, s1, 0                                      // 000000079790: 82138001
	s_nop 0                                                    // 000000079794: BF800000
	s_nop 0                                                    // 000000079798: BF800000
	s_nop 0                                                    // 00000007979C: BF800000
	s_nop 0                                                    // 0000000797A0: BF800000
	s_nop 0                                                    // 0000000797A4: BF800000
	s_nop 0                                                    // 0000000797A8: BF800000
	s_nop 0                                                    // 0000000797AC: BF800000
	s_nop 0                                                    // 0000000797B0: BF800000
	s_nop 0                                                    // 0000000797B4: BF800000
	s_nop 0                                                    // 0000000797B8: BF800000
	s_nop 0                                                    // 0000000797BC: BF800000
	s_clause 0x1                                               // 0000000797C0: BF850001
	s_load_b64 s[28:29], s[18:19], 0x150                       // 0000000797C4: F4040709 F8000150
	s_load_b32 s26, s[18:19], 0x158                            // 0000000797CC: F4000689 F8000158
	s_waitcnt lgkmcnt(0)                                       // 0000000797D4: BF89FC07
	v_mul_hi_u32 v10, s29, v9                                  // 0000000797D8: D72D000A 0002121D
	s_load_b32 s29, s[2:3], null                               // 0000000797E0: F4000741 F8000000
	s_add_u32 s2, s2, 8                                        // 0000000797E8: 80028802
	s_addc_u32 s3, s3, 0                                       // 0000000797EC: 82038003
	s_add_u32 s18, s18, 12                                     // 0000000797F0: 80128C12
	s_addc_u32 s19, s19, 0                                     // 0000000797F4: 82138013
	s_add_i32 s27, s27, -1                                     // 0000000797F8: 811BC11B
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 0000000797FC: BF8700A9
	s_cmp_lg_u32 s27, 0                                        // 000000079800: BF07801B
	v_add_nc_u32_e32 v10, v9, v10                              // 000000079804: 4A141509
	v_lshrrev_b32_e32 v12, s26, v10                            // 000000079808: 3218141A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007980C: BF870091
	v_mul_lo_u32 v10, v12, s28                                 // 000000079810: D72C000A 0000390C
	v_sub_nc_u32_e32 v9, v9, v10                               // 000000079818: 4C121509
	s_waitcnt lgkmcnt(0)                                       // 00000007981C: BF89FC07
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079820: BF870091
	v_mad_u64_u32 v[10:11], null, v9, s29, v[36:37]            // 000000079824: D6FE7C0A 04903B09
	v_dual_mov_b32 v9, v12 :: v_dual_mov_b32 v36, v10          // 00000007982C: CA10010C 0924010A
	s_cbranch_scc1 65506                                       // 000000079834: BFA2FFE2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x46c0>
	s_cbranch_execnz 28                                        // 000000079838: BFA6001C <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x47ac>
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 00000007983C: BF870131
	v_mul_hi_u32 v9, v8, s6                                    // 000000079840: D72D0009 00000D08
	v_cmp_ne_u32_e32 vcc_lo, 1, v5                             // 000000079848: 7C9A0A81
	s_and_b32 vcc_lo, exec_lo, vcc_lo                          // 00000007984C: 8B6A6A7E
	v_add_nc_u32_e32 v9, v8, v9                                // 000000079850: 4A121308
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079854: BF870091
	v_lshrrev_b32_e32 v9, s7, v9                               // 000000079858: 32121207
	v_mul_lo_u32 v10, v9, s5                                   // 00000007985C: D72C000A 00000B09
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079864: BF870091
	v_sub_nc_u32_e32 v8, v8, v10                               // 000000079868: 4C101508
	v_mul_lo_u32 v36, v8, s24                                  // 00000007986C: D72C0024 00003108
	s_cbranch_vccnz 13                                         // 000000079874: BFA4000D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x47ac>
	v_mul_hi_u32 v8, v9, s9                                    // 000000079878: D72D0008 00001309
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079880: BF870091
	v_add_nc_u32_e32 v8, v9, v8                                // 000000079884: 4A101109
	v_lshrrev_b32_e32 v8, s10, v8                              // 000000079888: 3210100A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007988C: BF870091
	v_mul_lo_u32 v8, v8, s8                                    // 000000079890: D72C0008 00001108
	v_sub_nc_u32_e32 v10, v9, v8                               // 000000079898: 4C141109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007989C: BF870091
	v_mad_u64_u32 v[8:9], null, v10, s4, v[36:37]              // 0000000798A0: D6FE7C08 0490090A
	v_mov_b32_e32 v36, v8                                      // 0000000798A8: 7E480308
	v_cmp_ne_u32_e32 vcc_lo, 1, v6                             // 0000000798AC: 7C9A0C81
	v_or_b32_e32 v6, 3, v7                                     // 0000000798B0: 380C0E83
	s_cbranch_vccnz 86                                         // 0000000798B4: BFA40056 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4910>
	v_cmp_ne_u32_e32 vcc_lo, 1, v4                             // 0000000798B8: 7C9A0881
	v_mov_b32_e32 v37, 0                                       // 0000000798BC: 7E4A0280
	s_cbranch_vccnz 141                                        // 0000000798C0: BFA4008D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x49f8>
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v4, v6             // 0000000798C4: CA100080 25040106
	s_add_i32 s25, s25, 1                                      // 0000000798CC: 81198119
	s_cmp_eq_u32 s11, 2                                        // 0000000798D0: BF06820B
	s_cbranch_scc1 79                                          // 0000000798D4: BFA2004F <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4914>
	s_and_b32 s11, s25, 28                                     // 0000000798D8: 8B0B9C19
	s_mov_b32 s18, 0                                           // 0000000798DC: BE920080
	s_mov_b64 s[2:3], s[0:1]                                   // 0000000798E0: BE820100
	s_clause 0x1                                               // 0000000798E4: BF850001
	s_load_b256 s[36:43], s[2:3], 0x150                        // 0000000798E8: F40C0901 F8000150
	s_load_b128 s[28:31], s[2:3], 0x170                        // 0000000798F0: F4080701 F8000170
	s_clause 0x2                                               // 0000000798F8: BF850002
	s_load_b32 s19, s[16:17], null                             // 0000000798FC: F40004C8 F8000000
	s_load_b32 s26, s[16:17], 0x8                              // 000000079904: F4000688 F8000008
	s_load_b32 s27, s[16:17], 0x10                             // 00000007990C: F40006C8 F8000010
	s_add_i32 s18, s18, 4                                      // 000000079914: 81128412
	s_waitcnt lgkmcnt(0)                                       // 000000079918: BF89FC07
	v_mul_hi_u32 v8, s37, v4                                   // 00000007991C: D72D0008 00020825
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079924: BF870091
	v_add_nc_u32_e32 v8, v4, v8                                // 000000079928: 4A101104
	v_lshrrev_b32_e32 v8, s38, v8                              // 00000007992C: 32101026
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 000000079930: BF870121
	v_mul_hi_u32 v9, s40, v8                                   // 000000079934: D72D0009 00021028
	v_mul_lo_u32 v12, v8, s36                                  // 00000007993C: D72C000C 00004908
	v_add_nc_u32_e32 v9, v8, v9                                // 000000079944: 4A121308
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000079948: BF870112
	v_sub_nc_u32_e32 v12, v4, v12                              // 00000007994C: 4C181904
	v_lshrrev_b32_e32 v9, s41, v9                              // 000000079950: 32121229
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000079954: BF870112
	v_mul_lo_u32 v12, v12, s19                                 // 000000079958: D72C000C 0000270C
	v_mul_hi_u32 v10, s43, v9                                  // 000000079960: D72D000A 0002122B
	v_mul_lo_u32 v13, v9, s39                                  // 000000079968: D72C000D 00004F09
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000079970: BF870112
	v_add_nc_u32_e32 v10, v9, v10                              // 000000079974: 4A141509
	v_sub_nc_u32_e32 v8, v8, v13                               // 000000079978: 4C101B08
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 00000007997C: BF870122
	v_lshrrev_b32_e32 v10, s28, v10                            // 000000079980: 3214141C
	s_load_b32 s28, s[16:17], 0x18                             // 000000079984: F4000708 F8000018
	v_mul_lo_u32 v8, v8, s26                                   // 00000007998C: D72C0008 00003508
	s_add_u32 s16, s16, 32                                     // 000000079994: 8010A010
	s_addc_u32 s17, s17, 0                                     // 000000079998: 82118011
	v_mul_hi_u32 v11, s30, v10                                 // 00000007999C: D72D000B 0002141E
	s_add_u32 s2, s2, 48                                       // 0000000799A4: 8002B002
	s_addc_u32 s3, s3, 0                                       // 0000000799A8: 82038003
	s_cmp_eq_u32 s11, s18                                      // 0000000799AC: BF06120B
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000799B0: BF870112
	v_add3_u32 v8, v12, v37, v8                                // 0000000799B4: D6550008 04224B0C
	v_add_nc_u32_e32 v11, v10, v11                             // 0000000799BC: 4A16170A
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000799C0: BF870121
	v_lshrrev_b32_e32 v4, s31, v11                             // 0000000799C4: 3208161F
	v_mul_lo_u32 v11, v10, s42                                 // 0000000799C8: D72C000B 0000550A
	v_mul_lo_u32 v14, v4, s29                                  // 0000000799D0: D72C000E 00003B04
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)// 0000000799D8: BF870112
	v_sub_nc_u32_e32 v9, v9, v11                               // 0000000799DC: 4C121709
	v_sub_nc_u32_e32 v10, v10, v14                             // 0000000799E0: 4C141D0A
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 0000000799E4: BF870122
	v_mul_lo_u32 v9, v9, s27                                   // 0000000799E8: D72C0009 00003709
	s_waitcnt lgkmcnt(0)                                       // 0000000799F0: BF89FC07
	v_mul_lo_u32 v10, v10, s28                                 // 0000000799F4: D72C000A 0000390A
	s_delay_alu instid0(VALU_DEP_1)                            // 0000000799FC: BF870001
	v_add3_u32 v37, v9, v8, v10                                // 000000079A00: D6550025 042A1109
	s_cbranch_scc0 65462                                       // 000000079A08: BFA1FFB6 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x47e4>
	s_branch 2                                                 // 000000079A0C: BFA00002 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4918>
	s_branch 58                                                // 000000079A10: BFA0003A <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x49fc>
	s_mov_b32 s11, 0                                           // 000000079A14: BE8B0080
	s_and_b32 s18, s25, 3                                      // 000000079A18: 8B128319
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000079A1C: BF870009
	s_cmp_eq_u32 s18, 0                                        // 000000079A20: BF068012
	s_cbranch_scc1 52                                          // 000000079A24: BFA20034 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x49f8>
	s_lshl_b32 s2, s11, 3                                      // 000000079A28: 8402830B
	s_mul_i32 s11, s11, 12                                     // 000000079A2C: 960B8C0B
	s_add_u32 s2, s0, s2                                       // 000000079A30: 80020200
	s_addc_u32 s3, s1, 0                                       // 000000079A34: 82038001
	s_add_u32 s2, s2, 0x210                                    // 000000079A38: 8002FF02 00000210
	s_addc_u32 s3, s3, 0                                       // 000000079A40: 82038003
	s_add_u32 s16, s0, s11                                     // 000000079A44: 80100B00
	s_addc_u32 s17, s1, 0                                      // 000000079A48: 82118001
	s_nop 0                                                    // 000000079A4C: BF800000
	s_nop 0                                                    // 000000079A50: BF800000
	s_nop 0                                                    // 000000079A54: BF800000
	s_nop 0                                                    // 000000079A58: BF800000
	s_nop 0                                                    // 000000079A5C: BF800000
	s_nop 0                                                    // 000000079A60: BF800000
	s_nop 0                                                    // 000000079A64: BF800000
	s_nop 0                                                    // 000000079A68: BF800000
	s_nop 0                                                    // 000000079A6C: BF800000
	s_nop 0                                                    // 000000079A70: BF800000
	s_nop 0                                                    // 000000079A74: BF800000
	s_nop 0                                                    // 000000079A78: BF800000
	s_nop 0                                                    // 000000079A7C: BF800000
	s_clause 0x1                                               // 000000079A80: BF850001
	s_load_b64 s[26:27], s[16:17], 0x150                       // 000000079A84: F4040688 F8000150
	s_load_b32 s11, s[16:17], 0x158                            // 000000079A8C: F40002C8 F8000158
	s_load_b32 s19, s[2:3], null                               // 000000079A94: F40004C1 F8000000
	s_add_u32 s2, s2, 8                                        // 000000079A9C: 80028802
	s_addc_u32 s3, s3, 0                                       // 000000079AA0: 82038003
	s_add_u32 s16, s16, 12                                     // 000000079AA4: 80108C10
	s_addc_u32 s17, s17, 0                                     // 000000079AA8: 82118011
	s_add_i32 s18, s18, -1                                     // 000000079AAC: 8112C112
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)// 000000079AB0: BF8700B9
	s_cmp_lg_u32 s18, 0                                        // 000000079AB4: BF078012
	s_waitcnt lgkmcnt(0)                                       // 000000079AB8: BF89FC07
	v_mul_hi_u32 v8, s27, v4                                   // 000000079ABC: D72D0008 0002081B
	v_add_nc_u32_e32 v8, v4, v8                                // 000000079AC4: 4A101104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079AC8: BF870091
	v_lshrrev_b32_e32 v10, s11, v8                             // 000000079ACC: 3214100B
	v_mul_lo_u32 v8, v10, s26                                  // 000000079AD0: D72C0008 0000350A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079AD8: BF870091
	v_sub_nc_u32_e32 v4, v4, v8                                // 000000079ADC: 4C081104
	v_mad_u64_u32 v[8:9], null, v4, s19, v[37:38]              // 000000079AE0: D6FE7C08 04942704
	s_delay_alu instid0(VALU_DEP_1)                            // 000000079AE8: BF870001
	v_dual_mov_b32 v4, v10 :: v_dual_mov_b32 v37, v8           // 000000079AEC: CA10010A 04240108
	s_cbranch_scc1 65506                                       // 000000079AF4: BFA2FFE2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4980>
	s_cbranch_execnz 28                                        // 000000079AF8: BFA6001C <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4a6c>
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 000000079AFC: BF870131
	v_mul_hi_u32 v4, v6, s6                                    // 000000079B00: D72D0004 00000D06
	v_cmp_ne_u32_e32 vcc_lo, 1, v5                             // 000000079B08: 7C9A0A81
	s_and_b32 vcc_lo, exec_lo, vcc_lo                          // 000000079B0C: 8B6A6A7E
	v_add_nc_u32_e32 v4, v6, v4                                // 000000079B10: 4A080906
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079B14: BF870091
	v_lshrrev_b32_e32 v4, s7, v4                               // 000000079B18: 32080807
	v_mul_lo_u32 v8, v4, s5                                    // 000000079B1C: D72C0008 00000B04
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079B24: BF870091
	v_sub_nc_u32_e32 v6, v6, v8                                // 000000079B28: 4C0C1106
	v_mul_lo_u32 v37, v6, s24                                  // 000000079B2C: D72C0025 00003106
	s_cbranch_vccnz 13                                         // 000000079B34: BFA4000D <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4a6c>
	v_mul_hi_u32 v5, v4, s9                                    // 000000079B38: D72D0005 00001304
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079B40: BF870091
	v_add_nc_u32_e32 v5, v4, v5                                // 000000079B44: 4A0A0B04
	v_lshrrev_b32_e32 v5, s10, v5                              // 000000079B48: 320A0A0A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079B4C: BF870091
	v_mul_lo_u32 v5, v5, s8                                    // 000000079B50: D72C0005 00001105
	v_sub_nc_u32_e32 v6, v4, v5                                // 000000079B58: 4C0C0B04
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079B5C: BF870091
	v_mad_u64_u32 v[4:5], null, v6, s4, v[37:38]               // 000000079B60: D6FE7C04 04940906
	v_mov_b32_e32 v37, v4                                      // 000000079B68: 7E4A0304
	s_clause 0x1                                               // 000000079B6C: BF850001
	s_load_b32 s2, s[0:1], 0x10                                // 000000079B70: F4000080 F8000010
	s_load_b64 s[10:11], s[0:1], 0x2b0                         // 000000079B78: F4040280 F80002B0
	v_cmp_eq_u32_e32 vcc_lo, 0, v25                            // 000000079B80: 7C943280
	s_mov_b32 s25, 0                                           // 000000079B84: BE990080
	s_or_b32 s3, vcc_lo, s22                                   // 000000079B88: 8C03166A
	s_waitcnt lgkmcnt(0)                                       // 000000079B8C: BF89FC07
	v_cmp_gt_i32_e64 s2, s2, v7                                // 000000079B90: D4440002 00020E02
	s_and_b32 s2, s2, s3                                       // 000000079B98: 8B020302
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000079B9C: BF870499
	s_and_saveexec_b32 s3, s2                                  // 000000079BA0: BE832002
	s_xor_b32 s2, exec_lo, s3                                  // 000000079BA4: 8D02037E
	s_cbranch_execz 9                                          // 000000079BA8: BFA50009 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4ad0>
	s_load_b32 s3, s[0:1], 0x24                                // 000000079BAC: F40000C0 F8000024
	v_cmp_eq_u32_e32 vcc_lo, 0, v24                            // 000000079BB4: 7C943080
	s_waitcnt lgkmcnt(0)                                       // 000000079BB8: BF89FC07
	s_cmp_eq_u32 s3, 0                                         // 000000079BBC: BF068003
	s_cselect_b32 s3, -1, 0                                    // 000000079BC0: 980380C1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000079BC4: BF870499
	s_or_b32 s3, vcc_lo, s3                                    // 000000079BC8: 8C03036A
	s_and_b32 s25, s3, exec_lo                                 // 000000079BCC: 8B197E03
	s_or_b32 exec_lo, exec_lo, s2                              // 000000079BD0: 8C7E027E
	s_and_saveexec_b32 s4, s25                                 // 000000079BD4: BE842019
	s_cbranch_execz 35                                         // 000000079BD8: BFA50023 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4b68>
	s_load_b32 s5, s[0:1], 0x2d4                               // 000000079BDC: F4000140 F80002D4
	s_add_u32 s2, s0, 0x2d0                                    // 000000079BE4: 8002FF00 000002D0
	s_addc_u32 s3, s1, 0                                       // 000000079BEC: 82038001
	s_and_not1_b32 vcc_lo, exec_lo, s22                        // 000000079BF0: 916A167E
	s_waitcnt lgkmcnt(0)                                       // 000000079BF4: BF89FC07
	s_mul_i32 s5, s5, s14                                      // 000000079BF8: 96050E05
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 000000079BFC: BF870499
	s_add_i32 s5, s5, s15                                      // 000000079C00: 81050F05
	v_mov_b32_e32 v4, s5                                       // 000000079C04: 7E080205
	s_cbranch_vccnz 8                                          // 000000079C08: BFA40008 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4b2c>
	s_load_b32 s2, s[2:3], 0xc                                 // 000000079C0C: F4000081 F800000C
	s_waitcnt lgkmcnt(0)                                       // 000000079C14: BF89FC07
	s_and_b32 s2, s2, 0xffff                                   // 000000079C18: 8B02FF02 0000FFFF
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000079C20: BF870009
	v_mad_u64_u32 v[4:5], null, s5, s2, v[25:26]               // 000000079C24: D6FE7C04 04640405
	v_mov_b32_e32 v5, 0                                        // 000000079C2C: 7E0A0280
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 000000079C30: BF870091
	v_lshlrev_b64 v[4:5], 4, v[4:5]                            // 000000079C34: D73C0004 00020884
	v_add_co_u32 v4, vcc_lo, s10, v4                           // 000000079C3C: D7006A04 0002080A
	s_delay_alu instid0(VALU_DEP_1)                            // 000000079C44: BF870001
	v_add_co_ci_u32_e64 v5, null, s11, v5, vcc_lo              // 000000079C48: D5207C05 01AA0A0B
	s_clause 0x1                                               // 000000079C50: BF850001
	global_store_b64 v[4:5], v[0:1], off                       // 000000079C54: DC6E0000 007C0004
	global_store_b64 v[4:5], v[2:3], off offset:8              // 000000079C5C: DC6E0008 007C0204
	s_waitcnt vmcnt(0)                                         // 000000079C64: BF8903F7
	s_or_b32 exec_lo, exec_lo, s4                              // 000000079C68: 8C7E047E
	v_or_b32_e32 v4, v25, v24                                  // 000000079C6C: 38083119
	s_mov_b32 s2, exec_lo                                      // 000000079C70: BE82007E
	s_waitcnt_vscnt null, 0x0                                  // 000000079C74: BC7C0000
	s_barrier                                                  // 000000079C78: BFBD0000
	buffer_gl0_inv                                             // 000000079C7C: E0AC0000 00000000
	s_barrier                                                  // 000000079C84: BFBD0000
	buffer_gl0_inv                                             // 000000079C88: E0AC0000 00000000
	v_cmpx_eq_u32_e32 0, v4                                    // 000000079C90: 7D940880
	s_cbranch_execz 39                                         // 000000079C94: BFA50027 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4c34>
	s_mov_b32 s4, exec_lo                                      // 000000079C98: BE84007E
	s_mov_b32 s3, exec_lo                                      // 000000079C9C: BE83007E
	v_mbcnt_lo_u32_b32 v4, s4, 0                               // 000000079CA0: D71F0004 00010004
	s_delay_alu instid0(VALU_DEP_1)                            // 000000079CA8: BF870001
	v_cmpx_eq_u32_e32 0, v4                                    // 000000079CAC: 7D940880
	s_cbranch_execz 16                                         // 000000079CB0: BFA50010 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4bf4>
	s_load_b64 s[6:7], s[0:1], 0x2b8                           // 000000079CB4: F4040180 F80002B8
	s_mov_b32 s5, s15                                          // 000000079CBC: BE85000F
	s_mov_b32 s15, 0                                           // 000000079CC0: BE8F0080
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000079CC4: BF870009
	s_lshl_b64 s[8:9], s[14:15], 2                             // 000000079CC8: 8488820E
	s_mov_b32 s15, s5                                          // 000000079CCC: BE8F0005
	s_waitcnt lgkmcnt(0)                                       // 000000079CD0: BF89FC07
	s_add_u32 s6, s6, s8                                       // 000000079CD4: 80060806
	s_addc_u32 s7, s7, s9                                      // 000000079CD8: 82070907
	s_bcnt1_i32_b32 s4, s4                                     // 000000079CDC: BE841804
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000079CE0: BF870009
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, s4              // 000000079CE4: CA100080 05060004
	global_atomic_add_u32 v5, v5, v6, s[6:7] glc               // 000000079CEC: DCD64000 05060605
	s_or_b32 exec_lo, exec_lo, s3                              // 000000079CF4: 8C7E037E
	s_load_b32 s3, s[0:1], 0x2d4                               // 000000079CF8: F40000C0 F80002D4
	s_waitcnt vmcnt(0)                                         // 000000079D00: BF8903F7
	v_readfirstlane_b32 s4, v5                                 // 000000079D04: 7E080505
	s_delay_alu instid0(VALU_DEP_1)                            // 000000079D08: BF870001
	v_dual_mov_b32 v5, 0 :: v_dual_add_nc_u32 v4, s4, v4       // 000000079D0C: CA200080 05040804
	s_waitcnt lgkmcnt(0)                                       // 000000079D14: BF89FC07
	s_add_i32 s3, s3, -1                                       // 000000079D18: 8103C103
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)    // 000000079D1C: BF870481
	v_cmp_eq_u32_e32 vcc_lo, s3, v4                            // 000000079D20: 7C940803
	v_cndmask_b32_e64 v4, 0, 1, vcc_lo                         // 000000079D24: D5010004 01A90280
	ds_store_b8 v5, v4                                         // 000000079D2C: D8780000 00000405
	s_or_b32 exec_lo, exec_lo, s2                              // 000000079D34: 8C7E027E
	v_mov_b32_e32 v4, 0                                        // 000000079D38: 7E080280
	s_waitcnt lgkmcnt(0)                                       // 000000079D3C: BF89FC07
	s_barrier                                                  // 000000079D40: BFBD0000
	buffer_gl0_inv                                             // 000000079D44: E0AC0000 00000000
	s_mov_b32 s18, 0                                           // 000000079D4C: BE920080
	ds_load_u8 v4, v4                                          // 000000079D50: D8E80000 04000004
	s_mov_b32 s24, 0                                           // 000000079D58: BE980080
	s_waitcnt lgkmcnt(0)                                       // 000000079D5C: BF89FC07
	v_and_b32_e32 v4, 1, v4                                    // 000000079D60: 36080881
	s_delay_alu instid0(VALU_DEP_1)                            // 000000079D64: BF870001
	v_cmp_eq_u32_e32 vcc_lo, 0, v4                             // 000000079D68: 7C940880
	s_cbranch_vccnz 783                                        // 000000079D6C: BFA4030F <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x58ac>
	s_load_b32 s27, s[0:1], 0x4                                // 000000079D70: F40006C0 F8000004
	s_cmp_lg_u32 s23, 0                                        // 000000079D78: BF078017
	s_cselect_b32 s26, -1, 0                                   // 000000079D7C: 981A80C1
	s_add_u32 s16, s0, 0x2d0                                   // 000000079D80: 8010FF00 000002D0
	s_addc_u32 s17, s1, 0                                      // 000000079D88: 82118001
	s_cmp_eq_u32 s23, 0                                        // 000000079D8C: BF068017
	s_cbranch_scc1 91                                          // 000000079D90: BFA2005B <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4e00>
	s_clause 0x1                                               // 000000079D94: BF850001
	s_load_b32 s18, s[16:17], null                             // 000000079D98: F4000488 F8000000
	s_load_b32 s4, s[16:17], 0xc                               // 000000079DA0: F4000108 F800000C
	s_waitcnt lgkmcnt(0)                                       // 000000079DA8: BF89FC07
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v6, s27             // 000000079DAC: CA100080 0906001B
	s_load_b32 s19, s[0:1], 0x1c                               // 000000079DB4: F40004C0 F800001C
	v_dual_mov_b32 v7, s27 :: v_dual_mov_b32 v4, s27           // 000000079DBC: CA10001B 0704001B
	v_mov_b32_e32 v5, s27                                      // 000000079DC4: 7E0A021B
	s_mov_b32 s28, exec_lo                                     // 000000079DC8: BE9C007E
	s_cmp_lt_u32 s14, s18                                      // 000000079DCC: BF0A120E
	s_cselect_b32 s2, 12, 18                                   // 000000079DD0: 9802928C
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000079DD4: BF870009
	s_add_u32 s2, s16, s2                                      // 000000079DD8: 80020210
	s_addc_u32 s3, s17, 0                                      // 000000079DDC: 82038011
	s_lshr_b32 s23, s4, 16                                     // 000000079DE0: 85179004
	global_load_u16 v8, v9, s[2:3]                             // 000000079DE4: DC4A0000 08020009
	s_waitcnt vmcnt(0)                                         // 000000079DEC: BF8903F7
	v_mad_u32_u24 v10, v24, v8, v25                            // 000000079DF0: D60B000A 04661118
	s_waitcnt lgkmcnt(0)                                       // 000000079DF8: BF89FC07
	s_delay_alu instid0(VALU_DEP_1)                            // 000000079DFC: BF870001
	v_cmpx_gt_u32_e64 s19, v10                                 // 000000079E00: D4CC007E 00021413
	s_cbranch_execz 56                                         // 000000079E08: BFA50038 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4dec>
	s_load_b32 s30, s[16:17], 0x4                              // 000000079E0C: F4000788 F8000004
	v_mul_lo_u32 v11, s23, v8                                  // 000000079E14: D72C000B 00021017
	v_dual_mov_b32 v4, s27 :: v_dual_mov_b32 v5, s27           // 000000079E1C: CA10001B 0404001B
	v_dual_mov_b32 v6, s27 :: v_dual_mov_b32 v7, s27           // 000000079E24: CA10001B 0606001B
	s_mov_b32 s29, 0                                           // 000000079E2C: BE9D0080
	s_waitcnt lgkmcnt(0)                                       // 000000079E30: BF89FC07
	s_mul_i32 s30, s30, s14                                    // 000000079E34: 961E0E1E
	s_set_inst_prefetch_distance 0x1                           // 000000079E38: BF840001
	s_nop 0                                                    // 000000079E3C: BF800000
	v_add_nc_u32_e32 v8, s30, v10                              // 000000079E40: 4A10141E
	v_cmp_u_f32_e64 s2, v5, v5                                 // 000000079E44: D4180002 00020B05
	v_cmp_u_f32_e64 s3, v6, v6                                 // 000000079E4C: D4180003 00020D06
	v_add_nc_u32_e32 v10, v10, v11                             // 000000079E54: 4A14170A
	v_cmp_u_f32_e64 s4, v7, v7                                 // 000000079E58: D4180004 00020F07
	v_lshlrev_b64 v[12:13], 4, v[8:9]                          // 000000079E60: D73C000C 00021084
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)// 000000079E68: BF870113
	v_cmp_le_u32_e64 s5, s19, v10                              // 000000079E6C: D44B0005 00021413
	v_add_co_u32 v12, vcc_lo, s10, v12                         // 000000079E74: D7006A0C 0002180A
	s_delay_alu instid0(VALU_DEP_1)                            // 000000079E7C: BF870001
	v_add_co_ci_u32_e64 v13, null, s11, v13, vcc_lo            // 000000079E80: D5207C0D 01AA1A0B
	v_cmp_u_f32_e32 vcc_lo, v4, v4                             // 000000079E88: 7C300904
	global_load_b128 v[12:15], v[12:13], off                   // 000000079E8C: DC5E0000 0C7C000C
	s_waitcnt vmcnt(0)                                         // 000000079E94: BF8903F7
	v_cmp_gt_f32_e64 s6, v4, v12                               // 000000079E98: D4140006 00021904
	v_cmp_gt_f32_e64 s7, v5, v13                               // 000000079EA0: D4140007 00021B05
	v_cmp_gt_f32_e64 s8, v6, v14                               // 000000079EA8: D4140008 00021D06
	v_cmp_gt_f32_e64 s9, v7, v15                               // 000000079EB0: D4140009 00021F07
	s_or_b32 vcc_lo, vcc_lo, s6                                // 000000079EB8: 8C6A066A
	v_cndmask_b32_e32 v4, v12, v4, vcc_lo                      // 000000079EBC: 0208090C
	s_or_b32 vcc_lo, s2, s7                                    // 000000079EC0: 8C6A0702
	v_cndmask_b32_e32 v5, v13, v5, vcc_lo                      // 000000079EC4: 020A0B0D
	s_or_b32 vcc_lo, s3, s8                                    // 000000079EC8: 8C6A0803
	v_cndmask_b32_e32 v6, v14, v6, vcc_lo                      // 000000079ECC: 020C0D0E
	s_or_b32 vcc_lo, s4, s9                                    // 000000079ED0: 8C6A0904
	s_or_b32 s29, s5, s29                                      // 000000079ED4: 8C1D1D05
	v_cndmask_b32_e32 v7, v15, v7, vcc_lo                      // 000000079ED8: 020E0F0F
	s_and_not1_b32 exec_lo, exec_lo, s29                       // 000000079EDC: 917E1D7E
	s_cbranch_execnz 65495                                     // 000000079EE0: BFA6FFD7 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4d40>
	s_set_inst_prefetch_distance 0x2                           // 000000079EE4: BF840002
	s_or_b32 exec_lo, exec_lo, s29                             // 000000079EE8: 8C7E1D7E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000079EEC: BF870009
	s_or_b32 exec_lo, exec_lo, s28                             // 000000079EF0: 8C7E1C7E
	v_mov_b32_e32 v41, s23                                     // 000000079EF4: 7E520217
	s_cbranch_execz 2                                          // 000000079EF8: BFA50002 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4e04>
	s_branch 264                                               // 000000079EFC: BFA00108 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5220>
	v_mov_b32_e32 v41, s23                                     // 000000079F00: 7E520217
	s_load_b64 s[18:19], s[16:17], null                        // 000000079F04: F4040488 F8000000
	s_waitcnt lgkmcnt(0)                                       // 000000079F0C: BF89FC07
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v6, s27            // 000000079F10: CA100080 2706001B
	s_load_b32 s8, s[0:1], 0x1c                                // 000000079F18: F4000200 F800001C
	v_dual_mov_b32 v7, s27 :: v_dual_mov_b32 v4, s27           // 000000079F20: CA10001B 0704001B
	v_mov_b32_e32 v5, s27                                      // 000000079F28: 7E0A021B
	s_mov_b32 s9, exec_lo                                      // 000000079F2C: BE89007E
	s_cmp_lt_u32 s15, s19                                      // 000000079F30: BF0A130F
	s_mov_b32 s15, 0                                           // 000000079F34: BE8F0080
	s_cselect_b32 s2, 14, 20                                   // 000000079F38: 9802948E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 000000079F3C: BF870009
	s_add_u32 s2, s16, s2                                      // 000000079F40: 80020210
	s_addc_u32 s3, s17, 0                                      // 000000079F44: 82038011
	global_load_d16_b16 v41, v39, s[2:3]                       // 000000079F48: DC820000 29020027
	s_waitcnt vmcnt(0)                                         // 000000079F50: BF8903F7
	v_readfirstlane_b32 s2, v41                                // 000000079F54: 7E040529
	s_and_b32 s23, 0xffff, s2                                  // 000000079F58: 8B1702FF 0000FFFF
	s_waitcnt lgkmcnt(0)                                       // 000000079F60: BF89FC07
	v_cmpx_gt_u32_e64 s8, v24                                  // 000000079F64: D4CC007E 00023008
	s_cbranch_execz 234                                        // 000000079F6C: BFA500EA <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5218>
	s_load_b32 s2, s[16:17], 0x14                              // 000000079F70: F4000088 F8000014
	v_mov_b32_e32 v49, v24                                     // 000000079F78: 7E620318
	s_waitcnt lgkmcnt(0)                                       // 000000079F7C: BF89FC07
	s_and_b32 s2, s2, 0xffff                                   // 000000079F80: 8B02FF02 0000FFFF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 000000079F88: BF8704A9
	s_cmp_lg_u32 s2, 0                                         // 000000079F8C: BF078002
	s_cselect_b32 s2, -1, 0                                    // 000000079F90: 980280C1
	s_cmp_lg_u32 s2, 0                                         // 000000079F94: BF078002
	s_addc_u32 s4, s19, 0                                      // 000000079F98: 82048013
	s_cmp_lt_u32 s14, s18                                      // 000000079F9C: BF0A120E
	v_mad_u64_u32 v[7:8], null, s4, s14, v[24:25]              // 000000079FA0: D6FE7C07 04601C04
	s_cselect_b32 s2, 12, 18                                   // 000000079FA8: 9802928C
	s_mul_i32 s19, s23, 3                                      // 000000079FAC: 96138317
	s_add_u32 s2, s16, s2                                      // 000000079FB0: 80020210
	s_addc_u32 s3, s17, 0                                      // 000000079FB4: 82038011
	v_mov_b32_e32 v4, s27                                      // 000000079FB8: 7E08021B
	global_load_u16 v9, v39, s[2:3]                            // 000000079FBC: DC4A0000 09020027
	s_lshl_b32 s27, s23, 1                                     // 000000079FC4: 841B8117
	v_add_nc_u32_e32 v10, s19, v7                              // 000000079FC8: 4A140E13
	v_add_nc_u32_e32 v8, s27, v7                               // 000000079FCC: 4A100E1B
	v_dual_mov_b32 v42, v25 :: v_dual_add_nc_u32 v11, s23, v7  // 000000079FD0: CA200119 2A0A0E17
	v_mov_b32_e32 v5, v4                                       // 000000079FD8: 7E0A0304
	s_waitcnt vmcnt(0)                                         // 000000079FDC: BF8903F7
	v_mul_lo_u32 v12, s23, v9                                  // 000000079FE0: D72C000C 00021217
	v_mul_lo_u32 v44, v10, v9                                  // 000000079FE8: D72C002C 0002130A
	v_mul_lo_u32 v45, v11, v9                                  // 000000079FF0: D72C002D 0002130B
	v_mul_lo_u32 v46, v7, v9                                   // 000000079FF8: D72C002E 00021307
	v_mov_b32_e32 v7, v4                                       // 00000007A000: 7E0E0304
	v_mul_lo_u32 v43, v8, v9                                   // 00000007A004: D72C002B 00021308
	v_mov_b32_e32 v6, v4                                       // 00000007A00C: 7E0C0304
	v_lshlrev_b32_e32 v47, 2, v12                              // 00000007A010: 305E1882
	s_branch 12                                                // 00000007A014: BFA0000C <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4f48>
	s_or_b32 exec_lo, exec_lo, s29                             // 00000007A018: 8C7E1D7E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007A01C: BF870009
	s_or_b32 exec_lo, exec_lo, s28                             // 00000007A020: 8C7E1C7E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)// 00000007A024: BF870139
	s_or_b32 exec_lo, exec_lo, s7                              // 00000007A028: 8C7E077E
	v_add_nc_u32_e32 v49, s19, v48                             // 00000007A02C: 4A626013
	v_add_nc_u32_e32 v42, v42, v47                             // 00000007A030: 4A545F2A
	v_cmp_le_u32_e32 vcc_lo, s8, v49                           // 00000007A034: 7C966208
	s_or_b32 s15, vcc_lo, s15                                  // 00000007A038: 8C0F0F6A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007A03C: BF870009
	s_and_not1_b32 exec_lo, exec_lo, s15                       // 00000007A040: 917E0F7E
	s_cbranch_execz 179                                        // 00000007A044: BFA500B3 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5214>
	v_add_nc_u32_e32 v38, v46, v42                             // 00000007A048: 4A4C552E
	v_add_nc_u32_e32 v48, s23, v49                             // 00000007A04C: 4A606217
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007A050: BF870092
	v_lshlrev_b64 v[20:21], 4, v[38:39]                        // 00000007A054: D73C0014 00024C84
	v_add_co_u32 v20, vcc_lo, s10, v20                         // 00000007A05C: D7006A14 0002280A
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)// 00000007A064: BF870211
	v_add_co_ci_u32_e64 v21, null, s11, v21, vcc_lo            // 00000007A068: D5207C15 01AA2A0B
	v_cmp_gt_u32_e32 vcc_lo, s8, v48                           // 00000007A070: 7C986008
	global_load_b128 v[20:23], v[20:21], off                   // 00000007A074: DC5E0000 147C0014
	s_and_saveexec_b32 s3, vcc_lo                              // 00000007A07C: BE83206A
	s_cbranch_execz 46                                         // 00000007A080: BFA5002E <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x503c>
	v_add_nc_u32_e32 v38, v45, v42                             // 00000007A084: 4A4C552D
	s_mov_b32 s4, exec_lo                                      // 00000007A088: BE84007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 00000007A08C: BF870121
	v_lshlrev_b64 v[16:17], 4, v[38:39]                        // 00000007A090: D73C0010 00024C84
	v_add_nc_u32_e32 v38, s27, v49                             // 00000007A098: 4A4C621B
	v_add_co_u32 v16, s2, s10, v16                             // 00000007A09C: D7000210 0002200A
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007A0A4: BF870001
	v_add_co_ci_u32_e64 v17, null, s11, v17, s2                // 00000007A0A8: D5207C11 000A220B
	global_load_b128 v[16:19], v[16:17], off                   // 00000007A0B0: DC5E0000 107C0010
	v_cmpx_gt_u32_e64 s8, v38                                  // 00000007A0B8: D4CC007E 00024C08
	s_cbranch_execz 28                                         // 00000007A0C0: BFA5001C <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5034>
	v_add_nc_u32_e32 v38, v43, v42                             // 00000007A0C4: 4A4C552B
	s_mov_b32 s5, exec_lo                                      // 00000007A0C8: BE85007E
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)// 00000007A0CC: BF870121
	v_lshlrev_b64 v[12:13], 4, v[38:39]                        // 00000007A0D0: D73C000C 00024C84
	v_add_nc_u32_e32 v38, s19, v49                             // 00000007A0D8: 4A4C6213
	v_add_co_u32 v12, s2, s10, v12                             // 00000007A0DC: D700020C 0002180A
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007A0E4: BF870001
	v_add_co_ci_u32_e64 v13, null, s11, v13, s2                // 00000007A0E8: D5207C0D 000A1A0B
	global_load_b128 v[12:15], v[12:13], off                   // 00000007A0F0: DC5E0000 0C7C000C
	v_cmpx_gt_u32_e64 s8, v38                                  // 00000007A0F8: D4CC007E 00024C08
	s_cbranch_execz 11                                         // 00000007A100: BFA5000B <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5030>
	v_add_nc_u32_e32 v38, v44, v42                             // 00000007A104: 4A4C552C
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007A108: BF870091
	v_lshlrev_b64 v[8:9], 4, v[38:39]                          // 00000007A10C: D73C0008 00024C84
	v_add_co_u32 v8, s2, s10, v8                               // 00000007A114: D7000208 0002100A
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007A11C: BF870001
	v_add_co_ci_u32_e64 v9, null, s11, v9, s2                  // 00000007A120: D5207C09 000A120B
	global_load_b128 v[8:11], v[8:9], off                      // 00000007A128: DC5E0000 087C0008
	s_or_b32 exec_lo, exec_lo, s5                              // 00000007A130: 8C7E057E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007A134: BF870009
	s_or_b32 exec_lo, exec_lo, s4                              // 00000007A138: 8C7E047E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007A13C: BF870009
	s_or_b32 exec_lo, exec_lo, s3                              // 00000007A140: 8C7E037E
	v_cmp_u_f32_e64 s2, v4, v4                                 // 00000007A144: D4180002 00020904
	s_waitcnt vmcnt(0)                                         // 00000007A14C: BF8903F7
	v_cmp_gt_f32_e64 s3, v4, v20                               // 00000007A150: D4140003 00022904
	v_cmp_u_f32_e64 s4, v5, v5                                 // 00000007A158: D4180004 00020B05
	v_cmp_gt_f32_e64 s5, v5, v21                               // 00000007A160: D4140005 00022B05
	v_cmp_u_f32_e64 s6, v7, v7                                 // 00000007A168: D4180006 00020F07
	v_cmp_gt_f32_e64 s7, v7, v23                               // 00000007A170: D4140007 00022F07
	s_or_b32 s2, s2, s3                                        // 00000007A178: 8C020302
	v_cmp_gt_f32_e64 s3, v6, v22                               // 00000007A17C: D4140003 00022D06
	v_cndmask_b32_e64 v4, v20, v4, s2                          // 00000007A184: D5010004 000A0914
	v_cmp_u_f32_e64 s2, v6, v6                                 // 00000007A18C: D4180002 00020D06
	s_or_b32 s4, s4, s5                                        // 00000007A194: 8C040504
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 00000007A198: BF8704A9
	v_cndmask_b32_e64 v5, v21, v5, s4                          // 00000007A19C: D5010005 00120B15
	s_or_b32 s2, s2, s3                                        // 00000007A1A4: 8C020302
	v_cndmask_b32_e64 v6, v22, v6, s2                          // 00000007A1A8: D5010006 000A0D16
	s_or_b32 s2, s6, s7                                        // 00000007A1B0: 8C020706
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007A1B4: BF870009
	v_cndmask_b32_e64 v7, v23, v7, s2                          // 00000007A1B8: D5010007 000A0F17
	s_and_saveexec_b32 s7, vcc_lo                              // 00000007A1C0: BE87206A
	s_cbranch_execz 65431                                      // 00000007A1C4: BFA5FF97 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4f24>
	v_cmp_u_f32_e32 vcc_lo, v4, v4                             // 00000007A1C8: 7C300904
	v_cmp_gt_f32_e64 s2, v4, v16                               // 00000007A1CC: D4140002 00022104
	v_cmp_u_f32_e64 s3, v5, v5                                 // 00000007A1D4: D4180003 00020B05
	v_cmp_gt_f32_e64 s4, v5, v17                               // 00000007A1DC: D4140004 00022305
	v_cmp_u_f32_e64 s5, v7, v7                                 // 00000007A1E4: D4180005 00020F07
	v_cmp_gt_f32_e64 s6, v7, v19                               // 00000007A1EC: D4140006 00022707
	s_or_b32 vcc_lo, vcc_lo, s2                                // 00000007A1F4: 8C6A026A
	v_cmp_gt_f32_e64 s2, v6, v18                               // 00000007A1F8: D4140002 00022506
	v_cndmask_b32_e32 v4, v16, v4, vcc_lo                      // 00000007A200: 02080910
	v_cmp_u_f32_e32 vcc_lo, v6, v6                             // 00000007A204: 7C300D06
	s_or_b32 s3, s3, s4                                        // 00000007A208: 8C030403
	v_add_nc_u32_e32 v20, s27, v49                             // 00000007A20C: 4A28621B
	v_cndmask_b32_e64 v5, v17, v5, s3                          // 00000007A210: D5010005 000E0B11
	s_or_b32 vcc_lo, vcc_lo, s2                                // 00000007A218: 8C6A026A
	s_mov_b32 s2, exec_lo                                      // 00000007A21C: BE82007E
	v_cndmask_b32_e32 v6, v18, v6, vcc_lo                      // 00000007A220: 020C0D12
	s_or_b32 vcc_lo, s5, s6                                    // 00000007A224: 8C6A0605
	v_cndmask_b32_e32 v7, v19, v7, vcc_lo                      // 00000007A228: 020E0F13
	v_cmpx_gt_u32_e64 s8, v20                                  // 00000007A22C: D4CC007E 00022808
	s_xor_b32 s28, exec_lo, s2                                 // 00000007A234: 8D1C027E
	s_cbranch_execz 65400                                      // 00000007A238: BFA5FF78 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4f1c>
	v_cmp_u_f32_e32 vcc_lo, v4, v4                             // 00000007A23C: 7C300904
	v_cmp_gt_f32_e64 s2, v4, v12                               // 00000007A240: D4140002 00021904
	v_cmp_u_f32_e64 s3, v5, v5                                 // 00000007A248: D4180003 00020B05
	v_cmp_gt_f32_e64 s4, v5, v13                               // 00000007A250: D4140004 00021B05
	v_cmp_u_f32_e64 s5, v7, v7                                 // 00000007A258: D4180005 00020F07
	v_cmp_gt_f32_e64 s6, v7, v15                               // 00000007A260: D4140006 00021F07
	s_or_b32 vcc_lo, vcc_lo, s2                                // 00000007A268: 8C6A026A
	v_cmp_gt_f32_e64 s2, v6, v14                               // 00000007A26C: D4140002 00021D06
	v_cndmask_b32_e32 v4, v12, v4, vcc_lo                      // 00000007A274: 0208090C
	v_cmp_u_f32_e32 vcc_lo, v6, v6                             // 00000007A278: 7C300D06
	s_or_b32 s3, s3, s4                                        // 00000007A27C: 8C030403
	v_add_nc_u32_e32 v20, s19, v49                             // 00000007A280: 4A286213
	v_cndmask_b32_e64 v5, v13, v5, s3                          // 00000007A284: D5010005 000E0B0D
	s_or_b32 vcc_lo, vcc_lo, s2                                // 00000007A28C: 8C6A026A
	s_mov_b32 s2, exec_lo                                      // 00000007A290: BE82007E
	v_cndmask_b32_e32 v6, v14, v6, vcc_lo                      // 00000007A294: 020C0D0E
	s_or_b32 vcc_lo, s5, s6                                    // 00000007A298: 8C6A0605
	v_cndmask_b32_e32 v7, v15, v7, vcc_lo                      // 00000007A29C: 020E0F0F
	v_cmpx_gt_u32_e64 s8, v20                                  // 00000007A2A0: D4CC007E 00022808
	s_xor_b32 s29, exec_lo, s2                                 // 00000007A2A8: 8D1D027E
	s_cbranch_execz 65370                                      // 00000007A2AC: BFA5FF5A <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4f18>
	v_cmp_u_f32_e32 vcc_lo, v4, v4                             // 00000007A2B0: 7C300904
	v_cmp_gt_f32_e64 s2, v4, v8                                // 00000007A2B4: D4140002 00021104
	v_cmp_u_f32_e64 s3, v5, v5                                 // 00000007A2BC: D4180003 00020B05
	v_cmp_gt_f32_e64 s4, v5, v9                                // 00000007A2C4: D4140004 00021305
	v_cmp_u_f32_e64 s5, v7, v7                                 // 00000007A2CC: D4180005 00020F07
	v_cmp_gt_f32_e64 s6, v7, v11                               // 00000007A2D4: D4140006 00021707
	s_or_b32 vcc_lo, vcc_lo, s2                                // 00000007A2DC: 8C6A026A
	v_cmp_gt_f32_e64 s2, v6, v10                               // 00000007A2E0: D4140002 00021506
	v_cndmask_b32_e32 v4, v8, v4, vcc_lo                       // 00000007A2E8: 02080908
	v_cmp_u_f32_e32 vcc_lo, v6, v6                             // 00000007A2EC: 7C300D06
	s_or_b32 s3, s3, s4                                        // 00000007A2F0: 8C030403
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007A2F4: BF870009
	v_cndmask_b32_e64 v5, v9, v5, s3                           // 00000007A2F8: D5010005 000E0B09
	s_or_b32 vcc_lo, vcc_lo, s2                                // 00000007A300: 8C6A026A
	v_cndmask_b32_e32 v6, v10, v6, vcc_lo                      // 00000007A304: 020C0D0A
	s_or_b32 vcc_lo, s5, s6                                    // 00000007A308: 8C6A0605
	v_cndmask_b32_e32 v7, v11, v7, vcc_lo                      // 00000007A30C: 020E0F0B
	s_branch 65345                                             // 00000007A310: BFA0FF41 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x4f18>
	s_or_b32 exec_lo, exec_lo, s15                             // 00000007A314: 8C7E0F7E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007A318: BF870009
	s_or_b32 exec_lo, exec_lo, s9                              // 00000007A31C: 8C7E097E
	s_cmp_lt_u32 s14, s18                                      // 00000007A320: BF0A120E
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007A324: BF870001
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v11, 0xffff, v41    // 00000007A328: CA240080 080A52FF 0000FFFF
	s_cselect_b32 s2, 12, 18                                   // 00000007A334: 9802928C
	v_lshlrev_b32_e32 v10, 4, v25                              // 00000007A338: 30143284
	s_add_u32 s2, s16, s2                                      // 00000007A33C: 80020210
	s_addc_u32 s3, s17, 0                                      // 00000007A340: 82038011
	v_cmp_gt_u32_e32 vcc_lo, 2, v11                            // 00000007A344: 7C981682
	global_load_u16 v9, v8, s[2:3]                             // 00000007A348: DC4A0000 09020008
	s_and_b32 vcc_lo, exec_lo, vcc_lo                          // 00000007A350: 8B6A6A7E
	s_waitcnt vmcnt(0)                                         // 00000007A354: BF8903F7
	v_mul_u32_u24_e32 v8, v24, v9                              // 00000007A358: 16101318
	v_readfirstlane_b32 s9, v9                                 // 00000007A35C: 7E120509
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)// 00000007A360: BF870092
	v_lshlrev_b32_e32 v8, 4, v8                                // 00000007A364: 30101084
	v_add3_u32 v8, 1, v8, v10                                  // 00000007A368: D6550008 042A1081
	ds_store_2addr_b32 v8, v4, v5 offset1:1                    // 00000007A370: D8380100 00050408
	ds_store_2addr_b32 v8, v6, v7 offset0:2 offset1:3          // 00000007A378: D8380302 00070608
	s_cbranch_vccnz 62                                         // 00000007A380: BFA4003E <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x537c>
	v_lshl_add_u32 v9, v25, 4, 1                               // 00000007A384: D6460009 02050919
	s_mov_b32 s10, s23                                         // 00000007A38C: BE8A0017
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007A390: BF870009
	s_lshr_b32 s11, s10, 1                                     // 00000007A394: 850B810A
	s_mov_b32 s14, exec_lo                                     // 00000007A398: BE8E007E
	s_waitcnt lgkmcnt(0)                                       // 00000007A39C: BF89FC07
	s_barrier                                                  // 00000007A3A0: BFBD0000
	buffer_gl0_inv                                             // 00000007A3A4: E0AC0000 00000000
	v_cmpx_gt_u32_e64 s11, v24                                 // 00000007A3AC: D4CC007E 0002300B
	s_cbranch_execz 43                                         // 00000007A3B4: BFA5002B <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5364>
	v_add_nc_u32_e32 v10, s11, v24                             // 00000007A3B8: 4A14300B
	s_mov_b32 s15, exec_lo                                     // 00000007A3BC: BE8F007E
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007A3C0: BF870001
	v_cmpx_gt_u32_e64 s23, v10                                 // 00000007A3C4: D4CC007E 00021417
	s_cbranch_execz 36                                         // 00000007A3CC: BFA50024 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5360>
	v_mul_u32_u24_e32 v10, s9, v10                             // 00000007A3D0: 16141409
	v_cmp_u_f32_e32 vcc_lo, v4, v4                             // 00000007A3D4: 7C300904
	v_cmp_u_f32_e64 s2, v5, v5                                 // 00000007A3D8: D4180002 00020B05
	v_cmp_u_f32_e64 s3, v6, v6                                 // 00000007A3E0: D4180003 00020D06
	v_cmp_u_f32_e64 s5, v7, v7                                 // 00000007A3E8: D4180005 00020F07
	v_lshl_add_u32 v12, v10, 4, v9                             // 00000007A3F0: D646000C 0425090A
	ds_load_2addr_b32 v[10:11], v12 offset1:1                  // 00000007A3F8: D8DC0100 0A00000C
	ds_load_2addr_b32 v[12:13], v12 offset0:2 offset1:3        // 00000007A400: D8DC0302 0C00000C
	s_waitcnt lgkmcnt(1)                                       // 00000007A408: BF89FC17
	v_cmp_gt_f32_e64 s4, v4, v10                               // 00000007A40C: D4140004 00021504
	v_cmp_gt_f32_e64 s6, v5, v11                               // 00000007A414: D4140006 00021705
	s_waitcnt lgkmcnt(0)                                       // 00000007A41C: BF89FC07
	v_cmp_gt_f32_e64 s7, v6, v12                               // 00000007A420: D4140007 00021906
	v_cmp_gt_f32_e64 s8, v7, v13                               // 00000007A428: D4140008 00021B07
	s_or_b32 vcc_lo, vcc_lo, s4                                // 00000007A430: 8C6A046A
	v_cndmask_b32_e32 v4, v10, v4, vcc_lo                      // 00000007A434: 0208090A
	s_or_b32 vcc_lo, s2, s6                                    // 00000007A438: 8C6A0602
	v_cndmask_b32_e32 v5, v11, v5, vcc_lo                      // 00000007A43C: 020A0B0B
	s_or_b32 vcc_lo, s3, s7                                    // 00000007A440: 8C6A0703
	v_cndmask_b32_e32 v6, v12, v6, vcc_lo                      // 00000007A444: 020C0D0C
	s_or_b32 vcc_lo, s5, s8                                    // 00000007A448: 8C6A0805
	v_cndmask_b32_e32 v7, v13, v7, vcc_lo                      // 00000007A44C: 020E0F0D
	ds_store_2addr_b32 v8, v4, v5 offset1:1                    // 00000007A450: D8380100 00050408
	ds_store_2addr_b32 v8, v6, v7 offset0:2 offset1:3          // 00000007A458: D8380302 00070608
	s_or_b32 exec_lo, exec_lo, s15                             // 00000007A460: 8C7E0F7E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007A464: BF870009
	s_or_b32 exec_lo, exec_lo, s14                             // 00000007A468: 8C7E0E7E
	s_cmp_gt_u32 s10, 3                                        // 00000007A46C: BF08830A
	s_cbranch_scc0 2                                           // 00000007A470: BFA10002 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x537c>
	s_mov_b32 s10, s11                                         // 00000007A474: BE8A000B
	s_branch 65477                                             // 00000007A478: BFA0FFC5 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5290>
	s_and_not1_b32 vcc_lo, exec_lo, s26                        // 00000007A47C: 916A1A7E
	s_cbranch_vccnz 140                                        // 00000007A480: BFA4008C <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x55b4>
	s_cmp_lt_u32 s9, 33                                        // 00000007A484: BF0AA109
	s_cbranch_scc1 68                                          // 00000007A488: BFA20044 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x549c>
	s_cmp_lt_u32 s9, 64                                        // 00000007A48C: BF0AC009
	ds_store_2addr_b32 v8, v4, v5 offset1:1                    // 00000007A490: D8380100 00050408
	ds_store_2addr_b32 v8, v6, v7 offset0:2 offset1:3          // 00000007A498: D8380302 00070608
	s_cbranch_scc1 60                                          // 00000007A4A0: BFA2003C <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5494>
	s_mov_b32 s10, s9                                          // 00000007A4A4: BE8A0009
	s_set_inst_prefetch_distance 0x1                           // 00000007A4A8: BF840001
	s_nop 0                                                    // 00000007A4AC: BF800000
	s_nop 0                                                    // 00000007A4B0: BF800000
	s_nop 0                                                    // 00000007A4B4: BF800000
	s_nop 0                                                    // 00000007A4B8: BF800000
	s_nop 0                                                    // 00000007A4BC: BF800000
	s_lshr_b32 s11, s10, 1                                     // 00000007A4C0: 850B810A
	s_waitcnt lgkmcnt(0)                                       // 00000007A4C4: BF89FC07
	v_add_nc_u32_e32 v9, s11, v25                              // 00000007A4C8: 4A12320B
	v_cmp_gt_u32_e32 vcc_lo, s11, v25                          // 00000007A4CC: 7C98320B
	s_barrier                                                  // 00000007A4D0: BFBD0000
	buffer_gl0_inv                                             // 00000007A4D4: E0AC0000 00000000
	v_cmp_gt_u32_e64 s2, s9, v9                                // 00000007A4DC: D44C0002 00021209
	s_and_b32 s2, vcc_lo, s2                                   // 00000007A4E4: 8B02026A
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007A4E8: BF870009
	s_and_saveexec_b32 s14, s2                                 // 00000007A4EC: BE8E2002
	s_cbranch_execz 35                                         // 00000007A4F0: BFA50023 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5480>
	v_lshl_add_u32 v11, s11, 4, v8                             // 00000007A4F4: D646000B 0421080B
	v_cmp_u_f32_e32 vcc_lo, v4, v4                             // 00000007A4FC: 7C300904
	v_cmp_u_f32_e64 s2, v5, v5                                 // 00000007A500: D4180002 00020B05
	v_cmp_u_f32_e64 s3, v6, v6                                 // 00000007A508: D4180003 00020D06
	v_cmp_u_f32_e64 s5, v7, v7                                 // 00000007A510: D4180005 00020F07
	ds_load_2addr_b32 v[9:10], v11 offset1:1                   // 00000007A518: D8DC0100 0900000B
	ds_load_2addr_b32 v[11:12], v11 offset0:2 offset1:3        // 00000007A520: D8DC0302 0B00000B
	s_waitcnt lgkmcnt(1)                                       // 00000007A528: BF89FC17
	v_cmp_gt_f32_e64 s4, v4, v9                                // 00000007A52C: D4140004 00021304
	v_cmp_gt_f32_e64 s6, v5, v10                               // 00000007A534: D4140006 00021505
	s_waitcnt lgkmcnt(0)                                       // 00000007A53C: BF89FC07
	v_cmp_gt_f32_e64 s7, v6, v11                               // 00000007A540: D4140007 00021706
	v_cmp_gt_f32_e64 s8, v7, v12                               // 00000007A548: D4140008 00021907
	s_or_b32 vcc_lo, vcc_lo, s4                                // 00000007A550: 8C6A046A
	v_cndmask_b32_e32 v4, v9, v4, vcc_lo                       // 00000007A554: 02080909
	s_or_b32 vcc_lo, s2, s6                                    // 00000007A558: 8C6A0602
	v_cndmask_b32_e32 v5, v10, v5, vcc_lo                      // 00000007A55C: 020A0B0A
	s_or_b32 vcc_lo, s3, s7                                    // 00000007A560: 8C6A0703
	v_cndmask_b32_e32 v6, v11, v6, vcc_lo                      // 00000007A564: 020C0D0B
	s_or_b32 vcc_lo, s5, s8                                    // 00000007A568: 8C6A0805
	v_cndmask_b32_e32 v7, v12, v7, vcc_lo                      // 00000007A56C: 020E0F0C
	ds_store_2addr_b32 v8, v4, v5 offset1:1                    // 00000007A570: D8380100 00050408
	ds_store_2addr_b32 v8, v6, v7 offset0:2 offset1:3          // 00000007A578: D8380302 00070608
	s_or_b32 exec_lo, exec_lo, s14                             // 00000007A580: 8C7E0E7E
	s_cmpk_gt_u32 s10, 0x7f                                    // 00000007A584: B58A007F
	s_cbranch_scc0 2                                           // 00000007A588: BFA10002 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5494>
	s_mov_b32 s10, s11                                         // 00000007A58C: BE8A000B
	s_branch 65483                                             // 00000007A590: BFA0FFCB <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x53c0>
	s_set_inst_prefetch_distance 0x2                           // 00000007A594: BF840002
	s_mov_b32 s9, 32                                           // 00000007A598: BE8900A0
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007A59C: BF870009
	s_cmp_lt_u32 s9, 2                                         // 00000007A5A0: BF0A8209
	s_waitcnt lgkmcnt(0)                                       // 00000007A5A4: BF89FC07
	s_barrier                                                  // 00000007A5A8: BFBD0000
	buffer_gl0_inv                                             // 00000007A5AC: E0AC0000 00000000
	s_cbranch_scc1 63                                          // 00000007A5B4: BFA2003F <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x55b4>
	v_mbcnt_lo_u32_b32 v8, -1, 0                               // 00000007A5B8: D71F0008 000100C1
	s_mov_b32 s10, 1                                           // 00000007A5C0: BE8A0081
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007A5C4: BF870001
	v_sub_nc_u32_e32 v9, 32, v8                                // 00000007A5C8: 4C1210A0
	s_set_inst_prefetch_distance 0x1                           // 00000007A5CC: BF840001
	s_nop 0                                                    // 00000007A5D0: BF800000
	s_nop 0                                                    // 00000007A5D4: BF800000
	s_nop 0                                                    // 00000007A5D8: BF800000
	s_nop 0                                                    // 00000007A5DC: BF800000
	s_nop 0                                                    // 00000007A5E0: BF800000
	s_nop 0                                                    // 00000007A5E4: BF800000
	s_nop 0                                                    // 00000007A5E8: BF800000
	s_nop 0                                                    // 00000007A5EC: BF800000
	s_nop 0                                                    // 00000007A5F0: BF800000
	s_nop 0                                                    // 00000007A5F4: BF800000
	s_nop 0                                                    // 00000007A5F8: BF800000
	s_nop 0                                                    // 00000007A5FC: BF800000
	s_delay_alu instid0(VALU_DEP_1)                            // 00000007A600: BF870001
	v_cmp_lt_i32_e32 vcc_lo, s10, v9                           // 00000007A604: 7C82120A
	v_cmp_u_f32_e64 s2, v5, v5                                 // 00000007A608: D4180002 00020B05
	v_cmp_u_f32_e64 s3, v6, v6                                 // 00000007A610: D4180003 00020D06
	v_cmp_u_f32_e64 s4, v7, v7                                 // 00000007A618: D4180004 00020F07
	v_cndmask_b32_e64 v10, 0, s10, vcc_lo                      // 00000007A620: D501000A 01A81480
	v_cmp_u_f32_e32 vcc_lo, v4, v4                             // 00000007A628: 7C300904
	s_lshl_b32 s10, s10, 1                                     // 00000007A62C: 840A810A
	s_delay_alu instid0(VALU_DEP_2)                            // 00000007A630: BF870002
	v_add_lshl_u32 v10, v10, v8, 2                             // 00000007A634: D647000A 020A110A
	ds_bpermute_b32 v11, v10, v4                               // 00000007A63C: DACC0000 0B00040A
	ds_bpermute_b32 v12, v10, v5                               // 00000007A644: DACC0000 0C00050A
	ds_bpermute_b32 v13, v10, v6                               // 00000007A64C: DACC0000 0D00060A
	ds_bpermute_b32 v10, v10, v7                               // 00000007A654: DACC0000 0A00070A
	s_waitcnt lgkmcnt(3)                                       // 00000007A65C: BF89FC37
	v_cmp_gt_f32_e64 s5, v4, v11                               // 00000007A660: D4140005 00021704
	s_waitcnt lgkmcnt(2)                                       // 00000007A668: BF89FC27
	v_cmp_gt_f32_e64 s6, v5, v12                               // 00000007A66C: D4140006 00021905
	s_waitcnt lgkmcnt(1)                                       // 00000007A674: BF89FC17
	v_cmp_gt_f32_e64 s7, v6, v13                               // 00000007A678: D4140007 00021B06
	s_waitcnt lgkmcnt(0)                                       // 00000007A680: BF89FC07
	v_cmp_gt_f32_e64 s8, v7, v10                               // 00000007A684: D4140008 00021507
	s_or_b32 vcc_lo, vcc_lo, s5                                // 00000007A68C: 8C6A056A
	v_cndmask_b32_e32 v4, v11, v4, vcc_lo                      // 00000007A690: 0208090B
	s_or_b32 vcc_lo, s2, s6                                    // 00000007A694: 8C6A0602
	v_cndmask_b32_e32 v5, v12, v5, vcc_lo                      // 00000007A698: 020A0B0C
	s_or_b32 vcc_lo, s3, s7                                    // 00000007A69C: 8C6A0703
	v_cndmask_b32_e32 v6, v13, v6, vcc_lo                      // 00000007A6A0: 020C0D0D
	s_or_b32 vcc_lo, s4, s8                                    // 00000007A6A4: 8C6A0804
	s_cmp_lt_i32 s10, s9                                       // 00000007A6A8: BF04090A
	v_cndmask_b32_e32 v7, v10, v7, vcc_lo                      // 00000007A6AC: 020E0F0A
	s_cbranch_scc1 65491                                       // 00000007A6B0: BFA2FFD3 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5500>
	s_set_inst_prefetch_distance 0x2                           // 00000007A6B4: BF840002
	s_mov_b32 s18, 0                                           // 00000007A6B8: BE920080
	s_and_saveexec_b32 s9, s25                                 // 00000007A6BC: BE892019
	s_cbranch_execz 185                                        // 00000007A6C0: BFA500B9 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x58a8>
	s_load_b32 s10, s[0:1], 0x2c8                              // 00000007A6C4: F4000280 F80002C8
	s_mov_b32 s14, 0                                           // 00000007A6CC: BE8E0080
	s_mov_b32 s2, exec_lo                                      // 00000007A6D0: BE82007E
	s_waitcnt lgkmcnt(0)                                       // 00000007A6D4: BF89FC07
	s_bitcmp1_b32 s10, 0                                       // 00000007A6D8: BF0D800A
	s_cselect_b32 s11, -1, 0                                   // 00000007A6DC: 980B80C1
	v_cmpx_ne_u64_e32 0, v[32:33]                              // 00000007A6E0: 7DBA4080
	s_xor_b32 s15, exec_lo, s2                                 // 00000007A6E4: 8D0F027E
	s_cbranch_execz 73                                         // 00000007A6E8: BFA50049 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5710>
	s_and_not1_b32 vcc_lo, exec_lo, s11                        // 00000007A6EC: 916A0B7E
	s_cbranch_vccnz 26                                         // 00000007A6F0: BFA4001A <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x565c>
	global_load_b128 v[8:11], v[30:31], off                    // 00000007A6F4: DC5E0000 087C001E
	s_waitcnt vmcnt(0)                                         // 00000007A6FC: BF8903F7
	v_cmp_u_f32_e32 vcc_lo, v8, v8                             // 00000007A700: 7C301108
	v_cmp_gt_f32_e64 s2, v8, v4                                // 00000007A704: D4140002 00020908
	v_cmp_u_f32_e64 s3, v9, v9                                 // 00000007A70C: D4180003 00021309
	v_cmp_gt_f32_e64 s4, v9, v5                                // 00000007A714: D4140004 00020B09
	v_cmp_u_f32_e64 s5, v10, v10                               // 00000007A71C: D4180005 0002150A
	v_cmp_gt_f32_e64 s6, v10, v6                               // 00000007A724: D4140006 00020D0A
	s_or_b32 vcc_lo, vcc_lo, s2                                // 00000007A72C: 8C6A026A
	v_cmp_u_f32_e64 s7, v11, v11                               // 00000007A730: D4180007 0002170B
	v_cmp_gt_f32_e64 s8, v11, v7                               // 00000007A738: D4140008 00020F0B
	v_cndmask_b32_e32 v4, v4, v8, vcc_lo                       // 00000007A740: 02081104
	s_or_b32 vcc_lo, s3, s4                                    // 00000007A744: 8C6A0403
	v_cndmask_b32_e32 v5, v5, v9, vcc_lo                       // 00000007A748: 020A1305
	s_or_b32 vcc_lo, s5, s6                                    // 00000007A74C: 8C6A0605
	v_cndmask_b32_e32 v6, v6, v10, vcc_lo                      // 00000007A750: 020C1506
	s_or_b32 vcc_lo, s7, s8                                    // 00000007A754: 8C6A0807
	v_cndmask_b32_e32 v7, v7, v11, vcc_lo                      // 00000007A758: 020E1707
	s_bfe_u32 s2, s10, 0x10008                                 // 00000007A75C: 9302FF0A 00010008
	s_mov_b32 s3, -1                                           // 00000007A764: BE8300C1
	s_cmp_eq_u32 s2, 0                                         // 00000007A768: BF068002
	s_mov_b32 s2, 0                                            // 00000007A76C: BE820080
	s_cbranch_scc0 3                                           // 00000007A770: BFA10003 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5680>
	s_mov_b32 s3, 0                                            // 00000007A774: BE830080
	global_store_b128 v[30:31], v[4:7], off                    // 00000007A778: DC760000 007C041E
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 00000007A780: 916A037E
	s_cbranch_vccnz 33                                         // 00000007A784: BFA40021 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x570c>
	s_load_b32 s2, s[0:1], 0x2cc                               // 00000007A788: F4000080 F80002CC
	s_waitcnt lgkmcnt(0)                                       // 00000007A790: BF89FC07
	s_cmp_lg_u32 s2, 1                                         // 00000007A794: BF078102
	s_cbranch_scc1 374                                         // 00000007A798: BFA20176 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5c74>
	s_mov_b32 s2, 0                                            // 00000007A79C: BE820080
	v_add_co_u32 v8, s3, s12, v34                              // 00000007A7A0: D7000308 0002440C
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 00000007A7A8: BF8700A1
	v_add_co_ci_u32_e64 v9, null, s13, 0, s3                   // 00000007A7AC: D5207C09 000D000D
	v_add_co_u32 v10, s3, s12, v35                             // 00000007A7B4: D700030A 0002460C
	v_add_co_ci_u32_e64 v11, null, s13, 0, s3                  // 00000007A7BC: D5207C0B 000D000D
	v_add_co_u32 v12, s3, s12, v36                             // 00000007A7C4: D700030C 0002480C
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 00000007A7CC: BF8700A1
	v_add_co_ci_u32_e64 v13, null, s13, 0, s3                  // 00000007A7D0: D5207C0D 000D000D
	v_add_co_u32 v14, s3, s12, v37                             // 00000007A7D8: D700030E 00024A0C
	v_add_co_ci_u32_e64 v15, null, s13, 0, s3                  // 00000007A7E0: D5207C0F 000D000D
	s_clause 0x3                                               // 00000007A7E8: BF850003
	global_store_b32 v[8:9], v4, off                           // 00000007A7EC: DC6A0000 007C0408
	global_store_b32 v[10:11], v5, off                         // 00000007A7F4: DC6A0000 007C050A
	global_store_b32 v[12:13], v6, off                         // 00000007A7FC: DC6A0000 007C060C
	global_store_b32 v[14:15], v7, off                         // 00000007A804: DC6A0000 007C070E
	s_and_b32 s14, s2, exec_lo                                 // 00000007A80C: 8B0E7E02
	s_and_not1_saveexec_b32 s15, s15                           // 00000007A810: BE8F300F
	s_cbranch_execz 97                                         // 00000007A814: BFA50061 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x589c>
	v_add_co_u32 v8, s2, s12, v37                              // 00000007A818: D7000208 00024A0C
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 00000007A820: BF8700A1
	v_add_co_ci_u32_e64 v9, null, s13, 0, s2                   // 00000007A824: D5207C09 0009000D
	v_add_co_u32 v10, s2, s12, v36                             // 00000007A82C: D700020A 0002480C
	v_add_co_ci_u32_e64 v11, null, s13, 0, s2                  // 00000007A834: D5207C0B 0009000D
	v_add_co_u32 v12, s2, s12, v35                             // 00000007A83C: D700020C 0002460C
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 00000007A844: BF8700A1
	v_add_co_ci_u32_e64 v13, null, s13, 0, s2                  // 00000007A848: D5207C0D 0009000D
	v_add_co_u32 v14, s2, s12, v34                             // 00000007A850: D700020E 0002440C
	v_add_co_ci_u32_e64 v15, null, s13, 0, s2                  // 00000007A858: D5207C0F 0009000D
	s_and_not1_b32 vcc_lo, exec_lo, s11                        // 00000007A860: 916A0B7E
	s_cbranch_vccnz 36                                         // 00000007A864: BFA40024 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x57f8>
	s_clause 0x3                                               // 00000007A868: BF850003
	global_load_b32 v16, v[14:15], off                         // 00000007A86C: DC520000 107C000E
	global_load_b32 v17, v[12:13], off                         // 00000007A874: DC520000 117C000C
	global_load_b32 v18, v[10:11], off                         // 00000007A87C: DC520000 127C000A
	global_load_b32 v19, v[8:9], off                           // 00000007A884: DC520000 137C0008
	s_waitcnt vmcnt(3)                                         // 00000007A88C: BF890FF7
	v_cmp_u_f32_e32 vcc_lo, v16, v16                           // 00000007A890: 7C302110
	v_cmp_gt_f32_e64 s2, v16, v4                               // 00000007A894: D4140002 00020910
	s_waitcnt vmcnt(2)                                         // 00000007A89C: BF890BF7
	v_cmp_u_f32_e64 s3, v17, v17                               // 00000007A8A0: D4180003 00022311
	v_cmp_gt_f32_e64 s4, v17, v5                               // 00000007A8A8: D4140004 00020B11
	s_waitcnt vmcnt(1)                                         // 00000007A8B0: BF8907F7
	v_cmp_u_f32_e64 s5, v18, v18                               // 00000007A8B4: D4180005 00022512
	v_cmp_gt_f32_e64 s6, v18, v6                               // 00000007A8BC: D4140006 00020D12
	s_or_b32 vcc_lo, vcc_lo, s2                                // 00000007A8C4: 8C6A026A
	s_waitcnt vmcnt(0)                                         // 00000007A8C8: BF8903F7
	v_cmp_u_f32_e64 s7, v19, v19                               // 00000007A8CC: D4180007 00022713
	v_cmp_gt_f32_e64 s8, v19, v7                               // 00000007A8D4: D4140008 00020F13
	v_cndmask_b32_e32 v4, v4, v16, vcc_lo                      // 00000007A8DC: 02082104
	s_or_b32 vcc_lo, s3, s4                                    // 00000007A8E0: 8C6A0403
	v_cndmask_b32_e32 v5, v5, v17, vcc_lo                      // 00000007A8E4: 020A2305
	s_or_b32 vcc_lo, s5, s6                                    // 00000007A8E8: 8C6A0605
	v_cndmask_b32_e32 v6, v6, v18, vcc_lo                      // 00000007A8EC: 020C2506
	s_or_b32 vcc_lo, s7, s8                                    // 00000007A8F0: 8C6A0807
	v_cndmask_b32_e32 v7, v7, v19, vcc_lo                      // 00000007A8F4: 020E2707
	s_bitcmp1_b32 s10, 8                                       // 00000007A8F8: BF0D880A
	s_cselect_b32 s2, -1, 0                                    // 00000007A8FC: 980280C1
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007A900: BF870009
	s_and_b32 vcc_lo, exec_lo, s2                              // 00000007A904: 8B6A027E
	s_mov_b32 s2, -1                                           // 00000007A908: BE8200C1
	s_cbranch_vccnz 10                                         // 00000007A90C: BFA4000A <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5838>
	s_mov_b32 s2, 0                                            // 00000007A910: BE820080
	s_clause 0x3                                               // 00000007A914: BF850003
	global_store_b32 v[14:15], v4, off                         // 00000007A918: DC6A0000 007C040E
	global_store_b32 v[12:13], v5, off                         // 00000007A920: DC6A0000 007C050C
	global_store_b32 v[10:11], v6, off                         // 00000007A928: DC6A0000 007C060A
	global_store_b32 v[8:9], v7, off                           // 00000007A930: DC6A0000 007C0708
	s_and_not1_b32 vcc_lo, exec_lo, s2                         // 00000007A938: 916A027E
	s_mov_b32 s2, s14                                          // 00000007A93C: BE82000E
	s_cbranch_vccnz 18                                         // 00000007A940: BFA40012 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x588c>
	s_load_b32 s2, s[0:1], 0x2cc                               // 00000007A944: F4000080 F80002CC
	s_mov_b32 s3, -1                                           // 00000007A94C: BE8300C1
	s_waitcnt lgkmcnt(0)                                       // 00000007A950: BF89FC07
	s_cmp_lg_u32 s2, 1                                         // 00000007A954: BF078102
	s_mov_b32 s2, s14                                          // 00000007A958: BE82000E
	s_cbranch_scc1 265                                         // 00000007A95C: BFA20109 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5c84>
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 00000007A960: 916A037E
	s_cbranch_vccnz 9                                          // 00000007A964: BFA40009 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x588c>
	s_clause 0x3                                               // 00000007A968: BF850003
	global_store_b32 v[14:15], v4, off                         // 00000007A96C: DC6A0000 007C040E
	global_store_b32 v[12:13], v5, off                         // 00000007A974: DC6A0000 007C050C
	global_store_b32 v[10:11], v6, off                         // 00000007A97C: DC6A0000 007C060A
	global_store_b32 v[8:9], v7, off                           // 00000007A984: DC6A0000 007C0708
	s_and_not1_b32 s3, s14, exec_lo                            // 00000007A98C: 91037E0E
	s_and_b32 s2, s2, exec_lo                                  // 00000007A990: 8B027E02
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007A994: BF870009
	s_or_b32 s14, s3, s2                                       // 00000007A998: 8C0E0203
	s_or_b32 exec_lo, exec_lo, s15                             // 00000007A99C: 8C7E0F7E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007A9A0: BF870009
	s_and_b32 s18, s14, exec_lo                                // 00000007A9A4: 8B127E0E
	s_or_b32 exec_lo, exec_lo, s9                              // 00000007A9A8: 8C7E097E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007A9AC: BF870009
	s_and_b32 vcc_lo, exec_lo, s24                             // 00000007A9B0: 8B6A187E
	s_cbranch_vccz 212                                         // 00000007A9B4: BFA300D4 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5c08>
	s_load_b32 s2, s[0:1], 0x10                                // 00000007A9B8: F4000080 F8000010
	v_cmp_eq_u32_e32 vcc_lo, 0, v25                            // 00000007A9C0: 7C943280
	s_or_b32 s3, vcc_lo, s22                                   // 00000007A9C4: 8C03166A
	s_waitcnt lgkmcnt(0)                                       // 00000007A9C8: BF89FC07
	v_cmp_gt_i32_e64 s2, s2, v40                               // 00000007A9CC: D4440002 00025002
	s_and_b32 s2, s2, s3                                       // 00000007A9D4: 8B020302
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007A9D8: BF870009
	s_and_saveexec_b32 s9, s2                                  // 00000007A9DC: BE892002
	s_cbranch_execz 200                                        // 00000007A9E0: BFA500C8 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5c04>
	s_load_b32 s2, s[0:1], 0x24                                // 00000007A9E4: F4000080 F8000024
	v_cmp_eq_u32_e32 vcc_lo, 0, v24                            // 00000007A9EC: 7C943080
	s_waitcnt lgkmcnt(0)                                       // 00000007A9F0: BF89FC07
	s_cmp_eq_u32 s2, 0                                         // 00000007A9F4: BF068002
	s_cselect_b32 s2, -1, 0                                    // 00000007A9F8: 980280C1
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007A9FC: BF870009
	s_or_b32 s3, vcc_lo, s2                                    // 00000007AA00: 8C03026A
	s_mov_b32 s2, s18                                          // 00000007AA04: BE820012
	s_and_saveexec_b32 s10, s3                                 // 00000007AA08: BE8A2003
	s_cbranch_execz 184                                        // 00000007AA0C: BFA500B8 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5bf0>
	s_load_b32 s11, s[0:1], 0x2c8                              // 00000007AA10: F40002C0 F80002C8
	v_add_co_u32 v4, s2, s12, v29                              // 00000007AA18: D7000204 00023A0C
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 00000007AA20: BF8700A1
	v_add_co_ci_u32_e64 v5, null, s13, 0, s2                   // 00000007AA24: D5207C05 0009000D
	v_add_co_u32 v6, s2, s12, v28                              // 00000007AA2C: D7000206 0002380C
	v_add_co_ci_u32_e64 v7, null, s13, 0, s2                   // 00000007AA34: D5207C07 0009000D
	v_add_co_u32 v8, s2, s12, v27                              // 00000007AA3C: D7000208 0002360C
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)// 00000007AA44: BF8700A1
	v_add_co_ci_u32_e64 v9, null, s13, 0, s2                   // 00000007AA48: D5207C09 0009000D
	v_add_co_u32 v10, s2, s12, v26                             // 00000007AA50: D700020A 0002340C
	v_add_co_ci_u32_e64 v11, null, s13, 0, s2                  // 00000007AA58: D5207C0B 0009000D
	s_mov_b32 s12, s18                                         // 00000007AA60: BE8C0012
	s_mov_b32 s2, exec_lo                                      // 00000007AA64: BE82007E
	s_waitcnt lgkmcnt(0)                                       // 00000007AA68: BF89FC07
	s_bitcmp1_b32 s11, 0                                       // 00000007AA6C: BF0D800B
	s_cselect_b32 s13, -1, 0                                   // 00000007AA70: 980D80C1
	v_cmpx_ne_u64_e32 0, v[32:33]                              // 00000007AA74: 7DBA4080
	s_xor_b32 s14, exec_lo, s2                                 // 00000007AA78: 8D0E027E
	s_cbranch_execz 70                                         // 00000007AA7C: BFA50046 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5a98>
	s_and_not1_b32 vcc_lo, exec_lo, s13                        // 00000007AA80: 916A0D7E
	s_cbranch_vccz 10                                          // 00000007AA84: BFA3000A <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x59b0>
	s_bfe_u32 s2, s11, 0x10008                                 // 00000007AA88: 9302FF0B 00010008
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007AA90: BF870009
	s_cmp_eq_u32 s2, 0                                         // 00000007AA94: BF068002
	s_mov_b32 s2, -1                                           // 00000007AA98: BE8200C1
	s_cbranch_scc1 36                                          // 00000007AA9C: BFA20024 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5a30>
	s_and_not1_b32 vcc_lo, exec_lo, s2                         // 00000007AAA0: 916A027E
	s_mov_b32 s2, s18                                          // 00000007AAA4: BE820012
	s_cbranch_vccz 37                                          // 00000007AAA8: BFA30025 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5a40>
	s_branch 54                                                // 00000007AAAC: BFA00036 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5a88>
	global_load_b128 v[12:15], v[30:31], off                   // 00000007AAB0: DC5E0000 0C7C001E
	s_waitcnt vmcnt(0)                                         // 00000007AAB8: BF8903F7
	v_cmp_u_f32_e32 vcc_lo, v12, v12                           // 00000007AABC: 7C30190C
	v_cmp_gt_f32_e64 s2, v12, v0                               // 00000007AAC0: D4140002 0002010C
	v_cmp_u_f32_e64 s3, v13, v13                               // 00000007AAC8: D4180003 00021B0D
	v_cmp_gt_f32_e64 s4, v13, v1                               // 00000007AAD0: D4140004 0002030D
	v_cmp_u_f32_e64 s5, v14, v14                               // 00000007AAD8: D4180005 00021D0E
	v_cmp_gt_f32_e64 s6, v14, v2                               // 00000007AAE0: D4140006 0002050E
	s_or_b32 vcc_lo, vcc_lo, s2                                // 00000007AAE8: 8C6A026A
	v_cmp_u_f32_e64 s7, v15, v15                               // 00000007AAEC: D4180007 00021F0F
	v_cmp_gt_f32_e64 s8, v15, v3                               // 00000007AAF4: D4140008 0002070F
	v_cndmask_b32_e32 v0, v0, v12, vcc_lo                      // 00000007AAFC: 02001900
	s_or_b32 vcc_lo, s3, s4                                    // 00000007AB00: 8C6A0403
	v_cndmask_b32_e32 v1, v1, v13, vcc_lo                      // 00000007AB04: 02021B01
	s_or_b32 vcc_lo, s5, s6                                    // 00000007AB08: 8C6A0605
	v_cndmask_b32_e32 v2, v2, v14, vcc_lo                      // 00000007AB0C: 02041D02
	s_or_b32 vcc_lo, s7, s8                                    // 00000007AB10: 8C6A0807
	v_cndmask_b32_e32 v3, v3, v15, vcc_lo                      // 00000007AB14: 02061F03
	s_bfe_u32 s2, s11, 0x10008                                 // 00000007AB18: 9302FF0B 00010008
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007AB20: BF870009
	s_cmp_eq_u32 s2, 0                                         // 00000007AB24: BF068002
	s_mov_b32 s2, -1                                           // 00000007AB28: BE8200C1
	s_cbranch_scc0 65500                                       // 00000007AB2C: BFA1FFDC <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x59a0>
	global_store_b128 v[30:31], v[0:3], off                    // 00000007AB30: DC760000 007C001E
	s_mov_b32 s2, s18                                          // 00000007AB38: BE820012
	s_cbranch_execnz 18                                        // 00000007AB3C: BFA60012 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5a88>
	s_load_b32 s2, s[0:1], 0x2cc                               // 00000007AB40: F4000080 F80002CC
	s_mov_b32 s3, -1                                           // 00000007AB48: BE8300C1
	s_waitcnt lgkmcnt(0)                                       // 00000007AB4C: BF89FC07
	s_cmp_lg_u32 s2, 1                                         // 00000007AB50: BF078102
	s_mov_b32 s2, s18                                          // 00000007AB54: BE820012
	s_cbranch_scc1 142                                         // 00000007AB58: BFA2008E <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5c94>
	s_and_not1_b32 vcc_lo, exec_lo, s3                         // 00000007AB5C: 916A037E
	s_cbranch_vccnz 9                                          // 00000007AB60: BFA40009 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5a88>
	s_clause 0x3                                               // 00000007AB64: BF850003
	global_store_b32 v[10:11], v0, off                         // 00000007AB68: DC6A0000 007C000A
	global_store_b32 v[8:9], v1, off                           // 00000007AB70: DC6A0000 007C0108
	global_store_b32 v[6:7], v2, off                           // 00000007AB78: DC6A0000 007C0206
	global_store_b32 v[4:5], v3, off                           // 00000007AB80: DC6A0000 007C0304
	s_and_not1_b32 s3, s18, exec_lo                            // 00000007AB88: 91037E12
	s_and_b32 s2, s2, exec_lo                                  // 00000007AB8C: 8B027E02
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007AB90: BF870009
	s_or_b32 s12, s3, s2                                       // 00000007AB94: 8C0C0203
	s_and_not1_saveexec_b32 s14, s14                           // 00000007AB98: BE8E300E
	s_cbranch_execz 79                                         // 00000007AB9C: BFA5004F <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5bdc>
	s_and_not1_b32 vcc_lo, exec_lo, s13                        // 00000007ABA0: 916A0D7E
	s_cbranch_vccnz 36                                         // 00000007ABA4: BFA40024 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5b38>
	s_clause 0x3                                               // 00000007ABA8: BF850003
	global_load_b32 v12, v[10:11], off                         // 00000007ABAC: DC520000 0C7C000A
	global_load_b32 v13, v[8:9], off                           // 00000007ABB4: DC520000 0D7C0008
	global_load_b32 v14, v[6:7], off                           // 00000007ABBC: DC520000 0E7C0006
	global_load_b32 v15, v[4:5], off                           // 00000007ABC4: DC520000 0F7C0004
	s_waitcnt vmcnt(3)                                         // 00000007ABCC: BF890FF7
	v_cmp_u_f32_e32 vcc_lo, v12, v12                           // 00000007ABD0: 7C30190C
	v_cmp_gt_f32_e64 s2, v12, v0                               // 00000007ABD4: D4140002 0002010C
	s_waitcnt vmcnt(2)                                         // 00000007ABDC: BF890BF7
	v_cmp_u_f32_e64 s3, v13, v13                               // 00000007ABE0: D4180003 00021B0D
	v_cmp_gt_f32_e64 s4, v13, v1                               // 00000007ABE8: D4140004 0002030D
	s_waitcnt vmcnt(1)                                         // 00000007ABF0: BF8907F7
	v_cmp_u_f32_e64 s5, v14, v14                               // 00000007ABF4: D4180005 00021D0E
	v_cmp_gt_f32_e64 s6, v14, v2                               // 00000007ABFC: D4140006 0002050E
	s_or_b32 vcc_lo, vcc_lo, s2                                // 00000007AC04: 8C6A026A
	s_waitcnt vmcnt(0)                                         // 00000007AC08: BF8903F7
	v_cmp_u_f32_e64 s7, v15, v15                               // 00000007AC0C: D4180007 00021F0F
	v_cmp_gt_f32_e64 s8, v15, v3                               // 00000007AC14: D4140008 0002070F
	v_cndmask_b32_e32 v0, v0, v12, vcc_lo                      // 00000007AC1C: 02001900
	s_or_b32 vcc_lo, s3, s4                                    // 00000007AC20: 8C6A0403
	v_cndmask_b32_e32 v1, v1, v13, vcc_lo                      // 00000007AC24: 02021B01
	s_or_b32 vcc_lo, s5, s6                                    // 00000007AC28: 8C6A0605
	v_cndmask_b32_e32 v2, v2, v14, vcc_lo                      // 00000007AC2C: 02041D02
	s_or_b32 vcc_lo, s7, s8                                    // 00000007AC30: 8C6A0807
	v_cndmask_b32_e32 v3, v3, v15, vcc_lo                      // 00000007AC34: 02061F03
	s_bitcmp1_b32 s11, 8                                       // 00000007AC38: BF0D880B
	s_cselect_b32 s2, -1, 0                                    // 00000007AC3C: 980280C1
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007AC40: BF870009
	s_and_b32 vcc_lo, exec_lo, s2                              // 00000007AC44: 8B6A027E
	s_mov_b32 s2, -1                                           // 00000007AC48: BE8200C1
	s_cbranch_vccnz 10                                         // 00000007AC4C: BFA4000A <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5b78>
	s_mov_b32 s2, 0                                            // 00000007AC50: BE820080
	s_clause 0x3                                               // 00000007AC54: BF850003
	global_store_b32 v[10:11], v0, off                         // 00000007AC58: DC6A0000 007C000A
	global_store_b32 v[8:9], v1, off                           // 00000007AC60: DC6A0000 007C0108
	global_store_b32 v[6:7], v2, off                           // 00000007AC68: DC6A0000 007C0206
	global_store_b32 v[4:5], v3, off                           // 00000007AC70: DC6A0000 007C0304
	s_and_not1_b32 vcc_lo, exec_lo, s2                         // 00000007AC78: 916A027E
	s_mov_b32 s2, s12                                          // 00000007AC7C: BE82000C
	s_cbranch_vccnz 18                                         // 00000007AC80: BFA40012 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5bcc>
	s_load_b32 s1, s[0:1], 0x2cc                               // 00000007AC84: F4000040 F80002CC
	s_mov_b32 s0, -1                                           // 00000007AC8C: BE8000C1
	s_mov_b32 s2, s12                                          // 00000007AC90: BE82000C
	s_waitcnt lgkmcnt(0)                                       // 00000007AC94: BF89FC07
	s_cmp_lg_u32 s1, 1                                         // 00000007AC98: BF078101
	s_cbranch_scc1 65                                          // 00000007AC9C: BFA20041 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5ca4>
	s_and_not1_b32 vcc_lo, exec_lo, s0                         // 00000007ACA0: 916A007E
	s_cbranch_vccnz 9                                          // 00000007ACA4: BFA40009 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5bcc>
	s_clause 0x3                                               // 00000007ACA8: BF850003
	global_store_b32 v[10:11], v0, off                         // 00000007ACAC: DC6A0000 007C000A
	global_store_b32 v[8:9], v1, off                           // 00000007ACB4: DC6A0000 007C0108
	global_store_b32 v[6:7], v2, off                           // 00000007ACBC: DC6A0000 007C0206
	global_store_b32 v[4:5], v3, off                           // 00000007ACC4: DC6A0000 007C0304
	s_and_not1_b32 s0, s12, exec_lo                            // 00000007ACCC: 91007E0C
	s_and_b32 s1, s2, exec_lo                                  // 00000007ACD0: 8B017E02
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007ACD4: BF870009
	s_or_b32 s12, s0, s1                                       // 00000007ACD8: 8C0C0100
	s_or_b32 exec_lo, exec_lo, s14                             // 00000007ACDC: 8C7E0E7E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 00000007ACE0: BF8704A9
	s_and_not1_b32 s0, s18, exec_lo                            // 00000007ACE4: 91007E12
	s_and_b32 s1, s12, exec_lo                                 // 00000007ACE8: 8B017E0C
	s_or_b32 s2, s0, s1                                        // 00000007ACEC: 8C020100
	s_or_b32 exec_lo, exec_lo, s10                             // 00000007ACF0: 8C7E0A7E
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)// 00000007ACF4: BF8704A9
	s_and_not1_b32 s0, s18, exec_lo                            // 00000007ACF8: 91007E12
	s_and_b32 s1, s2, exec_lo                                  // 00000007ACFC: 8B017E02
	s_or_b32 s18, s0, s1                                       // 00000007AD00: 8C120100
	s_or_b32 exec_lo, exec_lo, s9                              // 00000007AD04: 8C7E097E
	s_delay_alu instid0(SALU_CYCLE_1)                          // 00000007AD08: BF870009
	s_and_b32 s36, s18, exec_lo                                // 00000007AD0C: 8B247E12
	s_or_b32 exec_lo, exec_lo, s21                             // 00000007AD10: 8C7E157E
	s_and_saveexec_b32 s0, s20                                 // 00000007AD14: BE802014
	s_cbranch_execnz 3                                         // 00000007AD18: BFA60003 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5c28>
	s_or_b32 exec_lo, exec_lo, s0                              // 00000007AD1C: 8C7E007E
	s_and_saveexec_b32 s0, s36                                 // 00000007AD20: BE802024
	s_endpgm                                                   // 00000007AD24: BFB00000
	s_cbranch_execnz 5                                         // 00000007AD28: BFA60005 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5c40>
	s_or_b32 s36, s36, exec_lo                                 // 00000007AD2C: 8C247E24
	s_or_b32 exec_lo, exec_lo, s0                              // 00000007AD30: 8C7E007E
	s_and_saveexec_b32 s0, s36                                 // 00000007AD34: BE802024
	s_cbranch_execnz 65530                                     // 00000007AD38: BFA6FFFA <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5c24>
	s_branch 65529                                             // 00000007AD3C: BFA0FFF9 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5c24>
	s_trap 2                                                   // 00000007AD40: BF900002
	s_sendmsg_rtn_b32 s0, sendmsg(MSG_RTN_GET_DOORBELL)        // 00000007AD44: BE804C80
	s_mov_b32 ttmp2, m0                                        // 00000007AD48: BEEE007D
	s_waitcnt lgkmcnt(0)                                       // 00000007AD4C: BF89FC07
	s_and_b32 s0, s0, 0x3ff                                    // 00000007AD50: 8B00FF00 000003FF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 00000007AD58: BF870499
	s_bitset1_b32 s0, 10                                       // 00000007AD5C: BE80128A
	s_mov_b32 m0, s0                                           // 00000007AD60: BEFD0000
	s_sendmsg sendmsg(MSG_INTERRUPT)                           // 00000007AD64: BFB60001
	s_mov_b32 m0, ttmp2                                        // 00000007AD68: BEFD006E
	s_sethalt 5                                                // 00000007AD6C: BF820005
	s_branch 65534                                             // 00000007AD70: BFA0FFFE <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5c6c>
	s_cbranch_execnz 15                                        // 00000007AD74: BFA6000F <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5cb4>
	s_mov_b32 s2, -1                                           // 00000007AD78: BE8200C1
	s_cbranch_execz 65160                                      // 00000007AD7C: BFA5FE88 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x56a0>
	s_branch 65186                                             // 00000007AD80: BFA0FEA2 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x570c>
	s_cbranch_execnz 24                                        // 00000007AD84: BFA60018 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5ce8>
	s_or_b32 s2, s14, exec_lo                                  // 00000007AD88: 8C027E0E
	s_cbranch_execz 65270                                      // 00000007AD8C: BFA5FEF6 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5868>
	s_branch 65278                                             // 00000007AD90: BFA0FEFE <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x588c>
	s_cbranch_execnz 33                                        // 00000007AD94: BFA60021 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5d1c>
	s_or_b32 s2, s18, exec_lo                                  // 00000007AD98: 8C027E12
	s_cbranch_execz 65393                                      // 00000007AD9C: BFA5FF71 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5a64>
	s_branch 65401                                             // 00000007ADA0: BFA0FF79 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5a88>
	s_cbranch_execnz 42                                        // 00000007ADA4: BFA6002A <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5d50>
	s_or_b32 s2, s12, exec_lo                                  // 00000007ADA8: 8C027E0C
	s_cbranch_execz 65470                                      // 00000007ADAC: BFA5FFBE <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5ba8>
	s_branch 65478                                             // 00000007ADB0: BFA0FFC6 <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5bcc>
	s_trap 2                                                   // 00000007ADB4: BF900002
	s_sendmsg_rtn_b32 s0, sendmsg(MSG_RTN_GET_DOORBELL)        // 00000007ADB8: BE804C80
	s_mov_b32 ttmp2, m0                                        // 00000007ADBC: BEEE007D
	s_waitcnt lgkmcnt(0)                                       // 00000007ADC0: BF89FC07
	s_and_b32 s0, s0, 0x3ff                                    // 00000007ADC4: 8B00FF00 000003FF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 00000007ADCC: BF870499
	s_bitset1_b32 s0, 10                                       // 00000007ADD0: BE80128A
	s_mov_b32 m0, s0                                           // 00000007ADD4: BEFD0000
	s_sendmsg sendmsg(MSG_INTERRUPT)                           // 00000007ADD8: BFB60001
	s_mov_b32 m0, ttmp2                                        // 00000007ADDC: BEFD006E
	s_sethalt 5                                                // 00000007ADE0: BF820005
	s_branch 65534                                             // 00000007ADE4: BFA0FFFE <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5ce0>
	s_trap 2                                                   // 00000007ADE8: BF900002
	s_sendmsg_rtn_b32 s0, sendmsg(MSG_RTN_GET_DOORBELL)        // 00000007ADEC: BE804C80
	s_mov_b32 ttmp2, m0                                        // 00000007ADF0: BEEE007D
	s_waitcnt lgkmcnt(0)                                       // 00000007ADF4: BF89FC07
	s_and_b32 s0, s0, 0x3ff                                    // 00000007ADF8: 8B00FF00 000003FF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 00000007AE00: BF870499
	s_bitset1_b32 s0, 10                                       // 00000007AE04: BE80128A
	s_mov_b32 m0, s0                                           // 00000007AE08: BEFD0000
	s_sendmsg sendmsg(MSG_INTERRUPT)                           // 00000007AE0C: BFB60001
	s_mov_b32 m0, ttmp2                                        // 00000007AE10: BEFD006E
	s_sethalt 5                                                // 00000007AE14: BF820005
	s_branch 65534                                             // 00000007AE18: BFA0FFFE <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5d14>
	s_trap 2                                                   // 00000007AE1C: BF900002
	s_sendmsg_rtn_b32 s0, sendmsg(MSG_RTN_GET_DOORBELL)        // 00000007AE20: BE804C80
	s_mov_b32 ttmp2, m0                                        // 00000007AE24: BEEE007D
	s_waitcnt lgkmcnt(0)                                       // 00000007AE28: BF89FC07
	s_and_b32 s0, s0, 0x3ff                                    // 00000007AE2C: 8B00FF00 000003FF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 00000007AE34: BF870499
	s_bitset1_b32 s0, 10                                       // 00000007AE38: BE80128A
	s_mov_b32 m0, s0                                           // 00000007AE3C: BEFD0000
	s_sendmsg sendmsg(MSG_INTERRUPT)                           // 00000007AE40: BFB60001
	s_mov_b32 m0, ttmp2                                        // 00000007AE44: BEFD006E
	s_sethalt 5                                                // 00000007AE48: BF820005
	s_branch 65534                                             // 00000007AE4C: BFA0FFFE <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5d48>
	s_trap 2                                                   // 00000007AE50: BF900002
	s_sendmsg_rtn_b32 s0, sendmsg(MSG_RTN_GET_DOORBELL)        // 00000007AE54: BE804C80
	s_mov_b32 ttmp2, m0                                        // 00000007AE58: BEEE007D
	s_waitcnt lgkmcnt(0)                                       // 00000007AE5C: BF89FC07
	s_and_b32 s0, s0, 0x3ff                                    // 00000007AE60: 8B00FF00 000003FF
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)// 00000007AE68: BF870499
	s_bitset1_b32 s0, 10                                       // 00000007AE6C: BE80128A
	s_mov_b32 m0, s0                                           // 00000007AE70: BEFD0000
	s_sendmsg sendmsg(MSG_INTERRUPT)                           // 00000007AE74: BFB60001
	s_mov_b32 m0, ttmp2                                        // 00000007AE78: BEFD006E
	s_sethalt 5                                                // 00000007AE7C: BF820005
	s_branch 65534                                             // 00000007AE80: BFA0FFFE <_ZN2at6native13reduce_kernelILi128ELi4ENS0_8ReduceOpIfNS0_14func_wrapper_tIfNS0_13MaxNanFunctorIfEEEEjfLi4ELi4EEEEEvT1_+0x5d7c>
