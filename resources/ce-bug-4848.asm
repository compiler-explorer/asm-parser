example:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
_init():
  401000:	f3 0f 1e fa                                     	endbr64 
  401004:	48 83 ec 08                                     	sub    rsp,0x8
  401008:	48 8b 05 e9 2f 00 00                            	mov    rax,QWORD PTR [rip+0x2fe9]        # 403ff8 <__gmon_start__@Base>
  40100f:	48 85 c0                                        	test   rax,rax
  401012:	74 02                                           	je     401016 <_init+0x16>
  401014:	ff d0                                           	call   rax
  401016:	48 83 c4 08                                     	add    rsp,0x8
  40101a:	c3                                              	ret    

Disassembly of section .text:

0000000000401020 <_Z9call_coldIZ4mainEUlvE_EvOT_.constprop.0>:
_Z7__rdtscv():
/opt/compiler-explorer/gcc-12.2.0/lib/gcc/x86_64-linux-gnu/12.2.0/include/ia32intrin.h:114
  401020:	0f 31                                           	rdtsc  
_Z9call_coldIZ4mainEUlvE_EvOT_.constprop.0():
/app/example.cpp:14
  401022:	ff c0                                           	inc    eax
  401024:	89 05 02 30 00 00                               	mov    DWORD PTR [rip+0x3002],eax        # 40402c <tsc>
/app/example.cpp:10
  40102a:	c3                                              	ret    

000000000040102b <main>:
main():
/app/example.cpp:13
  40102b:	e8 f0 ff ff ff                                  	call   401020 <_Z9call_coldIZ4mainEUlvE_EvOT_.constprop.0>
/app/example.cpp:17
  401030:	8b 05 f6 2f 00 00                               	mov    eax,DWORD PTR [rip+0x2ff6]        # 40402c <tsc>
  401036:	c3                                              	ret    
  401037:	66 0f 1f 84 00 00 00 00 00                      	nop    WORD PTR [rax+rax*1+0x0]

0000000000401040 <_start>:
_start():
  401040:	f3 0f 1e fa                                     	endbr64 
  401044:	31 ed                                           	xor    ebp,ebp
  401046:	49 89 d1                                        	mov    r9,rdx
  401049:	5e                                              	pop    rsi
  40104a:	48 89 e2                                        	mov    rdx,rsp
  40104d:	48 83 e4 f0                                     	and    rsp,0xfffffffffffffff0
  401051:	50                                              	push   rax
  401052:	54                                              	push   rsp
  401053:	45 31 c0                                        	xor    r8d,r8d
  401056:	31 c9                                           	xor    ecx,ecx
  401058:	48 c7 c7 2b 10 40 00                            	mov    rdi,0x40102b
  40105f:	ff 15 8b 2f 00 00                               	call   QWORD PTR [rip+0x2f8b]        # 403ff0 <__libc_start_main@GLIBC_2.34>
  401065:	f4                                              	hlt    
  401066:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nop WORD PTR [rax+rax*1+0x0]

0000000000401070 <_dl_relocate_static_pie>:
_dl_relocate_static_pie():
  401070:	f3 0f 1e fa                                     	endbr64 
  401074:	c3                                              	ret    
  401075:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nop WORD PTR [rax+rax*1+0x0]
  40107f:	90                                              	nop

0000000000401080 <deregister_tm_clones>:
deregister_tm_clones():
  401080:	b8 28 40 40 00                                  	mov    eax,0x404028
  401085:	48 3d 28 40 40 00                               	cmp    rax,0x404028
  40108b:	74 13                                           	je     4010a0 <deregister_tm_clones+0x20>
  40108d:	b8 00 00 00 00                                  	mov    eax,0x0
  401092:	48 85 c0                                        	test   rax,rax
  401095:	74 09                                           	je     4010a0 <deregister_tm_clones+0x20>
  401097:	bf 28 40 40 00                                  	mov    edi,0x404028
  40109c:	ff e0                                           	jmp    rax
  40109e:	66 90                                           	xchg   ax,ax
  4010a0:	c3                                              	ret    
  4010a1:	66 66 2e 0f 1f 84 00 00 00 00 00                	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4010ac:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]

00000000004010b0 <register_tm_clones>:
register_tm_clones():
  4010b0:	be 28 40 40 00                                  	mov    esi,0x404028
  4010b5:	48 81 ee 28 40 40 00                            	sub    rsi,0x404028
  4010bc:	48 89 f0                                        	mov    rax,rsi
  4010bf:	48 c1 ee 3f                                     	shr    rsi,0x3f
  4010c3:	48 c1 f8 03                                     	sar    rax,0x3
  4010c7:	48 01 c6                                        	add    rsi,rax
  4010ca:	48 d1 fe                                        	sar    rsi,1
  4010cd:	74 11                                           	je     4010e0 <register_tm_clones+0x30>
  4010cf:	b8 00 00 00 00                                  	mov    eax,0x0
  4010d4:	48 85 c0                                        	test   rax,rax
  4010d7:	74 07                                           	je     4010e0 <register_tm_clones+0x30>
  4010d9:	bf 28 40 40 00                                  	mov    edi,0x404028
  4010de:	ff e0                                           	jmp    rax
  4010e0:	c3                                              	ret    
  4010e1:	66 66 2e 0f 1f 84 00 00 00 00 00                	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4010ec:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]

00000000004010f0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
  4010f0:	f3 0f 1e fa                                     	endbr64 
  4010f4:	80 3d 2d 2f 00 00 00                            	cmp    BYTE PTR [rip+0x2f2d],0x0        # 404028 <__TMC_END__>
  4010fb:	75 13                                           	jne    401110 <__do_global_dtors_aux+0x20>
  4010fd:	55                                              	push   rbp
  4010fe:	48 89 e5                                        	mov    rbp,rsp
  401101:	e8 7a ff ff ff                                  	call   401080 <deregister_tm_clones>
  401106:	c6 05 1b 2f 00 00 01                            	mov    BYTE PTR [rip+0x2f1b],0x1        # 404028 <__TMC_END__>
  40110d:	5d                                              	pop    rbp
  40110e:	c3                                              	ret    
  40110f:	90                                              	nop
  401110:	c3                                              	ret    
  401111:	66 66 2e 0f 1f 84 00 00 00 00 00                	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40111c:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]

0000000000401120 <frame_dummy>:
frame_dummy():
  401120:	f3 0f 1e fa                                     	endbr64 
  401124:	eb 8a                                           	jmp    4010b0 <register_tm_clones>

Disassembly of section .fini:

0000000000401128 <_fini>:
_fini():
  401128:	f3 0f 1e fa                                     	endbr64 
  40112c:	48 83 ec 08                                     	sub    rsp,0x8
  401130:	48 83 c4 08                                     	add    rsp,0x8
  401134:	c3                                              	ret    
