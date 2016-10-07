
clear1.o:     file format elf32-littlearm

Disassembly of section .text:

00000000 <clear1>:
   0:	e1a0c00d 	mov	ip, sp
   4:	e92dd800 	stmdb	sp!, {fp, ip, lr, pc}
   8:	e24cb004 	sub	fp, ip, #4	; 0x4
   c:	e24dd00c 	sub	sp, sp, #12	; 0xc
  10:	e50b0010 	str	r0, [fp, -#16]
  14:	e50b1014 	str	r1, [fp, -#20]
  18:	e3a03000 	mov	r3, #0	; 0x0
  1c:	e50b3018 	str	r3, [fp, -#24]
  20:	e51b3018 	ldr	r3, [fp, -#24]
  24:	e51b2014 	ldr	r2, [fp, -#20]
  28:	e1530002 	cmp	r3, r2
  2c:	ba00000b 	blt	34 <clear1+0x34>
  30:	ea000016 	b	60 <clear1+0x60>
  34:	e51b3018 	ldr	r3, [fp, -#24]
  38:	e1a02003 	mov	r2, r3
  3c:	e1a03102 	mov	r3, r2, lsl #2
  40:	e51b2010 	ldr	r2, [fp, -#16]
  44:	e0833002 	add	r3, r3, r2
  48:	e3a02000 	mov	r2, #0	; 0x0
  4c:	e5832000 	str	r2, [r3]
  50:	e51b3018 	ldr	r3, [fp, -#24]
  54:	e2832001 	add	r2, r3, #1	; 0x1
  58:	e50b2018 	str	r2, [fp, -#24]
  5c:	ea000006 	b	20 <clear1+0x20>
  60:	e91ba800 	ldmdb	fp, {fp, sp, pc}
