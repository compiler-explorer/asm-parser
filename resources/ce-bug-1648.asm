Disassembly of section .text:

0000000000401000 <main>:
  401000:	48 83 ec 08          	sub    rsp,0x8
  401004:	f2 0f 10 05 24 10 00 	movsd  xmm0,QWORD PTR [rip+0x1024]        # 402030 <.rodata>
  40100b:	00 
  40100c:	f2 0f 10 0d 1c 10 00 	movsd  xmm1,QWORD PTR [rip+0x101c]        # 402030 <.rodata+0x8>
  401013:	00 
  401014:	f2 0f 10 15 1c 10 00 	movsd  xmm2,QWORD PTR [rip+0x101c]        # 402038 <.rodata+0x10>
  40101b:	00 
  40101c:	f2 0f 10 1d 1c 10 00 	movsd  xmm3,QWORD PTR [rip+0x101c]        # 402040 <.rodata+0x18>
  401023:	00 
  401024:	e8 47 00 00 00       	call   401070 <__divdc3>
  401029:	48 83 c4 08          	add    rsp,0x8
  40102d:	c3                   	ret    

000000000040102e <__unused_func>:
  40102e:	48 83 ec 08          	sub    rsp,0x8
  401032:	48 83 c4 08          	add    rsp,0x8
  401036:	c3                   	ret    

0000000000401070 <__divdc3>:
  401070:	48 83 ec 08          	sub    rsp,0x8
  401074:	f2 0f 5e c2          	divsd  xmm0,xmm2
  401078:	f2 0f 5e cb          	divsd  xmm1,xmm3
  40107c:	48 83 c4 08          	add    rsp,0x8
  401080:	c3                   	ret    

0000000000401090 <__another_unused>:
  401090:	48 83 ec 08          	sub    rsp,0x8
  401094:	48 83 c4 08          	add    rsp,0x8
  401098:	c3                   	ret    