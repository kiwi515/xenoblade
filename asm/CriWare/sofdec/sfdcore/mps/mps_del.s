.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global MPS_CheckDelim
MPS_CheckDelim:
/* 803BCA04 00385FC4  88 03 00 00 */	lbz r0, 0(r3)
/* 803BCA08 00385FC8  2C 00 00 00 */	cmpwi r0, 0
/* 803BCA0C 00385FCC  40 82 00 6C */	bne lbl_803BCA78
/* 803BCA10 00385FD0  88 03 00 01 */	lbz r0, 1(r3)
/* 803BCA14 00385FD4  2C 00 00 00 */	cmpwi r0, 0
/* 803BCA18 00385FD8  40 82 00 60 */	bne lbl_803BCA78
/* 803BCA1C 00385FDC  88 03 00 02 */	lbz r0, 2(r3)
/* 803BCA20 00385FE0  28 00 00 01 */	cmplwi r0, 1
/* 803BCA24 00385FE4  40 82 00 54 */	bne lbl_803BCA78
/* 803BCA28 00385FE8  88 03 00 03 */	lbz r0, 3(r3)
/* 803BCA2C 00385FEC  2C 00 00 BA */	cmpwi r0, 0xba
/* 803BCA30 00385FF0  41 82 00 28 */	beq lbl_803BCA58
/* 803BCA34 00385FF4  40 80 00 10 */	bge lbl_803BCA44
/* 803BCA38 00385FF8  2C 00 00 B9 */	cmpwi r0, 0xb9
/* 803BCA3C 00385FFC  40 80 00 14 */	bge lbl_803BCA50
/* 803BCA40 00386000  48 00 00 28 */	b lbl_803BCA68
lbl_803BCA44:
/* 803BCA44 00386004  2C 00 00 BC */	cmpwi r0, 0xbc
/* 803BCA48 00386008  40 80 00 20 */	bge lbl_803BCA68
/* 803BCA4C 0038600C  48 00 00 14 */	b lbl_803BCA60
lbl_803BCA50:
/* 803BCA50 00386010  3C 60 00 08 */	lis r3, 8
/* 803BCA54 00386014  4E 80 00 20 */	blr
lbl_803BCA58:
/* 803BCA58 00386018  3C 60 00 01 */	lis r3, 1
/* 803BCA5C 0038601C  4E 80 00 20 */	blr
lbl_803BCA60:
/* 803BCA60 00386020  3C 60 00 02 */	lis r3, 2
/* 803BCA64 00386024  4E 80 00 20 */	blr
lbl_803BCA68:
/* 803BCA68 00386028  28 00 00 BC */	cmplwi r0, 0xbc
/* 803BCA6C 0038602C  41 80 00 0C */	blt lbl_803BCA78
/* 803BCA70 00386030  3C 60 00 04 */	lis r3, 4
/* 803BCA74 00386034  4E 80 00 20 */	blr
lbl_803BCA78:
/* 803BCA78 00386038  38 60 00 00 */	li r3, 0
/* 803BCA7C 0038603C  4E 80 00 20 */	blr 