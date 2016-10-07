
bubblesort.o:     file format elf32-littlearm

Disassembly of section .text:

00000000 <bubblesort>:
   0:	e1a0c00d 	mov	ip, sp
   4:	e92dd800 	stmdb	sp!, {fp, ip, lr, pc}
   8:	e24cb004 	sub	fp, ip, #4	; 0x4
   c:	e24dd014 	sub	sp, sp, #20	; 0x14
  10:	e50b0010 	str	r0, [fp, -#16]
  14:	e50b1014 	str	r1, [fp, -#20]
  18:	e3a03000 	mov	r3, #0	; 0x0
  1c:	e50b301c 	str	r3, [fp, -#28]
  20:	e51b2014 	ldr	r2, [fp, -#20]
  24:	e2423001 	sub	r3, r2, #1	; 0x1
  28:	e51b201c 	ldr	r2, [fp, -#28]
  2c:	e1520003 	cmp	r2, r3
  30:	ba00000c 	blt	38 <bubblesort+0x38>
  34:	ea00004a 	b	130 <bubblesort+0x130>
  38:	e1a00000 	nop			(mov r0,r0)
  3c:	e3a03000 	mov	r3, #0	; 0x0
  40:	e50b3018 	str	r3, [fp, -#24]
  44:	e51b201c 	ldr	r2, [fp, -#28]
  48:	e2823001 	add	r3, r2, #1	; 0x1
  4c:	e51b2014 	ldr	r2, [fp, -#20]
  50:	e0633002 	rsb	r3, r3, r2
  54:	e51b2018 	ldr	r2, [fp, -#24]
  58:	e1520003 	cmp	r2, r3
  5c:	ba000017 	blt	64 <bubblesort+0x64>
  60:	ea000046 	b	120 <bubblesort+0x120>
  64:	e51b3018 	ldr	r3, [fp, -#24]
  68:	e1a02003 	mov	r2, r3
  6c:	e1a03102 	mov	r3, r2, lsl #2
  70:	e51b2010 	ldr	r2, [fp, -#16]
  74:	e0833002 	add	r3, r3, r2
  78:	e51b1018 	ldr	r1, [fp, -#24]
  7c:	e3a02004 	mov	r2, #4	; 0x4
  80:	e1a0c101 	mov	ip, r1, lsl #2
  84:	e51be010 	ldr	lr, [fp, -#16]
  88:	e08c100e 	add	r1, ip, lr
  8c:	e0812002 	add	r2, r1, r2
  90:	e5933000 	ldr	r3, [r3]
  94:	e5922000 	ldr	r2, [r2]
  98:	e1530002 	cmp	r3, r2
  9c:	da000042 	ble	110 <bubblesort+0x110>
  a0:	e51b3018 	ldr	r3, [fp, -#24]
  a4:	e1a02003 	mov	r2, r3
  a8:	e1a03102 	mov	r3, r2, lsl #2
  ac:	e51b2010 	ldr	r2, [fp, -#16]
  b0:	e0833002 	add	r3, r3, r2
  b4:	e5932000 	ldr	r2, [r3]
  b8:	e50b2020 	str	r2, [fp, -#32]
  bc:	e51b3018 	ldr	r3, [fp, -#24]
  c0:	e1a02003 	mov	r2, r3
  c4:	e1a03102 	mov	r3, r2, lsl #2
  c8:	e51b2010 	ldr	r2, [fp, -#16]
  cc:	e0833002 	add	r3, r3, r2
  d0:	e51b1018 	ldr	r1, [fp, -#24]
  d4:	e3a02004 	mov	r2, #4	; 0x4
  d8:	e1a0c101 	mov	ip, r1, lsl #2
  dc:	e51be010 	ldr	lr, [fp, -#16]
  e0:	e08c100e 	add	r1, ip, lr
  e4:	e0812002 	add	r2, r1, r2
  e8:	e5921000 	ldr	r1, [r2]
  ec:	e5831000 	str	r1, [r3]
  f0:	e51b2018 	ldr	r2, [fp, -#24]
  f4:	e3a03004 	mov	r3, #4	; 0x4
  f8:	e1a01102 	mov	r1, r2, lsl #2
  fc:	e51bc010 	ldr	ip, [fp, -#16]
 100:	e081200c 	add	r2, r1, ip
 104:	e0823003 	add	r3, r2, r3
 108:	e51b2020 	ldr	r2, [fp, -#32]
 10c:	e5832000 	str	r2, [r3]
 110:	e51b3018 	ldr	r3, [fp, -#24]
 114:	e2832001 	add	r2, r3, #1	; 0x1
 118:	e50b2018 	str	r2, [fp, -#24]
 11c:	ea00000f 	b	44 <bubblesort+0x44>
 120:	e51b301c 	ldr	r3, [fp, -#28]
 124:	e2832001 	add	r2, r3, #1	; 0x1
 128:	e50b201c 	str	r2, [fp, -#28]
 12c:	ea000006 	b	20 <bubblesort+0x20>
 130:	e91ba800 	ldmdb	fp, {fp, sp, pc}
