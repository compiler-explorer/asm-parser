
a.out:	file format elf64-x86-64

Disassembly of section .init:

0000000000001000 <_init>:
; _init():
    1000: f3 0f 1e fa                  	endbr64
    1004: 48 83 ec 08                  	sub	rsp, 0x8
    1008: 48 8b 05 c9 2f 00 00         	mov	rax, qword ptr [rip + 0x2fc9] # 0x3fd8 <__libc_start_main@GLIBC_2.34+0x3fd8>
    100f: 48 85 c0                     	test	rax, rax
    1012: 74 02                        	je	0x1016 <_init+0x16>
    1014: ff d0                        	call	rax
    1016: 48 83 c4 08                  	add	rsp, 0x8
    101a: c3                           	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020: ff 35 ca 2f 00 00            	push	qword ptr [rip + 0x2fca] # 0x3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026: ff 25 cc 2f 00 00            	jmp	qword ptr [rip + 0x2fcc] # 0x3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c: 0f 1f 40 00                  	nop	dword ptr [rax]

Disassembly of section .plt.got:

0000000000001030 <__cxa_finalize@plt>:
    1030: ff 25 8a 2f 00 00            	jmp	qword ptr [rip + 0x2f8a] # 0x3fc0 <__libc_start_main@GLIBC_2.34+0x3fc0>
    1036: 66 90                        	nop

Disassembly of section .text:

0000000000001040 <_start>:
; _start():
    1040: f3 0f 1e fa                  	endbr64
    1044: 31 ed                        	xor	ebp, ebp
    1046: 49 89 d1                     	mov	r9, rdx
    1049: 5e                           	pop	rsi
    104a: 48 89 e2                     	mov	rdx, rsp
    104d: 48 83 e4 f0                  	and	rsp, -0x10
    1051: 50                           	push	rax
    1052: 54                           	push	rsp
    1053: 45 31 c0                     	xor	r8d, r8d
    1056: 31 c9                        	xor	ecx, ecx
    1058: 48 8d 3d e1 00 00 00         	lea	rdi, [rip + 0xe1]       # 0x1140 <main>
    105f: ff 15 63 2f 00 00            	call	qword ptr [rip + 0x2f63] # 0x3fc8 <__libc_start_main@GLIBC_2.34+0x3fc8>
    1065: f4                           	hlt
    1066: 66 2e 0f 1f 84 00 00 00 00 00	nop	word ptr cs:[rax + rax]

0000000000001070 <deregister_tm_clones>:
; deregister_tm_clones():
    1070: 48 8d 3d 99 2f 00 00         	lea	rdi, [rip + 0x2f99]     # 0x4010 <completed.0>
    1077: 48 8d 05 92 2f 00 00         	lea	rax, [rip + 0x2f92]     # 0x4010 <completed.0>
    107e: 48 39 f8                     	cmp	rax, rdi
    1081: 74 15                        	je	0x1098 <deregister_tm_clones+0x28>
    1083: 48 8b 05 46 2f 00 00         	mov	rax, qword ptr [rip + 0x2f46] # 0x3fd0 <__libc_start_main@GLIBC_2.34+0x3fd0>
    108a: 48 85 c0                     	test	rax, rax
    108d: 74 09                        	je	0x1098 <deregister_tm_clones+0x28>
    108f: ff e0                        	jmp	rax
    1091: 0f 1f 80 00 00 00 00         	nop	dword ptr [rax]
    1098: c3                           	ret
    1099: 0f 1f 80 00 00 00 00         	nop	dword ptr [rax]

00000000000010a0 <register_tm_clones>:
; register_tm_clones():
    10a0: 48 8d 3d 69 2f 00 00         	lea	rdi, [rip + 0x2f69]     # 0x4010 <completed.0>
    10a7: 48 8d 35 62 2f 00 00         	lea	rsi, [rip + 0x2f62]     # 0x4010 <completed.0>
    10ae: 48 29 fe                     	sub	rsi, rdi
    10b1: 48 89 f0                     	mov	rax, rsi
    10b4: 48 c1 ee 3f                  	shr	rsi, 0x3f
    10b8: 48 c1 f8 03                  	sar	rax, 0x3
    10bc: 48 01 c6                     	add	rsi, rax
    10bf: 48 d1 fe                     	sar	rsi
    10c2: 74 14                        	je	0x10d8 <register_tm_clones+0x38>
    10c4: 48 8b 05 15 2f 00 00         	mov	rax, qword ptr [rip + 0x2f15] # 0x3fe0 <__libc_start_main@GLIBC_2.34+0x3fe0>
    10cb: 48 85 c0                     	test	rax, rax
    10ce: 74 08                        	je	0x10d8 <register_tm_clones+0x38>
    10d0: ff e0                        	jmp	rax
    10d2: 66 0f 1f 44 00 00            	nop	word ptr [rax + rax]
    10d8: c3                           	ret
    10d9: 0f 1f 80 00 00 00 00         	nop	dword ptr [rax]

00000000000010e0 <__do_global_dtors_aux>:
; __do_global_dtors_aux():
    10e0: f3 0f 1e fa                  	endbr64
    10e4: 80 3d 25 2f 00 00 00         	cmp	byte ptr [rip + 0x2f25], 0x0 # 0x4010 <completed.0>
    10eb: 75 2b                        	jne	0x1118 <__do_global_dtors_aux+0x38>
    10ed: 55                           	push	rbp
    10ee: 48 83 3d ca 2e 00 00 00      	cmp	qword ptr [rip + 0x2eca], 0x0 # 0x3fc0 <__libc_start_main@GLIBC_2.34+0x3fc0>
    10f6: 48 89 e5                     	mov	rbp, rsp
    10f9: 74 0c                        	je	0x1107 <__do_global_dtors_aux+0x27>
    10fb: 48 8b 3d 06 2f 00 00         	mov	rdi, qword ptr [rip + 0x2f06] # 0x4008 <__dso_handle>
    1102: e8 29 ff ff ff               	call	0x1030 <__cxa_finalize@plt>
    1107: e8 64 ff ff ff               	call	0x1070 <deregister_tm_clones>
    110c: c6 05 fd 2e 00 00 01         	mov	byte ptr [rip + 0x2efd], 0x1 # 0x4010 <completed.0>
    1113: 5d                           	pop	rbp
    1114: c3                           	ret
    1115: 0f 1f 00                     	nop	dword ptr [rax]
    1118: c3                           	ret
    1119: 0f 1f 80 00 00 00 00         	nop	dword ptr [rax]

0000000000001120 <frame_dummy>:
; frame_dummy():
    1120: f3 0f 1e fa                  	endbr64
    1124: e9 77 ff ff ff               	jmp	0x10a0 <register_tm_clones>
    1129: 0f 1f 80 00 00 00 00         	nop	dword ptr [rax]

0000000000001130 <_Z6squarei>:
; _Z6squarei():
; /opt/compiler-explorer/asm-parser-source/resources/example.cpp:1
    1130: 55                           	push	rbp
    1131: 48 89 e5                     	mov	rbp, rsp
    1134: 89 7d fc                     	mov	dword ptr [rbp - 0x4], edi
; /opt/compiler-explorer/asm-parser-source/resources/example.cpp:2
    1137: 8b 45 fc                     	mov	eax, dword ptr [rbp - 0x4]
    113a: 0f af 45 fc                  	imul	eax, dword ptr [rbp - 0x4]
    113e: 5d                           	pop	rbp
    113f: c3                           	ret

0000000000001140 <main>:
; main():
; /opt/compiler-explorer/asm-parser-source/resources/example.cpp:5
    1140: 55                           	push	rbp
    1141: 48 89 e5                     	mov	rbp, rsp
; /opt/compiler-explorer/asm-parser-source/resources/example.cpp:6
    1144: 31 c0                        	xor	eax, eax
    1146: 5d                           	pop	rbp
    1147: c3                           	ret

Disassembly of section .fini:

0000000000001148 <_fini>:
; _fini():
    1148: f3 0f 1e fa                  	endbr64
    114c: 48 83 ec 08                  	sub	rsp, 0x8
    1150: 48 83 c4 08                  	add	rsp, 0x8
    1154: c3                           	ret
