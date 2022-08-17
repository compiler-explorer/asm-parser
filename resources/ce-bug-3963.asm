
output.s:     file format elf64-x86-64


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

Disassembly of section .plt:

0000000000401020 <std::ostream::put(char)@plt-0x10>:
  401020:	ff 35 e2 2f 00 00                               	push   QWORD PTR [rip+0x2fe2]        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 2f 00 00                               	jmp    QWORD PTR [rip+0x2fe4]        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]

0000000000401030 <std::ostream::put(char)@plt>:
  401030:	ff 25 e2 2f 00 00                               	jmp    QWORD PTR [rip+0x2fe2]        # 404018 <std::ostream::put(char)@GLIBCXX_3.4>
  401036:	68 00 00 00 00                                  	push   0x0
  40103b:	e9 e0 ff ff ff                                  	jmp    401020 <_init+0x20>

0000000000401040 <std::ostream::flush()@plt>:
  401040:	ff 25 da 2f 00 00                               	jmp    QWORD PTR [rip+0x2fda]        # 404020 <std::ostream::flush()@GLIBCXX_3.4>
  401046:	68 01 00 00 00                                  	push   0x1
  40104b:	e9 d0 ff ff ff                                  	jmp    401020 <_init+0x20>

0000000000401050 <__cxa_atexit@plt>:
  401050:	ff 25 d2 2f 00 00                               	jmp    QWORD PTR [rip+0x2fd2]        # 404028 <__cxa_atexit@GLIBC_2.2.5>
  401056:	68 02 00 00 00                                  	push   0x2
  40105b:	e9 c0 ff ff ff                                  	jmp    401020 <_init+0x20>

0000000000401060 <std::ctype<char>::_M_widen_init() const@plt>:
  401060:	ff 25 ca 2f 00 00                               	jmp    QWORD PTR [rip+0x2fca]        # 404030 <std::ctype<char>::_M_widen_init() const@GLIBCXX_3.4.11>
  401066:	68 03 00 00 00                                  	push   0x3
  40106b:	e9 b0 ff ff ff                                  	jmp    401020 <_init+0x20>

0000000000401070 <std::__throw_bad_cast()@plt>:
  401070:	ff 25 c2 2f 00 00                               	jmp    QWORD PTR [rip+0x2fc2]        # 404038 <std::__throw_bad_cast()@GLIBCXX_3.4>
  401076:	68 04 00 00 00                                  	push   0x4
  40107b:	e9 a0 ff ff ff                                  	jmp    401020 <_init+0x20>

0000000000401080 <strtol@plt>:
  401080:	ff 25 ba 2f 00 00                               	jmp    QWORD PTR [rip+0x2fba]        # 404040 <strtol@GLIBC_2.2.5>
  401086:	68 05 00 00 00                                  	push   0x5
  40108b:	e9 90 ff ff ff                                  	jmp    401020 <_init+0x20>

0000000000401090 <std::ios_base::Init::Init()@plt>:
  401090:	ff 25 b2 2f 00 00                               	jmp    QWORD PTR [rip+0x2fb2]        # 404048 <std::ios_base::Init::Init()@GLIBCXX_3.4>
  401096:	68 06 00 00 00                                  	push   0x6
  40109b:	e9 80 ff ff ff                                  	jmp    401020 <_init+0x20>

00000000004010a0 <std::ostream::operator<<(int)@plt>:
  4010a0:	ff 25 aa 2f 00 00                               	jmp    QWORD PTR [rip+0x2faa]        # 404050 <std::ostream::operator<<(int)@GLIBCXX_3.4>
  4010a6:	68 07 00 00 00                                  	push   0x7
  4010ab:	e9 70 ff ff ff                                  	jmp    401020 <_init+0x20>

00000000004010b0 <std::ios_base::Init::~Init()@plt>:
  4010b0:	ff 25 a2 2f 00 00                               	jmp    QWORD PTR [rip+0x2fa2]        # 404058 <std::ios_base::Init::~Init()@GLIBCXX_3.4>
  4010b6:	68 08 00 00 00                                  	push   0x8
  4010bb:	e9 60 ff ff ff                                  	jmp    401020 <_init+0x20>

Disassembly of section .text:

00000000004010c0 <main>:
main():
/app/example.cpp:15
  4010c0:	55                                              	push   rbp
/usr/include/stdlib.h:363
  4010c1:	ba 0a 00 00 00                                  	mov    edx,0xa
atoi():
/usr/include/stdlib.h:363
  4010c6:	31 f6                                           	xor    esi,esi
  4010c8:	bf 04 20 40 00                                  	mov    edi,0x402004
main():
/app/example.cpp:15
  4010cd:	53                                              	push   rbx
  4010ce:	48 83 ec 08                                     	sub    rsp,0x8
atoi():
/usr/include/stdlib.h:363
  4010d2:	e8 a9 ff ff ff                                  	call   401080 <strtol@plt>
main():
/app/example.cpp:17
  4010d7:	bf 80 40 40 00                                  	mov    edi,0x404080
  4010dc:	89 c6                                           	mov    esi,eax
  4010de:	e8 bd ff ff ff                                  	call   4010a0 <std::ostream::operator<<(int)@plt>
  4010e3:	48 89 c3                                        	mov    rbx,rax
std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&):
/opt/compiler-explorer/gcc-trunk-20220526/include/c++/13.0.0/ostream:689
  4010e6:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
  4010e9:	48 8b 40 e8                                     	mov    rax,QWORD PTR [rax-0x18]
  4010ed:	48 8b ac 03 f0 00 00 00                         	mov    rbp,QWORD PTR [rbx+rax*1+0xf0]
std::ctype<char> const& std::__check_facet<std::ctype<char> >(std::ctype<char> const*):
/opt/compiler-explorer/gcc-trunk-20220526/include/c++/13.0.0/bits/basic_ios.h:49
  4010f5:	48 85 ed                                        	test   rbp,rbp
  4010f8:	74 4f                                           	je     401149 <main+0x89>
std::ctype<char>::widen(char) const:
/opt/compiler-explorer/gcc-trunk-20220526/include/c++/13.0.0/bits/locale_facets.h:882
  4010fa:	80 7d 38 00                                     	cmp    BYTE PTR [rbp+0x38],0x0
  4010fe:	74 1d                                           	je     40111d <main+0x5d>
/opt/compiler-explorer/gcc-trunk-20220526/include/c++/13.0.0/bits/locale_facets.h:883
  401100:	0f be 75 43                                     	movsx  esi,BYTE PTR [rbp+0x43]
std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&):
/opt/compiler-explorer/gcc-trunk-20220526/include/c++/13.0.0/ostream:689
  401104:	48 89 df                                        	mov    rdi,rbx
  401107:	e8 24 ff ff ff                                  	call   401030 <std::ostream::put(char)@plt>
  40110c:	48 89 c7                                        	mov    rdi,rax
std::basic_ostream<char, std::char_traits<char> >& std::flush<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&):
/opt/compiler-explorer/gcc-trunk-20220526/include/c++/13.0.0/ostream:711
  40110f:	e8 2c ff ff ff                                  	call   401040 <std::ostream::flush()@plt>
main():
/app/example.cpp:18
  401114:	48 83 c4 08                                     	add    rsp,0x8
  401118:	31 c0                                           	xor    eax,eax
  40111a:	5b                                              	pop    rbx
  40111b:	5d                                              	pop    rbp
  40111c:	c3                                              	ret    
std::ctype<char>::widen(char) const:
/opt/compiler-explorer/gcc-trunk-20220526/include/c++/13.0.0/bits/locale_facets.h:884
  40111d:	48 89 ef                                        	mov    rdi,rbp
  401120:	e8 3b ff ff ff                                  	call   401060 <std::ctype<char>::_M_widen_init() const@plt>
/opt/compiler-explorer/gcc-trunk-20220526/include/c++/13.0.0/bits/locale_facets.h:885
  401125:	48 8b 45 00                                     	mov    rax,QWORD PTR [rbp+0x0]
  401129:	be 0a 00 00 00                                  	mov    esi,0xa
  40112e:	48 8b 40 30                                     	mov    rax,QWORD PTR [rax+0x30]
  401132:	48 3d c0 12 40 00                               	cmp    rax,0x4012c0
  401138:	74 ca                                           	je     401104 <main+0x44>
  40113a:	be 0a 00 00 00                                  	mov    esi,0xa
  40113f:	48 89 ef                                        	mov    rdi,rbp
  401142:	ff d0                                           	call   rax
  401144:	0f be f0                                        	movsx  esi,al
  401147:	eb bb                                           	jmp    401104 <main+0x44>
std::ctype<char> const& std::__check_facet<std::ctype<char> >(std::ctype<char> const*):
/opt/compiler-explorer/gcc-trunk-20220526/include/c++/13.0.0/bits/basic_ios.h:50
  401149:	e8 22 ff ff ff                                  	call   401070 <std::__throw_bad_cast()@plt>
main():
/opt/compiler-explorer/gcc-trunk-20220526/include/c++/13.0.0/bits/basic_ios.h:50
  40114e:	66 90                                           	xchg   ax,ax

0000000000401150 <_GLOBAL__sub_I__Zli3_kmPKc>:
_GLOBAL__sub_I__Zli3_kmPKc():
/app/example.cpp:18
  401150:	48 83 ec 08                                     	sub    rsp,0x8
/opt/compiler-explorer/gcc-trunk-20220526/include/c++/13.0.0/iostream:74
  401154:	bf 91 41 40 00                                  	mov    edi,0x404191
__static_initialization_and_destruction_0():
/opt/compiler-explorer/gcc-trunk-20220526/include/c++/13.0.0/iostream:74
  401159:	e8 32 ff ff ff                                  	call   401090 <std::ios_base::Init::Init()@plt>
  40115e:	ba 68 40 40 00                                  	mov    edx,0x404068
  401163:	be 91 41 40 00                                  	mov    esi,0x404191
  401168:	bf b0 10 40 00                                  	mov    edi,0x4010b0
_GLOBAL__sub_I__Zli3_kmPKc():
/app/example.cpp:18
  40116d:	48 83 c4 08                                     	add    rsp,0x8
__static_initialization_and_destruction_0():
/opt/compiler-explorer/gcc-trunk-20220526/include/c++/13.0.0/iostream:74
  401171:	e9 da fe ff ff                                  	jmp    401050 <__cxa_atexit@plt>
_GLOBAL__sub_I__Zli3_kmPKc():
  401176:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nop WORD PTR [rax+rax*1+0x0]

0000000000401180 <_start>:
_start():
  401180:	f3 0f 1e fa                                     	endbr64 
  401184:	31 ed                                           	xor    ebp,ebp
  401186:	49 89 d1                                        	mov    r9,rdx
  401189:	5e                                              	pop    rsi
  40118a:	48 89 e2                                        	mov    rdx,rsp
  40118d:	48 83 e4 f0                                     	and    rsp,0xfffffffffffffff0
  401191:	50                                              	push   rax
  401192:	54                                              	push   rsp
  401193:	49 c7 c0 40 13 40 00                            	mov    r8,0x401340
  40119a:	48 c7 c1 d0 12 40 00                            	mov    rcx,0x4012d0
  4011a1:	48 c7 c7 c0 10 40 00                            	mov    rdi,0x4010c0
  4011a8:	ff 15 42 2e 00 00                               	call   QWORD PTR [rip+0x2e42]        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  4011ae:	f4                                              	hlt    
  4011af:	90                                              	nop

00000000004011b0 <_dl_relocate_static_pie>:
_dl_relocate_static_pie():
  4011b0:	f3 0f 1e fa                                     	endbr64 
  4011b4:	c3                                              	ret    
  4011b5:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nop WORD PTR [rax+rax*1+0x0]
  4011bf:	90                                              	nop

00000000004011c0 <deregister_tm_clones>:
deregister_tm_clones():
  4011c0:	b8 70 40 40 00                                  	mov    eax,0x404070
  4011c5:	48 3d 70 40 40 00                               	cmp    rax,0x404070
  4011cb:	74 13                                           	je     4011e0 <deregister_tm_clones+0x20>
  4011cd:	b8 00 00 00 00                                  	mov    eax,0x0
  4011d2:	48 85 c0                                        	test   rax,rax
  4011d5:	74 09                                           	je     4011e0 <deregister_tm_clones+0x20>
  4011d7:	bf 70 40 40 00                                  	mov    edi,0x404070
  4011dc:	ff e0                                           	jmp    rax
  4011de:	66 90                                           	xchg   ax,ax
  4011e0:	c3                                              	ret    
  4011e1:	66 66 2e 0f 1f 84 00 00 00 00 00                	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4011ec:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]

00000000004011f0 <register_tm_clones>:
register_tm_clones():
  4011f0:	be 70 40 40 00                                  	mov    esi,0x404070
  4011f5:	48 81 ee 70 40 40 00                            	sub    rsi,0x404070
  4011fc:	48 89 f0                                        	mov    rax,rsi
  4011ff:	48 c1 ee 3f                                     	shr    rsi,0x3f
  401203:	48 c1 f8 03                                     	sar    rax,0x3
  401207:	48 01 c6                                        	add    rsi,rax
  40120a:	48 d1 fe                                        	sar    rsi,1
  40120d:	74 11                                           	je     401220 <register_tm_clones+0x30>
  40120f:	b8 00 00 00 00                                  	mov    eax,0x0
  401214:	48 85 c0                                        	test   rax,rax
  401217:	74 07                                           	je     401220 <register_tm_clones+0x30>
  401219:	bf 70 40 40 00                                  	mov    edi,0x404070
  40121e:	ff e0                                           	jmp    rax
  401220:	c3                                              	ret    
  401221:	66 66 2e 0f 1f 84 00 00 00 00 00                	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40122c:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]

0000000000401230 <__do_global_dtors_aux>:
__do_global_dtors_aux():
  401230:	f3 0f 1e fa                                     	endbr64 
  401234:	80 3d 55 2f 00 00 00                            	cmp    BYTE PTR [rip+0x2f55],0x0        # 404190 <completed.0>
  40123b:	75 13                                           	jne    401250 <__do_global_dtors_aux+0x20>
  40123d:	55                                              	push   rbp
  40123e:	48 89 e5                                        	mov    rbp,rsp
  401241:	e8 7a ff ff ff                                  	call   4011c0 <deregister_tm_clones>
  401246:	c6 05 43 2f 00 00 01                            	mov    BYTE PTR [rip+0x2f43],0x1        # 404190 <completed.0>
  40124d:	5d                                              	pop    rbp
  40124e:	c3                                              	ret    
  40124f:	90                                              	nop
  401250:	c3                                              	ret    
  401251:	66 66 2e 0f 1f 84 00 00 00 00 00                	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40125c:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]

0000000000401260 <frame_dummy>:
frame_dummy():
  401260:	f3 0f 1e fa                                     	endbr64 
  401264:	eb 8a                                           	jmp    4011f0 <register_tm_clones>
  401266:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nop WORD PTR [rax+rax*1+0x0]

0000000000401270 <operator"" _km(char const*)>:
operator"" _km(char const*):
/app/example.cpp:7
  401270:	48 83 ec 08                                     	sub    rsp,0x8
/usr/include/stdlib.h:363
  401274:	ba 0a 00 00 00                                  	mov    edx,0xa
atoi():
/usr/include/stdlib.h:363
  401279:	31 f6                                           	xor    esi,esi
  40127b:	e8 00 fe ff ff                                  	call   401080 <strtol@plt>
operator"" _km(char const*):
/app/example.cpp:9
  401280:	48 83 c4 08                                     	add    rsp,0x8
  401284:	c3                                              	ret    
  401285:	66 66 2e 0f 1f 84 00 00 00 00 00                	data16 cs nop WORD PTR [rax+rax*1+0x0]

0000000000401290 <operator"" _km(long double)>:
operator"" _km(long double):
/app/example.cpp:12
  401290:	d9 7c 24 f6                                     	fnstcw WORD PTR [rsp-0xa]
  401294:	db 6c 24 08                                     	fld    TBYTE PTR [rsp+0x8]
  401298:	0f b7 44 24 f6                                  	movzx  eax,WORD PTR [rsp-0xa]
  40129d:	80 cc 0c                                        	or     ah,0xc
  4012a0:	66 89 44 24 f4                                  	mov    WORD PTR [rsp-0xc],ax
  4012a5:	d9 6c 24 f4                                     	fldcw  WORD PTR [rsp-0xc]
  4012a9:	db 5c 24 f0                                     	fistp  DWORD PTR [rsp-0x10]
  4012ad:	d9 6c 24 f6                                     	fldcw  WORD PTR [rsp-0xa]
  4012b1:	8b 44 24 f0                                     	mov    eax,DWORD PTR [rsp-0x10]
/app/example.cpp:13
  4012b5:	c3                                              	ret    
  4012b6:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nop WORD PTR [rax+rax*1+0x0]

00000000004012c0 <std::ctype<char>::do_widen(char) const>:
std::ctype<char>::do_widen(char) const:
/opt/compiler-explorer/gcc-trunk-20220526/include/c++/13.0.0/bits/locale_facets.h:1092
  4012c0:	89 f0                                           	mov    eax,esi
/opt/compiler-explorer/gcc-trunk-20220526/include/c++/13.0.0/bits/locale_facets.h:1093
  4012c2:	c3                                              	ret    
  4012c3:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nop WORD PTR [rax+rax*1+0x0]
  4012cd:	0f 1f 00                                        	nop    DWORD PTR [rax]

00000000004012d0 <__libc_csu_init>:
__libc_csu_init():
  4012d0:	f3 0f 1e fa                                     	endbr64 
  4012d4:	41 57                                           	push   r15
  4012d6:	4c 8d 3d cb 2a 00 00                            	lea    r15,[rip+0x2acb]        # 403da8 <__frame_dummy_init_array_entry>
  4012dd:	41 56                                           	push   r14
  4012df:	49 89 d6                                        	mov    r14,rdx
  4012e2:	41 55                                           	push   r13
  4012e4:	49 89 f5                                        	mov    r13,rsi
  4012e7:	41 54                                           	push   r12
  4012e9:	41 89 fc                                        	mov    r12d,edi
  4012ec:	55                                              	push   rbp
  4012ed:	48 8d 2d c4 2a 00 00                            	lea    rbp,[rip+0x2ac4]        # 403db8 <__do_global_dtors_aux_fini_array_entry>
  4012f4:	53                                              	push   rbx
  4012f5:	4c 29 fd                                        	sub    rbp,r15
  4012f8:	48 83 ec 08                                     	sub    rsp,0x8
  4012fc:	e8 ff fc ff ff                                  	call   401000 <_init>
  401301:	48 c1 fd 03                                     	sar    rbp,0x3
  401305:	74 1f                                           	je     401326 <__libc_csu_init+0x56>
  401307:	31 db                                           	xor    ebx,ebx
  401309:	0f 1f 80 00 00 00 00                            	nop    DWORD PTR [rax+0x0]
  401310:	4c 89 f2                                        	mov    rdx,r14
  401313:	4c 89 ee                                        	mov    rsi,r13
  401316:	44 89 e7                                        	mov    edi,r12d
  401319:	41 ff 14 df                                     	call   QWORD PTR [r15+rbx*8]
  40131d:	48 83 c3 01                                     	add    rbx,0x1
  401321:	48 39 dd                                        	cmp    rbp,rbx
  401324:	75 ea                                           	jne    401310 <__libc_csu_init+0x40>
  401326:	48 83 c4 08                                     	add    rsp,0x8
  40132a:	5b                                              	pop    rbx
  40132b:	5d                                              	pop    rbp
  40132c:	41 5c                                           	pop    r12
  40132e:	41 5d                                           	pop    r13
  401330:	41 5e                                           	pop    r14
  401332:	41 5f                                           	pop    r15
  401334:	c3                                              	ret    
  401335:	66 66 2e 0f 1f 84 00 00 00 00 00                	data16 cs nop WORD PTR [rax+rax*1+0x0]

0000000000401340 <__libc_csu_fini>:
__libc_csu_fini():
  401340:	f3 0f 1e fa                                     	endbr64 
  401344:	c3                                              	ret    

Disassembly of section .fini:

0000000000401348 <_fini>:
_fini():
  401348:	f3 0f 1e fa                                     	endbr64 
  40134c:	48 83 ec 08                                     	sub    rsp,0x8
  401350:	48 83 c4 08                                     	add    rsp,0x8
  401354:	c3                                              	ret    
