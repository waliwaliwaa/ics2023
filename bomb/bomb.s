
bomb：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 ca 3e 00 00    	push   0x3eca(%rip)        # 4ef0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 cb 3e 00 00 	bnd jmp *0x3ecb(%rip)        # 4ef8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	push   $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	push   $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	push   $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <_init+0x20>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	push   $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	push   $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	push   $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	push   $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	push   $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	push   $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	push   $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <_init+0x20>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	push   $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <_init+0x20>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	push   $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	push   $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	push   $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11cf:	90                   	nop
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	68 1a 00 00 00       	push   $0x1a
    11d9:	f2 e9 41 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11df:	90                   	nop

Disassembly of section .plt.got:

00000000000011e0 <__cxa_finalize@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 0d 3e 00 00 	bnd jmp *0x3e0d(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000011f0 <getenv@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 05 3d 00 00 	bnd jmp *0x3d05(%rip)        # 4f00 <getenv@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <__errno_location@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 fd 3c 00 00 	bnd jmp *0x3cfd(%rip)        # 4f08 <__errno_location@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <strcpy@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 f5 3c 00 00 	bnd jmp *0x3cf5(%rip)        # 4f10 <strcpy@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <puts@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 ed 3c 00 00 	bnd jmp *0x3ced(%rip)        # 4f18 <puts@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <write@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 e5 3c 00 00 	bnd jmp *0x3ce5(%rip)        # 4f20 <write@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <strlen@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 dd 3c 00 00 	bnd jmp *0x3cdd(%rip)        # 4f28 <strlen@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <__stack_chk_fail@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 d5 3c 00 00 	bnd jmp *0x3cd5(%rip)        # 4f30 <__stack_chk_fail@GLIBC_2.4>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <alarm@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 cd 3c 00 00 	bnd jmp *0x3ccd(%rip)        # 4f38 <alarm@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <close@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 c5 3c 00 00 	bnd jmp *0x3cc5(%rip)        # 4f40 <close@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <read@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 bd 3c 00 00 	bnd jmp *0x3cbd(%rip)        # 4f48 <read@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <fgets@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 b5 3c 00 00 	bnd jmp *0x3cb5(%rip)        # 4f50 <fgets@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <strcmp@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 ad 3c 00 00 	bnd jmp *0x3cad(%rip)        # 4f58 <strcmp@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <signal@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 a5 3c 00 00 	bnd jmp *0x3ca5(%rip)        # 4f60 <signal@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <gethostbyname@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 9d 3c 00 00 	bnd jmp *0x3c9d(%rip)        # 4f68 <gethostbyname@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <__memmove_chk@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 95 3c 00 00 	bnd jmp *0x3c95(%rip)        # 4f70 <__memmove_chk@GLIBC_2.3.4>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <strtol@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 8d 3c 00 00 	bnd jmp *0x3c8d(%rip)        # 4f78 <strtol@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <fflush@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 85 3c 00 00 	bnd jmp *0x3c85(%rip)        # 4f80 <fflush@GLIBC_2.2.5>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <__isoc99_sscanf@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 7d 3c 00 00 	bnd jmp *0x3c7d(%rip)        # 4f88 <__isoc99_sscanf@GLIBC_2.7>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <__printf_chk@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 75 3c 00 00 	bnd jmp *0x3c75(%rip)        # 4f90 <__printf_chk@GLIBC_2.3.4>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <fopen@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 6d 3c 00 00 	bnd jmp *0x3c6d(%rip)        # 4f98 <fopen@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <exit@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 65 3c 00 00 	bnd jmp *0x3c65(%rip)        # 4fa0 <exit@GLIBC_2.2.5>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <connect@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 5d 3c 00 00 	bnd jmp *0x3c5d(%rip)        # 4fa8 <connect@GLIBC_2.2.5>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__fprintf_chk@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 55 3c 00 00 	bnd jmp *0x3c55(%rip)        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <sleep@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 4d 3c 00 00 	bnd jmp *0x3c4d(%rip)        # 4fb8 <sleep@GLIBC_2.2.5>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <__ctype_b_loc@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 45 3c 00 00 	bnd jmp *0x3c45(%rip)        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001380 <__sprintf_chk@plt>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	f2 ff 25 3d 3c 00 00 	bnd jmp *0x3c3d(%rip)        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001390 <socket@plt>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	f2 ff 25 35 3c 00 00 	bnd jmp *0x3c35(%rip)        # 4fd0 <socket@GLIBC_2.2.5>
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000013a0 <_start>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	31 ed                	xor    %ebp,%ebp
    13a6:	49 89 d1             	mov    %rdx,%r9
    13a9:	5e                   	pop    %rsi
    13aa:	48 89 e2             	mov    %rsp,%rdx
    13ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    13b1:	50                   	push   %rax
    13b2:	54                   	push   %rsp
    13b3:	45 31 c0             	xor    %r8d,%r8d
    13b6:	31 c9                	xor    %ecx,%ecx
    13b8:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1489 <main>
    13bf:	ff 15 13 3c 00 00    	call   *0x3c13(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    13c5:	f4                   	hlt    
    13c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    13cd:	00 00 00 

00000000000013d0 <deregister_tm_clones>:
    13d0:	48 8d 3d 89 42 00 00 	lea    0x4289(%rip),%rdi        # 5660 <stdout@GLIBC_2.2.5>
    13d7:	48 8d 05 82 42 00 00 	lea    0x4282(%rip),%rax        # 5660 <stdout@GLIBC_2.2.5>
    13de:	48 39 f8             	cmp    %rdi,%rax
    13e1:	74 15                	je     13f8 <deregister_tm_clones+0x28>
    13e3:	48 8b 05 f6 3b 00 00 	mov    0x3bf6(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    13ea:	48 85 c0             	test   %rax,%rax
    13ed:	74 09                	je     13f8 <deregister_tm_clones+0x28>
    13ef:	ff e0                	jmp    *%rax
    13f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13f8:	c3                   	ret    
    13f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001400 <register_tm_clones>:
    1400:	48 8d 3d 59 42 00 00 	lea    0x4259(%rip),%rdi        # 5660 <stdout@GLIBC_2.2.5>
    1407:	48 8d 35 52 42 00 00 	lea    0x4252(%rip),%rsi        # 5660 <stdout@GLIBC_2.2.5>
    140e:	48 29 fe             	sub    %rdi,%rsi
    1411:	48 89 f0             	mov    %rsi,%rax
    1414:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1418:	48 c1 f8 03          	sar    $0x3,%rax
    141c:	48 01 c6             	add    %rax,%rsi
    141f:	48 d1 fe             	sar    %rsi
    1422:	74 14                	je     1438 <register_tm_clones+0x38>
    1424:	48 8b 05 c5 3b 00 00 	mov    0x3bc5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    142b:	48 85 c0             	test   %rax,%rax
    142e:	74 08                	je     1438 <register_tm_clones+0x38>
    1430:	ff e0                	jmp    *%rax
    1432:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1438:	c3                   	ret    
    1439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001440 <__do_global_dtors_aux>:
    1440:	f3 0f 1e fa          	endbr64 
    1444:	80 3d 3d 42 00 00 00 	cmpb   $0x0,0x423d(%rip)        # 5688 <completed.0>
    144b:	75 2b                	jne    1478 <__do_global_dtors_aux+0x38>
    144d:	55                   	push   %rbp
    144e:	48 83 3d a2 3b 00 00 	cmpq   $0x0,0x3ba2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1455:	00 
    1456:	48 89 e5             	mov    %rsp,%rbp
    1459:	74 0c                	je     1467 <__do_global_dtors_aux+0x27>
    145b:	48 8b 3d a6 3b 00 00 	mov    0x3ba6(%rip),%rdi        # 5008 <__dso_handle>
    1462:	e8 79 fd ff ff       	call   11e0 <__cxa_finalize@plt>
    1467:	e8 64 ff ff ff       	call   13d0 <deregister_tm_clones>
    146c:	c6 05 15 42 00 00 01 	movb   $0x1,0x4215(%rip)        # 5688 <completed.0>
    1473:	5d                   	pop    %rbp
    1474:	c3                   	ret    
    1475:	0f 1f 00             	nopl   (%rax)
    1478:	c3                   	ret    
    1479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001480 <frame_dummy>:
    1480:	f3 0f 1e fa          	endbr64 
    1484:	e9 77 ff ff ff       	jmp    1400 <register_tm_clones>

0000000000001489 <main>:
    1489:	f3 0f 1e fa          	endbr64 
    148d:	53                   	push   %rbx
    148e:	83 ff 01             	cmp    $0x1,%edi
    1491:	0f 84 bc 00 00 00    	je     1553 <main+0xca>
    1497:	48 89 f3             	mov    %rsi,%rbx
    149a:	83 ff 02             	cmp    $0x2,%edi
    149d:	0f 85 e5 00 00 00    	jne    1588 <main+0xff>
    14a3:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    14a7:	48 8d 35 56 1b 00 00 	lea    0x1b56(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    14ae:	e8 6d fe ff ff       	call   1320 <fopen@plt>
    14b3:	48 89 05 d6 41 00 00 	mov    %rax,0x41d6(%rip)        # 5690 <infile>
    14ba:	48 85 c0             	test   %rax,%rax
    14bd:	0f 84 a3 00 00 00    	je     1566 <main+0xdd>
    14c3:	e8 51 07 00 00       	call   1c19 <initialize_bomb>
    14c8:	48 8d 3d 71 1b 00 00 	lea    0x1b71(%rip),%rdi        # 3040 <_IO_stdin_used+0x40>
    14cf:	e8 4c fd ff ff       	call   1220 <puts@plt>
    14d4:	48 8d 3d a5 1b 00 00 	lea    0x1ba5(%rip),%rdi        # 3080 <_IO_stdin_used+0x80>
    14db:	e8 40 fd ff ff       	call   1220 <puts@plt>
    14e0:	e8 85 08 00 00       	call   1d6a <read_line>
    14e5:	48 89 c7             	mov    %rax,%rdi
    14e8:	e8 be 00 00 00       	call   15ab <phase_1>
    14ed:	e8 cc 09 00 00       	call   1ebe <phase_defused>
    14f2:	e8 73 08 00 00       	call   1d6a <read_line>
    14f7:	48 89 c7             	mov    %rax,%rdi
    14fa:	e8 d0 00 00 00       	call   15cf <phase_2>
    14ff:	e8 ba 09 00 00       	call   1ebe <phase_defused>
    1504:	e8 61 08 00 00       	call   1d6a <read_line>
    1509:	48 89 c7             	mov    %rax,%rdi
    150c:	e8 30 01 00 00       	call   1641 <phase_3>
    1511:	e8 a8 09 00 00       	call   1ebe <phase_defused>
    1516:	e8 4f 08 00 00       	call   1d6a <read_line>
    151b:	48 89 c7             	mov    %rax,%rdi
    151e:	e8 d5 02 00 00       	call   17f8 <phase_4>
    1523:	e8 96 09 00 00       	call   1ebe <phase_defused>
    1528:	e8 3d 08 00 00       	call   1d6a <read_line>
    152d:	48 89 c7             	mov    %rax,%rdi
    1530:	e8 3c 03 00 00       	call   1871 <phase_5>
    1535:	e8 84 09 00 00       	call   1ebe <phase_defused>
    153a:	e8 2b 08 00 00       	call   1d6a <read_line>
    153f:	48 89 c7             	mov    %rax,%rdi
    1542:	e8 b8 03 00 00       	call   18ff <phase_6>
    1547:	e8 72 09 00 00       	call   1ebe <phase_defused>
    154c:	b8 00 00 00 00       	mov    $0x0,%eax
    1551:	5b                   	pop    %rbx
    1552:	c3                   	ret    
    1553:	48 8b 05 16 41 00 00 	mov    0x4116(%rip),%rax        # 5670 <stdin@GLIBC_2.2.5>
    155a:	48 89 05 2f 41 00 00 	mov    %rax,0x412f(%rip)        # 5690 <infile>
    1561:	e9 5d ff ff ff       	jmp    14c3 <main+0x3a>
    1566:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    156a:	48 8b 13             	mov    (%rbx),%rdx
    156d:	48 8d 35 92 1a 00 00 	lea    0x1a92(%rip),%rsi        # 3006 <_IO_stdin_used+0x6>
    1574:	bf 01 00 00 00       	mov    $0x1,%edi
    1579:	e8 92 fd ff ff       	call   1310 <__printf_chk@plt>
    157e:	bf 08 00 00 00       	mov    $0x8,%edi
    1583:	e8 a8 fd ff ff       	call   1330 <exit@plt>
    1588:	48 8b 16             	mov    (%rsi),%rdx
    158b:	48 8d 35 91 1a 00 00 	lea    0x1a91(%rip),%rsi        # 3023 <_IO_stdin_used+0x23>
    1592:	bf 01 00 00 00       	mov    $0x1,%edi
    1597:	b8 00 00 00 00       	mov    $0x0,%eax
    159c:	e8 6f fd ff ff       	call   1310 <__printf_chk@plt>
    15a1:	bf 08 00 00 00       	mov    $0x8,%edi
    15a6:	e8 85 fd ff ff       	call   1330 <exit@plt>

00000000000015ab <phase_1>:
    15ab:	f3 0f 1e fa          	endbr64 
    15af:	48 83 ec 08          	sub    $0x8,%rsp
    15b3:	48 8d 35 f2 1a 00 00 	lea    0x1af2(%rip),%rsi        # 30ac <_IO_stdin_used+0xac>
    15ba:	e8 fa 05 00 00       	call   1bb9 <strings_not_equal>
    15bf:	85 c0                	test   %eax,%eax
    15c1:	75 05                	jne    15c8 <phase_1+0x1d>
    15c3:	48 83 c4 08          	add    $0x8,%rsp
    15c7:	c3                   	ret    
    15c8:	e8 00 07 00 00       	call   1ccd <explode_bomb>
    15cd:	eb f4                	jmp    15c3 <phase_1+0x18>

00000000000015cf <phase_2>:
    15cf:	f3 0f 1e fa          	endbr64 
    15d3:	55                   	push   %rbp
    15d4:	53                   	push   %rbx
    15d5:	48 83 ec 28          	sub    $0x28,%rsp
    15d9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    15e0:	00 00 
    15e2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    15e7:	31 c0                	xor    %eax,%eax
    15e9:	48 89 e6             	mov    %rsp,%rsi
    15ec:	e8 34 07 00 00       	call   1d25 <read_six_numbers>
    15f1:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    15f5:	78 0a                	js     1601 <phase_2+0x32>
    15f7:	48 89 e5             	mov    %rsp,%rbp
    15fa:	bb 01 00 00 00       	mov    $0x1,%ebx
    15ff:	eb 13                	jmp    1614 <phase_2+0x45>
    1601:	e8 c7 06 00 00       	call   1ccd <explode_bomb>
    1606:	eb ef                	jmp    15f7 <phase_2+0x28>
    1608:	83 c3 01             	add    $0x1,%ebx
    160b:	48 83 c5 04          	add    $0x4,%rbp
    160f:	83 fb 06             	cmp    $0x6,%ebx
    1612:	74 11                	je     1625 <phase_2+0x56>
    1614:	89 d8                	mov    %ebx,%eax
    1616:	03 45 00             	add    0x0(%rbp),%eax
    1619:	39 45 04             	cmp    %eax,0x4(%rbp)
    161c:	74 ea                	je     1608 <phase_2+0x39>
    161e:	e8 aa 06 00 00       	call   1ccd <explode_bomb>
    1623:	eb e3                	jmp    1608 <phase_2+0x39>
    1625:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    162a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1631:	00 00 
    1633:	75 07                	jne    163c <phase_2+0x6d>
    1635:	48 83 c4 28          	add    $0x28,%rsp
    1639:	5b                   	pop    %rbx
    163a:	5d                   	pop    %rbp
    163b:	c3                   	ret    
    163c:	e8 0f fc ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000001641 <phase_3>:
    1641:	f3 0f 1e fa          	endbr64 
    1645:	48 83 ec 28          	sub    $0x28,%rsp
    1649:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1650:	00 00 
    1652:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1657:	31 c0                	xor    %eax,%eax
    1659:	48 8d 4c 24 0f       	lea    0xf(%rsp),%rcx
    165e:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    1663:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
    1668:	48 8d 35 5b 1a 00 00 	lea    0x1a5b(%rip),%rsi        # 30ca <_IO_stdin_used+0xca>
    166f:	e8 8c fc ff ff       	call   1300 <__isoc99_sscanf@plt>
    1674:	83 f8 02             	cmp    $0x2,%eax
    1677:	7e 20                	jle    1699 <phase_3+0x58>
    1679:	83 7c 24 10 07       	cmpl   $0x7,0x10(%rsp)
    167e:	0f 87 0d 01 00 00    	ja     1791 <phase_3+0x150>
    1684:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1688:	48 8d 15 51 1a 00 00 	lea    0x1a51(%rip),%rdx        # 30e0 <_IO_stdin_used+0xe0>
    168f:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1693:	48 01 d0             	add    %rdx,%rax
    1696:	3e ff e0             	notrack jmp *%rax
    1699:	e8 2f 06 00 00       	call   1ccd <explode_bomb>
    169e:	eb d9                	jmp    1679 <phase_3+0x38>
    16a0:	b8 6b 00 00 00       	mov    $0x6b,%eax
    16a5:	81 7c 24 14 56 01 00 	cmpl   $0x156,0x14(%rsp)
    16ac:	00 
    16ad:	0f 84 e8 00 00 00    	je     179b <phase_3+0x15a>
    16b3:	e8 15 06 00 00       	call   1ccd <explode_bomb>
    16b8:	b8 6b 00 00 00       	mov    $0x6b,%eax
    16bd:	e9 d9 00 00 00       	jmp    179b <phase_3+0x15a>
    16c2:	b8 75 00 00 00       	mov    $0x75,%eax
    16c7:	81 7c 24 14 7d 02 00 	cmpl   $0x27d,0x14(%rsp)
    16ce:	00 
    16cf:	0f 84 c6 00 00 00    	je     179b <phase_3+0x15a>
    16d5:	e8 f3 05 00 00       	call   1ccd <explode_bomb>
    16da:	b8 75 00 00 00       	mov    $0x75,%eax
    16df:	e9 b7 00 00 00       	jmp    179b <phase_3+0x15a>
    16e4:	b8 64 00 00 00       	mov    $0x64,%eax
    16e9:	81 7c 24 14 1a 01 00 	cmpl   $0x11a,0x14(%rsp)
    16f0:	00 
    16f1:	0f 84 a4 00 00 00    	je     179b <phase_3+0x15a>
    16f7:	e8 d1 05 00 00       	call   1ccd <explode_bomb>
    16fc:	b8 64 00 00 00       	mov    $0x64,%eax
    1701:	e9 95 00 00 00       	jmp    179b <phase_3+0x15a>
    1706:	b8 72 00 00 00       	mov    $0x72,%eax
    170b:	81 7c 24 14 ae 01 00 	cmpl   $0x1ae,0x14(%rsp)
    1712:	00 
    1713:	0f 84 82 00 00 00    	je     179b <phase_3+0x15a>
    1719:	e8 af 05 00 00       	call   1ccd <explode_bomb>
    171e:	b8 72 00 00 00       	mov    $0x72,%eax
    1723:	eb 76                	jmp    179b <phase_3+0x15a>
    1725:	b8 79 00 00 00       	mov    $0x79,%eax
    172a:	81 7c 24 14 5d 01 00 	cmpl   $0x15d,0x14(%rsp)
    1731:	00 
    1732:	74 67                	je     179b <phase_3+0x15a>
    1734:	e8 94 05 00 00       	call   1ccd <explode_bomb>
    1739:	b8 79 00 00 00       	mov    $0x79,%eax
    173e:	eb 5b                	jmp    179b <phase_3+0x15a>
    1740:	b8 77 00 00 00       	mov    $0x77,%eax
    1745:	81 7c 24 14 19 02 00 	cmpl   $0x219,0x14(%rsp)
    174c:	00 
    174d:	74 4c                	je     179b <phase_3+0x15a>
    174f:	e8 79 05 00 00       	call   1ccd <explode_bomb>
    1754:	b8 77 00 00 00       	mov    $0x77,%eax
    1759:	eb 40                	jmp    179b <phase_3+0x15a>
    175b:	b8 78 00 00 00       	mov    $0x78,%eax
    1760:	81 7c 24 14 99 00 00 	cmpl   $0x99,0x14(%rsp)
    1767:	00 
    1768:	74 31                	je     179b <phase_3+0x15a>
    176a:	e8 5e 05 00 00       	call   1ccd <explode_bomb>
    176f:	b8 78 00 00 00       	mov    $0x78,%eax
    1774:	eb 25                	jmp    179b <phase_3+0x15a>
    1776:	b8 6d 00 00 00       	mov    $0x6d,%eax
    177b:	81 7c 24 14 c7 02 00 	cmpl   $0x2c7,0x14(%rsp)
    1782:	00 
    1783:	74 16                	je     179b <phase_3+0x15a>
    1785:	e8 43 05 00 00       	call   1ccd <explode_bomb>
    178a:	b8 6d 00 00 00       	mov    $0x6d,%eax
    178f:	eb 0a                	jmp    179b <phase_3+0x15a>
    1791:	e8 37 05 00 00       	call   1ccd <explode_bomb>
    1796:	b8 6d 00 00 00       	mov    $0x6d,%eax
    179b:	38 44 24 0f          	cmp    %al,0xf(%rsp)
    179f:	75 15                	jne    17b6 <phase_3+0x175>
    17a1:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    17a6:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    17ad:	00 00 
    17af:	75 0c                	jne    17bd <phase_3+0x17c>
    17b1:	48 83 c4 28          	add    $0x28,%rsp
    17b5:	c3                   	ret    
    17b6:	e8 12 05 00 00       	call   1ccd <explode_bomb>
    17bb:	eb e4                	jmp    17a1 <phase_3+0x160>
    17bd:	e8 8e fa ff ff       	call   1250 <__stack_chk_fail@plt>

00000000000017c2 <func4>:
    17c2:	f3 0f 1e fa          	endbr64 
    17c6:	53                   	push   %rbx
    17c7:	89 d0                	mov    %edx,%eax
    17c9:	29 f0                	sub    %esi,%eax
    17cb:	89 c3                	mov    %eax,%ebx
    17cd:	c1 eb 1f             	shr    $0x1f,%ebx
    17d0:	01 c3                	add    %eax,%ebx
    17d2:	d1 fb                	sar    %ebx
    17d4:	01 f3                	add    %esi,%ebx
    17d6:	39 fb                	cmp    %edi,%ebx
    17d8:	7f 06                	jg     17e0 <func4+0x1e>
    17da:	7c 10                	jl     17ec <func4+0x2a>
    17dc:	89 d8                	mov    %ebx,%eax
    17de:	5b                   	pop    %rbx
    17df:	c3                   	ret    
    17e0:	8d 53 ff             	lea    -0x1(%rbx),%edx
    17e3:	e8 da ff ff ff       	call   17c2 <func4>
    17e8:	01 c3                	add    %eax,%ebx
    17ea:	eb f0                	jmp    17dc <func4+0x1a>
    17ec:	8d 73 01             	lea    0x1(%rbx),%esi
    17ef:	e8 ce ff ff ff       	call   17c2 <func4>
    17f4:	01 c3                	add    %eax,%ebx
    17f6:	eb e4                	jmp    17dc <func4+0x1a>

00000000000017f8 <phase_4>:
    17f8:	f3 0f 1e fa          	endbr64 
    17fc:	48 83 ec 18          	sub    $0x18,%rsp
    1800:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1807:	00 00 
    1809:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    180e:	31 c0                	xor    %eax,%eax
    1810:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    1815:	48 89 e2             	mov    %rsp,%rdx
    1818:	48 8d 35 e9 1a 00 00 	lea    0x1ae9(%rip),%rsi        # 3308 <array.0+0x208>
    181f:	e8 dc fa ff ff       	call   1300 <__isoc99_sscanf@plt>
    1824:	83 f8 02             	cmp    $0x2,%eax
    1827:	75 06                	jne    182f <phase_4+0x37>
    1829:	83 3c 24 0e          	cmpl   $0xe,(%rsp)
    182d:	76 05                	jbe    1834 <phase_4+0x3c>
    182f:	e8 99 04 00 00       	call   1ccd <explode_bomb>
    1834:	ba 0e 00 00 00       	mov    $0xe,%edx
    1839:	be 00 00 00 00       	mov    $0x0,%esi
    183e:	8b 3c 24             	mov    (%rsp),%edi
    1841:	e8 7c ff ff ff       	call   17c2 <func4>
    1846:	83 f8 15             	cmp    $0x15,%eax
    1849:	75 07                	jne    1852 <phase_4+0x5a>
    184b:	83 7c 24 04 15       	cmpl   $0x15,0x4(%rsp)
    1850:	74 05                	je     1857 <phase_4+0x5f>
    1852:	e8 76 04 00 00       	call   1ccd <explode_bomb>
    1857:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    185c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1863:	00 00 
    1865:	75 05                	jne    186c <phase_4+0x74>
    1867:	48 83 c4 18          	add    $0x18,%rsp
    186b:	c3                   	ret    
    186c:	e8 df f9 ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000001871 <phase_5>:
    1871:	f3 0f 1e fa          	endbr64 
    1875:	53                   	push   %rbx
    1876:	48 83 ec 10          	sub    $0x10,%rsp
    187a:	48 89 fb             	mov    %rdi,%rbx
    187d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1884:	00 00 
    1886:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    188b:	31 c0                	xor    %eax,%eax
    188d:	e8 06 03 00 00       	call   1b98 <string_length>
    1892:	83 f8 06             	cmp    $0x6,%eax
    1895:	75 55                	jne    18ec <phase_5+0x7b>
    1897:	b8 00 00 00 00       	mov    $0x0,%eax
    189c:	48 8d 0d 5d 18 00 00 	lea    0x185d(%rip),%rcx        # 3100 <array.0>
    18a3:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    18a7:	83 e2 0f             	and    $0xf,%edx
    18aa:	0f b6 14 11          	movzbl (%rcx,%rdx,1),%edx
    18ae:	88 54 04 01          	mov    %dl,0x1(%rsp,%rax,1)
    18b2:	48 83 c0 01          	add    $0x1,%rax
    18b6:	48 83 f8 06          	cmp    $0x6,%rax
    18ba:	75 e7                	jne    18a3 <phase_5+0x32>
    18bc:	c6 44 24 07 00       	movb   $0x0,0x7(%rsp)
    18c1:	48 8d 7c 24 01       	lea    0x1(%rsp),%rdi
    18c6:	48 8d 35 06 18 00 00 	lea    0x1806(%rip),%rsi        # 30d3 <_IO_stdin_used+0xd3>
    18cd:	e8 e7 02 00 00       	call   1bb9 <strings_not_equal>
    18d2:	85 c0                	test   %eax,%eax
    18d4:	75 1d                	jne    18f3 <phase_5+0x82>
    18d6:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    18db:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    18e2:	00 00 
    18e4:	75 14                	jne    18fa <phase_5+0x89>
    18e6:	48 83 c4 10          	add    $0x10,%rsp
    18ea:	5b                   	pop    %rbx
    18eb:	c3                   	ret    
    18ec:	e8 dc 03 00 00       	call   1ccd <explode_bomb>
    18f1:	eb a4                	jmp    1897 <phase_5+0x26>
    18f3:	e8 d5 03 00 00       	call   1ccd <explode_bomb>
    18f8:	eb dc                	jmp    18d6 <phase_5+0x65>
    18fa:	e8 51 f9 ff ff       	call   1250 <__stack_chk_fail@plt>

00000000000018ff <phase_6>:
    18ff:	f3 0f 1e fa          	endbr64 
    1903:	41 57                	push   %r15
    1905:	41 56                	push   %r14
    1907:	41 55                	push   %r13
    1909:	41 54                	push   %r12
    190b:	55                   	push   %rbp
    190c:	53                   	push   %rbx
    190d:	48 83 ec 78          	sub    $0x78,%rsp
    1911:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1918:	00 00 
    191a:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    191f:	31 c0                	xor    %eax,%eax
    1921:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
    1926:	4c 89 74 24 08       	mov    %r14,0x8(%rsp)
    192b:	4c 89 f6             	mov    %r14,%rsi
    192e:	e8 f2 03 00 00       	call   1d25 <read_six_numbers>
    1933:	4d 89 f4             	mov    %r14,%r12
    1936:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    193c:	4d 89 f5             	mov    %r14,%r13
    193f:	e9 c6 00 00 00       	jmp    1a0a <phase_6+0x10b>
    1944:	e8 84 03 00 00       	call   1ccd <explode_bomb>
    1949:	e9 ce 00 00 00       	jmp    1a1c <phase_6+0x11d>
    194e:	48 83 c3 01          	add    $0x1,%rbx
    1952:	83 fb 05             	cmp    $0x5,%ebx
    1955:	0f 8f a7 00 00 00    	jg     1a02 <phase_6+0x103>
    195b:	41 8b 44 9d 00       	mov    0x0(%r13,%rbx,4),%eax
    1960:	39 45 00             	cmp    %eax,0x0(%rbp)
    1963:	75 e9                	jne    194e <phase_6+0x4f>
    1965:	e8 63 03 00 00       	call   1ccd <explode_bomb>
    196a:	eb e2                	jmp    194e <phase_6+0x4f>
    196c:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    1971:	48 83 c2 18          	add    $0x18,%rdx
    1975:	b9 07 00 00 00       	mov    $0x7,%ecx
    197a:	89 c8                	mov    %ecx,%eax
    197c:	41 2b 04 24          	sub    (%r12),%eax
    1980:	41 89 04 24          	mov    %eax,(%r12)
    1984:	49 83 c4 04          	add    $0x4,%r12
    1988:	4c 39 e2             	cmp    %r12,%rdx
    198b:	75 ed                	jne    197a <phase_6+0x7b>
    198d:	be 00 00 00 00       	mov    $0x0,%esi
    1992:	8b 4c b4 10          	mov    0x10(%rsp,%rsi,4),%ecx
    1996:	b8 01 00 00 00       	mov    $0x1,%eax
    199b:	48 8d 15 6e 38 00 00 	lea    0x386e(%rip),%rdx        # 5210 <node1>
    19a2:	83 f9 01             	cmp    $0x1,%ecx
    19a5:	7e 0b                	jle    19b2 <phase_6+0xb3>
    19a7:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    19ab:	83 c0 01             	add    $0x1,%eax
    19ae:	39 c8                	cmp    %ecx,%eax
    19b0:	75 f5                	jne    19a7 <phase_6+0xa8>
    19b2:	48 89 54 f4 30       	mov    %rdx,0x30(%rsp,%rsi,8)
    19b7:	48 83 c6 01          	add    $0x1,%rsi
    19bb:	48 83 fe 06          	cmp    $0x6,%rsi
    19bf:	75 d1                	jne    1992 <phase_6+0x93>
    19c1:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
    19c6:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    19cb:	48 89 43 08          	mov    %rax,0x8(%rbx)
    19cf:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    19d4:	48 89 50 08          	mov    %rdx,0x8(%rax)
    19d8:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    19dd:	48 89 42 08          	mov    %rax,0x8(%rdx)
    19e1:	48 8b 54 24 50       	mov    0x50(%rsp),%rdx
    19e6:	48 89 50 08          	mov    %rdx,0x8(%rax)
    19ea:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    19ef:	48 89 42 08          	mov    %rax,0x8(%rdx)
    19f3:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    19fa:	00 
    19fb:	bd 05 00 00 00       	mov    $0x5,%ebp
    1a00:	eb 35                	jmp    1a37 <phase_6+0x138>
    1a02:	49 83 c7 01          	add    $0x1,%r15
    1a06:	49 83 c6 04          	add    $0x4,%r14
    1a0a:	4c 89 f5             	mov    %r14,%rbp
    1a0d:	41 8b 06             	mov    (%r14),%eax
    1a10:	83 e8 01             	sub    $0x1,%eax
    1a13:	83 f8 05             	cmp    $0x5,%eax
    1a16:	0f 87 28 ff ff ff    	ja     1944 <phase_6+0x45>
    1a1c:	41 83 ff 05          	cmp    $0x5,%r15d
    1a20:	0f 8f 46 ff ff ff    	jg     196c <phase_6+0x6d>
    1a26:	4c 89 fb             	mov    %r15,%rbx
    1a29:	e9 2d ff ff ff       	jmp    195b <phase_6+0x5c>
    1a2e:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1a32:	83 ed 01             	sub    $0x1,%ebp
    1a35:	74 11                	je     1a48 <phase_6+0x149>
    1a37:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1a3b:	8b 00                	mov    (%rax),%eax
    1a3d:	39 03                	cmp    %eax,(%rbx)
    1a3f:	7d ed                	jge    1a2e <phase_6+0x12f>
    1a41:	e8 87 02 00 00       	call   1ccd <explode_bomb>
    1a46:	eb e6                	jmp    1a2e <phase_6+0x12f>
    1a48:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1a4d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1a54:	00 00 
    1a56:	75 0f                	jne    1a67 <phase_6+0x168>
    1a58:	48 83 c4 78          	add    $0x78,%rsp
    1a5c:	5b                   	pop    %rbx
    1a5d:	5d                   	pop    %rbp
    1a5e:	41 5c                	pop    %r12
    1a60:	41 5d                	pop    %r13
    1a62:	41 5e                	pop    %r14
    1a64:	41 5f                	pop    %r15
    1a66:	c3                   	ret    
    1a67:	e8 e4 f7 ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000001a6c <fun7>:
    1a6c:	f3 0f 1e fa          	endbr64 
    1a70:	48 85 ff             	test   %rdi,%rdi
    1a73:	74 32                	je     1aa7 <fun7+0x3b>
    1a75:	48 83 ec 08          	sub    $0x8,%rsp
    1a79:	8b 17                	mov    (%rdi),%edx
    1a7b:	39 f2                	cmp    %esi,%edx
    1a7d:	7f 0c                	jg     1a8b <fun7+0x1f>
    1a7f:	b8 00 00 00 00       	mov    $0x0,%eax
    1a84:	75 12                	jne    1a98 <fun7+0x2c>
    1a86:	48 83 c4 08          	add    $0x8,%rsp
    1a8a:	c3                   	ret    
    1a8b:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1a8f:	e8 d8 ff ff ff       	call   1a6c <fun7>
    1a94:	01 c0                	add    %eax,%eax
    1a96:	eb ee                	jmp    1a86 <fun7+0x1a>
    1a98:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1a9c:	e8 cb ff ff ff       	call   1a6c <fun7>
    1aa1:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1aa5:	eb df                	jmp    1a86 <fun7+0x1a>
    1aa7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1aac:	c3                   	ret    

0000000000001aad <secret_phase>:
    1aad:	f3 0f 1e fa          	endbr64 
    1ab1:	53                   	push   %rbx
    1ab2:	e8 b3 02 00 00       	call   1d6a <read_line>
    1ab7:	48 89 c7             	mov    %rax,%rdi
    1aba:	ba 0a 00 00 00       	mov    $0xa,%edx
    1abf:	be 00 00 00 00       	mov    $0x0,%esi
    1ac4:	e8 17 f8 ff ff       	call   12e0 <strtol@plt>
    1ac9:	89 c3                	mov    %eax,%ebx
    1acb:	83 e8 01             	sub    $0x1,%eax
    1ace:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1ad3:	77 26                	ja     1afb <secret_phase+0x4e>
    1ad5:	89 de                	mov    %ebx,%esi
    1ad7:	48 8d 3d 52 36 00 00 	lea    0x3652(%rip),%rdi        # 5130 <n1>
    1ade:	e8 89 ff ff ff       	call   1a6c <fun7>
    1ae3:	83 f8 03             	cmp    $0x3,%eax
    1ae6:	75 1a                	jne    1b02 <secret_phase+0x55>
    1ae8:	48 8d 3d 21 16 00 00 	lea    0x1621(%rip),%rdi        # 3110 <array.0+0x10>
    1aef:	e8 2c f7 ff ff       	call   1220 <puts@plt>
    1af4:	e8 c5 03 00 00       	call   1ebe <phase_defused>
    1af9:	5b                   	pop    %rbx
    1afa:	c3                   	ret    
    1afb:	e8 cd 01 00 00       	call   1ccd <explode_bomb>
    1b00:	eb d3                	jmp    1ad5 <secret_phase+0x28>
    1b02:	e8 c6 01 00 00       	call   1ccd <explode_bomb>
    1b07:	eb df                	jmp    1ae8 <secret_phase+0x3b>

0000000000001b09 <sig_handler>:
    1b09:	f3 0f 1e fa          	endbr64 
    1b0d:	50                   	push   %rax
    1b0e:	58                   	pop    %rax
    1b0f:	48 83 ec 08          	sub    $0x8,%rsp
    1b13:	48 8d 3d 1e 16 00 00 	lea    0x161e(%rip),%rdi        # 3138 <array.0+0x38>
    1b1a:	e8 01 f7 ff ff       	call   1220 <puts@plt>
    1b1f:	bf 03 00 00 00       	mov    $0x3,%edi
    1b24:	e8 37 f8 ff ff       	call   1360 <sleep@plt>
    1b29:	48 8d 35 a2 17 00 00 	lea    0x17a2(%rip),%rsi        # 32d2 <array.0+0x1d2>
    1b30:	bf 01 00 00 00       	mov    $0x1,%edi
    1b35:	b8 00 00 00 00       	mov    $0x0,%eax
    1b3a:	e8 d1 f7 ff ff       	call   1310 <__printf_chk@plt>
    1b3f:	48 8b 3d 1a 3b 00 00 	mov    0x3b1a(%rip),%rdi        # 5660 <stdout@GLIBC_2.2.5>
    1b46:	e8 a5 f7 ff ff       	call   12f0 <fflush@plt>
    1b4b:	bf 01 00 00 00       	mov    $0x1,%edi
    1b50:	e8 0b f8 ff ff       	call   1360 <sleep@plt>
    1b55:	48 8d 3d 7e 17 00 00 	lea    0x177e(%rip),%rdi        # 32da <array.0+0x1da>
    1b5c:	e8 bf f6 ff ff       	call   1220 <puts@plt>
    1b61:	bf 10 00 00 00       	mov    $0x10,%edi
    1b66:	e8 c5 f7 ff ff       	call   1330 <exit@plt>

0000000000001b6b <invalid_phase>:
    1b6b:	f3 0f 1e fa          	endbr64 
    1b6f:	50                   	push   %rax
    1b70:	58                   	pop    %rax
    1b71:	48 83 ec 08          	sub    $0x8,%rsp
    1b75:	48 89 fa             	mov    %rdi,%rdx
    1b78:	48 8d 35 63 17 00 00 	lea    0x1763(%rip),%rsi        # 32e2 <array.0+0x1e2>
    1b7f:	bf 01 00 00 00       	mov    $0x1,%edi
    1b84:	b8 00 00 00 00       	mov    $0x0,%eax
    1b89:	e8 82 f7 ff ff       	call   1310 <__printf_chk@plt>
    1b8e:	bf 08 00 00 00       	mov    $0x8,%edi
    1b93:	e8 98 f7 ff ff       	call   1330 <exit@plt>

0000000000001b98 <string_length>:
    1b98:	f3 0f 1e fa          	endbr64 
    1b9c:	80 3f 00             	cmpb   $0x0,(%rdi)
    1b9f:	74 12                	je     1bb3 <string_length+0x1b>
    1ba1:	b8 00 00 00 00       	mov    $0x0,%eax
    1ba6:	48 83 c7 01          	add    $0x1,%rdi
    1baa:	83 c0 01             	add    $0x1,%eax
    1bad:	80 3f 00             	cmpb   $0x0,(%rdi)
    1bb0:	75 f4                	jne    1ba6 <string_length+0xe>
    1bb2:	c3                   	ret    
    1bb3:	b8 00 00 00 00       	mov    $0x0,%eax
    1bb8:	c3                   	ret    

0000000000001bb9 <strings_not_equal>:
    1bb9:	f3 0f 1e fa          	endbr64 
    1bbd:	41 54                	push   %r12
    1bbf:	55                   	push   %rbp
    1bc0:	53                   	push   %rbx
    1bc1:	48 89 fb             	mov    %rdi,%rbx
    1bc4:	48 89 f5             	mov    %rsi,%rbp
    1bc7:	e8 cc ff ff ff       	call   1b98 <string_length>
    1bcc:	41 89 c4             	mov    %eax,%r12d
    1bcf:	48 89 ef             	mov    %rbp,%rdi
    1bd2:	e8 c1 ff ff ff       	call   1b98 <string_length>
    1bd7:	89 c2                	mov    %eax,%edx
    1bd9:	b8 01 00 00 00       	mov    $0x1,%eax
    1bde:	41 39 d4             	cmp    %edx,%r12d
    1be1:	75 31                	jne    1c14 <strings_not_equal+0x5b>
    1be3:	0f b6 13             	movzbl (%rbx),%edx
    1be6:	84 d2                	test   %dl,%dl
    1be8:	74 1e                	je     1c08 <strings_not_equal+0x4f>
    1bea:	b8 00 00 00 00       	mov    $0x0,%eax
    1bef:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1bf3:	75 1a                	jne    1c0f <strings_not_equal+0x56>
    1bf5:	48 83 c0 01          	add    $0x1,%rax
    1bf9:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1bfd:	84 d2                	test   %dl,%dl
    1bff:	75 ee                	jne    1bef <strings_not_equal+0x36>
    1c01:	b8 00 00 00 00       	mov    $0x0,%eax
    1c06:	eb 0c                	jmp    1c14 <strings_not_equal+0x5b>
    1c08:	b8 00 00 00 00       	mov    $0x0,%eax
    1c0d:	eb 05                	jmp    1c14 <strings_not_equal+0x5b>
    1c0f:	b8 01 00 00 00       	mov    $0x1,%eax
    1c14:	5b                   	pop    %rbx
    1c15:	5d                   	pop    %rbp
    1c16:	41 5c                	pop    %r12
    1c18:	c3                   	ret    

0000000000001c19 <initialize_bomb>:
    1c19:	f3 0f 1e fa          	endbr64 
    1c1d:	48 83 ec 08          	sub    $0x8,%rsp
    1c21:	48 8d 35 e1 fe ff ff 	lea    -0x11f(%rip),%rsi        # 1b09 <sig_handler>
    1c28:	bf 02 00 00 00       	mov    $0x2,%edi
    1c2d:	e8 7e f6 ff ff       	call   12b0 <signal@plt>
    1c32:	48 83 c4 08          	add    $0x8,%rsp
    1c36:	c3                   	ret    

0000000000001c37 <initialize_bomb_solve>:
    1c37:	f3 0f 1e fa          	endbr64 
    1c3b:	c3                   	ret    

0000000000001c3c <blank_line>:
    1c3c:	f3 0f 1e fa          	endbr64 
    1c40:	55                   	push   %rbp
    1c41:	53                   	push   %rbx
    1c42:	48 83 ec 08          	sub    $0x8,%rsp
    1c46:	48 89 fd             	mov    %rdi,%rbp
    1c49:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1c4d:	84 db                	test   %bl,%bl
    1c4f:	74 1e                	je     1c6f <blank_line+0x33>
    1c51:	e8 1a f7 ff ff       	call   1370 <__ctype_b_loc@plt>
    1c56:	48 83 c5 01          	add    $0x1,%rbp
    1c5a:	48 0f be db          	movsbq %bl,%rbx
    1c5e:	48 8b 00             	mov    (%rax),%rax
    1c61:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1c66:	75 e1                	jne    1c49 <blank_line+0xd>
    1c68:	b8 00 00 00 00       	mov    $0x0,%eax
    1c6d:	eb 05                	jmp    1c74 <blank_line+0x38>
    1c6f:	b8 01 00 00 00       	mov    $0x1,%eax
    1c74:	48 83 c4 08          	add    $0x8,%rsp
    1c78:	5b                   	pop    %rbx
    1c79:	5d                   	pop    %rbp
    1c7a:	c3                   	ret    

0000000000001c7b <skip>:
    1c7b:	f3 0f 1e fa          	endbr64 
    1c7f:	55                   	push   %rbp
    1c80:	53                   	push   %rbx
    1c81:	48 83 ec 08          	sub    $0x8,%rsp
    1c85:	48 8d 2d 74 3a 00 00 	lea    0x3a74(%rip),%rbp        # 5700 <input_strings>
    1c8c:	48 63 05 61 3a 00 00 	movslq 0x3a61(%rip),%rax        # 56f4 <num_input_strings>
    1c93:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1c97:	48 c1 e7 04          	shl    $0x4,%rdi
    1c9b:	48 01 ef             	add    %rbp,%rdi
    1c9e:	48 8b 15 eb 39 00 00 	mov    0x39eb(%rip),%rdx        # 5690 <infile>
    1ca5:	be 50 00 00 00       	mov    $0x50,%esi
    1caa:	e8 e1 f5 ff ff       	call   1290 <fgets@plt>
    1caf:	48 89 c3             	mov    %rax,%rbx
    1cb2:	48 85 c0             	test   %rax,%rax
    1cb5:	74 0c                	je     1cc3 <skip+0x48>
    1cb7:	48 89 c7             	mov    %rax,%rdi
    1cba:	e8 7d ff ff ff       	call   1c3c <blank_line>
    1cbf:	85 c0                	test   %eax,%eax
    1cc1:	75 c9                	jne    1c8c <skip+0x11>
    1cc3:	48 89 d8             	mov    %rbx,%rax
    1cc6:	48 83 c4 08          	add    $0x8,%rsp
    1cca:	5b                   	pop    %rbx
    1ccb:	5d                   	pop    %rbp
    1ccc:	c3                   	ret    

0000000000001ccd <explode_bomb>:
    1ccd:	f3 0f 1e fa          	endbr64 
    1cd1:	50                   	push   %rax
    1cd2:	58                   	pop    %rax
    1cd3:	48 83 ec 08          	sub    $0x8,%rsp
    1cd7:	48 8d 3d 15 16 00 00 	lea    0x1615(%rip),%rdi        # 32f3 <array.0+0x1f3>
    1cde:	e8 3d f5 ff ff       	call   1220 <puts@plt>
    1ce3:	8b 15 0b 3a 00 00    	mov    0x3a0b(%rip),%edx        # 56f4 <num_input_strings>
    1ce9:	48 8d 35 80 14 00 00 	lea    0x1480(%rip),%rsi        # 3170 <array.0+0x70>
    1cf0:	bf 01 00 00 00       	mov    $0x1,%edi
    1cf5:	b8 00 00 00 00       	mov    $0x0,%eax
    1cfa:	e8 11 f6 ff ff       	call   1310 <__printf_chk@plt>
    1cff:	8b 15 eb 39 00 00    	mov    0x39eb(%rip),%edx        # 56f0 <score>
    1d05:	48 8d 35 8c 14 00 00 	lea    0x148c(%rip),%rsi        # 3198 <array.0+0x98>
    1d0c:	bf 01 00 00 00       	mov    $0x1,%edi
    1d11:	b8 00 00 00 00       	mov    $0x0,%eax
    1d16:	e8 f5 f5 ff ff       	call   1310 <__printf_chk@plt>
    1d1b:	bf 08 00 00 00       	mov    $0x8,%edi
    1d20:	e8 0b f6 ff ff       	call   1330 <exit@plt>

0000000000001d25 <read_six_numbers>:
    1d25:	f3 0f 1e fa          	endbr64 
    1d29:	48 83 ec 08          	sub    $0x8,%rsp
    1d2d:	48 89 f2             	mov    %rsi,%rdx
    1d30:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1d34:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1d38:	50                   	push   %rax
    1d39:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1d3d:	50                   	push   %rax
    1d3e:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1d42:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1d46:	48 8d 35 af 15 00 00 	lea    0x15af(%rip),%rsi        # 32fc <array.0+0x1fc>
    1d4d:	b8 00 00 00 00       	mov    $0x0,%eax
    1d52:	e8 a9 f5 ff ff       	call   1300 <__isoc99_sscanf@plt>
    1d57:	48 83 c4 10          	add    $0x10,%rsp
    1d5b:	83 f8 05             	cmp    $0x5,%eax
    1d5e:	7e 05                	jle    1d65 <read_six_numbers+0x40>
    1d60:	48 83 c4 08          	add    $0x8,%rsp
    1d64:	c3                   	ret    
    1d65:	e8 63 ff ff ff       	call   1ccd <explode_bomb>

0000000000001d6a <read_line>:
    1d6a:	f3 0f 1e fa          	endbr64 
    1d6e:	55                   	push   %rbp
    1d6f:	53                   	push   %rbx
    1d70:	48 83 ec 08          	sub    $0x8,%rsp
    1d74:	b8 00 00 00 00       	mov    $0x0,%eax
    1d79:	e8 fd fe ff ff       	call   1c7b <skip>
    1d7e:	48 85 c0             	test   %rax,%rax
    1d81:	74 5d                	je     1de0 <read_line+0x76>
    1d83:	8b 2d 6b 39 00 00    	mov    0x396b(%rip),%ebp        # 56f4 <num_input_strings>
    1d89:	48 63 c5             	movslq %ebp,%rax
    1d8c:	48 8d 1c 80          	lea    (%rax,%rax,4),%rbx
    1d90:	48 c1 e3 04          	shl    $0x4,%rbx
    1d94:	48 8d 05 65 39 00 00 	lea    0x3965(%rip),%rax        # 5700 <input_strings>
    1d9b:	48 01 c3             	add    %rax,%rbx
    1d9e:	48 89 df             	mov    %rbx,%rdi
    1da1:	e8 9a f4 ff ff       	call   1240 <strlen@plt>
    1da6:	83 f8 4e             	cmp    $0x4e,%eax
    1da9:	0f 8f c5 00 00 00    	jg     1e74 <read_line+0x10a>
    1daf:	83 e8 01             	sub    $0x1,%eax
    1db2:	48 98                	cltq   
    1db4:	48 63 d5             	movslq %ebp,%rdx
    1db7:	48 8d 0c 92          	lea    (%rdx,%rdx,4),%rcx
    1dbb:	48 c1 e1 04          	shl    $0x4,%rcx
    1dbf:	48 8d 15 3a 39 00 00 	lea    0x393a(%rip),%rdx        # 5700 <input_strings>
    1dc6:	48 01 ca             	add    %rcx,%rdx
    1dc9:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1dcd:	83 c5 01             	add    $0x1,%ebp
    1dd0:	89 2d 1e 39 00 00    	mov    %ebp,0x391e(%rip)        # 56f4 <num_input_strings>
    1dd6:	48 89 d8             	mov    %rbx,%rax
    1dd9:	48 83 c4 08          	add    $0x8,%rsp
    1ddd:	5b                   	pop    %rbx
    1dde:	5d                   	pop    %rbp
    1ddf:	c3                   	ret    
    1de0:	48 8b 05 89 38 00 00 	mov    0x3889(%rip),%rax        # 5670 <stdin@GLIBC_2.2.5>
    1de7:	48 39 05 a2 38 00 00 	cmp    %rax,0x38a2(%rip)        # 5690 <infile>
    1dee:	74 1b                	je     1e0b <read_line+0xa1>
    1df0:	48 8d 3d 35 15 00 00 	lea    0x1535(%rip),%rdi        # 332c <array.0+0x22c>
    1df7:	e8 f4 f3 ff ff       	call   11f0 <getenv@plt>
    1dfc:	48 85 c0             	test   %rax,%rax
    1dff:	74 3c                	je     1e3d <read_line+0xd3>
    1e01:	bf 00 00 00 00       	mov    $0x0,%edi
    1e06:	e8 25 f5 ff ff       	call   1330 <exit@plt>
    1e0b:	48 8d 3d fc 14 00 00 	lea    0x14fc(%rip),%rdi        # 330e <array.0+0x20e>
    1e12:	e8 09 f4 ff ff       	call   1220 <puts@plt>
    1e17:	8b 15 d3 38 00 00    	mov    0x38d3(%rip),%edx        # 56f0 <score>
    1e1d:	48 8d 35 a4 13 00 00 	lea    0x13a4(%rip),%rsi        # 31c8 <array.0+0xc8>
    1e24:	bf 01 00 00 00       	mov    $0x1,%edi
    1e29:	b8 00 00 00 00       	mov    $0x0,%eax
    1e2e:	e8 dd f4 ff ff       	call   1310 <__printf_chk@plt>
    1e33:	bf 08 00 00 00       	mov    $0x8,%edi
    1e38:	e8 f3 f4 ff ff       	call   1330 <exit@plt>
    1e3d:	48 8b 05 2c 38 00 00 	mov    0x382c(%rip),%rax        # 5670 <stdin@GLIBC_2.2.5>
    1e44:	48 89 05 45 38 00 00 	mov    %rax,0x3845(%rip)        # 5690 <infile>
    1e4b:	b8 00 00 00 00       	mov    $0x0,%eax
    1e50:	e8 26 fe ff ff       	call   1c7b <skip>
    1e55:	48 85 c0             	test   %rax,%rax
    1e58:	0f 85 25 ff ff ff    	jne    1d83 <read_line+0x19>
    1e5e:	48 8d 3d a9 14 00 00 	lea    0x14a9(%rip),%rdi        # 330e <array.0+0x20e>
    1e65:	e8 b6 f3 ff ff       	call   1220 <puts@plt>
    1e6a:	bf 00 00 00 00       	mov    $0x0,%edi
    1e6f:	e8 bc f4 ff ff       	call   1330 <exit@plt>
    1e74:	48 8d 3d bc 14 00 00 	lea    0x14bc(%rip),%rdi        # 3337 <array.0+0x237>
    1e7b:	e8 a0 f3 ff ff       	call   1220 <puts@plt>
    1e80:	8b 05 6e 38 00 00    	mov    0x386e(%rip),%eax        # 56f4 <num_input_strings>
    1e86:	8d 50 01             	lea    0x1(%rax),%edx
    1e89:	89 15 65 38 00 00    	mov    %edx,0x3865(%rip)        # 56f4 <num_input_strings>
    1e8f:	48 98                	cltq   
    1e91:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1e95:	48 8d 15 64 38 00 00 	lea    0x3864(%rip),%rdx        # 5700 <input_strings>
    1e9c:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1ea3:	75 6e 63 
    1ea6:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1ead:	2a 2a 00 
    1eb0:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1eb4:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1eb9:	e8 0f fe ff ff       	call   1ccd <explode_bomb>

0000000000001ebe <phase_defused>:
    1ebe:	f3 0f 1e fa          	endbr64 
    1ec2:	48 83 ec 78          	sub    $0x78,%rsp
    1ec6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1ecd:	00 00 
    1ecf:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1ed4:	31 c0                	xor    %eax,%eax
    1ed6:	8b 15 18 38 00 00    	mov    0x3818(%rip),%edx        # 56f4 <num_input_strings>
    1edc:	83 fa 03             	cmp    $0x3,%edx
    1edf:	7f 5b                	jg     1f3c <phase_defused+0x7e>
    1ee1:	83 05 08 38 00 00 1e 	addl   $0x1e,0x3808(%rip)        # 56f0 <score>
    1ee8:	48 8d 35 63 14 00 00 	lea    0x1463(%rip),%rsi        # 3352 <array.0+0x252>
    1eef:	bf 01 00 00 00       	mov    $0x1,%edi
    1ef4:	b8 00 00 00 00       	mov    $0x0,%eax
    1ef9:	e8 12 f4 ff ff       	call   1310 <__printf_chk@plt>
    1efe:	8b 15 ec 37 00 00    	mov    0x37ec(%rip),%edx        # 56f0 <score>
    1f04:	48 8d 35 bd 12 00 00 	lea    0x12bd(%rip),%rsi        # 31c8 <array.0+0xc8>
    1f0b:	bf 01 00 00 00       	mov    $0x1,%edi
    1f10:	b8 00 00 00 00       	mov    $0x0,%eax
    1f15:	e8 f6 f3 ff ff       	call   1310 <__printf_chk@plt>
    1f1a:	83 3d d3 37 00 00 06 	cmpl   $0x6,0x37d3(%rip)        # 56f4 <num_input_strings>
    1f21:	74 27                	je     1f4a <phase_defused+0x8c>
    1f23:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1f28:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1f2f:	00 00 
    1f31:	0f 85 9e 00 00 00    	jne    1fd5 <phase_defused+0x117>
    1f37:	48 83 c4 78          	add    $0x78,%rsp
    1f3b:	c3                   	ret    
    1f3c:	83 fa 04             	cmp    $0x4,%edx
    1f3f:	75 a7                	jne    1ee8 <phase_defused+0x2a>
    1f41:	83 05 a8 37 00 00 0a 	addl   $0xa,0x37a8(%rip)        # 56f0 <score>
    1f48:	eb 9e                	jmp    1ee8 <phase_defused+0x2a>
    1f4a:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1f4f:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1f54:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1f59:	48 8d 35 10 14 00 00 	lea    0x1410(%rip),%rsi        # 3370 <array.0+0x270>
    1f60:	48 8d 3d 89 38 00 00 	lea    0x3889(%rip),%rdi        # 57f0 <input_strings+0xf0>
    1f67:	b8 00 00 00 00       	mov    $0x0,%eax
    1f6c:	e8 8f f3 ff ff       	call   1300 <__isoc99_sscanf@plt>
    1f71:	83 f8 03             	cmp    $0x3,%eax
    1f74:	74 1a                	je     1f90 <phase_defused+0xd2>
    1f76:	48 8d 3d 2b 13 00 00 	lea    0x132b(%rip),%rdi        # 32a8 <array.0+0x1a8>
    1f7d:	e8 9e f2 ff ff       	call   1220 <puts@plt>
    1f82:	48 8d 3d f7 13 00 00 	lea    0x13f7(%rip),%rdi        # 3380 <array.0+0x280>
    1f89:	e8 92 f2 ff ff       	call   1220 <puts@plt>
    1f8e:	eb 93                	jmp    1f23 <phase_defused+0x65>
    1f90:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1f95:	48 8d 35 dd 13 00 00 	lea    0x13dd(%rip),%rsi        # 3379 <array.0+0x279>
    1f9c:	e8 18 fc ff ff       	call   1bb9 <strings_not_equal>
    1fa1:	85 c0                	test   %eax,%eax
    1fa3:	75 d1                	jne    1f76 <phase_defused+0xb8>
    1fa5:	48 8d 3d 44 12 00 00 	lea    0x1244(%rip),%rdi        # 31f0 <array.0+0xf0>
    1fac:	e8 6f f2 ff ff       	call   1220 <puts@plt>
    1fb1:	48 8d 3d 60 12 00 00 	lea    0x1260(%rip),%rdi        # 3218 <array.0+0x118>
    1fb8:	e8 63 f2 ff ff       	call   1220 <puts@plt>
    1fbd:	b8 00 00 00 00       	mov    $0x0,%eax
    1fc2:	e8 e6 fa ff ff       	call   1aad <secret_phase>
    1fc7:	48 8d 3d 82 12 00 00 	lea    0x1282(%rip),%rdi        # 3250 <array.0+0x150>
    1fce:	e8 4d f2 ff ff       	call   1220 <puts@plt>
    1fd3:	eb a1                	jmp    1f76 <phase_defused+0xb8>
    1fd5:	e8 76 f2 ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000001fda <sigalrm_handler>:
    1fda:	f3 0f 1e fa          	endbr64 
    1fde:	50                   	push   %rax
    1fdf:	58                   	pop    %rax
    1fe0:	48 83 ec 08          	sub    $0x8,%rsp
    1fe4:	b9 00 00 00 00       	mov    $0x0,%ecx
    1fe9:	48 8d 15 08 14 00 00 	lea    0x1408(%rip),%rdx        # 33f8 <array.0+0x2f8>
    1ff0:	be 01 00 00 00       	mov    $0x1,%esi
    1ff5:	48 8b 3d 84 36 00 00 	mov    0x3684(%rip),%rdi        # 5680 <stderr@GLIBC_2.2.5>
    1ffc:	b8 00 00 00 00       	mov    $0x0,%eax
    2001:	e8 4a f3 ff ff       	call   1350 <__fprintf_chk@plt>
    2006:	bf 01 00 00 00       	mov    $0x1,%edi
    200b:	e8 20 f3 ff ff       	call   1330 <exit@plt>

0000000000002010 <rio_readlineb>:
    2010:	41 56                	push   %r14
    2012:	41 55                	push   %r13
    2014:	41 54                	push   %r12
    2016:	55                   	push   %rbp
    2017:	53                   	push   %rbx
    2018:	49 89 f4             	mov    %rsi,%r12
    201b:	48 83 fa 01          	cmp    $0x1,%rdx
    201f:	0f 86 92 00 00 00    	jbe    20b7 <rio_readlineb+0xa7>
    2025:	48 89 fb             	mov    %rdi,%rbx
    2028:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    202d:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    2033:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    2037:	eb 56                	jmp    208f <rio_readlineb+0x7f>
    2039:	e8 c2 f1 ff ff       	call   1200 <__errno_location@plt>
    203e:	83 38 04             	cmpl   $0x4,(%rax)
    2041:	75 55                	jne    2098 <rio_readlineb+0x88>
    2043:	ba 00 20 00 00       	mov    $0x2000,%edx
    2048:	48 89 ee             	mov    %rbp,%rsi
    204b:	8b 3b                	mov    (%rbx),%edi
    204d:	e8 2e f2 ff ff       	call   1280 <read@plt>
    2052:	89 c2                	mov    %eax,%edx
    2054:	89 43 04             	mov    %eax,0x4(%rbx)
    2057:	85 c0                	test   %eax,%eax
    2059:	78 de                	js     2039 <rio_readlineb+0x29>
    205b:	85 c0                	test   %eax,%eax
    205d:	74 42                	je     20a1 <rio_readlineb+0x91>
    205f:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    2063:	48 8b 43 08          	mov    0x8(%rbx),%rax
    2067:	0f b6 08             	movzbl (%rax),%ecx
    206a:	48 83 c0 01          	add    $0x1,%rax
    206e:	48 89 43 08          	mov    %rax,0x8(%rbx)
    2072:	83 ea 01             	sub    $0x1,%edx
    2075:	89 53 04             	mov    %edx,0x4(%rbx)
    2078:	49 83 c4 01          	add    $0x1,%r12
    207c:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    2081:	80 f9 0a             	cmp    $0xa,%cl
    2084:	74 3c                	je     20c2 <rio_readlineb+0xb2>
    2086:	41 83 c5 01          	add    $0x1,%r13d
    208a:	4d 39 f4             	cmp    %r14,%r12
    208d:	74 30                	je     20bf <rio_readlineb+0xaf>
    208f:	8b 53 04             	mov    0x4(%rbx),%edx
    2092:	85 d2                	test   %edx,%edx
    2094:	7e ad                	jle    2043 <rio_readlineb+0x33>
    2096:	eb cb                	jmp    2063 <rio_readlineb+0x53>
    2098:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    209f:	eb 05                	jmp    20a6 <rio_readlineb+0x96>
    20a1:	b8 00 00 00 00       	mov    $0x0,%eax
    20a6:	85 c0                	test   %eax,%eax
    20a8:	75 29                	jne    20d3 <rio_readlineb+0xc3>
    20aa:	b8 00 00 00 00       	mov    $0x0,%eax
    20af:	41 83 fd 01          	cmp    $0x1,%r13d
    20b3:	75 0d                	jne    20c2 <rio_readlineb+0xb2>
    20b5:	eb 13                	jmp    20ca <rio_readlineb+0xba>
    20b7:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    20bd:	eb 03                	jmp    20c2 <rio_readlineb+0xb2>
    20bf:	4d 89 f4             	mov    %r14,%r12
    20c2:	41 c6 04 24 00       	movb   $0x0,(%r12)
    20c7:	49 63 c5             	movslq %r13d,%rax
    20ca:	5b                   	pop    %rbx
    20cb:	5d                   	pop    %rbp
    20cc:	41 5c                	pop    %r12
    20ce:	41 5d                	pop    %r13
    20d0:	41 5e                	pop    %r14
    20d2:	c3                   	ret    
    20d3:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    20da:	eb ee                	jmp    20ca <rio_readlineb+0xba>

00000000000020dc <submitr>:
    20dc:	f3 0f 1e fa          	endbr64 
    20e0:	41 57                	push   %r15
    20e2:	41 56                	push   %r14
    20e4:	41 55                	push   %r13
    20e6:	41 54                	push   %r12
    20e8:	55                   	push   %rbp
    20e9:	53                   	push   %rbx
    20ea:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    20f1:	ff 
    20f2:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    20f9:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    20fe:	4c 39 dc             	cmp    %r11,%rsp
    2101:	75 ef                	jne    20f2 <submitr+0x16>
    2103:	48 83 ec 78          	sub    $0x78,%rsp
    2107:	49 89 fd             	mov    %rdi,%r13
    210a:	89 f5                	mov    %esi,%ebp
    210c:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    2111:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    2116:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    211b:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    2120:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    2127:	00 
    2128:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    212f:	00 
    2130:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2137:	00 00 
    2139:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    2140:	00 
    2141:	31 c0                	xor    %eax,%eax
    2143:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    214a:	00 
    214b:	ba 00 00 00 00       	mov    $0x0,%edx
    2150:	be 01 00 00 00       	mov    $0x1,%esi
    2155:	bf 02 00 00 00       	mov    $0x2,%edi
    215a:	e8 31 f2 ff ff       	call   1390 <socket@plt>
    215f:	85 c0                	test   %eax,%eax
    2161:	0f 88 12 01 00 00    	js     2279 <submitr+0x19d>
    2167:	41 89 c4             	mov    %eax,%r12d
    216a:	4c 89 ef             	mov    %r13,%rdi
    216d:	e8 4e f1 ff ff       	call   12c0 <gethostbyname@plt>
    2172:	48 85 c0             	test   %rax,%rax
    2175:	0f 84 4e 01 00 00    	je     22c9 <submitr+0x1ed>
    217b:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    2180:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    2187:	00 00 
    2189:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    2190:	00 00 
    2192:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    2199:	48 63 50 14          	movslq 0x14(%rax),%rdx
    219d:	48 8b 40 18          	mov    0x18(%rax),%rax
    21a1:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    21a6:	b9 0c 00 00 00       	mov    $0xc,%ecx
    21ab:	48 8b 30             	mov    (%rax),%rsi
    21ae:	e8 1d f1 ff ff       	call   12d0 <__memmove_chk@plt>
    21b3:	66 c1 c5 08          	rol    $0x8,%bp
    21b7:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    21bc:	ba 10 00 00 00       	mov    $0x10,%edx
    21c1:	4c 89 ee             	mov    %r13,%rsi
    21c4:	44 89 e7             	mov    %r12d,%edi
    21c7:	e8 74 f1 ff ff       	call   1340 <connect@plt>
    21cc:	85 c0                	test   %eax,%eax
    21ce:	0f 88 60 01 00 00    	js     2334 <submitr+0x258>
    21d4:	48 89 df             	mov    %rbx,%rdi
    21d7:	e8 64 f0 ff ff       	call   1240 <strlen@plt>
    21dc:	48 89 c5             	mov    %rax,%rbp
    21df:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    21e4:	e8 57 f0 ff ff       	call   1240 <strlen@plt>
    21e9:	49 89 c6             	mov    %rax,%r14
    21ec:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    21f1:	e8 4a f0 ff ff       	call   1240 <strlen@plt>
    21f6:	49 89 c5             	mov    %rax,%r13
    21f9:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    21fe:	e8 3d f0 ff ff       	call   1240 <strlen@plt>
    2203:	48 89 c2             	mov    %rax,%rdx
    2206:	4b 8d 84 2e 80 00 00 	lea    0x80(%r14,%r13,1),%rax
    220d:	00 
    220e:	48 01 d0             	add    %rdx,%rax
    2211:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    2216:	48 01 d0             	add    %rdx,%rax
    2219:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    221f:	0f 87 6c 01 00 00    	ja     2391 <submitr+0x2b5>
    2225:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    222c:	00 
    222d:	b9 00 04 00 00       	mov    $0x400,%ecx
    2232:	b8 00 00 00 00       	mov    $0x0,%eax
    2237:	48 89 d7             	mov    %rdx,%rdi
    223a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    223d:	48 89 df             	mov    %rbx,%rdi
    2240:	e8 fb ef ff ff       	call   1240 <strlen@plt>
    2245:	85 c0                	test   %eax,%eax
    2247:	0f 84 07 05 00 00    	je     2754 <submitr+0x678>
    224d:	8d 40 ff             	lea    -0x1(%rax),%eax
    2250:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
    2255:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    225c:	00 
    225d:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    2264:	00 
    2265:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    226a:	49 be d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r14
    2271:	00 20 00 
    2274:	e9 a6 01 00 00       	jmp    241f <submitr+0x343>
    2279:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2280:	3a 20 43 
    2283:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    228a:	20 75 6e 
    228d:	49 89 07             	mov    %rax,(%r15)
    2290:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2294:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    229b:	74 6f 20 
    229e:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    22a5:	65 20 73 
    22a8:	49 89 47 10          	mov    %rax,0x10(%r15)
    22ac:	49 89 57 18          	mov    %rdx,0x18(%r15)
    22b0:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    22b7:	65 
    22b8:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    22bf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    22c4:	e9 03 03 00 00       	jmp    25cc <submitr+0x4f0>
    22c9:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    22d0:	3a 20 44 
    22d3:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    22da:	20 75 6e 
    22dd:	49 89 07             	mov    %rax,(%r15)
    22e0:	49 89 57 08          	mov    %rdx,0x8(%r15)
    22e4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    22eb:	74 6f 20 
    22ee:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    22f5:	76 65 20 
    22f8:	49 89 47 10          	mov    %rax,0x10(%r15)
    22fc:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2300:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2307:	72 20 61 
    230a:	49 89 47 20          	mov    %rax,0x20(%r15)
    230e:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    2315:	65 
    2316:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    231d:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    2322:	44 89 e7             	mov    %r12d,%edi
    2325:	e8 46 ef ff ff       	call   1270 <close@plt>
    232a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    232f:	e9 98 02 00 00       	jmp    25cc <submitr+0x4f0>
    2334:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    233b:	3a 20 55 
    233e:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    2345:	20 74 6f 
    2348:	49 89 07             	mov    %rax,(%r15)
    234b:	49 89 57 08          	mov    %rdx,0x8(%r15)
    234f:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    2356:	65 63 74 
    2359:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2360:	68 65 20 
    2363:	49 89 47 10          	mov    %rax,0x10(%r15)
    2367:	49 89 57 18          	mov    %rdx,0x18(%r15)
    236b:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    2372:	76 
    2373:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    237a:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    237f:	44 89 e7             	mov    %r12d,%edi
    2382:	e8 e9 ee ff ff       	call   1270 <close@plt>
    2387:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    238c:	e9 3b 02 00 00       	jmp    25cc <submitr+0x4f0>
    2391:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2398:	3a 20 52 
    239b:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    23a2:	20 73 74 
    23a5:	49 89 07             	mov    %rax,(%r15)
    23a8:	49 89 57 08          	mov    %rdx,0x8(%r15)
    23ac:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    23b3:	74 6f 6f 
    23b6:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    23bd:	65 2e 20 
    23c0:	49 89 47 10          	mov    %rax,0x10(%r15)
    23c4:	49 89 57 18          	mov    %rdx,0x18(%r15)
    23c8:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    23cf:	61 73 65 
    23d2:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    23d9:	49 54 52 
    23dc:	49 89 47 20          	mov    %rax,0x20(%r15)
    23e0:	49 89 57 28          	mov    %rdx,0x28(%r15)
    23e4:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    23eb:	55 46 00 
    23ee:	49 89 47 30          	mov    %rax,0x30(%r15)
    23f2:	44 89 e7             	mov    %r12d,%edi
    23f5:	e8 76 ee ff ff       	call   1270 <close@plt>
    23fa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    23ff:	e9 c8 01 00 00       	jmp    25cc <submitr+0x4f0>
    2404:	49 0f a3 c6          	bt     %rax,%r14
    2408:	73 21                	jae    242b <submitr+0x34f>
    240a:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    240e:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2412:	48 83 c3 01          	add    $0x1,%rbx
    2416:	4c 39 eb             	cmp    %r13,%rbx
    2419:	0f 84 35 03 00 00    	je     2754 <submitr+0x678>
    241f:	44 0f b6 03          	movzbl (%rbx),%r8d
    2423:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    2427:	3c 35                	cmp    $0x35,%al
    2429:	76 d9                	jbe    2404 <submitr+0x328>
    242b:	44 89 c0             	mov    %r8d,%eax
    242e:	83 e0 df             	and    $0xffffffdf,%eax
    2431:	83 e8 41             	sub    $0x41,%eax
    2434:	3c 19                	cmp    $0x19,%al
    2436:	76 d2                	jbe    240a <submitr+0x32e>
    2438:	41 80 f8 20          	cmp    $0x20,%r8b
    243c:	74 60                	je     249e <submitr+0x3c2>
    243e:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    2442:	3c 5f                	cmp    $0x5f,%al
    2444:	76 0a                	jbe    2450 <submitr+0x374>
    2446:	41 80 f8 09          	cmp    $0x9,%r8b
    244a:	0f 85 77 02 00 00    	jne    26c7 <submitr+0x5eb>
    2450:	45 0f b6 c0          	movzbl %r8b,%r8d
    2454:	48 8d 0d 73 10 00 00 	lea    0x1073(%rip),%rcx        # 34ce <array.0+0x3ce>
    245b:	ba 08 00 00 00       	mov    $0x8,%edx
    2460:	be 01 00 00 00       	mov    $0x1,%esi
    2465:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    246a:	b8 00 00 00 00       	mov    $0x0,%eax
    246f:	e8 0c ef ff ff       	call   1380 <__sprintf_chk@plt>
    2474:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    247b:	00 
    247c:	88 45 00             	mov    %al,0x0(%rbp)
    247f:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    2486:	00 
    2487:	88 45 01             	mov    %al,0x1(%rbp)
    248a:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    2491:	00 
    2492:	88 45 02             	mov    %al,0x2(%rbp)
    2495:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2499:	e9 74 ff ff ff       	jmp    2412 <submitr+0x336>
    249e:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    24a2:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    24a6:	e9 67 ff ff ff       	jmp    2412 <submitr+0x336>
    24ab:	48 01 c5             	add    %rax,%rbp
    24ae:	48 29 c3             	sub    %rax,%rbx
    24b1:	0f 84 08 03 00 00    	je     27bf <submitr+0x6e3>
    24b7:	48 89 da             	mov    %rbx,%rdx
    24ba:	48 89 ee             	mov    %rbp,%rsi
    24bd:	44 89 e7             	mov    %r12d,%edi
    24c0:	e8 6b ed ff ff       	call   1230 <write@plt>
    24c5:	48 85 c0             	test   %rax,%rax
    24c8:	7f e1                	jg     24ab <submitr+0x3cf>
    24ca:	e8 31 ed ff ff       	call   1200 <__errno_location@plt>
    24cf:	83 38 04             	cmpl   $0x4,(%rax)
    24d2:	0f 85 90 01 00 00    	jne    2668 <submitr+0x58c>
    24d8:	4c 89 e8             	mov    %r13,%rax
    24db:	eb ce                	jmp    24ab <submitr+0x3cf>
    24dd:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    24e4:	3a 20 43 
    24e7:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    24ee:	20 75 6e 
    24f1:	49 89 07             	mov    %rax,(%r15)
    24f4:	49 89 57 08          	mov    %rdx,0x8(%r15)
    24f8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    24ff:	74 6f 20 
    2502:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2509:	66 69 72 
    250c:	49 89 47 10          	mov    %rax,0x10(%r15)
    2510:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2514:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    251b:	61 64 65 
    251e:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    2525:	6d 20 73 
    2528:	49 89 47 20          	mov    %rax,0x20(%r15)
    252c:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2530:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    2537:	65 
    2538:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    253f:	44 89 e7             	mov    %r12d,%edi
    2542:	e8 29 ed ff ff       	call   1270 <close@plt>
    2547:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    254c:	eb 7e                	jmp    25cc <submitr+0x4f0>
    254e:	4c 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%r9
    2555:	00 
    2556:	48 8d 0d c3 0e 00 00 	lea    0xec3(%rip),%rcx        # 3420 <array.0+0x320>
    255d:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2564:	be 01 00 00 00       	mov    $0x1,%esi
    2569:	4c 89 ff             	mov    %r15,%rdi
    256c:	b8 00 00 00 00       	mov    $0x0,%eax
    2571:	e8 0a ee ff ff       	call   1380 <__sprintf_chk@plt>
    2576:	44 89 e7             	mov    %r12d,%edi
    2579:	e8 f2 ec ff ff       	call   1270 <close@plt>
    257e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2583:	eb 47                	jmp    25cc <submitr+0x4f0>
    2585:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    258c:	00 
    258d:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2592:	ba 00 20 00 00       	mov    $0x2000,%edx
    2597:	e8 74 fa ff ff       	call   2010 <rio_readlineb>
    259c:	48 85 c0             	test   %rax,%rax
    259f:	7e 54                	jle    25f5 <submitr+0x519>
    25a1:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    25a8:	00 
    25a9:	4c 89 ff             	mov    %r15,%rdi
    25ac:	e8 5f ec ff ff       	call   1210 <strcpy@plt>
    25b1:	44 89 e7             	mov    %r12d,%edi
    25b4:	e8 b7 ec ff ff       	call   1270 <close@plt>
    25b9:	48 8d 35 29 0f 00 00 	lea    0xf29(%rip),%rsi        # 34e9 <array.0+0x3e9>
    25c0:	4c 89 ff             	mov    %r15,%rdi
    25c3:	e8 d8 ec ff ff       	call   12a0 <strcmp@plt>
    25c8:	f7 d8                	neg    %eax
    25ca:	19 c0                	sbb    %eax,%eax
    25cc:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    25d3:	00 
    25d4:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    25db:	00 00 
    25dd:	0f 85 f8 02 00 00    	jne    28db <submitr+0x7ff>
    25e3:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    25ea:	5b                   	pop    %rbx
    25eb:	5d                   	pop    %rbp
    25ec:	41 5c                	pop    %r12
    25ee:	41 5d                	pop    %r13
    25f0:	41 5e                	pop    %r14
    25f2:	41 5f                	pop    %r15
    25f4:	c3                   	ret    
    25f5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    25fc:	3a 20 43 
    25ff:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2606:	20 75 6e 
    2609:	49 89 07             	mov    %rax,(%r15)
    260c:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2610:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2617:	74 6f 20 
    261a:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2621:	73 74 61 
    2624:	49 89 47 10          	mov    %rax,0x10(%r15)
    2628:	49 89 57 18          	mov    %rdx,0x18(%r15)
    262c:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2633:	65 73 73 
    2636:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    263d:	72 6f 6d 
    2640:	49 89 47 20          	mov    %rax,0x20(%r15)
    2644:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2648:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    264f:	65 72 00 
    2652:	49 89 47 30          	mov    %rax,0x30(%r15)
    2656:	44 89 e7             	mov    %r12d,%edi
    2659:	e8 12 ec ff ff       	call   1270 <close@plt>
    265e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2663:	e9 64 ff ff ff       	jmp    25cc <submitr+0x4f0>
    2668:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    266f:	3a 20 43 
    2672:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2679:	20 75 6e 
    267c:	49 89 07             	mov    %rax,(%r15)
    267f:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2683:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    268a:	74 6f 20 
    268d:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2694:	20 74 6f 
    2697:	49 89 47 10          	mov    %rax,0x10(%r15)
    269b:	49 89 57 18          	mov    %rdx,0x18(%r15)
    269f:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    26a6:	73 65 72 
    26a9:	49 89 47 20          	mov    %rax,0x20(%r15)
    26ad:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    26b4:	00 
    26b5:	44 89 e7             	mov    %r12d,%edi
    26b8:	e8 b3 eb ff ff       	call   1270 <close@plt>
    26bd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    26c2:	e9 05 ff ff ff       	jmp    25cc <submitr+0x4f0>
    26c7:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    26ce:	3a 20 52 
    26d1:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    26d8:	20 73 74 
    26db:	49 89 07             	mov    %rax,(%r15)
    26de:	49 89 57 08          	mov    %rdx,0x8(%r15)
    26e2:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    26e9:	63 6f 6e 
    26ec:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    26f3:	20 61 6e 
    26f6:	49 89 47 10          	mov    %rax,0x10(%r15)
    26fa:	49 89 57 18          	mov    %rdx,0x18(%r15)
    26fe:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2705:	67 61 6c 
    2708:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    270f:	6e 70 72 
    2712:	49 89 47 20          	mov    %rax,0x20(%r15)
    2716:	49 89 57 28          	mov    %rdx,0x28(%r15)
    271a:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2721:	6c 65 20 
    2724:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    272b:	63 74 65 
    272e:	49 89 47 30          	mov    %rax,0x30(%r15)
    2732:	49 89 57 38          	mov    %rdx,0x38(%r15)
    2736:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    273d:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    2742:	44 89 e7             	mov    %r12d,%edi
    2745:	e8 26 eb ff ff       	call   1270 <close@plt>
    274a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    274f:	e9 78 fe ff ff       	jmp    25cc <submitr+0x4f0>
    2754:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    275b:	00 
    275c:	48 83 ec 08          	sub    $0x8,%rsp
    2760:	48 8d 84 24 68 40 00 	lea    0x4068(%rsp),%rax
    2767:	00 
    2768:	50                   	push   %rax
    2769:	ff 74 24 28          	push   0x28(%rsp)
    276d:	ff 74 24 38          	push   0x38(%rsp)
    2771:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    2776:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    277b:	48 8d 0d ce 0c 00 00 	lea    0xcce(%rip),%rcx        # 3450 <array.0+0x350>
    2782:	ba 00 20 00 00       	mov    $0x2000,%edx
    2787:	be 01 00 00 00       	mov    $0x1,%esi
    278c:	48 89 df             	mov    %rbx,%rdi
    278f:	b8 00 00 00 00       	mov    $0x0,%eax
    2794:	e8 e7 eb ff ff       	call   1380 <__sprintf_chk@plt>
    2799:	48 83 c4 20          	add    $0x20,%rsp
    279d:	48 89 df             	mov    %rbx,%rdi
    27a0:	e8 9b ea ff ff       	call   1240 <strlen@plt>
    27a5:	48 89 c3             	mov    %rax,%rbx
    27a8:	48 8d ac 24 60 20 00 	lea    0x2060(%rsp),%rbp
    27af:	00 
    27b0:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    27b6:	48 85 c0             	test   %rax,%rax
    27b9:	0f 85 f8 fc ff ff    	jne    24b7 <submitr+0x3db>
    27bf:	44 89 64 24 50       	mov    %r12d,0x50(%rsp)
    27c4:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    27cb:	00 
    27cc:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    27d1:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    27d6:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    27db:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    27e2:	00 
    27e3:	ba 00 20 00 00       	mov    $0x2000,%edx
    27e8:	e8 23 f8 ff ff       	call   2010 <rio_readlineb>
    27ed:	48 85 c0             	test   %rax,%rax
    27f0:	0f 8e e7 fc ff ff    	jle    24dd <submitr+0x401>
    27f6:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    27fb:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    2802:	00 
    2803:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    280a:	00 
    280b:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    2812:	00 
    2813:	48 8d 35 bb 0c 00 00 	lea    0xcbb(%rip),%rsi        # 34d5 <array.0+0x3d5>
    281a:	b8 00 00 00 00       	mov    $0x0,%eax
    281f:	e8 dc ea ff ff       	call   1300 <__isoc99_sscanf@plt>
    2824:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
    2829:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    2830:	0f 85 18 fd ff ff    	jne    254e <submitr+0x472>
    2836:	48 8d 1d a9 0c 00 00 	lea    0xca9(%rip),%rbx        # 34e6 <array.0+0x3e6>
    283d:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    2844:	00 
    2845:	48 89 de             	mov    %rbx,%rsi
    2848:	e8 53 ea ff ff       	call   12a0 <strcmp@plt>
    284d:	85 c0                	test   %eax,%eax
    284f:	0f 84 30 fd ff ff    	je     2585 <submitr+0x4a9>
    2855:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    285c:	00 
    285d:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2862:	ba 00 20 00 00       	mov    $0x2000,%edx
    2867:	e8 a4 f7 ff ff       	call   2010 <rio_readlineb>
    286c:	48 85 c0             	test   %rax,%rax
    286f:	7f cc                	jg     283d <submitr+0x761>
    2871:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2878:	3a 20 43 
    287b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2882:	20 75 6e 
    2885:	49 89 07             	mov    %rax,(%r15)
    2888:	49 89 57 08          	mov    %rdx,0x8(%r15)
    288c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2893:	74 6f 20 
    2896:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    289d:	68 65 61 
    28a0:	49 89 47 10          	mov    %rax,0x10(%r15)
    28a4:	49 89 57 18          	mov    %rdx,0x18(%r15)
    28a8:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    28af:	66 72 6f 
    28b2:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    28b9:	76 65 72 
    28bc:	49 89 47 20          	mov    %rax,0x20(%r15)
    28c0:	49 89 57 28          	mov    %rdx,0x28(%r15)
    28c4:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    28c9:	44 89 e7             	mov    %r12d,%edi
    28cc:	e8 9f e9 ff ff       	call   1270 <close@plt>
    28d1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    28d6:	e9 f1 fc ff ff       	jmp    25cc <submitr+0x4f0>
    28db:	e8 70 e9 ff ff       	call   1250 <__stack_chk_fail@plt>

00000000000028e0 <init_timeout>:
    28e0:	f3 0f 1e fa          	endbr64 
    28e4:	85 ff                	test   %edi,%edi
    28e6:	75 01                	jne    28e9 <init_timeout+0x9>
    28e8:	c3                   	ret    
    28e9:	53                   	push   %rbx
    28ea:	89 fb                	mov    %edi,%ebx
    28ec:	48 8d 35 e7 f6 ff ff 	lea    -0x919(%rip),%rsi        # 1fda <sigalrm_handler>
    28f3:	bf 0e 00 00 00       	mov    $0xe,%edi
    28f8:	e8 b3 e9 ff ff       	call   12b0 <signal@plt>
    28fd:	85 db                	test   %ebx,%ebx
    28ff:	b8 00 00 00 00       	mov    $0x0,%eax
    2904:	0f 49 c3             	cmovns %ebx,%eax
    2907:	89 c7                	mov    %eax,%edi
    2909:	e8 52 e9 ff ff       	call   1260 <alarm@plt>
    290e:	5b                   	pop    %rbx
    290f:	c3                   	ret    

0000000000002910 <init_driver>:
    2910:	f3 0f 1e fa          	endbr64 
    2914:	41 54                	push   %r12
    2916:	55                   	push   %rbp
    2917:	53                   	push   %rbx
    2918:	48 83 ec 20          	sub    $0x20,%rsp
    291c:	48 89 fd             	mov    %rdi,%rbp
    291f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2926:	00 00 
    2928:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    292d:	31 c0                	xor    %eax,%eax
    292f:	be 01 00 00 00       	mov    $0x1,%esi
    2934:	bf 0d 00 00 00       	mov    $0xd,%edi
    2939:	e8 72 e9 ff ff       	call   12b0 <signal@plt>
    293e:	be 01 00 00 00       	mov    $0x1,%esi
    2943:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2948:	e8 63 e9 ff ff       	call   12b0 <signal@plt>
    294d:	be 01 00 00 00       	mov    $0x1,%esi
    2952:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2957:	e8 54 e9 ff ff       	call   12b0 <signal@plt>
    295c:	ba 00 00 00 00       	mov    $0x0,%edx
    2961:	be 01 00 00 00       	mov    $0x1,%esi
    2966:	bf 02 00 00 00       	mov    $0x2,%edi
    296b:	e8 20 ea ff ff       	call   1390 <socket@plt>
    2970:	85 c0                	test   %eax,%eax
    2972:	0f 88 9c 00 00 00    	js     2a14 <init_driver+0x104>
    2978:	89 c3                	mov    %eax,%ebx
    297a:	48 8d 3d 6b 0b 00 00 	lea    0xb6b(%rip),%rdi        # 34ec <array.0+0x3ec>
    2981:	e8 3a e9 ff ff       	call   12c0 <gethostbyname@plt>
    2986:	48 85 c0             	test   %rax,%rax
    2989:	0f 84 d1 00 00 00    	je     2a60 <init_driver+0x150>
    298f:	49 89 e4             	mov    %rsp,%r12
    2992:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    2999:	00 
    299a:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    29a1:	00 00 
    29a3:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    29a9:	48 63 50 14          	movslq 0x14(%rax),%rdx
    29ad:	48 8b 40 18          	mov    0x18(%rax),%rax
    29b1:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    29b6:	b9 0c 00 00 00       	mov    $0xc,%ecx
    29bb:	48 8b 30             	mov    (%rax),%rsi
    29be:	e8 0d e9 ff ff       	call   12d0 <__memmove_chk@plt>
    29c3:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    29ca:	ba 10 00 00 00       	mov    $0x10,%edx
    29cf:	4c 89 e6             	mov    %r12,%rsi
    29d2:	89 df                	mov    %ebx,%edi
    29d4:	e8 67 e9 ff ff       	call   1340 <connect@plt>
    29d9:	85 c0                	test   %eax,%eax
    29db:	0f 88 e7 00 00 00    	js     2ac8 <init_driver+0x1b8>
    29e1:	89 df                	mov    %ebx,%edi
    29e3:	e8 88 e8 ff ff       	call   1270 <close@plt>
    29e8:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    29ee:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    29f2:	b8 00 00 00 00       	mov    $0x0,%eax
    29f7:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    29fc:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2a03:	00 00 
    2a05:	0f 85 f5 00 00 00    	jne    2b00 <init_driver+0x1f0>
    2a0b:	48 83 c4 20          	add    $0x20,%rsp
    2a0f:	5b                   	pop    %rbx
    2a10:	5d                   	pop    %rbp
    2a11:	41 5c                	pop    %r12
    2a13:	c3                   	ret    
    2a14:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2a1b:	3a 20 43 
    2a1e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2a25:	20 75 6e 
    2a28:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a2c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a30:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2a37:	74 6f 20 
    2a3a:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2a41:	65 20 73 
    2a44:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a48:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a4c:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    2a53:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2a59:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a5e:	eb 97                	jmp    29f7 <init_driver+0xe7>
    2a60:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2a67:	3a 20 44 
    2a6a:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2a71:	20 75 6e 
    2a74:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2a78:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2a7c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2a83:	74 6f 20 
    2a86:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2a8d:	76 65 20 
    2a90:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a94:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a98:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2a9f:	72 20 61 
    2aa2:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2aa6:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2aad:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2ab3:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2ab7:	89 df                	mov    %ebx,%edi
    2ab9:	e8 b2 e7 ff ff       	call   1270 <close@plt>
    2abe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ac3:	e9 2f ff ff ff       	jmp    29f7 <init_driver+0xe7>
    2ac8:	4c 8d 05 1d 0a 00 00 	lea    0xa1d(%rip),%r8        # 34ec <array.0+0x3ec>
    2acf:	48 8d 0d d2 09 00 00 	lea    0x9d2(%rip),%rcx        # 34a8 <array.0+0x3a8>
    2ad6:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2add:	be 01 00 00 00       	mov    $0x1,%esi
    2ae2:	48 89 ef             	mov    %rbp,%rdi
    2ae5:	b8 00 00 00 00       	mov    $0x0,%eax
    2aea:	e8 91 e8 ff ff       	call   1380 <__sprintf_chk@plt>
    2aef:	89 df                	mov    %ebx,%edi
    2af1:	e8 7a e7 ff ff       	call   1270 <close@plt>
    2af6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2afb:	e9 f7 fe ff ff       	jmp    29f7 <init_driver+0xe7>
    2b00:	e8 4b e7 ff ff       	call   1250 <__stack_chk_fail@plt>

0000000000002b05 <driver_post>:
    2b05:	f3 0f 1e fa          	endbr64 
    2b09:	53                   	push   %rbx
    2b0a:	4c 89 c3             	mov    %r8,%rbx
    2b0d:	85 c9                	test   %ecx,%ecx
    2b0f:	75 17                	jne    2b28 <driver_post+0x23>
    2b11:	48 85 ff             	test   %rdi,%rdi
    2b14:	74 05                	je     2b1b <driver_post+0x16>
    2b16:	80 3f 00             	cmpb   $0x0,(%rdi)
    2b19:	75 33                	jne    2b4e <driver_post+0x49>
    2b1b:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2b20:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2b24:	89 c8                	mov    %ecx,%eax
    2b26:	5b                   	pop    %rbx
    2b27:	c3                   	ret    
    2b28:	48 8d 35 d5 09 00 00 	lea    0x9d5(%rip),%rsi        # 3504 <array.0+0x404>
    2b2f:	bf 01 00 00 00       	mov    $0x1,%edi
    2b34:	b8 00 00 00 00       	mov    $0x0,%eax
    2b39:	e8 d2 e7 ff ff       	call   1310 <__printf_chk@plt>
    2b3e:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2b43:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2b47:	b8 00 00 00 00       	mov    $0x0,%eax
    2b4c:	eb d8                	jmp    2b26 <driver_post+0x21>
    2b4e:	41 50                	push   %r8
    2b50:	52                   	push   %rdx
    2b51:	4c 8d 0d c3 09 00 00 	lea    0x9c3(%rip),%r9        # 351b <array.0+0x41b>
    2b58:	49 89 f0             	mov    %rsi,%r8
    2b5b:	48 89 f9             	mov    %rdi,%rcx
    2b5e:	48 8d 15 be 09 00 00 	lea    0x9be(%rip),%rdx        # 3523 <array.0+0x423>
    2b65:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    2b6a:	48 8d 3d 7b 09 00 00 	lea    0x97b(%rip),%rdi        # 34ec <array.0+0x3ec>
    2b71:	e8 66 f5 ff ff       	call   20dc <submitr>
    2b76:	48 83 c4 10          	add    $0x10,%rsp
    2b7a:	eb aa                	jmp    2b26 <driver_post+0x21>

Disassembly of section .fini:

0000000000002b7c <_fini>:
    2b7c:	f3 0f 1e fa          	endbr64 
    2b80:	48 83 ec 08          	sub    $0x8,%rsp
    2b84:	48 83 c4 08          	add    $0x8,%rsp
    2b88:	c3                   	ret    
