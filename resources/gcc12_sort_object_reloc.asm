
./stage1-gcc/build/sort.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <cmp2to3(void const*, void const*, void*)>:
cmp2to3(void const*, void const*, void*):
/foo/bar/git/gcc-test/gcc/sort.cc:248
       0:	55                                              	push   %rbp
       1:	48 89 e5                                        	mov    %rsp,%rbp
       4:	48 83 ec 20                                     	sub    $0x20,%rsp
       8:	48 89 7d f8                                     	mov    %rdi,-0x8(%rbp)
       c:	48 89 75 f0                                     	mov    %rsi,-0x10(%rbp)
      10:	48 89 55 e8                                     	mov    %rdx,-0x18(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:249
      14:	48 8b 4d e8                                     	mov    -0x18(%rbp),%rcx
      18:	48 8b 55 f0                                     	mov    -0x10(%rbp),%rdx
      1c:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
      20:	48 89 d6                                        	mov    %rdx,%rsi
      23:	48 89 c7                                        	mov    %rax,%rdi
      26:	ff d1                                           	call   *%rcx
/foo/bar/git/gcc-test/gcc/sort.cc:250
      28:	c9                                              	leave
      29:	c3                                              	ret

000000000000002a <gcc_qsort(void*, unsigned long, unsigned long, int (*)(void const*, void const*))>:
gcc_qsort(void*, unsigned long, unsigned long, int (*)(void const*, void const*)):
/foo/bar/git/gcc-test/gcc/sort.cc:256
      2a:	55                                              	push   %rbp
      2b:	48 89 e5                                        	mov    %rsp,%rbp
      2e:	48 81 ec 70 01 00 00                            	sub    $0x170,%rsp
      35:	48 89 bd a8 fe ff ff                            	mov    %rdi,-0x158(%rbp)
      3c:	48 89 b5 a0 fe ff ff                            	mov    %rsi,-0x160(%rbp)
      43:	48 89 95 98 fe ff ff                            	mov    %rdx,-0x168(%rbp)
      4a:	48 89 8d 90 fe ff ff                            	mov    %rcx,-0x170(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:257
      51:	48 83 bd a0 fe ff ff 01                         	cmpq   $0x1,-0x160(%rbp)
      59:	0f 86 11 01 00 00                               	jbe    170 <gcc_qsort(void*, unsigned long, unsigned long, int (*)(void const*, void const*))+0x146>
/foo/bar/git/gcc-test/gcc/sort.cc:259
      5f:	48 c7 45 f8 05 00 00 00                         	movq   $0x5,-0x8(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:260
      67:	48 8b 85 98 fe ff ff                            	mov    -0x168(%rbp),%rax
      6e:	48 c1 e8 3f                                     	shr    $0x3f,%rax
      72:	88 45 f7                                        	mov    %al,-0x9(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:261
      75:	80 7d f7 00                                     	cmpb   $0x0,-0x9(%rbp)
      79:	74 0f                                           	je     8a <gcc_qsort(void*, unsigned long, unsigned long, int (*)(void const*, void const*))+0x60>
/foo/bar/git/gcc-test/gcc/sort.cc:262
      7b:	48 c7 45 f8 03 00 00 00                         	movq   $0x3,-0x8(%rbp)
      83:	48 f7 95 98 fe ff ff                            	notq   -0x168(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:263
      8a:	48 8b 85 a8 fe ff ff                            	mov    -0x158(%rbp),%rax
      91:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:264
      95:	48 8b 85 90 fe ff ff                            	mov    -0x170(%rbp),%rax
      9c:	48 89 45 b0                                     	mov    %rax,-0x50(%rbp)
      a0:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
      a4:	48 89 45 b8                                     	mov    %rax,-0x48(%rbp)
      a8:	48 8b 85 a0 fe ff ff                            	mov    -0x160(%rbp),%rax
      af:	48 89 45 c0                                     	mov    %rax,-0x40(%rbp)
      b3:	48 8b 85 98 fe ff ff                            	mov    -0x168(%rbp),%rax
      ba:	48 89 45 c8                                     	mov    %rax,-0x38(%rbp)
      be:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
      c2:	48 89 45 d0                                     	mov    %rax,-0x30(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:266
      c6:	48 8b 85 a0 fe ff ff                            	mov    -0x160(%rbp),%rax
      cd:	48 d1 e8                                        	shr    %rax
      d0:	48 89 c2                                        	mov    %rax,%rdx
      d3:	48 8b 85 98 fe ff ff                            	mov    -0x168(%rbp),%rax
      da:	48 0f af c2                                     	imul   %rdx,%rax
      de:	48 89 45 e0                                     	mov    %rax,-0x20(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:267
      e2:	48 81 7d e0 00 01 00 00                         	cmpq   $0x100,-0x20(%rbp)
      ea:	77 09                                           	ja     f5 <gcc_qsort(void*, unsigned long, unsigned long, int (*)(void const*, void const*))+0xcb>
/foo/bar/git/gcc-test/gcc/sort.cc:267 (discriminator 1)
      ec:	48 8d 85 b0 fe ff ff                            	lea    -0x150(%rbp),%rax
      f3:	eb 0c                                           	jmp    101 <gcc_qsort(void*, unsigned long, unsigned long, int (*)(void const*, void const*))+0xd7>
/foo/bar/git/gcc-test/gcc/sort.cc:267 (discriminator 2)
      f5:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
      f9:	48 89 c7                                        	mov    %rax,%rdi
      fc:	e8 00 00 00 00                                  	call   101 <gcc_qsort(void*, unsigned long, unsigned long, int (*)(void const*, void const*))+0xd7>
			fd: R_X86_64_PLT32	xmalloc-0x4
/foo/bar/git/gcc-test/gcc/sort.cc:267 (discriminator 4)
     101:	48 89 45 d8                                     	mov    %rax,-0x28(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:268 (discriminator 4)
     105:	48 8b 7d d8                                     	mov    -0x28(%rbp),%rdi
     109:	48 8b 4d e8                                     	mov    -0x18(%rbp),%rcx
     10d:	48 8b 95 a0 fe ff ff                            	mov    -0x160(%rbp),%rdx
     114:	48 8d 75 b0                                     	lea    -0x50(%rbp),%rsi
     118:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
     11c:	49 89 f8                                        	mov    %rdi,%r8
     11f:	48 89 c7                                        	mov    %rax,%rdi
     122:	e8 30 02 00 00                                  	call   357 <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)>
/foo/bar/git/gcc-test/gcc/sort.cc:269 (discriminator 4)
     127:	48 8d 85 b0 fe ff ff                            	lea    -0x150(%rbp),%rax
     12e:	48 39 45 d8                                     	cmp    %rax,-0x28(%rbp)
     132:	74 0c                                           	je     140 <gcc_qsort(void*, unsigned long, unsigned long, int (*)(void const*, void const*))+0x116>
/foo/bar/git/gcc-test/gcc/sort.cc:270
     134:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
     138:	48 89 c7                                        	mov    %rax,%rdi
     13b:	e8 00 00 00 00                                  	call   140 <gcc_qsort(void*, unsigned long, unsigned long, int (*)(void const*, void const*))+0x116>
			13c: R_X86_64_PLT32	free-0x4
/foo/bar/git/gcc-test/gcc/sort.cc:272
     140:	48 8b 8d 90 fe ff ff                            	mov    -0x170(%rbp),%rcx
     147:	48 8b 95 98 fe ff ff                            	mov    -0x168(%rbp),%rdx
     14e:	48 8b b5 a0 fe ff ff                            	mov    -0x160(%rbp),%rsi
     155:	48 8b 85 a8 fe ff ff                            	mov    -0x158(%rbp),%rax
     15c:	49 89 c8                                        	mov    %rcx,%r8
     15f:	48 8d 0d 9a fe ff ff                            	lea    -0x166(%rip),%rcx        # 0 <cmp2to3(void const*, void const*, void*)>
     166:	48 89 c7                                        	mov    %rax,%rdi
     169:	e8 00 00 00 00                                  	call   16e <gcc_qsort(void*, unsigned long, unsigned long, int (*)(void const*, void const*))+0x144>
			16a: R_X86_64_PLT32	qsort_chk(void*, unsigned long, unsigned long, int (*)(void const*, void const*, void*), void*)-0x4
     16e:	eb 01                                           	jmp    171 <gcc_qsort(void*, unsigned long, unsigned long, int (*)(void const*, void const*))+0x147>
/foo/bar/git/gcc-test/gcc/sort.cc:258
     170:	90                                              	nop
/foo/bar/git/gcc-test/gcc/sort.cc:275
     171:	c9                                              	leave
     172:	c3                                              	ret

0000000000000173 <gcc_sort_r(void*, unsigned long, unsigned long, int (*)(void const*, void const*, void*), void*)>:
gcc_sort_r(void*, unsigned long, unsigned long, int (*)(void const*, void const*, void*), void*):
/foo/bar/git/gcc-test/gcc/sort.cc:280
     173:	55                                              	push   %rbp
     174:	48 89 e5                                        	mov    %rsp,%rbp
     177:	48 81 ec 90 01 00 00                            	sub    $0x190,%rsp
     17e:	48 89 bd 98 fe ff ff                            	mov    %rdi,-0x168(%rbp)
     185:	48 89 b5 90 fe ff ff                            	mov    %rsi,-0x170(%rbp)
     18c:	48 89 95 88 fe ff ff                            	mov    %rdx,-0x178(%rbp)
     193:	48 89 8d 80 fe ff ff                            	mov    %rcx,-0x180(%rbp)
     19a:	4c 89 85 78 fe ff ff                            	mov    %r8,-0x188(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:281
     1a1:	48 83 bd 90 fe ff ff 01                         	cmpq   $0x1,-0x170(%rbp)
     1a9:	0f 86 1c 01 00 00                               	jbe    2cb <gcc_sort_r(void*, unsigned long, unsigned long, int (*)(void const*, void const*, void*), void*)+0x158>
/foo/bar/git/gcc-test/gcc/sort.cc:283
     1af:	48 c7 45 f8 05 00 00 00                         	movq   $0x5,-0x8(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:284
     1b7:	48 8b 85 88 fe ff ff                            	mov    -0x178(%rbp),%rax
     1be:	48 c1 e8 3f                                     	shr    $0x3f,%rax
     1c2:	88 45 f7                                        	mov    %al,-0x9(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:285
     1c5:	80 7d f7 00                                     	cmpb   $0x0,-0x9(%rbp)
     1c9:	74 0f                                           	je     1da <gcc_sort_r(void*, unsigned long, unsigned long, int (*)(void const*, void const*, void*), void*)+0x67>
/foo/bar/git/gcc-test/gcc/sort.cc:286
     1cb:	48 c7 45 f8 03 00 00 00                         	movq   $0x3,-0x8(%rbp)
     1d3:	48 f7 95 88 fe ff ff                            	notq   -0x178(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:287
     1da:	48 8b 85 98 fe ff ff                            	mov    -0x168(%rbp),%rax
     1e1:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:288
     1e5:	48 8b 85 78 fe ff ff                            	mov    -0x188(%rbp),%rax
     1ec:	48 89 45 a0                                     	mov    %rax,-0x60(%rbp)
     1f0:	48 8b 85 80 fe ff ff                            	mov    -0x180(%rbp),%rax
     1f7:	48 89 45 a8                                     	mov    %rax,-0x58(%rbp)
     1fb:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
     1ff:	48 89 45 b0                                     	mov    %rax,-0x50(%rbp)
     203:	48 8b 85 90 fe ff ff                            	mov    -0x170(%rbp),%rax
     20a:	48 89 45 b8                                     	mov    %rax,-0x48(%rbp)
     20e:	48 8b 85 88 fe ff ff                            	mov    -0x178(%rbp),%rax
     215:	48 89 45 c0                                     	mov    %rax,-0x40(%rbp)
     219:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     21d:	48 89 45 c8                                     	mov    %rax,-0x38(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:290
     221:	48 8b 85 90 fe ff ff                            	mov    -0x170(%rbp),%rax
     228:	48 d1 e8                                        	shr    %rax
     22b:	48 89 c2                                        	mov    %rax,%rdx
     22e:	48 8b 85 88 fe ff ff                            	mov    -0x178(%rbp),%rax
     235:	48 0f af c2                                     	imul   %rdx,%rax
     239:	48 89 45 e0                                     	mov    %rax,-0x20(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:291
     23d:	48 81 7d e0 00 01 00 00                         	cmpq   $0x100,-0x20(%rbp)
     245:	77 09                                           	ja     250 <gcc_sort_r(void*, unsigned long, unsigned long, int (*)(void const*, void const*, void*), void*)+0xdd>
/foo/bar/git/gcc-test/gcc/sort.cc:291 (discriminator 1)
     247:	48 8d 85 a0 fe ff ff                            	lea    -0x160(%rbp),%rax
     24e:	eb 0c                                           	jmp    25c <gcc_sort_r(void*, unsigned long, unsigned long, int (*)(void const*, void const*, void*), void*)+0xe9>
/foo/bar/git/gcc-test/gcc/sort.cc:291 (discriminator 2)
     250:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
     254:	48 89 c7                                        	mov    %rax,%rdi
     257:	e8 00 00 00 00                                  	call   25c <gcc_sort_r(void*, unsigned long, unsigned long, int (*)(void const*, void const*, void*), void*)+0xe9>
			258: R_X86_64_PLT32	xmalloc-0x4
/foo/bar/git/gcc-test/gcc/sort.cc:291 (discriminator 4)
     25c:	48 89 45 d8                                     	mov    %rax,-0x28(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:292 (discriminator 4)
     260:	48 8b 7d d8                                     	mov    -0x28(%rbp),%rdi
     264:	48 8b 4d e8                                     	mov    -0x18(%rbp),%rcx
     268:	48 8b 95 90 fe ff ff                            	mov    -0x170(%rbp),%rdx
     26f:	48 8d 75 a0                                     	lea    -0x60(%rbp),%rsi
     273:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
     277:	49 89 f8                                        	mov    %rdi,%r8
     27a:	48 89 c7                                        	mov    %rax,%rdi
     27d:	e8 b6 04 00 00                                  	call   738 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)>
/foo/bar/git/gcc-test/gcc/sort.cc:293 (discriminator 4)
     282:	48 8d 85 a0 fe ff ff                            	lea    -0x160(%rbp),%rax
     289:	48 39 45 d8                                     	cmp    %rax,-0x28(%rbp)
     28d:	74 0c                                           	je     29b <gcc_sort_r(void*, unsigned long, unsigned long, int (*)(void const*, void const*, void*), void*)+0x128>
/foo/bar/git/gcc-test/gcc/sort.cc:294
     28f:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
     293:	48 89 c7                                        	mov    %rax,%rdi
     296:	e8 00 00 00 00                                  	call   29b <gcc_sort_r(void*, unsigned long, unsigned long, int (*)(void const*, void const*, void*), void*)+0x128>
			297: R_X86_64_PLT32	free-0x4
/foo/bar/git/gcc-test/gcc/sort.cc:296
     29b:	48 8b bd 78 fe ff ff                            	mov    -0x188(%rbp),%rdi
     2a2:	48 8b 8d 80 fe ff ff                            	mov    -0x180(%rbp),%rcx
     2a9:	48 8b 95 88 fe ff ff                            	mov    -0x178(%rbp),%rdx
     2b0:	48 8b b5 90 fe ff ff                            	mov    -0x170(%rbp),%rsi
     2b7:	48 8b 85 98 fe ff ff                            	mov    -0x168(%rbp),%rax
     2be:	49 89 f8                                        	mov    %rdi,%r8
     2c1:	48 89 c7                                        	mov    %rax,%rdi
     2c4:	e8 00 00 00 00                                  	call   2c9 <gcc_sort_r(void*, unsigned long, unsigned long, int (*)(void const*, void const*, void*), void*)+0x156>
			2c5: R_X86_64_PLT32	qsort_chk(void*, unsigned long, unsigned long, int (*)(void const*, void const*, void*), void*)-0x4
     2c9:	eb 01                                           	jmp    2cc <gcc_sort_r(void*, unsigned long, unsigned long, int (*)(void const*, void const*, void*), void*)+0x159>
/foo/bar/git/gcc-test/gcc/sort.cc:282
     2cb:	90                                              	nop
/foo/bar/git/gcc-test/gcc/sort.cc:298
     2cc:	c9                                              	leave
     2cd:	c3                                              	ret

00000000000002ce <gcc_stablesort(void*, unsigned long, unsigned long, int (*)(void const*, void const*))>:
gcc_stablesort(void*, unsigned long, unsigned long, int (*)(void const*, void const*)):
/foo/bar/git/gcc-test/gcc/sort.cc:303
     2ce:	55                                              	push   %rbp
     2cf:	48 89 e5                                        	mov    %rsp,%rbp
     2d2:	48 83 ec 20                                     	sub    $0x20,%rsp
     2d6:	48 89 7d f8                                     	mov    %rdi,-0x8(%rbp)
     2da:	48 89 75 f0                                     	mov    %rsi,-0x10(%rbp)
     2de:	48 89 55 e8                                     	mov    %rdx,-0x18(%rbp)
     2e2:	48 89 4d e0                                     	mov    %rcx,-0x20(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:304
     2e6:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
     2ea:	48 f7 d0                                        	not    %rax
     2ed:	48 89 c7                                        	mov    %rax,%rdi
     2f0:	48 8b 55 e0                                     	mov    -0x20(%rbp),%rdx
     2f4:	48 8b 75 f0                                     	mov    -0x10(%rbp),%rsi
     2f8:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     2fc:	48 89 d1                                        	mov    %rdx,%rcx
     2ff:	48 89 fa                                        	mov    %rdi,%rdx
     302:	48 89 c7                                        	mov    %rax,%rdi
     305:	e8 00 00 00 00                                  	call   30a <gcc_stablesort(void*, unsigned long, unsigned long, int (*)(void const*, void const*))+0x3c>
			306: R_X86_64_PLT32	gcc_qsort(void*, unsigned long, unsigned long, int (*)(void const*, void const*))-0x4
/foo/bar/git/gcc-test/gcc/sort.cc:305
     30a:	90                                              	nop
     30b:	c9                                              	leave
     30c:	c3                                              	ret

000000000000030d <gcc_stablesort_r(void*, unsigned long, unsigned long, int (*)(void const*, void const*, void*), void*)>:
gcc_stablesort_r(void*, unsigned long, unsigned long, int (*)(void const*, void const*, void*), void*):
/foo/bar/git/gcc-test/gcc/sort.cc:311
     30d:	55                                              	push   %rbp
     30e:	48 89 e5                                        	mov    %rsp,%rbp
     311:	48 83 ec 30                                     	sub    $0x30,%rsp
     315:	48 89 7d f8                                     	mov    %rdi,-0x8(%rbp)
     319:	48 89 75 f0                                     	mov    %rsi,-0x10(%rbp)
     31d:	48 89 55 e8                                     	mov    %rdx,-0x18(%rbp)
     321:	48 89 4d e0                                     	mov    %rcx,-0x20(%rbp)
     325:	4c 89 45 d8                                     	mov    %r8,-0x28(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:312
     329:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
     32d:	48 f7 d0                                        	not    %rax
     330:	48 89 c7                                        	mov    %rax,%rdi
     333:	48 8b 4d d8                                     	mov    -0x28(%rbp),%rcx
     337:	48 8b 55 e0                                     	mov    -0x20(%rbp),%rdx
     33b:	48 8b 75 f0                                     	mov    -0x10(%rbp),%rsi
     33f:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     343:	49 89 c8                                        	mov    %rcx,%r8
     346:	48 89 d1                                        	mov    %rdx,%rcx
     349:	48 89 fa                                        	mov    %rdi,%rdx
     34c:	48 89 c7                                        	mov    %rax,%rdi
     34f:	e8 00 00 00 00                                  	call   354 <gcc_stablesort_r(void*, unsigned long, unsigned long, int (*)(void const*, void const*, void*), void*)+0x47>
			350: R_X86_64_PLT32	gcc_sort_r(void*, unsigned long, unsigned long, int (*)(void const*, void const*, void*), void*)-0x4
/foo/bar/git/gcc-test/gcc/sort.cc:313
     354:	90                                              	nop
     355:	c9                                              	leave
     356:	c3                                              	ret

0000000000000357 <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)>:
void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*):
/foo/bar/git/gcc-test/gcc/sort.cc:199
     357:	55                                              	push   %rbp
     358:	48 89 e5                                        	mov    %rsp,%rbp
     35b:	48 81 ec a0 00 00 00                            	sub    $0xa0,%rsp
     362:	48 89 7d 88                                     	mov    %rdi,-0x78(%rbp)
     366:	48 89 75 80                                     	mov    %rsi,-0x80(%rbp)
     36a:	48 89 95 78 ff ff ff                            	mov    %rdx,-0x88(%rbp)
     371:	48 89 8d 70 ff ff ff                            	mov    %rcx,-0x90(%rbp)
     378:	4c 89 85 68 ff ff ff                            	mov    %r8,-0x98(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:201
     37f:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     383:	48 8b 40 20                                     	mov    0x20(%rax),%rax
     387:	48 3b 85 78 ff ff ff                            	cmp    -0x88(%rbp),%rax
     38e:	0f 93 c0                                        	setae  %al
     391:	0f b6 c0                                        	movzbl %al,%eax
     394:	48 85 c0                                        	test   %rax,%rax
     397:	74 36                                           	je     3cf <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)+0x78>
/foo/bar/git/gcc-test/gcc/sort.cc:203
     399:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     39d:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
     3a4:	48 89 50 08                                     	mov    %rdx,0x8(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:204
     3a8:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     3ac:	48 8b 95 78 ff ff ff                            	mov    -0x88(%rbp),%rdx
     3b3:	48 89 50 10                                     	mov    %rdx,0x10(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:205
     3b7:	48 8b 55 80                                     	mov    -0x80(%rbp),%rdx
     3bb:	48 8b 45 88                                     	mov    -0x78(%rbp),%rax
     3bf:	48 89 d6                                        	mov    %rdx,%rsi
     3c2:	48 89 c7                                        	mov    %rax,%rdi
     3c5:	e8 4f 07 00 00                                  	call   b19 <void netsort<sort_ctx>(char*, sort_ctx*)>
     3ca:	e9 67 03 00 00                                  	jmp    736 <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)+0x3df>
/foo/bar/git/gcc-test/gcc/sort.cc:207
     3cf:	48 8b 85 78 ff ff ff                            	mov    -0x88(%rbp),%rax
     3d6:	48 d1 e8                                        	shr    %rax
     3d9:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
     3dd:	48 8b 85 78 ff ff ff                            	mov    -0x88(%rbp),%rax
     3e4:	48 2b 45 e8                                     	sub    -0x18(%rbp),%rax
     3e8:	48 89 45 e0                                     	mov    %rax,-0x20(%rbp)
     3ec:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     3f0:	48 8b 40 18                                     	mov    0x18(%rax),%rax
     3f4:	48 8b 55 e8                                     	mov    -0x18(%rbp),%rdx
     3f8:	48 0f af c2                                     	imul   %rdx,%rax
     3fc:	48 89 45 d8                                     	mov    %rax,-0x28(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:208
     400:	48 8b 55 88                                     	mov    -0x78(%rbp),%rdx
     404:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
     408:	48 01 d0                                        	add    %rdx,%rax
     40b:	48 89 45 d0                                     	mov    %rax,-0x30(%rbp)
     40f:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
     416:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
     41a:	48 01 d0                                        	add    %rdx,%rax
     41d:	48 89 45 f8                                     	mov    %rax,-0x8(%rbp)
     421:	48 8b 45 88                                     	mov    -0x78(%rbp),%rax
     425:	48 3b 85 70 ff ff ff                            	cmp    -0x90(%rbp),%rax
     42c:	75 09                                           	jne    437 <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)+0xe0>
/foo/bar/git/gcc-test/gcc/sort.cc:208 (discriminator 1)
     42e:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
     435:	eb 04                                           	jmp    43b <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)+0xe4>
/foo/bar/git/gcc-test/gcc/sort.cc:208 (discriminator 2)
     437:	48 8b 45 88                                     	mov    -0x78(%rbp),%rax
/foo/bar/git/gcc-test/gcc/sort.cc:208 (discriminator 4)
     43b:	48 89 45 f0                                     	mov    %rax,-0x10(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:210 (discriminator 4)
     43f:	48 8b bd 68 ff ff ff                            	mov    -0x98(%rbp),%rdi
     446:	48 8b 4d f8                                     	mov    -0x8(%rbp),%rcx
     44a:	48 8b 55 e0                                     	mov    -0x20(%rbp),%rdx
     44e:	48 8b 75 80                                     	mov    -0x80(%rbp),%rsi
     452:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
     456:	49 89 f8                                        	mov    %rdi,%r8
     459:	48 89 c7                                        	mov    %rax,%rdi
     45c:	e8 f6 fe ff ff                                  	call   357 <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)>
/foo/bar/git/gcc-test/gcc/sort.cc:212 (discriminator 4)
     461:	48 8b 7d d0                                     	mov    -0x30(%rbp),%rdi
     465:	48 8b 4d f0                                     	mov    -0x10(%rbp),%rcx
     469:	48 8b 55 e8                                     	mov    -0x18(%rbp),%rdx
     46d:	48 8b 75 80                                     	mov    -0x80(%rbp),%rsi
     471:	48 8b 45 88                                     	mov    -0x78(%rbp),%rax
     475:	49 89 f8                                        	mov    %rdi,%r8
     478:	48 89 c7                                        	mov    %rax,%rdi
     47b:	e8 d7 fe ff ff                                  	call   357 <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)>
/foo/bar/git/gcc-test/gcc/sort.cc:226 (discriminator 4)
     480:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     484:	48 8b 10                                        	mov    (%rax),%rdx
     487:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     48b:	48 2b 85 70 ff ff ff                            	sub    -0x90(%rbp),%rax
     492:	48 89 c1                                        	mov    %rax,%rcx
     495:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     499:	48 8b 40 18                                     	mov    0x18(%rax),%rax
     49d:	48 29 c1                                        	sub    %rax,%rcx
     4a0:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     4a4:	48 01 c1                                        	add    %rax,%rcx
     4a7:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     4ab:	48 89 ce                                        	mov    %rcx,%rsi
     4ae:	48 89 c7                                        	mov    %rax,%rdi
     4b1:	ff d2                                           	call   *%rdx
     4b3:	c1 e8 1f                                        	shr    $0x1f,%eax
     4b6:	0f b6 c0                                        	movzbl %al,%eax
     4b9:	48 85 c0                                        	test   %rax,%rax
     4bc:	0f 95 c0                                        	setne  %al
     4bf:	84 c0                                           	test   %al,%al
     4c1:	0f 84 4b 02 00 00                               	je     712 <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)+0x3bb>
/foo/bar/git/gcc-test/gcc/sort.cc:228
     4c7:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     4cb:	48 8b 40 18                                     	mov    0x18(%rax),%rax
     4cf:	48 0f af 85 78 ff ff ff                         	imul   -0x88(%rbp),%rax
     4d7:	48 89 c2                                        	mov    %rax,%rdx
     4da:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     4e1:	48 01 d0                                        	add    %rdx,%rax
     4e4:	48 89 45 c8                                     	mov    %rax,-0x38(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:229
     4e8:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     4ec:	48 8b 40 18                                     	mov    0x18(%rax),%rax
     4f0:	48 83 f8 08                                     	cmp    $0x8,%rax
     4f4:	0f 94 c0                                        	sete   %al
     4f7:	0f b6 c0                                        	movzbl %al,%eax
     4fa:	48 85 c0                                        	test   %rax,%rax
     4fd:	0f 84 9b 00 00 00                               	je     59e <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)+0x247>
/foo/bar/git/gcc-test/gcc/sort.cc:230 (discriminator 3)
     503:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     507:	48 8b 08                                        	mov    (%rax),%rcx
     50a:	48 8b 55 f0                                     	mov    -0x10(%rbp),%rdx
     50e:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     512:	48 89 d6                                        	mov    %rdx,%rsi
     515:	48 89 c7                                        	mov    %rax,%rdi
     518:	ff d1                                           	call   *%rcx
     51a:	c1 f8 1f                                        	sar    $0x1f,%eax
     51d:	48 98                                           	cltq
     51f:	48 89 45 a0                                     	mov    %rax,-0x60(%rbp)
     523:	48 8b 55 f0                                     	mov    -0x10(%rbp),%rdx
     527:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     52b:	48 31 d0                                        	xor    %rdx,%rax
     52e:	48 89 45 98                                     	mov    %rax,-0x68(%rbp)
     532:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
     536:	48 23 45 a0                                     	and    -0x60(%rbp),%rax
     53a:	48 89 c2                                        	mov    %rax,%rdx
     53d:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     541:	48 31 d0                                        	xor    %rdx,%rax
     544:	48 89 45 98                                     	mov    %rax,-0x68(%rbp)
     548:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
     54c:	48 8b 10                                        	mov    (%rax),%rdx
     54f:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     556:	48 89 10                                        	mov    %rdx,(%rax)
     559:	48 83 85 70 ff ff ff 08                         	addq   $0x8,-0x90(%rbp)
     561:	48 8b 45 a0                                     	mov    -0x60(%rbp),%rax
     565:	83 e0 08                                        	and    $0x8,%eax
     568:	48 01 45 f8                                     	add    %rax,-0x8(%rbp)
     56c:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     570:	48 3b 85 70 ff ff ff                            	cmp    -0x90(%rbp),%rax
     577:	0f 84 b9 01 00 00                               	je     736 <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)+0x3df>
/foo/bar/git/gcc-test/gcc/sort.cc:230 (discriminator 2)
     57d:	48 8b 45 a0                                     	mov    -0x60(%rbp),%rax
     581:	48 f7 d0                                        	not    %rax
     584:	83 e0 08                                        	and    $0x8,%eax
     587:	48 01 45 f0                                     	add    %rax,-0x10(%rbp)
     58b:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     58f:	48 3b 45 c8                                     	cmp    -0x38(%rbp),%rax
     593:	0f 85 6a ff ff ff                               	jne    503 <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)+0x1ac>
     599:	e9 74 01 00 00                                  	jmp    712 <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)+0x3bb>
/foo/bar/git/gcc-test/gcc/sort.cc:231
     59e:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     5a2:	48 8b 40 18                                     	mov    0x18(%rax),%rax
     5a6:	48 83 f8 04                                     	cmp    $0x4,%rax
     5aa:	0f 94 c0                                        	sete   %al
     5ad:	0f b6 c0                                        	movzbl %al,%eax
     5b0:	48 85 c0                                        	test   %rax,%rax
     5b3:	0f 84 99 00 00 00                               	je     652 <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)+0x2fb>
/foo/bar/git/gcc-test/gcc/sort.cc:232 (discriminator 3)
     5b9:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     5bd:	48 8b 08                                        	mov    (%rax),%rcx
     5c0:	48 8b 55 f0                                     	mov    -0x10(%rbp),%rdx
     5c4:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     5c8:	48 89 d6                                        	mov    %rdx,%rsi
     5cb:	48 89 c7                                        	mov    %rax,%rdi
     5ce:	ff d1                                           	call   *%rcx
     5d0:	c1 f8 1f                                        	sar    $0x1f,%eax
     5d3:	48 98                                           	cltq
     5d5:	48 89 45 b0                                     	mov    %rax,-0x50(%rbp)
     5d9:	48 8b 55 f0                                     	mov    -0x10(%rbp),%rdx
     5dd:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     5e1:	48 31 d0                                        	xor    %rdx,%rax
     5e4:	48 89 45 a8                                     	mov    %rax,-0x58(%rbp)
     5e8:	48 8b 45 a8                                     	mov    -0x58(%rbp),%rax
     5ec:	48 23 45 b0                                     	and    -0x50(%rbp),%rax
     5f0:	48 89 c2                                        	mov    %rax,%rdx
     5f3:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     5f7:	48 31 d0                                        	xor    %rdx,%rax
     5fa:	48 89 45 a8                                     	mov    %rax,-0x58(%rbp)
     5fe:	48 8b 45 a8                                     	mov    -0x58(%rbp),%rax
     602:	8b 10                                           	mov    (%rax),%edx
     604:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     60b:	89 10                                           	mov    %edx,(%rax)
     60d:	48 83 85 70 ff ff ff 04                         	addq   $0x4,-0x90(%rbp)
     615:	48 8b 45 b0                                     	mov    -0x50(%rbp),%rax
     619:	83 e0 04                                        	and    $0x4,%eax
     61c:	48 01 45 f8                                     	add    %rax,-0x8(%rbp)
     620:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     624:	48 3b 85 70 ff ff ff                            	cmp    -0x90(%rbp),%rax
     62b:	0f 84 05 01 00 00                               	je     736 <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)+0x3df>
/foo/bar/git/gcc-test/gcc/sort.cc:232 (discriminator 2)
     631:	48 8b 45 b0                                     	mov    -0x50(%rbp),%rax
     635:	48 f7 d0                                        	not    %rax
     638:	83 e0 04                                        	and    $0x4,%eax
     63b:	48 01 45 f0                                     	add    %rax,-0x10(%rbp)
     63f:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     643:	48 3b 45 c8                                     	cmp    -0x38(%rbp),%rax
     647:	0f 85 6c ff ff ff                               	jne    5b9 <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)+0x262>
     64d:	e9 c0 00 00 00                                  	jmp    712 <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)+0x3bb>
/foo/bar/git/gcc-test/gcc/sort.cc:234 (discriminator 3)
     652:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     656:	48 8b 08                                        	mov    (%rax),%rcx
     659:	48 8b 55 f0                                     	mov    -0x10(%rbp),%rdx
     65d:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     661:	48 89 d6                                        	mov    %rdx,%rsi
     664:	48 89 c7                                        	mov    %rax,%rdi
     667:	ff d1                                           	call   *%rcx
     669:	c1 f8 1f                                        	sar    $0x1f,%eax
     66c:	48 98                                           	cltq
     66e:	48 89 45 c0                                     	mov    %rax,-0x40(%rbp)
     672:	48 8b 55 f0                                     	mov    -0x10(%rbp),%rdx
     676:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     67a:	48 31 d0                                        	xor    %rdx,%rax
     67d:	48 89 45 b8                                     	mov    %rax,-0x48(%rbp)
     681:	48 8b 45 b8                                     	mov    -0x48(%rbp),%rax
     685:	48 23 45 c0                                     	and    -0x40(%rbp),%rax
     689:	48 89 c2                                        	mov    %rax,%rdx
     68c:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     690:	48 31 d0                                        	xor    %rdx,%rax
     693:	48 89 45 b8                                     	mov    %rax,-0x48(%rbp)
     697:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     69b:	48 8b 50 18                                     	mov    0x18(%rax),%rdx
     69f:	48 8b 4d b8                                     	mov    -0x48(%rbp),%rcx
     6a3:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     6aa:	48 89 ce                                        	mov    %rcx,%rsi
     6ad:	48 89 c7                                        	mov    %rax,%rdi
     6b0:	e8 00 00 00 00                                  	call   6b5 <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)+0x35e>
			6b1: R_X86_64_PLT32	memcpy-0x4
     6b5:	48 89 85 70 ff ff ff                            	mov    %rax,-0x90(%rbp)
     6bc:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     6c0:	48 8b 40 18                                     	mov    0x18(%rax),%rax
     6c4:	48 01 85 70 ff ff ff                            	add    %rax,-0x90(%rbp)
     6cb:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     6cf:	48 8b 50 18                                     	mov    0x18(%rax),%rdx
     6d3:	48 8b 45 c0                                     	mov    -0x40(%rbp),%rax
     6d7:	48 21 d0                                        	and    %rdx,%rax
     6da:	48 01 45 f8                                     	add    %rax,-0x8(%rbp)
     6de:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     6e2:	48 3b 85 70 ff ff ff                            	cmp    -0x90(%rbp),%rax
     6e9:	74 4b                                           	je     736 <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)+0x3df>
/foo/bar/git/gcc-test/gcc/sort.cc:234 (discriminator 2)
     6eb:	48 8b 45 c0                                     	mov    -0x40(%rbp),%rax
     6ef:	48 f7 d0                                        	not    %rax
     6f2:	48 89 c2                                        	mov    %rax,%rdx
     6f5:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     6f9:	48 8b 40 18                                     	mov    0x18(%rax),%rax
     6fd:	48 21 d0                                        	and    %rdx,%rax
     700:	48 01 45 f0                                     	add    %rax,-0x10(%rbp)
     704:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     708:	48 3b 45 c8                                     	cmp    -0x38(%rbp),%rax
     70c:	0f 85 40 ff ff ff                               	jne    652 <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)+0x2fb>
/foo/bar/git/gcc-test/gcc/sort.cc:236
     712:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     716:	48 2b 85 70 ff ff ff                            	sub    -0x90(%rbp),%rax
     71d:	48 89 c2                                        	mov    %rax,%rdx
     720:	48 8b 4d f0                                     	mov    -0x10(%rbp),%rcx
     724:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     72b:	48 89 ce                                        	mov    %rcx,%rsi
     72e:	48 89 c7                                        	mov    %rax,%rdi
     731:	e8 00 00 00 00                                  	call   736 <void mergesort<sort_ctx>(char*, sort_ctx*, unsigned long, char*, char*)+0x3df>
			732: R_X86_64_PLT32	memcpy-0x4
/foo/bar/git/gcc-test/gcc/sort.cc:237
     736:	c9                                              	leave
     737:	c3                                              	ret

0000000000000738 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)>:
void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*):
/foo/bar/git/gcc-test/gcc/sort.cc:199
     738:	55                                              	push   %rbp
     739:	48 89 e5                                        	mov    %rsp,%rbp
     73c:	48 81 ec a0 00 00 00                            	sub    $0xa0,%rsp
     743:	48 89 7d 88                                     	mov    %rdi,-0x78(%rbp)
     747:	48 89 75 80                                     	mov    %rsi,-0x80(%rbp)
     74b:	48 89 95 78 ff ff ff                            	mov    %rdx,-0x88(%rbp)
     752:	48 89 8d 70 ff ff ff                            	mov    %rcx,-0x90(%rbp)
     759:	4c 89 85 68 ff ff ff                            	mov    %r8,-0x98(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:201
     760:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     764:	48 8b 40 28                                     	mov    0x28(%rax),%rax
     768:	48 3b 85 78 ff ff ff                            	cmp    -0x88(%rbp),%rax
     76f:	0f 93 c0                                        	setae  %al
     772:	0f b6 c0                                        	movzbl %al,%eax
     775:	48 85 c0                                        	test   %rax,%rax
     778:	74 36                                           	je     7b0 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x78>
/foo/bar/git/gcc-test/gcc/sort.cc:203
     77a:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     77e:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
     785:	48 89 50 10                                     	mov    %rdx,0x10(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:204
     789:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     78d:	48 8b 95 78 ff ff ff                            	mov    -0x88(%rbp),%rdx
     794:	48 89 50 18                                     	mov    %rdx,0x18(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:205
     798:	48 8b 55 80                                     	mov    -0x80(%rbp),%rdx
     79c:	48 8b 45 88                                     	mov    -0x78(%rbp),%rax
     7a0:	48 89 d6                                        	mov    %rdx,%rsi
     7a3:	48 89 c7                                        	mov    %rax,%rdi
     7a6:	e8 e6 06 00 00                                  	call   e91 <void netsort<sort_r_ctx>(char*, sort_r_ctx*)>
     7ab:	e9 67 03 00 00                                  	jmp    b17 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x3df>
/foo/bar/git/gcc-test/gcc/sort.cc:207
     7b0:	48 8b 85 78 ff ff ff                            	mov    -0x88(%rbp),%rax
     7b7:	48 d1 e8                                        	shr    %rax
     7ba:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
     7be:	48 8b 85 78 ff ff ff                            	mov    -0x88(%rbp),%rax
     7c5:	48 2b 45 e8                                     	sub    -0x18(%rbp),%rax
     7c9:	48 89 45 e0                                     	mov    %rax,-0x20(%rbp)
     7cd:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     7d1:	48 8b 40 20                                     	mov    0x20(%rax),%rax
     7d5:	48 8b 55 e8                                     	mov    -0x18(%rbp),%rdx
     7d9:	48 0f af c2                                     	imul   %rdx,%rax
     7dd:	48 89 45 d8                                     	mov    %rax,-0x28(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:208
     7e1:	48 8b 55 88                                     	mov    -0x78(%rbp),%rdx
     7e5:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
     7e9:	48 01 d0                                        	add    %rdx,%rax
     7ec:	48 89 45 d0                                     	mov    %rax,-0x30(%rbp)
     7f0:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
     7f7:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
     7fb:	48 01 d0                                        	add    %rdx,%rax
     7fe:	48 89 45 f8                                     	mov    %rax,-0x8(%rbp)
     802:	48 8b 45 88                                     	mov    -0x78(%rbp),%rax
     806:	48 3b 85 70 ff ff ff                            	cmp    -0x90(%rbp),%rax
     80d:	75 09                                           	jne    818 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0xe0>
/foo/bar/git/gcc-test/gcc/sort.cc:208 (discriminator 1)
     80f:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
     816:	eb 04                                           	jmp    81c <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0xe4>
/foo/bar/git/gcc-test/gcc/sort.cc:208 (discriminator 2)
     818:	48 8b 45 88                                     	mov    -0x78(%rbp),%rax
/foo/bar/git/gcc-test/gcc/sort.cc:208 (discriminator 4)
     81c:	48 89 45 f0                                     	mov    %rax,-0x10(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:210 (discriminator 4)
     820:	48 8b bd 68 ff ff ff                            	mov    -0x98(%rbp),%rdi
     827:	48 8b 4d f8                                     	mov    -0x8(%rbp),%rcx
     82b:	48 8b 55 e0                                     	mov    -0x20(%rbp),%rdx
     82f:	48 8b 75 80                                     	mov    -0x80(%rbp),%rsi
     833:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
     837:	49 89 f8                                        	mov    %rdi,%r8
     83a:	48 89 c7                                        	mov    %rax,%rdi
     83d:	e8 f6 fe ff ff                                  	call   738 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)>
/foo/bar/git/gcc-test/gcc/sort.cc:212 (discriminator 4)
     842:	48 8b 7d d0                                     	mov    -0x30(%rbp),%rdi
     846:	48 8b 4d f0                                     	mov    -0x10(%rbp),%rcx
     84a:	48 8b 55 e8                                     	mov    -0x18(%rbp),%rdx
     84e:	48 8b 75 80                                     	mov    -0x80(%rbp),%rsi
     852:	48 8b 45 88                                     	mov    -0x78(%rbp),%rax
     856:	49 89 f8                                        	mov    %rdi,%r8
     859:	48 89 c7                                        	mov    %rax,%rdi
     85c:	e8 d7 fe ff ff                                  	call   738 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)>
/foo/bar/git/gcc-test/gcc/sort.cc:226 (discriminator 4)
     861:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     865:	48 2b 85 70 ff ff ff                            	sub    -0x90(%rbp),%rax
     86c:	48 89 c2                                        	mov    %rax,%rdx
     86f:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     873:	48 8b 40 20                                     	mov    0x20(%rax),%rax
     877:	48 29 c2                                        	sub    %rax,%rdx
     87a:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     87e:	48 01 c2                                        	add    %rax,%rdx
     881:	48 8b 4d f8                                     	mov    -0x8(%rbp),%rcx
     885:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     889:	48 89 ce                                        	mov    %rcx,%rsi
     88c:	48 89 c7                                        	mov    %rax,%rdi
     88f:	e8 00 00 00 00                                  	call   894 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x15c>
			890: R_X86_64_PLT32	sort_r_ctx::cmp(void const*, void const*)-0x4
     894:	c1 e8 1f                                        	shr    $0x1f,%eax
     897:	0f b6 c0                                        	movzbl %al,%eax
     89a:	48 85 c0                                        	test   %rax,%rax
     89d:	0f 95 c0                                        	setne  %al
     8a0:	84 c0                                           	test   %al,%al
     8a2:	0f 84 4b 02 00 00                               	je     af3 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x3bb>
/foo/bar/git/gcc-test/gcc/sort.cc:228
     8a8:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     8ac:	48 8b 40 20                                     	mov    0x20(%rax),%rax
     8b0:	48 0f af 85 78 ff ff ff                         	imul   -0x88(%rbp),%rax
     8b8:	48 89 c2                                        	mov    %rax,%rdx
     8bb:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     8c2:	48 01 d0                                        	add    %rdx,%rax
     8c5:	48 89 45 c8                                     	mov    %rax,-0x38(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:229
     8c9:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     8cd:	48 8b 40 20                                     	mov    0x20(%rax),%rax
     8d1:	48 83 f8 08                                     	cmp    $0x8,%rax
     8d5:	0f 94 c0                                        	sete   %al
     8d8:	0f b6 c0                                        	movzbl %al,%eax
     8db:	48 85 c0                                        	test   %rax,%rax
     8de:	0f 84 9b 00 00 00                               	je     97f <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x247>
/foo/bar/git/gcc-test/gcc/sort.cc:230 (discriminator 3)
     8e4:	48 8b 55 f0                                     	mov    -0x10(%rbp),%rdx
     8e8:	48 8b 4d f8                                     	mov    -0x8(%rbp),%rcx
     8ec:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     8f0:	48 89 ce                                        	mov    %rcx,%rsi
     8f3:	48 89 c7                                        	mov    %rax,%rdi
     8f6:	e8 00 00 00 00                                  	call   8fb <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x1c3>
			8f7: R_X86_64_PLT32	sort_r_ctx::cmp(void const*, void const*)-0x4
     8fb:	c1 f8 1f                                        	sar    $0x1f,%eax
     8fe:	48 98                                           	cltq
     900:	48 89 45 a0                                     	mov    %rax,-0x60(%rbp)
     904:	48 8b 55 f0                                     	mov    -0x10(%rbp),%rdx
     908:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     90c:	48 31 d0                                        	xor    %rdx,%rax
     90f:	48 89 45 98                                     	mov    %rax,-0x68(%rbp)
     913:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
     917:	48 23 45 a0                                     	and    -0x60(%rbp),%rax
     91b:	48 89 c2                                        	mov    %rax,%rdx
     91e:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     922:	48 31 d0                                        	xor    %rdx,%rax
     925:	48 89 45 98                                     	mov    %rax,-0x68(%rbp)
     929:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
     92d:	48 8b 10                                        	mov    (%rax),%rdx
     930:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     937:	48 89 10                                        	mov    %rdx,(%rax)
     93a:	48 83 85 70 ff ff ff 08                         	addq   $0x8,-0x90(%rbp)
     942:	48 8b 45 a0                                     	mov    -0x60(%rbp),%rax
     946:	83 e0 08                                        	and    $0x8,%eax
     949:	48 01 45 f8                                     	add    %rax,-0x8(%rbp)
     94d:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     951:	48 3b 85 70 ff ff ff                            	cmp    -0x90(%rbp),%rax
     958:	0f 84 b9 01 00 00                               	je     b17 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x3df>
/foo/bar/git/gcc-test/gcc/sort.cc:230 (discriminator 2)
     95e:	48 8b 45 a0                                     	mov    -0x60(%rbp),%rax
     962:	48 f7 d0                                        	not    %rax
     965:	83 e0 08                                        	and    $0x8,%eax
     968:	48 01 45 f0                                     	add    %rax,-0x10(%rbp)
     96c:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     970:	48 3b 45 c8                                     	cmp    -0x38(%rbp),%rax
     974:	0f 85 6a ff ff ff                               	jne    8e4 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x1ac>
     97a:	e9 74 01 00 00                                  	jmp    af3 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x3bb>
/foo/bar/git/gcc-test/gcc/sort.cc:231
     97f:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     983:	48 8b 40 20                                     	mov    0x20(%rax),%rax
     987:	48 83 f8 04                                     	cmp    $0x4,%rax
     98b:	0f 94 c0                                        	sete   %al
     98e:	0f b6 c0                                        	movzbl %al,%eax
     991:	48 85 c0                                        	test   %rax,%rax
     994:	0f 84 99 00 00 00                               	je     a33 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x2fb>
/foo/bar/git/gcc-test/gcc/sort.cc:232 (discriminator 3)
     99a:	48 8b 55 f0                                     	mov    -0x10(%rbp),%rdx
     99e:	48 8b 4d f8                                     	mov    -0x8(%rbp),%rcx
     9a2:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     9a6:	48 89 ce                                        	mov    %rcx,%rsi
     9a9:	48 89 c7                                        	mov    %rax,%rdi
     9ac:	e8 00 00 00 00                                  	call   9b1 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x279>
			9ad: R_X86_64_PLT32	sort_r_ctx::cmp(void const*, void const*)-0x4
     9b1:	c1 f8 1f                                        	sar    $0x1f,%eax
     9b4:	48 98                                           	cltq
     9b6:	48 89 45 b0                                     	mov    %rax,-0x50(%rbp)
     9ba:	48 8b 55 f0                                     	mov    -0x10(%rbp),%rdx
     9be:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     9c2:	48 31 d0                                        	xor    %rdx,%rax
     9c5:	48 89 45 a8                                     	mov    %rax,-0x58(%rbp)
     9c9:	48 8b 45 a8                                     	mov    -0x58(%rbp),%rax
     9cd:	48 23 45 b0                                     	and    -0x50(%rbp),%rax
     9d1:	48 89 c2                                        	mov    %rax,%rdx
     9d4:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     9d8:	48 31 d0                                        	xor    %rdx,%rax
     9db:	48 89 45 a8                                     	mov    %rax,-0x58(%rbp)
     9df:	48 8b 45 a8                                     	mov    -0x58(%rbp),%rax
     9e3:	8b 10                                           	mov    (%rax),%edx
     9e5:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     9ec:	89 10                                           	mov    %edx,(%rax)
     9ee:	48 83 85 70 ff ff ff 04                         	addq   $0x4,-0x90(%rbp)
     9f6:	48 8b 45 b0                                     	mov    -0x50(%rbp),%rax
     9fa:	83 e0 04                                        	and    $0x4,%eax
     9fd:	48 01 45 f8                                     	add    %rax,-0x8(%rbp)
     a01:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     a05:	48 3b 85 70 ff ff ff                            	cmp    -0x90(%rbp),%rax
     a0c:	0f 84 05 01 00 00                               	je     b17 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x3df>
/foo/bar/git/gcc-test/gcc/sort.cc:232 (discriminator 2)
     a12:	48 8b 45 b0                                     	mov    -0x50(%rbp),%rax
     a16:	48 f7 d0                                        	not    %rax
     a19:	83 e0 04                                        	and    $0x4,%eax
     a1c:	48 01 45 f0                                     	add    %rax,-0x10(%rbp)
     a20:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     a24:	48 3b 45 c8                                     	cmp    -0x38(%rbp),%rax
     a28:	0f 85 6c ff ff ff                               	jne    99a <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x262>
     a2e:	e9 c0 00 00 00                                  	jmp    af3 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x3bb>
/foo/bar/git/gcc-test/gcc/sort.cc:234 (discriminator 3)
     a33:	48 8b 55 f0                                     	mov    -0x10(%rbp),%rdx
     a37:	48 8b 4d f8                                     	mov    -0x8(%rbp),%rcx
     a3b:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     a3f:	48 89 ce                                        	mov    %rcx,%rsi
     a42:	48 89 c7                                        	mov    %rax,%rdi
     a45:	e8 00 00 00 00                                  	call   a4a <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x312>
			a46: R_X86_64_PLT32	sort_r_ctx::cmp(void const*, void const*)-0x4
     a4a:	c1 f8 1f                                        	sar    $0x1f,%eax
     a4d:	48 98                                           	cltq
     a4f:	48 89 45 c0                                     	mov    %rax,-0x40(%rbp)
     a53:	48 8b 55 f0                                     	mov    -0x10(%rbp),%rdx
     a57:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     a5b:	48 31 d0                                        	xor    %rdx,%rax
     a5e:	48 89 45 b8                                     	mov    %rax,-0x48(%rbp)
     a62:	48 8b 45 b8                                     	mov    -0x48(%rbp),%rax
     a66:	48 23 45 c0                                     	and    -0x40(%rbp),%rax
     a6a:	48 89 c2                                        	mov    %rax,%rdx
     a6d:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     a71:	48 31 d0                                        	xor    %rdx,%rax
     a74:	48 89 45 b8                                     	mov    %rax,-0x48(%rbp)
     a78:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     a7c:	48 8b 50 20                                     	mov    0x20(%rax),%rdx
     a80:	48 8b 4d b8                                     	mov    -0x48(%rbp),%rcx
     a84:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     a8b:	48 89 ce                                        	mov    %rcx,%rsi
     a8e:	48 89 c7                                        	mov    %rax,%rdi
     a91:	e8 00 00 00 00                                  	call   a96 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x35e>
			a92: R_X86_64_PLT32	memcpy-0x4
     a96:	48 89 85 70 ff ff ff                            	mov    %rax,-0x90(%rbp)
     a9d:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     aa1:	48 8b 40 20                                     	mov    0x20(%rax),%rax
     aa5:	48 01 85 70 ff ff ff                            	add    %rax,-0x90(%rbp)
     aac:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     ab0:	48 8b 50 20                                     	mov    0x20(%rax),%rdx
     ab4:	48 8b 45 c0                                     	mov    -0x40(%rbp),%rax
     ab8:	48 21 d0                                        	and    %rdx,%rax
     abb:	48 01 45 f8                                     	add    %rax,-0x8(%rbp)
     abf:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     ac3:	48 3b 85 70 ff ff ff                            	cmp    -0x90(%rbp),%rax
     aca:	74 4b                                           	je     b17 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x3df>
/foo/bar/git/gcc-test/gcc/sort.cc:234 (discriminator 2)
     acc:	48 8b 45 c0                                     	mov    -0x40(%rbp),%rax
     ad0:	48 f7 d0                                        	not    %rax
     ad3:	48 89 c2                                        	mov    %rax,%rdx
     ad6:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
     ada:	48 8b 40 20                                     	mov    0x20(%rax),%rax
     ade:	48 21 d0                                        	and    %rdx,%rax
     ae1:	48 01 45 f0                                     	add    %rax,-0x10(%rbp)
     ae5:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     ae9:	48 3b 45 c8                                     	cmp    -0x38(%rbp),%rax
     aed:	0f 85 40 ff ff ff                               	jne    a33 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x2fb>
/foo/bar/git/gcc-test/gcc/sort.cc:236
     af3:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     af7:	48 2b 85 70 ff ff ff                            	sub    -0x90(%rbp),%rax
     afe:	48 89 c2                                        	mov    %rax,%rdx
     b01:	48 8b 4d f0                                     	mov    -0x10(%rbp),%rcx
     b05:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     b0c:	48 89 ce                                        	mov    %rcx,%rsi
     b0f:	48 89 c7                                        	mov    %rax,%rdi
     b12:	e8 00 00 00 00                                  	call   b17 <void mergesort<sort_r_ctx>(char*, sort_r_ctx*, unsigned long, char*, char*)+0x3df>
			b13: R_X86_64_PLT32	memcpy-0x4
/foo/bar/git/gcc-test/gcc/sort.cc:237
     b17:	c9                                              	leave
     b18:	c3                                              	ret

0000000000000b19 <void netsort<sort_ctx>(char*, sort_ctx*)>:
void netsort<sort_ctx>(char*, sort_ctx*):
/foo/bar/git/gcc-test/gcc/sort.cc:158
     b19:	55                                              	push   %rbp
     b1a:	48 89 e5                                        	mov    %rsp,%rbp
     b1d:	48 81 ec 90 00 00 00                            	sub    $0x90,%rsp
     b24:	48 89 bd 78 ff ff ff                            	mov    %rdi,-0x88(%rbp)
     b2b:	48 89 b5 70 ff ff ff                            	mov    %rsi,-0x90(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:167
     b32:	48 8b 85 78 ff ff ff                            	mov    -0x88(%rbp),%rax
     b39:	48 89 45 f8                                     	mov    %rax,-0x8(%rbp)
     b3d:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     b44:	48 8b 50 18                                     	mov    0x18(%rax),%rdx
     b48:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     b4c:	48 01 d0                                        	add    %rdx,%rax
     b4f:	48 89 45 f0                                     	mov    %rax,-0x10(%rbp)
     b53:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     b5a:	48 8b 50 18                                     	mov    0x18(%rax),%rdx
     b5e:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     b62:	48 01 d0                                        	add    %rdx,%rax
     b65:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:168
     b69:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
     b70:	48 8b 4d f8                                     	mov    -0x8(%rbp),%rcx
     b74:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     b78:	48 89 ce                                        	mov    %rcx,%rsi
     b7b:	48 89 c7                                        	mov    %rax,%rdi
     b7e:	e8 86 06 00 00                                  	call   1209 <long cmp1<sort_ctx>(char*, char*, sort_ctx*)>
     b83:	48 89 45 d0                                     	mov    %rax,-0x30(%rbp)
     b87:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     b8b:	48 33 45 d0                                     	xor    -0x30(%rbp),%rax
     b8f:	48 89 45 f8                                     	mov    %rax,-0x8(%rbp)
     b93:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     b97:	48 33 45 d0                                     	xor    -0x30(%rbp),%rax
     b9b:	48 89 45 f0                                     	mov    %rax,-0x10(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:169
     b9f:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     ba6:	48 8b 40 10                                     	mov    0x10(%rax),%rax
     baa:	48 83 f8 03                                     	cmp    $0x3,%rax
     bae:	0f 94 c0                                        	sete   %al
     bb1:	0f b6 c0                                        	movzbl %al,%eax
     bb4:	48 85 c0                                        	test   %rax,%rax
     bb7:	74 6c                                           	je     c25 <void netsort<sort_ctx>(char*, sort_ctx*)+0x10c>
/foo/bar/git/gcc-test/gcc/sort.cc:171
     bb9:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
     bc0:	48 8b 4d f0                                     	mov    -0x10(%rbp),%rcx
     bc4:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
     bc8:	48 89 ce                                        	mov    %rcx,%rsi
     bcb:	48 89 c7                                        	mov    %rax,%rdi
     bce:	e8 36 06 00 00                                  	call   1209 <long cmp1<sort_ctx>(char*, char*, sort_ctx*)>
     bd3:	48 89 45 c8                                     	mov    %rax,-0x38(%rbp)
     bd7:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     bdb:	48 33 45 c8                                     	xor    -0x38(%rbp),%rax
     bdf:	48 89 45 f0                                     	mov    %rax,-0x10(%rbp)
     be3:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
     be7:	48 33 45 c8                                     	xor    -0x38(%rbp),%rax
     beb:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:172
     bef:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
     bf6:	48 8b 4d f8                                     	mov    -0x8(%rbp),%rcx
     bfa:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     bfe:	48 89 ce                                        	mov    %rcx,%rsi
     c01:	48 89 c7                                        	mov    %rax,%rdi
     c04:	e8 00 06 00 00                                  	call   1209 <long cmp1<sort_ctx>(char*, char*, sort_ctx*)>
     c09:	48 89 45 c0                                     	mov    %rax,-0x40(%rbp)
     c0d:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     c11:	48 33 45 c0                                     	xor    -0x40(%rbp),%rax
     c15:	48 89 45 f8                                     	mov    %rax,-0x8(%rbp)
     c19:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     c1d:	48 33 45 c0                                     	xor    -0x40(%rbp),%rax
     c21:	48 89 45 f0                                     	mov    %rax,-0x10(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:174
     c25:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     c2c:	48 8b 40 10                                     	mov    0x10(%rax),%rax
     c30:	48 83 f8 03                                     	cmp    $0x3,%rax
     c34:	77 20                                           	ja     c56 <void netsort<sort_ctx>(char*, sort_ctx*)+0x13d>
/foo/bar/git/gcc-test/gcc/sort.cc:175
     c36:	48 8b 4d e8                                     	mov    -0x18(%rbp),%rcx
     c3a:	48 8b 55 f0                                     	mov    -0x10(%rbp),%rdx
     c3e:	48 8b 75 f8                                     	mov    -0x8(%rbp),%rsi
     c42:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     c49:	48 89 c7                                        	mov    %rax,%rdi
     c4c:	e8 fd 05 00 00                                  	call   124e <void reorder23<sort_ctx>(sort_ctx*, char*, char*, char*)>
     c51:	e9 39 02 00 00                                  	jmp    e8f <void netsort<sort_ctx>(char*, sort_ctx*)+0x376>
/foo/bar/git/gcc-test/gcc/sort.cc:176
     c56:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     c5d:	48 8b 50 18                                     	mov    0x18(%rax),%rdx
     c61:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
     c65:	48 01 d0                                        	add    %rdx,%rax
     c68:	48 89 45 e0                                     	mov    %rax,-0x20(%rbp)
     c6c:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     c73:	48 8b 50 18                                     	mov    0x18(%rax),%rdx
     c77:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
     c7b:	48 01 d0                                        	add    %rdx,%rax
     c7e:	48 89 45 d8                                     	mov    %rax,-0x28(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:177
     c82:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     c89:	48 8b 40 10                                     	mov    0x10(%rax),%rax
     c8d:	48 83 f8 05                                     	cmp    $0x5,%rax
     c91:	0f 94 c0                                        	sete   %al
     c94:	0f b6 c0                                        	movzbl %al,%eax
     c97:	48 85 c0                                        	test   %rax,%rax
     c9a:	74 6c                                           	je     d08 <void netsort<sort_ctx>(char*, sort_ctx*)+0x1ef>
/foo/bar/git/gcc-test/gcc/sort.cc:179
     c9c:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
     ca3:	48 8b 4d e0                                     	mov    -0x20(%rbp),%rcx
     ca7:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
     cab:	48 89 ce                                        	mov    %rcx,%rsi
     cae:	48 89 c7                                        	mov    %rax,%rdi
     cb1:	e8 53 05 00 00                                  	call   1209 <long cmp1<sort_ctx>(char*, char*, sort_ctx*)>
     cb6:	48 89 45 b8                                     	mov    %rax,-0x48(%rbp)
     cba:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
     cbe:	48 33 45 b8                                     	xor    -0x48(%rbp),%rax
     cc2:	48 89 45 e0                                     	mov    %rax,-0x20(%rbp)
     cc6:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
     cca:	48 33 45 b8                                     	xor    -0x48(%rbp),%rax
     cce:	48 89 45 d8                                     	mov    %rax,-0x28(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:180
     cd2:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
     cd9:	48 8b 4d e8                                     	mov    -0x18(%rbp),%rcx
     cdd:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
     ce1:	48 89 ce                                        	mov    %rcx,%rsi
     ce4:	48 89 c7                                        	mov    %rax,%rdi
     ce7:	e8 1d 05 00 00                                  	call   1209 <long cmp1<sort_ctx>(char*, char*, sort_ctx*)>
     cec:	48 89 45 b0                                     	mov    %rax,-0x50(%rbp)
     cf0:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
     cf4:	48 33 45 b0                                     	xor    -0x50(%rbp),%rax
     cf8:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
     cfc:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
     d00:	48 33 45 b0                                     	xor    -0x50(%rbp),%rax
     d04:	48 89 45 d8                                     	mov    %rax,-0x28(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:182
     d08:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
     d0f:	48 8b 4d e8                                     	mov    -0x18(%rbp),%rcx
     d13:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
     d17:	48 89 ce                                        	mov    %rcx,%rsi
     d1a:	48 89 c7                                        	mov    %rax,%rdi
     d1d:	e8 e7 04 00 00                                  	call   1209 <long cmp1<sort_ctx>(char*, char*, sort_ctx*)>
     d22:	48 89 45 a8                                     	mov    %rax,-0x58(%rbp)
     d26:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
     d2a:	48 33 45 a8                                     	xor    -0x58(%rbp),%rax
     d2e:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
     d32:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
     d36:	48 33 45 a8                                     	xor    -0x58(%rbp),%rax
     d3a:	48 89 45 e0                                     	mov    %rax,-0x20(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:183
     d3e:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     d45:	48 8b 40 10                                     	mov    0x10(%rax),%rax
     d49:	48 83 f8 05                                     	cmp    $0x5,%rax
     d4d:	0f 94 c0                                        	sete   %al
     d50:	0f b6 c0                                        	movzbl %al,%eax
     d53:	48 85 c0                                        	test   %rax,%rax
     d56:	74 6c                                           	je     dc4 <void netsort<sort_ctx>(char*, sort_ctx*)+0x2ab>
/foo/bar/git/gcc-test/gcc/sort.cc:185
     d58:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
     d5f:	48 8b 4d f8                                     	mov    -0x8(%rbp),%rcx
     d63:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
     d67:	48 89 ce                                        	mov    %rcx,%rsi
     d6a:	48 89 c7                                        	mov    %rax,%rdi
     d6d:	e8 97 04 00 00                                  	call   1209 <long cmp1<sort_ctx>(char*, char*, sort_ctx*)>
     d72:	48 89 45 a0                                     	mov    %rax,-0x60(%rbp)
     d76:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     d7a:	48 33 45 a0                                     	xor    -0x60(%rbp),%rax
     d7e:	48 89 45 f8                                     	mov    %rax,-0x8(%rbp)
     d82:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
     d86:	48 33 45 a0                                     	xor    -0x60(%rbp),%rax
     d8a:	48 89 45 e0                                     	mov    %rax,-0x20(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:186
     d8e:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
     d95:	48 8b 4d f0                                     	mov    -0x10(%rbp),%rcx
     d99:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
     d9d:	48 89 ce                                        	mov    %rcx,%rsi
     da0:	48 89 c7                                        	mov    %rax,%rdi
     da3:	e8 61 04 00 00                                  	call   1209 <long cmp1<sort_ctx>(char*, char*, sort_ctx*)>
     da8:	48 89 45 98                                     	mov    %rax,-0x68(%rbp)
     dac:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     db0:	48 33 45 98                                     	xor    -0x68(%rbp),%rax
     db4:	48 89 45 f0                                     	mov    %rax,-0x10(%rbp)
     db8:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
     dbc:	48 33 45 98                                     	xor    -0x68(%rbp),%rax
     dc0:	48 89 45 d8                                     	mov    %rax,-0x28(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:188
     dc4:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
     dcb:	48 8b 4d f8                                     	mov    -0x8(%rbp),%rcx
     dcf:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
     dd3:	48 89 ce                                        	mov    %rcx,%rsi
     dd6:	48 89 c7                                        	mov    %rax,%rdi
     dd9:	e8 2b 04 00 00                                  	call   1209 <long cmp1<sort_ctx>(char*, char*, sort_ctx*)>
     dde:	48 89 45 90                                     	mov    %rax,-0x70(%rbp)
     de2:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     de6:	48 33 45 90                                     	xor    -0x70(%rbp),%rax
     dea:	48 89 45 f8                                     	mov    %rax,-0x8(%rbp)
     dee:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
     df2:	48 33 45 90                                     	xor    -0x70(%rbp),%rax
     df6:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:189
     dfa:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
     e01:	48 8b 4d f0                                     	mov    -0x10(%rbp),%rcx
     e05:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
     e09:	48 89 ce                                        	mov    %rcx,%rsi
     e0c:	48 89 c7                                        	mov    %rax,%rdi
     e0f:	e8 f5 03 00 00                                  	call   1209 <long cmp1<sort_ctx>(char*, char*, sort_ctx*)>
     e14:	48 89 45 88                                     	mov    %rax,-0x78(%rbp)
     e18:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     e1c:	48 33 45 88                                     	xor    -0x78(%rbp),%rax
     e20:	48 89 45 f0                                     	mov    %rax,-0x10(%rbp)
     e24:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
     e28:	48 33 45 88                                     	xor    -0x78(%rbp),%rax
     e2c:	48 89 45 e0                                     	mov    %rax,-0x20(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:190
     e30:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
     e37:	48 8b 4d f0                                     	mov    -0x10(%rbp),%rcx
     e3b:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
     e3f:	48 89 ce                                        	mov    %rcx,%rsi
     e42:	48 89 c7                                        	mov    %rax,%rdi
     e45:	e8 bf 03 00 00                                  	call   1209 <long cmp1<sort_ctx>(char*, char*, sort_ctx*)>
     e4a:	48 89 45 80                                     	mov    %rax,-0x80(%rbp)
     e4e:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     e52:	48 33 45 80                                     	xor    -0x80(%rbp),%rax
     e56:	48 89 45 f0                                     	mov    %rax,-0x10(%rbp)
     e5a:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
     e5e:	48 33 45 80                                     	xor    -0x80(%rbp),%rax
     e62:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:191
     e66:	4c 8b 45 d8                                     	mov    -0x28(%rbp),%r8
     e6a:	48 8b 7d e0                                     	mov    -0x20(%rbp),%rdi
     e6e:	48 8b 4d e8                                     	mov    -0x18(%rbp),%rcx
     e72:	48 8b 55 f0                                     	mov    -0x10(%rbp),%rdx
     e76:	48 8b 75 f8                                     	mov    -0x8(%rbp),%rsi
     e7a:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     e81:	4d 89 c1                                        	mov    %r8,%r9
     e84:	49 89 f8                                        	mov    %rdi,%r8
     e87:	48 89 c7                                        	mov    %rax,%rdi
     e8a:	e8 4e 06 00 00                                  	call   14dd <void reorder45<sort_ctx>(sort_ctx*, char*, char*, char*, char*, char*)>
/foo/bar/git/gcc-test/gcc/sort.cc:192
     e8f:	c9                                              	leave
     e90:	c3                                              	ret

0000000000000e91 <void netsort<sort_r_ctx>(char*, sort_r_ctx*)>:
void netsort<sort_r_ctx>(char*, sort_r_ctx*):
/foo/bar/git/gcc-test/gcc/sort.cc:158
     e91:	55                                              	push   %rbp
     e92:	48 89 e5                                        	mov    %rsp,%rbp
     e95:	48 81 ec 90 00 00 00                            	sub    $0x90,%rsp
     e9c:	48 89 bd 78 ff ff ff                            	mov    %rdi,-0x88(%rbp)
     ea3:	48 89 b5 70 ff ff ff                            	mov    %rsi,-0x90(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:167
     eaa:	48 8b 85 78 ff ff ff                            	mov    -0x88(%rbp),%rax
     eb1:	48 89 45 f8                                     	mov    %rax,-0x8(%rbp)
     eb5:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     ebc:	48 8b 50 20                                     	mov    0x20(%rax),%rdx
     ec0:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     ec4:	48 01 d0                                        	add    %rdx,%rax
     ec7:	48 89 45 f0                                     	mov    %rax,-0x10(%rbp)
     ecb:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     ed2:	48 8b 50 20                                     	mov    0x20(%rax),%rdx
     ed6:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     eda:	48 01 d0                                        	add    %rdx,%rax
     edd:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:168
     ee1:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
     ee8:	48 8b 4d f8                                     	mov    -0x8(%rbp),%rcx
     eec:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     ef0:	48 89 ce                                        	mov    %rcx,%rsi
     ef3:	48 89 c7                                        	mov    %rax,%rdi
     ef6:	e8 2f 0a 00 00                                  	call   192a <long cmp1<sort_r_ctx>(char*, char*, sort_r_ctx*)>
     efb:	48 89 45 d0                                     	mov    %rax,-0x30(%rbp)
     eff:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     f03:	48 33 45 d0                                     	xor    -0x30(%rbp),%rax
     f07:	48 89 45 f8                                     	mov    %rax,-0x8(%rbp)
     f0b:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     f0f:	48 33 45 d0                                     	xor    -0x30(%rbp),%rax
     f13:	48 89 45 f0                                     	mov    %rax,-0x10(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:169
     f17:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     f1e:	48 8b 40 18                                     	mov    0x18(%rax),%rax
     f22:	48 83 f8 03                                     	cmp    $0x3,%rax
     f26:	0f 94 c0                                        	sete   %al
     f29:	0f b6 c0                                        	movzbl %al,%eax
     f2c:	48 85 c0                                        	test   %rax,%rax
     f2f:	74 6c                                           	je     f9d <void netsort<sort_r_ctx>(char*, sort_r_ctx*)+0x10c>
/foo/bar/git/gcc-test/gcc/sort.cc:171
     f31:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
     f38:	48 8b 4d f0                                     	mov    -0x10(%rbp),%rcx
     f3c:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
     f40:	48 89 ce                                        	mov    %rcx,%rsi
     f43:	48 89 c7                                        	mov    %rax,%rdi
     f46:	e8 df 09 00 00                                  	call   192a <long cmp1<sort_r_ctx>(char*, char*, sort_r_ctx*)>
     f4b:	48 89 45 c8                                     	mov    %rax,-0x38(%rbp)
     f4f:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     f53:	48 33 45 c8                                     	xor    -0x38(%rbp),%rax
     f57:	48 89 45 f0                                     	mov    %rax,-0x10(%rbp)
     f5b:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
     f5f:	48 33 45 c8                                     	xor    -0x38(%rbp),%rax
     f63:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:172
     f67:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
     f6e:	48 8b 4d f8                                     	mov    -0x8(%rbp),%rcx
     f72:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     f76:	48 89 ce                                        	mov    %rcx,%rsi
     f79:	48 89 c7                                        	mov    %rax,%rdi
     f7c:	e8 a9 09 00 00                                  	call   192a <long cmp1<sort_r_ctx>(char*, char*, sort_r_ctx*)>
     f81:	48 89 45 c0                                     	mov    %rax,-0x40(%rbp)
     f85:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
     f89:	48 33 45 c0                                     	xor    -0x40(%rbp),%rax
     f8d:	48 89 45 f8                                     	mov    %rax,-0x8(%rbp)
     f91:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
     f95:	48 33 45 c0                                     	xor    -0x40(%rbp),%rax
     f99:	48 89 45 f0                                     	mov    %rax,-0x10(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:174
     f9d:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     fa4:	48 8b 40 18                                     	mov    0x18(%rax),%rax
     fa8:	48 83 f8 03                                     	cmp    $0x3,%rax
     fac:	77 20                                           	ja     fce <void netsort<sort_r_ctx>(char*, sort_r_ctx*)+0x13d>
/foo/bar/git/gcc-test/gcc/sort.cc:175
     fae:	48 8b 4d e8                                     	mov    -0x18(%rbp),%rcx
     fb2:	48 8b 55 f0                                     	mov    -0x10(%rbp),%rdx
     fb6:	48 8b 75 f8                                     	mov    -0x8(%rbp),%rsi
     fba:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     fc1:	48 89 c7                                        	mov    %rax,%rdi
     fc4:	e8 a6 09 00 00                                  	call   196f <void reorder23<sort_r_ctx>(sort_r_ctx*, char*, char*, char*)>
     fc9:	e9 39 02 00 00                                  	jmp    1207 <void netsort<sort_r_ctx>(char*, sort_r_ctx*)+0x376>
/foo/bar/git/gcc-test/gcc/sort.cc:176
     fce:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     fd5:	48 8b 50 20                                     	mov    0x20(%rax),%rdx
     fd9:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
     fdd:	48 01 d0                                        	add    %rdx,%rax
     fe0:	48 89 45 e0                                     	mov    %rax,-0x20(%rbp)
     fe4:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
     feb:	48 8b 50 20                                     	mov    0x20(%rax),%rdx
     fef:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
     ff3:	48 01 d0                                        	add    %rdx,%rax
     ff6:	48 89 45 d8                                     	mov    %rax,-0x28(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:177
     ffa:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
    1001:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    1005:	48 83 f8 05                                     	cmp    $0x5,%rax
    1009:	0f 94 c0                                        	sete   %al
    100c:	0f b6 c0                                        	movzbl %al,%eax
    100f:	48 85 c0                                        	test   %rax,%rax
    1012:	74 6c                                           	je     1080 <void netsort<sort_r_ctx>(char*, sort_r_ctx*)+0x1ef>
/foo/bar/git/gcc-test/gcc/sort.cc:179
    1014:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
    101b:	48 8b 4d e0                                     	mov    -0x20(%rbp),%rcx
    101f:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1023:	48 89 ce                                        	mov    %rcx,%rsi
    1026:	48 89 c7                                        	mov    %rax,%rdi
    1029:	e8 fc 08 00 00                                  	call   192a <long cmp1<sort_r_ctx>(char*, char*, sort_r_ctx*)>
    102e:	48 89 45 b8                                     	mov    %rax,-0x48(%rbp)
    1032:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    1036:	48 33 45 b8                                     	xor    -0x48(%rbp),%rax
    103a:	48 89 45 e0                                     	mov    %rax,-0x20(%rbp)
    103e:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1042:	48 33 45 b8                                     	xor    -0x48(%rbp),%rax
    1046:	48 89 45 d8                                     	mov    %rax,-0x28(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:180
    104a:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
    1051:	48 8b 4d e8                                     	mov    -0x18(%rbp),%rcx
    1055:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1059:	48 89 ce                                        	mov    %rcx,%rsi
    105c:	48 89 c7                                        	mov    %rax,%rdi
    105f:	e8 c6 08 00 00                                  	call   192a <long cmp1<sort_r_ctx>(char*, char*, sort_r_ctx*)>
    1064:	48 89 45 b0                                     	mov    %rax,-0x50(%rbp)
    1068:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    106c:	48 33 45 b0                                     	xor    -0x50(%rbp),%rax
    1070:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
    1074:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1078:	48 33 45 b0                                     	xor    -0x50(%rbp),%rax
    107c:	48 89 45 d8                                     	mov    %rax,-0x28(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:182
    1080:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
    1087:	48 8b 4d e8                                     	mov    -0x18(%rbp),%rcx
    108b:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    108f:	48 89 ce                                        	mov    %rcx,%rsi
    1092:	48 89 c7                                        	mov    %rax,%rdi
    1095:	e8 90 08 00 00                                  	call   192a <long cmp1<sort_r_ctx>(char*, char*, sort_r_ctx*)>
    109a:	48 89 45 a8                                     	mov    %rax,-0x58(%rbp)
    109e:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    10a2:	48 33 45 a8                                     	xor    -0x58(%rbp),%rax
    10a6:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
    10aa:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    10ae:	48 33 45 a8                                     	xor    -0x58(%rbp),%rax
    10b2:	48 89 45 e0                                     	mov    %rax,-0x20(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:183
    10b6:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
    10bd:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    10c1:	48 83 f8 05                                     	cmp    $0x5,%rax
    10c5:	0f 94 c0                                        	sete   %al
    10c8:	0f b6 c0                                        	movzbl %al,%eax
    10cb:	48 85 c0                                        	test   %rax,%rax
    10ce:	74 6c                                           	je     113c <void netsort<sort_r_ctx>(char*, sort_r_ctx*)+0x2ab>
/foo/bar/git/gcc-test/gcc/sort.cc:185
    10d0:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
    10d7:	48 8b 4d f8                                     	mov    -0x8(%rbp),%rcx
    10db:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    10df:	48 89 ce                                        	mov    %rcx,%rsi
    10e2:	48 89 c7                                        	mov    %rax,%rdi
    10e5:	e8 40 08 00 00                                  	call   192a <long cmp1<sort_r_ctx>(char*, char*, sort_r_ctx*)>
    10ea:	48 89 45 a0                                     	mov    %rax,-0x60(%rbp)
    10ee:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    10f2:	48 33 45 a0                                     	xor    -0x60(%rbp),%rax
    10f6:	48 89 45 f8                                     	mov    %rax,-0x8(%rbp)
    10fa:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    10fe:	48 33 45 a0                                     	xor    -0x60(%rbp),%rax
    1102:	48 89 45 e0                                     	mov    %rax,-0x20(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:186
    1106:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
    110d:	48 8b 4d f0                                     	mov    -0x10(%rbp),%rcx
    1111:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1115:	48 89 ce                                        	mov    %rcx,%rsi
    1118:	48 89 c7                                        	mov    %rax,%rdi
    111b:	e8 0a 08 00 00                                  	call   192a <long cmp1<sort_r_ctx>(char*, char*, sort_r_ctx*)>
    1120:	48 89 45 98                                     	mov    %rax,-0x68(%rbp)
    1124:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
    1128:	48 33 45 98                                     	xor    -0x68(%rbp),%rax
    112c:	48 89 45 f0                                     	mov    %rax,-0x10(%rbp)
    1130:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1134:	48 33 45 98                                     	xor    -0x68(%rbp),%rax
    1138:	48 89 45 d8                                     	mov    %rax,-0x28(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:188
    113c:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
    1143:	48 8b 4d f8                                     	mov    -0x8(%rbp),%rcx
    1147:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    114b:	48 89 ce                                        	mov    %rcx,%rsi
    114e:	48 89 c7                                        	mov    %rax,%rdi
    1151:	e8 d4 07 00 00                                  	call   192a <long cmp1<sort_r_ctx>(char*, char*, sort_r_ctx*)>
    1156:	48 89 45 90                                     	mov    %rax,-0x70(%rbp)
    115a:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    115e:	48 33 45 90                                     	xor    -0x70(%rbp),%rax
    1162:	48 89 45 f8                                     	mov    %rax,-0x8(%rbp)
    1166:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    116a:	48 33 45 90                                     	xor    -0x70(%rbp),%rax
    116e:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:189
    1172:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
    1179:	48 8b 4d f0                                     	mov    -0x10(%rbp),%rcx
    117d:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    1181:	48 89 ce                                        	mov    %rcx,%rsi
    1184:	48 89 c7                                        	mov    %rax,%rdi
    1187:	e8 9e 07 00 00                                  	call   192a <long cmp1<sort_r_ctx>(char*, char*, sort_r_ctx*)>
    118c:	48 89 45 88                                     	mov    %rax,-0x78(%rbp)
    1190:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
    1194:	48 33 45 88                                     	xor    -0x78(%rbp),%rax
    1198:	48 89 45 f0                                     	mov    %rax,-0x10(%rbp)
    119c:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    11a0:	48 33 45 88                                     	xor    -0x78(%rbp),%rax
    11a4:	48 89 45 e0                                     	mov    %rax,-0x20(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:190
    11a8:	48 8b 95 70 ff ff ff                            	mov    -0x90(%rbp),%rdx
    11af:	48 8b 4d f0                                     	mov    -0x10(%rbp),%rcx
    11b3:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    11b7:	48 89 ce                                        	mov    %rcx,%rsi
    11ba:	48 89 c7                                        	mov    %rax,%rdi
    11bd:	e8 68 07 00 00                                  	call   192a <long cmp1<sort_r_ctx>(char*, char*, sort_r_ctx*)>
    11c2:	48 89 45 80                                     	mov    %rax,-0x80(%rbp)
    11c6:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
    11ca:	48 33 45 80                                     	xor    -0x80(%rbp),%rax
    11ce:	48 89 45 f0                                     	mov    %rax,-0x10(%rbp)
    11d2:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    11d6:	48 33 45 80                                     	xor    -0x80(%rbp),%rax
    11da:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:191
    11de:	4c 8b 45 d8                                     	mov    -0x28(%rbp),%r8
    11e2:	48 8b 7d e0                                     	mov    -0x20(%rbp),%rdi
    11e6:	48 8b 4d e8                                     	mov    -0x18(%rbp),%rcx
    11ea:	48 8b 55 f0                                     	mov    -0x10(%rbp),%rdx
    11ee:	48 8b 75 f8                                     	mov    -0x8(%rbp),%rsi
    11f2:	48 8b 85 70 ff ff ff                            	mov    -0x90(%rbp),%rax
    11f9:	4d 89 c1                                        	mov    %r8,%r9
    11fc:	49 89 f8                                        	mov    %rdi,%r8
    11ff:	48 89 c7                                        	mov    %rax,%rdi
    1202:	e8 f7 09 00 00                                  	call   1bfe <void reorder45<sort_r_ctx>(sort_r_ctx*, char*, char*, char*, char*, char*)>
/foo/bar/git/gcc-test/gcc/sort.cc:192
    1207:	c9                                              	leave
    1208:	c3                                              	ret

0000000000001209 <long cmp1<sort_ctx>(char*, char*, sort_ctx*)>:
long cmp1<sort_ctx>(char*, char*, sort_ctx*):
/foo/bar/git/gcc-test/gcc/sort.cc:148
    1209:	55                                              	push   %rbp
    120a:	48 89 e5                                        	mov    %rsp,%rbp
    120d:	48 83 ec 30                                     	sub    $0x30,%rsp
    1211:	48 89 7d e8                                     	mov    %rdi,-0x18(%rbp)
    1215:	48 89 75 e0                                     	mov    %rsi,-0x20(%rbp)
    1219:	48 89 55 d8                                     	mov    %rdx,-0x28(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:150
    121d:	48 8b 55 e8                                     	mov    -0x18(%rbp),%rdx
    1221:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    1225:	48 31 d0                                        	xor    %rdx,%rax
    1228:	48 89 45 f8                                     	mov    %rax,-0x8(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:151
    122c:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1230:	48 8b 08                                        	mov    (%rax),%rcx
    1233:	48 8b 55 e0                                     	mov    -0x20(%rbp),%rdx
    1237:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    123b:	48 89 d6                                        	mov    %rdx,%rsi
    123e:	48 89 c7                                        	mov    %rax,%rdi
    1241:	ff d1                                           	call   *%rcx
    1243:	c1 f8 1f                                        	sar    $0x1f,%eax
    1246:	48 98                                           	cltq
    1248:	48 23 45 f8                                     	and    -0x8(%rbp),%rax
/foo/bar/git/gcc-test/gcc/sort.cc:152
    124c:	c9                                              	leave
    124d:	c3                                              	ret

000000000000124e <void reorder23<sort_ctx>(sort_ctx*, char*, char*, char*)>:
void reorder23<sort_ctx>(sort_ctx*, char*, char*, char*):
/foo/bar/git/gcc-test/gcc/sort.cc:79
    124e:	55                                              	push   %rbp
    124f:	48 89 e5                                        	mov    %rsp,%rbp
    1252:	48 83 ec 08                                     	sub    $0x8,%rsp
    1256:	48 89 7d 98                                     	mov    %rdi,-0x68(%rbp)
    125a:	48 89 75 90                                     	mov    %rsi,-0x70(%rbp)
    125e:	48 89 55 88                                     	mov    %rdx,-0x78(%rbp)
    1262:	48 89 4d 80                                     	mov    %rcx,-0x80(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:93
    1266:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    126a:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    126e:	48 83 f8 08                                     	cmp    $0x8,%rax
    1272:	0f 94 c0                                        	sete   %al
    1275:	0f b6 c0                                        	movzbl %al,%eax
    1278:	48 85 c0                                        	test   %rax,%rax
    127b:	74 6b                                           	je     12e8 <void reorder23<sort_ctx>(sort_ctx*, char*, char*, char*)+0x9a>
/foo/bar/git/gcc-test/gcc/sort.cc:94
    127d:	48 8b 45 90                                     	mov    -0x70(%rbp),%rax
    1281:	48 8b 00                                        	mov    (%rax),%rax
    1284:	48 89 45 c8                                     	mov    %rax,-0x38(%rbp)
    1288:	48 8b 45 88                                     	mov    -0x78(%rbp),%rax
    128c:	48 8b 00                                        	mov    (%rax),%rax
    128f:	48 89 45 c0                                     	mov    %rax,-0x40(%rbp)
    1293:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    1297:	48 8b 40 08                                     	mov    0x8(%rax),%rax
    129b:	48 89 45 d0                                     	mov    %rax,-0x30(%rbp)
    129f:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    12a3:	48 8b 40 10                                     	mov    0x10(%rax),%rax
    12a7:	48 83 f8 03                                     	cmp    $0x3,%rax
    12ab:	0f 94 c0                                        	sete   %al
    12ae:	0f b6 c0                                        	movzbl %al,%eax
    12b1:	48 85 c0                                        	test   %rax,%rax
    12b4:	74 12                                           	je     12c8 <void reorder23<sort_ctx>(sort_ctx*, char*, char*, char*)+0x7a>
/foo/bar/git/gcc-test/gcc/sort.cc:94 (discriminator 1)
    12b6:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
    12ba:	48 8d 50 10                                     	lea    0x10(%rax),%rdx
    12be:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
    12c2:	48 8b 00                                        	mov    (%rax),%rax
    12c5:	48 89 02                                        	mov    %rax,(%rdx)
/foo/bar/git/gcc-test/gcc/sort.cc:94 (discriminator 3)
    12c8:	48 8b 55 c8                                     	mov    -0x38(%rbp),%rdx
    12cc:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
    12d0:	48 89 10                                        	mov    %rdx,(%rax)
    12d3:	48 83 45 d0 08                                  	addq   $0x8,-0x30(%rbp)
    12d8:	48 8b 55 c0                                     	mov    -0x40(%rbp),%rdx
    12dc:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
    12e0:	48 89 10                                        	mov    %rdx,(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:105 (discriminator 3)
    12e3:	e9 f2 01 00 00                                  	jmp    14da <void reorder23<sort_ctx>(sort_ctx*, char*, char*, char*)+0x28c>
/foo/bar/git/gcc-test/gcc/sort.cc:95
    12e8:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    12ec:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    12f0:	48 83 f8 04                                     	cmp    $0x4,%rax
    12f4:	0f 94 c0                                        	sete   %al
    12f7:	0f b6 c0                                        	movzbl %al,%eax
    12fa:	48 85 c0                                        	test   %rax,%rax
    12fd:	74 61                                           	je     1360 <void reorder23<sort_ctx>(sort_ctx*, char*, char*, char*)+0x112>
/foo/bar/git/gcc-test/gcc/sort.cc:96
    12ff:	48 8b 45 90                                     	mov    -0x70(%rbp),%rax
    1303:	8b 00                                           	mov    (%rax),%eax
    1305:	89 45 bc                                        	mov    %eax,-0x44(%rbp)
    1308:	48 8b 45 88                                     	mov    -0x78(%rbp),%rax
    130c:	8b 00                                           	mov    (%rax),%eax
    130e:	89 45 b8                                        	mov    %eax,-0x48(%rbp)
    1311:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    1315:	48 8b 40 08                                     	mov    0x8(%rax),%rax
    1319:	48 89 45 d8                                     	mov    %rax,-0x28(%rbp)
    131d:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    1321:	48 8b 40 10                                     	mov    0x10(%rax),%rax
    1325:	48 83 f8 03                                     	cmp    $0x3,%rax
    1329:	0f 94 c0                                        	sete   %al
    132c:	0f b6 c0                                        	movzbl %al,%eax
    132f:	48 85 c0                                        	test   %rax,%rax
    1332:	74 10                                           	je     1344 <void reorder23<sort_ctx>(sort_ctx*, char*, char*, char*)+0xf6>
/foo/bar/git/gcc-test/gcc/sort.cc:96 (discriminator 1)
    1334:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1338:	48 8d 50 08                                     	lea    0x8(%rax),%rdx
    133c:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
    1340:	8b 00                                           	mov    (%rax),%eax
    1342:	89 02                                           	mov    %eax,(%rdx)
/foo/bar/git/gcc-test/gcc/sort.cc:96 (discriminator 3)
    1344:	8b 55 bc                                        	mov    -0x44(%rbp),%edx
    1347:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    134b:	89 10                                           	mov    %edx,(%rax)
    134d:	48 83 45 d8 04                                  	addq   $0x4,-0x28(%rbp)
    1352:	8b 55 b8                                        	mov    -0x48(%rbp),%edx
    1355:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1359:	89 10                                           	mov    %edx,(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:105 (discriminator 3)
    135b:	e9 7a 01 00 00                                  	jmp    14da <void reorder23<sort_ctx>(sort_ctx*, char*, char*, char*)+0x28c>
/foo/bar/git/gcc-test/gcc/sort.cc:99
    1360:	48 c7 45 f8 00 00 00 00                         	movq   $0x0,-0x8(%rbp)
    1368:	48 c7 45 f0 08 00 00 00                         	movq   $0x8,-0x10(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:100
    1370:	e9 9d 00 00 00                                  	jmp    1412 <void reorder23<sort_ctx>(sort_ctx*, char*, char*, char*)+0x1c4>
/foo/bar/git/gcc-test/gcc/sort.cc:101
    1375:	48 8b 55 90                                     	mov    -0x70(%rbp),%rdx
    1379:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    137d:	48 01 d0                                        	add    %rdx,%rax
    1380:	48 8b 00                                        	mov    (%rax),%rax
    1383:	48 89 45 b0                                     	mov    %rax,-0x50(%rbp)
    1387:	48 8b 55 88                                     	mov    -0x78(%rbp),%rdx
    138b:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    138f:	48 01 d0                                        	add    %rdx,%rax
    1392:	48 8b 00                                        	mov    (%rax),%rax
    1395:	48 89 45 a8                                     	mov    %rax,-0x58(%rbp)
    1399:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    139d:	48 8b 50 08                                     	mov    0x8(%rax),%rdx
    13a1:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    13a5:	48 01 d0                                        	add    %rdx,%rax
    13a8:	48 89 45 e0                                     	mov    %rax,-0x20(%rbp)
    13ac:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    13b0:	48 8b 40 10                                     	mov    0x10(%rax),%rax
    13b4:	48 83 f8 03                                     	cmp    $0x3,%rax
    13b8:	0f 94 c0                                        	sete   %al
    13bb:	0f b6 c0                                        	movzbl %al,%eax
    13be:	48 85 c0                                        	test   %rax,%rax
    13c1:	74 25                                           	je     13e8 <void reorder23<sort_ctx>(sort_ctx*, char*, char*, char*)+0x19a>
/foo/bar/git/gcc-test/gcc/sort.cc:101 (discriminator 1)
    13c3:	48 8b 55 80                                     	mov    -0x80(%rbp),%rdx
    13c7:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    13cb:	48 8d 0c 02                                     	lea    (%rdx,%rax,1),%rcx
    13cf:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    13d3:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    13d7:	48 8d 14 00                                     	lea    (%rax,%rax,1),%rdx
    13db:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    13df:	48 01 c2                                        	add    %rax,%rdx
    13e2:	48 8b 01                                        	mov    (%rcx),%rax
    13e5:	48 89 02                                        	mov    %rax,(%rdx)
/foo/bar/git/gcc-test/gcc/sort.cc:101 (discriminator 3)
    13e8:	48 8b 55 b0                                     	mov    -0x50(%rbp),%rdx
    13ec:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    13f0:	48 89 10                                        	mov    %rdx,(%rax)
    13f3:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    13f7:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    13fb:	48 01 45 e0                                     	add    %rax,-0x20(%rbp)
    13ff:	48 8b 55 a8                                     	mov    -0x58(%rbp),%rdx
    1403:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    1407:	48 89 10                                        	mov    %rdx,(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:100 (discriminator 3)
    140a:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
    140e:	48 01 45 f8                                     	add    %rax,-0x8(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:100 (discriminator 1)
    1412:	48 8b 55 f8                                     	mov    -0x8(%rbp),%rdx
    1416:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
    141a:	48 01 c2                                        	add    %rax,%rdx
    141d:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    1421:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    1425:	48 39 d0                                        	cmp    %rdx,%rax
    1428:	0f 83 47 ff ff ff                               	jae    1375 <void reorder23<sort_ctx>(sort_ctx*, char*, char*, char*)+0x127>
/foo/bar/git/gcc-test/gcc/sort.cc:102
    142e:	e9 95 00 00 00                                  	jmp    14c8 <void reorder23<sort_ctx>(sort_ctx*, char*, char*, char*)+0x27a>
/foo/bar/git/gcc-test/gcc/sort.cc:103
    1433:	48 8b 55 90                                     	mov    -0x70(%rbp),%rdx
    1437:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    143b:	48 01 d0                                        	add    %rdx,%rax
    143e:	0f b6 00                                        	movzbl (%rax),%eax
    1441:	88 45 a7                                        	mov    %al,-0x59(%rbp)
    1444:	48 8b 55 88                                     	mov    -0x78(%rbp),%rdx
    1448:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    144c:	48 01 d0                                        	add    %rdx,%rax
    144f:	0f b6 00                                        	movzbl (%rax),%eax
    1452:	88 45 a6                                        	mov    %al,-0x5a(%rbp)
    1455:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    1459:	48 8b 50 08                                     	mov    0x8(%rax),%rdx
    145d:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1461:	48 01 d0                                        	add    %rdx,%rax
    1464:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
    1468:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    146c:	48 8b 40 10                                     	mov    0x10(%rax),%rax
    1470:	48 83 f8 03                                     	cmp    $0x3,%rax
    1474:	0f 94 c0                                        	sete   %al
    1477:	0f b6 c0                                        	movzbl %al,%eax
    147a:	48 85 c0                                        	test   %rax,%rax
    147d:	74 24                                           	je     14a3 <void reorder23<sort_ctx>(sort_ctx*, char*, char*, char*)+0x255>
/foo/bar/git/gcc-test/gcc/sort.cc:103 (discriminator 1)
    147f:	48 8b 55 80                                     	mov    -0x80(%rbp),%rdx
    1483:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1487:	48 8d 0c 02                                     	lea    (%rdx,%rax,1),%rcx
    148b:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    148f:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    1493:	48 8d 14 00                                     	lea    (%rax,%rax,1),%rdx
    1497:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    149b:	48 01 c2                                        	add    %rax,%rdx
    149e:	0f b6 01                                        	movzbl (%rcx),%eax
    14a1:	88 02                                           	mov    %al,(%rdx)
/foo/bar/git/gcc-test/gcc/sort.cc:103 (discriminator 3)
    14a3:	0f b6 55 a7                                     	movzbl -0x59(%rbp),%edx
    14a7:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    14ab:	88 10                                           	mov    %dl,(%rax)
    14ad:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    14b1:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    14b5:	48 01 45 e8                                     	add    %rax,-0x18(%rbp)
    14b9:	0f b6 55 a6                                     	movzbl -0x5a(%rbp),%edx
    14bd:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    14c1:	88 10                                           	mov    %dl,(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:102 (discriminator 3)
    14c3:	48 83 45 f8 01                                  	addq   $0x1,-0x8(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:102 (discriminator 1)
    14c8:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    14cc:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    14d0:	48 39 45 f8                                     	cmp    %rax,-0x8(%rbp)
    14d4:	0f 82 59 ff ff ff                               	jb     1433 <void reorder23<sort_ctx>(sort_ctx*, char*, char*, char*)+0x1e5>
/foo/bar/git/gcc-test/gcc/sort.cc:105
    14da:	90                                              	nop
    14db:	c9                                              	leave
    14dc:	c3                                              	ret

00000000000014dd <void reorder45<sort_ctx>(sort_ctx*, char*, char*, char*, char*, char*)>:
void reorder45<sort_ctx>(sort_ctx*, char*, char*, char*, char*, char*):
/foo/bar/git/gcc-test/gcc/sort.cc:110
    14dd:	55                                              	push   %rbp
    14de:	48 89 e5                                        	mov    %rsp,%rbp
    14e1:	48 83 ec 48                                     	sub    $0x48,%rsp
    14e5:	48 89 bd 68 ff ff ff                            	mov    %rdi,-0x98(%rbp)
    14ec:	48 89 b5 60 ff ff ff                            	mov    %rsi,-0xa0(%rbp)
    14f3:	48 89 95 58 ff ff ff                            	mov    %rdx,-0xa8(%rbp)
    14fa:	48 89 8d 50 ff ff ff                            	mov    %rcx,-0xb0(%rbp)
    1501:	4c 89 85 48 ff ff ff                            	mov    %r8,-0xb8(%rbp)
    1508:	4c 89 8d 40 ff ff ff                            	mov    %r9,-0xc0(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:128
    150f:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1516:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    151a:	48 83 f8 08                                     	cmp    $0x8,%rax
    151e:	0f 94 c0                                        	sete   %al
    1521:	0f b6 c0                                        	movzbl %al,%eax
    1524:	48 85 c0                                        	test   %rax,%rax
    1527:	0f 84 b6 00 00 00                               	je     15e3 <void reorder45<sort_ctx>(sort_ctx*, char*, char*, char*, char*, char*)+0x106>
/foo/bar/git/gcc-test/gcc/sort.cc:129
    152d:	48 8b 85 60 ff ff ff                            	mov    -0xa0(%rbp),%rax
    1534:	48 8b 00                                        	mov    (%rax),%rax
    1537:	48 89 45 c8                                     	mov    %rax,-0x38(%rbp)
    153b:	48 8b 85 58 ff ff ff                            	mov    -0xa8(%rbp),%rax
    1542:	48 8b 00                                        	mov    (%rax),%rax
    1545:	48 89 45 c0                                     	mov    %rax,-0x40(%rbp)
    1549:	48 8b 85 50 ff ff ff                            	mov    -0xb0(%rbp),%rax
    1550:	48 8b 00                                        	mov    (%rax),%rax
    1553:	48 89 45 b8                                     	mov    %rax,-0x48(%rbp)
    1557:	48 8b 85 48 ff ff ff                            	mov    -0xb8(%rbp),%rax
    155e:	48 8b 00                                        	mov    (%rax),%rax
    1561:	48 89 45 b0                                     	mov    %rax,-0x50(%rbp)
    1565:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    156c:	48 8b 40 08                                     	mov    0x8(%rax),%rax
    1570:	48 89 45 d0                                     	mov    %rax,-0x30(%rbp)
    1574:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    157b:	48 8b 40 10                                     	mov    0x10(%rax),%rax
    157f:	48 83 f8 05                                     	cmp    $0x5,%rax
    1583:	0f 94 c0                                        	sete   %al
    1586:	0f b6 c0                                        	movzbl %al,%eax
    1589:	48 85 c0                                        	test   %rax,%rax
    158c:	74 15                                           	je     15a3 <void reorder45<sort_ctx>(sort_ctx*, char*, char*, char*, char*, char*)+0xc6>
/foo/bar/git/gcc-test/gcc/sort.cc:129 (discriminator 1)
    158e:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
    1592:	48 8d 50 20                                     	lea    0x20(%rax),%rdx
    1596:	48 8b 85 40 ff ff ff                            	mov    -0xc0(%rbp),%rax
    159d:	48 8b 00                                        	mov    (%rax),%rax
    15a0:	48 89 02                                        	mov    %rax,(%rdx)
/foo/bar/git/gcc-test/gcc/sort.cc:129 (discriminator 3)
    15a3:	48 8b 55 c8                                     	mov    -0x38(%rbp),%rdx
    15a7:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
    15ab:	48 89 10                                        	mov    %rdx,(%rax)
    15ae:	48 83 45 d0 08                                  	addq   $0x8,-0x30(%rbp)
    15b3:	48 8b 55 c0                                     	mov    -0x40(%rbp),%rdx
    15b7:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
    15bb:	48 89 10                                        	mov    %rdx,(%rax)
    15be:	48 83 45 d0 08                                  	addq   $0x8,-0x30(%rbp)
    15c3:	48 8b 55 b8                                     	mov    -0x48(%rbp),%rdx
    15c7:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
    15cb:	48 89 10                                        	mov    %rdx,(%rax)
    15ce:	48 83 45 d0 08                                  	addq   $0x8,-0x30(%rbp)
    15d3:	48 8b 55 b0                                     	mov    -0x50(%rbp),%rdx
    15d7:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
    15db:	48 89 10                                        	mov    %rdx,(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:140 (discriminator 3)
    15de:	e9 44 03 00 00                                  	jmp    1927 <void reorder45<sort_ctx>(sort_ctx*, char*, char*, char*, char*, char*)+0x44a>
/foo/bar/git/gcc-test/gcc/sort.cc:130
    15e3:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    15ea:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    15ee:	48 83 f8 04                                     	cmp    $0x4,%rax
    15f2:	0f 94 c0                                        	sete   %al
    15f5:	0f b6 c0                                        	movzbl %al,%eax
    15f8:	48 85 c0                                        	test   %rax,%rax
    15fb:	0f 84 a4 00 00 00                               	je     16a5 <void reorder45<sort_ctx>(sort_ctx*, char*, char*, char*, char*, char*)+0x1c8>
/foo/bar/git/gcc-test/gcc/sort.cc:131
    1601:	48 8b 85 60 ff ff ff                            	mov    -0xa0(%rbp),%rax
    1608:	8b 00                                           	mov    (%rax),%eax
    160a:	89 45 ac                                        	mov    %eax,-0x54(%rbp)
    160d:	48 8b 85 58 ff ff ff                            	mov    -0xa8(%rbp),%rax
    1614:	8b 00                                           	mov    (%rax),%eax
    1616:	89 45 a8                                        	mov    %eax,-0x58(%rbp)
    1619:	48 8b 85 50 ff ff ff                            	mov    -0xb0(%rbp),%rax
    1620:	8b 00                                           	mov    (%rax),%eax
    1622:	89 45 a4                                        	mov    %eax,-0x5c(%rbp)
    1625:	48 8b 85 48 ff ff ff                            	mov    -0xb8(%rbp),%rax
    162c:	8b 00                                           	mov    (%rax),%eax
    162e:	89 45 a0                                        	mov    %eax,-0x60(%rbp)
    1631:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1638:	48 8b 40 08                                     	mov    0x8(%rax),%rax
    163c:	48 89 45 d8                                     	mov    %rax,-0x28(%rbp)
    1640:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1647:	48 8b 40 10                                     	mov    0x10(%rax),%rax
    164b:	48 83 f8 05                                     	cmp    $0x5,%rax
    164f:	0f 94 c0                                        	sete   %al
    1652:	0f b6 c0                                        	movzbl %al,%eax
    1655:	48 85 c0                                        	test   %rax,%rax
    1658:	74 13                                           	je     166d <void reorder45<sort_ctx>(sort_ctx*, char*, char*, char*, char*, char*)+0x190>
/foo/bar/git/gcc-test/gcc/sort.cc:131 (discriminator 1)
    165a:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    165e:	48 8d 50 10                                     	lea    0x10(%rax),%rdx
    1662:	48 8b 85 40 ff ff ff                            	mov    -0xc0(%rbp),%rax
    1669:	8b 00                                           	mov    (%rax),%eax
    166b:	89 02                                           	mov    %eax,(%rdx)
/foo/bar/git/gcc-test/gcc/sort.cc:131 (discriminator 3)
    166d:	8b 55 ac                                        	mov    -0x54(%rbp),%edx
    1670:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1674:	89 10                                           	mov    %edx,(%rax)
    1676:	48 83 45 d8 04                                  	addq   $0x4,-0x28(%rbp)
    167b:	8b 55 a8                                        	mov    -0x58(%rbp),%edx
    167e:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1682:	89 10                                           	mov    %edx,(%rax)
    1684:	48 83 45 d8 04                                  	addq   $0x4,-0x28(%rbp)
    1689:	8b 55 a4                                        	mov    -0x5c(%rbp),%edx
    168c:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1690:	89 10                                           	mov    %edx,(%rax)
    1692:	48 83 45 d8 04                                  	addq   $0x4,-0x28(%rbp)
    1697:	8b 55 a0                                        	mov    -0x60(%rbp),%edx
    169a:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    169e:	89 10                                           	mov    %edx,(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:140 (discriminator 3)
    16a0:	e9 82 02 00 00                                  	jmp    1927 <void reorder45<sort_ctx>(sort_ctx*, char*, char*, char*, char*, char*)+0x44a>
/foo/bar/git/gcc-test/gcc/sort.cc:134
    16a5:	48 c7 45 f8 00 00 00 00                         	movq   $0x0,-0x8(%rbp)
    16ad:	48 c7 45 f0 08 00 00 00                         	movq   $0x8,-0x10(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:135
    16b5:	e9 14 01 00 00                                  	jmp    17ce <void reorder45<sort_ctx>(sort_ctx*, char*, char*, char*, char*, char*)+0x2f1>
/foo/bar/git/gcc-test/gcc/sort.cc:136
    16ba:	48 8b 95 60 ff ff ff                            	mov    -0xa0(%rbp),%rdx
    16c1:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    16c5:	48 01 d0                                        	add    %rdx,%rax
    16c8:	48 8b 00                                        	mov    (%rax),%rax
    16cb:	48 89 45 98                                     	mov    %rax,-0x68(%rbp)
    16cf:	48 8b 95 58 ff ff ff                            	mov    -0xa8(%rbp),%rdx
    16d6:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    16da:	48 01 d0                                        	add    %rdx,%rax
    16dd:	48 8b 00                                        	mov    (%rax),%rax
    16e0:	48 89 45 90                                     	mov    %rax,-0x70(%rbp)
    16e4:	48 8b 95 50 ff ff ff                            	mov    -0xb0(%rbp),%rdx
    16eb:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    16ef:	48 01 d0                                        	add    %rdx,%rax
    16f2:	48 8b 00                                        	mov    (%rax),%rax
    16f5:	48 89 45 88                                     	mov    %rax,-0x78(%rbp)
    16f9:	48 8b 95 48 ff ff ff                            	mov    -0xb8(%rbp),%rdx
    1700:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1704:	48 01 d0                                        	add    %rdx,%rax
    1707:	48 8b 00                                        	mov    (%rax),%rax
    170a:	48 89 45 80                                     	mov    %rax,-0x80(%rbp)
    170e:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1715:	48 8b 50 08                                     	mov    0x8(%rax),%rdx
    1719:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    171d:	48 01 d0                                        	add    %rdx,%rax
    1720:	48 89 45 e0                                     	mov    %rax,-0x20(%rbp)
    1724:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    172b:	48 8b 40 10                                     	mov    0x10(%rax),%rax
    172f:	48 83 f8 05                                     	cmp    $0x5,%rax
    1733:	0f 94 c0                                        	sete   %al
    1736:	0f b6 c0                                        	movzbl %al,%eax
    1739:	48 85 c0                                        	test   %rax,%rax
    173c:	74 2f                                           	je     176d <void reorder45<sort_ctx>(sort_ctx*, char*, char*, char*, char*, char*)+0x290>
/foo/bar/git/gcc-test/gcc/sort.cc:136 (discriminator 1)
    173e:	48 8b 95 40 ff ff ff                            	mov    -0xc0(%rbp),%rdx
    1745:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1749:	48 8d 0c 02                                     	lea    (%rdx,%rax,1),%rcx
    174d:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1754:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    1758:	48 8d 14 85 00 00 00 00                         	lea    0x0(,%rax,4),%rdx
    1760:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    1764:	48 01 c2                                        	add    %rax,%rdx
    1767:	48 8b 01                                        	mov    (%rcx),%rax
    176a:	48 89 02                                        	mov    %rax,(%rdx)
/foo/bar/git/gcc-test/gcc/sort.cc:136 (discriminator 3)
    176d:	48 8b 55 98                                     	mov    -0x68(%rbp),%rdx
    1771:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    1775:	48 89 10                                        	mov    %rdx,(%rax)
    1778:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    177f:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    1783:	48 01 45 e0                                     	add    %rax,-0x20(%rbp)
    1787:	48 8b 55 90                                     	mov    -0x70(%rbp),%rdx
    178b:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    178f:	48 89 10                                        	mov    %rdx,(%rax)
    1792:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1799:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    179d:	48 01 45 e0                                     	add    %rax,-0x20(%rbp)
    17a1:	48 8b 55 88                                     	mov    -0x78(%rbp),%rdx
    17a5:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    17a9:	48 89 10                                        	mov    %rdx,(%rax)
    17ac:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    17b3:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    17b7:	48 01 45 e0                                     	add    %rax,-0x20(%rbp)
    17bb:	48 8b 55 80                                     	mov    -0x80(%rbp),%rdx
    17bf:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    17c3:	48 89 10                                        	mov    %rdx,(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:135 (discriminator 3)
    17c6:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
    17ca:	48 01 45 f8                                     	add    %rax,-0x8(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:135 (discriminator 1)
    17ce:	48 8b 55 f8                                     	mov    -0x8(%rbp),%rdx
    17d2:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
    17d6:	48 01 c2                                        	add    %rax,%rdx
    17d9:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    17e0:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    17e4:	48 39 d0                                        	cmp    %rdx,%rax
    17e7:	0f 83 cd fe ff ff                               	jae    16ba <void reorder45<sort_ctx>(sort_ctx*, char*, char*, char*, char*, char*)+0x1dd>
/foo/bar/git/gcc-test/gcc/sort.cc:137
    17ed:	e9 20 01 00 00                                  	jmp    1912 <void reorder45<sort_ctx>(sort_ctx*, char*, char*, char*, char*, char*)+0x435>
/foo/bar/git/gcc-test/gcc/sort.cc:138
    17f2:	48 8b 95 60 ff ff ff                            	mov    -0xa0(%rbp),%rdx
    17f9:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    17fd:	48 01 d0                                        	add    %rdx,%rax
    1800:	0f b6 00                                        	movzbl (%rax),%eax
    1803:	88 85 7f ff ff ff                               	mov    %al,-0x81(%rbp)
    1809:	48 8b 95 58 ff ff ff                            	mov    -0xa8(%rbp),%rdx
    1810:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1814:	48 01 d0                                        	add    %rdx,%rax
    1817:	0f b6 00                                        	movzbl (%rax),%eax
    181a:	88 85 7e ff ff ff                               	mov    %al,-0x82(%rbp)
    1820:	48 8b 95 50 ff ff ff                            	mov    -0xb0(%rbp),%rdx
    1827:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    182b:	48 01 d0                                        	add    %rdx,%rax
    182e:	0f b6 00                                        	movzbl (%rax),%eax
    1831:	88 85 7d ff ff ff                               	mov    %al,-0x83(%rbp)
    1837:	48 8b 95 48 ff ff ff                            	mov    -0xb8(%rbp),%rdx
    183e:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1842:	48 01 d0                                        	add    %rdx,%rax
    1845:	0f b6 00                                        	movzbl (%rax),%eax
    1848:	88 85 7c ff ff ff                               	mov    %al,-0x84(%rbp)
    184e:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1855:	48 8b 50 08                                     	mov    0x8(%rax),%rdx
    1859:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    185d:	48 01 d0                                        	add    %rdx,%rax
    1860:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
    1864:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    186b:	48 8b 40 10                                     	mov    0x10(%rax),%rax
    186f:	48 83 f8 05                                     	cmp    $0x5,%rax
    1873:	0f 94 c0                                        	sete   %al
    1876:	0f b6 c0                                        	movzbl %al,%eax
    1879:	48 85 c0                                        	test   %rax,%rax
    187c:	74 2e                                           	je     18ac <void reorder45<sort_ctx>(sort_ctx*, char*, char*, char*, char*, char*)+0x3cf>
/foo/bar/git/gcc-test/gcc/sort.cc:138 (discriminator 1)
    187e:	48 8b 95 40 ff ff ff                            	mov    -0xc0(%rbp),%rdx
    1885:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1889:	48 8d 0c 02                                     	lea    (%rdx,%rax,1),%rcx
    188d:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1894:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    1898:	48 8d 14 85 00 00 00 00                         	lea    0x0(,%rax,4),%rdx
    18a0:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    18a4:	48 01 c2                                        	add    %rax,%rdx
    18a7:	0f b6 01                                        	movzbl (%rcx),%eax
    18aa:	88 02                                           	mov    %al,(%rdx)
/foo/bar/git/gcc-test/gcc/sort.cc:138 (discriminator 3)
    18ac:	0f b6 95 7f ff ff ff                            	movzbl -0x81(%rbp),%edx
    18b3:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    18b7:	88 10                                           	mov    %dl,(%rax)
    18b9:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    18c0:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    18c4:	48 01 45 e8                                     	add    %rax,-0x18(%rbp)
    18c8:	0f b6 95 7e ff ff ff                            	movzbl -0x82(%rbp),%edx
    18cf:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    18d3:	88 10                                           	mov    %dl,(%rax)
    18d5:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    18dc:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    18e0:	48 01 45 e8                                     	add    %rax,-0x18(%rbp)
    18e4:	0f b6 95 7d ff ff ff                            	movzbl -0x83(%rbp),%edx
    18eb:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    18ef:	88 10                                           	mov    %dl,(%rax)
    18f1:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    18f8:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    18fc:	48 01 45 e8                                     	add    %rax,-0x18(%rbp)
    1900:	0f b6 95 7c ff ff ff                            	movzbl -0x84(%rbp),%edx
    1907:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    190b:	88 10                                           	mov    %dl,(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:137 (discriminator 3)
    190d:	48 83 45 f8 01                                  	addq   $0x1,-0x8(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:137 (discriminator 1)
    1912:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1919:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    191d:	48 39 45 f8                                     	cmp    %rax,-0x8(%rbp)
    1921:	0f 82 cb fe ff ff                               	jb     17f2 <void reorder45<sort_ctx>(sort_ctx*, char*, char*, char*, char*, char*)+0x315>
/foo/bar/git/gcc-test/gcc/sort.cc:140
    1927:	90                                              	nop
    1928:	c9                                              	leave
    1929:	c3                                              	ret

000000000000192a <long cmp1<sort_r_ctx>(char*, char*, sort_r_ctx*)>:
long cmp1<sort_r_ctx>(char*, char*, sort_r_ctx*):
/foo/bar/git/gcc-test/gcc/sort.cc:148
    192a:	55                                              	push   %rbp
    192b:	48 89 e5                                        	mov    %rsp,%rbp
    192e:	48 83 ec 30                                     	sub    $0x30,%rsp
    1932:	48 89 7d e8                                     	mov    %rdi,-0x18(%rbp)
    1936:	48 89 75 e0                                     	mov    %rsi,-0x20(%rbp)
    193a:	48 89 55 d8                                     	mov    %rdx,-0x28(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:150
    193e:	48 8b 55 e8                                     	mov    -0x18(%rbp),%rdx
    1942:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    1946:	48 31 d0                                        	xor    %rdx,%rax
    1949:	48 89 45 f8                                     	mov    %rax,-0x8(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:151
    194d:	48 8b 55 e0                                     	mov    -0x20(%rbp),%rdx
    1951:	48 8b 4d e8                                     	mov    -0x18(%rbp),%rcx
    1955:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1959:	48 89 ce                                        	mov    %rcx,%rsi
    195c:	48 89 c7                                        	mov    %rax,%rdi
    195f:	e8 00 00 00 00                                  	call   1964 <long cmp1<sort_r_ctx>(char*, char*, sort_r_ctx*)+0x3a>
			1960: R_X86_64_PLT32	sort_r_ctx::cmp(void const*, void const*)-0x4
    1964:	c1 f8 1f                                        	sar    $0x1f,%eax
    1967:	48 98                                           	cltq
    1969:	48 23 45 f8                                     	and    -0x8(%rbp),%rax
/foo/bar/git/gcc-test/gcc/sort.cc:152
    196d:	c9                                              	leave
    196e:	c3                                              	ret

000000000000196f <void reorder23<sort_r_ctx>(sort_r_ctx*, char*, char*, char*)>:
void reorder23<sort_r_ctx>(sort_r_ctx*, char*, char*, char*):
/foo/bar/git/gcc-test/gcc/sort.cc:79
    196f:	55                                              	push   %rbp
    1970:	48 89 e5                                        	mov    %rsp,%rbp
    1973:	48 83 ec 08                                     	sub    $0x8,%rsp
    1977:	48 89 7d 98                                     	mov    %rdi,-0x68(%rbp)
    197b:	48 89 75 90                                     	mov    %rsi,-0x70(%rbp)
    197f:	48 89 55 88                                     	mov    %rdx,-0x78(%rbp)
    1983:	48 89 4d 80                                     	mov    %rcx,-0x80(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:93
    1987:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    198b:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    198f:	48 83 f8 08                                     	cmp    $0x8,%rax
    1993:	0f 94 c0                                        	sete   %al
    1996:	0f b6 c0                                        	movzbl %al,%eax
    1999:	48 85 c0                                        	test   %rax,%rax
    199c:	74 6b                                           	je     1a09 <void reorder23<sort_r_ctx>(sort_r_ctx*, char*, char*, char*)+0x9a>
/foo/bar/git/gcc-test/gcc/sort.cc:94
    199e:	48 8b 45 90                                     	mov    -0x70(%rbp),%rax
    19a2:	48 8b 00                                        	mov    (%rax),%rax
    19a5:	48 89 45 c8                                     	mov    %rax,-0x38(%rbp)
    19a9:	48 8b 45 88                                     	mov    -0x78(%rbp),%rax
    19ad:	48 8b 00                                        	mov    (%rax),%rax
    19b0:	48 89 45 c0                                     	mov    %rax,-0x40(%rbp)
    19b4:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    19b8:	48 8b 40 10                                     	mov    0x10(%rax),%rax
    19bc:	48 89 45 d0                                     	mov    %rax,-0x30(%rbp)
    19c0:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    19c4:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    19c8:	48 83 f8 03                                     	cmp    $0x3,%rax
    19cc:	0f 94 c0                                        	sete   %al
    19cf:	0f b6 c0                                        	movzbl %al,%eax
    19d2:	48 85 c0                                        	test   %rax,%rax
    19d5:	74 12                                           	je     19e9 <void reorder23<sort_r_ctx>(sort_r_ctx*, char*, char*, char*)+0x7a>
/foo/bar/git/gcc-test/gcc/sort.cc:94 (discriminator 1)
    19d7:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
    19db:	48 8d 50 10                                     	lea    0x10(%rax),%rdx
    19df:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
    19e3:	48 8b 00                                        	mov    (%rax),%rax
    19e6:	48 89 02                                        	mov    %rax,(%rdx)
/foo/bar/git/gcc-test/gcc/sort.cc:94 (discriminator 3)
    19e9:	48 8b 55 c8                                     	mov    -0x38(%rbp),%rdx
    19ed:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
    19f1:	48 89 10                                        	mov    %rdx,(%rax)
    19f4:	48 83 45 d0 08                                  	addq   $0x8,-0x30(%rbp)
    19f9:	48 8b 55 c0                                     	mov    -0x40(%rbp),%rdx
    19fd:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
    1a01:	48 89 10                                        	mov    %rdx,(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:105 (discriminator 3)
    1a04:	e9 f2 01 00 00                                  	jmp    1bfb <void reorder23<sort_r_ctx>(sort_r_ctx*, char*, char*, char*)+0x28c>
/foo/bar/git/gcc-test/gcc/sort.cc:95
    1a09:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    1a0d:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    1a11:	48 83 f8 04                                     	cmp    $0x4,%rax
    1a15:	0f 94 c0                                        	sete   %al
    1a18:	0f b6 c0                                        	movzbl %al,%eax
    1a1b:	48 85 c0                                        	test   %rax,%rax
    1a1e:	74 61                                           	je     1a81 <void reorder23<sort_r_ctx>(sort_r_ctx*, char*, char*, char*)+0x112>
/foo/bar/git/gcc-test/gcc/sort.cc:96
    1a20:	48 8b 45 90                                     	mov    -0x70(%rbp),%rax
    1a24:	8b 00                                           	mov    (%rax),%eax
    1a26:	89 45 bc                                        	mov    %eax,-0x44(%rbp)
    1a29:	48 8b 45 88                                     	mov    -0x78(%rbp),%rax
    1a2d:	8b 00                                           	mov    (%rax),%eax
    1a2f:	89 45 b8                                        	mov    %eax,-0x48(%rbp)
    1a32:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    1a36:	48 8b 40 10                                     	mov    0x10(%rax),%rax
    1a3a:	48 89 45 d8                                     	mov    %rax,-0x28(%rbp)
    1a3e:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    1a42:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    1a46:	48 83 f8 03                                     	cmp    $0x3,%rax
    1a4a:	0f 94 c0                                        	sete   %al
    1a4d:	0f b6 c0                                        	movzbl %al,%eax
    1a50:	48 85 c0                                        	test   %rax,%rax
    1a53:	74 10                                           	je     1a65 <void reorder23<sort_r_ctx>(sort_r_ctx*, char*, char*, char*)+0xf6>
/foo/bar/git/gcc-test/gcc/sort.cc:96 (discriminator 1)
    1a55:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1a59:	48 8d 50 08                                     	lea    0x8(%rax),%rdx
    1a5d:	48 8b 45 80                                     	mov    -0x80(%rbp),%rax
    1a61:	8b 00                                           	mov    (%rax),%eax
    1a63:	89 02                                           	mov    %eax,(%rdx)
/foo/bar/git/gcc-test/gcc/sort.cc:96 (discriminator 3)
    1a65:	8b 55 bc                                        	mov    -0x44(%rbp),%edx
    1a68:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1a6c:	89 10                                           	mov    %edx,(%rax)
    1a6e:	48 83 45 d8 04                                  	addq   $0x4,-0x28(%rbp)
    1a73:	8b 55 b8                                        	mov    -0x48(%rbp),%edx
    1a76:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1a7a:	89 10                                           	mov    %edx,(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:105 (discriminator 3)
    1a7c:	e9 7a 01 00 00                                  	jmp    1bfb <void reorder23<sort_r_ctx>(sort_r_ctx*, char*, char*, char*)+0x28c>
/foo/bar/git/gcc-test/gcc/sort.cc:99
    1a81:	48 c7 45 f8 00 00 00 00                         	movq   $0x0,-0x8(%rbp)
    1a89:	48 c7 45 f0 08 00 00 00                         	movq   $0x8,-0x10(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:100
    1a91:	e9 9d 00 00 00                                  	jmp    1b33 <void reorder23<sort_r_ctx>(sort_r_ctx*, char*, char*, char*)+0x1c4>
/foo/bar/git/gcc-test/gcc/sort.cc:101
    1a96:	48 8b 55 90                                     	mov    -0x70(%rbp),%rdx
    1a9a:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1a9e:	48 01 d0                                        	add    %rdx,%rax
    1aa1:	48 8b 00                                        	mov    (%rax),%rax
    1aa4:	48 89 45 b0                                     	mov    %rax,-0x50(%rbp)
    1aa8:	48 8b 55 88                                     	mov    -0x78(%rbp),%rdx
    1aac:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1ab0:	48 01 d0                                        	add    %rdx,%rax
    1ab3:	48 8b 00                                        	mov    (%rax),%rax
    1ab6:	48 89 45 a8                                     	mov    %rax,-0x58(%rbp)
    1aba:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    1abe:	48 8b 50 10                                     	mov    0x10(%rax),%rdx
    1ac2:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1ac6:	48 01 d0                                        	add    %rdx,%rax
    1ac9:	48 89 45 e0                                     	mov    %rax,-0x20(%rbp)
    1acd:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    1ad1:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    1ad5:	48 83 f8 03                                     	cmp    $0x3,%rax
    1ad9:	0f 94 c0                                        	sete   %al
    1adc:	0f b6 c0                                        	movzbl %al,%eax
    1adf:	48 85 c0                                        	test   %rax,%rax
    1ae2:	74 25                                           	je     1b09 <void reorder23<sort_r_ctx>(sort_r_ctx*, char*, char*, char*)+0x19a>
/foo/bar/git/gcc-test/gcc/sort.cc:101 (discriminator 1)
    1ae4:	48 8b 55 80                                     	mov    -0x80(%rbp),%rdx
    1ae8:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1aec:	48 8d 0c 02                                     	lea    (%rdx,%rax,1),%rcx
    1af0:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    1af4:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    1af8:	48 8d 14 00                                     	lea    (%rax,%rax,1),%rdx
    1afc:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    1b00:	48 01 c2                                        	add    %rax,%rdx
    1b03:	48 8b 01                                        	mov    (%rcx),%rax
    1b06:	48 89 02                                        	mov    %rax,(%rdx)
/foo/bar/git/gcc-test/gcc/sort.cc:101 (discriminator 3)
    1b09:	48 8b 55 b0                                     	mov    -0x50(%rbp),%rdx
    1b0d:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    1b11:	48 89 10                                        	mov    %rdx,(%rax)
    1b14:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    1b18:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    1b1c:	48 01 45 e0                                     	add    %rax,-0x20(%rbp)
    1b20:	48 8b 55 a8                                     	mov    -0x58(%rbp),%rdx
    1b24:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    1b28:	48 89 10                                        	mov    %rdx,(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:100 (discriminator 3)
    1b2b:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
    1b2f:	48 01 45 f8                                     	add    %rax,-0x8(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:100 (discriminator 1)
    1b33:	48 8b 55 f8                                     	mov    -0x8(%rbp),%rdx
    1b37:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
    1b3b:	48 01 c2                                        	add    %rax,%rdx
    1b3e:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    1b42:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    1b46:	48 39 d0                                        	cmp    %rdx,%rax
    1b49:	0f 83 47 ff ff ff                               	jae    1a96 <void reorder23<sort_r_ctx>(sort_r_ctx*, char*, char*, char*)+0x127>
/foo/bar/git/gcc-test/gcc/sort.cc:102
    1b4f:	e9 95 00 00 00                                  	jmp    1be9 <void reorder23<sort_r_ctx>(sort_r_ctx*, char*, char*, char*)+0x27a>
/foo/bar/git/gcc-test/gcc/sort.cc:103
    1b54:	48 8b 55 90                                     	mov    -0x70(%rbp),%rdx
    1b58:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1b5c:	48 01 d0                                        	add    %rdx,%rax
    1b5f:	0f b6 00                                        	movzbl (%rax),%eax
    1b62:	88 45 a7                                        	mov    %al,-0x59(%rbp)
    1b65:	48 8b 55 88                                     	mov    -0x78(%rbp),%rdx
    1b69:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1b6d:	48 01 d0                                        	add    %rdx,%rax
    1b70:	0f b6 00                                        	movzbl (%rax),%eax
    1b73:	88 45 a6                                        	mov    %al,-0x5a(%rbp)
    1b76:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    1b7a:	48 8b 50 10                                     	mov    0x10(%rax),%rdx
    1b7e:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1b82:	48 01 d0                                        	add    %rdx,%rax
    1b85:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
    1b89:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    1b8d:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    1b91:	48 83 f8 03                                     	cmp    $0x3,%rax
    1b95:	0f 94 c0                                        	sete   %al
    1b98:	0f b6 c0                                        	movzbl %al,%eax
    1b9b:	48 85 c0                                        	test   %rax,%rax
    1b9e:	74 24                                           	je     1bc4 <void reorder23<sort_r_ctx>(sort_r_ctx*, char*, char*, char*)+0x255>
/foo/bar/git/gcc-test/gcc/sort.cc:103 (discriminator 1)
    1ba0:	48 8b 55 80                                     	mov    -0x80(%rbp),%rdx
    1ba4:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1ba8:	48 8d 0c 02                                     	lea    (%rdx,%rax,1),%rcx
    1bac:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    1bb0:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    1bb4:	48 8d 14 00                                     	lea    (%rax,%rax,1),%rdx
    1bb8:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    1bbc:	48 01 c2                                        	add    %rax,%rdx
    1bbf:	0f b6 01                                        	movzbl (%rcx),%eax
    1bc2:	88 02                                           	mov    %al,(%rdx)
/foo/bar/git/gcc-test/gcc/sort.cc:103 (discriminator 3)
    1bc4:	0f b6 55 a7                                     	movzbl -0x59(%rbp),%edx
    1bc8:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    1bcc:	88 10                                           	mov    %dl,(%rax)
    1bce:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    1bd2:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    1bd6:	48 01 45 e8                                     	add    %rax,-0x18(%rbp)
    1bda:	0f b6 55 a6                                     	movzbl -0x5a(%rbp),%edx
    1bde:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    1be2:	88 10                                           	mov    %dl,(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:102 (discriminator 3)
    1be4:	48 83 45 f8 01                                  	addq   $0x1,-0x8(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:102 (discriminator 1)
    1be9:	48 8b 45 98                                     	mov    -0x68(%rbp),%rax
    1bed:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    1bf1:	48 39 45 f8                                     	cmp    %rax,-0x8(%rbp)
    1bf5:	0f 82 59 ff ff ff                               	jb     1b54 <void reorder23<sort_r_ctx>(sort_r_ctx*, char*, char*, char*)+0x1e5>
/foo/bar/git/gcc-test/gcc/sort.cc:105
    1bfb:	90                                              	nop
    1bfc:	c9                                              	leave
    1bfd:	c3                                              	ret

0000000000001bfe <void reorder45<sort_r_ctx>(sort_r_ctx*, char*, char*, char*, char*, char*)>:
void reorder45<sort_r_ctx>(sort_r_ctx*, char*, char*, char*, char*, char*):
/foo/bar/git/gcc-test/gcc/sort.cc:110
    1bfe:	55                                              	push   %rbp
    1bff:	48 89 e5                                        	mov    %rsp,%rbp
    1c02:	48 83 ec 48                                     	sub    $0x48,%rsp
    1c06:	48 89 bd 68 ff ff ff                            	mov    %rdi,-0x98(%rbp)
    1c0d:	48 89 b5 60 ff ff ff                            	mov    %rsi,-0xa0(%rbp)
    1c14:	48 89 95 58 ff ff ff                            	mov    %rdx,-0xa8(%rbp)
    1c1b:	48 89 8d 50 ff ff ff                            	mov    %rcx,-0xb0(%rbp)
    1c22:	4c 89 85 48 ff ff ff                            	mov    %r8,-0xb8(%rbp)
    1c29:	4c 89 8d 40 ff ff ff                            	mov    %r9,-0xc0(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:128
    1c30:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1c37:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    1c3b:	48 83 f8 08                                     	cmp    $0x8,%rax
    1c3f:	0f 94 c0                                        	sete   %al
    1c42:	0f b6 c0                                        	movzbl %al,%eax
    1c45:	48 85 c0                                        	test   %rax,%rax
    1c48:	0f 84 b6 00 00 00                               	je     1d04 <void reorder45<sort_r_ctx>(sort_r_ctx*, char*, char*, char*, char*, char*)+0x106>
/foo/bar/git/gcc-test/gcc/sort.cc:129
    1c4e:	48 8b 85 60 ff ff ff                            	mov    -0xa0(%rbp),%rax
    1c55:	48 8b 00                                        	mov    (%rax),%rax
    1c58:	48 89 45 c8                                     	mov    %rax,-0x38(%rbp)
    1c5c:	48 8b 85 58 ff ff ff                            	mov    -0xa8(%rbp),%rax
    1c63:	48 8b 00                                        	mov    (%rax),%rax
    1c66:	48 89 45 c0                                     	mov    %rax,-0x40(%rbp)
    1c6a:	48 8b 85 50 ff ff ff                            	mov    -0xb0(%rbp),%rax
    1c71:	48 8b 00                                        	mov    (%rax),%rax
    1c74:	48 89 45 b8                                     	mov    %rax,-0x48(%rbp)
    1c78:	48 8b 85 48 ff ff ff                            	mov    -0xb8(%rbp),%rax
    1c7f:	48 8b 00                                        	mov    (%rax),%rax
    1c82:	48 89 45 b0                                     	mov    %rax,-0x50(%rbp)
    1c86:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1c8d:	48 8b 40 10                                     	mov    0x10(%rax),%rax
    1c91:	48 89 45 d0                                     	mov    %rax,-0x30(%rbp)
    1c95:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1c9c:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    1ca0:	48 83 f8 05                                     	cmp    $0x5,%rax
    1ca4:	0f 94 c0                                        	sete   %al
    1ca7:	0f b6 c0                                        	movzbl %al,%eax
    1caa:	48 85 c0                                        	test   %rax,%rax
    1cad:	74 15                                           	je     1cc4 <void reorder45<sort_r_ctx>(sort_r_ctx*, char*, char*, char*, char*, char*)+0xc6>
/foo/bar/git/gcc-test/gcc/sort.cc:129 (discriminator 1)
    1caf:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
    1cb3:	48 8d 50 20                                     	lea    0x20(%rax),%rdx
    1cb7:	48 8b 85 40 ff ff ff                            	mov    -0xc0(%rbp),%rax
    1cbe:	48 8b 00                                        	mov    (%rax),%rax
    1cc1:	48 89 02                                        	mov    %rax,(%rdx)
/foo/bar/git/gcc-test/gcc/sort.cc:129 (discriminator 3)
    1cc4:	48 8b 55 c8                                     	mov    -0x38(%rbp),%rdx
    1cc8:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
    1ccc:	48 89 10                                        	mov    %rdx,(%rax)
    1ccf:	48 83 45 d0 08                                  	addq   $0x8,-0x30(%rbp)
    1cd4:	48 8b 55 c0                                     	mov    -0x40(%rbp),%rdx
    1cd8:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
    1cdc:	48 89 10                                        	mov    %rdx,(%rax)
    1cdf:	48 83 45 d0 08                                  	addq   $0x8,-0x30(%rbp)
    1ce4:	48 8b 55 b8                                     	mov    -0x48(%rbp),%rdx
    1ce8:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
    1cec:	48 89 10                                        	mov    %rdx,(%rax)
    1cef:	48 83 45 d0 08                                  	addq   $0x8,-0x30(%rbp)
    1cf4:	48 8b 55 b0                                     	mov    -0x50(%rbp),%rdx
    1cf8:	48 8b 45 d0                                     	mov    -0x30(%rbp),%rax
    1cfc:	48 89 10                                        	mov    %rdx,(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:140 (discriminator 3)
    1cff:	e9 44 03 00 00                                  	jmp    2048 <void reorder45<sort_r_ctx>(sort_r_ctx*, char*, char*, char*, char*, char*)+0x44a>
/foo/bar/git/gcc-test/gcc/sort.cc:130
    1d04:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1d0b:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    1d0f:	48 83 f8 04                                     	cmp    $0x4,%rax
    1d13:	0f 94 c0                                        	sete   %al
    1d16:	0f b6 c0                                        	movzbl %al,%eax
    1d19:	48 85 c0                                        	test   %rax,%rax
    1d1c:	0f 84 a4 00 00 00                               	je     1dc6 <void reorder45<sort_r_ctx>(sort_r_ctx*, char*, char*, char*, char*, char*)+0x1c8>
/foo/bar/git/gcc-test/gcc/sort.cc:131
    1d22:	48 8b 85 60 ff ff ff                            	mov    -0xa0(%rbp),%rax
    1d29:	8b 00                                           	mov    (%rax),%eax
    1d2b:	89 45 ac                                        	mov    %eax,-0x54(%rbp)
    1d2e:	48 8b 85 58 ff ff ff                            	mov    -0xa8(%rbp),%rax
    1d35:	8b 00                                           	mov    (%rax),%eax
    1d37:	89 45 a8                                        	mov    %eax,-0x58(%rbp)
    1d3a:	48 8b 85 50 ff ff ff                            	mov    -0xb0(%rbp),%rax
    1d41:	8b 00                                           	mov    (%rax),%eax
    1d43:	89 45 a4                                        	mov    %eax,-0x5c(%rbp)
    1d46:	48 8b 85 48 ff ff ff                            	mov    -0xb8(%rbp),%rax
    1d4d:	8b 00                                           	mov    (%rax),%eax
    1d4f:	89 45 a0                                        	mov    %eax,-0x60(%rbp)
    1d52:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1d59:	48 8b 40 10                                     	mov    0x10(%rax),%rax
    1d5d:	48 89 45 d8                                     	mov    %rax,-0x28(%rbp)
    1d61:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1d68:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    1d6c:	48 83 f8 05                                     	cmp    $0x5,%rax
    1d70:	0f 94 c0                                        	sete   %al
    1d73:	0f b6 c0                                        	movzbl %al,%eax
    1d76:	48 85 c0                                        	test   %rax,%rax
    1d79:	74 13                                           	je     1d8e <void reorder45<sort_r_ctx>(sort_r_ctx*, char*, char*, char*, char*, char*)+0x190>
/foo/bar/git/gcc-test/gcc/sort.cc:131 (discriminator 1)
    1d7b:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1d7f:	48 8d 50 10                                     	lea    0x10(%rax),%rdx
    1d83:	48 8b 85 40 ff ff ff                            	mov    -0xc0(%rbp),%rax
    1d8a:	8b 00                                           	mov    (%rax),%eax
    1d8c:	89 02                                           	mov    %eax,(%rdx)
/foo/bar/git/gcc-test/gcc/sort.cc:131 (discriminator 3)
    1d8e:	8b 55 ac                                        	mov    -0x54(%rbp),%edx
    1d91:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1d95:	89 10                                           	mov    %edx,(%rax)
    1d97:	48 83 45 d8 04                                  	addq   $0x4,-0x28(%rbp)
    1d9c:	8b 55 a8                                        	mov    -0x58(%rbp),%edx
    1d9f:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1da3:	89 10                                           	mov    %edx,(%rax)
    1da5:	48 83 45 d8 04                                  	addq   $0x4,-0x28(%rbp)
    1daa:	8b 55 a4                                        	mov    -0x5c(%rbp),%edx
    1dad:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1db1:	89 10                                           	mov    %edx,(%rax)
    1db3:	48 83 45 d8 04                                  	addq   $0x4,-0x28(%rbp)
    1db8:	8b 55 a0                                        	mov    -0x60(%rbp),%edx
    1dbb:	48 8b 45 d8                                     	mov    -0x28(%rbp),%rax
    1dbf:	89 10                                           	mov    %edx,(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:140 (discriminator 3)
    1dc1:	e9 82 02 00 00                                  	jmp    2048 <void reorder45<sort_r_ctx>(sort_r_ctx*, char*, char*, char*, char*, char*)+0x44a>
/foo/bar/git/gcc-test/gcc/sort.cc:134
    1dc6:	48 c7 45 f8 00 00 00 00                         	movq   $0x0,-0x8(%rbp)
    1dce:	48 c7 45 f0 08 00 00 00                         	movq   $0x8,-0x10(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:135
    1dd6:	e9 14 01 00 00                                  	jmp    1eef <void reorder45<sort_r_ctx>(sort_r_ctx*, char*, char*, char*, char*, char*)+0x2f1>
/foo/bar/git/gcc-test/gcc/sort.cc:136
    1ddb:	48 8b 95 60 ff ff ff                            	mov    -0xa0(%rbp),%rdx
    1de2:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1de6:	48 01 d0                                        	add    %rdx,%rax
    1de9:	48 8b 00                                        	mov    (%rax),%rax
    1dec:	48 89 45 98                                     	mov    %rax,-0x68(%rbp)
    1df0:	48 8b 95 58 ff ff ff                            	mov    -0xa8(%rbp),%rdx
    1df7:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1dfb:	48 01 d0                                        	add    %rdx,%rax
    1dfe:	48 8b 00                                        	mov    (%rax),%rax
    1e01:	48 89 45 90                                     	mov    %rax,-0x70(%rbp)
    1e05:	48 8b 95 50 ff ff ff                            	mov    -0xb0(%rbp),%rdx
    1e0c:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1e10:	48 01 d0                                        	add    %rdx,%rax
    1e13:	48 8b 00                                        	mov    (%rax),%rax
    1e16:	48 89 45 88                                     	mov    %rax,-0x78(%rbp)
    1e1a:	48 8b 95 48 ff ff ff                            	mov    -0xb8(%rbp),%rdx
    1e21:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1e25:	48 01 d0                                        	add    %rdx,%rax
    1e28:	48 8b 00                                        	mov    (%rax),%rax
    1e2b:	48 89 45 80                                     	mov    %rax,-0x80(%rbp)
    1e2f:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1e36:	48 8b 50 10                                     	mov    0x10(%rax),%rdx
    1e3a:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1e3e:	48 01 d0                                        	add    %rdx,%rax
    1e41:	48 89 45 e0                                     	mov    %rax,-0x20(%rbp)
    1e45:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1e4c:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    1e50:	48 83 f8 05                                     	cmp    $0x5,%rax
    1e54:	0f 94 c0                                        	sete   %al
    1e57:	0f b6 c0                                        	movzbl %al,%eax
    1e5a:	48 85 c0                                        	test   %rax,%rax
    1e5d:	74 2f                                           	je     1e8e <void reorder45<sort_r_ctx>(sort_r_ctx*, char*, char*, char*, char*, char*)+0x290>
/foo/bar/git/gcc-test/gcc/sort.cc:136 (discriminator 1)
    1e5f:	48 8b 95 40 ff ff ff                            	mov    -0xc0(%rbp),%rdx
    1e66:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1e6a:	48 8d 0c 02                                     	lea    (%rdx,%rax,1),%rcx
    1e6e:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1e75:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    1e79:	48 8d 14 85 00 00 00 00                         	lea    0x0(,%rax,4),%rdx
    1e81:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    1e85:	48 01 c2                                        	add    %rax,%rdx
    1e88:	48 8b 01                                        	mov    (%rcx),%rax
    1e8b:	48 89 02                                        	mov    %rax,(%rdx)
/foo/bar/git/gcc-test/gcc/sort.cc:136 (discriminator 3)
    1e8e:	48 8b 55 98                                     	mov    -0x68(%rbp),%rdx
    1e92:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    1e96:	48 89 10                                        	mov    %rdx,(%rax)
    1e99:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1ea0:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    1ea4:	48 01 45 e0                                     	add    %rax,-0x20(%rbp)
    1ea8:	48 8b 55 90                                     	mov    -0x70(%rbp),%rdx
    1eac:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    1eb0:	48 89 10                                        	mov    %rdx,(%rax)
    1eb3:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1eba:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    1ebe:	48 01 45 e0                                     	add    %rax,-0x20(%rbp)
    1ec2:	48 8b 55 88                                     	mov    -0x78(%rbp),%rdx
    1ec6:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    1eca:	48 89 10                                        	mov    %rdx,(%rax)
    1ecd:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1ed4:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    1ed8:	48 01 45 e0                                     	add    %rax,-0x20(%rbp)
    1edc:	48 8b 55 80                                     	mov    -0x80(%rbp),%rdx
    1ee0:	48 8b 45 e0                                     	mov    -0x20(%rbp),%rax
    1ee4:	48 89 10                                        	mov    %rdx,(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:135 (discriminator 3)
    1ee7:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
    1eeb:	48 01 45 f8                                     	add    %rax,-0x8(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:135 (discriminator 1)
    1eef:	48 8b 55 f8                                     	mov    -0x8(%rbp),%rdx
    1ef3:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
    1ef7:	48 01 c2                                        	add    %rax,%rdx
    1efa:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1f01:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    1f05:	48 39 d0                                        	cmp    %rdx,%rax
    1f08:	0f 83 cd fe ff ff                               	jae    1ddb <void reorder45<sort_r_ctx>(sort_r_ctx*, char*, char*, char*, char*, char*)+0x1dd>
/foo/bar/git/gcc-test/gcc/sort.cc:137
    1f0e:	e9 20 01 00 00                                  	jmp    2033 <void reorder45<sort_r_ctx>(sort_r_ctx*, char*, char*, char*, char*, char*)+0x435>
/foo/bar/git/gcc-test/gcc/sort.cc:138
    1f13:	48 8b 95 60 ff ff ff                            	mov    -0xa0(%rbp),%rdx
    1f1a:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1f1e:	48 01 d0                                        	add    %rdx,%rax
    1f21:	0f b6 00                                        	movzbl (%rax),%eax
    1f24:	88 85 7f ff ff ff                               	mov    %al,-0x81(%rbp)
    1f2a:	48 8b 95 58 ff ff ff                            	mov    -0xa8(%rbp),%rdx
    1f31:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1f35:	48 01 d0                                        	add    %rdx,%rax
    1f38:	0f b6 00                                        	movzbl (%rax),%eax
    1f3b:	88 85 7e ff ff ff                               	mov    %al,-0x82(%rbp)
    1f41:	48 8b 95 50 ff ff ff                            	mov    -0xb0(%rbp),%rdx
    1f48:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1f4c:	48 01 d0                                        	add    %rdx,%rax
    1f4f:	0f b6 00                                        	movzbl (%rax),%eax
    1f52:	88 85 7d ff ff ff                               	mov    %al,-0x83(%rbp)
    1f58:	48 8b 95 48 ff ff ff                            	mov    -0xb8(%rbp),%rdx
    1f5f:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1f63:	48 01 d0                                        	add    %rdx,%rax
    1f66:	0f b6 00                                        	movzbl (%rax),%eax
    1f69:	88 85 7c ff ff ff                               	mov    %al,-0x84(%rbp)
    1f6f:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1f76:	48 8b 50 10                                     	mov    0x10(%rax),%rdx
    1f7a:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1f7e:	48 01 d0                                        	add    %rdx,%rax
    1f81:	48 89 45 e8                                     	mov    %rax,-0x18(%rbp)
    1f85:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1f8c:	48 8b 40 18                                     	mov    0x18(%rax),%rax
    1f90:	48 83 f8 05                                     	cmp    $0x5,%rax
    1f94:	0f 94 c0                                        	sete   %al
    1f97:	0f b6 c0                                        	movzbl %al,%eax
    1f9a:	48 85 c0                                        	test   %rax,%rax
    1f9d:	74 2e                                           	je     1fcd <void reorder45<sort_r_ctx>(sort_r_ctx*, char*, char*, char*, char*, char*)+0x3cf>
/foo/bar/git/gcc-test/gcc/sort.cc:138 (discriminator 1)
    1f9f:	48 8b 95 40 ff ff ff                            	mov    -0xc0(%rbp),%rdx
    1fa6:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
    1faa:	48 8d 0c 02                                     	lea    (%rdx,%rax,1),%rcx
    1fae:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1fb5:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    1fb9:	48 8d 14 85 00 00 00 00                         	lea    0x0(,%rax,4),%rdx
    1fc1:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    1fc5:	48 01 c2                                        	add    %rax,%rdx
    1fc8:	0f b6 01                                        	movzbl (%rcx),%eax
    1fcb:	88 02                                           	mov    %al,(%rdx)
/foo/bar/git/gcc-test/gcc/sort.cc:138 (discriminator 3)
    1fcd:	0f b6 95 7f ff ff ff                            	movzbl -0x81(%rbp),%edx
    1fd4:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    1fd8:	88 10                                           	mov    %dl,(%rax)
    1fda:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1fe1:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    1fe5:	48 01 45 e8                                     	add    %rax,-0x18(%rbp)
    1fe9:	0f b6 95 7e ff ff ff                            	movzbl -0x82(%rbp),%edx
    1ff0:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    1ff4:	88 10                                           	mov    %dl,(%rax)
    1ff6:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    1ffd:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    2001:	48 01 45 e8                                     	add    %rax,-0x18(%rbp)
    2005:	0f b6 95 7d ff ff ff                            	movzbl -0x83(%rbp),%edx
    200c:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    2010:	88 10                                           	mov    %dl,(%rax)
    2012:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    2019:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    201d:	48 01 45 e8                                     	add    %rax,-0x18(%rbp)
    2021:	0f b6 95 7c ff ff ff                            	movzbl -0x84(%rbp),%edx
    2028:	48 8b 45 e8                                     	mov    -0x18(%rbp),%rax
    202c:	88 10                                           	mov    %dl,(%rax)
/foo/bar/git/gcc-test/gcc/sort.cc:137 (discriminator 3)
    202e:	48 83 45 f8 01                                  	addq   $0x1,-0x8(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:137 (discriminator 1)
    2033:	48 8b 85 68 ff ff ff                            	mov    -0x98(%rbp),%rax
    203a:	48 8b 40 20                                     	mov    0x20(%rax),%rax
    203e:	48 39 45 f8                                     	cmp    %rax,-0x8(%rbp)
    2042:	0f 82 cb fe ff ff                               	jb     1f13 <void reorder45<sort_r_ctx>(sort_r_ctx*, char*, char*, char*, char*, char*)+0x315>
/foo/bar/git/gcc-test/gcc/sort.cc:140
    2048:	90                                              	nop
    2049:	c9                                              	leave
    204a:	c3                                              	ret

Disassembly of section .text._ZN10sort_r_ctx3cmpEPKvS1_:

0000000000000000 <sort_r_ctx::cmp(void const*, void const*)>:
sort_r_ctx::cmp(void const*, void const*):
/foo/bar/git/gcc-test/gcc/sort.cc:69
   0:	55                                              	push   %rbp
   1:	48 89 e5                                        	mov    %rsp,%rbp
   4:	48 83 ec 20                                     	sub    $0x20,%rsp
   8:	48 89 7d f8                                     	mov    %rdi,-0x8(%rbp)
   c:	48 89 75 f0                                     	mov    %rsi,-0x10(%rbp)
  10:	48 89 55 e8                                     	mov    %rdx,-0x18(%rbp)
/foo/bar/git/gcc-test/gcc/sort.cc:71
  14:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
  18:	4c 8b 40 08                                     	mov    0x8(%rax),%r8
  1c:	48 8b 45 f8                                     	mov    -0x8(%rbp),%rax
  20:	48 8b 10                                        	mov    (%rax),%rdx
  23:	48 8b 4d e8                                     	mov    -0x18(%rbp),%rcx
  27:	48 8b 45 f0                                     	mov    -0x10(%rbp),%rax
  2b:	48 89 ce                                        	mov    %rcx,%rsi
  2e:	48 89 c7                                        	mov    %rax,%rdi
  31:	41 ff d0                                        	call   *%r8
/foo/bar/git/gcc-test/gcc/sort.cc:72
  34:	c9                                              	leave
  35:	c3                                              	ret
