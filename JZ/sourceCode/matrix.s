
matrix.o:     file format elf32-littlearm

Disassembly of section .text:

00000000 <matrix>:
   0:	e1a0c00d 	mov	ip, sp
   4:	e92dd800 	stmdb	sp!, {fp, ip, lr, pc}
   8:	e24cb004 	sub	fp, ip, #4	; 0x4
   c:	e24dd020 	sub	sp, sp, #32	; 0x20
  10:	e50b0010 	str	r0, [fp, -#16]
  14:	e50b1014 	str	r1, [fp, -#20]
  18:	e50b2018 	str	r2, [fp, -#24]
  1c:	e50b301c 	str	r3, [fp, -#28]
  20:	e3a03000 	mov	r3, #0	; 0x0
  24:	e50b3020 	str	r3, [fp, -#32]
  28:	e51b3020 	ldr	r3, [fp, -#32]
  2c:	e51b201c 	ldr	r2, [fp, -#28]
  30:	e1530002 	cmp	r3, r2
  34:	ba00000d 	blt	3c <matrix+0x3c>
  38:	ea00004c 	b	138 <matrix+0x138>
  3c:	e3a03000 	mov	r3, #0	; 0x0
  40:	e50b3024 	str	r3, [fp, -#36]
  44:	e51b3024 	ldr	r3, [fp, -#36]
  48:	e51b201c 	ldr	r2, [fp, -#28]
  4c:	e1530002 	cmp	r3, r2
  50:	ba000014 	blt	58 <matrix+0x58>
  54:	ea000048 	b	128 <matrix+0x128>
  58:	e3a03000 	mov	r3, #0	; 0x0
  5c:	e50b302c 	str	r3, [fp, -#44]
  60:	e3a03000 	mov	r3, #0	; 0x0
  64:	e50b3028 	str	r3, [fp, -#40]
  68:	e51b3028 	ldr	r3, [fp, -#40]
  6c:	e59b2004 	ldr	r2, [fp, #4]
  70:	e1530002 	cmp	r3, r2
  74:	ba00001d 	blt	7c <matrix+0x7c>
  78:	ea000039 	b	ec <matrix+0xec>
  7c:	e51b3020 	ldr	r3, [fp, -#32]
  80:	e59b2004 	ldr	r2, [fp, #4]
  84:	e0030392 	mul	r3, r2, r3
  88:	e51b2028 	ldr	r2, [fp, -#40]
  8c:	e0833002 	add	r3, r3, r2
  90:	e1a02003 	mov	r2, r3
  94:	e1a03102 	mov	r3, r2, lsl #2
  98:	e51b2010 	ldr	r2, [fp, -#16]
  9c:	e0833002 	add	r3, r3, r2
  a0:	e51b2028 	ldr	r2, [fp, -#40]
  a4:	e51b101c 	ldr	r1, [fp, -#28]
  a8:	e0020291 	mul	r2, r1, r2
  ac:	e51b1024 	ldr	r1, [fp, -#36]
  b0:	e0822001 	add	r2, r2, r1
  b4:	e1a01002 	mov	r1, r2
  b8:	e1a02101 	mov	r2, r1, lsl #2
  bc:	e51b1014 	ldr	r1, [fp, -#20]
  c0:	e0822001 	add	r2, r2, r1
  c4:	e5933000 	ldr	r3, [r3]
  c8:	e5922000 	ldr	r2, [r2]
  cc:	e0030392 	mul	r3, r2, r3
  d0:	e51b202c 	ldr	r2, [fp, -#44]
  d4:	e0823003 	add	r3, r2, r3
  d8:	e50b302c 	str	r3, [fp, -#44]
  dc:	e51b3028 	ldr	r3, [fp, -#40]
  e0:	e2832001 	add	r2, r3, #1	; 0x1
  e4:	e50b2028 	str	r2, [fp, -#40]
  e8:	ea000018 	b	68 <matrix+0x68>
  ec:	e51b3020 	ldr	r3, [fp, -#32]
  f0:	e51b201c 	ldr	r2, [fp, -#28]
  f4:	e0030392 	mul	r3, r2, r3
  f8:	e51b2024 	ldr	r2, [fp, -#36]
  fc:	e0833002 	add	r3, r3, r2
 100:	e1a02003 	mov	r2, r3
 104:	e1a03102 	mov	r3, r2, lsl #2
 108:	e51b2018 	ldr	r2, [fp, -#24]
 10c:	e0833002 	add	r3, r3, r2
 110:	e51b202c 	ldr	r2, [fp, -#44]
 114:	e5832000 	str	r2, [r3]
 118:	e51b3024 	ldr	r3, [fp, -#36]
 11c:	e2832001 	add	r2, r3, #1	; 0x1
 120:	e50b2024 	str	r2, [fp, -#36]
 124:	ea00000f 	b	44 <matrix+0x44>
 128:	e51b3020 	ldr	r3, [fp, -#32]
 12c:	e2832001 	add	r2, r3, #1	; 0x1
 130:	e50b2020 	str	r2, [fp, -#32]
 134:	ea000008 	b	28 <matrix+0x28>
 138:	e91ba800 	ldmdb	fp, {fp, sp, pc}
