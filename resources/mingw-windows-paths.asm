
C:\Windows\TEMP\compiler-explorer-compilerAbC123\output.s.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28                                     	sub    rsp,0x28
   140001014:	48 8b 05 f5 33 00 00                            	mov    rax,QWORD PTR [rip+0x33f5]        # 140004410 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                                           	xor    ecx,ecx
   14000101d:	c7 00 01 00 00 00                               	mov    DWORD PTR [rax],0x1
   140001023:	48 8b 05 f6 33 00 00                            	mov    rax,QWORD PTR [rip+0x33f6]        # 140004420 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00                               	mov    DWORD PTR [rax],0x1
   140001030:	48 8b 05 f9 33 00 00                            	mov    rax,QWORD PTR [rip+0x33f9]        # 140004430 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00                               	mov    DWORD PTR [rax],0x1
   14000103d:	48 8b 05 3c 33 00 00                            	mov    rax,QWORD PTR [rip+0x333c]        # 140004380 <.refptr.__ImageBase>
   140001044:	66 81 38 4d 5a                                  	cmp    WORD PTR [rax],0x5a4d
   140001049:	75 0f                                           	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c                                     	movsxd rdx,DWORD PTR [rax+0x3c]
   14000104f:	48 01 d0                                        	add    rax,rdx
   140001052:	81 38 50 45 00 00                               	cmp    DWORD PTR [rax],0x4550
   140001058:	74 66                                           	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 9f 33 00 00                            	mov    rax,QWORD PTR [rip+0x339f]        # 140004400 <.refptr.__mingw_app_type>
   140001061:	89 0d a5 5f 00 00                               	mov    DWORD PTR [rip+0x5fa5],ecx        # 14000700c <managedapp>
   140001067:	8b 00                                           	mov    eax,DWORD PTR [rax]
   140001069:	85 c0                                           	test   eax,eax
   14000106b:	74 43                                           	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00                                  	mov    ecx,0x2
   140001072:	e8 71 18 00 00                                  	call   1400028e8 <__set_app_type>
   140001077:	e8 f4 17 00 00                                  	call   140002870 <__p__fmode>
   14000107c:	48 8b 15 5d 34 00 00                            	mov    rdx,QWORD PTR [rip+0x345d]        # 1400044e0 <.refptr._fmode>
   140001083:	8b 12                                           	mov    edx,DWORD PTR [rdx]
   140001085:	89 10                                           	mov    DWORD PTR [rax],edx
   140001087:	e8 dc 17 00 00                                  	call   140002868 <__p__commode>
   14000108c:	48 8b 15 2d 34 00 00                            	mov    rdx,QWORD PTR [rip+0x342d]        # 1400044c0 <.refptr._commode>

00000001400013a0 <mainCRTStartup>:
mainCRTStartup():
/home/runner/work/llvm-mingw/llvm-mingw/mingw-w64/mingw-w64-crt/build-x86_64/../crt/crtexe.c:137
   1400013a0:	48 8b 05 79 6c 00 00                            	mov    rax,QWORD PTR [rip+0x6c79]        # 140008020 <.refptr.__mingw_app_type>
   1400013a7:	c7 00 00 00 00 00                               	mov    DWORD PTR [rax],0x0
/home/runner/work/llvm-mingw/llvm-mingw/mingw-w64/mingw-w64-crt/build-x86_64/../crt/crtexe.c:138
   1400013ad:	e9 6e fc ff ff                                  	jmp    140001020 <__tmainCRTStartup>
   1400013b2:	66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00       	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]

0000000140001460 <square(int)>:
square(int):
C:\Windows\TEMP\compiler-explorer-compilerAbC123/example.cpp:3
   140001460:	89 c8                                           	mov    eax,ecx
C:\Windows\TEMP\compiler-explorer-compilerAbC123/example.cpp:4
   140001462:	0f af c1                                        	imul   eax,ecx
   140001465:	c3                                              	ret
   140001466:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nop WORD PTR [rax+rax*1+0x0]

0000000140001470 <main>:
main():
C:\Windows\TEMP\compiler-explorer-compilerAbC123/example.cpp:6
   140001470:	55                                              	push   rbp
   140001471:	48 83 ec 20                                     	sub    rsp,0x20
   140001475:	48 8d 6c 24 20                                  	lea    rbp,[rsp+0x20]
   14000147a:	e8 f1 00 00 00                                  	call   140001570 <__main>
C:\Windows\TEMP\compiler-explorer-compilerAbC123/example.cpp:7
   14000147f:	b9 07 00 00 00                                  	mov    ecx,0x7
   140001484:	e8 27 00 00 00                                  	call   1400014b0 <helper(int)>
   140001489:	89 c1                                           	mov    ecx,eax
   14000148b:	e8 d0 ff ff ff                                  	call   140001460 <square(int)>
   140001490:	48 8d 0d e1 6b 00 00                            	lea    rcx,[rip+0x6be1]        # 140008078 <.refptr._newmode+0x8>
   140001497:	89 c2                                           	mov    edx,eax
   140001499:	e8 52 07 00 00                                  	call   140001bf0 <__mingw_printf>
C:\Windows\TEMP\compiler-explorer-compilerAbC123/example.cpp:8
   14000149e:	31 c0                                           	xor    eax,eax
   1400014a0:	48 83 c4 20                                     	add    rsp,0x20
   1400014a4:	5d                                              	pop    rbp
   1400014a5:	c3                                              	ret
   1400014a6:	cc                                              	int3
   1400014a7:	cc                                              	int3
   1400014a8:	cc                                              	int3
   1400014a9:	cc                                              	int3
   1400014aa:	cc                                              	int3
   1400014ab:	cc                                              	int3
   1400014ac:	cc                                              	int3
   1400014ad:	cc                                              	int3
   1400014ae:	cc                                              	int3
   1400014af:	cc                                              	int3

00000001400014b0 <helper(int)>:
helper(int):
C:\Windows\TEMP\compiler-explorer-compilerAbC123/src/helper.cpp:2
   1400014b0:	8d 41 01                                        	lea    eax,[rcx+0x1]
   1400014b3:	c3                                              	ret
   1400014b4:	cc                                              	int3
   1400014b5:	cc                                              	int3
   1400014b6:	cc                                              	int3
   1400014b7:	cc                                              	int3
   1400014b8:	cc                                              	int3
   1400014b9:	cc                                              	int3
   1400014ba:	cc                                              	int3
   1400014bb:	cc                                              	int3
   1400014bc:	cc                                              	int3
   1400014bd:	cc                                              	int3
   1400014be:	cc                                              	int3
   1400014bf:	cc                                              	int3

00000001400073d0 <_XcptFilter>:
   1400073d0:	ff 25 f2 1a 00 00                               	jmp    QWORD PTR [rip+0x1af2]        # 140008ec8 <__imp__XcptFilter>
   1400073d6:	cc                                              	int3
   1400073d7:	cc                                              	int3
   1400073d8:	cc                                              	int3
   1400073d9:	cc                                              	int3
   1400073da:	cc                                              	int3
   1400073db:	cc                                              	int3
   1400073dc:	cc                                              	int3
   1400073dd:	cc                                              	int3
   1400073de:	cc                                              	int3
   1400073df:	cc                                              	int3

