
clear3.o:     file format elf32-littlearm

Disassembly of section .text:

00000000 <clear3>:
   0:	e1a0c00d 	mov	ip, sp
   4:	e92dd800 	stmdb	sp!, {fp, ip, lr, pc}
   8:	e24cb004 	sub	fp, ip, #4	; 0x4
   c:	e24dd010 	sub	sp, sp, #16	; 0x10
  10:	e50b0010 	str	r0, [fp, -#16]
  14:	e50b1014 	str	r1, [fp, -#20]
  18:	e51b3014 	ldr	r3, [fp, -#20]
  1c:	e1a02003 	mov	r2, r3
  20:	e1a03102 	mov	r3, r2, lsl #2
  24:	e51b2010 	ldr	r2, [fp, -#16]
  28:	e0823003 	add	r3, r2, r3
  2c:	e50b301c 	str	r3, [fp, -#28]
  30:	e51b3010 	ldr	r3, [fp, -#16]
  34:	e50b3018 	str	r3, [fp, -#24]
  38:	e51b3018 	ldr	r3, [fp, -#24]
  3c:	e51b201c 	ldr	r2, [fp, -#28]
  40:	e1530002 	cmp	r3, r2
  44:	3a000011 	bcc	4c <clear3+0x4c>
  48:	ea000018 	b	68 <clear3+0x68>
  4c:	e51b3018 	ldr	r3, [fp, -#24]
  50:	e3a02000 	mov	r2, #0	; 0x0
  54:	e5832000 	str	r2, [r3]
  58:	e51b3018 	ldr	r3, [fp, -#24]
  5c:	e2832004 	add	r2, r3, #4	; 0x4
  60:	e50b2018 	str	r2, [fp, -#24]
  64:	ea00000c 	b	38 <clear3+0x38>
  68:	e91ba800 	ldmdb	fp, {fp, sp, pc}
