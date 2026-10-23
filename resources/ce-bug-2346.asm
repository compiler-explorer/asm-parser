
output.s:     file format elf64-x86-64


Disassembly of section .init:

000000000002d000 <_init>:
_init():
   2d000:	f3 0f 1e fa                                     	endbr64
   2d004:	48 83 ec 08                                     	sub    $0x8,%rsp
   2d008:	48 8b 05 31 bf 12 00                            	mov    0x12bf31(%rip),%rax        # 158f40 <__gmon_start__>
   2d00f:	48 85 c0                                        	test   %rax,%rax
   2d012:	74 02                                           	je     2d016 <_init+0x16>
   2d014:	ff d0                                           	call   *%rax
   2d016:	48 83 c4 08                                     	add    $0x8,%rsp
   2d01a:	c3                                              	ret

Disassembly of section .plt:

000000000002d020 <__sanitizer_symbolize_demangle@plt-0x10>:
   2d020:	ff 35 ca bf 12 00                               	push   0x12bfca(%rip)        # 158ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
   2d026:	ff 25 cc bf 12 00                               	jmp    *0x12bfcc(%rip)        # 158ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
   2d02c:	0f 1f 40 00                                     	nopl   0x0(%rax)

000000000002d030 <__sanitizer_symbolize_demangle@plt>:
   2d030:	ff 25 ca bf 12 00                               	jmp    *0x12bfca(%rip)        # 159000 <__sanitizer_symbolize_demangle>
   2d036:	68 00 00 00 00                                  	push   $0x0
   2d03b:	e9 e0 ff ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d040 <getauxval@plt>:
   2d040:	ff 25 c2 bf 12 00                               	jmp    *0x12bfc2(%rip)        # 159008 <getauxval@GLIBC_2.16>
   2d046:	68 01 00 00 00                                  	push   $0x1
   2d04b:	e9 d0 ff ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d050 <gnu_get_libc_version@plt>:
   2d050:	ff 25 ba bf 12 00                               	jmp    *0x12bfba(%rip)        # 159010 <gnu_get_libc_version@GLIBC_2.2.5>
   2d056:	68 02 00 00 00                                  	push   $0x2
   2d05b:	e9 c0 ff ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d060 <syslog@plt>:
   2d060:	ff 25 b2 bf 12 00                               	jmp    *0x12bfb2(%rip)        # 159018 <syslog@GLIBC_2.2.5>
   2d066:	68 03 00 00 00                                  	push   $0x3
   2d06b:	e9 b0 ff ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d070 <abort@plt>:
   2d070:	ff 25 aa bf 12 00                               	jmp    *0x12bfaa(%rip)        # 159020 <abort@GLIBC_2.2.5>
   2d076:	68 04 00 00 00                                  	push   $0x4
   2d07b:	e9 a0 ff ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d080 <pthread_setspecific@plt>:
   2d080:	ff 25 a2 bf 12 00                               	jmp    *0x12bfa2(%rip)        # 159028 <pthread_setspecific@GLIBC_2.34>
   2d086:	68 05 00 00 00                                  	push   $0x5
   2d08b:	e9 90 ff ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d090 <setrlimit@plt>:
   2d090:	ff 25 9a bf 12 00                               	jmp    *0x12bf9a(%rip)        # 159030 <setrlimit@GLIBC_2.2.5>
   2d096:	68 06 00 00 00                                  	push   $0x6
   2d09b:	e9 80 ff ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d0a0 <__sanitizer_symbolize_frame@plt>:
   2d0a0:	ff 25 92 bf 12 00                               	jmp    *0x12bf92(%rip)        # 159038 <__sanitizer_symbolize_frame>
   2d0a6:	68 07 00 00 00                                  	push   $0x7
   2d0ab:	e9 70 ff ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d0b0 <getrusage@plt>:
   2d0b0:	ff 25 8a bf 12 00                               	jmp    *0x12bf8a(%rip)        # 159040 <getrusage@GLIBC_2.2.5>
   2d0b6:	68 08 00 00 00                                  	push   $0x8
   2d0bb:	e9 60 ff ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d0c0 <isatty@plt>:
   2d0c0:	ff 25 82 bf 12 00                               	jmp    *0x12bf82(%rip)        # 159048 <isatty@GLIBC_2.2.5>
   2d0c6:	68 09 00 00 00                                  	push   $0x9
   2d0cb:	e9 50 ff ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d0d0 <__register_atfork@plt>:
   2d0d0:	ff 25 7a bf 12 00                               	jmp    *0x12bf7a(%rip)        # 159050 <__register_atfork@GLIBC_2.3.2>
   2d0d6:	68 0a 00 00 00                                  	push   $0xa
   2d0db:	e9 40 ff ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d0e0 <pthread_getattr_np@plt>:
   2d0e0:	ff 25 72 bf 12 00                               	jmp    *0x12bf72(%rip)        # 159058 <pthread_getattr_np@GLIBC_2.32>
   2d0e6:	68 0b 00 00 00                                  	push   $0xb
   2d0eb:	e9 30 ff ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d0f0 <sched_yield@plt>:
   2d0f0:	ff 25 6a bf 12 00                               	jmp    *0x12bf6a(%rip)        # 159060 <sched_yield@GLIBC_2.2.5>
   2d0f6:	68 0c 00 00 00                                  	push   $0xc
   2d0fb:	e9 20 ff ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d100 <sysconf@plt>:
   2d100:	ff 25 62 bf 12 00                               	jmp    *0x12bf62(%rip)        # 159068 <sysconf@GLIBC_2.2.5>
   2d106:	68 0d 00 00 00                                  	push   $0xd
   2d10b:	e9 10 ff ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d110 <pthread_attr_destroy@plt>:
   2d110:	ff 25 5a bf 12 00                               	jmp    *0x12bf5a(%rip)        # 159070 <pthread_attr_destroy@GLIBC_2.2.5>
   2d116:	68 0e 00 00 00                                  	push   $0xe
   2d11b:	e9 00 ff ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d120 <__sanitizer_symbolize_set_demangle@plt>:
   2d120:	ff 25 52 bf 12 00                               	jmp    *0x12bf52(%rip)        # 159078 <__sanitizer_symbolize_set_demangle>
   2d126:	68 0f 00 00 00                                  	push   $0xf
   2d12b:	e9 f0 fe ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d130 <pthread_key_create@plt>:
   2d130:	ff 25 4a bf 12 00                               	jmp    *0x12bf4a(%rip)        # 159080 <pthread_key_create@GLIBC_2.34>
   2d136:	68 10 00 00 00                                  	push   $0x10
   2d13b:	e9 e0 fe ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d140 <_Unwind_GetIP@plt>:
   2d140:	ff 25 42 bf 12 00                               	jmp    *0x12bf42(%rip)        # 159088 <_Unwind_GetIP@GCC_3.0>
   2d146:	68 11 00 00 00                                  	push   $0x11
   2d14b:	e9 d0 fe ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d150 <_Unwind_Backtrace@plt>:
   2d150:	ff 25 3a bf 12 00                               	jmp    *0x12bf3a(%rip)        # 159090 <_Unwind_Backtrace@GCC_3.3>
   2d156:	68 12 00 00 00                                  	push   $0x12
   2d15b:	e9 c0 fe ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d160 <pipe@plt>:
   2d160:	ff 25 32 bf 12 00                               	jmp    *0x12bf32(%rip)        # 159098 <pipe@GLIBC_2.2.5>
   2d166:	68 13 00 00 00                                  	push   $0x13
   2d16b:	e9 b0 fe ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d170 <pthread_self@plt>:
   2d170:	ff 25 2a bf 12 00                               	jmp    *0x12bf2a(%rip)        # 1590a0 <pthread_self@GLIBC_2.2.5>
   2d176:	68 14 00 00 00                                  	push   $0x14
   2d17b:	e9 a0 fe ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d180 <__sanitizer_symbolize_flush@plt>:
   2d180:	ff 25 22 bf 12 00                               	jmp    *0x12bf22(%rip)        # 1590a8 <__sanitizer_symbolize_flush>
   2d186:	68 15 00 00 00                                  	push   $0x15
   2d18b:	e9 90 fe ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d190 <pthread_attr_setstacksize@plt>:
   2d190:	ff 25 1a bf 12 00                               	jmp    *0x12bf1a(%rip)        # 1590b0 <pthread_attr_setstacksize@GLIBC_2.34>
   2d196:	68 16 00 00 00                                  	push   $0x16
   2d19b:	e9 80 fe ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d1a0 <personality@plt>:
   2d1a0:	ff 25 12 bf 12 00                               	jmp    *0x12bf12(%rip)        # 1590b8 <personality@GLIBC_2.2.5>
   2d1a6:	68 17 00 00 00                                  	push   $0x17
   2d1ab:	e9 70 fe ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d1b0 <dladdr@plt>:
   2d1b0:	ff 25 0a bf 12 00                               	jmp    *0x12bf0a(%rip)        # 1590c0 <dladdr@GLIBC_2.34>
   2d1b6:	68 18 00 00 00                                  	push   $0x18
   2d1bb:	e9 60 fe ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d1c0 <dl_iterate_phdr@plt>:
   2d1c0:	ff 25 02 bf 12 00                               	jmp    *0x12bf02(%rip)        # 1590c8 <dl_iterate_phdr@GLIBC_2.2.5>
   2d1c6:	68 19 00 00 00                                  	push   $0x19
   2d1cb:	e9 50 fe ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d1d0 <__errno_location@plt>:
   2d1d0:	ff 25 fa be 12 00                               	jmp    *0x12befa(%rip)        # 1590d0 <__errno_location@GLIBC_2.2.5>
   2d1d6:	68 1a 00 00 00                                  	push   $0x1a
   2d1db:	e9 40 fe ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d1e0 <getuid@plt>:
   2d1e0:	ff 25 f2 be 12 00                               	jmp    *0x12bef2(%rip)        # 1590d8 <getuid@GLIBC_2.2.5>
   2d1e6:	68 1b 00 00 00                                  	push   $0x1b
   2d1eb:	e9 30 fe ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d1f0 <pthread_getspecific@plt>:
   2d1f0:	ff 25 ea be 12 00                               	jmp    *0x12beea(%rip)        # 1590e0 <pthread_getspecific@GLIBC_2.34>
   2d1f6:	68 1c 00 00 00                                  	push   $0x1c
   2d1fb:	e9 20 fe ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d200 <getrlimit@plt>:
   2d200:	ff 25 e2 be 12 00                               	jmp    *0x12bee2(%rip)        # 1590e8 <getrlimit@GLIBC_2.2.5>
   2d206:	68 1d 00 00 00                                  	push   $0x1d
   2d20b:	e9 10 fe ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d210 <pthread_attr_init@plt>:
   2d210:	ff 25 da be 12 00                               	jmp    *0x12beda(%rip)        # 1590f0 <pthread_attr_init@GLIBC_2.2.5>
   2d216:	68 1e 00 00 00                                  	push   $0x1e
   2d21b:	e9 00 fe ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d220 <__sched_cpucount@plt>:
   2d220:	ff 25 d2 be 12 00                               	jmp    *0x12bed2(%rip)        # 1590f8 <__sched_cpucount@GLIBC_2.6>
   2d226:	68 1f 00 00 00                                  	push   $0x1f
   2d22b:	e9 f0 fd ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d230 <__sanitizer_symbolize_data@plt>:
   2d230:	ff 25 ca be 12 00                               	jmp    *0x12beca(%rip)        # 159100 <__sanitizer_symbolize_data>
   2d236:	68 20 00 00 00                                  	push   $0x20
   2d23b:	e9 e0 fd ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d240 <__sanitizer_symbolize_set_inline_frames@plt>:
   2d240:	ff 25 c2 be 12 00                               	jmp    *0x12bec2(%rip)        # 159108 <__sanitizer_symbolize_set_inline_frames>
   2d246:	68 21 00 00 00                                  	push   $0x21
   2d24b:	e9 d0 fd ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d250 <fcntl@plt>:
   2d250:	ff 25 ba be 12 00                               	jmp    *0x12beba(%rip)        # 159110 <fcntl@GLIBC_2.2.5>
   2d256:	68 22 00 00 00                                  	push   $0x22
   2d25b:	e9 c0 fd ff ff                                  	jmp    2d020 <_init+0x20>

000000000002d260 <mkdir@plt>:
   2d260:	ff 25 b2 be 12 00                               	jmp    *0x12beb2(%rip)        # 159118 <mkdir@GLIBC_2.2.5>
   2d266:	68 23 00 00 00                                  	push   $0x23
   2d26b:	e9 b0 fd ff ff                                  	jmp    2d020 <_init+0x20>

Disassembly of section .plt.got:

000000000002d270 <__sanitizer_symbolize_code@plt>:
   2d270:	ff 25 ea bc 12 00                               	jmp    *0x12bcea(%rip)        # 158f60 <__sanitizer_symbolize_code>
   2d276:	66 90                                           	xchg   %ax,%ax

000000000002d278 <__cxa_finalize@plt>:
   2d278:	ff 25 f2 bc 12 00                               	jmp    *0x12bcf2(%rip)        # 158f70 <__cxa_finalize@GLIBC_2.2.5>
   2d27e:	66 90                                           	xchg   %ax,%ax

000000000002d280 <__cxa_demangle@plt>:
   2d280:	ff 25 fa bc 12 00                               	jmp    *0x12bcfa(%rip)        # 158f80 <__cxa_demangle>
   2d286:	66 90                                           	xchg   %ax,%ax

000000000002d288 <__lsan_is_turned_off@plt>:
   2d288:	ff 25 fa bc 12 00                               	jmp    *0x12bcfa(%rip)        # 158f88 <__lsan_is_turned_off>
   2d28e:	66 90                                           	xchg   %ax,%ax

000000000002d290 <__lsan_default_suppressions@plt>:
   2d290:	ff 25 12 bd 12 00                               	jmp    *0x12bd12(%rip)        # 158fa8 <__lsan_default_suppressions>
   2d296:	66 90                                           	xchg   %ax,%ax

000000000002d298 <dlvsym@plt>:
   2d298:	ff 25 12 bd 12 00                               	jmp    *0x12bd12(%rip)        # 158fb0 <dlvsym@GLIBC_2.34>
   2d29e:	66 90                                           	xchg   %ax,%ax

000000000002d2a0 <dlsym@plt>:
   2d2a0:	ff 25 12 bd 12 00                               	jmp    *0x12bd12(%rip)        # 158fb8 <dlsym@GLIBC_2.34>
   2d2a6:	66 90                                           	xchg   %ax,%ax

Disassembly of section .text:

000000000002d2b0 <_GLOBAL__sub_I_sanitizer_common_libcdep.cpp>:
_GLOBAL__sub_I_sanitizer_common_libcdep.cpp():
/root/llvm-project/compiler-rt/lib/sanitizer_common/sanitizer_common_libcdep.cpp:87
   2d2b0:	48 8d 05 21 1e 1d 00                            	lea    0x1d1e21(%rip),%rax        # 1ff0d8 <_ZN11__sanitizer21common_flags_dont_useE>
   2d2b7:	48 83 b8 98 00 00 00 00                         	cmpq   $0x0,0x98(%rax)
   2d2bf:	75 13                                           	jne    2d2d4 <_GLOBAL__sub_I_sanitizer_common_libcdep.cpp+0x24>
   2d2c1:	48 83 b8 a0 00 00 00 00                         	cmpq   $0x0,0xa0(%rax)
   2d2c9:	75 09                                           	jne    2d2d4 <_GLOBAL__sub_I_sanitizer_common_libcdep.cpp+0x24>
   2d2cb:	80 b8 b0 00 00 00 00                            	cmpb   $0x0,0xb0(%rax)
   2d2d2:	74 35                                           	je     2d309 <_GLOBAL__sub_I_sanitizer_common_libcdep.cpp+0x59>
/root/llvm-project/compiler-rt/lib/sanitizer_common/sanitizer_common_libcdep.cpp:90
   2d2d4:	48 83 3d 54 bc 12 00 00                         	cmpq   $0x0,0x12bc54(%rip)        # 158f30 <_DYNAMIC+0x230>
   2d2dc:	74 1e                                           	je     2d2fc <_GLOBAL__sub_I_sanitizer_common_libcdep.cpp+0x4c>
/root/llvm-project/compiler-rt/lib/sanitizer_common/sanitizer_common_libcdep.cpp:96
   2d2de:	80 3d 47 20 1d 00 00                            	cmpb   $0x0,0x1d2047(%rip)        # 1ff32c <_ZZN11__sanitizer25MaybeStartBackgroudThreadEvE7started>
   2d2e5:	75 22                                           	jne    2d309 <_GLOBAL__sub_I_sanitizer_common_libcdep.cpp+0x59>
/root/llvm-project/compiler-rt/lib/sanitizer_common/sanitizer_common_libcdep.cpp:97
   2d2e7:	c6 05 3e 20 1d 00 01                            	movb   $0x1,0x1d203e(%rip)        # 1ff32c <_ZZN11__sanitizer25MaybeStartBackgroudThreadEvE7started>
/root/llvm-project/compiler-rt/lib/sanitizer_common/sanitizer_common_libcdep.cpp:98
   2d2ee:	48 8d 3d cb 3b 0d 00                            	lea    0xd3bcb(%rip),%rdi        # 100ec0 <_ZN11__sanitizer16BackgroundThreadEPv>
   2d2f5:	31 f6                                           	xor    %esi,%esi
   2d2f7:	e9 44 a2 0c 00                                  	jmp    f7540 <_ZN11__sanitizer21internal_start_threadEPFPvS0_ES0_>
/root/llvm-project/compiler-rt/lib/sanitizer_common/sanitizer_atomic_clang.h:56
   2d2fc:	48 8d 05 45 fd 1c 00                            	lea    0x1cfd45(%rip),%rax        # 1fd048 <_ZN11__sanitizer17current_verbosityE>
atomic_load<__sanitizer::atomic_uint32_t>():
/root/llvm-project/compiler-rt/lib/sanitizer_common/sanitizer_atomic_clang.h:56
   2d303:	8b 00                                           	mov    (%rax),%eax
_GLOBAL__sub_I_sanitizer_common_libcdep.cpp():
/root/llvm-project/compiler-rt/lib/sanitizer_common/sanitizer_common_libcdep.cpp:91
   2d305:	85 c0                                           	test   %eax,%eax
   2d307:	75 01                                           	jne    2d30a <_GLOBAL__sub_I_sanitizer_common_libcdep.cpp+0x5a>
   2d309:	c3                                              	ret
   2d30a:	48 8d 05 5f be 12 00                            	lea    0x12be5f(%rip),%rax        # 159170 <_ZN11__sanitizer17SanitizerToolNameE>
   2d311:	48 8b 30                                        	mov    (%rax),%rsi
   2d314:	48 8d 3d d4 fe 0f 00                            	lea    0xffed4(%rip),%rdi        # 12d1ef <_ZN11__sanitizerL10kExtraRegsE+0xee9f>
   2d31b:	31 c0                                           	xor    %eax,%eax
   2d31d:	e9 ce c3 0c 00                                  	jmp    f96f0 <_ZN11__sanitizer6PrintfEPKcz>
   2d322:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nopw 0x0(%rax,%rax,1)
   2d32c:	0f 1f 40 00                                     	nopl   0x0(%rax)

000000000002d330 <_start>:
_start():
   2d330:	f3 0f 1e fa                                     	endbr64
   2d334:	31 ed                                           	xor    %ebp,%ebp
   2d336:	49 89 d1                                        	mov    %rdx,%r9
   2d339:	5e                                              	pop    %rsi
   2d33a:	48 89 e2                                        	mov    %rsp,%rdx
   2d33d:	48 83 e4 f0                                     	and    $0xfffffffffffffff0,%rsp
   2d341:	50                                              	push   %rax
   2d342:	54                                              	push   %rsp
   2d343:	45 31 c0                                        	xor    %r8d,%r8d
   2d346:	31 c9                                           	xor    %ecx,%ecx
   2d348:	48 8d 3d 71 04 0f 00                            	lea    0xf0471(%rip),%rdi        # 11d7c0 <main>
   2d34f:	ff 15 73 bc 12 00                               	call   *0x12bc73(%rip)        # 158fc8 <__libc_start_main@GLIBC_2.34>
   2d355:	f4                                              	hlt
   2d356:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nopw 0x0(%rax,%rax,1)

000000000002d360 <deregister_tm_clones>:
deregister_tm_clones():
   2d360:	48 8d 3d c9 e7 12 00                            	lea    0x12e7c9(%rip),%rdi        # 15bb30 <__TMC_END__>
   2d367:	48 8d 05 c2 e7 12 00                            	lea    0x12e7c2(%rip),%rax        # 15bb30 <__TMC_END__>
   2d36e:	48 39 f8                                        	cmp    %rdi,%rax
   2d371:	74 15                                           	je     2d388 <deregister_tm_clones+0x28>
   2d373:	48 8b 05 d6 bb 12 00                            	mov    0x12bbd6(%rip),%rax        # 158f50 <_ITM_deregisterTMCloneTable>
   2d37a:	48 85 c0                                        	test   %rax,%rax
   2d37d:	74 09                                           	je     2d388 <deregister_tm_clones+0x28>
   2d37f:	ff e0                                           	jmp    *%rax
   2d381:	0f 1f 80 00 00 00 00                            	nopl   0x0(%rax)
   2d388:	c3                                              	ret
   2d389:	0f 1f 80 00 00 00 00                            	nopl   0x0(%rax)

000000000002d390 <register_tm_clones>:
register_tm_clones():
   2d390:	48 8d 3d 99 e7 12 00                            	lea    0x12e799(%rip),%rdi        # 15bb30 <__TMC_END__>
   2d397:	48 8d 35 92 e7 12 00                            	lea    0x12e792(%rip),%rsi        # 15bb30 <__TMC_END__>
   2d39e:	48 29 fe                                        	sub    %rdi,%rsi
   2d3a1:	48 89 f0                                        	mov    %rsi,%rax
   2d3a4:	48 c1 ee 3f                                     	shr    $0x3f,%rsi
   2d3a8:	48 c1 f8 03                                     	sar    $0x3,%rax
   2d3ac:	48 01 c6                                        	add    %rax,%rsi
   2d3af:	48 d1 fe                                        	sar    $1,%rsi
   2d3b2:	74 14                                           	je     2d3c8 <register_tm_clones+0x38>
   2d3b4:	48 8b 05 9d bb 12 00                            	mov    0x12bb9d(%rip),%rax        # 158f58 <_ITM_registerTMCloneTable>
   2d3bb:	48 85 c0                                        	test   %rax,%rax
   2d3be:	74 08                                           	je     2d3c8 <register_tm_clones+0x38>
   2d3c0:	ff e0                                           	jmp    *%rax
   2d3c2:	66 0f 1f 44 00 00                               	nopw   0x0(%rax,%rax,1)
   2d3c8:	c3                                              	ret
   2d3c9:	0f 1f 80 00 00 00 00                            	nopl   0x0(%rax)

000000000002d3d0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
   2d3d0:	f3 0f 1e fa                                     	endbr64
   2d3d4:	80 3d 65 e7 12 00 00                            	cmpb   $0x0,0x12e765(%rip)        # 15bb40 <completed.0>
   2d3db:	75 2b                                           	jne    2d408 <__do_global_dtors_aux+0x38>
   2d3dd:	55                                              	push   %rbp
   2d3de:	48 83 3d 8a bb 12 00 00                         	cmpq   $0x0,0x12bb8a(%rip)        # 158f70 <__cxa_finalize@GLIBC_2.2.5>
   2d3e6:	48 89 e5                                        	mov    %rsp,%rbp
   2d3e9:	74 0c                                           	je     2d3f7 <__do_global_dtors_aux+0x27>
   2d3eb:	48 8b 3d 36 bd 12 00                            	mov    0x12bd36(%rip),%rdi        # 159128 <__dso_handle>
   2d3f2:	e8 81 fe ff ff                                  	call   2d278 <__cxa_finalize@plt>
   2d3f7:	e8 64 ff ff ff                                  	call   2d360 <deregister_tm_clones>
   2d3fc:	c6 05 3d e7 12 00 01                            	movb   $0x1,0x12e73d(%rip)        # 15bb40 <completed.0>
   2d403:	5d                                              	pop    %rbp
   2d404:	c3                                              	ret
   2d405:	0f 1f 00                                        	nopl   (%rax)
   2d408:	c3                                              	ret
   2d409:	0f 1f 80 00 00 00 00                            	nopl   0x0(%rax)

000000000002d410 <frame_dummy>:
frame_dummy():
   2d410:	f3 0f 1e fa                                     	endbr64
   2d414:	e9 77 ff ff ff                                  	jmp    2d390 <register_tm_clones>
   2d419:	0f 1f 00                                        	nopl   (%rax)
   2d41c:	0f 1f 40 00                                     	nopl   0x0(%rax)

000000000002d420 <__asan_report_load1_asm>:
__asan_report_load1_asm():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_static.cpp:25
   2d420:	e9 6b 6e 0b 00                                  	jmp    e4290 <__asan_report_load1>
   2d425:	0f 1f 00                                        	nopl   (%rax)

000000000002d428 <__asan_report_load2_asm>:
__asan_report_load2_asm():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_static.cpp:26
   2d428:	e9 23 6f 0b 00                                  	jmp    e4350 <__asan_report_load2>
   2d42d:	0f 1f 00                                        	nopl   (%rax)

000000000002d430 <__asan_report_load4_asm>:
__asan_report_load4_asm():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_static.cpp:27
   2d430:	e9 db 6f 0b 00                                  	jmp    e4410 <__asan_report_load4>
   2d435:	0f 1f 00                                        	nopl   (%rax)

000000000002d438 <__asan_report_load8_asm>:
__asan_report_load8_asm():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_static.cpp:28
   2d438:	e9 93 70 0b 00                                  	jmp    e44d0 <__asan_report_load8>
   2d43d:	0f 1f 00                                        	nopl   (%rax)

000000000002d440 <__asan_report_load16_asm>:
__asan_report_load16_asm():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_static.cpp:29
   2d440:	e9 4b 71 0b 00                                  	jmp    e4590 <__asan_report_load16>
   2d445:	0f 1f 00                                        	nopl   (%rax)

000000000002d448 <__asan_report_store1_asm>:
__asan_report_store1_asm():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_static.cpp:30
   2d448:	e9 03 72 0b 00                                  	jmp    e4650 <__asan_report_store1>
   2d44d:	0f 1f 00                                        	nopl   (%rax)

000000000002d450 <__asan_report_store2_asm>:
__asan_report_store2_asm():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_static.cpp:31
   2d450:	e9 bb 72 0b 00                                  	jmp    e4710 <__asan_report_store2>
   2d455:	0f 1f 00                                        	nopl   (%rax)

000000000002d458 <__asan_report_store4_asm>:
__asan_report_store4_asm():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_static.cpp:32
   2d458:	e9 73 73 0b 00                                  	jmp    e47d0 <__asan_report_store4>
   2d45d:	0f 1f 00                                        	nopl   (%rax)

000000000002d460 <__asan_report_store8_asm>:
__asan_report_store8_asm():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_static.cpp:33
   2d460:	e9 2b 74 0b 00                                  	jmp    e4890 <__asan_report_store8>
   2d465:	0f 1f 00                                        	nopl   (%rax)

000000000002d468 <__asan_report_store16_asm>:
__asan_report_store16_asm():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_static.cpp:34
   2d468:	e9 e3 74 0b 00                                  	jmp    e4950 <__asan_report_store16>
   2d46d:	0f 1f 00                                        	nopl   (%rax)

000000000002d470 <__asan_check_load_add_1_RAX>:
__asan_check_load_add_1_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d470:	49 89 c2                                        	mov    %rax,%r10
   2d473:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d477:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d47f:	45 85 d2                                        	test   %r10d,%r10d
   2d482:	75 01                                           	jne    2d485 <.check_load_add_1_RAX>

000000000002d484 <.return_load_add_1_RAX>:
.return_load_add_1_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d484:	c3                                              	ret

000000000002d485 <.check_load_add_1_RAX>:
.check_load_add_1_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d485:	49 89 c3                                        	mov    %rax,%r11
   2d488:	41 83 e3 07                                     	and    $0x7,%r11d
   2d48c:	45 39 d3                                        	cmp    %r10d,%r11d
   2d48f:	7c f3                                           	jl     2d484 <.return_load_add_1_RAX>
   2d491:	48 89 c7                                        	mov    %rax,%rdi
   2d494:	e9 87 ff ff ff                                  	jmp    2d420 <__asan_report_load1_asm>

000000000002d499 <__asan_check_store_add_1_RAX>:
__asan_check_store_add_1_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d499:	49 89 c2                                        	mov    %rax,%r10
   2d49c:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d4a0:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d4a8:	45 85 d2                                        	test   %r10d,%r10d
   2d4ab:	75 01                                           	jne    2d4ae <.check_store_add_1_RAX>

000000000002d4ad <.return_store_add_1_RAX>:
.return_store_add_1_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d4ad:	c3                                              	ret

000000000002d4ae <.check_store_add_1_RAX>:
.check_store_add_1_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d4ae:	49 89 c3                                        	mov    %rax,%r11
   2d4b1:	41 83 e3 07                                     	and    $0x7,%r11d
   2d4b5:	45 39 d3                                        	cmp    %r10d,%r11d
   2d4b8:	7c f3                                           	jl     2d4ad <.return_store_add_1_RAX>
   2d4ba:	48 89 c7                                        	mov    %rax,%rdi
   2d4bd:	e9 86 ff ff ff                                  	jmp    2d448 <__asan_report_store1_asm>

000000000002d4c2 <__asan_check_load_add_2_RAX>:
__asan_check_load_add_2_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d4c2:	49 89 c2                                        	mov    %rax,%r10
   2d4c5:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d4c9:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d4d1:	45 85 d2                                        	test   %r10d,%r10d
   2d4d4:	75 01                                           	jne    2d4d7 <.check_load_add_2_RAX>

000000000002d4d6 <.return_load_add_2_RAX>:
.return_load_add_2_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d4d6:	c3                                              	ret

000000000002d4d7 <.check_load_add_2_RAX>:
.check_load_add_2_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d4d7:	49 89 c3                                        	mov    %rax,%r11
   2d4da:	41 83 e3 07                                     	and    $0x7,%r11d
   2d4de:	41 83 c3 01                                     	add    $0x1,%r11d
   2d4e2:	45 39 d3                                        	cmp    %r10d,%r11d
   2d4e5:	7c ef                                           	jl     2d4d6 <.return_load_add_2_RAX>
   2d4e7:	48 89 c7                                        	mov    %rax,%rdi
   2d4ea:	e9 39 ff ff ff                                  	jmp    2d428 <__asan_report_load2_asm>

000000000002d4ef <__asan_check_store_add_2_RAX>:
__asan_check_store_add_2_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d4ef:	49 89 c2                                        	mov    %rax,%r10
   2d4f2:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d4f6:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d4fe:	45 85 d2                                        	test   %r10d,%r10d
   2d501:	75 01                                           	jne    2d504 <.check_store_add_2_RAX>

000000000002d503 <.return_store_add_2_RAX>:
.return_store_add_2_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d503:	c3                                              	ret

000000000002d504 <.check_store_add_2_RAX>:
.check_store_add_2_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d504:	49 89 c3                                        	mov    %rax,%r11
   2d507:	41 83 e3 07                                     	and    $0x7,%r11d
   2d50b:	41 83 c3 01                                     	add    $0x1,%r11d
   2d50f:	45 39 d3                                        	cmp    %r10d,%r11d
   2d512:	7c ef                                           	jl     2d503 <.return_store_add_2_RAX>
   2d514:	48 89 c7                                        	mov    %rax,%rdi
   2d517:	e9 34 ff ff ff                                  	jmp    2d450 <__asan_report_store2_asm>

000000000002d51c <__asan_check_load_add_4_RAX>:
__asan_check_load_add_4_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d51c:	49 89 c2                                        	mov    %rax,%r10
   2d51f:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d523:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d52b:	45 85 d2                                        	test   %r10d,%r10d
   2d52e:	75 01                                           	jne    2d531 <.check_load_add_4_RAX>

000000000002d530 <.return_load_add_4_RAX>:
.return_load_add_4_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d530:	c3                                              	ret

000000000002d531 <.check_load_add_4_RAX>:
.check_load_add_4_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d531:	49 89 c3                                        	mov    %rax,%r11
   2d534:	41 83 e3 07                                     	and    $0x7,%r11d
   2d538:	41 83 c3 03                                     	add    $0x3,%r11d
   2d53c:	45 39 d3                                        	cmp    %r10d,%r11d
   2d53f:	7c ef                                           	jl     2d530 <.return_load_add_4_RAX>
   2d541:	48 89 c7                                        	mov    %rax,%rdi
   2d544:	e9 e7 fe ff ff                                  	jmp    2d430 <__asan_report_load4_asm>

000000000002d549 <__asan_check_store_add_4_RAX>:
__asan_check_store_add_4_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d549:	49 89 c2                                        	mov    %rax,%r10
   2d54c:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d550:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d558:	45 85 d2                                        	test   %r10d,%r10d
   2d55b:	75 01                                           	jne    2d55e <.check_store_add_4_RAX>

000000000002d55d <.return_store_add_4_RAX>:
.return_store_add_4_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d55d:	c3                                              	ret

000000000002d55e <.check_store_add_4_RAX>:
.check_store_add_4_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d55e:	49 89 c3                                        	mov    %rax,%r11
   2d561:	41 83 e3 07                                     	and    $0x7,%r11d
   2d565:	41 83 c3 03                                     	add    $0x3,%r11d
   2d569:	45 39 d3                                        	cmp    %r10d,%r11d
   2d56c:	7c ef                                           	jl     2d55d <.return_store_add_4_RAX>
   2d56e:	48 89 c7                                        	mov    %rax,%rdi
   2d571:	e9 e2 fe ff ff                                  	jmp    2d458 <__asan_report_store4_asm>

000000000002d576 <__asan_check_load_add_8_RAX>:
__asan_check_load_add_8_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d576:	49 89 c2                                        	mov    %rax,%r10
   2d579:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d57d:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2d585:	75 01                                           	jne    2d588 <.fail_load_add_8_RAX>
   2d587:	c3                                              	ret

000000000002d588 <.fail_load_add_8_RAX>:
.fail_load_add_8_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d588:	48 89 c7                                        	mov    %rax,%rdi
   2d58b:	e9 a8 fe ff ff                                  	jmp    2d438 <__asan_report_load8_asm>

000000000002d590 <__asan_check_store_add_8_RAX>:
__asan_check_store_add_8_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d590:	49 89 c2                                        	mov    %rax,%r10
   2d593:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d597:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2d59f:	75 01                                           	jne    2d5a2 <.fail_store_add_8_RAX>
   2d5a1:	c3                                              	ret

000000000002d5a2 <.fail_store_add_8_RAX>:
.fail_store_add_8_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d5a2:	48 89 c7                                        	mov    %rax,%rdi
   2d5a5:	e9 b6 fe ff ff                                  	jmp    2d460 <__asan_report_store8_asm>

000000000002d5aa <__asan_check_load_add_16_RAX>:
__asan_check_load_add_16_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d5aa:	49 89 c2                                        	mov    %rax,%r10
   2d5ad:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d5b1:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2d5ba:	75 01                                           	jne    2d5bd <.fail_load_add_16_RAX>
   2d5bc:	c3                                              	ret

000000000002d5bd <.fail_load_add_16_RAX>:
.fail_load_add_16_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d5bd:	48 89 c7                                        	mov    %rax,%rdi
   2d5c0:	e9 7b fe ff ff                                  	jmp    2d440 <__asan_report_load16_asm>

000000000002d5c5 <__asan_check_store_add_16_RAX>:
__asan_check_store_add_16_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d5c5:	49 89 c2                                        	mov    %rax,%r10
   2d5c8:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d5cc:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2d5d5:	75 01                                           	jne    2d5d8 <.fail_store_add_16_RAX>
   2d5d7:	c3                                              	ret

000000000002d5d8 <.fail_store_add_16_RAX>:
.fail_store_add_16_RAX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:135
   2d5d8:	48 89 c7                                        	mov    %rax,%rdi
   2d5db:	e9 88 fe ff ff                                  	jmp    2d468 <__asan_report_store16_asm>

000000000002d5e0 <__asan_check_load_add_1_RBX>:
__asan_check_load_add_1_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d5e0:	49 89 da                                        	mov    %rbx,%r10
   2d5e3:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d5e7:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d5ef:	45 85 d2                                        	test   %r10d,%r10d
   2d5f2:	75 01                                           	jne    2d5f5 <.check_load_add_1_RBX>

000000000002d5f4 <.return_load_add_1_RBX>:
.return_load_add_1_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d5f4:	c3                                              	ret

000000000002d5f5 <.check_load_add_1_RBX>:
.check_load_add_1_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d5f5:	49 89 db                                        	mov    %rbx,%r11
   2d5f8:	41 83 e3 07                                     	and    $0x7,%r11d
   2d5fc:	45 39 d3                                        	cmp    %r10d,%r11d
   2d5ff:	7c f3                                           	jl     2d5f4 <.return_load_add_1_RBX>
   2d601:	48 89 df                                        	mov    %rbx,%rdi
   2d604:	e9 17 fe ff ff                                  	jmp    2d420 <__asan_report_load1_asm>

000000000002d609 <__asan_check_store_add_1_RBX>:
__asan_check_store_add_1_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d609:	49 89 da                                        	mov    %rbx,%r10
   2d60c:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d610:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d618:	45 85 d2                                        	test   %r10d,%r10d
   2d61b:	75 01                                           	jne    2d61e <.check_store_add_1_RBX>

000000000002d61d <.return_store_add_1_RBX>:
.return_store_add_1_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d61d:	c3                                              	ret

000000000002d61e <.check_store_add_1_RBX>:
.check_store_add_1_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d61e:	49 89 db                                        	mov    %rbx,%r11
   2d621:	41 83 e3 07                                     	and    $0x7,%r11d
   2d625:	45 39 d3                                        	cmp    %r10d,%r11d
   2d628:	7c f3                                           	jl     2d61d <.return_store_add_1_RBX>
   2d62a:	48 89 df                                        	mov    %rbx,%rdi
   2d62d:	e9 16 fe ff ff                                  	jmp    2d448 <__asan_report_store1_asm>

000000000002d632 <__asan_check_load_add_2_RBX>:
__asan_check_load_add_2_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d632:	49 89 da                                        	mov    %rbx,%r10
   2d635:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d639:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d641:	45 85 d2                                        	test   %r10d,%r10d
   2d644:	75 01                                           	jne    2d647 <.check_load_add_2_RBX>

000000000002d646 <.return_load_add_2_RBX>:
.return_load_add_2_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d646:	c3                                              	ret

000000000002d647 <.check_load_add_2_RBX>:
.check_load_add_2_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d647:	49 89 db                                        	mov    %rbx,%r11
   2d64a:	41 83 e3 07                                     	and    $0x7,%r11d
   2d64e:	41 83 c3 01                                     	add    $0x1,%r11d
   2d652:	45 39 d3                                        	cmp    %r10d,%r11d
   2d655:	7c ef                                           	jl     2d646 <.return_load_add_2_RBX>
   2d657:	48 89 df                                        	mov    %rbx,%rdi
   2d65a:	e9 c9 fd ff ff                                  	jmp    2d428 <__asan_report_load2_asm>

000000000002d65f <__asan_check_store_add_2_RBX>:
__asan_check_store_add_2_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d65f:	49 89 da                                        	mov    %rbx,%r10
   2d662:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d666:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d66e:	45 85 d2                                        	test   %r10d,%r10d
   2d671:	75 01                                           	jne    2d674 <.check_store_add_2_RBX>

000000000002d673 <.return_store_add_2_RBX>:
.return_store_add_2_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d673:	c3                                              	ret

000000000002d674 <.check_store_add_2_RBX>:
.check_store_add_2_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d674:	49 89 db                                        	mov    %rbx,%r11
   2d677:	41 83 e3 07                                     	and    $0x7,%r11d
   2d67b:	41 83 c3 01                                     	add    $0x1,%r11d
   2d67f:	45 39 d3                                        	cmp    %r10d,%r11d
   2d682:	7c ef                                           	jl     2d673 <.return_store_add_2_RBX>
   2d684:	48 89 df                                        	mov    %rbx,%rdi
   2d687:	e9 c4 fd ff ff                                  	jmp    2d450 <__asan_report_store2_asm>

000000000002d68c <__asan_check_load_add_4_RBX>:
__asan_check_load_add_4_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d68c:	49 89 da                                        	mov    %rbx,%r10
   2d68f:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d693:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d69b:	45 85 d2                                        	test   %r10d,%r10d
   2d69e:	75 01                                           	jne    2d6a1 <.check_load_add_4_RBX>

000000000002d6a0 <.return_load_add_4_RBX>:
.return_load_add_4_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d6a0:	c3                                              	ret

000000000002d6a1 <.check_load_add_4_RBX>:
.check_load_add_4_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d6a1:	49 89 db                                        	mov    %rbx,%r11
   2d6a4:	41 83 e3 07                                     	and    $0x7,%r11d
   2d6a8:	41 83 c3 03                                     	add    $0x3,%r11d
   2d6ac:	45 39 d3                                        	cmp    %r10d,%r11d
   2d6af:	7c ef                                           	jl     2d6a0 <.return_load_add_4_RBX>
   2d6b1:	48 89 df                                        	mov    %rbx,%rdi
   2d6b4:	e9 77 fd ff ff                                  	jmp    2d430 <__asan_report_load4_asm>

000000000002d6b9 <__asan_check_store_add_4_RBX>:
__asan_check_store_add_4_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d6b9:	49 89 da                                        	mov    %rbx,%r10
   2d6bc:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d6c0:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d6c8:	45 85 d2                                        	test   %r10d,%r10d
   2d6cb:	75 01                                           	jne    2d6ce <.check_store_add_4_RBX>

000000000002d6cd <.return_store_add_4_RBX>:
.return_store_add_4_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d6cd:	c3                                              	ret

000000000002d6ce <.check_store_add_4_RBX>:
.check_store_add_4_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d6ce:	49 89 db                                        	mov    %rbx,%r11
   2d6d1:	41 83 e3 07                                     	and    $0x7,%r11d
   2d6d5:	41 83 c3 03                                     	add    $0x3,%r11d
   2d6d9:	45 39 d3                                        	cmp    %r10d,%r11d
   2d6dc:	7c ef                                           	jl     2d6cd <.return_store_add_4_RBX>
   2d6de:	48 89 df                                        	mov    %rbx,%rdi
   2d6e1:	e9 72 fd ff ff                                  	jmp    2d458 <__asan_report_store4_asm>

000000000002d6e6 <__asan_check_load_add_8_RBX>:
__asan_check_load_add_8_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d6e6:	49 89 da                                        	mov    %rbx,%r10
   2d6e9:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d6ed:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2d6f5:	75 01                                           	jne    2d6f8 <.fail_load_add_8_RBX>
   2d6f7:	c3                                              	ret

000000000002d6f8 <.fail_load_add_8_RBX>:
.fail_load_add_8_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d6f8:	48 89 df                                        	mov    %rbx,%rdi
   2d6fb:	e9 38 fd ff ff                                  	jmp    2d438 <__asan_report_load8_asm>

000000000002d700 <__asan_check_store_add_8_RBX>:
__asan_check_store_add_8_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d700:	49 89 da                                        	mov    %rbx,%r10
   2d703:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d707:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2d70f:	75 01                                           	jne    2d712 <.fail_store_add_8_RBX>
   2d711:	c3                                              	ret

000000000002d712 <.fail_store_add_8_RBX>:
.fail_store_add_8_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d712:	48 89 df                                        	mov    %rbx,%rdi
   2d715:	e9 46 fd ff ff                                  	jmp    2d460 <__asan_report_store8_asm>

000000000002d71a <__asan_check_load_add_16_RBX>:
__asan_check_load_add_16_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d71a:	49 89 da                                        	mov    %rbx,%r10
   2d71d:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d721:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2d72a:	75 01                                           	jne    2d72d <.fail_load_add_16_RBX>
   2d72c:	c3                                              	ret

000000000002d72d <.fail_load_add_16_RBX>:
.fail_load_add_16_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d72d:	48 89 df                                        	mov    %rbx,%rdi
   2d730:	e9 0b fd ff ff                                  	jmp    2d440 <__asan_report_load16_asm>

000000000002d735 <__asan_check_store_add_16_RBX>:
__asan_check_store_add_16_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d735:	49 89 da                                        	mov    %rbx,%r10
   2d738:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d73c:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2d745:	75 01                                           	jne    2d748 <.fail_store_add_16_RBX>
   2d747:	c3                                              	ret

000000000002d748 <.fail_store_add_16_RBX>:
.fail_store_add_16_RBX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:136
   2d748:	48 89 df                                        	mov    %rbx,%rdi
   2d74b:	e9 18 fd ff ff                                  	jmp    2d468 <__asan_report_store16_asm>

000000000002d750 <__asan_check_load_add_1_RCX>:
__asan_check_load_add_1_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d750:	49 89 ca                                        	mov    %rcx,%r10
   2d753:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d757:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d75f:	45 85 d2                                        	test   %r10d,%r10d
   2d762:	75 01                                           	jne    2d765 <.check_load_add_1_RCX>

000000000002d764 <.return_load_add_1_RCX>:
.return_load_add_1_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d764:	c3                                              	ret

000000000002d765 <.check_load_add_1_RCX>:
.check_load_add_1_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d765:	49 89 cb                                        	mov    %rcx,%r11
   2d768:	41 83 e3 07                                     	and    $0x7,%r11d
   2d76c:	45 39 d3                                        	cmp    %r10d,%r11d
   2d76f:	7c f3                                           	jl     2d764 <.return_load_add_1_RCX>
   2d771:	48 89 cf                                        	mov    %rcx,%rdi
   2d774:	e9 a7 fc ff ff                                  	jmp    2d420 <__asan_report_load1_asm>

000000000002d779 <__asan_check_store_add_1_RCX>:
__asan_check_store_add_1_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d779:	49 89 ca                                        	mov    %rcx,%r10
   2d77c:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d780:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d788:	45 85 d2                                        	test   %r10d,%r10d
   2d78b:	75 01                                           	jne    2d78e <.check_store_add_1_RCX>

000000000002d78d <.return_store_add_1_RCX>:
.return_store_add_1_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d78d:	c3                                              	ret

000000000002d78e <.check_store_add_1_RCX>:
.check_store_add_1_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d78e:	49 89 cb                                        	mov    %rcx,%r11
   2d791:	41 83 e3 07                                     	and    $0x7,%r11d
   2d795:	45 39 d3                                        	cmp    %r10d,%r11d
   2d798:	7c f3                                           	jl     2d78d <.return_store_add_1_RCX>
   2d79a:	48 89 cf                                        	mov    %rcx,%rdi
   2d79d:	e9 a6 fc ff ff                                  	jmp    2d448 <__asan_report_store1_asm>

000000000002d7a2 <__asan_check_load_add_2_RCX>:
__asan_check_load_add_2_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d7a2:	49 89 ca                                        	mov    %rcx,%r10
   2d7a5:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d7a9:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d7b1:	45 85 d2                                        	test   %r10d,%r10d
   2d7b4:	75 01                                           	jne    2d7b7 <.check_load_add_2_RCX>

000000000002d7b6 <.return_load_add_2_RCX>:
.return_load_add_2_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d7b6:	c3                                              	ret

000000000002d7b7 <.check_load_add_2_RCX>:
.check_load_add_2_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d7b7:	49 89 cb                                        	mov    %rcx,%r11
   2d7ba:	41 83 e3 07                                     	and    $0x7,%r11d
   2d7be:	41 83 c3 01                                     	add    $0x1,%r11d
   2d7c2:	45 39 d3                                        	cmp    %r10d,%r11d
   2d7c5:	7c ef                                           	jl     2d7b6 <.return_load_add_2_RCX>
   2d7c7:	48 89 cf                                        	mov    %rcx,%rdi
   2d7ca:	e9 59 fc ff ff                                  	jmp    2d428 <__asan_report_load2_asm>

000000000002d7cf <__asan_check_store_add_2_RCX>:
__asan_check_store_add_2_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d7cf:	49 89 ca                                        	mov    %rcx,%r10
   2d7d2:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d7d6:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d7de:	45 85 d2                                        	test   %r10d,%r10d
   2d7e1:	75 01                                           	jne    2d7e4 <.check_store_add_2_RCX>

000000000002d7e3 <.return_store_add_2_RCX>:
.return_store_add_2_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d7e3:	c3                                              	ret

000000000002d7e4 <.check_store_add_2_RCX>:
.check_store_add_2_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d7e4:	49 89 cb                                        	mov    %rcx,%r11
   2d7e7:	41 83 e3 07                                     	and    $0x7,%r11d
   2d7eb:	41 83 c3 01                                     	add    $0x1,%r11d
   2d7ef:	45 39 d3                                        	cmp    %r10d,%r11d
   2d7f2:	7c ef                                           	jl     2d7e3 <.return_store_add_2_RCX>
   2d7f4:	48 89 cf                                        	mov    %rcx,%rdi
   2d7f7:	e9 54 fc ff ff                                  	jmp    2d450 <__asan_report_store2_asm>

000000000002d7fc <__asan_check_load_add_4_RCX>:
__asan_check_load_add_4_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d7fc:	49 89 ca                                        	mov    %rcx,%r10
   2d7ff:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d803:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d80b:	45 85 d2                                        	test   %r10d,%r10d
   2d80e:	75 01                                           	jne    2d811 <.check_load_add_4_RCX>

000000000002d810 <.return_load_add_4_RCX>:
.return_load_add_4_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d810:	c3                                              	ret

000000000002d811 <.check_load_add_4_RCX>:
.check_load_add_4_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d811:	49 89 cb                                        	mov    %rcx,%r11
   2d814:	41 83 e3 07                                     	and    $0x7,%r11d
   2d818:	41 83 c3 03                                     	add    $0x3,%r11d
   2d81c:	45 39 d3                                        	cmp    %r10d,%r11d
   2d81f:	7c ef                                           	jl     2d810 <.return_load_add_4_RCX>
   2d821:	48 89 cf                                        	mov    %rcx,%rdi
   2d824:	e9 07 fc ff ff                                  	jmp    2d430 <__asan_report_load4_asm>

000000000002d829 <__asan_check_store_add_4_RCX>:
__asan_check_store_add_4_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d829:	49 89 ca                                        	mov    %rcx,%r10
   2d82c:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d830:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d838:	45 85 d2                                        	test   %r10d,%r10d
   2d83b:	75 01                                           	jne    2d83e <.check_store_add_4_RCX>

000000000002d83d <.return_store_add_4_RCX>:
.return_store_add_4_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d83d:	c3                                              	ret

000000000002d83e <.check_store_add_4_RCX>:
.check_store_add_4_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d83e:	49 89 cb                                        	mov    %rcx,%r11
   2d841:	41 83 e3 07                                     	and    $0x7,%r11d
   2d845:	41 83 c3 03                                     	add    $0x3,%r11d
   2d849:	45 39 d3                                        	cmp    %r10d,%r11d
   2d84c:	7c ef                                           	jl     2d83d <.return_store_add_4_RCX>
   2d84e:	48 89 cf                                        	mov    %rcx,%rdi
   2d851:	e9 02 fc ff ff                                  	jmp    2d458 <__asan_report_store4_asm>

000000000002d856 <__asan_check_load_add_8_RCX>:
__asan_check_load_add_8_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d856:	49 89 ca                                        	mov    %rcx,%r10
   2d859:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d85d:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2d865:	75 01                                           	jne    2d868 <.fail_load_add_8_RCX>
   2d867:	c3                                              	ret

000000000002d868 <.fail_load_add_8_RCX>:
.fail_load_add_8_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d868:	48 89 cf                                        	mov    %rcx,%rdi
   2d86b:	e9 c8 fb ff ff                                  	jmp    2d438 <__asan_report_load8_asm>

000000000002d870 <__asan_check_store_add_8_RCX>:
__asan_check_store_add_8_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d870:	49 89 ca                                        	mov    %rcx,%r10
   2d873:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d877:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2d87f:	75 01                                           	jne    2d882 <.fail_store_add_8_RCX>
   2d881:	c3                                              	ret

000000000002d882 <.fail_store_add_8_RCX>:
.fail_store_add_8_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d882:	48 89 cf                                        	mov    %rcx,%rdi
   2d885:	e9 d6 fb ff ff                                  	jmp    2d460 <__asan_report_store8_asm>

000000000002d88a <__asan_check_load_add_16_RCX>:
__asan_check_load_add_16_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d88a:	49 89 ca                                        	mov    %rcx,%r10
   2d88d:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d891:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2d89a:	75 01                                           	jne    2d89d <.fail_load_add_16_RCX>
   2d89c:	c3                                              	ret

000000000002d89d <.fail_load_add_16_RCX>:
.fail_load_add_16_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d89d:	48 89 cf                                        	mov    %rcx,%rdi
   2d8a0:	e9 9b fb ff ff                                  	jmp    2d440 <__asan_report_load16_asm>

000000000002d8a5 <__asan_check_store_add_16_RCX>:
__asan_check_store_add_16_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d8a5:	49 89 ca                                        	mov    %rcx,%r10
   2d8a8:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d8ac:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2d8b5:	75 01                                           	jne    2d8b8 <.fail_store_add_16_RCX>
   2d8b7:	c3                                              	ret

000000000002d8b8 <.fail_store_add_16_RCX>:
.fail_store_add_16_RCX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:137
   2d8b8:	48 89 cf                                        	mov    %rcx,%rdi
   2d8bb:	e9 a8 fb ff ff                                  	jmp    2d468 <__asan_report_store16_asm>

000000000002d8c0 <__asan_check_load_add_1_RDX>:
__asan_check_load_add_1_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d8c0:	49 89 d2                                        	mov    %rdx,%r10
   2d8c3:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d8c7:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d8cf:	45 85 d2                                        	test   %r10d,%r10d
   2d8d2:	75 01                                           	jne    2d8d5 <.check_load_add_1_RDX>

000000000002d8d4 <.return_load_add_1_RDX>:
.return_load_add_1_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d8d4:	c3                                              	ret

000000000002d8d5 <.check_load_add_1_RDX>:
.check_load_add_1_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d8d5:	49 89 d3                                        	mov    %rdx,%r11
   2d8d8:	41 83 e3 07                                     	and    $0x7,%r11d
   2d8dc:	45 39 d3                                        	cmp    %r10d,%r11d
   2d8df:	7c f3                                           	jl     2d8d4 <.return_load_add_1_RDX>
   2d8e1:	48 89 d7                                        	mov    %rdx,%rdi
   2d8e4:	e9 37 fb ff ff                                  	jmp    2d420 <__asan_report_load1_asm>

000000000002d8e9 <__asan_check_store_add_1_RDX>:
__asan_check_store_add_1_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d8e9:	49 89 d2                                        	mov    %rdx,%r10
   2d8ec:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d8f0:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d8f8:	45 85 d2                                        	test   %r10d,%r10d
   2d8fb:	75 01                                           	jne    2d8fe <.check_store_add_1_RDX>

000000000002d8fd <.return_store_add_1_RDX>:
.return_store_add_1_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d8fd:	c3                                              	ret

000000000002d8fe <.check_store_add_1_RDX>:
.check_store_add_1_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d8fe:	49 89 d3                                        	mov    %rdx,%r11
   2d901:	41 83 e3 07                                     	and    $0x7,%r11d
   2d905:	45 39 d3                                        	cmp    %r10d,%r11d
   2d908:	7c f3                                           	jl     2d8fd <.return_store_add_1_RDX>
   2d90a:	48 89 d7                                        	mov    %rdx,%rdi
   2d90d:	e9 36 fb ff ff                                  	jmp    2d448 <__asan_report_store1_asm>

000000000002d912 <__asan_check_load_add_2_RDX>:
__asan_check_load_add_2_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d912:	49 89 d2                                        	mov    %rdx,%r10
   2d915:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d919:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d921:	45 85 d2                                        	test   %r10d,%r10d
   2d924:	75 01                                           	jne    2d927 <.check_load_add_2_RDX>

000000000002d926 <.return_load_add_2_RDX>:
.return_load_add_2_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d926:	c3                                              	ret

000000000002d927 <.check_load_add_2_RDX>:
.check_load_add_2_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d927:	49 89 d3                                        	mov    %rdx,%r11
   2d92a:	41 83 e3 07                                     	and    $0x7,%r11d
   2d92e:	41 83 c3 01                                     	add    $0x1,%r11d
   2d932:	45 39 d3                                        	cmp    %r10d,%r11d
   2d935:	7c ef                                           	jl     2d926 <.return_load_add_2_RDX>
   2d937:	48 89 d7                                        	mov    %rdx,%rdi
   2d93a:	e9 e9 fa ff ff                                  	jmp    2d428 <__asan_report_load2_asm>

000000000002d93f <__asan_check_store_add_2_RDX>:
__asan_check_store_add_2_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d93f:	49 89 d2                                        	mov    %rdx,%r10
   2d942:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d946:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d94e:	45 85 d2                                        	test   %r10d,%r10d
   2d951:	75 01                                           	jne    2d954 <.check_store_add_2_RDX>

000000000002d953 <.return_store_add_2_RDX>:
.return_store_add_2_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d953:	c3                                              	ret

000000000002d954 <.check_store_add_2_RDX>:
.check_store_add_2_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d954:	49 89 d3                                        	mov    %rdx,%r11
   2d957:	41 83 e3 07                                     	and    $0x7,%r11d
   2d95b:	41 83 c3 01                                     	add    $0x1,%r11d
   2d95f:	45 39 d3                                        	cmp    %r10d,%r11d
   2d962:	7c ef                                           	jl     2d953 <.return_store_add_2_RDX>
   2d964:	48 89 d7                                        	mov    %rdx,%rdi
   2d967:	e9 e4 fa ff ff                                  	jmp    2d450 <__asan_report_store2_asm>

000000000002d96c <__asan_check_load_add_4_RDX>:
__asan_check_load_add_4_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d96c:	49 89 d2                                        	mov    %rdx,%r10
   2d96f:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d973:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d97b:	45 85 d2                                        	test   %r10d,%r10d
   2d97e:	75 01                                           	jne    2d981 <.check_load_add_4_RDX>

000000000002d980 <.return_load_add_4_RDX>:
.return_load_add_4_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d980:	c3                                              	ret

000000000002d981 <.check_load_add_4_RDX>:
.check_load_add_4_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d981:	49 89 d3                                        	mov    %rdx,%r11
   2d984:	41 83 e3 07                                     	and    $0x7,%r11d
   2d988:	41 83 c3 03                                     	add    $0x3,%r11d
   2d98c:	45 39 d3                                        	cmp    %r10d,%r11d
   2d98f:	7c ef                                           	jl     2d980 <.return_load_add_4_RDX>
   2d991:	48 89 d7                                        	mov    %rdx,%rdi
   2d994:	e9 97 fa ff ff                                  	jmp    2d430 <__asan_report_load4_asm>

000000000002d999 <__asan_check_store_add_4_RDX>:
__asan_check_store_add_4_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d999:	49 89 d2                                        	mov    %rdx,%r10
   2d99c:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d9a0:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2d9a8:	45 85 d2                                        	test   %r10d,%r10d
   2d9ab:	75 01                                           	jne    2d9ae <.check_store_add_4_RDX>

000000000002d9ad <.return_store_add_4_RDX>:
.return_store_add_4_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d9ad:	c3                                              	ret

000000000002d9ae <.check_store_add_4_RDX>:
.check_store_add_4_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d9ae:	49 89 d3                                        	mov    %rdx,%r11
   2d9b1:	41 83 e3 07                                     	and    $0x7,%r11d
   2d9b5:	41 83 c3 03                                     	add    $0x3,%r11d
   2d9b9:	45 39 d3                                        	cmp    %r10d,%r11d
   2d9bc:	7c ef                                           	jl     2d9ad <.return_store_add_4_RDX>
   2d9be:	48 89 d7                                        	mov    %rdx,%rdi
   2d9c1:	e9 92 fa ff ff                                  	jmp    2d458 <__asan_report_store4_asm>

000000000002d9c6 <__asan_check_load_add_8_RDX>:
__asan_check_load_add_8_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d9c6:	49 89 d2                                        	mov    %rdx,%r10
   2d9c9:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d9cd:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2d9d5:	75 01                                           	jne    2d9d8 <.fail_load_add_8_RDX>
   2d9d7:	c3                                              	ret

000000000002d9d8 <.fail_load_add_8_RDX>:
.fail_load_add_8_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d9d8:	48 89 d7                                        	mov    %rdx,%rdi
   2d9db:	e9 58 fa ff ff                                  	jmp    2d438 <__asan_report_load8_asm>

000000000002d9e0 <__asan_check_store_add_8_RDX>:
__asan_check_store_add_8_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d9e0:	49 89 d2                                        	mov    %rdx,%r10
   2d9e3:	49 c1 ea 03                                     	shr    $0x3,%r10
   2d9e7:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2d9ef:	75 01                                           	jne    2d9f2 <.fail_store_add_8_RDX>
   2d9f1:	c3                                              	ret

000000000002d9f2 <.fail_store_add_8_RDX>:
.fail_store_add_8_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d9f2:	48 89 d7                                        	mov    %rdx,%rdi
   2d9f5:	e9 66 fa ff ff                                  	jmp    2d460 <__asan_report_store8_asm>

000000000002d9fa <__asan_check_load_add_16_RDX>:
__asan_check_load_add_16_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2d9fa:	49 89 d2                                        	mov    %rdx,%r10
   2d9fd:	49 c1 ea 03                                     	shr    $0x3,%r10
   2da01:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2da0a:	75 01                                           	jne    2da0d <.fail_load_add_16_RDX>
   2da0c:	c3                                              	ret

000000000002da0d <.fail_load_add_16_RDX>:
.fail_load_add_16_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2da0d:	48 89 d7                                        	mov    %rdx,%rdi
   2da10:	e9 2b fa ff ff                                  	jmp    2d440 <__asan_report_load16_asm>

000000000002da15 <__asan_check_store_add_16_RDX>:
__asan_check_store_add_16_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2da15:	49 89 d2                                        	mov    %rdx,%r10
   2da18:	49 c1 ea 03                                     	shr    $0x3,%r10
   2da1c:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2da25:	75 01                                           	jne    2da28 <.fail_store_add_16_RDX>
   2da27:	c3                                              	ret

000000000002da28 <.fail_store_add_16_RDX>:
.fail_store_add_16_RDX():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:138
   2da28:	48 89 d7                                        	mov    %rdx,%rdi
   2da2b:	e9 38 fa ff ff                                  	jmp    2d468 <__asan_report_store16_asm>

000000000002da30 <__asan_check_load_add_1_RSI>:
__asan_check_load_add_1_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2da30:	49 89 f2                                        	mov    %rsi,%r10
   2da33:	49 c1 ea 03                                     	shr    $0x3,%r10
   2da37:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2da3f:	45 85 d2                                        	test   %r10d,%r10d
   2da42:	75 01                                           	jne    2da45 <.check_load_add_1_RSI>

000000000002da44 <.return_load_add_1_RSI>:
.return_load_add_1_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2da44:	c3                                              	ret

000000000002da45 <.check_load_add_1_RSI>:
.check_load_add_1_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2da45:	49 89 f3                                        	mov    %rsi,%r11
   2da48:	41 83 e3 07                                     	and    $0x7,%r11d
   2da4c:	45 39 d3                                        	cmp    %r10d,%r11d
   2da4f:	7c f3                                           	jl     2da44 <.return_load_add_1_RSI>
   2da51:	48 89 f7                                        	mov    %rsi,%rdi
   2da54:	e9 c7 f9 ff ff                                  	jmp    2d420 <__asan_report_load1_asm>

000000000002da59 <__asan_check_store_add_1_RSI>:
__asan_check_store_add_1_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2da59:	49 89 f2                                        	mov    %rsi,%r10
   2da5c:	49 c1 ea 03                                     	shr    $0x3,%r10
   2da60:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2da68:	45 85 d2                                        	test   %r10d,%r10d
   2da6b:	75 01                                           	jne    2da6e <.check_store_add_1_RSI>

000000000002da6d <.return_store_add_1_RSI>:
.return_store_add_1_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2da6d:	c3                                              	ret

000000000002da6e <.check_store_add_1_RSI>:
.check_store_add_1_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2da6e:	49 89 f3                                        	mov    %rsi,%r11
   2da71:	41 83 e3 07                                     	and    $0x7,%r11d
   2da75:	45 39 d3                                        	cmp    %r10d,%r11d
   2da78:	7c f3                                           	jl     2da6d <.return_store_add_1_RSI>
   2da7a:	48 89 f7                                        	mov    %rsi,%rdi
   2da7d:	e9 c6 f9 ff ff                                  	jmp    2d448 <__asan_report_store1_asm>

000000000002da82 <__asan_check_load_add_2_RSI>:
__asan_check_load_add_2_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2da82:	49 89 f2                                        	mov    %rsi,%r10
   2da85:	49 c1 ea 03                                     	shr    $0x3,%r10
   2da89:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2da91:	45 85 d2                                        	test   %r10d,%r10d
   2da94:	75 01                                           	jne    2da97 <.check_load_add_2_RSI>

000000000002da96 <.return_load_add_2_RSI>:
.return_load_add_2_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2da96:	c3                                              	ret

000000000002da97 <.check_load_add_2_RSI>:
.check_load_add_2_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2da97:	49 89 f3                                        	mov    %rsi,%r11
   2da9a:	41 83 e3 07                                     	and    $0x7,%r11d
   2da9e:	41 83 c3 01                                     	add    $0x1,%r11d
   2daa2:	45 39 d3                                        	cmp    %r10d,%r11d
   2daa5:	7c ef                                           	jl     2da96 <.return_load_add_2_RSI>
   2daa7:	48 89 f7                                        	mov    %rsi,%rdi
   2daaa:	e9 79 f9 ff ff                                  	jmp    2d428 <__asan_report_load2_asm>

000000000002daaf <__asan_check_store_add_2_RSI>:
__asan_check_store_add_2_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2daaf:	49 89 f2                                        	mov    %rsi,%r10
   2dab2:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dab6:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2dabe:	45 85 d2                                        	test   %r10d,%r10d
   2dac1:	75 01                                           	jne    2dac4 <.check_store_add_2_RSI>

000000000002dac3 <.return_store_add_2_RSI>:
.return_store_add_2_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2dac3:	c3                                              	ret

000000000002dac4 <.check_store_add_2_RSI>:
.check_store_add_2_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2dac4:	49 89 f3                                        	mov    %rsi,%r11
   2dac7:	41 83 e3 07                                     	and    $0x7,%r11d
   2dacb:	41 83 c3 01                                     	add    $0x1,%r11d
   2dacf:	45 39 d3                                        	cmp    %r10d,%r11d
   2dad2:	7c ef                                           	jl     2dac3 <.return_store_add_2_RSI>
   2dad4:	48 89 f7                                        	mov    %rsi,%rdi
   2dad7:	e9 74 f9 ff ff                                  	jmp    2d450 <__asan_report_store2_asm>

000000000002dadc <__asan_check_load_add_4_RSI>:
__asan_check_load_add_4_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2dadc:	49 89 f2                                        	mov    %rsi,%r10
   2dadf:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dae3:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2daeb:	45 85 d2                                        	test   %r10d,%r10d
   2daee:	75 01                                           	jne    2daf1 <.check_load_add_4_RSI>

000000000002daf0 <.return_load_add_4_RSI>:
.return_load_add_4_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2daf0:	c3                                              	ret

000000000002daf1 <.check_load_add_4_RSI>:
.check_load_add_4_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2daf1:	49 89 f3                                        	mov    %rsi,%r11
   2daf4:	41 83 e3 07                                     	and    $0x7,%r11d
   2daf8:	41 83 c3 03                                     	add    $0x3,%r11d
   2dafc:	45 39 d3                                        	cmp    %r10d,%r11d
   2daff:	7c ef                                           	jl     2daf0 <.return_load_add_4_RSI>
   2db01:	48 89 f7                                        	mov    %rsi,%rdi
   2db04:	e9 27 f9 ff ff                                  	jmp    2d430 <__asan_report_load4_asm>

000000000002db09 <__asan_check_store_add_4_RSI>:
__asan_check_store_add_4_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2db09:	49 89 f2                                        	mov    %rsi,%r10
   2db0c:	49 c1 ea 03                                     	shr    $0x3,%r10
   2db10:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2db18:	45 85 d2                                        	test   %r10d,%r10d
   2db1b:	75 01                                           	jne    2db1e <.check_store_add_4_RSI>

000000000002db1d <.return_store_add_4_RSI>:
.return_store_add_4_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2db1d:	c3                                              	ret

000000000002db1e <.check_store_add_4_RSI>:
.check_store_add_4_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2db1e:	49 89 f3                                        	mov    %rsi,%r11
   2db21:	41 83 e3 07                                     	and    $0x7,%r11d
   2db25:	41 83 c3 03                                     	add    $0x3,%r11d
   2db29:	45 39 d3                                        	cmp    %r10d,%r11d
   2db2c:	7c ef                                           	jl     2db1d <.return_store_add_4_RSI>
   2db2e:	48 89 f7                                        	mov    %rsi,%rdi
   2db31:	e9 22 f9 ff ff                                  	jmp    2d458 <__asan_report_store4_asm>

000000000002db36 <__asan_check_load_add_8_RSI>:
__asan_check_load_add_8_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2db36:	49 89 f2                                        	mov    %rsi,%r10
   2db39:	49 c1 ea 03                                     	shr    $0x3,%r10
   2db3d:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2db45:	75 01                                           	jne    2db48 <.fail_load_add_8_RSI>
   2db47:	c3                                              	ret

000000000002db48 <.fail_load_add_8_RSI>:
.fail_load_add_8_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2db48:	48 89 f7                                        	mov    %rsi,%rdi
   2db4b:	e9 e8 f8 ff ff                                  	jmp    2d438 <__asan_report_load8_asm>

000000000002db50 <__asan_check_store_add_8_RSI>:
__asan_check_store_add_8_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2db50:	49 89 f2                                        	mov    %rsi,%r10
   2db53:	49 c1 ea 03                                     	shr    $0x3,%r10
   2db57:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2db5f:	75 01                                           	jne    2db62 <.fail_store_add_8_RSI>
   2db61:	c3                                              	ret

000000000002db62 <.fail_store_add_8_RSI>:
.fail_store_add_8_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2db62:	48 89 f7                                        	mov    %rsi,%rdi
   2db65:	e9 f6 f8 ff ff                                  	jmp    2d460 <__asan_report_store8_asm>

000000000002db6a <__asan_check_load_add_16_RSI>:
__asan_check_load_add_16_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2db6a:	49 89 f2                                        	mov    %rsi,%r10
   2db6d:	49 c1 ea 03                                     	shr    $0x3,%r10
   2db71:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2db7a:	75 01                                           	jne    2db7d <.fail_load_add_16_RSI>
   2db7c:	c3                                              	ret

000000000002db7d <.fail_load_add_16_RSI>:
.fail_load_add_16_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2db7d:	48 89 f7                                        	mov    %rsi,%rdi
   2db80:	e9 bb f8 ff ff                                  	jmp    2d440 <__asan_report_load16_asm>

000000000002db85 <__asan_check_store_add_16_RSI>:
__asan_check_store_add_16_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2db85:	49 89 f2                                        	mov    %rsi,%r10
   2db88:	49 c1 ea 03                                     	shr    $0x3,%r10
   2db8c:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2db95:	75 01                                           	jne    2db98 <.fail_store_add_16_RSI>
   2db97:	c3                                              	ret

000000000002db98 <.fail_store_add_16_RSI>:
.fail_store_add_16_RSI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:139
   2db98:	48 89 f7                                        	mov    %rsi,%rdi
   2db9b:	e9 c8 f8 ff ff                                  	jmp    2d468 <__asan_report_store16_asm>

000000000002dba0 <__asan_check_load_add_1_RDI>:
__asan_check_load_add_1_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dba0:	49 89 fa                                        	mov    %rdi,%r10
   2dba3:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dba7:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2dbaf:	45 85 d2                                        	test   %r10d,%r10d
   2dbb2:	75 01                                           	jne    2dbb5 <.check_load_add_1_RDI>

000000000002dbb4 <.return_load_add_1_RDI>:
.return_load_add_1_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dbb4:	c3                                              	ret

000000000002dbb5 <.check_load_add_1_RDI>:
.check_load_add_1_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dbb5:	49 89 fb                                        	mov    %rdi,%r11
   2dbb8:	41 83 e3 07                                     	and    $0x7,%r11d
   2dbbc:	45 39 d3                                        	cmp    %r10d,%r11d
   2dbbf:	7c f3                                           	jl     2dbb4 <.return_load_add_1_RDI>
   2dbc1:	48 89 ff                                        	mov    %rdi,%rdi
   2dbc4:	e9 57 f8 ff ff                                  	jmp    2d420 <__asan_report_load1_asm>

000000000002dbc9 <__asan_check_store_add_1_RDI>:
__asan_check_store_add_1_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dbc9:	49 89 fa                                        	mov    %rdi,%r10
   2dbcc:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dbd0:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2dbd8:	45 85 d2                                        	test   %r10d,%r10d
   2dbdb:	75 01                                           	jne    2dbde <.check_store_add_1_RDI>

000000000002dbdd <.return_store_add_1_RDI>:
.return_store_add_1_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dbdd:	c3                                              	ret

000000000002dbde <.check_store_add_1_RDI>:
.check_store_add_1_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dbde:	49 89 fb                                        	mov    %rdi,%r11
   2dbe1:	41 83 e3 07                                     	and    $0x7,%r11d
   2dbe5:	45 39 d3                                        	cmp    %r10d,%r11d
   2dbe8:	7c f3                                           	jl     2dbdd <.return_store_add_1_RDI>
   2dbea:	48 89 ff                                        	mov    %rdi,%rdi
   2dbed:	e9 56 f8 ff ff                                  	jmp    2d448 <__asan_report_store1_asm>

000000000002dbf2 <__asan_check_load_add_2_RDI>:
__asan_check_load_add_2_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dbf2:	49 89 fa                                        	mov    %rdi,%r10
   2dbf5:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dbf9:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2dc01:	45 85 d2                                        	test   %r10d,%r10d
   2dc04:	75 01                                           	jne    2dc07 <.check_load_add_2_RDI>

000000000002dc06 <.return_load_add_2_RDI>:
.return_load_add_2_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dc06:	c3                                              	ret

000000000002dc07 <.check_load_add_2_RDI>:
.check_load_add_2_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dc07:	49 89 fb                                        	mov    %rdi,%r11
   2dc0a:	41 83 e3 07                                     	and    $0x7,%r11d
   2dc0e:	41 83 c3 01                                     	add    $0x1,%r11d
   2dc12:	45 39 d3                                        	cmp    %r10d,%r11d
   2dc15:	7c ef                                           	jl     2dc06 <.return_load_add_2_RDI>
   2dc17:	48 89 ff                                        	mov    %rdi,%rdi
   2dc1a:	e9 09 f8 ff ff                                  	jmp    2d428 <__asan_report_load2_asm>

000000000002dc1f <__asan_check_store_add_2_RDI>:
__asan_check_store_add_2_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dc1f:	49 89 fa                                        	mov    %rdi,%r10
   2dc22:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dc26:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2dc2e:	45 85 d2                                        	test   %r10d,%r10d
   2dc31:	75 01                                           	jne    2dc34 <.check_store_add_2_RDI>

000000000002dc33 <.return_store_add_2_RDI>:
.return_store_add_2_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dc33:	c3                                              	ret

000000000002dc34 <.check_store_add_2_RDI>:
.check_store_add_2_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dc34:	49 89 fb                                        	mov    %rdi,%r11
   2dc37:	41 83 e3 07                                     	and    $0x7,%r11d
   2dc3b:	41 83 c3 01                                     	add    $0x1,%r11d
   2dc3f:	45 39 d3                                        	cmp    %r10d,%r11d
   2dc42:	7c ef                                           	jl     2dc33 <.return_store_add_2_RDI>
   2dc44:	48 89 ff                                        	mov    %rdi,%rdi
   2dc47:	e9 04 f8 ff ff                                  	jmp    2d450 <__asan_report_store2_asm>

000000000002dc4c <__asan_check_load_add_4_RDI>:
__asan_check_load_add_4_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dc4c:	49 89 fa                                        	mov    %rdi,%r10
   2dc4f:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dc53:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2dc5b:	45 85 d2                                        	test   %r10d,%r10d
   2dc5e:	75 01                                           	jne    2dc61 <.check_load_add_4_RDI>

000000000002dc60 <.return_load_add_4_RDI>:
.return_load_add_4_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dc60:	c3                                              	ret

000000000002dc61 <.check_load_add_4_RDI>:
.check_load_add_4_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dc61:	49 89 fb                                        	mov    %rdi,%r11
   2dc64:	41 83 e3 07                                     	and    $0x7,%r11d
   2dc68:	41 83 c3 03                                     	add    $0x3,%r11d
   2dc6c:	45 39 d3                                        	cmp    %r10d,%r11d
   2dc6f:	7c ef                                           	jl     2dc60 <.return_load_add_4_RDI>
   2dc71:	48 89 ff                                        	mov    %rdi,%rdi
   2dc74:	e9 b7 f7 ff ff                                  	jmp    2d430 <__asan_report_load4_asm>

000000000002dc79 <__asan_check_store_add_4_RDI>:
__asan_check_store_add_4_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dc79:	49 89 fa                                        	mov    %rdi,%r10
   2dc7c:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dc80:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2dc88:	45 85 d2                                        	test   %r10d,%r10d
   2dc8b:	75 01                                           	jne    2dc8e <.check_store_add_4_RDI>

000000000002dc8d <.return_store_add_4_RDI>:
.return_store_add_4_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dc8d:	c3                                              	ret

000000000002dc8e <.check_store_add_4_RDI>:
.check_store_add_4_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dc8e:	49 89 fb                                        	mov    %rdi,%r11
   2dc91:	41 83 e3 07                                     	and    $0x7,%r11d
   2dc95:	41 83 c3 03                                     	add    $0x3,%r11d
   2dc99:	45 39 d3                                        	cmp    %r10d,%r11d
   2dc9c:	7c ef                                           	jl     2dc8d <.return_store_add_4_RDI>
   2dc9e:	48 89 ff                                        	mov    %rdi,%rdi
   2dca1:	e9 b2 f7 ff ff                                  	jmp    2d458 <__asan_report_store4_asm>

000000000002dca6 <__asan_check_load_add_8_RDI>:
__asan_check_load_add_8_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dca6:	49 89 fa                                        	mov    %rdi,%r10
   2dca9:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dcad:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2dcb5:	75 01                                           	jne    2dcb8 <.fail_load_add_8_RDI>
   2dcb7:	c3                                              	ret

000000000002dcb8 <.fail_load_add_8_RDI>:
.fail_load_add_8_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dcb8:	48 89 ff                                        	mov    %rdi,%rdi
   2dcbb:	e9 78 f7 ff ff                                  	jmp    2d438 <__asan_report_load8_asm>

000000000002dcc0 <__asan_check_store_add_8_RDI>:
__asan_check_store_add_8_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dcc0:	49 89 fa                                        	mov    %rdi,%r10
   2dcc3:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dcc7:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2dccf:	75 01                                           	jne    2dcd2 <.fail_store_add_8_RDI>
   2dcd1:	c3                                              	ret

000000000002dcd2 <.fail_store_add_8_RDI>:
.fail_store_add_8_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dcd2:	48 89 ff                                        	mov    %rdi,%rdi
   2dcd5:	e9 86 f7 ff ff                                  	jmp    2d460 <__asan_report_store8_asm>

000000000002dcda <__asan_check_load_add_16_RDI>:
__asan_check_load_add_16_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dcda:	49 89 fa                                        	mov    %rdi,%r10
   2dcdd:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dce1:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2dcea:	75 01                                           	jne    2dced <.fail_load_add_16_RDI>
   2dcec:	c3                                              	ret

000000000002dced <.fail_load_add_16_RDI>:
.fail_load_add_16_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dced:	48 89 ff                                        	mov    %rdi,%rdi
   2dcf0:	e9 4b f7 ff ff                                  	jmp    2d440 <__asan_report_load16_asm>

000000000002dcf5 <__asan_check_store_add_16_RDI>:
__asan_check_store_add_16_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dcf5:	49 89 fa                                        	mov    %rdi,%r10
   2dcf8:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dcfc:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2dd05:	75 01                                           	jne    2dd08 <.fail_store_add_16_RDI>
   2dd07:	c3                                              	ret

000000000002dd08 <.fail_store_add_16_RDI>:
.fail_store_add_16_RDI():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:140
   2dd08:	48 89 ff                                        	mov    %rdi,%rdi
   2dd0b:	e9 58 f7 ff ff                                  	jmp    2d468 <__asan_report_store16_asm>

000000000002dd10 <__asan_check_load_add_1_RBP>:
__asan_check_load_add_1_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2dd10:	49 89 ea                                        	mov    %rbp,%r10
   2dd13:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dd17:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2dd1f:	45 85 d2                                        	test   %r10d,%r10d
   2dd22:	75 01                                           	jne    2dd25 <.check_load_add_1_RBP>

000000000002dd24 <.return_load_add_1_RBP>:
.return_load_add_1_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2dd24:	c3                                              	ret

000000000002dd25 <.check_load_add_1_RBP>:
.check_load_add_1_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2dd25:	49 89 eb                                        	mov    %rbp,%r11
   2dd28:	41 83 e3 07                                     	and    $0x7,%r11d
   2dd2c:	45 39 d3                                        	cmp    %r10d,%r11d
   2dd2f:	7c f3                                           	jl     2dd24 <.return_load_add_1_RBP>
   2dd31:	48 89 ef                                        	mov    %rbp,%rdi
   2dd34:	e9 e7 f6 ff ff                                  	jmp    2d420 <__asan_report_load1_asm>

000000000002dd39 <__asan_check_store_add_1_RBP>:
__asan_check_store_add_1_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2dd39:	49 89 ea                                        	mov    %rbp,%r10
   2dd3c:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dd40:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2dd48:	45 85 d2                                        	test   %r10d,%r10d
   2dd4b:	75 01                                           	jne    2dd4e <.check_store_add_1_RBP>

000000000002dd4d <.return_store_add_1_RBP>:
.return_store_add_1_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2dd4d:	c3                                              	ret

000000000002dd4e <.check_store_add_1_RBP>:
.check_store_add_1_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2dd4e:	49 89 eb                                        	mov    %rbp,%r11
   2dd51:	41 83 e3 07                                     	and    $0x7,%r11d
   2dd55:	45 39 d3                                        	cmp    %r10d,%r11d
   2dd58:	7c f3                                           	jl     2dd4d <.return_store_add_1_RBP>
   2dd5a:	48 89 ef                                        	mov    %rbp,%rdi
   2dd5d:	e9 e6 f6 ff ff                                  	jmp    2d448 <__asan_report_store1_asm>

000000000002dd62 <__asan_check_load_add_2_RBP>:
__asan_check_load_add_2_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2dd62:	49 89 ea                                        	mov    %rbp,%r10
   2dd65:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dd69:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2dd71:	45 85 d2                                        	test   %r10d,%r10d
   2dd74:	75 01                                           	jne    2dd77 <.check_load_add_2_RBP>

000000000002dd76 <.return_load_add_2_RBP>:
.return_load_add_2_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2dd76:	c3                                              	ret

000000000002dd77 <.check_load_add_2_RBP>:
.check_load_add_2_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2dd77:	49 89 eb                                        	mov    %rbp,%r11
   2dd7a:	41 83 e3 07                                     	and    $0x7,%r11d
   2dd7e:	41 83 c3 01                                     	add    $0x1,%r11d
   2dd82:	45 39 d3                                        	cmp    %r10d,%r11d
   2dd85:	7c ef                                           	jl     2dd76 <.return_load_add_2_RBP>
   2dd87:	48 89 ef                                        	mov    %rbp,%rdi
   2dd8a:	e9 99 f6 ff ff                                  	jmp    2d428 <__asan_report_load2_asm>

000000000002dd8f <__asan_check_store_add_2_RBP>:
__asan_check_store_add_2_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2dd8f:	49 89 ea                                        	mov    %rbp,%r10
   2dd92:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dd96:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2dd9e:	45 85 d2                                        	test   %r10d,%r10d
   2dda1:	75 01                                           	jne    2dda4 <.check_store_add_2_RBP>

000000000002dda3 <.return_store_add_2_RBP>:
.return_store_add_2_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2dda3:	c3                                              	ret

000000000002dda4 <.check_store_add_2_RBP>:
.check_store_add_2_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2dda4:	49 89 eb                                        	mov    %rbp,%r11
   2dda7:	41 83 e3 07                                     	and    $0x7,%r11d
   2ddab:	41 83 c3 01                                     	add    $0x1,%r11d
   2ddaf:	45 39 d3                                        	cmp    %r10d,%r11d
   2ddb2:	7c ef                                           	jl     2dda3 <.return_store_add_2_RBP>
   2ddb4:	48 89 ef                                        	mov    %rbp,%rdi
   2ddb7:	e9 94 f6 ff ff                                  	jmp    2d450 <__asan_report_store2_asm>

000000000002ddbc <__asan_check_load_add_4_RBP>:
__asan_check_load_add_4_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2ddbc:	49 89 ea                                        	mov    %rbp,%r10
   2ddbf:	49 c1 ea 03                                     	shr    $0x3,%r10
   2ddc3:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2ddcb:	45 85 d2                                        	test   %r10d,%r10d
   2ddce:	75 01                                           	jne    2ddd1 <.check_load_add_4_RBP>

000000000002ddd0 <.return_load_add_4_RBP>:
.return_load_add_4_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2ddd0:	c3                                              	ret

000000000002ddd1 <.check_load_add_4_RBP>:
.check_load_add_4_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2ddd1:	49 89 eb                                        	mov    %rbp,%r11
   2ddd4:	41 83 e3 07                                     	and    $0x7,%r11d
   2ddd8:	41 83 c3 03                                     	add    $0x3,%r11d
   2dddc:	45 39 d3                                        	cmp    %r10d,%r11d
   2dddf:	7c ef                                           	jl     2ddd0 <.return_load_add_4_RBP>
   2dde1:	48 89 ef                                        	mov    %rbp,%rdi
   2dde4:	e9 47 f6 ff ff                                  	jmp    2d430 <__asan_report_load4_asm>

000000000002dde9 <__asan_check_store_add_4_RBP>:
__asan_check_store_add_4_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2dde9:	49 89 ea                                        	mov    %rbp,%r10
   2ddec:	49 c1 ea 03                                     	shr    $0x3,%r10
   2ddf0:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2ddf8:	45 85 d2                                        	test   %r10d,%r10d
   2ddfb:	75 01                                           	jne    2ddfe <.check_store_add_4_RBP>

000000000002ddfd <.return_store_add_4_RBP>:
.return_store_add_4_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2ddfd:	c3                                              	ret

000000000002ddfe <.check_store_add_4_RBP>:
.check_store_add_4_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2ddfe:	49 89 eb                                        	mov    %rbp,%r11
   2de01:	41 83 e3 07                                     	and    $0x7,%r11d
   2de05:	41 83 c3 03                                     	add    $0x3,%r11d
   2de09:	45 39 d3                                        	cmp    %r10d,%r11d
   2de0c:	7c ef                                           	jl     2ddfd <.return_store_add_4_RBP>
   2de0e:	48 89 ef                                        	mov    %rbp,%rdi
   2de11:	e9 42 f6 ff ff                                  	jmp    2d458 <__asan_report_store4_asm>

000000000002de16 <__asan_check_load_add_8_RBP>:
__asan_check_load_add_8_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2de16:	49 89 ea                                        	mov    %rbp,%r10
   2de19:	49 c1 ea 03                                     	shr    $0x3,%r10
   2de1d:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2de25:	75 01                                           	jne    2de28 <.fail_load_add_8_RBP>
   2de27:	c3                                              	ret

000000000002de28 <.fail_load_add_8_RBP>:
.fail_load_add_8_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2de28:	48 89 ef                                        	mov    %rbp,%rdi
   2de2b:	e9 08 f6 ff ff                                  	jmp    2d438 <__asan_report_load8_asm>

000000000002de30 <__asan_check_store_add_8_RBP>:
__asan_check_store_add_8_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2de30:	49 89 ea                                        	mov    %rbp,%r10
   2de33:	49 c1 ea 03                                     	shr    $0x3,%r10
   2de37:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2de3f:	75 01                                           	jne    2de42 <.fail_store_add_8_RBP>
   2de41:	c3                                              	ret

000000000002de42 <.fail_store_add_8_RBP>:
.fail_store_add_8_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2de42:	48 89 ef                                        	mov    %rbp,%rdi
   2de45:	e9 16 f6 ff ff                                  	jmp    2d460 <__asan_report_store8_asm>

000000000002de4a <__asan_check_load_add_16_RBP>:
__asan_check_load_add_16_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2de4a:	49 89 ea                                        	mov    %rbp,%r10
   2de4d:	49 c1 ea 03                                     	shr    $0x3,%r10
   2de51:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2de5a:	75 01                                           	jne    2de5d <.fail_load_add_16_RBP>
   2de5c:	c3                                              	ret

000000000002de5d <.fail_load_add_16_RBP>:
.fail_load_add_16_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2de5d:	48 89 ef                                        	mov    %rbp,%rdi
   2de60:	e9 db f5 ff ff                                  	jmp    2d440 <__asan_report_load16_asm>

000000000002de65 <__asan_check_store_add_16_RBP>:
__asan_check_store_add_16_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2de65:	49 89 ea                                        	mov    %rbp,%r10
   2de68:	49 c1 ea 03                                     	shr    $0x3,%r10
   2de6c:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2de75:	75 01                                           	jne    2de78 <.fail_store_add_16_RBP>
   2de77:	c3                                              	ret

000000000002de78 <.fail_store_add_16_RBP>:
.fail_store_add_16_RBP():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:141
   2de78:	48 89 ef                                        	mov    %rbp,%rdi
   2de7b:	e9 e8 f5 ff ff                                  	jmp    2d468 <__asan_report_store16_asm>

000000000002de80 <__asan_check_load_add_1_R8>:
__asan_check_load_add_1_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2de80:	4d 89 c2                                        	mov    %r8,%r10
   2de83:	49 c1 ea 03                                     	shr    $0x3,%r10
   2de87:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2de8f:	45 85 d2                                        	test   %r10d,%r10d
   2de92:	75 01                                           	jne    2de95 <.check_load_add_1_R8>

000000000002de94 <.return_load_add_1_R8>:
.return_load_add_1_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2de94:	c3                                              	ret

000000000002de95 <.check_load_add_1_R8>:
.check_load_add_1_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2de95:	4d 89 c3                                        	mov    %r8,%r11
   2de98:	41 83 e3 07                                     	and    $0x7,%r11d
   2de9c:	45 39 d3                                        	cmp    %r10d,%r11d
   2de9f:	7c f3                                           	jl     2de94 <.return_load_add_1_R8>
   2dea1:	4c 89 c7                                        	mov    %r8,%rdi
   2dea4:	e9 77 f5 ff ff                                  	jmp    2d420 <__asan_report_load1_asm>

000000000002dea9 <__asan_check_store_add_1_R8>:
__asan_check_store_add_1_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2dea9:	4d 89 c2                                        	mov    %r8,%r10
   2deac:	49 c1 ea 03                                     	shr    $0x3,%r10
   2deb0:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2deb8:	45 85 d2                                        	test   %r10d,%r10d
   2debb:	75 01                                           	jne    2debe <.check_store_add_1_R8>

000000000002debd <.return_store_add_1_R8>:
.return_store_add_1_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2debd:	c3                                              	ret

000000000002debe <.check_store_add_1_R8>:
.check_store_add_1_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2debe:	4d 89 c3                                        	mov    %r8,%r11
   2dec1:	41 83 e3 07                                     	and    $0x7,%r11d
   2dec5:	45 39 d3                                        	cmp    %r10d,%r11d
   2dec8:	7c f3                                           	jl     2debd <.return_store_add_1_R8>
   2deca:	4c 89 c7                                        	mov    %r8,%rdi
   2decd:	e9 76 f5 ff ff                                  	jmp    2d448 <__asan_report_store1_asm>

000000000002ded2 <__asan_check_load_add_2_R8>:
__asan_check_load_add_2_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2ded2:	4d 89 c2                                        	mov    %r8,%r10
   2ded5:	49 c1 ea 03                                     	shr    $0x3,%r10
   2ded9:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2dee1:	45 85 d2                                        	test   %r10d,%r10d
   2dee4:	75 01                                           	jne    2dee7 <.check_load_add_2_R8>

000000000002dee6 <.return_load_add_2_R8>:
.return_load_add_2_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2dee6:	c3                                              	ret

000000000002dee7 <.check_load_add_2_R8>:
.check_load_add_2_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2dee7:	4d 89 c3                                        	mov    %r8,%r11
   2deea:	41 83 e3 07                                     	and    $0x7,%r11d
   2deee:	41 83 c3 01                                     	add    $0x1,%r11d
   2def2:	45 39 d3                                        	cmp    %r10d,%r11d
   2def5:	7c ef                                           	jl     2dee6 <.return_load_add_2_R8>
   2def7:	4c 89 c7                                        	mov    %r8,%rdi
   2defa:	e9 29 f5 ff ff                                  	jmp    2d428 <__asan_report_load2_asm>

000000000002deff <__asan_check_store_add_2_R8>:
__asan_check_store_add_2_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2deff:	4d 89 c2                                        	mov    %r8,%r10
   2df02:	49 c1 ea 03                                     	shr    $0x3,%r10
   2df06:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2df0e:	45 85 d2                                        	test   %r10d,%r10d
   2df11:	75 01                                           	jne    2df14 <.check_store_add_2_R8>

000000000002df13 <.return_store_add_2_R8>:
.return_store_add_2_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2df13:	c3                                              	ret

000000000002df14 <.check_store_add_2_R8>:
.check_store_add_2_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2df14:	4d 89 c3                                        	mov    %r8,%r11
   2df17:	41 83 e3 07                                     	and    $0x7,%r11d
   2df1b:	41 83 c3 01                                     	add    $0x1,%r11d
   2df1f:	45 39 d3                                        	cmp    %r10d,%r11d
   2df22:	7c ef                                           	jl     2df13 <.return_store_add_2_R8>
   2df24:	4c 89 c7                                        	mov    %r8,%rdi
   2df27:	e9 24 f5 ff ff                                  	jmp    2d450 <__asan_report_store2_asm>

000000000002df2c <__asan_check_load_add_4_R8>:
__asan_check_load_add_4_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2df2c:	4d 89 c2                                        	mov    %r8,%r10
   2df2f:	49 c1 ea 03                                     	shr    $0x3,%r10
   2df33:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2df3b:	45 85 d2                                        	test   %r10d,%r10d
   2df3e:	75 01                                           	jne    2df41 <.check_load_add_4_R8>

000000000002df40 <.return_load_add_4_R8>:
.return_load_add_4_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2df40:	c3                                              	ret

000000000002df41 <.check_load_add_4_R8>:
.check_load_add_4_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2df41:	4d 89 c3                                        	mov    %r8,%r11
   2df44:	41 83 e3 07                                     	and    $0x7,%r11d
   2df48:	41 83 c3 03                                     	add    $0x3,%r11d
   2df4c:	45 39 d3                                        	cmp    %r10d,%r11d
   2df4f:	7c ef                                           	jl     2df40 <.return_load_add_4_R8>
   2df51:	4c 89 c7                                        	mov    %r8,%rdi
   2df54:	e9 d7 f4 ff ff                                  	jmp    2d430 <__asan_report_load4_asm>

000000000002df59 <__asan_check_store_add_4_R8>:
__asan_check_store_add_4_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2df59:	4d 89 c2                                        	mov    %r8,%r10
   2df5c:	49 c1 ea 03                                     	shr    $0x3,%r10
   2df60:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2df68:	45 85 d2                                        	test   %r10d,%r10d
   2df6b:	75 01                                           	jne    2df6e <.check_store_add_4_R8>

000000000002df6d <.return_store_add_4_R8>:
.return_store_add_4_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2df6d:	c3                                              	ret

000000000002df6e <.check_store_add_4_R8>:
.check_store_add_4_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2df6e:	4d 89 c3                                        	mov    %r8,%r11
   2df71:	41 83 e3 07                                     	and    $0x7,%r11d
   2df75:	41 83 c3 03                                     	add    $0x3,%r11d
   2df79:	45 39 d3                                        	cmp    %r10d,%r11d
   2df7c:	7c ef                                           	jl     2df6d <.return_store_add_4_R8>
   2df7e:	4c 89 c7                                        	mov    %r8,%rdi
   2df81:	e9 d2 f4 ff ff                                  	jmp    2d458 <__asan_report_store4_asm>

000000000002df86 <__asan_check_load_add_8_R8>:
__asan_check_load_add_8_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2df86:	4d 89 c2                                        	mov    %r8,%r10
   2df89:	49 c1 ea 03                                     	shr    $0x3,%r10
   2df8d:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2df95:	75 01                                           	jne    2df98 <.fail_load_add_8_R8>
   2df97:	c3                                              	ret

000000000002df98 <.fail_load_add_8_R8>:
.fail_load_add_8_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2df98:	4c 89 c7                                        	mov    %r8,%rdi
   2df9b:	e9 98 f4 ff ff                                  	jmp    2d438 <__asan_report_load8_asm>

000000000002dfa0 <__asan_check_store_add_8_R8>:
__asan_check_store_add_8_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2dfa0:	4d 89 c2                                        	mov    %r8,%r10
   2dfa3:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dfa7:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2dfaf:	75 01                                           	jne    2dfb2 <.fail_store_add_8_R8>
   2dfb1:	c3                                              	ret

000000000002dfb2 <.fail_store_add_8_R8>:
.fail_store_add_8_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2dfb2:	4c 89 c7                                        	mov    %r8,%rdi
   2dfb5:	e9 a6 f4 ff ff                                  	jmp    2d460 <__asan_report_store8_asm>

000000000002dfba <__asan_check_load_add_16_R8>:
__asan_check_load_add_16_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2dfba:	4d 89 c2                                        	mov    %r8,%r10
   2dfbd:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dfc1:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2dfca:	75 01                                           	jne    2dfcd <.fail_load_add_16_R8>
   2dfcc:	c3                                              	ret

000000000002dfcd <.fail_load_add_16_R8>:
.fail_load_add_16_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2dfcd:	4c 89 c7                                        	mov    %r8,%rdi
   2dfd0:	e9 6b f4 ff ff                                  	jmp    2d440 <__asan_report_load16_asm>

000000000002dfd5 <__asan_check_store_add_16_R8>:
__asan_check_store_add_16_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2dfd5:	4d 89 c2                                        	mov    %r8,%r10
   2dfd8:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dfdc:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2dfe5:	75 01                                           	jne    2dfe8 <.fail_store_add_16_R8>
   2dfe7:	c3                                              	ret

000000000002dfe8 <.fail_store_add_16_R8>:
.fail_store_add_16_R8():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:142
   2dfe8:	4c 89 c7                                        	mov    %r8,%rdi
   2dfeb:	e9 78 f4 ff ff                                  	jmp    2d468 <__asan_report_store16_asm>

000000000002dff0 <__asan_check_load_add_1_R9>:
__asan_check_load_add_1_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2dff0:	4d 89 ca                                        	mov    %r9,%r10
   2dff3:	49 c1 ea 03                                     	shr    $0x3,%r10
   2dff7:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2dfff:	45 85 d2                                        	test   %r10d,%r10d
   2e002:	75 01                                           	jne    2e005 <.check_load_add_1_R9>

000000000002e004 <.return_load_add_1_R9>:
.return_load_add_1_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e004:	c3                                              	ret

000000000002e005 <.check_load_add_1_R9>:
.check_load_add_1_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e005:	4d 89 cb                                        	mov    %r9,%r11
   2e008:	41 83 e3 07                                     	and    $0x7,%r11d
   2e00c:	45 39 d3                                        	cmp    %r10d,%r11d
   2e00f:	7c f3                                           	jl     2e004 <.return_load_add_1_R9>
   2e011:	4c 89 cf                                        	mov    %r9,%rdi
   2e014:	e9 07 f4 ff ff                                  	jmp    2d420 <__asan_report_load1_asm>

000000000002e019 <__asan_check_store_add_1_R9>:
__asan_check_store_add_1_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e019:	4d 89 ca                                        	mov    %r9,%r10
   2e01c:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e020:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e028:	45 85 d2                                        	test   %r10d,%r10d
   2e02b:	75 01                                           	jne    2e02e <.check_store_add_1_R9>

000000000002e02d <.return_store_add_1_R9>:
.return_store_add_1_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e02d:	c3                                              	ret

000000000002e02e <.check_store_add_1_R9>:
.check_store_add_1_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e02e:	4d 89 cb                                        	mov    %r9,%r11
   2e031:	41 83 e3 07                                     	and    $0x7,%r11d
   2e035:	45 39 d3                                        	cmp    %r10d,%r11d
   2e038:	7c f3                                           	jl     2e02d <.return_store_add_1_R9>
   2e03a:	4c 89 cf                                        	mov    %r9,%rdi
   2e03d:	e9 06 f4 ff ff                                  	jmp    2d448 <__asan_report_store1_asm>

000000000002e042 <__asan_check_load_add_2_R9>:
__asan_check_load_add_2_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e042:	4d 89 ca                                        	mov    %r9,%r10
   2e045:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e049:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e051:	45 85 d2                                        	test   %r10d,%r10d
   2e054:	75 01                                           	jne    2e057 <.check_load_add_2_R9>

000000000002e056 <.return_load_add_2_R9>:
.return_load_add_2_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e056:	c3                                              	ret

000000000002e057 <.check_load_add_2_R9>:
.check_load_add_2_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e057:	4d 89 cb                                        	mov    %r9,%r11
   2e05a:	41 83 e3 07                                     	and    $0x7,%r11d
   2e05e:	41 83 c3 01                                     	add    $0x1,%r11d
   2e062:	45 39 d3                                        	cmp    %r10d,%r11d
   2e065:	7c ef                                           	jl     2e056 <.return_load_add_2_R9>
   2e067:	4c 89 cf                                        	mov    %r9,%rdi
   2e06a:	e9 b9 f3 ff ff                                  	jmp    2d428 <__asan_report_load2_asm>

000000000002e06f <__asan_check_store_add_2_R9>:
__asan_check_store_add_2_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e06f:	4d 89 ca                                        	mov    %r9,%r10
   2e072:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e076:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e07e:	45 85 d2                                        	test   %r10d,%r10d
   2e081:	75 01                                           	jne    2e084 <.check_store_add_2_R9>

000000000002e083 <.return_store_add_2_R9>:
.return_store_add_2_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e083:	c3                                              	ret

000000000002e084 <.check_store_add_2_R9>:
.check_store_add_2_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e084:	4d 89 cb                                        	mov    %r9,%r11
   2e087:	41 83 e3 07                                     	and    $0x7,%r11d
   2e08b:	41 83 c3 01                                     	add    $0x1,%r11d
   2e08f:	45 39 d3                                        	cmp    %r10d,%r11d
   2e092:	7c ef                                           	jl     2e083 <.return_store_add_2_R9>
   2e094:	4c 89 cf                                        	mov    %r9,%rdi
   2e097:	e9 b4 f3 ff ff                                  	jmp    2d450 <__asan_report_store2_asm>

000000000002e09c <__asan_check_load_add_4_R9>:
__asan_check_load_add_4_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e09c:	4d 89 ca                                        	mov    %r9,%r10
   2e09f:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e0a3:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e0ab:	45 85 d2                                        	test   %r10d,%r10d
   2e0ae:	75 01                                           	jne    2e0b1 <.check_load_add_4_R9>

000000000002e0b0 <.return_load_add_4_R9>:
.return_load_add_4_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e0b0:	c3                                              	ret

000000000002e0b1 <.check_load_add_4_R9>:
.check_load_add_4_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e0b1:	4d 89 cb                                        	mov    %r9,%r11
   2e0b4:	41 83 e3 07                                     	and    $0x7,%r11d
   2e0b8:	41 83 c3 03                                     	add    $0x3,%r11d
   2e0bc:	45 39 d3                                        	cmp    %r10d,%r11d
   2e0bf:	7c ef                                           	jl     2e0b0 <.return_load_add_4_R9>
   2e0c1:	4c 89 cf                                        	mov    %r9,%rdi
   2e0c4:	e9 67 f3 ff ff                                  	jmp    2d430 <__asan_report_load4_asm>

000000000002e0c9 <__asan_check_store_add_4_R9>:
__asan_check_store_add_4_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e0c9:	4d 89 ca                                        	mov    %r9,%r10
   2e0cc:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e0d0:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e0d8:	45 85 d2                                        	test   %r10d,%r10d
   2e0db:	75 01                                           	jne    2e0de <.check_store_add_4_R9>

000000000002e0dd <.return_store_add_4_R9>:
.return_store_add_4_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e0dd:	c3                                              	ret

000000000002e0de <.check_store_add_4_R9>:
.check_store_add_4_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e0de:	4d 89 cb                                        	mov    %r9,%r11
   2e0e1:	41 83 e3 07                                     	and    $0x7,%r11d
   2e0e5:	41 83 c3 03                                     	add    $0x3,%r11d
   2e0e9:	45 39 d3                                        	cmp    %r10d,%r11d
   2e0ec:	7c ef                                           	jl     2e0dd <.return_store_add_4_R9>
   2e0ee:	4c 89 cf                                        	mov    %r9,%rdi
   2e0f1:	e9 62 f3 ff ff                                  	jmp    2d458 <__asan_report_store4_asm>

000000000002e0f6 <__asan_check_load_add_8_R9>:
__asan_check_load_add_8_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e0f6:	4d 89 ca                                        	mov    %r9,%r10
   2e0f9:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e0fd:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2e105:	75 01                                           	jne    2e108 <.fail_load_add_8_R9>
   2e107:	c3                                              	ret

000000000002e108 <.fail_load_add_8_R9>:
.fail_load_add_8_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e108:	4c 89 cf                                        	mov    %r9,%rdi
   2e10b:	e9 28 f3 ff ff                                  	jmp    2d438 <__asan_report_load8_asm>

000000000002e110 <__asan_check_store_add_8_R9>:
__asan_check_store_add_8_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e110:	4d 89 ca                                        	mov    %r9,%r10
   2e113:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e117:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2e11f:	75 01                                           	jne    2e122 <.fail_store_add_8_R9>
   2e121:	c3                                              	ret

000000000002e122 <.fail_store_add_8_R9>:
.fail_store_add_8_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e122:	4c 89 cf                                        	mov    %r9,%rdi
   2e125:	e9 36 f3 ff ff                                  	jmp    2d460 <__asan_report_store8_asm>

000000000002e12a <__asan_check_load_add_16_R9>:
__asan_check_load_add_16_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e12a:	4d 89 ca                                        	mov    %r9,%r10
   2e12d:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e131:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2e13a:	75 01                                           	jne    2e13d <.fail_load_add_16_R9>
   2e13c:	c3                                              	ret

000000000002e13d <.fail_load_add_16_R9>:
.fail_load_add_16_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e13d:	4c 89 cf                                        	mov    %r9,%rdi
   2e140:	e9 fb f2 ff ff                                  	jmp    2d440 <__asan_report_load16_asm>

000000000002e145 <__asan_check_store_add_16_R9>:
__asan_check_store_add_16_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e145:	4d 89 ca                                        	mov    %r9,%r10
   2e148:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e14c:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2e155:	75 01                                           	jne    2e158 <.fail_store_add_16_R9>
   2e157:	c3                                              	ret

000000000002e158 <.fail_store_add_16_R9>:
.fail_store_add_16_R9():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:143
   2e158:	4c 89 cf                                        	mov    %r9,%rdi
   2e15b:	e9 08 f3 ff ff                                  	jmp    2d468 <__asan_report_store16_asm>

000000000002e160 <__asan_check_load_add_1_R12>:
__asan_check_load_add_1_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e160:	4d 89 e2                                        	mov    %r12,%r10
   2e163:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e167:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e16f:	45 85 d2                                        	test   %r10d,%r10d
   2e172:	75 01                                           	jne    2e175 <.check_load_add_1_R12>

000000000002e174 <.return_load_add_1_R12>:
.return_load_add_1_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e174:	c3                                              	ret

000000000002e175 <.check_load_add_1_R12>:
.check_load_add_1_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e175:	4d 89 e3                                        	mov    %r12,%r11
   2e178:	41 83 e3 07                                     	and    $0x7,%r11d
   2e17c:	45 39 d3                                        	cmp    %r10d,%r11d
   2e17f:	7c f3                                           	jl     2e174 <.return_load_add_1_R12>
   2e181:	4c 89 e7                                        	mov    %r12,%rdi
   2e184:	e9 97 f2 ff ff                                  	jmp    2d420 <__asan_report_load1_asm>

000000000002e189 <__asan_check_store_add_1_R12>:
__asan_check_store_add_1_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e189:	4d 89 e2                                        	mov    %r12,%r10
   2e18c:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e190:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e198:	45 85 d2                                        	test   %r10d,%r10d
   2e19b:	75 01                                           	jne    2e19e <.check_store_add_1_R12>

000000000002e19d <.return_store_add_1_R12>:
.return_store_add_1_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e19d:	c3                                              	ret

000000000002e19e <.check_store_add_1_R12>:
.check_store_add_1_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e19e:	4d 89 e3                                        	mov    %r12,%r11
   2e1a1:	41 83 e3 07                                     	and    $0x7,%r11d
   2e1a5:	45 39 d3                                        	cmp    %r10d,%r11d
   2e1a8:	7c f3                                           	jl     2e19d <.return_store_add_1_R12>
   2e1aa:	4c 89 e7                                        	mov    %r12,%rdi
   2e1ad:	e9 96 f2 ff ff                                  	jmp    2d448 <__asan_report_store1_asm>

000000000002e1b2 <__asan_check_load_add_2_R12>:
__asan_check_load_add_2_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e1b2:	4d 89 e2                                        	mov    %r12,%r10
   2e1b5:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e1b9:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e1c1:	45 85 d2                                        	test   %r10d,%r10d
   2e1c4:	75 01                                           	jne    2e1c7 <.check_load_add_2_R12>

000000000002e1c6 <.return_load_add_2_R12>:
.return_load_add_2_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e1c6:	c3                                              	ret

000000000002e1c7 <.check_load_add_2_R12>:
.check_load_add_2_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e1c7:	4d 89 e3                                        	mov    %r12,%r11
   2e1ca:	41 83 e3 07                                     	and    $0x7,%r11d
   2e1ce:	41 83 c3 01                                     	add    $0x1,%r11d
   2e1d2:	45 39 d3                                        	cmp    %r10d,%r11d
   2e1d5:	7c ef                                           	jl     2e1c6 <.return_load_add_2_R12>
   2e1d7:	4c 89 e7                                        	mov    %r12,%rdi
   2e1da:	e9 49 f2 ff ff                                  	jmp    2d428 <__asan_report_load2_asm>

000000000002e1df <__asan_check_store_add_2_R12>:
__asan_check_store_add_2_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e1df:	4d 89 e2                                        	mov    %r12,%r10
   2e1e2:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e1e6:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e1ee:	45 85 d2                                        	test   %r10d,%r10d
   2e1f1:	75 01                                           	jne    2e1f4 <.check_store_add_2_R12>

000000000002e1f3 <.return_store_add_2_R12>:
.return_store_add_2_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e1f3:	c3                                              	ret

000000000002e1f4 <.check_store_add_2_R12>:
.check_store_add_2_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e1f4:	4d 89 e3                                        	mov    %r12,%r11
   2e1f7:	41 83 e3 07                                     	and    $0x7,%r11d
   2e1fb:	41 83 c3 01                                     	add    $0x1,%r11d
   2e1ff:	45 39 d3                                        	cmp    %r10d,%r11d
   2e202:	7c ef                                           	jl     2e1f3 <.return_store_add_2_R12>
   2e204:	4c 89 e7                                        	mov    %r12,%rdi
   2e207:	e9 44 f2 ff ff                                  	jmp    2d450 <__asan_report_store2_asm>

000000000002e20c <__asan_check_load_add_4_R12>:
__asan_check_load_add_4_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e20c:	4d 89 e2                                        	mov    %r12,%r10
   2e20f:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e213:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e21b:	45 85 d2                                        	test   %r10d,%r10d
   2e21e:	75 01                                           	jne    2e221 <.check_load_add_4_R12>

000000000002e220 <.return_load_add_4_R12>:
.return_load_add_4_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e220:	c3                                              	ret

000000000002e221 <.check_load_add_4_R12>:
.check_load_add_4_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e221:	4d 89 e3                                        	mov    %r12,%r11
   2e224:	41 83 e3 07                                     	and    $0x7,%r11d
   2e228:	41 83 c3 03                                     	add    $0x3,%r11d
   2e22c:	45 39 d3                                        	cmp    %r10d,%r11d
   2e22f:	7c ef                                           	jl     2e220 <.return_load_add_4_R12>
   2e231:	4c 89 e7                                        	mov    %r12,%rdi
   2e234:	e9 f7 f1 ff ff                                  	jmp    2d430 <__asan_report_load4_asm>

000000000002e239 <__asan_check_store_add_4_R12>:
__asan_check_store_add_4_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e239:	4d 89 e2                                        	mov    %r12,%r10
   2e23c:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e240:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e248:	45 85 d2                                        	test   %r10d,%r10d
   2e24b:	75 01                                           	jne    2e24e <.check_store_add_4_R12>

000000000002e24d <.return_store_add_4_R12>:
.return_store_add_4_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e24d:	c3                                              	ret

000000000002e24e <.check_store_add_4_R12>:
.check_store_add_4_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e24e:	4d 89 e3                                        	mov    %r12,%r11
   2e251:	41 83 e3 07                                     	and    $0x7,%r11d
   2e255:	41 83 c3 03                                     	add    $0x3,%r11d
   2e259:	45 39 d3                                        	cmp    %r10d,%r11d
   2e25c:	7c ef                                           	jl     2e24d <.return_store_add_4_R12>
   2e25e:	4c 89 e7                                        	mov    %r12,%rdi
   2e261:	e9 f2 f1 ff ff                                  	jmp    2d458 <__asan_report_store4_asm>

000000000002e266 <__asan_check_load_add_8_R12>:
__asan_check_load_add_8_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e266:	4d 89 e2                                        	mov    %r12,%r10
   2e269:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e26d:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2e275:	75 01                                           	jne    2e278 <.fail_load_add_8_R12>
   2e277:	c3                                              	ret

000000000002e278 <.fail_load_add_8_R12>:
.fail_load_add_8_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e278:	4c 89 e7                                        	mov    %r12,%rdi
   2e27b:	e9 b8 f1 ff ff                                  	jmp    2d438 <__asan_report_load8_asm>

000000000002e280 <__asan_check_store_add_8_R12>:
__asan_check_store_add_8_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e280:	4d 89 e2                                        	mov    %r12,%r10
   2e283:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e287:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2e28f:	75 01                                           	jne    2e292 <.fail_store_add_8_R12>
   2e291:	c3                                              	ret

000000000002e292 <.fail_store_add_8_R12>:
.fail_store_add_8_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e292:	4c 89 e7                                        	mov    %r12,%rdi
   2e295:	e9 c6 f1 ff ff                                  	jmp    2d460 <__asan_report_store8_asm>

000000000002e29a <__asan_check_load_add_16_R12>:
__asan_check_load_add_16_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e29a:	4d 89 e2                                        	mov    %r12,%r10
   2e29d:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e2a1:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2e2aa:	75 01                                           	jne    2e2ad <.fail_load_add_16_R12>
   2e2ac:	c3                                              	ret

000000000002e2ad <.fail_load_add_16_R12>:
.fail_load_add_16_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e2ad:	4c 89 e7                                        	mov    %r12,%rdi
   2e2b0:	e9 8b f1 ff ff                                  	jmp    2d440 <__asan_report_load16_asm>

000000000002e2b5 <__asan_check_store_add_16_R12>:
__asan_check_store_add_16_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e2b5:	4d 89 e2                                        	mov    %r12,%r10
   2e2b8:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e2bc:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2e2c5:	75 01                                           	jne    2e2c8 <.fail_store_add_16_R12>
   2e2c7:	c3                                              	ret

000000000002e2c8 <.fail_store_add_16_R12>:
.fail_store_add_16_R12():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:144
   2e2c8:	4c 89 e7                                        	mov    %r12,%rdi
   2e2cb:	e9 98 f1 ff ff                                  	jmp    2d468 <__asan_report_store16_asm>

000000000002e2d0 <__asan_check_load_add_1_R13>:
__asan_check_load_add_1_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e2d0:	4d 89 ea                                        	mov    %r13,%r10
   2e2d3:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e2d7:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e2df:	45 85 d2                                        	test   %r10d,%r10d
   2e2e2:	75 01                                           	jne    2e2e5 <.check_load_add_1_R13>

000000000002e2e4 <.return_load_add_1_R13>:
.return_load_add_1_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e2e4:	c3                                              	ret

000000000002e2e5 <.check_load_add_1_R13>:
.check_load_add_1_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e2e5:	4d 89 eb                                        	mov    %r13,%r11
   2e2e8:	41 83 e3 07                                     	and    $0x7,%r11d
   2e2ec:	45 39 d3                                        	cmp    %r10d,%r11d
   2e2ef:	7c f3                                           	jl     2e2e4 <.return_load_add_1_R13>
   2e2f1:	4c 89 ef                                        	mov    %r13,%rdi
   2e2f4:	e9 27 f1 ff ff                                  	jmp    2d420 <__asan_report_load1_asm>

000000000002e2f9 <__asan_check_store_add_1_R13>:
__asan_check_store_add_1_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e2f9:	4d 89 ea                                        	mov    %r13,%r10
   2e2fc:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e300:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e308:	45 85 d2                                        	test   %r10d,%r10d
   2e30b:	75 01                                           	jne    2e30e <.check_store_add_1_R13>

000000000002e30d <.return_store_add_1_R13>:
.return_store_add_1_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e30d:	c3                                              	ret

000000000002e30e <.check_store_add_1_R13>:
.check_store_add_1_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e30e:	4d 89 eb                                        	mov    %r13,%r11
   2e311:	41 83 e3 07                                     	and    $0x7,%r11d
   2e315:	45 39 d3                                        	cmp    %r10d,%r11d
   2e318:	7c f3                                           	jl     2e30d <.return_store_add_1_R13>
   2e31a:	4c 89 ef                                        	mov    %r13,%rdi
   2e31d:	e9 26 f1 ff ff                                  	jmp    2d448 <__asan_report_store1_asm>

000000000002e322 <__asan_check_load_add_2_R13>:
__asan_check_load_add_2_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e322:	4d 89 ea                                        	mov    %r13,%r10
   2e325:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e329:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e331:	45 85 d2                                        	test   %r10d,%r10d
   2e334:	75 01                                           	jne    2e337 <.check_load_add_2_R13>

000000000002e336 <.return_load_add_2_R13>:
.return_load_add_2_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e336:	c3                                              	ret

000000000002e337 <.check_load_add_2_R13>:
.check_load_add_2_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e337:	4d 89 eb                                        	mov    %r13,%r11
   2e33a:	41 83 e3 07                                     	and    $0x7,%r11d
   2e33e:	41 83 c3 01                                     	add    $0x1,%r11d
   2e342:	45 39 d3                                        	cmp    %r10d,%r11d
   2e345:	7c ef                                           	jl     2e336 <.return_load_add_2_R13>
   2e347:	4c 89 ef                                        	mov    %r13,%rdi
   2e34a:	e9 d9 f0 ff ff                                  	jmp    2d428 <__asan_report_load2_asm>

000000000002e34f <__asan_check_store_add_2_R13>:
__asan_check_store_add_2_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e34f:	4d 89 ea                                        	mov    %r13,%r10
   2e352:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e356:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e35e:	45 85 d2                                        	test   %r10d,%r10d
   2e361:	75 01                                           	jne    2e364 <.check_store_add_2_R13>

000000000002e363 <.return_store_add_2_R13>:
.return_store_add_2_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e363:	c3                                              	ret

000000000002e364 <.check_store_add_2_R13>:
.check_store_add_2_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e364:	4d 89 eb                                        	mov    %r13,%r11
   2e367:	41 83 e3 07                                     	and    $0x7,%r11d
   2e36b:	41 83 c3 01                                     	add    $0x1,%r11d
   2e36f:	45 39 d3                                        	cmp    %r10d,%r11d
   2e372:	7c ef                                           	jl     2e363 <.return_store_add_2_R13>
   2e374:	4c 89 ef                                        	mov    %r13,%rdi
   2e377:	e9 d4 f0 ff ff                                  	jmp    2d450 <__asan_report_store2_asm>

000000000002e37c <__asan_check_load_add_4_R13>:
__asan_check_load_add_4_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e37c:	4d 89 ea                                        	mov    %r13,%r10
   2e37f:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e383:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e38b:	45 85 d2                                        	test   %r10d,%r10d
   2e38e:	75 01                                           	jne    2e391 <.check_load_add_4_R13>

000000000002e390 <.return_load_add_4_R13>:
.return_load_add_4_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e390:	c3                                              	ret

000000000002e391 <.check_load_add_4_R13>:
.check_load_add_4_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e391:	4d 89 eb                                        	mov    %r13,%r11
   2e394:	41 83 e3 07                                     	and    $0x7,%r11d
   2e398:	41 83 c3 03                                     	add    $0x3,%r11d
   2e39c:	45 39 d3                                        	cmp    %r10d,%r11d
   2e39f:	7c ef                                           	jl     2e390 <.return_load_add_4_R13>
   2e3a1:	4c 89 ef                                        	mov    %r13,%rdi
   2e3a4:	e9 87 f0 ff ff                                  	jmp    2d430 <__asan_report_load4_asm>

000000000002e3a9 <__asan_check_store_add_4_R13>:
__asan_check_store_add_4_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e3a9:	4d 89 ea                                        	mov    %r13,%r10
   2e3ac:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e3b0:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e3b8:	45 85 d2                                        	test   %r10d,%r10d
   2e3bb:	75 01                                           	jne    2e3be <.check_store_add_4_R13>

000000000002e3bd <.return_store_add_4_R13>:
.return_store_add_4_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e3bd:	c3                                              	ret

000000000002e3be <.check_store_add_4_R13>:
.check_store_add_4_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e3be:	4d 89 eb                                        	mov    %r13,%r11
   2e3c1:	41 83 e3 07                                     	and    $0x7,%r11d
   2e3c5:	41 83 c3 03                                     	add    $0x3,%r11d
   2e3c9:	45 39 d3                                        	cmp    %r10d,%r11d
   2e3cc:	7c ef                                           	jl     2e3bd <.return_store_add_4_R13>
   2e3ce:	4c 89 ef                                        	mov    %r13,%rdi
   2e3d1:	e9 82 f0 ff ff                                  	jmp    2d458 <__asan_report_store4_asm>

000000000002e3d6 <__asan_check_load_add_8_R13>:
__asan_check_load_add_8_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e3d6:	4d 89 ea                                        	mov    %r13,%r10
   2e3d9:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e3dd:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2e3e5:	75 01                                           	jne    2e3e8 <.fail_load_add_8_R13>
   2e3e7:	c3                                              	ret

000000000002e3e8 <.fail_load_add_8_R13>:
.fail_load_add_8_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e3e8:	4c 89 ef                                        	mov    %r13,%rdi
   2e3eb:	e9 48 f0 ff ff                                  	jmp    2d438 <__asan_report_load8_asm>

000000000002e3f0 <__asan_check_store_add_8_R13>:
__asan_check_store_add_8_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e3f0:	4d 89 ea                                        	mov    %r13,%r10
   2e3f3:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e3f7:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2e3ff:	75 01                                           	jne    2e402 <.fail_store_add_8_R13>
   2e401:	c3                                              	ret

000000000002e402 <.fail_store_add_8_R13>:
.fail_store_add_8_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e402:	4c 89 ef                                        	mov    %r13,%rdi
   2e405:	e9 56 f0 ff ff                                  	jmp    2d460 <__asan_report_store8_asm>

000000000002e40a <__asan_check_load_add_16_R13>:
__asan_check_load_add_16_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e40a:	4d 89 ea                                        	mov    %r13,%r10
   2e40d:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e411:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2e41a:	75 01                                           	jne    2e41d <.fail_load_add_16_R13>
   2e41c:	c3                                              	ret

000000000002e41d <.fail_load_add_16_R13>:
.fail_load_add_16_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e41d:	4c 89 ef                                        	mov    %r13,%rdi
   2e420:	e9 1b f0 ff ff                                  	jmp    2d440 <__asan_report_load16_asm>

000000000002e425 <__asan_check_store_add_16_R13>:
__asan_check_store_add_16_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e425:	4d 89 ea                                        	mov    %r13,%r10
   2e428:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e42c:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2e435:	75 01                                           	jne    2e438 <.fail_store_add_16_R13>
   2e437:	c3                                              	ret

000000000002e438 <.fail_store_add_16_R13>:
.fail_store_add_16_R13():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:145
   2e438:	4c 89 ef                                        	mov    %r13,%rdi
   2e43b:	e9 28 f0 ff ff                                  	jmp    2d468 <__asan_report_store16_asm>

000000000002e440 <__asan_check_load_add_1_R14>:
__asan_check_load_add_1_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e440:	4d 89 f2                                        	mov    %r14,%r10
   2e443:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e447:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e44f:	45 85 d2                                        	test   %r10d,%r10d
   2e452:	75 01                                           	jne    2e455 <.check_load_add_1_R14>

000000000002e454 <.return_load_add_1_R14>:
.return_load_add_1_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e454:	c3                                              	ret

000000000002e455 <.check_load_add_1_R14>:
.check_load_add_1_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e455:	4d 89 f3                                        	mov    %r14,%r11
   2e458:	41 83 e3 07                                     	and    $0x7,%r11d
   2e45c:	45 39 d3                                        	cmp    %r10d,%r11d
   2e45f:	7c f3                                           	jl     2e454 <.return_load_add_1_R14>
   2e461:	4c 89 f7                                        	mov    %r14,%rdi
   2e464:	e9 b7 ef ff ff                                  	jmp    2d420 <__asan_report_load1_asm>

000000000002e469 <__asan_check_store_add_1_R14>:
__asan_check_store_add_1_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e469:	4d 89 f2                                        	mov    %r14,%r10
   2e46c:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e470:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e478:	45 85 d2                                        	test   %r10d,%r10d
   2e47b:	75 01                                           	jne    2e47e <.check_store_add_1_R14>

000000000002e47d <.return_store_add_1_R14>:
.return_store_add_1_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e47d:	c3                                              	ret

000000000002e47e <.check_store_add_1_R14>:
.check_store_add_1_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e47e:	4d 89 f3                                        	mov    %r14,%r11
   2e481:	41 83 e3 07                                     	and    $0x7,%r11d
   2e485:	45 39 d3                                        	cmp    %r10d,%r11d
   2e488:	7c f3                                           	jl     2e47d <.return_store_add_1_R14>
   2e48a:	4c 89 f7                                        	mov    %r14,%rdi
   2e48d:	e9 b6 ef ff ff                                  	jmp    2d448 <__asan_report_store1_asm>

000000000002e492 <__asan_check_load_add_2_R14>:
__asan_check_load_add_2_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e492:	4d 89 f2                                        	mov    %r14,%r10
   2e495:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e499:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e4a1:	45 85 d2                                        	test   %r10d,%r10d
   2e4a4:	75 01                                           	jne    2e4a7 <.check_load_add_2_R14>

000000000002e4a6 <.return_load_add_2_R14>:
.return_load_add_2_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e4a6:	c3                                              	ret

000000000002e4a7 <.check_load_add_2_R14>:
.check_load_add_2_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e4a7:	4d 89 f3                                        	mov    %r14,%r11
   2e4aa:	41 83 e3 07                                     	and    $0x7,%r11d
   2e4ae:	41 83 c3 01                                     	add    $0x1,%r11d
   2e4b2:	45 39 d3                                        	cmp    %r10d,%r11d
   2e4b5:	7c ef                                           	jl     2e4a6 <.return_load_add_2_R14>
   2e4b7:	4c 89 f7                                        	mov    %r14,%rdi
   2e4ba:	e9 69 ef ff ff                                  	jmp    2d428 <__asan_report_load2_asm>

000000000002e4bf <__asan_check_store_add_2_R14>:
__asan_check_store_add_2_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e4bf:	4d 89 f2                                        	mov    %r14,%r10
   2e4c2:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e4c6:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e4ce:	45 85 d2                                        	test   %r10d,%r10d
   2e4d1:	75 01                                           	jne    2e4d4 <.check_store_add_2_R14>

000000000002e4d3 <.return_store_add_2_R14>:
.return_store_add_2_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e4d3:	c3                                              	ret

000000000002e4d4 <.check_store_add_2_R14>:
.check_store_add_2_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e4d4:	4d 89 f3                                        	mov    %r14,%r11
   2e4d7:	41 83 e3 07                                     	and    $0x7,%r11d
   2e4db:	41 83 c3 01                                     	add    $0x1,%r11d
   2e4df:	45 39 d3                                        	cmp    %r10d,%r11d
   2e4e2:	7c ef                                           	jl     2e4d3 <.return_store_add_2_R14>
   2e4e4:	4c 89 f7                                        	mov    %r14,%rdi
   2e4e7:	e9 64 ef ff ff                                  	jmp    2d450 <__asan_report_store2_asm>

000000000002e4ec <__asan_check_load_add_4_R14>:
__asan_check_load_add_4_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e4ec:	4d 89 f2                                        	mov    %r14,%r10
   2e4ef:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e4f3:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e4fb:	45 85 d2                                        	test   %r10d,%r10d
   2e4fe:	75 01                                           	jne    2e501 <.check_load_add_4_R14>

000000000002e500 <.return_load_add_4_R14>:
.return_load_add_4_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e500:	c3                                              	ret

000000000002e501 <.check_load_add_4_R14>:
.check_load_add_4_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e501:	4d 89 f3                                        	mov    %r14,%r11
   2e504:	41 83 e3 07                                     	and    $0x7,%r11d
   2e508:	41 83 c3 03                                     	add    $0x3,%r11d
   2e50c:	45 39 d3                                        	cmp    %r10d,%r11d
   2e50f:	7c ef                                           	jl     2e500 <.return_load_add_4_R14>
   2e511:	4c 89 f7                                        	mov    %r14,%rdi
   2e514:	e9 17 ef ff ff                                  	jmp    2d430 <__asan_report_load4_asm>

000000000002e519 <__asan_check_store_add_4_R14>:
__asan_check_store_add_4_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e519:	4d 89 f2                                        	mov    %r14,%r10
   2e51c:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e520:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e528:	45 85 d2                                        	test   %r10d,%r10d
   2e52b:	75 01                                           	jne    2e52e <.check_store_add_4_R14>

000000000002e52d <.return_store_add_4_R14>:
.return_store_add_4_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e52d:	c3                                              	ret

000000000002e52e <.check_store_add_4_R14>:
.check_store_add_4_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e52e:	4d 89 f3                                        	mov    %r14,%r11
   2e531:	41 83 e3 07                                     	and    $0x7,%r11d
   2e535:	41 83 c3 03                                     	add    $0x3,%r11d
   2e539:	45 39 d3                                        	cmp    %r10d,%r11d
   2e53c:	7c ef                                           	jl     2e52d <.return_store_add_4_R14>
   2e53e:	4c 89 f7                                        	mov    %r14,%rdi
   2e541:	e9 12 ef ff ff                                  	jmp    2d458 <__asan_report_store4_asm>

000000000002e546 <__asan_check_load_add_8_R14>:
__asan_check_load_add_8_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e546:	4d 89 f2                                        	mov    %r14,%r10
   2e549:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e54d:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2e555:	75 01                                           	jne    2e558 <.fail_load_add_8_R14>
   2e557:	c3                                              	ret

000000000002e558 <.fail_load_add_8_R14>:
.fail_load_add_8_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e558:	4c 89 f7                                        	mov    %r14,%rdi
   2e55b:	e9 d8 ee ff ff                                  	jmp    2d438 <__asan_report_load8_asm>

000000000002e560 <__asan_check_store_add_8_R14>:
__asan_check_store_add_8_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e560:	4d 89 f2                                        	mov    %r14,%r10
   2e563:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e567:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2e56f:	75 01                                           	jne    2e572 <.fail_store_add_8_R14>
   2e571:	c3                                              	ret

000000000002e572 <.fail_store_add_8_R14>:
.fail_store_add_8_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e572:	4c 89 f7                                        	mov    %r14,%rdi
   2e575:	e9 e6 ee ff ff                                  	jmp    2d460 <__asan_report_store8_asm>

000000000002e57a <__asan_check_load_add_16_R14>:
__asan_check_load_add_16_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e57a:	4d 89 f2                                        	mov    %r14,%r10
   2e57d:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e581:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2e58a:	75 01                                           	jne    2e58d <.fail_load_add_16_R14>
   2e58c:	c3                                              	ret

000000000002e58d <.fail_load_add_16_R14>:
.fail_load_add_16_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e58d:	4c 89 f7                                        	mov    %r14,%rdi
   2e590:	e9 ab ee ff ff                                  	jmp    2d440 <__asan_report_load16_asm>

000000000002e595 <__asan_check_store_add_16_R14>:
__asan_check_store_add_16_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e595:	4d 89 f2                                        	mov    %r14,%r10
   2e598:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e59c:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2e5a5:	75 01                                           	jne    2e5a8 <.fail_store_add_16_R14>
   2e5a7:	c3                                              	ret

000000000002e5a8 <.fail_store_add_16_R14>:
.fail_store_add_16_R14():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:146
   2e5a8:	4c 89 f7                                        	mov    %r14,%rdi
   2e5ab:	e9 b8 ee ff ff                                  	jmp    2d468 <__asan_report_store16_asm>

000000000002e5b0 <__asan_check_load_add_1_R15>:
__asan_check_load_add_1_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e5b0:	4d 89 fa                                        	mov    %r15,%r10
   2e5b3:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e5b7:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e5bf:	45 85 d2                                        	test   %r10d,%r10d
   2e5c2:	75 01                                           	jne    2e5c5 <.check_load_add_1_R15>

000000000002e5c4 <.return_load_add_1_R15>:
.return_load_add_1_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e5c4:	c3                                              	ret

000000000002e5c5 <.check_load_add_1_R15>:
.check_load_add_1_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e5c5:	4d 89 fb                                        	mov    %r15,%r11
   2e5c8:	41 83 e3 07                                     	and    $0x7,%r11d
   2e5cc:	45 39 d3                                        	cmp    %r10d,%r11d
   2e5cf:	7c f3                                           	jl     2e5c4 <.return_load_add_1_R15>
   2e5d1:	4c 89 ff                                        	mov    %r15,%rdi
   2e5d4:	e9 47 ee ff ff                                  	jmp    2d420 <__asan_report_load1_asm>

000000000002e5d9 <__asan_check_store_add_1_R15>:
__asan_check_store_add_1_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e5d9:	4d 89 fa                                        	mov    %r15,%r10
   2e5dc:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e5e0:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e5e8:	45 85 d2                                        	test   %r10d,%r10d
   2e5eb:	75 01                                           	jne    2e5ee <.check_store_add_1_R15>

000000000002e5ed <.return_store_add_1_R15>:
.return_store_add_1_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e5ed:	c3                                              	ret

000000000002e5ee <.check_store_add_1_R15>:
.check_store_add_1_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e5ee:	4d 89 fb                                        	mov    %r15,%r11
   2e5f1:	41 83 e3 07                                     	and    $0x7,%r11d
   2e5f5:	45 39 d3                                        	cmp    %r10d,%r11d
   2e5f8:	7c f3                                           	jl     2e5ed <.return_store_add_1_R15>
   2e5fa:	4c 89 ff                                        	mov    %r15,%rdi
   2e5fd:	e9 46 ee ff ff                                  	jmp    2d448 <__asan_report_store1_asm>

000000000002e602 <__asan_check_load_add_2_R15>:
__asan_check_load_add_2_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e602:	4d 89 fa                                        	mov    %r15,%r10
   2e605:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e609:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e611:	45 85 d2                                        	test   %r10d,%r10d
   2e614:	75 01                                           	jne    2e617 <.check_load_add_2_R15>

000000000002e616 <.return_load_add_2_R15>:
.return_load_add_2_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e616:	c3                                              	ret

000000000002e617 <.check_load_add_2_R15>:
.check_load_add_2_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e617:	4d 89 fb                                        	mov    %r15,%r11
   2e61a:	41 83 e3 07                                     	and    $0x7,%r11d
   2e61e:	41 83 c3 01                                     	add    $0x1,%r11d
   2e622:	45 39 d3                                        	cmp    %r10d,%r11d
   2e625:	7c ef                                           	jl     2e616 <.return_load_add_2_R15>
   2e627:	4c 89 ff                                        	mov    %r15,%rdi
   2e62a:	e9 f9 ed ff ff                                  	jmp    2d428 <__asan_report_load2_asm>

000000000002e62f <__asan_check_store_add_2_R15>:
__asan_check_store_add_2_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e62f:	4d 89 fa                                        	mov    %r15,%r10
   2e632:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e636:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e63e:	45 85 d2                                        	test   %r10d,%r10d
   2e641:	75 01                                           	jne    2e644 <.check_store_add_2_R15>

000000000002e643 <.return_store_add_2_R15>:
.return_store_add_2_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e643:	c3                                              	ret

000000000002e644 <.check_store_add_2_R15>:
.check_store_add_2_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e644:	4d 89 fb                                        	mov    %r15,%r11
   2e647:	41 83 e3 07                                     	and    $0x7,%r11d
   2e64b:	41 83 c3 01                                     	add    $0x1,%r11d
   2e64f:	45 39 d3                                        	cmp    %r10d,%r11d
   2e652:	7c ef                                           	jl     2e643 <.return_store_add_2_R15>
   2e654:	4c 89 ff                                        	mov    %r15,%rdi
   2e657:	e9 f4 ed ff ff                                  	jmp    2d450 <__asan_report_store2_asm>

000000000002e65c <__asan_check_load_add_4_R15>:
__asan_check_load_add_4_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e65c:	4d 89 fa                                        	mov    %r15,%r10
   2e65f:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e663:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e66b:	45 85 d2                                        	test   %r10d,%r10d
   2e66e:	75 01                                           	jne    2e671 <.check_load_add_4_R15>

000000000002e670 <.return_load_add_4_R15>:
.return_load_add_4_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e670:	c3                                              	ret

000000000002e671 <.check_load_add_4_R15>:
.check_load_add_4_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e671:	4d 89 fb                                        	mov    %r15,%r11
   2e674:	41 83 e3 07                                     	and    $0x7,%r11d
   2e678:	41 83 c3 03                                     	add    $0x3,%r11d
   2e67c:	45 39 d3                                        	cmp    %r10d,%r11d
   2e67f:	7c ef                                           	jl     2e670 <.return_load_add_4_R15>
   2e681:	4c 89 ff                                        	mov    %r15,%rdi
   2e684:	e9 a7 ed ff ff                                  	jmp    2d430 <__asan_report_load4_asm>

000000000002e689 <__asan_check_store_add_4_R15>:
__asan_check_store_add_4_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e689:	4d 89 fa                                        	mov    %r15,%r10
   2e68c:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e690:	45 0f be 92 00 80 ff 7f                         	movsbl 0x7fff8000(%r10),%r10d
   2e698:	45 85 d2                                        	test   %r10d,%r10d
   2e69b:	75 01                                           	jne    2e69e <.check_store_add_4_R15>

000000000002e69d <.return_store_add_4_R15>:
.return_store_add_4_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e69d:	c3                                              	ret

000000000002e69e <.check_store_add_4_R15>:
.check_store_add_4_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e69e:	4d 89 fb                                        	mov    %r15,%r11
   2e6a1:	41 83 e3 07                                     	and    $0x7,%r11d
   2e6a5:	41 83 c3 03                                     	add    $0x3,%r11d
   2e6a9:	45 39 d3                                        	cmp    %r10d,%r11d
   2e6ac:	7c ef                                           	jl     2e69d <.return_store_add_4_R15>
   2e6ae:	4c 89 ff                                        	mov    %r15,%rdi
   2e6b1:	e9 a2 ed ff ff                                  	jmp    2d458 <__asan_report_store4_asm>

000000000002e6b6 <__asan_check_load_add_8_R15>:
__asan_check_load_add_8_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e6b6:	4d 89 fa                                        	mov    %r15,%r10
   2e6b9:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e6bd:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2e6c5:	75 01                                           	jne    2e6c8 <.fail_load_add_8_R15>
   2e6c7:	c3                                              	ret

000000000002e6c8 <.fail_load_add_8_R15>:
.fail_load_add_8_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e6c8:	4c 89 ff                                        	mov    %r15,%rdi
   2e6cb:	e9 68 ed ff ff                                  	jmp    2d438 <__asan_report_load8_asm>

000000000002e6d0 <__asan_check_store_add_8_R15>:
__asan_check_store_add_8_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e6d0:	4d 89 fa                                        	mov    %r15,%r10
   2e6d3:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e6d7:	41 80 ba 00 80 ff 7f 00                         	cmpb   $0x0,0x7fff8000(%r10)
   2e6df:	75 01                                           	jne    2e6e2 <.fail_store_add_8_R15>
   2e6e1:	c3                                              	ret

000000000002e6e2 <.fail_store_add_8_R15>:
.fail_store_add_8_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e6e2:	4c 89 ff                                        	mov    %r15,%rdi
   2e6e5:	e9 76 ed ff ff                                  	jmp    2d460 <__asan_report_store8_asm>

000000000002e6ea <__asan_check_load_add_16_R15>:
__asan_check_load_add_16_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e6ea:	4d 89 fa                                        	mov    %r15,%r10
   2e6ed:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e6f1:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2e6fa:	75 01                                           	jne    2e6fd <.fail_load_add_16_R15>
   2e6fc:	c3                                              	ret

000000000002e6fd <.fail_load_add_16_R15>:
.fail_load_add_16_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e6fd:	4c 89 ff                                        	mov    %r15,%rdi
   2e700:	e9 3b ed ff ff                                  	jmp    2d440 <__asan_report_load16_asm>

000000000002e705 <__asan_check_store_add_16_R15>:
__asan_check_store_add_16_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e705:	4d 89 fa                                        	mov    %r15,%r10
   2e708:	49 c1 ea 03                                     	shr    $0x3,%r10
   2e70c:	66 41 83 ba 00 80 ff 7f 00                      	cmpw   $0x0,0x7fff8000(%r10)
   2e715:	75 01                                           	jne    2e718 <.fail_store_add_16_R15>
   2e717:	c3                                              	ret

000000000002e718 <.fail_store_add_16_R15>:
.fail_store_add_16_R15():
/root/llvm-project/compiler-rt/lib/asan/asan_rtl_x86_64.S:147
   2e718:	4c 89 ff                                        	mov    %r15,%rdi
   2e71b:	e9 48 ed ff ff                                  	jmp    2d468 <__asan_report_store16_asm>

000000000002e720 <_ZN6__asan9FakeStack17AddrIsInFakeStackEm>:
_ZN6__asan9FakeStack17AddrIsInFakeStackEm():
/root/llvm-project/compiler-rt/lib/asan/asan_fake_stack.h:158
   2e720:	48 83 ec 18                                     	sub    $0x18,%rsp
   2e724:	48 b8 aa aa aa aa aa aa aa aa                   	movabs $0xaaaaaaaaaaaaaaaa,%rax
/root/llvm-project/compiler-rt/lib/asan/asan_fake_stack.h:159
   2e72e:	48 89 44 24 10                                  	mov    %rax,0x10(%rsp)
   2e733:	48 89 44 24 08                                  	mov    %rax,0x8(%rsp)
   2e738:	48 8d 54 24 10                                  	lea    0x10(%rsp),%rdx
   2e73d:	48 8d 4c 24 08                                  	lea    0x8(%rsp),%rcx
/root/llvm-project/compiler-rt/lib/asan/asan_fake_stack.h:160
   2e742:	e8 69 dc 00 00                                  	call   3c3b0 <_ZN6__asan9FakeStack17AddrIsInFakeStackEmPmS1_>
   2e747:	48 83 c4 18                                     	add    $0x18,%rsp
   2e74b:	c3                                              	ret
   2e74c:	0f 1f 40 00                                     	nopl   0x0(%rax)

000000000002e750 <_ZNK6__asan20AsanMapUnmapCallback5OnMapEmm>:
_ZNK6__asan20AsanMapUnmapCallback5OnMapEmm():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:286
   2e750:	53                                              	push   %rbx
   2e751:	48 89 d3                                        	mov    %rdx,%rbx
   2e754:	48 89 f7                                        	mov    %rsi,%rdi
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:287
   2e757:	48 89 d6                                        	mov    %rdx,%rsi
   2e75a:	ba fa 00 00 00                                  	mov    $0xfa,%edx
   2e75f:	e8 7c f1 0a 00                                  	call   dd8e0 <_ZN6__asan12PoisonShadowEmmh>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:289
   2e764:	e8 c7 95 0b 00                                  	call   e7d30 <_ZN6__asan21GetCurrentThreadStatsEv>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:290
   2e769:	f3 0f 6f 40 48                                  	movdqu 0x48(%rax),%xmm0
   2e76e:	66 48 0f 6e cb                                  	movq   %rbx,%xmm1
   2e773:	66 0f 6f 15 95 f8 0e 00                         	movdqa 0xef895(%rip),%xmm2        # 11e010 <_IO_stdin_used+0x10>
   2e77b:	66 0f 6c d1                                     	punpcklqdq %xmm1,%xmm2
   2e77f:	66 0f d4 d0                                     	paddq  %xmm0,%xmm2
   2e783:	f3 0f 7f 50 48                                  	movdqu %xmm2,0x48(%rax)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:292
   2e788:	5b                                              	pop    %rbx
   2e789:	c3                                              	ret
   2e78a:	66 0f 1f 44 00 00                               	nopw   0x0(%rax,%rax,1)

000000000002e790 <_ZNK6__asan20AsanMapUnmapCallback14OnMapSecondaryEmmmm>:
_ZNK6__asan20AsanMapUnmapCallback14OnMapSecondaryEmmmm():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:295
   2e790:	41 57                                           	push   %r15
   2e792:	41 56                                           	push   %r14
   2e794:	53                                              	push   %rbx
   2e795:	48 89 d3                                        	mov    %rdx,%rbx
   2e798:	49 89 f6                                        	mov    %rsi,%r14
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:296
   2e79b:	4d 8d 3c 08                                     	lea    (%r8,%rcx,1),%r15
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:478
   2e79f:	49 83 e7 f8                                     	and    $0xfffffffffffffff8,%r15
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:474
   2e7a3:	48 8d 71 07                                     	lea    0x7(%rcx),%rsi
RoundUpTo():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:474
   2e7a7:	48 83 e6 f8                                     	and    $0xfffffffffffffff8,%rsi
_ZNK6__asan20AsanMapUnmapCallback14OnMapSecondaryEmmmm():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:301
   2e7ab:	4c 29 f6                                        	sub    %r14,%rsi
   2e7ae:	4c 89 f7                                        	mov    %r14,%rdi
   2e7b1:	ba fa 00 00 00                                  	mov    $0xfa,%edx
   2e7b6:	e8 25 f1 0a 00                                  	call   dd8e0 <_ZN6__asan12PoisonShadowEmmh>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:302
   2e7bb:	49 01 de                                        	add    %rbx,%r14
   2e7be:	4d 29 fe                                        	sub    %r15,%r14
   2e7c1:	4c 89 ff                                        	mov    %r15,%rdi
   2e7c4:	4c 89 f6                                        	mov    %r14,%rsi
   2e7c7:	ba fa 00 00 00                                  	mov    $0xfa,%edx
   2e7cc:	e8 0f f1 0a 00                                  	call   dd8e0 <_ZN6__asan12PoisonShadowEmmh>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:304
   2e7d1:	e8 5a 95 0b 00                                  	call   e7d30 <_ZN6__asan21GetCurrentThreadStatsEv>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:305
   2e7d6:	f3 0f 6f 40 48                                  	movdqu 0x48(%rax),%xmm0
   2e7db:	66 48 0f 6e cb                                  	movq   %rbx,%xmm1
   2e7e0:	66 0f 6f 15 28 f8 0e 00                         	movdqa 0xef828(%rip),%xmm2        # 11e010 <_IO_stdin_used+0x10>
   2e7e8:	66 0f 6c d1                                     	punpcklqdq %xmm1,%xmm2
   2e7ec:	66 0f d4 d0                                     	paddq  %xmm0,%xmm2
   2e7f0:	f3 0f 7f 50 48                                  	movdqu %xmm2,0x48(%rax)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:307
   2e7f5:	5b                                              	pop    %rbx
   2e7f6:	41 5e                                           	pop    %r14
   2e7f8:	41 5f                                           	pop    %r15
   2e7fa:	c3                                              	ret
   2e7fb:	0f 1f 44 00 00                                  	nopl   0x0(%rax,%rax,1)

000000000002e800 <_ZNK6__asan20AsanMapUnmapCallback7OnUnmapEmm>:
_ZNK6__asan20AsanMapUnmapCallback7OnUnmapEmm():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:309
   2e800:	41 56                                           	push   %r14
   2e802:	53                                              	push   %rbx
   2e803:	50                                              	push   %rax
   2e804:	48 89 d3                                        	mov    %rdx,%rbx
   2e807:	49 89 f6                                        	mov    %rsi,%r14
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:310
   2e80a:	48 89 f7                                        	mov    %rsi,%rdi
   2e80d:	48 89 d6                                        	mov    %rdx,%rsi
   2e810:	31 d2                                           	xor    %edx,%edx
   2e812:	e8 c9 f0 0a 00                                  	call   dd8e0 <_ZN6__asan12PoisonShadowEmmh>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:313
   2e817:	4c 89 f7                                        	mov    %r14,%rdi
   2e81a:	48 89 de                                        	mov    %rbx,%rsi
   2e81d:	e8 3e c7 0a 00                                  	call   daf60 <_ZN6__asan29FlushUnneededASanShadowMemoryEmm>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:315
   2e822:	e8 09 95 0b 00                                  	call   e7d30 <_ZN6__asan21GetCurrentThreadStatsEv>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:316
   2e827:	f3 0f 6f 40 58                                  	movdqu 0x58(%rax),%xmm0
   2e82c:	66 48 0f 6e cb                                  	movq   %rbx,%xmm1
   2e831:	66 0f 6f 15 d7 f7 0e 00                         	movdqa 0xef7d7(%rip),%xmm2        # 11e010 <_IO_stdin_used+0x10>
   2e839:	66 0f 6c d1                                     	punpcklqdq %xmm1,%xmm2
   2e83d:	66 0f d4 d0                                     	paddq  %xmm0,%xmm2
   2e841:	f3 0f 7f 50 58                                  	movdqu %xmm2,0x58(%rax)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:318
   2e846:	48 83 c4 08                                     	add    $0x8,%rsp
   2e84a:	5b                                              	pop    %rbx
   2e84b:	41 5e                                           	pop    %r14
   2e84d:	c3                                              	ret
   2e84e:	66 90                                           	xchg   %ax,%ax

000000000002e850 <_ZN6__asan17GetAllocatorCacheEPNS_28AsanThreadLocalMallocStorageE>:
_ZN6__asan17GetAllocatorCacheEPNS_28AsanThreadLocalMallocStorageE():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:324
   2e850:	48 85 ff                                        	test   %rdi,%rdi
   2e853:	74 08                                           	je     2e85d <_ZN6__asan17GetAllocatorCacheEPNS_28AsanThreadLocalMallocStorageE+0xd>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:325
   2e855:	48 83 ef 80                                     	sub    $0xffffffffffffff80,%rdi
   2e859:	48 89 f8                                        	mov    %rdi,%rax
   2e85c:	c3                                              	ret
   2e85d:	50                                              	push   %rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:324
   2e85e:	48 8d 3d 5b fb 0e 00                            	lea    0xefb5b(%rip),%rdi        # 11e3c0 <_ZN11__sanitizerL10kExtraRegsE+0x70>
   2e865:	48 8d 15 8f fb 0e 00                            	lea    0xefb8f(%rip),%rdx        # 11e3fb <_ZN11__sanitizerL10kExtraRegsE+0xab>
   2e86c:	be 44 01 00 00                                  	mov    $0x144,%esi
   2e871:	31 c9                                           	xor    %ecx,%ecx
   2e873:	45 31 c0                                        	xor    %r8d,%r8d
   2e876:	e8 a5 25 0d 00                                  	call   100e20 <_ZN11__sanitizer11CheckFailedEPKciS1_yy>
   2e87b:	0f 1f 44 00 00                                  	nopl   0x0(%rax,%rax,1)

000000000002e880 <_ZN6__asan18GetQuarantineCacheEPNS_28AsanThreadLocalMallocStorageE>:
_ZN6__asan18GetQuarantineCacheEPNS_28AsanThreadLocalMallocStorageE():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:329
   2e880:	48 85 ff                                        	test   %rdi,%rdi
   2e883:	74 04                                           	je     2e889 <_ZN6__asan18GetQuarantineCacheEPNS_28AsanThreadLocalMallocStorageE+0x9>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:331
   2e885:	48 89 f8                                        	mov    %rdi,%rax
   2e888:	c3                                              	ret
   2e889:	50                                              	push   %rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:329
   2e88a:	48 8d 3d 2f fb 0e 00                            	lea    0xefb2f(%rip),%rdi        # 11e3c0 <_ZN11__sanitizerL10kExtraRegsE+0x70>
   2e891:	48 8d 15 63 fb 0e 00                            	lea    0xefb63(%rip),%rdx        # 11e3fb <_ZN11__sanitizerL10kExtraRegsE+0xab>
   2e898:	be 49 01 00 00                                  	mov    $0x149,%esi
   2e89d:	31 c9                                           	xor    %ecx,%ecx
   2e89f:	45 31 c0                                        	xor    %r8d,%r8d
   2e8a2:	e8 79 25 0d 00                                  	call   100e20 <_ZN11__sanitizer11CheckFailedEPKciS1_yy>
   2e8a7:	66 0f 1f 84 00 00 00 00 00                      	nopw   0x0(%rax,%rax,1)

000000000002e8b0 <_ZN6__asan16AllocatorOptions7SetFromEPKNS_5FlagsEPKN11__sanitizer11CommonFlagsE>:
_ZN6__asan16AllocatorOptions7SetFromEPKNS_5FlagsEPKN11__sanitizer11CommonFlagsE():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:335
   2e8b0:	48 8b 46 04                                     	mov    0x4(%rsi),%rax
   2e8b4:	48 89 07                                        	mov    %rax,(%rdi)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:337
   2e8b7:	f3 0f 7e 46 0c                                  	movq   0xc(%rsi),%xmm0
   2e8bc:	f2 0f 70 c0 e8                                  	pshuflw $0xe8,%xmm0,%xmm0
   2e8c1:	66 0f 7e 47 08                                  	movd   %xmm0,0x8(%rdi)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:339
   2e8c6:	0f b6 42 4c                                     	movzbl 0x4c(%rdx),%eax
   2e8ca:	88 47 0c                                        	mov    %al,0xc(%rdi)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:340
   2e8cd:	0f b6 46 5c                                     	movzbl 0x5c(%rsi),%eax
   2e8d1:	88 47 0d                                        	mov    %al,0xd(%rdi)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:341
   2e8d4:	8b 82 b4 00 00 00                               	mov    0xb4(%rdx),%eax
   2e8da:	89 47 10                                        	mov    %eax,0x10(%rdi)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:342
   2e8dd:	c3                                              	ret
   2e8de:	66 90                                           	xchg   %ax,%ax

000000000002e8e0 <_ZN6__asan16AllocatorOptions6CopyToEPNS_5FlagsEPN11__sanitizer11CommonFlagsE>:
_ZN6__asan16AllocatorOptions6CopyToEPNS_5FlagsEPN11__sanitizer11CommonFlagsE():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:345
   2e8e0:	48 8b 07                                        	mov    (%rdi),%rax
   2e8e3:	48 89 46 04                                     	mov    %rax,0x4(%rsi)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:347
   2e8e7:	66 0f 6e 47 08                                  	movd   0x8(%rdi),%xmm0
   2e8ec:	66 0f ef c9                                     	pxor   %xmm1,%xmm1
   2e8f0:	66 0f 61 c1                                     	punpcklwd %xmm1,%xmm0
   2e8f4:	66 0f d6 46 0c                                  	movq   %xmm0,0xc(%rsi)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:349
   2e8f9:	80 7f 0c 00                                     	cmpb   $0x0,0xc(%rdi)
   2e8fd:	0f 95 42 4c                                     	setne  0x4c(%rdx)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:350
   2e901:	80 7f 0d 00                                     	cmpb   $0x0,0xd(%rdi)
   2e905:	0f 95 46 5c                                     	setne  0x5c(%rsi)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:351
   2e909:	8b 47 10                                        	mov    0x10(%rdi),%eax
   2e90c:	89 82 b4 00 00 00                               	mov    %eax,0xb4(%rdx)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:352
   2e912:	c3                                              	ret
   2e913:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nopw 0x0(%rax,%rax,1)
   2e91d:	0f 1f 00                                        	nopl   (%rax)

000000000002e920 <_ZNK6__asan13AsanChunkView7IsValidEv>:
_ZNK6__asan13AsanChunkView7IsValidEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:983
   2e920:	48 8b 07                                        	mov    (%rdi),%rax
   2e923:	48 85 c0                                        	test   %rax,%rax
   2e926:	74 09                                           	je     2e931 <_ZNK6__asan13AsanChunkView7IsValidEv+0x11>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2e928:	0f b6 00                                        	movzbl (%rax),%eax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:983
   2e92b:	84 c0                                           	test   %al,%al
   2e92d:	0f 95 c0                                        	setne  %al
   2e930:	c3                                              	ret
   2e931:	31 c0                                           	xor    %eax,%eax
   2e933:	c3                                              	ret
   2e934:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nopw 0x0(%rax,%rax,1)
   2e93e:	66 90                                           	xchg   %ax,%ax

000000000002e940 <_ZNK6__asan13AsanChunkView11IsAllocatedEv>:
_ZNK6__asan13AsanChunkView11IsAllocatedEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:987
   2e940:	48 8b 07                                        	mov    (%rdi),%rax
   2e943:	48 85 c0                                        	test   %rax,%rax
   2e946:	74 09                                           	je     2e951 <_ZNK6__asan13AsanChunkView11IsAllocatedEv+0x11>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2e948:	0f b6 00                                        	movzbl (%rax),%eax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:987
   2e94b:	3c 02                                           	cmp    $0x2,%al
   2e94d:	0f 94 c0                                        	sete   %al
   2e950:	c3                                              	ret
   2e951:	31 c0                                           	xor    %eax,%eax
   2e953:	c3                                              	ret
   2e954:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nopw 0x0(%rax,%rax,1)
   2e95e:	66 90                                           	xchg   %ax,%ax

000000000002e960 <_ZNK6__asan13AsanChunkView13IsQuarantinedEv>:
_ZNK6__asan13AsanChunkView13IsQuarantinedEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:991
   2e960:	48 8b 07                                        	mov    (%rdi),%rax
   2e963:	48 85 c0                                        	test   %rax,%rax
   2e966:	74 09                                           	je     2e971 <_ZNK6__asan13AsanChunkView13IsQuarantinedEv+0x11>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2e968:	0f b6 00                                        	movzbl (%rax),%eax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:991
   2e96b:	3c 03                                           	cmp    $0x3,%al
   2e96d:	0f 94 c0                                        	sete   %al
   2e970:	c3                                              	ret
   2e971:	31 c0                                           	xor    %eax,%eax
   2e973:	c3                                              	ret
   2e974:	0f 1f 40 00                                     	nopl   0x0(%rax)

000000000002e978 <_ZNK6__asan13AsanChunkView3BegEv>:
_ZNK6__asan13AsanChunkView3BegEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:994
   2e978:	48 8b 07                                        	mov    (%rdi),%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:167
   2e97b:	48 83 c0 10                                     	add    $0x10,%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:994
   2e97f:	c3                                              	ret

000000000002e980 <_ZNK6__asan13AsanChunkView3EndEv>:
_ZNK6__asan13AsanChunkView3EndEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:994
   2e980:	48 8b 07                                        	mov    (%rdi),%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:115
   2e983:	0f b7 48 02                                     	movzwl 0x2(%rax),%ecx
UsedSize():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:115
   2e987:	48 c1 e1 20                                     	shl    $0x20,%rcx
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:116
   2e98b:	8b 50 04                                        	mov    0x4(%rax),%edx
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:115
   2e98e:	48 09 ca                                        	or     %rcx,%rdx
_ZNK6__asan13AsanChunkView3EndEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:995
   2e991:	48 01 d0                                        	add    %rdx,%rax
   2e994:	48 83 c0 10                                     	add    $0x10,%rax
   2e998:	c3                                              	ret
   2e999:	0f 1f 80 00 00 00 00                            	nopl   0x0(%rax)

000000000002e9a0 <_ZNK6__asan13AsanChunkView8UsedSizeEv>:
_ZNK6__asan13AsanChunkView8UsedSizeEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:996
   2e9a0:	48 8b 07                                        	mov    (%rdi),%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:115
   2e9a3:	0f b7 48 02                                     	movzwl 0x2(%rax),%ecx
UsedSize():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:115
   2e9a7:	48 c1 e1 20                                     	shl    $0x20,%rcx
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:116
   2e9ab:	8b 40 04                                        	mov    0x4(%rax),%eax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:115
   2e9ae:	48 09 c8                                        	or     %rcx,%rax
_ZNK6__asan13AsanChunkView8UsedSizeEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:996
   2e9b1:	c3                                              	ret
   2e9b2:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nopw 0x0(%rax,%rax,1)
   2e9bc:	0f 1f 40 00                                     	nopl   0x0(%rax)

000000000002e9c0 <_ZNK6__asan13AsanChunkView22UserRequestedAlignmentEv>:
_ZNK6__asan13AsanChunkView22UserRequestedAlignmentEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:998
   2e9c0:	48 8b 07                                        	mov    (%rdi),%rax
   2e9c3:	0f b6 50 01                                     	movzbl 0x1(%rax),%edx
   2e9c7:	c0 ea 04                                        	shr    $0x4,%dl
   2e9ca:	80 e2 07                                        	and    $0x7,%dl
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:489
   2e9cd:	8d 4a 02                                        	lea    0x2(%rdx),%ecx
ComputeUserAlignment():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:489
   2e9d0:	be 01 00 00 00                                  	mov    $0x1,%esi
   2e9d5:	d3 e6                                           	shl    %cl,%esi
   2e9d7:	31 c0                                           	xor    %eax,%eax
   2e9d9:	84 d2                                           	test   %dl,%dl
   2e9db:	0f 45 c6                                        	cmovne %esi,%eax
_ZNK6__asan13AsanChunkView22UserRequestedAlignmentEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:998
   2e9de:	c3                                              	ret
   2e9df:	90                                              	nop

000000000002e9e0 <_ZNK6__asan13AsanChunkView8AllocTidEv>:
_ZNK6__asan13AsanChunkView8AllocTidEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1004
   2e9e0:	48 8b 07                                        	mov    (%rdi),%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2e9e3:	48 8b 40 08                                     	mov    0x8(%rax),%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:69
   2e9e7:	48 c1 e8 20                                     	shr    $0x20,%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1005
   2e9eb:	c3                                              	ret
   2e9ec:	0f 1f 40 00                                     	nopl   0x0(%rax)

000000000002e9f0 <_ZNK6__asan13AsanChunkView7FreeTidEv>:
_ZNK6__asan13AsanChunkView7FreeTidEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1008
   2e9f0:	b8 ff ff ff ff                                  	mov    $0xffffffff,%eax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:991
   2e9f5:	48 8b 0f                                        	mov    (%rdi),%rcx
IsQuarantined():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:991
   2e9f8:	48 85 c9                                        	test   %rcx,%rcx
   2e9fb:	74 10                                           	je     2ea0d <_ZNK6__asan13AsanChunkView7FreeTidEv+0x1d>
_ZNK6__asan13AsanChunkView7FreeTidEv():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2e9fd:	0f b6 11                                        	movzbl (%rcx),%edx
IsQuarantined():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:991
   2ea00:	80 fa 03                                        	cmp    $0x3,%dl
_ZNK6__asan13AsanChunkView7FreeTidEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1009
   2ea03:	75 08                                           	jne    2ea0d <_ZNK6__asan13AsanChunkView7FreeTidEv+0x1d>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2ea05:	48 8b 41 10                                     	mov    0x10(%rcx),%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:69
   2ea09:	48 c1 e8 20                                     	shr    $0x20,%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1015
   2ea0d:	c3                                              	ret
   2ea0e:	66 90                                           	xchg   %ax,%ax

000000000002ea10 <_ZNK6__asan13AsanChunkView12GetAllocTypeEv>:
_ZNK6__asan13AsanChunkView12GetAllocTypeEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1018
   2ea10:	48 8b 07                                        	mov    (%rdi),%rax
   2ea13:	0f b6 40 01                                     	movzbl 0x1(%rax),%eax
   2ea17:	83 e0 03                                        	and    $0x3,%eax
   2ea1a:	c3                                              	ret
   2ea1b:	0f 1f 44 00 00                                  	nopl   0x0(%rax,%rax,1)

000000000002ea20 <_ZNK6__asan13AsanChunkView15GetAllocStackIdEv>:
_ZNK6__asan13AsanChunkView15GetAllocStackIdEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1024
   2ea20:	48 8b 07                                        	mov    (%rdi),%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2ea23:	48 8b 40 08                                     	mov    0x8(%rax),%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1025
   2ea27:	c3                                              	ret
   2ea28:	0f 1f 84 00 00 00 00 00                         	nopl   0x0(%rax,%rax,1)

000000000002ea30 <_ZNK6__asan13AsanChunkView14GetFreeStackIdEv>:
_ZNK6__asan13AsanChunkView14GetFreeStackIdEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:991
   2ea30:	48 8b 0f                                        	mov    (%rdi),%rcx
   2ea33:	31 c0                                           	xor    %eax,%eax
   2ea35:	48 85 c9                                        	test   %rcx,%rcx
   2ea38:	74 0c                                           	je     2ea46 <_ZNK6__asan13AsanChunkView14GetFreeStackIdEv+0x16>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2ea3a:	0f b6 11                                        	movzbl (%rcx),%edx
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:991
   2ea3d:	80 fa 03                                        	cmp    $0x3,%dl
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1029
   2ea40:	75 04                                           	jne    2ea46 <_ZNK6__asan13AsanChunkView14GetFreeStackIdEv+0x16>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2ea42:	48 8b 41 10                                     	mov    0x10(%rcx),%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1035
   2ea46:	c3                                              	ret
   2ea47:	66 0f 1f 84 00 00 00 00 00                      	nopw   0x0(%rax,%rax,1)

000000000002ea50 <_ZN6__asan19InitializeAllocatorERKNS_16AllocatorOptionsE>:
_ZN6__asan19InitializeAllocatorERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1037
   2ea50:	48 89 fe                                        	mov    %rdi,%rsi
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1038
   2ea53:	48 8d 3d ee d0 12 00                            	lea    0x12d0ee(%rip),%rdi        # 15bb48 <_ZN6__asanL8instanceE>
   2ea5a:	e9 01 00 00 00                                  	jmp    2ea60 <_ZN6__asan9Allocator21InitLinkerInitializedERKNS_16AllocatorOptionsE>
   2ea5f:	90                                              	nop

000000000002ea60 <_ZN6__asan9Allocator21InitLinkerInitializedERKNS_16AllocatorOptionsE>:
_ZN6__asan9Allocator21InitLinkerInitializedERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:394
   2ea60:	41 57                                           	push   %r15
   2ea62:	41 56                                           	push   %r14
   2ea64:	53                                              	push   %rbx
   2ea65:	49 89 f6                                        	mov    %rsi,%r14
   2ea68:	48 89 fb                                        	mov    %rdi,%rbx
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:395
   2ea6b:	31 ff                                           	xor    %edi,%edi
   2ea6d:	80 7e 0c 00                                     	cmpb   $0x0,0xc(%rsi)
   2ea71:	40 0f 95 c7                                     	setne  %dil
   2ea75:	e8 d6 d8 0b 00                                  	call   ec350 <_ZN11__sanitizer25SetAllocatorMayReturnNullEb>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:396
   2ea7a:	41 8b 76 10                                     	mov    0x10(%r14),%esi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_combined.h:34
   2ea7e:	48 89 df                                        	mov    %rbx,%rdi
   2ea81:	31 d2                                           	xor    %edx,%edx
   2ea83:	e8 b8 2e 00 00                                  	call   31940 <_ZN11__sanitizer20SizeClassAllocator64IN6__asan4AP64INS_21LocalAddressSpaceViewEEEE4InitEim>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:71
   2ea88:	4c 8d 3d c1 e5 1c 00                            	lea    0x1ce5c1(%rip),%r15        # 1fd050 <_ZN11__sanitizer14PageSizeCachedE>
GetPageSizeCached():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:71
   2ea8f:	49 8b 07                                        	mov    (%r15),%rax
   2ea92:	48 85 c0                                        	test   %rax,%rax
   2ea95:	75 08                                           	jne    2ea9f <_ZN6__asan9Allocator21InitLinkerInitializedERKNS_16AllocatorOptionsE+0x3f>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:72
   2ea97:	e8 84 86 0c 00                                  	call   f7120 <_ZN11__sanitizer11GetPageSizeEv>
   2ea9c:	49 89 07                                        	mov    %rax,(%r15)
_ZN6__asan9Allocator21InitLinkerInitializedERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:76
   2ea9f:	48 89 43 40                                     	mov    %rax,0x40(%rbx)
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:77
   2eaa3:	48 8d 7b 50                                     	lea    0x50(%rbx),%rdi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:36
   2eaa7:	48 8d 05 b2 a6 12 00                            	lea    0x12a6b2(%rip),%rax        # 159160 <_ZN11__sanitizer22SecondaryAllocatorNameE>
   2eaae:	48 8b 10                                        	mov    (%rax),%rdx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:35
   2eab1:	be 00 00 80 00                                  	mov    $0x800000,%esi
   2eab6:	31 c9                                           	xor    %ecx,%ecx
   2eab8:	e8 a3 4b 0d 00                                  	call   103660 <_ZN11__sanitizer20ReservedAddressRange4InitEmPKcm>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:37
   2eabd:	48 85 c0                                        	test   %rax,%rax
   2eac0:	0f 84 c1 00 00 00                               	je     2eb87 <_ZN6__asan9Allocator21InitLinkerInitializedERKNS_16AllocatorOptionsE+0x127>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:77
   2eac6:	48 89 43 48                                     	mov    %rax,0x48(%rbx)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:385
   2eaca:	48 89 df                                        	mov    %rbx,%rdi
   2eacd:	4c 89 f6                                        	mov    %r14,%rsi
   2ead0:	e8 2b 32 00 00                                  	call   31d00 <_ZNK6__asan9Allocator12CheckOptionsERKNS_16AllocatorOptionsE>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:386
   2ead5:	41 8b 06                                        	mov    (%r14),%eax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:387
   2ead8:	41 8b 4e 04                                     	mov    0x4(%r14),%ecx
   2eadc:	48 85 c9                                        	test   %rcx,%rcx
   2eadf:	0f 95 c2                                        	setne  %dl
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:83
   2eae2:	48 89 ce                                        	mov    %rcx,%rsi
   2eae5:	48 09 c6                                        	or     %rax,%rsi
   2eae8:	40 0f 94 c6                                     	sete   %sil
   2eaec:	40 08 d6                                        	or     %dl,%sil
   2eaef:	0f 84 af 00 00 00                               	je     2eba4 <_ZN6__asan9Allocator21InitLinkerInitializedERKNS_16AllocatorOptionsE+0x144>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:387
   2eaf5:	48 c1 e1 0a                                     	shl    $0xa,%rcx
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:386
   2eaf9:	48 c1 e0 14                                     	shl    $0x14,%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2eafd:	48 89 83 18 03 00 00                            	mov    %rax,0x318(%rbx)
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:86
   2eb04:	48 ba 9a 99 99 99 99 99 99 19                   	movabs $0x199999999999999a,%rdx
   2eb0e:	48 f7 e2                                        	mul    %rdx
   2eb11:	48 8d 04 d2                                     	lea    (%rdx,%rdx,8),%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2eb15:	48 89 83 20 03 00 00                            	mov    %rax,0x320(%rbx)
   2eb1c:	48 89 8b 28 03 00 00                            	mov    %rcx,0x328(%rbx)
   2eb23:	c6 83 70 03 00 00 00                            	movb   $0x0,0x370(%rbx)
   2eb2a:	c6 83 71 03 00 00 00                            	movb   $0x0,0x371(%rbx)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:388
   2eb31:	41 0f b6 46 0d                                  	movzbl 0xd(%r14),%eax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2eb36:	88 83 8c df 00 00                               	mov    %al,0xdf8c(%rbx)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:390
   2eb3c:	41 0f b7 46 08                                  	movzwl 0x8(%r14),%eax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2eb41:	66 89 83 88 df 00 00                            	mov    %ax,0xdf88(%rbx)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:391
   2eb48:	41 0f b7 46 0a                                  	movzwl 0xa(%r14),%eax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2eb4d:	66 89 83 8a df 00 00                            	mov    %ax,0xdf8a(%rbx)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:398
   2eb54:	48 8d 05 7d 05 1d 00                            	lea    0x1d057d(%rip),%rax        # 1ff0d8 <_ZN11__sanitizer21common_flags_dont_useE>
   2eb5b:	48 8b 80 a8 00 00 00                            	mov    0xa8(%rax),%rax
   2eb62:	48 89 c1                                        	mov    %rax,%rcx
   2eb65:	48 c1 e1 14                                     	shl    $0x14,%rcx
   2eb69:	48 85 c0                                        	test   %rax,%rax
   2eb6c:	48 b8 00 00 00 00 00 01 00 00                   	movabs $0x10000000000,%rax
   2eb76:	48 0f 45 c1                                     	cmovne %rcx,%rax
   2eb7a:	48 89 83 80 df 00 00                            	mov    %rax,0xdf80(%rbx)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:402
   2eb81:	5b                                              	pop    %rbx
   2eb82:	41 5e                                           	pop    %r14
   2eb84:	41 5f                                           	pop    %r15
   2eb86:	c3                                              	ret
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:37
   2eb87:	48 8d 3d 4e fb 0e 00                            	lea    0xefb4e(%rip),%rdi        # 11e6dc <_ZN11__sanitizerL10kExtraRegsE+0x38c>
   2eb8e:	48 8d 15 a3 fb 0e 00                            	lea    0xefba3(%rip),%rdx        # 11e738 <_ZN11__sanitizerL10kExtraRegsE+0x3e8>
   2eb95:	be 25 00 00 00                                  	mov    $0x25,%esi
   2eb9a:	31 c9                                           	xor    %ecx,%ecx
   2eb9c:	45 31 c0                                        	xor    %r8d,%r8d
   2eb9f:	e8 7c 22 0d 00                                  	call   100e20 <_ZN11__sanitizer11CheckFailedEPKciS1_yy>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:83
   2eba4:	48 8d 3d 6d fc 0e 00                            	lea    0xefc6d(%rip),%rdi        # 11e818 <_ZN11__sanitizerL10kExtraRegsE+0x4c8>
   2ebab:	48 8d 15 b9 fc 0e 00                            	lea    0xefcb9(%rip),%rdx        # 11e86b <_ZN11__sanitizerL10kExtraRegsE+0x51b>
   2ebb2:	be 53 00 00 00                                  	mov    $0x53,%esi
   2ebb7:	31 c9                                           	xor    %ecx,%ecx
   2ebb9:	45 31 c0                                        	xor    %r8d,%r8d
   2ebbc:	e8 5f 22 0d 00                                  	call   100e20 <_ZN11__sanitizer11CheckFailedEPKciS1_yy>
   2ebc1:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nopw 0x0(%rax,%rax,1)
   2ebcb:	0f 1f 44 00 00                                  	nopl   0x0(%rax,%rax,1)

000000000002ebd0 <_ZN6__asan21ReInitializeAllocatorERKNS_16AllocatorOptionsE>:
_ZN6__asan21ReInitializeAllocatorERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1041
   2ebd0:	48 89 fe                                        	mov    %rdi,%rsi
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1042
   2ebd3:	48 8d 3d 6e cf 12 00                            	lea    0x12cf6e(%rip),%rdi        # 15bb48 <_ZN6__asanL8instanceE>
   2ebda:	e9 01 00 00 00                                  	jmp    2ebe0 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE>
   2ebdf:	90                                              	nop

000000000002ebe0 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE>:
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:437
   2ebe0:	55                                              	push   %rbp
   2ebe1:	41 57                                           	push   %r15
   2ebe3:	41 56                                           	push   %r14
   2ebe5:	41 55                                           	push   %r13
   2ebe7:	41 54                                           	push   %r12
   2ebe9:	53                                              	push   %rbx
   2ebea:	48 83 ec 28                                     	sub    $0x28,%rsp
   2ebee:	49 89 f6                                        	mov    %rsi,%r14
   2ebf1:	48 89 fb                                        	mov    %rdi,%rbx
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:432
   2ebf4:	31 ff                                           	xor    %edi,%edi
   2ebf6:	80 7e 0c 00                                     	cmpb   $0x0,0xc(%rsi)
   2ebfa:	40 0f 95 c7                                     	setne  %dil
   2ebfe:	e8 4d d7 0b 00                                  	call   ec350 <_ZN11__sanitizer25SetAllocatorMayReturnNullEb>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:433
   2ec03:	41 8b 46 10                                     	mov    0x10(%r14),%eax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2ec07:	89 43 28                                        	mov    %eax,0x28(%rbx)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:385
   2ec0a:	48 89 df                                        	mov    %rbx,%rdi
   2ec0d:	4c 89 f6                                        	mov    %r14,%rsi
   2ec10:	e8 eb 30 00 00                                  	call   31d00 <_ZNK6__asan9Allocator12CheckOptionsERKNS_16AllocatorOptionsE>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:386
   2ec15:	41 8b 06                                        	mov    (%r14),%eax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:387
   2ec18:	41 8b 4e 04                                     	mov    0x4(%r14),%ecx
   2ec1c:	48 85 c9                                        	test   %rcx,%rcx
   2ec1f:	0f 95 c2                                        	setne  %dl
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:83
   2ec22:	48 89 ce                                        	mov    %rcx,%rsi
   2ec25:	48 09 c6                                        	or     %rax,%rsi
   2ec28:	40 0f 94 c6                                     	sete   %sil
   2ec2c:	40 08 d6                                        	or     %dl,%sil
   2ec2f:	0f 84 8f 0a 00 00                               	je     2f6c4 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0xae4>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:387
   2ec35:	48 c1 e1 0a                                     	shl    $0xa,%rcx
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:386
   2ec39:	48 c1 e0 14                                     	shl    $0x14,%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2ec3d:	48 89 83 18 03 00 00                            	mov    %rax,0x318(%rbx)
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:86
   2ec44:	48 ba 9a 99 99 99 99 99 99 19                   	movabs $0x199999999999999a,%rdx
   2ec4e:	48 f7 e2                                        	mul    %rdx
   2ec51:	48 8d 04 d2                                     	lea    (%rdx,%rdx,8),%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2ec55:	48 89 83 20 03 00 00                            	mov    %rax,0x320(%rbx)
   2ec5c:	48 89 8b 28 03 00 00                            	mov    %rcx,0x328(%rbx)
   2ec63:	c6 83 70 03 00 00 00                            	movb   $0x0,0x370(%rbx)
   2ec6a:	c6 83 71 03 00 00 00                            	movb   $0x0,0x371(%rbx)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:388
   2ec71:	41 0f b6 46 0d                                  	movzbl 0xd(%r14),%eax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2ec76:	88 83 8c df 00 00                               	mov    %al,0xdf8c(%rbx)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:390
   2ec7c:	41 0f b7 46 08                                  	movzwl 0x8(%r14),%eax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2ec81:	66 89 83 88 df 00 00                            	mov    %ax,0xdf88(%rbx)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:391
   2ec88:	41 0f b7 46 0a                                  	movzwl 0xa(%r14),%eax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2ec8d:	66 89 83 8a df 00 00                            	mov    %ax,0xdf8a(%rbx)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:441
   2ec94:	e8 37 ec 0a 00                                  	call   dd8d0 <_ZN6__asan15CanPoisonMemoryEv>
   2ec99:	84 c0                                           	test   %al,%al
   2ec9b:	0f 84 93 09 00 00                               	je     2f634 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0xa54>
   2eca1:	48 89 df                                        	mov    %rbx,%rdi
   2eca4:	49 b8 00 00 00 00 00 00 00 20                   	movabs $0x2000000000000000,%r8
   2ecae:	49 bf 00 00 00 00 00 00 00 10                   	movabs $0x1000000000000000,%r15
   2ecb8:	45 31 e4                                        	xor    %r12d,%r12d
   2ecbb:	49 8d 9f ff ff 0f 00                            	lea    0xfffff(%r15),%rbx
   2ecc2:	49 bd 00 00 00 00 00 01 00 00                   	movabs $0x10000000000,%r13
   2eccc:	49 b9 ff ff ff ff ff ff ff df                   	movabs $0xdfffffffffffffff,%r9
   2ecd6:	48 89 3c 24                                     	mov    %rdi,(%rsp)
   2ecda:	eb 11                                           	jmp    2eced <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x10d>
   2ecdc:	0f 1f 40 00                                     	nopl   0x0(%rax)
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:377
   2ece0:	49 ff c4                                        	inc    %r12
ForceLock():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:377
   2ece3:	49 83 fc 36                                     	cmp    $0x36,%r12
   2ece7:	0f 84 ae 00 00 00                               	je     2ed9b <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x1bb>
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:706
   2eced:	48 8b 4f 30                                     	mov    0x30(%rdi),%rcx
GetRegionInfo():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:707
   2ecf1:	4c 89 e2                                        	mov    %r12,%rdx
   2ecf4:	48 c1 e2 07                                     	shl    $0x7,%rdx
   2ecf8:	48 8d 2c 11                                     	lea    (%rcx,%rdx,1),%rbp
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2ecfc:	48 8b 04 11                                     	mov    (%rcx,%rdx,1),%rax
atomic_load<__sanitizer::atomic_uint64_t>():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2ed00:	4c 8d 34 11                                     	lea    (%rcx,%rdx,1),%r14
   2ed04:	49 83 c6 08                                     	add    $0x8,%r14
   2ed08:	48 c7 c2 ff ff ff ff                            	mov    $0xffffffffffffffff,%rdx
   2ed0f:	31 c9                                           	xor    %ecx,%ecx
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
   2ed11:	66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00    	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
Lock():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:172
   2ed20:	48 85 d8                                        	test   %rbx,%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:173
   2ed23:	75 14                                           	jne    2ed39 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x159>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:175
   2ed25:	4a 8d 34 38                                     	lea    (%rax,%r15,1),%rsi
   2ed29:	48 21 d6                                        	and    %rdx,%rsi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:97
   2ed2c:	f0 48 0f b1 75 00                               	lock cmpxchg %rsi,0x0(%rbp)
   2ed32:	74 ac                                           	je     2ece0 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x100>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:170
   2ed34:	48 ff c1                                        	inc    %rcx
   2ed37:	eb e7                                           	jmp    2ed20 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x140>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:176
   2ed39:	48 81 f9 dc 05 00 00                            	cmp    $0x5dc,%rcx
   2ed40:	76 33                                           	jbe    2ed75 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x195>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:179
   2ed42:	4a 8d 34 28                                     	lea    (%rax,%r13,1),%rsi
   2ed46:	48 21 d6                                        	and    %rdx,%rsi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:97
   2ed49:	f0 48 0f b1 75 00                               	lock cmpxchg %rsi,0x0(%rbp)
   2ed4f:	75 e3                                           	jne    2ed34 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x154>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:196
   2ed51:	4c 89 f7                                        	mov    %r14,%rdi
   2ed54:	e8 e7 8d 0c 00                                  	call   f7b40 <_ZN11__sanitizer9Semaphore4WaitEv>
   2ed59:	49 b9 ff ff ff ff ff ff ff df                   	movabs $0xdfffffffffffffff,%r9
   2ed63:	49 b8 00 00 00 00 00 00 00 20                   	movabs $0x2000000000000000,%r8
   2ed6d:	48 8b 3c 24                                     	mov    (%rsp),%rdi
   2ed71:	31 c9                                           	xor    %ecx,%ecx
   2ed73:	eb 11                                           	jmp    2ed86 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x1a6>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:180
   2ed75:	4c 85 c0                                        	test   %r8,%rax
   2ed78:	75 18                                           	jne    2ed92 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x1b2>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:183
   2ed7a:	4a 8d 34 00                                     	lea    (%rax,%r8,1),%rsi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:97
   2ed7e:	f0 48 0f b1 75 00                               	lock cmpxchg %rsi,0x0(%rbp)
   2ed84:	75 ae                                           	jne    2ed34 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x154>
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2ed86:	48 8b 45 00                                     	mov    0x0(%rbp),%rax
Lock():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:170
   2ed8a:	48 ff c1                                        	inc    %rcx
   2ed8d:	4c 89 ca                                        	mov    %r9,%rdx
   2ed90:	eb 8e                                           	jmp    2ed20 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x140>
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2ed92:	48 8b 45 00                                     	mov    0x0(%rbp),%rax
Lock():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:170
   2ed96:	48 ff c1                                        	inc    %rcx
   2ed99:	eb 85                                           	jmp    2ed20 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x140>
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:270
   2ed9b:	48 8d 87 a8 02 00 00                            	lea    0x2a8(%rdi),%rax
   2eda2:	48 89 44 24 18                                  	mov    %rax,0x18(%rsp)
   2eda7:	b0 01                                           	mov    $0x1,%al
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:86
   2eda9:	86 87 a8 02 00 00                               	xchg   %al,0x2a8(%rdi)
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:36
   2edaf:	84 c0                                           	test   %al,%al
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:30
   2edb1:	0f 85 2a 09 00 00                               	jne    2f6e1 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0xb01>
   2edb7:	48 8d 47 40                                     	lea    0x40(%rdi),%rax
   2edbb:	48 89 44 24 10                                  	mov    %rax,0x10(%rsp)
   2edc0:	bb 01 00 00 00                                  	mov    $0x1,%ebx
   2edc5:	eb 1b                                           	jmp    2ede2 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x202>
   2edc7:	66 0f 1f 84 00 00 00 00 00                      	nopw   0x0(%rax,%rax,1)
   2edd0:	48 8b 5c 24 20                                  	mov    0x20(%rsp),%rbx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:391
   2edd5:	48 ff c3                                        	inc    %rbx
   2edd8:	48 83 fb 36                                     	cmp    $0x36,%rbx
   2eddc:	0f 84 c8 06 00 00                               	je     2f4aa <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x8ca>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_size_class_map.h:149
   2ede2:	48 83 fb 35                                     	cmp    $0x35,%rbx
   2ede6:	0f 84 b3 06 00 00                               	je     2f49f <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x8bf>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_size_class_map.h:151
   2edec:	48 83 fb 10                                     	cmp    $0x10,%rbx
   2edf0:	77 0e                                           	ja     2ee00 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x220>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_size_class_map.h:152
   2edf2:	49 89 df                                        	mov    %rbx,%r15
   2edf5:	49 c1 e7 04                                     	shl    $0x4,%r15
   2edf9:	eb 23                                           	jmp    2ee1e <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x23e>
   2edfb:	0f 1f 44 00 00                                  	nopl   0x0(%rax,%rax,1)
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_size_class_map.h:153
   2ee00:	8d 4b f0                                        	lea    -0x10(%rbx),%ecx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_size_class_map.h:154
   2ee03:	c1 e9 02                                        	shr    $0x2,%ecx
   2ee06:	b8 00 01 00 00                                  	mov    $0x100,%eax
   2ee0b:	48 d3 e0                                        	shl    %cl,%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_size_class_map.h:155
   2ee0e:	41 89 df                                        	mov    %ebx,%r15d
   2ee11:	41 83 e7 03                                     	and    $0x3,%r15d
   2ee15:	80 c1 06                                        	add    $0x6,%cl
   2ee18:	49 d3 e7                                        	shl    %cl,%r15
   2ee1b:	49 01 c7                                        	add    %rax,%r15
   2ee1e:	48 89 d8                                        	mov    %rbx,%rax
   2ee21:	48 c1 e0 07                                     	shl    $0x7,%rax
   2ee25:	48 03 47 30                                     	add    0x30(%rdi),%rax
   2ee29:	48 89 5c 24 20                                  	mov    %rbx,0x20(%rsp)
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:394
   2ee2e:	48 c1 e3 24                                     	shl    $0x24,%rbx
   2ee32:	48 03 5f 20                                     	add    0x20(%rdi),%rbx
   2ee36:	48 8b 40 20                                     	mov    0x20(%rax),%rax
   2ee3a:	48 01 d8                                        	add    %rbx,%rax
   2ee3d:	48 89 44 24 08                                  	mov    %rax,0x8(%rsp)
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:398
   2ee42:	48 39 c3                                        	cmp    %rax,%rbx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:397
   2ee45:	73 89                                           	jae    2edd0 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x1f0>
   2ee47:	66 0f 1f 84 00 00 00 00 00                      	nopw   0x0(%rax,%rax,1)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:864
   2ee50:	48 85 db                                        	test   %rbx,%rbx
GetAsanChunk():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:864
   2ee53:	0f 84 47 01 00 00                               	je     2efa0 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x3c0>
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2ee59:	48 8b 03                                        	mov    (%rbx),%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:181
   2ee5c:	48 b9 b9 96 6e cc b9 96 6e cc                   	movabs $0xcc6e96b9cc6e96b9,%rcx
Get():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:181
   2ee66:	48 39 c8                                        	cmp    %rcx,%rax
   2ee69:	75 09                                           	jne    2ee74 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x294>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:182
   2ee6b:	4c 8b 63 08                                     	mov    0x8(%rbx),%r12
GetAsanChunk():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:867
   2ee6f:	4d 85 e4                                        	test   %r12,%r12
   2ee72:	75 28                                           	jne    2ee9c <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x2bc>
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:654
   2ee74:	48 8b 47 20                                     	mov    0x20(%rdi),%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:256
   2ee78:	48 39 d8                                        	cmp    %rbx,%rax
PointerIsMine():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:256
   2ee7b:	0f 97 c1                                        	seta   %cl
   2ee7e:	48 ba 00 00 00 00 00 04 00 00                   	movabs $0x40000000000,%rdx
   2ee88:	48 01 d0                                        	add    %rdx,%rax
   2ee8b:	48 39 d8                                        	cmp    %rbx,%rax
   2ee8e:	0f 96 c0                                        	setbe  %al
GetAsanChunk():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:868
   2ee91:	08 c8                                           	or     %cl,%al
   2ee93:	49 89 dc                                        	mov    %rbx,%r12
   2ee96:	0f 85 04 01 00 00                               	jne    2efa0 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x3c0>
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2ee9c:	41 0f b6 04 24                                  	movzbl (%r12),%eax
GetAsanChunk():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:875
   2eea1:	24 fe                                           	and    $0xfe,%al
   2eea3:	3c 02                                           	cmp    $0x2,%al
   2eea5:	0f 85 f5 00 00 00                               	jne    2efa0 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x3c0>
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:408
   2eeab:	48 89 de                                        	mov    %rbx,%rsi
   2eeae:	e8 7d 34 00 00                                  	call   32330 <_ZN11__sanitizer17CombinedAllocatorINS_20SizeClassAllocator64IN6__asan4AP64INS_21LocalAddressSpaceViewEEEEENS_33LargeMmapAllocatorPtrArrayDynamicEE24GetActuallyAllocatedSizeEPv>
   2eeb3:	48 89 c6                                        	mov    %rax,%rsi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2eeb6:	41 0f b6 04 24                                  	movzbl (%r12),%eax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:409
   2eebb:	3c 02                                           	cmp    $0x2,%al
   2eebd:	0f 85 7f 01 00 00                               	jne    2f042 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x462>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:115
   2eec3:	41 0f b7 44 24 02                               	movzwl 0x2(%r12),%eax
UsedSize():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:115
   2eec9:	48 c1 e0 20                                     	shl    $0x20,%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:116
   2eecd:	45 8b 6c 24 04                                  	mov    0x4(%r12),%r13d
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:115
   2eed2:	4c 09 e8                                        	or     %r13,%rax
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:412
   2eed5:	4d 8d 34 04                                     	lea    (%r12,%rax,1),%r14
   2eed9:	49 83 c6 10                                     	add    $0x10,%r14
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:413
   2eedd:	48 89 f5                                        	mov    %rsi,%rbp
   2eee0:	48 01 dd                                        	add    %rbx,%rbp
   2eee3:	49 39 ee                                        	cmp    %rbp,%r14
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:414
   2eee6:	0f 87 56 01 00 00                               	ja     2f042 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x462>
   2eeec:	49 8d 4c 24 10                                  	lea    0x10(%r12),%rcx
   2eef1:	48 89 c8                                        	mov    %rcx,%rax
   2eef4:	48 29 d8                                        	sub    %rbx,%rax
   2eef7:	0f 86 45 01 00 00                               	jbe    2f042 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x462>
   2eefd:	4c 39 f1                                        	cmp    %r14,%rcx
   2ef00:	0f 83 3c 01 00 00                               	jae    2f042 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x462>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:416
   2ef06:	48 89 df                                        	mov    %rbx,%rdi
   2ef09:	48 89 c6                                        	mov    %rax,%rsi
   2ef0c:	ba fa 00 00 00                                  	mov    $0xfa,%edx
   2ef11:	e8 ca e9 0a 00                                  	call   dd8e0 <_ZN6__asan12PoisonShadowEmmh>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:478
   2ef16:	4c 89 f0                                        	mov    %r14,%rax
RoundDownTo():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:478
   2ef19:	48 83 e0 f8                                     	and    $0xfffffffffffffff8,%rax
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/asan_poisoning.h:97
   2ef1d:	48 29 c5                                        	sub    %rax,%rbp
   2ef20:	48 8b 3c 24                                     	mov    (%rsp),%rdi
   2ef24:	66 44 0f 6f 35 73 f1 0e 00                      	movdqa 0xef173(%rip),%xmm14        # 11e0a0 <_IO_stdin_used+0xa0>
   2ef2d:	66 44 0f 6f 3d 9a f1 0e 00                      	movdqa 0xef19a(%rip),%xmm15        # 11e0d0 <_IO_stdin_used+0xd0>
   2ef36:	66 44 0f 6f 0d a1 f1 0e 00                      	movdqa 0xef1a1(%rip),%xmm9        # 11e0e0 <_IO_stdin_used+0xe0>
   2ef3f:	0f 84 0e 01 00 00                               	je     2f053 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x473>
   2ef45:	44 89 f0                                        	mov    %r14d,%eax
   2ef48:	83 e0 07                                        	and    $0x7,%eax
/root/llvm-project/compiler-rt/lib/asan/asan_poisoning.h:96
   2ef4b:	49 c1 ee 03                                     	shr    $0x3,%r14
   2ef4f:	49 81 c6 00 80 ff 7f                            	add    $0x7fff8000,%r14
   2ef56:	48 8d 0d b3 ab 13 00                            	lea    0x13abb3(%rip),%rcx        # 169b10 <_ZN6__asan28asan_flags_dont_use_directlyE>
   2ef5d:	80 79 55 01                                     	cmpb   $0x1,0x55(%rcx)
   2ef61:	0f 85 ff 00 00 00                               	jne    2f066 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x486>
/root/llvm-project/compiler-rt/lib/asan/asan_poisoning.h:97
   2ef67:	45 00 ec                                        	add    %r13b,%r12b
   2ef6a:	41 80 e4 07                                     	and    $0x7,%r12b
   2ef6e:	31 c9                                           	xor    %ecx,%ecx
/root/llvm-project/compiler-rt/lib/asan/asan_poisoning.h:100
   2ef70:	48 39 c1                                        	cmp    %rax,%rcx
/root/llvm-project/compiler-rt/lib/asan/asan_poisoning.h:98
   2ef73:	48 8d 49 08                                     	lea    0x8(%rcx),%rcx
/root/llvm-project/compiler-rt/lib/asan/asan_poisoning.h:100
   2ef77:	45 0f b6 e4                                     	movzbl %r12b,%r12d
   2ef7b:	ba fa 00 00 00                                  	mov    $0xfa,%edx
   2ef80:	41 0f 42 d4                                     	cmovb  %r12d,%edx
   2ef84:	41 88 16                                        	mov    %dl,(%r14)
/root/llvm-project/compiler-rt/lib/asan/asan_poisoning.h:97
   2ef87:	49 ff c6                                        	inc    %r14
   2ef8a:	41 80 c4 f8                                     	add    $0xf8,%r12b
   2ef8e:	48 39 e9                                        	cmp    %rbp,%rcx
   2ef91:	72 dd                                           	jb     2ef70 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x390>
   2ef93:	e9 bb 00 00 00                                  	jmp    2f053 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x473>
   2ef98:	0f 1f 84 00 00 00 00 00                         	nopl   0x0(%rax,%rax,1)
SpaceBeg():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:654
   2efa0:	48 8b 4f 20                                     	mov    0x20(%rdi),%rcx
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:256
   2efa4:	48 89 d8                                        	mov    %rbx,%rax
PointerIsMine():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:256
   2efa7:	48 29 c8                                        	sub    %rcx,%rax
   2efaa:	0f 92 c2                                        	setb   %dl
   2efad:	48 be 00 00 00 00 00 04 00 00                   	movabs $0x40000000000,%rsi
   2efb7:	48 01 f1                                        	add    %rsi,%rcx
   2efba:	48 39 d9                                        	cmp    %rbx,%rcx
   2efbd:	0f 96 c1                                        	setbe  %cl
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_combined.h:144
   2efc0:	08 d1                                           	or     %dl,%cl
   2efc2:	75 2c                                           	jne    2eff0 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x410>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:274
   2efc4:	48 c1 e8 24                                     	shr    $0x24,%rax
GetSizeClass():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:274
   2efc8:	89 c6                                           	mov    %eax,%esi
   2efca:	83 e6 3f                                        	and    $0x3f,%esi
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_size_class_map.h:149
   2efcd:	48 83 fe 35                                     	cmp    $0x35,%rsi
   2efd1:	0f 84 be 04 00 00                               	je     2f495 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x8b5>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_size_class_map.h:151
   2efd7:	83 fe 10                                        	cmp    $0x10,%esi
   2efda:	77 44                                           	ja     2f020 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x440>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_size_class_map.h:152
   2efdc:	c1 e6 04                                        	shl    $0x4,%esi
   2efdf:	eb 61                                           	jmp    2f042 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x462>
   2efe1:	66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00    	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
   2eff0:	48 8b 44 24 10                                  	mov    0x10(%rsp),%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:297
   2eff5:	48 8b 30                                        	mov    (%rax),%rsi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:482
   2eff8:	48 8d 46 ff                                     	lea    -0x1(%rsi),%rax
IsAligned():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:482
   2effc:	48 85 d8                                        	test   %rbx,%rax
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:297
   2efff:	0f 85 3e 06 00 00                               	jne    2f643 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0xa63>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:460
   2f005:	48 85 c6                                        	test   %rax,%rsi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:473
   2f008:	0f 85 52 06 00 00                               	jne    2f660 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0xa80>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:298
   2f00e:	48 89 d9                                        	mov    %rbx,%rcx
   2f011:	48 29 f1                                        	sub    %rsi,%rcx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:474
   2f014:	48 03 41 10                                     	add    0x10(%rcx),%rax
   2f018:	48 f7 de                                        	neg    %rsi
   2f01b:	48 21 c6                                        	and    %rax,%rsi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_combined.h:146
   2f01e:	eb 22                                           	jmp    2f042 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x462>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_size_class_map.h:153
   2f020:	83 c6 f0                                        	add    $0xfffffff0,%esi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_size_class_map.h:154
   2f023:	c1 ee 02                                        	shr    $0x2,%esi
   2f026:	ba 00 01 00 00                                  	mov    $0x100,%edx
   2f02b:	89 f1                                           	mov    %esi,%ecx
   2f02d:	48 d3 e2                                        	shl    %cl,%rdx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_size_class_map.h:155
   2f030:	83 e0 03                                        	and    $0x3,%eax
   2f033:	40 80 c6 06                                     	add    $0x6,%sil
   2f037:	89 f1                                           	mov    %esi,%ecx
   2f039:	48 d3 e0                                        	shl    %cl,%rax
   2f03c:	48 01 d0                                        	add    %rdx,%rax
   2f03f:	48 89 c6                                        	mov    %rax,%rsi
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:427
   2f042:	48 89 df                                        	mov    %rbx,%rdi
   2f045:	ba fa 00 00 00                                  	mov    $0xfa,%edx
   2f04a:	e8 91 e8 0a 00                                  	call   dd8e0 <_ZN6__asan12PoisonShadowEmmh>
   2f04f:	48 8b 3c 24                                     	mov    (%rsp),%rdi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:399
   2f053:	4c 01 fb                                        	add    %r15,%rbx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:398
   2f056:	48 3b 5c 24 08                                  	cmp    0x8(%rsp),%rbx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:397
   2f05b:	0f 82 ef fd ff ff                               	jb     2ee50 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x270>
   2f061:	e9 6a fd ff ff                                  	jmp    2edd0 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x1f0>
/root/llvm-project/compiler-rt/lib/asan/asan_poisoning.h:97
   2f066:	48 83 fd 09                                     	cmp    $0x9,%rbp
   2f06a:	b9 08 00 00 00                                  	mov    $0x8,%ecx
   2f06f:	48 0f 43 cd                                     	cmovae %rbp,%rcx
   2f073:	48 83 fd 39                                     	cmp    $0x39,%rbp
   2f077:	73 0a                                           	jae    2f083 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x4a3>
   2f079:	31 f6                                           	xor    %esi,%esi
   2f07b:	4c 89 f2                                        	mov    %r14,%rdx
   2f07e:	e9 ed 03 00 00                                  	jmp    2f470 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x890>
   2f083:	48 ff c9                                        	dec    %rcx
   2f086:	48 c1 e9 03                                     	shr    $0x3,%rcx
   2f08a:	48 ff c1                                        	inc    %rcx
   2f08d:	48 83 fd 79                                     	cmp    $0x79,%rbp
   2f091:	0f 83 63 01 00 00                               	jae    2f1fa <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x61a>
   2f097:	45 31 d2                                        	xor    %r10d,%r10d
   2f09a:	31 f6                                           	xor    %esi,%esi
   2f09c:	48 ba f0 ff ff ff ff ff ff 3f                   	movabs $0x3ffffffffffffff0,%rdx
   2f0a6:	4c 8d 42 08                                     	lea    0x8(%rdx),%r8
   2f0aa:	49 21 c8                                        	and    %rcx,%r8
   2f0ad:	66 48 0f 6e ce                                  	movq   %rsi,%xmm1
   2f0b2:	4a 8d 34 c5 00 00 00 00                         	lea    0x0(,%r8,8),%rsi
   2f0ba:	4b 8d 14 06                                     	lea    (%r14,%r8,1),%rdx
   2f0be:	66 0f 6e c0                                     	movd   %eax,%xmm0
   2f0c2:	66 0f 70 c0 44                                  	pshufd $0x44,%xmm0,%xmm0
   2f0c7:	66 0f 70 c9 44                                  	pshufd $0x44,%xmm1,%xmm1
   2f0cc:	66 0f 6f d1                                     	movdqa %xmm1,%xmm2
   2f0d0:	66 0f d4 15 88 ef 0e 00                         	paddq  0xeef88(%rip),%xmm2        # 11e060 <_IO_stdin_used+0x60>
   2f0d8:	66 0f 6f d9                                     	movdqa %xmm1,%xmm3
   2f0dc:	66 0f d4 1d 8c ef 0e 00                         	paddq  0xeef8c(%rip),%xmm3        # 11e070 <_IO_stdin_used+0x70>
   2f0e4:	66 0f 6f e1                                     	movdqa %xmm1,%xmm4
   2f0e8:	66 0f d4 25 90 ef 0e 00                         	paddq  0xeef90(%rip),%xmm4        # 11e080 <_IO_stdin_used+0x80>
   2f0f0:	66 0f d4 0d 98 ef 0e 00                         	paddq  0xeef98(%rip),%xmm1        # 11e090 <_IO_stdin_used+0x90>
   2f0f8:	48 83 fd 09                                     	cmp    $0x9,%rbp
   2f0fc:	41 b9 08 00 00 00                               	mov    $0x8,%r9d
   2f102:	4c 0f 43 cd                                     	cmovae %rbp,%r9
   2f106:	49 ff c9                                        	dec    %r9
   2f109:	49 c1 e9 03                                     	shr    $0x3,%r9
   2f10d:	49 ff c1                                        	inc    %r9
   2f110:	49 83 e1 f8                                     	and    $0xfffffffffffffff8,%r9
   2f114:	66 41 0f eb c6                                  	por    %xmm14,%xmm0
   2f119:	0f 1f 80 00 00 00 00                            	nopl   0x0(%rax)
/root/llvm-project/compiler-rt/lib/asan/asan_poisoning.h:100
   2f120:	66 0f 6f e9                                     	movdqa %xmm1,%xmm5
   2f124:	66 41 0f ef ee                                  	pxor   %xmm14,%xmm5
   2f129:	66 0f 6f f0                                     	movdqa %xmm0,%xmm6
   2f12d:	66 0f 66 f5                                     	pcmpgtd %xmm5,%xmm6
   2f131:	66 0f 70 f6 a0                                  	pshufd $0xa0,%xmm6,%xmm6
   2f136:	66 0f 76 e8                                     	pcmpeqd %xmm0,%xmm5
   2f13a:	66 0f 70 ed f5                                  	pshufd $0xf5,%xmm5,%xmm5
   2f13f:	66 0f db ee                                     	pand   %xmm6,%xmm5
   2f143:	66 0f 6f f4                                     	movdqa %xmm4,%xmm6
   2f147:	66 41 0f ef f6                                  	pxor   %xmm14,%xmm6
   2f14c:	66 0f 6f f8                                     	movdqa %xmm0,%xmm7
   2f150:	66 0f 66 fe                                     	pcmpgtd %xmm6,%xmm7
   2f154:	66 0f 70 ff a0                                  	pshufd $0xa0,%xmm7,%xmm7
   2f159:	66 0f 76 f0                                     	pcmpeqd %xmm0,%xmm6
   2f15d:	66 0f 70 f6 f5                                  	pshufd $0xf5,%xmm6,%xmm6
   2f162:	66 0f db f7                                     	pand   %xmm7,%xmm6
   2f166:	66 0f 6b ee                                     	packssdw %xmm6,%xmm5
   2f16a:	66 0f 6f f3                                     	movdqa %xmm3,%xmm6
   2f16e:	66 41 0f ef f6                                  	pxor   %xmm14,%xmm6
   2f173:	66 0f 6f f8                                     	movdqa %xmm0,%xmm7
   2f177:	66 0f 66 fe                                     	pcmpgtd %xmm6,%xmm7
   2f17b:	66 0f 70 ff a0                                  	pshufd $0xa0,%xmm7,%xmm7
   2f180:	66 0f 76 f0                                     	pcmpeqd %xmm0,%xmm6
   2f184:	66 0f 70 f6 f5                                  	pshufd $0xf5,%xmm6,%xmm6
   2f189:	66 0f db f7                                     	pand   %xmm7,%xmm6
   2f18d:	66 0f 6f fa                                     	movdqa %xmm2,%xmm7
   2f191:	66 41 0f ef fe                                  	pxor   %xmm14,%xmm7
   2f196:	66 44 0f 6f c0                                  	movdqa %xmm0,%xmm8
   2f19b:	66 44 0f 66 c7                                  	pcmpgtd %xmm7,%xmm8
   2f1a0:	66 45 0f 70 c0 a0                               	pshufd $0xa0,%xmm8,%xmm8
   2f1a6:	66 0f 76 f8                                     	pcmpeqd %xmm0,%xmm7
   2f1aa:	66 0f 70 ff f5                                  	pshufd $0xf5,%xmm7,%xmm7
   2f1af:	66 41 0f db f8                                  	pand   %xmm8,%xmm7
   2f1b4:	66 0f 6b f7                                     	packssdw %xmm7,%xmm6
   2f1b8:	66 0f 6b ee                                     	packssdw %xmm6,%xmm5
   2f1bc:	66 0f 63 ed                                     	packsswb %xmm5,%xmm5
   2f1c0:	66 41 0f df ef                                  	pandn  %xmm15,%xmm5
   2f1c5:	66 43 0f d6 2c 16                               	movq   %xmm5,(%r14,%r10,1)
   2f1cb:	49 83 c2 08                                     	add    $0x8,%r10
   2f1cf:	66 41 0f d4 c9                                  	paddq  %xmm9,%xmm1
   2f1d4:	66 41 0f d4 e1                                  	paddq  %xmm9,%xmm4
   2f1d9:	66 41 0f d4 d9                                  	paddq  %xmm9,%xmm3
   2f1de:	66 41 0f d4 d1                                  	paddq  %xmm9,%xmm2
/root/llvm-project/compiler-rt/lib/asan/asan_poisoning.h:97
   2f1e3:	4d 39 d1                                        	cmp    %r10,%r9
   2f1e6:	0f 85 34 ff ff ff                               	jne    2f120 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x540>
   2f1ec:	4c 39 c1                                        	cmp    %r8,%rcx
   2f1ef:	0f 85 7b 02 00 00                               	jne    2f470 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x890>
   2f1f5:	e9 59 fe ff ff                                  	jmp    2f053 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x473>
   2f1fa:	49 89 ca                                        	mov    %rcx,%r10
   2f1fd:	48 ba f0 ff ff ff ff ff ff 3f                   	movabs $0x3ffffffffffffff0,%rdx
   2f207:	49 21 d2                                        	and    %rdx,%r10
   2f20a:	4a 8d 34 d5 00 00 00 00                         	lea    0x0(,%r10,8),%rsi
   2f212:	4b 8d 14 16                                     	lea    (%r14,%r10,1),%rdx
   2f216:	66 0f 6e c0                                     	movd   %eax,%xmm0
   2f21a:	66 0f 70 c0 44                                  	pshufd $0x44,%xmm0,%xmm0
   2f21f:	48 83 fd 09                                     	cmp    $0x9,%rbp
   2f223:	41 b8 08 00 00 00                               	mov    $0x8,%r8d
   2f229:	4c 0f 43 c5                                     	cmovae %rbp,%r8
   2f22d:	49 ff c8                                        	dec    %r8
   2f230:	49 c1 e8 03                                     	shr    $0x3,%r8
   2f234:	49 ff c0                                        	inc    %r8
   2f237:	49 83 e0 f0                                     	and    $0xfffffffffffffff0,%r8
   2f23b:	66 41 0f eb c6                                  	por    %xmm14,%xmm0
   2f240:	45 31 c9                                        	xor    %r9d,%r9d
   2f243:	66 0f 6f 0d 45 ee 0e 00                         	movdqa 0xeee45(%rip),%xmm1        # 11e090 <_IO_stdin_used+0x90>
   2f24b:	66 0f 6f 15 2d ee 0e 00                         	movdqa 0xeee2d(%rip),%xmm2        # 11e080 <_IO_stdin_used+0x80>
   2f253:	66 0f 6f 1d 15 ee 0e 00                         	movdqa 0xeee15(%rip),%xmm3        # 11e070 <_IO_stdin_used+0x70>
   2f25b:	66 0f 6f 25 fd ed 0e 00                         	movdqa 0xeedfd(%rip),%xmm4        # 11e060 <_IO_stdin_used+0x60>
   2f263:	66 0f 6f 2d e5 ed 0e 00                         	movdqa 0xeede5(%rip),%xmm5        # 11e050 <_IO_stdin_used+0x50>
   2f26b:	66 0f 6f 35 cd ed 0e 00                         	movdqa 0xeedcd(%rip),%xmm6        # 11e040 <_IO_stdin_used+0x40>
   2f273:	66 0f 6f 3d b5 ed 0e 00                         	movdqa 0xeedb5(%rip),%xmm7        # 11e030 <_IO_stdin_used+0x30>
   2f27b:	66 44 0f 6f 05 9c ed 0e 00                      	movdqa 0xeed9c(%rip),%xmm8        # 11e020 <_IO_stdin_used+0x20>
   2f284:	66 44 0f 6f 3d 33 ee 0e 00                      	movdqa 0xeee33(%rip),%xmm15        # 11e0c0 <_IO_stdin_used+0xc0>
   2f28d:	0f 1f 00                                        	nopl   (%rax)
/root/llvm-project/compiler-rt/lib/asan/asan_poisoning.h:100
   2f290:	66 44 0f 6f c9                                  	movdqa %xmm1,%xmm9
   2f295:	66 45 0f ef ce                                  	pxor   %xmm14,%xmm9
   2f29a:	66 44 0f 6f d0                                  	movdqa %xmm0,%xmm10
   2f29f:	66 45 0f 66 d1                                  	pcmpgtd %xmm9,%xmm10
   2f2a4:	66 45 0f 70 d2 a0                               	pshufd $0xa0,%xmm10,%xmm10
   2f2aa:	66 44 0f 76 c8                                  	pcmpeqd %xmm0,%xmm9
   2f2af:	66 45 0f 70 c9 f5                               	pshufd $0xf5,%xmm9,%xmm9
   2f2b5:	66 45 0f db ca                                  	pand   %xmm10,%xmm9
   2f2ba:	66 44 0f 6f d2                                  	movdqa %xmm2,%xmm10
   2f2bf:	66 45 0f ef d6                                  	pxor   %xmm14,%xmm10
   2f2c4:	66 44 0f 6f d8                                  	movdqa %xmm0,%xmm11
   2f2c9:	66 45 0f 66 da                                  	pcmpgtd %xmm10,%xmm11
   2f2ce:	66 45 0f 70 db a0                               	pshufd $0xa0,%xmm11,%xmm11
   2f2d4:	66 44 0f 76 d0                                  	pcmpeqd %xmm0,%xmm10
   2f2d9:	66 45 0f 70 d2 f5                               	pshufd $0xf5,%xmm10,%xmm10
   2f2df:	66 45 0f db d3                                  	pand   %xmm11,%xmm10
   2f2e4:	66 45 0f 6b ca                                  	packssdw %xmm10,%xmm9
   2f2e9:	66 44 0f 6f d3                                  	movdqa %xmm3,%xmm10
   2f2ee:	66 45 0f ef d6                                  	pxor   %xmm14,%xmm10
   2f2f3:	66 44 0f 6f d8                                  	movdqa %xmm0,%xmm11
   2f2f8:	66 45 0f 66 da                                  	pcmpgtd %xmm10,%xmm11
   2f2fd:	66 45 0f 70 db a0                               	pshufd $0xa0,%xmm11,%xmm11
   2f303:	66 44 0f 76 d0                                  	pcmpeqd %xmm0,%xmm10
   2f308:	66 45 0f 70 d2 f5                               	pshufd $0xf5,%xmm10,%xmm10
   2f30e:	66 45 0f db d3                                  	pand   %xmm11,%xmm10
   2f313:	66 44 0f 6f dc                                  	movdqa %xmm4,%xmm11
   2f318:	66 45 0f ef de                                  	pxor   %xmm14,%xmm11
   2f31d:	66 44 0f 6f e0                                  	movdqa %xmm0,%xmm12
   2f322:	66 45 0f 66 e3                                  	pcmpgtd %xmm11,%xmm12
   2f327:	66 45 0f 70 e4 a0                               	pshufd $0xa0,%xmm12,%xmm12
   2f32d:	66 44 0f 76 d8                                  	pcmpeqd %xmm0,%xmm11
   2f332:	66 45 0f 70 db f5                               	pshufd $0xf5,%xmm11,%xmm11
   2f338:	66 45 0f db dc                                  	pand   %xmm12,%xmm11
   2f33d:	66 45 0f 6b d3                                  	packssdw %xmm11,%xmm10
   2f342:	66 45 0f 6b ca                                  	packssdw %xmm10,%xmm9
   2f347:	66 44 0f 6f d5                                  	movdqa %xmm5,%xmm10
   2f34c:	66 45 0f ef d6                                  	pxor   %xmm14,%xmm10
   2f351:	66 44 0f 6f d8                                  	movdqa %xmm0,%xmm11
   2f356:	66 45 0f 66 da                                  	pcmpgtd %xmm10,%xmm11
   2f35b:	66 45 0f 70 db a0                               	pshufd $0xa0,%xmm11,%xmm11
   2f361:	66 44 0f 76 d0                                  	pcmpeqd %xmm0,%xmm10
   2f366:	66 45 0f 70 d2 f5                               	pshufd $0xf5,%xmm10,%xmm10
   2f36c:	66 45 0f db d3                                  	pand   %xmm11,%xmm10
   2f371:	66 44 0f 6f de                                  	movdqa %xmm6,%xmm11
   2f376:	66 45 0f ef de                                  	pxor   %xmm14,%xmm11
   2f37b:	66 44 0f 6f e0                                  	movdqa %xmm0,%xmm12
   2f380:	66 45 0f 66 e3                                  	pcmpgtd %xmm11,%xmm12
   2f385:	66 45 0f 70 e4 a0                               	pshufd $0xa0,%xmm12,%xmm12
   2f38b:	66 44 0f 76 d8                                  	pcmpeqd %xmm0,%xmm11
   2f390:	66 45 0f 70 db f5                               	pshufd $0xf5,%xmm11,%xmm11
   2f396:	66 45 0f db dc                                  	pand   %xmm12,%xmm11
   2f39b:	66 45 0f 6b d3                                  	packssdw %xmm11,%xmm10
   2f3a0:	66 44 0f 6f df                                  	movdqa %xmm7,%xmm11
   2f3a5:	66 45 0f ef de                                  	pxor   %xmm14,%xmm11
   2f3aa:	66 44 0f 6f e0                                  	movdqa %xmm0,%xmm12
   2f3af:	66 45 0f 66 e3                                  	pcmpgtd %xmm11,%xmm12
   2f3b4:	66 45 0f 70 e4 a0                               	pshufd $0xa0,%xmm12,%xmm12
   2f3ba:	66 44 0f 76 d8                                  	pcmpeqd %xmm0,%xmm11
   2f3bf:	66 45 0f 70 db f5                               	pshufd $0xf5,%xmm11,%xmm11
   2f3c5:	66 45 0f db dc                                  	pand   %xmm12,%xmm11
   2f3ca:	66 45 0f 6f e0                                  	movdqa %xmm8,%xmm12
   2f3cf:	66 45 0f ef e6                                  	pxor   %xmm14,%xmm12
   2f3d4:	66 44 0f 6f e8                                  	movdqa %xmm0,%xmm13
   2f3d9:	66 45 0f 66 ec                                  	pcmpgtd %xmm12,%xmm13
   2f3de:	66 45 0f 70 ed a0                               	pshufd $0xa0,%xmm13,%xmm13
   2f3e4:	66 44 0f 76 e0                                  	pcmpeqd %xmm0,%xmm12
   2f3e9:	66 45 0f 70 e4 f5                               	pshufd $0xf5,%xmm12,%xmm12
   2f3ef:	66 45 0f db e5                                  	pand   %xmm13,%xmm12
   2f3f4:	66 45 0f 6b dc                                  	packssdw %xmm12,%xmm11
   2f3f9:	66 45 0f 6b d3                                  	packssdw %xmm11,%xmm10
   2f3fe:	66 45 0f 63 ca                                  	packsswb %xmm10,%xmm9
   2f403:	66 44 0f df 0d a4 ec 0e 00                      	pandn  0xeeca4(%rip),%xmm9        # 11e0b0 <_IO_stdin_used+0xb0>
   2f40c:	f3 47 0f 7f 0c 0e                               	movdqu %xmm9,(%r14,%r9,1)
   2f412:	49 83 c1 10                                     	add    $0x10,%r9
   2f416:	66 41 0f d4 cf                                  	paddq  %xmm15,%xmm1
   2f41b:	66 41 0f d4 d7                                  	paddq  %xmm15,%xmm2
   2f420:	66 41 0f d4 df                                  	paddq  %xmm15,%xmm3
   2f425:	66 41 0f d4 e7                                  	paddq  %xmm15,%xmm4
   2f42a:	66 41 0f d4 ef                                  	paddq  %xmm15,%xmm5
   2f42f:	66 41 0f d4 f7                                  	paddq  %xmm15,%xmm6
   2f434:	66 41 0f d4 ff                                  	paddq  %xmm15,%xmm7
   2f439:	66 45 0f d4 c7                                  	paddq  %xmm15,%xmm8
/root/llvm-project/compiler-rt/lib/asan/asan_poisoning.h:97
   2f43e:	4d 39 c8                                        	cmp    %r9,%r8
   2f441:	0f 85 49 fe ff ff                               	jne    2f290 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x6b0>
   2f447:	4c 39 d1                                        	cmp    %r10,%rcx
   2f44a:	66 44 0f 6f 0d 8d ec 0e 00                      	movdqa 0xeec8d(%rip),%xmm9        # 11e0e0 <_IO_stdin_used+0xe0>
   2f453:	66 44 0f 6f 3d 74 ec 0e 00                      	movdqa 0xeec74(%rip),%xmm15        # 11e0d0 <_IO_stdin_used+0xd0>
   2f45c:	0f 84 f1 fb ff ff                               	je     2f053 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x473>
   2f462:	f6 c1 08                                        	test   $0x8,%cl
   2f465:	0f 85 31 fc ff ff                               	jne    2f09c <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x4bc>
   2f46b:	0f 1f 44 00 00                                  	nopl   0x0(%rax,%rax,1)
/root/llvm-project/compiler-rt/lib/asan/asan_poisoning.h:100
   2f470:	48 39 c6                                        	cmp    %rax,%rsi
/root/llvm-project/compiler-rt/lib/asan/asan_poisoning.h:98
   2f473:	48 8d 76 08                                     	lea    0x8(%rsi),%rsi
/root/llvm-project/compiler-rt/lib/asan/asan_poisoning.h:100
   2f477:	b9 fa 00 00 00                                  	mov    $0xfa,%ecx
   2f47c:	41 b8 00 00 00 00                               	mov    $0x0,%r8d
   2f482:	41 0f 42 c8                                     	cmovb  %r8d,%ecx
   2f486:	88 0a                                           	mov    %cl,(%rdx)
/root/llvm-project/compiler-rt/lib/asan/asan_poisoning.h:97
   2f488:	48 ff c2                                        	inc    %rdx
   2f48b:	48 39 ee                                        	cmp    %rbp,%rsi
   2f48e:	72 e0                                           	jb     2f470 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x890>
   2f490:	e9 be fb ff ff                                  	jmp    2f053 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x473>
   2f495:	be 00 04 00 00                                  	mov    $0x400,%esi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_size_class_map.h:149
   2f49a:	e9 a3 fb ff ff                                  	jmp    2f042 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x462>
   2f49f:	41 bf 00 04 00 00                               	mov    $0x400,%r15d
   2f4a5:	e9 74 f9 ff ff                                  	jmp    2ee1e <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x23e>
   2f4aa:	48 8b 7c 24 10                                  	mov    0x10(%rsp),%rdi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:277
   2f4af:	e8 9c 6e 00 00                                  	call   36350 <_ZN11__sanitizer18LargeMmapAllocatorIN6__asan20AsanMapUnmapCallbackENS_33LargeMmapAllocatorPtrArrayDynamicENS_21LocalAddressSpaceViewEE18EnsureSortedChunksEv>
   2f4b4:	4c 8b 04 24                                     	mov    (%rsp),%r8
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:279
   2f4b8:	49 83 78 78 00                                  	cmpq   $0x0,0x78(%r8)
   2f4bd:	74 5c                                           	je     2f51b <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x93b>
   2f4bf:	49 8b 58 48                                     	mov    0x48(%r8),%rbx
   2f4c3:	45 31 e4                                        	xor    %r12d,%r12d
   2f4c6:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nopw 0x0(%rax,%rax,1)
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:280
   2f4d0:	4e 8b 2c e3                                     	mov    (%rbx,%r12,8),%r13
   2f4d4:	48 8b 44 24 10                                  	mov    0x10(%rsp),%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:305
   2f4d9:	48 8b 30                                        	mov    (%rax),%rsi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:482
   2f4dc:	48 8d 46 ff                                     	lea    -0x1(%rsi),%rax
IsAligned():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:482
   2f4e0:	4c 85 e8                                        	test   %r13,%rax
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:305
   2f4e3:	0f 85 88 01 00 00                               	jne    2f671 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0xa91>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:306
   2f4e9:	4c 01 ee                                        	add    %r13,%rsi
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:445
   2f4ec:	4c 89 c7                                        	mov    %r8,%rdi
operator()():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:445
   2f4ef:	e8 cc 28 00 00                                  	call   31dc0 <_ZN6__asan9Allocator13RePoisonChunkEm>
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:283
   2f4f4:	4a 8b 0c e3                                     	mov    (%rbx,%r12,8),%rcx
   2f4f8:	4c 39 e9                                        	cmp    %r13,%rcx
   2f4fb:	0f 85 8d 01 00 00                               	jne    2f68e <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0xaae>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:284
   2f501:	48 8b 49 18                                     	mov    0x18(%rcx),%rcx
   2f505:	49 39 cc                                        	cmp    %rcx,%r12
   2f508:	0f 85 9b 01 00 00                               	jne    2f6a9 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0xac9>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:279
   2f50e:	49 ff c4                                        	inc    %r12
   2f511:	4c 8b 04 24                                     	mov    (%rsp),%r8
   2f515:	4d 3b 60 78                                     	cmp    0x78(%r8),%r12
   2f519:	72 b5                                           	jb     2f4d0 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x8f0>
   2f51b:	48 8b 44 24 18                                  	mov    0x18(%rsp),%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2f520:	c6 00 00                                        	movb   $0x0,(%rax)
atomic_store<__sanitizer::atomic_uint8_t>():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2f523:	41 bb 35 00 00 00                               	mov    $0x35,%r11d
   2f529:	49 be ff ff ff ff ff ff ff ef                   	movabs $0xefffffffffffffff,%r14
   2f533:	49 bf 00 00 00 00 00 00 00 60                   	movabs $0x6000000000000000,%r15
   2f53d:	49 bc 00 00 00 00 00 ff ff 0f                   	movabs $0xfffff0000000000,%r12
   2f547:	49 bd 00 00 00 00 00 ff ff ff                   	movabs $0xffffff0000000000,%r13
   2f551:	31 ed                                           	xor    %ebp,%ebp
   2f553:	48 bb ff ff 0f 00 00 ff ff af                   	movabs $0xafffff00000fffff,%rbx
   2f55d:	49 b9 00 00 00 00 00 00 00 20                   	movabs $0x2000000000000000,%r9
   2f567:	eb 1a                                           	jmp    2f583 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x9a3>
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
   2f569:	0f 1f 80 00 00 00 00                            	nopl   0x0(%rax)
ForceUnlock():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:243
   2f570:	48 85 f6                                        	test   %rsi,%rsi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:249
   2f573:	0f 85 b5 00 00 00                               	jne    2f62e <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0xa4e>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:383
   2f579:	49 83 eb 01                                     	sub    $0x1,%r11
   2f57d:	0f 82 b1 00 00 00                               	jb     2f634 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0xa54>
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:706
   2f583:	49 8b 40 30                                     	mov    0x30(%r8),%rax
GetRegionInfo():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:707
   2f587:	4c 89 d9                                        	mov    %r11,%rcx
   2f58a:	48 c1 e1 07                                     	shl    $0x7,%rcx
   2f58e:	48 8d 3c 08                                     	lea    (%rax,%rcx,1),%rdi
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2f592:	48 8b 04 08                                     	mov    (%rax,%rcx,1),%rax
atomic_load<__sanitizer::atomic_uint64_t>():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2f596:	eb 3f                                           	jmp    2f5d7 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x9f7>
ForceUnlock():
   2f598:	0f 1f 84 00 00 00 00 00                         	nopl   0x0(%rax,%rax,1)
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:240
   2f5a0:	48 89 c6                                        	mov    %rax,%rsi
   2f5a3:	48 c1 ee 14                                     	shr    $0x14,%rsi
   2f5a7:	81 e6 ff ff 0f 00                               	and    $0xfffff,%esi
   2f5ad:	4c 85 c8                                        	test   %r9,%rax
   2f5b0:	48 0f 45 f5                                     	cmovne %rbp,%rsi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:243
   2f5b4:	48 89 c2                                        	mov    %rax,%rdx
   2f5b7:	48 21 da                                        	and    %rbx,%rdx
   2f5ba:	48 85 f6                                        	test   %rsi,%rsi
   2f5bd:	49 ba f0 ff ff ff ff ff ff 3f                   	movabs $0x3ffffffffffffff0,%r10
   2f5c7:	49 8d 54 12 10                                  	lea    0x10(%r10,%rdx,1),%rdx
   2f5cc:	48 0f 44 d1                                     	cmove  %rcx,%rdx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:97
   2f5d0:	f0 48 0f b1 17                                  	lock cmpxchg %rdx,(%rdi)
   2f5d5:	74 99                                           	je     2f570 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x990>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:234
   2f5d7:	48 89 c1                                        	mov    %rax,%rcx
   2f5da:	4c 21 f1                                        	and    %r14,%rcx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:235
   2f5dd:	4c 85 f8                                        	test   %r15,%rax
   2f5e0:	0f 94 c2                                        	sete   %dl
   2f5e3:	4c 85 e0                                        	test   %r12,%rax
   2f5e6:	40 0f 95 c6                                     	setne  %sil
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:240
   2f5ea:	40 84 f2                                        	test   %sil,%dl
   2f5ed:	74 b1                                           	je     2f5a0 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x9c0>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:237
   2f5ef:	4c 01 e9                                        	add    %r13,%rcx
   2f5f2:	4c 09 c9                                        	or     %r9,%rcx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:97
   2f5f5:	f0 48 0f b1 0f                                  	lock cmpxchg %rcx,(%rdi)
   2f5fa:	75 db                                           	jne    2f5d7 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x9f7>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:248
   2f5fc:	48 83 c7 08                                     	add    $0x8,%rdi
   2f600:	be 01 00 00 00                                  	mov    $0x1,%esi
   2f605:	4c 89 5c 24 08                                  	mov    %r11,0x8(%rsp)
   2f60a:	e8 61 85 0c 00                                  	call   f7b70 <_ZN11__sanitizer9Semaphore4PostEj>
   2f60f:	4c 8b 5c 24 08                                  	mov    0x8(%rsp),%r11
   2f614:	49 b9 00 00 00 00 00 00 00 20                   	movabs $0x2000000000000000,%r9
   2f61e:	4c 8b 04 24                                     	mov    (%rsp),%r8
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:383
   2f622:	49 83 eb 01                                     	sub    $0x1,%r11
   2f626:	0f 83 57 ff ff ff                               	jae    2f583 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x9a3>
   2f62c:	eb 06                                           	jmp    2f634 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0xa54>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:250
   2f62e:	48 83 c7 0c                                     	add    $0xc,%rdi
   2f632:	eb d1                                           	jmp    2f605 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0xa25>
_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:450
   2f634:	48 83 c4 28                                     	add    $0x28,%rsp
   2f638:	5b                                              	pop    %rbx
   2f639:	41 5c                                           	pop    %r12
   2f63b:	41 5d                                           	pop    %r13
   2f63d:	41 5e                                           	pop    %r14
   2f63f:	41 5f                                           	pop    %r15
   2f641:	5d                                              	pop    %rbp
   2f642:	c3                                              	ret
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:297
   2f643:	48 8d 3d 92 f0 0e 00                            	lea    0xef092(%rip),%rdi        # 11e6dc <_ZN11__sanitizerL10kExtraRegsE+0x38c>
   2f64a:	48 8d 15 57 f2 0e 00                            	lea    0xef257(%rip),%rdx        # 11e8a8 <_ZN11__sanitizerL10kExtraRegsE+0x558>
   2f651:	be 29 01 00 00                                  	mov    $0x129,%esi
   2f656:	31 c9                                           	xor    %ecx,%ecx
   2f658:	45 31 c0                                        	xor    %r8d,%r8d
   2f65b:	e8 c0 17 0d 00                                  	call   100e20 <_ZN11__sanitizer11CheckFailedEPKciS1_yy>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:473
   2f660:	48 8d 3d cd ed 0e 00                            	lea    0xeedcd(%rip),%rdi        # 11e434 <_ZN11__sanitizerL10kExtraRegsE+0xe4>
   2f667:	e8 64 0f 0c 00                                  	call   f05d0 <_ZN11__sanitizer8RawWriteEPKc>
   2f66c:	e8 df 16 0d 00                                  	call   100d50 <_ZN11__sanitizer3DieEv>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:305
   2f671:	48 8d 3d 64 f0 0e 00                            	lea    0xef064(%rip),%rdi        # 11e6dc <_ZN11__sanitizerL10kExtraRegsE+0x38c>
   2f678:	48 8d 15 07 f4 0e 00                            	lea    0xef407(%rip),%rdx        # 11ea86 <_ZN11__sanitizerL10kExtraRegsE+0x736>
   2f67f:	be 31 01 00 00                                  	mov    $0x131,%esi
   2f684:	31 c9                                           	xor    %ecx,%ecx
   2f686:	45 31 c0                                        	xor    %r8d,%r8d
   2f689:	e8 92 17 0d 00                                  	call   100e20 <_ZN11__sanitizer11CheckFailedEPKciS1_yy>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:283
   2f68e:	48 8d 3d 47 f0 0e 00                            	lea    0xef047(%rip),%rdi        # 11e6dc <_ZN11__sanitizerL10kExtraRegsE+0x38c>
   2f695:	48 8d 15 ca ff 0e 00                            	lea    0xeffca(%rip),%rdx        # 11f666 <_ZN11__sanitizerL10kExtraRegsE+0x1316>
   2f69c:	be 1b 01 00 00                                  	mov    $0x11b,%esi
   2f6a1:	4d 89 e8                                        	mov    %r13,%r8
   2f6a4:	e8 77 17 0d 00                                  	call   100e20 <_ZN11__sanitizer11CheckFailedEPKciS1_yy>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:284
   2f6a9:	48 8d 3d 2c f0 0e 00                            	lea    0xef02c(%rip),%rdi        # 11e6dc <_ZN11__sanitizerL10kExtraRegsE+0x38c>
   2f6b0:	48 8d 15 c6 ff 0e 00                            	lea    0xeffc6(%rip),%rdx        # 11f67d <_ZN11__sanitizerL10kExtraRegsE+0x132d>
   2f6b7:	be 1c 01 00 00                                  	mov    $0x11c,%esi
   2f6bc:	4d 89 e0                                        	mov    %r12,%r8
   2f6bf:	e8 5c 17 0d 00                                  	call   100e20 <_ZN11__sanitizer11CheckFailedEPKciS1_yy>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:83
   2f6c4:	48 8d 3d 4d f1 0e 00                            	lea    0xef14d(%rip),%rdi        # 11e818 <_ZN11__sanitizerL10kExtraRegsE+0x4c8>
   2f6cb:	48 8d 15 99 f1 0e 00                            	lea    0xef199(%rip),%rdx        # 11e86b <_ZN11__sanitizerL10kExtraRegsE+0x51b>
   2f6d2:	be 53 00 00 00                                  	mov    $0x53,%esi
   2f6d7:	31 c9                                           	xor    %ecx,%ecx
   2f6d9:	45 31 c0                                        	xor    %r8d,%r8d
   2f6dc:	e8 3f 17 0d 00                                  	call   100e20 <_ZN11__sanitizer11CheckFailedEPKciS1_yy>
   2f6e1:	48 8b 7c 24 18                                  	mov    0x18(%rsp),%rdi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_mutex.h:32
   2f6e6:	e8 05 84 0c 00                                  	call   f7af0 <_ZN11__sanitizer15StaticSpinMutex8LockSlowEv>
   2f6eb:	48 8b 3c 24                                     	mov    (%rsp),%rdi
   2f6ef:	e9 c3 f6 ff ff                                  	jmp    2edb7 <_ZN6__asan9Allocator12ReInitializeERKNS_16AllocatorOptionsE+0x1d7>
   2f6f4:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nopw 0x0(%rax,%rax,1)
   2f6fe:	66 90                                           	xchg   %ax,%ax

000000000002f700 <_ZN6__asan21ApplyAllocatorOptionsERKNS_16AllocatorOptionsE>:
_ZN6__asan21ApplyAllocatorOptionsERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1046
   2f700:	53                                              	push   %rbx
   2f701:	48 89 fb                                        	mov    %rdi,%rbx
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:432
   2f704:	31 ff                                           	xor    %edi,%edi
   2f706:	80 7b 0c 00                                     	cmpb   $0x0,0xc(%rbx)
   2f70a:	40 0f 95 c7                                     	setne  %dil
   2f70e:	e8 3d cc 0b 00                                  	call   ec350 <_ZN11__sanitizer25SetAllocatorMayReturnNullEb>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:433
   2f713:	8b 43 10                                        	mov    0x10(%rbx),%eax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2f716:	89 05 54 c4 12 00                               	mov    %eax,0x12c454(%rip)        # 15bb70 <_ZN6__asanL8instanceE+0x28>
atomic_store<__sanitizer::atomic_sint32_t>():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2f71c:	48 8d 3d 25 c4 12 00                            	lea    0x12c425(%rip),%rdi        # 15bb48 <_ZN6__asanL8instanceE>
_ZN6__asan21ApplyAllocatorOptionsERKNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:385
   2f723:	48 89 de                                        	mov    %rbx,%rsi
   2f726:	e8 d5 25 00 00                                  	call   31d00 <_ZNK6__asan9Allocator12CheckOptionsERKNS_16AllocatorOptionsE>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:386
   2f72b:	8b 03                                           	mov    (%rbx),%eax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:387
   2f72d:	8b 4b 04                                        	mov    0x4(%rbx),%ecx
   2f730:	48 85 c9                                        	test   %rcx,%rcx
   2f733:	0f 95 c2                                        	setne  %dl
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:83
   2f736:	48 89 ce                                        	mov    %rcx,%rsi
   2f739:	48 09 c6                                        	or     %rax,%rsi
   2f73c:	40 0f 94 c6                                     	sete   %sil
   2f740:	40 08 d6                                        	or     %dl,%sil
   2f743:	74 5e                                           	je     2f7a3 <_ZN6__asan21ApplyAllocatorOptionsERKNS_16AllocatorOptionsE+0xa3>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:387
   2f745:	48 c1 e1 0a                                     	shl    $0xa,%rcx
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:386
   2f749:	48 c1 e0 14                                     	shl    $0x14,%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2f74d:	48 89 05 0c c7 12 00                            	mov    %rax,0x12c70c(%rip)        # 15be60 <_ZN6__asanL8instanceE+0x318>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:86
   2f754:	48 ba 9a 99 99 99 99 99 99 19                   	movabs $0x199999999999999a,%rdx
   2f75e:	48 f7 e2                                        	mul    %rdx
   2f761:	48 8d 04 d2                                     	lea    (%rdx,%rdx,8),%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2f765:	48 89 05 fc c6 12 00                            	mov    %rax,0x12c6fc(%rip)        # 15be68 <_ZN6__asanL8instanceE+0x320>
   2f76c:	48 89 0d fd c6 12 00                            	mov    %rcx,0x12c6fd(%rip)        # 15be70 <_ZN6__asanL8instanceE+0x328>
   2f773:	c6 05 3e c7 12 00 00                            	movb   $0x0,0x12c73e(%rip)        # 15beb8 <_ZN6__asanL8instanceE+0x370>
   2f77a:	c6 05 38 c7 12 00 00                            	movb   $0x0,0x12c738(%rip)        # 15beb9 <_ZN6__asanL8instanceE+0x371>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:388
   2f781:	0f b6 43 0d                                     	movzbl 0xd(%rbx),%eax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2f785:	88 05 49 a3 13 00                               	mov    %al,0x13a349(%rip)        # 169ad4 <_ZN6__asanL8instanceE+0xdf8c>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:390
   2f78b:	0f b7 43 08                                     	movzwl 0x8(%rbx),%eax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2f78f:	66 89 05 3a a3 13 00                            	mov    %ax,0x13a33a(%rip)        # 169ad0 <_ZN6__asanL8instanceE+0xdf88>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:391
   2f796:	0f b7 43 0a                                     	movzwl 0xa(%rbx),%eax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:64
   2f79a:	66 89 05 31 a3 13 00                            	mov    %ax,0x13a331(%rip)        # 169ad2 <_ZN6__asanL8instanceE+0xdf8a>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1048
   2f7a1:	5b                                              	pop    %rbx
   2f7a2:	c3                                              	ret
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:83
   2f7a3:	48 8d 3d 6e f0 0e 00                            	lea    0xef06e(%rip),%rdi        # 11e818 <_ZN11__sanitizerL10kExtraRegsE+0x4c8>
   2f7aa:	48 8d 15 ba f0 0e 00                            	lea    0xef0ba(%rip),%rdx        # 11e86b <_ZN11__sanitizerL10kExtraRegsE+0x51b>
   2f7b1:	be 53 00 00 00                                  	mov    $0x53,%esi
   2f7b6:	31 c9                                           	xor    %ecx,%ecx
   2f7b8:	45 31 c0                                        	xor    %r8d,%r8d
   2f7bb:	e8 60 16 0d 00                                  	call   100e20 <_ZN11__sanitizer11CheckFailedEPKciS1_yy>

000000000002f7c0 <_ZN6__asan19GetAllocatorOptionsEPNS_16AllocatorOptionsE>:
_ZN6__asan19GetAllocatorOptionsEPNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1050
   2f7c0:	53                                              	push   %rbx
   2f7c1:	48 89 fb                                        	mov    %rdi,%rbx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2f7c4:	48 8b 05 95 c6 12 00                            	mov    0x12c695(%rip),%rax        # 15be60 <_ZN6__asanL8instanceE+0x318>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:453
   2f7cb:	48 c1 e8 14                                     	shr    $0x14,%rax
GetOptions():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:453
   2f7cf:	89 07                                           	mov    %eax,(%rdi)
_ZN6__asan19GetAllocatorOptionsEPNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2f7d1:	48 8b 05 98 c6 12 00                            	mov    0x12c698(%rip),%rax        # 15be70 <_ZN6__asanL8instanceE+0x328>
GetOptions():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:455
   2f7d8:	48 c1 e8 0a                                     	shr    $0xa,%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:454
   2f7dc:	89 47 04                                        	mov    %eax,0x4(%rdi)
_ZN6__asan19GetAllocatorOptionsEPNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2f7df:	0f b7 05 ea a2 13 00                            	movzwl 0x13a2ea(%rip),%eax        # 169ad0 <_ZN6__asanL8instanceE+0xdf88>
GetOptions():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:456
   2f7e6:	66 89 47 08                                     	mov    %ax,0x8(%rdi)
_ZN6__asan19GetAllocatorOptionsEPNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2f7ea:	0f b7 05 e1 a2 13 00                            	movzwl 0x13a2e1(%rip),%eax        # 169ad2 <_ZN6__asanL8instanceE+0xdf8a>
GetOptions():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:457
   2f7f1:	66 89 47 0a                                     	mov    %ax,0xa(%rdi)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:458
   2f7f5:	e8 46 cb 0b 00                                  	call   ec340 <_ZN11__sanitizer22AllocatorMayReturnNullEv>
   2f7fa:	88 43 0c                                        	mov    %al,0xc(%rbx)
_ZN6__asan19GetAllocatorOptionsEPNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2f7fd:	0f b6 05 d0 a2 13 00                            	movzbl 0x13a2d0(%rip),%eax        # 169ad4 <_ZN6__asanL8instanceE+0xdf8c>
GetOptions():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:459
   2f804:	88 43 0d                                        	mov    %al,0xd(%rbx)
_ZN6__asan19GetAllocatorOptionsEPNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2f807:	8b 05 63 c3 12 00                               	mov    0x12c363(%rip),%eax        # 15bb70 <_ZN6__asanL8instanceE+0x28>
GetOptions():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:461
   2f80d:	89 43 10                                        	mov    %eax,0x10(%rbx)
_ZN6__asan19GetAllocatorOptionsEPNS_16AllocatorOptionsE():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1052
   2f810:	5b                                              	pop    %rbx
   2f811:	c3                                              	ret
   2f812:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nopw 0x0(%rax,%rax,1)
   2f81c:	0f 1f 40 00                                     	nopl   0x0(%rax)

000000000002f820 <_ZN6__asan22FindHeapChunkByAddressEm>:
_ZN6__asan22FindHeapChunkByAddressEm():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1054
   2f820:	48 89 fe                                        	mov    %rdi,%rsi
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1055
   2f823:	48 8d 3d 1e c3 12 00                            	lea    0x12c31e(%rip),%rdi        # 15bb48 <_ZN6__asanL8instanceE>
   2f82a:	e9 01 00 00 00                                  	jmp    2f830 <_ZN6__asan9Allocator22FindHeapChunkByAddressEm>
   2f82f:	90                                              	nop

000000000002f830 <_ZN6__asan9Allocator22FindHeapChunkByAddressEm>:
_ZN6__asan9Allocator22FindHeapChunkByAddressEm():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:924
   2f830:	55                                              	push   %rbp
   2f831:	41 57                                           	push   %r15
   2f833:	41 56                                           	push   %r14
   2f835:	41 55                                           	push   %r13
   2f837:	41 54                                           	push   %r12
   2f839:	53                                              	push   %rbx
   2f83a:	50                                              	push   %rax
   2f83b:	48 89 f3                                        	mov    %rsi,%rbx
   2f83e:	49 89 fc                                        	mov    %rdi,%r12
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:925
   2f841:	e8 3a 1b 00 00                                  	call   31380 <_ZN6__asan9Allocator18GetAsanChunkByAddrEm>
   2f846:	49 89 c6                                        	mov    %rax,%r14
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:927
   2f849:	48 85 c0                                        	test   %rax,%rax
   2f84c:	0f 95 c0                                        	setne  %al
   2f84f:	49 8d 4e 10                                     	lea    0x10(%r14),%rcx
   2f853:	48 39 d9                                        	cmp    %rbx,%rcx
   2f856:	0f 96 c1                                        	setbe  %cl
   2f859:	84 c8                                           	test   %cl,%al
   2f85b:	0f 85 a4 00 00 00                               	jne    2f905 <_ZN6__asan9Allocator22FindHeapChunkByAddressEm+0xd5>
   2f861:	48 89 1c 24                                     	mov    %rbx,(%rsp)
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:932
   2f865:	4c 8d 6b ff                                     	lea    -0x1(%rbx),%r13
   2f869:	bd 01 00 00 00                                  	mov    $0x1,%ebp
   2f86e:	45 31 ff                                        	xor    %r15d,%r15d
   2f871:	48 8d 1d d8 d7 1c 00                            	lea    0x1cd7d8(%rip),%rbx        # 1fd050 <_ZN11__sanitizer14PageSizeCachedE>
   2f878:	0f 1f 84 00 00 00 00 00                         	nopl   0x0(%rax,%rax,1)
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:71
   2f880:	48 8b 03                                        	mov    (%rbx),%rax
GetPageSizeCached():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:71
   2f883:	48 85 c0                                        	test   %rax,%rax
   2f886:	75 08                                           	jne    2f890 <_ZN6__asan9Allocator22FindHeapChunkByAddressEm+0x60>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:72
   2f888:	e8 93 78 0c 00                                  	call   f7120 <_ZN11__sanitizer11GetPageSizeEv>
   2f88d:	48 89 03                                        	mov    %rax,(%rbx)
_ZN6__asan9Allocator22FindHeapChunkByAddressEm():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:932
   2f890:	48 39 c5                                        	cmp    %rax,%rbp
   2f893:	73 19                                           	jae    2f8ae <_ZN6__asan9Allocator22FindHeapChunkByAddressEm+0x7e>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:933
   2f895:	4c 89 e7                                        	mov    %r12,%rdi
   2f898:	4c 89 ee                                        	mov    %r13,%rsi
   2f89b:	e8 e0 1a 00 00                                  	call   31380 <_ZN6__asan9Allocator18GetAsanChunkByAddrEm>
   2f8a0:	49 89 c7                                        	mov    %rax,%r15
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:932
   2f8a3:	48 ff c5                                        	inc    %rbp
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:934
   2f8a6:	49 ff cd                                        	dec    %r13
   2f8a9:	4c 39 f0                                        	cmp    %r14,%rax
   2f8ac:	74 d2                                           	je     2f880 <_ZN6__asan9Allocator22FindHeapChunkByAddressEm+0x50>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:938
   2f8ae:	4d 85 ff                                        	test   %r15,%r15
   2f8b1:	74 52                                           	je     2f905 <_ZN6__asan9Allocator22FindHeapChunkByAddressEm+0xd5>
   2f8b3:	48 8b 34 24                                     	mov    (%rsp),%rsi
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.h:85
   2f8b7:	48 8d 56 01                                     	lea    0x1(%rsi),%rdx
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:115
   2f8bb:	41 0f b7 47 02                                  	movzwl 0x2(%r15),%eax
UsedSize():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:115
   2f8c0:	48 c1 e0 20                                     	shl    $0x20,%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:116
   2f8c4:	41 8b 4f 04                                     	mov    0x4(%r15),%ecx
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:115
   2f8c8:	48 09 c1                                        	or     %rax,%rcx
_ZN6__asan9Allocator22FindHeapChunkByAddressEm():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:995
   2f8cb:	4c 01 f9                                        	add    %r15,%rcx
End():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:995
   2f8ce:	48 83 c1 10                                     	add    $0x10,%rcx
AddrIsAtRight():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.h:85
   2f8d2:	48 39 ca                                        	cmp    %rcx,%rdx
_ZN6__asan9Allocator22FindHeapChunkByAddressEm():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:938
   2f8d5:	4c 89 f8                                        	mov    %r15,%rax
   2f8d8:	49 0f 46 c6                                     	cmovbe %r14,%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:927
   2f8dc:	4d 85 f6                                        	test   %r14,%r14
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:938
   2f8df:	74 27                                           	je     2f908 <_ZN6__asan9Allocator22FindHeapChunkByAddressEm+0xd8>
   2f8e1:	48 39 ca                                        	cmp    %rcx,%rdx
   2f8e4:	76 22                                           	jbe    2f908 <_ZN6__asan9Allocator22FindHeapChunkByAddressEm+0xd8>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2f8e6:	41 0f b6 07                                     	movzbl (%r15),%eax
   2f8ea:	41 0f b6 16                                     	movzbl (%r14),%edx
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:506
   2f8ee:	38 d0                                           	cmp    %dl,%al
   2f8f0:	75 25                                           	jne    2f917 <_ZN6__asan9Allocator22FindHeapChunkByAddressEm+0xe7>
   2f8f2:	49 8d 46 10                                     	lea    0x10(%r14),%rax
   2f8f6:	48 29 f0                                        	sub    %rsi,%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.h:78
   2f8f9:	76 38                                           	jbe    2f933 <_ZN6__asan9Allocator22FindHeapChunkByAddressEm+0x103>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.h:86
   2f8fb:	48 29 ce                                        	sub    %rcx,%rsi
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:520
   2f8fe:	48 39 c6                                        	cmp    %rax,%rsi
   2f901:	4d 0f 4c f7                                     	cmovl  %r15,%r14
   2f905:	4c 89 f0                                        	mov    %r14,%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:942
   2f908:	48 83 c4 08                                     	add    $0x8,%rsp
   2f90c:	5b                                              	pop    %rbx
   2f90d:	41 5c                                           	pop    %r12
   2f90f:	41 5d                                           	pop    %r13
   2f911:	41 5e                                           	pop    %r14
   2f913:	41 5f                                           	pop    %r15
   2f915:	5d                                              	pop    %rbp
   2f916:	c3                                              	ret
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:507
   2f917:	3c 02                                           	cmp    $0x2,%al
   2f919:	75 05                                           	jne    2f920 <_ZN6__asan9Allocator22FindHeapChunkByAddressEm+0xf0>
   2f91b:	4c 89 f8                                        	mov    %r15,%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:511
   2f91e:	eb e8                                           	jmp    2f908 <_ZN6__asan9Allocator22FindHeapChunkByAddressEm+0xd8>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:509
   2f920:	80 fa 02                                        	cmp    $0x2,%dl
   2f923:	74 e0                                           	je     2f905 <_ZN6__asan9Allocator22FindHeapChunkByAddressEm+0xd5>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:511
   2f925:	3c 03                                           	cmp    $0x3,%al
   2f927:	74 f2                                           	je     2f91b <_ZN6__asan9Allocator22FindHeapChunkByAddressEm+0xeb>
   2f929:	4c 89 f0                                        	mov    %r14,%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:513
   2f92c:	80 fa 03                                        	cmp    $0x3,%dl
   2f92f:	75 c1                                           	jne    2f8f2 <_ZN6__asan9Allocator22FindHeapChunkByAddressEm+0xc2>
   2f931:	eb d5                                           	jmp    2f908 <_ZN6__asan9Allocator22FindHeapChunkByAddressEm+0xd8>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:519
   2f933:	48 8d 3d 86 ea 0e 00                            	lea    0xeea86(%rip),%rdi        # 11e3c0 <_ZN11__sanitizerL10kExtraRegsE+0x70>
   2f93a:	48 8d 15 8b ef 0e 00                            	lea    0xeef8b(%rip),%rdx        # 11e8cc <_ZN11__sanitizerL10kExtraRegsE+0x57c>
   2f941:	be 07 02 00 00                                  	mov    $0x207,%esi
   2f946:	31 c9                                           	xor    %ecx,%ecx
   2f948:	45 31 c0                                        	xor    %r8d,%r8d
   2f94b:	e8 d0 14 0d 00                                  	call   100e20 <_ZN11__sanitizer11CheckFailedEPKciS1_yy>

000000000002f950 <_ZN6__asan23FindHeapChunkByAllocBegEm>:
_ZN6__asan23FindHeapChunkByAllocBegEm():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:864
   2f950:	48 85 ff                                        	test   %rdi,%rdi
   2f953:	74 52                                           	je     2f9a7 <_ZN6__asan23FindHeapChunkByAllocBegEm+0x57>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2f955:	48 8b 07                                        	mov    (%rdi),%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:181
   2f958:	48 b9 b9 96 6e cc b9 96 6e cc                   	movabs $0xcc6e96b9cc6e96b9,%rcx
Get():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:181
   2f962:	48 39 c8                                        	cmp    %rcx,%rax
   2f965:	75 09                                           	jne    2f970 <_ZN6__asan23FindHeapChunkByAllocBegEm+0x20>
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:182
   2f967:	48 8b 4f 08                                     	mov    0x8(%rdi),%rcx
_ZN6__asan23FindHeapChunkByAllocBegEm():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:867
   2f96b:	48 85 c9                                        	test   %rcx,%rcx
   2f96e:	75 27                                           	jne    2f997 <_ZN6__asan23FindHeapChunkByAllocBegEm+0x47>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:654
   2f970:	48 8b 05 f1 c1 12 00                            	mov    0x12c1f1(%rip),%rax        # 15bb68 <_ZN6__asanL8instanceE+0x20>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:256
   2f977:	48 39 f8                                        	cmp    %rdi,%rax
PointerIsMine():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:256
   2f97a:	0f 97 c1                                        	seta   %cl
   2f97d:	48 ba 00 00 00 00 00 04 00 00                   	movabs $0x40000000000,%rdx
   2f987:	48 01 c2                                        	add    %rax,%rdx
   2f98a:	48 39 fa                                        	cmp    %rdi,%rdx
   2f98d:	0f 96 c0                                        	setbe  %al
_ZN6__asan23FindHeapChunkByAllocBegEm():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:868
   2f990:	08 c8                                           	or     %cl,%al
   2f992:	48 89 f9                                        	mov    %rdi,%rcx
   2f995:	75 10                                           	jne    2f9a7 <_ZN6__asan23FindHeapChunkByAllocBegEm+0x57>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2f997:	0f b6 11                                        	movzbl (%rcx),%edx
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:875
   2f99a:	80 e2 fe                                        	and    $0xfe,%dl
   2f99d:	31 c0                                           	xor    %eax,%eax
   2f99f:	80 fa 02                                        	cmp    $0x2,%dl
   2f9a2:	48 0f 44 c1                                     	cmove  %rcx,%rax
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1058
   2f9a6:	c3                                              	ret
   2f9a7:	31 c0                                           	xor    %eax,%eax
   2f9a9:	c3                                              	ret
   2f9aa:	66 0f 1f 44 00 00                               	nopw   0x0(%rax,%rax,1)

000000000002f9b0 <_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv>:
_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1061
   2f9b0:	55                                              	push   %rbp
   2f9b1:	48 89 e5                                        	mov    %rsp,%rbp
   2f9b4:	41 57                                           	push   %r15
   2f9b6:	41 56                                           	push   %r14
   2f9b8:	41 55                                           	push   %r13
   2f9ba:	41 54                                           	push   %r12
   2f9bc:	53                                              	push   %rbx
   2f9bd:	48 81 ec 58 08 00 00                            	sub    $0x858,%rsp
   2f9c4:	49 89 ff                                        	mov    %rdi,%r15
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_stacktrace.h:113
   2f9c7:	48 8d 85 98 f7 ff ff                            	lea    -0x868(%rbp),%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_stacktrace.h:53
   2f9ce:	48 89 85 88 f7 ff ff                            	mov    %rax,-0x878(%rbp)
StackTrace():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_stacktrace.h:53
   2f9d5:	48 c7 85 90 f7 ff ff 00 00 00 00                	movq   $0x0,-0x870(%rbp)
BufferedStackTrace():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_stacktrace.h:113
   2f9e0:	48 c7 45 90 00 00 00 00                         	movq   $0x0,-0x70(%rbp)
_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1062
   2f9e8:	e8 cb 6c 0b 00                                  	call   e66b8 <_ZN6__asan20GetMallocContextSizeEv>
   2f9ed:	83 f8 02                                        	cmp    $0x2,%eax
   2f9f0:	77 3b                                           	ja     2fa2d <_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv+0x7d>
   2f9f2:	e8 c1 6c 0b 00                                  	call   e66b8 <_ZN6__asan20GetMallocContextSizeEv>
   2f9f7:	89 85 90 f7 ff ff                               	mov    %eax,-0x870(%rbp)
   2f9fd:	e8 b6 6c 0b 00                                  	call   e66b8 <_ZN6__asan20GetMallocContextSizeEv>
   2fa02:	85 c0                                           	test   %eax,%eax
   2fa04:	74 7c                                           	je     2fa82 <_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv+0xd2>
   2fa06:	48 89 6d 90                                     	mov    %rbp,-0x70(%rbp)
   2fa0a:	e8 c9 9d 0d 00                                  	call   1097d8 <_ZN11__sanitizer10StackTrace12GetCurrentPcEv>
   2fa0f:	48 89 85 98 f7 ff ff                            	mov    %rax,-0x868(%rbp)
   2fa16:	e8 9d 6c 0b 00                                  	call   e66b8 <_ZN6__asan20GetMallocContextSizeEv>
   2fa1b:	83 f8 02                                        	cmp    $0x2,%eax
   2fa1e:	72 62                                           	jb     2fa82 <_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv+0xd2>
   2fa20:	48 8b 45 08                                     	mov    0x8(%rbp),%rax
   2fa24:	48 89 85 a0 f7 ff ff                            	mov    %rax,-0x860(%rbp)
   2fa2b:	eb 55                                           	jmp    2fa82 <_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv+0xd2>
   2fa2d:	e8 a6 9d 0d 00                                  	call   1097d8 <_ZN11__sanitizer10StackTrace12GetCurrentPcEv>
   2fa32:	49 89 c6                                        	mov    %rax,%r14
   2fa35:	48 8d 05 9c f6 1c 00                            	lea    0x1cf69c(%rip),%rax        # 1ff0d8 <_ZN11__sanitizer21common_flags_dont_useE>
   2fa3c:	0f b6 58 22                                     	movzbl 0x22(%rax),%ebx
   2fa40:	e8 73 6c 0b 00                                  	call   e66b8 <_ZN6__asan20GetMallocContextSizeEv>
   2fa45:	31 c9                                           	xor    %ecx,%ecx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_stacktrace.h:122
   2fa47:	85 c0                                           	test   %eax,%eax
Unwind():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_stacktrace.h:122
   2fa49:	48 0f 45 cd                                     	cmovne %rbp,%rcx
   2fa4d:	48 89 4d 90                                     	mov    %rcx,-0x70(%rbp)
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_stacktrace.h:124
   2fa51:	83 f8 01                                        	cmp    $0x1,%eax
   2fa54:	77 11                                           	ja     2fa67 <_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv+0xb7>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_stacktrace.h:125
   2fa56:	75 07                                           	jne    2fa5f <_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv+0xaf>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_stacktrace.h:126
   2fa58:	4c 89 b5 98 f7 ff ff                            	mov    %r14,-0x868(%rbp)
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_stacktrace.h:127
   2fa5f:	89 85 90 f7 ff ff                               	mov    %eax,-0x870(%rbp)
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_stacktrace.h:128
   2fa65:	eb 1b                                           	jmp    2fa82 <_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv+0xd2>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_stacktrace.h:130
   2fa67:	44 0f b6 c3                                     	movzbl %bl,%r8d
   2fa6b:	48 8d bd 88 f7 ff ff                            	lea    -0x878(%rbp),%rdi
   2fa72:	4c 89 f6                                        	mov    %r14,%rsi
   2fa75:	48 89 ea                                        	mov    %rbp,%rdx
   2fa78:	31 c9                                           	xor    %ecx,%ecx
   2fa7a:	41 89 c1                                        	mov    %eax,%r9d
   2fa7d:	e8 3e 6c 0b 00                                  	call   e66c0 <_ZN11__sanitizer18BufferedStackTrace10UnwindImplEmmPvbj>
_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:325
   2fa82:	49 8d 97 80 00 00 00                            	lea    0x80(%r15),%rdx
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:853
   2fa89:	48 8d 3d 90 c3 12 00                            	lea    0x12c390(%rip),%rdi        # 15be20 <_ZN6__asanL8instanceE+0x2d8>
CommitBack():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:853
   2fa90:	48 8d 8d 88 f7 ff ff                            	lea    -0x878(%rbp),%rcx
   2fa97:	4c 89 fe                                        	mov    %r15,%rsi
   2fa9a:	48 89 55 d0                                     	mov    %rdx,-0x30(%rbp)
   2fa9e:	e8 8d 29 00 00                                  	call   32430 <_ZN11__sanitizer10QuarantineIN6__asan18QuarantineCallbackENS1_9AsanChunkEE5DrainEPNS_15QuarantineCacheIS2_EES2_>
   2faa3:	4c 8d 2d 9e c0 12 00                            	lea    0x12c09e(%rip),%r13        # 15bb48 <_ZN6__asanL8instanceE>
_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:50
   2faaa:	4c 89 6d 98                                     	mov    %r13,-0x68(%rbp)
MemoryMapper():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_primary64.h:78
   2faae:	0f 57 c0                                        	xorps  %xmm0,%xmm0
   2fab1:	0f 11 45 a0                                     	movups %xmm0,-0x60(%rbp)
_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:538
   2fab5:	48 c7 45 c0 00 00 00 00                         	movq   $0x0,-0x40(%rbp)
Initialize():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:539
   2fabd:	0f 11 45 b0                                     	movups %xmm0,-0x50(%rbp)
   2fac1:	49 81 c7 e0 db 00 00                            	add    $0xdbe0,%r15
   2fac8:	4c 89 7d c8                                     	mov    %r15,-0x38(%rbp)
   2facc:	41 bc 01 00 00 00                               	mov    $0x1,%r12d
   2fad2:	4c 8d 75 98                                     	lea    -0x68(%rbp),%r14
   2fad6:	4c 8b 7d c8                                     	mov    -0x38(%rbp),%r15
   2fada:	eb 0d                                           	jmp    2fae9 <_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv+0x139>
_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv():
   2fadc:	0f 1f 40 00                                     	nopl   0x0(%rax)
Drain():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_local_cache.h:67
   2fae0:	49 ff c4                                        	inc    %r12
   2fae3:	49 83 fc 36                                     	cmp    $0x36,%r12
   2fae7:	74 3d                                           	je     2fb26 <_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv+0x176>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_local_cache.h:68
   2fae9:	49 69 dc 10 04 00 00                            	imul   $0x410,%r12,%rbx
   2faf0:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_local_cache.h:69
   2faf4:	8b 04 18                                        	mov    (%rax,%rbx,1),%eax
   2faf7:	85 c0                                           	test   %eax,%eax
   2faf9:	74 e5                                           	je     2fae0 <_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv+0x130>
   2fafb:	48 03 5d d0                                     	add    -0x30(%rbp),%rbx
   2faff:	90                                              	nop
   2fb00:	41 89 c1                                        	mov    %eax,%r9d
_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_local_cache.h:120
   2fb03:	c7 03 00 00 00 00                               	movl   $0x0,(%rbx)
Drain():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_local_cache.h:121
   2fb09:	4c 89 ef                                        	mov    %r13,%rdi
   2fb0c:	4c 89 f6                                        	mov    %r14,%rsi
   2fb0f:	4c 89 fa                                        	mov    %r15,%rdx
   2fb12:	4c 89 e1                                        	mov    %r12,%rcx
   2fb15:	4c 8d 43 10                                     	lea    0x10(%rbx),%r8
   2fb19:	e8 92 38 00 00                                  	call   333b0 <_ZN11__sanitizer20SizeClassAllocator64IN6__asan4AP64INS_21LocalAddressSpaceViewEEEE17ReturnToAllocatorEPNS_12MemoryMapperIS5_EEPNS_14AllocatorStatsEmPKjm>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_local_cache.h:69
   2fb1e:	8b 03                                           	mov    (%rbx),%eax
   2fb20:	85 c0                                           	test   %eax,%eax
   2fb22:	75 dc                                           	jne    2fb00 <_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv+0x150>
   2fb24:	eb ba                                           	jmp    2fae0 <_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv+0x130>
_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:542
   2fb26:	48 8b 7d b0                                     	mov    -0x50(%rbp),%rdi
Destroy():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_common.h:542
   2fb2a:	48 8b 75 b8                                     	mov    -0x48(%rbp),%rsi
   2fb2e:	31 d2                                           	xor    %edx,%edx
   2fb30:	e8 3b 82 0c 00                                  	call   f7d70 <_ZN11__sanitizer10UnmapOrDieEPvmb>
_ZN6__asan28AsanThreadLocalMallocStorage10CommitBackEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1064
   2fb35:	48 81 c4 58 08 00 00                            	add    $0x858,%rsp
   2fb3c:	5b                                              	pop    %rbx
   2fb3d:	41 5c                                           	pop    %r12
   2fb3f:	41 5d                                           	pop    %r13
   2fb41:	41 5e                                           	pop    %r14
   2fb43:	41 5f                                           	pop    %r15
   2fb45:	5d                                              	pop    %rbp
   2fb46:	c3                                              	ret
   2fb47:	66 0f 1f 84 00 00 00 00 00                      	nopw   0x0(%rax,%rax,1)

000000000002fb50 <_ZN6__asan27PrintInternalAllocatorStatsEv>:
_ZN6__asan27PrintInternalAllocatorStatsEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:1066
   2fb50:	48 8d 3d f1 bf 12 00                            	lea    0x12bff1(%rip),%rdi        # 15bb48 <_ZN6__asanL8instanceE>
   2fb57:	e9 04 00 00 00                                  	jmp    2fb60 <_ZN6__asan9Allocator10PrintStatsEv>
   2fb5c:	0f 1f 40 00                                     	nopl   0x0(%rax)

000000000002fb60 <_ZN6__asan9Allocator10PrintStatsEv>:
_ZN6__asan9Allocator10PrintStatsEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:962
   2fb60:	41 57                                           	push   %r15
   2fb62:	41 56                                           	push   %r14
   2fb64:	53                                              	push   %rbx
   2fb65:	49 89 fe                                        	mov    %rdi,%r14
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_combined.h:172
   2fb68:	e8 a3 46 00 00                                  	call   34210 <_ZN11__sanitizer20SizeClassAllocator64IN6__asan4AP64INS_21LocalAddressSpaceViewEEEE10PrintStatsEv>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:258
   2fb6d:	49 8b 96 88 00 00 00                            	mov    0x88(%r14),%rdx
PrintStats():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:256
   2fb74:	48 89 d6                                        	mov    %rdx,%rsi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:258
   2fb77:	49 2b 96 90 00 00 00                            	sub    0x90(%r14),%rdx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:259
   2fb7e:	49 8b 8e 98 00 00 00                            	mov    0x98(%r14),%rcx
   2fb85:	48 c1 e9 0a                                     	shr    $0xa,%rcx
   2fb89:	4d 8b 86 a0 00 00 00                            	mov    0xa0(%r14),%r8
   2fb90:	49 c1 e8 14                                     	shr    $0x14,%r8
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:256
   2fb94:	48 8d 3d 32 f3 0e 00                            	lea    0xef332(%rip),%rdi        # 11eecd <_ZN11__sanitizerL10kExtraRegsE+0xb7d>
   2fb9b:	31 c0                                           	xor    %eax,%eax
   2fb9d:	e8 4e 9b 0c 00                                  	call   f96f0 <_ZN11__sanitizer6PrintfEPKcz>
   2fba2:	48 8d 1d 82 f3 0e 00                            	lea    0xef382(%rip),%rbx        # 11ef2b <_ZN11__sanitizerL10kExtraRegsE+0xbdb>
   2fba9:	45 31 ff                                        	xor    %r15d,%r15d
   2fbac:	eb 0b                                           	jmp    2fbb9 <_ZN6__asan9Allocator10PrintStatsEv+0x59>
   2fbae:	66 90                                           	xchg   %ax,%ax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:260
   2fbb0:	49 ff c7                                        	inc    %r15
   2fbb3:	49 83 ff 40                                     	cmp    $0x40,%r15
   2fbb7:	74 1c                                           	je     2fbd5 <_ZN6__asan9Allocator10PrintStatsEv+0x75>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:261
   2fbb9:	4b 8b 94 fe a8 00 00 00                         	mov    0xa8(%r14,%r15,8),%rdx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:262
   2fbc1:	48 85 d2                                        	test   %rdx,%rdx
   2fbc4:	74 ea                                           	je     2fbb0 <_ZN6__asan9Allocator10PrintStatsEv+0x50>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:263
   2fbc6:	48 89 df                                        	mov    %rbx,%rdi
   2fbc9:	4c 89 fe                                        	mov    %r15,%rsi
   2fbcc:	31 c0                                           	xor    %eax,%eax
   2fbce:	e8 1d 9b 0c 00                                  	call   f96f0 <_ZN11__sanitizer6PrintfEPKcz>
   2fbd3:	eb db                                           	jmp    2fbb0 <_ZN6__asan9Allocator10PrintStatsEv+0x50>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_allocator_secondary.h:265
   2fbd5:	48 8d 3d 64 ee 0f 00                            	lea    0xfee64(%rip),%rdi        # 12ea40 <_ZN11__sanitizerL10kExtraRegsE+0x106f0>
   2fbdc:	31 db                                           	xor    %ebx,%ebx
   2fbde:	31 c0                                           	xor    %eax,%eax
   2fbe0:	e8 0b 9b 0c 00                                  	call   f96f0 <_ZN11__sanitizer6PrintfEPKcz>
_ZN6__asan9Allocator10PrintStatsEv():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2fbe5:	49 8b b6 18 03 00 00                            	mov    0x318(%r14),%rsi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:131
   2fbec:	48 c1 ee 14                                     	shr    $0x14,%rsi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:56
   2fbf0:	49 8b 96 28 03 00 00                            	mov    0x328(%r14),%rdx
PrintStats():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:131
   2fbf7:	48 c1 ea 0a                                     	shr    $0xa,%rdx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:130
   2fbfb:	48 8d 3d 33 f3 0e 00                            	lea    0xef333(%rip),%rdi        # 11ef35 <_ZN11__sanitizerL10kExtraRegsE+0xbe5>
   2fc02:	31 c0                                           	xor    %eax,%eax
   2fc04:	e8 e7 9a 0c 00                                  	call   f96f0 <_ZN11__sanitizer6PrintfEPKcz>
_ZN6__asan9Allocator10PrintStatsEv():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:277
   2fc09:	49 8b 86 80 03 00 00                            	mov    0x380(%r14),%rax
PrintStats():
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_list.h:140
   2fc10:	48 85 c0                                        	test   %rax,%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:277
   2fc13:	74 70                                           	je     2fc85 <_ZN6__asan9Allocator10PrintStatsEv+0x125>
   2fc15:	31 ff                                           	xor    %edi,%edi
   2fc17:	45 31 c9                                        	xor    %r9d,%r9d
   2fc1a:	31 f6                                           	xor    %esi,%esi
   2fc1c:	45 31 f6                                        	xor    %r14d,%r14d
   2fc1f:	45 31 d2                                        	xor    %r10d,%r10d
   2fc22:	45 31 c0                                        	xor    %r8d,%r8d
   2fc25:	66 66 2e 0f 1f 84 00 00 00 00 00                	data16 cs nopw 0x0(%rax,%rax,1)
   2fc30:	4d 89 d7                                        	mov    %r10,%r15
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:278
   2fc33:	48 ff c6                                        	inc    %rsi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:281
   2fc36:	4c 03 40 10                                     	add    0x10(%rax),%r8
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:279
   2fc3a:	48 8b 48 08                                     	mov    0x8(%rax),%rcx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:277
   2fc3e:	48 8b 00                                        	mov    (%rax),%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:279
   2fc41:	49 01 ca                                        	add    %rcx,%r10
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:280
   2fc44:	49 81 c6 00 20 00 00                            	add    $0x2000,%r14
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:277
   2fc4b:	49 81 c1 fd 03 00 00                            	add    $0x3fd,%r9
   2fc52:	48 81 c7 00 80 0c 00                            	add    $0xc8000,%rdi
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_list.h:140
   2fc59:	48 85 c0                                        	test   %rax,%rax
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:277
   2fc5c:	75 d2                                           	jne    2fc30 <_ZN6__asan9Allocator10PrintStatsEv+0xd0>
   2fc5e:	45 31 db                                        	xor    %r11d,%r11d
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:284
   2fc61:	48 85 f6                                        	test   %rsi,%rsi
   2fc64:	74 31                                           	je     2fc97 <_ZN6__asan9Allocator10PrintStatsEv+0x137>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:285
   2fc66:	49 6b c0 64                                     	imul   $0x64,%r8,%rax
   2fc6a:	48 89 c2                                        	mov    %rax,%rdx
   2fc6d:	4c 09 ca                                        	or     %r9,%rdx
   2fc70:	48 c1 ea 20                                     	shr    $0x20,%rdx
   2fc74:	74 2f                                           	je     2fca5 <_ZN6__asan9Allocator10PrintStatsEv+0x145>
   2fc76:	31 d2                                           	xor    %edx,%edx
   2fc78:	49 f7 f1                                        	div    %r9
   2fc7b:	48 89 c3                                        	mov    %rax,%rbx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:287
   2fc7e:	4d 39 d6                                        	cmp    %r10,%r14
   2fc81:	74 1e                                           	je     2fca1 <_ZN6__asan9Allocator10PrintStatsEv+0x141>
   2fc83:	eb 2c                                           	jmp    2fcb1 <_ZN6__asan9Allocator10PrintStatsEv+0x151>
   2fc85:	31 c9                                           	xor    %ecx,%ecx
   2fc87:	45 31 c0                                        	xor    %r8d,%r8d
   2fc8a:	45 31 d2                                        	xor    %r10d,%r10d
   2fc8d:	31 f6                                           	xor    %esi,%esi
   2fc8f:	45 31 c9                                        	xor    %r9d,%r9d
   2fc92:	45 31 db                                        	xor    %r11d,%r11d
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:277
   2fc95:	eb 42                                           	jmp    2fcd9 <_ZN6__asan9Allocator10PrintStatsEv+0x179>
   2fc97:	45 31 c9                                        	xor    %r9d,%r9d
   2fc9a:	31 db                                           	xor    %ebx,%ebx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:287
   2fc9c:	4d 39 d6                                        	cmp    %r10,%r14
   2fc9f:	75 10                                           	jne    2fcb1 <_ZN6__asan9Allocator10PrintStatsEv+0x151>
   2fca1:	31 c9                                           	xor    %ecx,%ecx
   2fca3:	eb 34                                           	jmp    2fcd9 <_ZN6__asan9Allocator10PrintStatsEv+0x179>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:285
   2fca5:	31 d2                                           	xor    %edx,%edx
   2fca7:	41 f7 f1                                        	div    %r9d
   2fcaa:	89 c3                                           	mov    %eax,%ebx
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:287
   2fcac:	4d 39 d6                                        	cmp    %r10,%r14
   2fcaf:	74 f0                                           	je     2fca1 <_ZN6__asan9Allocator10PrintStatsEv+0x141>
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:288
   2fcb1:	4c 01 f9                                        	add    %r15,%rcx
   2fcb4:	4c 29 f1                                        	sub    %r14,%rcx
   2fcb7:	48 89 f8                                        	mov    %rdi,%rax
   2fcba:	48 09 c8                                        	or     %rcx,%rax
   2fcbd:	48 c1 e8 20                                     	shr    $0x20,%rax
   2fcc1:	74 0d                                           	je     2fcd0 <_ZN6__asan9Allocator10PrintStatsEv+0x170>
   2fcc3:	48 89 f8                                        	mov    %rdi,%rax
   2fcc6:	31 d2                                           	xor    %edx,%edx
   2fcc8:	48 f7 f1                                        	div    %rcx
   2fccb:	49 89 c3                                        	mov    %rax,%r11
   2fcce:	eb 09                                           	jmp    2fcd9 <_ZN6__asan9Allocator10PrintStatsEv+0x179>
   2fcd0:	89 f8                                           	mov    %edi,%eax
   2fcd2:	31 d2                                           	xor    %edx,%edx
   2fcd4:	f7 f1                                           	div    %ecx
   2fcd6:	41 89 c3                                        	mov    %eax,%r11d
/root/llvm-project/compiler-rt/lib/asan/../sanitizer_common/sanitizer_quarantine.h:289
   2fcd9:	48 8d 3d 8c f2 0e 00                            	lea    0xef28c(%rip),%rdi        # 11ef6c <_ZN11__sanitizerL10kExtraRegsE+0xc1c>
   2fce0:	4c 89 d2                                        	mov    %r10,%rdx
   2fce3:	31 c0                                           	xor    %eax,%eax
   2fce5:	41 53                                           	push   %r11
   2fce7:	53                                              	push   %rbx
   2fce8:	e8 03 9a 0c 00                                  	call   f96f0 <_ZN11__sanitizer6PrintfEPKcz>
   2fced:	48 83 c4 10                                     	add    $0x10,%rsp
_ZN6__asan9Allocator10PrintStatsEv():
/root/llvm-project/compiler-rt/lib/asan/asan_allocator.cpp:965
   2fcf1:	5b                                              	pop    %rbx
   2fcf2:	41 5e                                           	pop    %r14
   2fcf4:	41 5f                                           	pop    %r15
   2fcf6:	c3                                              	ret
   2fcf7:	66 0f 1f 84 00 00 00 00 00                      	nopw   0x0(%rax,%rax,1)

000000000011d7c0 <main>:
main():
/app/example.c:3
  11d7c0:	55                                              	push   %rbp
  11d7c1:	48 89 e5                                        	mov    %rsp,%rbp
  11d7c4:	48 83 ec 10                                     	sub    $0x10,%rsp
  11d7c8:	c7 45 fc 00 00 00 00                            	movl   $0x0,-0x4(%rbp)
/app/example.c:4
  11d7cf:	bf 10 00 00 00                                  	mov    $0x10,%edi
  11d7d4:	e8 9f dc fb ff                                  	call   db478 <__interceptor_trampoline_malloc>
  11d7d9:	48 89 45 f0                                     	mov    %rax,-0x10(%rbp)
/app/example.c:5
  11d7dd:	48 8b 7d f0                                     	mov    -0x10(%rbp),%rdi
  11d7e1:	e8 7e dc fb ff                                  	call   db464 <__interceptor_trampoline_free>
/app/example.c:6
  11d7e6:	31 c0                                           	xor    %eax,%eax
  11d7e8:	48 83 c4 10                                     	add    $0x10,%rsp
  11d7ec:	5d                                              	pop    %rbp
  11d7ed:	c3                                              	ret
  11d7ee:	66 90                                           	xchg   %ax,%ax

000000000011d7f0 <asan.module_ctor>:
asan.module_ctor():
  11d7f0:	55                                              	push   %rbp
  11d7f1:	48 89 e5                                        	mov    %rsp,%rbp
  11d7f4:	e8 c7 85 fc ff                                  	call   e5dc0 <__asan_init>
  11d7f9:	e8 09 86 fc ff                                  	call   e5e07 <__asan_version_mismatch_check_v8>
  11d7fe:	48 8d 3d 13 24 99 00                            	lea    0x992413(%rip),%rdi        # aafc18 <___asan_globals_registered>
  11d805:	48 c7 c6 00 00 00 00                            	mov    $0x0,%rsi
  11d80c:	48 c7 c2 00 00 00 00                            	mov    $0x0,%rdx
  11d813:	e8 08 76 f2 ff                                  	call   44e20 <__asan_register_elf_globals>
  11d818:	5d                                              	pop    %rbp
  11d819:	c3                                              	ret
  11d81a:	66 0f 1f 44 00 00                               	nopw   0x0(%rax,%rax,1)

000000000011d820 <atexit>:
atexit():
  11d820:	f3 0f 1e fa                                     	endbr64
  11d824:	48 8b 15 fd b8 03 00                            	mov    0x3b8fd(%rip),%rdx        # 159128 <__dso_handle>
  11d82b:	31 f6                                           	xor    %esi,%esi
  11d82d:	e9 a5 99 f2 ff                                  	jmp    471d7 <__interceptor_trampoline___cxa_atexit>
  11d832:	66 2e 0f 1f 84 00 00 00 00 00                   	cs nopw 0x0(%rax,%rax,1)
  11d83c:	0f 1f 40 00                                     	nopl   0x0(%rax)

000000000011d840 <__pthread_atfork>:
pthread_atfork():
  11d840:	f3 0f 1e fa                                     	endbr64
  11d844:	48 8b 0d dd b8 03 00                            	mov    0x3b8dd(%rip),%rcx        # 159128 <__dso_handle>
  11d84b:	e9 80 f8 f0 ff                                  	jmp    2d0d0 <__register_atfork@plt>

Disassembly of section .fini:

000000000011d850 <_fini>:
_fini():
  11d850:	f3 0f 1e fa                                     	endbr64
  11d854:	48 83 ec 08                                     	sub    $0x8,%rsp
  11d858:	48 83 c4 08                                     	add    $0x8,%rsp
  11d85c:	c3                                              	ret
