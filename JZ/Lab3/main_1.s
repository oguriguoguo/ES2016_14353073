main.o:     file format elf32-littlearm

Disassembly of section .text:

00000000 <_main>:
   0:	e1a0c00d 	mov	ip, sp
   4:	e92dd800 	stmdb	sp!, {fp, ip, lr, pc}
   8:	e24cb004 	sub	fp, ip, #4	; 0x4
   c:	e24dd01c 	sub	sp, sp, #28	; 0x1c
  10:	e59f2088 	ldr	r2, [pc, #136]	; a0 <_main+0xa0>
  14:	e24b301c 	sub	r3, fp, #28	; 0x1c
  18:	e3a0c00b 	mov	ip, #11	; 0xb
  1c:	e1a00003 	mov	r0, r3
  20:	e1a01002 	mov	r1, r2
  24:	e1a0200c 	mov	r2, ip
  28:	ebfffffe 	bl	0 <_main>
  2c:	e1a03000 	mov	r3, r0
  30:	e24b2028 	sub	r2, fp, #40	; 0x28
  34:	e3a0300b 	mov	r3, #11	; 0xb
  38:	e1a00002 	mov	r0, r2
  3c:	e3a01000 	mov	r1, #0	; 0x0
  40:	e1a02003 	mov	r2, r3
  44:	ebfffffe 	bl	0 <_main>
  48:	e1a03000 	mov	r3, r0
  4c:	e3a02001 	mov	r2, #1	; 0x1
  50:	e50b2010 	str	r2, [fp, -#16]
  54:	e51b3010 	ldr	r3, [fp, -#16]
  58:	e353000a 	cmp	r3, #10	; 0xa
  5c:	da000017 	ble	64 <_main+0x64>
  60:	ea000024 	b	98 <_main+0x98>
  64:	e24b301c 	sub	r3, fp, #28	; 0x1c
  68:	e51b2010 	ldr	r2, [fp, -#16]
  6c:	e7d33002 	ldrb	r3, [r3, r2]
  70:	e1a00003 	mov	r0, r3
  74:	ebfffffe 	bl	0 <_main>
  78:	e1a03000 	mov	r3, r0
  7c:	e24b2028 	sub	r2, fp, #40	; 0x28
  80:	e51b1010 	ldr	r1, [fp, -#16]
  84:	e7c23001 	strb	r3, [r2, r1]
  88:	e51b3010 	ldr	r3, [fp, -#16]
  8c:	e2832001 	add	r2, r3, #1	; 0x1
  90:	e50b2010 	str	r2, [fp, -#16]
  94:	ea000013 	b	54 <_main+0x54>
  98:	e3a00000 	mov	r0, #0	; 0x0
  9c:	ea000027 	b	a4 <_main+0xa4>
  a0:	00000000 	andeq	r0, r0, r0
  a4:	e91ba800 	ldmdb	fp, {fp, sp, pc}

