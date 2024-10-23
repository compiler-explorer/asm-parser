
output.s:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
_init():
  401000:	f3 0f 1e fa                                     	endbr64
  401004:	48 83 ec 08                                     	sub    rsp,0x8
  401008:	48 8b 05 d1 2f 00 00                            	mov    rax,QWORD PTR [rip+0x2fd1]        # 403fe0 <__gmon_start__@Base>
  40100f:	48 85 c0                                        	test   rax,rax
  401012:	74 02                                           	je     401016 <_init+0x16>
  401014:	ff d0                                           	call   rax
  401016:	48 83 c4 08                                     	add    rsp,0x8
  40101a:	c3                                              	ret

Disassembly of section .text:

0000000000401020 <main>:
main():
/app/example.cpp:7
  401020:	31 c0                                           	xor    eax,eax
  401022:	c3                                              	ret
  401023:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nop WORD PTR [rax+rax*1+0x0]
  40102d:	0f 1f 00                                        	nop    DWORD PTR [rax]

0000000000401030 <_start>:
_start():
  401030:	f3 0f 1e fa                                     	endbr64
  401034:	31 ed                                           	xor    ebp,ebp
  401036:	49 89 d1                                        	mov    r9,rdx
  401039:	5e                                              	pop    rsi
  40103a:	48 89 e2                                        	mov    rdx,rsp
  40103d:	48 83 e4 f0                                     	and    rsp,0xfffffffffffffff0
  401041:	50                                              	push   rax
  401042:	54                                              	push   rsp
  401043:	45 31 c0                                        	xor    r8d,r8d
  401046:	31 c9                                           	xor    ecx,ecx
  401048:	48 c7 c7 20 10 40 00                            	mov    rdi,0x401020
  40104f:	ff 15 83 2f 00 00                               	call   QWORD PTR [rip+0x2f83]        # 403fd8 <__libc_start_main@GLIBC_2.34>
  401055:	f4                                              	hlt
  401056:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nop WORD PTR [rax+rax*1+0x0]

0000000000401060 <_dl_relocate_static_pie>:
_dl_relocate_static_pie():
  401060:	f3 0f 1e fa                                     	endbr64
  401064:	c3                                              	ret
  401065:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nop WORD PTR [rax+rax*1+0x0]
  40106f:	90                                              	nop

0000000000401070 <deregister_tm_clones>:
deregister_tm_clones():
  401070:	b8 10 40 40 00                                  	mov    eax,0x404010
  401075:	48 3d 10 40 40 00                               	cmp    rax,0x404010
  40107b:	74 13                                           	je     401090 <deregister_tm_clones+0x20>
  40107d:	b8 00 00 00 00                                  	mov    eax,0x0
  401082:	48 85 c0                                        	test   rax,rax
  401085:	74 09                                           	je     401090 <deregister_tm_clones+0x20>
  401087:	bf 10 40 40 00                                  	mov    edi,0x404010
  40108c:	ff e0                                           	jmp    rax
  40108e:	66 90                                           	xchg   ax,ax
  401090:	c3                                              	ret
  401091:	66 66 2e 0f 1f 84 00 00 00 00 00                	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40109c:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]

00000000004010a0 <register_tm_clones>:
register_tm_clones():
  4010a0:	be 10 40 40 00                                  	mov    esi,0x404010
  4010a5:	48 81 ee 10 40 40 00                            	sub    rsi,0x404010
  4010ac:	48 89 f0                                        	mov    rax,rsi
  4010af:	48 c1 ee 3f                                     	shr    rsi,0x3f
  4010b3:	48 c1 f8 03                                     	sar    rax,0x3
  4010b7:	48 01 c6                                        	add    rsi,rax
  4010ba:	48 d1 fe                                        	sar    rsi,1
  4010bd:	74 11                                           	je     4010d0 <register_tm_clones+0x30>
  4010bf:	b8 00 00 00 00                                  	mov    eax,0x0
  4010c4:	48 85 c0                                        	test   rax,rax
  4010c7:	74 07                                           	je     4010d0 <register_tm_clones+0x30>
  4010c9:	bf 10 40 40 00                                  	mov    edi,0x404010
  4010ce:	ff e0                                           	jmp    rax
  4010d0:	c3                                              	ret
  4010d1:	66 66 2e 0f 1f 84 00 00 00 00 00                	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4010dc:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]

00000000004010e0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
  4010e0:	f3 0f 1e fa                                     	endbr64
  4010e4:	80 3d 25 2f 00 00 00                            	cmp    BYTE PTR [rip+0x2f25],0x0        # 404010 <__TMC_END__>
  4010eb:	75 13                                           	jne    401100 <__do_global_dtors_aux+0x20>
  4010ed:	55                                              	push   rbp
  4010ee:	48 89 e5                                        	mov    rbp,rsp
  4010f1:	e8 7a ff ff ff                                  	call   401070 <deregister_tm_clones>
  4010f6:	c6 05 13 2f 00 00 01                            	mov    BYTE PTR [rip+0x2f13],0x1        # 404010 <__TMC_END__>
  4010fd:	5d                                              	pop    rbp
  4010fe:	c3                                              	ret
  4010ff:	90                                              	nop
  401100:	c3                                              	ret
  401101:	66 66 2e 0f 1f 84 00 00 00 00 00                	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40110c:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]

0000000000401110 <frame_dummy>:
frame_dummy():
  401110:	f3 0f 1e fa                                     	endbr64
  401114:	eb 8a                                           	jmp    4010a0 <register_tm_clones>
  401116:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nop WORD PTR [rax+rax*1+0x0]

0000000000401120 <_Z3fooNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_():
/opt/compiler-explorer/gcc-14.1.0/include/c++/14.1.0/bits/dir with spaces/basic_string.h:3776 (discriminator 4)
  401120:	31 c0                                           	xor    eax,eax
/opt/compiler-explorer/gcc-14.1.0/include/c++/14.1.0/bits/basic_string.h:3776
  401122:	48 83 7f 08 04                                  	cmp    QWORD PTR [rdi+0x8],0x4
  401127:	74 07                                           	je     401130 <_Z3fooNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x10>
_Z3fooNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE():
/app/example.cpp:5
  401129:	c3                                              	ret
  40112a:	66 0f 1f 44 00 00                               	nop    WORD PTR [rax+rax*1+0x0]
_ZNSt11char_traitsIcE7compareEPKcS2_m():
/opt/compiler-explorer/gcc-14.1.0/include/c++/14.1.0/bits/char_traits.h:381
  401130:	48 8b 07                                        	mov    rax,QWORD PTR [rdi]
  401133:	81 38 6f 6b 61 79                               	cmp    DWORD PTR [rax],0x79616b6f
  401139:	0f 94 c0                                        	sete   al
_Z3fooNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE():
/app/example.cpp:5
  40113c:	c3                                              	ret

Disassembly of section .fini:

0000000000401140 <_fini>:
_fini():
  401140:	f3 0f 1e fa                                     	endbr64
  401144:	48 83 ec 08                                     	sub    rsp,0x8
  401148:	48 83 c4 08                                     	add    rsp,0x8
  40114c:	c3                                              	ret
