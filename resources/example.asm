
/app/example.obj:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
_init():
  401000:	f3 0f 1e fa                                     	endbr64 
  401004:	48 83 ec 08                                     	sub    rsp,0x8
  401008:	48 8b 05 e9 2f 00 00                            	mov    rax,QWORD PTR [rip+0x2fe9]        # 403ff8 <__gmon_start__>
  40100f:	48 85 c0                                        	test   rax,rax
  401012:	74 02                                           	je     401016 <_init+0x16>
  401014:	ff d0                                           	call   rax
  401016:	48 83 c4 08                                     	add    rsp,0x8
  40101a:	c3                                              	ret    

Disassembly of section .text:

0000000000401020 <_start>:
_start():
  401020:	f3 0f 1e fa                                     	endbr64 
  401024:	31 ed                                           	xor    ebp,ebp
  401026:	49 89 d1                                        	mov    r9,rdx
  401029:	5e                                              	pop    rsi
  40102a:	48 89 e2                                        	mov    rdx,rsp
  40102d:	48 83 e4 f0                                     	and    rsp,0xfffffffffffffff0
  401031:	50                                              	push   rax
  401032:	54                                              	push   rsp
  401033:	49 c7 c0 90 11 40 00                            	mov    r8,0x401190
  40103a:	48 c7 c1 20 11 40 00                            	mov    rcx,0x401120
  401041:	48 c7 c7 15 11 40 00                            	mov    rdi,0x401115
  401048:	ff 15 a2 2f 00 00                               	call   QWORD PTR [rip+0x2fa2]        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  40104e:	f4                                              	hlt    
  40104f:	90                                              	nop

0000000000401050 <_dl_relocate_static_pie>:
_dl_relocate_static_pie():
  401050:	f3 0f 1e fa                                     	endbr64 
  401054:	c3                                              	ret    
  401055:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nop WORD PTR [rax+rax*1+0x0]
  40105f:	90                                              	nop

0000000000401060 <deregister_tm_clones>:
deregister_tm_clones():
  401060:	b8 28 40 40 00                                  	mov    eax,0x404028
  401065:	48 3d 28 40 40 00                               	cmp    rax,0x404028
  40106b:	74 13                                           	je     401080 <deregister_tm_clones+0x20>
  40106d:	b8 00 00 00 00                                  	mov    eax,0x0
  401072:	48 85 c0                                        	test   rax,rax
  401075:	74 09                                           	je     401080 <deregister_tm_clones+0x20>
  401077:	bf 28 40 40 00                                  	mov    edi,0x404028
  40107c:	ff e0                                           	jmp    rax
  40107e:	66 90                                           	xchg   ax,ax
  401080:	c3                                              	ret    
  401081:	66 66 2e 0f 1f 84 00 00 00 00 00                	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40108c:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]

0000000000401090 <register_tm_clones>:
register_tm_clones():
  401090:	be 28 40 40 00                                  	mov    esi,0x404028
  401095:	48 81 ee 28 40 40 00                            	sub    rsi,0x404028
  40109c:	48 89 f0                                        	mov    rax,rsi
  40109f:	48 c1 ee 3f                                     	shr    rsi,0x3f
  4010a3:	48 c1 f8 03                                     	sar    rax,0x3
  4010a7:	48 01 c6                                        	add    rsi,rax
  4010aa:	48 d1 fe                                        	sar    rsi,1
  4010ad:	74 11                                           	je     4010c0 <register_tm_clones+0x30>
  4010af:	b8 00 00 00 00                                  	mov    eax,0x0
  4010b4:	48 85 c0                                        	test   rax,rax
  4010b7:	74 07                                           	je     4010c0 <register_tm_clones+0x30>
  4010b9:	bf 28 40 40 00                                  	mov    edi,0x404028
  4010be:	ff e0                                           	jmp    rax
  4010c0:	c3                                              	ret    
  4010c1:	66 66 2e 0f 1f 84 00 00 00 00 00                	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4010cc:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]

00000000004010d0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
  4010d0:	f3 0f 1e fa                                     	endbr64 
  4010d4:	80 3d 4d 2f 00 00 00                            	cmp    BYTE PTR [rip+0x2f4d],0x0        # 404028 <__TMC_END__>
  4010db:	75 13                                           	jne    4010f0 <__do_global_dtors_aux+0x20>
  4010dd:	55                                              	push   rbp
  4010de:	48 89 e5                                        	mov    rbp,rsp
  4010e1:	e8 7a ff ff ff                                  	call   401060 <deregister_tm_clones>
  4010e6:	c6 05 3b 2f 00 00 01                            	mov    BYTE PTR [rip+0x2f3b],0x1        # 404028 <__TMC_END__>
  4010ed:	5d                                              	pop    rbp
  4010ee:	c3                                              	ret    
  4010ef:	90                                              	nop
  4010f0:	c3                                              	ret    
  4010f1:	66 66 2e 0f 1f 84 00 00 00 00 00                	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4010fc:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]

0000000000401100 <frame_dummy>:
frame_dummy():
  401100:	f3 0f 1e fa                                     	endbr64 
  401104:	eb 8a                                           	jmp    401090 <register_tm_clones>

0000000000401106 <_Z6squarei>:
_Z6squarei():
/app/example.cpp:1
  401106:	55                                              	push   rbp
  401107:	48 89 e5                                        	mov    rbp,rsp
  40110a:	89 7d fc                                        	mov    DWORD PTR [rbp-0x4],edi
/app/example.cpp:2
  40110d:	8b 45 fc                                        	mov    eax,DWORD PTR [rbp-0x4]
  401110:	0f af c0                                        	imul   eax,eax
/app/example.cpp:3
  401113:	5d                                              	pop    rbp
  401114:	c3                                              	ret    

0000000000401115 <main>:
main():
/app/example.cpp:5
  401115:	55                                              	push   rbp
  401116:	48 89 e5                                        	mov    rbp,rsp
/app/example.cpp:6
  401119:	b8 00 00 00 00                                  	mov    eax,0x0
  40111e:	5d                                              	pop    rbp
  40111f:	c3                                              	ret    

0000000000401120 <__libc_csu_init>:
__libc_csu_init():
  401120:	f3 0f 1e fa                                     	endbr64 
  401124:	41 57                                           	push   r15
  401126:	4c 8d 3d d3 2c 00 00                            	lea    r15,[rip+0x2cd3]        # 403e00 <__frame_dummy_init_array_entry>
  40112d:	41 56                                           	push   r14
  40112f:	49 89 d6                                        	mov    r14,rdx
  401132:	41 55                                           	push   r13
  401134:	49 89 f5                                        	mov    r13,rsi
  401137:	41 54                                           	push   r12
  401139:	41 89 fc                                        	mov    r12d,edi
  40113c:	55                                              	push   rbp
  40113d:	48 8d 2d c4 2c 00 00                            	lea    rbp,[rip+0x2cc4]        # 403e08 <__do_global_dtors_aux_fini_array_entry>
  401144:	53                                              	push   rbx
  401145:	4c 29 fd                                        	sub    rbp,r15
  401148:	48 83 ec 08                                     	sub    rsp,0x8
  40114c:	e8 af fe ff ff                                  	call   401000 <_init>
  401151:	48 c1 fd 03                                     	sar    rbp,0x3
  401155:	74 1f                                           	je     401176 <__libc_csu_init+0x56>
  401157:	31 db                                           	xor    ebx,ebx
  401159:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
  401160:	4c 89 f2                                        	mov    rdx,r14
  401163:	4c 89 ee                                        	mov    rsi,r13
  401166:	44 89 e7                                        	mov    edi,r12d
  401169:	41 ff 14 df                                     	call   QWORD PTR [r15+rbx*8]
  40116d:	48 83 c3 01                                     	add    rbx,0x1
  401171:	48 39 dd                                        	cmp    rbp,rbx
  401174:	75 ea                                           	jne    401160 <__libc_csu_init+0x40>
  401176:	48 83 c4 08                                     	add    rsp,0x8
  40117a:	5b                                              	pop    rbx
  40117b:	5d                                              	pop    rbp
  40117c:	41 5c                                           	pop    r12
  40117e:	41 5d                                           	pop    r13
  401180:	41 5e                                           	pop    r14
  401182:	41 5f                                           	pop    r15
  401184:	c3                                              	ret    
  401185:	66 66 2e 0f 1f 84 00 00 00 00 00                	data16 cs nop WORD PTR [rax+rax*1+0x0]

0000000000401190 <__libc_csu_fini>:
__libc_csu_fini():
  401190:	f3 0f 1e fa                                     	endbr64 
  401194:	c3                                              	ret    

Disassembly of section .fini:

0000000000401198 <_fini>:
_fini():
  401198:	f3 0f 1e fa                                     	endbr64 
  40119c:	48 83 ec 08                                     	sub    rsp,0x8
  4011a0:	48 83 c4 08                                     	add    rsp,0x8
  4011a4:	c3                                              	ret    
