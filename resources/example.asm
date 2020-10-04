
asm-parser:	file format Mach-O 64-bit x86-64


Disassembly of section __TEXT,__text:

0000000100000ef0 _main:
100000ef0: 55                          	pushq	%rbp
100000ef1: 48 89 e5                    	movq	%rsp, %rbp
100000ef4: 48 81 ec 30 03 00 00        	subq	$816, %rsp
100000efb: 48 8b 05 76 b1 00 00        	movq	45430(%rip), %rax
100000f02: 48 8b 00                    	movq	(%rax), %rax
100000f05: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100000f09: c7 85 ac fd ff ff 00 00 00 00       	movl	$0, -596(%rbp)
100000f13: 89 bd a8 fd ff ff           	movl	%edi, -600(%rbp)
100000f19: 48 89 b5 a0 fd ff ff        	movq	%rsi, -608(%rbp)
100000f20: 83 bd a8 fd ff ff 01        	cmpl	$1, -600(%rbp)
100000f27: 0f 8e 09 01 00 00           	jle	265 <_main+0x146>
100000f2d: 48 8b 85 a0 fd ff ff        	movq	-608(%rbp), %rax
100000f34: 48 8b 70 08                 	movq	8(%rax), %rsi
100000f38: 48 8d bd 88 fd ff ff        	leaq	-632(%rbp), %rdi
100000f3f: e8 ac 01 00 00              	callq	428 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc>
100000f44: 48 8d bd b0 fd ff ff        	leaq	-592(%rbp), %rdi
100000f4b: e8 d0 01 00 00              	callq	464 <__ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEEC1Ev>
100000f50: e9 00 00 00 00              	jmp	0 <_main+0x65>
100000f55: 48 8d bd b0 fd ff ff        	leaq	-592(%rbp), %rdi
100000f5c: 48 8d b5 88 fd ff ff        	leaq	-632(%rbp), %rsi
100000f63: ba 08 00 00 00              	movl	$8, %edx
100000f68: e8 53 a5 00 00              	callq	42323 <state.cpp+0x10000b4c0>
100000f6d: e9 00 00 00 00              	jmp	0 <_main+0x82>
100000f72: 48 8d bd 28 fd ff ff        	leaq	-728(%rbp), %rdi
100000f79: e8 d2 4b 00 00              	callq	19410 <__ZN9AsmParser13ObjDumpParserC1Ev>
100000f7e: e9 00 00 00 00              	jmp	0 <_main+0x93>
100000f83: 48 8d bd 28 fd ff ff        	leaq	-728(%rbp), %rdi
100000f8a: 48 8d b5 b0 fd ff ff        	leaq	-592(%rbp), %rsi
100000f91: e8 ba 4e 00 00              	callq	20154 <__ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE>
100000f96: e9 00 00 00 00              	jmp	0 <_main+0xab>
100000f9b: 48 8b 35 6e b0 00 00        	movq	45166(%rip), %rsi
100000fa2: 48 8d bd 28 fd ff ff        	leaq	-728(%rbp), %rdi
100000fa9: e8 e2 52 00 00              	callq	21218 <__ZN9AsmParser13ObjDumpParser10outputTextERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE>
100000fae: e9 00 00 00 00              	jmp	0 <_main+0xc3>
100000fb3: 48 8d bd 28 fd ff ff        	leaq	-728(%rbp), %rdi
100000fba: e8 e1 02 00 00              	callq	737 <__ZN9AsmParser13ObjDumpParserD1Ev>
100000fbf: 48 8d bd b0 fd ff ff        	leaq	-592(%rbp), %rdi
100000fc6: e8 f5 02 00 00              	callq	757 <__ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEED1Ev>
100000fcb: 48 8d bd 88 fd ff ff        	leaq	-632(%rbp), %rdi
100000fd2: e8 c5 a4 00 00              	callq	42181 <state.cpp+0x10000b49c>
100000fd7: e9 cf 00 00 00              	jmp	207 <_main+0x1bb>
100000fdc: 48 89 85 80 fd ff ff        	movq	%rax, -640(%rbp)
100000fe3: 89 95 7c fd ff ff           	movl	%edx, -644(%rbp)
100000fe9: e9 37 00 00 00              	jmp	55 <_main+0x135>
100000fee: 48 89 85 80 fd ff ff        	movq	%rax, -640(%rbp)
100000ff5: 89 95 7c fd ff ff           	movl	%edx, -644(%rbp)
100000ffb: e9 19 00 00 00              	jmp	25 <_main+0x129>
100001000: 48 89 85 80 fd ff ff        	movq	%rax, -640(%rbp)
100001007: 89 95 7c fd ff ff           	movl	%edx, -644(%rbp)
10000100d: 48 8d bd 28 fd ff ff        	leaq	-728(%rbp), %rdi
100001014: e8 87 02 00 00              	callq	647 <__ZN9AsmParser13ObjDumpParserD1Ev>
100001019: 48 8d bd b0 fd ff ff        	leaq	-592(%rbp), %rdi
100001020: e8 9b 02 00 00              	callq	667 <__ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEED1Ev>
100001025: 48 8d bd 88 fd ff ff        	leaq	-632(%rbp), %rdi
10000102c: e8 6b a4 00 00              	callq	42091 <state.cpp+0x10000b49c>
100001031: e9 97 00 00 00              	jmp	151 <_main+0x1dd>
100001036: 48 8d 85 d8 fc ff ff        	leaq	-808(%rbp), %rax
10000103d: 48 89 c7                    	movq	%rax, %rdi
100001040: 48 89 85 d0 fc ff ff        	movq	%rax, -816(%rbp)
100001047: e8 04 4b 00 00              	callq	19204 <__ZN9AsmParser13ObjDumpParserC1Ev>
10000104c: 48 8b 35 b5 af 00 00        	movq	44981(%rip), %rsi
100001053: 48 8b bd d0 fc ff ff        	movq	-816(%rbp), %rdi
10000105a: e8 f1 4d 00 00              	callq	19953 <__ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE>
10000105f: e9 00 00 00 00              	jmp	0 <_main+0x174>
100001064: 48 8b 35 a5 af 00 00        	movq	44965(%rip), %rsi
10000106b: 48 8d bd d8 fc ff ff        	leaq	-808(%rbp), %rdi
100001072: e8 19 52 00 00              	callq	21017 <__ZN9AsmParser13ObjDumpParser10outputTextERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE>
100001077: e9 00 00 00 00              	jmp	0 <_main+0x18c>
10000107c: 48 8d bd d8 fc ff ff        	leaq	-808(%rbp), %rdi
100001083: e8 18 02 00 00              	callq	536 <__ZN9AsmParser13ObjDumpParserD1Ev>
100001088: e9 1e 00 00 00              	jmp	30 <_main+0x1bb>
10000108d: 48 89 85 80 fd ff ff        	movq	%rax, -640(%rbp)
100001094: 89 95 7c fd ff ff           	movl	%edx, -644(%rbp)
10000109a: 48 8d bd d8 fc ff ff        	leaq	-808(%rbp), %rdi
1000010a1: e8 fa 01 00 00              	callq	506 <__ZN9AsmParser13ObjDumpParserD1Ev>
1000010a6: e9 22 00 00 00              	jmp	34 <_main+0x1dd>
1000010ab: 48 8b 05 c6 af 00 00        	movq	44998(%rip), %rax
1000010b2: 48 8b 00                    	movq	(%rax), %rax
1000010b5: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
1000010b9: 48 39 c8                    	cmpq	%rcx, %rax
1000010bc: 0f 85 19 00 00 00           	jne	25 <_main+0x1eb>
1000010c2: 31 c0                       	xorl	%eax, %eax
1000010c4: 48 81 c4 30 03 00 00        	addq	$816, %rsp
1000010cb: 5d                          	popq	%rbp
1000010cc: c3                          	retq
1000010cd: 48 8b bd 80 fd ff ff        	movq	-640(%rbp), %rdi
1000010d4: e8 45 a3 00 00              	callq	41797 <state.cpp+0x10000b41e>
1000010d9: 0f 0b                       	ud2
1000010db: e8 d0 a4 00 00              	callq	42192 <state.cpp+0x10000b5b0>
1000010e0: 0f 0b                       	ud2
1000010e2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000010ec: 0f 1f 40 00                 	nopl	(%rax)

00000001000010f0 __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc:
1000010f0: 55                          	pushq	%rbp
1000010f1: 48 89 e5                    	movq	%rsp, %rbp
1000010f4: 48 83 ec 10                 	subq	$16, %rsp
1000010f8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000010fc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001100: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001104: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001108: e8 33 3d 00 00              	callq	15667 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc>
10000110d: 48 83 c4 10                 	addq	$16, %rsp
100001111: 5d                          	popq	%rbp
100001112: c3                          	retq
100001113: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000111d: 0f 1f 00                    	nopl	(%rax)

0000000100001120 __ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEEC1Ev:
100001120: 55                          	pushq	%rbp
100001121: 48 89 e5                    	movq	%rsp, %rbp
100001124: 48 83 ec 20                 	subq	$32, %rsp
100001128: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000112c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001130: 48 89 c1                    	movq	%rax, %rcx
100001133: 48 81 c1 b0 01 00 00        	addq	$432, %rcx
10000113a: 48 89 cf                    	movq	%rcx, %rdi
10000113d: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100001141: e8 2a 3e 00 00              	callq	15914 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev>
100001146: 48 8b 05 03 af 00 00        	movq	44803(%rip), %rax
10000114d: 48 89 c1                    	movq	%rax, %rcx
100001150: 48 83 c1 18                 	addq	$24, %rcx
100001154: 48 8b 55 e0                 	movq	-32(%rbp), %rdx
100001158: 48 89 0a                    	movq	%rcx, (%rdx)
10000115b: 48 89 c1                    	movq	%rax, %rcx
10000115e: 48 83 c1 68                 	addq	$104, %rcx
100001162: 48 89 8a b0 01 00 00        	movq	%rcx, 432(%rdx)
100001169: 48 83 c0 40                 	addq	$64, %rax
10000116d: 48 89 42 10                 	movq	%rax, 16(%rdx)
100001171: 48 83 c2 18                 	addq	$24, %rdx
100001175: 48 8b 05 c4 ae 00 00        	movq	44740(%rip), %rax
10000117c: 48 83 c0 08                 	addq	$8, %rax
100001180: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100001184: 48 89 c6                    	movq	%rax, %rsi
100001187: e8 24 3e 00 00              	callq	15908 <__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE>
10000118c: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEEC1Ev+0x71>
100001191: 48 8b 05 b8 ae 00 00        	movq	44728(%rip), %rax
100001198: 48 89 c1                    	movq	%rax, %rcx
10000119b: 48 83 c1 18                 	addq	$24, %rcx
10000119f: 48 8b 55 e0                 	movq	-32(%rbp), %rdx
1000011a3: 48 89 0a                    	movq	%rcx, (%rdx)
1000011a6: 48 89 c1                    	movq	%rax, %rcx
1000011a9: 48 83 c1 68                 	addq	$104, %rcx
1000011ad: 48 89 8a b0 01 00 00        	movq	%rcx, 432(%rdx)
1000011b4: 48 83 c0 40                 	addq	$64, %rax
1000011b8: 48 89 42 10                 	movq	%rax, 16(%rdx)
1000011bc: 48 83 c2 18                 	addq	$24, %rdx
1000011c0: 48 89 d7                    	movq	%rdx, %rdi
1000011c3: e8 98 3e 00 00              	callq	16024 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev>
1000011c8: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEEC1Ev+0xad>
1000011cd: 48 83 c4 20                 	addq	$32, %rsp
1000011d1: 5d                          	popq	%rbp
1000011d2: c3                          	retq
1000011d3: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000011d7: 89 55 ec                    	movl	%edx, -20(%rbp)
1000011da: e9 24 00 00 00              	jmp	36 <__ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEEC1Ev+0xe3>
1000011df: 48 8b 0d 5a ae 00 00        	movq	44634(%rip), %rcx
1000011e6: 48 81 c1 08 00 00 00        	addq	$8, %rcx
1000011ed: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000011f1: 89 55 ec                    	movl	%edx, -20(%rbp)
1000011f4: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000011f8: 48 89 c7                    	movq	%rax, %rdi
1000011fb: 48 89 ce                    	movq	%rcx, %rsi
1000011fe: e8 db a2 00 00              	callq	41691 <state.cpp+0x10000b4de>
100001203: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100001207: 48 05 b0 01 00 00           	addq	$432, %rax
10000120d: 48 89 c7                    	movq	%rax, %rdi
100001210: e8 3b a3 00 00              	callq	41787 <state.cpp+0x10000b550>
100001215: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001219: e8 00 a2 00 00              	callq	41472 <state.cpp+0x10000b41e>
10000121e: 0f 0b                       	ud2

0000000100001220 __ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEE4openERKNS_12basic_stringIcS2_NS_9allocatorIcEEEEj:
100001220: 55                          	pushq	%rbp
100001221: 48 89 e5                    	movq	%rsp, %rbp
100001224: 48 83 ec 20                 	subq	$32, %rsp
100001228: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000122c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001230: 89 55 ec                    	movl	%edx, -20(%rbp)
100001233: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001237: 48 89 c1                    	movq	%rax, %rcx
10000123a: 48 81 c1 18 00 00 00        	addq	$24, %rcx
100001241: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001245: 8b 55 ec                    	movl	-20(%rbp), %edx
100001248: 48 89 cf                    	movq	%rcx, %rdi
10000124b: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000124f: e8 8c 42 00 00              	callq	17036 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openERKNS_12basic_stringIcS2_NS_9allocatorIcEEEEj>
100001254: 48 83 f8 00                 	cmpq	$0, %rax
100001258: 0f 84 1d 00 00 00           	je	29 <__ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEE4openERKNS_12basic_stringIcS2_NS_9allocatorIcEEEEj+0x5b>
10000125e: 31 f6                       	xorl	%esi, %esi
100001260: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100001264: 48 8b 08                    	movq	(%rax), %rcx
100001267: 48 8b 49 e8                 	movq	-24(%rcx), %rcx
10000126b: 48 01 c8                    	addq	%rcx, %rax
10000126e: 48 89 c7                    	movq	%rax, %rdi
100001271: e8 aa 42 00 00              	callq	17066 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearEj>
100001276: e9 1b 00 00 00              	jmp	27 <__ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEE4openERKNS_12basic_stringIcS2_NS_9allocatorIcEEEEj+0x76>
10000127b: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000127f: 48 8b 08                    	movq	(%rax), %rcx
100001282: 48 8b 49 e8                 	movq	-24(%rcx), %rcx
100001286: 48 01 c8                    	addq	%rcx, %rax
100001289: 48 89 c7                    	movq	%rax, %rdi
10000128c: be 04 00 00 00              	movl	$4, %esi
100001291: e8 ba 42 00 00              	callq	17082 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj>
100001296: 48 83 c4 20                 	addq	$32, %rsp
10000129a: 5d                          	popq	%rbp
10000129b: c3                          	retq
10000129c: 0f 1f 40 00                 	nopl	(%rax)

00000001000012a0 __ZN9AsmParser13ObjDumpParserD1Ev:
1000012a0: 55                          	pushq	%rbp
1000012a1: 48 89 e5                    	movq	%rsp, %rbp
1000012a4: 48 83 ec 10                 	subq	$16, %rsp
1000012a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000012ac: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000012b0: e8 4b 00 00 00              	callq	75 <__ZN9AsmParser13ObjDumpParserD2Ev>
1000012b5: 48 83 c4 10                 	addq	$16, %rsp
1000012b9: 5d                          	popq	%rbp
1000012ba: c3                          	retq
1000012bb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000012c0 __ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEED1Ev:
1000012c0: 55                          	pushq	%rbp
1000012c1: 48 89 e5                    	movq	%rsp, %rbp
1000012c4: 48 83 ec 10                 	subq	$16, %rsp
1000012c8: 48 8b 35 71 ad 00 00        	movq	44401(%rip), %rsi
1000012cf: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000012d3: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000012d7: 48 89 c7                    	movq	%rax, %rdi
1000012da: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000012de: e8 dd 13 00 00              	callq	5085 <__ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEED2Ev>
1000012e3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000012e7: 48 05 b0 01 00 00           	addq	$432, %rax
1000012ed: 48 89 c7                    	movq	%rax, %rdi
1000012f0: e8 5b a2 00 00              	callq	41563 <state.cpp+0x10000b550>
1000012f5: 48 83 c4 10                 	addq	$16, %rsp
1000012f9: 5d                          	popq	%rbp
1000012fa: c3                          	retq
1000012fb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001300 __ZN9AsmParser13ObjDumpParserD2Ev:
100001300: 55                          	pushq	%rbp
100001301: 48 89 e5                    	movq	%rsp, %rbp
100001304: 48 83 ec 10                 	subq	$16, %rsp
100001308: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000130c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001310: 48 89 c1                    	movq	%rax, %rcx
100001313: 48 81 c1 38 00 00 00        	addq	$56, %rcx
10000131a: 48 89 cf                    	movq	%rcx, %rdi
10000131d: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100001321: e8 1a 00 00 00              	callq	26 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEED1Ev>
100001326: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000132a: e8 31 00 00 00              	callq	49 <__ZN9AsmParser11ParserStateD1Ev>
10000132f: 48 83 c4 10                 	addq	$16, %rsp
100001333: 5d                          	popq	%rbp
100001334: c3                          	retq
100001335: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000133f: 90                          	nop

0000000100001340 __ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEED1Ev:
100001340: 55                          	pushq	%rbp
100001341: 48 89 e5                    	movq	%rsp, %rbp
100001344: 48 83 ec 10                 	subq	$16, %rsp
100001348: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000134c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001350: e8 2b 00 00 00              	callq	43 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEED2Ev>
100001355: 48 83 c4 10                 	addq	$16, %rsp
100001359: 5d                          	popq	%rbp
10000135a: c3                          	retq
10000135b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001360 __ZN9AsmParser11ParserStateD1Ev:
100001360: 55                          	pushq	%rbp
100001361: 48 89 e5                    	movq	%rsp, %rbp
100001364: 48 83 ec 10                 	subq	$16, %rsp
100001368: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000136c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001370: e8 0b 13 00 00              	callq	4875 <__ZN9AsmParser11ParserStateD2Ev>
100001375: 48 83 c4 10                 	addq	$16, %rsp
100001379: 5d                          	popq	%rbp
10000137a: c3                          	retq
10000137b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001380 __ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEED2Ev:
100001380: 55                          	pushq	%rbp
100001381: 48 89 e5                    	movq	%rsp, %rbp
100001384: 48 83 ec 20                 	subq	$32, %rsp
100001388: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000138c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001390: 48 89 c7                    	movq	%rax, %rdi
100001393: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100001397: e8 34 00 00 00              	callq	52 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE17__annotate_deleteEv>
10000139c: e9 00 00 00 00              	jmp	0 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEED2Ev+0x21>
1000013a1: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000013a5: 48 89 c7                    	movq	%rax, %rdi
1000013a8: e8 e3 00 00 00              	callq	227 <__ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEED2Ev>
1000013ad: 48 83 c4 20                 	addq	$32, %rsp
1000013b1: 5d                          	popq	%rbp
1000013b2: c3                          	retq
1000013b3: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000013b7: 89 55 ec                    	movl	%edx, -20(%rbp)
1000013ba: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000013be: 48 89 c7                    	movq	%rax, %rdi
1000013c1: e8 ca 00 00 00              	callq	202 <__ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEED2Ev>
1000013c6: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000013ca: e8 21 01 00 00              	callq	289 <___clang_call_terminate>
1000013cf: 90                          	nop

00000001000013d0 __ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE17__annotate_deleteEv:
1000013d0: 55                          	pushq	%rbp
1000013d1: 48 89 e5                    	movq	%rsp, %rbp
1000013d4: 48 83 ec 50                 	subq	$80, %rsp
1000013d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000013dc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000013e0: 48 89 c7                    	movq	%rax, %rdi
1000013e3: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000013e7: e8 34 01 00 00              	callq	308 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4dataEv>
1000013ec: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000013f0: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000013f4: e8 27 01 00 00              	callq	295 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4dataEv>
1000013f9: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000013fd: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100001401: e8 3a 01 00 00              	callq	314 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE8capacityEv>
100001406: 48 69 c0 88 00 00 00        	imulq	$136, %rax, %rax
10000140d: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100001411: 48 01 c1                    	addq	%rax, %rcx
100001414: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001418: 48 89 4d d8                 	movq	%rcx, -40(%rbp)
10000141c: e8 ff 00 00 00              	callq	255 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4dataEv>
100001421: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001425: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100001429: e8 32 01 00 00              	callq	306 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4sizeEv>
10000142e: 48 69 c0 88 00 00 00        	imulq	$136, %rax, %rax
100001435: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100001439: 48 01 c1                    	addq	%rax, %rcx
10000143c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001440: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100001444: e8 d7 00 00 00              	callq	215 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4dataEv>
100001449: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000144d: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100001451: e8 ea 00 00 00              	callq	234 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE8capacityEv>
100001456: 48 69 c0 88 00 00 00        	imulq	$136, %rax, %rax
10000145d: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100001461: 48 01 c1                    	addq	%rax, %rcx
100001464: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001468: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000146c: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100001470: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100001474: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100001478: 48 89 c1                    	movq	%rax, %rcx
10000147b: 4c 8b 45 b8                 	movq	-72(%rbp), %r8
10000147f: e8 7c 00 00 00              	callq	124 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE31__annotate_contiguous_containerEPKvS7_S7_S7_>
100001484: 48 83 c4 50                 	addq	$80, %rsp
100001488: 5d                          	popq	%rbp
100001489: c3                          	retq
10000148a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100001490 __ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEED2Ev:
100001490: 55                          	pushq	%rbp
100001491: 48 89 e5                    	movq	%rsp, %rbp
100001494: 48 83 ec 20                 	subq	$32, %rsp
100001498: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000149c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000014a0: 48 83 38 00                 	cmpq	$0, (%rax)
1000014a4: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000014a8: 0f 84 39 00 00 00           	je	57 <__ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEED2Ev+0x57>
1000014ae: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000014b2: e8 89 01 00 00              	callq	393 <__ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE5clearEv>
1000014b7: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000014bb: e8 e0 01 00 00              	callq	480 <__ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE7__allocEv>
1000014c0: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000014c4: 48 8b 31                    	movq	(%rcx), %rsi
1000014c7: 48 89 cf                    	movq	%rcx, %rdi
1000014ca: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000014ce: 48 89 75 e0                 	movq	%rsi, -32(%rbp)
1000014d2: e8 c9 00 00 00              	callq	201 <__ZNKSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE8capacityEv>
1000014d7: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000014db: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
1000014df: 48 89 c2                    	movq	%rax, %rdx
1000014e2: e8 89 01 00 00              	callq	393 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE10deallocateERS4_PS3_m>
1000014e7: 48 83 c4 20                 	addq	$32, %rsp
1000014eb: 5d                          	popq	%rbp
1000014ec: c3                          	retq
1000014ed: 0f 1f 00                    	nopl	(%rax)

00000001000014f0 ___clang_call_terminate:
1000014f0: 50                          	pushq	%rax
1000014f1: e8 a2 a0 00 00              	callq	41122 <state.cpp+0x10000b598>
1000014f6: 48 89 04 24                 	movq	%rax, (%rsp)
1000014fa: e8 69 a0 00 00              	callq	41065 <state.cpp+0x10000b568>
1000014ff: 90                          	nop

0000000100001500 __ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE31__annotate_contiguous_containerEPKvS7_S7_S7_:
100001500: 55                          	pushq	%rbp
100001501: 48 89 e5                    	movq	%rsp, %rbp
100001504: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001508: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000150c: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100001510: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100001514: 4c 89 45 d8                 	movq	%r8, -40(%rbp)
100001518: 5d                          	popq	%rbp
100001519: c3                          	retq
10000151a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100001520 __ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4dataEv:
100001520: 55                          	pushq	%rbp
100001521: 48 89 e5                    	movq	%rsp, %rbp
100001524: 48 83 ec 10                 	subq	$16, %rsp
100001528: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000152c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001530: 48 8b 38                    	movq	(%rax), %rdi
100001533: e8 58 00 00 00              	callq	88 <__ZNSt3__1L16__to_raw_pointerIN9AsmParser8asm_lineEEEPT_S4_>
100001538: 48 83 c4 10                 	addq	$16, %rsp
10000153c: 5d                          	popq	%rbp
10000153d: c3                          	retq
10000153e: 66 90                       	nop

0000000100001540 __ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE8capacityEv:
100001540: 55                          	pushq	%rbp
100001541: 48 89 e5                    	movq	%rsp, %rbp
100001544: 48 83 ec 10                 	subq	$16, %rsp
100001548: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000154c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001550: 48 89 c7                    	movq	%rax, %rdi
100001553: e8 48 00 00 00              	callq	72 <__ZNKSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE8capacityEv>
100001558: 48 83 c4 10                 	addq	$16, %rsp
10000155c: 5d                          	popq	%rbp
10000155d: c3                          	retq
10000155e: 66 90                       	nop

0000000100001560 __ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4sizeEv:
100001560: 55                          	pushq	%rbp
100001561: 48 89 e5                    	movq	%rsp, %rbp
100001564: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001568: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000156c: 48 8b 48 08                 	movq	8(%rax), %rcx
100001570: 48 8b 00                    	movq	(%rax), %rax
100001573: 48 29 c1                    	subq	%rax, %rcx
100001576: 48 89 c8                    	movq	%rcx, %rax
100001579: 48 99                       	cqto
10000157b: b9 88 00 00 00              	movl	$136, %ecx
100001580: 48 f7 f9                    	idivq	%rcx
100001583: 5d                          	popq	%rbp
100001584: c3                          	retq
100001585: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000158f: 90                          	nop

0000000100001590 __ZNSt3__1L16__to_raw_pointerIN9AsmParser8asm_lineEEEPT_S4_:
100001590: 55                          	pushq	%rbp
100001591: 48 89 e5                    	movq	%rsp, %rbp
100001594: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001598: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000159c: 5d                          	popq	%rbp
10000159d: c3                          	retq
10000159e: 66 90                       	nop

00000001000015a0 __ZNKSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE8capacityEv:
1000015a0: 55                          	pushq	%rbp
1000015a1: 48 89 e5                    	movq	%rsp, %rbp
1000015a4: 48 83 ec 10                 	subq	$16, %rsp
1000015a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000015ac: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000015b0: 48 89 c7                    	movq	%rax, %rdi
1000015b3: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000015b7: e8 24 00 00 00              	callq	36 <__ZNKSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE9__end_capEv>
1000015bc: 48 8b 00                    	movq	(%rax), %rax
1000015bf: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000015c3: 48 8b 11                    	movq	(%rcx), %rdx
1000015c6: 48 29 d0                    	subq	%rdx, %rax
1000015c9: 48 99                       	cqto
1000015cb: be 88 00 00 00              	movl	$136, %esi
1000015d0: 48 f7 fe                    	idivq	%rsi
1000015d3: 48 83 c4 10                 	addq	$16, %rsp
1000015d7: 5d                          	popq	%rbp
1000015d8: c3                          	retq
1000015d9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

00000001000015e0 __ZNKSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE9__end_capEv:
1000015e0: 55                          	pushq	%rbp
1000015e1: 48 89 e5                    	movq	%rsp, %rbp
1000015e4: 48 83 ec 10                 	subq	$16, %rsp
1000015e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000015ec: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000015f0: 48 05 10 00 00 00           	addq	$16, %rax
1000015f6: 48 89 c7                    	movq	%rax, %rdi
1000015f9: e8 12 00 00 00              	callq	18 <__ZNKSt3__117__compressed_pairIPN9AsmParser8asm_lineENS_9allocatorIS2_EEE5firstEv>
1000015fe: 48 83 c4 10                 	addq	$16, %rsp
100001602: 5d                          	popq	%rbp
100001603: c3                          	retq
100001604: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000160e: 66 90                       	nop

0000000100001610 __ZNKSt3__117__compressed_pairIPN9AsmParser8asm_lineENS_9allocatorIS2_EEE5firstEv:
100001610: 55                          	pushq	%rbp
100001611: 48 89 e5                    	movq	%rsp, %rbp
100001614: 48 83 ec 10                 	subq	$16, %rsp
100001618: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000161c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001620: 48 89 c7                    	movq	%rax, %rdi
100001623: e8 08 00 00 00              	callq	8 <__ZNKSt3__122__compressed_pair_elemIPN9AsmParser8asm_lineELi0ELb0EE5__getEv>
100001628: 48 83 c4 10                 	addq	$16, %rsp
10000162c: 5d                          	popq	%rbp
10000162d: c3                          	retq
10000162e: 66 90                       	nop

0000000100001630 __ZNKSt3__122__compressed_pair_elemIPN9AsmParser8asm_lineELi0ELb0EE5__getEv:
100001630: 55                          	pushq	%rbp
100001631: 48 89 e5                    	movq	%rsp, %rbp
100001634: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001638: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000163c: 5d                          	popq	%rbp
10000163d: c3                          	retq
10000163e: 66 90                       	nop

0000000100001640 __ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE5clearEv:
100001640: 55                          	pushq	%rbp
100001641: 48 89 e5                    	movq	%rsp, %rbp
100001644: 48 83 ec 10                 	subq	$16, %rsp
100001648: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000164c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001650: 48 8b 30                    	movq	(%rax), %rsi
100001653: 48 89 c7                    	movq	%rax, %rdi
100001656: e8 75 00 00 00              	callq	117 <__ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE17__destruct_at_endEPS2_>
10000165b: 48 83 c4 10                 	addq	$16, %rsp
10000165f: 5d                          	popq	%rbp
100001660: c3                          	retq
100001661: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000166b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001670 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE10deallocateERS4_PS3_m:
100001670: 55                          	pushq	%rbp
100001671: 48 89 e5                    	movq	%rsp, %rbp
100001674: 48 83 ec 20                 	subq	$32, %rsp
100001678: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000167c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001680: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100001684: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001688: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000168c: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100001690: e8 6b 0f 00 00              	callq	3947 <__ZNSt3__19allocatorIN9AsmParser8asm_lineEE10deallocateEPS2_m>
100001695: 48 83 c4 20                 	addq	$32, %rsp
100001699: 5d                          	popq	%rbp
10000169a: c3                          	retq
10000169b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000016a0 __ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE7__allocEv:
1000016a0: 55                          	pushq	%rbp
1000016a1: 48 89 e5                    	movq	%rsp, %rbp
1000016a4: 48 83 ec 10                 	subq	$16, %rsp
1000016a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000016ac: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000016b0: 48 05 10 00 00 00           	addq	$16, %rax
1000016b6: 48 89 c7                    	movq	%rax, %rdi
1000016b9: e8 92 0f 00 00              	callq	3986 <__ZNSt3__117__compressed_pairIPN9AsmParser8asm_lineENS_9allocatorIS2_EEE6secondEv>
1000016be: 48 83 c4 10                 	addq	$16, %rsp
1000016c2: 5d                          	popq	%rbp
1000016c3: c3                          	retq
1000016c4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000016ce: 66 90                       	nop

00000001000016d0 __ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE17__destruct_at_endEPS2_:
1000016d0: 55                          	pushq	%rbp
1000016d1: 48 89 e5                    	movq	%rsp, %rbp
1000016d4: 48 83 ec 30                 	subq	$48, %rsp
1000016d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000016dc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000016e0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000016e4: 48 8b 48 08                 	movq	8(%rax), %rcx
1000016e8: 48 89 4d e8                 	movq	%rcx, -24(%rbp)
1000016ec: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000016f0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000016f4: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
1000016f8: 0f 84 3a 00 00 00           	je	58 <__ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE17__destruct_at_endEPS2_+0x68>
1000016fe: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100001702: e8 99 ff ff ff              	callq	-103 <__ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE7__allocEv>
100001707: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
10000170b: 48 81 c1 78 ff ff ff        	addq	$-136, %rcx
100001712: 48 89 4d e8                 	movq	%rcx, -24(%rbp)
100001716: 48 89 cf                    	movq	%rcx, %rdi
100001719: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000171d: e8 6e fe ff ff              	callq	-402 <__ZNSt3__1L16__to_raw_pointerIN9AsmParser8asm_lineEEEPT_S4_>
100001722: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100001726: 48 89 c6                    	movq	%rax, %rsi
100001729: e8 32 00 00 00              	callq	50 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE7destroyIS3_EEvRS4_PT_>
10000172e: e9 00 00 00 00              	jmp	0 <__ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE17__destruct_at_endEPS2_+0x63>
100001733: e9 b8 ff ff ff              	jmp	-72 <__ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE17__destruct_at_endEPS2_+0x20>
100001738: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000173c: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100001740: 48 89 41 08                 	movq	%rax, 8(%rcx)
100001744: 48 83 c4 30                 	addq	$48, %rsp
100001748: 5d                          	popq	%rbp
100001749: c3                          	retq
10000174a: 48 89 c7                    	movq	%rax, %rdi
10000174d: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
100001751: e8 9a fd ff ff              	callq	-614 <___clang_call_terminate>
100001756: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100001760 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE7destroyIS3_EEvRS4_PT_:
100001760: 55                          	pushq	%rbp
100001761: 48 89 e5                    	movq	%rsp, %rbp
100001764: 48 83 ec 20                 	subq	$32, %rsp
100001768: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000176c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001770: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001774: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001778: e8 13 00 00 00              	callq	19 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE9__destroyIS3_EEvNS_17integral_constantIbLb1EEERS4_PT_>
10000177d: 48 83 c4 20                 	addq	$32, %rsp
100001781: 5d                          	popq	%rbp
100001782: c3                          	retq
100001783: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000178d: 0f 1f 00                    	nopl	(%rax)

0000000100001790 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE9__destroyIS3_EEvNS_17integral_constantIbLb1EEERS4_PT_:
100001790: 55                          	pushq	%rbp
100001791: 48 89 e5                    	movq	%rsp, %rbp
100001794: 48 83 ec 20                 	subq	$32, %rsp
100001798: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000179c: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
1000017a0: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000017a4: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000017a8: e8 13 00 00 00              	callq	19 <__ZNSt3__19allocatorIN9AsmParser8asm_lineEE7destroyEPS2_>
1000017ad: 48 83 c4 20                 	addq	$32, %rsp
1000017b1: 5d                          	popq	%rbp
1000017b2: c3                          	retq
1000017b3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000017bd: 0f 1f 00                    	nopl	(%rax)

00000001000017c0 __ZNSt3__19allocatorIN9AsmParser8asm_lineEE7destroyEPS2_:
1000017c0: 55                          	pushq	%rbp
1000017c1: 48 89 e5                    	movq	%rsp, %rbp
1000017c4: 48 83 ec 10                 	subq	$16, %rsp
1000017c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000017cc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000017d0: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000017d4: e8 07 00 00 00              	callq	7 <__ZN9AsmParser8asm_lineD1Ev>
1000017d9: 48 83 c4 10                 	addq	$16, %rsp
1000017dd: 5d                          	popq	%rbp
1000017de: c3                          	retq
1000017df: 90                          	nop

00000001000017e0 __ZN9AsmParser8asm_lineD1Ev:
1000017e0: 55                          	pushq	%rbp
1000017e1: 48 89 e5                    	movq	%rsp, %rbp
1000017e4: 48 83 ec 10                 	subq	$16, %rsp
1000017e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000017ec: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000017f0: e8 0b 00 00 00              	callq	11 <__ZN9AsmParser8asm_lineD2Ev>
1000017f5: 48 83 c4 10                 	addq	$16, %rsp
1000017f9: 5d                          	popq	%rbp
1000017fa: c3                          	retq
1000017fb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001800 __ZN9AsmParser8asm_lineD2Ev:
100001800: 55                          	pushq	%rbp
100001801: 48 89 e5                    	movq	%rsp, %rbp
100001804: 48 83 ec 10                 	subq	$16, %rsp
100001808: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000180c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001810: 48 89 c1                    	movq	%rax, %rcx
100001813: 48 81 c1 70 00 00 00        	addq	$112, %rcx
10000181a: 48 89 cf                    	movq	%rcx, %rdi
10000181d: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100001821: e8 4a 00 00 00              	callq	74 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEED1Ev>
100001826: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000182a: 48 05 48 00 00 00           	addq	$72, %rax
100001830: 48 89 c7                    	movq	%rax, %rdi
100001833: e8 58 00 00 00              	callq	88 <__ZNSt3__18optionalIN9AsmParser10asm_sourceEED1Ev>
100001838: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000183c: 48 05 30 00 00 00           	addq	$48, %rax
100001842: 48 89 c7                    	movq	%rax, %rdi
100001845: e8 52 9c 00 00              	callq	40018 <state.cpp+0x10000b49c>
10000184a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000184e: 48 05 10 00 00 00           	addq	$16, %rax
100001854: 48 89 c7                    	movq	%rax, %rdi
100001857: e8 54 00 00 00              	callq	84 <__ZNSt3__18optionalINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEED1Ev>
10000185c: 48 83 c4 10                 	addq	$16, %rsp
100001860: 5d                          	popq	%rbp
100001861: c3                          	retq
100001862: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000186c: 0f 1f 40 00                 	nopl	(%rax)

0000000100001870 __ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEED1Ev:
100001870: 55                          	pushq	%rbp
100001871: 48 89 e5                    	movq	%rsp, %rbp
100001874: 48 83 ec 10                 	subq	$16, %rsp
100001878: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000187c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001880: e8 4b 00 00 00              	callq	75 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEED2Ev>
100001885: 48 83 c4 10                 	addq	$16, %rsp
100001889: 5d                          	popq	%rbp
10000188a: c3                          	retq
10000188b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001890 __ZNSt3__18optionalIN9AsmParser10asm_sourceEED1Ev:
100001890: 55                          	pushq	%rbp
100001891: 48 89 e5                    	movq	%rsp, %rbp
100001894: 48 83 ec 10                 	subq	$16, %rsp
100001898: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000189c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000018a0: e8 8b 06 00 00              	callq	1675 <__ZNSt3__18optionalIN9AsmParser10asm_sourceEED2Ev>
1000018a5: 48 83 c4 10                 	addq	$16, %rsp
1000018a9: 5d                          	popq	%rbp
1000018aa: c3                          	retq
1000018ab: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000018b0 __ZNSt3__18optionalINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEED1Ev:
1000018b0: 55                          	pushq	%rbp
1000018b1: 48 89 e5                    	movq	%rsp, %rbp
1000018b4: 48 83 ec 10                 	subq	$16, %rsp
1000018b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000018bc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000018c0: e8 5b 07 00 00              	callq	1883 <__ZNSt3__18optionalINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEED2Ev>
1000018c5: 48 83 c4 10                 	addq	$16, %rsp
1000018c9: 5d                          	popq	%rbp
1000018ca: c3                          	retq
1000018cb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000018d0 __ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEED2Ev:
1000018d0: 55                          	pushq	%rbp
1000018d1: 48 89 e5                    	movq	%rsp, %rbp
1000018d4: 48 83 ec 20                 	subq	$32, %rsp
1000018d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000018dc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000018e0: 48 89 c7                    	movq	%rax, %rdi
1000018e3: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000018e7: e8 34 00 00 00              	callq	52 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE17__annotate_deleteEv>
1000018ec: e9 00 00 00 00              	jmp	0 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEED2Ev+0x21>
1000018f1: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000018f5: 48 89 c7                    	movq	%rax, %rdi
1000018f8: e8 e3 00 00 00              	callq	227 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEED2Ev>
1000018fd: 48 83 c4 20                 	addq	$32, %rsp
100001901: 5d                          	popq	%rbp
100001902: c3                          	retq
100001903: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100001907: 89 55 ec                    	movl	%edx, -20(%rbp)
10000190a: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000190e: 48 89 c7                    	movq	%rax, %rdi
100001911: e8 ca 00 00 00              	callq	202 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEED2Ev>
100001916: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000191a: e8 d1 fb ff ff              	callq	-1071 <___clang_call_terminate>
10000191f: 90                          	nop

0000000100001920 __ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE17__annotate_deleteEv:
100001920: 55                          	pushq	%rbp
100001921: 48 89 e5                    	movq	%rsp, %rbp
100001924: 48 83 ec 50                 	subq	$80, %rsp
100001928: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000192c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001930: 48 89 c7                    	movq	%rax, %rdi
100001933: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100001937: e8 24 01 00 00              	callq	292 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4dataEv>
10000193c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001940: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100001944: e8 17 01 00 00              	callq	279 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4dataEv>
100001949: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000194d: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100001951: e8 2a 01 00 00              	callq	298 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE8capacityEv>
100001956: 48 69 c0 28 00 00 00        	imulq	$40, %rax, %rax
10000195d: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100001961: 48 01 c1                    	addq	%rax, %rcx
100001964: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001968: 48 89 4d d8                 	movq	%rcx, -40(%rbp)
10000196c: e8 ef 00 00 00              	callq	239 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4dataEv>
100001971: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001975: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100001979: e8 22 01 00 00              	callq	290 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4sizeEv>
10000197e: 48 69 c0 28 00 00 00        	imulq	$40, %rax, %rax
100001985: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100001989: 48 01 c1                    	addq	%rax, %rcx
10000198c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001990: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100001994: e8 c7 00 00 00              	callq	199 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4dataEv>
100001999: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000199d: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000019a1: e8 da 00 00 00              	callq	218 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE8capacityEv>
1000019a6: 48 69 c0 28 00 00 00        	imulq	$40, %rax, %rax
1000019ad: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
1000019b1: 48 01 c1                    	addq	%rax, %rcx
1000019b4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000019b8: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000019bc: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
1000019c0: 48 8b 45 c8                 	movq	-56(%rbp), %rax
1000019c4: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
1000019c8: 48 89 c1                    	movq	%rax, %rcx
1000019cb: 4c 8b 45 b8                 	movq	-72(%rbp), %r8
1000019cf: e8 6c 00 00 00              	callq	108 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE31__annotate_contiguous_containerEPKvS7_S7_S7_>
1000019d4: 48 83 c4 50                 	addq	$80, %rsp
1000019d8: 5d                          	popq	%rbp
1000019d9: c3                          	retq
1000019da: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000019e0 __ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEED2Ev:
1000019e0: 55                          	pushq	%rbp
1000019e1: 48 89 e5                    	movq	%rsp, %rbp
1000019e4: 48 83 ec 20                 	subq	$32, %rsp
1000019e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000019ec: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000019f0: 48 83 38 00                 	cmpq	$0, (%rax)
1000019f4: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000019f8: 0f 84 39 00 00 00           	je	57 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEED2Ev+0x57>
1000019fe: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001a02: e8 79 01 00 00              	callq	377 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE5clearEv>
100001a07: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001a0b: e8 d0 01 00 00              	callq	464 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE7__allocEv>
100001a10: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100001a14: 48 8b 31                    	movq	(%rcx), %rsi
100001a17: 48 89 cf                    	movq	%rcx, %rdi
100001a1a: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100001a1e: 48 89 75 e0                 	movq	%rsi, -32(%rbp)
100001a22: e8 b9 00 00 00              	callq	185 <__ZNKSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE8capacityEv>
100001a27: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100001a2b: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
100001a2f: 48 89 c2                    	movq	%rax, %rdx
100001a32: e8 79 01 00 00              	callq	377 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE10deallocateERS4_PS3_m>
100001a37: 48 83 c4 20                 	addq	$32, %rsp
100001a3b: 5d                          	popq	%rbp
100001a3c: c3                          	retq
100001a3d: 0f 1f 00                    	nopl	(%rax)

0000000100001a40 __ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE31__annotate_contiguous_containerEPKvS7_S7_S7_:
100001a40: 55                          	pushq	%rbp
100001a41: 48 89 e5                    	movq	%rsp, %rbp
100001a44: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001a48: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001a4c: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100001a50: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100001a54: 4c 89 45 d8                 	movq	%r8, -40(%rbp)
100001a58: 5d                          	popq	%rbp
100001a59: c3                          	retq
100001a5a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100001a60 __ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4dataEv:
100001a60: 55                          	pushq	%rbp
100001a61: 48 89 e5                    	movq	%rsp, %rbp
100001a64: 48 83 ec 10                 	subq	$16, %rsp
100001a68: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001a6c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001a70: 48 8b 38                    	movq	(%rax), %rdi
100001a73: e8 58 00 00 00              	callq	88 <__ZNSt3__1L16__to_raw_pointerIN9AsmParser9asm_labelEEEPT_S4_>
100001a78: 48 83 c4 10                 	addq	$16, %rsp
100001a7c: 5d                          	popq	%rbp
100001a7d: c3                          	retq
100001a7e: 66 90                       	nop

0000000100001a80 __ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE8capacityEv:
100001a80: 55                          	pushq	%rbp
100001a81: 48 89 e5                    	movq	%rsp, %rbp
100001a84: 48 83 ec 10                 	subq	$16, %rsp
100001a88: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001a8c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001a90: 48 89 c7                    	movq	%rax, %rdi
100001a93: e8 48 00 00 00              	callq	72 <__ZNKSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE8capacityEv>
100001a98: 48 83 c4 10                 	addq	$16, %rsp
100001a9c: 5d                          	popq	%rbp
100001a9d: c3                          	retq
100001a9e: 66 90                       	nop

0000000100001aa0 __ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4sizeEv:
100001aa0: 55                          	pushq	%rbp
100001aa1: 48 89 e5                    	movq	%rsp, %rbp
100001aa4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001aa8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001aac: 48 8b 48 08                 	movq	8(%rax), %rcx
100001ab0: 48 8b 00                    	movq	(%rax), %rax
100001ab3: 48 29 c1                    	subq	%rax, %rcx
100001ab6: 48 89 c8                    	movq	%rcx, %rax
100001ab9: 48 99                       	cqto
100001abb: b9 28 00 00 00              	movl	$40, %ecx
100001ac0: 48 f7 f9                    	idivq	%rcx
100001ac3: 5d                          	popq	%rbp
100001ac4: c3                          	retq
100001ac5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001acf: 90                          	nop

0000000100001ad0 __ZNSt3__1L16__to_raw_pointerIN9AsmParser9asm_labelEEEPT_S4_:
100001ad0: 55                          	pushq	%rbp
100001ad1: 48 89 e5                    	movq	%rsp, %rbp
100001ad4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001ad8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001adc: 5d                          	popq	%rbp
100001add: c3                          	retq
100001ade: 66 90                       	nop

0000000100001ae0 __ZNKSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE8capacityEv:
100001ae0: 55                          	pushq	%rbp
100001ae1: 48 89 e5                    	movq	%rsp, %rbp
100001ae4: 48 83 ec 10                 	subq	$16, %rsp
100001ae8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001aec: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001af0: 48 89 c7                    	movq	%rax, %rdi
100001af3: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100001af7: e8 24 00 00 00              	callq	36 <__ZNKSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE9__end_capEv>
100001afc: 48 8b 00                    	movq	(%rax), %rax
100001aff: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100001b03: 48 8b 11                    	movq	(%rcx), %rdx
100001b06: 48 29 d0                    	subq	%rdx, %rax
100001b09: 48 99                       	cqto
100001b0b: be 28 00 00 00              	movl	$40, %esi
100001b10: 48 f7 fe                    	idivq	%rsi
100001b13: 48 83 c4 10                 	addq	$16, %rsp
100001b17: 5d                          	popq	%rbp
100001b18: c3                          	retq
100001b19: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100001b20 __ZNKSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE9__end_capEv:
100001b20: 55                          	pushq	%rbp
100001b21: 48 89 e5                    	movq	%rsp, %rbp
100001b24: 48 83 ec 10                 	subq	$16, %rsp
100001b28: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001b2c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001b30: 48 05 10 00 00 00           	addq	$16, %rax
100001b36: 48 89 c7                    	movq	%rax, %rdi
100001b39: e8 12 00 00 00              	callq	18 <__ZNKSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEE5firstEv>
100001b3e: 48 83 c4 10                 	addq	$16, %rsp
100001b42: 5d                          	popq	%rbp
100001b43: c3                          	retq
100001b44: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001b4e: 66 90                       	nop

0000000100001b50 __ZNKSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEE5firstEv:
100001b50: 55                          	pushq	%rbp
100001b51: 48 89 e5                    	movq	%rsp, %rbp
100001b54: 48 83 ec 10                 	subq	$16, %rsp
100001b58: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001b5c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001b60: 48 89 c7                    	movq	%rax, %rdi
100001b63: e8 08 00 00 00              	callq	8 <__ZNKSt3__122__compressed_pair_elemIPN9AsmParser9asm_labelELi0ELb0EE5__getEv>
100001b68: 48 83 c4 10                 	addq	$16, %rsp
100001b6c: 5d                          	popq	%rbp
100001b6d: c3                          	retq
100001b6e: 66 90                       	nop

0000000100001b70 __ZNKSt3__122__compressed_pair_elemIPN9AsmParser9asm_labelELi0ELb0EE5__getEv:
100001b70: 55                          	pushq	%rbp
100001b71: 48 89 e5                    	movq	%rsp, %rbp
100001b74: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001b78: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001b7c: 5d                          	popq	%rbp
100001b7d: c3                          	retq
100001b7e: 66 90                       	nop

0000000100001b80 __ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE5clearEv:
100001b80: 55                          	pushq	%rbp
100001b81: 48 89 e5                    	movq	%rsp, %rbp
100001b84: 48 83 ec 10                 	subq	$16, %rsp
100001b88: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001b8c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001b90: 48 8b 30                    	movq	(%rax), %rsi
100001b93: 48 89 c7                    	movq	%rax, %rdi
100001b96: e8 75 00 00 00              	callq	117 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE17__destruct_at_endEPS2_>
100001b9b: 48 83 c4 10                 	addq	$16, %rsp
100001b9f: 5d                          	popq	%rbp
100001ba0: c3                          	retq
100001ba1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001bab: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001bb0 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE10deallocateERS4_PS3_m:
100001bb0: 55                          	pushq	%rbp
100001bb1: 48 89 e5                    	movq	%rsp, %rbp
100001bb4: 48 83 ec 20                 	subq	$32, %rsp
100001bb8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001bbc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001bc0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100001bc4: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001bc8: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001bcc: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100001bd0: e8 8b 01 00 00              	callq	395 <__ZNSt3__19allocatorIN9AsmParser9asm_labelEE10deallocateEPS2_m>
100001bd5: 48 83 c4 20                 	addq	$32, %rsp
100001bd9: 5d                          	popq	%rbp
100001bda: c3                          	retq
100001bdb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001be0 __ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE7__allocEv:
100001be0: 55                          	pushq	%rbp
100001be1: 48 89 e5                    	movq	%rsp, %rbp
100001be4: 48 83 ec 10                 	subq	$16, %rsp
100001be8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001bec: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001bf0: 48 05 10 00 00 00           	addq	$16, %rax
100001bf6: 48 89 c7                    	movq	%rax, %rdi
100001bf9: e8 02 03 00 00              	callq	770 <__ZNSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEE6secondEv>
100001bfe: 48 83 c4 10                 	addq	$16, %rsp
100001c02: 5d                          	popq	%rbp
100001c03: c3                          	retq
100001c04: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001c0e: 66 90                       	nop

0000000100001c10 __ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE17__destruct_at_endEPS2_:
100001c10: 55                          	pushq	%rbp
100001c11: 48 89 e5                    	movq	%rsp, %rbp
100001c14: 48 83 ec 30                 	subq	$48, %rsp
100001c18: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001c1c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001c20: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001c24: 48 8b 48 08                 	movq	8(%rax), %rcx
100001c28: 48 89 4d e8                 	movq	%rcx, -24(%rbp)
100001c2c: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100001c30: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001c34: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
100001c38: 0f 84 37 00 00 00           	je	55 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE17__destruct_at_endEPS2_+0x65>
100001c3e: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100001c42: e8 99 ff ff ff              	callq	-103 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE7__allocEv>
100001c47: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100001c4b: 48 83 c1 d8                 	addq	$-40, %rcx
100001c4f: 48 89 4d e8                 	movq	%rcx, -24(%rbp)
100001c53: 48 89 cf                    	movq	%rcx, %rdi
100001c56: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100001c5a: e8 71 fe ff ff              	callq	-399 <__ZNSt3__1L16__to_raw_pointerIN9AsmParser9asm_labelEEEPT_S4_>
100001c5f: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100001c63: 48 89 c6                    	movq	%rax, %rsi
100001c66: e8 35 00 00 00              	callq	53 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE7destroyIS3_EEvRS4_PT_>
100001c6b: e9 00 00 00 00              	jmp	0 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE17__destruct_at_endEPS2_+0x60>
100001c70: e9 bb ff ff ff              	jmp	-69 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE17__destruct_at_endEPS2_+0x20>
100001c75: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001c79: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100001c7d: 48 89 41 08                 	movq	%rax, 8(%rcx)
100001c81: 48 83 c4 30                 	addq	$48, %rsp
100001c85: 5d                          	popq	%rbp
100001c86: c3                          	retq
100001c87: 48 89 c7                    	movq	%rax, %rdi
100001c8a: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
100001c8e: e8 5d f8 ff ff              	callq	-1955 <___clang_call_terminate>
100001c93: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001c9d: 0f 1f 00                    	nopl	(%rax)

0000000100001ca0 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE7destroyIS3_EEvRS4_PT_:
100001ca0: 55                          	pushq	%rbp
100001ca1: 48 89 e5                    	movq	%rsp, %rbp
100001ca4: 48 83 ec 20                 	subq	$32, %rsp
100001ca8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001cac: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001cb0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001cb4: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001cb8: e8 13 00 00 00              	callq	19 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE9__destroyIS3_EEvNS_17integral_constantIbLb1EEERS4_PT_>
100001cbd: 48 83 c4 20                 	addq	$32, %rsp
100001cc1: 5d                          	popq	%rbp
100001cc2: c3                          	retq
100001cc3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001ccd: 0f 1f 00                    	nopl	(%rax)

0000000100001cd0 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE9__destroyIS3_EEvNS_17integral_constantIbLb1EEERS4_PT_:
100001cd0: 55                          	pushq	%rbp
100001cd1: 48 89 e5                    	movq	%rsp, %rbp
100001cd4: 48 83 ec 20                 	subq	$32, %rsp
100001cd8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100001cdc: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100001ce0: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001ce4: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100001ce8: e8 13 00 00 00              	callq	19 <__ZNSt3__19allocatorIN9AsmParser9asm_labelEE7destroyEPS2_>
100001ced: 48 83 c4 20                 	addq	$32, %rsp
100001cf1: 5d                          	popq	%rbp
100001cf2: c3                          	retq
100001cf3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001cfd: 0f 1f 00                    	nopl	(%rax)

0000000100001d00 __ZNSt3__19allocatorIN9AsmParser9asm_labelEE7destroyEPS2_:
100001d00: 55                          	pushq	%rbp
100001d01: 48 89 e5                    	movq	%rsp, %rbp
100001d04: 48 83 ec 10                 	subq	$16, %rsp
100001d08: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001d0c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001d10: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001d14: e8 07 00 00 00              	callq	7 <__ZN9AsmParser9asm_labelD1Ev>
100001d19: 48 83 c4 10                 	addq	$16, %rsp
100001d1d: 5d                          	popq	%rbp
100001d1e: c3                          	retq
100001d1f: 90                          	nop

0000000100001d20 __ZN9AsmParser9asm_labelD1Ev:
100001d20: 55                          	pushq	%rbp
100001d21: 48 89 e5                    	movq	%rsp, %rbp
100001d24: 48 83 ec 10                 	subq	$16, %rsp
100001d28: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001d2c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001d30: e8 0b 00 00 00              	callq	11 <__ZN9AsmParser9asm_labelD2Ev>
100001d35: 48 83 c4 10                 	addq	$16, %rsp
100001d39: 5d                          	popq	%rbp
100001d3a: c3                          	retq
100001d3b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001d40 __ZN9AsmParser9asm_labelD2Ev:
100001d40: 55                          	pushq	%rbp
100001d41: 48 89 e5                    	movq	%rsp, %rbp
100001d44: 48 83 ec 10                 	subq	$16, %rsp
100001d48: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001d4c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001d50: e8 47 97 00 00              	callq	38727 <state.cpp+0x10000b49c>
100001d55: 48 83 c4 10                 	addq	$16, %rsp
100001d59: 5d                          	popq	%rbp
100001d5a: c3                          	retq
100001d5b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001d60 __ZNSt3__19allocatorIN9AsmParser9asm_labelEE10deallocateEPS2_m:
100001d60: 55                          	pushq	%rbp
100001d61: 48 89 e5                    	movq	%rsp, %rbp
100001d64: 48 83 ec 20                 	subq	$32, %rsp
100001d68: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001d6c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001d70: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100001d74: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001d78: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100001d7c: 48 c1 e0 03                 	shlq	$3, %rax
100001d80: 48 8d 34 80                 	leaq	(%rax,%rax,4), %rsi
100001d84: ba 08 00 00 00              	movl	$8, %edx
100001d89: e8 22 00 00 00              	callq	34 <__ZNSt3__1L19__libcpp_deallocateEPvmm>
100001d8e: e9 00 00 00 00              	jmp	0 <__ZNSt3__19allocatorIN9AsmParser9asm_labelEE10deallocateEPS2_m+0x33>
100001d93: 48 83 c4 20                 	addq	$32, %rsp
100001d97: 5d                          	popq	%rbp
100001d98: c3                          	retq
100001d99: 48 89 c7                    	movq	%rax, %rdi
100001d9c: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100001da0: e8 4b f7 ff ff              	callq	-2229 <___clang_call_terminate>
100001da5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001daf: 90                          	nop

0000000100001db0 __ZNSt3__1L19__libcpp_deallocateEPvmm:
100001db0: 55                          	pushq	%rbp
100001db1: 48 89 e5                    	movq	%rsp, %rbp
100001db4: 48 83 ec 20                 	subq	$32, %rsp
100001db8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001dbc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001dc0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100001dc4: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001dc8: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001dcc: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100001dd0: e8 0b 00 00 00              	callq	11 <__ZNSt3__117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm>
100001dd5: 48 83 c4 20                 	addq	$32, %rsp
100001dd9: 5d                          	popq	%rbp
100001dda: c3                          	retq
100001ddb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001de0 __ZNSt3__117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm:
100001de0: 55                          	pushq	%rbp
100001de1: 48 89 e5                    	movq	%rsp, %rbp
100001de4: 48 83 ec 20                 	subq	$32, %rsp
100001de8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001dec: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001df0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100001df4: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100001df8: e8 43 00 00 00              	callq	67 <__ZNSt3__1L24__is_overaligned_for_newEm>
100001dfd: a8 01                       	testb	$1, %al
100001dff: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm+0x2a>
100001e05: e9 1e 00 00 00              	jmp	30 <__ZNSt3__117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm+0x48>
100001e0a: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100001e0e: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100001e12: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001e16: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001e1a: 48 8b 55 e0                 	movq	-32(%rbp), %rdx
100001e1e: e8 d3 96 00 00              	callq	38611 <state.cpp+0x10000b4f6>
100001e23: e9 0d 00 00 00              	jmp	13 <__ZNSt3__117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm+0x55>
100001e28: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001e2c: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001e30: e8 bb 96 00 00              	callq	38587 <state.cpp+0x10000b4f0>
100001e35: 48 83 c4 20                 	addq	$32, %rsp
100001e39: 5d                          	popq	%rbp
100001e3a: c3                          	retq
100001e3b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001e40 __ZNSt3__1L24__is_overaligned_for_newEm:
100001e40: 55                          	pushq	%rbp
100001e41: 48 89 e5                    	movq	%rsp, %rbp
100001e44: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001e48: 48 83 7d f8 10              	cmpq	$16, -8(%rbp)
100001e4d: 0f 97 c0                    	seta	%al
100001e50: 24 01                       	andb	$1, %al
100001e52: 0f b6 c0                    	movzbl	%al, %eax
100001e55: 5d                          	popq	%rbp
100001e56: c3                          	retq
100001e57: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100001e60 __ZNSt3__117_DeallocateCaller27__do_deallocate_handle_sizeEPvmSt11align_val_t:
100001e60: 55                          	pushq	%rbp
100001e61: 48 89 e5                    	movq	%rsp, %rbp
100001e64: 48 83 ec 20                 	subq	$32, %rsp
100001e68: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001e6c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001e70: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100001e74: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001e78: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100001e7c: e8 81 96 00 00              	callq	38529 <state.cpp+0x10000b502>
100001e81: 48 83 c4 20                 	addq	$32, %rsp
100001e85: 5d                          	popq	%rbp
100001e86: c3                          	retq
100001e87: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100001e90 __ZNSt3__117_DeallocateCaller27__do_deallocate_handle_sizeEPvm:
100001e90: 55                          	pushq	%rbp
100001e91: 48 89 e5                    	movq	%rsp, %rbp
100001e94: 48 83 ec 10                 	subq	$16, %rsp
100001e98: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001e9c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001ea0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001ea4: e8 53 96 00 00              	callq	38483 <state.cpp+0x10000b4fc>
100001ea9: 48 83 c4 10                 	addq	$16, %rsp
100001ead: 5d                          	popq	%rbp
100001eae: c3                          	retq
100001eaf: 90                          	nop

0000000100001eb0 __ZNSt3__117_DeallocateCaller9__do_callISt11align_val_tEEvPvT_:
100001eb0: 55                          	pushq	%rbp
100001eb1: 48 89 e5                    	movq	%rsp, %rbp
100001eb4: 48 83 ec 10                 	subq	$16, %rsp
100001eb8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001ebc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001ec0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001ec4: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001ec8: e8 ad 96 00 00              	callq	38573 <state.cpp+0x10000b57a>
100001ecd: 48 83 c4 10                 	addq	$16, %rsp
100001ed1: 5d                          	popq	%rbp
100001ed2: c3                          	retq
100001ed3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100001edd: 0f 1f 00                    	nopl	(%rax)

0000000100001ee0 __ZNSt3__117_DeallocateCaller9__do_callEPv:
100001ee0: 55                          	pushq	%rbp
100001ee1: 48 89 e5                    	movq	%rsp, %rbp
100001ee4: 48 83 ec 10                 	subq	$16, %rsp
100001ee8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001eec: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001ef0: e8 7f 96 00 00              	callq	38527 <state.cpp+0x10000b574>
100001ef5: 48 83 c4 10                 	addq	$16, %rsp
100001ef9: 5d                          	popq	%rbp
100001efa: c3                          	retq
100001efb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001f00 __ZNSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEE6secondEv:
100001f00: 55                          	pushq	%rbp
100001f01: 48 89 e5                    	movq	%rsp, %rbp
100001f04: 48 83 ec 10                 	subq	$16, %rsp
100001f08: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001f0c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001f10: 48 89 c7                    	movq	%rax, %rdi
100001f13: e8 08 00 00 00              	callq	8 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIN9AsmParser9asm_labelEEELi1ELb1EE5__getEv>
100001f18: 48 83 c4 10                 	addq	$16, %rsp
100001f1c: 5d                          	popq	%rbp
100001f1d: c3                          	retq
100001f1e: 66 90                       	nop

0000000100001f20 __ZNSt3__122__compressed_pair_elemINS_9allocatorIN9AsmParser9asm_labelEEELi1ELb1EE5__getEv:
100001f20: 55                          	pushq	%rbp
100001f21: 48 89 e5                    	movq	%rsp, %rbp
100001f24: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001f28: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001f2c: 5d                          	popq	%rbp
100001f2d: c3                          	retq
100001f2e: 66 90                       	nop

0000000100001f30 __ZNSt3__18optionalIN9AsmParser10asm_sourceEED2Ev:
100001f30: 55                          	pushq	%rbp
100001f31: 48 89 e5                    	movq	%rsp, %rbp
100001f34: 48 83 ec 10                 	subq	$16, %rsp
100001f38: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001f3c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001f40: 48 89 c7                    	movq	%rax, %rdi
100001f43: e8 08 00 00 00              	callq	8 <__ZNSt3__127__optional_move_assign_baseIN9AsmParser10asm_sourceELb0EED2Ev>
100001f48: 48 83 c4 10                 	addq	$16, %rsp
100001f4c: 5d                          	popq	%rbp
100001f4d: c3                          	retq
100001f4e: 66 90                       	nop

0000000100001f50 __ZNSt3__127__optional_move_assign_baseIN9AsmParser10asm_sourceELb0EED2Ev:
100001f50: 55                          	pushq	%rbp
100001f51: 48 89 e5                    	movq	%rsp, %rbp
100001f54: 48 83 ec 10                 	subq	$16, %rsp
100001f58: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001f5c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001f60: 48 89 c7                    	movq	%rax, %rdi
100001f63: e8 08 00 00 00              	callq	8 <__ZNSt3__127__optional_copy_assign_baseIN9AsmParser10asm_sourceELb0EED2Ev>
100001f68: 48 83 c4 10                 	addq	$16, %rsp
100001f6c: 5d                          	popq	%rbp
100001f6d: c3                          	retq
100001f6e: 66 90                       	nop

0000000100001f70 __ZNSt3__127__optional_copy_assign_baseIN9AsmParser10asm_sourceELb0EED2Ev:
100001f70: 55                          	pushq	%rbp
100001f71: 48 89 e5                    	movq	%rsp, %rbp
100001f74: 48 83 ec 10                 	subq	$16, %rsp
100001f78: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001f7c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001f80: 48 89 c7                    	movq	%rax, %rdi
100001f83: e8 08 00 00 00              	callq	8 <__ZNSt3__120__optional_move_baseIN9AsmParser10asm_sourceELb0EED2Ev>
100001f88: 48 83 c4 10                 	addq	$16, %rsp
100001f8c: 5d                          	popq	%rbp
100001f8d: c3                          	retq
100001f8e: 66 90                       	nop

0000000100001f90 __ZNSt3__120__optional_move_baseIN9AsmParser10asm_sourceELb0EED2Ev:
100001f90: 55                          	pushq	%rbp
100001f91: 48 89 e5                    	movq	%rsp, %rbp
100001f94: 48 83 ec 10                 	subq	$16, %rsp
100001f98: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001f9c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001fa0: 48 89 c7                    	movq	%rax, %rdi
100001fa3: e8 08 00 00 00              	callq	8 <__ZNSt3__120__optional_copy_baseIN9AsmParser10asm_sourceELb0EED2Ev>
100001fa8: 48 83 c4 10                 	addq	$16, %rsp
100001fac: 5d                          	popq	%rbp
100001fad: c3                          	retq
100001fae: 66 90                       	nop

0000000100001fb0 __ZNSt3__120__optional_copy_baseIN9AsmParser10asm_sourceELb0EED2Ev:
100001fb0: 55                          	pushq	%rbp
100001fb1: 48 89 e5                    	movq	%rsp, %rbp
100001fb4: 48 83 ec 10                 	subq	$16, %rsp
100001fb8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001fbc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001fc0: 48 89 c7                    	movq	%rax, %rdi
100001fc3: e8 08 00 00 00              	callq	8 <__ZNSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EED2Ev>
100001fc8: 48 83 c4 10                 	addq	$16, %rsp
100001fcc: 5d                          	popq	%rbp
100001fcd: c3                          	retq
100001fce: 66 90                       	nop

0000000100001fd0 __ZNSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EED2Ev:
100001fd0: 55                          	pushq	%rbp
100001fd1: 48 89 e5                    	movq	%rsp, %rbp
100001fd4: 48 83 ec 10                 	subq	$16, %rsp
100001fd8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001fdc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001fe0: 48 89 c7                    	movq	%rax, %rdi
100001fe3: e8 08 00 00 00              	callq	8 <__ZNSt3__124__optional_destruct_baseIN9AsmParser10asm_sourceELb0EED2Ev>
100001fe8: 48 83 c4 10                 	addq	$16, %rsp
100001fec: 5d                          	popq	%rbp
100001fed: c3                          	retq
100001fee: 66 90                       	nop

0000000100001ff0 __ZNSt3__124__optional_destruct_baseIN9AsmParser10asm_sourceELb0EED2Ev:
100001ff0: 55                          	pushq	%rbp
100001ff1: 48 89 e5                    	movq	%rsp, %rbp
100001ff4: 48 83 ec 10                 	subq	$16, %rsp
100001ff8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001ffc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002000: f6 40 20 01                 	testb	$1, 32(%rax)
100002004: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100002008: 0f 84 0c 00 00 00           	je	12 <__ZNSt3__124__optional_destruct_baseIN9AsmParser10asm_sourceELb0EED2Ev+0x2a>
10000200e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002012: 48 89 c7                    	movq	%rax, %rdi
100002015: e8 06 fd ff ff              	callq	-762 <__ZN9AsmParser9asm_labelD1Ev>
10000201a: 48 83 c4 10                 	addq	$16, %rsp
10000201e: 5d                          	popq	%rbp
10000201f: c3                          	retq

0000000100002020 __ZNSt3__18optionalINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEED2Ev:
100002020: 55                          	pushq	%rbp
100002021: 48 89 e5                    	movq	%rsp, %rbp
100002024: 48 83 ec 10                 	subq	$16, %rsp
100002028: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000202c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002030: 48 89 c7                    	movq	%rax, %rdi
100002033: e8 08 00 00 00              	callq	8 <__ZNSt3__127__optional_move_assign_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EED2Ev>
100002038: 48 83 c4 10                 	addq	$16, %rsp
10000203c: 5d                          	popq	%rbp
10000203d: c3                          	retq
10000203e: 66 90                       	nop

0000000100002040 __ZNSt3__127__optional_move_assign_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EED2Ev:
100002040: 55                          	pushq	%rbp
100002041: 48 89 e5                    	movq	%rsp, %rbp
100002044: 48 83 ec 10                 	subq	$16, %rsp
100002048: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000204c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002050: 48 89 c7                    	movq	%rax, %rdi
100002053: e8 08 00 00 00              	callq	8 <__ZNSt3__127__optional_copy_assign_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EED2Ev>
100002058: 48 83 c4 10                 	addq	$16, %rsp
10000205c: 5d                          	popq	%rbp
10000205d: c3                          	retq
10000205e: 66 90                       	nop

0000000100002060 __ZNSt3__127__optional_copy_assign_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EED2Ev:
100002060: 55                          	pushq	%rbp
100002061: 48 89 e5                    	movq	%rsp, %rbp
100002064: 48 83 ec 10                 	subq	$16, %rsp
100002068: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000206c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002070: 48 89 c7                    	movq	%rax, %rdi
100002073: e8 08 00 00 00              	callq	8 <__ZNSt3__120__optional_move_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EED2Ev>
100002078: 48 83 c4 10                 	addq	$16, %rsp
10000207c: 5d                          	popq	%rbp
10000207d: c3                          	retq
10000207e: 66 90                       	nop

0000000100002080 __ZNSt3__120__optional_move_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EED2Ev:
100002080: 55                          	pushq	%rbp
100002081: 48 89 e5                    	movq	%rsp, %rbp
100002084: 48 83 ec 10                 	subq	$16, %rsp
100002088: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000208c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002090: 48 89 c7                    	movq	%rax, %rdi
100002093: e8 08 00 00 00              	callq	8 <__ZNSt3__120__optional_copy_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EED2Ev>
100002098: 48 83 c4 10                 	addq	$16, %rsp
10000209c: 5d                          	popq	%rbp
10000209d: c3                          	retq
10000209e: 66 90                       	nop

00000001000020a0 __ZNSt3__120__optional_copy_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EED2Ev:
1000020a0: 55                          	pushq	%rbp
1000020a1: 48 89 e5                    	movq	%rsp, %rbp
1000020a4: 48 83 ec 10                 	subq	$16, %rsp
1000020a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000020ac: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000020b0: 48 89 c7                    	movq	%rax, %rdi
1000020b3: e8 08 00 00 00              	callq	8 <__ZNSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EED2Ev>
1000020b8: 48 83 c4 10                 	addq	$16, %rsp
1000020bc: 5d                          	popq	%rbp
1000020bd: c3                          	retq
1000020be: 66 90                       	nop

00000001000020c0 __ZNSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EED2Ev:
1000020c0: 55                          	pushq	%rbp
1000020c1: 48 89 e5                    	movq	%rsp, %rbp
1000020c4: 48 83 ec 10                 	subq	$16, %rsp
1000020c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000020cc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000020d0: 48 89 c7                    	movq	%rax, %rdi
1000020d3: e8 08 00 00 00              	callq	8 <__ZNSt3__124__optional_destruct_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EED2Ev>
1000020d8: 48 83 c4 10                 	addq	$16, %rsp
1000020dc: 5d                          	popq	%rbp
1000020dd: c3                          	retq
1000020de: 66 90                       	nop

00000001000020e0 __ZNSt3__124__optional_destruct_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EED2Ev:
1000020e0: 55                          	pushq	%rbp
1000020e1: 48 89 e5                    	movq	%rsp, %rbp
1000020e4: 48 83 ec 10                 	subq	$16, %rsp
1000020e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000020ec: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000020f0: f6 40 18 01                 	testb	$1, 24(%rax)
1000020f4: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000020f8: 0f 84 0c 00 00 00           	je	12 <__ZNSt3__124__optional_destruct_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EED2Ev+0x2a>
1000020fe: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002102: 48 89 c7                    	movq	%rax, %rdi
100002105: e8 06 00 00 00              	callq	6 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED1Ev>
10000210a: 48 83 c4 10                 	addq	$16, %rsp
10000210e: 5d                          	popq	%rbp
10000210f: c3                          	retq

0000000100002110 __ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED1Ev:
100002110: 55                          	pushq	%rbp
100002111: 48 89 e5                    	movq	%rsp, %rbp
100002114: 48 83 ec 10                 	subq	$16, %rsp
100002118: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000211c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002120: e8 0b 00 00 00              	callq	11 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2Ev>
100002125: 48 83 c4 10                 	addq	$16, %rsp
100002129: 5d                          	popq	%rbp
10000212a: c3                          	retq
10000212b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100002130 __ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2Ev:
100002130: 55                          	pushq	%rbp
100002131: 48 89 e5                    	movq	%rsp, %rbp
100002134: 48 83 ec 20                 	subq	$32, %rsp
100002138: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000213c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002140: 48 89 c7                    	movq	%rax, %rdi
100002143: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100002147: e8 34 00 00 00              	callq	52 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteEv>
10000214c: e9 00 00 00 00              	jmp	0 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2Ev+0x21>
100002151: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100002155: 48 89 c7                    	movq	%rax, %rdi
100002158: e8 e3 00 00 00              	callq	227 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2Ev>
10000215d: 48 83 c4 20                 	addq	$32, %rsp
100002161: 5d                          	popq	%rbp
100002162: c3                          	retq
100002163: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100002167: 89 55 ec                    	movl	%edx, -20(%rbp)
10000216a: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000216e: 48 89 c7                    	movq	%rax, %rdi
100002171: e8 ca 00 00 00              	callq	202 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2Ev>
100002176: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000217a: e8 71 f3 ff ff              	callq	-3215 <___clang_call_terminate>
10000217f: 90                          	nop

0000000100002180 __ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteEv:
100002180: 55                          	pushq	%rbp
100002181: 48 89 e5                    	movq	%rsp, %rbp
100002184: 48 83 ec 50                 	subq	$80, %rsp
100002188: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000218c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002190: 48 89 c7                    	movq	%rax, %rdi
100002193: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100002197: e8 24 01 00 00              	callq	292 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataEv>
10000219c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000021a0: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000021a4: e8 17 01 00 00              	callq	279 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataEv>
1000021a9: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000021ad: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000021b1: e8 2a 01 00 00              	callq	298 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityEv>
1000021b6: 48 69 c0 18 00 00 00        	imulq	$24, %rax, %rax
1000021bd: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
1000021c1: 48 01 c1                    	addq	%rax, %rcx
1000021c4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000021c8: 48 89 4d d8                 	movq	%rcx, -40(%rbp)
1000021cc: e8 ef 00 00 00              	callq	239 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataEv>
1000021d1: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000021d5: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000021d9: e8 22 01 00 00              	callq	290 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4sizeEv>
1000021de: 48 69 c0 18 00 00 00        	imulq	$24, %rax, %rax
1000021e5: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
1000021e9: 48 01 c1                    	addq	%rax, %rcx
1000021ec: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000021f0: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
1000021f4: e8 c7 00 00 00              	callq	199 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataEv>
1000021f9: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000021fd: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100002201: e8 da 00 00 00              	callq	218 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityEv>
100002206: 48 69 c0 18 00 00 00        	imulq	$24, %rax, %rax
10000220d: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100002211: 48 01 c1                    	addq	%rax, %rcx
100002214: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100002218: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000221c: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100002220: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100002224: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100002228: 48 89 c1                    	movq	%rax, %rcx
10000222b: 4c 8b 45 b8                 	movq	-72(%rbp), %r8
10000222f: e8 6c 00 00 00              	callq	108 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE31__annotate_contiguous_containerEPKvSA_SA_SA_>
100002234: 48 83 c4 50                 	addq	$80, %rsp
100002238: 5d                          	popq	%rbp
100002239: c3                          	retq
10000223a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100002240 __ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2Ev:
100002240: 55                          	pushq	%rbp
100002241: 48 89 e5                    	movq	%rsp, %rbp
100002244: 48 83 ec 20                 	subq	$32, %rsp
100002248: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000224c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002250: 48 83 38 00                 	cmpq	$0, (%rax)
100002254: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100002258: 0f 84 39 00 00 00           	je	57 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2Ev+0x57>
10000225e: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100002262: e8 79 01 00 00              	callq	377 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearEv>
100002267: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000226b: e8 d0 01 00 00              	callq	464 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocEv>
100002270: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100002274: 48 8b 31                    	movq	(%rcx), %rsi
100002277: 48 89 cf                    	movq	%rcx, %rdi
10000227a: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000227e: 48 89 75 e0                 	movq	%rsi, -32(%rbp)
100002282: e8 b9 00 00 00              	callq	185 <__ZNKSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityEv>
100002287: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
10000228b: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
10000228f: 48 89 c2                    	movq	%rax, %rdx
100002292: e8 79 01 00 00              	callq	377 <__ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10deallocateERS7_PS6_m>
100002297: 48 83 c4 20                 	addq	$32, %rsp
10000229b: 5d                          	popq	%rbp
10000229c: c3                          	retq
10000229d: 0f 1f 00                    	nopl	(%rax)

00000001000022a0 __ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE31__annotate_contiguous_containerEPKvSA_SA_SA_:
1000022a0: 55                          	pushq	%rbp
1000022a1: 48 89 e5                    	movq	%rsp, %rbp
1000022a4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000022a8: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000022ac: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000022b0: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
1000022b4: 4c 89 45 d8                 	movq	%r8, -40(%rbp)
1000022b8: 5d                          	popq	%rbp
1000022b9: c3                          	retq
1000022ba: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000022c0 __ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataEv:
1000022c0: 55                          	pushq	%rbp
1000022c1: 48 89 e5                    	movq	%rsp, %rbp
1000022c4: 48 83 ec 10                 	subq	$16, %rsp
1000022c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000022cc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000022d0: 48 8b 38                    	movq	(%rax), %rdi
1000022d3: e8 58 00 00 00              	callq	88 <__ZNSt3__1L16__to_raw_pointerINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_>
1000022d8: 48 83 c4 10                 	addq	$16, %rsp
1000022dc: 5d                          	popq	%rbp
1000022dd: c3                          	retq
1000022de: 66 90                       	nop

00000001000022e0 __ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityEv:
1000022e0: 55                          	pushq	%rbp
1000022e1: 48 89 e5                    	movq	%rsp, %rbp
1000022e4: 48 83 ec 10                 	subq	$16, %rsp
1000022e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000022ec: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000022f0: 48 89 c7                    	movq	%rax, %rdi
1000022f3: e8 48 00 00 00              	callq	72 <__ZNKSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityEv>
1000022f8: 48 83 c4 10                 	addq	$16, %rsp
1000022fc: 5d                          	popq	%rbp
1000022fd: c3                          	retq
1000022fe: 66 90                       	nop

0000000100002300 __ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4sizeEv:
100002300: 55                          	pushq	%rbp
100002301: 48 89 e5                    	movq	%rsp, %rbp
100002304: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002308: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000230c: 48 8b 48 08                 	movq	8(%rax), %rcx
100002310: 48 8b 00                    	movq	(%rax), %rax
100002313: 48 29 c1                    	subq	%rax, %rcx
100002316: 48 89 c8                    	movq	%rcx, %rax
100002319: 48 99                       	cqto
10000231b: b9 18 00 00 00              	movl	$24, %ecx
100002320: 48 f7 f9                    	idivq	%rcx
100002323: 5d                          	popq	%rbp
100002324: c3                          	retq
100002325: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000232f: 90                          	nop

0000000100002330 __ZNSt3__1L16__to_raw_pointerINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_:
100002330: 55                          	pushq	%rbp
100002331: 48 89 e5                    	movq	%rsp, %rbp
100002334: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002338: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000233c: 5d                          	popq	%rbp
10000233d: c3                          	retq
10000233e: 66 90                       	nop

0000000100002340 __ZNKSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityEv:
100002340: 55                          	pushq	%rbp
100002341: 48 89 e5                    	movq	%rsp, %rbp
100002344: 48 83 ec 10                 	subq	$16, %rsp
100002348: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000234c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002350: 48 89 c7                    	movq	%rax, %rdi
100002353: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100002357: e8 24 00 00 00              	callq	36 <__ZNKSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capEv>
10000235c: 48 8b 00                    	movq	(%rax), %rax
10000235f: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100002363: 48 8b 11                    	movq	(%rcx), %rdx
100002366: 48 29 d0                    	subq	%rdx, %rax
100002369: 48 99                       	cqto
10000236b: be 18 00 00 00              	movl	$24, %esi
100002370: 48 f7 fe                    	idivq	%rsi
100002373: 48 83 c4 10                 	addq	$16, %rsp
100002377: 5d                          	popq	%rbp
100002378: c3                          	retq
100002379: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100002380 __ZNKSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capEv:
100002380: 55                          	pushq	%rbp
100002381: 48 89 e5                    	movq	%rsp, %rbp
100002384: 48 83 ec 10                 	subq	$16, %rsp
100002388: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000238c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002390: 48 05 10 00 00 00           	addq	$16, %rax
100002396: 48 89 c7                    	movq	%rax, %rdi
100002399: e8 12 00 00 00              	callq	18 <__ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstEv>
10000239e: 48 83 c4 10                 	addq	$16, %rsp
1000023a2: 5d                          	popq	%rbp
1000023a3: c3                          	retq
1000023a4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000023ae: 66 90                       	nop

00000001000023b0 __ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstEv:
1000023b0: 55                          	pushq	%rbp
1000023b1: 48 89 e5                    	movq	%rsp, %rbp
1000023b4: 48 83 ec 10                 	subq	$16, %rsp
1000023b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000023bc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000023c0: 48 89 c7                    	movq	%rax, %rdi
1000023c3: e8 08 00 00 00              	callq	8 <__ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv>
1000023c8: 48 83 c4 10                 	addq	$16, %rsp
1000023cc: 5d                          	popq	%rbp
1000023cd: c3                          	retq
1000023ce: 66 90                       	nop

00000001000023d0 __ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv:
1000023d0: 55                          	pushq	%rbp
1000023d1: 48 89 e5                    	movq	%rsp, %rbp
1000023d4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000023d8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000023dc: 5d                          	popq	%rbp
1000023dd: c3                          	retq
1000023de: 66 90                       	nop

00000001000023e0 __ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearEv:
1000023e0: 55                          	pushq	%rbp
1000023e1: 48 89 e5                    	movq	%rsp, %rbp
1000023e4: 48 83 ec 10                 	subq	$16, %rsp
1000023e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000023ec: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000023f0: 48 8b 30                    	movq	(%rax), %rsi
1000023f3: 48 89 c7                    	movq	%rax, %rdi
1000023f6: e8 75 00 00 00              	callq	117 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endEPS6_>
1000023fb: 48 83 c4 10                 	addq	$16, %rsp
1000023ff: 5d                          	popq	%rbp
100002400: c3                          	retq
100002401: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000240b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100002410 __ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10deallocateERS7_PS6_m:
100002410: 55                          	pushq	%rbp
100002411: 48 89 e5                    	movq	%rsp, %rbp
100002414: 48 83 ec 20                 	subq	$32, %rsp
100002418: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000241c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100002420: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100002424: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002428: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000242c: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100002430: e8 4b 01 00 00              	callq	331 <__ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateEPS5_m>
100002435: 48 83 c4 20                 	addq	$32, %rsp
100002439: 5d                          	popq	%rbp
10000243a: c3                          	retq
10000243b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100002440 __ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocEv:
100002440: 55                          	pushq	%rbp
100002441: 48 89 e5                    	movq	%rsp, %rbp
100002444: 48 83 ec 10                 	subq	$16, %rsp
100002448: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000244c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002450: 48 05 10 00 00 00           	addq	$16, %rax
100002456: 48 89 c7                    	movq	%rax, %rdi
100002459: e8 72 01 00 00              	callq	370 <__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondEv>
10000245e: 48 83 c4 10                 	addq	$16, %rsp
100002462: 5d                          	popq	%rbp
100002463: c3                          	retq
100002464: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000246e: 66 90                       	nop

0000000100002470 __ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endEPS6_:
100002470: 55                          	pushq	%rbp
100002471: 48 89 e5                    	movq	%rsp, %rbp
100002474: 48 83 ec 30                 	subq	$48, %rsp
100002478: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000247c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100002480: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002484: 48 8b 48 08                 	movq	8(%rax), %rcx
100002488: 48 89 4d e8                 	movq	%rcx, -24(%rbp)
10000248c: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100002490: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002494: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
100002498: 0f 84 37 00 00 00           	je	55 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endEPS6_+0x65>
10000249e: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
1000024a2: e8 99 ff ff ff              	callq	-103 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocEv>
1000024a7: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000024ab: 48 83 c1 e8                 	addq	$-24, %rcx
1000024af: 48 89 4d e8                 	movq	%rcx, -24(%rbp)
1000024b3: 48 89 cf                    	movq	%rcx, %rdi
1000024b6: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000024ba: e8 71 fe ff ff              	callq	-399 <__ZNSt3__1L16__to_raw_pointerINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_>
1000024bf: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
1000024c3: 48 89 c6                    	movq	%rax, %rsi
1000024c6: e8 35 00 00 00              	callq	53 <__ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyIS6_EEvRS7_PT_>
1000024cb: e9 00 00 00 00              	jmp	0 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endEPS6_+0x60>
1000024d0: e9 bb ff ff ff              	jmp	-69 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endEPS6_+0x20>
1000024d5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000024d9: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
1000024dd: 48 89 41 08                 	movq	%rax, 8(%rcx)
1000024e1: 48 83 c4 30                 	addq	$48, %rsp
1000024e5: 5d                          	popq	%rbp
1000024e6: c3                          	retq
1000024e7: 48 89 c7                    	movq	%rax, %rdi
1000024ea: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
1000024ee: e8 fd ef ff ff              	callq	-4099 <___clang_call_terminate>
1000024f3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000024fd: 0f 1f 00                    	nopl	(%rax)

0000000100002500 __ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyIS6_EEvRS7_PT_:
100002500: 55                          	pushq	%rbp
100002501: 48 89 e5                    	movq	%rsp, %rbp
100002504: 48 83 ec 20                 	subq	$32, %rsp
100002508: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000250c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100002510: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002514: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100002518: e8 13 00 00 00              	callq	19 <__ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9__destroyIS6_EEvNS_17integral_constantIbLb1EEERS7_PT_>
10000251d: 48 83 c4 20                 	addq	$32, %rsp
100002521: 5d                          	popq	%rbp
100002522: c3                          	retq
100002523: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000252d: 0f 1f 00                    	nopl	(%rax)

0000000100002530 __ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9__destroyIS6_EEvNS_17integral_constantIbLb1EEERS7_PT_:
100002530: 55                          	pushq	%rbp
100002531: 48 89 e5                    	movq	%rsp, %rbp
100002534: 48 83 ec 20                 	subq	$32, %rsp
100002538: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000253c: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100002540: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100002544: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100002548: e8 13 00 00 00              	callq	19 <__ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE7destroyEPS5_>
10000254d: 48 83 c4 20                 	addq	$32, %rsp
100002551: 5d                          	popq	%rbp
100002552: c3                          	retq
100002553: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000255d: 0f 1f 00                    	nopl	(%rax)

0000000100002560 __ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE7destroyEPS5_:
100002560: 55                          	pushq	%rbp
100002561: 48 89 e5                    	movq	%rsp, %rbp
100002564: 48 83 ec 10                 	subq	$16, %rsp
100002568: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000256c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100002570: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100002574: e8 23 8f 00 00              	callq	36643 <state.cpp+0x10000b49c>
100002579: 48 83 c4 10                 	addq	$16, %rsp
10000257d: 5d                          	popq	%rbp
10000257e: c3                          	retq
10000257f: 90                          	nop

0000000100002580 __ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateEPS5_m:
100002580: 55                          	pushq	%rbp
100002581: 48 89 e5                    	movq	%rsp, %rbp
100002584: 48 83 ec 20                 	subq	$32, %rsp
100002588: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000258c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100002590: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100002594: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100002598: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000259c: 48 c1 e0 03                 	shlq	$3, %rax
1000025a0: 48 8d 34 40                 	leaq	(%rax,%rax,2), %rsi
1000025a4: ba 08 00 00 00              	movl	$8, %edx
1000025a9: e8 02 f8 ff ff              	callq	-2046 <__ZNSt3__1L19__libcpp_deallocateEPvmm>
1000025ae: e9 00 00 00 00              	jmp	0 <__ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateEPS5_m+0x33>
1000025b3: 48 83 c4 20                 	addq	$32, %rsp
1000025b7: 5d                          	popq	%rbp
1000025b8: c3                          	retq
1000025b9: 48 89 c7                    	movq	%rax, %rdi
1000025bc: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
1000025c0: e8 2b ef ff ff              	callq	-4309 <___clang_call_terminate>
1000025c5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000025cf: 90                          	nop

00000001000025d0 __ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondEv:
1000025d0: 55                          	pushq	%rbp
1000025d1: 48 89 e5                    	movq	%rsp, %rbp
1000025d4: 48 83 ec 10                 	subq	$16, %rsp
1000025d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000025dc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000025e0: 48 89 c7                    	movq	%rax, %rdi
1000025e3: e8 08 00 00 00              	callq	8 <__ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getEv>
1000025e8: 48 83 c4 10                 	addq	$16, %rsp
1000025ec: 5d                          	popq	%rbp
1000025ed: c3                          	retq
1000025ee: 66 90                       	nop

00000001000025f0 __ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getEv:
1000025f0: 55                          	pushq	%rbp
1000025f1: 48 89 e5                    	movq	%rsp, %rbp
1000025f4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000025f8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000025fc: 5d                          	popq	%rbp
1000025fd: c3                          	retq
1000025fe: 66 90                       	nop

0000000100002600 __ZNSt3__19allocatorIN9AsmParser8asm_lineEE10deallocateEPS2_m:
100002600: 55                          	pushq	%rbp
100002601: 48 89 e5                    	movq	%rsp, %rbp
100002604: 48 83 ec 20                 	subq	$32, %rsp
100002608: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000260c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100002610: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100002614: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100002618: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000261c: 48 89 c1                    	movq	%rax, %rcx
10000261f: 48 c1 e1 07                 	shlq	$7, %rcx
100002623: 48 8d 34 c1                 	leaq	(%rcx,%rax,8), %rsi
100002627: ba 08 00 00 00              	movl	$8, %edx
10000262c: e8 7f f7 ff ff              	callq	-2177 <__ZNSt3__1L19__libcpp_deallocateEPvmm>
100002631: e9 00 00 00 00              	jmp	0 <__ZNSt3__19allocatorIN9AsmParser8asm_lineEE10deallocateEPS2_m+0x36>
100002636: 48 83 c4 20                 	addq	$32, %rsp
10000263a: 5d                          	popq	%rbp
10000263b: c3                          	retq
10000263c: 48 89 c7                    	movq	%rax, %rdi
10000263f: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100002643: e8 a8 ee ff ff              	callq	-4440 <___clang_call_terminate>
100002648: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100002650 __ZNSt3__117__compressed_pairIPN9AsmParser8asm_lineENS_9allocatorIS2_EEE6secondEv:
100002650: 55                          	pushq	%rbp
100002651: 48 89 e5                    	movq	%rsp, %rbp
100002654: 48 83 ec 10                 	subq	$16, %rsp
100002658: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000265c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002660: 48 89 c7                    	movq	%rax, %rdi
100002663: e8 08 00 00 00              	callq	8 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIN9AsmParser8asm_lineEEELi1ELb1EE5__getEv>
100002668: 48 83 c4 10                 	addq	$16, %rsp
10000266c: 5d                          	popq	%rbp
10000266d: c3                          	retq
10000266e: 66 90                       	nop

0000000100002670 __ZNSt3__122__compressed_pair_elemINS_9allocatorIN9AsmParser8asm_lineEEELi1ELb1EE5__getEv:
100002670: 55                          	pushq	%rbp
100002671: 48 89 e5                    	movq	%rsp, %rbp
100002674: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002678: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000267c: 5d                          	popq	%rbp
10000267d: c3                          	retq
10000267e: 66 90                       	nop

0000000100002680 __ZN9AsmParser11ParserStateD2Ev:
100002680: 55                          	pushq	%rbp
100002681: 48 89 e5                    	movq	%rsp, %rbp
100002684: 48 83 ec 10                 	subq	$16, %rsp
100002688: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000268c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002690: 48 89 c1                    	movq	%rax, %rcx
100002693: 48 81 c1 20 00 00 00        	addq	$32, %rcx
10000269a: 48 89 cf                    	movq	%rcx, %rdi
10000269d: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000026a1: e8 f6 8d 00 00              	callq	36342 <state.cpp+0x10000b49c>
1000026a6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000026aa: 48 05 08 00 00 00           	addq	$8, %rax
1000026b0: 48 89 c7                    	movq	%rax, %rdi
1000026b3: e8 e4 8d 00 00              	callq	36324 <state.cpp+0x10000b49c>
1000026b8: 48 83 c4 10                 	addq	$16, %rsp
1000026bc: 5d                          	popq	%rbp
1000026bd: c3                          	retq
1000026be: 66 90                       	nop

00000001000026c0 __ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEED2Ev:
1000026c0: 55                          	pushq	%rbp
1000026c1: 48 89 e5                    	movq	%rsp, %rbp
1000026c4: 48 83 ec 20                 	subq	$32, %rsp
1000026c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000026cc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000026d0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000026d4: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000026d8: 48 8b 11                    	movq	(%rcx), %rdx
1000026db: 48 89 10                    	movq	%rdx, (%rax)
1000026de: 48 8b 51 40                 	movq	64(%rcx), %rdx
1000026e2: 48 8b 30                    	movq	(%rax), %rsi
1000026e5: 48 8b 76 e8                 	movq	-24(%rsi), %rsi
1000026e9: 48 89 14 30                 	movq	%rdx, (%rax,%rsi)
1000026ed: 48 8b 51 48                 	movq	72(%rcx), %rdx
1000026f1: 48 89 50 10                 	movq	%rdx, 16(%rax)
1000026f5: 48 89 c2                    	movq	%rax, %rdx
1000026f8: 48 81 c2 18 00 00 00        	addq	$24, %rdx
1000026ff: 48 89 d7                    	movq	%rdx, %rdi
100002702: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100002706: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
10000270a: e8 d1 00 00 00              	callq	209 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev>
10000270f: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100002713: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100002717: 48 81 c1 08 00 00 00        	addq	$8, %rcx
10000271e: 48 89 c7                    	movq	%rax, %rdi
100002721: 48 89 ce                    	movq	%rcx, %rsi
100002724: e8 b5 8d 00 00              	callq	36277 <state.cpp+0x10000b4de>
100002729: 48 83 c4 20                 	addq	$32, %rsp
10000272d: 5d                          	popq	%rbp
10000272e: c3                          	retq
10000272f: 90                          	nop

0000000100002730 __ZThn16_NSt3__113basic_fstreamIcNS_11char_traitsIcEEED1Ev:
100002730: 55                          	pushq	%rbp
100002731: 48 89 e5                    	movq	%rsp, %rbp
100002734: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002738: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000273c: 48 83 c0 f0                 	addq	$-16, %rax
100002740: 48 89 c7                    	movq	%rax, %rdi
100002743: 5d                          	popq	%rbp
100002744: e9 77 eb ff ff              	jmp	-5257 <__ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEED1Ev>
100002749: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100002750 __ZTv0_n24_NSt3__113basic_fstreamIcNS_11char_traitsIcEEED1Ev:
100002750: 55                          	pushq	%rbp
100002751: 48 89 e5                    	movq	%rsp, %rbp
100002754: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002758: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000275c: 48 8b 08                    	movq	(%rax), %rcx
10000275f: 48 8b 49 e8                 	movq	-24(%rcx), %rcx
100002763: 48 01 c8                    	addq	%rcx, %rax
100002766: 48 89 c7                    	movq	%rax, %rdi
100002769: 5d                          	popq	%rbp
10000276a: e9 51 eb ff ff              	jmp	-5295 <__ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEED1Ev>
10000276f: 90                          	nop

0000000100002770 __ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEED0Ev:
100002770: 55                          	pushq	%rbp
100002771: 48 89 e5                    	movq	%rsp, %rbp
100002774: 48 83 ec 10                 	subq	$16, %rsp
100002778: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000277c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002780: 48 89 c7                    	movq	%rax, %rdi
100002783: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100002787: e8 34 eb ff ff              	callq	-5324 <__ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEED1Ev>
10000278c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002790: 48 89 c7                    	movq	%rax, %rdi
100002793: e8 dc 8d 00 00              	callq	36316 <state.cpp+0x10000b574>
100002798: 48 83 c4 10                 	addq	$16, %rsp
10000279c: 5d                          	popq	%rbp
10000279d: c3                          	retq
10000279e: 66 90                       	nop

00000001000027a0 __ZThn16_NSt3__113basic_fstreamIcNS_11char_traitsIcEEED0Ev:
1000027a0: 55                          	pushq	%rbp
1000027a1: 48 89 e5                    	movq	%rsp, %rbp
1000027a4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000027a8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000027ac: 48 83 c0 f0                 	addq	$-16, %rax
1000027b0: 48 89 c7                    	movq	%rax, %rdi
1000027b3: 5d                          	popq	%rbp
1000027b4: e9 b7 ff ff ff              	jmp	-73 <__ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEED0Ev>
1000027b9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

00000001000027c0 __ZTv0_n24_NSt3__113basic_fstreamIcNS_11char_traitsIcEEED0Ev:
1000027c0: 55                          	pushq	%rbp
1000027c1: 48 89 e5                    	movq	%rsp, %rbp
1000027c4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000027c8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000027cc: 48 8b 08                    	movq	(%rax), %rcx
1000027cf: 48 8b 49 e8                 	movq	-24(%rcx), %rcx
1000027d3: 48 01 c8                    	addq	%rcx, %rax
1000027d6: 48 89 c7                    	movq	%rax, %rdi
1000027d9: 5d                          	popq	%rbp
1000027da: e9 91 ff ff ff              	jmp	-111 <__ZNSt3__113basic_fstreamIcNS_11char_traitsIcEEED0Ev>
1000027df: 90                          	nop

00000001000027e0 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev:
1000027e0: 55                          	pushq	%rbp
1000027e1: 48 89 e5                    	movq	%rsp, %rbp
1000027e4: 48 83 ec 10                 	subq	$16, %rsp
1000027e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000027ec: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000027f0: e8 0b 00 00 00              	callq	11 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev>
1000027f5: 48 83 c4 10                 	addq	$16, %rsp
1000027f9: 5d                          	popq	%rbp
1000027fa: c3                          	retq
1000027fb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100002800 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev:
100002800: 55                          	pushq	%rbp
100002801: 48 89 e5                    	movq	%rsp, %rbp
100002804: 48 83 ec 40                 	subq	$64, %rsp
100002808: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000280c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002810: 48 8b 0d 31 98 00 00        	movq	38961(%rip), %rcx
100002817: 48 83 c1 10                 	addq	$16, %rcx
10000281b: 48 89 08                    	movq	%rcx, (%rax)
10000281e: 48 89 c7                    	movq	%rax, %rdi
100002821: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100002825: e8 90 8c 00 00              	callq	35984 <state.cpp+0x10000b4ba>
10000282a: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev+0x2f>
10000282f: e9 23 00 00 00              	jmp	35 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev+0x57>
100002834: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100002838: 89 55 ec                    	movl	%edx, -20(%rbp)
10000283b: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000283f: e8 54 8d 00 00              	callq	36180 <state.cpp+0x10000b598>
100002844: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100002848: e8 51 8d 00 00              	callq	36177 <state.cpp+0x10000b59e>
10000284d: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev+0x52>
100002852: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev+0x57>
100002857: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000285b: f6 80 90 01 00 00 01        	testb	$1, 400(%rax)
100002862: 0f 84 3c 00 00 00           	je	60 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev+0xa4>
100002868: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000286c: 48 8b 48 40                 	movq	64(%rax), %rcx
100002870: 48 83 f9 00                 	cmpq	$0, %rcx
100002874: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100002878: 0f 84 09 00 00 00           	je	9 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev+0x87>
10000287e: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100002882: e8 e7 8c 00 00              	callq	36071 <state.cpp+0x10000b56e>
100002887: e9 18 00 00 00              	jmp	24 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev+0xa4>
10000288c: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100002890: 89 55 ec                    	movl	%edx, -20(%rbp)
100002893: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100002897: 48 89 c7                    	movq	%rax, %rdi
10000289a: e8 4b 8c 00 00              	callq	35915 <state.cpp+0x10000b4ea>
10000289f: e9 47 00 00 00              	jmp	71 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev+0xeb>
1000028a4: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000028a8: f6 80 91 01 00 00 01        	testb	$1, 401(%rax)
1000028af: 0f 84 24 00 00 00           	je	36 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev+0xd9>
1000028b5: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000028b9: 48 8b 48 68                 	movq	104(%rax), %rcx
1000028bd: 48 83 f9 00                 	cmpq	$0, %rcx
1000028c1: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
1000028c5: 0f 84 09 00 00 00           	je	9 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev+0xd4>
1000028cb: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
1000028cf: e8 9a 8c 00 00              	callq	35994 <state.cpp+0x10000b56e>
1000028d4: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev+0xd9>
1000028d9: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000028dd: 48 89 c7                    	movq	%rax, %rdi
1000028e0: e8 05 8c 00 00              	callq	35845 <state.cpp+0x10000b4ea>
1000028e5: 48 83 c4 40                 	addq	$64, %rsp
1000028e9: 5d                          	popq	%rbp
1000028ea: c3                          	retq
1000028eb: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000028ef: e8 fc eb ff ff              	callq	-5124 <___clang_call_terminate>
1000028f4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000028fe: 66 90                       	nop

0000000100002900 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv:
100002900: 55                          	pushq	%rbp
100002901: 48 89 e5                    	movq	%rsp, %rbp
100002904: 48 83 ec 50                 	subq	$80, %rsp
100002908: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000290c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002910: 48 c7 45 f0 00 00 00 00     	movq	$0, -16(%rbp)
100002918: 48 83 78 78 00              	cmpq	$0, 120(%rax)
10000291d: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100002921: 0f 84 d2 00 00 00           	je	210 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv+0xf9>
100002927: 48 8b 45 c0                 	movq	-64(%rbp), %rax
10000292b: 48 89 45 f0                 	movq	%rax, -16(%rbp)
10000292f: 48 8b 70 78                 	movq	120(%rax), %rsi
100002933: 48 8b 0d 46 97 00 00        	movq	38726(%rip), %rcx
10000293a: 48 89 4d d8                 	movq	%rcx, -40(%rbp)
10000293e: 48 8d 7d e0                 	leaq	-32(%rbp), %rdi
100002942: 48 8d 55 d8                 	leaq	-40(%rbp), %rdx
100002946: e8 b5 18 00 00              	callq	6325 <__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EEC1ILb1EvEES2_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS4_EEXT_EE20__good_rval_ref_typeE>
10000294b: 48 8b 45 c0                 	movq	-64(%rbp), %rax
10000294f: 48 8b 08                    	movq	(%rax), %rcx
100002952: 48 8b 49 30                 	movq	48(%rcx), %rcx
100002956: 48 89 c7                    	movq	%rax, %rdi
100002959: ff d1                       	callq	*%rcx
10000295b: 89 45 bc                    	movl	%eax, -68(%rbp)
10000295e: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv+0x63>
100002963: 8b 45 bc                    	movl	-68(%rbp), %eax
100002966: 83 f8 00                    	cmpl	$0, %eax
100002969: 0f 84 22 00 00 00           	je	34 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv+0x91>
10000296f: 48 c7 45 f0 00 00 00 00     	movq	$0, -16(%rbp)
100002977: e9 15 00 00 00              	jmp	21 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv+0x91>
10000297c: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100002980: 89 55 cc                    	movl	%edx, -52(%rbp)
100002983: 48 8d 7d e0                 	leaq	-32(%rbp), %rdi
100002987: e8 e4 18 00 00              	callq	6372 <__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1Ev>
10000298c: e9 72 00 00 00              	jmp	114 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv+0x103>
100002991: 48 8d 7d e0                 	leaq	-32(%rbp), %rdi
100002995: e8 96 18 00 00              	callq	6294 <__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EE7releaseEv>
10000299a: 48 89 c7                    	movq	%rax, %rdi
10000299d: e8 14 8c 00 00              	callq	35860 <state.cpp+0x10000b5b6>
1000029a2: 89 45 b8                    	movl	%eax, -72(%rbp)
1000029a5: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv+0xaa>
1000029aa: 8b 45 b8                    	movl	-72(%rbp), %eax
1000029ad: 83 f8 00                    	cmpl	$0, %eax
1000029b0: 0f 85 11 00 00 00           	jne	17 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv+0xc7>
1000029b6: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000029ba: 48 c7 40 78 00 00 00 00     	movq	$0, 120(%rax)
1000029c2: e9 08 00 00 00              	jmp	8 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv+0xcf>
1000029c7: 48 c7 45 f0 00 00 00 00     	movq	$0, -16(%rbp)
1000029cf: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000029d3: 48 8b 08                    	movq	(%rax), %rcx
1000029d6: 48 8b 49 18                 	movq	24(%rcx), %rcx
1000029da: 31 d2                       	xorl	%edx, %edx
1000029dc: 89 d6                       	movl	%edx, %esi
1000029de: 48 89 c7                    	movq	%rax, %rdi
1000029e1: 48 89 75 b0                 	movq	%rsi, -80(%rbp)
1000029e5: 48 8b 55 b0                 	movq	-80(%rbp), %rdx
1000029e9: ff d1                       	callq	*%rcx
1000029eb: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv+0xf0>
1000029f0: 48 8d 7d e0                 	leaq	-32(%rbp), %rdi
1000029f4: e8 77 18 00 00              	callq	6263 <__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1Ev>
1000029f9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000029fd: 48 83 c4 50                 	addq	$80, %rsp
100002a01: 5d                          	popq	%rbp
100002a02: c3                          	retq
100002a03: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100002a07: e8 12 8a 00 00              	callq	35346 <state.cpp+0x10000b41e>
100002a0c: 0f 0b                       	ud2
100002a0e: 66 90                       	nop

0000000100002a10 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev:
100002a10: 55                          	pushq	%rbp
100002a11: 48 89 e5                    	movq	%rsp, %rbp
100002a14: 48 83 ec 10                 	subq	$16, %rsp
100002a18: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002a1c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002a20: 48 89 c7                    	movq	%rax, %rdi
100002a23: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100002a27: e8 b4 fd ff ff              	callq	-588 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev>
100002a2c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002a30: 48 89 c7                    	movq	%rax, %rdi
100002a33: e8 3c 8b 00 00              	callq	35644 <state.cpp+0x10000b574>
100002a38: 48 83 c4 10                 	addq	$16, %rsp
100002a3c: 5d                          	popq	%rbp
100002a3d: c3                          	retq
100002a3e: 66 90                       	nop

0000000100002a40 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE:
100002a40: 55                          	pushq	%rbp
100002a41: 48 89 e5                    	movq	%rsp, %rbp
100002a44: 48 83 ec 30                 	subq	$48, %rsp
100002a48: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002a4c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100002a50: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002a54: 48 8b 08                    	movq	(%rax), %rcx
100002a57: 48 89 c7                    	movq	%rax, %rdi
100002a5a: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100002a5e: ff 51 30                    	callq	*48(%rcx)
100002a61: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100002a65: 89 45 dc                    	movl	%eax, -36(%rbp)
100002a68: e8 d3 1a 00 00              	callq	6867 <__ZNSt3__1L9use_facetINS_7codecvtIcc11__mbstate_tEEEERKT_RKNS_6localeE>
100002a6d: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100002a71: 48 89 81 80 00 00 00        	movq	%rax, 128(%rcx)
100002a78: 8a 91 92 01 00 00           	movb	402(%rcx), %dl
100002a7e: 80 e2 01                    	andb	$1, %dl
100002a81: 88 55 ef                    	movb	%dl, -17(%rbp)
100002a84: 48 8b b9 80 00 00 00        	movq	128(%rcx), %rdi
100002a8b: e8 e0 1a 00 00              	callq	6880 <__ZNKSt3__17codecvtIcc11__mbstate_tE13always_noconvEv>
100002a90: 24 01                       	andb	$1, %al
100002a92: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100002a96: 88 81 92 01 00 00           	movb	%al, 402(%rcx)
100002a9c: 8a 45 ef                    	movb	-17(%rbp), %al
100002a9f: 24 01                       	andb	$1, %al
100002aa1: 44 0f b6 c0                 	movzbl	%al, %r8d
100002aa5: 8a 81 92 01 00 00           	movb	402(%rcx), %al
100002aab: 24 01                       	andb	$1, %al
100002aad: 44 0f b6 c8                 	movzbl	%al, %r9d
100002ab1: 45 39 c8                    	cmpl	%r9d, %r8d
100002ab4: 0f 84 3f 01 00 00           	je	319 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE+0x1b9>
100002aba: 31 c0                       	xorl	%eax, %eax
100002abc: 89 c1                       	movl	%eax, %ecx
100002abe: 48 8b 55 e0                 	movq	-32(%rbp), %rdx
100002ac2: 48 89 d7                    	movq	%rdx, %rdi
100002ac5: 48 89 ce                    	movq	%rcx, %rsi
100002ac8: 48 89 ca                    	movq	%rcx, %rdx
100002acb: e8 d0 1a 00 00              	callq	6864 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_>
100002ad0: 31 c0                       	xorl	%eax, %eax
100002ad2: 89 c1                       	movl	%eax, %ecx
100002ad4: 48 8b 55 e0                 	movq	-32(%rbp), %rdx
100002ad8: 48 89 d7                    	movq	%rdx, %rdi
100002adb: 48 89 ce                    	movq	%rcx, %rsi
100002ade: 48 89 ca                    	movq	%rcx, %rdx
100002ae1: e8 fa 1a 00 00              	callq	6906 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_>
100002ae6: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100002aea: f6 81 92 01 00 00 01        	testb	$1, 402(%rcx)
100002af1: 0f 84 74 00 00 00           	je	116 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE+0x12b>
100002af7: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100002afb: f6 80 90 01 00 00 01        	testb	$1, 400(%rax)
100002b02: 0f 84 24 00 00 00           	je	36 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE+0xec>
100002b08: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100002b0c: 48 8b 48 40                 	movq	64(%rax), %rcx
100002b10: 48 83 f9 00                 	cmpq	$0, %rcx
100002b14: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100002b18: 0f 84 09 00 00 00           	je	9 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE+0xe7>
100002b1e: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100002b22: e8 47 8a 00 00              	callq	35399 <state.cpp+0x10000b56e>
100002b27: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE+0xec>
100002b2c: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100002b30: 8a 88 91 01 00 00           	movb	401(%rax), %cl
100002b36: 80 e1 01                    	andb	$1, %cl
100002b39: 88 88 90 01 00 00           	movb	%cl, 400(%rax)
100002b3f: 48 8b 50 70                 	movq	112(%rax), %rdx
100002b43: 48 89 50 60                 	movq	%rdx, 96(%rax)
100002b47: 48 8b 50 68                 	movq	104(%rax), %rdx
100002b4b: 48 89 50 40                 	movq	%rdx, 64(%rax)
100002b4f: 48 c7 40 70 00 00 00 00     	movq	$0, 112(%rax)
100002b57: 48 c7 40 68 00 00 00 00     	movq	$0, 104(%rax)
100002b5f: c6 80 91 01 00 00 00        	movb	$0, 401(%rax)
100002b66: e9 89 00 00 00              	jmp	137 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE+0x1b4>
100002b6b: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100002b6f: f6 80 90 01 00 00 01        	testb	$1, 400(%rax)
100002b76: 0f 85 4f 00 00 00           	jne	79 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE+0x18b>
100002b7c: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100002b80: 48 8b 48 40                 	movq	64(%rax), %rcx
100002b84: 48 05 58 00 00 00           	addq	$88, %rax
100002b8a: 48 39 c1                    	cmpq	%rax, %rcx
100002b8d: 0f 84 38 00 00 00           	je	56 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE+0x18b>
100002b93: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100002b97: 48 8b 48 60                 	movq	96(%rax), %rcx
100002b9b: 48 89 48 70                 	movq	%rcx, 112(%rax)
100002b9f: 48 8b 48 40                 	movq	64(%rax), %rcx
100002ba3: 48 89 48 68                 	movq	%rcx, 104(%rax)
100002ba7: c6 80 91 01 00 00 00        	movb	$0, 401(%rax)
100002bae: 48 8b 78 60                 	movq	96(%rax), %rdi
100002bb2: e8 c9 89 00 00              	callq	35273 <state.cpp+0x10000b580>
100002bb7: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100002bbb: 48 89 41 40                 	movq	%rax, 64(%rcx)
100002bbf: c6 81 90 01 00 00 01        	movb	$1, 400(%rcx)
100002bc6: e9 24 00 00 00              	jmp	36 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE+0x1af>
100002bcb: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100002bcf: 48 8b 48 60                 	movq	96(%rax), %rcx
100002bd3: 48 89 48 70                 	movq	%rcx, 112(%rax)
100002bd7: 48 8b 78 70                 	movq	112(%rax), %rdi
100002bdb: e8 a0 89 00 00              	callq	35232 <state.cpp+0x10000b580>
100002be0: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100002be4: 48 89 41 68                 	movq	%rax, 104(%rcx)
100002be8: c6 81 91 01 00 00 01        	movb	$1, 401(%rcx)
100002bef: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE+0x1b4>
100002bf4: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE+0x1b9>
100002bf9: 48 83 c4 30                 	addq	$48, %rsp
100002bfd: 5d                          	popq	%rbp
100002bfe: c3                          	retq
100002bff: 90                          	nop

0000000100002c00 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl:
100002c00: 55                          	pushq	%rbp
100002c01: 48 89 e5                    	movq	%rsp, %rbp
100002c04: 48 83 ec 40                 	subq	$64, %rsp
100002c08: 31 c0                       	xorl	%eax, %eax
100002c0a: 89 c1                       	movl	%eax, %ecx
100002c0c: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002c10: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100002c14: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100002c18: 48 8b 55 f8                 	movq	-8(%rbp), %rdx
100002c1c: 48 89 d6                    	movq	%rdx, %rsi
100002c1f: 48 89 f7                    	movq	%rsi, %rdi
100002c22: 48 89 ce                    	movq	%rcx, %rsi
100002c25: 48 89 55 d8                 	movq	%rdx, -40(%rbp)
100002c29: 48 89 ca                    	movq	%rcx, %rdx
100002c2c: e8 6f 19 00 00              	callq	6511 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_>
100002c31: 31 c0                       	xorl	%eax, %eax
100002c33: 89 c1                       	movl	%eax, %ecx
100002c35: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100002c39: 48 89 d7                    	movq	%rdx, %rdi
100002c3c: 48 89 ce                    	movq	%rcx, %rsi
100002c3f: 48 89 ca                    	movq	%rcx, %rdx
100002c42: e8 99 19 00 00              	callq	6553 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_>
100002c47: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100002c4b: f6 81 90 01 00 00 01        	testb	$1, 400(%rcx)
100002c52: 0f 84 24 00 00 00           	je	36 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x7c>
100002c58: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100002c5c: 48 8b 48 40                 	movq	64(%rax), %rcx
100002c60: 48 83 f9 00                 	cmpq	$0, %rcx
100002c64: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100002c68: 0f 84 09 00 00 00           	je	9 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x77>
100002c6e: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100002c72: e8 f7 88 00 00              	callq	35063 <state.cpp+0x10000b56e>
100002c77: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x7c>
100002c7c: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100002c80: f6 80 91 01 00 00 01        	testb	$1, 401(%rax)
100002c87: 0f 84 24 00 00 00           	je	36 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0xb1>
100002c8d: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100002c91: 48 8b 48 68                 	movq	104(%rax), %rcx
100002c95: 48 83 f9 00                 	cmpq	$0, %rcx
100002c99: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100002c9d: 0f 84 09 00 00 00           	je	9 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0xac>
100002ca3: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
100002ca7: e8 c2 88 00 00              	callq	35010 <state.cpp+0x10000b56e>
100002cac: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0xb1>
100002cb1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100002cb5: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100002cb9: 48 89 41 60                 	movq	%rax, 96(%rcx)
100002cbd: 48 83 79 60 08              	cmpq	$8, 96(%rcx)
100002cc2: 0f 86 55 00 00 00           	jbe	85 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x11d>
100002cc8: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100002ccc: f6 80 92 01 00 00 01        	testb	$1, 402(%rax)
100002cd3: 0f 84 23 00 00 00           	je	35 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0xfc>
100002cd9: 48 83 7d f0 00              	cmpq	$0, -16(%rbp)
100002cde: 0f 84 18 00 00 00           	je	24 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0xfc>
100002ce4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002ce8: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100002cec: 48 89 41 40                 	movq	%rax, 64(%rcx)
100002cf0: c6 81 90 01 00 00 00        	movb	$0, 400(%rcx)
100002cf7: e9 1c 00 00 00              	jmp	28 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x118>
100002cfc: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100002d00: 48 8b 78 60                 	movq	96(%rax), %rdi
100002d04: e8 77 88 00 00              	callq	34935 <state.cpp+0x10000b580>
100002d09: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100002d0d: 48 89 41 40                 	movq	%rax, 64(%rcx)
100002d11: c6 81 90 01 00 00 01        	movb	$1, 400(%rcx)
100002d18: e9 21 00 00 00              	jmp	33 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x13e>
100002d1d: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100002d21: 48 05 58 00 00 00           	addq	$88, %rax
100002d27: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100002d2b: 48 89 41 40                 	movq	%rax, 64(%rcx)
100002d2f: 48 c7 41 60 08 00 00 00     	movq	$8, 96(%rcx)
100002d37: c6 81 90 01 00 00 00        	movb	$0, 400(%rcx)
100002d3e: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100002d42: f6 80 92 01 00 00 01        	testb	$1, 402(%rax)
100002d49: 0f 85 73 00 00 00           	jne	115 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x1c2>
100002d4f: 48 c7 45 e0 08 00 00 00     	movq	$8, -32(%rbp)
100002d57: 48 8d 7d e8                 	leaq	-24(%rbp), %rdi
100002d5b: 48 8d 75 e0                 	leaq	-32(%rbp), %rsi
100002d5f: e8 ac 18 00 00              	callq	6316 <__ZNSt3__1L3maxIlEERKT_S3_S3_>
100002d64: 48 8b 00                    	movq	(%rax), %rax
100002d67: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100002d6b: 48 89 41 70                 	movq	%rax, 112(%rcx)
100002d6f: 48 83 7d f0 00              	cmpq	$0, -16(%rbp)
100002d74: 0f 84 27 00 00 00           	je	39 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x1a1>
100002d7a: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100002d7e: 48 83 78 70 08              	cmpq	$8, 112(%rax)
100002d83: 0f 82 18 00 00 00           	jb	24 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x1a1>
100002d89: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002d8d: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100002d91: 48 89 41 68                 	movq	%rax, 104(%rcx)
100002d95: c6 81 91 01 00 00 00        	movb	$0, 401(%rcx)
100002d9c: e9 1c 00 00 00              	jmp	28 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x1bd>
100002da1: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100002da5: 48 8b 78 70                 	movq	112(%rax), %rdi
100002da9: e8 d2 87 00 00              	callq	34770 <state.cpp+0x10000b580>
100002dae: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100002db2: 48 89 41 68                 	movq	%rax, 104(%rcx)
100002db6: c6 81 91 01 00 00 01        	movb	$1, 401(%rcx)
100002dbd: e9 1b 00 00 00              	jmp	27 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl+0x1dd>
100002dc2: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100002dc6: 48 c7 40 70 00 00 00 00     	movq	$0, 112(%rax)
100002dce: 48 c7 40 68 00 00 00 00     	movq	$0, 104(%rax)
100002dd6: c6 80 91 01 00 00 00        	movb	$0, 401(%rax)
100002ddd: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100002de1: 48 83 c4 40                 	addq	$64, %rsp
100002de5: 5d                          	popq	%rbp
100002de6: c3                          	retq
100002de7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100002df0 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj:
100002df0: 55                          	pushq	%rbp
100002df1: 48 89 e5                    	movq	%rsp, %rbp
100002df4: 48 81 ec e0 01 00 00        	subq	$480, %rsp
100002dfb: 48 89 f8                    	movq	%rdi, %rax
100002dfe: 4c 8b 0d 73 92 00 00        	movq	37491(%rip), %r9
100002e05: 4d 8b 09                    	movq	(%r9), %r9
100002e08: 4c 89 4d f8                 	movq	%r9, -8(%rbp)
100002e0c: 48 89 b5 e8 fe ff ff        	movq	%rsi, -280(%rbp)
100002e13: 48 89 95 e0 fe ff ff        	movq	%rdx, -288(%rbp)
100002e1a: 89 8d dc fe ff ff           	movl	%ecx, -292(%rbp)
100002e20: 44 89 85 d8 fe ff ff        	movl	%r8d, -296(%rbp)
100002e27: 48 8b 95 e8 fe ff ff        	movq	-280(%rbp), %rdx
100002e2e: 48 83 ba 80 00 00 00 00     	cmpq	$0, 128(%rdx)
100002e36: 48 89 bd c8 fe ff ff        	movq	%rdi, -312(%rbp)
100002e3d: 48 89 85 c0 fe ff ff        	movq	%rax, -320(%rbp)
100002e44: 48 89 95 b8 fe ff ff        	movq	%rdx, -328(%rbp)
100002e4b: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x66>
100002e51: e8 6a 18 00 00              	callq	6250 <__ZNSt3__1L16__throw_bad_castEv>
100002e56: 48 8b 85 b8 fe ff ff        	movq	-328(%rbp), %rax
100002e5d: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100002e64: e8 97 18 00 00              	callq	6295 <__ZNKSt3__17codecvtIcc11__mbstate_tE8encodingEv>
100002e69: 89 85 d4 fe ff ff           	movl	%eax, -300(%rbp)
100002e6f: 48 8b 8d b8 fe ff ff        	movq	-328(%rbp), %rcx
100002e76: 48 83 79 78 00              	cmpq	$0, 120(%rcx)
100002e7b: 0f 84 34 00 00 00           	je	52 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0xc5>
100002e81: 83 bd d4 fe ff ff 00        	cmpl	$0, -300(%rbp)
100002e88: 0f 8f 0e 00 00 00           	jg	14 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0xac>
100002e8e: 48 83 bd e0 fe ff ff 00     	cmpq	$0, -288(%rbp)
100002e96: 0f 85 19 00 00 00           	jne	25 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0xc5>
100002e9c: 48 8b 85 b8 fe ff ff        	movq	-328(%rbp), %rax
100002ea3: 48 8b 08                    	movq	(%rax), %rcx
100002ea6: 48 89 c7                    	movq	%rax, %rdi
100002ea9: ff 51 30                    	callq	*48(%rcx)
100002eac: 83 f8 00                    	cmpl	$0, %eax
100002eaf: 0f 84 18 00 00 00           	je	24 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0xdd>
100002eb5: 48 8b bd c8 fe ff ff        	movq	-312(%rbp), %rdi
100002ebc: 48 c7 c6 ff ff ff ff        	movq	$-1, %rsi
100002ec3: e8 58 18 00 00              	callq	6232 <__ZNSt3__14fposI11__mbstate_tEC1Ex>
100002ec8: e9 8f 01 00 00              	jmp	399 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x26c>
100002ecd: 8b 85 dc fe ff ff           	movl	-292(%rbp), %eax
100002ed3: 85 c0                       	testl	%eax, %eax
100002ed5: 89 85 b4 fe ff ff           	movl	%eax, -332(%rbp)
100002edb: 0f 84 2d 00 00 00           	je	45 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x11e>
100002ee1: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0xf6>
100002ee6: 8b 85 b4 fe ff ff           	movl	-332(%rbp), %eax
100002eec: 83 e8 01                    	subl	$1, %eax
100002eef: 0f 84 28 00 00 00           	je	40 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x12d>
100002ef5: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x10a>
100002efa: 8b 85 b4 fe ff ff           	movl	-332(%rbp), %eax
100002f00: 83 e8 02                    	subl	$2, %eax
100002f03: 0f 84 23 00 00 00           	je	35 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x13c>
100002f09: e9 2d 00 00 00              	jmp	45 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x14b>
100002f0e: c7 85 d0 fe ff ff 00 00 00 00       	movl	$0, -304(%rbp)
100002f18: e9 36 00 00 00              	jmp	54 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x163>
100002f1d: c7 85 d0 fe ff ff 01 00 00 00       	movl	$1, -304(%rbp)
100002f27: e9 27 00 00 00              	jmp	39 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x163>
100002f2c: c7 85 d0 fe ff ff 02 00 00 00       	movl	$2, -304(%rbp)
100002f36: e9 18 00 00 00              	jmp	24 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x163>
100002f3b: 48 8b bd c8 fe ff ff        	movq	-312(%rbp), %rdi
100002f42: 48 c7 c6 ff ff ff ff        	movq	$-1, %rsi
100002f49: e8 d2 17 00 00              	callq	6098 <__ZNSt3__14fposI11__mbstate_tEC1Ex>
100002f4e: e9 09 01 00 00              	jmp	265 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x26c>
100002f53: 48 8b 85 b8 fe ff ff        	movq	-328(%rbp), %rax
100002f5a: 48 8b 78 78                 	movq	120(%rax), %rdi
100002f5e: 83 bd d4 fe ff ff 00        	cmpl	$0, -300(%rbp)
100002f65: 48 89 bd a8 fe ff ff        	movq	%rdi, -344(%rbp)
100002f6c: 0f 8e 1b 00 00 00           	jle	27 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x19d>
100002f72: 48 63 85 d4 fe ff ff        	movslq	-300(%rbp), %rax
100002f79: 48 0f af 85 e0 fe ff ff     	imulq	-288(%rbp), %rax
100002f81: 48 89 85 a0 fe ff ff        	movq	%rax, -352(%rbp)
100002f88: e9 10 00 00 00              	jmp	16 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x1ad>
100002f8d: 31 c0                       	xorl	%eax, %eax
100002f8f: 89 c1                       	movl	%eax, %ecx
100002f91: 48 89 8d a0 fe ff ff        	movq	%rcx, -352(%rbp)
100002f98: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x1ad>
100002f9d: 48 8b 85 a0 fe ff ff        	movq	-352(%rbp), %rax
100002fa4: 8b 95 d0 fe ff ff           	movl	-304(%rbp), %edx
100002faa: 48 8b bd a8 fe ff ff        	movq	-344(%rbp), %rdi
100002fb1: 48 89 c6                    	movq	%rax, %rsi
100002fb4: e8 1b 86 00 00              	callq	34331 <state.cpp+0x10000b5d4>
100002fb9: 83 f8 00                    	cmpl	$0, %eax
100002fbc: 0f 84 18 00 00 00           	je	24 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x1ea>
100002fc2: 48 8b bd c8 fe ff ff        	movq	-312(%rbp), %rdi
100002fc9: 48 c7 c6 ff ff ff ff        	movq	$-1, %rsi
100002fd0: e8 4b 17 00 00              	callq	5963 <__ZNSt3__14fposI11__mbstate_tEC1Ex>
100002fd5: e9 82 00 00 00              	jmp	130 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x26c>
100002fda: 48 8b 85 b8 fe ff ff        	movq	-328(%rbp), %rax
100002fe1: 48 8b 78 78                 	movq	120(%rax), %rdi
100002fe5: e8 f0 85 00 00              	callq	34288 <state.cpp+0x10000b5da>
100002fea: 48 8d bd 70 ff ff ff        	leaq	-144(%rbp), %rdi
100002ff1: 48 89 c6                    	movq	%rax, %rsi
100002ff4: e8 27 17 00 00              	callq	5927 <__ZNSt3__14fposI11__mbstate_tEC1Ex>
100002ff9: 48 8b 85 b8 fe ff ff        	movq	-328(%rbp), %rax
100003000: 48 05 88 00 00 00           	addq	$136, %rax
100003006: 48 8d 8d f0 fe ff ff        	leaq	-272(%rbp), %rcx
10000300d: 48 89 cf                    	movq	%rcx, %rdi
100003010: 48 89 c6                    	movq	%rax, %rsi
100003013: ba 80 00 00 00              	movl	$128, %edx
100003018: e8 c9 85 00 00              	callq	34249 <state.cpp+0x10000b5e6>
10000301d: 48 89 e0                    	movq	%rsp, %rax
100003020: b9 10 00 00 00              	movl	$16, %ecx
100003025: 48 8d b5 f0 fe ff ff        	leaq	-272(%rbp), %rsi
10000302c: 48 89 c7                    	movq	%rax, %rdi
10000302f: f3 48 a5                    	rep		movsq	(%rsi), %es:(%rdi)
100003032: 48 8d bd 70 ff ff ff        	leaq	-144(%rbp), %rdi
100003039: e8 12 17 00 00              	callq	5906 <__ZNSt3__14fposI11__mbstate_tE5stateES1_>
10000303e: 48 8b 85 c8 fe ff ff        	movq	-312(%rbp), %rax
100003045: 48 8d 8d 70 ff ff ff        	leaq	-144(%rbp), %rcx
10000304c: 48 89 c7                    	movq	%rax, %rdi
10000304f: 48 89 ce                    	movq	%rcx, %rsi
100003052: ba 88 00 00 00              	movl	$136, %edx
100003057: e8 8a 85 00 00              	callq	34186 <state.cpp+0x10000b5e6>
10000305c: 48 8b 05 15 90 00 00        	movq	36885(%rip), %rax
100003063: 48 8b 00                    	movq	(%rax), %rax
100003066: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
10000306a: 48 39 c8                    	cmpq	%rcx, %rax
10000306d: 0f 85 10 00 00 00           	jne	16 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj+0x293>
100003073: 48 8b 85 c0 fe ff ff        	movq	-320(%rbp), %rax
10000307a: 48 81 c4 e0 01 00 00        	addq	$480, %rsp
100003081: 5d                          	popq	%rbp
100003082: c3                          	retq
100003083: e8 28 85 00 00              	callq	34088 <state.cpp+0x10000b5b0>
100003088: 0f 0b                       	ud2
10000308a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100003090 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj:
100003090: 55                          	pushq	%rbp
100003091: 48 89 e5                    	movq	%rsp, %rbp
100003094: 48 81 ec c0 00 00 00        	subq	$192, %rsp
10000309b: 48 89 f8                    	movq	%rdi, %rax
10000309e: 48 8d 4d 10                 	leaq	16(%rbp), %rcx
1000030a2: 4c 8b 05 cf 8f 00 00        	movq	36815(%rip), %r8
1000030a9: 4d 8b 00                    	movq	(%r8), %r8
1000030ac: 4c 89 45 f8                 	movq	%r8, -8(%rbp)
1000030b0: 48 89 b5 70 ff ff ff        	movq	%rsi, -144(%rbp)
1000030b7: 89 95 6c ff ff ff           	movl	%edx, -148(%rbp)
1000030bd: 48 8b b5 70 ff ff ff        	movq	-144(%rbp), %rsi
1000030c4: 48 83 7e 78 00              	cmpq	$0, 120(%rsi)
1000030c9: 48 89 bd 60 ff ff ff        	movq	%rdi, -160(%rbp)
1000030d0: 48 89 85 58 ff ff ff        	movq	%rax, -168(%rbp)
1000030d7: 48 89 8d 50 ff ff ff        	movq	%rcx, -176(%rbp)
1000030de: 48 89 b5 48 ff ff ff        	movq	%rsi, -184(%rbp)
1000030e5: 0f 84 19 00 00 00           	je	25 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj+0x74>
1000030eb: 48 8b 85 48 ff ff ff        	movq	-184(%rbp), %rax
1000030f2: 48 8b 08                    	movq	(%rax), %rcx
1000030f5: 48 89 c7                    	movq	%rax, %rdi
1000030f8: ff 51 30                    	callq	*48(%rcx)
1000030fb: 83 f8 00                    	cmpl	$0, %eax
1000030fe: 0f 84 18 00 00 00           	je	24 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj+0x8c>
100003104: 48 8b bd 60 ff ff ff        	movq	-160(%rbp), %rdi
10000310b: 48 c7 c6 ff ff ff ff        	movq	$-1, %rsi
100003112: e8 09 16 00 00              	callq	5641 <__ZNSt3__14fposI11__mbstate_tEC1Ex>
100003117: e9 a8 00 00 00              	jmp	168 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj+0x134>
10000311c: 48 8b 85 48 ff ff ff        	movq	-184(%rbp), %rax
100003123: 48 8b 78 78                 	movq	120(%rax), %rdi
100003127: 48 8b 8d 50 ff ff ff        	movq	-176(%rbp), %rcx
10000312e: 48 89 bd 40 ff ff ff        	movq	%rdi, -192(%rbp)
100003135: 48 89 cf                    	movq	%rcx, %rdi
100003138: e8 93 16 00 00              	callq	5779 <__ZNKSt3__14fposI11__mbstate_tEcvxEv>
10000313d: 31 d2                       	xorl	%edx, %edx
10000313f: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
100003146: 48 89 c6                    	movq	%rax, %rsi
100003149: e8 86 84 00 00              	callq	33926 <state.cpp+0x10000b5d4>
10000314e: 83 f8 00                    	cmpl	$0, %eax
100003151: 0f 84 18 00 00 00           	je	24 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj+0xdf>
100003157: 48 8b bd 60 ff ff ff        	movq	-160(%rbp), %rdi
10000315e: 48 c7 c6 ff ff ff ff        	movq	$-1, %rsi
100003165: e8 b6 15 00 00              	callq	5558 <__ZNSt3__14fposI11__mbstate_tEC1Ex>
10000316a: e9 55 00 00 00              	jmp	85 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj+0x134>
10000316f: 48 8d bd 78 ff ff ff        	leaq	-136(%rbp), %rdi
100003176: 48 8b b5 50 ff ff ff        	movq	-176(%rbp), %rsi
10000317d: e8 6e 16 00 00              	callq	5742 <__ZNKSt3__14fposI11__mbstate_tE5stateEv>
100003182: 48 8b 85 48 ff ff ff        	movq	-184(%rbp), %rax
100003189: 48 05 88 00 00 00           	addq	$136, %rax
10000318f: 48 8d 8d 78 ff ff ff        	leaq	-136(%rbp), %rcx
100003196: 48 89 c7                    	movq	%rax, %rdi
100003199: 48 89 ce                    	movq	%rcx, %rsi
10000319c: ba 80 00 00 00              	movl	$128, %edx
1000031a1: e8 40 84 00 00              	callq	33856 <state.cpp+0x10000b5e6>
1000031a6: 48 8b 85 60 ff ff ff        	movq	-160(%rbp), %rax
1000031ad: 48 8b 8d 50 ff ff ff        	movq	-176(%rbp), %rcx
1000031b4: 48 89 c7                    	movq	%rax, %rdi
1000031b7: 48 89 ce                    	movq	%rcx, %rsi
1000031ba: ba 88 00 00 00              	movl	$136, %edx
1000031bf: e8 22 84 00 00              	callq	33826 <state.cpp+0x10000b5e6>
1000031c4: 48 8b 05 ad 8e 00 00        	movq	36525(%rip), %rax
1000031cb: 48 8b 00                    	movq	(%rax), %rax
1000031ce: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
1000031d2: 48 39 c8                    	cmpq	%rcx, %rax
1000031d5: 0f 85 10 00 00 00           	jne	16 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj+0x15b>
1000031db: 48 8b 85 58 ff ff ff        	movq	-168(%rbp), %rax
1000031e2: 48 81 c4 c0 00 00 00        	addq	$192, %rsp
1000031e9: 5d                          	popq	%rbp
1000031ea: c3                          	retq
1000031eb: e8 c0 83 00 00              	callq	33728 <state.cpp+0x10000b5b0>
1000031f0: 0f 0b                       	ud2
1000031f2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000031fc: 0f 1f 40 00                 	nopl	(%rax)

0000000100003200 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv:
100003200: 55                          	pushq	%rbp
100003201: 48 89 e5                    	movq	%rsp, %rbp
100003204: 48 81 ec 40 01 00 00        	subq	$320, %rsp
10000320b: 48 8b 05 66 8e 00 00        	movq	36454(%rip), %rax
100003212: 48 8b 00                    	movq	(%rax), %rax
100003215: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100003219: 48 89 bd 68 ff ff ff        	movq	%rdi, -152(%rbp)
100003220: 48 8b 85 68 ff ff ff        	movq	-152(%rbp), %rax
100003227: 48 83 78 78 00              	cmpq	$0, 120(%rax)
10000322c: 48 89 85 30 ff ff ff        	movq	%rax, -208(%rbp)
100003233: 0f 85 0f 00 00 00           	jne	15 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x48>
100003239: c7 85 74 ff ff ff 00 00 00 00       	movl	$0, -140(%rbp)
100003243: e9 84 04 00 00              	jmp	1156 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x4cc>
100003248: 48 8b 85 30 ff ff ff        	movq	-208(%rbp), %rax
10000324f: 48 83 b8 80 00 00 00 00     	cmpq	$0, 128(%rax)
100003257: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x62>
10000325d: e8 5e 14 00 00              	callq	5214 <__ZNSt3__1L16__throw_bad_castEv>
100003262: 48 8b 85 30 ff ff ff        	movq	-208(%rbp), %rax
100003269: 8b 88 8c 01 00 00           	movl	396(%rax), %ecx
10000326f: 83 e1 10                    	andl	$16, %ecx
100003272: 83 f9 00                    	cmpl	$0, %ecx
100003275: 0f 84 76 01 00 00           	je	374 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x1f1>
10000327b: 48 8b 85 30 ff ff ff        	movq	-208(%rbp), %rax
100003282: 48 89 c7                    	movq	%rax, %rdi
100003285: e8 96 15 00 00              	callq	5526 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv>
10000328a: 48 8b 8d 30 ff ff ff        	movq	-208(%rbp), %rcx
100003291: 48 89 cf                    	movq	%rcx, %rdi
100003294: 48 89 85 28 ff ff ff        	movq	%rax, -216(%rbp)
10000329b: e8 a0 15 00 00              	callq	5536 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv>
1000032a0: 48 8b 8d 28 ff ff ff        	movq	-216(%rbp), %rcx
1000032a7: 48 39 c1                    	cmpq	%rax, %rcx
1000032aa: 0f 84 44 00 00 00           	je	68 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0xf4>
1000032b0: e8 b7 81 00 00              	callq	33207 <state.cpp+0x10000b46c>
1000032b5: 48 8b 8d 30 ff ff ff        	movq	-208(%rbp), %rcx
1000032bc: 48 8b 11                    	movq	(%rcx), %rdx
1000032bf: 48 89 cf                    	movq	%rcx, %rdi
1000032c2: 89 c6                       	movl	%eax, %esi
1000032c4: ff 52 68                    	callq	*104(%rdx)
1000032c7: 89 85 24 ff ff ff           	movl	%eax, -220(%rbp)
1000032cd: e8 9a 81 00 00              	callq	33178 <state.cpp+0x10000b46c>
1000032d2: 8b b5 24 ff ff ff           	movl	-220(%rbp), %esi
1000032d8: 39 c6                       	cmpl	%eax, %esi
1000032da: 0f 85 0f 00 00 00           	jne	15 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0xef>
1000032e0: c7 85 74 ff ff ff ff ff ff ff       	movl	$4294967295, -140(%rbp)
1000032ea: e9 dd 03 00 00              	jmp	989 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x4cc>
1000032ef: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0xf4>
1000032f4: 48 8b 85 30 ff ff ff        	movq	-208(%rbp), %rax
1000032fb: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100003302: 48 05 88 00 00 00           	addq	$136, %rax
100003308: 48 8b 8d 30 ff ff ff        	movq	-208(%rbp), %rcx
10000330f: 48 8b 51 40                 	movq	64(%rcx), %rdx
100003313: 48 8b 71 40                 	movq	64(%rcx), %rsi
100003317: 48 03 71 60                 	addq	96(%rcx), %rsi
10000331b: 48 89 b5 18 ff ff ff        	movq	%rsi, -232(%rbp)
100003322: 48 89 c6                    	movq	%rax, %rsi
100003325: 48 8b 8d 18 ff ff ff        	movq	-232(%rbp), %rcx
10000332c: 4c 8d 85 58 ff ff ff        	leaq	-168(%rbp), %r8
100003333: e8 38 15 00 00              	callq	5432 <__ZNKSt3__17codecvtIcc11__mbstate_tE7unshiftERS1_PcS4_RS4_>
100003338: 89 85 64 ff ff ff           	movl	%eax, -156(%rbp)
10000333e: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
100003345: 48 8b 95 30 ff ff ff        	movq	-208(%rbp), %rdx
10000334c: 48 8b 72 40                 	movq	64(%rdx), %rsi
100003350: 48 29 f1                    	subq	%rsi, %rcx
100003353: 48 89 8d 50 ff ff ff        	movq	%rcx, -176(%rbp)
10000335a: 48 8b 7a 40                 	movq	64(%rdx), %rdi
10000335e: 48 8b 95 50 ff ff ff        	movq	-176(%rbp), %rdx
100003365: 48 8b 8d 30 ff ff ff        	movq	-208(%rbp), %rcx
10000336c: 48 8b 49 78                 	movq	120(%rcx), %rcx
100003370: be 01 00 00 00              	movl	$1, %esi
100003375: e8 66 82 00 00              	callq	33382 <state.cpp+0x10000b5e0>
10000337a: 48 3b 85 50 ff ff ff        	cmpq	-176(%rbp), %rax
100003381: 0f 84 0f 00 00 00           	je	15 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x196>
100003387: c7 85 74 ff ff ff ff ff ff ff       	movl	$4294967295, -140(%rbp)
100003391: e9 36 03 00 00              	jmp	822 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x4cc>
100003396: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x19b>
10000339b: 83 bd 64 ff ff ff 01        	cmpl	$1, -156(%rbp)
1000033a2: 0f 84 4c ff ff ff           	je	-180 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0xf4>
1000033a8: 83 bd 64 ff ff ff 02        	cmpl	$2, -156(%rbp)
1000033af: 0f 85 0f 00 00 00           	jne	15 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x1c4>
1000033b5: c7 85 74 ff ff ff ff ff ff ff       	movl	$4294967295, -140(%rbp)
1000033bf: e9 08 03 00 00              	jmp	776 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x4cc>
1000033c4: 48 8b 85 30 ff ff ff        	movq	-208(%rbp), %rax
1000033cb: 48 8b 78 78                 	movq	120(%rax), %rdi
1000033cf: e8 e8 81 00 00              	callq	33256 <state.cpp+0x10000b5bc>
1000033d4: 83 f8 00                    	cmpl	$0, %eax
1000033d7: 0f 84 0f 00 00 00           	je	15 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x1ec>
1000033dd: c7 85 74 ff ff ff ff ff ff ff       	movl	$4294967295, -140(%rbp)
1000033e7: e9 e0 02 00 00              	jmp	736 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x4cc>
1000033ec: e9 d1 02 00 00              	jmp	721 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x4c2>
1000033f1: 48 8b 85 30 ff ff ff        	movq	-208(%rbp), %rax
1000033f8: 8b 88 8c 01 00 00           	movl	396(%rax), %ecx
1000033fe: 83 e1 08                    	andl	$8, %ecx
100003401: 83 f9 00                    	cmpl	$0, %ecx
100003404: 0f 84 b3 02 00 00           	je	691 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x4bd>
10000340a: 48 8b 85 30 ff ff ff        	movq	-208(%rbp), %rax
100003411: 48 05 08 01 00 00           	addq	$264, %rax
100003417: 48 8d 8d 78 ff ff ff        	leaq	-136(%rbp), %rcx
10000341e: 48 89 cf                    	movq	%rcx, %rdi
100003421: 48 89 c6                    	movq	%rax, %rsi
100003424: ba 80 00 00 00              	movl	$128, %edx
100003429: e8 b8 81 00 00              	callq	33208 <state.cpp+0x10000b5e6>
10000342e: c6 85 47 ff ff ff 00        	movb	$0, -185(%rbp)
100003435: 48 8b 85 30 ff ff ff        	movq	-208(%rbp), %rax
10000343c: f6 80 92 01 00 00 01        	testb	$1, 402(%rax)
100003443: 0f 84 3b 00 00 00           	je	59 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x284>
100003449: 48 8b 85 30 ff ff ff        	movq	-208(%rbp), %rax
100003450: 48 89 c7                    	movq	%rax, %rdi
100003453: e8 68 14 00 00              	callq	5224 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv>
100003458: 48 8b 8d 30 ff ff ff        	movq	-208(%rbp), %rcx
10000345f: 48 89 cf                    	movq	%rcx, %rdi
100003462: 48 89 85 10 ff ff ff        	movq	%rax, -240(%rbp)
100003469: e8 72 14 00 00              	callq	5234 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv>
10000346e: 48 8b 8d 10 ff ff ff        	movq	-240(%rbp), %rcx
100003475: 48 29 c1                    	subq	%rax, %rcx
100003478: 48 89 8d 48 ff ff ff        	movq	%rcx, -184(%rbp)
10000347f: e9 95 01 00 00              	jmp	405 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x419>
100003484: 48 8b 85 30 ff ff ff        	movq	-208(%rbp), %rax
10000348b: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100003492: e8 69 12 00 00              	callq	4713 <__ZNKSt3__17codecvtIcc11__mbstate_tE8encodingEv>
100003497: 89 85 40 ff ff ff           	movl	%eax, -192(%rbp)
10000349d: 48 8b 8d 30 ff ff ff        	movq	-208(%rbp), %rcx
1000034a4: 48 8b 51 50                 	movq	80(%rcx), %rdx
1000034a8: 48 8b 71 48                 	movq	72(%rcx), %rsi
1000034ac: 48 29 f2                    	subq	%rsi, %rdx
1000034af: 48 89 95 48 ff ff ff        	movq	%rdx, -184(%rbp)
1000034b6: 83 bd 40 ff ff ff 00        	cmpl	$0, -192(%rbp)
1000034bd: 0f 8e 5b 00 00 00           	jle	91 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x31e>
1000034c3: 48 63 85 40 ff ff ff        	movslq	-192(%rbp), %rax
1000034ca: 48 8b 8d 30 ff ff ff        	movq	-208(%rbp), %rcx
1000034d1: 48 89 cf                    	movq	%rcx, %rdi
1000034d4: 48 89 85 08 ff ff ff        	movq	%rax, -248(%rbp)
1000034db: e8 e0 13 00 00              	callq	5088 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv>
1000034e0: 48 8b 8d 30 ff ff ff        	movq	-208(%rbp), %rcx
1000034e7: 48 89 cf                    	movq	%rcx, %rdi
1000034ea: 48 89 85 00 ff ff ff        	movq	%rax, -256(%rbp)
1000034f1: e8 ea 13 00 00              	callq	5098 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv>
1000034f6: 48 8b 8d 00 ff ff ff        	movq	-256(%rbp), %rcx
1000034fd: 48 29 c1                    	subq	%rax, %rcx
100003500: 48 8b 85 08 ff ff ff        	movq	-248(%rbp), %rax
100003507: 48 0f af c1                 	imulq	%rcx, %rax
10000350b: 48 03 85 48 ff ff ff        	addq	-184(%rbp), %rax
100003512: 48 89 85 48 ff ff ff        	movq	%rax, -184(%rbp)
100003519: e9 f6 00 00 00              	jmp	246 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x414>
10000351e: 48 8b 85 30 ff ff ff        	movq	-208(%rbp), %rax
100003525: 48 89 c7                    	movq	%rax, %rdi
100003528: e8 b3 13 00 00              	callq	5043 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv>
10000352d: 48 8b 8d 30 ff ff ff        	movq	-208(%rbp), %rcx
100003534: 48 89 cf                    	movq	%rcx, %rdi
100003537: 48 89 85 f8 fe ff ff        	movq	%rax, -264(%rbp)
10000353e: e8 7d 13 00 00              	callq	4989 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv>
100003543: 48 8b 8d f8 fe ff ff        	movq	-264(%rbp), %rcx
10000354a: 48 39 c1                    	cmpq	%rax, %rcx
10000354d: 0f 84 bc 00 00 00           	je	188 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x40f>
100003553: 48 8b 85 30 ff ff ff        	movq	-208(%rbp), %rax
10000355a: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100003561: 48 8b 50 40                 	movq	64(%rax), %rdx
100003565: 48 8b 48 48                 	movq	72(%rax), %rcx
100003569: 48 89 bd f0 fe ff ff        	movq	%rdi, -272(%rbp)
100003570: 48 89 c7                    	movq	%rax, %rdi
100003573: 48 89 95 e8 fe ff ff        	movq	%rdx, -280(%rbp)
10000357a: 48 89 8d e0 fe ff ff        	movq	%rcx, -288(%rbp)
100003581: e8 5a 13 00 00              	callq	4954 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv>
100003586: 48 8b 8d 30 ff ff ff        	movq	-208(%rbp), %rcx
10000358d: 48 89 cf                    	movq	%rcx, %rdi
100003590: 48 89 85 d8 fe ff ff        	movq	%rax, -296(%rbp)
100003597: e8 b4 13 00 00              	callq	5044 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv>
10000359c: 48 8b 8d d8 fe ff ff        	movq	-296(%rbp), %rcx
1000035a3: 48 29 c1                    	subq	%rax, %rcx
1000035a6: 48 8b bd f0 fe ff ff        	movq	-272(%rbp), %rdi
1000035ad: 48 8d b5 78 ff ff ff        	leaq	-136(%rbp), %rsi
1000035b4: 48 8b 95 e8 fe ff ff        	movq	-280(%rbp), %rdx
1000035bb: 48 8b 85 e0 fe ff ff        	movq	-288(%rbp), %rax
1000035c2: 48 89 8d d0 fe ff ff        	movq	%rcx, -304(%rbp)
1000035c9: 48 89 c1                    	movq	%rax, %rcx
1000035cc: 4c 8b 85 d0 fe ff ff        	movq	-304(%rbp), %r8
1000035d3: e8 28 13 00 00              	callq	4904 <__ZNKSt3__17codecvtIcc11__mbstate_tE6lengthERS1_PKcS5_m>
1000035d8: 89 85 3c ff ff ff           	movl	%eax, -196(%rbp)
1000035de: 48 8b 8d 30 ff ff ff        	movq	-208(%rbp), %rcx
1000035e5: 48 8b 51 48                 	movq	72(%rcx), %rdx
1000035e9: 48 8b 71 40                 	movq	64(%rcx), %rsi
1000035ed: 48 29 f2                    	subq	%rsi, %rdx
1000035f0: 48 63 b5 3c ff ff ff        	movslq	-196(%rbp), %rsi
1000035f7: 48 29 f2                    	subq	%rsi, %rdx
1000035fa: 48 03 95 48 ff ff ff        	addq	-184(%rbp), %rdx
100003601: 48 89 95 48 ff ff ff        	movq	%rdx, -184(%rbp)
100003608: c6 85 47 ff ff ff 01        	movb	$1, -185(%rbp)
10000360f: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x414>
100003614: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x419>
100003619: 31 c0                       	xorl	%eax, %eax
10000361b: 89 c1                       	movl	%eax, %ecx
10000361d: 48 8b 95 30 ff ff ff        	movq	-208(%rbp), %rdx
100003624: 48 8b 7a 78                 	movq	120(%rdx), %rdi
100003628: 48 2b 8d 48 ff ff ff        	subq	-184(%rbp), %rcx
10000362f: 48 89 ce                    	movq	%rcx, %rsi
100003632: b8 01 00 00 00              	movl	$1, %eax
100003637: 89 c2                       	movl	%eax, %edx
100003639: e8 96 7f 00 00              	callq	32662 <state.cpp+0x10000b5d4>
10000363e: 83 f8 00                    	cmpl	$0, %eax
100003641: 0f 84 0f 00 00 00           	je	15 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x456>
100003647: c7 85 74 ff ff ff ff ff ff ff       	movl	$4294967295, -140(%rbp)
100003651: e9 76 00 00 00              	jmp	118 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x4cc>
100003656: f6 85 47 ff ff ff 01        	testb	$1, -185(%rbp)
10000365d: 0f 84 24 00 00 00           	je	36 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x487>
100003663: 48 8b 85 30 ff ff ff        	movq	-208(%rbp), %rax
10000366a: 48 05 88 00 00 00           	addq	$136, %rax
100003670: 48 8d 8d 78 ff ff ff        	leaq	-136(%rbp), %rcx
100003677: 48 89 c7                    	movq	%rax, %rdi
10000367a: 48 89 ce                    	movq	%rcx, %rsi
10000367d: ba 80 00 00 00              	movl	$128, %edx
100003682: e8 5f 7f 00 00              	callq	32607 <state.cpp+0x10000b5e6>
100003687: 31 c0                       	xorl	%eax, %eax
100003689: 89 c1                       	movl	%eax, %ecx
10000368b: 48 8b 95 30 ff ff ff        	movq	-208(%rbp), %rdx
100003692: 48 8b 72 40                 	movq	64(%rdx), %rsi
100003696: 48 89 72 50                 	movq	%rsi, 80(%rdx)
10000369a: 48 89 72 48                 	movq	%rsi, 72(%rdx)
10000369e: 48 89 d7                    	movq	%rdx, %rdi
1000036a1: 48 89 ce                    	movq	%rcx, %rsi
1000036a4: 48 89 ca                    	movq	%rcx, %rdx
1000036a7: e8 f4 0e 00 00              	callq	3828 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_>
1000036ac: 48 8b 8d 30 ff ff ff        	movq	-208(%rbp), %rcx
1000036b3: c7 81 8c 01 00 00 00 00 00 00       	movl	$0, 396(%rcx)
1000036bd: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x4c2>
1000036c2: c7 85 74 ff ff ff 00 00 00 00       	movl	$0, -140(%rbp)
1000036cc: 8b 85 74 ff ff ff           	movl	-140(%rbp), %eax
1000036d2: 48 8b 0d 9f 89 00 00        	movq	35231(%rip), %rcx
1000036d9: 48 8b 09                    	movq	(%rcx), %rcx
1000036dc: 48 8b 55 f8                 	movq	-8(%rbp), %rdx
1000036e0: 48 39 d1                    	cmpq	%rdx, %rcx
1000036e3: 89 85 cc fe ff ff           	movl	%eax, -308(%rbp)
1000036e9: 0f 85 0f 00 00 00           	jne	15 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv+0x4fe>
1000036ef: 8b 85 cc fe ff ff           	movl	-308(%rbp), %eax
1000036f5: 48 81 c4 40 01 00 00        	addq	$320, %rsp
1000036fc: 5d                          	popq	%rbp
1000036fd: c3                          	retq
1000036fe: e8 ad 7e 00 00              	callq	32429 <state.cpp+0x10000b5b0>
100003703: 0f 0b                       	ud2
100003705: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000370f: 90                          	nop

0000000100003710 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv:
100003710: 55                          	pushq	%rbp
100003711: 48 89 e5                    	movq	%rsp, %rbp
100003714: 48 81 ec 30 01 00 00        	subq	$304, %rsp
10000371b: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000371f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003723: 48 83 78 78 00              	cmpq	$0, 120(%rax)
100003728: 48 89 45 88                 	movq	%rax, -120(%rbp)
10000372c: 0f 85 0d 00 00 00           	jne	13 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x2f>
100003732: e8 35 7d 00 00              	callq	32053 <state.cpp+0x10000b46c>
100003737: 89 45 fc                    	movl	%eax, -4(%rbp)
10000373a: e9 6b 05 00 00              	jmp	1387 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x59a>
10000373f: 48 8b 7d 88                 	movq	-120(%rbp), %rdi
100003743: e8 60 7d 00 00              	callq	32096 <state.cpp+0x10000b4a8>
100003748: 24 01                       	andb	$1, %al
10000374a: 88 45 ef                    	movb	%al, -17(%rbp)
10000374d: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100003751: 48 89 cf                    	movq	%rcx, %rdi
100003754: e8 87 11 00 00              	callq	4487 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv>
100003759: 48 83 f8 00                 	cmpq	$0, %rax
10000375d: 0f 85 2f 00 00 00           	jne	47 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x82>
100003763: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003767: 48 8d 4d ee                 	leaq	-18(%rbp), %rcx
10000376b: 48 89 ca                    	movq	%rcx, %rdx
10000376e: 48 81 c2 01 00 00 00        	addq	$1, %rdx
100003775: 48 89 ce                    	movq	%rcx, %rsi
100003778: 48 81 c6 01 00 00 00        	addq	$1, %rsi
10000377f: 48 89 c7                    	movq	%rax, %rdi
100003782: 48 89 75 80                 	movq	%rsi, -128(%rbp)
100003786: 48 89 ce                    	movq	%rcx, %rsi
100003789: 48 8b 4d 80                 	movq	-128(%rbp), %rcx
10000378d: e8 0e 0e 00 00              	callq	3598 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_>
100003792: f6 45 ef 01                 	testb	$1, -17(%rbp)
100003796: 0f 84 10 00 00 00           	je	16 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x9c>
10000379c: 31 c0                       	xorl	%eax, %eax
10000379e: 89 c1                       	movl	%eax, %ecx
1000037a0: 48 89 8d 78 ff ff ff        	movq	%rcx, -136(%rbp)
1000037a7: e9 59 00 00 00              	jmp	89 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0xf5>
1000037ac: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000037b0: 48 89 c7                    	movq	%rax, %rdi
1000037b3: e8 08 11 00 00              	callq	4360 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv>
1000037b8: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
1000037bc: 48 89 cf                    	movq	%rcx, %rdi
1000037bf: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
1000037c6: e8 85 11 00 00              	callq	4485 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv>
1000037cb: 48 8b 8d 70 ff ff ff        	movq	-144(%rbp), %rcx
1000037d2: 48 29 c1                    	subq	%rax, %rcx
1000037d5: 48 89 c8                    	movq	%rcx, %rax
1000037d8: 48 99                       	cqto
1000037da: b9 02 00 00 00              	movl	$2, %ecx
1000037df: 48 f7 f9                    	idivq	%rcx
1000037e2: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000037e6: 48 c7 45 d0 04 00 00 00     	movq	$4, -48(%rbp)
1000037ee: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
1000037f2: 48 8d 75 d0                 	leaq	-48(%rbp), %rsi
1000037f6: e8 55 12 00 00              	callq	4693 <__ZNSt3__1L3minImEERKT_S3_S3_>
1000037fb: 48 8b 00                    	movq	(%rax), %rax
1000037fe: 48 89 85 78 ff ff ff        	movq	%rax, -136(%rbp)
100003805: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
10000380c: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100003810: e8 57 7c 00 00              	callq	31831 <state.cpp+0x10000b46c>
100003815: 89 45 cc                    	movl	%eax, -52(%rbp)
100003818: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
10000381c: 48 89 cf                    	movq	%rcx, %rdi
10000381f: e8 bc 10 00 00              	callq	4284 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv>
100003824: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100003828: 48 89 cf                    	movq	%rcx, %rdi
10000382b: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100003832: e8 89 10 00 00              	callq	4233 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv>
100003837: 48 8b 8d 68 ff ff ff        	movq	-152(%rbp), %rcx
10000383e: 48 39 c1                    	cmpq	%rax, %rcx
100003841: 0f 85 17 04 00 00           	jne	1047 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x54e>
100003847: 48 8b 45 88                 	movq	-120(%rbp), %rax
10000384b: 48 89 c7                    	movq	%rax, %rdi
10000384e: e8 fd 10 00 00              	callq	4349 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv>
100003853: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100003857: 48 89 cf                    	movq	%rcx, %rdi
10000385a: 48 89 85 60 ff ff ff        	movq	%rax, -160(%rbp)
100003861: e8 5a 10 00 00              	callq	4186 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv>
100003866: 31 d2                       	xorl	%edx, %edx
100003868: 89 d1                       	movl	%edx, %ecx
10000386a: 48 2b 4d e0                 	subq	-32(%rbp), %rcx
10000386e: 48 01 c8                    	addq	%rcx, %rax
100003871: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100003875: 48 c1 e1 00                 	shlq	$0, %rcx
100003879: 48 8b bd 60 ff ff ff        	movq	-160(%rbp), %rdi
100003880: 48 89 c6                    	movq	%rax, %rsi
100003883: 48 89 ca                    	movq	%rcx, %rdx
100003886: e8 61 7d 00 00              	callq	32097 <state.cpp+0x10000b5ec>
10000388b: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
10000388f: f6 81 92 01 00 00 01        	testb	$1, 402(%rcx)
100003896: 0f 84 eb 00 00 00           	je	235 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x277>
10000389c: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000038a0: 48 89 c7                    	movq	%rax, %rdi
1000038a3: e8 18 10 00 00              	callq	4120 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv>
1000038a8: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
1000038ac: 48 89 cf                    	movq	%rcx, %rdi
1000038af: 48 89 85 58 ff ff ff        	movq	%rax, -168(%rbp)
1000038b6: e8 95 10 00 00              	callq	4245 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv>
1000038bb: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
1000038c2: 48 29 c1                    	subq	%rax, %rcx
1000038c5: 48 2b 4d e0                 	subq	-32(%rbp), %rcx
1000038c9: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
1000038cd: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000038d1: 48 89 c7                    	movq	%rax, %rdi
1000038d4: e8 77 10 00 00              	callq	4215 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv>
1000038d9: 48 03 45 e0                 	addq	-32(%rbp), %rax
1000038dd: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
1000038e1: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
1000038e5: 48 8b 49 78                 	movq	120(%rcx), %rcx
1000038e9: 48 89 c7                    	movq	%rax, %rdi
1000038ec: be 01 00 00 00              	movl	$1, %esi
1000038f1: e8 d2 7c 00 00              	callq	31954 <state.cpp+0x10000b5c8>
1000038f6: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000038fa: 48 83 7d c0 00              	cmpq	$0, -64(%rbp)
1000038ff: 0f 84 7d 00 00 00           	je	125 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x272>
100003905: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003909: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
10000390d: 48 89 cf                    	movq	%rcx, %rdi
100003910: 48 89 85 50 ff ff ff        	movq	%rax, -176(%rbp)
100003917: e8 34 10 00 00              	callq	4148 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv>
10000391c: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100003920: 48 89 cf                    	movq	%rcx, %rdi
100003923: 48 89 85 48 ff ff ff        	movq	%rax, -184(%rbp)
10000392a: e8 21 10 00 00              	callq	4129 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv>
10000392f: 48 03 45 e0                 	addq	-32(%rbp), %rax
100003933: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100003937: 48 89 cf                    	movq	%rcx, %rdi
10000393a: 48 89 85 40 ff ff ff        	movq	%rax, -192(%rbp)
100003941: e8 0a 10 00 00              	callq	4106 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv>
100003946: 48 03 45 e0                 	addq	-32(%rbp), %rax
10000394a: 48 03 45 c0                 	addq	-64(%rbp), %rax
10000394e: 48 8b bd 50 ff ff ff        	movq	-176(%rbp), %rdi
100003955: 48 8b b5 48 ff ff ff        	movq	-184(%rbp), %rsi
10000395c: 48 8b 95 40 ff ff ff        	movq	-192(%rbp), %rdx
100003963: 48 89 c1                    	movq	%rax, %rcx
100003966: e8 35 0c 00 00              	callq	3125 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_>
10000396b: 48 8b 45 88                 	movq	-120(%rbp), %rax
10000396f: 48 89 c7                    	movq	%rax, %rdi
100003972: e8 69 0f 00 00              	callq	3945 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv>
100003977: 0f be 38                    	movsbl	(%rax), %edi
10000397a: e8 db 7a 00 00              	callq	31451 <state.cpp+0x10000b45a>
10000397f: 89 45 cc                    	movl	%eax, -52(%rbp)
100003982: e9 d2 02 00 00              	jmp	722 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x549>
100003987: 48 8b 45 88                 	movq	-120(%rbp), %rax
10000398b: 48 8b 48 50                 	movq	80(%rax), %rcx
10000398f: 48 3b 48 48                 	cmpq	72(%rax), %rcx
100003993: 0f 84 1f 00 00 00           	je	31 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x2a8>
100003999: 48 8b 45 88                 	movq	-120(%rbp), %rax
10000399d: 48 8b 78 40                 	movq	64(%rax), %rdi
1000039a1: 48 8b 70 48                 	movq	72(%rax), %rsi
1000039a5: 48 8b 48 50                 	movq	80(%rax), %rcx
1000039a9: 48 8b 50 48                 	movq	72(%rax), %rdx
1000039ad: 48 29 d1                    	subq	%rdx, %rcx
1000039b0: 48 89 ca                    	movq	%rcx, %rdx
1000039b3: e8 34 7c 00 00              	callq	31796 <state.cpp+0x10000b5ec>
1000039b8: 48 8b 45 88                 	movq	-120(%rbp), %rax
1000039bc: 48 8b 48 40                 	movq	64(%rax), %rcx
1000039c0: 48 8b 50 50                 	movq	80(%rax), %rdx
1000039c4: 48 8b 70 48                 	movq	72(%rax), %rsi
1000039c8: 48 29 f2                    	subq	%rsi, %rdx
1000039cb: 48 01 d1                    	addq	%rdx, %rcx
1000039ce: 48 89 48 48                 	movq	%rcx, 72(%rax)
1000039d2: 48 8b 48 40                 	movq	64(%rax), %rcx
1000039d6: 48 8b 50 40                 	movq	64(%rax), %rdx
1000039da: 48 05 58 00 00 00           	addq	$88, %rax
1000039e0: 48 39 c2                    	cmpq	%rax, %rdx
1000039e3: 48 89 8d 38 ff ff ff        	movq	%rcx, -200(%rbp)
1000039ea: 0f 85 11 00 00 00           	jne	17 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x2f1>
1000039f0: b8 08 00 00 00              	movl	$8, %eax
1000039f5: 48 89 85 30 ff ff ff        	movq	%rax, -208(%rbp)
1000039fc: e9 0f 00 00 00              	jmp	15 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x300>
100003a01: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003a05: 48 8b 48 60                 	movq	96(%rax), %rcx
100003a09: 48 89 8d 30 ff ff ff        	movq	%rcx, -208(%rbp)
100003a10: 48 8b 85 30 ff ff ff        	movq	-208(%rbp), %rax
100003a17: 48 8b 8d 38 ff ff ff        	movq	-200(%rbp), %rcx
100003a1e: 48 01 c1                    	addq	%rax, %rcx
100003a21: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003a25: 48 89 48 50                 	movq	%rcx, 80(%rax)
100003a29: 48 8b 48 70                 	movq	112(%rax), %rcx
100003a2d: 48 2b 4d e0                 	subq	-32(%rbp), %rcx
100003a31: 48 89 4d b0                 	movq	%rcx, -80(%rbp)
100003a35: 48 8b 48 50                 	movq	80(%rax), %rcx
100003a39: 48 8b 50 48                 	movq	72(%rax), %rdx
100003a3d: 48 29 d1                    	subq	%rdx, %rcx
100003a40: 48 89 4d a8                 	movq	%rcx, -88(%rbp)
100003a44: 48 8d 7d b0                 	leaq	-80(%rbp), %rdi
100003a48: 48 8d 75 a8                 	leaq	-88(%rbp), %rsi
100003a4c: e8 ff 0f 00 00              	callq	4095 <__ZNSt3__1L3minImEERKT_S3_S3_>
100003a51: 48 8b 00                    	movq	(%rax), %rax
100003a54: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100003a58: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003a5c: 48 05 88 00 00 00           	addq	$136, %rax
100003a62: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100003a66: 48 81 c1 08 01 00 00        	addq	$264, %rcx
100003a6d: 48 89 cf                    	movq	%rcx, %rdi
100003a70: 48 89 c6                    	movq	%rax, %rsi
100003a73: ba 80 00 00 00              	movl	$128, %edx
100003a78: e8 69 7b 00 00              	callq	31593 <state.cpp+0x10000b5e6>
100003a7d: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003a81: 48 8b 78 48                 	movq	72(%rax), %rdi
100003a85: 48 8b 55 b8                 	movq	-72(%rbp), %rdx
100003a89: 48 8b 48 78                 	movq	120(%rax), %rcx
100003a8d: be 01 00 00 00              	movl	$1, %esi
100003a92: e8 31 7b 00 00              	callq	31537 <state.cpp+0x10000b5c8>
100003a97: 48 89 45 98                 	movq	%rax, -104(%rbp)
100003a9b: 48 83 7d 98 00              	cmpq	$0, -104(%rbp)
100003aa0: 0f 84 ae 01 00 00           	je	430 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x544>
100003aa6: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003aaa: 48 83 b8 80 00 00 00 00     	cmpq	$0, 128(%rax)
100003ab2: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x3ad>
100003ab8: e8 03 0c 00 00              	callq	3075 <__ZNSt3__1L16__throw_bad_castEv>
100003abd: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003ac1: 48 8b 48 48                 	movq	72(%rax), %rcx
100003ac5: 48 03 4d 98                 	addq	-104(%rbp), %rcx
100003ac9: 48 89 48 50                 	movq	%rcx, 80(%rax)
100003acd: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100003ad4: 48 05 88 00 00 00           	addq	$136, %rax
100003ada: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100003ade: 48 8b 51 40                 	movq	64(%rcx), %rdx
100003ae2: 48 8b 49 50                 	movq	80(%rcx), %rcx
100003ae6: 48 8b 75 88                 	movq	-120(%rbp), %rsi
100003aea: 48 81 c6 48 00 00 00        	addq	$72, %rsi
100003af1: 4c 8b 45 88                 	movq	-120(%rbp), %r8
100003af5: 48 89 bd 28 ff ff ff        	movq	%rdi, -216(%rbp)
100003afc: 4c 89 c7                    	movq	%r8, %rdi
100003aff: 48 89 85 20 ff ff ff        	movq	%rax, -224(%rbp)
100003b06: 48 89 95 18 ff ff ff        	movq	%rdx, -232(%rbp)
100003b0d: 48 89 8d 10 ff ff ff        	movq	%rcx, -240(%rbp)
100003b14: 48 89 b5 08 ff ff ff        	movq	%rsi, -248(%rbp)
100003b1b: e8 30 0e 00 00              	callq	3632 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv>
100003b20: 48 03 45 e0                 	addq	-32(%rbp), %rax
100003b24: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100003b28: 48 89 cf                    	movq	%rcx, %rdi
100003b2b: 48 89 85 00 ff ff ff        	movq	%rax, -256(%rbp)
100003b32: e8 19 0e 00 00              	callq	3609 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv>
100003b37: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100003b3b: 48 03 41 70                 	addq	112(%rcx), %rax
100003b3f: 48 8b bd 28 ff ff ff        	movq	-216(%rbp), %rdi
100003b46: 48 8b b5 20 ff ff ff        	movq	-224(%rbp), %rsi
100003b4d: 48 8b 95 18 ff ff ff        	movq	-232(%rbp), %rdx
100003b54: 48 8b 8d 10 ff ff ff        	movq	-240(%rbp), %rcx
100003b5b: 4c 8b 85 08 ff ff ff        	movq	-248(%rbp), %r8
100003b62: 4c 8b 8d 00 ff ff ff        	movq	-256(%rbp), %r9
100003b69: 48 89 04 24                 	movq	%rax, (%rsp)
100003b6d: 48 8d 45 90                 	leaq	-112(%rbp), %rax
100003b71: 48 89 44 24 08              	movq	%rax, 8(%rsp)
100003b76: e8 15 0f 00 00              	callq	3861 <__ZNKSt3__17codecvtIcc11__mbstate_tE2inERS1_PKcS5_RS5_PcS7_RS7_>
100003b7b: 89 45 a4                    	movl	%eax, -92(%rbp)
100003b7e: 83 7d a4 03                 	cmpl	$3, -92(%rbp)
100003b82: 0f 85 38 00 00 00           	jne	56 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x4b0>
100003b88: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003b8c: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100003b90: 48 8b 71 40                 	movq	64(%rcx), %rsi
100003b94: 48 8b 51 40                 	movq	64(%rcx), %rdx
100003b98: 48 8b 49 50                 	movq	80(%rcx), %rcx
100003b9c: 48 89 c7                    	movq	%rax, %rdi
100003b9f: e8 fc 09 00 00              	callq	2556 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_>
100003ba4: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003ba8: 48 89 c7                    	movq	%rax, %rdi
100003bab: e8 30 0d 00 00              	callq	3376 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv>
100003bb0: 0f be 38                    	movsbl	(%rax), %edi
100003bb3: e8 a2 78 00 00              	callq	30882 <state.cpp+0x10000b45a>
100003bb8: 89 45 cc                    	movl	%eax, -52(%rbp)
100003bbb: e9 8f 00 00 00              	jmp	143 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x53f>
100003bc0: 48 8b 45 90                 	movq	-112(%rbp), %rax
100003bc4: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100003bc8: 48 89 cf                    	movq	%rcx, %rdi
100003bcb: 48 89 85 f8 fe ff ff        	movq	%rax, -264(%rbp)
100003bd2: e8 79 0d 00 00              	callq	3449 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv>
100003bd7: 48 03 45 e0                 	addq	-32(%rbp), %rax
100003bdb: 48 8b 8d f8 fe ff ff        	movq	-264(%rbp), %rcx
100003be2: 48 39 c1                    	cmpq	%rax, %rcx
100003be5: 0f 84 5f 00 00 00           	je	95 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x53a>
100003beb: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003bef: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100003bf3: 48 89 cf                    	movq	%rcx, %rdi
100003bf6: 48 89 85 f0 fe ff ff        	movq	%rax, -272(%rbp)
100003bfd: e8 4e 0d 00 00              	callq	3406 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv>
100003c02: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100003c06: 48 89 cf                    	movq	%rcx, %rdi
100003c09: 48 89 85 e8 fe ff ff        	movq	%rax, -280(%rbp)
100003c10: e8 3b 0d 00 00              	callq	3387 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv>
100003c15: 48 03 45 e0                 	addq	-32(%rbp), %rax
100003c19: 48 8b 4d 90                 	movq	-112(%rbp), %rcx
100003c1d: 48 8b bd f0 fe ff ff        	movq	-272(%rbp), %rdi
100003c24: 48 8b b5 e8 fe ff ff        	movq	-280(%rbp), %rsi
100003c2b: 48 89 c2                    	movq	%rax, %rdx
100003c2e: e8 6d 09 00 00              	callq	2413 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_>
100003c33: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003c37: 48 89 c7                    	movq	%rax, %rdi
100003c3a: e8 a1 0c 00 00              	callq	3233 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv>
100003c3f: 0f be 38                    	movsbl	(%rax), %edi
100003c42: e8 13 78 00 00              	callq	30739 <state.cpp+0x10000b45a>
100003c47: 89 45 cc                    	movl	%eax, -52(%rbp)
100003c4a: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x53f>
100003c4f: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x544>
100003c54: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x549>
100003c59: e9 17 00 00 00              	jmp	23 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x565>
100003c5e: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003c62: 48 89 c7                    	movq	%rax, %rdi
100003c65: e8 76 0c 00 00              	callq	3190 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv>
100003c6a: 0f be 38                    	movsbl	(%rax), %edi
100003c6d: e8 e8 77 00 00              	callq	30696 <state.cpp+0x10000b45a>
100003c72: 89 45 cc                    	movl	%eax, -52(%rbp)
100003c75: 48 8b 45 88                 	movq	-120(%rbp), %rax
100003c79: 48 89 c7                    	movq	%rax, %rdi
100003c7c: e8 cf 0c 00 00              	callq	3279 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv>
100003c81: 48 8d 4d ee                 	leaq	-18(%rbp), %rcx
100003c85: 48 39 c8                    	cmpq	%rcx, %rax
100003c88: 0f 85 16 00 00 00           	jne	22 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv+0x594>
100003c8e: 31 c0                       	xorl	%eax, %eax
100003c90: 89 c1                       	movl	%eax, %ecx
100003c92: 48 8b 55 88                 	movq	-120(%rbp), %rdx
100003c96: 48 89 d7                    	movq	%rdx, %rdi
100003c99: 48 89 ce                    	movq	%rcx, %rsi
100003c9c: 48 89 ca                    	movq	%rcx, %rdx
100003c9f: e8 fc 08 00 00              	callq	2300 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_>
100003ca4: 8b 45 cc                    	movl	-52(%rbp), %eax
100003ca7: 89 45 fc                    	movl	%eax, -4(%rbp)
100003caa: 8b 45 fc                    	movl	-4(%rbp), %eax
100003cad: 48 81 c4 30 01 00 00        	addq	$304, %rsp
100003cb4: 5d                          	popq	%rbp
100003cb5: c3                          	retq
100003cb6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100003cc0 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi:
100003cc0: 55                          	pushq	%rbp
100003cc1: 48 89 e5                    	movq	%rsp, %rbp
100003cc4: 48 83 ec 30                 	subq	$48, %rsp
100003cc8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100003ccc: 89 75 ec                    	movl	%esi, -20(%rbp)
100003ccf: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003cd3: 48 83 78 78 00              	cmpq	$0, 120(%rax)
100003cd8: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100003cdc: 0f 84 f2 00 00 00           	je	242 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi+0x114>
100003ce2: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100003ce6: 48 89 c7                    	movq	%rax, %rdi
100003ce9: e8 62 0c 00 00              	callq	3170 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv>
100003cee: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100003cf2: 48 89 cf                    	movq	%rcx, %rdi
100003cf5: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100003cf9: e8 e2 0b 00 00              	callq	3042 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv>
100003cfe: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100003d02: 48 39 c1                    	cmpq	%rax, %rcx
100003d05: 0f 83 c9 00 00 00           	jae	201 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi+0x114>
100003d0b: 8b 7d ec                    	movl	-20(%rbp), %edi
100003d0e: 89 7d d4                    	movl	%edi, -44(%rbp)
100003d11: e8 56 77 00 00              	callq	30550 <state.cpp+0x10000b46c>
100003d16: 8b 7d d4                    	movl	-44(%rbp), %edi
100003d19: 89 c6                       	movl	%eax, %esi
100003d1b: e8 34 77 00 00              	callq	30516 <state.cpp+0x10000b454>
100003d20: a8 01                       	testb	$1, %al
100003d22: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi+0x6d>
100003d28: e9 21 00 00 00              	jmp	33 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi+0x8e>
100003d2d: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100003d31: 48 89 c7                    	movq	%rax, %rdi
100003d34: be ff ff ff ff              	movl	$4294967295, %esi
100003d39: e8 72 0e 00 00              	callq	3698 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5gbumpEi>
100003d3e: 8b 7d ec                    	movl	-20(%rbp), %edi
100003d41: e8 32 77 00 00              	callq	30514 <state.cpp+0x10000b478>
100003d46: 89 45 fc                    	movl	%eax, -4(%rbp)
100003d49: e9 8e 00 00 00              	jmp	142 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi+0x11c>
100003d4e: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100003d52: 8b 88 88 01 00 00           	movl	392(%rax), %ecx
100003d58: 83 e1 10                    	andl	$16, %ecx
100003d5b: 83 f9 00                    	cmpl	$0, %ecx
100003d5e: 0f 85 33 00 00 00           	jne	51 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi+0xd7>
100003d64: 8b 7d ec                    	movl	-20(%rbp), %edi
100003d67: e8 f4 76 00 00              	callq	30452 <state.cpp+0x10000b460>
100003d6c: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100003d70: 48 89 cf                    	movq	%rcx, %rdi
100003d73: 88 45 d3                    	movb	%al, -45(%rbp)
100003d76: e8 65 0b 00 00              	callq	2917 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv>
100003d7b: 8a 55 d3                    	movb	-45(%rbp), %dl
100003d7e: 0f be fa                    	movsbl	%dl, %edi
100003d81: 0f be 70 ff                 	movsbl	-1(%rax), %esi
100003d85: e8 dc 76 00 00              	callq	30428 <state.cpp+0x10000b466>
100003d8a: a8 01                       	testb	$1, %al
100003d8c: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi+0xd7>
100003d92: e9 38 00 00 00              	jmp	56 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi+0x10f>
100003d97: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100003d9b: 48 89 c7                    	movq	%rax, %rdi
100003d9e: be ff ff ff ff              	movl	$4294967295, %esi
100003da3: e8 08 0e 00 00              	callq	3592 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5gbumpEi>
100003da8: 8b 7d ec                    	movl	-20(%rbp), %edi
100003dab: e8 b0 76 00 00              	callq	30384 <state.cpp+0x10000b460>
100003db0: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100003db4: 48 89 cf                    	movq	%rcx, %rdi
100003db7: 88 45 d2                    	movb	%al, -46(%rbp)
100003dba: e8 21 0b 00 00              	callq	2849 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv>
100003dbf: 8a 55 d2                    	movb	-46(%rbp), %dl
100003dc2: 88 10                       	movb	%dl, (%rax)
100003dc4: 8b 75 ec                    	movl	-20(%rbp), %esi
100003dc7: 89 75 fc                    	movl	%esi, -4(%rbp)
100003dca: e9 0d 00 00 00              	jmp	13 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi+0x11c>
100003dcf: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi+0x114>
100003dd4: e8 93 76 00 00              	callq	30355 <state.cpp+0x10000b46c>
100003dd9: 89 45 fc                    	movl	%eax, -4(%rbp)
100003ddc: 8b 45 fc                    	movl	-4(%rbp), %eax
100003ddf: 48 83 c4 30                 	addq	$48, %rsp
100003de3: 5d                          	popq	%rbp
100003de4: c3                          	retq
100003de5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100003def: 90                          	nop

0000000100003df0 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi:
100003df0: 55                          	pushq	%rbp
100003df1: 48 89 e5                    	movq	%rsp, %rbp
100003df4: 48 81 ec e0 00 00 00        	subq	$224, %rsp
100003dfb: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100003dff: 89 75 ec                    	movl	%esi, -20(%rbp)
100003e02: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003e06: 48 83 78 78 00              	cmpq	$0, 120(%rax)
100003e0b: 48 89 45 a0                 	movq	%rax, -96(%rbp)
100003e0f: 0f 85 0d 00 00 00           	jne	13 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x32>
100003e15: e8 52 76 00 00              	callq	30290 <state.cpp+0x10000b46c>
100003e1a: 89 45 fc                    	movl	%eax, -4(%rbp)
100003e1d: e9 c4 03 00 00              	jmp	964 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x3f6>
100003e22: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
100003e26: e8 83 76 00 00              	callq	30339 <state.cpp+0x10000b4ae>
100003e2b: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003e2f: 48 89 c7                    	movq	%rax, %rdi
100003e32: e8 09 0a 00 00              	callq	2569 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv>
100003e37: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100003e3b: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003e3f: 48 89 c7                    	movq	%rax, %rdi
100003e42: e8 09 0f 00 00              	callq	3849 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv>
100003e47: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100003e4b: 8b 7d ec                    	movl	-20(%rbp), %edi
100003e4e: 89 7d 9c                    	movl	%edi, -100(%rbp)
100003e51: e8 16 76 00 00              	callq	30230 <state.cpp+0x10000b46c>
100003e56: 8b 7d 9c                    	movl	-100(%rbp), %edi
100003e59: 89 c6                       	movl	%eax, %esi
100003e5b: e8 f4 75 00 00              	callq	30196 <state.cpp+0x10000b454>
100003e60: a8 01                       	testb	$1, %al
100003e62: 0f 85 60 00 00 00           	jne	96 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0xd8>
100003e68: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003e6c: 48 89 c7                    	movq	%rax, %rdi
100003e6f: e8 ac 09 00 00              	callq	2476 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv>
100003e74: 48 83 f8 00                 	cmpq	$0, %rax
100003e78: 0f 85 1d 00 00 00           	jne	29 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0xab>
100003e7e: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003e82: 48 8d 4d eb                 	leaq	-21(%rbp), %rcx
100003e86: 48 89 ca                    	movq	%rcx, %rdx
100003e89: 48 81 c2 01 00 00 00        	addq	$1, %rdx
100003e90: 48 89 c7                    	movq	%rax, %rdi
100003e93: 48 89 ce                    	movq	%rcx, %rsi
100003e96: e8 45 07 00 00              	callq	1861 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_>
100003e9b: 8b 7d ec                    	movl	-20(%rbp), %edi
100003e9e: e8 bd 75 00 00              	callq	30141 <state.cpp+0x10000b460>
100003ea3: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100003ea7: 48 89 cf                    	movq	%rcx, %rdi
100003eaa: 88 45 9b                    	movb	%al, -101(%rbp)
100003ead: e8 6e 09 00 00              	callq	2414 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv>
100003eb2: 8a 55 9b                    	movb	-101(%rbp), %dl
100003eb5: 88 10                       	movb	%dl, (%rax)
100003eb7: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003ebb: 48 89 c7                    	movq	%rax, %rdi
100003ebe: be 01 00 00 00              	movl	$1, %esi
100003ec3: e8 a8 0e 00 00              	callq	3752 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi>
100003ec8: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003ecc: 48 89 c7                    	movq	%rax, %rdi
100003ecf: e8 4c 09 00 00              	callq	2380 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv>
100003ed4: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100003ed8: 48 89 cf                    	movq	%rcx, %rdi
100003edb: 48 89 45 90                 	movq	%rax, -112(%rbp)
100003edf: e8 5c 09 00 00              	callq	2396 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv>
100003ee4: 48 8b 4d 90                 	movq	-112(%rbp), %rcx
100003ee8: 48 39 c1                    	cmpq	%rax, %rcx
100003eeb: 0f 84 ea 02 00 00           	je	746 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x3eb>
100003ef1: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003ef5: f6 80 92 01 00 00 01        	testb	$1, 402(%rax)
100003efc: 0f 84 68 00 00 00           	je	104 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x17a>
100003f02: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003f06: 48 89 c7                    	movq	%rax, %rdi
100003f09: e8 12 09 00 00              	callq	2322 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv>
100003f0e: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100003f12: 48 89 cf                    	movq	%rcx, %rdi
100003f15: 48 89 45 88                 	movq	%rax, -120(%rbp)
100003f19: e8 22 09 00 00              	callq	2338 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv>
100003f1e: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100003f22: 48 29 c1                    	subq	%rax, %rcx
100003f25: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100003f29: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003f2d: 48 89 c7                    	movq	%rax, %rdi
100003f30: e8 0b 09 00 00              	callq	2315 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv>
100003f35: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100003f39: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100003f3d: 48 8b 49 78                 	movq	120(%rcx), %rcx
100003f41: 48 89 c7                    	movq	%rax, %rdi
100003f44: be 01 00 00 00              	movl	$1, %esi
100003f49: e8 92 76 00 00              	callq	30354 <state.cpp+0x10000b5e0>
100003f4e: 48 3b 45 d0                 	cmpq	-48(%rbp), %rax
100003f52: 0f 84 0d 00 00 00           	je	13 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x175>
100003f58: e8 0f 75 00 00              	callq	29967 <state.cpp+0x10000b46c>
100003f5d: 89 45 fc                    	movl	%eax, -4(%rbp)
100003f60: e9 81 02 00 00              	jmp	641 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x3f6>
100003f65: e9 5d 02 00 00              	jmp	605 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x3d7>
100003f6a: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003f6e: 48 8b 48 40                 	movq	64(%rax), %rcx
100003f72: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100003f76: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003f7a: 48 83 b8 80 00 00 00 00     	cmpq	$0, 128(%rax)
100003f82: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x19d>
100003f88: e8 33 07 00 00              	callq	1843 <__ZNSt3__1L16__throw_bad_castEv>
100003f8d: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100003f91: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100003f98: 48 05 88 00 00 00           	addq	$136, %rax
100003f9e: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100003fa2: 48 89 7d 80                 	movq	%rdi, -128(%rbp)
100003fa6: 48 89 cf                    	movq	%rcx, %rdi
100003fa9: 48 89 85 78 ff ff ff        	movq	%rax, -136(%rbp)
100003fb0: e8 8b 08 00 00              	callq	2187 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv>
100003fb5: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100003fb9: 48 89 cf                    	movq	%rcx, %rdi
100003fbc: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100003fc3: e8 58 08 00 00              	callq	2136 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv>
100003fc8: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100003fcc: 4c 8b 49 40                 	movq	64(%rcx), %r9
100003fd0: 48 8b 51 40                 	movq	64(%rcx), %rdx
100003fd4: 48 03 51 60                 	addq	96(%rcx), %rdx
100003fd8: 48 8b 7d 80                 	movq	-128(%rbp), %rdi
100003fdc: 48 8b b5 78 ff ff ff        	movq	-136(%rbp), %rsi
100003fe3: 4c 8b 85 70 ff ff ff        	movq	-144(%rbp), %r8
100003fea: 48 89 95 68 ff ff ff        	movq	%rdx, -152(%rbp)
100003ff1: 4c 89 c2                    	movq	%r8, %rdx
100003ff4: 48 89 c1                    	movq	%rax, %rcx
100003ff7: 4c 8d 45 b8                 	leaq	-72(%rbp), %r8
100003ffb: 48 8b 85 68 ff ff ff        	movq	-152(%rbp), %rax
100004002: 48 89 04 24                 	movq	%rax, (%rsp)
100004006: 48 8d 45 c8                 	leaq	-56(%rbp), %rax
10000400a: 48 89 44 24 08              	movq	%rax, 8(%rsp)
10000400f: e8 8c 0d 00 00              	callq	3468 <__ZNKSt3__17codecvtIcc11__mbstate_tE3outERS1_PKcS5_RS5_PcS7_RS7_>
100004014: 89 45 c4                    	movl	%eax, -60(%rbp)
100004017: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
10000401b: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
10000401f: 48 89 d7                    	movq	%rdx, %rdi
100004022: 48 89 8d 60 ff ff ff        	movq	%rcx, -160(%rbp)
100004029: e8 12 08 00 00              	callq	2066 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv>
10000402e: 48 8b 8d 60 ff ff ff        	movq	-160(%rbp), %rcx
100004035: 48 39 c1                    	cmpq	%rax, %rcx
100004038: 0f 85 0d 00 00 00           	jne	13 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x25b>
10000403e: e8 29 74 00 00              	callq	29737 <state.cpp+0x10000b46c>
100004043: 89 45 fc                    	movl	%eax, -4(%rbp)
100004046: e9 9b 01 00 00              	jmp	411 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x3f6>
10000404b: 83 7d c4 03                 	cmpl	$3, -60(%rbp)
10000404f: 0f 85 6e 00 00 00           	jne	110 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x2d3>
100004055: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100004059: 48 89 c7                    	movq	%rax, %rdi
10000405c: e8 bf 07 00 00              	callq	1983 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv>
100004061: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100004065: 48 89 cf                    	movq	%rcx, %rdi
100004068: 48 89 85 58 ff ff ff        	movq	%rax, -168(%rbp)
10000406f: e8 cc 07 00 00              	callq	1996 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv>
100004074: 48 8b 8d 58 ff ff ff        	movq	-168(%rbp), %rcx
10000407b: 48 29 c1                    	subq	%rax, %rcx
10000407e: 48 89 4d b0                 	movq	%rcx, -80(%rbp)
100004082: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100004086: 48 89 c7                    	movq	%rax, %rdi
100004089: e8 b2 07 00 00              	callq	1970 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv>
10000408e: 48 8b 55 b0                 	movq	-80(%rbp), %rdx
100004092: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100004096: 48 8b 49 78                 	movq	120(%rcx), %rcx
10000409a: 48 89 c7                    	movq	%rax, %rdi
10000409d: be 01 00 00 00              	movl	$1, %esi
1000040a2: e8 39 75 00 00              	callq	30009 <state.cpp+0x10000b5e0>
1000040a7: 48 3b 45 b0                 	cmpq	-80(%rbp), %rax
1000040ab: 0f 84 0d 00 00 00           	je	13 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x2ce>
1000040b1: e8 b6 73 00 00              	callq	29622 <state.cpp+0x10000b46c>
1000040b6: 89 45 fc                    	movl	%eax, -4(%rbp)
1000040b9: e9 28 01 00 00              	jmp	296 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x3f6>
1000040be: e9 f0 00 00 00              	jmp	240 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x3c3>
1000040c3: 83 7d c4 00                 	cmpl	$0, -60(%rbp)
1000040c7: 0f 84 0a 00 00 00           	je	10 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x2e7>
1000040cd: 83 7d c4 01                 	cmpl	$1, -60(%rbp)
1000040d1: 0f 85 ca 00 00 00           	jne	202 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x3b1>
1000040d7: 48 8b 45 c8                 	movq	-56(%rbp), %rax
1000040db: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
1000040df: 48 8b 51 40                 	movq	64(%rcx), %rdx
1000040e3: 48 29 d0                    	subq	%rdx, %rax
1000040e6: 48 89 45 a8                 	movq	%rax, -88(%rbp)
1000040ea: 48 8b 79 40                 	movq	64(%rcx), %rdi
1000040ee: 48 8b 55 a8                 	movq	-88(%rbp), %rdx
1000040f2: 48 8b 49 78                 	movq	120(%rcx), %rcx
1000040f6: be 01 00 00 00              	movl	$1, %esi
1000040fb: e8 e0 74 00 00              	callq	29920 <state.cpp+0x10000b5e0>
100004100: 48 3b 45 a8                 	cmpq	-88(%rbp), %rax
100004104: 0f 84 0d 00 00 00           	je	13 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x327>
10000410a: e8 5d 73 00 00              	callq	29533 <state.cpp+0x10000b46c>
10000410f: 89 45 fc                    	movl	%eax, -4(%rbp)
100004112: e9 cf 00 00 00              	jmp	207 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x3f6>
100004117: 83 7d c4 01                 	cmpl	$1, -60(%rbp)
10000411b: 0f 85 7b 00 00 00           	jne	123 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x3ac>
100004121: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100004125: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
100004129: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
10000412d: 48 89 cf                    	movq	%rcx, %rdi
100004130: 48 89 85 50 ff ff ff        	movq	%rax, -176(%rbp)
100004137: 48 89 b5 48 ff ff ff        	movq	%rsi, -184(%rbp)
10000413e: e8 dd 06 00 00              	callq	1757 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv>
100004143: 48 8b bd 50 ff ff ff        	movq	-176(%rbp), %rdi
10000414a: 48 8b b5 48 ff ff ff        	movq	-184(%rbp), %rsi
100004151: 48 89 c2                    	movq	%rax, %rdx
100004154: e8 87 04 00 00              	callq	1159 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_>
100004159: 48 8b 45 a0                 	movq	-96(%rbp), %rax
10000415d: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100004161: 48 89 cf                    	movq	%rcx, %rdi
100004164: 48 89 85 40 ff ff ff        	movq	%rax, -192(%rbp)
10000416b: e8 e0 0b 00 00              	callq	3040 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv>
100004170: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100004174: 48 89 cf                    	movq	%rcx, %rdi
100004177: 48 89 85 38 ff ff ff        	movq	%rax, -200(%rbp)
10000417e: e8 bd 06 00 00              	callq	1725 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv>
100004183: 48 8b 8d 38 ff ff ff        	movq	-200(%rbp), %rcx
10000418a: 48 29 c1                    	subq	%rax, %rcx
10000418d: 48 8b bd 40 ff ff ff        	movq	-192(%rbp), %rdi
100004194: 48 89 ce                    	movq	%rcx, %rsi
100004197: e8 84 0c 00 00              	callq	3204 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl>
10000419c: e9 0d 00 00 00              	jmp	13 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x3be>
1000041a1: e8 c6 72 00 00              	callq	29382 <state.cpp+0x10000b46c>
1000041a6: 89 45 fc                    	movl	%eax, -4(%rbp)
1000041a9: e9 38 00 00 00              	jmp	56 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x3f6>
1000041ae: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x3c3>
1000041b3: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x3c8>
1000041b8: 83 7d c4 01                 	cmpl	$1, -60(%rbp)
1000041bc: 0f 84 b4 fd ff ff           	je	-588 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x186>
1000041c2: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi+0x3d7>
1000041c7: 48 8b 45 a0                 	movq	-96(%rbp), %rax
1000041cb: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
1000041cf: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
1000041d3: 48 89 c7                    	movq	%rax, %rdi
1000041d6: e8 05 04 00 00              	callq	1029 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_>
1000041db: 8b 7d ec                    	movl	-20(%rbp), %edi
1000041de: e8 95 72 00 00              	callq	29333 <state.cpp+0x10000b478>
1000041e3: 89 45 fc                    	movl	%eax, -4(%rbp)
1000041e6: 8b 45 fc                    	movl	-4(%rbp), %eax
1000041e9: 48 81 c4 e0 00 00 00        	addq	$224, %rsp
1000041f0: 5d                          	popq	%rbp
1000041f1: c3                          	retq
1000041f2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000041fc: 0f 1f 40 00                 	nopl	(%rax)

0000000100004200 __ZNSt3__110unique_ptrI7__sFILEPFiPS1_EEC1ILb1EvEES2_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS4_EEXT_EE20__good_rval_ref_typeE:
100004200: 55                          	pushq	%rbp
100004201: 48 89 e5                    	movq	%rsp, %rbp
100004204: 48 83 ec 20                 	subq	$32, %rsp
100004208: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000420c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004210: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100004214: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100004218: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000421c: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100004220: e8 6b 00 00 00              	callq	107 <__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EEC2ILb1EvEES2_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS4_EEXT_EE20__good_rval_ref_typeE>
100004225: 48 83 c4 20                 	addq	$32, %rsp
100004229: 5d                          	popq	%rbp
10000422a: c3                          	retq
10000422b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100004230 __ZNSt3__110unique_ptrI7__sFILEPFiPS1_EE7releaseEv:
100004230: 55                          	pushq	%rbp
100004231: 48 89 e5                    	movq	%rsp, %rbp
100004234: 48 83 ec 20                 	subq	$32, %rsp
100004238: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000423c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004240: 48 89 c7                    	movq	%rax, %rdi
100004243: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100004247: e8 e4 01 00 00              	callq	484 <__ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE5firstEv>
10000424c: 48 8b 00                    	movq	(%rax), %rax
10000424f: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100004253: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100004257: e8 d4 01 00 00              	callq	468 <__ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE5firstEv>
10000425c: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100004263: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004267: 48 83 c4 20                 	addq	$32, %rsp
10000426b: 5d                          	popq	%rbp
10000426c: c3                          	retq
10000426d: 0f 1f 00                    	nopl	(%rax)

0000000100004270 __ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1Ev:
100004270: 55                          	pushq	%rbp
100004271: 48 89 e5                    	movq	%rsp, %rbp
100004274: 48 83 ec 10                 	subq	$16, %rsp
100004278: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000427c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100004280: e8 db 01 00 00              	callq	475 <__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED2Ev>
100004285: 48 83 c4 10                 	addq	$16, %rsp
100004289: 5d                          	popq	%rbp
10000428a: c3                          	retq
10000428b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100004290 __ZNSt3__110unique_ptrI7__sFILEPFiPS1_EEC2ILb1EvEES2_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS4_EEXT_EE20__good_rval_ref_typeE:
100004290: 55                          	pushq	%rbp
100004291: 48 89 e5                    	movq	%rsp, %rbp
100004294: 48 83 ec 30                 	subq	$48, %rsp
100004298: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000429c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000042a0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000042a4: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000042a8: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000042ac: 48 89 7d e0                 	movq	%rdi, -32(%rbp)
1000042b0: 48 89 c7                    	movq	%rax, %rdi
1000042b3: e8 28 00 00 00              	callq	40 <__ZNSt3__1L4moveIRPFiP7__sFILEEEEONS_16remove_referenceIT_E4typeEOS7_>
1000042b8: 48 8d 75 f0                 	leaq	-16(%rbp), %rsi
1000042bc: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
1000042c0: 48 89 c2                    	movq	%rax, %rdx
1000042c3: e8 28 00 00 00              	callq	40 <__ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EEC1IRS2_S4_EEOT_OT0_>
1000042c8: e9 00 00 00 00              	jmp	0 <__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EEC2ILb1EvEES2_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS4_EEXT_EE20__good_rval_ref_typeE+0x3d>
1000042cd: 48 83 c4 30                 	addq	$48, %rsp
1000042d1: 5d                          	popq	%rbp
1000042d2: c3                          	retq
1000042d3: 48 89 c7                    	movq	%rax, %rdi
1000042d6: 48 89 55 d8                 	movq	%rdx, -40(%rbp)
1000042da: e8 11 d2 ff ff              	callq	-11759 <___clang_call_terminate>
1000042df: 90                          	nop

00000001000042e0 __ZNSt3__1L4moveIRPFiP7__sFILEEEEONS_16remove_referenceIT_E4typeEOS7_:
1000042e0: 55                          	pushq	%rbp
1000042e1: 48 89 e5                    	movq	%rsp, %rbp
1000042e4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000042e8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000042ec: 5d                          	popq	%rbp
1000042ed: c3                          	retq
1000042ee: 66 90                       	nop

00000001000042f0 __ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EEC1IRS2_S4_EEOT_OT0_:
1000042f0: 55                          	pushq	%rbp
1000042f1: 48 89 e5                    	movq	%rsp, %rbp
1000042f4: 48 83 ec 20                 	subq	$32, %rsp
1000042f8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000042fc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004300: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100004304: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100004308: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000430c: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100004310: e8 0b 00 00 00              	callq	11 <__ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EEC2IRS2_S4_EEOT_OT0_>
100004315: 48 83 c4 20                 	addq	$32, %rsp
100004319: 5d                          	popq	%rbp
10000431a: c3                          	retq
10000431b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100004320 __ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EEC2IRS2_S4_EEOT_OT0_:
100004320: 55                          	pushq	%rbp
100004321: 48 89 e5                    	movq	%rsp, %rbp
100004324: 48 83 ec 30                 	subq	$48, %rsp
100004328: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000432c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004330: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100004334: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004338: 48 89 c1                    	movq	%rax, %rcx
10000433b: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000433f: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100004343: 48 89 4d d8                 	movq	%rcx, -40(%rbp)
100004347: e8 44 00 00 00              	callq	68 <__ZNSt3__1L7forwardIRP7__sFILEEEOT_RNS_16remove_referenceIS4_E4typeE>
10000434c: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100004350: 48 89 c6                    	movq	%rax, %rsi
100004353: e8 48 00 00 00              	callq	72 <__ZNSt3__122__compressed_pair_elemIP7__sFILELi0ELb0EEC2IRS2_vEEOT_>
100004358: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000435c: 48 05 08 00 00 00           	addq	$8, %rax
100004362: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100004366: 48 89 45 d0                 	movq	%rax, -48(%rbp)
10000436a: e8 71 00 00 00              	callq	113 <__ZNSt3__1L7forwardIPFiP7__sFILEEEEOT_RNS_16remove_referenceIS5_E4typeE>
10000436f: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100004373: 48 89 c6                    	movq	%rax, %rsi
100004376: e8 75 00 00 00              	callq	117 <__ZNSt3__122__compressed_pair_elemIPFiP7__sFILEELi1ELb0EEC2IS4_vEEOT_>
10000437b: 48 83 c4 30                 	addq	$48, %rsp
10000437f: 5d                          	popq	%rbp
100004380: c3                          	retq
100004381: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000438b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100004390 __ZNSt3__1L7forwardIRP7__sFILEEEOT_RNS_16remove_referenceIS4_E4typeE:
100004390: 55                          	pushq	%rbp
100004391: 48 89 e5                    	movq	%rsp, %rbp
100004394: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004398: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000439c: 5d                          	popq	%rbp
10000439d: c3                          	retq
10000439e: 66 90                       	nop

00000001000043a0 __ZNSt3__122__compressed_pair_elemIP7__sFILELi0ELb0EEC2IRS2_vEEOT_:
1000043a0: 55                          	pushq	%rbp
1000043a1: 48 89 e5                    	movq	%rsp, %rbp
1000043a4: 48 83 ec 20                 	subq	$32, %rsp
1000043a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000043ac: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000043b0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000043b4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000043b8: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000043bc: e8 cf ff ff ff              	callq	-49 <__ZNSt3__1L7forwardIRP7__sFILEEEOT_RNS_16remove_referenceIS4_E4typeE>
1000043c1: 48 8b 00                    	movq	(%rax), %rax
1000043c4: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000043c8: 48 89 01                    	movq	%rax, (%rcx)
1000043cb: 48 83 c4 20                 	addq	$32, %rsp
1000043cf: 5d                          	popq	%rbp
1000043d0: c3                          	retq
1000043d1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000043db: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000043e0 __ZNSt3__1L7forwardIPFiP7__sFILEEEEOT_RNS_16remove_referenceIS5_E4typeE:
1000043e0: 55                          	pushq	%rbp
1000043e1: 48 89 e5                    	movq	%rsp, %rbp
1000043e4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000043e8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000043ec: 5d                          	popq	%rbp
1000043ed: c3                          	retq
1000043ee: 66 90                       	nop

00000001000043f0 __ZNSt3__122__compressed_pair_elemIPFiP7__sFILEELi1ELb0EEC2IS4_vEEOT_:
1000043f0: 55                          	pushq	%rbp
1000043f1: 48 89 e5                    	movq	%rsp, %rbp
1000043f4: 48 83 ec 20                 	subq	$32, %rsp
1000043f8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000043fc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004400: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004404: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004408: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000440c: e8 cf ff ff ff              	callq	-49 <__ZNSt3__1L7forwardIPFiP7__sFILEEEEOT_RNS_16remove_referenceIS5_E4typeE>
100004411: 48 8b 00                    	movq	(%rax), %rax
100004414: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100004418: 48 89 01                    	movq	%rax, (%rcx)
10000441b: 48 83 c4 20                 	addq	$32, %rsp
10000441f: 5d                          	popq	%rbp
100004420: c3                          	retq
100004421: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000442b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100004430 __ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE5firstEv:
100004430: 55                          	pushq	%rbp
100004431: 48 89 e5                    	movq	%rsp, %rbp
100004434: 48 83 ec 10                 	subq	$16, %rsp
100004438: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000443c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004440: 48 89 c7                    	movq	%rax, %rdi
100004443: e8 08 00 00 00              	callq	8 <__ZNSt3__122__compressed_pair_elemIP7__sFILELi0ELb0EE5__getEv>
100004448: 48 83 c4 10                 	addq	$16, %rsp
10000444c: 5d                          	popq	%rbp
10000444d: c3                          	retq
10000444e: 66 90                       	nop

0000000100004450 __ZNSt3__122__compressed_pair_elemIP7__sFILELi0ELb0EE5__getEv:
100004450: 55                          	pushq	%rbp
100004451: 48 89 e5                    	movq	%rsp, %rbp
100004454: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004458: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000445c: 5d                          	popq	%rbp
10000445d: c3                          	retq
10000445e: 66 90                       	nop

0000000100004460 __ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED2Ev:
100004460: 55                          	pushq	%rbp
100004461: 48 89 e5                    	movq	%rsp, %rbp
100004464: 48 83 ec 10                 	subq	$16, %rsp
100004468: 31 c0                       	xorl	%eax, %eax
10000446a: 89 c6                       	movl	%eax, %esi
10000446c: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004470: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100004474: e8 07 00 00 00              	callq	7 <__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EE5resetES2_>
100004479: 48 83 c4 10                 	addq	$16, %rsp
10000447d: 5d                          	popq	%rbp
10000447e: c3                          	retq
10000447f: 90                          	nop

0000000100004480 __ZNSt3__110unique_ptrI7__sFILEPFiPS1_EE5resetES2_:
100004480: 55                          	pushq	%rbp
100004481: 48 89 e5                    	movq	%rsp, %rbp
100004484: 48 83 ec 30                 	subq	$48, %rsp
100004488: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000448c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004490: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004494: 48 89 c7                    	movq	%rax, %rdi
100004497: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000449b: e8 90 ff ff ff              	callq	-112 <__ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE5firstEv>
1000044a0: 48 8b 00                    	movq	(%rax), %rax
1000044a3: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000044a7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000044ab: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
1000044af: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000044b3: e8 78 ff ff ff              	callq	-136 <__ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE5firstEv>
1000044b8: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
1000044bc: 48 89 08                    	movq	%rcx, (%rax)
1000044bf: 48 83 7d e8 00              	cmpq	$0, -24(%rbp)
1000044c4: 0f 84 1c 00 00 00           	je	28 <__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EE5resetES2_+0x66>
1000044ca: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
1000044ce: e8 2d 00 00 00              	callq	45 <__ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE6secondEv>
1000044d3: 48 8b 00                    	movq	(%rax), %rax
1000044d6: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000044da: ff d0                       	callq	*%rax
1000044dc: e9 00 00 00 00              	jmp	0 <__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EE5resetES2_+0x61>
1000044e1: e9 00 00 00 00              	jmp	0 <__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EE5resetES2_+0x66>
1000044e6: 48 83 c4 30                 	addq	$48, %rsp
1000044ea: 5d                          	popq	%rbp
1000044eb: c3                          	retq
1000044ec: 48 89 c7                    	movq	%rax, %rdi
1000044ef: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
1000044f3: e8 f8 cf ff ff              	callq	-12296 <___clang_call_terminate>
1000044f8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100004500 __ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE6secondEv:
100004500: 55                          	pushq	%rbp
100004501: 48 89 e5                    	movq	%rsp, %rbp
100004504: 48 83 ec 10                 	subq	$16, %rsp
100004508: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000450c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004510: 48 05 08 00 00 00           	addq	$8, %rax
100004516: 48 89 c7                    	movq	%rax, %rdi
100004519: e8 12 00 00 00              	callq	18 <__ZNSt3__122__compressed_pair_elemIPFiP7__sFILEELi1ELb0EE5__getEv>
10000451e: 48 83 c4 10                 	addq	$16, %rsp
100004522: 5d                          	popq	%rbp
100004523: c3                          	retq
100004524: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000452e: 66 90                       	nop

0000000100004530 __ZNSt3__122__compressed_pair_elemIPFiP7__sFILEELi1ELb0EE5__getEv:
100004530: 55                          	pushq	%rbp
100004531: 48 89 e5                    	movq	%rsp, %rbp
100004534: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004538: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000453c: 5d                          	popq	%rbp
10000453d: c3                          	retq
10000453e: 66 90                       	nop

0000000100004540 __ZNSt3__1L9use_facetINS_7codecvtIcc11__mbstate_tEEEERKT_RKNS_6localeE:
100004540: 55                          	pushq	%rbp
100004541: 48 89 e5                    	movq	%rsp, %rbp
100004544: 48 83 ec 10                 	subq	$16, %rsp
100004548: 48 8b 35 d1 7a 00 00        	movq	31441(%rip), %rsi
10000454f: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004553: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100004557: e8 d4 6e 00 00              	callq	28372 <state.cpp+0x10000b430>
10000455c: 48 83 c4 10                 	addq	$16, %rsp
100004560: 5d                          	popq	%rbp
100004561: c3                          	retq
100004562: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000456c: 0f 1f 40 00                 	nopl	(%rax)

0000000100004570 __ZNKSt3__17codecvtIcc11__mbstate_tE13always_noconvEv:
100004570: 55                          	pushq	%rbp
100004571: 48 89 e5                    	movq	%rsp, %rbp
100004574: 48 83 ec 10                 	subq	$16, %rsp
100004578: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000457c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004580: 48 8b 08                    	movq	(%rax), %rcx
100004583: 48 89 c7                    	movq	%rax, %rdi
100004586: ff 51 38                    	callq	*56(%rcx)
100004589: 24 01                       	andb	$1, %al
10000458b: 0f b6 c0                    	movzbl	%al, %eax
10000458e: 48 83 c4 10                 	addq	$16, %rsp
100004592: 5d                          	popq	%rbp
100004593: c3                          	retq
100004594: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000459e: 66 90                       	nop

00000001000045a0 __ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_:
1000045a0: 55                          	pushq	%rbp
1000045a1: 48 89 e5                    	movq	%rsp, %rbp
1000045a4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000045a8: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000045ac: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000045b0: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
1000045b4: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000045b8: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000045bc: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000045c0: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000045c4: 48 89 48 18                 	movq	%rcx, 24(%rax)
1000045c8: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
1000045cc: 48 89 48 20                 	movq	%rcx, 32(%rax)
1000045d0: 5d                          	popq	%rbp
1000045d1: c3                          	retq
1000045d2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000045dc: 0f 1f 40 00                 	nopl	(%rax)

00000001000045e0 __ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_:
1000045e0: 55                          	pushq	%rbp
1000045e1: 48 89 e5                    	movq	%rsp, %rbp
1000045e4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000045e8: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000045ec: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000045f0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000045f4: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000045f8: 48 89 48 30                 	movq	%rcx, 48(%rax)
1000045fc: 48 89 48 28                 	movq	%rcx, 40(%rax)
100004600: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100004604: 48 89 48 38                 	movq	%rcx, 56(%rax)
100004608: 5d                          	popq	%rbp
100004609: c3                          	retq
10000460a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100004610 __ZNSt3__1L3maxIlEERKT_S3_S3_:
100004610: 55                          	pushq	%rbp
100004611: 48 89 e5                    	movq	%rsp, %rbp
100004614: 48 83 ec 20                 	subq	$32, %rsp
100004618: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000461c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004620: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100004624: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100004628: e8 13 00 00 00              	callq	19 <__ZNSt3__1L3maxIlNS_6__lessIllEEEERKT_S5_S5_T0_>
10000462d: 48 83 c4 20                 	addq	$32, %rsp
100004631: 5d                          	popq	%rbp
100004632: c3                          	retq
100004633: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000463d: 0f 1f 00                    	nopl	(%rax)

0000000100004640 __ZNSt3__1L3maxIlNS_6__lessIllEEEERKT_S5_S5_T0_:
100004640: 55                          	pushq	%rbp
100004641: 48 89 e5                    	movq	%rsp, %rbp
100004644: 48 83 ec 20                 	subq	$32, %rsp
100004648: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000464c: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100004650: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100004654: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100004658: 48 8d 7d f8                 	leaq	-8(%rbp), %rdi
10000465c: e8 2f 00 00 00              	callq	47 <__ZNKSt3__16__lessIllEclERKlS3_>
100004661: a8 01                       	testb	$1, %al
100004663: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__1L3maxIlNS_6__lessIllEEEERKT_S5_S5_T0_+0x2e>
100004669: e9 0d 00 00 00              	jmp	13 <__ZNSt3__1L3maxIlNS_6__lessIllEEEERKT_S5_S5_T0_+0x3b>
10000466e: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100004672: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100004676: e9 08 00 00 00              	jmp	8 <__ZNSt3__1L3maxIlNS_6__lessIllEEEERKT_S5_S5_T0_+0x43>
10000467b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000467f: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100004683: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100004687: 48 83 c4 20                 	addq	$32, %rsp
10000468b: 5d                          	popq	%rbp
10000468c: c3                          	retq
10000468d: 0f 1f 00                    	nopl	(%rax)

0000000100004690 __ZNKSt3__16__lessIllEclERKlS3_:
100004690: 55                          	pushq	%rbp
100004691: 48 89 e5                    	movq	%rsp, %rbp
100004694: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004698: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000469c: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000046a0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000046a4: 48 8b 00                    	movq	(%rax), %rax
1000046a7: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000046ab: 48 3b 01                    	cmpq	(%rcx), %rax
1000046ae: 41 0f 9c c0                 	setl	%r8b
1000046b2: 41 80 e0 01                 	andb	$1, %r8b
1000046b6: 41 0f b6 c0                 	movzbl	%r8b, %eax
1000046ba: 5d                          	popq	%rbp
1000046bb: c3                          	retq
1000046bc: 0f 1f 40 00                 	nopl	(%rax)

00000001000046c0 __ZNSt3__1L16__throw_bad_castEv:
1000046c0: 55                          	pushq	%rbp
1000046c1: 48 89 e5                    	movq	%rsp, %rbp
1000046c4: 48 83 ec 10                 	subq	$16, %rsp
1000046c8: bf 08 00 00 00              	movl	$8, %edi
1000046cd: e8 c0 6e 00 00              	callq	28352 <state.cpp+0x10000b592>
1000046d2: 48 89 c7                    	movq	%rax, %rdi
1000046d5: 48 89 45 f8                 	movq	%rax, -8(%rbp)
1000046d9: e8 84 6e 00 00              	callq	28292 <state.cpp+0x10000b562>
1000046de: 48 8b 35 53 79 00 00        	movq	31059(%rip), %rsi
1000046e5: 48 8b 15 3c 79 00 00        	movq	31036(%rip), %rdx
1000046ec: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000046f0: e8 b5 6e 00 00              	callq	28341 <state.cpp+0x10000b5aa>
1000046f5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000046ff: 90                          	nop

0000000100004700 __ZNKSt3__17codecvtIcc11__mbstate_tE8encodingEv:
100004700: 55                          	pushq	%rbp
100004701: 48 89 e5                    	movq	%rsp, %rbp
100004704: 48 83 ec 10                 	subq	$16, %rsp
100004708: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000470c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004710: 48 8b 08                    	movq	(%rax), %rcx
100004713: 48 89 c7                    	movq	%rax, %rdi
100004716: ff 51 30                    	callq	*48(%rcx)
100004719: 48 83 c4 10                 	addq	$16, %rsp
10000471d: 5d                          	popq	%rbp
10000471e: c3                          	retq
10000471f: 90                          	nop

0000000100004720 __ZNSt3__14fposI11__mbstate_tEC1Ex:
100004720: 55                          	pushq	%rbp
100004721: 48 89 e5                    	movq	%rsp, %rbp
100004724: 48 83 ec 10                 	subq	$16, %rsp
100004728: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000472c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004730: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100004734: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100004738: e8 43 00 00 00              	callq	67 <__ZNSt3__14fposI11__mbstate_tEC2Ex>
10000473d: 48 83 c4 10                 	addq	$16, %rsp
100004741: 5d                          	popq	%rbp
100004742: c3                          	retq
100004743: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000474d: 0f 1f 00                    	nopl	(%rax)

0000000100004750 __ZNSt3__14fposI11__mbstate_tE5stateES1_:
100004750: 55                          	pushq	%rbp
100004751: 48 89 e5                    	movq	%rsp, %rbp
100004754: 48 83 ec 10                 	subq	$16, %rsp
100004758: 48 8d 45 10                 	leaq	16(%rbp), %rax
10000475c: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004760: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
100004764: 48 89 cf                    	movq	%rcx, %rdi
100004767: 48 89 c6                    	movq	%rax, %rsi
10000476a: ba 80 00 00 00              	movl	$128, %edx
10000476f: e8 72 6e 00 00              	callq	28274 <state.cpp+0x10000b5e6>
100004774: 48 83 c4 10                 	addq	$16, %rsp
100004778: 5d                          	popq	%rbp
100004779: c3                          	retq
10000477a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100004780 __ZNSt3__14fposI11__mbstate_tEC2Ex:
100004780: 55                          	pushq	%rbp
100004781: 48 89 e5                    	movq	%rsp, %rbp
100004784: 48 83 ec 20                 	subq	$32, %rsp
100004788: 31 c0                       	xorl	%eax, %eax
10000478a: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000478e: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004792: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
100004796: 48 89 ca                    	movq	%rcx, %rdx
100004799: 48 89 d7                    	movq	%rdx, %rdi
10000479c: 89 c6                       	movl	%eax, %esi
10000479e: ba 80 00 00 00              	movl	$128, %edx
1000047a3: 48 89 4d e8                 	movq	%rcx, -24(%rbp)
1000047a7: e8 46 6e 00 00              	callq	28230 <state.cpp+0x10000b5f2>
1000047ac: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000047b0: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000047b4: 48 89 8a 80 00 00 00        	movq	%rcx, 128(%rdx)
1000047bb: 48 83 c4 20                 	addq	$32, %rsp
1000047bf: 5d                          	popq	%rbp
1000047c0: c3                          	retq
1000047c1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000047cb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000047d0 __ZNKSt3__14fposI11__mbstate_tEcvxEv:
1000047d0: 55                          	pushq	%rbp
1000047d1: 48 89 e5                    	movq	%rsp, %rbp
1000047d4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000047d8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000047dc: 48 8b 80 80 00 00 00        	movq	128(%rax), %rax
1000047e3: 5d                          	popq	%rbp
1000047e4: c3                          	retq
1000047e5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000047ef: 90                          	nop

00000001000047f0 __ZNKSt3__14fposI11__mbstate_tE5stateEv:
1000047f0: 55                          	pushq	%rbp
1000047f1: 48 89 e5                    	movq	%rsp, %rbp
1000047f4: 48 83 ec 10                 	subq	$16, %rsp
1000047f8: 48 89 f8                    	movq	%rdi, %rax
1000047fb: 48 89 75 f8                 	movq	%rsi, -8(%rbp)
1000047ff: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
100004803: 48 89 ce                    	movq	%rcx, %rsi
100004806: ba 80 00 00 00              	movl	$128, %edx
10000480b: 48 89 45 f0                 	movq	%rax, -16(%rbp)
10000480f: e8 d2 6d 00 00              	callq	28114 <state.cpp+0x10000b5e6>
100004814: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004818: 48 83 c4 10                 	addq	$16, %rsp
10000481c: 5d                          	popq	%rbp
10000481d: c3                          	retq
10000481e: 66 90                       	nop

0000000100004820 __ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv:
100004820: 55                          	pushq	%rbp
100004821: 48 89 e5                    	movq	%rsp, %rbp
100004824: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004828: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000482c: 48 8b 40 30                 	movq	48(%rax), %rax
100004830: 5d                          	popq	%rbp
100004831: c3                          	retq
100004832: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000483c: 0f 1f 40 00                 	nopl	(%rax)

0000000100004840 __ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv:
100004840: 55                          	pushq	%rbp
100004841: 48 89 e5                    	movq	%rsp, %rbp
100004844: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004848: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000484c: 48 8b 40 28                 	movq	40(%rax), %rax
100004850: 5d                          	popq	%rbp
100004851: c3                          	retq
100004852: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000485c: 0f 1f 40 00                 	nopl	(%rax)

0000000100004860 __ZNSt3__111char_traitsIcE3eofEv:
100004860: 55                          	pushq	%rbp
100004861: 48 89 e5                    	movq	%rsp, %rbp
100004864: b8 ff ff ff ff              	movl	$4294967295, %eax
100004869: 5d                          	popq	%rbp
10000486a: c3                          	retq
10000486b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100004870 __ZNKSt3__17codecvtIcc11__mbstate_tE7unshiftERS1_PcS4_RS4_:
100004870: 55                          	pushq	%rbp
100004871: 48 89 e5                    	movq	%rsp, %rbp
100004874: 48 83 ec 30                 	subq	$48, %rsp
100004878: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000487c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004880: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100004884: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100004888: 4c 89 45 d8                 	movq	%r8, -40(%rbp)
10000488c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004890: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100004894: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100004898: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000489c: 4c 8b 45 d8                 	movq	-40(%rbp), %r8
1000048a0: 48 8b 38                    	movq	(%rax), %rdi
1000048a3: 48 89 7d d0                 	movq	%rdi, -48(%rbp)
1000048a7: 48 89 c7                    	movq	%rax, %rdi
1000048aa: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000048ae: ff 50 28                    	callq	*40(%rax)
1000048b1: 48 83 c4 30                 	addq	$48, %rsp
1000048b5: 5d                          	popq	%rbp
1000048b6: c3                          	retq
1000048b7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

00000001000048c0 __ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv:
1000048c0: 55                          	pushq	%rbp
1000048c1: 48 89 e5                    	movq	%rsp, %rbp
1000048c4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000048c8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000048cc: 48 8b 40 20                 	movq	32(%rax), %rax
1000048d0: 5d                          	popq	%rbp
1000048d1: c3                          	retq
1000048d2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000048dc: 0f 1f 40 00                 	nopl	(%rax)

00000001000048e0 __ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv:
1000048e0: 55                          	pushq	%rbp
1000048e1: 48 89 e5                    	movq	%rsp, %rbp
1000048e4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000048e8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000048ec: 48 8b 40 18                 	movq	24(%rax), %rax
1000048f0: 5d                          	popq	%rbp
1000048f1: c3                          	retq
1000048f2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000048fc: 0f 1f 40 00                 	nopl	(%rax)

0000000100004900 __ZNKSt3__17codecvtIcc11__mbstate_tE6lengthERS1_PKcS5_m:
100004900: 55                          	pushq	%rbp
100004901: 48 89 e5                    	movq	%rsp, %rbp
100004904: 48 83 ec 30                 	subq	$48, %rsp
100004908: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000490c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004910: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100004914: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100004918: 4c 89 45 d8                 	movq	%r8, -40(%rbp)
10000491c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004920: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100004924: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100004928: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000492c: 4c 8b 45 d8                 	movq	-40(%rbp), %r8
100004930: 48 8b 38                    	movq	(%rax), %rdi
100004933: 48 89 7d d0                 	movq	%rdi, -48(%rbp)
100004937: 48 89 c7                    	movq	%rax, %rdi
10000493a: 48 8b 45 d0                 	movq	-48(%rbp), %rax
10000493e: ff 50 40                    	callq	*64(%rax)
100004941: 48 83 c4 30                 	addq	$48, %rsp
100004945: 5d                          	popq	%rbp
100004946: c3                          	retq
100004947: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100004950 __ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv:
100004950: 55                          	pushq	%rbp
100004951: 48 89 e5                    	movq	%rsp, %rbp
100004954: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004958: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000495c: 48 8b 40 10                 	movq	16(%rax), %rax
100004960: 5d                          	popq	%rbp
100004961: c3                          	retq
100004962: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000496c: 0f 1f 40 00                 	nopl	(%rax)

0000000100004970 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv:
100004970: 55                          	pushq	%rbp
100004971: 48 89 e5                    	movq	%rsp, %rbp
100004974: 48 83 ec 30                 	subq	$48, %rsp
100004978: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000497c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004980: 8b 88 8c 01 00 00           	movl	396(%rax), %ecx
100004986: 83 e1 08                    	andl	$8, %ecx
100004989: 83 f9 00                    	cmpl	$0, %ecx
10000498c: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100004990: 0f 85 9b 00 00 00           	jne	155 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv+0xc1>
100004996: 31 c0                       	xorl	%eax, %eax
100004998: 89 c1                       	movl	%eax, %ecx
10000499a: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000499e: 48 89 d7                    	movq	%rdx, %rdi
1000049a1: 48 89 ce                    	movq	%rcx, %rsi
1000049a4: 48 89 ca                    	movq	%rcx, %rdx
1000049a7: e8 34 fc ff ff              	callq	-972 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_>
1000049ac: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000049b0: f6 81 92 01 00 00 01        	testb	$1, 402(%rcx)
1000049b7: 0f 84 31 00 00 00           	je	49 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv+0x7e>
1000049bd: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000049c1: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000049c5: 48 8b 71 40                 	movq	64(%rcx), %rsi
1000049c9: 48 8b 51 40                 	movq	64(%rcx), %rdx
1000049cd: 48 03 51 60                 	addq	96(%rcx), %rdx
1000049d1: 48 8b 79 40                 	movq	64(%rcx), %rdi
1000049d5: 48 03 79 60                 	addq	96(%rcx), %rdi
1000049d9: 48 89 7d e0                 	movq	%rdi, -32(%rbp)
1000049dd: 48 89 c7                    	movq	%rax, %rdi
1000049e0: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
1000049e4: e8 b7 fb ff ff              	callq	-1097 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_>
1000049e9: e9 2c 00 00 00              	jmp	44 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv+0xaa>
1000049ee: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000049f2: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000049f6: 48 8b 71 68                 	movq	104(%rcx), %rsi
1000049fa: 48 8b 51 68                 	movq	104(%rcx), %rdx
1000049fe: 48 03 51 70                 	addq	112(%rcx), %rdx
100004a02: 48 8b 79 68                 	movq	104(%rcx), %rdi
100004a06: 48 03 79 70                 	addq	112(%rcx), %rdi
100004a0a: 48 89 7d d8                 	movq	%rdi, -40(%rbp)
100004a0e: 48 89 c7                    	movq	%rax, %rdi
100004a11: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100004a15: e8 86 fb ff ff              	callq	-1146 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_>
100004a1a: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100004a1e: c7 80 8c 01 00 00 08 00 00 00       	movl	$8, 396(%rax)
100004a28: c6 45 ff 01                 	movb	$1, -1(%rbp)
100004a2c: e9 04 00 00 00              	jmp	4 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv+0xc5>
100004a31: c6 45 ff 00                 	movb	$0, -1(%rbp)
100004a35: 8a 45 ff                    	movb	-1(%rbp), %al
100004a38: 24 01                       	andb	$1, %al
100004a3a: 0f b6 c0                    	movzbl	%al, %eax
100004a3d: 48 83 c4 30                 	addq	$48, %rsp
100004a41: 5d                          	popq	%rbp
100004a42: c3                          	retq
100004a43: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004a4d: 0f 1f 00                    	nopl	(%rax)

0000000100004a50 __ZNSt3__1L3minImEERKT_S3_S3_:
100004a50: 55                          	pushq	%rbp
100004a51: 48 89 e5                    	movq	%rsp, %rbp
100004a54: 48 83 ec 20                 	subq	$32, %rsp
100004a58: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004a5c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004a60: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100004a64: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100004a68: e8 a3 00 00 00              	callq	163 <__ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_>
100004a6d: 48 83 c4 20                 	addq	$32, %rsp
100004a71: 5d                          	popq	%rbp
100004a72: c3                          	retq
100004a73: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004a7d: 0f 1f 00                    	nopl	(%rax)

0000000100004a80 __ZNSt3__111char_traitsIcE11to_int_typeEc:
100004a80: 55                          	pushq	%rbp
100004a81: 48 89 e5                    	movq	%rsp, %rbp
100004a84: 40 88 7d ff                 	movb	%dil, -1(%rbp)
100004a88: 0f b6 45 ff                 	movzbl	-1(%rbp), %eax
100004a8c: 5d                          	popq	%rbp
100004a8d: c3                          	retq
100004a8e: 66 90                       	nop

0000000100004a90 __ZNKSt3__17codecvtIcc11__mbstate_tE2inERS1_PKcS5_RS5_PcS7_RS7_:
100004a90: 55                          	pushq	%rbp
100004a91: 48 89 e5                    	movq	%rsp, %rbp
100004a94: 41 56                       	pushq	%r14
100004a96: 53                          	pushq	%rbx
100004a97: 48 83 ec 60                 	subq	$96, %rsp
100004a9b: 48 8b 45 18                 	movq	24(%rbp), %rax
100004a9f: 4c 8b 55 10                 	movq	16(%rbp), %r10
100004aa3: 48 89 7d e8                 	movq	%rdi, -24(%rbp)
100004aa7: 48 89 75 e0                 	movq	%rsi, -32(%rbp)
100004aab: 48 89 55 d8                 	movq	%rdx, -40(%rbp)
100004aaf: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100004ab3: 4c 89 45 c8                 	movq	%r8, -56(%rbp)
100004ab7: 4c 89 4d c0                 	movq	%r9, -64(%rbp)
100004abb: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100004abf: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
100004ac3: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100004ac7: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100004acb: 4c 8b 45 c8                 	movq	-56(%rbp), %r8
100004acf: 4c 8b 4d c0                 	movq	-64(%rbp), %r9
100004ad3: 4c 8b 5d 10                 	movq	16(%rbp), %r11
100004ad7: 48 8b 5d 18                 	movq	24(%rbp), %rbx
100004adb: 4c 8b 31                    	movq	(%rcx), %r14
100004ade: 48 89 7d b8                 	movq	%rdi, -72(%rbp)
100004ae2: 48 89 cf                    	movq	%rcx, %rdi
100004ae5: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
100004ae9: 4c 89 1c 24                 	movq	%r11, (%rsp)
100004aed: 48 89 5c 24 08              	movq	%rbx, 8(%rsp)
100004af2: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100004af6: 4c 89 55 a8                 	movq	%r10, -88(%rbp)
100004afa: 41 ff 56 20                 	callq	*32(%r14)
100004afe: 48 83 c4 60                 	addq	$96, %rsp
100004b02: 5b                          	popq	%rbx
100004b03: 41 5e                       	popq	%r14
100004b05: 5d                          	popq	%rbp
100004b06: c3                          	retq
100004b07: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100004b10 __ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_:
100004b10: 55                          	pushq	%rbp
100004b11: 48 89 e5                    	movq	%rsp, %rbp
100004b14: 48 83 ec 20                 	subq	$32, %rsp
100004b18: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100004b1c: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100004b20: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100004b24: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
100004b28: 48 8d 7d f8                 	leaq	-8(%rbp), %rdi
100004b2c: e8 2f 00 00 00              	callq	47 <__ZNKSt3__16__lessImmEclERKmS3_>
100004b31: a8 01                       	testb	$1, %al
100004b33: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_+0x2e>
100004b39: e9 0d 00 00 00              	jmp	13 <__ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_+0x3b>
100004b3e: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100004b42: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100004b46: e9 08 00 00 00              	jmp	8 <__ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_+0x43>
100004b4b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004b4f: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100004b53: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100004b57: 48 83 c4 20                 	addq	$32, %rsp
100004b5b: 5d                          	popq	%rbp
100004b5c: c3                          	retq
100004b5d: 0f 1f 00                    	nopl	(%rax)

0000000100004b60 __ZNKSt3__16__lessImmEclERKmS3_:
100004b60: 55                          	pushq	%rbp
100004b61: 48 89 e5                    	movq	%rsp, %rbp
100004b64: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004b68: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004b6c: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100004b70: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004b74: 48 8b 00                    	movq	(%rax), %rax
100004b77: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100004b7b: 48 3b 01                    	cmpq	(%rcx), %rax
100004b7e: 41 0f 92 c0                 	setb	%r8b
100004b82: 41 80 e0 01                 	andb	$1, %r8b
100004b86: 41 0f b6 c0                 	movzbl	%r8b, %eax
100004b8a: 5d                          	popq	%rbp
100004b8b: c3                          	retq
100004b8c: 0f 1f 40 00                 	nopl	(%rax)

0000000100004b90 __ZNSt3__111char_traitsIcE11eq_int_typeEii:
100004b90: 55                          	pushq	%rbp
100004b91: 48 89 e5                    	movq	%rsp, %rbp
100004b94: 89 7d fc                    	movl	%edi, -4(%rbp)
100004b97: 89 75 f8                    	movl	%esi, -8(%rbp)
100004b9a: 8b 45 fc                    	movl	-4(%rbp), %eax
100004b9d: 3b 45 f8                    	cmpl	-8(%rbp), %eax
100004ba0: 0f 94 c1                    	sete	%cl
100004ba3: 80 e1 01                    	andb	$1, %cl
100004ba6: 0f b6 c1                    	movzbl	%cl, %eax
100004ba9: 5d                          	popq	%rbp
100004baa: c3                          	retq
100004bab: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100004bb0 __ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5gbumpEi:
100004bb0: 55                          	pushq	%rbp
100004bb1: 48 89 e5                    	movq	%rsp, %rbp
100004bb4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004bb8: 89 75 f4                    	movl	%esi, -12(%rbp)
100004bbb: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004bbf: 8b 4d f4                    	movl	-12(%rbp), %ecx
100004bc2: 48 8b 50 18                 	movq	24(%rax), %rdx
100004bc6: 48 63 f9                    	movslq	%ecx, %rdi
100004bc9: 48 01 fa                    	addq	%rdi, %rdx
100004bcc: 48 89 50 18                 	movq	%rdx, 24(%rax)
100004bd0: 5d                          	popq	%rbp
100004bd1: c3                          	retq
100004bd2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004bdc: 0f 1f 40 00                 	nopl	(%rax)

0000000100004be0 __ZNSt3__111char_traitsIcE7not_eofEi:
100004be0: 55                          	pushq	%rbp
100004be1: 48 89 e5                    	movq	%rsp, %rbp
100004be4: 48 83 ec 10                 	subq	$16, %rsp
100004be8: 89 7d fc                    	movl	%edi, -4(%rbp)
100004beb: 8b 7d fc                    	movl	-4(%rbp), %edi
100004bee: 89 7d f8                    	movl	%edi, -8(%rbp)
100004bf1: e8 76 68 00 00              	callq	26742 <state.cpp+0x10000b46c>
100004bf6: 8b 7d f8                    	movl	-8(%rbp), %edi
100004bf9: 89 c6                       	movl	%eax, %esi
100004bfb: e8 54 68 00 00              	callq	26708 <state.cpp+0x10000b454>
100004c00: a8 01                       	testb	$1, %al
100004c02: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__111char_traitsIcE7not_eofEi+0x2d>
100004c08: e9 10 00 00 00              	jmp	16 <__ZNSt3__111char_traitsIcE7not_eofEi+0x3d>
100004c0d: e8 5a 68 00 00              	callq	26714 <state.cpp+0x10000b46c>
100004c12: 83 f0 ff                    	xorl	$-1, %eax
100004c15: 89 45 f4                    	movl	%eax, -12(%rbp)
100004c18: e9 06 00 00 00              	jmp	6 <__ZNSt3__111char_traitsIcE7not_eofEi+0x43>
100004c1d: 8b 45 fc                    	movl	-4(%rbp), %eax
100004c20: 89 45 f4                    	movl	%eax, -12(%rbp)
100004c23: 8b 45 f4                    	movl	-12(%rbp), %eax
100004c26: 48 83 c4 10                 	addq	$16, %rsp
100004c2a: 5d                          	popq	%rbp
100004c2b: c3                          	retq
100004c2c: 0f 1f 40 00                 	nopl	(%rax)

0000000100004c30 __ZNSt3__111char_traitsIcE2eqEcc:
100004c30: 55                          	pushq	%rbp
100004c31: 48 89 e5                    	movq	%rsp, %rbp
100004c34: 40 88 7d ff                 	movb	%dil, -1(%rbp)
100004c38: 40 88 75 fe                 	movb	%sil, -2(%rbp)
100004c3c: 0f be 45 ff                 	movsbl	-1(%rbp), %eax
100004c40: 0f be 4d fe                 	movsbl	-2(%rbp), %ecx
100004c44: 39 c8                       	cmpl	%ecx, %eax
100004c46: 0f 94 c2                    	sete	%dl
100004c49: 80 e2 01                    	andb	$1, %dl
100004c4c: 0f b6 c2                    	movzbl	%dl, %eax
100004c4f: 5d                          	popq	%rbp
100004c50: c3                          	retq
100004c51: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004c5b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100004c60 __ZNSt3__111char_traitsIcE12to_char_typeEi:
100004c60: 55                          	pushq	%rbp
100004c61: 48 89 e5                    	movq	%rsp, %rbp
100004c64: 89 7d fc                    	movl	%edi, -4(%rbp)
100004c67: 8b 45 fc                    	movl	-4(%rbp), %eax
100004c6a: 0f be c0                    	movsbl	%al, %eax
100004c6d: 5d                          	popq	%rbp
100004c6e: c3                          	retq
100004c6f: 90                          	nop

0000000100004c70 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv:
100004c70: 55                          	pushq	%rbp
100004c71: 48 89 e5                    	movq	%rsp, %rbp
100004c74: 48 83 ec 10                 	subq	$16, %rsp
100004c78: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004c7c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004c80: 8b 88 8c 01 00 00           	movl	396(%rax), %ecx
100004c86: 83 e1 10                    	andl	$16, %ecx
100004c89: 83 f9 00                    	cmpl	$0, %ecx
100004c8c: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100004c90: 0f 85 b0 00 00 00           	jne	176 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv+0xd6>
100004c96: 31 c0                       	xorl	%eax, %eax
100004c98: 89 c1                       	movl	%eax, %ecx
100004c9a: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
100004c9e: 48 89 d7                    	movq	%rdx, %rdi
100004ca1: 48 89 ce                    	movq	%rcx, %rsi
100004ca4: 48 89 ca                    	movq	%rcx, %rdx
100004ca7: e8 f4 f8 ff ff              	callq	-1804 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_>
100004cac: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100004cb0: 48 83 79 60 08              	cmpq	$8, 96(%rcx)
100004cb5: 0f 86 67 00 00 00           	jbe	103 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv+0xb2>
100004cbb: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004cbf: f6 80 92 01 00 00 01        	testb	$1, 402(%rax)
100004cc6: 0f 84 2b 00 00 00           	je	43 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv+0x87>
100004ccc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004cd0: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100004cd4: 48 8b 71 40                 	movq	64(%rcx), %rsi
100004cd8: 48 8b 51 40                 	movq	64(%rcx), %rdx
100004cdc: 48 8b 79 60                 	movq	96(%rcx), %rdi
100004ce0: 48 81 ef 01 00 00 00        	subq	$1, %rdi
100004ce7: 48 01 fa                    	addq	%rdi, %rdx
100004cea: 48 89 c7                    	movq	%rax, %rdi
100004ced: e8 ee f8 ff ff              	callq	-1810 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_>
100004cf2: e9 26 00 00 00              	jmp	38 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv+0xad>
100004cf7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004cfb: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100004cff: 48 8b 71 68                 	movq	104(%rcx), %rsi
100004d03: 48 8b 51 68                 	movq	104(%rcx), %rdx
100004d07: 48 8b 79 70                 	movq	112(%rcx), %rdi
100004d0b: 48 81 ef 01 00 00 00        	subq	$1, %rdi
100004d12: 48 01 fa                    	addq	%rdi, %rdx
100004d15: 48 89 c7                    	movq	%rax, %rdi
100004d18: e8 c3 f8 ff ff              	callq	-1853 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_>
100004d1d: e9 16 00 00 00              	jmp	22 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv+0xc8>
100004d22: 31 c0                       	xorl	%eax, %eax
100004d24: 89 c1                       	movl	%eax, %ecx
100004d26: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
100004d2a: 48 89 d7                    	movq	%rdx, %rdi
100004d2d: 48 89 ce                    	movq	%rcx, %rsi
100004d30: 48 89 ca                    	movq	%rcx, %rdx
100004d33: e8 a8 f8 ff ff              	callq	-1880 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_>
100004d38: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004d3c: c7 80 8c 01 00 00 10 00 00 00       	movl	$16, 396(%rax)
100004d46: 48 83 c4 10                 	addq	$16, %rsp
100004d4a: 5d                          	popq	%rbp
100004d4b: c3                          	retq
100004d4c: 0f 1f 40 00                 	nopl	(%rax)

0000000100004d50 __ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv:
100004d50: 55                          	pushq	%rbp
100004d51: 48 89 e5                    	movq	%rsp, %rbp
100004d54: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004d58: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004d5c: 48 8b 40 38                 	movq	56(%rax), %rax
100004d60: 5d                          	popq	%rbp
100004d61: c3                          	retq
100004d62: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004d6c: 0f 1f 40 00                 	nopl	(%rax)

0000000100004d70 __ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi:
100004d70: 55                          	pushq	%rbp
100004d71: 48 89 e5                    	movq	%rsp, %rbp
100004d74: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004d78: 89 75 f4                    	movl	%esi, -12(%rbp)
100004d7b: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004d7f: 8b 4d f4                    	movl	-12(%rbp), %ecx
100004d82: 48 8b 50 30                 	movq	48(%rax), %rdx
100004d86: 48 63 f9                    	movslq	%ecx, %rdi
100004d89: 48 01 fa                    	addq	%rdi, %rdx
100004d8c: 48 89 50 30                 	movq	%rdx, 48(%rax)
100004d90: 5d                          	popq	%rbp
100004d91: c3                          	retq
100004d92: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004d9c: 0f 1f 40 00                 	nopl	(%rax)

0000000100004da0 __ZNKSt3__17codecvtIcc11__mbstate_tE3outERS1_PKcS5_RS5_PcS7_RS7_:
100004da0: 55                          	pushq	%rbp
100004da1: 48 89 e5                    	movq	%rsp, %rbp
100004da4: 41 56                       	pushq	%r14
100004da6: 53                          	pushq	%rbx
100004da7: 48 83 ec 60                 	subq	$96, %rsp
100004dab: 48 8b 45 18                 	movq	24(%rbp), %rax
100004daf: 4c 8b 55 10                 	movq	16(%rbp), %r10
100004db3: 48 89 7d e8                 	movq	%rdi, -24(%rbp)
100004db7: 48 89 75 e0                 	movq	%rsi, -32(%rbp)
100004dbb: 48 89 55 d8                 	movq	%rdx, -40(%rbp)
100004dbf: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100004dc3: 4c 89 45 c8                 	movq	%r8, -56(%rbp)
100004dc7: 4c 89 4d c0                 	movq	%r9, -64(%rbp)
100004dcb: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100004dcf: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
100004dd3: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100004dd7: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100004ddb: 4c 8b 45 c8                 	movq	-56(%rbp), %r8
100004ddf: 4c 8b 4d c0                 	movq	-64(%rbp), %r9
100004de3: 4c 8b 5d 10                 	movq	16(%rbp), %r11
100004de7: 48 8b 5d 18                 	movq	24(%rbp), %rbx
100004deb: 4c 8b 31                    	movq	(%rcx), %r14
100004dee: 48 89 7d b8                 	movq	%rdi, -72(%rbp)
100004df2: 48 89 cf                    	movq	%rcx, %rdi
100004df5: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
100004df9: 4c 89 1c 24                 	movq	%r11, (%rsp)
100004dfd: 48 89 5c 24 08              	movq	%rbx, 8(%rsp)
100004e02: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100004e06: 4c 89 55 a8                 	movq	%r10, -88(%rbp)
100004e0a: 41 ff 56 18                 	callq	*24(%r14)
100004e0e: 48 83 c4 60                 	addq	$96, %rsp
100004e12: 5b                          	popq	%rbx
100004e13: 41 5e                       	popq	%r14
100004e15: 5d                          	popq	%rbp
100004e16: c3                          	retq
100004e17: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100004e20 __ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl:
100004e20: 55                          	pushq	%rbp
100004e21: 48 89 e5                    	movq	%rsp, %rbp
100004e24: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004e28: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004e2c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004e30: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100004e34: 48 03 48 30                 	addq	48(%rax), %rcx
100004e38: 48 89 48 30                 	movq	%rcx, 48(%rax)
100004e3c: 5d                          	popq	%rbp
100004e3d: c3                          	retq
100004e3e: 66 90                       	nop

0000000100004e40 __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc:
100004e40: 55                          	pushq	%rbp
100004e41: 48 89 e5                    	movq	%rsp, %rbp
100004e44: 48 83 ec 20                 	subq	$32, %rsp
100004e48: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004e4c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004e50: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004e54: 48 89 c7                    	movq	%rax, %rdi
100004e57: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100004e5b: e8 30 00 00 00              	callq	48 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv>
100004e60: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100004e64: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004e68: 48 89 75 e0                 	movq	%rsi, -32(%rbp)
100004e6c: e8 01 66 00 00              	callq	26113 <state.cpp+0x10000b472>
100004e71: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100004e75: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
100004e79: 48 89 c2                    	movq	%rax, %rdx
100004e7c: e8 fd 65 00 00              	callq	26109 <state.cpp+0x10000b47e>
100004e81: 48 83 c4 20                 	addq	$32, %rsp
100004e85: 5d                          	popq	%rbp
100004e86: c3                          	retq
100004e87: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100004e90 __ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv:
100004e90: 55                          	pushq	%rbp
100004e91: 48 89 e5                    	movq	%rsp, %rbp
100004e94: 48 83 ec 10                 	subq	$16, %rsp
100004e98: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004e9c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100004ea0: e8 2b 00 00 00              	callq	43 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv>
100004ea5: 48 83 c4 10                 	addq	$16, %rsp
100004ea9: 5d                          	popq	%rbp
100004eaa: c3                          	retq
100004eab: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100004eb0 __ZNSt3__111char_traitsIcE6lengthEPKc:
100004eb0: 55                          	pushq	%rbp
100004eb1: 48 89 e5                    	movq	%rsp, %rbp
100004eb4: 48 83 ec 10                 	subq	$16, %rsp
100004eb8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004ebc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100004ec0: e8 33 67 00 00              	callq	26419 <state.cpp+0x10000b5f8>
100004ec5: 48 83 c4 10                 	addq	$16, %rsp
100004ec9: 5d                          	popq	%rbp
100004eca: c3                          	retq
100004ecb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100004ed0 __ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv:
100004ed0: 55                          	pushq	%rbp
100004ed1: 48 89 e5                    	movq	%rsp, %rbp
100004ed4: 48 83 ec 10                 	subq	$16, %rsp
100004ed8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004edc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004ee0: 48 89 c1                    	movq	%rax, %rcx
100004ee3: 48 89 cf                    	movq	%rcx, %rdi
100004ee6: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100004eea: e8 21 00 00 00              	callq	33 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev>
100004eef: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004ef3: 48 89 c7                    	movq	%rax, %rdi
100004ef6: e8 45 00 00 00              	callq	69 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev>
100004efb: 48 83 c4 10                 	addq	$16, %rsp
100004eff: 5d                          	popq	%rbp
100004f00: c3                          	retq
100004f01: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004f0b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100004f10 __ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev:
100004f10: 55                          	pushq	%rbp
100004f11: 48 89 e5                    	movq	%rsp, %rbp
100004f14: 48 83 ec 10                 	subq	$16, %rsp
100004f18: 31 f6                       	xorl	%esi, %esi
100004f1a: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004f1e: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004f22: 48 89 c7                    	movq	%rax, %rdi
100004f25: ba 18 00 00 00              	movl	$24, %edx
100004f2a: e8 c3 66 00 00              	callq	26307 <state.cpp+0x10000b5f2>
100004f2f: 48 83 c4 10                 	addq	$16, %rsp
100004f33: 5d                          	popq	%rbp
100004f34: c3                          	retq
100004f35: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100004f3f: 90                          	nop

0000000100004f40 __ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev:
100004f40: 55                          	pushq	%rbp
100004f41: 48 89 e5                    	movq	%rsp, %rbp
100004f44: 48 83 ec 10                 	subq	$16, %rsp
100004f48: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004f4c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004f50: 48 89 c7                    	movq	%rax, %rdi
100004f53: e8 08 00 00 00              	callq	8 <__ZNSt3__19allocatorIcEC2Ev>
100004f58: 48 83 c4 10                 	addq	$16, %rsp
100004f5c: 5d                          	popq	%rbp
100004f5d: c3                          	retq
100004f5e: 66 90                       	nop

0000000100004f60 __ZNSt3__19allocatorIcEC2Ev:
100004f60: 55                          	pushq	%rbp
100004f61: 48 89 e5                    	movq	%rsp, %rbp
100004f64: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004f68: 5d                          	popq	%rbp
100004f69: c3                          	retq
100004f6a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100004f70 __ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev:
100004f70: 55                          	pushq	%rbp
100004f71: 48 89 e5                    	movq	%rsp, %rbp
100004f74: 48 83 ec 10                 	subq	$16, %rsp
100004f78: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004f7c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004f80: 48 89 c1                    	movq	%rax, %rcx
100004f83: 48 89 cf                    	movq	%rcx, %rdi
100004f86: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100004f8a: e8 f1 00 00 00              	callq	241 <__ZNSt3__18ios_baseC2Ev>
100004f8f: 48 8b 05 ca 70 00 00        	movq	28874(%rip), %rax
100004f96: 48 05 10 00 00 00           	addq	$16, %rax
100004f9c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100004fa0: 48 89 01                    	movq	%rax, (%rcx)
100004fa3: 48 83 c4 10                 	addq	$16, %rsp
100004fa7: 5d                          	popq	%rbp
100004fa8: c3                          	retq
100004fa9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100004fb0 __ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE:
100004fb0: 55                          	pushq	%rbp
100004fb1: 48 89 e5                    	movq	%rsp, %rbp
100004fb4: 48 83 ec 40                 	subq	$64, %rsp
100004fb8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004fbc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004fc0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100004fc4: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004fc8: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100004fcc: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100004fd0: 48 89 ce                    	movq	%rcx, %rsi
100004fd3: 48 83 c6 08                 	addq	$8, %rsi
100004fd7: 48 89 c7                    	movq	%rax, %rdi
100004fda: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100004fde: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100004fe2: e8 b9 00 00 00              	callq	185 <__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE>
100004fe7: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100004feb: 48 83 c0 10                 	addq	$16, %rax
100004fef: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100004ff3: 48 83 c1 18                 	addq	$24, %rcx
100004ff7: 48 89 c7                    	movq	%rax, %rdi
100004ffa: 48 89 ce                    	movq	%rcx, %rsi
100004ffd: e8 fe 00 00 00              	callq	254 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev>
100005002: e9 00 00 00 00              	jmp	0 <__ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE+0x57>
100005007: 48 8b 45 c8                 	movq	-56(%rbp), %rax
10000500b: 48 8b 08                    	movq	(%rax), %rcx
10000500e: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100005012: 48 89 0a                    	movq	%rcx, (%rdx)
100005015: 48 8b 48 28                 	movq	40(%rax), %rcx
100005019: 48 8b 32                    	movq	(%rdx), %rsi
10000501c: 48 8b 76 e8                 	movq	-24(%rsi), %rsi
100005020: 48 89 0c 32                 	movq	%rcx, (%rdx,%rsi)
100005024: 48 8b 48 30                 	movq	48(%rax), %rcx
100005028: 48 89 4a 10                 	movq	%rcx, 16(%rdx)
10000502c: 48 83 c4 40                 	addq	$64, %rsp
100005030: 5d                          	popq	%rbp
100005031: c3                          	retq
100005032: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100005036: 89 55 dc                    	movl	%edx, -36(%rbp)
100005039: 48 8b 45 d0                 	movq	-48(%rbp), %rax
10000503d: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100005041: 48 81 c1 08 00 00 00        	addq	$8, %rcx
100005048: 48 89 c7                    	movq	%rax, %rdi
10000504b: 48 89 ce                    	movq	%rcx, %rsi
10000504e: e8 79 64 00 00              	callq	25721 <state.cpp+0x10000b4cc>
100005053: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100005057: e8 c2 63 00 00              	callq	25538 <state.cpp+0x10000b41e>
10000505c: 0f 0b                       	ud2
10000505e: 66 90                       	nop

0000000100005060 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev:
100005060: 55                          	pushq	%rbp
100005061: 48 89 e5                    	movq	%rsp, %rbp
100005064: 48 83 ec 10                 	subq	$16, %rsp
100005068: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000506c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100005070: e8 0b 01 00 00              	callq	267 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev>
100005075: 48 83 c4 10                 	addq	$16, %rsp
100005079: 5d                          	popq	%rbp
10000507a: c3                          	retq
10000507b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005080 __ZNSt3__18ios_baseC2Ev:
100005080: 55                          	pushq	%rbp
100005081: 48 89 e5                    	movq	%rsp, %rbp
100005084: 48 8b 05 cd 6f 00 00        	movq	28621(%rip), %rax
10000508b: 48 05 10 00 00 00           	addq	$16, %rax
100005091: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005095: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
100005099: 48 89 01                    	movq	%rax, (%rcx)
10000509c: 5d                          	popq	%rbp
10000509d: c3                          	retq
10000509e: 66 90                       	nop

00000001000050a0 __ZNSt3__113basic_istreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE:
1000050a0: 55                          	pushq	%rbp
1000050a1: 48 89 e5                    	movq	%rsp, %rbp
1000050a4: 48 83 ec 20                 	subq	$32, %rsp
1000050a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000050ac: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000050b0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000050b4: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000050b8: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000050bc: 48 8b 11                    	movq	(%rcx), %rdx
1000050bf: 48 89 10                    	movq	%rdx, (%rax)
1000050c2: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000050c6: 48 8b 10                    	movq	(%rax), %rdx
1000050c9: 48 8b 52 e8                 	movq	-24(%rdx), %rdx
1000050cd: 48 89 0c 10                 	movq	%rcx, (%rax,%rdx)
1000050d1: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
1000050d9: 48 8b 08                    	movq	(%rax), %rcx
1000050dc: 48 8b 49 e8                 	movq	-24(%rcx), %rcx
1000050e0: 48 01 c8                    	addq	%rcx, %rax
1000050e3: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000050e7: 48 89 c7                    	movq	%rax, %rdi
1000050ea: e8 41 00 00 00              	callq	65 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE>
1000050ef: 48 83 c4 20                 	addq	$32, %rsp
1000050f3: 5d                          	popq	%rbp
1000050f4: c3                          	retq
1000050f5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000050ff: 90                          	nop

0000000100005100 __ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2Ev:
100005100: 55                          	pushq	%rbp
100005101: 48 89 e5                    	movq	%rsp, %rbp
100005104: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005108: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000510c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100005110: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005114: 48 8b 11                    	movq	(%rcx), %rdx
100005117: 48 89 10                    	movq	%rdx, (%rax)
10000511a: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000511e: 48 8b 10                    	movq	(%rax), %rdx
100005121: 48 8b 52 e8                 	movq	-24(%rdx), %rdx
100005125: 48 89 0c 10                 	movq	%rcx, (%rax,%rdx)
100005129: 5d                          	popq	%rbp
10000512a: c3                          	retq
10000512b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005130 __ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE:
100005130: 55                          	pushq	%rbp
100005131: 48 89 e5                    	movq	%rsp, %rbp
100005134: 48 83 ec 20                 	subq	$32, %rsp
100005138: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000513c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100005140: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100005144: 48 89 c1                    	movq	%rax, %rcx
100005147: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
10000514b: 48 89 cf                    	movq	%rcx, %rdi
10000514e: 48 89 d6                    	movq	%rdx, %rsi
100005151: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100005155: e8 ea 63 00 00              	callq	25578 <state.cpp+0x10000b544>
10000515a: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000515e: 48 c7 80 88 00 00 00 00 00 00 00    	movq	$0, 136(%rax)
100005169: e8 fe 62 00 00              	callq	25342 <state.cpp+0x10000b46c>
10000516e: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100005172: 89 81 90 00 00 00           	movl	%eax, 144(%rcx)
100005178: 48 83 c4 20                 	addq	$32, %rsp
10000517c: 5d                          	popq	%rbp
10000517d: c3                          	retq
10000517e: 66 90                       	nop

0000000100005180 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev:
100005180: 55                          	pushq	%rbp
100005181: 48 89 e5                    	movq	%rsp, %rbp
100005184: 48 83 ec 40                 	subq	$64, %rsp
100005188: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000518c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100005190: 48 89 c7                    	movq	%rax, %rdi
100005193: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100005197: e8 48 63 00 00              	callq	25416 <state.cpp+0x10000b4e4>
10000519c: 48 8b 05 a5 6e 00 00        	movq	28325(%rip), %rax
1000051a3: 48 83 c0 10                 	addq	$16, %rax
1000051a7: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
1000051ab: 48 89 01                    	movq	%rax, (%rcx)
1000051ae: 48 c7 41 40 00 00 00 00     	movq	$0, 64(%rcx)
1000051b6: 48 c7 41 48 00 00 00 00     	movq	$0, 72(%rcx)
1000051be: 48 c7 41 50 00 00 00 00     	movq	$0, 80(%rcx)
1000051c6: 48 c7 41 60 00 00 00 00     	movq	$0, 96(%rcx)
1000051ce: 48 c7 41 68 00 00 00 00     	movq	$0, 104(%rcx)
1000051d6: 48 c7 41 70 00 00 00 00     	movq	$0, 112(%rcx)
1000051de: 48 c7 41 78 00 00 00 00     	movq	$0, 120(%rcx)
1000051e6: 48 c7 81 80 00 00 00 00 00 00 00    	movq	$0, 128(%rcx)
1000051f1: 48 c7 81 00 01 00 00 00 00 00 00    	movq	$0, 256(%rcx)
1000051fc: 48 c7 81 f8 00 00 00 00 00 00 00    	movq	$0, 248(%rcx)
100005207: 48 c7 81 f0 00 00 00 00 00 00 00    	movq	$0, 240(%rcx)
100005212: 48 c7 81 e8 00 00 00 00 00 00 00    	movq	$0, 232(%rcx)
10000521d: 48 c7 81 e0 00 00 00 00 00 00 00    	movq	$0, 224(%rcx)
100005228: 48 c7 81 d8 00 00 00 00 00 00 00    	movq	$0, 216(%rcx)
100005233: 48 c7 81 d0 00 00 00 00 00 00 00    	movq	$0, 208(%rcx)
10000523e: 48 c7 81 c8 00 00 00 00 00 00 00    	movq	$0, 200(%rcx)
100005249: 48 c7 81 c0 00 00 00 00 00 00 00    	movq	$0, 192(%rcx)
100005254: 48 c7 81 b8 00 00 00 00 00 00 00    	movq	$0, 184(%rcx)
10000525f: 48 c7 81 b0 00 00 00 00 00 00 00    	movq	$0, 176(%rcx)
10000526a: 48 c7 81 a8 00 00 00 00 00 00 00    	movq	$0, 168(%rcx)
100005275: 48 c7 81 a0 00 00 00 00 00 00 00    	movq	$0, 160(%rcx)
100005280: 48 c7 81 98 00 00 00 00 00 00 00    	movq	$0, 152(%rcx)
10000528b: 48 c7 81 90 00 00 00 00 00 00 00    	movq	$0, 144(%rcx)
100005296: 48 c7 81 88 00 00 00 00 00 00 00    	movq	$0, 136(%rcx)
1000052a1: 48 c7 81 80 01 00 00 00 00 00 00    	movq	$0, 384(%rcx)
1000052ac: 48 c7 81 78 01 00 00 00 00 00 00    	movq	$0, 376(%rcx)
1000052b7: 48 c7 81 70 01 00 00 00 00 00 00    	movq	$0, 368(%rcx)
1000052c2: 48 c7 81 68 01 00 00 00 00 00 00    	movq	$0, 360(%rcx)
1000052cd: 48 c7 81 60 01 00 00 00 00 00 00    	movq	$0, 352(%rcx)
1000052d8: 48 c7 81 58 01 00 00 00 00 00 00    	movq	$0, 344(%rcx)
1000052e3: 48 c7 81 50 01 00 00 00 00 00 00    	movq	$0, 336(%rcx)
1000052ee: 48 c7 81 48 01 00 00 00 00 00 00    	movq	$0, 328(%rcx)
1000052f9: 48 c7 81 40 01 00 00 00 00 00 00    	movq	$0, 320(%rcx)
100005304: 48 c7 81 38 01 00 00 00 00 00 00    	movq	$0, 312(%rcx)
10000530f: 48 c7 81 30 01 00 00 00 00 00 00    	movq	$0, 304(%rcx)
10000531a: 48 c7 81 28 01 00 00 00 00 00 00    	movq	$0, 296(%rcx)
100005325: 48 c7 81 20 01 00 00 00 00 00 00    	movq	$0, 288(%rcx)
100005330: 48 c7 81 18 01 00 00 00 00 00 00    	movq	$0, 280(%rcx)
10000533b: 48 c7 81 10 01 00 00 00 00 00 00    	movq	$0, 272(%rcx)
100005346: 48 c7 81 08 01 00 00 00 00 00 00    	movq	$0, 264(%rcx)
100005351: c7 81 88 01 00 00 00 00 00 00       	movl	$0, 392(%rcx)
10000535b: c7 81 8c 01 00 00 00 00 00 00       	movl	$0, 396(%rcx)
100005365: c6 81 90 01 00 00 00        	movb	$0, 400(%rcx)
10000536c: c6 81 91 01 00 00 00        	movb	$0, 401(%rcx)
100005373: c6 81 92 01 00 00 00        	movb	$0, 402(%rcx)
10000537a: 48 8d 7d f0                 	leaq	-16(%rbp), %rdi
10000537e: 48 89 ce                    	movq	%rcx, %rsi
100005381: e8 2a 01 00 00              	callq	298 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE6getlocEv>
100005386: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev+0x20b>
10000538b: 48 8d 7d f0                 	leaq	-16(%rbp), %rdi
10000538f: e8 dc 00 00 00              	callq	220 <__ZNSt3__1L9has_facetINS_7codecvtIcc11__mbstate_tEEEEbRKNS_6localeE>
100005394: 48 8d 7d f0                 	leaq	-16(%rbp), %rdi
100005398: 88 45 cf                    	movb	%al, -49(%rbp)
10000539b: e8 74 61 00 00              	callq	24948 <state.cpp+0x10000b514>
1000053a0: 8a 45 cf                    	movb	-49(%rbp), %al
1000053a3: a8 01                       	testb	$1, %al
1000053a5: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev+0x230>
1000053ab: e9 7e 00 00 00              	jmp	126 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev+0x2ae>
1000053b0: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
1000053b4: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
1000053b8: e8 f3 00 00 00              	callq	243 <__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE6getlocEv>
1000053bd: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev+0x242>
1000053c2: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
1000053c6: e8 75 f1 ff ff              	callq	-3723 <__ZNSt3__1L9use_facetINS_7codecvtIcc11__mbstate_tEEEERKT_RKNS_6localeE>
1000053cb: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000053cf: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev+0x254>
1000053d4: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000053d8: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
1000053dc: 48 89 88 80 00 00 00        	movq	%rcx, 128(%rax)
1000053e3: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
1000053e7: e8 28 61 00 00              	callq	24872 <state.cpp+0x10000b514>
1000053ec: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000053f0: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000053f7: e8 74 f1 ff ff              	callq	-3724 <__ZNKSt3__17codecvtIcc11__mbstate_tE13always_noconvEv>
1000053fc: 24 01                       	andb	$1, %al
1000053fe: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100005402: 88 81 92 01 00 00           	movb	%al, 402(%rcx)
100005408: e9 21 00 00 00              	jmp	33 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev+0x2ae>
10000540d: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100005411: 89 55 e4                    	movl	%edx, -28(%rbp)
100005414: e9 39 00 00 00              	jmp	57 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev+0x2d2>
100005419: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000541d: 89 55 e4                    	movl	%edx, -28(%rbp)
100005420: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
100005424: e8 eb 60 00 00              	callq	24811 <state.cpp+0x10000b514>
100005429: e9 24 00 00 00              	jmp	36 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev+0x2d2>
10000542e: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100005432: 48 8b 08                    	movq	(%rax), %rcx
100005435: 48 8b 49 18                 	movq	24(%rcx), %rcx
100005439: 31 d2                       	xorl	%edx, %edx
10000543b: 89 d6                       	movl	%edx, %esi
10000543d: ba 00 10 00 00              	movl	$4096, %edx
100005442: 48 89 c7                    	movq	%rax, %rdi
100005445: ff d1                       	callq	*%rcx
100005447: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev+0x2cc>
10000544c: 48 83 c4 40                 	addq	$64, %rsp
100005450: 5d                          	popq	%rbp
100005451: c3                          	retq
100005452: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100005456: 48 89 c7                    	movq	%rax, %rdi
100005459: e8 8c 60 00 00              	callq	24716 <state.cpp+0x10000b4ea>
10000545e: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100005462: e8 b7 5f 00 00              	callq	24503 <state.cpp+0x10000b41e>
100005467: 0f 0b                       	ud2
100005469: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100005470 __ZNSt3__1L9has_facetINS_7codecvtIcc11__mbstate_tEEEEbRKNS_6localeE:
100005470: 55                          	pushq	%rbp
100005471: 48 89 e5                    	movq	%rsp, %rbp
100005474: 48 83 ec 20                 	subq	$32, %rsp
100005478: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000547c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100005480: 48 8b 35 99 6b 00 00        	movq	27545(%rip), %rsi
100005487: e8 9e 5f 00 00              	callq	24478 <state.cpp+0x10000b42a>
10000548c: 88 45 f7                    	movb	%al, -9(%rbp)
10000548f: e9 00 00 00 00              	jmp	0 <__ZNSt3__1L9has_facetINS_7codecvtIcc11__mbstate_tEEEEbRKNS_6localeE+0x24>
100005494: 8a 45 f7                    	movb	-9(%rbp), %al
100005497: 24 01                       	andb	$1, %al
100005499: 0f b6 c0                    	movzbl	%al, %eax
10000549c: 48 83 c4 20                 	addq	$32, %rsp
1000054a0: 5d                          	popq	%rbp
1000054a1: c3                          	retq
1000054a2: 48 89 c7                    	movq	%rax, %rdi
1000054a5: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000054a9: e8 42 c0 ff ff              	callq	-16318 <___clang_call_terminate>
1000054ae: 66 90                       	nop

00000001000054b0 __ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE6getlocEv:
1000054b0: 55                          	pushq	%rbp
1000054b1: 48 89 e5                    	movq	%rsp, %rbp
1000054b4: 48 83 ec 10                 	subq	$16, %rsp
1000054b8: 48 89 f8                    	movq	%rdi, %rax
1000054bb: 48 89 75 f8                 	movq	%rsi, -8(%rbp)
1000054bf: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
1000054c3: 48 81 c1 08 00 00 00        	addq	$8, %rcx
1000054ca: 48 89 ce                    	movq	%rcx, %rsi
1000054cd: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000054d1: e8 38 60 00 00              	callq	24632 <state.cpp+0x10000b50e>
1000054d6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000054da: 48 83 c4 10                 	addq	$16, %rsp
1000054de: 5d                          	popq	%rbp
1000054df: c3                          	retq

00000001000054e0 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openERKNS_12basic_stringIcS2_NS_9allocatorIcEEEEj:
1000054e0: 55                          	pushq	%rbp
1000054e1: 48 89 e5                    	movq	%rsp, %rbp
1000054e4: 48 83 ec 20                 	subq	$32, %rsp
1000054e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000054ec: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000054f0: 89 55 ec                    	movl	%edx, -20(%rbp)
1000054f3: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000054f7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000054fb: 48 89 7d e0                 	movq	%rdi, -32(%rbp)
1000054ff: 48 89 c7                    	movq	%rax, %rdi
100005502: e8 69 01 00 00              	callq	361 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv>
100005507: 8b 55 ec                    	movl	-20(%rbp), %edx
10000550a: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
10000550e: 48 89 c6                    	movq	%rax, %rsi
100005511: e8 9e 5f 00 00              	callq	24478 <state.cpp+0x10000b4b4>
100005516: 48 83 c4 20                 	addq	$32, %rsp
10000551a: 5d                          	popq	%rbp
10000551b: c3                          	retq
10000551c: 0f 1f 40 00                 	nopl	(%rax)

0000000100005520 __ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearEj:
100005520: 55                          	pushq	%rbp
100005521: 48 89 e5                    	movq	%rsp, %rbp
100005524: 48 83 ec 10                 	subq	$16, %rsp
100005528: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000552c: 89 75 f4                    	movl	%esi, -12(%rbp)
10000552f: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100005533: 8b 75 f4                    	movl	-12(%rbp), %esi
100005536: 48 89 c7                    	movq	%rax, %rdi
100005539: e8 0c 60 00 00              	callq	24588 <state.cpp+0x10000b54a>
10000553e: 48 83 c4 10                 	addq	$16, %rsp
100005542: 5d                          	popq	%rbp
100005543: c3                          	retq
100005544: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000554e: 66 90                       	nop

0000000100005550 __ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj:
100005550: 55                          	pushq	%rbp
100005551: 48 89 e5                    	movq	%rsp, %rbp
100005554: 48 83 ec 10                 	subq	$16, %rsp
100005558: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000555c: 89 75 f4                    	movl	%esi, -12(%rbp)
10000555f: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100005563: 8b 75 f4                    	movl	-12(%rbp), %esi
100005566: 48 89 c7                    	movq	%rax, %rdi
100005569: e8 a2 04 00 00              	callq	1186 <__ZNSt3__18ios_base8setstateEj>
10000556e: 48 83 c4 10                 	addq	$16, %rsp
100005572: 5d                          	popq	%rbp
100005573: c3                          	retq
100005574: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000557e: 66 90                       	nop

0000000100005580 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj:
100005580: 55                          	pushq	%rbp
100005581: 48 89 e5                    	movq	%rsp, %rbp
100005584: 48 83 ec 30                 	subq	$48, %rsp
100005588: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000558c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100005590: 89 55 ec                    	movl	%edx, -20(%rbp)
100005593: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100005597: 48 c7 45 e0 00 00 00 00     	movq	$0, -32(%rbp)
10000559f: 48 83 78 78 00              	cmpq	$0, 120(%rax)
1000055a4: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000055a8: 0f 85 b7 00 00 00           	jne	183 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj+0xe5>
1000055ae: 8b 7d ec                    	movl	-20(%rbp), %edi
1000055b1: e8 da 00 00 00              	callq	218 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj>
1000055b6: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000055ba: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
1000055bf: 0f 84 9b 00 00 00           	je	155 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj+0xe0>
1000055c5: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000055c9: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000055cd: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000055d1: 48 8b 75 d8                 	movq	-40(%rbp), %rsi
1000055d5: e8 e8 5f 00 00              	callq	24552 <state.cpp+0x10000b5c2>
1000055da: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
1000055de: 48 89 41 78                 	movq	%rax, 120(%rcx)
1000055e2: 48 83 79 78 00              	cmpq	$0, 120(%rcx)
1000055e7: 0f 84 66 00 00 00           	je	102 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj+0xd3>
1000055ed: 8b 45 ec                    	movl	-20(%rbp), %eax
1000055f0: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
1000055f4: 89 81 88 01 00 00           	movl	%eax, 392(%rcx)
1000055fa: 8b 45 ec                    	movl	-20(%rbp), %eax
1000055fd: 83 e0 02                    	andl	$2, %eax
100005600: 83 f8 00                    	cmpl	$0, %eax
100005603: 0f 84 45 00 00 00           	je	69 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj+0xce>
100005609: 31 c0                       	xorl	%eax, %eax
10000560b: 89 c6                       	movl	%eax, %esi
10000560d: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100005611: 48 8b 79 78                 	movq	120(%rcx), %rdi
100005615: ba 02 00 00 00              	movl	$2, %edx
10000561a: e8 af 5f 00 00              	callq	24495 <state.cpp+0x10000b5ce>
10000561f: 83 f8 00                    	cmpl	$0, %eax
100005622: 0f 84 21 00 00 00           	je	33 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj+0xc9>
100005628: 48 8b 45 d0                 	movq	-48(%rbp), %rax
10000562c: 48 8b 78 78                 	movq	120(%rax), %rdi
100005630: e8 81 5f 00 00              	callq	24449 <state.cpp+0x10000b5b6>
100005635: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100005639: 48 c7 41 78 00 00 00 00     	movq	$0, 120(%rcx)
100005641: 48 c7 45 e0 00 00 00 00     	movq	$0, -32(%rbp)
100005649: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj+0xce>
10000564e: e9 08 00 00 00              	jmp	8 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj+0xdb>
100005653: 48 c7 45 e0 00 00 00 00     	movq	$0, -32(%rbp)
10000565b: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj+0xe0>
100005660: e9 00 00 00 00              	jmp	0 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj+0xe5>
100005665: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100005669: 48 83 c4 30                 	addq	$48, %rsp
10000566d: 5d                          	popq	%rbp
10000566e: c3                          	retq
10000566f: 90                          	nop

0000000100005670 __ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5c_strEv:
100005670: 55                          	pushq	%rbp
100005671: 48 89 e5                    	movq	%rsp, %rbp
100005674: 48 83 ec 10                 	subq	$16, %rsp
100005678: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000567c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100005680: e8 fb 01 00 00              	callq	507 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv>
100005685: 48 83 c4 10                 	addq	$16, %rsp
100005689: 5d                          	popq	%rbp
10000568a: c3                          	retq
10000568b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005690 __ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj:
100005690: 55                          	pushq	%rbp
100005691: 48 89 e5                    	movq	%rsp, %rbp
100005694: 89 7d f4                    	movl	%edi, -12(%rbp)
100005697: 8b 45 f4                    	movl	-12(%rbp), %eax
10000569a: 83 e0 fd                    	andl	$-3, %eax
10000569d: ff c8                       	decl	%eax
10000569f: 89 c1                       	movl	%eax, %ecx
1000056a1: 83 e8 3b                    	subl	$59, %eax
1000056a4: 48 89 4d e8                 	movq	%rcx, -24(%rbp)
1000056a8: 0f 87 d4 00 00 00           	ja	212 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj+0xf2>
1000056ae: 48 8d 05 db 00 00 00        	leaq	219(%rip), %rax
1000056b5: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000056b9: 48 63 14 88                 	movslq	(%rax,%rcx,4), %rdx
1000056bd: 48 01 c2                    	addq	%rax, %rdx
1000056c0: ff e2                       	jmpq	*%rdx
1000056c2: 48 8d 05 29 65 00 00        	leaq	25897(%rip), %rax
1000056c9: 48 89 45 f8                 	movq	%rax, -8(%rbp)
1000056cd: e9 b8 00 00 00              	jmp	184 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj+0xfa>
1000056d2: 48 8d 05 1b 65 00 00        	leaq	25883(%rip), %rax
1000056d9: 48 89 45 f8                 	movq	%rax, -8(%rbp)
1000056dd: e9 a8 00 00 00              	jmp	168 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj+0xfa>
1000056e2: 48 8d 05 0d 65 00 00        	leaq	25869(%rip), %rax
1000056e9: 48 89 45 f8                 	movq	%rax, -8(%rbp)
1000056ed: e9 98 00 00 00              	jmp	152 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj+0xfa>
1000056f2: 48 8d 05 ff 64 00 00        	leaq	25855(%rip), %rax
1000056f9: 48 89 45 f8                 	movq	%rax, -8(%rbp)
1000056fd: e9 88 00 00 00              	jmp	136 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj+0xfa>
100005702: 48 8d 05 f2 64 00 00        	leaq	25842(%rip), %rax
100005709: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000570d: e9 78 00 00 00              	jmp	120 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj+0xfa>
100005712: 48 8d 05 e5 64 00 00        	leaq	25829(%rip), %rax
100005719: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000571d: e9 68 00 00 00              	jmp	104 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj+0xfa>
100005722: 48 8d 05 d8 64 00 00        	leaq	25816(%rip), %rax
100005729: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000572d: e9 58 00 00 00              	jmp	88 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj+0xfa>
100005732: 48 8d 05 cb 64 00 00        	leaq	25803(%rip), %rax
100005739: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000573d: e9 48 00 00 00              	jmp	72 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj+0xfa>
100005742: 48 8d 05 be 64 00 00        	leaq	25790(%rip), %rax
100005749: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000574d: e9 38 00 00 00              	jmp	56 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj+0xfa>
100005752: 48 8d 05 b1 64 00 00        	leaq	25777(%rip), %rax
100005759: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000575d: e9 28 00 00 00              	jmp	40 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj+0xfa>
100005762: 48 8d 05 a5 64 00 00        	leaq	25765(%rip), %rax
100005769: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000576d: e9 18 00 00 00              	jmp	24 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj+0xfa>
100005772: 48 8d 05 99 64 00 00        	leaq	25753(%rip), %rax
100005779: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000577d: e9 08 00 00 00              	jmp	8 <__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj+0xfa>
100005782: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
10000578a: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000578e: 5d                          	popq	%rbp
10000578f: c3                          	retq
100005790: 42 ff ff                    	<unknown>
100005793: ff f2                       	pushq	%rdx
100005795: ff ff                       	<unknown>
100005797: ff f2                       	pushq	%rdx
100005799: ff ff                       	<unknown>
10000579b: ff f2                       	pushq	%rdx
10000579d: ff ff                       	<unknown>
10000579f: ff a2 ff ff ff f2           	jmpq	*-218103809(%rdx)
1000057a5: ff ff                       	<unknown>
1000057a7: ff f2                       	pushq	%rdx
1000057a9: ff ff                       	<unknown>
1000057ab: ff 52 ff                    	callq	*-1(%rdx)
1000057ae: ff ff                       	<unknown>
1000057b0: 82                          	<unknown>
1000057b1: ff ff                       	<unknown>
1000057b3: ff f2                       	pushq	%rdx
1000057b5: ff ff                       	<unknown>
1000057b7: ff f2                       	pushq	%rdx
1000057b9: ff ff                       	<unknown>
1000057bb: ff b2 ff ff ff e2           	pushq	-486539265(%rdx)
1000057c1: ff ff                       	<unknown>
1000057c3: ff f2                       	pushq	%rdx
1000057c5: ff ff                       	<unknown>
1000057c7: ff f2                       	pushq	%rdx
1000057c9: ff ff                       	<unknown>
1000057cb: ff 32                       	pushq	(%rdx)
1000057cd: ff ff                       	<unknown>
1000057cf: ff 42 ff                    	incl	-1(%rdx)
1000057d2: ff ff                       	<unknown>
1000057d4: f2 ff ff                    	<unknown>
1000057d7: ff f2                       	pushq	%rdx
1000057d9: ff ff                       	<unknown>
1000057db: ff 92 ff ff ff a2           	callq	*-1560281089(%rdx)
1000057e1: ff ff                       	<unknown>
1000057e3: ff f2                       	pushq	%rdx
1000057e5: ff ff                       	<unknown>
1000057e7: ff f2                       	pushq	%rdx
1000057e9: ff ff                       	<unknown>
1000057eb: ff 62 ff                    	jmpq	*-1(%rdx)
1000057ee: ff ff                       	<unknown>
1000057f0: 82                          	<unknown>
1000057f1: ff ff                       	<unknown>
1000057f3: ff f2                       	pushq	%rdx
1000057f5: ff ff                       	<unknown>
1000057f7: ff f2                       	pushq	%rdx
1000057f9: ff ff                       	<unknown>
1000057fb: ff c2                       	incl	%edx
1000057fd: ff ff                       	<unknown>
1000057ff: ff e2                       	jmpq	*%rdx
100005801: ff ff                       	<unknown>
100005803: ff f2                       	pushq	%rdx
100005805: ff ff                       	<unknown>
100005807: ff f2                       	pushq	%rdx
100005809: ff ff                       	<unknown>
10000580b: ff f2                       	pushq	%rdx
10000580d: ff ff                       	<unknown>
10000580f: ff f2                       	pushq	%rdx
100005811: ff ff                       	<unknown>
100005813: ff f2                       	pushq	%rdx
100005815: ff ff                       	<unknown>
100005817: ff f2                       	pushq	%rdx
100005819: ff ff                       	<unknown>
10000581b: ff f2                       	pushq	%rdx
10000581d: ff ff                       	<unknown>
10000581f: ff f2                       	pushq	%rdx
100005821: ff ff                       	<unknown>
100005823: ff f2                       	pushq	%rdx
100005825: ff ff                       	<unknown>
100005827: ff f2                       	pushq	%rdx
100005829: ff ff                       	<unknown>
10000582b: ff f2                       	pushq	%rdx
10000582d: ff ff                       	<unknown>
10000582f: ff f2                       	pushq	%rdx
100005831: ff ff                       	<unknown>
100005833: ff f2                       	pushq	%rdx
100005835: ff ff                       	<unknown>
100005837: ff f2                       	pushq	%rdx
100005839: ff ff                       	<unknown>
10000583b: ff f2                       	pushq	%rdx
10000583d: ff ff                       	<unknown>
10000583f: ff f2                       	pushq	%rdx
100005841: ff ff                       	<unknown>
100005843: ff f2                       	pushq	%rdx
100005845: ff ff                       	<unknown>
100005847: ff f2                       	pushq	%rdx
100005849: ff ff                       	<unknown>
10000584b: ff 32                       	pushq	(%rdx)
10000584d: ff ff                       	<unknown>
10000584f: ff f2                       	pushq	%rdx
100005851: ff ff                       	<unknown>
100005853: ff f2                       	pushq	%rdx
100005855: ff ff                       	<unknown>
100005857: ff f2                       	pushq	%rdx
100005859: ff ff                       	<unknown>
10000585b: ff 92 ff ff ff f2           	callq	*-218103809(%rdx)
100005861: ff ff                       	<unknown>
100005863: ff f2                       	pushq	%rdx
100005865: ff ff                       	<unknown>
100005867: ff f2                       	pushq	%rdx
100005869: ff ff                       	<unknown>
10000586b: ff 72 ff                    	pushq	-1(%rdx)
10000586e: ff ff                       	<unknown>
100005870: f2 ff ff                    	<unknown>
100005873: ff f2                       	pushq	%rdx
100005875: ff ff                       	<unknown>
100005877: ff f2                       	pushq	%rdx
100005879: ff ff                       	<unknown>
10000587b: ff d2                       	callq	*%rdx
10000587d: ff ff                       	<unknown>
10000587f: ff 55 48                    	callq	*72(%rbp)

0000000100005880 __ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv:
100005880: 55                          	pushq	%rbp
100005881: 48 89 e5                    	movq	%rsp, %rbp
100005884: 48 83 ec 10                 	subq	$16, %rsp
100005888: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000588c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100005890: e8 2b 00 00 00              	callq	43 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv>
100005895: 48 89 c7                    	movq	%rax, %rdi
100005898: e8 13 00 00 00              	callq	19 <__ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_>
10000589d: 48 83 c4 10                 	addq	$16, %rsp
1000058a1: 5d                          	popq	%rbp
1000058a2: c3                          	retq
1000058a3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000058ad: 0f 1f 00                    	nopl	(%rax)

00000001000058b0 __ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_:
1000058b0: 55                          	pushq	%rbp
1000058b1: 48 89 e5                    	movq	%rsp, %rbp
1000058b4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000058b8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000058bc: 5d                          	popq	%rbp
1000058bd: c3                          	retq
1000058be: 66 90                       	nop

00000001000058c0 __ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv:
1000058c0: 55                          	pushq	%rbp
1000058c1: 48 89 e5                    	movq	%rsp, %rbp
1000058c4: 48 83 ec 20                 	subq	$32, %rsp
1000058c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000058cc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000058d0: 48 89 c7                    	movq	%rax, %rdi
1000058d3: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000058d7: e8 44 00 00 00              	callq	68 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv>
1000058dc: a8 01                       	testb	$1, %al
1000058de: 0f 85 05 00 00 00           	jne	5 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x29>
1000058e4: e9 12 00 00 00              	jmp	18 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x3b>
1000058e9: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000058ed: e8 6e 00 00 00              	callq	110 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv>
1000058f2: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000058f6: e9 0d 00 00 00              	jmp	13 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x48>
1000058fb: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000058ff: e8 7c 00 00 00              	callq	124 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv>
100005904: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100005908: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000590c: 48 83 c4 20                 	addq	$32, %rsp
100005910: 5d                          	popq	%rbp
100005911: c3                          	retq
100005912: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000591c: 0f 1f 40 00                 	nopl	(%rax)

0000000100005920 __ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv:
100005920: 55                          	pushq	%rbp
100005921: 48 89 e5                    	movq	%rsp, %rbp
100005924: 48 83 ec 10                 	subq	$16, %rsp
100005928: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000592c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100005930: e8 7b 00 00 00              	callq	123 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
100005935: 0f b6 08                    	movzbl	(%rax), %ecx
100005938: 89 c8                       	movl	%ecx, %eax
10000593a: 48 25 01 00 00 00           	andq	$1, %rax
100005940: 48 83 f8 00                 	cmpq	$0, %rax
100005944: 0f 95 c2                    	setne	%dl
100005947: 80 e2 01                    	andb	$1, %dl
10000594a: 0f b6 c2                    	movzbl	%dl, %eax
10000594d: 48 83 c4 10                 	addq	$16, %rsp
100005951: 5d                          	popq	%rbp
100005952: c3                          	retq
100005953: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000595d: 0f 1f 00                    	nopl	(%rax)

0000000100005960 __ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv:
100005960: 55                          	pushq	%rbp
100005961: 48 89 e5                    	movq	%rsp, %rbp
100005964: 48 83 ec 10                 	subq	$16, %rsp
100005968: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000596c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100005970: e8 3b 00 00 00              	callq	59 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
100005975: 48 8b 40 10                 	movq	16(%rax), %rax
100005979: 48 83 c4 10                 	addq	$16, %rsp
10000597d: 5d                          	popq	%rbp
10000597e: c3                          	retq
10000597f: 90                          	nop

0000000100005980 __ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv:
100005980: 55                          	pushq	%rbp
100005981: 48 89 e5                    	movq	%rsp, %rbp
100005984: 48 83 ec 10                 	subq	$16, %rsp
100005988: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000598c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100005990: e8 1b 00 00 00              	callq	27 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
100005995: 48 05 01 00 00 00           	addq	$1, %rax
10000599b: 48 89 c7                    	movq	%rax, %rdi
10000599e: e8 3d 00 00 00              	callq	61 <__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_>
1000059a3: 48 83 c4 10                 	addq	$16, %rsp
1000059a7: 5d                          	popq	%rbp
1000059a8: c3                          	retq
1000059a9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

00000001000059b0 __ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv:
1000059b0: 55                          	pushq	%rbp
1000059b1: 48 89 e5                    	movq	%rsp, %rbp
1000059b4: 48 83 ec 10                 	subq	$16, %rsp
1000059b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000059bc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000059c0: 48 89 c7                    	movq	%rax, %rdi
1000059c3: e8 08 00 00 00              	callq	8 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv>
1000059c8: 48 83 c4 10                 	addq	$16, %rsp
1000059cc: 5d                          	popq	%rbp
1000059cd: c3                          	retq
1000059ce: 66 90                       	nop

00000001000059d0 __ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv:
1000059d0: 55                          	pushq	%rbp
1000059d1: 48 89 e5                    	movq	%rsp, %rbp
1000059d4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000059d8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000059dc: 5d                          	popq	%rbp
1000059dd: c3                          	retq
1000059de: 66 90                       	nop

00000001000059e0 __ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_:
1000059e0: 55                          	pushq	%rbp
1000059e1: 48 89 e5                    	movq	%rsp, %rbp
1000059e4: 48 83 ec 10                 	subq	$16, %rsp
1000059e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000059ec: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000059f0: e8 0b 00 00 00              	callq	11 <__ZNSt3__1L9addressofIKcEEPT_RS2_>
1000059f5: 48 83 c4 10                 	addq	$16, %rsp
1000059f9: 5d                          	popq	%rbp
1000059fa: c3                          	retq
1000059fb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005a00 __ZNSt3__1L9addressofIKcEEPT_RS2_:
100005a00: 55                          	pushq	%rbp
100005a01: 48 89 e5                    	movq	%rsp, %rbp
100005a04: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005a08: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100005a0c: 5d                          	popq	%rbp
100005a0d: c3                          	retq
100005a0e: 66 90                       	nop

0000000100005a10 __ZNSt3__18ios_base8setstateEj:
100005a10: 55                          	pushq	%rbp
100005a11: 48 89 e5                    	movq	%rsp, %rbp
100005a14: 48 83 ec 10                 	subq	$16, %rsp
100005a18: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005a1c: 89 75 f4                    	movl	%esi, -12(%rbp)
100005a1f: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100005a23: 8b 48 20                    	movl	32(%rax), %ecx
100005a26: 0b 4d f4                    	orl	-12(%rbp), %ecx
100005a29: 48 89 c7                    	movq	%rax, %rdi
100005a2c: 89 ce                       	movl	%ecx, %esi
100005a2e: e8 17 5b 00 00              	callq	23319 <state.cpp+0x10000b54a>
100005a33: 48 83 c4 10                 	addq	$16, %rsp
100005a37: 5d                          	popq	%rbp
100005a38: c3                          	retq
100005a39: 90                          	nop
100005a3a: 90                          	nop
100005a3b: 90                          	nop
100005a3c: 90                          	nop
100005a3d: 90                          	nop
100005a3e: 90                          	nop
100005a3f: 90                          	nop

0000000100005a40 __ZN9AsmParser11ParserState11commonResetEv:
100005a40: 55                          	pushq	%rbp
100005a41: 48 89 e5                    	movq	%rsp, %rbp
100005a44: 48 83 ec 10                 	subq	$16, %rsp
100005a48: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005a4c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100005a50: 48 89 c1                    	movq	%rax, %rcx
100005a53: 48 81 c1 20 00 00 00        	addq	$32, %rcx
100005a5a: 48 89 cf                    	movq	%rcx, %rdi
100005a5d: 48 8d 35 b2 61 00 00        	leaq	25010(%rip), %rsi
100005a64: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100005a68: e8 13 00 00 00              	callq	19 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc>
100005a6d: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005a71: c6 41 01 00                 	movb	$0, 1(%rcx)
100005a75: c6 01 00                    	movb	$0, (%rcx)
100005a78: 48 83 c4 10                 	addq	$16, %rsp
100005a7c: 5d                          	popq	%rbp
100005a7d: c3                          	retq
100005a7e: 66 90                       	nop

0000000100005a80 __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc:
100005a80: 55                          	pushq	%rbp
100005a81: 48 89 e5                    	movq	%rsp, %rbp
100005a84: 48 83 ec 10                 	subq	$16, %rsp
100005a88: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005a8c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100005a90: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100005a94: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100005a98: e8 ed 59 00 00              	callq	23021 <state.cpp+0x10000b48a>
100005a9d: 48 83 c4 10                 	addq	$16, %rsp
100005aa1: 5d                          	popq	%rbp
100005aa2: c3                          	retq
100005aa3: 90                          	nop
100005aa4: 90                          	nop
100005aa5: 90                          	nop
100005aa6: 90                          	nop
100005aa7: 90                          	nop
100005aa8: 90                          	nop
100005aa9: 90                          	nop
100005aaa: 90                          	nop
100005aab: 90                          	nop
100005aac: 90                          	nop
100005aad: 90                          	nop
100005aae: 90                          	nop
100005aaf: 90                          	nop

0000000100005ab0 __ZN9AsmParser13ObjDumpParserC2Ev:
100005ab0: 55                          	pushq	%rbp
100005ab1: 48 89 e5                    	movq	%rsp, %rbp
100005ab4: 48 83 ec 10                 	subq	$16, %rsp
100005ab8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005abc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100005ac0: c6 00 00                    	movb	$0, (%rax)
100005ac3: c6 40 01 00                 	movb	$0, 1(%rax)
100005ac7: 48 89 c1                    	movq	%rax, %rcx
100005aca: 48 81 c1 08 00 00 00        	addq	$8, %rcx
100005ad1: 48 89 cf                    	movq	%rcx, %rdi
100005ad4: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100005ad8: e8 33 00 00 00              	callq	51 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ev>
100005add: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005ae1: 48 05 20 00 00 00           	addq	$32, %rax
100005ae7: 48 89 c7                    	movq	%rax, %rdi
100005aea: e8 21 00 00 00              	callq	33 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ev>
100005aef: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005af3: 48 05 38 00 00 00           	addq	$56, %rax
100005af9: 48 89 c7                    	movq	%rax, %rdi
100005afc: e8 2f 00 00 00              	callq	47 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEEC1Ev>
100005b01: 48 83 c4 10                 	addq	$16, %rsp
100005b05: 5d                          	popq	%rbp
100005b06: c3                          	retq
100005b07: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100005b10 __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ev:
100005b10: 55                          	pushq	%rbp
100005b11: 48 89 e5                    	movq	%rsp, %rbp
100005b14: 48 83 ec 10                 	subq	$16, %rsp
100005b18: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005b1c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100005b20: e8 5b 2f 00 00              	callq	12123 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev>
100005b25: 48 83 c4 10                 	addq	$16, %rsp
100005b29: 5d                          	popq	%rbp
100005b2a: c3                          	retq
100005b2b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005b30 __ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEEC1Ev:
100005b30: 55                          	pushq	%rbp
100005b31: 48 89 e5                    	movq	%rsp, %rbp
100005b34: 48 83 ec 10                 	subq	$16, %rsp
100005b38: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005b3c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100005b40: e8 bb 30 00 00              	callq	12475 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEEC2Ev>
100005b45: 48 83 c4 10                 	addq	$16, %rsp
100005b49: 5d                          	popq	%rbp
100005b4a: c3                          	retq
100005b4b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005b50 __ZN9AsmParser13ObjDumpParserC1Ev:
100005b50: 55                          	pushq	%rbp
100005b51: 48 89 e5                    	movq	%rsp, %rbp
100005b54: 48 83 ec 10                 	subq	$16, %rsp
100005b58: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005b5c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100005b60: e8 4b ff ff ff              	callq	-181 <__ZN9AsmParser13ObjDumpParserC2Ev>
100005b65: 48 83 c4 10                 	addq	$16, %rsp
100005b69: 5d                          	popq	%rbp
100005b6a: c3                          	retq
100005b6b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005b70 __ZN9AsmParser13ObjDumpParser3eolEv:
100005b70: 55                          	pushq	%rbp
100005b71: 48 89 e5                    	movq	%rsp, %rbp
100005b74: 48 81 ec b0 00 00 00        	subq	$176, %rsp
100005b7b: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005b7f: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100005b83: 48 8d bd 70 ff ff ff        	leaq	-144(%rbp), %rdi
100005b8a: 48 89 85 58 ff ff ff        	movq	%rax, -168(%rbp)
100005b91: e8 ba 00 00 00              	callq	186 <__ZNSt3__18optionalIxEC1Ev>
100005b96: 48 8d 7d 80                 	leaq	-128(%rbp), %rdi
100005b9a: e8 d1 00 00 00              	callq	209 <__ZNSt3__18optionalINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEC1Ev>
100005b9f: 48 8d 45 a0                 	leaq	-96(%rbp), %rax
100005ba3: 48 89 c7                    	movq	%rax, %rdi
100005ba6: 48 89 85 50 ff ff ff        	movq	%rax, -176(%rbp)
100005bad: e8 5e ff ff ff              	callq	-162 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Ev>
100005bb2: 48 8d 7d b8                 	leaq	-72(%rbp), %rdi
100005bb6: e8 d5 00 00 00              	callq	213 <__ZNSt3__18optionalIN9AsmParser10asm_sourceEEC1Ev>
100005bbb: 48 8d 7d e0                 	leaq	-32(%rbp), %rdi
100005bbf: e8 ec 00 00 00              	callq	236 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC1Ev>
100005bc4: 48 8b 85 58 ff ff ff        	movq	-168(%rbp), %rax
100005bcb: 48 83 c0 20                 	addq	$32, %rax
100005bcf: 48 8b bd 50 ff ff ff        	movq	-176(%rbp), %rdi
100005bd6: 48 89 c6                    	movq	%rax, %rsi
100005bd9: e8 c4 58 00 00              	callq	22724 <state.cpp+0x10000b4a2>
100005bde: e9 00 00 00 00              	jmp	0 <__ZN9AsmParser13ObjDumpParser3eolEv+0x73>
100005be3: 48 8b 85 58 ff ff ff        	movq	-168(%rbp), %rax
100005bea: 48 83 c0 38                 	addq	$56, %rax
100005bee: 48 8d b5 70 ff ff ff        	leaq	-144(%rbp), %rsi
100005bf5: 48 89 c7                    	movq	%rax, %rdi
100005bf8: e8 d3 00 00 00              	callq	211 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE9push_backERKS2_>
100005bfd: e9 00 00 00 00              	jmp	0 <__ZN9AsmParser13ObjDumpParser3eolEv+0x92>
100005c02: 48 8b bd 58 ff ff ff        	movq	-168(%rbp), %rdi
100005c09: e8 32 fe ff ff              	callq	-462 <__ZN9AsmParser11ParserState11commonResetEv>
100005c0e: e9 00 00 00 00              	jmp	0 <__ZN9AsmParser13ObjDumpParser3eolEv+0xa3>
100005c13: 48 8d bd 70 ff ff ff        	leaq	-144(%rbp), %rdi
100005c1a: e8 c1 bb ff ff              	callq	-17471 <__ZN9AsmParser8asm_lineD1Ev>
100005c1f: 48 81 c4 b0 00 00 00        	addq	$176, %rsp
100005c26: 5d                          	popq	%rbp
100005c27: c3                          	retq
100005c28: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100005c2f: 89 95 64 ff ff ff           	movl	%edx, -156(%rbp)
100005c35: 48 8d bd 70 ff ff ff        	leaq	-144(%rbp), %rdi
100005c3c: e8 9f bb ff ff              	callq	-17505 <__ZN9AsmParser8asm_lineD1Ev>
100005c41: 48 8b bd 68 ff ff ff        	movq	-152(%rbp), %rdi
100005c48: e8 d1 57 00 00              	callq	22481 <state.cpp+0x10000b41e>
100005c4d: 0f 0b                       	ud2
100005c4f: 90                          	nop

0000000100005c50 __ZNSt3__18optionalIxEC1Ev:
100005c50: 55                          	pushq	%rbp
100005c51: 48 89 e5                    	movq	%rsp, %rbp
100005c54: 48 83 ec 10                 	subq	$16, %rsp
100005c58: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005c5c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100005c60: e8 6b 07 00 00              	callq	1899 <__ZNSt3__18optionalIxEC2Ev>
100005c65: 48 83 c4 10                 	addq	$16, %rsp
100005c69: 5d                          	popq	%rbp
100005c6a: c3                          	retq
100005c6b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005c70 __ZNSt3__18optionalINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEC1Ev:
100005c70: 55                          	pushq	%rbp
100005c71: 48 89 e5                    	movq	%rsp, %rbp
100005c74: 48 83 ec 10                 	subq	$16, %rsp
100005c78: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005c7c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100005c80: e8 2b 08 00 00              	callq	2091 <__ZNSt3__18optionalINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEC2Ev>
100005c85: 48 83 c4 10                 	addq	$16, %rsp
100005c89: 5d                          	popq	%rbp
100005c8a: c3                          	retq
100005c8b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005c90 __ZNSt3__18optionalIN9AsmParser10asm_sourceEEC1Ev:
100005c90: 55                          	pushq	%rbp
100005c91: 48 89 e5                    	movq	%rsp, %rbp
100005c94: 48 83 ec 10                 	subq	$16, %rsp
100005c98: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005c9c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100005ca0: e8 eb 08 00 00              	callq	2283 <__ZNSt3__18optionalIN9AsmParser10asm_sourceEEC2Ev>
100005ca5: 48 83 c4 10                 	addq	$16, %rsp
100005ca9: 5d                          	popq	%rbp
100005caa: c3                          	retq
100005cab: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005cb0 __ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC1Ev:
100005cb0: 55                          	pushq	%rbp
100005cb1: 48 89 e5                    	movq	%rsp, %rbp
100005cb4: 48 83 ec 10                 	subq	$16, %rsp
100005cb8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005cbc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100005cc0: e8 bb 30 00 00              	callq	12475 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2Ev>
100005cc5: 48 83 c4 10                 	addq	$16, %rsp
100005cc9: 5d                          	popq	%rbp
100005cca: c3                          	retq
100005ccb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005cd0 __ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE9push_backERKS2_:
100005cd0: 55                          	pushq	%rbp
100005cd1: 48 89 e5                    	movq	%rsp, %rbp
100005cd4: 48 83 ec 30                 	subq	$48, %rsp
100005cd8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005cdc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100005ce0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100005ce4: 48 8b 48 08                 	movq	8(%rax), %rcx
100005ce8: 48 89 c2                    	movq	%rax, %rdx
100005ceb: 48 89 d7                    	movq	%rdx, %rdi
100005cee: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100005cf2: 48 89 4d d8                 	movq	%rcx, -40(%rbp)
100005cf6: e8 c5 31 00 00              	callq	12741 <__ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE9__end_capEv>
100005cfb: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100005cff: 48 3b 08                    	cmpq	(%rax), %rcx
100005d02: 0f 84 60 00 00 00           	je	96 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE9push_backERKS2_+0x98>
100005d08: 48 8d 7d e8                 	leaq	-24(%rbp), %rdi
100005d0c: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
100005d10: ba 01 00 00 00              	movl	$1, %edx
100005d15: e8 d6 31 00 00              	callq	12758 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE24__RAII_IncreaseAnnotatorC1ERKS5_m>
100005d1a: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100005d1e: 48 89 c7                    	movq	%rax, %rdi
100005d21: e8 4a 32 00 00              	callq	12874 <__ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE7__allocEv>
100005d26: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100005d2a: 48 8b 79 08                 	movq	8(%rcx), %rdi
100005d2e: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100005d32: e8 69 32 00 00              	callq	12905 <__ZNSt3__1L16__to_raw_pointerIN9AsmParser8asm_lineEEEPT_S4_>
100005d37: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
100005d3b: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100005d3f: 48 89 c6                    	movq	%rax, %rsi
100005d42: e8 d9 31 00 00              	callq	12761 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_>
100005d47: 48 8d 7d e8                 	leaq	-24(%rbp), %rdi
100005d4b: e8 60 32 00 00              	callq	12896 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE24__RAII_IncreaseAnnotator6__doneEv>
100005d50: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100005d54: 48 8b 48 08                 	movq	8(%rax), %rcx
100005d58: 48 81 c1 88 00 00 00        	addq	$136, %rcx
100005d5f: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005d63: e9 0d 00 00 00              	jmp	13 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE9push_backERKS2_+0xa5>
100005d68: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100005d6c: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100005d70: e8 a5 57 00 00              	callq	22437 <state.cpp+0x10000b51a>
100005d75: 48 83 c4 30                 	addq	$48, %rsp
100005d79: 5d                          	popq	%rbp
100005d7a: c3                          	retq
100005d7b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005d80 __ZN9AsmParser13ObjDumpParser5labelEv:
100005d80: 55                          	pushq	%rbp
100005d81: 48 89 e5                    	movq	%rsp, %rbp
100005d84: 48 83 ec 20                 	subq	$32, %rsp
100005d88: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005d8c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100005d90: 48 89 c1                    	movq	%rax, %rcx
100005d93: 48 81 c1 20 00 00 00        	addq	$32, %rcx
100005d9a: 48 89 c2                    	movq	%rax, %rdx
100005d9d: 48 81 c2 08 00 00 00        	addq	$8, %rdx
100005da4: 48 89 d7                    	movq	%rdx, %rdi
100005da7: 48 89 ce                    	movq	%rcx, %rsi
100005daa: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100005dae: e8 ef 56 00 00              	callq	22255 <state.cpp+0x10000b4a2>
100005db3: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005db7: 48 81 c1 20 00 00 00        	addq	$32, %rcx
100005dbe: 48 89 cf                    	movq	%rcx, %rdi
100005dc1: 48 8d 35 4e 5e 00 00        	leaq	24142(%rip), %rsi
100005dc8: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100005dcc: e8 0f 00 00 00              	callq	15 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc>
100005dd1: 48 83 c4 20                 	addq	$32, %rsp
100005dd5: 5d                          	popq	%rbp
100005dd6: c3                          	retq
100005dd7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100005de0 __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEPKc:
100005de0: 55                          	pushq	%rbp
100005de1: 48 89 e5                    	movq	%rsp, %rbp
100005de4: 48 83 ec 10                 	subq	$16, %rsp
100005de8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005dec: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100005df0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100005df4: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100005df8: e8 8d 56 00 00              	callq	22157 <state.cpp+0x10000b48a>
100005dfd: 48 83 c4 10                 	addq	$16, %rsp
100005e01: 5d                          	popq	%rbp
100005e02: c3                          	retq
100005e03: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005e0d: 0f 1f 00                    	nopl	(%rax)

0000000100005e10 __Z13is_whitespacec:
100005e10: 55                          	pushq	%rbp
100005e11: 48 89 e5                    	movq	%rsp, %rbp
100005e14: 40 88 7d ff                 	movb	%dil, -1(%rbp)
100005e18: 0f be 45 ff                 	movsbl	-1(%rbp), %eax
100005e1c: 83 f8 20                    	cmpl	$32, %eax
100005e1f: b1 01                       	movb	$1, %cl
100005e21: 88 4d fe                    	movb	%cl, -2(%rbp)
100005e24: 0f 84 0d 00 00 00           	je	13 <__Z13is_whitespacec+0x27>
100005e2a: 0f be 45 ff                 	movsbl	-1(%rbp), %eax
100005e2e: 83 f8 07                    	cmpl	$7, %eax
100005e31: 0f 94 c1                    	sete	%cl
100005e34: 88 4d fe                    	movb	%cl, -2(%rbp)
100005e37: 8a 45 fe                    	movb	-2(%rbp), %al
100005e3a: 24 01                       	andb	$1, %al
100005e3c: 0f b6 c0                    	movzbl	%al, %eax
100005e3f: 5d                          	popq	%rbp
100005e40: c3                          	retq
100005e41: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005e4b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005e50 __ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE:
100005e50: 55                          	pushq	%rbp
100005e51: 48 89 e5                    	movq	%rsp, %rbp
100005e54: 48 83 ec 20                 	subq	$32, %rsp
100005e58: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005e5c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100005e60: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100005e64: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100005e68: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005e6c: 48 8d 75 ef                 	leaq	-17(%rbp), %rsi
100005e70: e8 db 00 00 00              	callq	219 <__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE3getERc>
100005e75: 48 8b 08                    	movq	(%rax), %rcx
100005e78: 48 8b 49 e8                 	movq	-24(%rcx), %rcx
100005e7c: 48 01 c8                    	addq	%rcx, %rax
100005e7f: 48 89 c7                    	movq	%rax, %rdi
100005e82: e8 29 01 00 00              	callq	297 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbEv>
100005e87: a8 01                       	testb	$1, %al
100005e89: 0f 85 05 00 00 00           	jne	5 <__ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE+0x44>
100005e8f: e9 b4 00 00 00              	jmp	180 <__ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE+0xf8>
100005e94: 0f be 45 ef                 	movsbl	-17(%rbp), %eax
100005e98: 83 f8 3a                    	cmpl	$58, %eax
100005e9b: 0f 85 0e 00 00 00           	jne	14 <__ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE+0x5f>
100005ea1: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100005ea5: e8 d6 fe ff ff              	callq	-298 <__ZN9AsmParser13ObjDumpParser5labelEv>
100005eaa: e9 94 00 00 00              	jmp	148 <__ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE+0xf3>
100005eaf: 0f be 45 ef                 	movsbl	-17(%rbp), %eax
100005eb3: 83 f8 0d                    	cmpl	$13, %eax
100005eb6: 0f 85 05 00 00 00           	jne	5 <__ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE+0x71>
100005ebc: e9 7d 00 00 00              	jmp	125 <__ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE+0xee>
100005ec1: 0f be 45 ef                 	movsbl	-17(%rbp), %eax
100005ec5: 83 f8 0a                    	cmpl	$10, %eax
100005ec8: 0f 85 0e 00 00 00           	jne	14 <__ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE+0x8c>
100005ece: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100005ed2: e8 99 fc ff ff              	callq	-871 <__ZN9AsmParser13ObjDumpParser3eolEv>
100005ed7: e9 5d 00 00 00              	jmp	93 <__ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE+0xe9>
100005edc: 0f be 7d ef                 	movsbl	-17(%rbp), %edi
100005ee0: e8 2b ff ff ff              	callq	-213 <__Z13is_whitespacec>
100005ee5: a8 01                       	testb	$1, %al
100005ee7: 0f 85 05 00 00 00           	jne	5 <__ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE+0xa2>
100005eed: e9 29 00 00 00              	jmp	41 <__ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE+0xcb>
100005ef2: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100005ef6: 48 05 20 00 00 00           	addq	$32, %rax
100005efc: 48 89 c7                    	movq	%rax, %rdi
100005eff: e8 dc 00 00 00              	callq	220 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthEv>
100005f04: 48 83 f8 00                 	cmpq	$0, %rax
100005f08: 0f 85 0d 00 00 00           	jne	13 <__ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE+0xcb>
100005f0e: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100005f12: c6 40 01 01                 	movb	$1, 1(%rax)
100005f16: e9 19 00 00 00              	jmp	25 <__ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE+0xe4>
100005f1b: 8a 45 ef                    	movb	-17(%rbp), %al
100005f1e: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100005f22: 48 81 c1 20 00 00 00        	addq	$32, %rcx
100005f29: 48 89 cf                    	movq	%rcx, %rdi
100005f2c: 0f be f0                    	movsbl	%al, %esi
100005f2f: e8 cc 00 00 00              	callq	204 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLEc>
100005f34: e9 00 00 00 00              	jmp	0 <__ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE+0xe9>
100005f39: e9 00 00 00 00              	jmp	0 <__ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE+0xee>
100005f3e: e9 00 00 00 00              	jmp	0 <__ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE+0xf3>
100005f43: e9 20 ff ff ff              	jmp	-224 <__ZN9AsmParser13ObjDumpParser10fromStreamERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEE+0x18>
100005f48: 48 83 c4 20                 	addq	$32, %rsp
100005f4c: 5d                          	popq	%rbp
100005f4d: c3                          	retq
100005f4e: 66 90                       	nop

0000000100005f50 __ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE3getERc:
100005f50: 55                          	pushq	%rbp
100005f51: 48 89 e5                    	movq	%rsp, %rbp
100005f54: 48 83 ec 30                 	subq	$48, %rsp
100005f58: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005f5c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100005f60: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100005f64: 48 89 c7                    	movq	%rax, %rdi
100005f67: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100005f6b: e8 56 55 00 00              	callq	21846 <state.cpp+0x10000b4c6>
100005f70: 89 45 ec                    	movl	%eax, -20(%rbp)
100005f73: 8b 45 ec                    	movl	-20(%rbp), %eax
100005f76: 89 45 dc                    	movl	%eax, -36(%rbp)
100005f79: e8 ee 54 00 00              	callq	21742 <state.cpp+0x10000b46c>
100005f7e: 8b 4d dc                    	movl	-36(%rbp), %ecx
100005f81: 39 c1                       	cmpl	%eax, %ecx
100005f83: 0f 84 0e 00 00 00           	je	14 <__ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE3getERc+0x47>
100005f89: 8b 7d ec                    	movl	-20(%rbp), %edi
100005f8c: e8 cf 54 00 00              	callq	21711 <state.cpp+0x10000b460>
100005f91: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005f95: 88 01                       	movb	%al, (%rcx)
100005f97: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100005f9b: 48 83 c4 30                 	addq	$48, %rsp
100005f9f: 5d                          	popq	%rbp
100005fa0: c3                          	retq
100005fa1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005fab: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100005fb0 __ZNKSt3__19basic_iosIcNS_11char_traitsIcEEEcvbEv:
100005fb0: 55                          	pushq	%rbp
100005fb1: 48 89 e5                    	movq	%rsp, %rbp
100005fb4: 48 83 ec 10                 	subq	$16, %rsp
100005fb8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005fbc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100005fc0: e8 3b 48 00 00              	callq	18491 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failEv>
100005fc5: 34 ff                       	xorb	$-1, %al
100005fc7: 24 01                       	andb	$1, %al
100005fc9: 0f b6 c0                    	movzbl	%al, %eax
100005fcc: 48 83 c4 10                 	addq	$16, %rsp
100005fd0: 5d                          	popq	%rbp
100005fd1: c3                          	retq
100005fd2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100005fdc: 0f 1f 40 00                 	nopl	(%rax)

0000000100005fe0 __ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6lengthEv:
100005fe0: 55                          	pushq	%rbp
100005fe1: 48 89 e5                    	movq	%rsp, %rbp
100005fe4: 48 83 ec 10                 	subq	$16, %rsp
100005fe8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100005fec: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100005ff0: e8 5b 48 00 00              	callq	18523 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv>
100005ff5: 48 83 c4 10                 	addq	$16, %rsp
100005ff9: 5d                          	popq	%rbp
100005ffa: c3                          	retq
100005ffb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100006000 __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLEc:
100006000: 55                          	pushq	%rbp
100006001: 48 89 e5                    	movq	%rsp, %rbp
100006004: 48 83 ec 20                 	subq	$32, %rsp
100006008: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000600c: 40 88 75 f7                 	movb	%sil, -9(%rbp)
100006010: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006014: 48 89 c7                    	movq	%rax, %rdi
100006017: 0f be 75 f7                 	movsbl	-9(%rbp), %esi
10000601b: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000601f: e8 6c 54 00 00              	callq	21612 <state.cpp+0x10000b490>
100006024: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100006028: 48 83 c4 20                 	addq	$32, %rsp
10000602c: 5d                          	popq	%rbp
10000602d: c3                          	retq
10000602e: 66 90                       	nop

0000000100006030 __ZN9AsmParser13ObjDumpParser10outputJsonERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE:
100006030: 55                          	pushq	%rbp
100006031: 48 89 e5                    	movq	%rsp, %rbp
100006034: 48 81 ec d0 00 00 00        	subq	$208, %rsp
10000603b: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000603f: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100006043: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006047: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000604b: 48 8d 35 c5 5b 00 00        	leaq	23493(%rip), %rsi
100006052: 48 89 85 38 ff ff ff        	movq	%rax, -200(%rbp)
100006059: e8 f8 54 00 00              	callq	21752 <state.cpp+0x10000b556>
10000605e: 48 8b 8d 38 ff ff ff        	movq	-200(%rbp), %rcx
100006065: 48 81 c1 38 00 00 00        	addq	$56, %rcx
10000606c: 48 89 4d e8                 	movq	%rcx, -24(%rbp)
100006070: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100006074: 48 89 85 30 ff ff ff        	movq	%rax, -208(%rbp)
10000607b: e8 10 01 00 00              	callq	272 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE5beginEv>
100006080: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100006084: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100006088: e8 33 01 00 00              	callq	307 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE3endEv>
10000608d: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100006091: 48 8d 7d e0                 	leaq	-32(%rbp), %rdi
100006095: 48 8d 75 d8                 	leaq	-40(%rbp), %rsi
100006099: e8 52 01 00 00              	callq	338 <__ZNSt3__1neIPN9AsmParser8asm_lineEEEbRKNS_11__wrap_iterIT_EES8_>
10000609e: a8 01                       	testb	$1, %al
1000060a0: 0f 85 05 00 00 00           	jne	5 <__ZN9AsmParser13ObjDumpParser10outputJsonERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE+0x7b>
1000060a6: e9 65 00 00 00              	jmp	101 <__ZN9AsmParser13ObjDumpParser10outputJsonERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE+0xe0>
1000060ab: 48 8d 7d e0                 	leaq	-32(%rbp), %rdi
1000060af: e8 6c 01 00 00              	callq	364 <__ZNKSt3__111__wrap_iterIPN9AsmParser8asm_lineEEdeEv>
1000060b4: 48 8d bd 50 ff ff ff        	leaq	-176(%rbp), %rdi
1000060bb: 48 89 c6                    	movq	%rax, %rsi
1000060be: e8 7d 01 00 00              	callq	381 <__ZN9AsmParser8asm_lineC1ERKS0_>
1000060c3: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000060c7: 48 8d 35 4b 5b 00 00        	leaq	23371(%rip), %rsi
1000060ce: e8 83 54 00 00              	callq	21635 <state.cpp+0x10000b556>
1000060d3: e9 00 00 00 00              	jmp	0 <__ZN9AsmParser13ObjDumpParser10outputJsonERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE+0xa8>
1000060d8: 48 8d bd 50 ff ff ff        	leaq	-176(%rbp), %rdi
1000060df: e8 fc b6 ff ff              	callq	-18692 <__ZN9AsmParser8asm_lineD1Ev>
1000060e4: 48 8d 7d e0                 	leaq	-32(%rbp), %rdi
1000060e8: e8 83 01 00 00              	callq	387 <__ZNSt3__111__wrap_iterIPN9AsmParser8asm_lineEEppEv>
1000060ed: e9 9f ff ff ff              	jmp	-97 <__ZN9AsmParser13ObjDumpParser10outputJsonERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE+0x61>
1000060f2: 48 89 85 48 ff ff ff        	movq	%rax, -184(%rbp)
1000060f9: 89 95 44 ff ff ff           	movl	%edx, -188(%rbp)
1000060ff: 48 8d bd 50 ff ff ff        	leaq	-176(%rbp), %rdi
100006106: e8 d5 b6 ff ff              	callq	-18731 <__ZN9AsmParser8asm_lineD1Ev>
10000610b: e9 19 00 00 00              	jmp	25 <__ZN9AsmParser13ObjDumpParser10outputJsonERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE+0xf9>
100006110: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006114: 48 8d 35 03 5b 00 00        	leaq	23299(%rip), %rsi
10000611b: e8 36 54 00 00              	callq	21558 <state.cpp+0x10000b556>
100006120: 48 81 c4 d0 00 00 00        	addq	$208, %rsp
100006127: 5d                          	popq	%rbp
100006128: c3                          	retq
100006129: 48 8b bd 48 ff ff ff        	movq	-184(%rbp), %rdi
100006130: e8 e9 52 00 00              	callq	21225 <state.cpp+0x10000b41e>
100006135: 0f 0b                       	ud2
100006137: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100006140 __ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc:
100006140: 55                          	pushq	%rbp
100006141: 48 89 e5                    	movq	%rsp, %rbp
100006144: 48 83 ec 20                 	subq	$32, %rsp
100006148: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000614c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100006150: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100006154: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100006158: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000615c: 48 89 7d e8                 	movq	%rdi, -24(%rbp)
100006160: 48 89 c7                    	movq	%rax, %rdi
100006163: 48 89 75 e0                 	movq	%rsi, -32(%rbp)
100006167: e8 06 53 00 00              	callq	21254 <state.cpp+0x10000b472>
10000616c: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100006170: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
100006174: 48 89 c2                    	movq	%rax, %rdx
100006177: e8 8c 53 00 00              	callq	21388 <state.cpp+0x10000b508>
10000617c: 48 83 c4 20                 	addq	$32, %rsp
100006180: 5d                          	popq	%rbp
100006181: c3                          	retq
100006182: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000618c: 0f 1f 40 00                 	nopl	(%rax)

0000000100006190 __ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE5beginEv:
100006190: 55                          	pushq	%rbp
100006191: 48 89 e5                    	movq	%rsp, %rbp
100006194: 48 83 ec 10                 	subq	$16, %rsp
100006198: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000619c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000061a0: 48 8b 30                    	movq	(%rax), %rsi
1000061a3: 48 89 c7                    	movq	%rax, %rdi
1000061a6: e8 d5 50 00 00              	callq	20693 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE11__make_iterEPS2_>
1000061ab: 48 89 45 f8                 	movq	%rax, -8(%rbp)
1000061af: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000061b3: 48 83 c4 10                 	addq	$16, %rsp
1000061b7: 5d                          	popq	%rbp
1000061b8: c3                          	retq
1000061b9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

00000001000061c0 __ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE3endEv:
1000061c0: 55                          	pushq	%rbp
1000061c1: 48 89 e5                    	movq	%rsp, %rbp
1000061c4: 48 83 ec 10                 	subq	$16, %rsp
1000061c8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
1000061cc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000061d0: 48 8b 70 08                 	movq	8(%rax), %rsi
1000061d4: 48 89 c7                    	movq	%rax, %rdi
1000061d7: e8 a4 50 00 00              	callq	20644 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE11__make_iterEPS2_>
1000061dc: 48 89 45 f8                 	movq	%rax, -8(%rbp)
1000061e0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000061e4: 48 83 c4 10                 	addq	$16, %rsp
1000061e8: 5d                          	popq	%rbp
1000061e9: c3                          	retq
1000061ea: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000061f0 __ZNSt3__1neIPN9AsmParser8asm_lineEEEbRKNS_11__wrap_iterIT_EES8_:
1000061f0: 55                          	pushq	%rbp
1000061f1: 48 89 e5                    	movq	%rsp, %rbp
1000061f4: 48 83 ec 10                 	subq	$16, %rsp
1000061f8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000061fc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100006200: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100006204: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100006208: e8 93 0e 00 00              	callq	3731 <__ZNSt3__1eqIPN9AsmParser8asm_lineES3_EEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE>
10000620d: 34 ff                       	xorb	$-1, %al
10000620f: 24 01                       	andb	$1, %al
100006211: 0f b6 c0                    	movzbl	%al, %eax
100006214: 48 83 c4 10                 	addq	$16, %rsp
100006218: 5d                          	popq	%rbp
100006219: c3                          	retq
10000621a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100006220 __ZNKSt3__111__wrap_iterIPN9AsmParser8asm_lineEEdeEv:
100006220: 55                          	pushq	%rbp
100006221: 48 89 e5                    	movq	%rsp, %rbp
100006224: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006228: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000622c: 48 8b 00                    	movq	(%rax), %rax
10000622f: 5d                          	popq	%rbp
100006230: c3                          	retq
100006231: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000623b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100006240 __ZN9AsmParser8asm_lineC1ERKS0_:
100006240: 55                          	pushq	%rbp
100006241: 48 89 e5                    	movq	%rsp, %rbp
100006244: 48 83 ec 10                 	subq	$16, %rsp
100006248: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000624c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100006250: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100006254: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100006258: e8 a3 0e 00 00              	callq	3747 <__ZN9AsmParser8asm_lineC2ERKS0_>
10000625d: 48 83 c4 10                 	addq	$16, %rsp
100006261: 5d                          	popq	%rbp
100006262: c3                          	retq
100006263: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000626d: 0f 1f 00                    	nopl	(%rax)

0000000100006270 __ZNSt3__111__wrap_iterIPN9AsmParser8asm_lineEEppEv:
100006270: 55                          	pushq	%rbp
100006271: 48 89 e5                    	movq	%rsp, %rbp
100006274: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006278: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000627c: 48 8b 08                    	movq	(%rax), %rcx
10000627f: 48 81 c1 88 00 00 00        	addq	$136, %rcx
100006286: 48 89 08                    	movq	%rcx, (%rax)
100006289: 5d                          	popq	%rbp
10000628a: c3                          	retq
10000628b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100006290 __ZN9AsmParser13ObjDumpParser10outputTextERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE:
100006290: 55                          	pushq	%rbp
100006291: 48 89 e5                    	movq	%rsp, %rbp
100006294: 48 81 ec d0 00 00 00        	subq	$208, %rsp
10000629b: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000629f: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000062a3: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000062a7: 48 05 38 00 00 00           	addq	$56, %rax
1000062ad: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000062b1: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000062b5: e8 d6 fe ff ff              	callq	-298 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE5beginEv>
1000062ba: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000062be: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000062c2: e8 f9 fe ff ff              	callq	-263 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE3endEv>
1000062c7: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000062cb: 48 8d 7d e0                 	leaq	-32(%rbp), %rdi
1000062cf: 48 8d 75 d8                 	leaq	-40(%rbp), %rsi
1000062d3: e8 18 ff ff ff              	callq	-232 <__ZNSt3__1neIPN9AsmParser8asm_lineEEEbRKNS_11__wrap_iterIT_EES8_>
1000062d8: a8 01                       	testb	$1, %al
1000062da: 0f 85 05 00 00 00           	jne	5 <__ZN9AsmParser13ObjDumpParser10outputTextERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE+0x55>
1000062e0: e9 81 00 00 00              	jmp	129 <__ZN9AsmParser13ObjDumpParser10outputTextERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE+0xd6>
1000062e5: 48 8d 7d e0                 	leaq	-32(%rbp), %rdi
1000062e9: e8 32 ff ff ff              	callq	-206 <__ZNKSt3__111__wrap_iterIPN9AsmParser8asm_lineEEdeEv>
1000062ee: 48 8d bd 50 ff ff ff        	leaq	-176(%rbp), %rdi
1000062f5: 48 89 c6                    	movq	%rax, %rsi
1000062f8: e8 43 ff ff ff              	callq	-189 <__ZN9AsmParser8asm_lineC1ERKS0_>
1000062fd: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006301: 48 8d 75 80                 	leaq	-128(%rbp), %rsi
100006305: e8 52 52 00 00              	callq	21074 <state.cpp+0x10000b55c>
10000630a: 48 89 85 38 ff ff ff        	movq	%rax, -200(%rbp)
100006311: e9 00 00 00 00              	jmp	0 <__ZN9AsmParser13ObjDumpParser10outputTextERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE+0x86>
100006316: 48 8d 35 03 59 00 00        	leaq	22787(%rip), %rsi
10000631d: 48 8b bd 38 ff ff ff        	movq	-200(%rbp), %rdi
100006324: e8 2d 52 00 00              	callq	21037 <state.cpp+0x10000b556>
100006329: e9 00 00 00 00              	jmp	0 <__ZN9AsmParser13ObjDumpParser10outputTextERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE+0x9e>
10000632e: 48 8d bd 50 ff ff ff        	leaq	-176(%rbp), %rdi
100006335: e8 a6 b4 ff ff              	callq	-19290 <__ZN9AsmParser8asm_lineD1Ev>
10000633a: 48 8d 7d e0                 	leaq	-32(%rbp), %rdi
10000633e: e8 2d ff ff ff              	callq	-211 <__ZNSt3__111__wrap_iterIPN9AsmParser8asm_lineEEppEv>
100006343: e9 83 ff ff ff              	jmp	-125 <__ZN9AsmParser13ObjDumpParser10outputTextERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE+0x3b>
100006348: 48 89 85 48 ff ff ff        	movq	%rax, -184(%rbp)
10000634f: 89 95 44 ff ff ff           	movl	%edx, -188(%rbp)
100006355: 48 8d bd 50 ff ff ff        	leaq	-176(%rbp), %rdi
10000635c: e8 7f b4 ff ff              	callq	-19329 <__ZN9AsmParser8asm_lineD1Ev>
100006361: e9 09 00 00 00              	jmp	9 <__ZN9AsmParser13ObjDumpParser10outputTextERNSt3__113basic_ostreamIcNS1_11char_traitsIcEEEE+0xdf>
100006366: 48 81 c4 d0 00 00 00        	addq	$208, %rsp
10000636d: 5d                          	popq	%rbp
10000636e: c3                          	retq
10000636f: 48 8b bd 48 ff ff ff        	movq	-184(%rbp), %rdi
100006376: e8 a3 50 00 00              	callq	20643 <state.cpp+0x10000b41e>
10000637b: 0f 0b                       	ud2
10000637d: 0f 1f 00                    	nopl	(%rax)

0000000100006380 __ZNSt3__1lsIcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE:
100006380: 55                          	pushq	%rbp
100006381: 48 89 e5                    	movq	%rsp, %rbp
100006384: 48 83 ec 20                 	subq	$32, %rsp
100006388: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000638c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100006390: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100006394: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006398: 48 89 7d e8                 	movq	%rdi, -24(%rbp)
10000639c: 48 89 c7                    	movq	%rax, %rdi
10000639f: e8 5c 4f 00 00              	callq	20316 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv>
1000063a4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000063a8: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000063ac: e8 9f 44 00 00              	callq	17567 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv>
1000063b1: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000063b5: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
1000063b9: 48 89 c2                    	movq	%rax, %rdx
1000063bc: e8 47 51 00 00              	callq	20807 <state.cpp+0x10000b508>
1000063c1: 48 83 c4 20                 	addq	$32, %rsp
1000063c5: 5d                          	popq	%rbp
1000063c6: c3                          	retq
1000063c7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

00000001000063d0 __ZNSt3__18optionalIxEC2Ev:
1000063d0: 55                          	pushq	%rbp
1000063d1: 48 89 e5                    	movq	%rsp, %rbp
1000063d4: 48 83 ec 10                 	subq	$16, %rsp
1000063d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000063dc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000063e0: 48 89 c7                    	movq	%rax, %rdi
1000063e3: e8 08 00 00 00              	callq	8 <__ZNSt3__127__optional_move_assign_baseIxLb1EEC2Ev>
1000063e8: 48 83 c4 10                 	addq	$16, %rsp
1000063ec: 5d                          	popq	%rbp
1000063ed: c3                          	retq
1000063ee: 66 90                       	nop

00000001000063f0 __ZNSt3__127__optional_move_assign_baseIxLb1EEC2Ev:
1000063f0: 55                          	pushq	%rbp
1000063f1: 48 89 e5                    	movq	%rsp, %rbp
1000063f4: 48 83 ec 10                 	subq	$16, %rsp
1000063f8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000063fc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006400: 48 89 c7                    	movq	%rax, %rdi
100006403: e8 08 00 00 00              	callq	8 <__ZNSt3__127__optional_copy_assign_baseIxLb1EEC2Ev>
100006408: 48 83 c4 10                 	addq	$16, %rsp
10000640c: 5d                          	popq	%rbp
10000640d: c3                          	retq
10000640e: 66 90                       	nop

0000000100006410 __ZNSt3__127__optional_copy_assign_baseIxLb1EEC2Ev:
100006410: 55                          	pushq	%rbp
100006411: 48 89 e5                    	movq	%rsp, %rbp
100006414: 48 83 ec 10                 	subq	$16, %rsp
100006418: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000641c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006420: 48 89 c7                    	movq	%rax, %rdi
100006423: e8 08 00 00 00              	callq	8 <__ZNSt3__120__optional_move_baseIxLb1EEC2Ev>
100006428: 48 83 c4 10                 	addq	$16, %rsp
10000642c: 5d                          	popq	%rbp
10000642d: c3                          	retq
10000642e: 66 90                       	nop

0000000100006430 __ZNSt3__120__optional_move_baseIxLb1EEC2Ev:
100006430: 55                          	pushq	%rbp
100006431: 48 89 e5                    	movq	%rsp, %rbp
100006434: 48 83 ec 10                 	subq	$16, %rsp
100006438: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000643c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006440: 48 89 c7                    	movq	%rax, %rdi
100006443: e8 08 00 00 00              	callq	8 <__ZNSt3__120__optional_copy_baseIxLb1EEC2Ev>
100006448: 48 83 c4 10                 	addq	$16, %rsp
10000644c: 5d                          	popq	%rbp
10000644d: c3                          	retq
10000644e: 66 90                       	nop

0000000100006450 __ZNSt3__120__optional_copy_baseIxLb1EEC2Ev:
100006450: 55                          	pushq	%rbp
100006451: 48 89 e5                    	movq	%rsp, %rbp
100006454: 48 83 ec 10                 	subq	$16, %rsp
100006458: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000645c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006460: 48 89 c7                    	movq	%rax, %rdi
100006463: e8 08 00 00 00              	callq	8 <__ZNSt3__123__optional_storage_baseIxLb0EEC2Ev>
100006468: 48 83 c4 10                 	addq	$16, %rsp
10000646c: 5d                          	popq	%rbp
10000646d: c3                          	retq
10000646e: 66 90                       	nop

0000000100006470 __ZNSt3__123__optional_storage_baseIxLb0EEC2Ev:
100006470: 55                          	pushq	%rbp
100006471: 48 89 e5                    	movq	%rsp, %rbp
100006474: 48 83 ec 10                 	subq	$16, %rsp
100006478: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000647c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006480: 48 89 c7                    	movq	%rax, %rdi
100006483: e8 08 00 00 00              	callq	8 <__ZNSt3__124__optional_destruct_baseIxLb1EEC2Ev>
100006488: 48 83 c4 10                 	addq	$16, %rsp
10000648c: 5d                          	popq	%rbp
10000648d: c3                          	retq
10000648e: 66 90                       	nop

0000000100006490 __ZNSt3__124__optional_destruct_baseIxLb1EEC2Ev:
100006490: 55                          	pushq	%rbp
100006491: 48 89 e5                    	movq	%rsp, %rbp
100006494: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006498: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000649c: c6 00 00                    	movb	$0, (%rax)
10000649f: c6 40 08 00                 	movb	$0, 8(%rax)
1000064a3: 5d                          	popq	%rbp
1000064a4: c3                          	retq
1000064a5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000064af: 90                          	nop

00000001000064b0 __ZNSt3__18optionalINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEC2Ev:
1000064b0: 55                          	pushq	%rbp
1000064b1: 48 89 e5                    	movq	%rsp, %rbp
1000064b4: 48 83 ec 10                 	subq	$16, %rsp
1000064b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000064bc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000064c0: 48 89 c7                    	movq	%rax, %rdi
1000064c3: e8 08 00 00 00              	callq	8 <__ZNSt3__127__optional_move_assign_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2Ev>
1000064c8: 48 83 c4 10                 	addq	$16, %rsp
1000064cc: 5d                          	popq	%rbp
1000064cd: c3                          	retq
1000064ce: 66 90                       	nop

00000001000064d0 __ZNSt3__127__optional_move_assign_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2Ev:
1000064d0: 55                          	pushq	%rbp
1000064d1: 48 89 e5                    	movq	%rsp, %rbp
1000064d4: 48 83 ec 10                 	subq	$16, %rsp
1000064d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000064dc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000064e0: 48 89 c7                    	movq	%rax, %rdi
1000064e3: e8 08 00 00 00              	callq	8 <__ZNSt3__127__optional_copy_assign_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2Ev>
1000064e8: 48 83 c4 10                 	addq	$16, %rsp
1000064ec: 5d                          	popq	%rbp
1000064ed: c3                          	retq
1000064ee: 66 90                       	nop

00000001000064f0 __ZNSt3__127__optional_copy_assign_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2Ev:
1000064f0: 55                          	pushq	%rbp
1000064f1: 48 89 e5                    	movq	%rsp, %rbp
1000064f4: 48 83 ec 10                 	subq	$16, %rsp
1000064f8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000064fc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006500: 48 89 c7                    	movq	%rax, %rdi
100006503: e8 08 00 00 00              	callq	8 <__ZNSt3__120__optional_move_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2Ev>
100006508: 48 83 c4 10                 	addq	$16, %rsp
10000650c: 5d                          	popq	%rbp
10000650d: c3                          	retq
10000650e: 66 90                       	nop

0000000100006510 __ZNSt3__120__optional_move_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2Ev:
100006510: 55                          	pushq	%rbp
100006511: 48 89 e5                    	movq	%rsp, %rbp
100006514: 48 83 ec 10                 	subq	$16, %rsp
100006518: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000651c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006520: 48 89 c7                    	movq	%rax, %rdi
100006523: e8 08 00 00 00              	callq	8 <__ZNSt3__120__optional_copy_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2Ev>
100006528: 48 83 c4 10                 	addq	$16, %rsp
10000652c: 5d                          	popq	%rbp
10000652d: c3                          	retq
10000652e: 66 90                       	nop

0000000100006530 __ZNSt3__120__optional_copy_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2Ev:
100006530: 55                          	pushq	%rbp
100006531: 48 89 e5                    	movq	%rsp, %rbp
100006534: 48 83 ec 10                 	subq	$16, %rsp
100006538: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000653c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006540: 48 89 c7                    	movq	%rax, %rdi
100006543: e8 08 00 00 00              	callq	8 <__ZNSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2Ev>
100006548: 48 83 c4 10                 	addq	$16, %rsp
10000654c: 5d                          	popq	%rbp
10000654d: c3                          	retq
10000654e: 66 90                       	nop

0000000100006550 __ZNSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2Ev:
100006550: 55                          	pushq	%rbp
100006551: 48 89 e5                    	movq	%rsp, %rbp
100006554: 48 83 ec 10                 	subq	$16, %rsp
100006558: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000655c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006560: 48 89 c7                    	movq	%rax, %rdi
100006563: e8 08 00 00 00              	callq	8 <__ZNSt3__124__optional_destruct_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2Ev>
100006568: 48 83 c4 10                 	addq	$16, %rsp
10000656c: 5d                          	popq	%rbp
10000656d: c3                          	retq
10000656e: 66 90                       	nop

0000000100006570 __ZNSt3__124__optional_destruct_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2Ev:
100006570: 55                          	pushq	%rbp
100006571: 48 89 e5                    	movq	%rsp, %rbp
100006574: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006578: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000657c: c6 00 00                    	movb	$0, (%rax)
10000657f: c6 40 18 00                 	movb	$0, 24(%rax)
100006583: 5d                          	popq	%rbp
100006584: c3                          	retq
100006585: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000658f: 90                          	nop

0000000100006590 __ZNSt3__18optionalIN9AsmParser10asm_sourceEEC2Ev:
100006590: 55                          	pushq	%rbp
100006591: 48 89 e5                    	movq	%rsp, %rbp
100006594: 48 83 ec 10                 	subq	$16, %rsp
100006598: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000659c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000065a0: 48 89 c7                    	movq	%rax, %rdi
1000065a3: e8 08 00 00 00              	callq	8 <__ZNSt3__127__optional_move_assign_baseIN9AsmParser10asm_sourceELb0EEC2Ev>
1000065a8: 48 83 c4 10                 	addq	$16, %rsp
1000065ac: 5d                          	popq	%rbp
1000065ad: c3                          	retq
1000065ae: 66 90                       	nop

00000001000065b0 __ZNSt3__127__optional_move_assign_baseIN9AsmParser10asm_sourceELb0EEC2Ev:
1000065b0: 55                          	pushq	%rbp
1000065b1: 48 89 e5                    	movq	%rsp, %rbp
1000065b4: 48 83 ec 10                 	subq	$16, %rsp
1000065b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000065bc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000065c0: 48 89 c7                    	movq	%rax, %rdi
1000065c3: e8 08 00 00 00              	callq	8 <__ZNSt3__127__optional_copy_assign_baseIN9AsmParser10asm_sourceELb0EEC2Ev>
1000065c8: 48 83 c4 10                 	addq	$16, %rsp
1000065cc: 5d                          	popq	%rbp
1000065cd: c3                          	retq
1000065ce: 66 90                       	nop

00000001000065d0 __ZNSt3__127__optional_copy_assign_baseIN9AsmParser10asm_sourceELb0EEC2Ev:
1000065d0: 55                          	pushq	%rbp
1000065d1: 48 89 e5                    	movq	%rsp, %rbp
1000065d4: 48 83 ec 10                 	subq	$16, %rsp
1000065d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000065dc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000065e0: 48 89 c7                    	movq	%rax, %rdi
1000065e3: e8 08 00 00 00              	callq	8 <__ZNSt3__120__optional_move_baseIN9AsmParser10asm_sourceELb0EEC2Ev>
1000065e8: 48 83 c4 10                 	addq	$16, %rsp
1000065ec: 5d                          	popq	%rbp
1000065ed: c3                          	retq
1000065ee: 66 90                       	nop

00000001000065f0 __ZNSt3__120__optional_move_baseIN9AsmParser10asm_sourceELb0EEC2Ev:
1000065f0: 55                          	pushq	%rbp
1000065f1: 48 89 e5                    	movq	%rsp, %rbp
1000065f4: 48 83 ec 10                 	subq	$16, %rsp
1000065f8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000065fc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006600: 48 89 c7                    	movq	%rax, %rdi
100006603: e8 08 00 00 00              	callq	8 <__ZNSt3__120__optional_copy_baseIN9AsmParser10asm_sourceELb0EEC2Ev>
100006608: 48 83 c4 10                 	addq	$16, %rsp
10000660c: 5d                          	popq	%rbp
10000660d: c3                          	retq
10000660e: 66 90                       	nop

0000000100006610 __ZNSt3__120__optional_copy_baseIN9AsmParser10asm_sourceELb0EEC2Ev:
100006610: 55                          	pushq	%rbp
100006611: 48 89 e5                    	movq	%rsp, %rbp
100006614: 48 83 ec 10                 	subq	$16, %rsp
100006618: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000661c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006620: 48 89 c7                    	movq	%rax, %rdi
100006623: e8 08 00 00 00              	callq	8 <__ZNSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EEC2Ev>
100006628: 48 83 c4 10                 	addq	$16, %rsp
10000662c: 5d                          	popq	%rbp
10000662d: c3                          	retq
10000662e: 66 90                       	nop

0000000100006630 __ZNSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EEC2Ev:
100006630: 55                          	pushq	%rbp
100006631: 48 89 e5                    	movq	%rsp, %rbp
100006634: 48 83 ec 10                 	subq	$16, %rsp
100006638: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000663c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006640: 48 89 c7                    	movq	%rax, %rdi
100006643: e8 08 00 00 00              	callq	8 <__ZNSt3__124__optional_destruct_baseIN9AsmParser10asm_sourceELb0EEC2Ev>
100006648: 48 83 c4 10                 	addq	$16, %rsp
10000664c: 5d                          	popq	%rbp
10000664d: c3                          	retq
10000664e: 66 90                       	nop

0000000100006650 __ZNSt3__124__optional_destruct_baseIN9AsmParser10asm_sourceELb0EEC2Ev:
100006650: 55                          	pushq	%rbp
100006651: 48 89 e5                    	movq	%rsp, %rbp
100006654: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006658: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000665c: c6 00 00                    	movb	$0, (%rax)
10000665f: c6 40 20 00                 	movb	$0, 32(%rax)
100006663: 5d                          	popq	%rbp
100006664: c3                          	retq
100006665: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000666f: 90                          	nop

0000000100006670 __ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEED1Ev:
100006670: 55                          	pushq	%rbp
100006671: 48 89 e5                    	movq	%rsp, %rbp
100006674: 48 83 ec 10                 	subq	$16, %rsp
100006678: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000667c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100006680: e8 0b 00 00 00              	callq	11 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEED2Ev>
100006685: 48 83 c4 10                 	addq	$16, %rsp
100006689: 5d                          	popq	%rbp
10000668a: c3                          	retq
10000668b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100006690 __ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEED2Ev:
100006690: 55                          	pushq	%rbp
100006691: 48 89 e5                    	movq	%rsp, %rbp
100006694: 48 83 ec 20                 	subq	$32, %rsp
100006698: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000669c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000066a0: 48 89 c7                    	movq	%rax, %rdi
1000066a3: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000066a7: e8 34 00 00 00              	callq	52 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE17__annotate_deleteEv>
1000066ac: e9 00 00 00 00              	jmp	0 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEED2Ev+0x21>
1000066b1: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000066b5: 48 89 c7                    	movq	%rax, %rdi
1000066b8: e8 23 b3 ff ff              	callq	-19677 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEED2Ev>
1000066bd: 48 83 c4 20                 	addq	$32, %rsp
1000066c1: 5d                          	popq	%rbp
1000066c2: c3                          	retq
1000066c3: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000066c7: 89 55 ec                    	movl	%edx, -20(%rbp)
1000066ca: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000066ce: 48 89 c7                    	movq	%rax, %rdi
1000066d1: e8 0a b3 ff ff              	callq	-19702 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEED2Ev>
1000066d6: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000066da: e8 11 ae ff ff              	callq	-20975 <___clang_call_terminate>
1000066df: 90                          	nop

00000001000066e0 __ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE17__annotate_deleteEv:
1000066e0: 55                          	pushq	%rbp
1000066e1: 48 89 e5                    	movq	%rsp, %rbp
1000066e4: 48 83 ec 50                 	subq	$80, %rsp
1000066e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000066ec: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000066f0: 48 89 c7                    	movq	%rax, %rdi
1000066f3: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000066f7: e8 c4 00 00 00              	callq	196 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4dataEv>
1000066fc: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006700: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100006704: e8 b7 00 00 00              	callq	183 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4dataEv>
100006709: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000670d: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100006711: e8 ca 00 00 00              	callq	202 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE8capacityEv>
100006716: 48 69 c0 28 00 00 00        	imulq	$40, %rax, %rax
10000671d: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100006721: 48 01 c1                    	addq	%rax, %rcx
100006724: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006728: 48 89 4d d8                 	movq	%rcx, -40(%rbp)
10000672c: e8 8f 00 00 00              	callq	143 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4dataEv>
100006731: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006735: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100006739: e8 c2 00 00 00              	callq	194 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4sizeEv>
10000673e: 48 69 c0 28 00 00 00        	imulq	$40, %rax, %rax
100006745: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100006749: 48 01 c1                    	addq	%rax, %rcx
10000674c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006750: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100006754: e8 67 00 00 00              	callq	103 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4dataEv>
100006759: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000675d: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100006761: e8 7a 00 00 00              	callq	122 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE8capacityEv>
100006766: 48 69 c0 28 00 00 00        	imulq	$40, %rax, %rax
10000676d: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100006771: 48 01 c1                    	addq	%rax, %rcx
100006774: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006778: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000677c: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100006780: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100006784: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100006788: 48 89 c1                    	movq	%rax, %rcx
10000678b: 4c 8b 45 b8                 	movq	-72(%rbp), %r8
10000678f: e8 0c 00 00 00              	callq	12 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE31__annotate_contiguous_containerEPKvS7_S7_S7_>
100006794: 48 83 c4 50                 	addq	$80, %rsp
100006798: 5d                          	popq	%rbp
100006799: c3                          	retq
10000679a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000067a0 __ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE31__annotate_contiguous_containerEPKvS7_S7_S7_:
1000067a0: 55                          	pushq	%rbp
1000067a1: 48 89 e5                    	movq	%rsp, %rbp
1000067a4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000067a8: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000067ac: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000067b0: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
1000067b4: 4c 89 45 d8                 	movq	%r8, -40(%rbp)
1000067b8: 5d                          	popq	%rbp
1000067b9: c3                          	retq
1000067ba: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000067c0 __ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4dataEv:
1000067c0: 55                          	pushq	%rbp
1000067c1: 48 89 e5                    	movq	%rsp, %rbp
1000067c4: 48 83 ec 10                 	subq	$16, %rsp
1000067c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000067cc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000067d0: 48 8b 38                    	movq	(%rax), %rdi
1000067d3: e8 58 00 00 00              	callq	88 <__ZNSt3__1L16__to_raw_pointerIN9AsmParser9asm_labelEEEPT_S4_>
1000067d8: 48 83 c4 10                 	addq	$16, %rsp
1000067dc: 5d                          	popq	%rbp
1000067dd: c3                          	retq
1000067de: 66 90                       	nop

00000001000067e0 __ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE8capacityEv:
1000067e0: 55                          	pushq	%rbp
1000067e1: 48 89 e5                    	movq	%rsp, %rbp
1000067e4: 48 83 ec 10                 	subq	$16, %rsp
1000067e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000067ec: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000067f0: 48 89 c7                    	movq	%rax, %rdi
1000067f3: e8 48 00 00 00              	callq	72 <__ZNKSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE8capacityEv>
1000067f8: 48 83 c4 10                 	addq	$16, %rsp
1000067fc: 5d                          	popq	%rbp
1000067fd: c3                          	retq
1000067fe: 66 90                       	nop

0000000100006800 __ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4sizeEv:
100006800: 55                          	pushq	%rbp
100006801: 48 89 e5                    	movq	%rsp, %rbp
100006804: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006808: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000680c: 48 8b 48 08                 	movq	8(%rax), %rcx
100006810: 48 8b 00                    	movq	(%rax), %rax
100006813: 48 29 c1                    	subq	%rax, %rcx
100006816: 48 89 c8                    	movq	%rcx, %rax
100006819: 48 99                       	cqto
10000681b: b9 28 00 00 00              	movl	$40, %ecx
100006820: 48 f7 f9                    	idivq	%rcx
100006823: 5d                          	popq	%rbp
100006824: c3                          	retq
100006825: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000682f: 90                          	nop

0000000100006830 __ZNSt3__1L16__to_raw_pointerIN9AsmParser9asm_labelEEEPT_S4_:
100006830: 55                          	pushq	%rbp
100006831: 48 89 e5                    	movq	%rsp, %rbp
100006834: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006838: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000683c: 5d                          	popq	%rbp
10000683d: c3                          	retq
10000683e: 66 90                       	nop

0000000100006840 __ZNKSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE8capacityEv:
100006840: 55                          	pushq	%rbp
100006841: 48 89 e5                    	movq	%rsp, %rbp
100006844: 48 83 ec 10                 	subq	$16, %rsp
100006848: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000684c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006850: 48 89 c7                    	movq	%rax, %rdi
100006853: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100006857: e8 24 00 00 00              	callq	36 <__ZNKSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE9__end_capEv>
10000685c: 48 8b 00                    	movq	(%rax), %rax
10000685f: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006863: 48 8b 11                    	movq	(%rcx), %rdx
100006866: 48 29 d0                    	subq	%rdx, %rax
100006869: 48 99                       	cqto
10000686b: be 28 00 00 00              	movl	$40, %esi
100006870: 48 f7 fe                    	idivq	%rsi
100006873: 48 83 c4 10                 	addq	$16, %rsp
100006877: 5d                          	popq	%rbp
100006878: c3                          	retq
100006879: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100006880 __ZNKSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE9__end_capEv:
100006880: 55                          	pushq	%rbp
100006881: 48 89 e5                    	movq	%rsp, %rbp
100006884: 48 83 ec 10                 	subq	$16, %rsp
100006888: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000688c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006890: 48 05 10 00 00 00           	addq	$16, %rax
100006896: 48 89 c7                    	movq	%rax, %rdi
100006899: e8 12 00 00 00              	callq	18 <__ZNKSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEE5firstEv>
10000689e: 48 83 c4 10                 	addq	$16, %rsp
1000068a2: 5d                          	popq	%rbp
1000068a3: c3                          	retq
1000068a4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000068ae: 66 90                       	nop

00000001000068b0 __ZNKSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEE5firstEv:
1000068b0: 55                          	pushq	%rbp
1000068b1: 48 89 e5                    	movq	%rsp, %rbp
1000068b4: 48 83 ec 10                 	subq	$16, %rsp
1000068b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000068bc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000068c0: 48 89 c7                    	movq	%rax, %rdi
1000068c3: e8 08 00 00 00              	callq	8 <__ZNKSt3__122__compressed_pair_elemIPN9AsmParser9asm_labelELi0ELb0EE5__getEv>
1000068c8: 48 83 c4 10                 	addq	$16, %rsp
1000068cc: 5d                          	popq	%rbp
1000068cd: c3                          	retq
1000068ce: 66 90                       	nop

00000001000068d0 __ZNKSt3__122__compressed_pair_elemIPN9AsmParser9asm_labelELi0ELb0EE5__getEv:
1000068d0: 55                          	pushq	%rbp
1000068d1: 48 89 e5                    	movq	%rsp, %rbp
1000068d4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000068d8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000068dc: 5d                          	popq	%rbp
1000068dd: c3                          	retq
1000068de: 66 90                       	nop

00000001000068e0 __ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE5clearEv:
1000068e0: 55                          	pushq	%rbp
1000068e1: 48 89 e5                    	movq	%rsp, %rbp
1000068e4: 48 83 ec 10                 	subq	$16, %rsp
1000068e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000068ec: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000068f0: 48 8b 30                    	movq	(%rax), %rsi
1000068f3: 48 89 c7                    	movq	%rax, %rdi
1000068f6: e8 75 00 00 00              	callq	117 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE17__destruct_at_endEPS2_>
1000068fb: 48 83 c4 10                 	addq	$16, %rsp
1000068ff: 5d                          	popq	%rbp
100006900: c3                          	retq
100006901: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000690b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100006910 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE10deallocateERS4_PS3_m:
100006910: 55                          	pushq	%rbp
100006911: 48 89 e5                    	movq	%rsp, %rbp
100006914: 48 83 ec 20                 	subq	$32, %rsp
100006918: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000691c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100006920: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100006924: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100006928: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000692c: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100006930: e8 4b 01 00 00              	callq	331 <__ZNSt3__19allocatorIN9AsmParser9asm_labelEE10deallocateEPS2_m>
100006935: 48 83 c4 20                 	addq	$32, %rsp
100006939: 5d                          	popq	%rbp
10000693a: c3                          	retq
10000693b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100006940 __ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE7__allocEv:
100006940: 55                          	pushq	%rbp
100006941: 48 89 e5                    	movq	%rsp, %rbp
100006944: 48 83 ec 10                 	subq	$16, %rsp
100006948: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000694c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006950: 48 05 10 00 00 00           	addq	$16, %rax
100006956: 48 89 c7                    	movq	%rax, %rdi
100006959: e8 22 02 00 00              	callq	546 <__ZNSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEE6secondEv>
10000695e: 48 83 c4 10                 	addq	$16, %rsp
100006962: 5d                          	popq	%rbp
100006963: c3                          	retq
100006964: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000696e: 66 90                       	nop

0000000100006970 __ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE17__destruct_at_endEPS2_:
100006970: 55                          	pushq	%rbp
100006971: 48 89 e5                    	movq	%rsp, %rbp
100006974: 48 83 ec 30                 	subq	$48, %rsp
100006978: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000697c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100006980: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006984: 48 8b 48 08                 	movq	8(%rax), %rcx
100006988: 48 89 4d e8                 	movq	%rcx, -24(%rbp)
10000698c: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100006990: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006994: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
100006998: 0f 84 37 00 00 00           	je	55 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE17__destruct_at_endEPS2_+0x65>
10000699e: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
1000069a2: e8 99 ff ff ff              	callq	-103 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE7__allocEv>
1000069a7: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000069ab: 48 83 c1 d8                 	addq	$-40, %rcx
1000069af: 48 89 4d e8                 	movq	%rcx, -24(%rbp)
1000069b3: 48 89 cf                    	movq	%rcx, %rdi
1000069b6: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000069ba: e8 71 fe ff ff              	callq	-399 <__ZNSt3__1L16__to_raw_pointerIN9AsmParser9asm_labelEEEPT_S4_>
1000069bf: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
1000069c3: 48 89 c6                    	movq	%rax, %rsi
1000069c6: e8 35 00 00 00              	callq	53 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE7destroyIS3_EEvRS4_PT_>
1000069cb: e9 00 00 00 00              	jmp	0 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE17__destruct_at_endEPS2_+0x60>
1000069d0: e9 bb ff ff ff              	jmp	-69 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE17__destruct_at_endEPS2_+0x20>
1000069d5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000069d9: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
1000069dd: 48 89 41 08                 	movq	%rax, 8(%rcx)
1000069e1: 48 83 c4 30                 	addq	$48, %rsp
1000069e5: 5d                          	popq	%rbp
1000069e6: c3                          	retq
1000069e7: 48 89 c7                    	movq	%rax, %rdi
1000069ea: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
1000069ee: e8 fd aa ff ff              	callq	-21763 <___clang_call_terminate>
1000069f3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000069fd: 0f 1f 00                    	nopl	(%rax)

0000000100006a00 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE7destroyIS3_EEvRS4_PT_:
100006a00: 55                          	pushq	%rbp
100006a01: 48 89 e5                    	movq	%rsp, %rbp
100006a04: 48 83 ec 20                 	subq	$32, %rsp
100006a08: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006a0c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100006a10: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100006a14: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100006a18: e8 13 00 00 00              	callq	19 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE9__destroyIS3_EEvNS_17integral_constantIbLb1EEERS4_PT_>
100006a1d: 48 83 c4 20                 	addq	$32, %rsp
100006a21: 5d                          	popq	%rbp
100006a22: c3                          	retq
100006a23: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006a2d: 0f 1f 00                    	nopl	(%rax)

0000000100006a30 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE9__destroyIS3_EEvNS_17integral_constantIbLb1EEERS4_PT_:
100006a30: 55                          	pushq	%rbp
100006a31: 48 89 e5                    	movq	%rsp, %rbp
100006a34: 48 83 ec 20                 	subq	$32, %rsp
100006a38: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100006a3c: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100006a40: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006a44: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100006a48: e8 13 00 00 00              	callq	19 <__ZNSt3__19allocatorIN9AsmParser9asm_labelEE7destroyEPS2_>
100006a4d: 48 83 c4 20                 	addq	$32, %rsp
100006a51: 5d                          	popq	%rbp
100006a52: c3                          	retq
100006a53: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006a5d: 0f 1f 00                    	nopl	(%rax)

0000000100006a60 __ZNSt3__19allocatorIN9AsmParser9asm_labelEE7destroyEPS2_:
100006a60: 55                          	pushq	%rbp
100006a61: 48 89 e5                    	movq	%rsp, %rbp
100006a64: 48 83 ec 10                 	subq	$16, %rsp
100006a68: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006a6c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100006a70: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006a74: e8 a7 b2 ff ff              	callq	-19801 <__ZN9AsmParser9asm_labelD1Ev>
100006a79: 48 83 c4 10                 	addq	$16, %rsp
100006a7d: 5d                          	popq	%rbp
100006a7e: c3                          	retq
100006a7f: 90                          	nop

0000000100006a80 __ZNSt3__19allocatorIN9AsmParser9asm_labelEE10deallocateEPS2_m:
100006a80: 55                          	pushq	%rbp
100006a81: 48 89 e5                    	movq	%rsp, %rbp
100006a84: 48 83 ec 20                 	subq	$32, %rsp
100006a88: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006a8c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100006a90: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100006a94: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006a98: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100006a9c: 48 c1 e0 03                 	shlq	$3, %rax
100006aa0: 48 8d 34 80                 	leaq	(%rax,%rax,4), %rsi
100006aa4: ba 08 00 00 00              	movl	$8, %edx
100006aa9: e8 22 00 00 00              	callq	34 <__ZNSt3__1L19__libcpp_deallocateEPvmm>
100006aae: e9 00 00 00 00              	jmp	0 <__ZNSt3__19allocatorIN9AsmParser9asm_labelEE10deallocateEPS2_m+0x33>
100006ab3: 48 83 c4 20                 	addq	$32, %rsp
100006ab7: 5d                          	popq	%rbp
100006ab8: c3                          	retq
100006ab9: 48 89 c7                    	movq	%rax, %rdi
100006abc: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100006ac0: e8 2b aa ff ff              	callq	-21973 <___clang_call_terminate>
100006ac5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006acf: 90                          	nop

0000000100006ad0 __ZNSt3__1L19__libcpp_deallocateEPvmm:
100006ad0: 55                          	pushq	%rbp
100006ad1: 48 89 e5                    	movq	%rsp, %rbp
100006ad4: 48 83 ec 20                 	subq	$32, %rsp
100006ad8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006adc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100006ae0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100006ae4: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100006ae8: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100006aec: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100006af0: e8 0b 00 00 00              	callq	11 <__ZNSt3__117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm>
100006af5: 48 83 c4 20                 	addq	$32, %rsp
100006af9: 5d                          	popq	%rbp
100006afa: c3                          	retq
100006afb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100006b00 __ZNSt3__117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm:
100006b00: 55                          	pushq	%rbp
100006b01: 48 89 e5                    	movq	%rsp, %rbp
100006b04: 48 83 ec 20                 	subq	$32, %rsp
100006b08: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006b0c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100006b10: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100006b14: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100006b18: e8 43 00 00 00              	callq	67 <__ZNSt3__1L24__is_overaligned_for_newEm>
100006b1d: a8 01                       	testb	$1, %al
100006b1f: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm+0x2a>
100006b25: e9 1e 00 00 00              	jmp	30 <__ZNSt3__117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm+0x48>
100006b2a: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100006b2e: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100006b32: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100006b36: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100006b3a: 48 8b 55 e0                 	movq	-32(%rbp), %rdx
100006b3e: e8 b3 49 00 00              	callq	18867 <state.cpp+0x10000b4f6>
100006b43: e9 0d 00 00 00              	jmp	13 <__ZNSt3__117_DeallocateCaller33__do_deallocate_handle_size_alignEPvmm+0x55>
100006b48: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100006b4c: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100006b50: e8 9b 49 00 00              	callq	18843 <state.cpp+0x10000b4f0>
100006b55: 48 83 c4 20                 	addq	$32, %rsp
100006b59: 5d                          	popq	%rbp
100006b5a: c3                          	retq
100006b5b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100006b60 __ZNSt3__1L24__is_overaligned_for_newEm:
100006b60: 55                          	pushq	%rbp
100006b61: 48 89 e5                    	movq	%rsp, %rbp
100006b64: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006b68: 48 83 7d f8 10              	cmpq	$16, -8(%rbp)
100006b6d: 0f 97 c0                    	seta	%al
100006b70: 24 01                       	andb	$1, %al
100006b72: 0f b6 c0                    	movzbl	%al, %eax
100006b75: 5d                          	popq	%rbp
100006b76: c3                          	retq
100006b77: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100006b80 __ZNSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEE6secondEv:
100006b80: 55                          	pushq	%rbp
100006b81: 48 89 e5                    	movq	%rsp, %rbp
100006b84: 48 83 ec 10                 	subq	$16, %rsp
100006b88: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006b8c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006b90: 48 89 c7                    	movq	%rax, %rdi
100006b93: e8 08 00 00 00              	callq	8 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIN9AsmParser9asm_labelEEELi1ELb1EE5__getEv>
100006b98: 48 83 c4 10                 	addq	$16, %rsp
100006b9c: 5d                          	popq	%rbp
100006b9d: c3                          	retq
100006b9e: 66 90                       	nop

0000000100006ba0 __ZNSt3__122__compressed_pair_elemINS_9allocatorIN9AsmParser9asm_labelEEELi1ELb1EE5__getEv:
100006ba0: 55                          	pushq	%rbp
100006ba1: 48 89 e5                    	movq	%rsp, %rbp
100006ba4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006ba8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006bac: 5d                          	popq	%rbp
100006bad: c3                          	retq
100006bae: 66 90                       	nop

0000000100006bb0 __ZNSt3__124__optional_destruct_baseIN9AsmParser10asm_sourceELb0EED2Ev:
100006bb0: 55                          	pushq	%rbp
100006bb1: 48 89 e5                    	movq	%rsp, %rbp
100006bb4: 48 83 ec 10                 	subq	$16, %rsp
100006bb8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006bbc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006bc0: f6 40 20 01                 	testb	$1, 32(%rax)
100006bc4: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100006bc8: 0f 84 0c 00 00 00           	je	12 <__ZNSt3__124__optional_destruct_baseIN9AsmParser10asm_sourceELb0EED2Ev+0x2a>
100006bce: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006bd2: 48 89 c7                    	movq	%rax, %rdi
100006bd5: e8 46 b1 ff ff              	callq	-20154 <__ZN9AsmParser9asm_labelD1Ev>
100006bda: 48 83 c4 10                 	addq	$16, %rsp
100006bde: 5d                          	popq	%rbp
100006bdf: c3                          	retq

0000000100006be0 __ZNSt3__124__optional_destruct_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EED2Ev:
100006be0: 55                          	pushq	%rbp
100006be1: 48 89 e5                    	movq	%rsp, %rbp
100006be4: 48 83 ec 10                 	subq	$16, %rsp
100006be8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006bec: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006bf0: f6 40 18 01                 	testb	$1, 24(%rax)
100006bf4: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100006bf8: 0f 84 0c 00 00 00           	je	12 <__ZNSt3__124__optional_destruct_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EED2Ev+0x2a>
100006bfe: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006c02: 48 89 c7                    	movq	%rax, %rdi
100006c05: e8 06 00 00 00              	callq	6 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED1Ev>
100006c0a: 48 83 c4 10                 	addq	$16, %rsp
100006c0e: 5d                          	popq	%rbp
100006c0f: c3                          	retq

0000000100006c10 __ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED1Ev:
100006c10: 55                          	pushq	%rbp
100006c11: 48 89 e5                    	movq	%rsp, %rbp
100006c14: 48 83 ec 10                 	subq	$16, %rsp
100006c18: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006c1c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100006c20: e8 0b 00 00 00              	callq	11 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2Ev>
100006c25: 48 83 c4 10                 	addq	$16, %rsp
100006c29: 5d                          	popq	%rbp
100006c2a: c3                          	retq
100006c2b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100006c30 __ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2Ev:
100006c30: 55                          	pushq	%rbp
100006c31: 48 89 e5                    	movq	%rsp, %rbp
100006c34: 48 83 ec 20                 	subq	$32, %rsp
100006c38: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006c3c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006c40: 48 89 c7                    	movq	%rax, %rdi
100006c43: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100006c47: e8 34 00 00 00              	callq	52 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteEv>
100006c4c: e9 00 00 00 00              	jmp	0 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2Ev+0x21>
100006c51: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100006c55: 48 89 c7                    	movq	%rax, %rdi
100006c58: e8 e3 b5 ff ff              	callq	-18973 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2Ev>
100006c5d: 48 83 c4 20                 	addq	$32, %rsp
100006c61: 5d                          	popq	%rbp
100006c62: c3                          	retq
100006c63: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100006c67: 89 55 ec                    	movl	%edx, -20(%rbp)
100006c6a: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100006c6e: 48 89 c7                    	movq	%rax, %rdi
100006c71: e8 ca b5 ff ff              	callq	-18998 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2Ev>
100006c76: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006c7a: e8 71 a8 ff ff              	callq	-22415 <___clang_call_terminate>
100006c7f: 90                          	nop

0000000100006c80 __ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__annotate_deleteEv:
100006c80: 55                          	pushq	%rbp
100006c81: 48 89 e5                    	movq	%rsp, %rbp
100006c84: 48 83 ec 50                 	subq	$80, %rsp
100006c88: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006c8c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006c90: 48 89 c7                    	movq	%rax, %rdi
100006c93: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100006c97: e8 c4 00 00 00              	callq	196 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataEv>
100006c9c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006ca0: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100006ca4: e8 b7 00 00 00              	callq	183 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataEv>
100006ca9: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006cad: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100006cb1: e8 ca 00 00 00              	callq	202 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityEv>
100006cb6: 48 69 c0 18 00 00 00        	imulq	$24, %rax, %rax
100006cbd: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100006cc1: 48 01 c1                    	addq	%rax, %rcx
100006cc4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006cc8: 48 89 4d d8                 	movq	%rcx, -40(%rbp)
100006ccc: e8 8f 00 00 00              	callq	143 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataEv>
100006cd1: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006cd5: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100006cd9: e8 c2 00 00 00              	callq	194 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4sizeEv>
100006cde: 48 69 c0 18 00 00 00        	imulq	$24, %rax, %rax
100006ce5: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100006ce9: 48 01 c1                    	addq	%rax, %rcx
100006cec: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006cf0: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
100006cf4: e8 67 00 00 00              	callq	103 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataEv>
100006cf9: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006cfd: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100006d01: e8 7a 00 00 00              	callq	122 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityEv>
100006d06: 48 69 c0 18 00 00 00        	imulq	$24, %rax, %rax
100006d0d: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100006d11: 48 01 c1                    	addq	%rax, %rcx
100006d14: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006d18: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100006d1c: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100006d20: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100006d24: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100006d28: 48 89 c1                    	movq	%rax, %rcx
100006d2b: 4c 8b 45 b8                 	movq	-72(%rbp), %r8
100006d2f: e8 0c 00 00 00              	callq	12 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE31__annotate_contiguous_containerEPKvSA_SA_SA_>
100006d34: 48 83 c4 50                 	addq	$80, %rsp
100006d38: 5d                          	popq	%rbp
100006d39: c3                          	retq
100006d3a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100006d40 __ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE31__annotate_contiguous_containerEPKvSA_SA_SA_:
100006d40: 55                          	pushq	%rbp
100006d41: 48 89 e5                    	movq	%rsp, %rbp
100006d44: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006d48: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100006d4c: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100006d50: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100006d54: 4c 89 45 d8                 	movq	%r8, -40(%rbp)
100006d58: 5d                          	popq	%rbp
100006d59: c3                          	retq
100006d5a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100006d60 __ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataEv:
100006d60: 55                          	pushq	%rbp
100006d61: 48 89 e5                    	movq	%rsp, %rbp
100006d64: 48 83 ec 10                 	subq	$16, %rsp
100006d68: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006d6c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006d70: 48 8b 38                    	movq	(%rax), %rdi
100006d73: e8 58 00 00 00              	callq	88 <__ZNSt3__1L16__to_raw_pointerINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_>
100006d78: 48 83 c4 10                 	addq	$16, %rsp
100006d7c: 5d                          	popq	%rbp
100006d7d: c3                          	retq
100006d7e: 66 90                       	nop

0000000100006d80 __ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityEv:
100006d80: 55                          	pushq	%rbp
100006d81: 48 89 e5                    	movq	%rsp, %rbp
100006d84: 48 83 ec 10                 	subq	$16, %rsp
100006d88: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006d8c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006d90: 48 89 c7                    	movq	%rax, %rdi
100006d93: e8 48 00 00 00              	callq	72 <__ZNKSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityEv>
100006d98: 48 83 c4 10                 	addq	$16, %rsp
100006d9c: 5d                          	popq	%rbp
100006d9d: c3                          	retq
100006d9e: 66 90                       	nop

0000000100006da0 __ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4sizeEv:
100006da0: 55                          	pushq	%rbp
100006da1: 48 89 e5                    	movq	%rsp, %rbp
100006da4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006da8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006dac: 48 8b 48 08                 	movq	8(%rax), %rcx
100006db0: 48 8b 00                    	movq	(%rax), %rax
100006db3: 48 29 c1                    	subq	%rax, %rcx
100006db6: 48 89 c8                    	movq	%rcx, %rax
100006db9: 48 99                       	cqto
100006dbb: b9 18 00 00 00              	movl	$24, %ecx
100006dc0: 48 f7 f9                    	idivq	%rcx
100006dc3: 5d                          	popq	%rbp
100006dc4: c3                          	retq
100006dc5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006dcf: 90                          	nop

0000000100006dd0 __ZNSt3__1L16__to_raw_pointerINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_:
100006dd0: 55                          	pushq	%rbp
100006dd1: 48 89 e5                    	movq	%rsp, %rbp
100006dd4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006dd8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006ddc: 5d                          	popq	%rbp
100006ddd: c3                          	retq
100006dde: 66 90                       	nop

0000000100006de0 __ZNKSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityEv:
100006de0: 55                          	pushq	%rbp
100006de1: 48 89 e5                    	movq	%rsp, %rbp
100006de4: 48 83 ec 10                 	subq	$16, %rsp
100006de8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006dec: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006df0: 48 89 c7                    	movq	%rax, %rdi
100006df3: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100006df7: e8 24 00 00 00              	callq	36 <__ZNKSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capEv>
100006dfc: 48 8b 00                    	movq	(%rax), %rax
100006dff: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006e03: 48 8b 11                    	movq	(%rcx), %rdx
100006e06: 48 29 d0                    	subq	%rdx, %rax
100006e09: 48 99                       	cqto
100006e0b: be 18 00 00 00              	movl	$24, %esi
100006e10: 48 f7 fe                    	idivq	%rsi
100006e13: 48 83 c4 10                 	addq	$16, %rsp
100006e17: 5d                          	popq	%rbp
100006e18: c3                          	retq
100006e19: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100006e20 __ZNKSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capEv:
100006e20: 55                          	pushq	%rbp
100006e21: 48 89 e5                    	movq	%rsp, %rbp
100006e24: 48 83 ec 10                 	subq	$16, %rsp
100006e28: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006e2c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006e30: 48 05 10 00 00 00           	addq	$16, %rax
100006e36: 48 89 c7                    	movq	%rax, %rdi
100006e39: e8 12 00 00 00              	callq	18 <__ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstEv>
100006e3e: 48 83 c4 10                 	addq	$16, %rsp
100006e42: 5d                          	popq	%rbp
100006e43: c3                          	retq
100006e44: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006e4e: 66 90                       	nop

0000000100006e50 __ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstEv:
100006e50: 55                          	pushq	%rbp
100006e51: 48 89 e5                    	movq	%rsp, %rbp
100006e54: 48 83 ec 10                 	subq	$16, %rsp
100006e58: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006e5c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006e60: 48 89 c7                    	movq	%rax, %rdi
100006e63: e8 08 00 00 00              	callq	8 <__ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv>
100006e68: 48 83 c4 10                 	addq	$16, %rsp
100006e6c: 5d                          	popq	%rbp
100006e6d: c3                          	retq
100006e6e: 66 90                       	nop

0000000100006e70 __ZNKSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv:
100006e70: 55                          	pushq	%rbp
100006e71: 48 89 e5                    	movq	%rsp, %rbp
100006e74: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006e78: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006e7c: 5d                          	popq	%rbp
100006e7d: c3                          	retq
100006e7e: 66 90                       	nop

0000000100006e80 __ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5clearEv:
100006e80: 55                          	pushq	%rbp
100006e81: 48 89 e5                    	movq	%rsp, %rbp
100006e84: 48 83 ec 10                 	subq	$16, %rsp
100006e88: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006e8c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006e90: 48 8b 30                    	movq	(%rax), %rsi
100006e93: 48 89 c7                    	movq	%rax, %rdi
100006e96: e8 75 00 00 00              	callq	117 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endEPS6_>
100006e9b: 48 83 c4 10                 	addq	$16, %rsp
100006e9f: 5d                          	popq	%rbp
100006ea0: c3                          	retq
100006ea1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006eab: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100006eb0 __ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10deallocateERS7_PS6_m:
100006eb0: 55                          	pushq	%rbp
100006eb1: 48 89 e5                    	movq	%rsp, %rbp
100006eb4: 48 83 ec 20                 	subq	$32, %rsp
100006eb8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006ebc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100006ec0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100006ec4: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100006ec8: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100006ecc: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100006ed0: e8 4b 01 00 00              	callq	331 <__ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateEPS5_m>
100006ed5: 48 83 c4 20                 	addq	$32, %rsp
100006ed9: 5d                          	popq	%rbp
100006eda: c3                          	retq
100006edb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100006ee0 __ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocEv:
100006ee0: 55                          	pushq	%rbp
100006ee1: 48 89 e5                    	movq	%rsp, %rbp
100006ee4: 48 83 ec 10                 	subq	$16, %rsp
100006ee8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006eec: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006ef0: 48 05 10 00 00 00           	addq	$16, %rax
100006ef6: 48 89 c7                    	movq	%rax, %rdi
100006ef9: e8 72 01 00 00              	callq	370 <__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondEv>
100006efe: 48 83 c4 10                 	addq	$16, %rsp
100006f02: 5d                          	popq	%rbp
100006f03: c3                          	retq
100006f04: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006f0e: 66 90                       	nop

0000000100006f10 __ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endEPS6_:
100006f10: 55                          	pushq	%rbp
100006f11: 48 89 e5                    	movq	%rsp, %rbp
100006f14: 48 83 ec 30                 	subq	$48, %rsp
100006f18: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006f1c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100006f20: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100006f24: 48 8b 48 08                 	movq	8(%rax), %rcx
100006f28: 48 89 4d e8                 	movq	%rcx, -24(%rbp)
100006f2c: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100006f30: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006f34: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
100006f38: 0f 84 37 00 00 00           	je	55 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endEPS6_+0x65>
100006f3e: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100006f42: e8 99 ff ff ff              	callq	-103 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocEv>
100006f47: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100006f4b: 48 83 c1 e8                 	addq	$-24, %rcx
100006f4f: 48 89 4d e8                 	movq	%rcx, -24(%rbp)
100006f53: 48 89 cf                    	movq	%rcx, %rdi
100006f56: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100006f5a: e8 71 fe ff ff              	callq	-399 <__ZNSt3__1L16__to_raw_pointerINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_>
100006f5f: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100006f63: 48 89 c6                    	movq	%rax, %rsi
100006f66: e8 35 00 00 00              	callq	53 <__ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyIS6_EEvRS7_PT_>
100006f6b: e9 00 00 00 00              	jmp	0 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endEPS6_+0x60>
100006f70: e9 bb ff ff ff              	jmp	-69 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE17__destruct_at_endEPS6_+0x20>
100006f75: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006f79: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100006f7d: 48 89 41 08                 	movq	%rax, 8(%rcx)
100006f81: 48 83 c4 30                 	addq	$48, %rsp
100006f85: 5d                          	popq	%rbp
100006f86: c3                          	retq
100006f87: 48 89 c7                    	movq	%rax, %rdi
100006f8a: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
100006f8e: e8 5d a5 ff ff              	callq	-23203 <___clang_call_terminate>
100006f93: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006f9d: 0f 1f 00                    	nopl	(%rax)

0000000100006fa0 __ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE7destroyIS6_EEvRS7_PT_:
100006fa0: 55                          	pushq	%rbp
100006fa1: 48 89 e5                    	movq	%rsp, %rbp
100006fa4: 48 83 ec 20                 	subq	$32, %rsp
100006fa8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100006fac: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100006fb0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100006fb4: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100006fb8: e8 13 00 00 00              	callq	19 <__ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9__destroyIS6_EEvNS_17integral_constantIbLb1EEERS7_PT_>
100006fbd: 48 83 c4 20                 	addq	$32, %rsp
100006fc1: 5d                          	popq	%rbp
100006fc2: c3                          	retq
100006fc3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006fcd: 0f 1f 00                    	nopl	(%rax)

0000000100006fd0 __ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9__destroyIS6_EEvNS_17integral_constantIbLb1EEERS7_PT_:
100006fd0: 55                          	pushq	%rbp
100006fd1: 48 89 e5                    	movq	%rsp, %rbp
100006fd4: 48 83 ec 20                 	subq	$32, %rsp
100006fd8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100006fdc: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100006fe0: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006fe4: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100006fe8: e8 13 00 00 00              	callq	19 <__ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE7destroyEPS5_>
100006fed: 48 83 c4 20                 	addq	$32, %rsp
100006ff1: 5d                          	popq	%rbp
100006ff2: c3                          	retq
100006ff3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100006ffd: 0f 1f 00                    	nopl	(%rax)

0000000100007000 __ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE7destroyEPS5_:
100007000: 55                          	pushq	%rbp
100007001: 48 89 e5                    	movq	%rsp, %rbp
100007004: 48 83 ec 10                 	subq	$16, %rsp
100007008: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000700c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007010: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007014: e8 83 44 00 00              	callq	17539 <state.cpp+0x10000b49c>
100007019: 48 83 c4 10                 	addq	$16, %rsp
10000701d: 5d                          	popq	%rbp
10000701e: c3                          	retq
10000701f: 90                          	nop

0000000100007020 __ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateEPS5_m:
100007020: 55                          	pushq	%rbp
100007021: 48 89 e5                    	movq	%rsp, %rbp
100007024: 48 83 ec 20                 	subq	$32, %rsp
100007028: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000702c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007030: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100007034: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007038: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000703c: 48 c1 e0 03                 	shlq	$3, %rax
100007040: 48 8d 34 40                 	leaq	(%rax,%rax,2), %rsi
100007044: ba 08 00 00 00              	movl	$8, %edx
100007049: e8 82 fa ff ff              	callq	-1406 <__ZNSt3__1L19__libcpp_deallocateEPvmm>
10000704e: e9 00 00 00 00              	jmp	0 <__ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE10deallocateEPS5_m+0x33>
100007053: 48 83 c4 20                 	addq	$32, %rsp
100007057: 5d                          	popq	%rbp
100007058: c3                          	retq
100007059: 48 89 c7                    	movq	%rax, %rdi
10000705c: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100007060: e8 8b a4 ff ff              	callq	-23413 <___clang_call_terminate>
100007065: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000706f: 90                          	nop

0000000100007070 __ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondEv:
100007070: 55                          	pushq	%rbp
100007071: 48 89 e5                    	movq	%rsp, %rbp
100007074: 48 83 ec 10                 	subq	$16, %rsp
100007078: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000707c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007080: 48 89 c7                    	movq	%rax, %rdi
100007083: e8 08 00 00 00              	callq	8 <__ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getEv>
100007088: 48 83 c4 10                 	addq	$16, %rsp
10000708c: 5d                          	popq	%rbp
10000708d: c3                          	retq
10000708e: 66 90                       	nop

0000000100007090 __ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getEv:
100007090: 55                          	pushq	%rbp
100007091: 48 89 e5                    	movq	%rsp, %rbp
100007094: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007098: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000709c: 5d                          	popq	%rbp
10000709d: c3                          	retq
10000709e: 66 90                       	nop

00000001000070a0 __ZNSt3__1eqIPN9AsmParser8asm_lineES3_EEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE:
1000070a0: 55                          	pushq	%rbp
1000070a1: 48 89 e5                    	movq	%rsp, %rbp
1000070a4: 48 83 ec 20                 	subq	$32, %rsp
1000070a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000070ac: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000070b0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000070b4: e8 27 00 00 00              	callq	39 <__ZNKSt3__111__wrap_iterIPN9AsmParser8asm_lineEE4baseEv>
1000070b9: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000070bd: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000070c1: e8 1a 00 00 00              	callq	26 <__ZNKSt3__111__wrap_iterIPN9AsmParser8asm_lineEE4baseEv>
1000070c6: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000070ca: 48 39 c1                    	cmpq	%rax, %rcx
1000070cd: 0f 94 c2                    	sete	%dl
1000070d0: 80 e2 01                    	andb	$1, %dl
1000070d3: 0f b6 c2                    	movzbl	%dl, %eax
1000070d6: 48 83 c4 20                 	addq	$32, %rsp
1000070da: 5d                          	popq	%rbp
1000070db: c3                          	retq
1000070dc: 0f 1f 40 00                 	nopl	(%rax)

00000001000070e0 __ZNKSt3__111__wrap_iterIPN9AsmParser8asm_lineEE4baseEv:
1000070e0: 55                          	pushq	%rbp
1000070e1: 48 89 e5                    	movq	%rsp, %rbp
1000070e4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000070e8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000070ec: 48 8b 00                    	movq	(%rax), %rax
1000070ef: 5d                          	popq	%rbp
1000070f0: c3                          	retq
1000070f1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000070fb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007100 __ZN9AsmParser8asm_lineC2ERKS0_:
100007100: 55                          	pushq	%rbp
100007101: 48 89 e5                    	movq	%rsp, %rbp
100007104: 48 83 ec 40                 	subq	$64, %rsp
100007108: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000710c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007110: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007114: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007118: 48 8b 11                    	movq	(%rcx), %rdx
10000711b: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000711f: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007123: 48 89 10                    	movq	%rdx, (%rax)
100007126: 48 89 c1                    	movq	%rax, %rcx
100007129: 48 83 c1 10                 	addq	$16, %rcx
10000712d: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
100007131: 48 83 c2 10                 	addq	$16, %rdx
100007135: 48 89 cf                    	movq	%rcx, %rdi
100007138: 48 89 d6                    	movq	%rdx, %rsi
10000713b: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000713f: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100007143: e8 b8 00 00 00              	callq	184 <__ZNSt3__18optionalINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEC1ERKSA_>
100007148: 48 8b 45 d8                 	movq	-40(%rbp), %rax
10000714c: 48 83 c0 30                 	addq	$48, %rax
100007150: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007154: 48 83 c1 30                 	addq	$48, %rcx
100007158: 48 89 c7                    	movq	%rax, %rdi
10000715b: 48 89 ce                    	movq	%rcx, %rsi
10000715e: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100007162: e8 2f 43 00 00              	callq	17199 <state.cpp+0x10000b496>
100007167: e9 00 00 00 00              	jmp	0 <__ZN9AsmParser8asm_lineC2ERKS0_+0x6c>
10000716c: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100007170: 48 83 c0 48                 	addq	$72, %rax
100007174: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007178: 48 83 c1 48                 	addq	$72, %rcx
10000717c: 48 89 c7                    	movq	%rax, %rdi
10000717f: 48 89 ce                    	movq	%rcx, %rsi
100007182: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100007186: e8 a5 00 00 00              	callq	165 <__ZNSt3__18optionalIN9AsmParser10asm_sourceEEC1ERKS3_>
10000718b: e9 00 00 00 00              	jmp	0 <__ZN9AsmParser8asm_lineC2ERKS0_+0x90>
100007190: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100007194: 48 83 c0 70                 	addq	$112, %rax
100007198: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000719c: 48 83 c1 70                 	addq	$112, %rcx
1000071a0: 48 89 c7                    	movq	%rax, %rdi
1000071a3: 48 89 ce                    	movq	%rcx, %rsi
1000071a6: e8 b5 00 00 00              	callq	181 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC1ERKS5_>
1000071ab: e9 00 00 00 00              	jmp	0 <__ZN9AsmParser8asm_lineC2ERKS0_+0xb0>
1000071b0: 48 83 c4 40                 	addq	$64, %rsp
1000071b4: 5d                          	popq	%rbp
1000071b5: c3                          	retq
1000071b6: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000071ba: 89 55 e4                    	movl	%edx, -28(%rbp)
1000071bd: e9 25 00 00 00              	jmp	37 <__ZN9AsmParser8asm_lineC2ERKS0_+0xe7>
1000071c2: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000071c6: 89 55 e4                    	movl	%edx, -28(%rbp)
1000071c9: e9 10 00 00 00              	jmp	16 <__ZN9AsmParser8asm_lineC2ERKS0_+0xde>
1000071ce: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000071d2: 89 55 e4                    	movl	%edx, -28(%rbp)
1000071d5: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
1000071d9: e8 b2 a6 ff ff              	callq	-22862 <__ZNSt3__18optionalIN9AsmParser10asm_sourceEED1Ev>
1000071de: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
1000071e2: e8 b5 42 00 00              	callq	17077 <state.cpp+0x10000b49c>
1000071e7: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
1000071eb: e8 c0 a6 ff ff              	callq	-22848 <__ZNSt3__18optionalINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEED1Ev>
1000071f0: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000071f4: e8 25 42 00 00              	callq	16933 <state.cpp+0x10000b41e>
1000071f9: 0f 0b                       	ud2
1000071fb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007200 __ZNSt3__18optionalINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEC1ERKSA_:
100007200: 55                          	pushq	%rbp
100007201: 48 89 e5                    	movq	%rsp, %rbp
100007204: 48 83 ec 10                 	subq	$16, %rsp
100007208: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000720c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007210: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100007214: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100007218: e8 73 00 00 00              	callq	115 <__ZNSt3__18optionalINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEC2ERKSA_>
10000721d: 48 83 c4 10                 	addq	$16, %rsp
100007221: 5d                          	popq	%rbp
100007222: c3                          	retq
100007223: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000722d: 0f 1f 00                    	nopl	(%rax)

0000000100007230 __ZNSt3__18optionalIN9AsmParser10asm_sourceEEC1ERKS3_:
100007230: 55                          	pushq	%rbp
100007231: 48 89 e5                    	movq	%rsp, %rbp
100007234: 48 83 ec 10                 	subq	$16, %rsp
100007238: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000723c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007240: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100007244: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100007248: e8 f3 0c 00 00              	callq	3315 <__ZNSt3__18optionalIN9AsmParser10asm_sourceEEC2ERKS3_>
10000724d: 48 83 c4 10                 	addq	$16, %rsp
100007251: 5d                          	popq	%rbp
100007252: c3                          	retq
100007253: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000725d: 0f 1f 00                    	nopl	(%rax)

0000000100007260 __ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC1ERKS5_:
100007260: 55                          	pushq	%rbp
100007261: 48 89 e5                    	movq	%rsp, %rbp
100007264: 48 83 ec 10                 	subq	$16, %rsp
100007268: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000726c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007270: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100007274: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100007278: e8 63 0f 00 00              	callq	3939 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2ERKS5_>
10000727d: 48 83 c4 10                 	addq	$16, %rsp
100007281: 5d                          	popq	%rbp
100007282: c3                          	retq
100007283: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000728d: 0f 1f 00                    	nopl	(%rax)

0000000100007290 __ZNSt3__18optionalINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEC2ERKSA_:
100007290: 55                          	pushq	%rbp
100007291: 48 89 e5                    	movq	%rsp, %rbp
100007294: 48 83 ec 10                 	subq	$16, %rsp
100007298: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000729c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000072a0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000072a4: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000072a8: 48 89 c7                    	movq	%rax, %rdi
1000072ab: 48 89 ce                    	movq	%rcx, %rsi
1000072ae: e8 0d 00 00 00              	callq	13 <__ZNSt3__127__optional_move_assign_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2ERKSA_>
1000072b3: 48 83 c4 10                 	addq	$16, %rsp
1000072b7: 5d                          	popq	%rbp
1000072b8: c3                          	retq
1000072b9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

00000001000072c0 __ZNSt3__127__optional_move_assign_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2ERKSA_:
1000072c0: 55                          	pushq	%rbp
1000072c1: 48 89 e5                    	movq	%rsp, %rbp
1000072c4: 48 83 ec 10                 	subq	$16, %rsp
1000072c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000072cc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000072d0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000072d4: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000072d8: 48 89 c7                    	movq	%rax, %rdi
1000072db: 48 89 ce                    	movq	%rcx, %rsi
1000072de: e8 0d 00 00 00              	callq	13 <__ZNSt3__127__optional_copy_assign_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2ERKSA_>
1000072e3: 48 83 c4 10                 	addq	$16, %rsp
1000072e7: 5d                          	popq	%rbp
1000072e8: c3                          	retq
1000072e9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

00000001000072f0 __ZNSt3__127__optional_copy_assign_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2ERKSA_:
1000072f0: 55                          	pushq	%rbp
1000072f1: 48 89 e5                    	movq	%rsp, %rbp
1000072f4: 48 83 ec 10                 	subq	$16, %rsp
1000072f8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000072fc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007300: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007304: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007308: 48 89 c7                    	movq	%rax, %rdi
10000730b: 48 89 ce                    	movq	%rcx, %rsi
10000730e: e8 0d 00 00 00              	callq	13 <__ZNSt3__120__optional_move_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2ERKSA_>
100007313: 48 83 c4 10                 	addq	$16, %rsp
100007317: 5d                          	popq	%rbp
100007318: c3                          	retq
100007319: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100007320 __ZNSt3__120__optional_move_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2ERKSA_:
100007320: 55                          	pushq	%rbp
100007321: 48 89 e5                    	movq	%rsp, %rbp
100007324: 48 83 ec 10                 	subq	$16, %rsp
100007328: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000732c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007330: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007334: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007338: 48 89 c7                    	movq	%rax, %rdi
10000733b: 48 89 ce                    	movq	%rcx, %rsi
10000733e: e8 0d 00 00 00              	callq	13 <__ZNSt3__120__optional_copy_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2ERKSA_>
100007343: 48 83 c4 10                 	addq	$16, %rsp
100007347: 5d                          	popq	%rbp
100007348: c3                          	retq
100007349: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100007350 __ZNSt3__120__optional_copy_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2ERKSA_:
100007350: 55                          	pushq	%rbp
100007351: 48 89 e5                    	movq	%rsp, %rbp
100007354: 48 83 ec 30                 	subq	$48, %rsp
100007358: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000735c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007360: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007364: 48 89 c7                    	movq	%rax, %rdi
100007367: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000736b: e8 e0 f1 ff ff              	callq	-3616 <__ZNSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2Ev>
100007370: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100007374: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100007378: e8 33 00 00 00              	callq	51 <__ZNSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE16__construct_fromIRKNS_20__optional_copy_baseIS9_Lb0EEEEEvOT_>
10000737d: e9 00 00 00 00              	jmp	0 <__ZNSt3__120__optional_copy_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2ERKSA_+0x32>
100007382: 48 83 c4 30                 	addq	$48, %rsp
100007386: 5d                          	popq	%rbp
100007387: c3                          	retq
100007388: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000738c: 89 55 e4                    	movl	%edx, -28(%rbp)
10000738f: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100007393: 48 89 c7                    	movq	%rax, %rdi
100007396: e8 25 ad ff ff              	callq	-21211 <__ZNSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EED2Ev>
10000739b: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
10000739f: e8 7a 40 00 00              	callq	16506 <state.cpp+0x10000b41e>
1000073a4: 0f 0b                       	ud2
1000073a6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

00000001000073b0 __ZNSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE16__construct_fromIRKNS_20__optional_copy_baseIS9_Lb0EEEEEvOT_:
1000073b0: 55                          	pushq	%rbp
1000073b1: 48 89 e5                    	movq	%rsp, %rbp
1000073b4: 48 83 ec 20                 	subq	$32, %rsp
1000073b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000073bc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000073c0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000073c4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000073c8: 48 89 7d e8                 	movq	%rdi, -24(%rbp)
1000073cc: 48 89 c7                    	movq	%rax, %rdi
1000073cf: e8 3c 00 00 00              	callq	60 <__ZNKSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE9has_valueEv>
1000073d4: a8 01                       	testb	$1, %al
1000073d6: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE16__construct_fromIRKNS_20__optional_copy_baseIS9_Lb0EEEEEvOT_+0x31>
1000073dc: e9 1d 00 00 00              	jmp	29 <__ZNSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE16__construct_fromIRKNS_20__optional_copy_baseIS9_Lb0EEEEEvOT_+0x4e>
1000073e1: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000073e5: e8 96 00 00 00              	callq	150 <__ZNSt3__1L7forwardIRKNS_20__optional_copy_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS6_IS8_EEEELb0EEEEEOT_RNS_16remove_referenceISE_E4typeE>
1000073ea: 48 89 c7                    	movq	%rax, %rdi
1000073ed: e8 9e 00 00 00              	callq	158 <__ZNKRSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE5__getEv>
1000073f2: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000073f6: 48 89 c6                    	movq	%rax, %rsi
1000073f9: e8 32 00 00 00              	callq	50 <__ZNSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE11__constructIJRKS9_EEEvDpOT_>
1000073fe: 48 83 c4 20                 	addq	$32, %rsp
100007402: 5d                          	popq	%rbp
100007403: c3                          	retq
100007404: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000740e: 66 90                       	nop

0000000100007410 __ZNKSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE9has_valueEv:
100007410: 55                          	pushq	%rbp
100007411: 48 89 e5                    	movq	%rsp, %rbp
100007414: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007418: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000741c: 8a 48 18                    	movb	24(%rax), %cl
10000741f: 80 e1 01                    	andb	$1, %cl
100007422: 0f b6 c1                    	movzbl	%cl, %eax
100007425: 5d                          	popq	%rbp
100007426: c3                          	retq
100007427: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100007430 __ZNSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE11__constructIJRKS9_EEEvDpOT_:
100007430: 55                          	pushq	%rbp
100007431: 48 89 e5                    	movq	%rsp, %rbp
100007434: 48 83 ec 20                 	subq	$32, %rsp
100007438: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000743c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007440: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007444: 48 89 c1                    	movq	%rax, %rcx
100007447: 48 89 cf                    	movq	%rcx, %rdi
10000744a: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000744e: e8 4d 00 00 00              	callq	77 <__ZNSt3__1L9addressofINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEPT_RSA_>
100007453: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007457: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000745b: e8 50 00 00 00              	callq	80 <__ZNSt3__1L7forwardIRKNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEOT_RNS_16remove_referenceISC_E4typeE>
100007460: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100007464: 48 89 c6                    	movq	%rax, %rsi
100007467: e8 54 00 00 00              	callq	84 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1ERKS8_>
10000746c: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100007470: c6 40 18 01                 	movb	$1, 24(%rax)
100007474: 48 83 c4 20                 	addq	$32, %rsp
100007478: 5d                          	popq	%rbp
100007479: c3                          	retq
10000747a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100007480 __ZNSt3__1L7forwardIRKNS_20__optional_copy_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS6_IS8_EEEELb0EEEEEOT_RNS_16remove_referenceISE_E4typeE:
100007480: 55                          	pushq	%rbp
100007481: 48 89 e5                    	movq	%rsp, %rbp
100007484: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007488: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000748c: 5d                          	popq	%rbp
10000748d: c3                          	retq
10000748e: 66 90                       	nop

0000000100007490 __ZNKRSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE5__getEv:
100007490: 55                          	pushq	%rbp
100007491: 48 89 e5                    	movq	%rsp, %rbp
100007494: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007498: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000749c: 5d                          	popq	%rbp
10000749d: c3                          	retq
10000749e: 66 90                       	nop

00000001000074a0 __ZNSt3__1L9addressofINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEPT_RSA_:
1000074a0: 55                          	pushq	%rbp
1000074a1: 48 89 e5                    	movq	%rsp, %rbp
1000074a4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000074a8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000074ac: 5d                          	popq	%rbp
1000074ad: c3                          	retq
1000074ae: 66 90                       	nop

00000001000074b0 __ZNSt3__1L7forwardIRKNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEOT_RNS_16remove_referenceISC_E4typeE:
1000074b0: 55                          	pushq	%rbp
1000074b1: 48 89 e5                    	movq	%rsp, %rbp
1000074b4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000074b8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000074bc: 5d                          	popq	%rbp
1000074bd: c3                          	retq
1000074be: 66 90                       	nop

00000001000074c0 __ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1ERKS8_:
1000074c0: 55                          	pushq	%rbp
1000074c1: 48 89 e5                    	movq	%rsp, %rbp
1000074c4: 48 83 ec 10                 	subq	$16, %rsp
1000074c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000074cc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000074d0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000074d4: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000074d8: e8 13 00 00 00              	callq	19 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2ERKS8_>
1000074dd: 48 83 c4 10                 	addq	$16, %rsp
1000074e1: 5d                          	popq	%rbp
1000074e2: c3                          	retq
1000074e3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000074ed: 0f 1f 00                    	nopl	(%rax)

00000001000074f0 __ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2ERKS8_:
1000074f0: 55                          	pushq	%rbp
1000074f1: 48 89 e5                    	movq	%rsp, %rbp
1000074f4: 48 83 ec 50                 	subq	$80, %rsp
1000074f8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000074fc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007500: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007504: 48 89 c1                    	movq	%rax, %rcx
100007507: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
10000750b: 48 89 d7                    	movq	%rdx, %rdi
10000750e: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100007512: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100007516: e8 b5 00 00 00              	callq	181 <__ZNKSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocEv>
10000751b: 48 89 c7                    	movq	%rax, %rdi
10000751e: e8 8d 00 00 00              	callq	141 <__ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE37select_on_container_copy_constructionERKS7_>
100007523: 48 8b 7d b8                 	movq	-72(%rbp), %rdi
100007527: 48 8d 75 e8                 	leaq	-24(%rbp), %rsi
10000752b: e8 d0 00 00 00              	callq	208 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2EOS7_>
100007530: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007534: e8 67 f8 ff ff              	callq	-1945 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4sizeEv>
100007539: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000753d: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
100007542: 0f 86 4c 00 00 00           	jbe	76 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2ERKS8_+0xa4>
100007548: 48 8b 75 d8                 	movq	-40(%rbp), %rsi
10000754c: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
100007550: e8 dd 3f 00 00              	callq	16349 <state.cpp+0x10000b532>
100007555: e9 00 00 00 00              	jmp	0 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2ERKS8_+0x6a>
10000755a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000755e: 48 8b 30                    	movq	(%rax), %rsi
100007561: 48 8b 50 08                 	movq	8(%rax), %rdx
100007565: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100007569: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
10000756d: e8 c6 3f 00 00              	callq	16326 <state.cpp+0x10000b538>
100007572: e9 00 00 00 00              	jmp	0 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2ERKS8_+0x87>
100007577: e9 18 00 00 00              	jmp	24 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2ERKS8_+0xa4>
10000757c: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100007580: 89 55 cc                    	movl	%edx, -52(%rbp)
100007583: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100007587: 48 89 c7                    	movq	%rax, %rdi
10000758a: e8 b1 ac ff ff              	callq	-21327 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2Ev>
10000758f: e9 06 00 00 00              	jmp	6 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2ERKS8_+0xaa>
100007594: 48 83 c4 50                 	addq	$80, %rsp
100007598: 5d                          	popq	%rbp
100007599: c3                          	retq
10000759a: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000759e: e8 7b 3e 00 00              	callq	15995 <state.cpp+0x10000b41e>
1000075a3: 0f 0b                       	ud2
1000075a5: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000075af: 90                          	nop

00000001000075b0 __ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE37select_on_container_copy_constructionERKS7_:
1000075b0: 55                          	pushq	%rbp
1000075b1: 48 89 e5                    	movq	%rsp, %rbp
1000075b4: 48 83 ec 20                 	subq	$32, %rsp
1000075b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000075bc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000075c0: e8 cb 01 00 00              	callq	459 <__ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE39__select_on_container_copy_constructionENS_17integral_constantIbLb0EEERKS7_>
1000075c5: 48 83 c4 20                 	addq	$32, %rsp
1000075c9: 5d                          	popq	%rbp
1000075ca: c3                          	retq
1000075cb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000075d0 __ZNKSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocEv:
1000075d0: 55                          	pushq	%rbp
1000075d1: 48 89 e5                    	movq	%rsp, %rbp
1000075d4: 48 83 ec 10                 	subq	$16, %rsp
1000075d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000075dc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000075e0: 48 05 10 00 00 00           	addq	$16, %rax
1000075e6: 48 89 c7                    	movq	%rax, %rdi
1000075e9: e8 b2 01 00 00              	callq	434 <__ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondEv>
1000075ee: 48 83 c4 10                 	addq	$16, %rsp
1000075f2: 5d                          	popq	%rbp
1000075f3: c3                          	retq
1000075f4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000075fe: 66 90                       	nop

0000000100007600 __ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2EOS7_:
100007600: 55                          	pushq	%rbp
100007601: 48 89 e5                    	movq	%rsp, %rbp
100007604: 48 83 ec 30                 	subq	$48, %rsp
100007608: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000760c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007610: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007614: 48 89 c7                    	movq	%rax, %rdi
100007617: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000761b: e8 b0 01 00 00              	callq	432 <__ZNSt3__120__vector_base_commonILb1EEC2Ev>
100007620: e9 00 00 00 00              	jmp	0 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2EOS7_+0x25>
100007625: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100007629: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100007630: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100007638: 48 83 c0 10                 	addq	$16, %rax
10000763c: 48 c7 45 e8 00 00 00 00     	movq	$0, -24(%rbp)
100007644: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007648: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000764c: e8 8f 01 00 00              	callq	399 <__ZNSt3__1L4moveIRNS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEONS_16remove_referenceIT_E4typeEOSA_>
100007651: 48 8d 75 e8                 	leaq	-24(%rbp), %rsi
100007655: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100007659: 48 89 c2                    	movq	%rax, %rdx
10000765c: e8 8f 01 00 00              	callq	399 <__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1IDnS8_EEOT_OT0_>
100007661: e9 00 00 00 00              	jmp	0 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2EOS7_+0x66>
100007666: 48 83 c4 30                 	addq	$48, %rsp
10000766a: 5d                          	popq	%rbp
10000766b: c3                          	retq
10000766c: 48 89 c7                    	movq	%rax, %rdi
10000766f: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
100007673: e8 78 9e ff ff              	callq	-24968 <___clang_call_terminate>
100007678: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100007680 __ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__vallocateEm:
100007680: 55                          	pushq	%rbp
100007681: 48 89 e5                    	movq	%rsp, %rbp
100007684: 48 83 ec 30                 	subq	$48, %rsp
100007688: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000768c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007690: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007694: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007698: 48 89 c7                    	movq	%rax, %rdi
10000769b: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000769f: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
1000076a3: e8 9a 3d 00 00              	callq	15770 <state.cpp+0x10000b442>
1000076a8: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
1000076ac: 48 39 c1                    	cmpq	%rax, %rcx
1000076af: 0f 86 09 00 00 00           	jbe	9 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE11__vallocateEm+0x3e>
1000076b5: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000076b9: e8 66 3d 00 00              	callq	15718 <state.cpp+0x10000b424>
1000076be: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000076c2: 48 89 c7                    	movq	%rax, %rdi
1000076c5: e8 16 f8 ff ff              	callq	-2026 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocEv>
1000076ca: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000076ce: 48 89 c7                    	movq	%rax, %rdi
1000076d1: e8 8a 02 00 00              	callq	650 <__ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE8allocateERS7_m>
1000076d6: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000076da: 48 89 41 08                 	movq	%rax, 8(%rcx)
1000076de: 48 89 01                    	movq	%rax, (%rcx)
1000076e1: 48 8b 01                    	movq	(%rcx), %rax
1000076e4: 48 69 55 f0 18 00 00 00     	imulq	$24, -16(%rbp), %rdx
1000076ec: 48 01 d0                    	addq	%rdx, %rax
1000076ef: 48 89 cf                    	movq	%rcx, %rdi
1000076f2: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000076f6: e8 95 02 00 00              	callq	661 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capEv>
1000076fb: 45 31 c0                    	xorl	%r8d, %r8d
1000076fe: 44 89 c6                    	movl	%r8d, %esi
100007701: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100007705: 48 89 08                    	movq	%rcx, (%rax)
100007708: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
10000770c: e8 af 02 00 00              	callq	687 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE14__annotate_newEm>
100007711: 48 83 c4 30                 	addq	$48, %rsp
100007715: 5d                          	popq	%rbp
100007716: c3                          	retq
100007717: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100007720 __ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__construct_at_endIPS6_EENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeESC_SC_m:
100007720: 55                          	pushq	%rbp
100007721: 48 89 e5                    	movq	%rsp, %rbp
100007724: 48 83 ec 40                 	subq	$64, %rsp
100007728: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000772c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007730: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100007734: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100007738: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000773c: 48 89 c1                    	movq	%rax, %rcx
10000773f: 48 89 cf                    	movq	%rcx, %rdi
100007742: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100007746: e8 95 f7 ff ff              	callq	-2155 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocEv>
10000774b: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000774f: 48 8b 55 e0                 	movq	-32(%rbp), %rdx
100007753: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
100007757: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
10000775b: e8 10 06 00 00              	callq	1552 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__RAII_IncreaseAnnotatorC1ERKS8_m>
100007760: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100007764: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100007768: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000776c: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100007770: 48 05 08 00 00 00           	addq	$8, %rax
100007776: 48 89 c1                    	movq	%rax, %rcx
100007779: e8 22 06 00 00              	callq	1570 <__ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE25__construct_range_forwardIPS6_SA_EEvRS7_T_SC_RT0_>
10000777e: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
100007782: e8 99 06 00 00              	callq	1689 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__RAII_IncreaseAnnotator6__doneEv>
100007787: 48 83 c4 40                 	addq	$64, %rsp
10000778b: 5d                          	popq	%rbp
10000778c: c3                          	retq
10000778d: 0f 1f 00                    	nopl	(%rax)

0000000100007790 __ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE39__select_on_container_copy_constructionENS_17integral_constantIbLb0EEERKS7_:
100007790: 55                          	pushq	%rbp
100007791: 48 89 e5                    	movq	%rsp, %rbp
100007794: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100007798: 5d                          	popq	%rbp
100007799: c3                          	retq
10000779a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000077a0 __ZNKSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE6secondEv:
1000077a0: 55                          	pushq	%rbp
1000077a1: 48 89 e5                    	movq	%rsp, %rbp
1000077a4: 48 83 ec 10                 	subq	$16, %rsp
1000077a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000077ac: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000077b0: 48 89 c7                    	movq	%rax, %rdi
1000077b3: e8 08 00 00 00              	callq	8 <__ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getEv>
1000077b8: 48 83 c4 10                 	addq	$16, %rsp
1000077bc: 5d                          	popq	%rbp
1000077bd: c3                          	retq
1000077be: 66 90                       	nop

00000001000077c0 __ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EE5__getEv:
1000077c0: 55                          	pushq	%rbp
1000077c1: 48 89 e5                    	movq	%rsp, %rbp
1000077c4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000077c8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000077cc: 5d                          	popq	%rbp
1000077cd: c3                          	retq
1000077ce: 66 90                       	nop

00000001000077d0 __ZNSt3__120__vector_base_commonILb1EEC2Ev:
1000077d0: 55                          	pushq	%rbp
1000077d1: 48 89 e5                    	movq	%rsp, %rbp
1000077d4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000077d8: 5d                          	popq	%rbp
1000077d9: c3                          	retq
1000077da: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000077e0 __ZNSt3__1L4moveIRNS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEONS_16remove_referenceIT_E4typeEOSA_:
1000077e0: 55                          	pushq	%rbp
1000077e1: 48 89 e5                    	movq	%rsp, %rbp
1000077e4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000077e8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000077ec: 5d                          	popq	%rbp
1000077ed: c3                          	retq
1000077ee: 66 90                       	nop

00000001000077f0 __ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1IDnS8_EEOT_OT0_:
1000077f0: 55                          	pushq	%rbp
1000077f1: 48 89 e5                    	movq	%rsp, %rbp
1000077f4: 48 83 ec 20                 	subq	$32, %rsp
1000077f8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000077fc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007800: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100007804: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100007808: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000780c: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100007810: e8 0b 00 00 00              	callq	11 <__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2IDnS8_EEOT_OT0_>
100007815: 48 83 c4 20                 	addq	$32, %rsp
100007819: 5d                          	popq	%rbp
10000781a: c3                          	retq
10000781b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007820 __ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2IDnS8_EEOT_OT0_:
100007820: 55                          	pushq	%rbp
100007821: 48 89 e5                    	movq	%rsp, %rbp
100007824: 48 83 ec 30                 	subq	$48, %rsp
100007828: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000782c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007830: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100007834: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007838: 48 89 c1                    	movq	%rax, %rcx
10000783b: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000783f: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100007843: 48 89 4d d8                 	movq	%rcx, -40(%rbp)
100007847: e8 34 00 00 00              	callq	52 <__ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE>
10000784c: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100007850: 48 89 c6                    	movq	%rax, %rsi
100007853: e8 38 00 00 00              	callq	56 <__ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EEC2IDnvEEOT_>
100007858: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000785c: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100007860: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100007864: e8 67 00 00 00              	callq	103 <__ZNSt3__1L7forwardINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEOT_RNS_16remove_referenceIS8_E4typeE>
100007869: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000786d: 48 89 c6                    	movq	%rax, %rsi
100007870: e8 6b 00 00 00              	callq	107 <__ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EEC2IS7_vEEOT_>
100007875: 48 83 c4 30                 	addq	$48, %rsp
100007879: 5d                          	popq	%rbp
10000787a: c3                          	retq
10000787b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007880 __ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE:
100007880: 55                          	pushq	%rbp
100007881: 48 89 e5                    	movq	%rsp, %rbp
100007884: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007888: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000788c: 5d                          	popq	%rbp
10000788d: c3                          	retq
10000788e: 66 90                       	nop

0000000100007890 __ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EEC2IDnvEEOT_:
100007890: 55                          	pushq	%rbp
100007891: 48 89 e5                    	movq	%rsp, %rbp
100007894: 48 83 ec 20                 	subq	$32, %rsp
100007898: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000789c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000078a0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000078a4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000078a8: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000078ac: e8 cf ff ff ff              	callq	-49 <__ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE>
1000078b1: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000078b5: 48 c7 01 00 00 00 00        	movq	$0, (%rcx)
1000078bc: 48 83 c4 20                 	addq	$32, %rsp
1000078c0: 5d                          	popq	%rbp
1000078c1: c3                          	retq
1000078c2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000078cc: 0f 1f 40 00                 	nopl	(%rax)

00000001000078d0 __ZNSt3__1L7forwardINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEOT_RNS_16remove_referenceIS8_E4typeE:
1000078d0: 55                          	pushq	%rbp
1000078d1: 48 89 e5                    	movq	%rsp, %rbp
1000078d4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000078d8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000078dc: 5d                          	popq	%rbp
1000078dd: c3                          	retq
1000078de: 66 90                       	nop

00000001000078e0 __ZNSt3__122__compressed_pair_elemINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEELi1ELb1EEC2IS7_vEEOT_:
1000078e0: 55                          	pushq	%rbp
1000078e1: 48 89 e5                    	movq	%rsp, %rbp
1000078e4: 48 83 ec 10                 	subq	$16, %rsp
1000078e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000078ec: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000078f0: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000078f4: e8 d7 ff ff ff              	callq	-41 <__ZNSt3__1L7forwardINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEOT_RNS_16remove_referenceIS8_E4typeE>
1000078f9: 48 83 c4 10                 	addq	$16, %rsp
1000078fd: 5d                          	popq	%rbp
1000078fe: c3                          	retq
1000078ff: 90                          	nop

0000000100007900 __ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv:
100007900: 55                          	pushq	%rbp
100007901: 48 89 e5                    	movq	%rsp, %rbp
100007904: 48 83 ec 30                 	subq	$48, %rsp
100007908: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000790c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100007910: e8 bb fc ff ff              	callq	-837 <__ZNKSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocEv>
100007915: 48 89 c7                    	movq	%rax, %rdi
100007918: e8 83 01 00 00              	callq	387 <__ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE8max_sizeERKS7_>
10000791d: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100007921: e8 9a 01 00 00              	callq	410 <__ZNSt3__114numeric_limitsIlE3maxEv>
100007926: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000792a: 48 8d 7d f0                 	leaq	-16(%rbp), %rdi
10000792e: 48 8d 75 e8                 	leaq	-24(%rbp), %rsi
100007932: e8 39 01 00 00              	callq	313 <__ZNSt3__1L3minImEERKT_S3_S3_>
100007937: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000793b: e9 00 00 00 00              	jmp	0 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8max_sizeEv+0x40>
100007940: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100007944: 48 8b 00                    	movq	(%rax), %rax
100007947: 48 83 c4 30                 	addq	$48, %rsp
10000794b: 5d                          	popq	%rbp
10000794c: c3                          	retq
10000794d: 48 89 c7                    	movq	%rax, %rdi
100007950: 48 89 55 d8                 	movq	%rdx, -40(%rbp)
100007954: e8 97 9b ff ff              	callq	-25705 <___clang_call_terminate>
100007959: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100007960 __ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE8allocateERS7_m:
100007960: 55                          	pushq	%rbp
100007961: 48 89 e5                    	movq	%rsp, %rbp
100007964: 48 83 ec 10                 	subq	$16, %rsp
100007968: 31 c0                       	xorl	%eax, %eax
10000796a: 89 c2                       	movl	%eax, %edx
10000796c: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007970: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007974: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100007978: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000797c: e8 1f 02 00 00              	callq	543 <__ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8allocateEmPKv>
100007981: 48 83 c4 10                 	addq	$16, %rsp
100007985: 5d                          	popq	%rbp
100007986: c3                          	retq
100007987: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100007990 __ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capEv:
100007990: 55                          	pushq	%rbp
100007991: 48 89 e5                    	movq	%rsp, %rbp
100007994: 48 83 ec 10                 	subq	$16, %rsp
100007998: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000799c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000079a0: 48 05 10 00 00 00           	addq	$16, %rax
1000079a6: 48 89 c7                    	movq	%rax, %rdi
1000079a9: e8 92 03 00 00              	callq	914 <__ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstEv>
1000079ae: 48 83 c4 10                 	addq	$16, %rsp
1000079b2: 5d                          	popq	%rbp
1000079b3: c3                          	retq
1000079b4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000079be: 66 90                       	nop

00000001000079c0 __ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE14__annotate_newEm:
1000079c0: 55                          	pushq	%rbp
1000079c1: 48 89 e5                    	movq	%rsp, %rbp
1000079c4: 48 83 ec 40                 	subq	$64, %rsp
1000079c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000079cc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000079d0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000079d4: 48 89 c7                    	movq	%rax, %rdi
1000079d7: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000079db: e8 80 f3 ff ff              	callq	-3200 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataEv>
1000079e0: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000079e4: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000079e8: e8 73 f3 ff ff              	callq	-3213 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataEv>
1000079ed: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000079f1: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000079f5: e8 86 f3 ff ff              	callq	-3194 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityEv>
1000079fa: 48 69 c0 18 00 00 00        	imulq	$24, %rax, %rax
100007a01: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100007a05: 48 01 c1                    	addq	%rax, %rcx
100007a08: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100007a0c: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100007a10: e8 4b f3 ff ff              	callq	-3253 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataEv>
100007a15: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100007a19: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100007a1d: e8 5e f3 ff ff              	callq	-3234 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE8capacityEv>
100007a22: 48 69 c0 18 00 00 00        	imulq	$24, %rax, %rax
100007a29: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100007a2d: 48 01 c1                    	addq	%rax, %rcx
100007a30: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100007a34: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
100007a38: e8 23 f3 ff ff              	callq	-3293 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE4dataEv>
100007a3d: 48 69 4d f0 18 00 00 00     	imulq	$24, -16(%rbp), %rcx
100007a45: 48 01 c8                    	addq	%rcx, %rax
100007a48: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100007a4c: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
100007a50: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100007a54: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100007a58: 49 89 c0                    	movq	%rax, %r8
100007a5b: e8 e0 f2 ff ff              	callq	-3360 <__ZNKSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE31__annotate_contiguous_containerEPKvSA_SA_SA_>
100007a60: 48 83 c4 40                 	addq	$64, %rsp
100007a64: 5d                          	popq	%rbp
100007a65: c3                          	retq
100007a66: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100007a70 __ZNSt3__1L3minImEERKT_S3_S3_:
100007a70: 55                          	pushq	%rbp
100007a71: 48 89 e5                    	movq	%rsp, %rbp
100007a74: 48 83 ec 20                 	subq	$32, %rsp
100007a78: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007a7c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007a80: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100007a84: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100007a88: e8 43 00 00 00              	callq	67 <__ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_>
100007a8d: 48 83 c4 20                 	addq	$32, %rsp
100007a91: 5d                          	popq	%rbp
100007a92: c3                          	retq
100007a93: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100007a9d: 0f 1f 00                    	nopl	(%rax)

0000000100007aa0 __ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE8max_sizeERKS7_:
100007aa0: 55                          	pushq	%rbp
100007aa1: 48 89 e5                    	movq	%rsp, %rbp
100007aa4: 48 83 ec 20                 	subq	$32, %rsp
100007aa8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007aac: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100007ab0: e8 9b 00 00 00              	callq	155 <__ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10__max_sizeENS_17integral_constantIbLb1EEERKS7_>
100007ab5: 48 83 c4 20                 	addq	$32, %rsp
100007ab9: 5d                          	popq	%rbp
100007aba: c3                          	retq
100007abb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007ac0 __ZNSt3__114numeric_limitsIlE3maxEv:
100007ac0: 55                          	pushq	%rbp
100007ac1: 48 89 e5                    	movq	%rsp, %rbp
100007ac4: e8 c7 00 00 00              	callq	199 <__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxEv>
100007ac9: 5d                          	popq	%rbp
100007aca: c3                          	retq
100007acb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007ad0 __ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_:
100007ad0: 55                          	pushq	%rbp
100007ad1: 48 89 e5                    	movq	%rsp, %rbp
100007ad4: 48 83 ec 20                 	subq	$32, %rsp
100007ad8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100007adc: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100007ae0: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100007ae4: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
100007ae8: 48 8d 7d f8                 	leaq	-8(%rbp), %rdi
100007aec: e8 2f 00 00 00              	callq	47 <__ZNKSt3__16__lessImmEclERKmS3_>
100007af1: a8 01                       	testb	$1, %al
100007af3: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_+0x2e>
100007af9: e9 0d 00 00 00              	jmp	13 <__ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_+0x3b>
100007afe: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100007b02: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100007b06: e9 08 00 00 00              	jmp	8 <__ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_+0x43>
100007b0b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007b0f: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100007b13: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100007b17: 48 83 c4 20                 	addq	$32, %rsp
100007b1b: 5d                          	popq	%rbp
100007b1c: c3                          	retq
100007b1d: 0f 1f 00                    	nopl	(%rax)

0000000100007b20 __ZNKSt3__16__lessImmEclERKmS3_:
100007b20: 55                          	pushq	%rbp
100007b21: 48 89 e5                    	movq	%rsp, %rbp
100007b24: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007b28: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007b2c: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100007b30: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007b34: 48 8b 00                    	movq	(%rax), %rax
100007b37: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100007b3b: 48 3b 01                    	cmpq	(%rcx), %rax
100007b3e: 41 0f 92 c0                 	setb	%r8b
100007b42: 41 80 e0 01                 	andb	$1, %r8b
100007b46: 41 0f b6 c0                 	movzbl	%r8b, %eax
100007b4a: 5d                          	popq	%rbp
100007b4b: c3                          	retq
100007b4c: 0f 1f 40 00                 	nopl	(%rax)

0000000100007b50 __ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE10__max_sizeENS_17integral_constantIbLb1EEERKS7_:
100007b50: 55                          	pushq	%rbp
100007b51: 48 89 e5                    	movq	%rsp, %rbp
100007b54: 48 83 ec 10                 	subq	$16, %rsp
100007b58: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100007b5c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007b60: e8 0b 00 00 00              	callq	11 <__ZNKSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8max_sizeEv>
100007b65: 48 83 c4 10                 	addq	$16, %rsp
100007b69: 5d                          	popq	%rbp
100007b6a: c3                          	retq
100007b6b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007b70 __ZNKSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8max_sizeEv:
100007b70: 55                          	pushq	%rbp
100007b71: 48 89 e5                    	movq	%rsp, %rbp
100007b74: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007b78: 48 b8 aa aa aa aa aa aa aa 0a       	movabsq	$768614336404564650, %rax
100007b82: 5d                          	popq	%rbp
100007b83: c3                          	retq
100007b84: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100007b8e: 66 90                       	nop

0000000100007b90 __ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxEv:
100007b90: 55                          	pushq	%rbp
100007b91: 48 89 e5                    	movq	%rsp, %rbp
100007b94: 48 b8 ff ff ff ff ff ff ff 7f       	movabsq	$9223372036854775807, %rax
100007b9e: 5d                          	popq	%rbp
100007b9f: c3                          	retq

0000000100007ba0 __ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8allocateEmPKv:
100007ba0: 55                          	pushq	%rbp
100007ba1: 48 89 e5                    	movq	%rsp, %rbp
100007ba4: 48 83 ec 20                 	subq	$32, %rsp
100007ba8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007bac: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007bb0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100007bb4: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100007bb8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007bbc: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100007bc0: e8 ab ff ff ff              	callq	-85 <__ZNKSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8max_sizeEv>
100007bc5: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100007bc9: 48 39 c1                    	cmpq	%rax, %rcx
100007bcc: 0f 86 0c 00 00 00           	jbe	12 <__ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE8allocateEmPKv+0x3e>
100007bd2: 48 8d 3d 49 40 00 00        	leaq	16457(%rip), %rdi
100007bd9: e8 22 00 00 00              	callq	34 <__ZNSt3__1L20__throw_length_errorEPKc>
100007bde: 48 69 7d f0 18 00 00 00     	imulq	$24, -16(%rbp), %rdi
100007be6: be 08 00 00 00              	movl	$8, %esi
100007beb: e8 70 00 00 00              	callq	112 <__ZNSt3__1L17__libcpp_allocateEmm>
100007bf0: 48 83 c4 20                 	addq	$32, %rsp
100007bf4: 5d                          	popq	%rbp
100007bf5: c3                          	retq
100007bf6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100007c00 __ZNSt3__1L20__throw_length_errorEPKc:
100007c00: 55                          	pushq	%rbp
100007c01: 48 89 e5                    	movq	%rsp, %rbp
100007c04: 48 83 ec 20                 	subq	$32, %rsp
100007c08: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007c0c: bf 10 00 00 00              	movl	$16, %edi
100007c11: e8 7c 39 00 00              	callq	14716 <state.cpp+0x10000b592>
100007c16: 48 89 c1                    	movq	%rax, %rcx
100007c19: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
100007c1d: 48 89 c7                    	movq	%rax, %rdi
100007c20: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100007c24: e8 97 00 00 00              	callq	151 <__ZNSt12length_errorC1EPKc>
100007c29: e9 00 00 00 00              	jmp	0 <__ZNSt3__1L20__throw_length_errorEPKc+0x2e>
100007c2e: 48 8b 35 fb 43 00 00        	movq	17403(%rip), %rsi
100007c35: 48 8b 15 c4 43 00 00        	movq	17348(%rip), %rdx
100007c3c: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100007c40: e8 65 39 00 00              	callq	14693 <state.cpp+0x10000b5aa>
100007c45: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100007c49: 89 55 ec                    	movl	%edx, -20(%rbp)
100007c4c: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100007c50: e8 4f 39 00 00              	callq	14671 <state.cpp+0x10000b5a4>
100007c55: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007c59: e8 c0 37 00 00              	callq	14272 <state.cpp+0x10000b41e>
100007c5e: 0f 0b                       	ud2

0000000100007c60 __ZNSt3__1L17__libcpp_allocateEmm:
100007c60: 55                          	pushq	%rbp
100007c61: 48 89 e5                    	movq	%rsp, %rbp
100007c64: 48 83 ec 20                 	subq	$32, %rsp
100007c68: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100007c6c: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100007c70: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100007c74: e8 e7 ee ff ff              	callq	-4377 <__ZNSt3__1L24__is_overaligned_for_newEm>
100007c79: a8 01                       	testb	$1, %al
100007c7b: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__1L17__libcpp_allocateEmm+0x26>
100007c81: e9 1e 00 00 00              	jmp	30 <__ZNSt3__1L17__libcpp_allocateEmm+0x44>
100007c86: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100007c8a: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100007c8e: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007c92: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
100007c96: e8 f1 38 00 00              	callq	14577 <state.cpp+0x10000b58c>
100007c9b: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100007c9f: e9 0d 00 00 00              	jmp	13 <__ZNSt3__1L17__libcpp_allocateEmm+0x51>
100007ca4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007ca8: e8 d9 38 00 00              	callq	14553 <state.cpp+0x10000b586>
100007cad: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100007cb1: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007cb5: 48 83 c4 20                 	addq	$32, %rsp
100007cb9: 5d                          	popq	%rbp
100007cba: c3                          	retq
100007cbb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007cc0 __ZNSt12length_errorC1EPKc:
100007cc0: 55                          	pushq	%rbp
100007cc1: 48 89 e5                    	movq	%rsp, %rbp
100007cc4: 48 83 ec 10                 	subq	$16, %rsp
100007cc8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007ccc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007cd0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100007cd4: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100007cd8: e8 13 00 00 00              	callq	19 <__ZNSt12length_errorC2EPKc>
100007cdd: 48 83 c4 10                 	addq	$16, %rsp
100007ce1: 5d                          	popq	%rbp
100007ce2: c3                          	retq
100007ce3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100007ced: 0f 1f 00                    	nopl	(%rax)

0000000100007cf0 __ZNSt12length_errorC2EPKc:
100007cf0: 55                          	pushq	%rbp
100007cf1: 48 89 e5                    	movq	%rsp, %rbp
100007cf4: 48 83 ec 20                 	subq	$32, %rsp
100007cf8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007cfc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007d00: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007d04: 48 89 c1                    	movq	%rax, %rcx
100007d07: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100007d0b: 48 89 cf                    	movq	%rcx, %rdi
100007d0e: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100007d12: e8 37 37 00 00              	callq	14135 <state.cpp+0x10000b44e>
100007d17: 48 8b 05 4a 43 00 00        	movq	17226(%rip), %rax
100007d1e: 48 05 10 00 00 00           	addq	$16, %rax
100007d24: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100007d28: 48 89 01                    	movq	%rax, (%rcx)
100007d2b: 48 83 c4 20                 	addq	$32, %rsp
100007d2f: 5d                          	popq	%rbp
100007d30: c3                          	retq
100007d31: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100007d3b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007d40 __ZNSt3__117__compressed_pairIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE5firstEv:
100007d40: 55                          	pushq	%rbp
100007d41: 48 89 e5                    	movq	%rsp, %rbp
100007d44: 48 83 ec 10                 	subq	$16, %rsp
100007d48: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007d4c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007d50: 48 89 c7                    	movq	%rax, %rdi
100007d53: e8 08 00 00 00              	callq	8 <__ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv>
100007d58: 48 83 c4 10                 	addq	$16, %rsp
100007d5c: 5d                          	popq	%rbp
100007d5d: c3                          	retq
100007d5e: 66 90                       	nop

0000000100007d60 __ZNSt3__122__compressed_pair_elemIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELi0ELb0EE5__getEv:
100007d60: 55                          	pushq	%rbp
100007d61: 48 89 e5                    	movq	%rsp, %rbp
100007d64: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007d68: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007d6c: 5d                          	popq	%rbp
100007d6d: c3                          	retq
100007d6e: 66 90                       	nop

0000000100007d70 __ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__RAII_IncreaseAnnotatorC1ERKS8_m:
100007d70: 55                          	pushq	%rbp
100007d71: 48 89 e5                    	movq	%rsp, %rbp
100007d74: 48 83 ec 20                 	subq	$32, %rsp
100007d78: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007d7c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007d80: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100007d84: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100007d88: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100007d8c: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100007d90: e8 9b 00 00 00              	callq	155 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__RAII_IncreaseAnnotatorC2ERKS8_m>
100007d95: 48 83 c4 20                 	addq	$32, %rsp
100007d99: 5d                          	popq	%rbp
100007d9a: c3                          	retq
100007d9b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100007da0 __ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE25__construct_range_forwardIPS6_SA_EEvRS7_T_SC_RT0_:
100007da0: 55                          	pushq	%rbp
100007da1: 48 89 e5                    	movq	%rsp, %rbp
100007da4: 48 83 ec 30                 	subq	$48, %rsp
100007da8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007dac: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007db0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100007db4: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100007db8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007dbc: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
100007dc0: 0f 84 4b 00 00 00           	je	75 <__ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE25__construct_range_forwardIPS6_SA_EEvRS7_T_SC_RT0_+0x71>
100007dc6: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100007dca: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100007dce: 48 8b 00                    	movq	(%rax), %rax
100007dd1: 48 89 7d d8                 	movq	%rdi, -40(%rbp)
100007dd5: 48 89 c7                    	movq	%rax, %rdi
100007dd8: e8 f3 ef ff ff              	callq	-4109 <__ZNSt3__1L16__to_raw_pointerINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEPT_S8_>
100007ddd: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
100007de1: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100007de5: 48 89 c6                    	movq	%rax, %rsi
100007de8: e8 63 00 00 00              	callq	99 <__ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructIS6_JRS6_EEEvRS7_PT_DpOT0_>
100007ded: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007df1: 48 05 18 00 00 00           	addq	$24, %rax
100007df7: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100007dfb: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100007dff: 48 8b 08                    	movq	(%rax), %rcx
100007e02: 48 81 c1 18 00 00 00        	addq	$24, %rcx
100007e09: 48 89 08                    	movq	%rcx, (%rax)
100007e0c: e9 a7 ff ff ff              	jmp	-89 <__ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE25__construct_range_forwardIPS6_SA_EEvRS7_T_SC_RT0_+0x18>
100007e11: 48 83 c4 30                 	addq	$48, %rsp
100007e15: 5d                          	popq	%rbp
100007e16: c3                          	retq
100007e17: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100007e20 __ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__RAII_IncreaseAnnotator6__doneEv:
100007e20: 55                          	pushq	%rbp
100007e21: 48 89 e5                    	movq	%rsp, %rbp
100007e24: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007e28: 5d                          	popq	%rbp
100007e29: c3                          	retq
100007e2a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100007e30 __ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE24__RAII_IncreaseAnnotatorC2ERKS8_m:
100007e30: 55                          	pushq	%rbp
100007e31: 48 89 e5                    	movq	%rsp, %rbp
100007e34: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007e38: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007e3c: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100007e40: 5d                          	popq	%rbp
100007e41: c3                          	retq
100007e42: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100007e4c: 0f 1f 40 00                 	nopl	(%rax)

0000000100007e50 __ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE9constructIS6_JRS6_EEEvRS7_PT_DpOT0_:
100007e50: 55                          	pushq	%rbp
100007e51: 48 89 e5                    	movq	%rsp, %rbp
100007e54: 48 83 ec 40                 	subq	$64, %rsp
100007e58: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007e5c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007e60: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100007e64: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100007e68: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100007e6c: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100007e70: 48 89 7d d0                 	movq	%rdi, -48(%rbp)
100007e74: 48 89 c7                    	movq	%rax, %rdi
100007e77: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
100007e7b: e8 70 00 00 00              	callq	112 <__ZNSt3__1L7forwardIRNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEOT_RNS_16remove_referenceIS8_E4typeE>
100007e80: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100007e84: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
100007e88: 48 89 c2                    	movq	%rax, %rdx
100007e8b: e8 10 00 00 00              	callq	16 <__ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE11__constructIS6_JRS6_EEEvNS_17integral_constantIbLb1EEERS7_PT_DpOT0_>
100007e90: 48 83 c4 40                 	addq	$64, %rsp
100007e94: 5d                          	popq	%rbp
100007e95: c3                          	retq
100007e96: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100007ea0 __ZNSt3__116allocator_traitsINS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEE11__constructIS6_JRS6_EEEvNS_17integral_constantIbLb1EEERS7_PT_DpOT0_:
100007ea0: 55                          	pushq	%rbp
100007ea1: 48 89 e5                    	movq	%rsp, %rbp
100007ea4: 48 83 ec 30                 	subq	$48, %rsp
100007ea8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100007eac: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100007eb0: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100007eb4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007eb8: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100007ebc: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100007ec0: 48 89 7d d8                 	movq	%rdi, -40(%rbp)
100007ec4: 48 89 c7                    	movq	%rax, %rdi
100007ec7: 48 89 75 d0                 	movq	%rsi, -48(%rbp)
100007ecb: e8 20 00 00 00              	callq	32 <__ZNSt3__1L7forwardIRNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEOT_RNS_16remove_referenceIS8_E4typeE>
100007ed0: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100007ed4: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100007ed8: 48 89 c2                    	movq	%rax, %rdx
100007edb: e8 20 00 00 00              	callq	32 <__ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE9constructIS5_JRS5_EEEvPT_DpOT0_>
100007ee0: 48 83 c4 30                 	addq	$48, %rsp
100007ee4: 5d                          	popq	%rbp
100007ee5: c3                          	retq
100007ee6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100007ef0 __ZNSt3__1L7forwardIRNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEOT_RNS_16remove_referenceIS8_E4typeE:
100007ef0: 55                          	pushq	%rbp
100007ef1: 48 89 e5                    	movq	%rsp, %rbp
100007ef4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007ef8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007efc: 5d                          	popq	%rbp
100007efd: c3                          	retq
100007efe: 66 90                       	nop

0000000100007f00 __ZNSt3__19allocatorINS_12basic_stringIcNS_11char_traitsIcEENS0_IcEEEEE9constructIS5_JRS5_EEEvPT_DpOT0_:
100007f00: 55                          	pushq	%rbp
100007f01: 48 89 e5                    	movq	%rsp, %rbp
100007f04: 48 83 ec 20                 	subq	$32, %rsp
100007f08: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007f0c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007f10: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100007f14: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007f18: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100007f1c: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100007f20: e8 cb ff ff ff              	callq	-53 <__ZNSt3__1L7forwardIRNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEOT_RNS_16remove_referenceIS8_E4typeE>
100007f25: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100007f29: 48 89 c6                    	movq	%rax, %rsi
100007f2c: e8 65 35 00 00              	callq	13669 <state.cpp+0x10000b496>
100007f31: 48 83 c4 20                 	addq	$32, %rsp
100007f35: 5d                          	popq	%rbp
100007f36: c3                          	retq
100007f37: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100007f40 __ZNSt3__18optionalIN9AsmParser10asm_sourceEEC2ERKS3_:
100007f40: 55                          	pushq	%rbp
100007f41: 48 89 e5                    	movq	%rsp, %rbp
100007f44: 48 83 ec 10                 	subq	$16, %rsp
100007f48: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007f4c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007f50: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007f54: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007f58: 48 89 c7                    	movq	%rax, %rdi
100007f5b: 48 89 ce                    	movq	%rcx, %rsi
100007f5e: e8 0d 00 00 00              	callq	13 <__ZNSt3__127__optional_move_assign_baseIN9AsmParser10asm_sourceELb0EEC2ERKS3_>
100007f63: 48 83 c4 10                 	addq	$16, %rsp
100007f67: 5d                          	popq	%rbp
100007f68: c3                          	retq
100007f69: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100007f70 __ZNSt3__127__optional_move_assign_baseIN9AsmParser10asm_sourceELb0EEC2ERKS3_:
100007f70: 55                          	pushq	%rbp
100007f71: 48 89 e5                    	movq	%rsp, %rbp
100007f74: 48 83 ec 10                 	subq	$16, %rsp
100007f78: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007f7c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007f80: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007f84: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007f88: 48 89 c7                    	movq	%rax, %rdi
100007f8b: 48 89 ce                    	movq	%rcx, %rsi
100007f8e: e8 0d 00 00 00              	callq	13 <__ZNSt3__127__optional_copy_assign_baseIN9AsmParser10asm_sourceELb0EEC2ERKS3_>
100007f93: 48 83 c4 10                 	addq	$16, %rsp
100007f97: 5d                          	popq	%rbp
100007f98: c3                          	retq
100007f99: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100007fa0 __ZNSt3__127__optional_copy_assign_baseIN9AsmParser10asm_sourceELb0EEC2ERKS3_:
100007fa0: 55                          	pushq	%rbp
100007fa1: 48 89 e5                    	movq	%rsp, %rbp
100007fa4: 48 83 ec 10                 	subq	$16, %rsp
100007fa8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007fac: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007fb0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007fb4: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007fb8: 48 89 c7                    	movq	%rax, %rdi
100007fbb: 48 89 ce                    	movq	%rcx, %rsi
100007fbe: e8 0d 00 00 00              	callq	13 <__ZNSt3__120__optional_move_baseIN9AsmParser10asm_sourceELb0EEC2ERKS3_>
100007fc3: 48 83 c4 10                 	addq	$16, %rsp
100007fc7: 5d                          	popq	%rbp
100007fc8: c3                          	retq
100007fc9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100007fd0 __ZNSt3__120__optional_move_baseIN9AsmParser10asm_sourceELb0EEC2ERKS3_:
100007fd0: 55                          	pushq	%rbp
100007fd1: 48 89 e5                    	movq	%rsp, %rbp
100007fd4: 48 83 ec 10                 	subq	$16, %rsp
100007fd8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100007fdc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100007fe0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100007fe4: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007fe8: 48 89 c7                    	movq	%rax, %rdi
100007feb: 48 89 ce                    	movq	%rcx, %rsi
100007fee: e8 0d 00 00 00              	callq	13 <__ZNSt3__120__optional_copy_baseIN9AsmParser10asm_sourceELb0EEC2ERKS3_>
100007ff3: 48 83 c4 10                 	addq	$16, %rsp
100007ff7: 5d                          	popq	%rbp
100007ff8: c3                          	retq
100007ff9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100008000 __ZNSt3__120__optional_copy_baseIN9AsmParser10asm_sourceELb0EEC2ERKS3_:
100008000: 55                          	pushq	%rbp
100008001: 48 89 e5                    	movq	%rsp, %rbp
100008004: 48 83 ec 30                 	subq	$48, %rsp
100008008: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000800c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008010: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008014: 48 89 c7                    	movq	%rax, %rdi
100008017: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000801b: e8 10 e6 ff ff              	callq	-6640 <__ZNSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EEC2Ev>
100008020: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100008024: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100008028: e8 33 00 00 00              	callq	51 <__ZNSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE16__construct_fromIRKNS_20__optional_copy_baseIS2_Lb0EEEEEvOT_>
10000802d: e9 00 00 00 00              	jmp	0 <__ZNSt3__120__optional_copy_baseIN9AsmParser10asm_sourceELb0EEC2ERKS3_+0x32>
100008032: 48 83 c4 30                 	addq	$48, %rsp
100008036: 5d                          	popq	%rbp
100008037: c3                          	retq
100008038: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000803c: 89 55 e4                    	movl	%edx, -28(%rbp)
10000803f: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100008043: 48 89 c7                    	movq	%rax, %rdi
100008046: e8 85 9f ff ff              	callq	-24699 <__ZNSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EED2Ev>
10000804b: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
10000804f: e8 ca 33 00 00              	callq	13258 <state.cpp+0x10000b41e>
100008054: 0f 0b                       	ud2
100008056: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100008060 __ZNSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE16__construct_fromIRKNS_20__optional_copy_baseIS2_Lb0EEEEEvOT_:
100008060: 55                          	pushq	%rbp
100008061: 48 89 e5                    	movq	%rsp, %rbp
100008064: 48 83 ec 20                 	subq	$32, %rsp
100008068: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000806c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008070: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100008074: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008078: 48 89 7d e8                 	movq	%rdi, -24(%rbp)
10000807c: 48 89 c7                    	movq	%rax, %rdi
10000807f: e8 3c 00 00 00              	callq	60 <__ZNKSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE9has_valueEv>
100008084: a8 01                       	testb	$1, %al
100008086: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE16__construct_fromIRKNS_20__optional_copy_baseIS2_Lb0EEEEEvOT_+0x31>
10000808c: e9 1d 00 00 00              	jmp	29 <__ZNSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE16__construct_fromIRKNS_20__optional_copy_baseIS2_Lb0EEEEEvOT_+0x4e>
100008091: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008095: e8 96 00 00 00              	callq	150 <__ZNSt3__1L7forwardIRKNS_20__optional_copy_baseIN9AsmParser10asm_sourceELb0EEEEEOT_RNS_16remove_referenceIS7_E4typeE>
10000809a: 48 89 c7                    	movq	%rax, %rdi
10000809d: e8 9e 00 00 00              	callq	158 <__ZNKRSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE5__getEv>
1000080a2: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000080a6: 48 89 c6                    	movq	%rax, %rsi
1000080a9: e8 32 00 00 00              	callq	50 <__ZNSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE11__constructIJRKS2_EEEvDpOT_>
1000080ae: 48 83 c4 20                 	addq	$32, %rsp
1000080b2: 5d                          	popq	%rbp
1000080b3: c3                          	retq
1000080b4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000080be: 66 90                       	nop

00000001000080c0 __ZNKSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE9has_valueEv:
1000080c0: 55                          	pushq	%rbp
1000080c1: 48 89 e5                    	movq	%rsp, %rbp
1000080c4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000080c8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000080cc: 8a 48 20                    	movb	32(%rax), %cl
1000080cf: 80 e1 01                    	andb	$1, %cl
1000080d2: 0f b6 c1                    	movzbl	%cl, %eax
1000080d5: 5d                          	popq	%rbp
1000080d6: c3                          	retq
1000080d7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

00000001000080e0 __ZNSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE11__constructIJRKS2_EEEvDpOT_:
1000080e0: 55                          	pushq	%rbp
1000080e1: 48 89 e5                    	movq	%rsp, %rbp
1000080e4: 48 83 ec 20                 	subq	$32, %rsp
1000080e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000080ec: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000080f0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000080f4: 48 89 c1                    	movq	%rax, %rcx
1000080f7: 48 89 cf                    	movq	%rcx, %rdi
1000080fa: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000080fe: e8 4d 00 00 00              	callq	77 <__ZNSt3__1L9addressofIN9AsmParser10asm_sourceEEEPT_RS3_>
100008103: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008107: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000810b: e8 50 00 00 00              	callq	80 <__ZNSt3__1L7forwardIRKN9AsmParser10asm_sourceEEEOT_RNS_16remove_referenceIS5_E4typeE>
100008110: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100008114: 48 89 c6                    	movq	%rax, %rsi
100008117: e8 54 00 00 00              	callq	84 <__ZN9AsmParser10asm_sourceC1ERKS0_>
10000811c: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008120: c6 40 20 01                 	movb	$1, 32(%rax)
100008124: 48 83 c4 20                 	addq	$32, %rsp
100008128: 5d                          	popq	%rbp
100008129: c3                          	retq
10000812a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100008130 __ZNSt3__1L7forwardIRKNS_20__optional_copy_baseIN9AsmParser10asm_sourceELb0EEEEEOT_RNS_16remove_referenceIS7_E4typeE:
100008130: 55                          	pushq	%rbp
100008131: 48 89 e5                    	movq	%rsp, %rbp
100008134: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008138: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000813c: 5d                          	popq	%rbp
10000813d: c3                          	retq
10000813e: 66 90                       	nop

0000000100008140 __ZNKRSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE5__getEv:
100008140: 55                          	pushq	%rbp
100008141: 48 89 e5                    	movq	%rsp, %rbp
100008144: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008148: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000814c: 5d                          	popq	%rbp
10000814d: c3                          	retq
10000814e: 66 90                       	nop

0000000100008150 __ZNSt3__1L9addressofIN9AsmParser10asm_sourceEEEPT_RS3_:
100008150: 55                          	pushq	%rbp
100008151: 48 89 e5                    	movq	%rsp, %rbp
100008154: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008158: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000815c: 5d                          	popq	%rbp
10000815d: c3                          	retq
10000815e: 66 90                       	nop

0000000100008160 __ZNSt3__1L7forwardIRKN9AsmParser10asm_sourceEEEOT_RNS_16remove_referenceIS5_E4typeE:
100008160: 55                          	pushq	%rbp
100008161: 48 89 e5                    	movq	%rsp, %rbp
100008164: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008168: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000816c: 5d                          	popq	%rbp
10000816d: c3                          	retq
10000816e: 66 90                       	nop

0000000100008170 __ZN9AsmParser10asm_sourceC1ERKS0_:
100008170: 55                          	pushq	%rbp
100008171: 48 89 e5                    	movq	%rsp, %rbp
100008174: 48 83 ec 10                 	subq	$16, %rsp
100008178: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000817c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008180: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100008184: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100008188: e8 13 00 00 00              	callq	19 <__ZN9AsmParser10asm_sourceC2ERKS0_>
10000818d: 48 83 c4 10                 	addq	$16, %rsp
100008191: 5d                          	popq	%rbp
100008192: c3                          	retq
100008193: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000819d: 0f 1f 00                    	nopl	(%rax)

00000001000081a0 __ZN9AsmParser10asm_sourceC2ERKS0_:
1000081a0: 55                          	pushq	%rbp
1000081a1: 48 89 e5                    	movq	%rsp, %rbp
1000081a4: 48 83 ec 20                 	subq	$32, %rsp
1000081a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000081ac: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000081b0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000081b4: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000081b8: 48 89 c7                    	movq	%rax, %rdi
1000081bb: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000081bf: e8 d2 32 00 00              	callq	13010 <state.cpp+0x10000b496>
1000081c4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000081c8: 8b 48 18                    	movl	24(%rax), %ecx
1000081cb: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000081cf: 89 48 18                    	movl	%ecx, 24(%rax)
1000081d2: 48 83 c4 20                 	addq	$32, %rsp
1000081d6: 5d                          	popq	%rbp
1000081d7: c3                          	retq
1000081d8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

00000001000081e0 __ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2ERKS5_:
1000081e0: 55                          	pushq	%rbp
1000081e1: 48 89 e5                    	movq	%rsp, %rbp
1000081e4: 48 83 ec 50                 	subq	$80, %rsp
1000081e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000081ec: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000081f0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000081f4: 48 89 c1                    	movq	%rax, %rcx
1000081f7: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
1000081fb: 48 89 d7                    	movq	%rdx, %rdi
1000081fe: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100008202: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
100008206: e8 b5 00 00 00              	callq	181 <__ZNKSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE7__allocEv>
10000820b: 48 89 c7                    	movq	%rax, %rdi
10000820e: e8 8d 00 00 00              	callq	141 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE37select_on_container_copy_constructionERKS4_>
100008213: 48 8b 7d b8                 	movq	-72(%rbp), %rdi
100008217: 48 8d 75 e8                 	leaq	-24(%rbp), %rsi
10000821b: e8 d0 00 00 00              	callq	208 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2EOS4_>
100008220: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008224: e8 d7 e5 ff ff              	callq	-6697 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4sizeEv>
100008229: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000822d: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
100008232: 0f 86 4c 00 00 00           	jbe	76 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2ERKS5_+0xa4>
100008238: 48 8b 75 d8                 	movq	-40(%rbp), %rsi
10000823c: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
100008240: e8 e1 32 00 00              	callq	13025 <state.cpp+0x10000b526>
100008245: e9 00 00 00 00              	jmp	0 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2ERKS5_+0x6a>
10000824a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000824e: 48 8b 30                    	movq	(%rax), %rsi
100008251: 48 8b 50 08                 	movq	8(%rax), %rdx
100008255: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100008259: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
10000825d: e8 ca 32 00 00              	callq	13002 <state.cpp+0x10000b52c>
100008262: e9 00 00 00 00              	jmp	0 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2ERKS5_+0x87>
100008267: e9 18 00 00 00              	jmp	24 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2ERKS5_+0xa4>
10000826c: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100008270: 89 55 cc                    	movl	%edx, -52(%rbp)
100008273: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100008277: 48 89 c7                    	movq	%rax, %rdi
10000827a: e8 61 97 ff ff              	callq	-26783 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEED2Ev>
10000827f: e9 06 00 00 00              	jmp	6 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2ERKS5_+0xaa>
100008284: 48 83 c4 50                 	addq	$80, %rsp
100008288: 5d                          	popq	%rbp
100008289: c3                          	retq
10000828a: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000828e: e8 8b 31 00 00              	callq	12683 <state.cpp+0x10000b41e>
100008293: 0f 0b                       	ud2
100008295: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000829f: 90                          	nop

00000001000082a0 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE37select_on_container_copy_constructionERKS4_:
1000082a0: 55                          	pushq	%rbp
1000082a1: 48 89 e5                    	movq	%rsp, %rbp
1000082a4: 48 83 ec 20                 	subq	$32, %rsp
1000082a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000082ac: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000082b0: e8 cb 01 00 00              	callq	459 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE39__select_on_container_copy_constructionENS_17integral_constantIbLb0EEERKS4_>
1000082b5: 48 83 c4 20                 	addq	$32, %rsp
1000082b9: 5d                          	popq	%rbp
1000082ba: c3                          	retq
1000082bb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000082c0 __ZNKSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE7__allocEv:
1000082c0: 55                          	pushq	%rbp
1000082c1: 48 89 e5                    	movq	%rsp, %rbp
1000082c4: 48 83 ec 10                 	subq	$16, %rsp
1000082c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000082cc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000082d0: 48 05 10 00 00 00           	addq	$16, %rax
1000082d6: 48 89 c7                    	movq	%rax, %rdi
1000082d9: e8 b2 01 00 00              	callq	434 <__ZNKSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEE6secondEv>
1000082de: 48 83 c4 10                 	addq	$16, %rsp
1000082e2: 5d                          	popq	%rbp
1000082e3: c3                          	retq
1000082e4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000082ee: 66 90                       	nop

00000001000082f0 __ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2EOS4_:
1000082f0: 55                          	pushq	%rbp
1000082f1: 48 89 e5                    	movq	%rsp, %rbp
1000082f4: 48 83 ec 30                 	subq	$48, %rsp
1000082f8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000082fc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008300: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008304: 48 89 c7                    	movq	%rax, %rdi
100008307: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000830b: e8 c0 f4 ff ff              	callq	-2880 <__ZNSt3__120__vector_base_commonILb1EEC2Ev>
100008310: e9 00 00 00 00              	jmp	0 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2EOS4_+0x25>
100008315: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100008319: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100008320: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100008328: 48 83 c0 10                 	addq	$16, %rax
10000832c: 48 c7 45 e8 00 00 00 00     	movq	$0, -24(%rbp)
100008334: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008338: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000833c: e8 7f 01 00 00              	callq	383 <__ZNSt3__1L4moveIRNS_9allocatorIN9AsmParser9asm_labelEEEEEONS_16remove_referenceIT_E4typeEOS7_>
100008341: 48 8d 75 e8                 	leaq	-24(%rbp), %rsi
100008345: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100008349: 48 89 c2                    	movq	%rax, %rdx
10000834c: e8 7f 01 00 00              	callq	383 <__ZNSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEEC1IDnS5_EEOT_OT0_>
100008351: e9 00 00 00 00              	jmp	0 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2EOS4_+0x66>
100008356: 48 83 c4 30                 	addq	$48, %rsp
10000835a: 5d                          	popq	%rbp
10000835b: c3                          	retq
10000835c: 48 89 c7                    	movq	%rax, %rdi
10000835f: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
100008363: e8 88 91 ff ff              	callq	-28280 <___clang_call_terminate>
100008368: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100008370 __ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE11__vallocateEm:
100008370: 55                          	pushq	%rbp
100008371: 48 89 e5                    	movq	%rsp, %rbp
100008374: 48 83 ec 30                 	subq	$48, %rsp
100008378: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000837c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008380: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008384: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100008388: 48 89 c7                    	movq	%rax, %rdi
10000838b: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000838f: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100008393: e8 a4 30 00 00              	callq	12452 <state.cpp+0x10000b43c>
100008398: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000839c: 48 39 c1                    	cmpq	%rax, %rcx
10000839f: 0f 86 09 00 00 00           	jbe	9 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE11__vallocateEm+0x3e>
1000083a5: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000083a9: e8 76 30 00 00              	callq	12406 <state.cpp+0x10000b424>
1000083ae: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000083b2: 48 89 c7                    	movq	%rax, %rdi
1000083b5: e8 86 e5 ff ff              	callq	-6778 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE7__allocEv>
1000083ba: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000083be: 48 89 c7                    	movq	%rax, %rdi
1000083c1: e8 6a 02 00 00              	callq	618 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE8allocateERS4_m>
1000083c6: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000083ca: 48 89 41 08                 	movq	%rax, 8(%rcx)
1000083ce: 48 89 01                    	movq	%rax, (%rcx)
1000083d1: 48 8b 01                    	movq	(%rcx), %rax
1000083d4: 48 69 55 f0 28 00 00 00     	imulq	$40, -16(%rbp), %rdx
1000083dc: 48 01 d0                    	addq	%rdx, %rax
1000083df: 48 89 cf                    	movq	%rcx, %rdi
1000083e2: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000083e6: e8 75 02 00 00              	callq	629 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE9__end_capEv>
1000083eb: 45 31 c0                    	xorl	%r8d, %r8d
1000083ee: 44 89 c6                    	movl	%r8d, %esi
1000083f1: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
1000083f5: 48 89 08                    	movq	%rcx, (%rax)
1000083f8: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000083fc: e8 8f 02 00 00              	callq	655 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE14__annotate_newEm>
100008401: 48 83 c4 30                 	addq	$48, %rsp
100008405: 5d                          	popq	%rbp
100008406: c3                          	retq
100008407: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100008410 __ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE18__construct_at_endIPS2_EENS_9enable_ifIXsr21__is_forward_iteratorIT_EE5valueEvE4typeES9_S9_m:
100008410: 55                          	pushq	%rbp
100008411: 48 89 e5                    	movq	%rsp, %rbp
100008414: 48 83 ec 40                 	subq	$64, %rsp
100008418: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000841c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008420: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100008424: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100008428: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000842c: 48 89 c1                    	movq	%rax, %rcx
10000842f: 48 89 cf                    	movq	%rcx, %rdi
100008432: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100008436: e8 05 e5 ff ff              	callq	-6907 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE7__allocEv>
10000843b: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000843f: 48 8b 55 e0                 	movq	-32(%rbp), %rdx
100008443: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
100008447: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
10000844b: e8 e0 03 00 00              	callq	992 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE24__RAII_IncreaseAnnotatorC1ERKS5_m>
100008450: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100008454: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100008458: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000845c: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100008460: 48 05 08 00 00 00           	addq	$8, %rax
100008466: 48 89 c1                    	movq	%rax, %rcx
100008469: e8 f2 03 00 00              	callq	1010 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE25__construct_range_forwardIPS3_S7_EEvRS4_T_S9_RT0_>
10000846e: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
100008472: e8 69 04 00 00              	callq	1129 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE24__RAII_IncreaseAnnotator6__doneEv>
100008477: 48 83 c4 40                 	addq	$64, %rsp
10000847b: 5d                          	popq	%rbp
10000847c: c3                          	retq
10000847d: 0f 1f 00                    	nopl	(%rax)

0000000100008480 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE39__select_on_container_copy_constructionENS_17integral_constantIbLb0EEERKS4_:
100008480: 55                          	pushq	%rbp
100008481: 48 89 e5                    	movq	%rsp, %rbp
100008484: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100008488: 5d                          	popq	%rbp
100008489: c3                          	retq
10000848a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100008490 __ZNKSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEE6secondEv:
100008490: 55                          	pushq	%rbp
100008491: 48 89 e5                    	movq	%rsp, %rbp
100008494: 48 83 ec 10                 	subq	$16, %rsp
100008498: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000849c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000084a0: 48 89 c7                    	movq	%rax, %rdi
1000084a3: e8 08 00 00 00              	callq	8 <__ZNKSt3__122__compressed_pair_elemINS_9allocatorIN9AsmParser9asm_labelEEELi1ELb1EE5__getEv>
1000084a8: 48 83 c4 10                 	addq	$16, %rsp
1000084ac: 5d                          	popq	%rbp
1000084ad: c3                          	retq
1000084ae: 66 90                       	nop

00000001000084b0 __ZNKSt3__122__compressed_pair_elemINS_9allocatorIN9AsmParser9asm_labelEEELi1ELb1EE5__getEv:
1000084b0: 55                          	pushq	%rbp
1000084b1: 48 89 e5                    	movq	%rsp, %rbp
1000084b4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000084b8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000084bc: 5d                          	popq	%rbp
1000084bd: c3                          	retq
1000084be: 66 90                       	nop

00000001000084c0 __ZNSt3__1L4moveIRNS_9allocatorIN9AsmParser9asm_labelEEEEEONS_16remove_referenceIT_E4typeEOS7_:
1000084c0: 55                          	pushq	%rbp
1000084c1: 48 89 e5                    	movq	%rsp, %rbp
1000084c4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000084c8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000084cc: 5d                          	popq	%rbp
1000084cd: c3                          	retq
1000084ce: 66 90                       	nop

00000001000084d0 __ZNSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEEC1IDnS5_EEOT_OT0_:
1000084d0: 55                          	pushq	%rbp
1000084d1: 48 89 e5                    	movq	%rsp, %rbp
1000084d4: 48 83 ec 20                 	subq	$32, %rsp
1000084d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000084dc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000084e0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000084e4: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000084e8: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000084ec: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000084f0: e8 0b 00 00 00              	callq	11 <__ZNSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2IDnS5_EEOT_OT0_>
1000084f5: 48 83 c4 20                 	addq	$32, %rsp
1000084f9: 5d                          	popq	%rbp
1000084fa: c3                          	retq
1000084fb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100008500 __ZNSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2IDnS5_EEOT_OT0_:
100008500: 55                          	pushq	%rbp
100008501: 48 89 e5                    	movq	%rsp, %rbp
100008504: 48 83 ec 30                 	subq	$48, %rsp
100008508: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000850c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008510: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100008514: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008518: 48 89 c1                    	movq	%rax, %rcx
10000851b: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000851f: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100008523: 48 89 4d d8                 	movq	%rcx, -40(%rbp)
100008527: e8 54 f3 ff ff              	callq	-3244 <__ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE>
10000852c: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100008530: 48 89 c6                    	movq	%rax, %rsi
100008533: e8 28 00 00 00              	callq	40 <__ZNSt3__122__compressed_pair_elemIPN9AsmParser9asm_labelELi0ELb0EEC2IDnvEEOT_>
100008538: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000853c: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100008540: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100008544: e8 57 00 00 00              	callq	87 <__ZNSt3__1L7forwardINS_9allocatorIN9AsmParser9asm_labelEEEEEOT_RNS_16remove_referenceIS5_E4typeE>
100008549: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000854d: 48 89 c6                    	movq	%rax, %rsi
100008550: e8 5b 00 00 00              	callq	91 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIN9AsmParser9asm_labelEEELi1ELb1EEC2IS4_vEEOT_>
100008555: 48 83 c4 30                 	addq	$48, %rsp
100008559: 5d                          	popq	%rbp
10000855a: c3                          	retq
10000855b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100008560 __ZNSt3__122__compressed_pair_elemIPN9AsmParser9asm_labelELi0ELb0EEC2IDnvEEOT_:
100008560: 55                          	pushq	%rbp
100008561: 48 89 e5                    	movq	%rsp, %rbp
100008564: 48 83 ec 20                 	subq	$32, %rsp
100008568: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000856c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008570: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008574: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008578: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000857c: e8 ff f2 ff ff              	callq	-3329 <__ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE>
100008581: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100008585: 48 c7 01 00 00 00 00        	movq	$0, (%rcx)
10000858c: 48 83 c4 20                 	addq	$32, %rsp
100008590: 5d                          	popq	%rbp
100008591: c3                          	retq
100008592: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000859c: 0f 1f 40 00                 	nopl	(%rax)

00000001000085a0 __ZNSt3__1L7forwardINS_9allocatorIN9AsmParser9asm_labelEEEEEOT_RNS_16remove_referenceIS5_E4typeE:
1000085a0: 55                          	pushq	%rbp
1000085a1: 48 89 e5                    	movq	%rsp, %rbp
1000085a4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000085a8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000085ac: 5d                          	popq	%rbp
1000085ad: c3                          	retq
1000085ae: 66 90                       	nop

00000001000085b0 __ZNSt3__122__compressed_pair_elemINS_9allocatorIN9AsmParser9asm_labelEEELi1ELb1EEC2IS4_vEEOT_:
1000085b0: 55                          	pushq	%rbp
1000085b1: 48 89 e5                    	movq	%rsp, %rbp
1000085b4: 48 83 ec 10                 	subq	$16, %rsp
1000085b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000085bc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000085c0: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000085c4: e8 d7 ff ff ff              	callq	-41 <__ZNSt3__1L7forwardINS_9allocatorIN9AsmParser9asm_labelEEEEEOT_RNS_16remove_referenceIS5_E4typeE>
1000085c9: 48 83 c4 10                 	addq	$16, %rsp
1000085cd: 5d                          	popq	%rbp
1000085ce: c3                          	retq
1000085cf: 90                          	nop

00000001000085d0 __ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE8max_sizeEv:
1000085d0: 55                          	pushq	%rbp
1000085d1: 48 89 e5                    	movq	%rsp, %rbp
1000085d4: 48 83 ec 30                 	subq	$48, %rsp
1000085d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000085dc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000085e0: e8 db fc ff ff              	callq	-805 <__ZNKSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE7__allocEv>
1000085e5: 48 89 c7                    	movq	%rax, %rdi
1000085e8: e8 53 01 00 00              	callq	339 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE8max_sizeERKS4_>
1000085ed: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000085f1: e8 ca f4 ff ff              	callq	-2870 <__ZNSt3__114numeric_limitsIlE3maxEv>
1000085f6: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000085fa: 48 8d 7d f0                 	leaq	-16(%rbp), %rdi
1000085fe: 48 8d 75 e8                 	leaq	-24(%rbp), %rsi
100008602: e8 69 f4 ff ff              	callq	-2967 <__ZNSt3__1L3minImEERKT_S3_S3_>
100008607: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000860b: e9 00 00 00 00              	jmp	0 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE8max_sizeEv+0x40>
100008610: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100008614: 48 8b 00                    	movq	(%rax), %rax
100008617: 48 83 c4 30                 	addq	$48, %rsp
10000861b: 5d                          	popq	%rbp
10000861c: c3                          	retq
10000861d: 48 89 c7                    	movq	%rax, %rdi
100008620: 48 89 55 d8                 	movq	%rdx, -40(%rbp)
100008624: e8 c7 8e ff ff              	callq	-28985 <___clang_call_terminate>
100008629: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100008630 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE8allocateERS4_m:
100008630: 55                          	pushq	%rbp
100008631: 48 89 e5                    	movq	%rsp, %rbp
100008634: 48 83 ec 10                 	subq	$16, %rsp
100008638: 31 c0                       	xorl	%eax, %eax
10000863a: 89 c2                       	movl	%eax, %edx
10000863c: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008640: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008644: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100008648: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000864c: e8 4f 01 00 00              	callq	335 <__ZNSt3__19allocatorIN9AsmParser9asm_labelEE8allocateEmPKv>
100008651: 48 83 c4 10                 	addq	$16, %rsp
100008655: 5d                          	popq	%rbp
100008656: c3                          	retq
100008657: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100008660 __ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE9__end_capEv:
100008660: 55                          	pushq	%rbp
100008661: 48 89 e5                    	movq	%rsp, %rbp
100008664: 48 83 ec 10                 	subq	$16, %rsp
100008668: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000866c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008670: 48 05 10 00 00 00           	addq	$16, %rax
100008676: 48 89 c7                    	movq	%rax, %rdi
100008679: e8 82 01 00 00              	callq	386 <__ZNSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEE5firstEv>
10000867e: 48 83 c4 10                 	addq	$16, %rsp
100008682: 5d                          	popq	%rbp
100008683: c3                          	retq
100008684: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000868e: 66 90                       	nop

0000000100008690 __ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE14__annotate_newEm:
100008690: 55                          	pushq	%rbp
100008691: 48 89 e5                    	movq	%rsp, %rbp
100008694: 48 83 ec 40                 	subq	$64, %rsp
100008698: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000869c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000086a0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000086a4: 48 89 c7                    	movq	%rax, %rdi
1000086a7: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000086ab: e8 10 e1 ff ff              	callq	-7920 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4dataEv>
1000086b0: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000086b4: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000086b8: e8 03 e1 ff ff              	callq	-7933 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4dataEv>
1000086bd: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000086c1: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000086c5: e8 16 e1 ff ff              	callq	-7914 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE8capacityEv>
1000086ca: 48 69 c0 28 00 00 00        	imulq	$40, %rax, %rax
1000086d1: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
1000086d5: 48 01 c1                    	addq	%rax, %rcx
1000086d8: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000086dc: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
1000086e0: e8 db e0 ff ff              	callq	-7973 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4dataEv>
1000086e5: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000086e9: 48 89 45 c8                 	movq	%rax, -56(%rbp)
1000086ed: e8 ee e0 ff ff              	callq	-7954 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE8capacityEv>
1000086f2: 48 69 c0 28 00 00 00        	imulq	$40, %rax, %rax
1000086f9: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
1000086fd: 48 01 c1                    	addq	%rax, %rcx
100008700: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100008704: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
100008708: e8 b3 e0 ff ff              	callq	-8013 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE4dataEv>
10000870d: 48 69 4d f0 28 00 00 00     	imulq	$40, -16(%rbp), %rcx
100008715: 48 01 c8                    	addq	%rcx, %rax
100008718: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
10000871c: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
100008720: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100008724: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100008728: 49 89 c0                    	movq	%rax, %r8
10000872b: e8 70 e0 ff ff              	callq	-8080 <__ZNKSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE31__annotate_contiguous_containerEPKvS7_S7_S7_>
100008730: 48 83 c4 40                 	addq	$64, %rsp
100008734: 5d                          	popq	%rbp
100008735: c3                          	retq
100008736: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100008740 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE8max_sizeERKS4_:
100008740: 55                          	pushq	%rbp
100008741: 48 89 e5                    	movq	%rsp, %rbp
100008744: 48 83 ec 20                 	subq	$32, %rsp
100008748: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000874c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100008750: e8 0b 00 00 00              	callq	11 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE10__max_sizeENS_17integral_constantIbLb1EEERKS4_>
100008755: 48 83 c4 20                 	addq	$32, %rsp
100008759: 5d                          	popq	%rbp
10000875a: c3                          	retq
10000875b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100008760 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE10__max_sizeENS_17integral_constantIbLb1EEERKS4_:
100008760: 55                          	pushq	%rbp
100008761: 48 89 e5                    	movq	%rsp, %rbp
100008764: 48 83 ec 10                 	subq	$16, %rsp
100008768: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000876c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008770: e8 0b 00 00 00              	callq	11 <__ZNKSt3__19allocatorIN9AsmParser9asm_labelEE8max_sizeEv>
100008775: 48 83 c4 10                 	addq	$16, %rsp
100008779: 5d                          	popq	%rbp
10000877a: c3                          	retq
10000877b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100008780 __ZNKSt3__19allocatorIN9AsmParser9asm_labelEE8max_sizeEv:
100008780: 55                          	pushq	%rbp
100008781: 48 89 e5                    	movq	%rsp, %rbp
100008784: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008788: 48 b8 66 66 66 66 66 66 66 06       	movabsq	$461168601842738790, %rax
100008792: 5d                          	popq	%rbp
100008793: c3                          	retq
100008794: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000879e: 66 90                       	nop

00000001000087a0 __ZNSt3__19allocatorIN9AsmParser9asm_labelEE8allocateEmPKv:
1000087a0: 55                          	pushq	%rbp
1000087a1: 48 89 e5                    	movq	%rsp, %rbp
1000087a4: 48 83 ec 20                 	subq	$32, %rsp
1000087a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000087ac: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000087b0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000087b4: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000087b8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000087bc: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000087c0: e8 bb ff ff ff              	callq	-69 <__ZNKSt3__19allocatorIN9AsmParser9asm_labelEE8max_sizeEv>
1000087c5: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
1000087c9: 48 39 c1                    	cmpq	%rax, %rcx
1000087cc: 0f 86 0c 00 00 00           	jbe	12 <__ZNSt3__19allocatorIN9AsmParser9asm_labelEE8allocateEmPKv+0x3e>
1000087d2: 48 8d 3d 49 34 00 00        	leaq	13385(%rip), %rdi
1000087d9: e8 22 f4 ff ff              	callq	-3038 <__ZNSt3__1L20__throw_length_errorEPKc>
1000087de: 48 69 7d f0 28 00 00 00     	imulq	$40, -16(%rbp), %rdi
1000087e6: be 08 00 00 00              	movl	$8, %esi
1000087eb: e8 70 f4 ff ff              	callq	-2960 <__ZNSt3__1L17__libcpp_allocateEmm>
1000087f0: 48 83 c4 20                 	addq	$32, %rsp
1000087f4: 5d                          	popq	%rbp
1000087f5: c3                          	retq
1000087f6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100008800 __ZNSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEE5firstEv:
100008800: 55                          	pushq	%rbp
100008801: 48 89 e5                    	movq	%rsp, %rbp
100008804: 48 83 ec 10                 	subq	$16, %rsp
100008808: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000880c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008810: 48 89 c7                    	movq	%rax, %rdi
100008813: e8 08 00 00 00              	callq	8 <__ZNSt3__122__compressed_pair_elemIPN9AsmParser9asm_labelELi0ELb0EE5__getEv>
100008818: 48 83 c4 10                 	addq	$16, %rsp
10000881c: 5d                          	popq	%rbp
10000881d: c3                          	retq
10000881e: 66 90                       	nop

0000000100008820 __ZNSt3__122__compressed_pair_elemIPN9AsmParser9asm_labelELi0ELb0EE5__getEv:
100008820: 55                          	pushq	%rbp
100008821: 48 89 e5                    	movq	%rsp, %rbp
100008824: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008828: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000882c: 5d                          	popq	%rbp
10000882d: c3                          	retq
10000882e: 66 90                       	nop

0000000100008830 __ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE24__RAII_IncreaseAnnotatorC1ERKS5_m:
100008830: 55                          	pushq	%rbp
100008831: 48 89 e5                    	movq	%rsp, %rbp
100008834: 48 83 ec 20                 	subq	$32, %rsp
100008838: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000883c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008840: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100008844: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100008848: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000884c: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100008850: e8 9b 00 00 00              	callq	155 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE24__RAII_IncreaseAnnotatorC2ERKS5_m>
100008855: 48 83 c4 20                 	addq	$32, %rsp
100008859: 5d                          	popq	%rbp
10000885a: c3                          	retq
10000885b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100008860 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE25__construct_range_forwardIPS3_S7_EEvRS4_T_S9_RT0_:
100008860: 55                          	pushq	%rbp
100008861: 48 89 e5                    	movq	%rsp, %rbp
100008864: 48 83 ec 30                 	subq	$48, %rsp
100008868: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000886c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008870: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100008874: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100008878: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000887c: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
100008880: 0f 84 4b 00 00 00           	je	75 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE25__construct_range_forwardIPS3_S7_EEvRS4_T_S9_RT0_+0x71>
100008886: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000888a: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000888e: 48 8b 00                    	movq	(%rax), %rax
100008891: 48 89 7d d8                 	movq	%rdi, -40(%rbp)
100008895: 48 89 c7                    	movq	%rax, %rdi
100008898: e8 93 df ff ff              	callq	-8301 <__ZNSt3__1L16__to_raw_pointerIN9AsmParser9asm_labelEEEPT_S4_>
10000889d: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
1000088a1: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
1000088a5: 48 89 c6                    	movq	%rax, %rsi
1000088a8: e8 63 00 00 00              	callq	99 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE9constructIS3_JRS3_EEEvRS4_PT_DpOT0_>
1000088ad: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000088b1: 48 05 28 00 00 00           	addq	$40, %rax
1000088b7: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000088bb: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000088bf: 48 8b 08                    	movq	(%rax), %rcx
1000088c2: 48 81 c1 28 00 00 00        	addq	$40, %rcx
1000088c9: 48 89 08                    	movq	%rcx, (%rax)
1000088cc: e9 a7 ff ff ff              	jmp	-89 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE25__construct_range_forwardIPS3_S7_EEvRS4_T_S9_RT0_+0x18>
1000088d1: 48 83 c4 30                 	addq	$48, %rsp
1000088d5: 5d                          	popq	%rbp
1000088d6: c3                          	retq
1000088d7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

00000001000088e0 __ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE24__RAII_IncreaseAnnotator6__doneEv:
1000088e0: 55                          	pushq	%rbp
1000088e1: 48 89 e5                    	movq	%rsp, %rbp
1000088e4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000088e8: 5d                          	popq	%rbp
1000088e9: c3                          	retq
1000088ea: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000088f0 __ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEE24__RAII_IncreaseAnnotatorC2ERKS5_m:
1000088f0: 55                          	pushq	%rbp
1000088f1: 48 89 e5                    	movq	%rsp, %rbp
1000088f4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000088f8: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000088fc: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100008900: 5d                          	popq	%rbp
100008901: c3                          	retq
100008902: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000890c: 0f 1f 40 00                 	nopl	(%rax)

0000000100008910 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE9constructIS3_JRS3_EEEvRS4_PT_DpOT0_:
100008910: 55                          	pushq	%rbp
100008911: 48 89 e5                    	movq	%rsp, %rbp
100008914: 48 83 ec 40                 	subq	$64, %rsp
100008918: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000891c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008920: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100008924: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100008928: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000892c: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008930: 48 89 7d d0                 	movq	%rdi, -48(%rbp)
100008934: 48 89 c7                    	movq	%rax, %rdi
100008937: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
10000893b: e8 70 00 00 00              	callq	112 <__ZNSt3__1L7forwardIRN9AsmParser9asm_labelEEEOT_RNS_16remove_referenceIS4_E4typeE>
100008940: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100008944: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
100008948: 48 89 c2                    	movq	%rax, %rdx
10000894b: e8 10 00 00 00              	callq	16 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE11__constructIS3_JRS3_EEEvNS_17integral_constantIbLb1EEERS4_PT_DpOT0_>
100008950: 48 83 c4 40                 	addq	$64, %rsp
100008954: 5d                          	popq	%rbp
100008955: c3                          	retq
100008956: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100008960 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser9asm_labelEEEE11__constructIS3_JRS3_EEEvNS_17integral_constantIbLb1EEERS4_PT_DpOT0_:
100008960: 55                          	pushq	%rbp
100008961: 48 89 e5                    	movq	%rsp, %rbp
100008964: 48 83 ec 30                 	subq	$48, %rsp
100008968: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000896c: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100008970: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100008974: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008978: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000897c: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100008980: 48 89 7d d8                 	movq	%rdi, -40(%rbp)
100008984: 48 89 c7                    	movq	%rax, %rdi
100008987: 48 89 75 d0                 	movq	%rsi, -48(%rbp)
10000898b: e8 20 00 00 00              	callq	32 <__ZNSt3__1L7forwardIRN9AsmParser9asm_labelEEEOT_RNS_16remove_referenceIS4_E4typeE>
100008990: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100008994: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100008998: 48 89 c2                    	movq	%rax, %rdx
10000899b: e8 20 00 00 00              	callq	32 <__ZNSt3__19allocatorIN9AsmParser9asm_labelEE9constructIS2_JRS2_EEEvPT_DpOT0_>
1000089a0: 48 83 c4 30                 	addq	$48, %rsp
1000089a4: 5d                          	popq	%rbp
1000089a5: c3                          	retq
1000089a6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

00000001000089b0 __ZNSt3__1L7forwardIRN9AsmParser9asm_labelEEEOT_RNS_16remove_referenceIS4_E4typeE:
1000089b0: 55                          	pushq	%rbp
1000089b1: 48 89 e5                    	movq	%rsp, %rbp
1000089b4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000089b8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000089bc: 5d                          	popq	%rbp
1000089bd: c3                          	retq
1000089be: 66 90                       	nop

00000001000089c0 __ZNSt3__19allocatorIN9AsmParser9asm_labelEE9constructIS2_JRS2_EEEvPT_DpOT0_:
1000089c0: 55                          	pushq	%rbp
1000089c1: 48 89 e5                    	movq	%rsp, %rbp
1000089c4: 48 83 ec 20                 	subq	$32, %rsp
1000089c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000089cc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000089d0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000089d4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000089d8: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000089dc: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000089e0: e8 cb ff ff ff              	callq	-53 <__ZNSt3__1L7forwardIRN9AsmParser9asm_labelEEEOT_RNS_16remove_referenceIS4_E4typeE>
1000089e5: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
1000089e9: 48 89 c6                    	movq	%rax, %rsi
1000089ec: e8 0f 00 00 00              	callq	15 <__ZN9AsmParser9asm_labelC1ERKS0_>
1000089f1: 48 83 c4 20                 	addq	$32, %rsp
1000089f5: 5d                          	popq	%rbp
1000089f6: c3                          	retq
1000089f7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100008a00 __ZN9AsmParser9asm_labelC1ERKS0_:
100008a00: 55                          	pushq	%rbp
100008a01: 48 89 e5                    	movq	%rsp, %rbp
100008a04: 48 83 ec 10                 	subq	$16, %rsp
100008a08: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008a0c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008a10: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100008a14: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100008a18: e8 13 00 00 00              	callq	19 <__ZN9AsmParser9asm_labelC2ERKS0_>
100008a1d: 48 83 c4 10                 	addq	$16, %rsp
100008a21: 5d                          	popq	%rbp
100008a22: c3                          	retq
100008a23: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100008a2d: 0f 1f 00                    	nopl	(%rax)

0000000100008a30 __ZN9AsmParser9asm_labelC2ERKS0_:
100008a30: 55                          	pushq	%rbp
100008a31: 48 89 e5                    	movq	%rsp, %rbp
100008a34: 48 83 ec 20                 	subq	$32, %rsp
100008a38: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008a3c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008a40: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008a44: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100008a48: 48 89 c7                    	movq	%rax, %rdi
100008a4b: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100008a4f: e8 42 2a 00 00              	callq	10818 <state.cpp+0x10000b496>
100008a54: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008a58: 48 8b 48 18                 	movq	24(%rax), %rcx
100008a5c: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100008a60: 48 89 4a 18                 	movq	%rcx, 24(%rdx)
100008a64: 44 8b 40 20                 	movl	32(%rax), %r8d
100008a68: 44 89 42 20                 	movl	%r8d, 32(%rdx)
100008a6c: 48 83 c4 20                 	addq	$32, %rsp
100008a70: 5d                          	popq	%rbp
100008a71: c3                          	retq
100008a72: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100008a7c: 0f 1f 40 00                 	nopl	(%rax)

0000000100008a80 __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev:
100008a80: 55                          	pushq	%rbp
100008a81: 48 89 e5                    	movq	%rsp, %rbp
100008a84: 48 83 ec 20                 	subq	$32, %rsp
100008a88: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008a8c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008a90: 48 89 c7                    	movq	%rax, %rdi
100008a93: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100008a97: e8 24 00 00 00              	callq	36 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv>
100008a9c: e9 00 00 00 00              	jmp	0 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Ev+0x21>
100008aa1: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008aa5: e8 36 00 00 00              	callq	54 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv>
100008aaa: 48 83 c4 20                 	addq	$32, %rsp
100008aae: 5d                          	popq	%rbp
100008aaf: c3                          	retq
100008ab0: 48 89 c7                    	movq	%rax, %rdi
100008ab3: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100008ab7: e8 34 8a ff ff              	callq	-30156 <___clang_call_terminate>
100008abc: 0f 1f 40 00                 	nopl	(%rax)

0000000100008ac0 __ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv:
100008ac0: 55                          	pushq	%rbp
100008ac1: 48 89 e5                    	movq	%rsp, %rbp
100008ac4: 48 83 ec 10                 	subq	$16, %rsp
100008ac8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008acc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100008ad0: e8 5b 00 00 00              	callq	91 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv>
100008ad5: 48 83 c4 10                 	addq	$16, %rsp
100008ad9: 5d                          	popq	%rbp
100008ada: c3                          	retq
100008adb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100008ae0 __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv:
100008ae0: 55                          	pushq	%rbp
100008ae1: 48 89 e5                    	movq	%rsp, %rbp
100008ae4: 48 83 ec 20                 	subq	$32, %rsp
100008ae8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008aec: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100008af0: e8 db 00 00 00              	callq	219 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
100008af5: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100008af9: c7 45 ec 00 00 00 00        	movl	$0, -20(%rbp)
100008b00: 83 7d ec 03                 	cmpl	$3, -20(%rbp)
100008b04: 0f 83 1f 00 00 00           	jae	31 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv+0x49>
100008b0a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008b0e: 8b 4d ec                    	movl	-20(%rbp), %ecx
100008b11: 89 ca                       	movl	%ecx, %edx
100008b13: 48 c7 04 d0 00 00 00 00     	movq	$0, (%rax,%rdx,8)
100008b1b: 8b 45 ec                    	movl	-20(%rbp), %eax
100008b1e: 83 c0 01                    	addl	$1, %eax
100008b21: 89 45 ec                    	movl	%eax, -20(%rbp)
100008b24: e9 d7 ff ff ff              	jmp	-41 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv+0x20>
100008b29: 48 83 c4 20                 	addq	$32, %rsp
100008b2d: 5d                          	popq	%rbp
100008b2e: c3                          	retq
100008b2f: 90                          	nop

0000000100008b30 __ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2ILb1EvEEv:
100008b30: 55                          	pushq	%rbp
100008b31: 48 89 e5                    	movq	%rsp, %rbp
100008b34: 48 83 ec 10                 	subq	$16, %rsp
100008b38: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008b3c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008b40: 48 89 c1                    	movq	%rax, %rcx
100008b43: 48 89 cf                    	movq	%rcx, %rdi
100008b46: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100008b4a: e8 21 00 00 00              	callq	33 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev>
100008b4f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008b53: 48 89 c7                    	movq	%rax, %rdi
100008b56: e8 45 00 00 00              	callq	69 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev>
100008b5b: 48 83 c4 10                 	addq	$16, %rsp
100008b5f: 5d                          	popq	%rbp
100008b60: c3                          	retq
100008b61: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100008b6b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100008b70 __ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2Ev:
100008b70: 55                          	pushq	%rbp
100008b71: 48 89 e5                    	movq	%rsp, %rbp
100008b74: 48 83 ec 10                 	subq	$16, %rsp
100008b78: 31 f6                       	xorl	%esi, %esi
100008b7a: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008b7e: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008b82: 48 89 c7                    	movq	%rax, %rdi
100008b85: ba 18 00 00 00              	movl	$24, %edx
100008b8a: e8 63 2a 00 00              	callq	10851 <state.cpp+0x10000b5f2>
100008b8f: 48 83 c4 10                 	addq	$16, %rsp
100008b93: 5d                          	popq	%rbp
100008b94: c3                          	retq
100008b95: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100008b9f: 90                          	nop

0000000100008ba0 __ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2Ev:
100008ba0: 55                          	pushq	%rbp
100008ba1: 48 89 e5                    	movq	%rsp, %rbp
100008ba4: 48 83 ec 10                 	subq	$16, %rsp
100008ba8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008bac: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008bb0: 48 89 c7                    	movq	%rax, %rdi
100008bb3: e8 08 00 00 00              	callq	8 <__ZNSt3__19allocatorIcEC2Ev>
100008bb8: 48 83 c4 10                 	addq	$16, %rsp
100008bbc: 5d                          	popq	%rbp
100008bbd: c3                          	retq
100008bbe: 66 90                       	nop

0000000100008bc0 __ZNSt3__19allocatorIcEC2Ev:
100008bc0: 55                          	pushq	%rbp
100008bc1: 48 89 e5                    	movq	%rsp, %rbp
100008bc4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008bc8: 5d                          	popq	%rbp
100008bc9: c3                          	retq
100008bca: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100008bd0 __ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv:
100008bd0: 55                          	pushq	%rbp
100008bd1: 48 89 e5                    	movq	%rsp, %rbp
100008bd4: 48 83 ec 10                 	subq	$16, %rsp
100008bd8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008bdc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008be0: 48 89 c7                    	movq	%rax, %rdi
100008be3: e8 08 00 00 00              	callq	8 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv>
100008be8: 48 83 c4 10                 	addq	$16, %rsp
100008bec: 5d                          	popq	%rbp
100008bed: c3                          	retq
100008bee: 66 90                       	nop

0000000100008bf0 __ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv:
100008bf0: 55                          	pushq	%rbp
100008bf1: 48 89 e5                    	movq	%rsp, %rbp
100008bf4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008bf8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008bfc: 5d                          	popq	%rbp
100008bfd: c3                          	retq
100008bfe: 66 90                       	nop

0000000100008c00 __ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEEC2Ev:
100008c00: 55                          	pushq	%rbp
100008c01: 48 89 e5                    	movq	%rsp, %rbp
100008c04: 48 83 ec 10                 	subq	$16, %rsp
100008c08: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008c0c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008c10: 48 89 c7                    	movq	%rax, %rdi
100008c13: e8 08 00 00 00              	callq	8 <__ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEEC2Ev>
100008c18: 48 83 c4 10                 	addq	$16, %rsp
100008c1c: 5d                          	popq	%rbp
100008c1d: c3                          	retq
100008c1e: 66 90                       	nop

0000000100008c20 __ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEEC2Ev:
100008c20: 55                          	pushq	%rbp
100008c21: 48 89 e5                    	movq	%rsp, %rbp
100008c24: 48 83 ec 20                 	subq	$32, %rsp
100008c28: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008c2c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008c30: 48 89 c7                    	movq	%rax, %rdi
100008c33: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100008c37: e8 94 eb ff ff              	callq	-5228 <__ZNSt3__120__vector_base_commonILb1EEC2Ev>
100008c3c: e9 00 00 00 00              	jmp	0 <__ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEEC2Ev+0x21>
100008c41: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008c45: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100008c4c: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100008c54: 48 83 c0 10                 	addq	$16, %rax
100008c58: 48 c7 45 f0 00 00 00 00     	movq	$0, -16(%rbp)
100008c60: 48 8d 75 f0                 	leaq	-16(%rbp), %rsi
100008c64: 48 89 c7                    	movq	%rax, %rdi
100008c67: e8 24 00 00 00              	callq	36 <__ZNSt3__117__compressed_pairIPN9AsmParser8asm_lineENS_9allocatorIS2_EEEC1IDnLb1EEEOT_>
100008c6c: e9 00 00 00 00              	jmp	0 <__ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEEC2Ev+0x51>
100008c71: 48 83 c4 20                 	addq	$32, %rsp
100008c75: 5d                          	popq	%rbp
100008c76: c3                          	retq
100008c77: 48 89 c7                    	movq	%rax, %rdi
100008c7a: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100008c7e: e8 6d 88 ff ff              	callq	-30611 <___clang_call_terminate>
100008c83: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100008c8d: 0f 1f 00                    	nopl	(%rax)

0000000100008c90 __ZNSt3__117__compressed_pairIPN9AsmParser8asm_lineENS_9allocatorIS2_EEEC1IDnLb1EEEOT_:
100008c90: 55                          	pushq	%rbp
100008c91: 48 89 e5                    	movq	%rsp, %rbp
100008c94: 48 83 ec 10                 	subq	$16, %rsp
100008c98: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008c9c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008ca0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100008ca4: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100008ca8: e8 13 00 00 00              	callq	19 <__ZNSt3__117__compressed_pairIPN9AsmParser8asm_lineENS_9allocatorIS2_EEEC2IDnLb1EEEOT_>
100008cad: 48 83 c4 10                 	addq	$16, %rsp
100008cb1: 5d                          	popq	%rbp
100008cb2: c3                          	retq
100008cb3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100008cbd: 0f 1f 00                    	nopl	(%rax)

0000000100008cc0 __ZNSt3__117__compressed_pairIPN9AsmParser8asm_lineENS_9allocatorIS2_EEEC2IDnLb1EEEOT_:
100008cc0: 55                          	pushq	%rbp
100008cc1: 48 89 e5                    	movq	%rsp, %rbp
100008cc4: 48 83 ec 20                 	subq	$32, %rsp
100008cc8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008ccc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008cd0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008cd4: 48 89 c1                    	movq	%rax, %rcx
100008cd7: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008cdb: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100008cdf: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100008ce3: e8 98 eb ff ff              	callq	-5224 <__ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE>
100008ce8: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100008cec: 48 89 c6                    	movq	%rax, %rsi
100008cef: e8 1c 00 00 00              	callq	28 <__ZNSt3__122__compressed_pair_elemIPN9AsmParser8asm_lineELi0ELb0EEC2IDnvEEOT_>
100008cf4: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008cf8: 48 89 c7                    	movq	%rax, %rdi
100008cfb: e8 50 00 00 00              	callq	80 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIN9AsmParser8asm_lineEEELi1ELb1EEC2Ev>
100008d00: 48 83 c4 20                 	addq	$32, %rsp
100008d04: 5d                          	popq	%rbp
100008d05: c3                          	retq
100008d06: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100008d10 __ZNSt3__122__compressed_pair_elemIPN9AsmParser8asm_lineELi0ELb0EEC2IDnvEEOT_:
100008d10: 55                          	pushq	%rbp
100008d11: 48 89 e5                    	movq	%rsp, %rbp
100008d14: 48 83 ec 20                 	subq	$32, %rsp
100008d18: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008d1c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008d20: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008d24: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008d28: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100008d2c: e8 4f eb ff ff              	callq	-5297 <__ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE>
100008d31: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100008d35: 48 c7 01 00 00 00 00        	movq	$0, (%rcx)
100008d3c: 48 83 c4 20                 	addq	$32, %rsp
100008d40: 5d                          	popq	%rbp
100008d41: c3                          	retq
100008d42: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100008d4c: 0f 1f 40 00                 	nopl	(%rax)

0000000100008d50 __ZNSt3__122__compressed_pair_elemINS_9allocatorIN9AsmParser8asm_lineEEELi1ELb1EEC2Ev:
100008d50: 55                          	pushq	%rbp
100008d51: 48 89 e5                    	movq	%rsp, %rbp
100008d54: 48 83 ec 10                 	subq	$16, %rsp
100008d58: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008d5c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008d60: 48 89 c7                    	movq	%rax, %rdi
100008d63: e8 08 00 00 00              	callq	8 <__ZNSt3__19allocatorIN9AsmParser8asm_lineEEC2Ev>
100008d68: 48 83 c4 10                 	addq	$16, %rsp
100008d6c: 5d                          	popq	%rbp
100008d6d: c3                          	retq
100008d6e: 66 90                       	nop

0000000100008d70 __ZNSt3__19allocatorIN9AsmParser8asm_lineEEC2Ev:
100008d70: 55                          	pushq	%rbp
100008d71: 48 89 e5                    	movq	%rsp, %rbp
100008d74: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008d78: 5d                          	popq	%rbp
100008d79: c3                          	retq
100008d7a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100008d80 __ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2Ev:
100008d80: 55                          	pushq	%rbp
100008d81: 48 89 e5                    	movq	%rsp, %rbp
100008d84: 48 83 ec 10                 	subq	$16, %rsp
100008d88: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008d8c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008d90: 48 89 c7                    	movq	%rax, %rdi
100008d93: e8 08 00 00 00              	callq	8 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2Ev>
100008d98: 48 83 c4 10                 	addq	$16, %rsp
100008d9c: 5d                          	popq	%rbp
100008d9d: c3                          	retq
100008d9e: 66 90                       	nop

0000000100008da0 __ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2Ev:
100008da0: 55                          	pushq	%rbp
100008da1: 48 89 e5                    	movq	%rsp, %rbp
100008da4: 48 83 ec 20                 	subq	$32, %rsp
100008da8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008dac: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008db0: 48 89 c7                    	movq	%rax, %rdi
100008db3: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100008db7: e8 14 ea ff ff              	callq	-5612 <__ZNSt3__120__vector_base_commonILb1EEC2Ev>
100008dbc: e9 00 00 00 00              	jmp	0 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2Ev+0x21>
100008dc1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008dc5: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100008dcc: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100008dd4: 48 83 c0 10                 	addq	$16, %rax
100008dd8: 48 c7 45 f0 00 00 00 00     	movq	$0, -16(%rbp)
100008de0: 48 8d 75 f0                 	leaq	-16(%rbp), %rsi
100008de4: 48 89 c7                    	movq	%rax, %rdi
100008de7: e8 24 00 00 00              	callq	36 <__ZNSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEEC1IDnLb1EEEOT_>
100008dec: e9 00 00 00 00              	jmp	0 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2Ev+0x51>
100008df1: 48 83 c4 20                 	addq	$32, %rsp
100008df5: 5d                          	popq	%rbp
100008df6: c3                          	retq
100008df7: 48 89 c7                    	movq	%rax, %rdi
100008dfa: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100008dfe: e8 ed 86 ff ff              	callq	-30995 <___clang_call_terminate>
100008e03: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100008e0d: 0f 1f 00                    	nopl	(%rax)

0000000100008e10 __ZNSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEEC1IDnLb1EEEOT_:
100008e10: 55                          	pushq	%rbp
100008e11: 48 89 e5                    	movq	%rsp, %rbp
100008e14: 48 83 ec 10                 	subq	$16, %rsp
100008e18: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008e1c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008e20: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100008e24: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100008e28: e8 13 00 00 00              	callq	19 <__ZNSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2IDnLb1EEEOT_>
100008e2d: 48 83 c4 10                 	addq	$16, %rsp
100008e31: 5d                          	popq	%rbp
100008e32: c3                          	retq
100008e33: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100008e3d: 0f 1f 00                    	nopl	(%rax)

0000000100008e40 __ZNSt3__117__compressed_pairIPN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2IDnLb1EEEOT_:
100008e40: 55                          	pushq	%rbp
100008e41: 48 89 e5                    	movq	%rsp, %rbp
100008e44: 48 83 ec 20                 	subq	$32, %rsp
100008e48: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008e4c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008e50: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008e54: 48 89 c1                    	movq	%rax, %rcx
100008e57: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008e5b: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100008e5f: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100008e63: e8 18 ea ff ff              	callq	-5608 <__ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE>
100008e68: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100008e6c: 48 89 c6                    	movq	%rax, %rsi
100008e6f: e8 ec f6 ff ff              	callq	-2324 <__ZNSt3__122__compressed_pair_elemIPN9AsmParser9asm_labelELi0ELb0EEC2IDnvEEOT_>
100008e74: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008e78: 48 89 c7                    	movq	%rax, %rdi
100008e7b: e8 10 00 00 00              	callq	16 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIN9AsmParser9asm_labelEEELi1ELb1EEC2Ev>
100008e80: 48 83 c4 20                 	addq	$32, %rsp
100008e84: 5d                          	popq	%rbp
100008e85: c3                          	retq
100008e86: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100008e90 __ZNSt3__122__compressed_pair_elemINS_9allocatorIN9AsmParser9asm_labelEEELi1ELb1EEC2Ev:
100008e90: 55                          	pushq	%rbp
100008e91: 48 89 e5                    	movq	%rsp, %rbp
100008e94: 48 83 ec 10                 	subq	$16, %rsp
100008e98: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008e9c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008ea0: 48 89 c7                    	movq	%rax, %rdi
100008ea3: e8 08 00 00 00              	callq	8 <__ZNSt3__19allocatorIN9AsmParser9asm_labelEEC2Ev>
100008ea8: 48 83 c4 10                 	addq	$16, %rsp
100008eac: 5d                          	popq	%rbp
100008ead: c3                          	retq
100008eae: 66 90                       	nop

0000000100008eb0 __ZNSt3__19allocatorIN9AsmParser9asm_labelEEC2Ev:
100008eb0: 55                          	pushq	%rbp
100008eb1: 48 89 e5                    	movq	%rsp, %rbp
100008eb4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008eb8: 5d                          	popq	%rbp
100008eb9: c3                          	retq
100008eba: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100008ec0 __ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE9__end_capEv:
100008ec0: 55                          	pushq	%rbp
100008ec1: 48 89 e5                    	movq	%rsp, %rbp
100008ec4: 48 83 ec 10                 	subq	$16, %rsp
100008ec8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008ecc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008ed0: 48 05 10 00 00 00           	addq	$16, %rax
100008ed6: 48 89 c7                    	movq	%rax, %rdi
100008ed9: e8 c2 01 00 00              	callq	450 <__ZNSt3__117__compressed_pairIPN9AsmParser8asm_lineENS_9allocatorIS2_EEE5firstEv>
100008ede: 48 83 c4 10                 	addq	$16, %rsp
100008ee2: 5d                          	popq	%rbp
100008ee3: c3                          	retq
100008ee4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100008eee: 66 90                       	nop

0000000100008ef0 __ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE24__RAII_IncreaseAnnotatorC1ERKS5_m:
100008ef0: 55                          	pushq	%rbp
100008ef1: 48 89 e5                    	movq	%rsp, %rbp
100008ef4: 48 83 ec 20                 	subq	$32, %rsp
100008ef8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008efc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008f00: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100008f04: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100008f08: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100008f0c: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100008f10: e8 bb 01 00 00              	callq	443 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE24__RAII_IncreaseAnnotatorC2ERKS5_m>
100008f15: 48 83 c4 20                 	addq	$32, %rsp
100008f19: 5d                          	popq	%rbp
100008f1a: c3                          	retq
100008f1b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100008f20 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_:
100008f20: 55                          	pushq	%rbp
100008f21: 48 89 e5                    	movq	%rsp, %rbp
100008f24: 48 83 ec 40                 	subq	$64, %rsp
100008f28: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008f2c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008f30: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100008f34: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100008f38: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100008f3c: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008f40: 48 89 7d d0                 	movq	%rdi, -48(%rbp)
100008f44: 48 89 c7                    	movq	%rax, %rdi
100008f47: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
100008f4b: e8 f0 01 00 00              	callq	496 <__ZNSt3__1L7forwardIRKN9AsmParser8asm_lineEEEOT_RNS_16remove_referenceIS5_E4typeE>
100008f50: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100008f54: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
100008f58: 48 89 c2                    	movq	%rax, %rdx
100008f5b: e8 90 01 00 00              	callq	400 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE11__constructIS3_JRKS3_EEEvNS_17integral_constantIbLb1EEERS4_PT_DpOT0_>
100008f60: 48 83 c4 40                 	addq	$64, %rsp
100008f64: 5d                          	popq	%rbp
100008f65: c3                          	retq
100008f66: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100008f70 __ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE7__allocEv:
100008f70: 55                          	pushq	%rbp
100008f71: 48 89 e5                    	movq	%rsp, %rbp
100008f74: 48 83 ec 10                 	subq	$16, %rsp
100008f78: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008f7c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008f80: 48 05 10 00 00 00           	addq	$16, %rax
100008f86: 48 89 c7                    	movq	%rax, %rdi
100008f89: e8 02 02 00 00              	callq	514 <__ZNSt3__117__compressed_pairIPN9AsmParser8asm_lineENS_9allocatorIS2_EEE6secondEv>
100008f8e: 48 83 c4 10                 	addq	$16, %rsp
100008f92: 5d                          	popq	%rbp
100008f93: c3                          	retq
100008f94: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100008f9e: 66 90                       	nop

0000000100008fa0 __ZNSt3__1L16__to_raw_pointerIN9AsmParser8asm_lineEEEPT_S4_:
100008fa0: 55                          	pushq	%rbp
100008fa1: 48 89 e5                    	movq	%rsp, %rbp
100008fa4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008fa8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008fac: 5d                          	popq	%rbp
100008fad: c3                          	retq
100008fae: 66 90                       	nop

0000000100008fb0 __ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE24__RAII_IncreaseAnnotator6__doneEv:
100008fb0: 55                          	pushq	%rbp
100008fb1: 48 89 e5                    	movq	%rsp, %rbp
100008fb4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008fb8: 5d                          	popq	%rbp
100008fb9: c3                          	retq
100008fba: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100008fc0 __ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_:
100008fc0: 55                          	pushq	%rbp
100008fc1: 48 89 e5                    	movq	%rsp, %rbp
100008fc4: 48 83 ec 70                 	subq	$112, %rsp
100008fc8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008fcc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008fd0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008fd4: 48 89 c7                    	movq	%rax, %rdi
100008fd7: 48 89 45 a8                 	movq	%rax, -88(%rbp)
100008fdb: e8 90 ff ff ff              	callq	-112 <__ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE7__allocEv>
100008fe0: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100008fe4: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
100008fe8: e8 73 02 00 00              	callq	627 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4sizeEv>
100008fed: 48 ff c0                    	incq	%rax
100008ff0: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
100008ff4: 48 89 c6                    	movq	%rax, %rsi
100008ff7: e8 c4 01 00 00              	callq	452 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE11__recommendEm>
100008ffc: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
100009000: 48 89 45 a0                 	movq	%rax, -96(%rbp)
100009004: e8 57 02 00 00              	callq	599 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4sizeEv>
100009009: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
10000900d: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100009011: 48 8b 75 a0                 	movq	-96(%rbp), %rsi
100009015: 48 89 c2                    	movq	%rax, %rdx
100009018: e8 73 02 00 00              	callq	627 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEEC1EmmS5_>
10000901d: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100009021: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100009025: 48 89 7d 98                 	movq	%rdi, -104(%rbp)
100009029: 48 89 c7                    	movq	%rax, %rdi
10000902c: e8 6f ff ff ff              	callq	-145 <__ZNSt3__1L16__to_raw_pointerIN9AsmParser8asm_lineEEEPT_S4_>
100009031: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100009035: 48 89 45 90                 	movq	%rax, -112(%rbp)
100009039: e8 02 01 00 00              	callq	258 <__ZNSt3__1L7forwardIRKN9AsmParser8asm_lineEEEOT_RNS_16remove_referenceIS5_E4typeE>
10000903e: 48 8b 7d 98                 	movq	-104(%rbp), %rdi
100009042: 48 8b 75 90                 	movq	-112(%rbp), %rsi
100009046: 48 89 c2                    	movq	%rax, %rdx
100009049: e8 d2 fe ff ff              	callq	-302 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE9constructIS3_JRKS3_EEEvRS4_PT_DpOT0_>
10000904e: e9 00 00 00 00              	jmp	0 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_+0x93>
100009053: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100009057: 48 05 88 00 00 00           	addq	$136, %rax
10000905d: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100009061: 48 8d 75 c0                 	leaq	-64(%rbp), %rsi
100009065: 48 8b 7d a8                 	movq	-88(%rbp), %rdi
100009069: e8 b2 24 00 00              	callq	9394 <state.cpp+0x10000b520>
10000906e: e9 00 00 00 00              	jmp	0 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_+0xb3>
100009073: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
100009077: e8 44 03 00 00              	callq	836 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEED1Ev>
10000907c: 48 83 c4 70                 	addq	$112, %rsp
100009080: 5d                          	popq	%rbp
100009081: c3                          	retq
100009082: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100009086: 89 55 b4                    	movl	%edx, -76(%rbp)
100009089: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
10000908d: e8 2e 03 00 00              	callq	814 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEED1Ev>
100009092: 48 8b 7d b8                 	movq	-72(%rbp), %rdi
100009096: e8 83 23 00 00              	callq	9091 <state.cpp+0x10000b41e>
10000909b: 0f 0b                       	ud2
10000909d: 0f 1f 00                    	nopl	(%rax)

00000001000090a0 __ZNSt3__117__compressed_pairIPN9AsmParser8asm_lineENS_9allocatorIS2_EEE5firstEv:
1000090a0: 55                          	pushq	%rbp
1000090a1: 48 89 e5                    	movq	%rsp, %rbp
1000090a4: 48 83 ec 10                 	subq	$16, %rsp
1000090a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000090ac: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000090b0: 48 89 c7                    	movq	%rax, %rdi
1000090b3: e8 08 00 00 00              	callq	8 <__ZNSt3__122__compressed_pair_elemIPN9AsmParser8asm_lineELi0ELb0EE5__getEv>
1000090b8: 48 83 c4 10                 	addq	$16, %rsp
1000090bc: 5d                          	popq	%rbp
1000090bd: c3                          	retq
1000090be: 66 90                       	nop

00000001000090c0 __ZNSt3__122__compressed_pair_elemIPN9AsmParser8asm_lineELi0ELb0EE5__getEv:
1000090c0: 55                          	pushq	%rbp
1000090c1: 48 89 e5                    	movq	%rsp, %rbp
1000090c4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000090c8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000090cc: 5d                          	popq	%rbp
1000090cd: c3                          	retq
1000090ce: 66 90                       	nop

00000001000090d0 __ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE24__RAII_IncreaseAnnotatorC2ERKS5_m:
1000090d0: 55                          	pushq	%rbp
1000090d1: 48 89 e5                    	movq	%rsp, %rbp
1000090d4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000090d8: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000090dc: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000090e0: 5d                          	popq	%rbp
1000090e1: c3                          	retq
1000090e2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000090ec: 0f 1f 40 00                 	nopl	(%rax)

00000001000090f0 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE11__constructIS3_JRKS3_EEEvNS_17integral_constantIbLb1EEERS4_PT_DpOT0_:
1000090f0: 55                          	pushq	%rbp
1000090f1: 48 89 e5                    	movq	%rsp, %rbp
1000090f4: 48 83 ec 30                 	subq	$48, %rsp
1000090f8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
1000090fc: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100009100: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100009104: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100009108: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000910c: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100009110: 48 89 7d d8                 	movq	%rdi, -40(%rbp)
100009114: 48 89 c7                    	movq	%rax, %rdi
100009117: 48 89 75 d0                 	movq	%rsi, -48(%rbp)
10000911b: e8 20 00 00 00              	callq	32 <__ZNSt3__1L7forwardIRKN9AsmParser8asm_lineEEEOT_RNS_16remove_referenceIS5_E4typeE>
100009120: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100009124: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100009128: 48 89 c2                    	movq	%rax, %rdx
10000912b: e8 20 00 00 00              	callq	32 <__ZNSt3__19allocatorIN9AsmParser8asm_lineEE9constructIS2_JRKS2_EEEvPT_DpOT0_>
100009130: 48 83 c4 30                 	addq	$48, %rsp
100009134: 5d                          	popq	%rbp
100009135: c3                          	retq
100009136: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100009140 __ZNSt3__1L7forwardIRKN9AsmParser8asm_lineEEEOT_RNS_16remove_referenceIS5_E4typeE:
100009140: 55                          	pushq	%rbp
100009141: 48 89 e5                    	movq	%rsp, %rbp
100009144: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009148: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000914c: 5d                          	popq	%rbp
10000914d: c3                          	retq
10000914e: 66 90                       	nop

0000000100009150 __ZNSt3__19allocatorIN9AsmParser8asm_lineEE9constructIS2_JRKS2_EEEvPT_DpOT0_:
100009150: 55                          	pushq	%rbp
100009151: 48 89 e5                    	movq	%rsp, %rbp
100009154: 48 83 ec 20                 	subq	$32, %rsp
100009158: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000915c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009160: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009164: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009168: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
10000916c: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100009170: e8 cb ff ff ff              	callq	-53 <__ZNSt3__1L7forwardIRKN9AsmParser8asm_lineEEEOT_RNS_16remove_referenceIS5_E4typeE>
100009175: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100009179: 48 89 c6                    	movq	%rax, %rsi
10000917c: e8 bf d0 ff ff              	callq	-12097 <__ZN9AsmParser8asm_lineC1ERKS0_>
100009181: 48 83 c4 20                 	addq	$32, %rsp
100009185: 5d                          	popq	%rbp
100009186: c3                          	retq
100009187: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100009190 __ZNSt3__117__compressed_pairIPN9AsmParser8asm_lineENS_9allocatorIS2_EEE6secondEv:
100009190: 55                          	pushq	%rbp
100009191: 48 89 e5                    	movq	%rsp, %rbp
100009194: 48 83 ec 10                 	subq	$16, %rsp
100009198: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000919c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000091a0: 48 89 c7                    	movq	%rax, %rdi
1000091a3: e8 08 00 00 00              	callq	8 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIN9AsmParser8asm_lineEEELi1ELb1EE5__getEv>
1000091a8: 48 83 c4 10                 	addq	$16, %rsp
1000091ac: 5d                          	popq	%rbp
1000091ad: c3                          	retq
1000091ae: 66 90                       	nop

00000001000091b0 __ZNSt3__122__compressed_pair_elemINS_9allocatorIN9AsmParser8asm_lineEEELi1ELb1EE5__getEv:
1000091b0: 55                          	pushq	%rbp
1000091b1: 48 89 e5                    	movq	%rsp, %rbp
1000091b4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000091b8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000091bc: 5d                          	popq	%rbp
1000091bd: c3                          	retq
1000091be: 66 90                       	nop

00000001000091c0 __ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE11__recommendEm:
1000091c0: 55                          	pushq	%rbp
1000091c1: 48 89 e5                    	movq	%rsp, %rbp
1000091c4: 48 83 ec 40                 	subq	$64, %rsp
1000091c8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
1000091cc: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
1000091d0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000091d4: 48 89 c7                    	movq	%rax, %rdi
1000091d7: 48 89 45 c8                 	movq	%rax, -56(%rbp)
1000091db: e8 56 22 00 00              	callq	8790 <state.cpp+0x10000b436>
1000091e0: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000091e4: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000091e8: 48 3b 45 e0                 	cmpq	-32(%rbp), %rax
1000091ec: 0f 86 09 00 00 00           	jbe	9 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE11__recommendEm+0x3b>
1000091f2: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
1000091f6: e8 29 22 00 00              	callq	8745 <state.cpp+0x10000b424>
1000091fb: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
1000091ff: e8 3c 02 00 00              	callq	572 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE8capacityEv>
100009204: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100009208: 48 8b 45 d8                 	movq	-40(%rbp), %rax
10000920c: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100009210: 48 c1 e9 01                 	shrq	$1, %rcx
100009214: 48 39 c8                    	cmpq	%rcx, %rax
100009217: 0f 82 0d 00 00 00           	jb	13 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE11__recommendEm+0x6a>
10000921d: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100009221: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100009225: e9 20 00 00 00              	jmp	32 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE11__recommendEm+0x8a>
10000922a: 48 8b 45 d8                 	movq	-40(%rbp), %rax
10000922e: 48 c1 e0 01                 	shlq	$1, %rax
100009232: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100009236: 48 8d 7d d0                 	leaq	-48(%rbp), %rdi
10000923a: 48 8d 75 e8                 	leaq	-24(%rbp), %rsi
10000923e: e8 1d 02 00 00              	callq	541 <__ZNSt3__1L3maxImEERKT_S3_S3_>
100009243: 48 8b 00                    	movq	(%rax), %rax
100009246: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000924a: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000924e: 48 83 c4 40                 	addq	$64, %rsp
100009252: 5d                          	popq	%rbp
100009253: c3                          	retq
100009254: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000925e: 66 90                       	nop

0000000100009260 __ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4sizeEv:
100009260: 55                          	pushq	%rbp
100009261: 48 89 e5                    	movq	%rsp, %rbp
100009264: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009268: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000926c: 48 8b 48 08                 	movq	8(%rax), %rcx
100009270: 48 8b 00                    	movq	(%rax), %rax
100009273: 48 29 c1                    	subq	%rax, %rcx
100009276: 48 89 c8                    	movq	%rcx, %rax
100009279: 48 99                       	cqto
10000927b: b9 88 00 00 00              	movl	$136, %ecx
100009280: 48 f7 f9                    	idivq	%rcx
100009283: 5d                          	popq	%rbp
100009284: c3                          	retq
100009285: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000928f: 90                          	nop

0000000100009290 __ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEEC1EmmS5_:
100009290: 55                          	pushq	%rbp
100009291: 48 89 e5                    	movq	%rsp, %rbp
100009294: 48 83 ec 20                 	subq	$32, %rsp
100009298: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000929c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000092a0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000092a4: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
1000092a8: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000092ac: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000092b0: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000092b4: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
1000092b8: e8 83 03 00 00              	callq	899 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEEC2EmmS5_>
1000092bd: 48 83 c4 20                 	addq	$32, %rsp
1000092c1: 5d                          	popq	%rbp
1000092c2: c3                          	retq
1000092c3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000092cd: 0f 1f 00                    	nopl	(%rax)

00000001000092d0 __ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE:
1000092d0: 55                          	pushq	%rbp
1000092d1: 48 89 e5                    	movq	%rsp, %rbp
1000092d4: 48 83 ec 30                 	subq	$48, %rsp
1000092d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000092dc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000092e0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000092e4: 48 89 c7                    	movq	%rax, %rdi
1000092e7: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000092eb: e8 50 06 00 00              	callq	1616 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE17__annotate_deleteEv>
1000092f0: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000092f4: 48 89 c7                    	movq	%rax, %rdi
1000092f7: e8 74 fc ff ff              	callq	-908 <__ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE7__allocEv>
1000092fc: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100009300: 48 8b 31                    	movq	(%rcx), %rsi
100009303: 48 8b 51 08                 	movq	8(%rcx), %rdx
100009307: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000930b: 48 81 c7 08 00 00 00        	addq	$8, %rdi
100009312: 48 89 7d e0                 	movq	%rdi, -32(%rbp)
100009316: 48 89 c7                    	movq	%rax, %rdi
100009319: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000931d: e8 de 06 00 00              	callq	1758 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE20__construct_backwardIPS3_EEvRS4_T_S9_RS9_>
100009322: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009326: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000932a: 48 81 c1 08 00 00 00        	addq	$8, %rcx
100009331: 48 89 c7                    	movq	%rax, %rdi
100009334: 48 89 ce                    	movq	%rcx, %rsi
100009337: e8 54 07 00 00              	callq	1876 <__ZNSt3__1L4swapIPN9AsmParser8asm_lineEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_>
10000933c: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009340: 48 05 08 00 00 00           	addq	$8, %rax
100009346: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000934a: 48 81 c1 10 00 00 00        	addq	$16, %rcx
100009351: 48 89 c7                    	movq	%rax, %rdi
100009354: 48 89 ce                    	movq	%rcx, %rsi
100009357: e8 34 07 00 00              	callq	1844 <__ZNSt3__1L4swapIPN9AsmParser8asm_lineEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_>
10000935c: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009360: 48 89 c7                    	movq	%rax, %rdi
100009363: e8 58 fb ff ff              	callq	-1192 <__ZNSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE9__end_capEv>
100009368: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000936c: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100009370: e8 1b 04 00 00              	callq	1051 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE9__end_capEv>
100009375: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100009379: 48 89 c6                    	movq	%rax, %rsi
10000937c: e8 0f 07 00 00              	callq	1807 <__ZNSt3__1L4swapIPN9AsmParser8asm_lineEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_>
100009381: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009385: 48 8b 40 08                 	movq	8(%rax), %rax
100009389: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000938d: 48 89 01                    	movq	%rax, (%rcx)
100009390: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100009394: e8 c7 fe ff ff              	callq	-313 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4sizeEv>
100009399: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
10000939d: 48 89 c6                    	movq	%rax, %rsi
1000093a0: e8 3b 07 00 00              	callq	1851 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE14__annotate_newEm>
1000093a5: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000093a9: e8 e2 07 00 00              	callq	2018 <__ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE26__invalidate_all_iteratorsEv>
1000093ae: 48 83 c4 30                 	addq	$48, %rsp
1000093b2: 5d                          	popq	%rbp
1000093b3: c3                          	retq
1000093b4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000093be: 66 90                       	nop

00000001000093c0 __ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEED1Ev:
1000093c0: 55                          	pushq	%rbp
1000093c1: 48 89 e5                    	movq	%rsp, %rbp
1000093c4: 48 83 ec 10                 	subq	$16, %rsp
1000093c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000093cc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000093d0: e8 3b 11 00 00              	callq	4411 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEED2Ev>
1000093d5: 48 83 c4 10                 	addq	$16, %rsp
1000093d9: 5d                          	popq	%rbp
1000093da: c3                          	retq
1000093db: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000093e0 __ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE8max_sizeEv:
1000093e0: 55                          	pushq	%rbp
1000093e1: 48 89 e5                    	movq	%rsp, %rbp
1000093e4: 48 83 ec 30                 	subq	$48, %rsp
1000093e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000093ec: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000093f0: e8 bb 00 00 00              	callq	187 <__ZNKSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE7__allocEv>
1000093f5: 48 89 c7                    	movq	%rax, %rdi
1000093f8: e8 93 00 00 00              	callq	147 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE8max_sizeERKS4_>
1000093fd: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100009401: e8 ba e6 ff ff              	callq	-6470 <__ZNSt3__114numeric_limitsIlE3maxEv>
100009406: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000940a: 48 8d 7d f0                 	leaq	-16(%rbp), %rdi
10000940e: 48 8d 75 e8                 	leaq	-24(%rbp), %rsi
100009412: e8 59 e6 ff ff              	callq	-6567 <__ZNSt3__1L3minImEERKT_S3_S3_>
100009417: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000941b: e9 00 00 00 00              	jmp	0 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE8max_sizeEv+0x40>
100009420: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100009424: 48 8b 00                    	movq	(%rax), %rax
100009427: 48 83 c4 30                 	addq	$48, %rsp
10000942b: 5d                          	popq	%rbp
10000942c: c3                          	retq
10000942d: 48 89 c7                    	movq	%rax, %rdi
100009430: 48 89 55 d8                 	movq	%rdx, -40(%rbp)
100009434: e8 b7 80 ff ff              	callq	-32585 <___clang_call_terminate>
100009439: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100009440 __ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE8capacityEv:
100009440: 55                          	pushq	%rbp
100009441: 48 89 e5                    	movq	%rsp, %rbp
100009444: 48 83 ec 10                 	subq	$16, %rsp
100009448: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000944c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009450: 48 89 c7                    	movq	%rax, %rdi
100009453: e8 f8 00 00 00              	callq	248 <__ZNKSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE8capacityEv>
100009458: 48 83 c4 10                 	addq	$16, %rsp
10000945c: 5d                          	popq	%rbp
10000945d: c3                          	retq
10000945e: 66 90                       	nop

0000000100009460 __ZNSt3__1L3maxImEERKT_S3_S3_:
100009460: 55                          	pushq	%rbp
100009461: 48 89 e5                    	movq	%rsp, %rbp
100009464: 48 83 ec 20                 	subq	$32, %rsp
100009468: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000946c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009470: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100009474: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100009478: e8 73 01 00 00              	callq	371 <__ZNSt3__1L3maxImNS_6__lessImmEEEERKT_S5_S5_T0_>
10000947d: 48 83 c4 20                 	addq	$32, %rsp
100009481: 5d                          	popq	%rbp
100009482: c3                          	retq
100009483: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000948d: 0f 1f 00                    	nopl	(%rax)

0000000100009490 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE8max_sizeERKS4_:
100009490: 55                          	pushq	%rbp
100009491: 48 89 e5                    	movq	%rsp, %rbp
100009494: 48 83 ec 20                 	subq	$32, %rsp
100009498: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000949c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000094a0: e8 3b 00 00 00              	callq	59 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE10__max_sizeENS_17integral_constantIbLb1EEERKS4_>
1000094a5: 48 83 c4 20                 	addq	$32, %rsp
1000094a9: 5d                          	popq	%rbp
1000094aa: c3                          	retq
1000094ab: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000094b0 __ZNKSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE7__allocEv:
1000094b0: 55                          	pushq	%rbp
1000094b1: 48 89 e5                    	movq	%rsp, %rbp
1000094b4: 48 83 ec 10                 	subq	$16, %rsp
1000094b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000094bc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000094c0: 48 05 10 00 00 00           	addq	$16, %rax
1000094c6: 48 89 c7                    	movq	%rax, %rdi
1000094c9: e8 52 00 00 00              	callq	82 <__ZNKSt3__117__compressed_pairIPN9AsmParser8asm_lineENS_9allocatorIS2_EEE6secondEv>
1000094ce: 48 83 c4 10                 	addq	$16, %rsp
1000094d2: 5d                          	popq	%rbp
1000094d3: c3                          	retq
1000094d4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000094de: 66 90                       	nop

00000001000094e0 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE10__max_sizeENS_17integral_constantIbLb1EEERKS4_:
1000094e0: 55                          	pushq	%rbp
1000094e1: 48 89 e5                    	movq	%rsp, %rbp
1000094e4: 48 83 ec 10                 	subq	$16, %rsp
1000094e8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
1000094ec: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000094f0: e8 0b 00 00 00              	callq	11 <__ZNKSt3__19allocatorIN9AsmParser8asm_lineEE8max_sizeEv>
1000094f5: 48 83 c4 10                 	addq	$16, %rsp
1000094f9: 5d                          	popq	%rbp
1000094fa: c3                          	retq
1000094fb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100009500 __ZNKSt3__19allocatorIN9AsmParser8asm_lineEE8max_sizeEv:
100009500: 55                          	pushq	%rbp
100009501: 48 89 e5                    	movq	%rsp, %rbp
100009504: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009508: 48 b8 e1 e1 e1 e1 e1 e1 e1 01       	movabsq	$135637824071393761, %rax
100009512: 5d                          	popq	%rbp
100009513: c3                          	retq
100009514: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000951e: 66 90                       	nop

0000000100009520 __ZNKSt3__117__compressed_pairIPN9AsmParser8asm_lineENS_9allocatorIS2_EEE6secondEv:
100009520: 55                          	pushq	%rbp
100009521: 48 89 e5                    	movq	%rsp, %rbp
100009524: 48 83 ec 10                 	subq	$16, %rsp
100009528: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000952c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009530: 48 89 c7                    	movq	%rax, %rdi
100009533: e8 08 00 00 00              	callq	8 <__ZNKSt3__122__compressed_pair_elemINS_9allocatorIN9AsmParser8asm_lineEEELi1ELb1EE5__getEv>
100009538: 48 83 c4 10                 	addq	$16, %rsp
10000953c: 5d                          	popq	%rbp
10000953d: c3                          	retq
10000953e: 66 90                       	nop

0000000100009540 __ZNKSt3__122__compressed_pair_elemINS_9allocatorIN9AsmParser8asm_lineEEELi1ELb1EE5__getEv:
100009540: 55                          	pushq	%rbp
100009541: 48 89 e5                    	movq	%rsp, %rbp
100009544: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009548: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000954c: 5d                          	popq	%rbp
10000954d: c3                          	retq
10000954e: 66 90                       	nop

0000000100009550 __ZNKSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE8capacityEv:
100009550: 55                          	pushq	%rbp
100009551: 48 89 e5                    	movq	%rsp, %rbp
100009554: 48 83 ec 10                 	subq	$16, %rsp
100009558: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000955c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009560: 48 89 c7                    	movq	%rax, %rdi
100009563: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100009567: e8 24 00 00 00              	callq	36 <__ZNKSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE9__end_capEv>
10000956c: 48 8b 00                    	movq	(%rax), %rax
10000956f: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100009573: 48 8b 11                    	movq	(%rcx), %rdx
100009576: 48 29 d0                    	subq	%rdx, %rax
100009579: 48 99                       	cqto
10000957b: be 88 00 00 00              	movl	$136, %esi
100009580: 48 f7 fe                    	idivq	%rsi
100009583: 48 83 c4 10                 	addq	$16, %rsp
100009587: 5d                          	popq	%rbp
100009588: c3                          	retq
100009589: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100009590 __ZNKSt3__113__vector_baseIN9AsmParser8asm_lineENS_9allocatorIS2_EEE9__end_capEv:
100009590: 55                          	pushq	%rbp
100009591: 48 89 e5                    	movq	%rsp, %rbp
100009594: 48 83 ec 10                 	subq	$16, %rsp
100009598: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000959c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000095a0: 48 05 10 00 00 00           	addq	$16, %rax
1000095a6: 48 89 c7                    	movq	%rax, %rdi
1000095a9: e8 12 00 00 00              	callq	18 <__ZNKSt3__117__compressed_pairIPN9AsmParser8asm_lineENS_9allocatorIS2_EEE5firstEv>
1000095ae: 48 83 c4 10                 	addq	$16, %rsp
1000095b2: 5d                          	popq	%rbp
1000095b3: c3                          	retq
1000095b4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000095be: 66 90                       	nop

00000001000095c0 __ZNKSt3__117__compressed_pairIPN9AsmParser8asm_lineENS_9allocatorIS2_EEE5firstEv:
1000095c0: 55                          	pushq	%rbp
1000095c1: 48 89 e5                    	movq	%rsp, %rbp
1000095c4: 48 83 ec 10                 	subq	$16, %rsp
1000095c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000095cc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000095d0: 48 89 c7                    	movq	%rax, %rdi
1000095d3: e8 08 00 00 00              	callq	8 <__ZNKSt3__122__compressed_pair_elemIPN9AsmParser8asm_lineELi0ELb0EE5__getEv>
1000095d8: 48 83 c4 10                 	addq	$16, %rsp
1000095dc: 5d                          	popq	%rbp
1000095dd: c3                          	retq
1000095de: 66 90                       	nop

00000001000095e0 __ZNKSt3__122__compressed_pair_elemIPN9AsmParser8asm_lineELi0ELb0EE5__getEv:
1000095e0: 55                          	pushq	%rbp
1000095e1: 48 89 e5                    	movq	%rsp, %rbp
1000095e4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000095e8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000095ec: 5d                          	popq	%rbp
1000095ed: c3                          	retq
1000095ee: 66 90                       	nop

00000001000095f0 __ZNSt3__1L3maxImNS_6__lessImmEEEERKT_S5_S5_T0_:
1000095f0: 55                          	pushq	%rbp
1000095f1: 48 89 e5                    	movq	%rsp, %rbp
1000095f4: 48 83 ec 20                 	subq	$32, %rsp
1000095f8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
1000095fc: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100009600: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100009604: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100009608: 48 8d 7d f8                 	leaq	-8(%rbp), %rdi
10000960c: e8 0f e5 ff ff              	callq	-6897 <__ZNKSt3__16__lessImmEclERKmS3_>
100009611: a8 01                       	testb	$1, %al
100009613: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__1L3maxImNS_6__lessImmEEEERKT_S5_S5_T0_+0x2e>
100009619: e9 0d 00 00 00              	jmp	13 <__ZNSt3__1L3maxImNS_6__lessImmEEEERKT_S5_S5_T0_+0x3b>
10000961e: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009622: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100009626: e9 08 00 00 00              	jmp	8 <__ZNSt3__1L3maxImNS_6__lessImmEEEERKT_S5_S5_T0_+0x43>
10000962b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000962f: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100009633: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100009637: 48 83 c4 20                 	addq	$32, %rsp
10000963b: 5d                          	popq	%rbp
10000963c: c3                          	retq
10000963d: 0f 1f 00                    	nopl	(%rax)

0000000100009640 __ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEEC2EmmS5_:
100009640: 55                          	pushq	%rbp
100009641: 48 89 e5                    	movq	%rsp, %rbp
100009644: 48 83 ec 40                 	subq	$64, %rsp
100009648: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000964c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009650: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009654: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100009658: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000965c: 48 89 c1                    	movq	%rax, %rcx
10000965f: 48 81 c1 18 00 00 00        	addq	$24, %rcx
100009666: 48 c7 45 d8 00 00 00 00     	movq	$0, -40(%rbp)
10000966e: 48 8b 55 e0                 	movq	-32(%rbp), %rdx
100009672: 48 89 cf                    	movq	%rcx, %rdi
100009675: 48 8d 75 d8                 	leaq	-40(%rbp), %rsi
100009679: 48 89 45 d0                 	movq	%rax, -48(%rbp)
10000967d: e8 7e 00 00 00              	callq	126 <__ZNSt3__117__compressed_pairIPN9AsmParser8asm_lineERNS_9allocatorIS2_EEEC1IDnS6_EEOT_OT0_>
100009682: 48 83 7d f0 00              	cmpq	$0, -16(%rbp)
100009687: 0f 84 1e 00 00 00           	je	30 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEEC2EmmS5_+0x6b>
10000968d: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100009691: e8 ca 00 00 00              	callq	202 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE7__allocEv>
100009696: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000969a: 48 89 c7                    	movq	%rax, %rdi
10000969d: e8 8e 00 00 00              	callq	142 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE8allocateERS4_m>
1000096a2: 48 89 45 c8                 	movq	%rax, -56(%rbp)
1000096a6: e9 0d 00 00 00              	jmp	13 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEEC2EmmS5_+0x78>
1000096ab: 31 c0                       	xorl	%eax, %eax
1000096ad: 89 c1                       	movl	%eax, %ecx
1000096af: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
1000096b3: e9 00 00 00 00              	jmp	0 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEEC2EmmS5_+0x78>
1000096b8: 48 8b 45 c8                 	movq	-56(%rbp), %rax
1000096bc: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
1000096c0: 48 89 01                    	movq	%rax, (%rcx)
1000096c3: 48 8b 01                    	movq	(%rcx), %rax
1000096c6: 48 69 55 e8 88 00 00 00     	imulq	$136, -24(%rbp), %rdx
1000096ce: 48 01 d0                    	addq	%rdx, %rax
1000096d1: 48 89 41 10                 	movq	%rax, 16(%rcx)
1000096d5: 48 89 41 08                 	movq	%rax, 8(%rcx)
1000096d9: 48 8b 01                    	movq	(%rcx), %rax
1000096dc: 48 69 55 f0 88 00 00 00     	imulq	$136, -16(%rbp), %rdx
1000096e4: 48 01 d0                    	addq	%rdx, %rax
1000096e7: 48 89 cf                    	movq	%rcx, %rdi
1000096ea: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000096ee: e8 9d 00 00 00              	callq	157 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE9__end_capEv>
1000096f3: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
1000096f7: 48 89 08                    	movq	%rcx, (%rax)
1000096fa: 48 83 c4 40                 	addq	$64, %rsp
1000096fe: 5d                          	popq	%rbp
1000096ff: c3                          	retq

0000000100009700 __ZNSt3__117__compressed_pairIPN9AsmParser8asm_lineERNS_9allocatorIS2_EEEC1IDnS6_EEOT_OT0_:
100009700: 55                          	pushq	%rbp
100009701: 48 89 e5                    	movq	%rsp, %rbp
100009704: 48 83 ec 20                 	subq	$32, %rsp
100009708: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000970c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009710: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009714: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100009718: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000971c: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100009720: e8 9b 00 00 00              	callq	155 <__ZNSt3__117__compressed_pairIPN9AsmParser8asm_lineERNS_9allocatorIS2_EEEC2IDnS6_EEOT_OT0_>
100009725: 48 83 c4 20                 	addq	$32, %rsp
100009729: 5d                          	popq	%rbp
10000972a: c3                          	retq
10000972b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100009730 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE8allocateERS4_m:
100009730: 55                          	pushq	%rbp
100009731: 48 89 e5                    	movq	%rsp, %rbp
100009734: 48 83 ec 10                 	subq	$16, %rsp
100009738: 31 c0                       	xorl	%eax, %eax
10000973a: 89 c2                       	movl	%eax, %edx
10000973c: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009740: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009744: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100009748: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000974c: e8 1f 01 00 00              	callq	287 <__ZNSt3__19allocatorIN9AsmParser8asm_lineEE8allocateEmPKv>
100009751: 48 83 c4 10                 	addq	$16, %rsp
100009755: 5d                          	popq	%rbp
100009756: c3                          	retq
100009757: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100009760 __ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE7__allocEv:
100009760: 55                          	pushq	%rbp
100009761: 48 89 e5                    	movq	%rsp, %rbp
100009764: 48 83 ec 10                 	subq	$16, %rsp
100009768: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000976c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009770: 48 05 18 00 00 00           	addq	$24, %rax
100009776: 48 89 c7                    	movq	%rax, %rdi
100009779: e8 52 01 00 00              	callq	338 <__ZNSt3__117__compressed_pairIPN9AsmParser8asm_lineERNS_9allocatorIS2_EEE6secondEv>
10000977e: 48 83 c4 10                 	addq	$16, %rsp
100009782: 5d                          	popq	%rbp
100009783: c3                          	retq
100009784: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000978e: 66 90                       	nop

0000000100009790 __ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE9__end_capEv:
100009790: 55                          	pushq	%rbp
100009791: 48 89 e5                    	movq	%rsp, %rbp
100009794: 48 83 ec 10                 	subq	$16, %rsp
100009798: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000979c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000097a0: 48 05 18 00 00 00           	addq	$24, %rax
1000097a6: 48 89 c7                    	movq	%rax, %rdi
1000097a9: e8 72 01 00 00              	callq	370 <__ZNSt3__117__compressed_pairIPN9AsmParser8asm_lineERNS_9allocatorIS2_EEE5firstEv>
1000097ae: 48 83 c4 10                 	addq	$16, %rsp
1000097b2: 5d                          	popq	%rbp
1000097b3: c3                          	retq
1000097b4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000097be: 66 90                       	nop

00000001000097c0 __ZNSt3__117__compressed_pairIPN9AsmParser8asm_lineERNS_9allocatorIS2_EEEC2IDnS6_EEOT_OT0_:
1000097c0: 55                          	pushq	%rbp
1000097c1: 48 89 e5                    	movq	%rsp, %rbp
1000097c4: 48 83 ec 30                 	subq	$48, %rsp
1000097c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000097cc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000097d0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000097d4: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000097d8: 48 89 c1                    	movq	%rax, %rcx
1000097db: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000097df: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000097e3: 48 89 4d d8                 	movq	%rcx, -40(%rbp)
1000097e7: e8 94 e0 ff ff              	callq	-8044 <__ZNSt3__1L7forwardIDnEEOT_RNS_16remove_referenceIS1_E4typeE>
1000097ec: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
1000097f0: 48 89 c6                    	movq	%rax, %rsi
1000097f3: e8 18 f5 ff ff              	callq	-2792 <__ZNSt3__122__compressed_pair_elemIPN9AsmParser8asm_lineELi0ELb0EEC2IDnvEEOT_>
1000097f8: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000097fc: 48 05 08 00 00 00           	addq	$8, %rax
100009802: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100009806: 48 89 45 d0                 	movq	%rax, -48(%rbp)
10000980a: e8 21 00 00 00              	callq	33 <__ZNSt3__1L7forwardIRNS_9allocatorIN9AsmParser8asm_lineEEEEEOT_RNS_16remove_referenceIS6_E4typeE>
10000980f: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100009813: 48 89 c6                    	movq	%rax, %rsi
100009816: e8 25 00 00 00              	callq	37 <__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIN9AsmParser8asm_lineEEELi1ELb0EEC2IS5_vEEOT_>
10000981b: 48 83 c4 30                 	addq	$48, %rsp
10000981f: 5d                          	popq	%rbp
100009820: c3                          	retq
100009821: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000982b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100009830 __ZNSt3__1L7forwardIRNS_9allocatorIN9AsmParser8asm_lineEEEEEOT_RNS_16remove_referenceIS6_E4typeE:
100009830: 55                          	pushq	%rbp
100009831: 48 89 e5                    	movq	%rsp, %rbp
100009834: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009838: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000983c: 5d                          	popq	%rbp
10000983d: c3                          	retq
10000983e: 66 90                       	nop

0000000100009840 __ZNSt3__122__compressed_pair_elemIRNS_9allocatorIN9AsmParser8asm_lineEEELi1ELb0EEC2IS5_vEEOT_:
100009840: 55                          	pushq	%rbp
100009841: 48 89 e5                    	movq	%rsp, %rbp
100009844: 48 83 ec 20                 	subq	$32, %rsp
100009848: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000984c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009850: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009854: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100009858: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000985c: e8 cf ff ff ff              	callq	-49 <__ZNSt3__1L7forwardIRNS_9allocatorIN9AsmParser8asm_lineEEEEEOT_RNS_16remove_referenceIS6_E4typeE>
100009861: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100009865: 48 89 01                    	movq	%rax, (%rcx)
100009868: 48 83 c4 20                 	addq	$32, %rsp
10000986c: 5d                          	popq	%rbp
10000986d: c3                          	retq
10000986e: 66 90                       	nop

0000000100009870 __ZNSt3__19allocatorIN9AsmParser8asm_lineEE8allocateEmPKv:
100009870: 55                          	pushq	%rbp
100009871: 48 89 e5                    	movq	%rsp, %rbp
100009874: 48 83 ec 20                 	subq	$32, %rsp
100009878: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000987c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009880: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009884: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100009888: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000988c: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100009890: e8 6b fc ff ff              	callq	-917 <__ZNKSt3__19allocatorIN9AsmParser8asm_lineEE8max_sizeEv>
100009895: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100009899: 48 39 c1                    	cmpq	%rax, %rcx
10000989c: 0f 86 0c 00 00 00           	jbe	12 <__ZNSt3__19allocatorIN9AsmParser8asm_lineEE8allocateEmPKv+0x3e>
1000098a2: 48 8d 3d 79 23 00 00        	leaq	9081(%rip), %rdi
1000098a9: e8 52 e3 ff ff              	callq	-7342 <__ZNSt3__1L20__throw_length_errorEPKc>
1000098ae: 48 69 7d f0 88 00 00 00     	imulq	$136, -16(%rbp), %rdi
1000098b6: be 08 00 00 00              	movl	$8, %esi
1000098bb: e8 a0 e3 ff ff              	callq	-7264 <__ZNSt3__1L17__libcpp_allocateEmm>
1000098c0: 48 83 c4 20                 	addq	$32, %rsp
1000098c4: 5d                          	popq	%rbp
1000098c5: c3                          	retq
1000098c6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

00000001000098d0 __ZNSt3__117__compressed_pairIPN9AsmParser8asm_lineERNS_9allocatorIS2_EEE6secondEv:
1000098d0: 55                          	pushq	%rbp
1000098d1: 48 89 e5                    	movq	%rsp, %rbp
1000098d4: 48 83 ec 10                 	subq	$16, %rsp
1000098d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000098dc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000098e0: 48 05 08 00 00 00           	addq	$8, %rax
1000098e6: 48 89 c7                    	movq	%rax, %rdi
1000098e9: e8 12 00 00 00              	callq	18 <__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIN9AsmParser8asm_lineEEELi1ELb0EE5__getEv>
1000098ee: 48 83 c4 10                 	addq	$16, %rsp
1000098f2: 5d                          	popq	%rbp
1000098f3: c3                          	retq
1000098f4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
1000098fe: 66 90                       	nop

0000000100009900 __ZNSt3__122__compressed_pair_elemIRNS_9allocatorIN9AsmParser8asm_lineEEELi1ELb0EE5__getEv:
100009900: 55                          	pushq	%rbp
100009901: 48 89 e5                    	movq	%rsp, %rbp
100009904: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009908: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000990c: 48 8b 00                    	movq	(%rax), %rax
10000990f: 5d                          	popq	%rbp
100009910: c3                          	retq
100009911: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000991b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100009920 __ZNSt3__117__compressed_pairIPN9AsmParser8asm_lineERNS_9allocatorIS2_EEE5firstEv:
100009920: 55                          	pushq	%rbp
100009921: 48 89 e5                    	movq	%rsp, %rbp
100009924: 48 83 ec 10                 	subq	$16, %rsp
100009928: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000992c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009930: 48 89 c7                    	movq	%rax, %rdi
100009933: e8 88 f7 ff ff              	callq	-2168 <__ZNSt3__122__compressed_pair_elemIPN9AsmParser8asm_lineELi0ELb0EE5__getEv>
100009938: 48 83 c4 10                 	addq	$16, %rsp
10000993c: 5d                          	popq	%rbp
10000993d: c3                          	retq
10000993e: 66 90                       	nop

0000000100009940 __ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE17__annotate_deleteEv:
100009940: 55                          	pushq	%rbp
100009941: 48 89 e5                    	movq	%rsp, %rbp
100009944: 48 83 ec 50                 	subq	$80, %rsp
100009948: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000994c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009950: 48 89 c7                    	movq	%rax, %rdi
100009953: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100009957: e8 64 02 00 00              	callq	612 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4dataEv>
10000995c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100009960: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100009964: e8 57 02 00 00              	callq	599 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4dataEv>
100009969: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000996d: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100009971: e8 ca fa ff ff              	callq	-1334 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE8capacityEv>
100009976: 48 69 c0 88 00 00 00        	imulq	$136, %rax, %rax
10000997d: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100009981: 48 01 c1                    	addq	%rax, %rcx
100009984: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100009988: 48 89 4d d8                 	movq	%rcx, -40(%rbp)
10000998c: e8 2f 02 00 00              	callq	559 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4dataEv>
100009991: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100009995: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100009999: e8 c2 f8 ff ff              	callq	-1854 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4sizeEv>
10000999e: 48 69 c0 88 00 00 00        	imulq	$136, %rax, %rax
1000099a5: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
1000099a9: 48 01 c1                    	addq	%rax, %rcx
1000099ac: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000099b0: 48 89 4d c8                 	movq	%rcx, -56(%rbp)
1000099b4: e8 07 02 00 00              	callq	519 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4dataEv>
1000099b9: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000099bd: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000099c1: e8 7a fa ff ff              	callq	-1414 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE8capacityEv>
1000099c6: 48 69 c0 88 00 00 00        	imulq	$136, %rax, %rax
1000099cd: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
1000099d1: 48 01 c1                    	addq	%rax, %rcx
1000099d4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000099d8: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000099dc: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
1000099e0: 48 8b 45 c8                 	movq	-56(%rbp), %rax
1000099e4: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
1000099e8: 48 89 c1                    	movq	%rax, %rcx
1000099eb: 4c 8b 45 b8                 	movq	-72(%rbp), %r8
1000099ef: e8 ac 01 00 00              	callq	428 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE31__annotate_contiguous_containerEPKvS7_S7_S7_>
1000099f4: 48 83 c4 50                 	addq	$80, %rsp
1000099f8: 5d                          	popq	%rbp
1000099f9: c3                          	retq
1000099fa: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100009a00 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE20__construct_backwardIPS3_EEvRS4_T_S9_RS9_:
100009a00: 55                          	pushq	%rbp
100009a01: 48 89 e5                    	movq	%rsp, %rbp
100009a04: 48 83 ec 30                 	subq	$48, %rsp
100009a08: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009a0c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009a10: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009a14: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100009a18: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009a1c: 48 3b 45 f0                 	cmpq	-16(%rbp), %rax
100009a20: 0f 84 5e 00 00 00           	je	94 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE20__construct_backwardIPS3_EEvRS4_T_S9_RS9_+0x84>
100009a26: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100009a2a: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100009a2e: 48 8b 00                    	movq	(%rax), %rax
100009a31: 48 05 78 ff ff ff           	addq	$-136, %rax
100009a37: 48 89 7d d8                 	movq	%rdi, -40(%rbp)
100009a3b: 48 89 c7                    	movq	%rax, %rdi
100009a3e: e8 5d f5 ff ff              	callq	-2723 <__ZNSt3__1L16__to_raw_pointerIN9AsmParser8asm_lineEEEPT_S4_>
100009a43: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100009a47: 48 81 c1 78 ff ff ff        	addq	$-136, %rcx
100009a4e: 48 89 4d e8                 	movq	%rcx, -24(%rbp)
100009a52: 48 89 cf                    	movq	%rcx, %rdi
100009a55: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100009a59: e8 d2 01 00 00              	callq	466 <__ZNSt3__1L16move_if_noexceptIN9AsmParser8asm_lineEEENS_11conditionalIXaantsr29is_nothrow_move_constructibleIT_EE5valuesr21is_copy_constructibleIS4_EE5valueERKS4_OS4_E4typeERS4_>
100009a5e: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100009a62: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100009a66: 48 89 c2                    	movq	%rax, %rdx
100009a69: e8 72 01 00 00              	callq	370 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_>
100009a6e: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100009a72: 48 8b 08                    	movq	(%rax), %rcx
100009a75: 48 81 c1 78 ff ff ff        	addq	$-136, %rcx
100009a7c: 48 89 08                    	movq	%rcx, (%rax)
100009a7f: e9 94 ff ff ff              	jmp	-108 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE20__construct_backwardIPS3_EEvRS4_T_S9_RS9_+0x18>
100009a84: 48 83 c4 30                 	addq	$48, %rsp
100009a88: 5d                          	popq	%rbp
100009a89: c3                          	retq
100009a8a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100009a90 __ZNSt3__1L4swapIPN9AsmParser8asm_lineEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_:
100009a90: 55                          	pushq	%rbp
100009a91: 48 89 e5                    	movq	%rsp, %rbp
100009a94: 48 83 ec 20                 	subq	$32, %rsp
100009a98: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009a9c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009aa0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100009aa4: e8 57 0a 00 00              	callq	2647 <__ZNSt3__1L4moveIRPN9AsmParser8asm_lineEEEONS_16remove_referenceIT_E4typeEOS6_>
100009aa9: 48 8b 00                    	movq	(%rax), %rax
100009aac: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100009ab0: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100009ab4: e8 47 0a 00 00              	callq	2631 <__ZNSt3__1L4moveIRPN9AsmParser8asm_lineEEEONS_16remove_referenceIT_E4typeEOS6_>
100009ab9: 48 8b 00                    	movq	(%rax), %rax
100009abc: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
100009ac0: 48 89 01                    	movq	%rax, (%rcx)
100009ac3: 48 8d 7d e8                 	leaq	-24(%rbp), %rdi
100009ac7: e8 34 0a 00 00              	callq	2612 <__ZNSt3__1L4moveIRPN9AsmParser8asm_lineEEEONS_16remove_referenceIT_E4typeEOS6_>
100009acc: 48 8b 00                    	movq	(%rax), %rax
100009acf: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100009ad3: 48 89 01                    	movq	%rax, (%rcx)
100009ad6: 48 83 c4 20                 	addq	$32, %rsp
100009ada: 5d                          	popq	%rbp
100009adb: c3                          	retq
100009adc: 0f 1f 40 00                 	nopl	(%rax)

0000000100009ae0 __ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE14__annotate_newEm:
100009ae0: 55                          	pushq	%rbp
100009ae1: 48 89 e5                    	movq	%rsp, %rbp
100009ae4: 48 83 ec 40                 	subq	$64, %rsp
100009ae8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009aec: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009af0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009af4: 48 89 c7                    	movq	%rax, %rdi
100009af7: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100009afb: e8 c0 00 00 00              	callq	192 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4dataEv>
100009b00: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100009b04: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100009b08: e8 b3 00 00 00              	callq	179 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4dataEv>
100009b0d: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100009b11: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100009b15: e8 26 f9 ff ff              	callq	-1754 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE8capacityEv>
100009b1a: 48 69 c0 88 00 00 00        	imulq	$136, %rax, %rax
100009b21: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100009b25: 48 01 c1                    	addq	%rax, %rcx
100009b28: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100009b2c: 48 89 4d d0                 	movq	%rcx, -48(%rbp)
100009b30: e8 8b 00 00 00              	callq	139 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4dataEv>
100009b35: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100009b39: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100009b3d: e8 fe f8 ff ff              	callq	-1794 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE8capacityEv>
100009b42: 48 69 c0 88 00 00 00        	imulq	$136, %rax, %rax
100009b49: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100009b4d: 48 01 c1                    	addq	%rax, %rcx
100009b50: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100009b54: 48 89 4d c0                 	movq	%rcx, -64(%rbp)
100009b58: e8 63 00 00 00              	callq	99 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4dataEv>
100009b5d: 48 69 4d f0 88 00 00 00     	imulq	$136, -16(%rbp), %rcx
100009b65: 48 01 c8                    	addq	%rcx, %rax
100009b68: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100009b6c: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
100009b70: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100009b74: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100009b78: 49 89 c0                    	movq	%rax, %r8
100009b7b: e8 20 00 00 00              	callq	32 <__ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE31__annotate_contiguous_containerEPKvS7_S7_S7_>
100009b80: 48 83 c4 40                 	addq	$64, %rsp
100009b84: 5d                          	popq	%rbp
100009b85: c3                          	retq
100009b86: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100009b90 __ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE26__invalidate_all_iteratorsEv:
100009b90: 55                          	pushq	%rbp
100009b91: 48 89 e5                    	movq	%rsp, %rbp
100009b94: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009b98: 5d                          	popq	%rbp
100009b99: c3                          	retq
100009b9a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100009ba0 __ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE31__annotate_contiguous_containerEPKvS7_S7_S7_:
100009ba0: 55                          	pushq	%rbp
100009ba1: 48 89 e5                    	movq	%rsp, %rbp
100009ba4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009ba8: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009bac: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009bb0: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100009bb4: 4c 89 45 d8                 	movq	%r8, -40(%rbp)
100009bb8: 5d                          	popq	%rbp
100009bb9: c3                          	retq
100009bba: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100009bc0 __ZNKSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE4dataEv:
100009bc0: 55                          	pushq	%rbp
100009bc1: 48 89 e5                    	movq	%rsp, %rbp
100009bc4: 48 83 ec 10                 	subq	$16, %rsp
100009bc8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009bcc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009bd0: 48 8b 38                    	movq	(%rax), %rdi
100009bd3: e8 c8 f3 ff ff              	callq	-3128 <__ZNSt3__1L16__to_raw_pointerIN9AsmParser8asm_lineEEEPT_S4_>
100009bd8: 48 83 c4 10                 	addq	$16, %rsp
100009bdc: 5d                          	popq	%rbp
100009bdd: c3                          	retq
100009bde: 66 90                       	nop

0000000100009be0 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_:
100009be0: 55                          	pushq	%rbp
100009be1: 48 89 e5                    	movq	%rsp, %rbp
100009be4: 48 83 ec 40                 	subq	$64, %rsp
100009be8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009bec: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009bf0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009bf4: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100009bf8: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100009bfc: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009c00: 48 89 7d d0                 	movq	%rdi, -48(%rbp)
100009c04: 48 89 c7                    	movq	%rax, %rdi
100009c07: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
100009c0b: e8 90 00 00 00              	callq	144 <__ZNSt3__1L7forwardIN9AsmParser8asm_lineEEEOT_RNS_16remove_referenceIS3_E4typeE>
100009c10: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100009c14: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
100009c18: 48 89 c2                    	movq	%rax, %rdx
100009c1b: e8 30 00 00 00              	callq	48 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE11__constructIS3_JS3_EEEvNS_17integral_constantIbLb1EEERS4_PT_DpOT0_>
100009c20: 48 83 c4 40                 	addq	$64, %rsp
100009c24: 5d                          	popq	%rbp
100009c25: c3                          	retq
100009c26: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100009c30 __ZNSt3__1L16move_if_noexceptIN9AsmParser8asm_lineEEENS_11conditionalIXaantsr29is_nothrow_move_constructibleIT_EE5valuesr21is_copy_constructibleIS4_EE5valueERKS4_OS4_E4typeERS4_:
100009c30: 55                          	pushq	%rbp
100009c31: 48 89 e5                    	movq	%rsp, %rbp
100009c34: 48 83 ec 10                 	subq	$16, %rsp
100009c38: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009c3c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100009c40: e8 ab 08 00 00              	callq	2219 <__ZNSt3__1L4moveIRN9AsmParser8asm_lineEEEONS_16remove_referenceIT_E4typeEOS5_>
100009c45: 48 83 c4 10                 	addq	$16, %rsp
100009c49: 5d                          	popq	%rbp
100009c4a: c3                          	retq
100009c4b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100009c50 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE11__constructIS3_JS3_EEEvNS_17integral_constantIbLb1EEERS4_PT_DpOT0_:
100009c50: 55                          	pushq	%rbp
100009c51: 48 89 e5                    	movq	%rsp, %rbp
100009c54: 48 83 ec 30                 	subq	$48, %rsp
100009c58: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100009c5c: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100009c60: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100009c64: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100009c68: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100009c6c: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100009c70: 48 89 7d d8                 	movq	%rdi, -40(%rbp)
100009c74: 48 89 c7                    	movq	%rax, %rdi
100009c77: 48 89 75 d0                 	movq	%rsi, -48(%rbp)
100009c7b: e8 20 00 00 00              	callq	32 <__ZNSt3__1L7forwardIN9AsmParser8asm_lineEEEOT_RNS_16remove_referenceIS3_E4typeE>
100009c80: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100009c84: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
100009c88: 48 89 c2                    	movq	%rax, %rdx
100009c8b: e8 20 00 00 00              	callq	32 <__ZNSt3__19allocatorIN9AsmParser8asm_lineEE9constructIS2_JS2_EEEvPT_DpOT0_>
100009c90: 48 83 c4 30                 	addq	$48, %rsp
100009c94: 5d                          	popq	%rbp
100009c95: c3                          	retq
100009c96: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100009ca0 __ZNSt3__1L7forwardIN9AsmParser8asm_lineEEEOT_RNS_16remove_referenceIS3_E4typeE:
100009ca0: 55                          	pushq	%rbp
100009ca1: 48 89 e5                    	movq	%rsp, %rbp
100009ca4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009ca8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009cac: 5d                          	popq	%rbp
100009cad: c3                          	retq
100009cae: 66 90                       	nop

0000000100009cb0 __ZNSt3__19allocatorIN9AsmParser8asm_lineEE9constructIS2_JS2_EEEvPT_DpOT0_:
100009cb0: 55                          	pushq	%rbp
100009cb1: 48 89 e5                    	movq	%rsp, %rbp
100009cb4: 48 83 ec 20                 	subq	$32, %rsp
100009cb8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009cbc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009cc0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009cc4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009cc8: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100009ccc: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100009cd0: e8 cb ff ff ff              	callq	-53 <__ZNSt3__1L7forwardIN9AsmParser8asm_lineEEEOT_RNS_16remove_referenceIS3_E4typeE>
100009cd5: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100009cd9: 48 89 c6                    	movq	%rax, %rsi
100009cdc: e8 0f 00 00 00              	callq	15 <__ZN9AsmParser8asm_lineC1EOS0_>
100009ce1: 48 83 c4 20                 	addq	$32, %rsp
100009ce5: 5d                          	popq	%rbp
100009ce6: c3                          	retq
100009ce7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100009cf0 __ZN9AsmParser8asm_lineC1EOS0_:
100009cf0: 55                          	pushq	%rbp
100009cf1: 48 89 e5                    	movq	%rsp, %rbp
100009cf4: 48 83 ec 10                 	subq	$16, %rsp
100009cf8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009cfc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009d00: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100009d04: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100009d08: e8 13 00 00 00              	callq	19 <__ZN9AsmParser8asm_lineC2EOS0_>
100009d0d: 48 83 c4 10                 	addq	$16, %rsp
100009d11: 5d                          	popq	%rbp
100009d12: c3                          	retq
100009d13: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100009d1d: 0f 1f 00                    	nopl	(%rax)

0000000100009d20 __ZN9AsmParser8asm_lineC2EOS0_:
100009d20: 55                          	pushq	%rbp
100009d21: 48 89 e5                    	movq	%rsp, %rbp
100009d24: 48 83 ec 20                 	subq	$32, %rsp
100009d28: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009d2c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009d30: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009d34: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100009d38: 48 8b 11                    	movq	(%rcx), %rdx
100009d3b: 48 89 10                    	movq	%rdx, (%rax)
100009d3e: 48 8b 49 08                 	movq	8(%rcx), %rcx
100009d42: 48 89 48 08                 	movq	%rcx, 8(%rax)
100009d46: 48 89 c1                    	movq	%rax, %rcx
100009d49: 48 81 c1 10 00 00 00        	addq	$16, %rcx
100009d50: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
100009d54: 48 81 c2 10 00 00 00        	addq	$16, %rdx
100009d5b: 48 89 cf                    	movq	%rcx, %rdi
100009d5e: 48 89 d6                    	movq	%rdx, %rsi
100009d61: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100009d65: e8 66 00 00 00              	callq	102 <__ZNSt3__18optionalINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEC1EOSA_>
100009d6a: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009d6e: 48 05 30 00 00 00           	addq	$48, %rax
100009d74: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100009d78: 48 81 c1 30 00 00 00        	addq	$48, %rcx
100009d7f: 48 89 c7                    	movq	%rax, %rdi
100009d82: 48 89 ce                    	movq	%rcx, %rsi
100009d85: e8 76 00 00 00              	callq	118 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1EOS5_>
100009d8a: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009d8e: 48 05 48 00 00 00           	addq	$72, %rax
100009d94: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100009d98: 48 81 c1 48 00 00 00        	addq	$72, %rcx
100009d9f: 48 89 c7                    	movq	%rax, %rdi
100009da2: 48 89 ce                    	movq	%rcx, %rsi
100009da5: e8 86 00 00 00              	callq	134 <__ZNSt3__18optionalIN9AsmParser10asm_sourceEEC1EOS3_>
100009daa: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009dae: 48 05 70 00 00 00           	addq	$112, %rax
100009db4: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100009db8: 48 81 c1 70 00 00 00        	addq	$112, %rcx
100009dbf: 48 89 c7                    	movq	%rax, %rdi
100009dc2: 48 89 ce                    	movq	%rcx, %rsi
100009dc5: e8 96 00 00 00              	callq	150 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC1EOS5_>
100009dca: 48 83 c4 20                 	addq	$32, %rsp
100009dce: 5d                          	popq	%rbp
100009dcf: c3                          	retq

0000000100009dd0 __ZNSt3__18optionalINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEC1EOSA_:
100009dd0: 55                          	pushq	%rbp
100009dd1: 48 89 e5                    	movq	%rsp, %rbp
100009dd4: 48 83 ec 10                 	subq	$16, %rsp
100009dd8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009ddc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009de0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100009de4: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100009de8: e8 a3 00 00 00              	callq	163 <__ZNSt3__18optionalINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEC2EOSA_>
100009ded: 48 83 c4 10                 	addq	$16, %rsp
100009df1: 5d                          	popq	%rbp
100009df2: c3                          	retq
100009df3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100009dfd: 0f 1f 00                    	nopl	(%rax)

0000000100009e00 __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1EOS5_:
100009e00: 55                          	pushq	%rbp
100009e01: 48 89 e5                    	movq	%rsp, %rbp
100009e04: 48 83 ec 10                 	subq	$16, %rsp
100009e08: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009e0c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009e10: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100009e14: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100009e18: e8 53 03 00 00              	callq	851 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2EOS5_>
100009e1d: 48 83 c4 10                 	addq	$16, %rsp
100009e21: 5d                          	popq	%rbp
100009e22: c3                          	retq
100009e23: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100009e2d: 0f 1f 00                    	nopl	(%rax)

0000000100009e30 __ZNSt3__18optionalIN9AsmParser10asm_sourceEEC1EOS3_:
100009e30: 55                          	pushq	%rbp
100009e31: 48 89 e5                    	movq	%rsp, %rbp
100009e34: 48 83 ec 10                 	subq	$16, %rsp
100009e38: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009e3c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009e40: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100009e44: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100009e48: e8 83 03 00 00              	callq	899 <__ZNSt3__18optionalIN9AsmParser10asm_sourceEEC2EOS3_>
100009e4d: 48 83 c4 10                 	addq	$16, %rsp
100009e51: 5d                          	popq	%rbp
100009e52: c3                          	retq
100009e53: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100009e5d: 0f 1f 00                    	nopl	(%rax)

0000000100009e60 __ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC1EOS5_:
100009e60: 55                          	pushq	%rbp
100009e61: 48 89 e5                    	movq	%rsp, %rbp
100009e64: 48 83 ec 10                 	subq	$16, %rsp
100009e68: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009e6c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009e70: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100009e74: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100009e78: e8 c3 05 00 00              	callq	1475 <__ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2EOS5_>
100009e7d: 48 83 c4 10                 	addq	$16, %rsp
100009e81: 5d                          	popq	%rbp
100009e82: c3                          	retq
100009e83: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100009e8d: 0f 1f 00                    	nopl	(%rax)

0000000100009e90 __ZNSt3__18optionalINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEC2EOSA_:
100009e90: 55                          	pushq	%rbp
100009e91: 48 89 e5                    	movq	%rsp, %rbp
100009e94: 48 83 ec 10                 	subq	$16, %rsp
100009e98: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009e9c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009ea0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009ea4: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100009ea8: 48 89 c7                    	movq	%rax, %rdi
100009eab: 48 89 ce                    	movq	%rcx, %rsi
100009eae: e8 0d 00 00 00              	callq	13 <__ZNSt3__127__optional_move_assign_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2EOSA_>
100009eb3: 48 83 c4 10                 	addq	$16, %rsp
100009eb7: 5d                          	popq	%rbp
100009eb8: c3                          	retq
100009eb9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100009ec0 __ZNSt3__127__optional_move_assign_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2EOSA_:
100009ec0: 55                          	pushq	%rbp
100009ec1: 48 89 e5                    	movq	%rsp, %rbp
100009ec4: 48 83 ec 10                 	subq	$16, %rsp
100009ec8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009ecc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009ed0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009ed4: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100009ed8: 48 89 c7                    	movq	%rax, %rdi
100009edb: 48 89 ce                    	movq	%rcx, %rsi
100009ede: e8 0d 00 00 00              	callq	13 <__ZNSt3__127__optional_copy_assign_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2EOSA_>
100009ee3: 48 83 c4 10                 	addq	$16, %rsp
100009ee7: 5d                          	popq	%rbp
100009ee8: c3                          	retq
100009ee9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100009ef0 __ZNSt3__127__optional_copy_assign_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2EOSA_:
100009ef0: 55                          	pushq	%rbp
100009ef1: 48 89 e5                    	movq	%rsp, %rbp
100009ef4: 48 83 ec 10                 	subq	$16, %rsp
100009ef8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009efc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009f00: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009f04: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100009f08: 48 89 c7                    	movq	%rax, %rdi
100009f0b: 48 89 ce                    	movq	%rcx, %rsi
100009f0e: e8 0d 00 00 00              	callq	13 <__ZNSt3__120__optional_move_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2EOSA_>
100009f13: 48 83 c4 10                 	addq	$16, %rsp
100009f17: 5d                          	popq	%rbp
100009f18: c3                          	retq
100009f19: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100009f20 __ZNSt3__120__optional_move_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2EOSA_:
100009f20: 55                          	pushq	%rbp
100009f21: 48 89 e5                    	movq	%rsp, %rbp
100009f24: 48 83 ec 30                 	subq	$48, %rsp
100009f28: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009f2c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009f30: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009f34: 48 89 c7                    	movq	%rax, %rdi
100009f37: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100009f3b: e8 f0 c5 ff ff              	callq	-14864 <__ZNSt3__120__optional_copy_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2Ev>
100009f40: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100009f44: e8 97 00 00 00              	callq	151 <__ZNSt3__1L4moveIRNS_20__optional_move_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS6_IS8_EEEELb0EEEEEONS_16remove_referenceIT_E4typeEOSE_>
100009f49: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100009f4d: 48 89 c6                    	movq	%rax, %rsi
100009f50: e8 2b 00 00 00              	callq	43 <__ZNSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE16__construct_fromINS_20__optional_move_baseIS9_Lb0EEEEEvOT_>
100009f55: e9 00 00 00 00              	jmp	0 <__ZNSt3__120__optional_move_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EEC2EOSA_+0x3a>
100009f5a: 48 83 c4 30                 	addq	$48, %rsp
100009f5e: 5d                          	popq	%rbp
100009f5f: c3                          	retq
100009f60: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100009f64: 89 55 e4                    	movl	%edx, -28(%rbp)
100009f67: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100009f6b: 48 89 c7                    	movq	%rax, %rdi
100009f6e: e8 2d 81 ff ff              	callq	-32467 <__ZNSt3__120__optional_copy_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EED2Ev>
100009f73: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100009f77: e8 74 75 ff ff              	callq	-35468 <___clang_call_terminate>
100009f7c: 0f 1f 40 00                 	nopl	(%rax)

0000000100009f80 __ZNSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE16__construct_fromINS_20__optional_move_baseIS9_Lb0EEEEEvOT_:
100009f80: 55                          	pushq	%rbp
100009f81: 48 89 e5                    	movq	%rsp, %rbp
100009f84: 48 83 ec 20                 	subq	$32, %rsp
100009f88: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009f8c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009f90: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100009f94: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009f98: 48 89 7d e8                 	movq	%rdi, -24(%rbp)
100009f9c: 48 89 c7                    	movq	%rax, %rdi
100009f9f: e8 6c d4 ff ff              	callq	-11156 <__ZNKSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE9has_valueEv>
100009fa4: a8 01                       	testb	$1, %al
100009fa6: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE16__construct_fromINS_20__optional_move_baseIS9_Lb0EEEEEvOT_+0x31>
100009fac: e9 1d 00 00 00              	jmp	29 <__ZNSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE16__construct_fromINS_20__optional_move_baseIS9_Lb0EEEEEvOT_+0x4e>
100009fb1: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100009fb5: e8 86 00 00 00              	callq	134 <__ZNSt3__1L7forwardINS_20__optional_move_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS6_IS8_EEEELb0EEEEEOT_RNS_16remove_referenceISC_E4typeE>
100009fba: 48 89 c7                    	movq	%rax, %rdi
100009fbd: e8 8e 00 00 00              	callq	142 <__ZNOSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE5__getEv>
100009fc2: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100009fc6: 48 89 c6                    	movq	%rax, %rsi
100009fc9: e8 22 00 00 00              	callq	34 <__ZNSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE11__constructIJS9_EEEvDpOT_>
100009fce: 48 83 c4 20                 	addq	$32, %rsp
100009fd2: 5d                          	popq	%rbp
100009fd3: c3                          	retq
100009fd4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
100009fde: 66 90                       	nop

0000000100009fe0 __ZNSt3__1L4moveIRNS_20__optional_move_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS6_IS8_EEEELb0EEEEEONS_16remove_referenceIT_E4typeEOSE_:
100009fe0: 55                          	pushq	%rbp
100009fe1: 48 89 e5                    	movq	%rsp, %rbp
100009fe4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009fe8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009fec: 5d                          	popq	%rbp
100009fed: c3                          	retq
100009fee: 66 90                       	nop

0000000100009ff0 __ZNSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE11__constructIJS9_EEEvDpOT_:
100009ff0: 55                          	pushq	%rbp
100009ff1: 48 89 e5                    	movq	%rsp, %rbp
100009ff4: 48 83 ec 20                 	subq	$32, %rsp
100009ff8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009ffc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a000: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a004: 48 89 c1                    	movq	%rax, %rcx
10000a007: 48 89 cf                    	movq	%rcx, %rdi
10000a00a: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000a00e: e8 8d d4 ff ff              	callq	-11123 <__ZNSt3__1L9addressofINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEPT_RSA_>
10000a013: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a017: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000a01b: e8 50 00 00 00              	callq	80 <__ZNSt3__1L7forwardINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEOT_RNS_16remove_referenceISA_E4typeE>
10000a020: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
10000a024: 48 89 c6                    	movq	%rax, %rsi
10000a027: e8 54 00 00 00              	callq	84 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1EOS8_>
10000a02c: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000a030: c6 40 18 01                 	movb	$1, 24(%rax)
10000a034: 48 83 c4 20                 	addq	$32, %rsp
10000a038: 5d                          	popq	%rbp
10000a039: c3                          	retq
10000a03a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

000000010000a040 __ZNSt3__1L7forwardINS_20__optional_move_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS6_IS8_EEEELb0EEEEEOT_RNS_16remove_referenceISC_E4typeE:
10000a040: 55                          	pushq	%rbp
10000a041: 48 89 e5                    	movq	%rsp, %rbp
10000a044: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a048: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a04c: 5d                          	popq	%rbp
10000a04d: c3                          	retq
10000a04e: 66 90                       	nop

000000010000a050 __ZNOSt3__123__optional_storage_baseINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEELb0EE5__getEv:
10000a050: 55                          	pushq	%rbp
10000a051: 48 89 e5                    	movq	%rsp, %rbp
10000a054: 48 83 ec 10                 	subq	$16, %rsp
10000a058: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a05c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a060: 48 89 c7                    	movq	%rax, %rdi
10000a063: e8 f8 00 00 00              	callq	248 <__ZNSt3__1L4moveIRNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEONS_16remove_referenceIT_E4typeEOSC_>
10000a068: 48 83 c4 10                 	addq	$16, %rsp
10000a06c: 5d                          	popq	%rbp
10000a06d: c3                          	retq
10000a06e: 66 90                       	nop

000000010000a070 __ZNSt3__1L7forwardINS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEOT_RNS_16remove_referenceISA_E4typeE:
10000a070: 55                          	pushq	%rbp
10000a071: 48 89 e5                    	movq	%rsp, %rbp
10000a074: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a078: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a07c: 5d                          	popq	%rbp
10000a07d: c3                          	retq
10000a07e: 66 90                       	nop

000000010000a080 __ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1EOS8_:
10000a080: 55                          	pushq	%rbp
10000a081: 48 89 e5                    	movq	%rsp, %rbp
10000a084: 48 83 ec 10                 	subq	$16, %rsp
10000a088: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a08c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a090: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000a094: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000a098: e8 13 00 00 00              	callq	19 <__ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2EOS8_>
10000a09d: 48 83 c4 10                 	addq	$16, %rsp
10000a0a1: 5d                          	popq	%rbp
10000a0a2: c3                          	retq
10000a0a3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000a0ad: 0f 1f 00                    	nopl	(%rax)

000000010000a0b0 __ZNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2EOS8_:
10000a0b0: 55                          	pushq	%rbp
10000a0b1: 48 89 e5                    	movq	%rsp, %rbp
10000a0b4: 48 83 ec 30                 	subq	$48, %rsp
10000a0b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a0bc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a0c0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a0c4: 48 89 c1                    	movq	%rax, %rcx
10000a0c7: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
10000a0cb: 48 89 d7                    	movq	%rdx, %rdi
10000a0ce: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000a0d2: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
10000a0d6: e8 05 ce ff ff              	callq	-12795 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE7__allocEv>
10000a0db: 48 89 c7                    	movq	%rax, %rdi
10000a0de: e8 fd d6 ff ff              	callq	-10499 <__ZNSt3__1L4moveIRNS_9allocatorINS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEONS_16remove_referenceIT_E4typeEOSA_>
10000a0e3: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
10000a0e7: 48 89 c6                    	movq	%rax, %rsi
10000a0ea: e8 11 d5 ff ff              	callq	-10991 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC2EOS7_>
10000a0ef: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a0f3: 48 8b 00                    	movq	(%rax), %rax
10000a0f6: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
10000a0fa: 48 89 01                    	movq	%rax, (%rcx)
10000a0fd: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a101: 48 8b 40 08                 	movq	8(%rax), %rax
10000a105: 48 89 41 08                 	movq	%rax, 8(%rcx)
10000a109: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a10d: 48 89 c7                    	movq	%rax, %rdi
10000a110: e8 7b d8 ff ff              	callq	-10117 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capEv>
10000a115: 48 8b 00                    	movq	(%rax), %rax
10000a118: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
10000a11c: 48 89 cf                    	movq	%rcx, %rdi
10000a11f: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000a123: e8 68 d8 ff ff              	callq	-10136 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capEv>
10000a128: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
10000a12c: 48 89 08                    	movq	%rcx, (%rax)
10000a12f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a133: 48 89 c7                    	movq	%rax, %rdi
10000a136: e8 55 d8 ff ff              	callq	-10155 <__ZNSt3__113__vector_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE9__end_capEv>
10000a13b: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
10000a142: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a146: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
10000a14e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a152: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
10000a159: 48 83 c4 30                 	addq	$48, %rsp
10000a15d: 5d                          	popq	%rbp
10000a15e: c3                          	retq
10000a15f: 90                          	nop

000000010000a160 __ZNSt3__1L4moveIRNS_6vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS5_IS7_EEEEEEONS_16remove_referenceIT_E4typeEOSC_:
10000a160: 55                          	pushq	%rbp
10000a161: 48 89 e5                    	movq	%rsp, %rbp
10000a164: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a168: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a16c: 5d                          	popq	%rbp
10000a16d: c3                          	retq
10000a16e: 66 90                       	nop

000000010000a170 __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2EOS5_:
10000a170: 55                          	pushq	%rbp
10000a171: 48 89 e5                    	movq	%rsp, %rbp
10000a174: 48 83 ec 20                 	subq	$32, %rsp
10000a178: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a17c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a180: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a184: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a188: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000a18c: e8 2f 00 00 00              	callq	47 <__ZNSt3__1L4moveIRNS_17__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES6_EEEEONS_16remove_referenceIT_E4typeEOSC_>
10000a191: 48 8b 08                    	movq	(%rax), %rcx
10000a194: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000a198: 48 89 0a                    	movq	%rcx, (%rdx)
10000a19b: 48 8b 48 08                 	movq	8(%rax), %rcx
10000a19f: 48 89 4a 08                 	movq	%rcx, 8(%rdx)
10000a1a3: 48 8b 40 10                 	movq	16(%rax), %rax
10000a1a7: 48 89 42 10                 	movq	%rax, 16(%rdx)
10000a1ab: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a1af: e8 2c e9 ff ff              	callq	-5844 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__zeroEv>
10000a1b4: 48 83 c4 20                 	addq	$32, %rsp
10000a1b8: 5d                          	popq	%rbp
10000a1b9: c3                          	retq
10000a1ba: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

000000010000a1c0 __ZNSt3__1L4moveIRNS_17__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES6_EEEEONS_16remove_referenceIT_E4typeEOSC_:
10000a1c0: 55                          	pushq	%rbp
10000a1c1: 48 89 e5                    	movq	%rsp, %rbp
10000a1c4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a1c8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a1cc: 5d                          	popq	%rbp
10000a1cd: c3                          	retq
10000a1ce: 66 90                       	nop

000000010000a1d0 __ZNSt3__18optionalIN9AsmParser10asm_sourceEEC2EOS3_:
10000a1d0: 55                          	pushq	%rbp
10000a1d1: 48 89 e5                    	movq	%rsp, %rbp
10000a1d4: 48 83 ec 10                 	subq	$16, %rsp
10000a1d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a1dc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a1e0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a1e4: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a1e8: 48 89 c7                    	movq	%rax, %rdi
10000a1eb: 48 89 ce                    	movq	%rcx, %rsi
10000a1ee: e8 0d 00 00 00              	callq	13 <__ZNSt3__127__optional_move_assign_baseIN9AsmParser10asm_sourceELb0EEC2EOS3_>
10000a1f3: 48 83 c4 10                 	addq	$16, %rsp
10000a1f7: 5d                          	popq	%rbp
10000a1f8: c3                          	retq
10000a1f9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

000000010000a200 __ZNSt3__127__optional_move_assign_baseIN9AsmParser10asm_sourceELb0EEC2EOS3_:
10000a200: 55                          	pushq	%rbp
10000a201: 48 89 e5                    	movq	%rsp, %rbp
10000a204: 48 83 ec 10                 	subq	$16, %rsp
10000a208: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a20c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a210: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a214: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a218: 48 89 c7                    	movq	%rax, %rdi
10000a21b: 48 89 ce                    	movq	%rcx, %rsi
10000a21e: e8 0d 00 00 00              	callq	13 <__ZNSt3__127__optional_copy_assign_baseIN9AsmParser10asm_sourceELb0EEC2EOS3_>
10000a223: 48 83 c4 10                 	addq	$16, %rsp
10000a227: 5d                          	popq	%rbp
10000a228: c3                          	retq
10000a229: 0f 1f 80 00 00 00 00        	nopl	(%rax)

000000010000a230 __ZNSt3__127__optional_copy_assign_baseIN9AsmParser10asm_sourceELb0EEC2EOS3_:
10000a230: 55                          	pushq	%rbp
10000a231: 48 89 e5                    	movq	%rsp, %rbp
10000a234: 48 83 ec 10                 	subq	$16, %rsp
10000a238: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a23c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a240: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a244: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a248: 48 89 c7                    	movq	%rax, %rdi
10000a24b: 48 89 ce                    	movq	%rcx, %rsi
10000a24e: e8 0d 00 00 00              	callq	13 <__ZNSt3__120__optional_move_baseIN9AsmParser10asm_sourceELb0EEC2EOS3_>
10000a253: 48 83 c4 10                 	addq	$16, %rsp
10000a257: 5d                          	popq	%rbp
10000a258: c3                          	retq
10000a259: 0f 1f 80 00 00 00 00        	nopl	(%rax)

000000010000a260 __ZNSt3__120__optional_move_baseIN9AsmParser10asm_sourceELb0EEC2EOS3_:
10000a260: 55                          	pushq	%rbp
10000a261: 48 89 e5                    	movq	%rsp, %rbp
10000a264: 48 83 ec 30                 	subq	$48, %rsp
10000a268: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a26c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a270: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a274: 48 89 c7                    	movq	%rax, %rdi
10000a277: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000a27b: e8 90 c3 ff ff              	callq	-15472 <__ZNSt3__120__optional_copy_baseIN9AsmParser10asm_sourceELb0EEC2Ev>
10000a280: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a284: e8 97 00 00 00              	callq	151 <__ZNSt3__1L4moveIRNS_20__optional_move_baseIN9AsmParser10asm_sourceELb0EEEEEONS_16remove_referenceIT_E4typeEOS7_>
10000a289: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
10000a28d: 48 89 c6                    	movq	%rax, %rsi
10000a290: e8 2b 00 00 00              	callq	43 <__ZNSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE16__construct_fromINS_20__optional_move_baseIS2_Lb0EEEEEvOT_>
10000a295: e9 00 00 00 00              	jmp	0 <__ZNSt3__120__optional_move_baseIN9AsmParser10asm_sourceELb0EEC2EOS3_+0x3a>
10000a29a: 48 83 c4 30                 	addq	$48, %rsp
10000a29e: 5d                          	popq	%rbp
10000a29f: c3                          	retq
10000a2a0: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000a2a4: 89 55 e4                    	movl	%edx, -28(%rbp)
10000a2a7: 48 8b 45 d8                 	movq	-40(%rbp), %rax
10000a2ab: 48 89 c7                    	movq	%rax, %rdi
10000a2ae: e8 fd 7c ff ff              	callq	-33539 <__ZNSt3__120__optional_copy_baseIN9AsmParser10asm_sourceELb0EED2Ev>
10000a2b3: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
10000a2b7: e8 34 72 ff ff              	callq	-36300 <___clang_call_terminate>
10000a2bc: 0f 1f 40 00                 	nopl	(%rax)

000000010000a2c0 __ZNSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE16__construct_fromINS_20__optional_move_baseIS2_Lb0EEEEEvOT_:
10000a2c0: 55                          	pushq	%rbp
10000a2c1: 48 89 e5                    	movq	%rsp, %rbp
10000a2c4: 48 83 ec 20                 	subq	$32, %rsp
10000a2c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a2cc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a2d0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000a2d4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a2d8: 48 89 7d e8                 	movq	%rdi, -24(%rbp)
10000a2dc: 48 89 c7                    	movq	%rax, %rdi
10000a2df: e8 dc dd ff ff              	callq	-8740 <__ZNKSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE9has_valueEv>
10000a2e4: a8 01                       	testb	$1, %al
10000a2e6: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE16__construct_fromINS_20__optional_move_baseIS2_Lb0EEEEEvOT_+0x31>
10000a2ec: e9 1d 00 00 00              	jmp	29 <__ZNSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE16__construct_fromINS_20__optional_move_baseIS2_Lb0EEEEEvOT_+0x4e>
10000a2f1: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a2f5: e8 86 00 00 00              	callq	134 <__ZNSt3__1L7forwardINS_20__optional_move_baseIN9AsmParser10asm_sourceELb0EEEEEOT_RNS_16remove_referenceIS5_E4typeE>
10000a2fa: 48 89 c7                    	movq	%rax, %rdi
10000a2fd: e8 8e 00 00 00              	callq	142 <__ZNOSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE5__getEv>
10000a302: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
10000a306: 48 89 c6                    	movq	%rax, %rsi
10000a309: e8 22 00 00 00              	callq	34 <__ZNSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE11__constructIJS2_EEEvDpOT_>
10000a30e: 48 83 c4 20                 	addq	$32, %rsp
10000a312: 5d                          	popq	%rbp
10000a313: c3                          	retq
10000a314: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000a31e: 66 90                       	nop

000000010000a320 __ZNSt3__1L4moveIRNS_20__optional_move_baseIN9AsmParser10asm_sourceELb0EEEEEONS_16remove_referenceIT_E4typeEOS7_:
10000a320: 55                          	pushq	%rbp
10000a321: 48 89 e5                    	movq	%rsp, %rbp
10000a324: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a328: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a32c: 5d                          	popq	%rbp
10000a32d: c3                          	retq
10000a32e: 66 90                       	nop

000000010000a330 __ZNSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE11__constructIJS2_EEEvDpOT_:
10000a330: 55                          	pushq	%rbp
10000a331: 48 89 e5                    	movq	%rsp, %rbp
10000a334: 48 83 ec 20                 	subq	$32, %rsp
10000a338: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a33c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a340: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a344: 48 89 c1                    	movq	%rax, %rcx
10000a347: 48 89 cf                    	movq	%rcx, %rdi
10000a34a: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000a34e: e8 fd dd ff ff              	callq	-8707 <__ZNSt3__1L9addressofIN9AsmParser10asm_sourceEEEPT_RS3_>
10000a353: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a357: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000a35b: e8 50 00 00 00              	callq	80 <__ZNSt3__1L7forwardIN9AsmParser10asm_sourceEEEOT_RNS_16remove_referenceIS3_E4typeE>
10000a360: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
10000a364: 48 89 c6                    	movq	%rax, %rsi
10000a367: e8 54 00 00 00              	callq	84 <__ZN9AsmParser10asm_sourceC1EOS0_>
10000a36c: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000a370: c6 40 20 01                 	movb	$1, 32(%rax)
10000a374: 48 83 c4 20                 	addq	$32, %rsp
10000a378: 5d                          	popq	%rbp
10000a379: c3                          	retq
10000a37a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

000000010000a380 __ZNSt3__1L7forwardINS_20__optional_move_baseIN9AsmParser10asm_sourceELb0EEEEEOT_RNS_16remove_referenceIS5_E4typeE:
10000a380: 55                          	pushq	%rbp
10000a381: 48 89 e5                    	movq	%rsp, %rbp
10000a384: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a388: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a38c: 5d                          	popq	%rbp
10000a38d: c3                          	retq
10000a38e: 66 90                       	nop

000000010000a390 __ZNOSt3__123__optional_storage_baseIN9AsmParser10asm_sourceELb0EE5__getEv:
10000a390: 55                          	pushq	%rbp
10000a391: 48 89 e5                    	movq	%rsp, %rbp
10000a394: 48 83 ec 10                 	subq	$16, %rsp
10000a398: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a39c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a3a0: 48 89 c7                    	movq	%rax, %rdi
10000a3a3: e8 88 00 00 00              	callq	136 <__ZNSt3__1L4moveIRN9AsmParser10asm_sourceEEEONS_16remove_referenceIT_E4typeEOS5_>
10000a3a8: 48 83 c4 10                 	addq	$16, %rsp
10000a3ac: 5d                          	popq	%rbp
10000a3ad: c3                          	retq
10000a3ae: 66 90                       	nop

000000010000a3b0 __ZNSt3__1L7forwardIN9AsmParser10asm_sourceEEEOT_RNS_16remove_referenceIS3_E4typeE:
10000a3b0: 55                          	pushq	%rbp
10000a3b1: 48 89 e5                    	movq	%rsp, %rbp
10000a3b4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a3b8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a3bc: 5d                          	popq	%rbp
10000a3bd: c3                          	retq
10000a3be: 66 90                       	nop

000000010000a3c0 __ZN9AsmParser10asm_sourceC1EOS0_:
10000a3c0: 55                          	pushq	%rbp
10000a3c1: 48 89 e5                    	movq	%rsp, %rbp
10000a3c4: 48 83 ec 10                 	subq	$16, %rsp
10000a3c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a3cc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a3d0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000a3d4: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000a3d8: e8 13 00 00 00              	callq	19 <__ZN9AsmParser10asm_sourceC2EOS0_>
10000a3dd: 48 83 c4 10                 	addq	$16, %rsp
10000a3e1: 5d                          	popq	%rbp
10000a3e2: c3                          	retq
10000a3e3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000a3ed: 0f 1f 00                    	nopl	(%rax)

000000010000a3f0 __ZN9AsmParser10asm_sourceC2EOS0_:
10000a3f0: 55                          	pushq	%rbp
10000a3f1: 48 89 e5                    	movq	%rsp, %rbp
10000a3f4: 48 83 ec 20                 	subq	$32, %rsp
10000a3f8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a3fc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a400: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a404: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000a408: 48 89 c7                    	movq	%rax, %rdi
10000a40b: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000a40f: e8 ec f9 ff ff              	callq	-1556 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1EOS5_>
10000a414: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a418: 8b 48 18                    	movl	24(%rax), %ecx
10000a41b: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000a41f: 89 48 18                    	movl	%ecx, 24(%rax)
10000a422: 48 83 c4 20                 	addq	$32, %rsp
10000a426: 5d                          	popq	%rbp
10000a427: c3                          	retq
10000a428: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

000000010000a430 __ZNSt3__1L4moveIRN9AsmParser10asm_sourceEEEONS_16remove_referenceIT_E4typeEOS5_:
10000a430: 55                          	pushq	%rbp
10000a431: 48 89 e5                    	movq	%rsp, %rbp
10000a434: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a438: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a43c: 5d                          	popq	%rbp
10000a43d: c3                          	retq
10000a43e: 66 90                       	nop

000000010000a440 __ZNSt3__16vectorIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2EOS5_:
10000a440: 55                          	pushq	%rbp
10000a441: 48 89 e5                    	movq	%rsp, %rbp
10000a444: 48 83 ec 30                 	subq	$48, %rsp
10000a448: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a44c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a450: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a454: 48 89 c1                    	movq	%rax, %rcx
10000a457: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
10000a45b: 48 89 d7                    	movq	%rdx, %rdi
10000a45e: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000a462: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
10000a466: e8 d5 c4 ff ff              	callq	-15147 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE7__allocEv>
10000a46b: 48 89 c7                    	movq	%rax, %rdi
10000a46e: e8 4d e0 ff ff              	callq	-8115 <__ZNSt3__1L4moveIRNS_9allocatorIN9AsmParser9asm_labelEEEEEONS_16remove_referenceIT_E4typeEOS7_>
10000a473: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
10000a477: 48 89 c6                    	movq	%rax, %rsi
10000a47a: e8 71 de ff ff              	callq	-8591 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEEC2EOS4_>
10000a47f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a483: 48 8b 00                    	movq	(%rax), %rax
10000a486: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
10000a48a: 48 89 01                    	movq	%rax, (%rcx)
10000a48d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a491: 48 8b 40 08                 	movq	8(%rax), %rax
10000a495: 48 89 41 08                 	movq	%rax, 8(%rcx)
10000a499: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a49d: 48 89 c7                    	movq	%rax, %rdi
10000a4a0: e8 bb e1 ff ff              	callq	-7749 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE9__end_capEv>
10000a4a5: 48 8b 00                    	movq	(%rax), %rax
10000a4a8: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
10000a4ac: 48 89 cf                    	movq	%rcx, %rdi
10000a4af: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000a4b3: e8 a8 e1 ff ff              	callq	-7768 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE9__end_capEv>
10000a4b8: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
10000a4bc: 48 89 08                    	movq	%rcx, (%rax)
10000a4bf: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a4c3: 48 89 c7                    	movq	%rax, %rdi
10000a4c6: e8 95 e1 ff ff              	callq	-7787 <__ZNSt3__113__vector_baseIN9AsmParser9asm_labelENS_9allocatorIS2_EEE9__end_capEv>
10000a4cb: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
10000a4d2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a4d6: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
10000a4de: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a4e2: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
10000a4e9: 48 83 c4 30                 	addq	$48, %rsp
10000a4ed: 5d                          	popq	%rbp
10000a4ee: c3                          	retq
10000a4ef: 90                          	nop

000000010000a4f0 __ZNSt3__1L4moveIRN9AsmParser8asm_lineEEEONS_16remove_referenceIT_E4typeEOS5_:
10000a4f0: 55                          	pushq	%rbp
10000a4f1: 48 89 e5                    	movq	%rsp, %rbp
10000a4f4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a4f8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a4fc: 5d                          	popq	%rbp
10000a4fd: c3                          	retq
10000a4fe: 66 90                       	nop

000000010000a500 __ZNSt3__1L4moveIRPN9AsmParser8asm_lineEEEONS_16remove_referenceIT_E4typeEOS6_:
10000a500: 55                          	pushq	%rbp
10000a501: 48 89 e5                    	movq	%rsp, %rbp
10000a504: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a508: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a50c: 5d                          	popq	%rbp
10000a50d: c3                          	retq
10000a50e: 66 90                       	nop

000000010000a510 __ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEED2Ev:
10000a510: 55                          	pushq	%rbp
10000a511: 48 89 e5                    	movq	%rsp, %rbp
10000a514: 48 83 ec 30                 	subq	$48, %rsp
10000a518: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a51c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a520: 48 89 c7                    	movq	%rax, %rdi
10000a523: 48 89 45 f0                 	movq	%rax, -16(%rbp)
10000a527: e8 64 00 00 00              	callq	100 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE5clearEv>
10000a52c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a530: 48 83 38 00                 	cmpq	$0, (%rax)
10000a534: 0f 84 3a 00 00 00           	je	58 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEED2Ev+0x64>
10000a53a: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a53e: e8 1d f2 ff ff              	callq	-3555 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE7__allocEv>
10000a543: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a547: 48 8b 31                    	movq	(%rcx), %rsi
10000a54a: 48 89 cf                    	movq	%rcx, %rdi
10000a54d: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000a551: 48 89 75 e0                 	movq	%rsi, -32(%rbp)
10000a555: e8 96 00 00 00              	callq	150 <__ZNKSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE8capacityEv>
10000a55a: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000a55e: e9 00 00 00 00              	jmp	0 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEED2Ev+0x53>
10000a563: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
10000a567: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
10000a56b: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000a56f: e8 4c 00 00 00              	callq	76 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE10deallocateERS4_PS3_m>
10000a574: 48 83 c4 30                 	addq	$48, %rsp
10000a578: 5d                          	popq	%rbp
10000a579: c3                          	retq
10000a57a: 48 89 c7                    	movq	%rax, %rdi
10000a57d: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
10000a581: e8 6a 6f ff ff              	callq	-37014 <___clang_call_terminate>
10000a586: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

000000010000a590 __ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE5clearEv:
10000a590: 55                          	pushq	%rbp
10000a591: 48 89 e5                    	movq	%rsp, %rbp
10000a594: 48 83 ec 10                 	subq	$16, %rsp
10000a598: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a59c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a5a0: 48 8b 70 08                 	movq	8(%rax), %rsi
10000a5a4: 48 89 c7                    	movq	%rax, %rdi
10000a5a7: e8 84 00 00 00              	callq	132 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE17__destruct_at_endEPS2_>
10000a5ac: 48 83 c4 10                 	addq	$16, %rsp
10000a5b0: 5d                          	popq	%rbp
10000a5b1: c3                          	retq
10000a5b2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000a5bc: 0f 1f 40 00                 	nopl	(%rax)

000000010000a5c0 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE10deallocateERS4_PS3_m:
10000a5c0: 55                          	pushq	%rbp
10000a5c1: 48 89 e5                    	movq	%rsp, %rbp
10000a5c4: 48 83 ec 20                 	subq	$32, %rsp
10000a5c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a5cc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a5d0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000a5d4: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000a5d8: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000a5dc: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000a5e0: e8 7b 01 00 00              	callq	379 <__ZNSt3__19allocatorIN9AsmParser8asm_lineEE10deallocateEPS2_m>
10000a5e5: 48 83 c4 20                 	addq	$32, %rsp
10000a5e9: 5d                          	popq	%rbp
10000a5ea: c3                          	retq
10000a5eb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

000000010000a5f0 __ZNKSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE8capacityEv:
10000a5f0: 55                          	pushq	%rbp
10000a5f1: 48 89 e5                    	movq	%rsp, %rbp
10000a5f4: 48 83 ec 10                 	subq	$16, %rsp
10000a5f8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a5fc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a600: 48 89 c7                    	movq	%rax, %rdi
10000a603: 48 89 45 f0                 	movq	%rax, -16(%rbp)
10000a607: e8 a4 01 00 00              	callq	420 <__ZNKSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE9__end_capEv>
10000a60c: 48 8b 00                    	movq	(%rax), %rax
10000a60f: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a613: 48 8b 11                    	movq	(%rcx), %rdx
10000a616: 48 29 d0                    	subq	%rdx, %rax
10000a619: 48 99                       	cqto
10000a61b: be 88 00 00 00              	movl	$136, %esi
10000a620: 48 f7 fe                    	idivq	%rsi
10000a623: 48 83 c4 10                 	addq	$16, %rsp
10000a627: 5d                          	popq	%rbp
10000a628: c3                          	retq
10000a629: 0f 1f 80 00 00 00 00        	nopl	(%rax)

000000010000a630 __ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE17__destruct_at_endEPS2_:
10000a630: 55                          	pushq	%rbp
10000a631: 48 89 e5                    	movq	%rsp, %rbp
10000a634: 48 83 ec 20                 	subq	$32, %rsp
10000a638: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a63c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a640: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000a644: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000a648: e8 13 00 00 00              	callq	19 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE17__destruct_at_endEPS2_NS_17integral_constantIbLb0EEE>
10000a64d: 48 83 c4 20                 	addq	$32, %rsp
10000a651: 5d                          	popq	%rbp
10000a652: c3                          	retq
10000a653: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000a65d: 0f 1f 00                    	nopl	(%rax)

000000010000a660 __ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE17__destruct_at_endEPS2_NS_17integral_constantIbLb0EEE:
10000a660: 55                          	pushq	%rbp
10000a661: 48 89 e5                    	movq	%rsp, %rbp
10000a664: 48 83 ec 30                 	subq	$48, %rsp
10000a668: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000a66c: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
10000a670: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a674: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000a678: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000a67c: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000a680: 48 3b 41 10                 	cmpq	16(%rcx), %rax
10000a684: 0f 84 3e 00 00 00           	je	62 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE17__destruct_at_endEPS2_NS_17integral_constantIbLb0EEE+0x68>
10000a68a: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
10000a68e: e8 cd f0 ff ff              	callq	-3891 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE7__allocEv>
10000a693: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000a697: 48 8b 51 10                 	movq	16(%rcx), %rdx
10000a69b: 48 81 c2 78 ff ff ff        	addq	$-136, %rdx
10000a6a2: 48 89 51 10                 	movq	%rdx, 16(%rcx)
10000a6a6: 48 89 d7                    	movq	%rdx, %rdi
10000a6a9: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000a6ad: e8 ee e8 ff ff              	callq	-5906 <__ZNSt3__1L16__to_raw_pointerIN9AsmParser8asm_lineEEEPT_S4_>
10000a6b2: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
10000a6b6: 48 89 c6                    	movq	%rax, %rsi
10000a6b9: e8 22 00 00 00              	callq	34 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE7destroyIS3_EEvRS4_PT_>
10000a6be: e9 00 00 00 00              	jmp	0 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE17__destruct_at_endEPS2_NS_17integral_constantIbLb0EEE+0x63>
10000a6c3: e9 b0 ff ff ff              	jmp	-80 <__ZNSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE17__destruct_at_endEPS2_NS_17integral_constantIbLb0EEE+0x18>
10000a6c8: 48 83 c4 30                 	addq	$48, %rsp
10000a6cc: 5d                          	popq	%rbp
10000a6cd: c3                          	retq
10000a6ce: 48 89 c7                    	movq	%rax, %rdi
10000a6d1: 48 89 55 d0                 	movq	%rdx, -48(%rbp)
10000a6d5: e8 16 6e ff ff              	callq	-37354 <___clang_call_terminate>
10000a6da: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

000000010000a6e0 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE7destroyIS3_EEvRS4_PT_:
10000a6e0: 55                          	pushq	%rbp
10000a6e1: 48 89 e5                    	movq	%rsp, %rbp
10000a6e4: 48 83 ec 20                 	subq	$32, %rsp
10000a6e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a6ec: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a6f0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000a6f4: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000a6f8: e8 13 00 00 00              	callq	19 <__ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE9__destroyIS3_EEvNS_17integral_constantIbLb1EEERS4_PT_>
10000a6fd: 48 83 c4 20                 	addq	$32, %rsp
10000a701: 5d                          	popq	%rbp
10000a702: c3                          	retq
10000a703: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000a70d: 0f 1f 00                    	nopl	(%rax)

000000010000a710 __ZNSt3__116allocator_traitsINS_9allocatorIN9AsmParser8asm_lineEEEE9__destroyIS3_EEvNS_17integral_constantIbLb1EEERS4_PT_:
10000a710: 55                          	pushq	%rbp
10000a711: 48 89 e5                    	movq	%rsp, %rbp
10000a714: 48 83 ec 20                 	subq	$32, %rsp
10000a718: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000a71c: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
10000a720: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a724: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000a728: e8 13 00 00 00              	callq	19 <__ZNSt3__19allocatorIN9AsmParser8asm_lineEE7destroyEPS2_>
10000a72d: 48 83 c4 20                 	addq	$32, %rsp
10000a731: 5d                          	popq	%rbp
10000a732: c3                          	retq
10000a733: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000a73d: 0f 1f 00                    	nopl	(%rax)

000000010000a740 __ZNSt3__19allocatorIN9AsmParser8asm_lineEE7destroyEPS2_:
10000a740: 55                          	pushq	%rbp
10000a741: 48 89 e5                    	movq	%rsp, %rbp
10000a744: 48 83 ec 10                 	subq	$16, %rsp
10000a748: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a74c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a750: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a754: e8 87 70 ff ff              	callq	-36729 <__ZN9AsmParser8asm_lineD1Ev>
10000a759: 48 83 c4 10                 	addq	$16, %rsp
10000a75d: 5d                          	popq	%rbp
10000a75e: c3                          	retq
10000a75f: 90                          	nop

000000010000a760 __ZNSt3__19allocatorIN9AsmParser8asm_lineEE10deallocateEPS2_m:
10000a760: 55                          	pushq	%rbp
10000a761: 48 89 e5                    	movq	%rsp, %rbp
10000a764: 48 83 ec 20                 	subq	$32, %rsp
10000a768: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a76c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a770: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000a774: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a778: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000a77c: 48 89 c1                    	movq	%rax, %rcx
10000a77f: 48 c1 e1 07                 	shlq	$7, %rcx
10000a783: 48 8d 34 c1                 	leaq	(%rcx,%rax,8), %rsi
10000a787: ba 08 00 00 00              	movl	$8, %edx
10000a78c: e8 3f c3 ff ff              	callq	-15553 <__ZNSt3__1L19__libcpp_deallocateEPvmm>
10000a791: e9 00 00 00 00              	jmp	0 <__ZNSt3__19allocatorIN9AsmParser8asm_lineEE10deallocateEPS2_m+0x36>
10000a796: 48 83 c4 20                 	addq	$32, %rsp
10000a79a: 5d                          	popq	%rbp
10000a79b: c3                          	retq
10000a79c: 48 89 c7                    	movq	%rax, %rdi
10000a79f: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
10000a7a3: e8 48 6d ff ff              	callq	-37560 <___clang_call_terminate>
10000a7a8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

000000010000a7b0 __ZNKSt3__114__split_bufferIN9AsmParser8asm_lineERNS_9allocatorIS2_EEE9__end_capEv:
10000a7b0: 55                          	pushq	%rbp
10000a7b1: 48 89 e5                    	movq	%rsp, %rbp
10000a7b4: 48 83 ec 10                 	subq	$16, %rsp
10000a7b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a7bc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a7c0: 48 05 18 00 00 00           	addq	$24, %rax
10000a7c6: 48 89 c7                    	movq	%rax, %rdi
10000a7c9: e8 12 00 00 00              	callq	18 <__ZNKSt3__117__compressed_pairIPN9AsmParser8asm_lineERNS_9allocatorIS2_EEE5firstEv>
10000a7ce: 48 83 c4 10                 	addq	$16, %rsp
10000a7d2: 5d                          	popq	%rbp
10000a7d3: c3                          	retq
10000a7d4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000a7de: 66 90                       	nop

000000010000a7e0 __ZNKSt3__117__compressed_pairIPN9AsmParser8asm_lineERNS_9allocatorIS2_EEE5firstEv:
10000a7e0: 55                          	pushq	%rbp
10000a7e1: 48 89 e5                    	movq	%rsp, %rbp
10000a7e4: 48 83 ec 10                 	subq	$16, %rsp
10000a7e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a7ec: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a7f0: 48 89 c7                    	movq	%rax, %rdi
10000a7f3: e8 e8 ed ff ff              	callq	-4632 <__ZNKSt3__122__compressed_pair_elemIPN9AsmParser8asm_lineELi0ELb0EE5__getEv>
10000a7f8: 48 83 c4 10                 	addq	$16, %rsp
10000a7fc: 5d                          	popq	%rbp
10000a7fd: c3                          	retq
10000a7fe: 66 90                       	nop

000000010000a800 __ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4failEv:
10000a800: 55                          	pushq	%rbp
10000a801: 48 89 e5                    	movq	%rsp, %rbp
10000a804: 48 83 ec 10                 	subq	$16, %rsp
10000a808: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a80c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a810: 48 89 c7                    	movq	%rax, %rdi
10000a813: e8 18 00 00 00              	callq	24 <__ZNKSt3__18ios_base4failEv>
10000a818: 24 01                       	andb	$1, %al
10000a81a: 0f b6 c0                    	movzbl	%al, %eax
10000a81d: 48 83 c4 10                 	addq	$16, %rsp
10000a821: 5d                          	popq	%rbp
10000a822: c3                          	retq
10000a823: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000a82d: 0f 1f 00                    	nopl	(%rax)

000000010000a830 __ZNKSt3__18ios_base4failEv:
10000a830: 55                          	pushq	%rbp
10000a831: 48 89 e5                    	movq	%rsp, %rbp
10000a834: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a838: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a83c: 8b 48 20                    	movl	32(%rax), %ecx
10000a83f: 83 e1 05                    	andl	$5, %ecx
10000a842: 83 f9 00                    	cmpl	$0, %ecx
10000a845: 0f 95 c2                    	setne	%dl
10000a848: 80 e2 01                    	andb	$1, %dl
10000a84b: 0f b6 c2                    	movzbl	%dl, %eax
10000a84e: 5d                          	popq	%rbp
10000a84f: c3                          	retq

000000010000a850 __ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv:
10000a850: 55                          	pushq	%rbp
10000a851: 48 89 e5                    	movq	%rsp, %rbp
10000a854: 48 83 ec 20                 	subq	$32, %rsp
10000a858: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a85c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a860: 48 89 c7                    	movq	%rax, %rdi
10000a863: 48 89 45 f0                 	movq	%rax, -16(%rbp)
10000a867: e8 44 00 00 00              	callq	68 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv>
10000a86c: a8 01                       	testb	$1, %al
10000a86e: 0f 85 05 00 00 00           	jne	5 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv+0x29>
10000a874: e9 12 00 00 00              	jmp	18 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv+0x3b>
10000a879: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a87d: e8 6e 00 00 00              	callq	110 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv>
10000a882: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000a886: e9 0d 00 00 00              	jmp	13 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeEv+0x48>
10000a88b: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a88f: e8 7c 00 00 00              	callq	124 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv>
10000a894: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000a898: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000a89c: 48 83 c4 20                 	addq	$32, %rsp
10000a8a0: 5d                          	popq	%rbp
10000a8a1: c3                          	retq
10000a8a2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000a8ac: 0f 1f 40 00                 	nopl	(%rax)

000000010000a8b0 __ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv:
10000a8b0: 55                          	pushq	%rbp
10000a8b1: 48 89 e5                    	movq	%rsp, %rbp
10000a8b4: 48 83 ec 10                 	subq	$16, %rsp
10000a8b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a8bc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000a8c0: e8 7b 00 00 00              	callq	123 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
10000a8c5: 0f b6 08                    	movzbl	(%rax), %ecx
10000a8c8: 89 c8                       	movl	%ecx, %eax
10000a8ca: 48 25 01 00 00 00           	andq	$1, %rax
10000a8d0: 48 83 f8 00                 	cmpq	$0, %rax
10000a8d4: 0f 95 c2                    	setne	%dl
10000a8d7: 80 e2 01                    	andb	$1, %dl
10000a8da: 0f b6 c2                    	movzbl	%dl, %eax
10000a8dd: 48 83 c4 10                 	addq	$16, %rsp
10000a8e1: 5d                          	popq	%rbp
10000a8e2: c3                          	retq
10000a8e3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000a8ed: 0f 1f 00                    	nopl	(%rax)

000000010000a8f0 __ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeEv:
10000a8f0: 55                          	pushq	%rbp
10000a8f1: 48 89 e5                    	movq	%rsp, %rbp
10000a8f4: 48 83 ec 10                 	subq	$16, %rsp
10000a8f8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a8fc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000a900: e8 3b 00 00 00              	callq	59 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
10000a905: 48 8b 40 08                 	movq	8(%rax), %rax
10000a909: 48 83 c4 10                 	addq	$16, %rsp
10000a90d: 5d                          	popq	%rbp
10000a90e: c3                          	retq
10000a90f: 90                          	nop

000000010000a910 __ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeEv:
10000a910: 55                          	pushq	%rbp
10000a911: 48 89 e5                    	movq	%rsp, %rbp
10000a914: 48 83 ec 10                 	subq	$16, %rsp
10000a918: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a91c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000a920: e8 1b 00 00 00              	callq	27 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
10000a925: 0f b6 08                    	movzbl	(%rax), %ecx
10000a928: c1 f9 01                    	sarl	$1, %ecx
10000a92b: 48 63 c1                    	movslq	%ecx, %rax
10000a92e: 48 83 c4 10                 	addq	$16, %rsp
10000a932: 5d                          	popq	%rbp
10000a933: c3                          	retq
10000a934: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000a93e: 66 90                       	nop

000000010000a940 __ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv:
10000a940: 55                          	pushq	%rbp
10000a941: 48 89 e5                    	movq	%rsp, %rbp
10000a944: 48 83 ec 10                 	subq	$16, %rsp
10000a948: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a94c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a950: 48 89 c7                    	movq	%rax, %rdi
10000a953: e8 08 00 00 00              	callq	8 <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv>
10000a958: 48 83 c4 10                 	addq	$16, %rsp
10000a95c: 5d                          	popq	%rbp
10000a95d: c3                          	retq
10000a95e: 66 90                       	nop

000000010000a960 __ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv:
10000a960: 55                          	pushq	%rbp
10000a961: 48 89 e5                    	movq	%rsp, %rbp
10000a964: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a968: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a96c: 5d                          	popq	%rbp
10000a96d: c3                          	retq
10000a96e: 66 90                       	nop

000000010000a970 __ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m:
10000a970: 55                          	pushq	%rbp
10000a971: 48 89 e5                    	movq	%rsp, %rbp
10000a974: 48 81 ec a0 00 00 00        	subq	$160, %rsp
10000a97b: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a97f: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a983: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000a987: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
10000a98b: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
10000a98f: e8 3e 0b 00 00              	callq	2878 <state.cpp+0x10000b4d2>
10000a994: e9 00 00 00 00              	jmp	0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x29>
10000a999: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
10000a99d: e8 ce 01 00 00              	callq	462 <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv>
10000a9a2: 88 45 b7                    	movb	%al, -73(%rbp)
10000a9a5: e9 00 00 00 00              	jmp	0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x3a>
10000a9aa: 8a 45 b7                    	movb	-73(%rbp), %al
10000a9ad: a8 01                       	testb	$1, %al
10000a9af: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x4a>
10000a9b5: e9 6c 01 00 00              	jmp	364 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b6>
10000a9ba: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
10000a9be: 48 8d 7d b8                 	leaq	-72(%rbp), %rdi
10000a9c2: e8 e9 03 00 00              	callq	1001 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE>
10000a9c7: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000a9cb: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a9cf: 48 8b 08                    	movq	(%rax), %rcx
10000a9d2: 48 8b 49 e8                 	movq	-24(%rcx), %rcx
10000a9d6: 48 01 c8                    	addq	%rcx, %rax
10000a9d9: 48 89 c7                    	movq	%rax, %rdi
10000a9dc: 48 89 75 a8                 	movq	%rsi, -88(%rbp)
10000a9e0: e8 fb 03 00 00              	callq	1019 <__ZNKSt3__18ios_base5flagsEv>
10000a9e5: 89 45 a4                    	movl	%eax, -92(%rbp)
10000a9e8: e9 00 00 00 00              	jmp	0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x7d>
10000a9ed: 8b 45 a4                    	movl	-92(%rbp), %eax
10000a9f0: 25 b0 00 00 00              	andl	$176, %eax
10000a9f5: 83 f8 20                    	cmpl	$32, %eax
10000a9f8: 0f 85 11 00 00 00           	jne	17 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x9f>
10000a9fe: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000aa02: 48 03 45 e8                 	addq	-24(%rbp), %rax
10000aa06: 48 89 45 98                 	movq	%rax, -104(%rbp)
10000aa0a: e9 08 00 00 00              	jmp	8 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xa7>
10000aa0f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000aa13: 48 89 45 98                 	movq	%rax, -104(%rbp)
10000aa17: 48 8b 45 98                 	movq	-104(%rbp), %rax
10000aa1b: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000aa1f: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000aa23: 48 01 d1                    	addq	%rdx, %rcx
10000aa26: 48 8b 55 f8                 	movq	-8(%rbp), %rdx
10000aa2a: 48 8b 32                    	movq	(%rdx), %rsi
10000aa2d: 48 8b 76 e8                 	movq	-24(%rsi), %rsi
10000aa31: 48 01 f2                    	addq	%rsi, %rdx
10000aa34: 48 89 d7                    	movq	%rdx, %rdi
10000aa37: 48 89 45 90                 	movq	%rax, -112(%rbp)
10000aa3b: 48 89 4d 88                 	movq	%rcx, -120(%rbp)
10000aa3f: 48 89 55 80                 	movq	%rdx, -128(%rbp)
10000aa43: e8 b8 03 00 00              	callq	952 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv>
10000aa48: 88 85 7f ff ff ff           	movb	%al, -129(%rbp)
10000aa4e: e9 00 00 00 00              	jmp	0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xe3>
10000aa53: 48 8b 7d b8                 	movq	-72(%rbp), %rdi
10000aa57: 8a 85 7f ff ff ff           	movb	-129(%rbp), %al
10000aa5d: 44 0f be c8                 	movsbl	%al, %r9d
10000aa61: 48 8b 75 a8                 	movq	-88(%rbp), %rsi
10000aa65: 48 8b 55 90                 	movq	-112(%rbp), %rdx
10000aa69: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
10000aa6d: 4c 8b 45 80                 	movq	-128(%rbp), %r8
10000aa71: e8 1a 01 00 00              	callq	282 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>
10000aa76: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
10000aa7d: e9 00 00 00 00              	jmp	0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x112>
10000aa82: 48 8b 85 70 ff ff ff        	movq	-144(%rbp), %rax
10000aa89: 48 89 45 c0                 	movq	%rax, -64(%rbp)
10000aa8d: 48 8d 7d c0                 	leaq	-64(%rbp), %rdi
10000aa91: e8 da 03 00 00              	callq	986 <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv>
10000aa96: a8 01                       	testb	$1, %al
10000aa98: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x133>
10000aa9e: e9 7e 00 00 00              	jmp	126 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b1>
10000aaa3: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000aaa7: 48 8b 08                    	movq	(%rax), %rcx
10000aaaa: 48 8b 49 e8                 	movq	-24(%rcx), %rcx
10000aaae: 48 01 c8                    	addq	%rcx, %rax
10000aab1: be 05 00 00 00              	movl	$5, %esi
10000aab6: 48 89 c7                    	movq	%rax, %rdi
10000aab9: e8 d2 03 00 00              	callq	978 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj>
10000aabe: e9 00 00 00 00              	jmp	0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x153>
10000aac3: e9 59 00 00 00              	jmp	89 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b1>
10000aac8: 48 89 45 d0                 	movq	%rax, -48(%rbp)
10000aacc: 89 55 cc                    	movl	%edx, -52(%rbp)
10000aacf: e9 10 00 00 00              	jmp	16 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x174>
10000aad4: 48 89 45 d0                 	movq	%rax, -48(%rbp)
10000aad8: 89 55 cc                    	movl	%edx, -52(%rbp)
10000aadb: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
10000aadf: e8 f4 09 00 00              	callq	2548 <state.cpp+0x10000b4d8>
10000aae4: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000aae8: e8 ab 0a 00 00              	callq	2731 <state.cpp+0x10000b598>
10000aaed: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
10000aaf1: 48 8b 11                    	movq	(%rcx), %rdx
10000aaf4: 48 8b 52 e8                 	movq	-24(%rdx), %rdx
10000aaf8: 48 01 d1                    	addq	%rdx, %rcx
10000aafb: 48 89 cf                    	movq	%rcx, %rdi
10000aafe: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
10000ab05: e8 34 0a 00 00              	callq	2612 <state.cpp+0x10000b53e>
10000ab0a: e9 00 00 00 00              	jmp	0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x19f>
10000ab0f: e8 8a 0a 00 00              	callq	2698 <state.cpp+0x10000b59e>
10000ab14: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000ab18: 48 81 c4 a0 00 00 00        	addq	$160, %rsp
10000ab1f: 5d                          	popq	%rbp
10000ab20: c3                          	retq
10000ab21: e9 00 00 00 00              	jmp	0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b6>
10000ab26: 48 8d 7d d8                 	leaq	-40(%rbp), %rdi
10000ab2a: e8 a9 09 00 00              	callq	2473 <state.cpp+0x10000b4d8>
10000ab2f: e9 e0 ff ff ff              	jmp	-32 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1a4>
10000ab34: 48 89 45 d0                 	movq	%rax, -48(%rbp)
10000ab38: 89 55 cc                    	movl	%edx, -52(%rbp)
10000ab3b: e8 5e 0a 00 00              	callq	2654 <state.cpp+0x10000b59e>
10000ab40: e9 00 00 00 00              	jmp	0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1d5>
10000ab45: e9 00 00 00 00              	jmp	0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1da>
10000ab4a: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000ab4e: e8 cb 08 00 00              	callq	2251 <state.cpp+0x10000b41e>
10000ab53: 0f 0b                       	ud2
10000ab55: 48 89 c7                    	movq	%rax, %rdi
10000ab58: 48 89 95 60 ff ff ff        	movq	%rdx, -160(%rbp)
10000ab5f: e8 8c 69 ff ff              	callq	-38516 <___clang_call_terminate>
10000ab64: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000ab6e: 66 90                       	nop

000000010000ab70 __ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv:
10000ab70: 55                          	pushq	%rbp
10000ab71: 48 89 e5                    	movq	%rsp, %rbp
10000ab74: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000ab78: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000ab7c: 8a 08                       	movb	(%rax), %cl
10000ab7e: 80 e1 01                    	andb	$1, %cl
10000ab81: 0f b6 c1                    	movzbl	%cl, %eax
10000ab84: 5d                          	popq	%rbp
10000ab85: c3                          	retq
10000ab86: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

000000010000ab90 __ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_:
10000ab90: 55                          	pushq	%rbp
10000ab91: 48 89 e5                    	movq	%rsp, %rbp
10000ab94: 48 81 ec 90 00 00 00        	subq	$144, %rsp
10000ab9b: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000ab9f: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
10000aba3: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
10000aba7: 48 89 4d d8                 	movq	%rcx, -40(%rbp)
10000abab: 4c 89 45 d0                 	movq	%r8, -48(%rbp)
10000abaf: 44 88 4d cf                 	movb	%r9b, -49(%rbp)
10000abb3: 48 83 7d f0 00              	cmpq	$0, -16(%rbp)
10000abb8: 0f 85 0d 00 00 00           	jne	13 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x3b>
10000abbe: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000abc2: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000abc6: e9 be 01 00 00              	jmp	446 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1f9>
10000abcb: 48 8b 45 d8                 	movq	-40(%rbp), %rax
10000abcf: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
10000abd3: 48 29 c8                    	subq	%rcx, %rax
10000abd6: 48 89 45 c0                 	movq	%rax, -64(%rbp)
10000abda: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000abde: e8 dd 02 00 00              	callq	733 <__ZNKSt3__18ios_base5widthEv>
10000abe3: 48 89 45 b8                 	movq	%rax, -72(%rbp)
10000abe7: 48 8b 45 b8                 	movq	-72(%rbp), %rax
10000abeb: 48 3b 45 c0                 	cmpq	-64(%rbp), %rax
10000abef: 0f 8e 14 00 00 00           	jle	20 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x79>
10000abf5: 48 8b 45 c0                 	movq	-64(%rbp), %rax
10000abf9: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
10000abfd: 48 29 c1                    	subq	%rax, %rcx
10000ac00: 48 89 4d b8                 	movq	%rcx, -72(%rbp)
10000ac04: e9 08 00 00 00              	jmp	8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x81>
10000ac09: 48 c7 45 b8 00 00 00 00     	movq	$0, -72(%rbp)
10000ac11: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000ac15: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
10000ac19: 48 29 c8                    	subq	%rcx, %rax
10000ac1c: 48 89 45 b0                 	movq	%rax, -80(%rbp)
10000ac20: 48 83 7d b0 00              	cmpq	$0, -80(%rbp)
10000ac25: 0f 8e 35 00 00 00           	jle	53 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xd0>
10000ac2b: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000ac2f: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000ac33: 48 8b 55 b0                 	movq	-80(%rbp), %rdx
10000ac37: e8 a4 02 00 00              	callq	676 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>
10000ac3c: 48 3b 45 b0                 	cmpq	-80(%rbp), %rax
10000ac40: 0f 84 15 00 00 00           	je	21 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xcb>
10000ac46: 48 c7 45 f0 00 00 00 00     	movq	$0, -16(%rbp)
10000ac4e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ac52: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000ac56: e9 2e 01 00 00              	jmp	302 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1f9>
10000ac5b: e9 00 00 00 00              	jmp	0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xd0>
10000ac60: 48 83 7d b8 00              	cmpq	$0, -72(%rbp)
10000ac65: 0f 8e ba 00 00 00           	jle	186 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x195>
10000ac6b: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
10000ac6f: 0f be 55 cf                 	movsbl	-49(%rbp), %edx
10000ac73: 48 8d 45 98                 	leaq	-104(%rbp), %rax
10000ac77: 48 89 c7                    	movq	%rax, %rdi
10000ac7a: 48 89 45 80                 	movq	%rax, -128(%rbp)
10000ac7e: e8 8d 02 00 00              	callq	653 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc>
10000ac83: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000ac87: 48 8b 45 80                 	movq	-128(%rbp), %rax
10000ac8b: 48 89 bd 78 ff ff ff        	movq	%rdi, -136(%rbp)
10000ac92: 48 89 c7                    	movq	%rax, %rdi
10000ac95: e8 a6 02 00 00              	callq	678 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv>
10000ac9a: 48 8b 55 b8                 	movq	-72(%rbp), %rdx
10000ac9e: 48 8b bd 78 ff ff ff        	movq	-136(%rbp), %rdi
10000aca5: 48 89 c6                    	movq	%rax, %rsi
10000aca8: e8 33 02 00 00              	callq	563 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>
10000acad: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
10000acb4: e9 00 00 00 00              	jmp	0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x129>
10000acb9: 48 8b 85 70 ff ff ff        	movq	-144(%rbp), %rax
10000acc0: 48 3b 45 b8                 	cmpq	-72(%rbp), %rax
10000acc4: 0f 84 31 00 00 00           	je	49 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x16b>
10000acca: 48 c7 45 f0 00 00 00 00     	movq	$0, -16(%rbp)
10000acd2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000acd6: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000acda: c7 45 88 01 00 00 00        	movl	$1, -120(%rbp)
10000ace1: e9 1c 00 00 00              	jmp	28 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x172>
10000ace6: 48 89 45 90                 	movq	%rax, -112(%rbp)
10000acea: 89 55 8c                    	movl	%edx, -116(%rbp)
10000aced: 48 8d 7d 98                 	leaq	-104(%rbp), %rdi
10000acf1: e8 a6 07 00 00              	callq	1958 <state.cpp+0x10000b49c>
10000acf6: e9 9b 00 00 00              	jmp	155 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x206>
10000acfb: c7 45 88 00 00 00 00        	movl	$0, -120(%rbp)
10000ad02: 48 8d 7d 98                 	leaq	-104(%rbp), %rdi
10000ad06: e8 91 07 00 00              	callq	1937 <state.cpp+0x10000b49c>
10000ad0b: 8b 45 88                    	movl	-120(%rbp), %eax
10000ad0e: 85 c0                       	testl	%eax, %eax
10000ad10: 0f 84 0a 00 00 00           	je	10 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x190>
10000ad16: e9 00 00 00 00              	jmp	0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x18b>
10000ad1b: e9 69 00 00 00              	jmp	105 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1f9>
10000ad20: e9 00 00 00 00              	jmp	0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x195>
10000ad25: 48 8b 45 d8                 	movq	-40(%rbp), %rax
10000ad29: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000ad2d: 48 29 c8                    	subq	%rcx, %rax
10000ad30: 48 89 45 b0                 	movq	%rax, -80(%rbp)
10000ad34: 48 83 7d b0 00              	cmpq	$0, -80(%rbp)
10000ad39: 0f 8e 35 00 00 00           	jle	53 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e4>
10000ad3f: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000ad43: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
10000ad47: 48 8b 55 b0                 	movq	-80(%rbp), %rdx
10000ad4b: e8 90 01 00 00              	callq	400 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl>
10000ad50: 48 3b 45 b0                 	cmpq	-80(%rbp), %rax
10000ad54: 0f 84 15 00 00 00           	je	21 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1df>
10000ad5a: 48 c7 45 f0 00 00 00 00     	movq	$0, -16(%rbp)
10000ad62: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ad66: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000ad6a: e9 1a 00 00 00              	jmp	26 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1f9>
10000ad6f: e9 00 00 00 00              	jmp	0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e4>
10000ad74: 31 c0                       	xorl	%eax, %eax
10000ad76: 89 c6                       	movl	%eax, %esi
10000ad78: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000ad7c: e8 ef 01 00 00              	callq	495 <__ZNSt3__18ios_base5widthEl>
10000ad81: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000ad85: 48 89 4d f8                 	movq	%rcx, -8(%rbp)
10000ad89: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000ad8d: 48 81 c4 90 00 00 00        	addq	$144, %rsp
10000ad94: 5d                          	popq	%rbp
10000ad95: c3                          	retq
10000ad96: 48 8b 7d 90                 	movq	-112(%rbp), %rdi
10000ad9a: e8 7f 06 00 00              	callq	1663 <state.cpp+0x10000b41e>
10000ad9f: 0f 0b                       	ud2
10000ada1: 0f 0b                       	ud2
10000ada3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000adad: 0f 1f 00                    	nopl	(%rax)

000000010000adb0 __ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE:
10000adb0: 55                          	pushq	%rbp
10000adb1: 48 89 e5                    	movq	%rsp, %rbp
10000adb4: 48 83 ec 10                 	subq	$16, %rsp
10000adb8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000adbc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000adc0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000adc4: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000adc8: e8 03 03 00 00              	callq	771 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE>
10000adcd: 48 83 c4 10                 	addq	$16, %rsp
10000add1: 5d                          	popq	%rbp
10000add2: c3                          	retq
10000add3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000addd: 0f 1f 00                    	nopl	(%rax)

000000010000ade0 __ZNKSt3__18ios_base5flagsEv:
10000ade0: 55                          	pushq	%rbp
10000ade1: 48 89 e5                    	movq	%rsp, %rbp
10000ade4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000ade8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000adec: 8b 40 08                    	movl	8(%rax), %eax
10000adef: 5d                          	popq	%rbp
10000adf0: c3                          	retq
10000adf1: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000adfb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

000000010000ae00 __ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv:
10000ae00: 55                          	pushq	%rbp
10000ae01: 48 89 e5                    	movq	%rsp, %rbp
10000ae04: 48 83 ec 10                 	subq	$16, %rsp
10000ae08: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000ae0c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000ae10: 48 89 45 f0                 	movq	%rax, -16(%rbp)
10000ae14: e8 53 06 00 00              	callq	1619 <state.cpp+0x10000b46c>
10000ae19: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000ae1d: 8b b1 90 00 00 00           	movl	144(%rcx), %esi
10000ae23: 89 c7                       	movl	%eax, %edi
10000ae25: e8 2a 06 00 00              	callq	1578 <state.cpp+0x10000b454>
10000ae2a: a8 01                       	testb	$1, %al
10000ae2c: 0f 85 05 00 00 00           	jne	5 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv+0x37>
10000ae32: e9 1b 00 00 00              	jmp	27 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv+0x52>
10000ae37: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000ae3b: be 20 00 00 00              	movl	$32, %esi
10000ae40: e8 2b 03 00 00              	callq	811 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc>
10000ae45: 0f be c8                    	movsbl	%al, %ecx
10000ae48: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
10000ae4c: 89 8a 90 00 00 00           	movl	%ecx, 144(%rdx)
10000ae52: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ae56: 8b 88 90 00 00 00           	movl	144(%rax), %ecx
10000ae5c: 0f be d1                    	movsbl	%cl, %edx
10000ae5f: 89 d0                       	movl	%edx, %eax
10000ae61: 48 83 c4 10                 	addq	$16, %rsp
10000ae65: 5d                          	popq	%rbp
10000ae66: c3                          	retq
10000ae67: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

000000010000ae70 __ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv:
10000ae70: 55                          	pushq	%rbp
10000ae71: 48 89 e5                    	movq	%rsp, %rbp
10000ae74: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000ae78: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000ae7c: 48 83 38 00                 	cmpq	$0, (%rax)
10000ae80: 0f 94 c1                    	sete	%cl
10000ae83: 80 e1 01                    	andb	$1, %cl
10000ae86: 0f b6 c1                    	movzbl	%cl, %eax
10000ae89: 5d                          	popq	%rbp
10000ae8a: c3                          	retq
10000ae8b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

000000010000ae90 __ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj:
10000ae90: 55                          	pushq	%rbp
10000ae91: 48 89 e5                    	movq	%rsp, %rbp
10000ae94: 48 83 ec 10                 	subq	$16, %rsp
10000ae98: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000ae9c: 89 75 f4                    	movl	%esi, -12(%rbp)
10000ae9f: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000aea3: 8b 75 f4                    	movl	-12(%rbp), %esi
10000aea6: 48 89 c7                    	movq	%rax, %rdi
10000aea9: e8 a2 03 00 00              	callq	930 <__ZNSt3__18ios_base8setstateEj>
10000aeae: 48 83 c4 10                 	addq	$16, %rsp
10000aeb2: 5d                          	popq	%rbp
10000aeb3: c3                          	retq
10000aeb4: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000aebe: 66 90                       	nop

000000010000aec0 __ZNKSt3__18ios_base5widthEv:
10000aec0: 55                          	pushq	%rbp
10000aec1: 48 89 e5                    	movq	%rsp, %rbp
10000aec4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000aec8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000aecc: 48 8b 40 18                 	movq	24(%rax), %rax
10000aed0: 5d                          	popq	%rbp
10000aed1: c3                          	retq
10000aed2: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000aedc: 0f 1f 40 00                 	nopl	(%rax)

000000010000aee0 __ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl:
10000aee0: 55                          	pushq	%rbp
10000aee1: 48 89 e5                    	movq	%rsp, %rbp
10000aee4: 48 83 ec 20                 	subq	$32, %rsp
10000aee8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000aeec: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000aef0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000aef4: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000aef8: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000aefc: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000af00: 48 8b 08                    	movq	(%rax), %rcx
10000af03: 48 89 c7                    	movq	%rax, %rdi
10000af06: ff 51 60                    	callq	*96(%rcx)
10000af09: 48 83 c4 20                 	addq	$32, %rsp
10000af0d: 5d                          	popq	%rbp
10000af0e: c3                          	retq
10000af0f: 90                          	nop

000000010000af10 __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc:
10000af10: 55                          	pushq	%rbp
10000af11: 48 89 e5                    	movq	%rsp, %rbp
10000af14: 48 83 ec 20                 	subq	$32, %rsp
10000af18: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000af1c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000af20: 88 55 ef                    	movb	%dl, -17(%rbp)
10000af23: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000af27: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000af2b: 0f be 55 ef                 	movsbl	-17(%rbp), %edx
10000af2f: e8 6c 00 00 00              	callq	108 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc>
10000af34: 48 83 c4 20                 	addq	$32, %rsp
10000af38: 5d                          	popq	%rbp
10000af39: c3                          	retq
10000af3a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

000000010000af40 __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv:
10000af40: 55                          	pushq	%rbp
10000af41: 48 89 e5                    	movq	%rsp, %rbp
10000af44: 48 83 ec 10                 	subq	$16, %rsp
10000af48: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000af4c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000af50: e8 9b 00 00 00              	callq	155 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv>
10000af55: 48 89 c7                    	movq	%rax, %rdi
10000af58: e8 83 00 00 00              	callq	131 <__ZNSt3__1L16__to_raw_pointerIcEEPT_S2_>
10000af5d: 48 83 c4 10                 	addq	$16, %rsp
10000af61: 5d                          	popq	%rbp
10000af62: c3                          	retq
10000af63: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000af6d: 0f 1f 00                    	nopl	(%rax)

000000010000af70 __ZNSt3__18ios_base5widthEl:
10000af70: 55                          	pushq	%rbp
10000af71: 48 89 e5                    	movq	%rsp, %rbp
10000af74: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000af78: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000af7c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000af80: 48 8b 48 18                 	movq	24(%rax), %rcx
10000af84: 48 89 4d e8                 	movq	%rcx, -24(%rbp)
10000af88: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000af8c: 48 89 48 18                 	movq	%rcx, 24(%rax)
10000af90: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000af94: 5d                          	popq	%rbp
10000af95: c3                          	retq
10000af96: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

000000010000afa0 __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc:
10000afa0: 55                          	pushq	%rbp
10000afa1: 48 89 e5                    	movq	%rsp, %rbp
10000afa4: 48 83 ec 20                 	subq	$32, %rsp
10000afa8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000afac: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000afb0: 88 55 ef                    	movb	%dl, -17(%rbp)
10000afb3: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000afb7: 48 89 c7                    	movq	%rax, %rdi
10000afba: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000afbe: e8 fd da ff ff              	callq	-9475 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1ILb1EvEEv>
10000afc3: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000afc7: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
10000afcb: 0f be 55 ef                 	movsbl	-17(%rbp), %edx
10000afcf: e8 b0 04 00 00              	callq	1200 <state.cpp+0x10000b484>
10000afd4: 48 83 c4 20                 	addq	$32, %rsp
10000afd8: 5d                          	popq	%rbp
10000afd9: c3                          	retq
10000afda: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

000000010000afe0 __ZNSt3__1L16__to_raw_pointerIcEEPT_S2_:
10000afe0: 55                          	pushq	%rbp
10000afe1: 48 89 e5                    	movq	%rsp, %rbp
10000afe4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000afe8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000afec: 5d                          	popq	%rbp
10000afed: c3                          	retq
10000afee: 66 90                       	nop

000000010000aff0 __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv:
10000aff0: 55                          	pushq	%rbp
10000aff1: 48 89 e5                    	movq	%rsp, %rbp
10000aff4: 48 83 ec 20                 	subq	$32, %rsp
10000aff8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000affc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000b000: 48 89 c7                    	movq	%rax, %rdi
10000b003: 48 89 45 f0                 	movq	%rax, -16(%rbp)
10000b007: e8 a4 f8 ff ff              	callq	-1884 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv>
10000b00c: a8 01                       	testb	$1, %al
10000b00e: 0f 85 05 00 00 00           	jne	5 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x29>
10000b014: e9 12 00 00 00              	jmp	18 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x3b>
10000b019: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000b01d: e8 2e 00 00 00              	callq	46 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv>
10000b022: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000b026: e9 0d 00 00 00              	jmp	13 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x48>
10000b02b: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000b02f: e8 3c 00 00 00              	callq	60 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv>
10000b034: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000b038: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000b03c: 48 83 c4 20                 	addq	$32, %rsp
10000b040: 5d                          	popq	%rbp
10000b041: c3                          	retq
10000b042: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000b04c: 0f 1f 40 00                 	nopl	(%rax)

000000010000b050 __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv:
10000b050: 55                          	pushq	%rbp
10000b051: 48 89 e5                    	movq	%rsp, %rbp
10000b054: 48 83 ec 10                 	subq	$16, %rsp
10000b058: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b05c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000b060: e8 6b db ff ff              	callq	-9365 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
10000b065: 48 8b 40 10                 	movq	16(%rax), %rax
10000b069: 48 83 c4 10                 	addq	$16, %rsp
10000b06d: 5d                          	popq	%rbp
10000b06e: c3                          	retq
10000b06f: 90                          	nop

000000010000b070 __ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv:
10000b070: 55                          	pushq	%rbp
10000b071: 48 89 e5                    	movq	%rsp, %rbp
10000b074: 48 83 ec 10                 	subq	$16, %rsp
10000b078: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b07c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000b080: e8 4b db ff ff              	callq	-9397 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
10000b085: 48 05 01 00 00 00           	addq	$1, %rax
10000b08b: 48 89 c7                    	movq	%rax, %rdi
10000b08e: e8 0d 00 00 00              	callq	13 <__ZNSt3__114pointer_traitsIPcE10pointer_toERc>
10000b093: 48 83 c4 10                 	addq	$16, %rsp
10000b097: 5d                          	popq	%rbp
10000b098: c3                          	retq
10000b099: 0f 1f 80 00 00 00 00        	nopl	(%rax)

000000010000b0a0 __ZNSt3__114pointer_traitsIPcE10pointer_toERc:
10000b0a0: 55                          	pushq	%rbp
10000b0a1: 48 89 e5                    	movq	%rsp, %rbp
10000b0a4: 48 83 ec 10                 	subq	$16, %rsp
10000b0a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b0ac: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000b0b0: e8 0b 00 00 00              	callq	11 <__ZNSt3__1L9addressofIcEEPT_RS1_>
10000b0b5: 48 83 c4 10                 	addq	$16, %rsp
10000b0b9: 5d                          	popq	%rbp
10000b0ba: c3                          	retq
10000b0bb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

000000010000b0c0 __ZNSt3__1L9addressofIcEEPT_RS1_:
10000b0c0: 55                          	pushq	%rbp
10000b0c1: 48 89 e5                    	movq	%rsp, %rbp
10000b0c4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b0c8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000b0cc: 5d                          	popq	%rbp
10000b0cd: c3                          	retq
10000b0ce: 66 90                       	nop

000000010000b0d0 __ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE:
10000b0d0: 55                          	pushq	%rbp
10000b0d1: 48 89 e5                    	movq	%rsp, %rbp
10000b0d4: 48 83 ec 30                 	subq	$48, %rsp
10000b0d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b0dc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000b0e0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000b0e4: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b0e8: 48 8b 11                    	movq	(%rcx), %rdx
10000b0eb: 48 8b 52 e8                 	movq	-24(%rdx), %rdx
10000b0ef: 48 01 d1                    	addq	%rdx, %rcx
10000b0f2: 48 89 cf                    	movq	%rcx, %rdi
10000b0f5: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000b0f9: e8 32 00 00 00              	callq	50 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv>
10000b0fe: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000b102: e9 00 00 00 00              	jmp	0 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE+0x37>
10000b107: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000b10b: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000b10f: 48 89 08                    	movq	%rcx, (%rax)
10000b112: 48 83 c4 30                 	addq	$48, %rsp
10000b116: 5d                          	popq	%rbp
10000b117: c3                          	retq
10000b118: 48 89 c7                    	movq	%rax, %rdi
10000b11b: 48 89 55 d8                 	movq	%rdx, -40(%rbp)
10000b11f: e8 cc 63 ff ff              	callq	-39988 <___clang_call_terminate>
10000b124: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000b12e: 66 90                       	nop

000000010000b130 __ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv:
10000b130: 55                          	pushq	%rbp
10000b131: 48 89 e5                    	movq	%rsp, %rbp
10000b134: 48 83 ec 10                 	subq	$16, %rsp
10000b138: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b13c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000b140: 48 89 c7                    	movq	%rax, %rdi
10000b143: e8 08 00 00 00              	callq	8 <__ZNKSt3__18ios_base5rdbufEv>
10000b148: 48 83 c4 10                 	addq	$16, %rsp
10000b14c: 5d                          	popq	%rbp
10000b14d: c3                          	retq
10000b14e: 66 90                       	nop

000000010000b150 __ZNKSt3__18ios_base5rdbufEv:
10000b150: 55                          	pushq	%rbp
10000b151: 48 89 e5                    	movq	%rsp, %rbp
10000b154: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b158: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000b15c: 48 8b 40 28                 	movq	40(%rax), %rax
10000b160: 5d                          	popq	%rbp
10000b161: c3                          	retq
10000b162: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000b16c: 0f 1f 40 00                 	nopl	(%rax)

000000010000b170 __ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc:
10000b170: 55                          	pushq	%rbp
10000b171: 48 89 e5                    	movq	%rsp, %rbp
10000b174: 48 83 ec 40                 	subq	$64, %rsp
10000b178: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b17c: 40 88 75 f7                 	movb	%sil, -9(%rbp)
10000b180: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
10000b184: 48 8d 45 e8                 	leaq	-24(%rbp), %rax
10000b188: 48 89 c7                    	movq	%rax, %rdi
10000b18b: 48 89 45 d0                 	movq	%rax, -48(%rbp)
10000b18f: e8 b4 02 00 00              	callq	692 <state.cpp+0x10000b448>
10000b194: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
10000b198: e8 53 00 00 00              	callq	83 <__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE>
10000b19d: 48 89 45 c8                 	movq	%rax, -56(%rbp)
10000b1a1: e9 00 00 00 00              	jmp	0 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc+0x36>
10000b1a6: 0f be 75 f7                 	movsbl	-9(%rbp), %esi
10000b1aa: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
10000b1ae: e8 6d 00 00 00              	callq	109 <__ZNKSt3__15ctypeIcE5widenEc>
10000b1b3: 88 45 c7                    	movb	%al, -57(%rbp)
10000b1b6: e9 00 00 00 00              	jmp	0 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc+0x4b>
10000b1bb: 48 8d 7d e8                 	leaq	-24(%rbp), %rdi
10000b1bf: e8 50 03 00 00              	callq	848 <state.cpp+0x10000b514>
10000b1c4: 8a 45 c7                    	movb	-57(%rbp), %al
10000b1c7: 0f be c0                    	movsbl	%al, %eax
10000b1ca: 48 83 c4 40                 	addq	$64, %rsp
10000b1ce: 5d                          	popq	%rbp
10000b1cf: c3                          	retq
10000b1d0: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000b1d4: 89 55 dc                    	movl	%edx, -36(%rbp)
10000b1d7: 48 8d 7d e8                 	leaq	-24(%rbp), %rdi
10000b1db: e8 34 03 00 00              	callq	820 <state.cpp+0x10000b514>
10000b1e0: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
10000b1e4: e8 35 02 00 00              	callq	565 <state.cpp+0x10000b41e>
10000b1e9: 0f 0b                       	ud2
10000b1eb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

000000010000b1f0 __ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE:
10000b1f0: 55                          	pushq	%rbp
10000b1f1: 48 89 e5                    	movq	%rsp, %rbp
10000b1f4: 48 83 ec 10                 	subq	$16, %rsp
10000b1f8: 48 8b 35 19 0e 00 00        	movq	3609(%rip), %rsi
10000b1ff: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b203: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000b207: e8 24 02 00 00              	callq	548 <state.cpp+0x10000b430>
10000b20c: 48 83 c4 10                 	addq	$16, %rsp
10000b210: 5d                          	popq	%rbp
10000b211: c3                          	retq
10000b212: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000b21c: 0f 1f 40 00                 	nopl	(%rax)

000000010000b220 __ZNKSt3__15ctypeIcE5widenEc:
10000b220: 55                          	pushq	%rbp
10000b221: 48 89 e5                    	movq	%rsp, %rbp
10000b224: 48 83 ec 10                 	subq	$16, %rsp
10000b228: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b22c: 40 88 75 f7                 	movb	%sil, -9(%rbp)
10000b230: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000b234: 8a 4d f7                    	movb	-9(%rbp), %cl
10000b237: 48 8b 10                    	movq	(%rax), %rdx
10000b23a: 48 89 c7                    	movq	%rax, %rdi
10000b23d: 0f be f1                    	movsbl	%cl, %esi
10000b240: ff 52 38                    	callq	*56(%rdx)
10000b243: 0f be c0                    	movsbl	%al, %eax
10000b246: 48 83 c4 10                 	addq	$16, %rsp
10000b24a: 5d                          	popq	%rbp
10000b24b: c3                          	retq
10000b24c: 0f 1f 40 00                 	nopl	(%rax)

000000010000b250 __ZNSt3__18ios_base8setstateEj:
10000b250: 55                          	pushq	%rbp
10000b251: 48 89 e5                    	movq	%rsp, %rbp
10000b254: 48 83 ec 10                 	subq	$16, %rsp
10000b258: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b25c: 89 75 f4                    	movl	%esi, -12(%rbp)
10000b25f: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000b263: 8b 48 20                    	movl	32(%rax), %ecx
10000b266: 0b 4d f4                    	orl	-12(%rbp), %ecx
10000b269: 48 89 c7                    	movq	%rax, %rdi
10000b26c: 89 ce                       	movl	%ecx, %esi
10000b26e: e8 d7 02 00 00              	callq	727 <state.cpp+0x10000b54a>
10000b273: 48 83 c4 10                 	addq	$16, %rsp
10000b277: 5d                          	popq	%rbp
10000b278: c3                          	retq
10000b279: 0f 1f 80 00 00 00 00        	nopl	(%rax)

000000010000b280 __ZNSt3__16vectorIN9AsmParser8asm_lineENS_9allocatorIS2_EEE11__make_iterEPS2_:
10000b280: 55                          	pushq	%rbp
10000b281: 48 89 e5                    	movq	%rsp, %rbp
10000b284: 48 83 ec 20                 	subq	$32, %rsp
10000b288: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000b28c: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
10000b290: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000b294: 48 8d 7d f8                 	leaq	-8(%rbp), %rdi
10000b298: e8 13 00 00 00              	callq	19 <__ZNSt3__111__wrap_iterIPN9AsmParser8asm_lineEEC1ES3_>
10000b29d: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000b2a1: 48 83 c4 20                 	addq	$32, %rsp
10000b2a5: 5d                          	popq	%rbp
10000b2a6: c3                          	retq
10000b2a7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

000000010000b2b0 __ZNSt3__111__wrap_iterIPN9AsmParser8asm_lineEEC1ES3_:
10000b2b0: 55                          	pushq	%rbp
10000b2b1: 48 89 e5                    	movq	%rsp, %rbp
10000b2b4: 48 83 ec 10                 	subq	$16, %rsp
10000b2b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b2bc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000b2c0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000b2c4: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000b2c8: e8 13 00 00 00              	callq	19 <__ZNSt3__111__wrap_iterIPN9AsmParser8asm_lineEEC2ES3_>
10000b2cd: 48 83 c4 10                 	addq	$16, %rsp
10000b2d1: 5d                          	popq	%rbp
10000b2d2: c3                          	retq
10000b2d3: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000b2dd: 0f 1f 00                    	nopl	(%rax)

000000010000b2e0 __ZNSt3__111__wrap_iterIPN9AsmParser8asm_lineEEC2ES3_:
10000b2e0: 55                          	pushq	%rbp
10000b2e1: 48 89 e5                    	movq	%rsp, %rbp
10000b2e4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b2e8: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000b2ec: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000b2f0: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b2f4: 48 89 08                    	movq	%rcx, (%rax)
10000b2f7: 5d                          	popq	%rbp
10000b2f8: c3                          	retq
10000b2f9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

000000010000b300 __ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv:
10000b300: 55                          	pushq	%rbp
10000b301: 48 89 e5                    	movq	%rsp, %rbp
10000b304: 48 83 ec 10                 	subq	$16, %rsp
10000b308: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b30c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000b310: e8 2b 00 00 00              	callq	43 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv>
10000b315: 48 89 c7                    	movq	%rax, %rdi
10000b318: e8 13 00 00 00              	callq	19 <__ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_>
10000b31d: 48 83 c4 10                 	addq	$16, %rsp
10000b321: 5d                          	popq	%rbp
10000b322: c3                          	retq
10000b323: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000b32d: 0f 1f 00                    	nopl	(%rax)

000000010000b330 __ZNSt3__1L16__to_raw_pointerIKcEEPT_S3_:
10000b330: 55                          	pushq	%rbp
10000b331: 48 89 e5                    	movq	%rsp, %rbp
10000b334: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b338: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000b33c: 5d                          	popq	%rbp
10000b33d: c3                          	retq
10000b33e: 66 90                       	nop

000000010000b340 __ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv:
10000b340: 55                          	pushq	%rbp
10000b341: 48 89 e5                    	movq	%rsp, %rbp
10000b344: 48 83 ec 20                 	subq	$32, %rsp
10000b348: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b34c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000b350: 48 89 c7                    	movq	%rax, %rdi
10000b353: 48 89 45 f0                 	movq	%rax, -16(%rbp)
10000b357: e8 54 f5 ff ff              	callq	-2732 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv>
10000b35c: a8 01                       	testb	$1, %al
10000b35e: 0f 85 05 00 00 00           	jne	5 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x29>
10000b364: e9 12 00 00 00              	jmp	18 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x3b>
10000b369: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000b36d: e8 2e 00 00 00              	callq	46 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv>
10000b372: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000b376: e9 0d 00 00 00              	jmp	13 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv+0x48>
10000b37b: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000b37f: e8 3c 00 00 00              	callq	60 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv>
10000b384: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000b388: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000b38c: 48 83 c4 20                 	addq	$32, %rsp
10000b390: 5d                          	popq	%rbp
10000b391: c3                          	retq
10000b392: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)
10000b39c: 0f 1f 40 00                 	nopl	(%rax)

000000010000b3a0 __ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv:
10000b3a0: 55                          	pushq	%rbp
10000b3a1: 48 89 e5                    	movq	%rsp, %rbp
10000b3a4: 48 83 ec 10                 	subq	$16, %rsp
10000b3a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b3ac: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000b3b0: e8 8b f5 ff ff              	callq	-2677 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
10000b3b5: 48 8b 40 10                 	movq	16(%rax), %rax
10000b3b9: 48 83 c4 10                 	addq	$16, %rsp
10000b3bd: 5d                          	popq	%rbp
10000b3be: c3                          	retq
10000b3bf: 90                          	nop

000000010000b3c0 __ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv:
10000b3c0: 55                          	pushq	%rbp
10000b3c1: 48 89 e5                    	movq	%rsp, %rbp
10000b3c4: 48 83 ec 10                 	subq	$16, %rsp
10000b3c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b3cc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000b3d0: e8 6b f5 ff ff              	callq	-2709 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv>
10000b3d5: 48 05 01 00 00 00           	addq	$1, %rax
10000b3db: 48 89 c7                    	movq	%rax, %rdi
10000b3de: e8 0d 00 00 00              	callq	13 <__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_>
10000b3e3: 48 83 c4 10                 	addq	$16, %rsp
10000b3e7: 5d                          	popq	%rbp
10000b3e8: c3                          	retq
10000b3e9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

000000010000b3f0 __ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_:
10000b3f0: 55                          	pushq	%rbp
10000b3f1: 48 89 e5                    	movq	%rsp, %rbp
10000b3f4: 48 83 ec 10                 	subq	$16, %rsp
10000b3f8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b3fc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000b400: e8 0b 00 00 00              	callq	11 <__ZNSt3__1L9addressofIKcEEPT_RS2_>
10000b405: 48 83 c4 10                 	addq	$16, %rsp
10000b409: 5d                          	popq	%rbp
10000b40a: c3                          	retq
10000b40b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

000000010000b410 __ZNSt3__1L9addressofIKcEEPT_RS2_:
10000b410: 55                          	pushq	%rbp
10000b411: 48 89 e5                    	movq	%rsp, %rbp
10000b414: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b418: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000b41c: 5d                          	popq	%rbp
10000b41d: c3                          	retq

Disassembly of section __TEXT,__stubs:

000000010000b41e __stubs:
10000b41e: ff 25 dc 1b 00 00           	jmpq	*7132(%rip)
10000b424: ff 25 de 1b 00 00           	jmpq	*7134(%rip)
10000b42a: ff 25 e0 1b 00 00           	jmpq	*7136(%rip)
10000b430: ff 25 e2 1b 00 00           	jmpq	*7138(%rip)
10000b436: ff 25 e4 1b 00 00           	jmpq	*7140(%rip)
10000b43c: ff 25 e6 1b 00 00           	jmpq	*7142(%rip)
10000b442: ff 25 e8 1b 00 00           	jmpq	*7144(%rip)
10000b448: ff 25 ea 1b 00 00           	jmpq	*7146(%rip)
10000b44e: ff 25 ec 1b 00 00           	jmpq	*7148(%rip)
10000b454: ff 25 ee 1b 00 00           	jmpq	*7150(%rip)
10000b45a: ff 25 f0 1b 00 00           	jmpq	*7152(%rip)
10000b460: ff 25 f2 1b 00 00           	jmpq	*7154(%rip)
10000b466: ff 25 f4 1b 00 00           	jmpq	*7156(%rip)
10000b46c: ff 25 f6 1b 00 00           	jmpq	*7158(%rip)
10000b472: ff 25 f8 1b 00 00           	jmpq	*7160(%rip)
10000b478: ff 25 fa 1b 00 00           	jmpq	*7162(%rip)
10000b47e: ff 25 fc 1b 00 00           	jmpq	*7164(%rip)
10000b484: ff 25 fe 1b 00 00           	jmpq	*7166(%rip)
10000b48a: ff 25 00 1c 00 00           	jmpq	*7168(%rip)
10000b490: ff 25 02 1c 00 00           	jmpq	*7170(%rip)
10000b496: ff 25 04 1c 00 00           	jmpq	*7172(%rip)
10000b49c: ff 25 06 1c 00 00           	jmpq	*7174(%rip)
10000b4a2: ff 25 08 1c 00 00           	jmpq	*7176(%rip)
10000b4a8: ff 25 0a 1c 00 00           	jmpq	*7178(%rip)
10000b4ae: ff 25 0c 1c 00 00           	jmpq	*7180(%rip)
10000b4b4: ff 25 0e 1c 00 00           	jmpq	*7182(%rip)
10000b4ba: ff 25 10 1c 00 00           	jmpq	*7184(%rip)
10000b4c0: ff 25 12 1c 00 00           	jmpq	*7186(%rip)
10000b4c6: ff 25 14 1c 00 00           	jmpq	*7188(%rip)
10000b4cc: ff 25 16 1c 00 00           	jmpq	*7190(%rip)
10000b4d2: ff 25 18 1c 00 00           	jmpq	*7192(%rip)
10000b4d8: ff 25 1a 1c 00 00           	jmpq	*7194(%rip)
10000b4de: ff 25 1c 1c 00 00           	jmpq	*7196(%rip)
10000b4e4: ff 25 1e 1c 00 00           	jmpq	*7198(%rip)
10000b4ea: ff 25 20 1c 00 00           	jmpq	*7200(%rip)
10000b4f0: ff 25 22 1c 00 00           	jmpq	*7202(%rip)
10000b4f6: ff 25 24 1c 00 00           	jmpq	*7204(%rip)
10000b4fc: ff 25 26 1c 00 00           	jmpq	*7206(%rip)
10000b502: ff 25 28 1c 00 00           	jmpq	*7208(%rip)
10000b508: ff 25 2a 1c 00 00           	jmpq	*7210(%rip)
10000b50e: ff 25 2c 1c 00 00           	jmpq	*7212(%rip)
10000b514: ff 25 2e 1c 00 00           	jmpq	*7214(%rip)
10000b51a: ff 25 30 1c 00 00           	jmpq	*7216(%rip)
10000b520: ff 25 32 1c 00 00           	jmpq	*7218(%rip)
10000b526: ff 25 34 1c 00 00           	jmpq	*7220(%rip)
10000b52c: ff 25 36 1c 00 00           	jmpq	*7222(%rip)
10000b532: ff 25 38 1c 00 00           	jmpq	*7224(%rip)
10000b538: ff 25 3a 1c 00 00           	jmpq	*7226(%rip)
10000b53e: ff 25 3c 1c 00 00           	jmpq	*7228(%rip)
10000b544: ff 25 3e 1c 00 00           	jmpq	*7230(%rip)
10000b54a: ff 25 40 1c 00 00           	jmpq	*7232(%rip)
10000b550: ff 25 42 1c 00 00           	jmpq	*7234(%rip)
10000b556: ff 25 44 1c 00 00           	jmpq	*7236(%rip)
10000b55c: ff 25 46 1c 00 00           	jmpq	*7238(%rip)
10000b562: ff 25 48 1c 00 00           	jmpq	*7240(%rip)
10000b568: ff 25 4a 1c 00 00           	jmpq	*7242(%rip)
10000b56e: ff 25 4c 1c 00 00           	jmpq	*7244(%rip)
10000b574: ff 25 4e 1c 00 00           	jmpq	*7246(%rip)
10000b57a: ff 25 50 1c 00 00           	jmpq	*7248(%rip)
10000b580: ff 25 52 1c 00 00           	jmpq	*7250(%rip)
10000b586: ff 25 54 1c 00 00           	jmpq	*7252(%rip)
10000b58c: ff 25 56 1c 00 00           	jmpq	*7254(%rip)
10000b592: ff 25 58 1c 00 00           	jmpq	*7256(%rip)
10000b598: ff 25 5a 1c 00 00           	jmpq	*7258(%rip)
10000b59e: ff 25 5c 1c 00 00           	jmpq	*7260(%rip)
10000b5a4: ff 25 5e 1c 00 00           	jmpq	*7262(%rip)
10000b5aa: ff 25 60 1c 00 00           	jmpq	*7264(%rip)
10000b5b0: ff 25 62 1c 00 00           	jmpq	*7266(%rip)
10000b5b6: ff 25 64 1c 00 00           	jmpq	*7268(%rip)
10000b5bc: ff 25 66 1c 00 00           	jmpq	*7270(%rip)
10000b5c2: ff 25 68 1c 00 00           	jmpq	*7272(%rip)
10000b5c8: ff 25 6a 1c 00 00           	jmpq	*7274(%rip)
10000b5ce: ff 25 6c 1c 00 00           	jmpq	*7276(%rip)
10000b5d4: ff 25 6e 1c 00 00           	jmpq	*7278(%rip)
10000b5da: ff 25 70 1c 00 00           	jmpq	*7280(%rip)
10000b5e0: ff 25 72 1c 00 00           	jmpq	*7282(%rip)
10000b5e6: ff 25 74 1c 00 00           	jmpq	*7284(%rip)
10000b5ec: ff 25 76 1c 00 00           	jmpq	*7286(%rip)
10000b5f2: ff 25 78 1c 00 00           	jmpq	*7288(%rip)
10000b5f8: ff 25 7a 1c 00 00           	jmpq	*7290(%rip)
