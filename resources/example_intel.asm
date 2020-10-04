
src/asm-parser:     file format elf64-x86-64


Disassembly of section .init:

0000000000002000 <_init>:
    2000:	f3 0f 1e fa                                     	endbr64 
    2004:	48 83 ec 08                                     	sub    rsp,0x8
    2008:	48 8b 05 d9 5f 00 00                            	mov    rax,QWORD PTR [rip+0x5fd9]        # 7fe8 <__gmon_start__>
    200f:	48 85 c0                                        	test   rax,rax
    2012:	74 02                                           	je     2016 <_init+0x16>
    2014:	ff d0                                           	call   rax
    2016:	48 83 c4 08                                     	add    rsp,0x8
    201a:	c3                                              	ret    

Disassembly of section .plt:

0000000000002020 <.plt>:
    2020:	ff 35 8a 5e 00 00                               	push   QWORD PTR [rip+0x5e8a]        # 7eb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    2026:	ff 25 8c 5e 00 00                               	jmp    QWORD PTR [rip+0x5e8c]        # 7eb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    202c:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]

0000000000002030 <_ZSt11_Hash_bytesPKvmm@plt>:
    2030:	ff 25 8a 5e 00 00                               	jmp    QWORD PTR [rip+0x5e8a]        # 7ec0 <_ZSt11_Hash_bytesPKvmm@CXXABI_1.3.5>
    2036:	68 00 00 00 00                                  	push   0x0
    203b:	e9 e0 ff ff ff                                  	jmp    2020 <.plt>

0000000000002040 <_ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev@plt>:
    2040:	ff 25 82 5e 00 00                               	jmp    QWORD PTR [rip+0x5e82]        # 7ec8 <_ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev@GLIBCXX_3.4>
    2046:	68 01 00 00 00                                  	push   0x1
    204b:	e9 d0 ff ff ff                                  	jmp    2020 <.plt>

0000000000002050 <_ZSt17__throw_bad_allocv@plt>:
    2050:	ff 25 7a 5e 00 00                               	jmp    QWORD PTR [rip+0x5e7a]        # 7ed0 <_ZSt17__throw_bad_allocv@GLIBCXX_3.4>
    2056:	68 02 00 00 00                                  	push   0x2
    205b:	e9 c0 ff ff ff                                  	jmp    2020 <.plt>

0000000000002060 <__cxa_begin_catch@plt>:
    2060:	ff 25 72 5e 00 00                               	jmp    QWORD PTR [rip+0x5e72]        # 7ed8 <__cxa_begin_catch@CXXABI_1.3>
    2066:	68 03 00 00 00                                  	push   0x3
    206b:	e9 b0 ff ff ff                                  	jmp    2020 <.plt>

0000000000002070 <memcmp@plt>:
    2070:	ff 25 6a 5e 00 00                               	jmp    QWORD PTR [rip+0x5e6a]        # 7ee0 <memcmp@GLIBC_2.2.5>
    2076:	68 04 00 00 00                                  	push   0x4
    207b:	e9 a0 ff ff ff                                  	jmp    2020 <.plt>

0000000000002080 <__cxa_allocate_exception@plt>:
    2080:	ff 25 62 5e 00 00                               	jmp    QWORD PTR [rip+0x5e62]        # 7ee8 <__cxa_allocate_exception@CXXABI_1.3>
    2086:	68 05 00 00 00                                  	push   0x5
    208b:	e9 90 ff ff ff                                  	jmp    2020 <.plt>

0000000000002090 <_ZSt20__throw_length_errorPKc@plt>:
    2090:	ff 25 5a 5e 00 00                               	jmp    QWORD PTR [rip+0x5e5a]        # 7ef0 <_ZSt20__throw_length_errorPKc@GLIBCXX_3.4>
    2096:	68 06 00 00 00                                  	push   0x6
    209b:	e9 80 ff ff ff                                  	jmp    2020 <.plt>

00000000000020a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_@plt>:
    20a0:	ff 25 52 5e 00 00                               	jmp    QWORD PTR [rip+0x5e52]        # 7ef8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_@GLIBCXX_3.4.21>
    20a6:	68 07 00 00 00                                  	push   0x7
    20ab:	e9 70 ff ff ff                                  	jmp    2020 <.plt>

00000000000020b0 <memset@plt>:
    20b0:	ff 25 4a 5e 00 00                               	jmp    QWORD PTR [rip+0x5e4a]        # 7f00 <memset@GLIBC_2.2.5>
    20b6:	68 08 00 00 00                                  	push   0x8
    20bb:	e9 60 ff ff ff                                  	jmp    2020 <.plt>

00000000000020c0 <_ZSt19__throw_logic_errorPKc@plt>:
    20c0:	ff 25 42 5e 00 00                               	jmp    QWORD PTR [rip+0x5e42]        # 7f08 <_ZSt19__throw_logic_errorPKc@GLIBCXX_3.4>
    20c6:	68 09 00 00 00                                  	push   0x9
    20cb:	e9 50 ff ff ff                                  	jmp    2020 <.plt>

00000000000020d0 <memcpy@plt>:
    20d0:	ff 25 3a 5e 00 00                               	jmp    QWORD PTR [rip+0x5e3a]        # 7f10 <memcpy@GLIBC_2.14>
    20d6:	68 0a 00 00 00                                  	push   0xa
    20db:	e9 40 ff ff ff                                  	jmp    2020 <.plt>

00000000000020e0 <__cxa_atexit@plt>:
    20e0:	ff 25 32 5e 00 00                               	jmp    QWORD PTR [rip+0x5e32]        # 7f18 <__cxa_atexit@GLIBC_2.2.5>
    20e6:	68 0b 00 00 00                                  	push   0xb
    20eb:	e9 30 ff ff ff                                  	jmp    2020 <.plt>

00000000000020f0 <_ZdlPv@plt>:
    20f0:	ff 25 2a 5e 00 00                               	jmp    QWORD PTR [rip+0x5e2a]        # 7f20 <_ZdlPv@GLIBCXX_3.4>
    20f6:	68 0c 00 00 00                                  	push   0xc
    20fb:	e9 20 ff ff ff                                  	jmp    2020 <.plt>

0000000000002100 <_ZNSo9_M_insertIlEERSoT_@plt>:
    2100:	ff 25 22 5e 00 00                               	jmp    QWORD PTR [rip+0x5e22]        # 7f28 <_ZNSo9_M_insertIlEERSoT_@GLIBCXX_3.4.9>
    2106:	68 0d 00 00 00                                  	push   0xd
    210b:	e9 10 ff ff ff                                  	jmp    2020 <.plt>

0000000000002110 <_Znwm@plt>:
    2110:	ff 25 1a 5e 00 00                               	jmp    QWORD PTR [rip+0x5e1a]        # 7f30 <_Znwm@GLIBCXX_3.4>
    2116:	68 0e 00 00 00                                  	push   0xe
    211b:	e9 00 ff ff ff                                  	jmp    2020 <.plt>

0000000000002120 <_ZdlPvm@plt>:
    2120:	ff 25 12 5e 00 00                               	jmp    QWORD PTR [rip+0x5e12]        # 7f38 <_ZdlPvm@CXXABI_1.3.9>
    2126:	68 0f 00 00 00                                  	push   0xf
    212b:	e9 f0 fe ff ff                                  	jmp    2020 <.plt>

0000000000002130 <__stack_chk_fail@plt>:
    2130:	ff 25 0a 5e 00 00                               	jmp    QWORD PTR [rip+0x5e0a]        # 7f40 <__stack_chk_fail@GLIBC_2.4>
    2136:	68 10 00 00 00                                  	push   0x10
    213b:	e9 e0 fe ff ff                                  	jmp    2020 <.plt>

0000000000002140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
    2140:	ff 25 02 5e 00 00                               	jmp    QWORD PTR [rip+0x5e02]        # 7f48 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
    2146:	68 11 00 00 00                                  	push   0x11
    214b:	e9 d0 fe ff ff                                  	jmp    2020 <.plt>

0000000000002150 <_ZNSt13basic_fstreamIcSt11char_traitsIcEEC1Ev@plt>:
    2150:	ff 25 fa 5d 00 00                               	jmp    QWORD PTR [rip+0x5dfa]        # 7f50 <_ZNSt13basic_fstreamIcSt11char_traitsIcEEC1Ev@GLIBCXX_3.4>
    2156:	68 12 00 00 00                                  	push   0x12
    215b:	e9 c0 fe ff ff                                  	jmp    2020 <.plt>

0000000000002160 <_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm@plt>:
    2160:	ff 25 f2 5d 00 00                               	jmp    QWORD PTR [rip+0x5df2]        # 7f58 <_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm@GLIBCXX_3.4.18>
    2166:	68 13 00 00 00                                  	push   0x13
    216b:	e9 b0 fe ff ff                                  	jmp    2020 <.plt>

0000000000002170 <_ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@plt>:
    2170:	ff 25 ea 5d 00 00                               	jmp    QWORD PTR [rip+0x5dea]        # 7f60 <_ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@GLIBCXX_3.4.21>
    2176:	68 14 00 00 00                                  	push   0x14
    217b:	e9 a0 fe ff ff                                  	jmp    2020 <.plt>

0000000000002180 <_ZNSi3getERc@plt>:
    2180:	ff 25 e2 5d 00 00                               	jmp    QWORD PTR [rip+0x5de2]        # 7f68 <_ZNSi3getERc@GLIBCXX_3.4>
    2186:	68 15 00 00 00                                  	push   0x15
    218b:	e9 90 fe ff ff                                  	jmp    2020 <.plt>

0000000000002190 <__cxa_rethrow@plt>:
    2190:	ff 25 da 5d 00 00                               	jmp    QWORD PTR [rip+0x5dda]        # 7f70 <__cxa_rethrow@CXXABI_1.3>
    2196:	68 16 00 00 00                                  	push   0x16
    219b:	e9 80 fe ff ff                                  	jmp    2020 <.plt>

00000000000021a0 <_ZNSt8ios_base4InitC1Ev@plt>:
    21a0:	ff 25 d2 5d 00 00                               	jmp    QWORD PTR [rip+0x5dd2]        # 7f78 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    21a6:	68 17 00 00 00                                  	push   0x17
    21ab:	e9 70 fe ff ff                                  	jmp    2020 <.plt>

00000000000021b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>:
    21b0:	ff 25 ca 5d 00 00                               	jmp    QWORD PTR [rip+0x5dca]        # 7f80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@GLIBCXX_3.4.21>
    21b6:	68 18 00 00 00                                  	push   0x18
    21bb:	e9 60 fe ff ff                                  	jmp    2020 <.plt>

00000000000021c0 <__cxa_end_catch@plt>:
    21c0:	ff 25 c2 5d 00 00                               	jmp    QWORD PTR [rip+0x5dc2]        # 7f88 <__cxa_end_catch@CXXABI_1.3>
    21c6:	68 19 00 00 00                                  	push   0x19
    21cb:	e9 50 fe ff ff                                  	jmp    2020 <.plt>

00000000000021d0 <__cxa_throw@plt>:
    21d0:	ff 25 ba 5d 00 00                               	jmp    QWORD PTR [rip+0x5dba]        # 7f90 <__cxa_throw@CXXABI_1.3>
    21d6:	68 1a 00 00 00                                  	push   0x1a
    21db:	e9 40 fe ff ff                                  	jmp    2020 <.plt>

00000000000021e0 <_ZNSolsEi@plt>:
    21e0:	ff 25 b2 5d 00 00                               	jmp    QWORD PTR [rip+0x5db2]        # 7f98 <_ZNSolsEi@GLIBCXX_3.4>
    21e6:	68 1b 00 00 00                                  	push   0x1b
    21eb:	e9 30 fe ff ff                                  	jmp    2020 <.plt>

00000000000021f0 <_Unwind_Resume@plt>:
    21f0:	ff 25 aa 5d 00 00                               	jmp    QWORD PTR [rip+0x5daa]        # 7fa0 <_Unwind_Resume@GCC_3.0>
    21f6:	68 1c 00 00 00                                  	push   0x1c
    21fb:	e9 20 fe ff ff                                  	jmp    2020 <.plt>

0000000000002200 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>:
    2200:	ff 25 a2 5d 00 00                               	jmp    QWORD PTR [rip+0x5da2]        # 7fa8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@GLIBCXX_3.4.21>
    2206:	68 1d 00 00 00                                  	push   0x1d
    220b:	e9 10 fe ff ff                                  	jmp    2020 <.plt>

0000000000002210 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm@plt>:
    2210:	ff 25 9a 5d 00 00                               	jmp    QWORD PTR [rip+0x5d9a]        # 7fb0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm@GLIBCXX_3.4.21>
    2216:	68 1e 00 00 00                                  	push   0x1e
    221b:	e9 00 fe ff ff                                  	jmp    2020 <.plt>

0000000000002220 <_ZNSt9exceptionD2Ev@plt>:
    2220:	ff 25 92 5d 00 00                               	jmp    QWORD PTR [rip+0x5d92]        # 7fb8 <_ZNSt9exceptionD2Ev@GLIBCXX_3.4>
    2226:	68 1f 00 00 00                                  	push   0x1f
    222b:	e9 f0 fd ff ff                                  	jmp    2020 <.plt>

Disassembly of section .plt.got:

0000000000002230 <__cxa_finalize@plt>:
    2230:	ff 25 8a 5d 00 00                               	jmp    QWORD PTR [rip+0x5d8a]        # 7fc0 <__cxa_finalize@GLIBC_2.2.5>
    2236:	66 90                                           	xchg   ax,ax

Disassembly of section .text:

0000000000002240 <_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev>:
    2240:	41 54                                           	push   r12
    2242:	55                                              	push   rbp
    2243:	53                                              	push   rbx
    2244:	4c 8b 67 08                                     	mov    r12,QWORD PTR [rdi+0x8]
    2248:	48 89 fb                                        	mov    rbx,rdi
    224b:	48 8b 2f                                        	mov    rbp,QWORD PTR [rdi]
    224e:	49 39 ec                                        	cmp    r12,rbp
    2251:	74 18                                           	je     226b <_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev+0x2b>
    2253:	48 8b 7d 00                                     	mov    rdi,QWORD PTR [rbp+0x0]
    2257:	48 8d 45 10                                     	lea    rax,[rbp+0x10]
    225b:	48 39 c7                                        	cmp    rdi,rax
    225e:	74 05                                           	je     2265 <_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev+0x25>
    2260:	e8 8b fe ff ff                                  	call   20f0 <_ZdlPv@plt>
    2265:	48 83 c5 20                                     	add    rbp,0x20
    2269:	eb e3                                           	jmp    224e <_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev+0xe>
    226b:	48 8b 3b                                        	mov    rdi,QWORD PTR [rbx]
    226e:	48 85 ff                                        	test   rdi,rdi
    2271:	74 09                                           	je     227c <_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev+0x3c>
    2273:	5b                                              	pop    rbx
    2274:	5d                                              	pop    rbp
    2275:	41 5c                                           	pop    r12
    2277:	e9 74 fe ff ff                                  	jmp    20f0 <_ZdlPv@plt>
    227c:	5b                                              	pop    rbx
    227d:	5d                                              	pop    rbp
    227e:	41 5c                                           	pop    r12
    2280:	c3                                              	ret    
    2281:	90                                              	nop

0000000000002282 <_ZNSt6vectorIN9AsmParser9asm_labelESaIS1_EED1Ev>:
    2282:	41 54                                           	push   r12
    2284:	55                                              	push   rbp
    2285:	53                                              	push   rbx
    2286:	4c 8b 67 08                                     	mov    r12,QWORD PTR [rdi+0x8]
    228a:	48 89 fb                                        	mov    rbx,rdi
    228d:	48 8b 2f                                        	mov    rbp,QWORD PTR [rdi]
    2290:	49 39 ec                                        	cmp    r12,rbp
    2293:	74 18                                           	je     22ad <_ZNSt6vectorIN9AsmParser9asm_labelESaIS1_EED1Ev+0x2b>
    2295:	48 8b 7d 00                                     	mov    rdi,QWORD PTR [rbp+0x0]
    2299:	48 8d 45 10                                     	lea    rax,[rbp+0x10]
    229d:	48 39 c7                                        	cmp    rdi,rax
    22a0:	74 05                                           	je     22a7 <_ZNSt6vectorIN9AsmParser9asm_labelESaIS1_EED1Ev+0x25>
    22a2:	e8 49 fe ff ff                                  	call   20f0 <_ZdlPv@plt>
    22a7:	48 83 c5 30                                     	add    rbp,0x30
    22ab:	eb e3                                           	jmp    2290 <_ZNSt6vectorIN9AsmParser9asm_labelESaIS1_EED1Ev+0xe>
    22ad:	48 8b 3b                                        	mov    rdi,QWORD PTR [rbx]
    22b0:	48 85 ff                                        	test   rdi,rdi
    22b3:	74 09                                           	je     22be <_ZNSt6vectorIN9AsmParser9asm_labelESaIS1_EED1Ev+0x3c>
    22b5:	5b                                              	pop    rbx
    22b6:	5d                                              	pop    rbp
    22b7:	41 5c                                           	pop    r12
    22b9:	e9 32 fe ff ff                                  	jmp    20f0 <_ZdlPv@plt>
    22be:	5b                                              	pop    rbx
    22bf:	5d                                              	pop    rbp
    22c0:	41 5c                                           	pop    r12
    22c2:	c3                                              	ret    
    22c3:	90                                              	nop

00000000000022c4 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold>:
    22c4:	90                                              	nop
    22c5:	48 89 c3                                        	mov    rbx,rax
    22c8:	e8 f3 fe ff ff                                  	call   21c0 <__cxa_end_catch@plt>
    22cd:	49 8b 7f 38                                     	mov    rdi,QWORD PTR [r15+0x38]
    22d1:	48 85 ff                                        	test   rdi,rdi
    22d4:	74 05                                           	je     22db <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x17>
    22d6:	e8 15 fe ff ff                                  	call   20f0 <_ZdlPv@plt>
    22db:	49 8d 7f 20                                     	lea    rdi,[r15+0x20]
    22df:	e8 9e ff ff ff                                  	call   2282 <_ZNSt6vectorIN9AsmParser9asm_labelESaIS1_EED1Ev>
    22e4:	49 8b 3f                                        	mov    rdi,QWORD PTR [r15]
    22e7:	48 39 7c 24 48                                  	cmp    QWORD PTR [rsp+0x48],rdi
    22ec:	74 05                                           	je     22f3 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x2f>
    22ee:	e8 fd fd ff ff                                  	call   20f0 <_ZdlPv@plt>
    22f3:	48 89 df                                        	mov    rdi,rbx
    22f6:	e8 65 fd ff ff                                  	call   2060 <__cxa_begin_catch@plt>
    22fb:	48 83 7c 24 28 00                               	cmp    QWORD PTR [rsp+0x28],0x0
    2301:	0f 84 bb 00 00 00                               	je     23c2 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0xfe>
    2307:	48 8b 7c 24 28                                  	mov    rdi,QWORD PTR [rsp+0x28]
    230c:	e8 df fd ff ff                                  	call   20f0 <_ZdlPv@plt>
    2311:	e8 7a fe ff ff                                  	call   2190 <__cxa_rethrow@plt>
    2316:	e8 45 fd ff ff                                  	call   2060 <__cxa_begin_catch@plt>
    231b:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
    2320:	49 39 dc                                        	cmp    r12,rbx
    2323:	75 05                                           	jne    232a <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x66>
    2325:	e8 66 fe ff ff                                  	call   2190 <__cxa_rethrow@plt>
    232a:	48 8b 3b                                        	mov    rdi,QWORD PTR [rbx]
    232d:	48 8d 43 10                                     	lea    rax,[rbx+0x10]
    2331:	48 39 c7                                        	cmp    rdi,rax
    2334:	74 05                                           	je     233b <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x77>
    2336:	e8 b5 fd ff ff                                  	call   20f0 <_ZdlPv@plt>
    233b:	48 83 c3 20                                     	add    rbx,0x20
    233f:	eb df                                           	jmp    2320 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x5c>
    2341:	48 89 c5                                        	mov    rbp,rax
    2344:	e8 77 fe ff ff                                  	call   21c0 <__cxa_end_catch@plt>
    2349:	48 8b 7c 24 60                                  	mov    rdi,QWORD PTR [rsp+0x60]
    234e:	4c 39 e7                                        	cmp    rdi,r12
    2351:	74 05                                           	je     2358 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x94>
    2353:	e8 98 fd ff ff                                  	call   20f0 <_ZdlPv@plt>
    2358:	48 89 ef                                        	mov    rdi,rbp
    235b:	e8 90 fe ff ff                                  	call   21f0 <_Unwind_Resume@plt>
    2360:	48 8b 44 24 18                                  	mov    rax,QWORD PTR [rsp+0x18]
    2365:	48 8d 78 38                                     	lea    rdi,[rax+0x38]
    2369:	e8 d2 fe ff ff                                  	call   2240 <_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev>
    236e:	48 8b 44 24 18                                  	mov    rax,QWORD PTR [rsp+0x18]
    2373:	48 8d 78 20                                     	lea    rdi,[rax+0x20]
    2377:	e8 06 ff ff ff                                  	call   2282 <_ZNSt6vectorIN9AsmParser9asm_labelESaIS1_EED1Ev>
    237c:	48 8b 44 24 18                                  	mov    rax,QWORD PTR [rsp+0x18]
    2381:	48 8b 38                                        	mov    rdi,QWORD PTR [rax]
    2384:	48 39 7c 24 28                                  	cmp    QWORD PTR [rsp+0x28],rdi
    2389:	74 05                                           	je     2390 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0xcc>
    238b:	e8 60 fd ff ff                                  	call   20f0 <_ZdlPv@plt>
    2390:	48 89 ef                                        	mov    rdi,rbp
    2393:	e8 58 fe ff ff                                  	call   21f0 <_Unwind_Resume@plt>
    2398:	49 8d 7f 38                                     	lea    rdi,[r15+0x38]
    239c:	e8 9f fe ff ff                                  	call   2240 <_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev>
    23a1:	e9 35 ff ff ff                                  	jmp    22db <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x17>
    23a6:	e8 b5 fc ff ff                                  	call   2060 <__cxa_begin_catch@plt>
    23ab:	48 83 7c 24 18 00                               	cmp    QWORD PTR [rsp+0x18],0x0
    23b1:	74 2c                                           	je     23df <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x11b>
    23b3:	48 8b 7c 24 18                                  	mov    rdi,QWORD PTR [rsp+0x18]
    23b8:	e8 33 fd ff ff                                  	call   20f0 <_ZdlPv@plt>
    23bd:	e8 ce fd ff ff                                  	call   2190 <__cxa_rethrow@plt>
    23c2:	4c 89 ff                                        	mov    rdi,r15
    23c5:	e8 d6 14 00 00                                  	call   38a0 <_ZN9AsmParser8asm_lineD1Ev>
    23ca:	e9 42 ff ff ff                                  	jmp    2311 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x4d>
    23cf:	48 89 c5                                        	mov    rbp,rax
    23d2:	e8 e9 fd ff ff                                  	call   21c0 <__cxa_end_catch@plt>
    23d7:	48 89 ef                                        	mov    rdi,rbp
    23da:	e8 11 fe ff ff                                  	call   21f0 <_Unwind_Resume@plt>
    23df:	49 8b 7d 00                                     	mov    rdi,QWORD PTR [r13+0x0]
    23e3:	48 39 7c 24 38                                  	cmp    QWORD PTR [rsp+0x38],rdi
    23e8:	74 d3                                           	je     23bd <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0xf9>
    23ea:	e8 01 fd ff ff                                  	call   20f0 <_ZdlPv@plt>
    23ef:	eb cc                                           	jmp    23bd <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0xf9>
    23f1:	e8 6a fc ff ff                                  	call   2060 <__cxa_begin_catch@plt>
    23f6:	4c 89 ab 18 01 00 00                            	mov    QWORD PTR [rbx+0x118],r13
    23fd:	e8 8e fd ff ff                                  	call   2190 <__cxa_rethrow@plt>
    2402:	48 89 c5                                        	mov    rbp,rax
    2405:	e8 b6 fd ff ff                                  	call   21c0 <__cxa_end_catch@plt>
    240a:	48 89 ef                                        	mov    rdi,rbp
    240d:	e8 4e fc ff ff                                  	call   2060 <__cxa_begin_catch@plt>
    2412:	49 8b 7c 24 08                                  	mov    rdi,QWORD PTR [r12+0x8]
    2417:	48 39 7c 24 10                                  	cmp    QWORD PTR [rsp+0x10],rdi
    241c:	74 05                                           	je     2423 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x15f>
    241e:	e8 cd fc ff ff                                  	call   20f0 <_ZdlPv@plt>
    2423:	4c 89 e7                                        	mov    rdi,r12
    2426:	e8 c5 fc ff ff                                  	call   20f0 <_ZdlPv@plt>
    242b:	e8 60 fd ff ff                                  	call   2190 <__cxa_rethrow@plt>
    2430:	e8 2b fc ff ff                                  	call   2060 <__cxa_begin_catch@plt>
    2435:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
    243a:	49 39 dc                                        	cmp    r12,rbx
    243d:	75 4f                                           	jne    248e <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x1ca>
    243f:	e8 4c fd ff ff                                  	call   2190 <__cxa_rethrow@plt>
    2444:	e8 17 fc ff ff                                  	call   2060 <__cxa_begin_catch@plt>
    2449:	4d 39 ef                                        	cmp    r15,r13
    244c:	75 05                                           	jne    2453 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x18f>
    244e:	e8 3d fd ff ff                                  	call   2190 <__cxa_rethrow@plt>
    2453:	49 8b 3f                                        	mov    rdi,QWORD PTR [r15]
    2456:	49 8d 47 10                                     	lea    rax,[r15+0x10]
    245a:	48 39 c7                                        	cmp    rdi,rax
    245d:	74 05                                           	je     2464 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x1a0>
    245f:	e8 8c fc ff ff                                  	call   20f0 <_ZdlPv@plt>
    2464:	49 83 c7 20                                     	add    r15,0x20
    2468:	eb df                                           	jmp    2449 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x185>
    246a:	48 89 c5                                        	mov    rbp,rax
    246d:	e8 4e fd ff ff                                  	call   21c0 <__cxa_end_catch@plt>
    2472:	48 8b 44 24 18                                  	mov    rax,QWORD PTR [rsp+0x18]
    2477:	48 8b 78 38                                     	mov    rdi,QWORD PTR [rax+0x38]
    247b:	48 85 ff                                        	test   rdi,rdi
    247e:	0f 84 ea fe ff ff                               	je     236e <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0xaa>
    2484:	e8 67 fc ff ff                                  	call   20f0 <_ZdlPv@plt>
    2489:	e9 e0 fe ff ff                                  	jmp    236e <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0xaa>
    248e:	48 8b 3b                                        	mov    rdi,QWORD PTR [rbx]
    2491:	48 8d 43 10                                     	lea    rax,[rbx+0x10]
    2495:	48 39 c7                                        	cmp    rdi,rax
    2498:	74 05                                           	je     249f <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x1db>
    249a:	e8 51 fc ff ff                                  	call   20f0 <_ZdlPv@plt>
    249f:	48 83 c3 30                                     	add    rbx,0x30
    24a3:	eb 95                                           	jmp    243a <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x176>
    24a5:	e8 b6 fb ff ff                                  	call   2060 <__cxa_begin_catch@plt>
    24aa:	4c 89 e7                                        	mov    rdi,r12
    24ad:	e8 3e fc ff ff                                  	call   20f0 <_ZdlPv@plt>
    24b2:	e8 d9 fc ff ff                                  	call   2190 <__cxa_rethrow@plt>
    24b7:	48 89 c5                                        	mov    rbp,rax
    24ba:	e8 01 fd ff ff                                  	call   21c0 <__cxa_end_catch@plt>
    24bf:	48 89 ef                                        	mov    rdi,rbp
    24c2:	e8 29 fd ff ff                                  	call   21f0 <_Unwind_Resume@plt>
    24c7:	48 89 c5                                        	mov    rbp,rax
    24ca:	e8 f1 fc ff ff                                  	call   21c0 <__cxa_end_catch@plt>
    24cf:	48 89 ef                                        	mov    rdi,rbp
    24d2:	e8 19 fd ff ff                                  	call   21f0 <_Unwind_Resume@plt>
    24d7:	e8 84 fb ff ff                                  	call   2060 <__cxa_begin_catch@plt>
    24dc:	4d 39 ef                                        	cmp    r15,r13
    24df:	75 24                                           	jne    2505 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x241>
    24e1:	e8 aa fc ff ff                                  	call   2190 <__cxa_rethrow@plt>
    24e6:	48 89 c3                                        	mov    rbx,rax
    24e9:	e8 d2 fc ff ff                                  	call   21c0 <__cxa_end_catch@plt>
    24ee:	49 8b 7f 20                                     	mov    rdi,QWORD PTR [r15+0x20]
    24f2:	48 85 ff                                        	test   rdi,rdi
    24f5:	0f 84 e9 fd ff ff                               	je     22e4 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x20>
    24fb:	e8 f0 fb ff ff                                  	call   20f0 <_ZdlPv@plt>
    2500:	e9 df fd ff ff                                  	jmp    22e4 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x20>
    2505:	49 8b 3f                                        	mov    rdi,QWORD PTR [r15]
    2508:	49 8d 47 10                                     	lea    rax,[r15+0x10]
    250c:	48 39 c7                                        	cmp    rdi,rax
    250f:	74 05                                           	je     2516 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x252>
    2511:	e8 da fb ff ff                                  	call   20f0 <_ZdlPv@plt>
    2516:	49 83 c7 30                                     	add    r15,0x30
    251a:	eb c0                                           	jmp    24dc <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x218>
    251c:	48 89 c5                                        	mov    rbp,rax
    251f:	e8 9c fc ff ff                                  	call   21c0 <__cxa_end_catch@plt>
    2524:	48 8b 44 24 18                                  	mov    rax,QWORD PTR [rsp+0x18]
    2529:	48 8b 78 20                                     	mov    rdi,QWORD PTR [rax+0x20]
    252d:	48 85 ff                                        	test   rdi,rdi
    2530:	0f 84 46 fe ff ff                               	je     237c <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0xb8>
    2536:	e8 b5 fb ff ff                                  	call   20f0 <_ZdlPv@plt>
    253b:	e9 3c fe ff ff                                  	jmp    237c <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0xb8>

0000000000002540 <_sub_I_65535_0.6213>:
    2540:	55                                              	push   rbp
    2541:	48 8d 3d d1 5a 00 00                            	lea    rdi,[rip+0x5ad1]        # 8019 <_ZStL8__ioinit.lto_priv.1>
    2548:	e8 53 fc ff ff                                  	call   21a0 <_ZNSt8ios_base4InitC1Ev@plt>
    254d:	48 8b 2d a4 5a 00 00                            	mov    rbp,QWORD PTR [rip+0x5aa4]        # 7ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    2554:	48 8d 15 ad 5a 00 00                            	lea    rdx,[rip+0x5aad]        # 8008 <__dso_handle>
    255b:	48 8d 35 b7 5a 00 00                            	lea    rsi,[rip+0x5ab7]        # 8019 <_ZStL8__ioinit.lto_priv.1>
    2562:	48 89 ef                                        	mov    rdi,rbp
    2565:	e8 76 fb ff ff                                  	call   20e0 <__cxa_atexit@plt>
    256a:	48 8d 3d a9 5a 00 00                            	lea    rdi,[rip+0x5aa9]        # 801a <_ZStL8__ioinit.lto_priv.0>
    2571:	e8 2a fc ff ff                                  	call   21a0 <_ZNSt8ios_base4InitC1Ev@plt>
    2576:	48 89 ef                                        	mov    rdi,rbp
    2579:	5d                                              	pop    rbp
    257a:	48 8d 15 87 5a 00 00                            	lea    rdx,[rip+0x5a87]        # 8008 <__dso_handle>
    2581:	48 8d 35 92 5a 00 00                            	lea    rsi,[rip+0x5a92]        # 801a <_ZStL8__ioinit.lto_priv.0>
    2588:	e9 53 fb ff ff                                  	jmp    20e0 <__cxa_atexit@plt>
    258d:	0f 1f 00                                        	nop    DWORD PTR [rax]

0000000000002590 <main>:
    2590:	41 57                                           	push   r15
    2592:	41 56                                           	push   r14
    2594:	41 55                                           	push   r13
    2596:	41 54                                           	push   r12
    2598:	55                                              	push   rbp
    2599:	53                                              	push   rbx
    259a:	48 81 ec 68 04 00 00                            	sub    rsp,0x468
    25a1:	64 48 8b 04 25 28 00 00 00                      	mov    rax,QWORD PTR fs:0x28
    25aa:	48 89 84 24 58 04 00 00                         	mov    QWORD PTR [rsp+0x458],rax
    25b2:	31 c0                                           	xor    eax,eax
    25b4:	83 ff 01                                        	cmp    edi,0x1
    25b7:	0f 8e 8a 08 00 00                               	jle    2e47 <main+0x8b7>
    25bd:	48 8b 76 08                                     	mov    rsi,QWORD PTR [rsi+0x8]
    25c1:	48 8d 44 24 50                                  	lea    rax,[rsp+0x50]
    25c6:	48 89 44 24 38                                  	mov    QWORD PTR [rsp+0x38],rax
    25cb:	48 89 44 24 40                                  	mov    QWORD PTR [rsp+0x40],rax
    25d0:	48 85 f6                                        	test   rsi,rsi
    25d3:	0f 84 37 0d 00 00                               	je     3310 <main+0xd80>
    25d9:	48 83 c9 ff                                     	or     rcx,0xffffffffffffffff
    25dd:	31 c0                                           	xor    eax,eax
    25df:	48 89 f7                                        	mov    rdi,rsi
    25e2:	f2 ae                                           	repnz scas al,BYTE PTR es:[rdi]
    25e4:	48 f7 d1                                        	not    rcx
    25e7:	48 8d 54 0e ff                                  	lea    rdx,[rsi+rcx*1-0x1]
    25ec:	48 8d 6c 24 40                                  	lea    rbp,[rsp+0x40]
    25f1:	48 8d 9c 24 40 02 00 00                         	lea    rbx,[rsp+0x240]
    25f9:	48 89 ef                                        	mov    rdi,rbp
    25fc:	e8 9f 11 00 00                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    2601:	48 89 df                                        	mov    rdi,rbx
    2604:	48 89 5c 24 30                                  	mov    QWORD PTR [rsp+0x30],rbx
    2609:	e8 42 fb ff ff                                  	call   2150 <_ZNSt13basic_fstreamIcSt11char_traitsIcEEC1Ev@plt>
    260e:	ba 08 00 00 00                                  	mov    edx,0x8
    2613:	48 89 ee                                        	mov    rsi,rbp
    2616:	48 89 df                                        	mov    rdi,rbx
    2619:	e8 52 fb ff ff                                  	call   2170 <_ZNSt13basic_fstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@plt>
    261e:	31 c0                                           	xor    eax,eax
    2620:	b9 12 00 00 00                                  	mov    ecx,0x12
    2625:	66 0f ef c0                                     	pxor   xmm0,xmm0
    2629:	48 89 de                                        	mov    rsi,rbx
    262c:	48 8d bc 24 60 01 00 00                         	lea    rdi,[rsp+0x160]
    2634:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
    2636:	48 8d 84 24 20 01 00 00                         	lea    rax,[rsp+0x120]
    263e:	48 8d bc 24 10 01 00 00                         	lea    rdi,[rsp+0x110]
    2646:	48 c7 84 24 18 01 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x118],0x0
    2652:	48 89 84 24 10 01 00 00                         	mov    QWORD PTR [rsp+0x110],rax
    265a:	48 8d 84 24 b8 01 00 00                         	lea    rax,[rsp+0x1b8]
    2662:	48 89 84 24 a8 01 00 00                         	mov    QWORD PTR [rsp+0x1a8],rax
    266a:	48 8d 84 24 d8 01 00 00                         	lea    rax,[rsp+0x1d8]
    2672:	48 89 84 24 c8 01 00 00                         	mov    QWORD PTR [rsp+0x1c8],rax
    267a:	48 8d 84 24 30 02 00 00                         	lea    rax,[rsp+0x230]
    2682:	48 89 7c 24 20                                  	mov    QWORD PTR [rsp+0x20],rdi
    2687:	c6 84 24 20 01 00 00 00                         	mov    BYTE PTR [rsp+0x120],0x0
    268f:	48 c7 84 24 b0 01 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x1b0],0x0
    269b:	c6 84 24 b8 01 00 00 00                         	mov    BYTE PTR [rsp+0x1b8],0x0
    26a3:	48 c7 84 24 d0 01 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x1d0],0x0
    26af:	c6 84 24 d8 01 00 00 00                         	mov    BYTE PTR [rsp+0x1d8],0x0
    26b7:	48 c7 84 24 f8 01 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x1f8],0x0
    26c3:	48 89 84 24 00 02 00 00                         	mov    QWORD PTR [rsp+0x200],rax
    26cb:	48 c7 84 24 08 02 00 00 01 00 00 00             	mov    QWORD PTR [rsp+0x208],0x1
    26d7:	48 c7 84 24 10 02 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x210],0x0
    26e3:	48 c7 84 24 18 02 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x218],0x0
    26ef:	c7 84 24 20 02 00 00 00 00 80 3f                	mov    DWORD PTR [rsp+0x220],0x3f800000
    26fa:	48 c7 84 24 28 02 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x228],0x0
    2706:	48 c7 84 24 30 02 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x230],0x0
    2712:	0f 29 84 24 30 01 00 00                         	movaps XMMWORD PTR [rsp+0x130],xmm0
    271a:	0f 29 84 24 40 01 00 00                         	movaps XMMWORD PTR [rsp+0x140],xmm0
    2722:	0f 29 84 24 50 01 00 00                         	movaps XMMWORD PTR [rsp+0x150],xmm0
    272a:	0f 11 84 24 e8 01 00 00                         	movups XMMWORD PTR [rsp+0x1e8],xmm0
    2732:	e8 59 14 00 00                                  	call   3b90 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi>
    2737:	48 8b 2d 8a 58 00 00                            	mov    rbp,QWORD PTR [rip+0x588a]        # 7fc8 <_ZSt4cout@GLIBCXX_3.4>
    273e:	ba 02 00 00 00                                  	mov    edx,0x2
    2743:	48 8d 35 e8 38 00 00                            	lea    rsi,[rip+0x38e8]        # 6032 <_IO_stdin_used+0x32>
    274a:	48 89 ef                                        	mov    rdi,rbp
    274d:	e8 ee f9 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2752:	48 8b 84 24 f0 01 00 00                         	mov    rax,QWORD PTR [rsp+0x1f0]
    275a:	48 8b 9c 24 e8 01 00 00                         	mov    rbx,QWORD PTR [rsp+0x1e8]
    2762:	48 89 44 24 18                                  	mov    QWORD PTR [rsp+0x18],rax
    2767:	48 39 c3                                        	cmp    rbx,rax
    276a:	0f 84 2c 03 00 00                               	je     2a9c <main+0x50c>
    2770:	48 8d 84 24 80 00 00 00                         	lea    rax,[rsp+0x80]
    2778:	48 89 44 24 10                                  	mov    QWORD PTR [rsp+0x10],rax
    277d:	48 8d 84 24 90 00 00 00                         	lea    rax,[rsp+0x90]
    2785:	48 89 44 24 08                                  	mov    QWORD PTR [rsp+0x8],rax
    278a:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    2790:	48 8b 44 24 08                                  	mov    rax,QWORD PTR [rsp+0x8]
    2795:	48 8b 53 08                                     	mov    rdx,QWORD PTR [rbx+0x8]
    2799:	48 8b 7c 24 10                                  	mov    rdi,QWORD PTR [rsp+0x10]
    279e:	48 89 84 24 80 00 00 00                         	mov    QWORD PTR [rsp+0x80],rax
    27a6:	48 8b 33                                        	mov    rsi,QWORD PTR [rbx]
    27a9:	48 01 f2                                        	add    rdx,rsi
    27ac:	e8 ef 0f 00 00                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    27b1:	4c 8b 63 28                                     	mov    r12,QWORD PTR [rbx+0x28]
    27b5:	4c 2b 63 20                                     	sub    r12,QWORD PTR [rbx+0x20]
    27b9:	66 0f ef c9                                     	pxor   xmm1,xmm1
    27bd:	45 31 f6                                        	xor    r14d,r14d
    27c0:	4c 89 e0                                        	mov    rax,r12
    27c3:	0f 29 8c 24 a0 00 00 00                         	movaps XMMWORD PTR [rsp+0xa0],xmm1
    27cb:	48 b9 ab aa aa aa aa aa aa aa                   	movabs rcx,0xaaaaaaaaaaaaaaab
    27d5:	48 c7 84 24 b0 00 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0xb0],0x0
    27e1:	48 c1 f8 04                                     	sar    rax,0x4
    27e5:	48 0f af c1                                     	imul   rax,rcx
    27e9:	48 85 c0                                        	test   rax,rax
    27ec:	74 1e                                           	je     280c <main+0x27c>
    27ee:	48 b9 aa aa aa aa aa aa aa 02                   	movabs rcx,0x2aaaaaaaaaaaaaa
    27f8:	48 39 c8                                        	cmp    rax,rcx
    27fb:	0f 87 1d 0b 00 00                               	ja     331e <main+0xd8e>
    2801:	4c 89 e7                                        	mov    rdi,r12
    2804:	e8 07 f9 ff ff                                  	call   2110 <_Znwm@plt>
    2809:	49 89 c6                                        	mov    r14,rax
    280c:	66 49 0f 6e c6                                  	movq   xmm0,r14
    2811:	4d 01 f4                                        	add    r12,r14
    2814:	4d 89 f5                                        	mov    r13,r14
    2817:	66 0f 6c c0                                     	punpcklqdq xmm0,xmm0
    281b:	4c 89 a4 24 b0 00 00 00                         	mov    QWORD PTR [rsp+0xb0],r12
    2823:	0f 29 84 24 a0 00 00 00                         	movaps XMMWORD PTR [rsp+0xa0],xmm0
    282b:	4c 8b 7b 28                                     	mov    r15,QWORD PTR [rbx+0x28]
    282f:	4c 8b 63 20                                     	mov    r12,QWORD PTR [rbx+0x20]
    2833:	4d 39 e7                                        	cmp    r15,r12
    2836:	74 43                                           	je     287b <main+0x2eb>
    2838:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    2840:	49 8d 45 10                                     	lea    rax,[r13+0x10]
    2844:	49 8b 54 24 08                                  	mov    rdx,QWORD PTR [r12+0x8]
    2849:	4c 89 ef                                        	mov    rdi,r13
    284c:	49 89 45 00                                     	mov    QWORD PTR [r13+0x0],rax
    2850:	49 8b 34 24                                     	mov    rsi,QWORD PTR [r12]
    2854:	48 01 f2                                        	add    rdx,rsi
    2857:	e8 44 0f 00 00                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    285c:	49 8b 44 24 20                                  	mov    rax,QWORD PTR [r12+0x20]
    2861:	49 83 c4 30                                     	add    r12,0x30
    2865:	49 83 c5 30                                     	add    r13,0x30
    2869:	49 89 45 f0                                     	mov    QWORD PTR [r13-0x10],rax
    286d:	41 8b 44 24 f8                                  	mov    eax,DWORD PTR [r12-0x8]
    2872:	41 89 45 f8                                     	mov    DWORD PTR [r13-0x8],eax
    2876:	4d 39 e7                                        	cmp    r15,r12
    2879:	75 c5                                           	jne    2840 <main+0x2b0>
    287b:	4c 8b 63 40                                     	mov    r12,QWORD PTR [rbx+0x40]
    287f:	4c 2b 63 38                                     	sub    r12,QWORD PTR [rbx+0x38]
    2883:	66 0f ef d2                                     	pxor   xmm2,xmm2
    2887:	4c 89 ac 24 a8 00 00 00                         	mov    QWORD PTR [rsp+0xa8],r13
    288f:	4c 89 e0                                        	mov    rax,r12
    2892:	0f 11 94 24 b8 00 00 00                         	movups XMMWORD PTR [rsp+0xb8],xmm2
    289a:	48 c7 84 24 c8 00 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0xc8],0x0
    28a6:	48 c1 f8 05                                     	sar    rax,0x5
    28aa:	0f 84 68 03 00 00                               	je     2c18 <main+0x688>
    28b0:	48 b9 ff ff ff ff ff ff ff 03                   	movabs rcx,0x3ffffffffffffff
    28ba:	48 39 c8                                        	cmp    rax,rcx
    28bd:	0f 87 56 0a 00 00                               	ja     3319 <main+0xd89>
    28c3:	4c 89 e7                                        	mov    rdi,r12
    28c6:	e8 45 f8 ff ff                                  	call   2110 <_Znwm@plt>
    28cb:	49 89 c5                                        	mov    r13,rax
    28ce:	66 49 0f 6e c5                                  	movq   xmm0,r13
    28d3:	4d 01 ec                                        	add    r12,r13
    28d6:	4d 89 ee                                        	mov    r14,r13
    28d9:	66 0f 6c c0                                     	punpcklqdq xmm0,xmm0
    28dd:	4c 89 a4 24 c8 00 00 00                         	mov    QWORD PTR [rsp+0xc8],r12
    28e5:	0f 11 84 24 b8 00 00 00                         	movups XMMWORD PTR [rsp+0xb8],xmm0
    28ed:	4c 8b 7b 40                                     	mov    r15,QWORD PTR [rbx+0x40]
    28f1:	4c 8b 63 38                                     	mov    r12,QWORD PTR [rbx+0x38]
    28f5:	4d 39 e7                                        	cmp    r15,r12
    28f8:	74 2e                                           	je     2928 <main+0x398>
    28fa:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    2900:	49 8d 46 10                                     	lea    rax,[r14+0x10]
    2904:	49 8b 54 24 08                                  	mov    rdx,QWORD PTR [r12+0x8]
    2909:	4c 89 f7                                        	mov    rdi,r14
    290c:	49 89 06                                        	mov    QWORD PTR [r14],rax
    290f:	49 8b 34 24                                     	mov    rsi,QWORD PTR [r12]
    2913:	48 01 f2                                        	add    rdx,rsi
    2916:	e8 85 0e 00 00                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    291b:	49 83 c4 20                                     	add    r12,0x20
    291f:	49 83 c6 20                                     	add    r14,0x20
    2923:	4d 39 e7                                        	cmp    r15,r12
    2926:	75 d8                                           	jne    2900 <main+0x370>
    2928:	c6 84 24 f8 00 00 00 00                         	mov    BYTE PTR [rsp+0xf8],0x0
    2930:	80 7b 78 00                                     	cmp    BYTE PTR [rbx+0x78],0x0
    2934:	4c 89 b4 24 c0 00 00 00                         	mov    QWORD PTR [rsp+0xc0],r14
    293c:	0f 85 c6 04 00 00                               	jne    2e08 <main+0x878>
    2942:	f3 0f 6f 9b 80 00 00 00                         	movdqu xmm3,XMMWORD PTR [rbx+0x80]
    294a:	ba 02 00 00 00                                  	mov    edx,0x2
    294f:	48 8d 35 e2 36 00 00                            	lea    rsi,[rip+0x36e2]        # 6038 <_IO_stdin_used+0x38>
    2956:	48 89 ef                                        	mov    rdi,rbp
    2959:	0f 29 9c 24 00 01 00 00                         	movaps XMMWORD PTR [rsp+0x100],xmm3
    2961:	e8 da f7 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2966:	80 bc 24 08 01 00 00 00                         	cmp    BYTE PTR [rsp+0x108],0x0
    296e:	0f 85 44 04 00 00                               	jne    2db8 <main+0x828>
    2974:	48 83 bc 24 88 00 00 00 00                      	cmp    QWORD PTR [rsp+0x88],0x0
    297d:	0f 85 d5 03 00 00                               	jne    2d58 <main+0x7c8>
    2983:	48 8b 84 24 c0 00 00 00                         	mov    rax,QWORD PTR [rsp+0xc0]
    298b:	48 39 84 24 b8 00 00 00                         	cmp    QWORD PTR [rsp+0xb8],rax
    2993:	0f 85 ef 02 00 00                               	jne    2c88 <main+0x6f8>
    2999:	ba 03 00 00 00                                  	mov    edx,0x3
    299e:	48 8d 35 c9 36 00 00                            	lea    rsi,[rip+0x36c9]        # 606e <_IO_stdin_used+0x6e>
    29a5:	48 89 ef                                        	mov    rdi,rbp
    29a8:	e8 93 f7 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    29ad:	80 bc 24 f8 00 00 00 00                         	cmp    BYTE PTR [rsp+0xf8],0x0
    29b5:	74 22                                           	je     29d9 <main+0x449>
    29b7:	48 8b bc 24 d0 00 00 00                         	mov    rdi,QWORD PTR [rsp+0xd0]
    29bf:	48 8d 84 24 e0 00 00 00                         	lea    rax,[rsp+0xe0]
    29c7:	c6 84 24 f8 00 00 00 00                         	mov    BYTE PTR [rsp+0xf8],0x0
    29cf:	48 39 c7                                        	cmp    rdi,rax
    29d2:	74 05                                           	je     29d9 <main+0x449>
    29d4:	e8 17 f7 ff ff                                  	call   20f0 <_ZdlPv@plt>
    29d9:	4c 8b ac 24 c0 00 00 00                         	mov    r13,QWORD PTR [rsp+0xc0]
    29e1:	4c 8b a4 24 b8 00 00 00                         	mov    r12,QWORD PTR [rsp+0xb8]
    29e9:	4d 39 e5                                        	cmp    r13,r12
    29ec:	74 22                                           	je     2a10 <main+0x480>
    29ee:	66 90                                           	xchg   ax,ax
    29f0:	49 8b 3c 24                                     	mov    rdi,QWORD PTR [r12]
    29f4:	49 8d 44 24 10                                  	lea    rax,[r12+0x10]
    29f9:	48 39 c7                                        	cmp    rdi,rax
    29fc:	0f 84 1e 02 00 00                               	je     2c20 <main+0x690>
    2a02:	e8 e9 f6 ff ff                                  	call   20f0 <_ZdlPv@plt>
    2a07:	49 83 c4 20                                     	add    r12,0x20
    2a0b:	4d 39 ec                                        	cmp    r12,r13
    2a0e:	75 e0                                           	jne    29f0 <main+0x460>
    2a10:	48 8b bc 24 b8 00 00 00                         	mov    rdi,QWORD PTR [rsp+0xb8]
    2a18:	48 85 ff                                        	test   rdi,rdi
    2a1b:	74 05                                           	je     2a22 <main+0x492>
    2a1d:	e8 ce f6 ff ff                                  	call   20f0 <_ZdlPv@plt>
    2a22:	4c 8b ac 24 a8 00 00 00                         	mov    r13,QWORD PTR [rsp+0xa8]
    2a2a:	4c 8b a4 24 a0 00 00 00                         	mov    r12,QWORD PTR [rsp+0xa0]
    2a32:	4d 39 e5                                        	cmp    r13,r12
    2a35:	74 29                                           	je     2a60 <main+0x4d0>
    2a37:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2a40:	49 8b 3c 24                                     	mov    rdi,QWORD PTR [r12]
    2a44:	49 8d 44 24 10                                  	lea    rax,[r12+0x10]
    2a49:	48 39 c7                                        	cmp    rdi,rax
    2a4c:	0f 84 e6 01 00 00                               	je     2c38 <main+0x6a8>
    2a52:	e8 99 f6 ff ff                                  	call   20f0 <_ZdlPv@plt>
    2a57:	49 83 c4 30                                     	add    r12,0x30
    2a5b:	4d 39 ec                                        	cmp    r12,r13
    2a5e:	75 e0                                           	jne    2a40 <main+0x4b0>
    2a60:	48 8b bc 24 a0 00 00 00                         	mov    rdi,QWORD PTR [rsp+0xa0]
    2a68:	48 85 ff                                        	test   rdi,rdi
    2a6b:	74 05                                           	je     2a72 <main+0x4e2>
    2a6d:	e8 7e f6 ff ff                                  	call   20f0 <_ZdlPv@plt>
    2a72:	48 8b bc 24 80 00 00 00                         	mov    rdi,QWORD PTR [rsp+0x80]
    2a7a:	48 3b 7c 24 08                                  	cmp    rdi,QWORD PTR [rsp+0x8]
    2a7f:	0f 84 cb 01 00 00                               	je     2c50 <main+0x6c0>
    2a85:	e8 66 f6 ff ff                                  	call   20f0 <_ZdlPv@plt>
    2a8a:	48 81 c3 90 00 00 00                            	add    rbx,0x90
    2a91:	48 39 5c 24 18                                  	cmp    QWORD PTR [rsp+0x18],rbx
    2a96:	0f 85 f4 fc ff ff                               	jne    2790 <main+0x200>
    2a9c:	ba 02 00 00 00                                  	mov    edx,0x2
    2aa1:	48 8d 35 8d 35 00 00                            	lea    rsi,[rip+0x358d]        # 6035 <_IO_stdin_used+0x35>
    2aa8:	48 89 ef                                        	mov    rdi,rbp
    2aab:	e8 90 f6 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2ab0:	ba 0c 00 00 00                                  	mov    edx,0xc
    2ab5:	48 8d 35 b6 35 00 00                            	lea    rsi,[rip+0x35b6]        # 6072 <_IO_stdin_used+0x72>
    2abc:	48 89 ef                                        	mov    rdi,rbp
    2abf:	e8 7c f6 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2ac4:	48 8d 84 24 80 00 00 00                         	lea    rax,[rsp+0x80]
    2acc:	48 8b 9c 24 10 02 00 00                         	mov    rbx,QWORD PTR [rsp+0x210]
    2ad4:	4c 8d 2d 78 35 00 00                            	lea    r13,[rip+0x3578]        # 6053 <_IO_stdin_used+0x53>
    2adb:	48 89 44 24 10                                  	mov    QWORD PTR [rsp+0x10],rax
    2ae0:	48 8d 84 24 90 00 00 00                         	lea    rax,[rsp+0x90]
    2ae8:	48 89 44 24 08                                  	mov    QWORD PTR [rsp+0x8],rax
    2aed:	48 85 db                                        	test   rbx,rbx
    2af0:	0f 84 ba 00 00 00                               	je     2bb0 <main+0x620>
    2af6:	66 2e 0f 1f 84 00 00 00 00 00                   	nop    WORD PTR cs:[rax+rax*1+0x0]
    2b00:	4c 8b 7c 24 08                                  	mov    r15,QWORD PTR [rsp+0x8]
    2b05:	48 8b 53 10                                     	mov    rdx,QWORD PTR [rbx+0x10]
    2b09:	48 8b 7c 24 10                                  	mov    rdi,QWORD PTR [rsp+0x10]
    2b0e:	4c 89 bc 24 80 00 00 00                         	mov    QWORD PTR [rsp+0x80],r15
    2b16:	48 8b 73 08                                     	mov    rsi,QWORD PTR [rbx+0x8]
    2b1a:	48 01 f2                                        	add    rdx,rsi
    2b1d:	e8 7e 0c 00 00                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    2b22:	8b 43 28                                        	mov    eax,DWORD PTR [rbx+0x28]
    2b25:	ba 01 00 00 00                                  	mov    edx,0x1
    2b2a:	4c 89 ee                                        	mov    rsi,r13
    2b2d:	48 89 ef                                        	mov    rdi,rbp
    2b30:	89 84 24 a0 00 00 00                            	mov    DWORD PTR [rsp+0xa0],eax
    2b37:	e8 04 f6 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2b3c:	48 8b 94 24 88 00 00 00                         	mov    rdx,QWORD PTR [rsp+0x88]
    2b44:	48 8b b4 24 80 00 00 00                         	mov    rsi,QWORD PTR [rsp+0x80]
    2b4c:	48 89 ef                                        	mov    rdi,rbp
    2b4f:	e8 ec f5 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2b54:	ba 03 00 00 00                                  	mov    edx,0x3
    2b59:	48 8d 35 ef 34 00 00                            	lea    rsi,[rip+0x34ef]        # 604f <_IO_stdin_used+0x4f>
    2b60:	48 89 c7                                        	mov    rdi,rax
    2b63:	49 89 c4                                        	mov    r12,rax
    2b66:	e8 d5 f5 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2b6b:	8b b4 24 a0 00 00 00                            	mov    esi,DWORD PTR [rsp+0xa0]
    2b72:	4c 89 e7                                        	mov    rdi,r12
    2b75:	e8 66 f6 ff ff                                  	call   21e0 <_ZNSolsEi@plt>
    2b7a:	48 89 c7                                        	mov    rdi,rax
    2b7d:	ba 02 00 00 00                                  	mov    edx,0x2
    2b82:	48 8d 35 cd 34 00 00                            	lea    rsi,[rip+0x34cd]        # 6056 <_IO_stdin_used+0x56>
    2b89:	e8 b2 f5 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2b8e:	48 8b bc 24 80 00 00 00                         	mov    rdi,QWORD PTR [rsp+0x80]
    2b96:	4c 39 ff                                        	cmp    rdi,r15
    2b99:	0f 84 d1 00 00 00                               	je     2c70 <main+0x6e0>
    2b9f:	e8 4c f5 ff ff                                  	call   20f0 <_ZdlPv@plt>
    2ba4:	48 8b 1b                                        	mov    rbx,QWORD PTR [rbx]
    2ba7:	48 85 db                                        	test   rbx,rbx
    2baa:	0f 85 50 ff ff ff                               	jne    2b00 <main+0x570>
    2bb0:	ba 03 00 00 00                                  	mov    edx,0x3
    2bb5:	48 8d 35 c3 34 00 00                            	lea    rsi,[rip+0x34c3]        # 607f <_IO_stdin_used+0x7f>
    2bbc:	48 89 ef                                        	mov    rdi,rbp
    2bbf:	e8 7c f5 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2bc4:	48 8b 7c 24 20                                  	mov    rdi,QWORD PTR [rsp+0x20]
    2bc9:	e8 a2 0d 00 00                                  	call   3970 <_ZN9AsmParser13ObjDumpParserD1Ev>
    2bce:	48 8b 7c 24 30                                  	mov    rdi,QWORD PTR [rsp+0x30]
    2bd3:	e8 68 f4 ff ff                                  	call   2040 <_ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev@plt>
    2bd8:	48 8b 7c 24 40                                  	mov    rdi,QWORD PTR [rsp+0x40]
    2bdd:	48 3b 7c 24 38                                  	cmp    rdi,QWORD PTR [rsp+0x38]
    2be2:	74 05                                           	je     2be9 <main+0x659>
    2be4:	e8 07 f5 ff ff                                  	call   20f0 <_ZdlPv@plt>
    2be9:	48 8b 84 24 58 04 00 00                         	mov    rax,QWORD PTR [rsp+0x458]
    2bf1:	64 48 33 04 25 28 00 00 00                      	xor    rax,QWORD PTR fs:0x28
    2bfa:	0f 85 2d 07 00 00                               	jne    332d <main+0xd9d>
    2c00:	48 81 c4 68 04 00 00                            	add    rsp,0x468
    2c07:	31 c0                                           	xor    eax,eax
    2c09:	5b                                              	pop    rbx
    2c0a:	5d                                              	pop    rbp
    2c0b:	41 5c                                           	pop    r12
    2c0d:	41 5d                                           	pop    r13
    2c0f:	41 5e                                           	pop    r14
    2c11:	41 5f                                           	pop    r15
    2c13:	c3                                              	ret    
    2c14:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    2c18:	45 31 ed                                        	xor    r13d,r13d
    2c1b:	e9 ae fc ff ff                                  	jmp    28ce <main+0x33e>
    2c20:	49 83 c4 20                                     	add    r12,0x20
    2c24:	4d 39 e5                                        	cmp    r13,r12
    2c27:	0f 85 c3 fd ff ff                               	jne    29f0 <main+0x460>
    2c2d:	e9 de fd ff ff                                  	jmp    2a10 <main+0x480>
    2c32:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    2c38:	49 83 c4 30                                     	add    r12,0x30
    2c3c:	4d 39 e5                                        	cmp    r13,r12
    2c3f:	0f 85 fb fd ff ff                               	jne    2a40 <main+0x4b0>
    2c45:	e9 16 fe ff ff                                  	jmp    2a60 <main+0x4d0>
    2c4a:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    2c50:	48 81 c3 90 00 00 00                            	add    rbx,0x90
    2c57:	48 39 5c 24 18                                  	cmp    QWORD PTR [rsp+0x18],rbx
    2c5c:	0f 85 2e fb ff ff                               	jne    2790 <main+0x200>
    2c62:	e9 35 fe ff ff                                  	jmp    2a9c <main+0x50c>
    2c67:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2c70:	48 8b 1b                                        	mov    rbx,QWORD PTR [rbx]
    2c73:	48 85 db                                        	test   rbx,rbx
    2c76:	0f 85 84 fe ff ff                               	jne    2b00 <main+0x570>
    2c7c:	e9 2f ff ff ff                                  	jmp    2bb0 <main+0x620>
    2c81:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    2c88:	ba 0d 00 00 00                                  	mov    edx,0xd
    2c8d:	48 8d 35 c5 33 00 00                            	lea    rsi,[rip+0x33c5]        # 6059 <_IO_stdin_used+0x59>
    2c94:	48 89 ef                                        	mov    rdi,rbp
    2c97:	e8 a4 f4 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2c9c:	48 8b 84 24 c0 00 00 00                         	mov    rax,QWORD PTR [rsp+0xc0]
    2ca4:	4c 8d 7c 24 60                                  	lea    r15,[rsp+0x60]
    2ca9:	4c 8b a4 24 b8 00 00 00                         	mov    r12,QWORD PTR [rsp+0xb8]
    2cb1:	4c 8d 6c 24 70                                  	lea    r13,[rsp+0x70]
    2cb6:	4c 8d 35 96 33 00 00                            	lea    r14,[rip+0x3396]        # 6053 <_IO_stdin_used+0x53>
    2cbd:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
    2cc2:	49 39 c4                                        	cmp    r12,rax
    2cc5:	74 72                                           	je     2d39 <main+0x7a9>
    2cc7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2cd0:	4c 89 6c 24 60                                  	mov    QWORD PTR [rsp+0x60],r13
    2cd5:	49 8b 54 24 08                                  	mov    rdx,QWORD PTR [r12+0x8]
    2cda:	4c 89 ff                                        	mov    rdi,r15
    2cdd:	49 8b 34 24                                     	mov    rsi,QWORD PTR [r12]
    2ce1:	48 01 f2                                        	add    rdx,rsi
    2ce4:	e8 b7 0a 00 00                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    2ce9:	ba 01 00 00 00                                  	mov    edx,0x1
    2cee:	4c 89 f6                                        	mov    rsi,r14
    2cf1:	48 89 ef                                        	mov    rdi,rbp
    2cf4:	e8 47 f4 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2cf9:	48 8b 54 24 68                                  	mov    rdx,QWORD PTR [rsp+0x68]
    2cfe:	48 8b 74 24 60                                  	mov    rsi,QWORD PTR [rsp+0x60]
    2d03:	48 89 ef                                        	mov    rdi,rbp
    2d06:	e8 35 f4 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2d0b:	48 89 c7                                        	mov    rdi,rax
    2d0e:	ba 03 00 00 00                                  	mov    edx,0x3
    2d13:	48 8d 35 50 33 00 00                            	lea    rsi,[rip+0x3350]        # 606a <_IO_stdin_used+0x6a>
    2d1a:	e8 21 f4 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2d1f:	48 8b 7c 24 60                                  	mov    rdi,QWORD PTR [rsp+0x60]
    2d24:	4c 39 ef                                        	cmp    rdi,r13
    2d27:	74 05                                           	je     2d2e <main+0x79e>
    2d29:	e8 c2 f3 ff ff                                  	call   20f0 <_ZdlPv@plt>
    2d2e:	49 83 c4 20                                     	add    r12,0x20
    2d32:	4c 39 64 24 28                                  	cmp    QWORD PTR [rsp+0x28],r12
    2d37:	75 97                                           	jne    2cd0 <main+0x740>
    2d39:	ba 02 00 00 00                                  	mov    edx,0x2
    2d3e:	48 8d 35 22 33 00 00                            	lea    rsi,[rip+0x3322]        # 6067 <_IO_stdin_used+0x67>
    2d45:	48 89 ef                                        	mov    rdi,rbp
    2d48:	e8 f3 f3 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2d4d:	e9 47 fc ff ff                                  	jmp    2999 <main+0x409>
    2d52:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    2d58:	ba 09 00 00 00                                  	mov    edx,0x9
    2d5d:	48 8d 35 e5 32 00 00                            	lea    rsi,[rip+0x32e5]        # 6049 <_IO_stdin_used+0x49>
    2d64:	48 89 ef                                        	mov    rdi,rbp
    2d67:	e8 d4 f3 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2d6c:	ba 01 00 00 00                                  	mov    edx,0x1
    2d71:	48 8d 35 db 32 00 00                            	lea    rsi,[rip+0x32db]        # 6053 <_IO_stdin_used+0x53>
    2d78:	48 89 ef                                        	mov    rdi,rbp
    2d7b:	e8 c0 f3 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2d80:	48 8b 94 24 88 00 00 00                         	mov    rdx,QWORD PTR [rsp+0x88]
    2d88:	48 8b b4 24 80 00 00 00                         	mov    rsi,QWORD PTR [rsp+0x80]
    2d90:	48 89 ef                                        	mov    rdi,rbp
    2d93:	e8 a8 f3 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2d98:	48 89 c7                                        	mov    rdi,rax
    2d9b:	ba 03 00 00 00                                  	mov    edx,0x3
    2da0:	48 8d 35 ae 32 00 00                            	lea    rsi,[rip+0x32ae]        # 6055 <_IO_stdin_used+0x55>
    2da7:	e8 94 f3 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2dac:	e9 d2 fb ff ff                                  	jmp    2983 <main+0x3f3>
    2db1:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    2db8:	ba 0d 00 00 00                                  	mov    edx,0xd
    2dbd:	48 8d 35 77 32 00 00                            	lea    rsi,[rip+0x3277]        # 603b <_IO_stdin_used+0x3b>
    2dc4:	48 89 ef                                        	mov    rdi,rbp
    2dc7:	e8 74 f3 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2dcc:	80 bc 24 08 01 00 00 00                         	cmp    BYTE PTR [rsp+0x108],0x0
    2dd4:	0f 84 d5 06 00 00                               	je     34af <main+0xf1f>
    2dda:	48 8b b4 24 00 01 00 00                         	mov    rsi,QWORD PTR [rsp+0x100]
    2de2:	48 89 ef                                        	mov    rdi,rbp
    2de5:	e8 16 f3 ff ff                                  	call   2100 <_ZNSo9_M_insertIlEERSoT_@plt>
    2dea:	48 89 c7                                        	mov    rdi,rax
    2ded:	ba 02 00 00 00                                  	mov    edx,0x2
    2df2:	48 8d 35 5d 32 00 00                            	lea    rsi,[rip+0x325d]        # 6056 <_IO_stdin_used+0x56>
    2df9:	e8 42 f3 ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    2dfe:	e9 71 fb ff ff                                  	jmp    2974 <main+0x3e4>
    2e03:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    2e08:	48 8d 84 24 e0 00 00 00                         	lea    rax,[rsp+0xe0]
    2e10:	48 8b 53 58                                     	mov    rdx,QWORD PTR [rbx+0x58]
    2e14:	48 8d bc 24 d0 00 00 00                         	lea    rdi,[rsp+0xd0]
    2e1c:	48 89 84 24 d0 00 00 00                         	mov    QWORD PTR [rsp+0xd0],rax
    2e24:	48 8b 73 50                                     	mov    rsi,QWORD PTR [rbx+0x50]
    2e28:	48 01 f2                                        	add    rdx,rsi
    2e2b:	e8 70 09 00 00                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    2e30:	8b 43 70                                        	mov    eax,DWORD PTR [rbx+0x70]
    2e33:	c6 84 24 f8 00 00 00 01                         	mov    BYTE PTR [rsp+0xf8],0x1
    2e3b:	89 84 24 f0 00 00 00                            	mov    DWORD PTR [rsp+0xf0],eax
    2e42:	e9 fb fa ff ff                                  	jmp    2942 <main+0x3b2>
    2e47:	31 c0                                           	xor    eax,eax
    2e49:	b9 12 00 00 00                                  	mov    ecx,0x12
    2e4e:	66 0f ef c0                                     	pxor   xmm0,xmm0
    2e52:	48 8b 35 7f 51 00 00                            	mov    rsi,QWORD PTR [rip+0x517f]        # 7fd8 <_ZSt3cin@GLIBCXX_3.4>
    2e59:	48 8d bc 24 90 02 00 00                         	lea    rdi,[rsp+0x290]
    2e61:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
    2e63:	48 8d 84 24 50 02 00 00                         	lea    rax,[rsp+0x250]
    2e6b:	48 8d bc 24 40 02 00 00                         	lea    rdi,[rsp+0x240]
    2e73:	48 c7 84 24 48 02 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x248],0x0
    2e7f:	48 89 84 24 40 02 00 00                         	mov    QWORD PTR [rsp+0x240],rax
    2e87:	48 8d 84 24 e8 02 00 00                         	lea    rax,[rsp+0x2e8]
    2e8f:	48 89 84 24 d8 02 00 00                         	mov    QWORD PTR [rsp+0x2d8],rax
    2e97:	48 8d 84 24 08 03 00 00                         	lea    rax,[rsp+0x308]
    2e9f:	48 89 84 24 f8 02 00 00                         	mov    QWORD PTR [rsp+0x2f8],rax
    2ea7:	48 8d 84 24 60 03 00 00                         	lea    rax,[rsp+0x360]
    2eaf:	48 89 7c 24 30                                  	mov    QWORD PTR [rsp+0x30],rdi
    2eb4:	c6 84 24 50 02 00 00 00                         	mov    BYTE PTR [rsp+0x250],0x0
    2ebc:	48 c7 84 24 e0 02 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x2e0],0x0
    2ec8:	c6 84 24 e8 02 00 00 00                         	mov    BYTE PTR [rsp+0x2e8],0x0
    2ed0:	48 c7 84 24 00 03 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x300],0x0
    2edc:	c6 84 24 08 03 00 00 00                         	mov    BYTE PTR [rsp+0x308],0x0
    2ee4:	48 c7 84 24 28 03 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x328],0x0
    2ef0:	48 89 84 24 30 03 00 00                         	mov    QWORD PTR [rsp+0x330],rax
    2ef8:	48 c7 84 24 38 03 00 00 01 00 00 00             	mov    QWORD PTR [rsp+0x338],0x1
    2f04:	48 c7 84 24 40 03 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x340],0x0
    2f10:	48 c7 84 24 48 03 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x348],0x0
    2f1c:	c7 84 24 50 03 00 00 00 00 80 3f                	mov    DWORD PTR [rsp+0x350],0x3f800000
    2f27:	48 c7 84 24 58 03 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x358],0x0
    2f33:	48 c7 84 24 60 03 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x360],0x0
    2f3f:	0f 29 84 24 60 02 00 00                         	movaps XMMWORD PTR [rsp+0x260],xmm0
    2f47:	0f 29 84 24 70 02 00 00                         	movaps XMMWORD PTR [rsp+0x270],xmm0
    2f4f:	0f 29 84 24 80 02 00 00                         	movaps XMMWORD PTR [rsp+0x280],xmm0
    2f57:	0f 11 84 24 18 03 00 00                         	movups XMMWORD PTR [rsp+0x318],xmm0
    2f5f:	e8 2c 0c 00 00                                  	call   3b90 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi>
    2f64:	48 8b 9c 24 18 03 00 00                         	mov    rbx,QWORD PTR [rsp+0x318]
    2f6c:	4c 8b ac 24 20 03 00 00                         	mov    r13,QWORD PTR [rsp+0x320]
    2f74:	4c 39 eb                                        	cmp    rbx,r13
    2f77:	0f 84 f4 02 00 00                               	je     3271 <main+0xce1>
    2f7d:	48 8d 84 24 10 01 00 00                         	lea    rax,[rsp+0x110]
    2f85:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
    2f8a:	48 8d 84 24 20 01 00 00                         	lea    rax,[rsp+0x120]
    2f92:	48 89 44 24 08                                  	mov    QWORD PTR [rsp+0x8],rax
    2f97:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    2fa0:	48 8b 44 24 08                                  	mov    rax,QWORD PTR [rsp+0x8]
    2fa5:	48 8b 53 08                                     	mov    rdx,QWORD PTR [rbx+0x8]
    2fa9:	48 8b 7c 24 20                                  	mov    rdi,QWORD PTR [rsp+0x20]
    2fae:	48 89 84 24 10 01 00 00                         	mov    QWORD PTR [rsp+0x110],rax
    2fb6:	48 8b 33                                        	mov    rsi,QWORD PTR [rbx]
    2fb9:	48 01 f2                                        	add    rdx,rsi
    2fbc:	e8 df 07 00 00                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    2fc1:	48 8b 6b 28                                     	mov    rbp,QWORD PTR [rbx+0x28]
    2fc5:	48 2b 6b 20                                     	sub    rbp,QWORD PTR [rbx+0x20]
    2fc9:	66 0f ef e4                                     	pxor   xmm4,xmm4
    2fcd:	45 31 f6                                        	xor    r14d,r14d
    2fd0:	48 89 e8                                        	mov    rax,rbp
    2fd3:	0f 29 a4 24 30 01 00 00                         	movaps XMMWORD PTR [rsp+0x130],xmm4
    2fdb:	48 b9 ab aa aa aa aa aa aa aa                   	movabs rcx,0xaaaaaaaaaaaaaaab
    2fe5:	48 c7 84 24 40 01 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x140],0x0
    2ff1:	48 c1 f8 04                                     	sar    rax,0x4
    2ff5:	48 0f af c1                                     	imul   rax,rcx
    2ff9:	48 85 c0                                        	test   rax,rax
    2ffc:	74 1e                                           	je     301c <main+0xa8c>
    2ffe:	48 b9 aa aa aa aa aa aa aa 02                   	movabs rcx,0x2aaaaaaaaaaaaaa
    3008:	48 39 c8                                        	cmp    rax,rcx
    300b:	0f 87 17 03 00 00                               	ja     3328 <main+0xd98>
    3011:	48 89 ef                                        	mov    rdi,rbp
    3014:	e8 f7 f0 ff ff                                  	call   2110 <_Znwm@plt>
    3019:	49 89 c6                                        	mov    r14,rax
    301c:	66 49 0f 6e c6                                  	movq   xmm0,r14
    3021:	4c 01 f5                                        	add    rbp,r14
    3024:	4d 89 f4                                        	mov    r12,r14
    3027:	66 0f 6c c0                                     	punpcklqdq xmm0,xmm0
    302b:	48 89 ac 24 40 01 00 00                         	mov    QWORD PTR [rsp+0x140],rbp
    3033:	0f 29 84 24 30 01 00 00                         	movaps XMMWORD PTR [rsp+0x130],xmm0
    303b:	4c 8b 7b 28                                     	mov    r15,QWORD PTR [rbx+0x28]
    303f:	48 8b 6b 20                                     	mov    rbp,QWORD PTR [rbx+0x20]
    3043:	49 39 ef                                        	cmp    r15,rbp
    3046:	74 42                                           	je     308a <main+0xafa>
    3048:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]
    3050:	49 8d 44 24 10                                  	lea    rax,[r12+0x10]
    3055:	48 8b 55 08                                     	mov    rdx,QWORD PTR [rbp+0x8]
    3059:	4c 89 e7                                        	mov    rdi,r12
    305c:	49 89 04 24                                     	mov    QWORD PTR [r12],rax
    3060:	48 8b 75 00                                     	mov    rsi,QWORD PTR [rbp+0x0]
    3064:	48 01 f2                                        	add    rdx,rsi
    3067:	e8 34 07 00 00                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    306c:	48 8b 45 20                                     	mov    rax,QWORD PTR [rbp+0x20]
    3070:	48 83 c5 30                                     	add    rbp,0x30
    3074:	49 83 c4 30                                     	add    r12,0x30
    3078:	49 89 44 24 f0                                  	mov    QWORD PTR [r12-0x10],rax
    307d:	8b 45 f8                                        	mov    eax,DWORD PTR [rbp-0x8]
    3080:	41 89 44 24 f8                                  	mov    DWORD PTR [r12-0x8],eax
    3085:	49 39 ef                                        	cmp    r15,rbp
    3088:	75 c6                                           	jne    3050 <main+0xac0>
    308a:	48 8b 6b 40                                     	mov    rbp,QWORD PTR [rbx+0x40]
    308e:	48 2b 6b 38                                     	sub    rbp,QWORD PTR [rbx+0x38]
    3092:	66 0f ef ed                                     	pxor   xmm5,xmm5
    3096:	4c 89 a4 24 38 01 00 00                         	mov    QWORD PTR [rsp+0x138],r12
    309e:	48 89 e8                                        	mov    rax,rbp
    30a1:	0f 11 ac 24 48 01 00 00                         	movups XMMWORD PTR [rsp+0x148],xmm5
    30a9:	48 c7 84 24 58 01 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x158],0x0
    30b5:	48 c1 f8 05                                     	sar    rax,0x5
    30b9:	0f 84 49 02 00 00                               	je     3308 <main+0xd78>
    30bf:	48 b9 ff ff ff ff ff ff ff 03                   	movabs rcx,0x3ffffffffffffff
    30c9:	48 39 c8                                        	cmp    rax,rcx
    30cc:	0f 87 51 02 00 00                               	ja     3323 <main+0xd93>
    30d2:	48 89 ef                                        	mov    rdi,rbp
    30d5:	e8 36 f0 ff ff                                  	call   2110 <_Znwm@plt>
    30da:	49 89 c6                                        	mov    r14,rax
    30dd:	66 49 0f 6e c6                                  	movq   xmm0,r14
    30e2:	4c 01 f5                                        	add    rbp,r14
    30e5:	4d 89 f4                                        	mov    r12,r14
    30e8:	66 0f 6c c0                                     	punpcklqdq xmm0,xmm0
    30ec:	48 89 ac 24 58 01 00 00                         	mov    QWORD PTR [rsp+0x158],rbp
    30f4:	0f 11 84 24 48 01 00 00                         	movups XMMWORD PTR [rsp+0x148],xmm0
    30fc:	4c 8b 7b 40                                     	mov    r15,QWORD PTR [rbx+0x40]
    3100:	48 8b 6b 38                                     	mov    rbp,QWORD PTR [rbx+0x38]
    3104:	49 39 ef                                        	cmp    r15,rbp
    3107:	74 30                                           	je     3139 <main+0xba9>
    3109:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    3110:	49 8d 44 24 10                                  	lea    rax,[r12+0x10]
    3115:	48 8b 55 08                                     	mov    rdx,QWORD PTR [rbp+0x8]
    3119:	4c 89 e7                                        	mov    rdi,r12
    311c:	49 89 04 24                                     	mov    QWORD PTR [r12],rax
    3120:	48 8b 75 00                                     	mov    rsi,QWORD PTR [rbp+0x0]
    3124:	48 01 f2                                        	add    rdx,rsi
    3127:	e8 74 06 00 00                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    312c:	48 83 c5 20                                     	add    rbp,0x20
    3130:	49 83 c4 20                                     	add    r12,0x20
    3134:	49 39 ef                                        	cmp    r15,rbp
    3137:	75 d7                                           	jne    3110 <main+0xb80>
    3139:	c6 84 24 88 01 00 00 00                         	mov    BYTE PTR [rsp+0x188],0x0
    3141:	80 7b 78 00                                     	cmp    BYTE PTR [rbx+0x78],0x0
    3145:	4c 89 a4 24 50 01 00 00                         	mov    QWORD PTR [rsp+0x150],r12
    314d:	0f 85 5d 01 00 00                               	jne    32b0 <main+0xd20>
    3153:	f3 0f 6f b3 80 00 00 00                         	movdqu xmm6,XMMWORD PTR [rbx+0x80]
    315b:	48 8b 94 24 18 01 00 00                         	mov    rdx,QWORD PTR [rsp+0x118]
    3163:	48 8b b4 24 10 01 00 00                         	mov    rsi,QWORD PTR [rsp+0x110]
    316b:	48 8b 3d 56 4e 00 00                            	mov    rdi,QWORD PTR [rip+0x4e56]        # 7fc8 <_ZSt4cout@GLIBCXX_3.4>
    3172:	0f 29 b4 24 90 01 00 00                         	movaps XMMWORD PTR [rsp+0x190],xmm6
    317a:	e8 c1 ef ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    317f:	48 89 c7                                        	mov    rdi,rax
    3182:	ba 01 00 00 00                                  	mov    edx,0x1
    3187:	48 8d 35 c9 2e 00 00                            	lea    rsi,[rip+0x2ec9]        # 6057 <_IO_stdin_used+0x57>
    318e:	e8 ad ef ff ff                                  	call   2140 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    3193:	80 bc 24 88 01 00 00 00                         	cmp    BYTE PTR [rsp+0x188],0x0
    319b:	74 22                                           	je     31bf <main+0xc2f>
    319d:	48 8b bc 24 60 01 00 00                         	mov    rdi,QWORD PTR [rsp+0x160]
    31a5:	48 8d 84 24 70 01 00 00                         	lea    rax,[rsp+0x170]
    31ad:	c6 84 24 88 01 00 00 00                         	mov    BYTE PTR [rsp+0x188],0x0
    31b5:	48 39 c7                                        	cmp    rdi,rax
    31b8:	74 05                                           	je     31bf <main+0xc2f>
    31ba:	e8 31 ef ff ff                                  	call   20f0 <_ZdlPv@plt>
    31bf:	4c 8b a4 24 50 01 00 00                         	mov    r12,QWORD PTR [rsp+0x150]
    31c7:	48 8b ac 24 48 01 00 00                         	mov    rbp,QWORD PTR [rsp+0x148]
    31cf:	49 39 ec                                        	cmp    r12,rbp
    31d2:	74 23                                           	je     31f7 <main+0xc67>
    31d4:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    31d8:	48 8b 7d 00                                     	mov    rdi,QWORD PTR [rbp+0x0]
    31dc:	48 8d 45 10                                     	lea    rax,[rbp+0x10]
    31e0:	48 39 c7                                        	cmp    rdi,rax
    31e3:	0f 84 07 01 00 00                               	je     32f0 <main+0xd60>
    31e9:	e8 02 ef ff ff                                  	call   20f0 <_ZdlPv@plt>
    31ee:	48 83 c5 20                                     	add    rbp,0x20
    31f2:	4c 39 e5                                        	cmp    rbp,r12
    31f5:	75 e1                                           	jne    31d8 <main+0xc48>
    31f7:	48 8b bc 24 48 01 00 00                         	mov    rdi,QWORD PTR [rsp+0x148]
    31ff:	48 85 ff                                        	test   rdi,rdi
    3202:	74 05                                           	je     3209 <main+0xc79>
    3204:	e8 e7 ee ff ff                                  	call   20f0 <_ZdlPv@plt>
    3209:	4c 8b a4 24 38 01 00 00                         	mov    r12,QWORD PTR [rsp+0x138]
    3211:	48 8b ac 24 30 01 00 00                         	mov    rbp,QWORD PTR [rsp+0x130]
    3219:	49 39 ec                                        	cmp    r12,rbp
    321c:	74 1d                                           	je     323b <main+0xcab>
    321e:	66 90                                           	xchg   ax,ax
    3220:	48 8b 7d 00                                     	mov    rdi,QWORD PTR [rbp+0x0]
    3224:	48 8d 45 10                                     	lea    rax,[rbp+0x10]
    3228:	48 39 c7                                        	cmp    rdi,rax
    322b:	74 6b                                           	je     3298 <main+0xd08>
    322d:	e8 be ee ff ff                                  	call   20f0 <_ZdlPv@plt>
    3232:	48 83 c5 30                                     	add    rbp,0x30
    3236:	4c 39 e5                                        	cmp    rbp,r12
    3239:	75 e5                                           	jne    3220 <main+0xc90>
    323b:	48 8b bc 24 30 01 00 00                         	mov    rdi,QWORD PTR [rsp+0x130]
    3243:	48 85 ff                                        	test   rdi,rdi
    3246:	74 05                                           	je     324d <main+0xcbd>
    3248:	e8 a3 ee ff ff                                  	call   20f0 <_ZdlPv@plt>
    324d:	48 8b bc 24 10 01 00 00                         	mov    rdi,QWORD PTR [rsp+0x110]
    3255:	48 3b 7c 24 08                                  	cmp    rdi,QWORD PTR [rsp+0x8]
    325a:	74 24                                           	je     3280 <main+0xcf0>
    325c:	e8 8f ee ff ff                                  	call   20f0 <_ZdlPv@plt>
    3261:	48 81 c3 90 00 00 00                            	add    rbx,0x90
    3268:	49 39 dd                                        	cmp    r13,rbx
    326b:	0f 85 2f fd ff ff                               	jne    2fa0 <main+0xa10>
    3271:	48 8b 7c 24 30                                  	mov    rdi,QWORD PTR [rsp+0x30]
    3276:	e8 f5 06 00 00                                  	call   3970 <_ZN9AsmParser13ObjDumpParserD1Ev>
    327b:	e9 69 f9 ff ff                                  	jmp    2be9 <main+0x659>
    3280:	48 81 c3 90 00 00 00                            	add    rbx,0x90
    3287:	49 39 dd                                        	cmp    r13,rbx
    328a:	0f 85 10 fd ff ff                               	jne    2fa0 <main+0xa10>
    3290:	eb df                                           	jmp    3271 <main+0xce1>
    3292:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    3298:	48 83 c5 30                                     	add    rbp,0x30
    329c:	49 39 ec                                        	cmp    r12,rbp
    329f:	0f 85 7b ff ff ff                               	jne    3220 <main+0xc90>
    32a5:	eb 94                                           	jmp    323b <main+0xcab>
    32a7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    32b0:	48 8d 84 24 70 01 00 00                         	lea    rax,[rsp+0x170]
    32b8:	48 8b 53 58                                     	mov    rdx,QWORD PTR [rbx+0x58]
    32bc:	48 8d bc 24 60 01 00 00                         	lea    rdi,[rsp+0x160]
    32c4:	48 89 84 24 60 01 00 00                         	mov    QWORD PTR [rsp+0x160],rax
    32cc:	48 8b 73 50                                     	mov    rsi,QWORD PTR [rbx+0x50]
    32d0:	48 01 f2                                        	add    rdx,rsi
    32d3:	e8 c8 04 00 00                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    32d8:	8b 43 70                                        	mov    eax,DWORD PTR [rbx+0x70]
    32db:	c6 84 24 88 01 00 00 01                         	mov    BYTE PTR [rsp+0x188],0x1
    32e3:	89 84 24 80 01 00 00                            	mov    DWORD PTR [rsp+0x180],eax
    32ea:	e9 64 fe ff ff                                  	jmp    3153 <main+0xbc3>
    32ef:	90                                              	nop
    32f0:	48 83 c5 20                                     	add    rbp,0x20
    32f4:	49 39 ec                                        	cmp    r12,rbp
    32f7:	0f 85 db fe ff ff                               	jne    31d8 <main+0xc48>
    32fd:	e9 f5 fe ff ff                                  	jmp    31f7 <main+0xc67>
    3302:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    3308:	45 31 f6                                        	xor    r14d,r14d
    330b:	e9 cd fd ff ff                                  	jmp    30dd <main+0xb4d>
    3310:	48 83 ca ff                                     	or     rdx,0xffffffffffffffff
    3314:	e9 d3 f2 ff ff                                  	jmp    25ec <main+0x5c>
    3319:	e8 32 ed ff ff                                  	call   2050 <_ZSt17__throw_bad_allocv@plt>
    331e:	e8 2d ed ff ff                                  	call   2050 <_ZSt17__throw_bad_allocv@plt>
    3323:	e8 28 ed ff ff                                  	call   2050 <_ZSt17__throw_bad_allocv@plt>
    3328:	e8 23 ed ff ff                                  	call   2050 <_ZSt17__throw_bad_allocv@plt>
    332d:	e8 fe ed ff ff                                  	call   2130 <__stack_chk_fail@plt>
    3332:	48 89 c3                                        	mov    rbx,rax
    3335:	eb 21                                           	jmp    3358 <main+0xdc8>
    3337:	48 89 c7                                        	mov    rdi,rax
    333a:	eb 3f                                           	jmp    337b <main+0xdeb>
    333c:	48 89 c3                                        	mov    rbx,rax
    333f:	eb 49                                           	jmp    338a <main+0xdfa>
    3341:	e8 7a ee ff ff                                  	call   21c0 <__cxa_end_catch@plt>
    3346:	48 8b bc 24 48 01 00 00                         	mov    rdi,QWORD PTR [rsp+0x148]
    334e:	48 85 ff                                        	test   rdi,rdi
    3351:	74 05                                           	je     3358 <main+0xdc8>
    3353:	e8 98 ed ff ff                                  	call   20f0 <_ZdlPv@plt>
    3358:	48 8d bc 24 30 01 00 00                         	lea    rdi,[rsp+0x130]
    3360:	e8 1d ef ff ff                                  	call   2282 <_ZNSt6vectorIN9AsmParser9asm_labelESaIS1_EED1Ev>
    3365:	48 8b bc 24 10 01 00 00                         	mov    rdi,QWORD PTR [rsp+0x110]
    336d:	48 3b 7c 24 08                                  	cmp    rdi,QWORD PTR [rsp+0x8]
    3372:	74 20                                           	je     3394 <main+0xe04>
    3374:	e8 77 ed ff ff                                  	call   20f0 <_ZdlPv@plt>
    3379:	eb 19                                           	jmp    3394 <main+0xe04>
    337b:	e8 e0 ec ff ff                                  	call   2060 <__cxa_begin_catch@plt>
    3380:	4d 39 f4                                        	cmp    r12,r14
    3383:	75 21                                           	jne    33a6 <main+0xe16>
    3385:	e8 06 ee ff ff                                  	call   2190 <__cxa_rethrow@plt>
    338a:	48 8b 7c 24 20                                  	mov    rdi,QWORD PTR [rsp+0x20]
    338f:	e8 0c 05 00 00                                  	call   38a0 <_ZN9AsmParser8asm_lineD1Ev>
    3394:	48 8b 7c 24 30                                  	mov    rdi,QWORD PTR [rsp+0x30]
    3399:	e8 d2 05 00 00                                  	call   3970 <_ZN9AsmParser13ObjDumpParserD1Ev>
    339e:	48 89 df                                        	mov    rdi,rbx
    33a1:	e8 4a ee ff ff                                  	call   21f0 <_Unwind_Resume@plt>
    33a6:	49 8b 3e                                        	mov    rdi,QWORD PTR [r14]
    33a9:	49 8d 46 10                                     	lea    rax,[r14+0x10]
    33ad:	48 39 c7                                        	cmp    rdi,rax
    33b0:	74 05                                           	je     33b7 <main+0xe27>
    33b2:	e8 39 ed ff ff                                  	call   20f0 <_ZdlPv@plt>
    33b7:	49 83 c6 20                                     	add    r14,0x20
    33bb:	eb c3                                           	jmp    3380 <main+0xdf0>
    33bd:	48 89 c3                                        	mov    rbx,rax
    33c0:	e9 7c ff ff ff                                  	jmp    3341 <main+0xdb1>
    33c5:	48 89 c3                                        	mov    rbx,rax
    33c8:	e9 5b 01 00 00                                  	jmp    3528 <main+0xf98>
    33cd:	48 89 c3                                        	mov    rbx,rax
    33d0:	e9 8b 00 00 00                                  	jmp    3460 <main+0xed0>
    33d5:	48 89 c7                                        	mov    rdi,rax
    33d8:	e9 1d 01 00 00                                  	jmp    34fa <main+0xf6a>
    33dd:	48 89 c3                                        	mov    rbx,rax
    33e0:	eb b2                                           	jmp    3394 <main+0xe04>
    33e2:	48 89 c3                                        	mov    rbx,rax
    33e5:	eb 28                                           	jmp    340f <main+0xe7f>
    33e7:	48 89 c3                                        	mov    rbx,rax
    33ea:	eb 19                                           	jmp    3405 <main+0xe75>
    33ec:	48 8b 7c 24 60                                  	mov    rdi,QWORD PTR [rsp+0x60]
    33f1:	4c 39 ef                                        	cmp    rdi,r13
    33f4:	74 05                                           	je     33fb <main+0xe6b>
    33f6:	e8 f5 ec ff ff                                  	call   20f0 <_ZdlPv@plt>
    33fb:	48 8b 7c 24 10                                  	mov    rdi,QWORD PTR [rsp+0x10]
    3400:	e8 9b 04 00 00                                  	call   38a0 <_ZN9AsmParser8asm_lineD1Ev>
    3405:	48 8b 7c 24 20                                  	mov    rdi,QWORD PTR [rsp+0x20]
    340a:	e8 61 05 00 00                                  	call   3970 <_ZN9AsmParser13ObjDumpParserD1Ev>
    340f:	48 8b 7c 24 30                                  	mov    rdi,QWORD PTR [rsp+0x30]
    3414:	48 89 dd                                        	mov    rbp,rbx
    3417:	e8 24 ec ff ff                                  	call   2040 <_ZNSt13basic_fstreamIcSt11char_traitsIcEED1Ev@plt>
    341c:	48 8b 7c 24 40                                  	mov    rdi,QWORD PTR [rsp+0x40]
    3421:	48 3b 7c 24 38                                  	cmp    rdi,QWORD PTR [rsp+0x38]
    3426:	74 05                                           	je     342d <main+0xe9d>
    3428:	e8 c3 ec ff ff                                  	call   20f0 <_ZdlPv@plt>
    342d:	48 89 ef                                        	mov    rdi,rbp
    3430:	e8 bb ed ff ff                                  	call   21f0 <_Unwind_Resume@plt>
    3435:	48 89 c5                                        	mov    rbp,rax
    3438:	eb e2                                           	jmp    341c <main+0xe8c>
    343a:	48 89 c3                                        	mov    rbx,rax
    343d:	eb bc                                           	jmp    33fb <main+0xe6b>
    343f:	48 89 c3                                        	mov    rbx,rax
    3442:	eb 29                                           	jmp    346d <main+0xedd>
    3444:	48 89 c7                                        	mov    rdi,rax
    3447:	eb 3a                                           	jmp    3483 <main+0xef3>
    3449:	e8 72 ed ff ff                                  	call   21c0 <__cxa_end_catch@plt>
    344e:	48 8b bc 24 b8 00 00 00                         	mov    rdi,QWORD PTR [rsp+0xb8]
    3456:	48 85 ff                                        	test   rdi,rdi
    3459:	74 05                                           	je     3460 <main+0xed0>
    345b:	e8 90 ec ff ff                                  	call   20f0 <_ZdlPv@plt>
    3460:	48 8d bc 24 a0 00 00 00                         	lea    rdi,[rsp+0xa0]
    3468:	e8 15 ee ff ff                                  	call   2282 <_ZNSt6vectorIN9AsmParser9asm_labelESaIS1_EED1Ev>
    346d:	48 8b bc 24 80 00 00 00                         	mov    rdi,QWORD PTR [rsp+0x80]
    3475:	48 3b 7c 24 08                                  	cmp    rdi,QWORD PTR [rsp+0x8]
    347a:	74 89                                           	je     3405 <main+0xe75>
    347c:	e8 6f ec ff ff                                  	call   20f0 <_ZdlPv@plt>
    3481:	eb 82                                           	jmp    3405 <main+0xe75>
    3483:	e8 d8 eb ff ff                                  	call   2060 <__cxa_begin_catch@plt>
    3488:	4d 39 ee                                        	cmp    r14,r13
    348b:	75 05                                           	jne    3492 <main+0xf02>
    348d:	e8 fe ec ff ff                                  	call   2190 <__cxa_rethrow@plt>
    3492:	49 8b 7d 00                                     	mov    rdi,QWORD PTR [r13+0x0]
    3496:	49 8d 45 10                                     	lea    rax,[r13+0x10]
    349a:	48 39 c7                                        	cmp    rdi,rax
    349d:	74 05                                           	je     34a4 <main+0xf14>
    349f:	e8 4c ec ff ff                                  	call   20f0 <_ZdlPv@plt>
    34a4:	49 83 c5 20                                     	add    r13,0x20
    34a8:	eb de                                           	jmp    3488 <main+0xef8>
    34aa:	48 89 c3                                        	mov    rbx,rax
    34ad:	eb 9a                                           	jmp    3449 <main+0xeb9>
    34af:	bf 08 00 00 00                                  	mov    edi,0x8
    34b4:	e8 c7 eb ff ff                                  	call   2080 <__cxa_allocate_exception@plt>
    34b9:	48 8d 15 d0 03 00 00                            	lea    rdx,[rip+0x3d0]        # 3890 <_ZNSt19bad_optional_accessD1Ev>
    34c0:	48 8d 35 b9 47 00 00                            	lea    rsi,[rip+0x47b9]        # 7c80 <_ZTVN10__cxxabiv120__si_class_type_infoE@CXXABI_1.3>
    34c7:	48 89 c7                                        	mov    rdi,rax
    34ca:	48 8d 05 97 47 00 00                            	lea    rax,[rip+0x4797]        # 7c68 <_ZTVSt19bad_optional_access+0x10>
    34d1:	48 89 07                                        	mov    QWORD PTR [rdi],rax
    34d4:	e8 f7 ec ff ff                                  	call   21d0 <__cxa_throw@plt>
    34d9:	48 89 c7                                        	mov    rdi,rax
    34dc:	eb 08                                           	jmp    34e6 <main+0xf56>
    34de:	48 89 c3                                        	mov    rbx,rax
    34e1:	e9 7f fe ff ff                                  	jmp    3365 <main+0xdd5>
    34e6:	e8 75 eb ff ff                                  	call   2060 <__cxa_begin_catch@plt>
    34eb:	4d 39 ee                                        	cmp    r14,r13
    34ee:	75 19                                           	jne    3509 <main+0xf79>
    34f0:	e8 9b ec ff ff                                  	call   2190 <__cxa_rethrow@plt>
    34f5:	e9 45 ff ff ff                                  	jmp    343f <main+0xeaf>
    34fa:	e8 61 eb ff ff                                  	call   2060 <__cxa_begin_catch@plt>
    34ff:	4d 39 e6                                        	cmp    r14,r12
    3502:	75 4b                                           	jne    354f <main+0xfbf>
    3504:	e8 87 ec ff ff                                  	call   2190 <__cxa_rethrow@plt>
    3509:	49 8b 3e                                        	mov    rdi,QWORD PTR [r14]
    350c:	49 8d 46 10                                     	lea    rax,[r14+0x10]
    3510:	48 39 c7                                        	cmp    rdi,rax
    3513:	74 05                                           	je     351a <main+0xf8a>
    3515:	e8 d6 eb ff ff                                  	call   20f0 <_ZdlPv@plt>
    351a:	49 83 c6 30                                     	add    r14,0x30
    351e:	eb cb                                           	jmp    34eb <main+0xf5b>
    3520:	48 89 c3                                        	mov    rbx,rax
    3523:	e9 c4 fe ff ff                                  	jmp    33ec <main+0xe5c>
    3528:	48 8d bc 24 48 01 00 00                         	lea    rdi,[rsp+0x148]
    3530:	e8 0b ed ff ff                                  	call   2240 <_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev>
    3535:	e9 1e fe ff ff                                  	jmp    3358 <main+0xdc8>
    353a:	48 89 c3                                        	mov    rbx,rax
    353d:	48 8d bc 24 b8 00 00 00                         	lea    rdi,[rsp+0xb8]
    3545:	e8 f6 ec ff ff                                  	call   2240 <_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED1Ev>
    354a:	e9 11 ff ff ff                                  	jmp    3460 <main+0xed0>
    354f:	49 8b 3e                                        	mov    rdi,QWORD PTR [r14]
    3552:	49 8d 46 10                                     	lea    rax,[r14+0x10]
    3556:	48 39 c7                                        	cmp    rdi,rax
    3559:	74 05                                           	je     3560 <main+0xfd0>
    355b:	e8 90 eb ff ff                                  	call   20f0 <_ZdlPv@plt>
    3560:	49 83 c6 30                                     	add    r14,0x30
    3564:	eb 99                                           	jmp    34ff <main+0xf6f>
    3566:	48 89 c3                                        	mov    rbx,rax
    3569:	eb 05                                           	jmp    3570 <main+0xfe0>
    356b:	48 89 c3                                        	mov    rbx,rax
    356e:	eb 20                                           	jmp    3590 <main+0x1000>
    3570:	e8 4b ec ff ff                                  	call   21c0 <__cxa_end_catch@plt>
    3575:	48 8b bc 24 a0 00 00 00                         	mov    rdi,QWORD PTR [rsp+0xa0]
    357d:	48 85 ff                                        	test   rdi,rdi
    3580:	0f 84 e7 fe ff ff                               	je     346d <main+0xedd>
    3586:	e8 65 eb ff ff                                  	call   20f0 <_ZdlPv@plt>
    358b:	e9 dd fe ff ff                                  	jmp    346d <main+0xedd>
    3590:	e8 2b ec ff ff                                  	call   21c0 <__cxa_end_catch@plt>
    3595:	48 8b bc 24 30 01 00 00                         	mov    rdi,QWORD PTR [rsp+0x130]
    359d:	48 85 ff                                        	test   rdi,rdi
    35a0:	0f 84 bf fd ff ff                               	je     3365 <main+0xdd5>
    35a6:	e8 45 eb ff ff                                  	call   20f0 <_ZdlPv@plt>
    35ab:	e9 b5 fd ff ff                                  	jmp    3365 <main+0xdd5>

00000000000035b0 <_start>:
    35b0:	f3 0f 1e fa                                     	endbr64 
    35b4:	31 ed                                           	xor    ebp,ebp
    35b6:	49 89 d1                                        	mov    r9,rdx
    35b9:	5e                                              	pop    rsi
    35ba:	48 89 e2                                        	mov    rdx,rsp
    35bd:	48 83 e4 f0                                     	and    rsp,0xfffffffffffffff0
    35c1:	50                                              	push   rax
    35c2:	54                                              	push   rsp
    35c3:	4c 8d 05 46 1a 00 00                            	lea    r8,[rip+0x1a46]        # 5010 <__libc_csu_fini>
    35ca:	48 8d 0d cf 19 00 00                            	lea    rcx,[rip+0x19cf]        # 4fa0 <__libc_csu_init>
    35d1:	48 8d 3d b8 ef ff ff                            	lea    rdi,[rip+0xffffffffffffefb8]        # 2590 <main>
    35d8:	ff 15 02 4a 00 00                               	call   QWORD PTR [rip+0x4a02]        # 7fe0 <__libc_start_main@GLIBC_2.2.5>
    35de:	f4                                              	hlt    
    35df:	90                                              	nop

00000000000035e0 <deregister_tm_clones>:
    35e0:	48 8d 3d 31 4a 00 00                            	lea    rdi,[rip+0x4a31]        # 8018 <__TMC_END__>
    35e7:	48 8d 05 2a 4a 00 00                            	lea    rax,[rip+0x4a2a]        # 8018 <__TMC_END__>
    35ee:	48 39 f8                                        	cmp    rax,rdi
    35f1:	74 15                                           	je     3608 <deregister_tm_clones+0x28>
    35f3:	48 8b 05 d6 49 00 00                            	mov    rax,QWORD PTR [rip+0x49d6]        # 7fd0 <_ITM_deregisterTMCloneTable>
    35fa:	48 85 c0                                        	test   rax,rax
    35fd:	74 09                                           	je     3608 <deregister_tm_clones+0x28>
    35ff:	ff e0                                           	jmp    rax
    3601:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    3608:	c3                                              	ret    
    3609:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]

0000000000003610 <register_tm_clones>:
    3610:	48 8d 3d 01 4a 00 00                            	lea    rdi,[rip+0x4a01]        # 8018 <__TMC_END__>
    3617:	48 8d 35 fa 49 00 00                            	lea    rsi,[rip+0x49fa]        # 8018 <__TMC_END__>
    361e:	48 29 fe                                        	sub    rsi,rdi
    3621:	48 89 f0                                        	mov    rax,rsi
    3624:	48 c1 ee 3f                                     	shr    rsi,0x3f
    3628:	48 c1 f8 03                                     	sar    rax,0x3
    362c:	48 01 c6                                        	add    rsi,rax
    362f:	48 d1 fe                                        	sar    rsi,1
    3632:	74 14                                           	je     3648 <register_tm_clones+0x38>
    3634:	48 8b 05 b5 49 00 00                            	mov    rax,QWORD PTR [rip+0x49b5]        # 7ff0 <_ITM_registerTMCloneTable>
    363b:	48 85 c0                                        	test   rax,rax
    363e:	74 08                                           	je     3648 <register_tm_clones+0x38>
    3640:	ff e0                                           	jmp    rax
    3642:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    3648:	c3                                              	ret    
    3649:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]

0000000000003650 <__do_global_dtors_aux>:
    3650:	f3 0f 1e fa                                     	endbr64 
    3654:	80 3d bd 49 00 00 00                            	cmp    BYTE PTR [rip+0x49bd],0x0        # 8018 <__TMC_END__>
    365b:	75 2b                                           	jne    3688 <__do_global_dtors_aux+0x38>
    365d:	55                                              	push   rbp
    365e:	48 83 3d 5a 49 00 00 00                         	cmp    QWORD PTR [rip+0x495a],0x0        # 7fc0 <__cxa_finalize@GLIBC_2.2.5>
    3666:	48 89 e5                                        	mov    rbp,rsp
    3669:	74 0c                                           	je     3677 <__do_global_dtors_aux+0x27>
    366b:	48 8b 3d 96 49 00 00                            	mov    rdi,QWORD PTR [rip+0x4996]        # 8008 <__dso_handle>
    3672:	e8 b9 eb ff ff                                  	call   2230 <__cxa_finalize@plt>
    3677:	e8 64 ff ff ff                                  	call   35e0 <deregister_tm_clones>
    367c:	c6 05 95 49 00 00 01                            	mov    BYTE PTR [rip+0x4995],0x1        # 8018 <__TMC_END__>
    3683:	5d                                              	pop    rbp
    3684:	c3                                              	ret    
    3685:	0f 1f 00                                        	nop    DWORD PTR [rax]
    3688:	c3                                              	ret    
    3689:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]

0000000000003690 <frame_dummy>:
    3690:	f3 0f 1e fa                                     	endbr64 
    3694:	e9 77 ff ff ff                                  	jmp    3610 <register_tm_clones>
    3699:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]

00000000000036a0 <_ZNSt22_Optional_payload_baseIN9AsmParser10asm_sourceEEC2EbOS2_>:
    36a0:	80 7a 28 00                                     	cmp    BYTE PTR [rdx+0x28],0x0
    36a4:	c6 47 28 00                                     	mov    BYTE PTR [rdi+0x28],0x0
    36a8:	74 3f                                           	je     36e9 <_ZNSt22_Optional_payload_baseIN9AsmParser10asm_sourceEEC2EbOS2_+0x49>
    36aa:	48 8d 47 10                                     	lea    rax,[rdi+0x10]
    36ae:	48 89 07                                        	mov    QWORD PTR [rdi],rax
    36b1:	48 8b 0a                                        	mov    rcx,QWORD PTR [rdx]
    36b4:	48 8d 42 10                                     	lea    rax,[rdx+0x10]
    36b8:	48 39 c1                                        	cmp    rcx,rax
    36bb:	74 33                                           	je     36f0 <_ZNSt22_Optional_payload_baseIN9AsmParser10asm_sourceEEC2EbOS2_+0x50>
    36bd:	48 89 0f                                        	mov    QWORD PTR [rdi],rcx
    36c0:	48 8b 4a 10                                     	mov    rcx,QWORD PTR [rdx+0x10]
    36c4:	48 89 4f 10                                     	mov    QWORD PTR [rdi+0x10],rcx
    36c8:	48 8b 4a 08                                     	mov    rcx,QWORD PTR [rdx+0x8]
    36cc:	48 89 02                                        	mov    QWORD PTR [rdx],rax
    36cf:	8b 42 20                                        	mov    eax,DWORD PTR [rdx+0x20]
    36d2:	48 c7 42 08 00 00 00 00                         	mov    QWORD PTR [rdx+0x8],0x0
    36da:	48 89 4f 08                                     	mov    QWORD PTR [rdi+0x8],rcx
    36de:	89 47 20                                        	mov    DWORD PTR [rdi+0x20],eax
    36e1:	c6 42 10 00                                     	mov    BYTE PTR [rdx+0x10],0x0
    36e5:	c6 47 28 01                                     	mov    BYTE PTR [rdi+0x28],0x1
    36e9:	c3                                              	ret    
    36ea:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    36f0:	f3 0f 6f 42 10                                  	movdqu xmm0,XMMWORD PTR [rdx+0x10]
    36f5:	0f 11 47 10                                     	movups XMMWORD PTR [rdi+0x10],xmm0
    36f9:	eb cd                                           	jmp    36c8 <_ZNSt22_Optional_payload_baseIN9AsmParser10asm_sourceEEC2EbOS2_+0x28>
    36fb:	90                                              	nop
    36fc:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]

0000000000003700 <_ZN9AsmParser13ObjDumpParser7addressEv>:
    3700:	4c 8b 8f b8 00 00 00                            	mov    r9,QWORD PTR [rdi+0xb8]
    3707:	48 8b b7 c0 00 00 00                            	mov    rsi,QWORD PTR [rdi+0xc0]
    370e:	45 31 c0                                        	xor    r8d,r8d
    3711:	4c 01 ce                                        	add    rsi,r9
    3714:	4c 39 ce                                        	cmp    rsi,r9
    3717:	74 34                                           	je     374d <_ZN9AsmParser13ObjDumpParser7addressEv+0x4d>
    3719:	31 c9                                           	xor    ecx,ecx
    371b:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    3720:	0f b6 46 ff                                     	movzx  eax,BYTE PTR [rsi-0x1]
    3724:	44 8d 50 9f                                     	lea    r10d,[rax-0x61]
    3728:	8d 50 d0                                        	lea    edx,[rax-0x30]
    372b:	41 80 fa 05                                     	cmp    r10b,0x5
    372f:	76 3f                                           	jbe    3770 <_ZN9AsmParser13ObjDumpParser7addressEv+0x70>
    3731:	80 fa 09                                        	cmp    dl,0x9
    3734:	77 17                                           	ja     374d <_ZN9AsmParser13ObjDumpParser7addressEv+0x4d>
    3736:	0f be d2                                        	movsx  edx,dl
    3739:	48 83 ee 01                                     	sub    rsi,0x1
    373d:	d3 e2                                           	shl    edx,cl
    373f:	83 c1 04                                        	add    ecx,0x4
    3742:	48 63 d2                                        	movsxd rdx,edx
    3745:	49 01 d0                                        	add    r8,rdx
    3748:	49 39 f1                                        	cmp    r9,rsi
    374b:	75 d3                                           	jne    3720 <_ZN9AsmParser13ObjDumpParser7addressEv+0x20>
    374d:	4c 89 87 80 00 00 00                            	mov    QWORD PTR [rdi+0x80],r8
    3754:	c6 87 88 00 00 00 01                            	mov    BYTE PTR [rdi+0x88],0x1
    375b:	48 c7 87 c0 00 00 00 00 00 00 00                	mov    QWORD PTR [rdi+0xc0],0x0
    3766:	41 c6 01 00                                     	mov    BYTE PTR [r9],0x0
    376a:	c3                                              	ret    
    376b:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    3770:	80 fa 09                                        	cmp    dl,0x9
    3773:	76 c1                                           	jbe    3736 <_ZN9AsmParser13ObjDumpParser7addressEv+0x36>
    3775:	83 e8 57                                        	sub    eax,0x57
    3778:	48 83 ee 01                                     	sub    rsi,0x1
    377c:	0f be c0                                        	movsx  eax,al
    377f:	d3 e0                                           	shl    eax,cl
    3781:	83 c1 04                                        	add    ecx,0x4
    3784:	48 98                                           	cdqe   
    3786:	49 01 c0                                        	add    r8,rax
    3789:	49 39 f1                                        	cmp    r9,rsi
    378c:	75 92                                           	jne    3720 <_ZN9AsmParser13ObjDumpParser7addressEv+0x20>
    378e:	eb bd                                           	jmp    374d <_ZN9AsmParser13ObjDumpParser7addressEv+0x4d>

0000000000003790 <_ZNKSt19bad_optional_access4whatEv>:
    3790:	48 8d 05 6d 28 00 00                            	lea    rax,[rip+0x286d]        # 6004 <_IO_stdin_used+0x4>
    3797:	c3                                              	ret    
    3798:	0f 1f 84 00 00 00 00 00                         	nop    DWORD PTR [rax+rax*1+0x0]

00000000000037a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>:
    37a0:	41 54                                           	push   r12
    37a2:	49 89 d4                                        	mov    r12,rdx
    37a5:	55                                              	push   rbp
    37a6:	48 89 f5                                        	mov    rbp,rsi
    37a9:	53                                              	push   rbx
    37aa:	48 89 fb                                        	mov    rbx,rdi
    37ad:	48 83 ec 10                                     	sub    rsp,0x10
    37b1:	64 48 8b 04 25 28 00 00 00                      	mov    rax,QWORD PTR fs:0x28
    37ba:	48 89 44 24 08                                  	mov    QWORD PTR [rsp+0x8],rax
    37bf:	31 c0                                           	xor    eax,eax
    37c1:	48 85 d2                                        	test   rdx,rdx
    37c4:	74 05                                           	je     37cb <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0+0x2b>
    37c6:	48 85 f6                                        	test   rsi,rsi
    37c9:	74 79                                           	je     3844 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0+0xa4>
    37cb:	49 29 ec                                        	sub    r12,rbp
    37ce:	4c 89 24 24                                     	mov    QWORD PTR [rsp],r12
    37d2:	49 83 fc 0f                                     	cmp    r12,0xf
    37d6:	77 41                                           	ja     3819 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0+0x79>
    37d8:	48 8b 13                                        	mov    rdx,QWORD PTR [rbx]
    37db:	48 89 d7                                        	mov    rdi,rdx
    37de:	49 83 fc 01                                     	cmp    r12,0x1
    37e2:	75 2e                                           	jne    3812 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0+0x72>
    37e4:	0f b6 45 00                                     	movzx  eax,BYTE PTR [rbp+0x0]
    37e8:	88 02                                           	mov    BYTE PTR [rdx],al
    37ea:	48 8b 13                                        	mov    rdx,QWORD PTR [rbx]
    37ed:	48 8b 04 24                                     	mov    rax,QWORD PTR [rsp]
    37f1:	48 89 43 08                                     	mov    QWORD PTR [rbx+0x8],rax
    37f5:	c6 04 02 00                                     	mov    BYTE PTR [rdx+rax*1],0x0
    37f9:	48 8b 44 24 08                                  	mov    rax,QWORD PTR [rsp+0x8]
    37fe:	64 48 33 04 25 28 00 00 00                      	xor    rax,QWORD PTR fs:0x28
    3807:	75 47                                           	jne    3850 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0+0xb0>
    3809:	48 83 c4 10                                     	add    rsp,0x10
    380d:	5b                                              	pop    rbx
    380e:	5d                                              	pop    rbp
    380f:	41 5c                                           	pop    r12
    3811:	c3                                              	ret    
    3812:	4d 85 e4                                        	test   r12,r12
    3815:	74 d6                                           	je     37ed <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0+0x4d>
    3817:	eb 1b                                           	jmp    3834 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0+0x94>
    3819:	48 89 df                                        	mov    rdi,rbx
    381c:	48 89 e6                                        	mov    rsi,rsp
    381f:	31 d2                                           	xor    edx,edx
    3821:	e8 da e9 ff ff                                  	call   2200 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@plt>
    3826:	48 89 03                                        	mov    QWORD PTR [rbx],rax
    3829:	48 89 c7                                        	mov    rdi,rax
    382c:	48 8b 04 24                                     	mov    rax,QWORD PTR [rsp]
    3830:	48 89 43 10                                     	mov    QWORD PTR [rbx+0x10],rax
    3834:	4c 89 e2                                        	mov    rdx,r12
    3837:	48 89 ee                                        	mov    rsi,rbp
    383a:	e8 91 e8 ff ff                                  	call   20d0 <memcpy@plt>
    383f:	48 8b 13                                        	mov    rdx,QWORD PTR [rbx]
    3842:	eb a9                                           	jmp    37ed <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0+0x4d>
    3844:	48 8d 3d 3d 28 00 00                            	lea    rdi,[rip+0x283d]        # 6088 <_IO_stdin_used+0x88>
    384b:	e8 70 e8 ff ff                                  	call   20c0 <_ZSt19__throw_logic_errorPKc@plt>
    3850:	e8 db e8 ff ff                                  	call   2130 <__stack_chk_fail@plt>
    3855:	90                                              	nop
    3856:	66 2e 0f 1f 84 00 00 00 00 00                   	nop    WORD PTR cs:[rax+rax*1+0x0]

0000000000003860 <_ZNSt19bad_optional_accessD0Ev>:
    3860:	48 8d 05 01 44 00 00                            	lea    rax,[rip+0x4401]        # 7c68 <_ZTVSt19bad_optional_access+0x10>
    3867:	55                                              	push   rbp
    3868:	48 89 fd                                        	mov    rbp,rdi
    386b:	48 89 07                                        	mov    QWORD PTR [rdi],rax
    386e:	e8 ad e9 ff ff                                  	call   2220 <_ZNSt9exceptionD2Ev@plt>
    3873:	48 89 ef                                        	mov    rdi,rbp
    3876:	be 08 00 00 00                                  	mov    esi,0x8
    387b:	5d                                              	pop    rbp
    387c:	e9 9f e8 ff ff                                  	jmp    2120 <_ZdlPvm@plt>
    3881:	90                                              	nop
    3882:	66 66 2e 0f 1f 84 00 00 00 00 00                	data16 nop WORD PTR cs:[rax+rax*1+0x0]
    388d:	0f 1f 00                                        	nop    DWORD PTR [rax]

0000000000003890 <_ZNSt19bad_optional_accessD1Ev>:
    3890:	48 8d 05 d1 43 00 00                            	lea    rax,[rip+0x43d1]        # 7c68 <_ZTVSt19bad_optional_access+0x10>
    3897:	48 89 07                                        	mov    QWORD PTR [rdi],rax
    389a:	e9 81 e9 ff ff                                  	jmp    2220 <_ZNSt9exceptionD2Ev@plt>
    389f:	90                                              	nop

00000000000038a0 <_ZN9AsmParser8asm_lineD1Ev>:
    38a0:	41 54                                           	push   r12
    38a2:	55                                              	push   rbp
    38a3:	53                                              	push   rbx
    38a4:	80 7f 78 00                                     	cmp    BYTE PTR [rdi+0x78],0x0
    38a8:	48 89 fb                                        	mov    rbx,rdi
    38ab:	74 16                                           	je     38c3 <_ZN9AsmParser8asm_lineD1Ev+0x23>
    38ad:	c6 47 78 00                                     	mov    BYTE PTR [rdi+0x78],0x0
    38b1:	48 8b 7f 50                                     	mov    rdi,QWORD PTR [rdi+0x50]
    38b5:	48 8d 43 60                                     	lea    rax,[rbx+0x60]
    38b9:	48 39 c7                                        	cmp    rdi,rax
    38bc:	74 05                                           	je     38c3 <_ZN9AsmParser8asm_lineD1Ev+0x23>
    38be:	e8 2d e8 ff ff                                  	call   20f0 <_ZdlPv@plt>
    38c3:	4c 8b 63 40                                     	mov    r12,QWORD PTR [rbx+0x40]
    38c7:	48 8b 6b 38                                     	mov    rbp,QWORD PTR [rbx+0x38]
    38cb:	49 39 ec                                        	cmp    r12,rbp
    38ce:	74 1b                                           	je     38eb <_ZN9AsmParser8asm_lineD1Ev+0x4b>
    38d0:	48 8b 7d 00                                     	mov    rdi,QWORD PTR [rbp+0x0]
    38d4:	48 8d 45 10                                     	lea    rax,[rbp+0x10]
    38d8:	48 39 c7                                        	cmp    rdi,rax
    38db:	74 73                                           	je     3950 <_ZN9AsmParser8asm_lineD1Ev+0xb0>
    38dd:	e8 0e e8 ff ff                                  	call   20f0 <_ZdlPv@plt>
    38e2:	48 83 c5 20                                     	add    rbp,0x20
    38e6:	4c 39 e5                                        	cmp    rbp,r12
    38e9:	75 e5                                           	jne    38d0 <_ZN9AsmParser8asm_lineD1Ev+0x30>
    38eb:	48 8b 7b 38                                     	mov    rdi,QWORD PTR [rbx+0x38]
    38ef:	48 85 ff                                        	test   rdi,rdi
    38f2:	74 05                                           	je     38f9 <_ZN9AsmParser8asm_lineD1Ev+0x59>
    38f4:	e8 f7 e7 ff ff                                  	call   20f0 <_ZdlPv@plt>
    38f9:	4c 8b 63 28                                     	mov    r12,QWORD PTR [rbx+0x28]
    38fd:	48 8b 6b 20                                     	mov    rbp,QWORD PTR [rbx+0x20]
    3901:	49 39 ec                                        	cmp    r12,rbp
    3904:	74 25                                           	je     392b <_ZN9AsmParser8asm_lineD1Ev+0x8b>
    3906:	66 2e 0f 1f 84 00 00 00 00 00                   	nop    WORD PTR cs:[rax+rax*1+0x0]
    3910:	48 8b 7d 00                                     	mov    rdi,QWORD PTR [rbp+0x0]
    3914:	48 8d 45 10                                     	lea    rax,[rbp+0x10]
    3918:	48 39 c7                                        	cmp    rdi,rax
    391b:	74 43                                           	je     3960 <_ZN9AsmParser8asm_lineD1Ev+0xc0>
    391d:	e8 ce e7 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3922:	48 83 c5 30                                     	add    rbp,0x30
    3926:	49 39 ec                                        	cmp    r12,rbp
    3929:	75 e5                                           	jne    3910 <_ZN9AsmParser8asm_lineD1Ev+0x70>
    392b:	48 8b 7b 20                                     	mov    rdi,QWORD PTR [rbx+0x20]
    392f:	48 85 ff                                        	test   rdi,rdi
    3932:	74 05                                           	je     3939 <_ZN9AsmParser8asm_lineD1Ev+0x99>
    3934:	e8 b7 e7 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3939:	48 8b 3b                                        	mov    rdi,QWORD PTR [rbx]
    393c:	48 83 c3 10                                     	add    rbx,0x10
    3940:	48 39 df                                        	cmp    rdi,rbx
    3943:	74 26                                           	je     396b <_ZN9AsmParser8asm_lineD1Ev+0xcb>
    3945:	5b                                              	pop    rbx
    3946:	5d                                              	pop    rbp
    3947:	41 5c                                           	pop    r12
    3949:	e9 a2 e7 ff ff                                  	jmp    20f0 <_ZdlPv@plt>
    394e:	66 90                                           	xchg   ax,ax
    3950:	48 83 c5 20                                     	add    rbp,0x20
    3954:	49 39 ec                                        	cmp    r12,rbp
    3957:	0f 85 73 ff ff ff                               	jne    38d0 <_ZN9AsmParser8asm_lineD1Ev+0x30>
    395d:	eb 8c                                           	jmp    38eb <_ZN9AsmParser8asm_lineD1Ev+0x4b>
    395f:	90                                              	nop
    3960:	48 83 c5 30                                     	add    rbp,0x30
    3964:	49 39 ec                                        	cmp    r12,rbp
    3967:	75 a7                                           	jne    3910 <_ZN9AsmParser8asm_lineD1Ev+0x70>
    3969:	eb c0                                           	jmp    392b <_ZN9AsmParser8asm_lineD1Ev+0x8b>
    396b:	5b                                              	pop    rbx
    396c:	5d                                              	pop    rbp
    396d:	41 5c                                           	pop    r12
    396f:	c3                                              	ret    

0000000000003970 <_ZN9AsmParser13ObjDumpParserD1Ev>:
    3970:	41 56                                           	push   r14
    3972:	41 55                                           	push   r13
    3974:	41 54                                           	push   r12
    3976:	55                                              	push   rbp
    3977:	48 89 fd                                        	mov    rbp,rdi
    397a:	53                                              	push   rbx
    397b:	4c 8b a7 00 01 00 00                            	mov    r12,QWORD PTR [rdi+0x100]
    3982:	4d 85 e4                                        	test   r12,r12
    3985:	75 1e                                           	jne    39a5 <_ZN9AsmParser13ObjDumpParserD1Ev+0x35>
    3987:	eb 3c                                           	jmp    39c5 <_ZN9AsmParser13ObjDumpParserD1Ev+0x55>
    3989:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    3990:	e8 5b e7 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3995:	4c 89 e7                                        	mov    rdi,r12
    3998:	e8 53 e7 ff ff                                  	call   20f0 <_ZdlPv@plt>
    399d:	48 85 db                                        	test   rbx,rbx
    39a0:	74 23                                           	je     39c5 <_ZN9AsmParser13ObjDumpParserD1Ev+0x55>
    39a2:	49 89 dc                                        	mov    r12,rbx
    39a5:	49 8b 7c 24 08                                  	mov    rdi,QWORD PTR [r12+0x8]
    39aa:	49 8d 44 24 18                                  	lea    rax,[r12+0x18]
    39af:	49 8b 1c 24                                     	mov    rbx,QWORD PTR [r12]
    39b3:	48 39 c7                                        	cmp    rdi,rax
    39b6:	75 d8                                           	jne    3990 <_ZN9AsmParser13ObjDumpParserD1Ev+0x20>
    39b8:	4c 89 e7                                        	mov    rdi,r12
    39bb:	e8 30 e7 ff ff                                  	call   20f0 <_ZdlPv@plt>
    39c0:	48 85 db                                        	test   rbx,rbx
    39c3:	75 dd                                           	jne    39a2 <_ZN9AsmParser13ObjDumpParserD1Ev+0x32>
    39c5:	48 8b 85 f8 00 00 00                            	mov    rax,QWORD PTR [rbp+0xf8]
    39cc:	48 8b bd f0 00 00 00                            	mov    rdi,QWORD PTR [rbp+0xf0]
    39d3:	31 f6                                           	xor    esi,esi
    39d5:	48 8d 14 c5 00 00 00 00                         	lea    rdx,[rax*8+0x0]
    39dd:	e8 ce e6 ff ff                                  	call   20b0 <memset@plt>
    39e2:	48 8b bd f0 00 00 00                            	mov    rdi,QWORD PTR [rbp+0xf0]
    39e9:	48 8d 85 20 01 00 00                            	lea    rax,[rbp+0x120]
    39f0:	48 c7 85 08 01 00 00 00 00 00 00                	mov    QWORD PTR [rbp+0x108],0x0
    39fb:	48 c7 85 00 01 00 00 00 00 00 00                	mov    QWORD PTR [rbp+0x100],0x0
    3a06:	48 39 c7                                        	cmp    rdi,rax
    3a09:	74 05                                           	je     3a10 <_ZN9AsmParser13ObjDumpParserD1Ev+0xa0>
    3a0b:	e8 e0 e6 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3a10:	4c 8b ad e0 00 00 00                            	mov    r13,QWORD PTR [rbp+0xe0]
    3a17:	48 8b 9d d8 00 00 00                            	mov    rbx,QWORD PTR [rbp+0xd8]
    3a1e:	49 39 dd                                        	cmp    r13,rbx
    3a21:	0f 84 cb 00 00 00                               	je     3af2 <_ZN9AsmParser13ObjDumpParserD1Ev+0x182>
    3a27:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    3a30:	80 7b 78 00                                     	cmp    BYTE PTR [rbx+0x78],0x0
    3a34:	74 16                                           	je     3a4c <_ZN9AsmParser13ObjDumpParserD1Ev+0xdc>
    3a36:	48 8b 7b 50                                     	mov    rdi,QWORD PTR [rbx+0x50]
    3a3a:	48 8d 43 60                                     	lea    rax,[rbx+0x60]
    3a3e:	c6 43 78 00                                     	mov    BYTE PTR [rbx+0x78],0x0
    3a42:	48 39 c7                                        	cmp    rdi,rax
    3a45:	74 05                                           	je     3a4c <_ZN9AsmParser13ObjDumpParserD1Ev+0xdc>
    3a47:	e8 a4 e6 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3a4c:	4c 8b 73 40                                     	mov    r14,QWORD PTR [rbx+0x40]
    3a50:	4c 8b 63 38                                     	mov    r12,QWORD PTR [rbx+0x38]
    3a54:	4d 39 e6                                        	cmp    r14,r12
    3a57:	74 2b                                           	je     3a84 <_ZN9AsmParser13ObjDumpParserD1Ev+0x114>
    3a59:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    3a60:	49 8b 3c 24                                     	mov    rdi,QWORD PTR [r12]
    3a64:	49 8d 44 24 10                                  	lea    rax,[r12+0x10]
    3a69:	48 39 c7                                        	cmp    rdi,rax
    3a6c:	0f 84 06 01 00 00                               	je     3b78 <_ZN9AsmParser13ObjDumpParserD1Ev+0x208>
    3a72:	e8 79 e6 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3a77:	49 83 c4 20                                     	add    r12,0x20
    3a7b:	4d 39 f4                                        	cmp    r12,r14
    3a7e:	75 e0                                           	jne    3a60 <_ZN9AsmParser13ObjDumpParserD1Ev+0xf0>
    3a80:	4c 8b 63 38                                     	mov    r12,QWORD PTR [rbx+0x38]
    3a84:	4d 85 e4                                        	test   r12,r12
    3a87:	74 08                                           	je     3a91 <_ZN9AsmParser13ObjDumpParserD1Ev+0x121>
    3a89:	4c 89 e7                                        	mov    rdi,r12
    3a8c:	e8 5f e6 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3a91:	4c 8b 73 28                                     	mov    r14,QWORD PTR [rbx+0x28]
    3a95:	4c 8b 63 20                                     	mov    r12,QWORD PTR [rbx+0x20]
    3a99:	4d 39 e6                                        	cmp    r14,r12
    3a9c:	74 26                                           	je     3ac4 <_ZN9AsmParser13ObjDumpParserD1Ev+0x154>
    3a9e:	66 90                                           	xchg   ax,ax
    3aa0:	49 8b 3c 24                                     	mov    rdi,QWORD PTR [r12]
    3aa4:	49 8d 44 24 10                                  	lea    rax,[r12+0x10]
    3aa9:	48 39 c7                                        	cmp    rdi,rax
    3aac:	0f 84 ae 00 00 00                               	je     3b60 <_ZN9AsmParser13ObjDumpParserD1Ev+0x1f0>
    3ab2:	e8 39 e6 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3ab7:	49 83 c4 30                                     	add    r12,0x30
    3abb:	4d 39 e6                                        	cmp    r14,r12
    3abe:	75 e0                                           	jne    3aa0 <_ZN9AsmParser13ObjDumpParserD1Ev+0x130>
    3ac0:	4c 8b 63 20                                     	mov    r12,QWORD PTR [rbx+0x20]
    3ac4:	4d 85 e4                                        	test   r12,r12
    3ac7:	74 08                                           	je     3ad1 <_ZN9AsmParser13ObjDumpParserD1Ev+0x161>
    3ac9:	4c 89 e7                                        	mov    rdi,r12
    3acc:	e8 1f e6 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3ad1:	48 8b 3b                                        	mov    rdi,QWORD PTR [rbx]
    3ad4:	48 8d 43 10                                     	lea    rax,[rbx+0x10]
    3ad8:	48 39 c7                                        	cmp    rdi,rax
    3adb:	74 6b                                           	je     3b48 <_ZN9AsmParser13ObjDumpParserD1Ev+0x1d8>
    3add:	e8 0e e6 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3ae2:	48 81 c3 90 00 00 00                            	add    rbx,0x90
    3ae9:	4c 39 eb                                        	cmp    rbx,r13
    3aec:	0f 85 3e ff ff ff                               	jne    3a30 <_ZN9AsmParser13ObjDumpParserD1Ev+0xc0>
    3af2:	48 8b bd d8 00 00 00                            	mov    rdi,QWORD PTR [rbp+0xd8]
    3af9:	48 85 ff                                        	test   rdi,rdi
    3afc:	74 05                                           	je     3b03 <_ZN9AsmParser13ObjDumpParserD1Ev+0x193>
    3afe:	e8 ed e5 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3b03:	48 8b bd b8 00 00 00                            	mov    rdi,QWORD PTR [rbp+0xb8]
    3b0a:	48 8d 85 c8 00 00 00                            	lea    rax,[rbp+0xc8]
    3b11:	48 39 c7                                        	cmp    rdi,rax
    3b14:	74 05                                           	je     3b1b <_ZN9AsmParser13ObjDumpParserD1Ev+0x1ab>
    3b16:	e8 d5 e5 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3b1b:	48 8b bd 98 00 00 00                            	mov    rdi,QWORD PTR [rbp+0x98]
    3b22:	48 8d 85 a8 00 00 00                            	lea    rax,[rbp+0xa8]
    3b29:	48 39 c7                                        	cmp    rdi,rax
    3b2c:	74 05                                           	je     3b33 <_ZN9AsmParser13ObjDumpParserD1Ev+0x1c3>
    3b2e:	e8 bd e5 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3b33:	5b                                              	pop    rbx
    3b34:	48 89 ef                                        	mov    rdi,rbp
    3b37:	5d                                              	pop    rbp
    3b38:	41 5c                                           	pop    r12
    3b3a:	41 5d                                           	pop    r13
    3b3c:	41 5e                                           	pop    r14
    3b3e:	e9 5d fd ff ff                                  	jmp    38a0 <_ZN9AsmParser8asm_lineD1Ev>
    3b43:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    3b48:	48 81 c3 90 00 00 00                            	add    rbx,0x90
    3b4f:	49 39 dd                                        	cmp    r13,rbx
    3b52:	0f 85 d8 fe ff ff                               	jne    3a30 <_ZN9AsmParser13ObjDumpParserD1Ev+0xc0>
    3b58:	eb 98                                           	jmp    3af2 <_ZN9AsmParser13ObjDumpParserD1Ev+0x182>
    3b5a:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    3b60:	49 83 c4 30                                     	add    r12,0x30
    3b64:	4d 39 e6                                        	cmp    r14,r12
    3b67:	0f 85 33 ff ff ff                               	jne    3aa0 <_ZN9AsmParser13ObjDumpParserD1Ev+0x130>
    3b6d:	e9 4e ff ff ff                                  	jmp    3ac0 <_ZN9AsmParser13ObjDumpParserD1Ev+0x150>
    3b72:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    3b78:	49 83 c4 20                                     	add    r12,0x20
    3b7c:	4d 39 e6                                        	cmp    r14,r12
    3b7f:	0f 85 db fe ff ff                               	jne    3a60 <_ZN9AsmParser13ObjDumpParserD1Ev+0xf0>
    3b85:	e9 f6 fe ff ff                                  	jmp    3a80 <_ZN9AsmParser13ObjDumpParserD1Ev+0x110>
    3b8a:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]

0000000000003b90 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi>:
    3b90:	41 57                                           	push   r15
    3b92:	41 56                                           	push   r14
    3b94:	41 55                                           	push   r13
    3b96:	41 54                                           	push   r12
    3b98:	55                                              	push   rbp
    3b99:	53                                              	push   rbx
    3b9a:	48 89 fb                                        	mov    rbx,rdi
    3b9d:	48 81 ec 08 01 00 00                            	sub    rsp,0x108
    3ba4:	48 89 74 24 08                                  	mov    QWORD PTR [rsp+0x8],rsi
    3ba9:	48 8d 6c 24 5f                                  	lea    rbp,[rsp+0x5f]
    3bae:	64 48 8b 04 25 28 00 00 00                      	mov    rax,QWORD PTR fs:0x28
    3bb7:	48 89 84 24 f8 00 00 00                         	mov    QWORD PTR [rsp+0xf8],rax
    3bbf:	31 c0                                           	xor    eax,eax
    3bc1:	48 8d 87 00 01 00 00                            	lea    rax,[rdi+0x100]
    3bc8:	c6 87 92 00 00 00 01                            	mov    BYTE PTR [rdi+0x92],0x1
    3bcf:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
    3bd4:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    3bd8:	48 8b 7c 24 08                                  	mov    rdi,QWORD PTR [rsp+0x8]
    3bdd:	48 89 ee                                        	mov    rsi,rbp
    3be0:	e8 9b e5 ff ff                                  	call   2180 <_ZNSi3getERc@plt>
    3be5:	48 8b 10                                        	mov    rdx,QWORD PTR [rax]
    3be8:	48 8b 52 e8                                     	mov    rdx,QWORD PTR [rdx-0x18]
    3bec:	f6 44 10 20 05                                  	test   BYTE PTR [rax+rdx*1+0x20],0x5
    3bf1:	0f 85 19 02 00 00                               	jne    3e10 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x280>
    3bf7:	44 0f b6 64 24 5f                               	movzx  r12d,BYTE PTR [rsp+0x5f]
    3bfd:	41 80 fc 0d                                     	cmp    r12b,0xd
    3c01:	74 d5                                           	je     3bd8 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x48>
    3c03:	41 80 fc 0a                                     	cmp    r12b,0xa
    3c07:	0f 84 2c 02 00 00                               	je     3e39 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x2a9>
    3c0d:	80 bb 92 00 00 00 00                            	cmp    BYTE PTR [rbx+0x92],0x0
    3c14:	74 72                                           	je     3c88 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xf8>
    3c16:	41 80 fc 3a                                     	cmp    r12b,0x3a
    3c1a:	0f 84 ba 05 00 00                               	je     41da <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x64a>
    3c20:	41 80 fc 20                                     	cmp    r12b,0x20
    3c24:	0f 84 80 05 00 00                               	je     41aa <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x61a>
    3c2a:	41 80 fc 09                                     	cmp    r12b,0x9
    3c2e:	0f 84 76 05 00 00                               	je     41aa <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x61a>
    3c34:	4c 8b b3 c0 00 00 00                            	mov    r14,QWORD PTR [rbx+0xc0]
    3c3b:	48 8b 83 b8 00 00 00                            	mov    rax,QWORD PTR [rbx+0xb8]
    3c42:	48 8d bb b8 00 00 00                            	lea    rdi,[rbx+0xb8]
    3c49:	48 8d 93 c8 00 00 00                            	lea    rdx,[rbx+0xc8]
    3c50:	4d 8d 6e 01                                     	lea    r13,[r14+0x1]
    3c54:	48 39 d0                                        	cmp    rax,rdx
    3c57:	74 71                                           	je     3cca <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x13a>
    3c59:	48 8b 93 c8 00 00 00                            	mov    rdx,QWORD PTR [rbx+0xc8]
    3c60:	49 39 d5                                        	cmp    r13,rdx
    3c63:	77 73                                           	ja     3cd8 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x148>
    3c65:	46 88 24 30                                     	mov    BYTE PTR [rax+r14*1],r12b
    3c69:	48 8b 83 b8 00 00 00                            	mov    rax,QWORD PTR [rbx+0xb8]
    3c70:	4c 89 ab c0 00 00 00                            	mov    QWORD PTR [rbx+0xc0],r13
    3c77:	42 c6 04 28 00                                  	mov    BYTE PTR [rax+r13*1],0x0
    3c7c:	e9 57 ff ff ff                                  	jmp    3bd8 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x48>
    3c81:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    3c88:	80 bb 93 00 00 00 00                            	cmp    BYTE PTR [rbx+0x93],0x0
    3c8f:	74 6f                                           	je     3d00 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x170>
    3c91:	48 8d bb b8 00 00 00                            	lea    rdi,[rbx+0xb8]
    3c98:	41 80 fc 3a                                     	cmp    r12b,0x3a
    3c9c:	0f 84 ef 07 00 00                               	je     4491 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x901>
    3ca2:	41 80 fc 20                                     	cmp    r12b,0x20
    3ca6:	0f 84 14 05 00 00                               	je     41c0 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x630>
    3cac:	4c 8b b3 c0 00 00 00                            	mov    r14,QWORD PTR [rbx+0xc0]
    3cb3:	48 8b 83 b8 00 00 00                            	mov    rax,QWORD PTR [rbx+0xb8]
    3cba:	48 8d 93 c8 00 00 00                            	lea    rdx,[rbx+0xc8]
    3cc1:	4d 8d 6e 01                                     	lea    r13,[r14+0x1]
    3cc5:	48 39 d0                                        	cmp    rax,rdx
    3cc8:	75 8f                                           	jne    3c59 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xc9>
    3cca:	ba 0f 00 00 00                                  	mov    edx,0xf
    3ccf:	49 39 d5                                        	cmp    r13,rdx
    3cd2:	76 91                                           	jbe    3c65 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xd5>
    3cd4:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    3cd8:	41 b8 01 00 00 00                               	mov    r8d,0x1
    3cde:	31 c9                                           	xor    ecx,ecx
    3ce0:	31 d2                                           	xor    edx,edx
    3ce2:	4c 89 f6                                        	mov    rsi,r14
    3ce5:	e8 26 e5 ff ff                                  	call   2210 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm@plt>
    3cea:	48 8b 83 b8 00 00 00                            	mov    rax,QWORD PTR [rbx+0xb8]
    3cf1:	e9 6f ff ff ff                                  	jmp    3c65 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xd5>
    3cf6:	66 2e 0f 1f 84 00 00 00 00 00                   	nop    WORD PTR cs:[rax+rax*1+0x0]
    3d00:	80 bb 94 00 00 00 00                            	cmp    BYTE PTR [rbx+0x94],0x0
    3d07:	0f 84 27 ff ff ff                               	je     3c34 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xa4>
    3d0d:	41 80 fc 20                                     	cmp    r12b,0x20
    3d11:	74 0a                                           	je     3d1d <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x18d>
    3d13:	41 80 fc 09                                     	cmp    r12b,0x9
    3d17:	0f 85 d8 04 00 00                               	jne    41f5 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x665>
    3d1d:	4c 8b b3 c0 00 00 00                            	mov    r14,QWORD PTR [rbx+0xc0]
    3d24:	4d 85 f6                                        	test   r14,r14
    3d27:	0f 84 ab fe ff ff                               	je     3bd8 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x48>
    3d2d:	48 8b 83 b8 00 00 00                            	mov    rax,QWORD PTR [rbx+0xb8]
    3d34:	42 80 7c 30 ff 20                               	cmp    BYTE PTR [rax+r14*1-0x1],0x20
    3d3a:	0f 85 02 ff ff ff                               	jne    3c42 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xb2>
    3d40:	4c 8d 64 24 70                                  	lea    r12,[rsp+0x70]
    3d45:	49 89 c7                                        	mov    r15,rax
    3d48:	4a 8d 04 30                                     	lea    rax,[rax+r14*1]
    3d4c:	48 c7 44 24 68 00 00 00 00                      	mov    QWORD PTR [rsp+0x68],0x0
    3d55:	4c 89 64 24 60                                  	mov    QWORD PTR [rsp+0x60],r12
    3d5a:	c6 44 24 70 00                                  	mov    BYTE PTR [rsp+0x70],0x0
    3d5f:	48 89 44 24 10                                  	mov    QWORD PTR [rsp+0x10],rax
    3d64:	eb 45                                           	jmp    3dab <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x21b>
    3d66:	49 8d 45 01                                     	lea    rax,[r13+0x1]
    3d6a:	48 89 44 24 18                                  	mov    QWORD PTR [rsp+0x18],rax
    3d6f:	4c 39 64 24 60                                  	cmp    QWORD PTR [rsp+0x60],r12
    3d74:	0f 84 88 0f 00 00                               	je     4d02 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1172>
    3d7a:	48 8b 44 24 70                                  	mov    rax,QWORD PTR [rsp+0x70]
    3d7f:	48 39 44 24 18                                  	cmp    QWORD PTR [rsp+0x18],rax
    3d84:	0f 87 a7 0e 00 00                               	ja     4c31 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x10a1>
    3d8a:	48 8b 44 24 60                                  	mov    rax,QWORD PTR [rsp+0x60]
    3d8f:	46 88 34 28                                     	mov    BYTE PTR [rax+r13*1],r14b
    3d93:	49 8d 45 01                                     	lea    rax,[r13+0x1]
    3d97:	48 89 44 24 68                                  	mov    QWORD PTR [rsp+0x68],rax
    3d9c:	48 8b 44 24 60                                  	mov    rax,QWORD PTR [rsp+0x60]
    3da1:	42 c6 44 28 01 00                               	mov    BYTE PTR [rax+r13*1+0x1],0x0
    3da7:	49 83 c7 01                                     	add    r15,0x1
    3dab:	4c 3b 7c 24 10                                  	cmp    r15,QWORD PTR [rsp+0x10]
    3db0:	0f 84 97 0e 00 00                               	je     4c4d <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x10bd>
    3db6:	45 0f b6 37                                     	movzx  r14d,BYTE PTR [r15]
    3dba:	4c 8b 6c 24 68                                  	mov    r13,QWORD PTR [rsp+0x68]
    3dbf:	41 80 fe 20                                     	cmp    r14b,0x20
    3dc3:	75 a1                                           	jne    3d66 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1d6>
    3dc5:	4d 85 ed                                        	test   r13,r13
    3dc8:	74 dd                                           	je     3da7 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x217>
    3dca:	4c 8b 73 40                                     	mov    r14,QWORD PTR [rbx+0x40]
    3dce:	4c 3b 73 48                                     	cmp    r14,QWORD PTR [rbx+0x48]
    3dd2:	0f 84 7d 0f 00 00                               	je     4d55 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x11c5>
    3dd8:	49 8d 46 10                                     	lea    rax,[r14+0x10]
    3ddc:	48 8b 54 24 68                                  	mov    rdx,QWORD PTR [rsp+0x68]
    3de1:	4c 89 f7                                        	mov    rdi,r14
    3de4:	49 89 06                                        	mov    QWORD PTR [r14],rax
    3de7:	48 8b 74 24 60                                  	mov    rsi,QWORD PTR [rsp+0x60]
    3dec:	48 01 f2                                        	add    rdx,rsi
    3def:	e8 ac f9 ff ff                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    3df4:	48 83 43 40 20                                  	add    QWORD PTR [rbx+0x40],0x20
    3df9:	48 c7 44 24 68 00 00 00 00                      	mov    QWORD PTR [rsp+0x68],0x0
    3e02:	48 8b 44 24 60                                  	mov    rax,QWORD PTR [rsp+0x60]
    3e07:	c6 00 00                                        	mov    BYTE PTR [rax],0x0
    3e0a:	eb 9b                                           	jmp    3da7 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x217>
    3e0c:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    3e10:	48 8b 84 24 f8 00 00 00                         	mov    rax,QWORD PTR [rsp+0xf8]
    3e18:	64 48 33 04 25 28 00 00 00                      	xor    rax,QWORD PTR fs:0x28
    3e21:	0f 85 e5 10 00 00                               	jne    4f0c <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x137c>
    3e27:	48 81 c4 08 01 00 00                            	add    rsp,0x108
    3e2e:	5b                                              	pop    rbx
    3e2f:	5d                                              	pop    rbp
    3e30:	41 5c                                           	pop    r12
    3e32:	41 5d                                           	pop    r13
    3e34:	41 5e                                           	pop    r14
    3e36:	41 5f                                           	pop    r15
    3e38:	c3                                              	ret    
    3e39:	48 8d 83 b8 00 00 00                            	lea    rax,[rbx+0xb8]
    3e40:	48 89 df                                        	mov    rdi,rbx
    3e43:	48 89 c6                                        	mov    rsi,rax
    3e46:	48 89 44 24 10                                  	mov    QWORD PTR [rsp+0x10],rax
    3e4b:	e8 50 e2 ff ff                                  	call   20a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_@plt>
    3e50:	48 83 7b 08 00                                  	cmp    QWORD PTR [rbx+0x8],0x0
    3e55:	0f 85 c7 03 00 00                               	jne    4222 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x692>
    3e5b:	31 c0                                           	xor    eax,eax
    3e5d:	66 0f ef c0                                     	pxor   xmm0,xmm0
    3e61:	4c 8d 64 24 70                                  	lea    r12,[rsp+0x70]
    3e66:	b9 10 00 00 00                                  	mov    ecx,0x10
    3e6b:	48 8d bc 24 b0 00 00 00                         	lea    rdi,[rsp+0xb0]
    3e73:	48 c7 43 08 00 00 00 00                         	mov    QWORD PTR [rbx+0x8],0x0
    3e7b:	f3 ab                                           	rep stos DWORD PTR es:[rdi],eax
    3e7d:	48 8b 03                                        	mov    rax,QWORD PTR [rbx]
    3e80:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [rsp+0x80],xmm0
    3e88:	0f 29 84 24 90 00 00 00                         	movaps XMMWORD PTR [rsp+0x90],xmm0
    3e90:	4c 89 64 24 60                                  	mov    QWORD PTR [rsp+0x60],r12
    3e95:	c6 44 24 70 00                                  	mov    BYTE PTR [rsp+0x70],0x0
    3e9a:	0f 29 84 24 a0 00 00 00                         	movaps XMMWORD PTR [rsp+0xa0],xmm0
    3ea2:	c6 00 00                                        	mov    BYTE PTR [rax],0x0
    3ea5:	48 8b 44 24 60                                  	mov    rax,QWORD PTR [rsp+0x60]
    3eaa:	48 c7 44 24 68 00 00 00 00                      	mov    QWORD PTR [rsp+0x68],0x0
    3eb3:	c6 00 00                                        	mov    BYTE PTR [rax],0x0
    3eb6:	4c 8b 73 20                                     	mov    r14,QWORD PTR [rbx+0x20]
    3eba:	66 0f 6f 8c 24 80 00 00 00                      	movdqa xmm1,XMMWORD PTR [rsp+0x80]
    3ec3:	4c 8b 6b 28                                     	mov    r13,QWORD PTR [rbx+0x28]
    3ec7:	0f 29 84 24 80 00 00 00                         	movaps XMMWORD PTR [rsp+0x80],xmm0
    3ecf:	48 8b 84 24 90 00 00 00                         	mov    rax,QWORD PTR [rsp+0x90]
    3ed7:	4d 89 f7                                        	mov    r15,r14
    3eda:	48 c7 84 24 90 00 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0x90],0x0
    3ee6:	0f 29 4b 20                                     	movaps XMMWORD PTR [rbx+0x20],xmm1
    3eea:	48 89 43 30                                     	mov    QWORD PTR [rbx+0x30],rax
    3eee:	4d 39 ee                                        	cmp    r14,r13
    3ef1:	74 23                                           	je     3f16 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x386>
    3ef3:	0f 1f 44 00 00                                  	nop    DWORD PTR [rax+rax*1+0x0]
    3ef8:	49 8b 3f                                        	mov    rdi,QWORD PTR [r15]
    3efb:	49 8d 47 10                                     	lea    rax,[r15+0x10]
    3eff:	48 39 c7                                        	cmp    rdi,rax
    3f02:	0f 84 d0 01 00 00                               	je     40d8 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x548>
    3f08:	e8 e3 e1 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3f0d:	49 83 c7 30                                     	add    r15,0x30
    3f11:	4d 39 ef                                        	cmp    r15,r13
    3f14:	75 e2                                           	jne    3ef8 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x368>
    3f16:	4d 85 f6                                        	test   r14,r14
    3f19:	74 08                                           	je     3f23 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x393>
    3f1b:	4c 89 f7                                        	mov    rdi,r14
    3f1e:	e8 cd e1 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3f23:	4c 8b 73 38                                     	mov    r14,QWORD PTR [rbx+0x38]
    3f27:	48 8b 84 24 a8 00 00 00                         	mov    rax,QWORD PTR [rsp+0xa8]
    3f2f:	66 0f ef c0                                     	pxor   xmm0,xmm0
    3f33:	48 c7 84 24 a8 00 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0xa8],0x0
    3f3f:	f3 0f 6f 94 24 98 00 00 00                      	movdqu xmm2,XMMWORD PTR [rsp+0x98]
    3f48:	4c 8b 6b 40                                     	mov    r13,QWORD PTR [rbx+0x40]
    3f4c:	0f 11 84 24 98 00 00 00                         	movups XMMWORD PTR [rsp+0x98],xmm0
    3f54:	48 89 43 48                                     	mov    QWORD PTR [rbx+0x48],rax
    3f58:	4d 89 f7                                        	mov    r15,r14
    3f5b:	0f 11 53 38                                     	movups XMMWORD PTR [rbx+0x38],xmm2
    3f5f:	4d 39 ee                                        	cmp    r14,r13
    3f62:	74 22                                           	je     3f86 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x3f6>
    3f64:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    3f68:	49 8b 3f                                        	mov    rdi,QWORD PTR [r15]
    3f6b:	49 8d 47 10                                     	lea    rax,[r15+0x10]
    3f6f:	48 39 c7                                        	cmp    rdi,rax
    3f72:	0f 84 78 01 00 00                               	je     40f0 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x560>
    3f78:	e8 73 e1 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3f7d:	49 83 c7 20                                     	add    r15,0x20
    3f81:	4d 39 ef                                        	cmp    r15,r13
    3f84:	75 e2                                           	jne    3f68 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x3d8>
    3f86:	4d 85 f6                                        	test   r14,r14
    3f89:	74 08                                           	je     3f93 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x403>
    3f8b:	4c 89 f7                                        	mov    rdi,r14
    3f8e:	e8 5d e1 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3f93:	80 7b 78 00                                     	cmp    BYTE PTR [rbx+0x78],0x0
    3f97:	0f b6 84 24 d8 00 00 00                         	movzx  eax,BYTE PTR [rsp+0xd8]
    3f9f:	0f 84 5d 01 00 00                               	je     4102 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x572>
    3fa5:	48 8b 7b 50                                     	mov    rdi,QWORD PTR [rbx+0x50]
    3fa9:	48 8d 53 60                                     	lea    rdx,[rbx+0x60]
    3fad:	84 c0                                           	test   al,al
    3faf:	0f 85 3f 04 00 00                               	jne    43f4 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x864>
    3fb5:	c6 43 78 00                                     	mov    BYTE PTR [rbx+0x78],0x0
    3fb9:	48 39 d7                                        	cmp    rdi,rdx
    3fbc:	74 05                                           	je     3fc3 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x433>
    3fbe:	e8 2d e1 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3fc3:	66 0f 6f 9c 24 e0 00 00 00                      	movdqa xmm3,XMMWORD PTR [rsp+0xe0]
    3fcc:	80 bc 24 d8 00 00 00 00                         	cmp    BYTE PTR [rsp+0xd8],0x0
    3fd4:	0f 29 9b 80 00 00 00                            	movaps XMMWORD PTR [rbx+0x80],xmm3
    3fdb:	74 22                                           	je     3fff <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x46f>
    3fdd:	48 8b bc 24 b0 00 00 00                         	mov    rdi,QWORD PTR [rsp+0xb0]
    3fe5:	48 8d 84 24 c0 00 00 00                         	lea    rax,[rsp+0xc0]
    3fed:	c6 84 24 d8 00 00 00 00                         	mov    BYTE PTR [rsp+0xd8],0x0
    3ff5:	48 39 c7                                        	cmp    rdi,rax
    3ff8:	74 05                                           	je     3fff <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x46f>
    3ffa:	e8 f1 e0 ff ff                                  	call   20f0 <_ZdlPv@plt>
    3fff:	4c 8b ac 24 a0 00 00 00                         	mov    r13,QWORD PTR [rsp+0xa0]
    4007:	4c 8b b4 24 98 00 00 00                         	mov    r14,QWORD PTR [rsp+0x98]
    400f:	4d 39 f5                                        	cmp    r13,r14
    4012:	74 22                                           	je     4036 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x4a6>
    4014:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]
    4018:	49 8b 3e                                        	mov    rdi,QWORD PTR [r14]
    401b:	49 8d 46 10                                     	lea    rax,[r14+0x10]
    401f:	48 39 c7                                        	cmp    rdi,rax
    4022:	0f 84 70 01 00 00                               	je     4198 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x608>
    4028:	e8 c3 e0 ff ff                                  	call   20f0 <_ZdlPv@plt>
    402d:	49 83 c6 20                                     	add    r14,0x20
    4031:	4d 39 ee                                        	cmp    r14,r13
    4034:	75 e2                                           	jne    4018 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x488>
    4036:	48 8b bc 24 98 00 00 00                         	mov    rdi,QWORD PTR [rsp+0x98]
    403e:	48 85 ff                                        	test   rdi,rdi
    4041:	74 05                                           	je     4048 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x4b8>
    4043:	e8 a8 e0 ff ff                                  	call   20f0 <_ZdlPv@plt>
    4048:	4c 8b ac 24 88 00 00 00                         	mov    r13,QWORD PTR [rsp+0x88]
    4050:	4c 8b b4 24 80 00 00 00                         	mov    r14,QWORD PTR [rsp+0x80]
    4058:	4d 39 f5                                        	cmp    r13,r14
    405b:	74 21                                           	je     407e <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x4ee>
    405d:	0f 1f 00                                        	nop    DWORD PTR [rax]
    4060:	49 8b 3e                                        	mov    rdi,QWORD PTR [r14]
    4063:	49 8d 46 10                                     	lea    rax,[r14+0x10]
    4067:	48 39 c7                                        	cmp    rdi,rax
    406a:	0f 84 10 01 00 00                               	je     4180 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x5f0>
    4070:	e8 7b e0 ff ff                                  	call   20f0 <_ZdlPv@plt>
    4075:	49 83 c6 30                                     	add    r14,0x30
    4079:	4d 39 ee                                        	cmp    r14,r13
    407c:	75 e2                                           	jne    4060 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x4d0>
    407e:	48 8b bc 24 80 00 00 00                         	mov    rdi,QWORD PTR [rsp+0x80]
    4086:	48 85 ff                                        	test   rdi,rdi
    4089:	74 05                                           	je     4090 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x500>
    408b:	e8 60 e0 ff ff                                  	call   20f0 <_ZdlPv@plt>
    4090:	48 8b 7c 24 60                                  	mov    rdi,QWORD PTR [rsp+0x60]
    4095:	4c 39 e7                                        	cmp    rdi,r12
    4098:	74 05                                           	je     409f <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x50f>
    409a:	e8 51 e0 ff ff                                  	call   20f0 <_ZdlPv@plt>
    409f:	48 8b 93 c0 00 00 00                            	mov    rdx,QWORD PTR [rbx+0xc0]
    40a6:	48 8b 7c 24 10                                  	mov    rdi,QWORD PTR [rsp+0x10]
    40ab:	45 31 c0                                        	xor    r8d,r8d
    40ae:	31 f6                                           	xor    esi,esi
    40b0:	48 8d 0d a1 1f 00 00                            	lea    rcx,[rip+0x1fa1]        # 6058 <_IO_stdin_used+0x58>
    40b7:	e8 f4 e0 ff ff                                  	call   21b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm@plt>
    40bc:	c6 83 94 00 00 00 00                            	mov    BYTE PTR [rbx+0x94],0x0
    40c3:	c7 83 90 00 00 00 00 00 01 00                   	mov    DWORD PTR [rbx+0x90],0x10000
    40cd:	e9 06 fb ff ff                                  	jmp    3bd8 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x48>
    40d2:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    40d8:	49 83 c7 30                                     	add    r15,0x30
    40dc:	4d 39 fd                                        	cmp    r13,r15
    40df:	0f 85 13 fe ff ff                               	jne    3ef8 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x368>
    40e5:	e9 2c fe ff ff                                  	jmp    3f16 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x386>
    40ea:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    40f0:	49 83 c7 20                                     	add    r15,0x20
    40f4:	4d 39 fd                                        	cmp    r13,r15
    40f7:	0f 85 6b fe ff ff                               	jne    3f68 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x3d8>
    40fd:	e9 84 fe ff ff                                  	jmp    3f86 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x3f6>
    4102:	84 c0                                           	test   al,al
    4104:	0f 84 b9 fe ff ff                               	je     3fc3 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x433>
    410a:	48 8d 43 60                                     	lea    rax,[rbx+0x60]
    410e:	48 8b 94 24 b0 00 00 00                         	mov    rdx,QWORD PTR [rsp+0xb0]
    4116:	48 89 43 50                                     	mov    QWORD PTR [rbx+0x50],rax
    411a:	48 8d 84 24 c0 00 00 00                         	lea    rax,[rsp+0xc0]
    4122:	48 39 c2                                        	cmp    rdx,rax
    4125:	0f 84 54 03 00 00                               	je     447f <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x8ef>
    412b:	48 89 53 50                                     	mov    QWORD PTR [rbx+0x50],rdx
    412f:	48 8b 94 24 c0 00 00 00                         	mov    rdx,QWORD PTR [rsp+0xc0]
    4137:	48 89 53 60                                     	mov    QWORD PTR [rbx+0x60],rdx
    413b:	48 8b 94 24 b8 00 00 00                         	mov    rdx,QWORD PTR [rsp+0xb8]
    4143:	48 89 84 24 b0 00 00 00                         	mov    QWORD PTR [rsp+0xb0],rax
    414b:	8b 84 24 d0 00 00 00                            	mov    eax,DWORD PTR [rsp+0xd0]
    4152:	c6 84 24 c0 00 00 00 00                         	mov    BYTE PTR [rsp+0xc0],0x0
    415a:	48 89 53 58                                     	mov    QWORD PTR [rbx+0x58],rdx
    415e:	48 c7 84 24 b8 00 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0xb8],0x0
    416a:	89 43 70                                        	mov    DWORD PTR [rbx+0x70],eax
    416d:	c6 43 78 01                                     	mov    BYTE PTR [rbx+0x78],0x1
    4171:	e9 4d fe ff ff                                  	jmp    3fc3 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x433>
    4176:	66 2e 0f 1f 84 00 00 00 00 00                   	nop    WORD PTR cs:[rax+rax*1+0x0]
    4180:	49 83 c6 30                                     	add    r14,0x30
    4184:	4d 39 f5                                        	cmp    r13,r14
    4187:	0f 85 d3 fe ff ff                               	jne    4060 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x4d0>
    418d:	e9 ec fe ff ff                                  	jmp    407e <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x4ee>
    4192:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    4198:	49 83 c6 20                                     	add    r14,0x20
    419c:	4d 39 f5                                        	cmp    r13,r14
    419f:	0f 85 73 fe ff ff                               	jne    4018 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x488>
    41a5:	e9 8c fe ff ff                                  	jmp    4036 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x4a6>
    41aa:	48 89 df                                        	mov    rdi,rbx
    41ad:	e8 4e f5 ff ff                                  	call   3700 <_ZN9AsmParser13ObjDumpParser7addressEv>
    41b2:	66 c7 83 92 00 00 00 00 01                      	mov    WORD PTR [rbx+0x92],0x100
    41bb:	e9 18 fa ff ff                                  	jmp    3bd8 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x48>
    41c0:	c6 83 93 00 00 00 00                            	mov    BYTE PTR [rbx+0x93],0x0
    41c7:	4c 8b b3 c0 00 00 00                            	mov    r14,QWORD PTR [rbx+0xc0]
    41ce:	48 8b 83 b8 00 00 00                            	mov    rax,QWORD PTR [rbx+0xb8]
    41d5:	e9 6f fa ff ff                                  	jmp    3c49 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xb9>
    41da:	48 89 df                                        	mov    rdi,rbx
    41dd:	e8 1e f5 ff ff                                  	call   3700 <_ZN9AsmParser13ObjDumpParser7addressEv>
    41e2:	c6 83 92 00 00 00 00                            	mov    BYTE PTR [rbx+0x92],0x0
    41e9:	c6 83 94 00 00 00 01                            	mov    BYTE PTR [rbx+0x94],0x1
    41f0:	e9 e3 f9 ff ff                                  	jmp    3bd8 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x48>
    41f5:	41 8d 44 24 9f                                  	lea    eax,[r12-0x61]
    41fa:	48 8d bb b8 00 00 00                            	lea    rdi,[rbx+0xb8]
    4201:	3c 05                                           	cmp    al,0x5
    4203:	0f 86 a3 fa ff ff                               	jbe    3cac <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x11c>
    4209:	41 8d 44 24 d0                                  	lea    eax,[r12-0x30]
    420e:	3c 09                                           	cmp    al,0x9
    4210:	0f 86 96 fa ff ff                               	jbe    3cac <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x11c>
    4216:	c6 83 94 00 00 00 00                            	mov    BYTE PTR [rbx+0x94],0x0
    421d:	e9 8a fa ff ff                                  	jmp    3cac <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x11c>
    4222:	4c 8b bb e0 00 00 00                            	mov    r15,QWORD PTR [rbx+0xe0]
    4229:	4c 89 7c 24 18                                  	mov    QWORD PTR [rsp+0x18],r15
    422e:	4c 3b bb e8 00 00 00                            	cmp    r15,QWORD PTR [rbx+0xe8]
    4235:	0f 84 05 05 00 00                               	je     4740 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xbb0>
    423b:	49 8d 47 10                                     	lea    rax,[r15+0x10]
    423f:	48 8b 53 08                                     	mov    rdx,QWORD PTR [rbx+0x8]
    4243:	4c 89 ff                                        	mov    rdi,r15
    4246:	49 89 07                                        	mov    QWORD PTR [r15],rax
    4249:	48 8b 33                                        	mov    rsi,QWORD PTR [rbx]
    424c:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
    4251:	48 01 f2                                        	add    rdx,rsi
    4254:	e8 47 f5 ff ff                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    4259:	4c 8b 63 28                                     	mov    r12,QWORD PTR [rbx+0x28]
    425d:	4c 2b 63 20                                     	sub    r12,QWORD PTR [rbx+0x20]
    4261:	48 ba ab aa aa aa aa aa aa aa                   	movabs rdx,0xaaaaaaaaaaaaaaab
    426b:	4c 89 e0                                        	mov    rax,r12
    426e:	66 0f ef c0                                     	pxor   xmm0,xmm0
    4272:	49 c7 47 30 00 00 00 00                         	mov    QWORD PTR [r15+0x30],0x0
    427a:	48 c1 f8 04                                     	sar    rax,0x4
    427e:	41 0f 11 47 20                                  	movups XMMWORD PTR [r15+0x20],xmm0
    4283:	48 0f af c2                                     	imul   rax,rdx
    4287:	48 85 c0                                        	test   rax,rax
    428a:	0f 84 91 09 00 00                               	je     4c21 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1091>
    4290:	48 ba aa aa aa aa aa aa aa 02                   	movabs rdx,0x2aaaaaaaaaaaaaa
    429a:	48 39 d0                                        	cmp    rax,rdx
    429d:	0f 87 64 0c 00 00                               	ja     4f07 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1377>
    42a3:	4c 89 e7                                        	mov    rdi,r12
    42a6:	e8 65 de ff ff                                  	call   2110 <_Znwm@plt>
    42ab:	49 89 c7                                        	mov    r15,rax
    42ae:	48 8b 44 24 18                                  	mov    rax,QWORD PTR [rsp+0x18]
    42b3:	66 49 0f 6e c7                                  	movq   xmm0,r15
    42b8:	4d 01 fc                                        	add    r12,r15
    42bb:	4d 89 fd                                        	mov    r13,r15
    42be:	66 0f 6c c0                                     	punpcklqdq xmm0,xmm0
    42c2:	4c 89 60 30                                     	mov    QWORD PTR [rax+0x30],r12
    42c6:	0f 11 40 20                                     	movups XMMWORD PTR [rax+0x20],xmm0
    42ca:	4c 8b 73 28                                     	mov    r14,QWORD PTR [rbx+0x28]
    42ce:	4c 8b 63 20                                     	mov    r12,QWORD PTR [rbx+0x20]
    42d2:	4d 39 e6                                        	cmp    r14,r12
    42d5:	74 44                                           	je     431b <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x78b>
    42d7:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]
    42e0:	49 8d 45 10                                     	lea    rax,[r13+0x10]
    42e4:	49 8b 54 24 08                                  	mov    rdx,QWORD PTR [r12+0x8]
    42e9:	4c 89 ef                                        	mov    rdi,r13
    42ec:	49 89 45 00                                     	mov    QWORD PTR [r13+0x0],rax
    42f0:	49 8b 34 24                                     	mov    rsi,QWORD PTR [r12]
    42f4:	48 01 f2                                        	add    rdx,rsi
    42f7:	e8 a4 f4 ff ff                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    42fc:	49 8b 44 24 20                                  	mov    rax,QWORD PTR [r12+0x20]
    4301:	49 83 c4 30                                     	add    r12,0x30
    4305:	49 83 c5 30                                     	add    r13,0x30
    4309:	49 89 45 f0                                     	mov    QWORD PTR [r13-0x10],rax
    430d:	41 8b 44 24 f8                                  	mov    eax,DWORD PTR [r12-0x8]
    4312:	41 89 45 f8                                     	mov    DWORD PTR [r13-0x8],eax
    4316:	4d 39 e6                                        	cmp    r14,r12
    4319:	75 c5                                           	jne    42e0 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x750>
    431b:	48 8b 44 24 18                                  	mov    rax,QWORD PTR [rsp+0x18]
    4320:	4c 8b 63 40                                     	mov    r12,QWORD PTR [rbx+0x40]
    4324:	66 0f ef c0                                     	pxor   xmm0,xmm0
    4328:	4c 2b 63 38                                     	sub    r12,QWORD PTR [rbx+0x38]
    432c:	4c 89 68 28                                     	mov    QWORD PTR [rax+0x28],r13
    4330:	48 c7 40 48 00 00 00 00                         	mov    QWORD PTR [rax+0x48],0x0
    4338:	0f 11 40 38                                     	movups XMMWORD PTR [rax+0x38],xmm0
    433c:	4c 89 e0                                        	mov    rax,r12
    433f:	48 c1 f8 05                                     	sar    rax,0x5
    4343:	0f 84 e0 08 00 00                               	je     4c29 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1099>
    4349:	48 b9 ff ff ff ff ff ff ff 03                   	movabs rcx,0x3ffffffffffffff
    4353:	48 39 c8                                        	cmp    rax,rcx
    4356:	0f 87 9a 0b 00 00                               	ja     4ef6 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1366>
    435c:	4c 89 e7                                        	mov    rdi,r12
    435f:	e8 ac dd ff ff                                  	call   2110 <_Znwm@plt>
    4364:	49 89 c7                                        	mov    r15,rax
    4367:	48 8b 44 24 18                                  	mov    rax,QWORD PTR [rsp+0x18]
    436c:	66 49 0f 6e c7                                  	movq   xmm0,r15
    4371:	4d 01 fc                                        	add    r12,r15
    4374:	4d 89 fd                                        	mov    r13,r15
    4377:	66 0f 6c c0                                     	punpcklqdq xmm0,xmm0
    437b:	4c 89 60 48                                     	mov    QWORD PTR [rax+0x48],r12
    437f:	0f 11 40 38                                     	movups XMMWORD PTR [rax+0x38],xmm0
    4383:	4c 8b 73 40                                     	mov    r14,QWORD PTR [rbx+0x40]
    4387:	4c 8b 63 38                                     	mov    r12,QWORD PTR [rbx+0x38]
    438b:	4d 39 e6                                        	cmp    r14,r12
    438e:	74 29                                           	je     43b9 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x829>
    4390:	49 8d 45 10                                     	lea    rax,[r13+0x10]
    4394:	49 8b 54 24 08                                  	mov    rdx,QWORD PTR [r12+0x8]
    4399:	4c 89 ef                                        	mov    rdi,r13
    439c:	49 89 45 00                                     	mov    QWORD PTR [r13+0x0],rax
    43a0:	49 8b 34 24                                     	mov    rsi,QWORD PTR [r12]
    43a4:	48 01 f2                                        	add    rdx,rsi
    43a7:	e8 f4 f3 ff ff                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    43ac:	49 83 c4 20                                     	add    r12,0x20
    43b0:	49 83 c5 20                                     	add    r13,0x20
    43b4:	4d 39 e6                                        	cmp    r14,r12
    43b7:	75 d7                                           	jne    4390 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x800>
    43b9:	48 8b 44 24 18                                  	mov    rax,QWORD PTR [rsp+0x18]
    43be:	80 7b 78 00                                     	cmp    BYTE PTR [rbx+0x78],0x0
    43c2:	4c 89 68 40                                     	mov    QWORD PTR [rax+0x40],r13
    43c6:	c6 40 78 00                                     	mov    BYTE PTR [rax+0x78],0x0
    43ca:	0f 85 1f 08 00 00                               	jne    4bef <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x105f>
    43d0:	48 8b 44 24 18                                  	mov    rax,QWORD PTR [rsp+0x18]
    43d5:	66 0f 6f ab 80 00 00 00                         	movdqa xmm5,XMMWORD PTR [rbx+0x80]
    43dd:	0f 11 a8 80 00 00 00                            	movups XMMWORD PTR [rax+0x80],xmm5
    43e4:	48 81 83 e0 00 00 00 90 00 00 00                	add    QWORD PTR [rbx+0xe0],0x90
    43ef:	e9 67 fa ff ff                                  	jmp    3e5b <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x2cb>
    43f4:	48 8b b4 24 b0 00 00 00                         	mov    rsi,QWORD PTR [rsp+0xb0]
    43fc:	48 8d 84 24 c0 00 00 00                         	lea    rax,[rsp+0xc0]
    4404:	4c 8b 84 24 b8 00 00 00                         	mov    r8,QWORD PTR [rsp+0xb8]
    440c:	48 39 c6                                        	cmp    rsi,rax
    440f:	0f 84 65 08 00 00                               	je     4c7a <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x10ea>
    4415:	48 8b 8c 24 c0 00 00 00                         	mov    rcx,QWORD PTR [rsp+0xc0]
    441d:	48 39 d7                                        	cmp    rdi,rdx
    4420:	0f 84 d7 06 00 00                               	je     4afd <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xf6d>
    4426:	66 49 0f 6e c0                                  	movq   xmm0,r8
    442b:	66 48 0f 6e e9                                  	movq   xmm5,rcx
    4430:	48 8b 53 60                                     	mov    rdx,QWORD PTR [rbx+0x60]
    4434:	48 89 73 50                                     	mov    QWORD PTR [rbx+0x50],rsi
    4438:	66 0f 6c c5                                     	punpcklqdq xmm0,xmm5
    443c:	0f 11 43 58                                     	movups XMMWORD PTR [rbx+0x58],xmm0
    4440:	48 85 ff                                        	test   rdi,rdi
    4443:	0f 84 ca 06 00 00                               	je     4b13 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xf83>
    4449:	48 89 bc 24 b0 00 00 00                         	mov    QWORD PTR [rsp+0xb0],rdi
    4451:	48 89 94 24 c0 00 00 00                         	mov    QWORD PTR [rsp+0xc0],rdx
    4459:	48 8b 84 24 b0 00 00 00                         	mov    rax,QWORD PTR [rsp+0xb0]
    4461:	48 c7 84 24 b8 00 00 00 00 00 00 00             	mov    QWORD PTR [rsp+0xb8],0x0
    446d:	c6 00 00                                        	mov    BYTE PTR [rax],0x0
    4470:	8b 84 24 d0 00 00 00                            	mov    eax,DWORD PTR [rsp+0xd0]
    4477:	89 43 70                                        	mov    DWORD PTR [rbx+0x70],eax
    447a:	e9 44 fb ff ff                                  	jmp    3fc3 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x433>
    447f:	66 0f 6f bc 24 c0 00 00 00                      	movdqa xmm7,XMMWORD PTR [rsp+0xc0]
    4488:	0f 29 7b 60                                     	movaps XMMWORD PTR [rbx+0x60],xmm7
    448c:	e9 aa fc ff ff                                  	jmp    413b <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x5ab>
    4491:	4c 8d 83 98 00 00 00                            	lea    r8,[rbx+0x98]
    4498:	48 89 fe                                        	mov    rsi,rdi
    449b:	4c 89 c7                                        	mov    rdi,r8
    449e:	e8 fd db ff ff                                  	call   20a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_@plt>
    44a3:	4c 8b ab e0 00 00 00                            	mov    r13,QWORD PTR [rbx+0xe0]
    44aa:	bf 38 00 00 00                                  	mov    edi,0x38
    44af:	4c 2b ab d8 00 00 00                            	sub    r13,QWORD PTR [rbx+0xd8]
    44b6:	48 b8 39 8e e3 38 8e e3 38 8e                   	movabs rax,0x8e38e38e38e38e39
    44c0:	49 c1 fd 04                                     	sar    r13,0x4
    44c4:	4c 0f af e8                                     	imul   r13,rax
    44c8:	e8 43 dc ff ff                                  	call   2110 <_Znwm@plt>
    44cd:	48 8b b3 98 00 00 00                            	mov    rsi,QWORD PTR [rbx+0x98]
    44d4:	48 8b 93 a0 00 00 00                            	mov    rdx,QWORD PTR [rbx+0xa0]
    44db:	48 c7 00 00 00 00 00                            	mov    QWORD PTR [rax],0x0
    44e2:	49 89 c4                                        	mov    r12,rax
    44e5:	48 8d 78 08                                     	lea    rdi,[rax+0x8]
    44e9:	48 8d 40 18                                     	lea    rax,[rax+0x18]
    44ed:	49 89 44 24 08                                  	mov    QWORD PTR [r12+0x8],rax
    44f2:	48 01 f2                                        	add    rdx,rsi
    44f5:	48 89 44 24 10                                  	mov    QWORD PTR [rsp+0x10],rax
    44fa:	e8 a1 f2 ff ff                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    44ff:	45 89 6c 24 28                                  	mov    DWORD PTR [r12+0x28],r13d
    4504:	49 8b 74 24 10                                  	mov    rsi,QWORD PTR [r12+0x10]
    4509:	ba 07 69 0f c7                                  	mov    edx,0xc70f6907
    450e:	49 8b 7c 24 08                                  	mov    rdi,QWORD PTR [r12+0x8]
    4513:	e8 18 db ff ff                                  	call   2030 <_ZSt11_Hash_bytesPKvmm@plt>
    4518:	4c 8b 8b f8 00 00 00                            	mov    r9,QWORD PTR [rbx+0xf8]
    451f:	31 d2                                           	xor    edx,edx
    4521:	49 89 c6                                        	mov    r14,rax
    4524:	49 f7 f1                                        	div    r9
    4527:	48 8b 83 f0 00 00 00                            	mov    rax,QWORD PTR [rbx+0xf0]
    452e:	4c 8b 3c d0                                     	mov    r15,QWORD PTR [rax+rdx*8]
    4532:	48 89 d1                                        	mov    rcx,rdx
    4535:	49 89 d0                                        	mov    r8,rdx
    4538:	4d 85 ff                                        	test   r15,r15
    453b:	0f 84 ae 00 00 00                               	je     45ef <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xa5f>
    4541:	4d 8b 2f                                        	mov    r13,QWORD PTR [r15]
    4544:	4d 3b 75 30                                     	cmp    r14,QWORD PTR [r13+0x30]
    4548:	74 27                                           	je     4571 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x9e1>
    454a:	49 8b 75 00                                     	mov    rsi,QWORD PTR [r13+0x0]
    454e:	48 85 f6                                        	test   rsi,rsi
    4551:	0f 84 98 00 00 00                               	je     45ef <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xa5f>
    4557:	48 8b 46 30                                     	mov    rax,QWORD PTR [rsi+0x30]
    455b:	31 d2                                           	xor    edx,edx
    455d:	4d 89 ef                                        	mov    r15,r13
    4560:	49 f7 f1                                        	div    r9
    4563:	48 39 d1                                        	cmp    rcx,rdx
    4566:	0f 85 83 00 00 00                               	jne    45ef <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xa5f>
    456c:	49 89 f5                                        	mov    r13,rsi
    456f:	eb d3                                           	jmp    4544 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x9b4>
    4571:	49 8b 54 24 10                                  	mov    rdx,QWORD PTR [r12+0x10]
    4576:	49 3b 55 10                                     	cmp    rdx,QWORD PTR [r13+0x10]
    457a:	75 ce                                           	jne    454a <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x9ba>
    457c:	48 89 4c 24 18                                  	mov    QWORD PTR [rsp+0x18],rcx
    4581:	49 8b 7c 24 08                                  	mov    rdi,QWORD PTR [r12+0x8]
    4586:	48 85 d2                                        	test   rdx,rdx
    4589:	74 30                                           	je     45bb <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xa2b>
    458b:	49 8b 75 08                                     	mov    rsi,QWORD PTR [r13+0x8]
    458f:	4c 89 44 24 38                                  	mov    QWORD PTR [rsp+0x38],r8
    4594:	4c 89 4c 24 30                                  	mov    QWORD PTR [rsp+0x30],r9
    4599:	48 89 7c 24 28                                  	mov    QWORD PTR [rsp+0x28],rdi
    459e:	e8 cd da ff ff                                  	call   2070 <memcmp@plt>
    45a3:	48 8b 7c 24 28                                  	mov    rdi,QWORD PTR [rsp+0x28]
    45a8:	4c 8b 4c 24 30                                  	mov    r9,QWORD PTR [rsp+0x30]
    45ad:	85 c0                                           	test   eax,eax
    45af:	4c 8b 44 24 38                                  	mov    r8,QWORD PTR [rsp+0x38]
    45b4:	48 8b 4c 24 18                                  	mov    rcx,QWORD PTR [rsp+0x18]
    45b9:	75 8f                                           	jne    454a <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x9ba>
    45bb:	49 83 3f 00                                     	cmp    QWORD PTR [r15],0x0
    45bf:	74 2e                                           	je     45ef <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xa5f>
    45c1:	48 39 7c 24 10                                  	cmp    QWORD PTR [rsp+0x10],rdi
    45c6:	74 05                                           	je     45cd <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xa3d>
    45c8:	e8 23 db ff ff                                  	call   20f0 <_ZdlPv@plt>
    45cd:	4c 89 e7                                        	mov    rdi,r12
    45d0:	e8 1b db ff ff                                  	call   20f0 <_ZdlPv@plt>
    45d5:	48 8b 83 b8 00 00 00                            	mov    rax,QWORD PTR [rbx+0xb8]
    45dc:	48 c7 83 c0 00 00 00 00 00 00 00                	mov    QWORD PTR [rbx+0xc0],0x0
    45e7:	c6 00 00                                        	mov    BYTE PTR [rax],0x0
    45ea:	e9 e9 f5 ff ff                                  	jmp    3bd8 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x48>
    45ef:	48 8b 93 08 01 00 00                            	mov    rdx,QWORD PTR [rbx+0x108]
    45f6:	b9 01 00 00 00                                  	mov    ecx,0x1
    45fb:	4c 89 ce                                        	mov    rsi,r9
    45fe:	4c 89 44 24 18                                  	mov    QWORD PTR [rsp+0x18],r8
    4603:	48 8d bb 10 01 00 00                            	lea    rdi,[rbx+0x110]
    460a:	4c 8b ab 18 01 00 00                            	mov    r13,QWORD PTR [rbx+0x118]
    4611:	e8 4a db ff ff                                  	call   2160 <_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm@plt>
    4616:	4c 8b 44 24 18                                  	mov    r8,QWORD PTR [rsp+0x18]
    461b:	84 c0                                           	test   al,al
    461d:	49 89 d7                                        	mov    r15,rdx
    4620:	0f 84 e4 00 00 00                               	je     470a <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xb7a>
    4626:	48 83 fa 01                                     	cmp    rdx,0x1
    462a:	0f 84 9b 08 00 00                               	je     4ecb <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x133b>
    4630:	48 b8 ff ff ff ff ff ff ff 0f                   	movabs rax,0xfffffffffffffff
    463a:	48 39 c2                                        	cmp    rdx,rax
    463d:	0f 87 ae 08 00 00                               	ja     4ef1 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1361>
    4643:	48 8d 04 d5 00 00 00 00                         	lea    rax,[rdx*8+0x0]
    464b:	48 89 c7                                        	mov    rdi,rax
    464e:	48 89 44 24 18                                  	mov    QWORD PTR [rsp+0x18],rax
    4653:	e8 b8 da ff ff                                  	call   2110 <_Znwm@plt>
    4658:	48 8b 54 24 18                                  	mov    rdx,QWORD PTR [rsp+0x18]
    465d:	31 f6                                           	xor    esi,esi
    465f:	48 89 c7                                        	mov    rdi,rax
    4662:	49 89 c5                                        	mov    r13,rax
    4665:	e8 46 da ff ff                                  	call   20b0 <memset@plt>
    466a:	4c 8d 83 20 01 00 00                            	lea    r8,[rbx+0x120]
    4671:	48 8b 8b 00 01 00 00                            	mov    rcx,QWORD PTR [rbx+0x100]
    4678:	4c 8b 4c 24 20                                  	mov    r9,QWORD PTR [rsp+0x20]
    467d:	31 f6                                           	xor    esi,esi
    467f:	48 c7 83 00 01 00 00 00 00 00 00                	mov    QWORD PTR [rbx+0x100],0x0
    468a:	eb 15                                           	jmp    46a1 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xb11>
    468c:	49 8b 12                                        	mov    rdx,QWORD PTR [r10]
    468f:	48 89 11                                        	mov    QWORD PTR [rcx],rdx
    4692:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
    4695:	48 89 f2                                        	mov    rdx,rsi
    4698:	48 89 08                                        	mov    QWORD PTR [rax],rcx
    469b:	48 89 d6                                        	mov    rsi,rdx
    469e:	48 89 f9                                        	mov    rcx,rdi
    46a1:	48 85 c9                                        	test   rcx,rcx
    46a4:	74 3a                                           	je     46e0 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xb50>
    46a6:	48 8b 41 30                                     	mov    rax,QWORD PTR [rcx+0x30]
    46aa:	31 d2                                           	xor    edx,edx
    46ac:	48 8b 39                                        	mov    rdi,QWORD PTR [rcx]
    46af:	49 f7 f7                                        	div    r15
    46b2:	49 8d 44 d5 00                                  	lea    rax,[r13+rdx*8+0x0]
    46b7:	4c 8b 10                                        	mov    r10,QWORD PTR [rax]
    46ba:	4d 85 d2                                        	test   r10,r10
    46bd:	75 cd                                           	jne    468c <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xafc>
    46bf:	4c 8b 93 00 01 00 00                            	mov    r10,QWORD PTR [rbx+0x100]
    46c6:	4c 89 11                                        	mov    QWORD PTR [rcx],r10
    46c9:	48 89 8b 00 01 00 00                            	mov    QWORD PTR [rbx+0x100],rcx
    46d0:	4c 89 08                                        	mov    QWORD PTR [rax],r9
    46d3:	48 83 39 00                                     	cmp    QWORD PTR [rcx],0x0
    46d7:	74 c2                                           	je     469b <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xb0b>
    46d9:	49 89 4c f5 00                                  	mov    QWORD PTR [r13+rsi*8+0x0],rcx
    46de:	eb bb                                           	jmp    469b <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xb0b>
    46e0:	48 8b bb f0 00 00 00                            	mov    rdi,QWORD PTR [rbx+0xf0]
    46e7:	4c 39 c7                                        	cmp    rdi,r8
    46ea:	74 05                                           	je     46f1 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xb61>
    46ec:	e8 ff d9 ff ff                                  	call   20f0 <_ZdlPv@plt>
    46f1:	4c 89 f0                                        	mov    rax,r14
    46f4:	31 d2                                           	xor    edx,edx
    46f6:	4c 89 bb f8 00 00 00                            	mov    QWORD PTR [rbx+0xf8],r15
    46fd:	49 f7 f7                                        	div    r15
    4700:	4c 89 ab f0 00 00 00                            	mov    QWORD PTR [rbx+0xf0],r13
    4707:	49 89 d0                                        	mov    r8,rdx
    470a:	48 8b b3 f0 00 00 00                            	mov    rsi,QWORD PTR [rbx+0xf0]
    4711:	4d 89 74 24 30                                  	mov    QWORD PTR [r12+0x30],r14
    4716:	4a 8d 0c c6                                     	lea    rcx,[rsi+r8*8]
    471a:	48 8b 01                                        	mov    rax,QWORD PTR [rcx]
    471d:	48 85 c0                                        	test   rax,rax
    4720:	0f 84 a7 05 00 00                               	je     4ccd <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x113d>
    4726:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
    4729:	49 89 04 24                                     	mov    QWORD PTR [r12],rax
    472d:	48 8b 01                                        	mov    rax,QWORD PTR [rcx]
    4730:	4c 89 20                                        	mov    QWORD PTR [rax],r12
    4733:	48 83 83 08 01 00 00 01                         	add    QWORD PTR [rbx+0x108],0x1
    473b:	e9 95 fe ff ff                                  	jmp    45d5 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xa45>
    4740:	48 8b 83 d8 00 00 00                            	mov    rax,QWORD PTR [rbx+0xd8]
    4747:	4c 8b 7c 24 18                                  	mov    r15,QWORD PTR [rsp+0x18]
    474c:	48 b9 39 8e e3 38 8e e3 38 8e                   	movabs rcx,0x8e38e38e38e38e39
    4756:	48 ba e3 38 8e e3 38 8e e3 00                   	movabs rdx,0xe38e38e38e38e3
    4760:	49 29 c7                                        	sub    r15,rax
    4763:	48 89 44 24 38                                  	mov    QWORD PTR [rsp+0x38],rax
    4768:	4c 89 f8                                        	mov    rax,r15
    476b:	48 c1 f8 04                                     	sar    rax,0x4
    476f:	48 0f af c1                                     	imul   rax,rcx
    4773:	48 39 d0                                        	cmp    rax,rdx
    4776:	0f 84 69 07 00 00                               	je     4ee5 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1355>
    477c:	48 85 c0                                        	test   rax,rax
    477f:	0f 84 9b 03 00 00                               	je     4b20 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xf90>
    4785:	48 8d 0c 00                                     	lea    rcx,[rax+rax*1]
    4789:	48 89 4c 24 30                                  	mov    QWORD PTR [rsp+0x30],rcx
    478e:	48 39 c8                                        	cmp    rax,rcx
    4791:	0f 86 13 05 00 00                               	jbe    4caa <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x111a>
    4797:	48 89 54 24 30                                  	mov    QWORD PTR [rsp+0x30],rdx
    479c:	48 69 7c 24 30 90 00 00 00                      	imul   rdi,QWORD PTR [rsp+0x30],0x90
    47a5:	e8 66 d9 ff ff                                  	call   2110 <_Znwm@plt>
    47aa:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
    47af:	4c 03 7c 24 28                                  	add    r15,QWORD PTR [rsp+0x28]
    47b4:	48 8b 33                                        	mov    rsi,QWORD PTR [rbx]
    47b7:	49 8d 47 10                                     	lea    rax,[r15+0x10]
    47bb:	48 8b 53 08                                     	mov    rdx,QWORD PTR [rbx+0x8]
    47bf:	4c 89 ff                                        	mov    rdi,r15
    47c2:	49 89 07                                        	mov    QWORD PTR [r15],rax
    47c5:	48 01 f2                                        	add    rdx,rsi
    47c8:	48 89 44 24 48                                  	mov    QWORD PTR [rsp+0x48],rax
    47cd:	e8 ce ef ff ff                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    47d2:	4c 8b 73 28                                     	mov    r14,QWORD PTR [rbx+0x28]
    47d6:	66 0f ef c0                                     	pxor   xmm0,xmm0
    47da:	48 ba ab aa aa aa aa aa aa aa                   	movabs rdx,0xaaaaaaaaaaaaaaab
    47e4:	49 c7 47 30 00 00 00 00                         	mov    QWORD PTR [r15+0x30],0x0
    47ec:	41 0f 11 47 20                                  	movups XMMWORD PTR [r15+0x20],xmm0
    47f1:	4d 89 f4                                        	mov    r12,r14
    47f4:	4c 2b 63 20                                     	sub    r12,QWORD PTR [rbx+0x20]
    47f8:	4c 89 e0                                        	mov    rax,r12
    47fb:	48 c1 f8 04                                     	sar    rax,0x4
    47ff:	48 0f af c2                                     	imul   rax,rdx
    4803:	48 85 c0                                        	test   rax,rax
    4806:	0f 84 2d 05 00 00                               	je     4d39 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x11a9>
    480c:	48 ba aa aa aa aa aa aa aa 02                   	movabs rdx,0x2aaaaaaaaaaaaaa
    4816:	48 39 d0                                        	cmp    rax,rdx
    4819:	0f 87 f2 06 00 00                               	ja     4f11 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1381>
    481f:	4c 89 e7                                        	mov    rdi,r12
    4822:	e8 e9 d8 ff ff                                  	call   2110 <_Znwm@plt>
    4827:	48 89 44 24 40                                  	mov    QWORD PTR [rsp+0x40],rax
    482c:	4c 8b 73 28                                     	mov    r14,QWORD PTR [rbx+0x28]
    4830:	48 8b 44 24 40                                  	mov    rax,QWORD PTR [rsp+0x40]
    4835:	4c 8b 6b 20                                     	mov    r13,QWORD PTR [rbx+0x20]
    4839:	66 48 0f 6e c0                                  	movq   xmm0,rax
    483e:	49 01 c4                                        	add    r12,rax
    4841:	66 0f 6c c0                                     	punpcklqdq xmm0,xmm0
    4845:	4d 89 67 30                                     	mov    QWORD PTR [r15+0x30],r12
    4849:	49 89 c4                                        	mov    r12,rax
    484c:	41 0f 11 47 20                                  	movups XMMWORD PTR [r15+0x20],xmm0
    4851:	eb 36                                           	jmp    4889 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xcf9>
    4853:	49 8d 44 24 10                                  	lea    rax,[r12+0x10]
    4858:	49 8b 55 08                                     	mov    rdx,QWORD PTR [r13+0x8]
    485c:	4c 89 e7                                        	mov    rdi,r12
    485f:	49 89 04 24                                     	mov    QWORD PTR [r12],rax
    4863:	49 8b 75 00                                     	mov    rsi,QWORD PTR [r13+0x0]
    4867:	48 01 f2                                        	add    rdx,rsi
    486a:	e8 31 ef ff ff                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    486f:	49 8b 45 20                                     	mov    rax,QWORD PTR [r13+0x20]
    4873:	49 83 c4 30                                     	add    r12,0x30
    4877:	49 83 c5 30                                     	add    r13,0x30
    487b:	49 89 44 24 f0                                  	mov    QWORD PTR [r12-0x10],rax
    4880:	41 8b 45 f8                                     	mov    eax,DWORD PTR [r13-0x8]
    4884:	41 89 44 24 f8                                  	mov    DWORD PTR [r12-0x8],eax
    4889:	4d 39 ee                                        	cmp    r14,r13
    488c:	75 c5                                           	jne    4853 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xcc3>
    488e:	4c 8b 73 40                                     	mov    r14,QWORD PTR [rbx+0x40]
    4892:	4d 89 67 28                                     	mov    QWORD PTR [r15+0x28],r12
    4896:	66 0f ef c0                                     	pxor   xmm0,xmm0
    489a:	49 c7 47 48 00 00 00 00                         	mov    QWORD PTR [r15+0x48],0x0
    48a2:	4d 89 f4                                        	mov    r12,r14
    48a5:	4c 2b 63 38                                     	sub    r12,QWORD PTR [rbx+0x38]
    48a9:	41 0f 11 47 38                                  	movups XMMWORD PTR [r15+0x38],xmm0
    48ae:	4c 89 e0                                        	mov    rax,r12
    48b1:	48 c1 f8 05                                     	sar    rax,0x5
    48b5:	0f 84 8c 04 00 00                               	je     4d47 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x11b7>
    48bb:	48 b9 ff ff ff ff ff ff ff 03                   	movabs rcx,0x3ffffffffffffff
    48c5:	48 39 c8                                        	cmp    rax,rcx
    48c8:	0f 87 48 06 00 00                               	ja     4f16 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1386>
    48ce:	4c 89 e7                                        	mov    rdi,r12
    48d1:	e8 3a d8 ff ff                                  	call   2110 <_Znwm@plt>
    48d6:	48 89 44 24 40                                  	mov    QWORD PTR [rsp+0x40],rax
    48db:	4c 8b 73 40                                     	mov    r14,QWORD PTR [rbx+0x40]
    48df:	48 8b 44 24 40                                  	mov    rax,QWORD PTR [rsp+0x40]
    48e4:	4c 8b 6b 38                                     	mov    r13,QWORD PTR [rbx+0x38]
    48e8:	66 48 0f 6e c0                                  	movq   xmm0,rax
    48ed:	49 01 c4                                        	add    r12,rax
    48f0:	66 0f 6c c0                                     	punpcklqdq xmm0,xmm0
    48f4:	4d 89 67 48                                     	mov    QWORD PTR [r15+0x48],r12
    48f8:	49 89 c4                                        	mov    r12,rax
    48fb:	41 0f 11 47 38                                  	movups XMMWORD PTR [r15+0x38],xmm0
    4900:	eb 24                                           	jmp    4926 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xd96>
    4902:	49 8d 44 24 10                                  	lea    rax,[r12+0x10]
    4907:	49 8b 55 08                                     	mov    rdx,QWORD PTR [r13+0x8]
    490b:	4c 89 e7                                        	mov    rdi,r12
    490e:	49 89 04 24                                     	mov    QWORD PTR [r12],rax
    4912:	49 8b 75 00                                     	mov    rsi,QWORD PTR [r13+0x0]
    4916:	48 01 f2                                        	add    rdx,rsi
    4919:	e8 82 ee ff ff                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    491e:	49 83 c4 20                                     	add    r12,0x20
    4922:	49 83 c5 20                                     	add    r13,0x20
    4926:	4d 39 f5                                        	cmp    r13,r14
    4929:	75 d7                                           	jne    4902 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xd72>
    492b:	80 7b 78 00                                     	cmp    BYTE PTR [rbx+0x78],0x0
    492f:	4d 89 67 40                                     	mov    QWORD PTR [r15+0x40],r12
    4933:	41 c6 47 78 00                                  	mov    BYTE PTR [r15+0x78],0x0
    4938:	0f 85 ce 03 00 00                               	jne    4d0c <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x117c>
    493e:	4c 8b 74 24 38                                  	mov    r14,QWORD PTR [rsp+0x38]
    4943:	4c 8b 64 24 28                                  	mov    r12,QWORD PTR [rsp+0x28]
    4948:	48 89 6c 24 48                                  	mov    QWORD PTR [rsp+0x48],rbp
    494d:	66 0f 6f bb 80 00 00 00                         	movdqa xmm7,XMMWORD PTR [rbx+0x80]
    4955:	48 89 5c 24 40                                  	mov    QWORD PTR [rsp+0x40],rbx
    495a:	4c 89 f3                                        	mov    rbx,r14
    495d:	4c 8b 74 24 18                                  	mov    r14,QWORD PTR [rsp+0x18]
    4962:	41 0f 11 bf 80 00 00 00                         	movups XMMWORD PTR [r15+0x80],xmm7
    496a:	49 39 de                                        	cmp    r14,rbx
    496d:	0f 84 f7 01 00 00                               	je     4b6a <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xfda>
    4973:	49 8d 44 24 10                                  	lea    rax,[r12+0x10]
    4978:	4c 8d 7b 10                                     	lea    r15,[rbx+0x10]
    497c:	49 89 04 24                                     	mov    QWORD PTR [r12],rax
    4980:	48 8b 03                                        	mov    rax,QWORD PTR [rbx]
    4983:	4c 39 f8                                        	cmp    rax,r15
    4986:	0f 84 ce 01 00 00                               	je     4b5a <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xfca>
    498c:	49 89 04 24                                     	mov    QWORD PTR [r12],rax
    4990:	48 8b 43 10                                     	mov    rax,QWORD PTR [rbx+0x10]
    4994:	49 89 44 24 10                                  	mov    QWORD PTR [r12+0x10],rax
    4999:	48 8b 43 08                                     	mov    rax,QWORD PTR [rbx+0x8]
    499d:	0f b6 73 78                                     	movzx  esi,BYTE PTR [rbx+0x78]
    49a1:	48 8d 53 50                                     	lea    rdx,[rbx+0x50]
    49a5:	49 8d 7c 24 50                                  	lea    rdi,[r12+0x50]
    49aa:	49 89 44 24 08                                  	mov    QWORD PTR [r12+0x8],rax
    49af:	48 8b 43 20                                     	mov    rax,QWORD PTR [rbx+0x20]
    49b3:	4c 89 3b                                        	mov    QWORD PTR [rbx],r15
    49b6:	48 c7 43 08 00 00 00 00                         	mov    QWORD PTR [rbx+0x8],0x0
    49be:	c6 43 10 00                                     	mov    BYTE PTR [rbx+0x10],0x0
    49c2:	49 89 44 24 20                                  	mov    QWORD PTR [r12+0x20],rax
    49c7:	48 8b 43 28                                     	mov    rax,QWORD PTR [rbx+0x28]
    49cb:	49 89 44 24 28                                  	mov    QWORD PTR [r12+0x28],rax
    49d0:	48 8b 43 30                                     	mov    rax,QWORD PTR [rbx+0x30]
    49d4:	49 89 44 24 30                                  	mov    QWORD PTR [r12+0x30],rax
    49d9:	48 8b 43 38                                     	mov    rax,QWORD PTR [rbx+0x38]
    49dd:	48 c7 43 30 00 00 00 00                         	mov    QWORD PTR [rbx+0x30],0x0
    49e5:	48 c7 43 28 00 00 00 00                         	mov    QWORD PTR [rbx+0x28],0x0
    49ed:	48 c7 43 20 00 00 00 00                         	mov    QWORD PTR [rbx+0x20],0x0
    49f5:	49 89 44 24 38                                  	mov    QWORD PTR [r12+0x38],rax
    49fa:	48 8b 43 40                                     	mov    rax,QWORD PTR [rbx+0x40]
    49fe:	49 89 44 24 40                                  	mov    QWORD PTR [r12+0x40],rax
    4a03:	48 8b 43 48                                     	mov    rax,QWORD PTR [rbx+0x48]
    4a07:	49 89 44 24 48                                  	mov    QWORD PTR [r12+0x48],rax
    4a0c:	48 c7 43 48 00 00 00 00                         	mov    QWORD PTR [rbx+0x48],0x0
    4a14:	48 c7 43 40 00 00 00 00                         	mov    QWORD PTR [rbx+0x40],0x0
    4a1c:	48 c7 43 38 00 00 00 00                         	mov    QWORD PTR [rbx+0x38],0x0
    4a24:	e8 77 ec ff ff                                  	call   36a0 <_ZNSt22_Optional_payload_baseIN9AsmParser10asm_sourceEEC2EbOS2_>
    4a29:	f3 0f 6f a3 80 00 00 00                         	movdqu xmm4,XMMWORD PTR [rbx+0x80]
    4a31:	41 0f 11 a4 24 80 00 00 00                      	movups XMMWORD PTR [r12+0x80],xmm4
    4a3a:	80 7b 78 00                                     	cmp    BYTE PTR [rbx+0x78],0x0
    4a3e:	74 16                                           	je     4a56 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xec6>
    4a40:	48 8b 7b 50                                     	mov    rdi,QWORD PTR [rbx+0x50]
    4a44:	48 8d 43 60                                     	lea    rax,[rbx+0x60]
    4a48:	c6 43 78 00                                     	mov    BYTE PTR [rbx+0x78],0x0
    4a4c:	48 39 c7                                        	cmp    rdi,rax
    4a4f:	74 05                                           	je     4a56 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xec6>
    4a51:	e8 9a d6 ff ff                                  	call   20f0 <_ZdlPv@plt>
    4a56:	48 8b 7b 38                                     	mov    rdi,QWORD PTR [rbx+0x38]
    4a5a:	4c 8b 6b 40                                     	mov    r13,QWORD PTR [rbx+0x40]
    4a5e:	48 89 fd                                        	mov    rbp,rdi
    4a61:	49 39 fd                                        	cmp    r13,rdi
    4a64:	74 2d                                           	je     4a93 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xf03>
    4a66:	66 2e 0f 1f 84 00 00 00 00 00                   	nop    WORD PTR cs:[rax+rax*1+0x0]
    4a70:	48 8b 7d 00                                     	mov    rdi,QWORD PTR [rbp+0x0]
    4a74:	48 8d 45 10                                     	lea    rax,[rbp+0x10]
    4a78:	48 39 c7                                        	cmp    rdi,rax
    4a7b:	0f 84 af 00 00 00                               	je     4b30 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xfa0>
    4a81:	e8 6a d6 ff ff                                  	call   20f0 <_ZdlPv@plt>
    4a86:	48 83 c5 20                                     	add    rbp,0x20
    4a8a:	49 39 ed                                        	cmp    r13,rbp
    4a8d:	75 e1                                           	jne    4a70 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xee0>
    4a8f:	48 8b 7b 38                                     	mov    rdi,QWORD PTR [rbx+0x38]
    4a93:	48 85 ff                                        	test   rdi,rdi
    4a96:	74 05                                           	je     4a9d <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xf0d>
    4a98:	e8 53 d6 ff ff                                  	call   20f0 <_ZdlPv@plt>
    4a9d:	48 8b 7b 20                                     	mov    rdi,QWORD PTR [rbx+0x20]
    4aa1:	4c 8b 6b 28                                     	mov    r13,QWORD PTR [rbx+0x28]
    4aa5:	48 89 fd                                        	mov    rbp,rdi
    4aa8:	49 39 fd                                        	cmp    r13,rdi
    4aab:	74 26                                           	je     4ad3 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xf43>
    4aad:	0f 1f 00                                        	nop    DWORD PTR [rax]
    4ab0:	48 8b 7d 00                                     	mov    rdi,QWORD PTR [rbp+0x0]
    4ab4:	48 8d 45 10                                     	lea    rax,[rbp+0x10]
    4ab8:	48 39 c7                                        	cmp    rdi,rax
    4abb:	0f 84 87 00 00 00                               	je     4b48 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xfb8>
    4ac1:	e8 2a d6 ff ff                                  	call   20f0 <_ZdlPv@plt>
    4ac6:	48 83 c5 30                                     	add    rbp,0x30
    4aca:	49 39 ed                                        	cmp    r13,rbp
    4acd:	75 e1                                           	jne    4ab0 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xf20>
    4acf:	48 8b 7b 20                                     	mov    rdi,QWORD PTR [rbx+0x20]
    4ad3:	48 85 ff                                        	test   rdi,rdi
    4ad6:	74 05                                           	je     4add <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xf4d>
    4ad8:	e8 13 d6 ff ff                                  	call   20f0 <_ZdlPv@plt>
    4add:	48 8b 3b                                        	mov    rdi,QWORD PTR [rbx]
    4ae0:	4c 39 ff                                        	cmp    rdi,r15
    4ae3:	74 05                                           	je     4aea <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xf5a>
    4ae5:	e8 06 d6 ff ff                                  	call   20f0 <_ZdlPv@plt>
    4aea:	48 81 c3 90 00 00 00                            	add    rbx,0x90
    4af1:	49 81 c4 90 00 00 00                            	add    r12,0x90
    4af8:	e9 6d fe ff ff                                  	jmp    496a <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xdda>
    4afd:	66 49 0f 6e c0                                  	movq   xmm0,r8
    4b02:	66 48 0f 6e f1                                  	movq   xmm6,rcx
    4b07:	48 89 73 50                                     	mov    QWORD PTR [rbx+0x50],rsi
    4b0b:	66 0f 6c c6                                     	punpcklqdq xmm0,xmm6
    4b0f:	0f 11 43 58                                     	movups XMMWORD PTR [rbx+0x58],xmm0
    4b13:	48 89 84 24 b0 00 00 00                         	mov    QWORD PTR [rsp+0xb0],rax
    4b1b:	e9 39 f9 ff ff                                  	jmp    4459 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x8c9>
    4b20:	48 c7 44 24 30 01 00 00 00                      	mov    QWORD PTR [rsp+0x30],0x1
    4b29:	e9 6e fc ff ff                                  	jmp    479c <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xc0c>
    4b2e:	66 90                                           	xchg   ax,ax
    4b30:	48 83 c5 20                                     	add    rbp,0x20
    4b34:	49 39 ed                                        	cmp    r13,rbp
    4b37:	0f 85 33 ff ff ff                               	jne    4a70 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xee0>
    4b3d:	e9 4d ff ff ff                                  	jmp    4a8f <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xeff>
    4b42:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
    4b48:	48 83 c5 30                                     	add    rbp,0x30
    4b4c:	49 39 ed                                        	cmp    r13,rbp
    4b4f:	0f 85 5b ff ff ff                               	jne    4ab0 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xf20>
    4b55:	e9 75 ff ff ff                                  	jmp    4acf <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xf3f>
    4b5a:	f3 0f 6f 73 10                                  	movdqu xmm6,XMMWORD PTR [rbx+0x10]
    4b5f:	41 0f 11 74 24 10                               	movups XMMWORD PTR [r12+0x10],xmm6
    4b65:	e9 2f fe ff ff                                  	jmp    4999 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xe09>
    4b6a:	4c 8b 64 24 18                                  	mov    r12,QWORD PTR [rsp+0x18]
    4b6f:	48 8b 4c 24 38                                  	mov    rcx,QWORD PTR [rsp+0x38]
    4b74:	48 b8 39 8e e3 38 8e e3 38 0e                   	movabs rax,0xe38e38e38e38e39
    4b7e:	48 8b 5c 24 40                                  	mov    rbx,QWORD PTR [rsp+0x40]
    4b83:	48 8b 6c 24 48                                  	mov    rbp,QWORD PTR [rsp+0x48]
    4b88:	49 29 cc                                        	sub    r12,rcx
    4b8b:	49 c1 ec 04                                     	shr    r12,0x4
    4b8f:	4c 0f af e0                                     	imul   r12,rax
    4b93:	48 b8 ff ff ff ff ff ff ff 0f                   	movabs rax,0xfffffffffffffff
    4b9d:	49 21 c4                                        	and    r12,rax
    4ba0:	49 83 c4 01                                     	add    r12,0x1
    4ba4:	4d 69 e4 90 00 00 00                            	imul   r12,r12,0x90
    4bab:	4c 03 64 24 28                                  	add    r12,QWORD PTR [rsp+0x28]
    4bb0:	48 85 c9                                        	test   rcx,rcx
    4bb3:	74 08                                           	je     4bbd <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x102d>
    4bb5:	48 89 cf                                        	mov    rdi,rcx
    4bb8:	e8 33 d5 ff ff                                  	call   20f0 <_ZdlPv@plt>
    4bbd:	48 8b 4c 24 28                                  	mov    rcx,QWORD PTR [rsp+0x28]
    4bc2:	66 49 0f 6e fc                                  	movq   xmm7,r12
    4bc7:	48 69 44 24 30 90 00 00 00                      	imul   rax,QWORD PTR [rsp+0x30],0x90
    4bd0:	66 48 0f 6e c1                                  	movq   xmm0,rcx
    4bd5:	66 0f 6c c7                                     	punpcklqdq xmm0,xmm7
    4bd9:	48 01 c8                                        	add    rax,rcx
    4bdc:	48 89 83 e8 00 00 00                            	mov    QWORD PTR [rbx+0xe8],rax
    4be3:	0f 11 83 d8 00 00 00                            	movups XMMWORD PTR [rbx+0xd8],xmm0
    4bea:	e9 6c f2 ff ff                                  	jmp    3e5b <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x2cb>
    4bef:	4c 8b 7c 24 18                                  	mov    r15,QWORD PTR [rsp+0x18]
    4bf4:	48 8b 53 58                                     	mov    rdx,QWORD PTR [rbx+0x58]
    4bf8:	49 8d 47 60                                     	lea    rax,[r15+0x60]
    4bfc:	49 8d 7f 50                                     	lea    rdi,[r15+0x50]
    4c00:	49 89 47 50                                     	mov    QWORD PTR [r15+0x50],rax
    4c04:	48 8b 73 50                                     	mov    rsi,QWORD PTR [rbx+0x50]
    4c08:	48 01 f2                                        	add    rdx,rsi
    4c0b:	e8 90 eb ff ff                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    4c10:	8b 43 70                                        	mov    eax,DWORD PTR [rbx+0x70]
    4c13:	41 c6 47 78 01                                  	mov    BYTE PTR [r15+0x78],0x1
    4c18:	41 89 47 70                                     	mov    DWORD PTR [r15+0x70],eax
    4c1c:	e9 af f7 ff ff                                  	jmp    43d0 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x840>
    4c21:	45 31 ff                                        	xor    r15d,r15d
    4c24:	e9 85 f6 ff ff                                  	jmp    42ae <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x71e>
    4c29:	45 31 ff                                        	xor    r15d,r15d
    4c2c:	e9 36 f7 ff ff                                  	jmp    4367 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x7d7>
    4c31:	48 8d 7c 24 60                                  	lea    rdi,[rsp+0x60]
    4c36:	41 b8 01 00 00 00                               	mov    r8d,0x1
    4c3c:	31 c9                                           	xor    ecx,ecx
    4c3e:	31 d2                                           	xor    edx,edx
    4c40:	4c 89 ee                                        	mov    rsi,r13
    4c43:	e8 c8 d5 ff ff                                  	call   2210 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm@plt>
    4c48:	e9 3d f1 ff ff                                  	jmp    3d8a <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1fa>
    4c4d:	48 8b 83 b8 00 00 00                            	mov    rax,QWORD PTR [rbx+0xb8]
    4c54:	48 c7 83 c0 00 00 00 00 00 00 00                	mov    QWORD PTR [rbx+0xc0],0x0
    4c5f:	c6 00 00                                        	mov    BYTE PTR [rax],0x0
    4c62:	48 8b 7c 24 60                                  	mov    rdi,QWORD PTR [rsp+0x60]
    4c67:	4c 39 e7                                        	cmp    rdi,r12
    4c6a:	0f 84 68 ef ff ff                               	je     3bd8 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x48>
    4c70:	e8 7b d4 ff ff                                  	call   20f0 <_ZdlPv@plt>
    4c75:	e9 5e ef ff ff                                  	jmp    3bd8 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x48>
    4c7a:	4d 85 c0                                        	test   r8,r8
    4c7d:	74 16                                           	je     4c95 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1105>
    4c7f:	49 83 f8 01                                     	cmp    r8,0x1
    4c83:	0f 84 2f 02 00 00                               	je     4eb8 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1328>
    4c89:	4c 89 c2                                        	mov    rdx,r8
    4c8c:	e8 3f d4 ff ff                                  	call   20d0 <memcpy@plt>
    4c91:	48 8b 7b 50                                     	mov    rdi,QWORD PTR [rbx+0x50]
    4c95:	48 8b 84 24 b8 00 00 00                         	mov    rax,QWORD PTR [rsp+0xb8]
    4c9d:	48 89 43 58                                     	mov    QWORD PTR [rbx+0x58],rax
    4ca1:	c6 04 07 00                                     	mov    BYTE PTR [rdi+rax*1],0x0
    4ca5:	e9 af f7 ff ff                                  	jmp    4459 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x8c9>
    4caa:	48 c7 44 24 28 00 00 00 00                      	mov    QWORD PTR [rsp+0x28],0x0
    4cb3:	48 85 c9                                        	test   rcx,rcx
    4cb6:	0f 84 f3 fa ff ff                               	je     47af <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xc1f>
    4cbc:	48 39 d1                                        	cmp    rcx,rdx
    4cbf:	48 0f 46 d1                                     	cmovbe rdx,rcx
    4cc3:	48 89 54 24 30                                  	mov    QWORD PTR [rsp+0x30],rdx
    4cc8:	e9 cf fa ff ff                                  	jmp    479c <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xc0c>
    4ccd:	48 8b 83 00 01 00 00                            	mov    rax,QWORD PTR [rbx+0x100]
    4cd4:	4c 89 a3 00 01 00 00                            	mov    QWORD PTR [rbx+0x100],r12
    4cdb:	49 89 04 24                                     	mov    QWORD PTR [r12],rax
    4cdf:	48 85 c0                                        	test   rax,rax
    4ce2:	74 11                                           	je     4cf5 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1165>
    4ce4:	48 8b 40 30                                     	mov    rax,QWORD PTR [rax+0x30]
    4ce8:	31 d2                                           	xor    edx,edx
    4cea:	48 f7 b3 f8 00 00 00                            	div    QWORD PTR [rbx+0xf8]
    4cf1:	4c 89 24 d6                                     	mov    QWORD PTR [rsi+rdx*8],r12
    4cf5:	48 8b 44 24 20                                  	mov    rax,QWORD PTR [rsp+0x20]
    4cfa:	48 89 01                                        	mov    QWORD PTR [rcx],rax
    4cfd:	e9 31 fa ff ff                                  	jmp    4733 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xba3>
    4d02:	b8 0f 00 00 00                                  	mov    eax,0xf
    4d07:	e9 73 f0 ff ff                                  	jmp    3d7f <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1ef>
    4d0c:	49 8d 47 60                                     	lea    rax,[r15+0x60]
    4d10:	48 8b 73 50                                     	mov    rsi,QWORD PTR [rbx+0x50]
    4d14:	48 8b 53 58                                     	mov    rdx,QWORD PTR [rbx+0x58]
    4d18:	49 8d 7f 50                                     	lea    rdi,[r15+0x50]
    4d1c:	49 89 47 50                                     	mov    QWORD PTR [r15+0x50],rax
    4d20:	48 01 f2                                        	add    rdx,rsi
    4d23:	e8 78 ea ff ff                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    4d28:	8b 43 70                                        	mov    eax,DWORD PTR [rbx+0x70]
    4d2b:	41 c6 47 78 01                                  	mov    BYTE PTR [r15+0x78],0x1
    4d30:	41 89 47 70                                     	mov    DWORD PTR [r15+0x70],eax
    4d34:	e9 05 fc ff ff                                  	jmp    493e <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xdae>
    4d39:	48 c7 44 24 40 00 00 00 00                      	mov    QWORD PTR [rsp+0x40],0x0
    4d42:	e9 e9 fa ff ff                                  	jmp    4830 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xca0>
    4d47:	48 c7 44 24 40 00 00 00 00                      	mov    QWORD PTR [rsp+0x40],0x0
    4d50:	e9 8a fb ff ff                                  	jmp    48df <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xd4f>
    4d55:	48 8b 43 38                                     	mov    rax,QWORD PTR [rbx+0x38]
    4d59:	4d 89 f5                                        	mov    r13,r14
    4d5c:	48 b9 ff ff ff ff ff ff ff 03                   	movabs rcx,0x3ffffffffffffff
    4d66:	49 29 c5                                        	sub    r13,rax
    4d69:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
    4d6e:	4c 89 e8                                        	mov    rax,r13
    4d71:	48 c1 f8 05                                     	sar    rax,0x5
    4d75:	48 39 c8                                        	cmp    rax,rcx
    4d78:	0f 84 7d 01 00 00                               	je     4efb <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x136b>
    4d7e:	48 85 c0                                        	test   rax,rax
    4d81:	0f 84 23 01 00 00                               	je     4eaa <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x131a>
    4d87:	48 8d 0c 00                                     	lea    rcx,[rax+rax*1]
    4d8b:	48 89 4c 24 28                                  	mov    QWORD PTR [rsp+0x28],rcx
    4d90:	48 39 c8                                        	cmp    rax,rcx
    4d93:	0f 86 e1 00 00 00                               	jbe    4e7a <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x12ea>
    4d99:	48 b8 ff ff ff ff ff ff ff 03                   	movabs rax,0x3ffffffffffffff
    4da3:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
    4da8:	48 8b 7c 24 28                                  	mov    rdi,QWORD PTR [rsp+0x28]
    4dad:	48 c1 e7 05                                     	shl    rdi,0x5
    4db1:	e8 5a d3 ff ff                                  	call   2110 <_Znwm@plt>
    4db6:	48 89 44 24 18                                  	mov    QWORD PTR [rsp+0x18],rax
    4dbb:	4c 03 6c 24 18                                  	add    r13,QWORD PTR [rsp+0x18]
    4dc0:	48 8b 74 24 60                                  	mov    rsi,QWORD PTR [rsp+0x60]
    4dc5:	49 8d 4d 10                                     	lea    rcx,[r13+0x10]
    4dc9:	4c 89 ef                                        	mov    rdi,r13
    4dcc:	48 89 4c 24 38                                  	mov    QWORD PTR [rsp+0x38],rcx
    4dd1:	49 89 4d 00                                     	mov    QWORD PTR [r13+0x0],rcx
    4dd5:	48 8b 4c 24 68                                  	mov    rcx,QWORD PTR [rsp+0x68]
    4dda:	48 01 f1                                        	add    rcx,rsi
    4ddd:	48 89 ca                                        	mov    rdx,rcx
    4de0:	e8 bb e9 ff ff                                  	call   37a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag.constprop.0>
    4de5:	48 8b 54 24 18                                  	mov    rdx,QWORD PTR [rsp+0x18]
    4dea:	48 8b 44 24 30                                  	mov    rax,QWORD PTR [rsp+0x30]
    4def:	eb 1b                                           	jmp    4e0c <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x127c>
    4df1:	48 89 0a                                        	mov    QWORD PTR [rdx],rcx
    4df4:	48 8b 48 10                                     	mov    rcx,QWORD PTR [rax+0x10]
    4df8:	48 89 4a 10                                     	mov    QWORD PTR [rdx+0x10],rcx
    4dfc:	48 8b 48 08                                     	mov    rcx,QWORD PTR [rax+0x8]
    4e00:	48 83 c2 20                                     	add    rdx,0x20
    4e04:	48 83 c0 20                                     	add    rax,0x20
    4e08:	48 89 4a e8                                     	mov    QWORD PTR [rdx-0x18],rcx
    4e0c:	49 39 c6                                        	cmp    r14,rax
    4e0f:	74 1e                                           	je     4e2f <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x129f>
    4e11:	48 8d 4a 10                                     	lea    rcx,[rdx+0x10]
    4e15:	48 8d 70 10                                     	lea    rsi,[rax+0x10]
    4e19:	48 89 0a                                        	mov    QWORD PTR [rdx],rcx
    4e1c:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
    4e1f:	48 39 f1                                        	cmp    rcx,rsi
    4e22:	75 cd                                           	jne    4df1 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1261>
    4e24:	f3 0f 6f 70 10                                  	movdqu xmm6,XMMWORD PTR [rax+0x10]
    4e29:	0f 11 72 10                                     	movups XMMWORD PTR [rdx+0x10],xmm6
    4e2d:	eb cd                                           	jmp    4dfc <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x126c>
    4e2f:	48 8b 44 24 30                                  	mov    rax,QWORD PTR [rsp+0x30]
    4e34:	48 8b 4c 24 18                                  	mov    rcx,QWORD PTR [rsp+0x18]
    4e39:	49 29 c6                                        	sub    r14,rax
    4e3c:	4e 8d 6c 31 20                                  	lea    r13,[rcx+r14*1+0x20]
    4e41:	48 85 c0                                        	test   rax,rax
    4e44:	74 08                                           	je     4e4e <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x12be>
    4e46:	48 89 c7                                        	mov    rdi,rax
    4e49:	e8 a2 d2 ff ff                                  	call   20f0 <_ZdlPv@plt>
    4e4e:	48 8b 4c 24 18                                  	mov    rcx,QWORD PTR [rsp+0x18]
    4e53:	48 8b 44 24 28                                  	mov    rax,QWORD PTR [rsp+0x28]
    4e58:	66 49 0f 6e ed                                  	movq   xmm5,r13
    4e5d:	66 48 0f 6e c1                                  	movq   xmm0,rcx
    4e62:	48 c1 e0 05                                     	shl    rax,0x5
    4e66:	66 0f 6c c5                                     	punpcklqdq xmm0,xmm5
    4e6a:	48 01 c8                                        	add    rax,rcx
    4e6d:	48 89 43 48                                     	mov    QWORD PTR [rbx+0x48],rax
    4e71:	0f 11 43 38                                     	movups XMMWORD PTR [rbx+0x38],xmm0
    4e75:	e9 7f ef ff ff                                  	jmp    3df9 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x269>
    4e7a:	48 c7 44 24 18 00 00 00 00                      	mov    QWORD PTR [rsp+0x18],0x0
    4e83:	48 85 c9                                        	test   rcx,rcx
    4e86:	0f 84 2f ff ff ff                               	je     4dbb <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x122b>
    4e8c:	48 89 c8                                        	mov    rax,rcx
    4e8f:	48 b9 ff ff ff ff ff ff ff 03                   	movabs rcx,0x3ffffffffffffff
    4e99:	48 39 c8                                        	cmp    rax,rcx
    4e9c:	48 0f 46 c8                                     	cmovbe rcx,rax
    4ea0:	48 89 4c 24 28                                  	mov    QWORD PTR [rsp+0x28],rcx
    4ea5:	e9 fe fe ff ff                                  	jmp    4da8 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1218>
    4eaa:	48 c7 44 24 28 01 00 00 00                      	mov    QWORD PTR [rsp+0x28],0x1
    4eb3:	e9 f0 fe ff ff                                  	jmp    4da8 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1218>
    4eb8:	0f b6 84 24 c0 00 00 00                         	movzx  eax,BYTE PTR [rsp+0xc0]
    4ec0:	88 07                                           	mov    BYTE PTR [rdi],al
    4ec2:	48 8b 7b 50                                     	mov    rdi,QWORD PTR [rbx+0x50]
    4ec6:	e9 ca fd ff ff                                  	jmp    4c95 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0x1105>
    4ecb:	4c 8d 83 20 01 00 00                            	lea    r8,[rbx+0x120]
    4ed2:	48 c7 83 20 01 00 00 00 00 00 00                	mov    QWORD PTR [rbx+0x120],0x0
    4edd:	4d 89 c5                                        	mov    r13,r8
    4ee0:	e9 8c f7 ff ff                                  	jmp    4671 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi+0xae1>
    4ee5:	48 8d 3d 2c 11 00 00                            	lea    rdi,[rip+0x112c]        # 6018 <_IO_stdin_used+0x18>
    4eec:	e8 9f d1 ff ff                                  	call   2090 <_ZSt20__throw_length_errorPKc@plt>
    4ef1:	e8 5a d1 ff ff                                  	call   2050 <_ZSt17__throw_bad_allocv@plt>
    4ef6:	e8 55 d1 ff ff                                  	call   2050 <_ZSt17__throw_bad_allocv@plt>
    4efb:	48 8d 3d 16 11 00 00                            	lea    rdi,[rip+0x1116]        # 6018 <_IO_stdin_used+0x18>
    4f02:	e8 89 d1 ff ff                                  	call   2090 <_ZSt20__throw_length_errorPKc@plt>
    4f07:	e8 44 d1 ff ff                                  	call   2050 <_ZSt17__throw_bad_allocv@plt>
    4f0c:	e8 1f d2 ff ff                                  	call   2130 <__stack_chk_fail@plt>
    4f11:	e8 3a d1 ff ff                                  	call   2050 <_ZSt17__throw_bad_allocv@plt>
    4f16:	e8 35 d1 ff ff                                  	call   2050 <_ZSt17__throw_bad_allocv@plt>
    4f1b:	48 89 c3                                        	mov    rbx,rax
    4f1e:	e9 b8 d3 ff ff                                  	jmp    22db <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x17>
    4f23:	48 89 c3                                        	mov    rbx,rax
    4f26:	e9 b9 d3 ff ff                                  	jmp    22e4 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x20>
    4f2b:	48 89 c7                                        	mov    rdi,rax
    4f2e:	e9 e3 d3 ff ff                                  	jmp    2316 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x52>
    4f33:	48 89 c5                                        	mov    rbp,rax
    4f36:	e9 0e d4 ff ff                                  	jmp    2349 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x85>
    4f3b:	48 89 c5                                        	mov    rbp,rax
    4f3e:	e9 39 d4 ff ff                                  	jmp    237c <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0xb8>
    4f43:	48 89 c5                                        	mov    rbp,rax
    4f46:	e9 15 d4 ff ff                                  	jmp    2360 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x9c>
    4f4b:	48 89 c3                                        	mov    rbx,rax
    4f4e:	e9 45 d4 ff ff                                  	jmp    2398 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0xd4>
    4f53:	48 89 c7                                        	mov    rdi,rax
    4f56:	e9 4b d4 ff ff                                  	jmp    23a6 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0xe2>
    4f5b:	48 89 c7                                        	mov    rdi,rax
    4f5e:	e9 93 d3 ff ff                                  	jmp    22f6 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x32>
    4f63:	48 89 c7                                        	mov    rdi,rax
    4f66:	e9 86 d4 ff ff                                  	jmp    23f1 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x12d>
    4f6b:	48 89 c5                                        	mov    rbp,rax
    4f6e:	e9 fb d3 ff ff                                  	jmp    236e <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0xaa>
    4f73:	48 89 c7                                        	mov    rdi,rax
    4f76:	e9 b5 d4 ff ff                                  	jmp    2430 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x16c>
    4f7b:	48 89 c7                                        	mov    rdi,rax
    4f7e:	e9 c1 d4 ff ff                                  	jmp    2444 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x180>
    4f83:	48 89 c7                                        	mov    rdi,rax
    4f86:	e9 4c d5 ff ff                                  	jmp    24d7 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x213>
    4f8b:	48 89 c7                                        	mov    rdi,rax
    4f8e:	e9 12 d5 ff ff                                  	jmp    24a5 <_ZN9AsmParser13ObjDumpParser10fromStreamERSi.cold+0x1e1>
    4f93:	66 2e 0f 1f 84 00 00 00 00 00                   	nop    WORD PTR cs:[rax+rax*1+0x0]
    4f9d:	0f 1f 00                                        	nop    DWORD PTR [rax]

0000000000004fa0 <__libc_csu_init>:
    4fa0:	f3 0f 1e fa                                     	endbr64 
    4fa4:	41 57                                           	push   r15
    4fa6:	4c 8d 3d 93 2c 00 00                            	lea    r15,[rip+0x2c93]        # 7c40 <__frame_dummy_init_array_entry>
    4fad:	41 56                                           	push   r14
    4faf:	49 89 d6                                        	mov    r14,rdx
    4fb2:	41 55                                           	push   r13
    4fb4:	49 89 f5                                        	mov    r13,rsi
    4fb7:	41 54                                           	push   r12
    4fb9:	41 89 fc                                        	mov    r12d,edi
    4fbc:	55                                              	push   rbp
    4fbd:	48 8d 2d 8c 2c 00 00                            	lea    rbp,[rip+0x2c8c]        # 7c50 <__do_global_dtors_aux_fini_array_entry>
    4fc4:	53                                              	push   rbx
    4fc5:	4c 29 fd                                        	sub    rbp,r15
    4fc8:	48 83 ec 08                                     	sub    rsp,0x8
    4fcc:	e8 2f d0 ff ff                                  	call   2000 <_init>
    4fd1:	48 c1 fd 03                                     	sar    rbp,0x3
    4fd5:	74 1f                                           	je     4ff6 <__libc_csu_init+0x56>
    4fd7:	31 db                                           	xor    ebx,ebx
    4fd9:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
    4fe0:	4c 89 f2                                        	mov    rdx,r14
    4fe3:	4c 89 ee                                        	mov    rsi,r13
    4fe6:	44 89 e7                                        	mov    edi,r12d
    4fe9:	41 ff 14 df                                     	call   QWORD PTR [r15+rbx*8]
    4fed:	48 83 c3 01                                     	add    rbx,0x1
    4ff1:	48 39 dd                                        	cmp    rbp,rbx
    4ff4:	75 ea                                           	jne    4fe0 <__libc_csu_init+0x40>
    4ff6:	48 83 c4 08                                     	add    rsp,0x8
    4ffa:	5b                                              	pop    rbx
    4ffb:	5d                                              	pop    rbp
    4ffc:	41 5c                                           	pop    r12
    4ffe:	41 5d                                           	pop    r13
    5000:	41 5e                                           	pop    r14
    5002:	41 5f                                           	pop    r15
    5004:	c3                                              	ret    
    5005:	66 66 2e 0f 1f 84 00 00 00 00 00                	data16 nop WORD PTR cs:[rax+rax*1+0x0]

0000000000005010 <__libc_csu_fini>:
    5010:	f3 0f 1e fa                                     	endbr64 
    5014:	c3                                              	ret    

Disassembly of section .fini:

0000000000005018 <_fini>:
    5018:	f3 0f 1e fa                                     	endbr64 
    501c:	48 83 ec 08                                     	sub    rsp,0x8
    5020:	48 83 c4 08                                     	add    rsp,0x8
    5024:	c3                                              	ret    
