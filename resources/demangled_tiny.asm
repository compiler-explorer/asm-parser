
output.s:     file format elf64-x86-64


Disassembly of section .init:

0000000000408000 <_init>:
_init():
  408000:	f3 0f 1e fa                                     	endbr64 
  40801a:	c3                                              	ret    

Disassembly of section .plt:

0000000000408020 <std::basic_ios<char, std::char_traits<char> >::fail() const@plt-0x10>:
  408020:	ff 35 e2 af 13 00                               	push   QWORD PTR [rip+0x13afe2]        # 543008 <_GLOBAL_OFFSET_TABLE_+0x8>
  408026:	ff 25 e4 af 13 00                               	jmp    QWORD PTR [rip+0x13afe4]        # 543010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40802c:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]

0000000000408030 <std::basic_ios<char, std::char_traits<char> >::fail() const@plt>:
  408030:	ff 25 e2 af 13 00                               	jmp    QWORD PTR [rip+0x13afe2]        # 543018 <std::basic_ios<char, std::char_traits<char> >::fail() const@GLIBCXX_3.4>
  408036:	68 00 00 00 00                                  	push   0x0
  40803b:	e9 e0 ff ff ff                                  	jmp    408020 <_init+0x20>

Disassembly of section .text:

0000000000408f70 <____C_A_T_C_H____T_E_S_T____0() [clone .cold]>:
____C_A_T_C_H____T_E_S_T____0() [clone .cold]:
  408f70:	90                                              	nop
/app/example.cpp:31
  408f71:	48 89 c5                                        	mov    rbp,rax
____C_A_T_C_H____T_E_S_T____0():
/app/example.cpp:31 (discriminator 17)
  408f74:	48 8d 7c 24 70                                  	lea    rdi,[rsp+0x70]
  408f79:	e8 72 27 00 00                                  	call   40b6f0 <Catch::AssertionHandler::~AssertionHandler()>
/app/example.cpp:32
  408f7e:	48 8d bc 24 c0 00 00 00                         	lea    rdi,[rsp+0xc0]
  408f86:	e8 fd 19 04 00                                  	call   44a988 <Catch::Section::~Section()>
  408f8b:	48 89 ef                                        	mov    rdi,rbp
  408f8e:	e8 1d fe ff ff                                  	call   408db0 <_Unwind_Resume@plt>
Catch::BinaryExpr<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const (&) [2]>::~BinaryExpr():
/opt/compiler-explorer/libs/catch2/v3.0.0-preview2/src/catch2/internal/catch_decomposer.hpp:65 (discriminator 8)
  408f93:	48 c7 44 24 40 20 73 4c 00                      	mov    QWORD PTR [rsp+0x40],0x4c7320
  408f9c:	48 8d 7c 24 40                                  	lea    rdi,[rsp+0x40]
  408fa1:	e8 32 e6 02 00                                  	call   4375d8 <Catch::ITransientExpression::~ITransientExpression()>
____C_A_T_C_H____T_E_S_T____0():
/app/example.cpp:23 (discriminator 2)
  408fb8:	e8 33 f3 ff ff                                  	call   4082f0 <__cxa_begin_catch@plt>
  408fbd:	48 8d 7c 24 70                                  	lea    rdi,[rsp+0x70]
  408fc2:	e8 3b 29 00 00                                  	call   40b902 <Catch::AssertionHandler::handleUnexpectedInflightException()>
____C_A_T_C_H____T_E_S_T____0() [clone .cold]:
  4095af:	90                                              	nop

00000000004095b0 <_GLOBAL__sub_I__Z8fizzbuzzB5cxx11i>:
_GLOBAL__sub_I__Z8fizzbuzzB5cxx11i():
/app/example.cpp:52
  4095b0:	48 83 ec 78                                     	sub    rsp,0x78
/app/example.cpp:19
  4095b4:	be 82 71 4c 00                                  	mov    esi,0x4c7182
__static_initialization_and_destruction_0():
/app/example.cpp:19
  4095b9:	48 8d 7c 24 10                                  	lea    rdi,[rsp+0x10]
  4095be:	e8 d3 94 05 00                                  	call   462a96 <Catch::StringRef::StringRef(char const*)>
  4095c3:	be 91 71 4c 00                                  	mov    esi,0x4c7191
  4095c8:	48 8d 7c 24 20                                  	lea    rdi,[rsp+0x20]
  4095cd:	e8 c4 94 05 00                                  	call   462a96 <Catch::StringRef::StringRef(char const*)>
Catch::NameAndTags::NameAndTags(Catch::StringRef const&, Catch::StringRef const&):
/opt/compiler-explorer/libs/catch2/v3.0.0-preview2/src/catch2/internal/catch_test_registry.hpp:51
  4095d2:	66 0f 6f 44 24 10                               	movdqa xmm0,XMMWORD PTR [rsp+0x10]
  4095d8:	66 0f 6f 4c 24 20                               	movdqa xmm1,XMMWORD PTR [rsp+0x20]
__static_initialization_and_destruction_0():
/app/example.cpp:19
  4095de:	be 70 9b 40 00                                  	mov    esi,0x409b70
  4095e3:	48 c7 44 24 38 00 00 00 00                      	mov    QWORD PTR [rsp+0x38],0x0
  4095ec:	48 8d 7c 24 08                                  	lea    rdi,[rsp+0x8]
_GLOBAL__sub_I__Z8fizzbuzzB5cxx11i():
/app/example.cpp:52
  409649:	48 83 c4 78                                     	add    rsp,0x78
  40964d:	c3                                              	ret    
  40964e:	66 90                                           	xchg   ax,ax

000000000040b0f0 <Catch::BinaryExpr<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const (&) [2]>::~BinaryExpr()>:
Catch::BinaryExpr<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const (&) [2]>::~BinaryExpr():
/opt/compiler-explorer/libs/catch2/v3.0.0-preview2/src/catch2/internal/catch_decomposer.hpp:65
  40b0f0:	48 c7 07 20 73 4c 00                            	mov    QWORD PTR [rdi],0x4c7320
  40b0f7:	e9 dc c4 02 00                                  	jmp    4375d8 <Catch::ITransientExpression::~ITransientExpression()>
  40b0fc:	0f 1f 40 00                                     	nop    DWORD PTR [rax+0x0]

Disassembly of section .fini:

00000000004c60f8 <_fini>:
_fini():
  4c60f8:	f3 0f 1e fa                                     	endbr64 
  4c60fc:	48 83 ec 08                                     	sub    rsp,0x8
  4c6100:	48 83 c4 08                                     	add    rsp,0x8
  4c6104:	c3                                              	ret    
