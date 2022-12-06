.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_801C51FC
func_801C51FC:
/* 801C51FC 0018E7BC  3C 80 80 53 */	lis r4, __vt__CVisionItem@ha
/* 801C5200 0018E7C0  38 00 00 00 */	li r0, 0
/* 801C5204 0018E7C4  38 84 7F B0 */	addi r4, r4, __vt__CVisionItem@l
/* 801C5208 0018E7C8  B0 03 08 04 */	sth r0, 0x804(r3)
/* 801C520C 0018E7CC  90 83 00 00 */	stw r4, 0(r3)
/* 801C5210 0018E7D0  4E 80 00 20 */	blr 

.global func_801C5214
func_801C5214:
/* 801C5214 0018E7D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C5218 0018E7D8  7C 08 02 A6 */	mflr r0
/* 801C521C 0018E7DC  2C 03 00 00 */	cmpwi r3, 0
/* 801C5220 0018E7E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C5224 0018E7E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C5228 0018E7E8  7C 7F 1B 78 */	mr r31, r3
/* 801C522C 0018E7EC  41 82 00 10 */	beq lbl_801C523C
/* 801C5230 0018E7F0  2C 04 00 00 */	cmpwi r4, 0
/* 801C5234 0018E7F4  40 81 00 08 */	ble lbl_801C523C
/* 801C5238 0018E7F8  48 26 F9 F5 */	bl __dl__FPv
lbl_801C523C:
/* 801C523C 0018E7FC  7F E3 FB 78 */	mr r3, r31
/* 801C5240 0018E800  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C5244 0018E804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C5248 0018E808  7C 08 03 A6 */	mtlr r0
/* 801C524C 0018E80C  38 21 00 10 */	addi r1, r1, 0x10
/* 801C5250 0018E810  4E 80 00 20 */	blr 

.global func_801C5254
func_801C5254:
/* 801C5254 0018E814  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C5258 0018E818  7C 08 02 A6 */	mflr r0
/* 801C525C 0018E81C  3C 80 80 50 */	lis r4, lbl_80500E74@ha
/* 801C5260 0018E820  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C5264 0018E824  BF 41 00 08 */	stmw r26, 8(r1)
/* 801C5268 0018E828  3B C4 0E 74 */	addi r30, r4, lbl_80500E74@l
/* 801C526C 0018E82C  7C 7A 1B 78 */	mr r26, r3
/* 801C5270 0018E830  38 7E 00 D5 */	addi r3, r30, 0xd5
/* 801C5274 0018E834  4B E7 58 31 */	bl func_8003AAA4
/* 801C5278 0018E838  2C 03 00 00 */	cmpwi r3, 0
/* 801C527C 0018E83C  7C 7D 1B 78 */	mr r29, r3
/* 801C5280 0018E840  41 82 00 EC */	beq lbl_801C536C
/* 801C5284 0018E844  4B E7 5F 69 */	bl func_8003B1EC
/* 801C5288 0018E848  54 7C 04 3E */	clrlwi r28, r3, 0x10
/* 801C528C 0018E84C  3B 60 00 01 */	li r27, 1
/* 801C5290 0018E850  48 00 00 D0 */	b lbl_801C5360
lbl_801C5294:
/* 801C5294 0018E854  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 801C5298 0018E858  38 63 25 96 */	addi r3, r3, 0x2596
/* 801C529C 0018E85C  4B ED 7C F1 */	bl func_8009CF8C
/* 801C52A0 0018E860  2C 03 00 00 */	cmpwi r3, 0
/* 801C52A4 0018E864  41 82 00 B8 */	beq lbl_801C535C
/* 801C52A8 0018E868  7F A3 EB 78 */	mr r3, r29
/* 801C52AC 0018E86C  38 9E 00 E2 */	addi r4, r30, 0xe2
/* 801C52B0 0018E870  57 65 04 3E */	clrlwi r5, r27, 0x10
/* 801C52B4 0018E874  4B F7 0F A1 */	bl func_80136254
/* 801C52B8 0018E878  54 63 04 3F */	clrlwi. r3, r3, 0x10
/* 801C52BC 0018E87C  41 82 00 38 */	beq lbl_801C52F4
/* 801C52C0 0018E880  38 63 02 20 */	addi r3, r3, 0x220
/* 801C52C4 0018E884  4B ED 7C C9 */	bl func_8009CF8C
/* 801C52C8 0018E888  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 801C52CC 0018E88C  28 1F 00 FE */	cmplwi r31, 0xfe
/* 801C52D0 0018E890  40 80 00 8C */	bge lbl_801C535C
/* 801C52D4 0018E894  7F A3 EB 78 */	mr r3, r29
/* 801C52D8 0018E898  38 9E 00 EA */	addi r4, r30, 0xea
/* 801C52DC 0018E89C  57 65 04 3E */	clrlwi r5, r27, 0x10
/* 801C52E0 0018E8A0  4B F7 0F 09 */	bl func_801361E8
/* 801C52E4 0018E8A4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C52E8 0018E8A8  7C 1F 00 40 */	cmplw r31, r0
/* 801C52EC 0018E8AC  41 81 00 70 */	bgt lbl_801C535C
/* 801C52F0 0018E8B0  48 00 00 4C */	b lbl_801C533C
lbl_801C52F4:
/* 801C52F4 0018E8B4  7F A3 EB 78 */	mr r3, r29
/* 801C52F8 0018E8B8  38 9E 00 F3 */	addi r4, r30, 0xf3
/* 801C52FC 0018E8BC  57 65 04 3E */	clrlwi r5, r27, 0x10
/* 801C5300 0018E8C0  4B F7 0E E9 */	bl func_801361E8
/* 801C5304 0018E8C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C5308 0018E8C8  7C 7F 1B 78 */	mr r31, r3
/* 801C530C 0018E8CC  41 82 00 30 */	beq lbl_801C533C
/* 801C5310 0018E8D0  7F A3 EB 78 */	mr r3, r29
/* 801C5314 0018E8D4  38 9E 00 FA */	addi r4, r30, 0xfa
/* 801C5318 0018E8D8  57 65 04 3E */	clrlwi r5, r27, 0x10
/* 801C531C 0018E8DC  4B F7 0E CD */	bl func_801361E8
/* 801C5320 0018E8E0  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 801C5324 0018E8E4  7C 7F 1B 78 */	mr r31, r3
/* 801C5328 0018E8E8  38 64 07 FC */	addi r3, r4, 0x7fc
/* 801C532C 0018E8EC  4B ED 7C 61 */	bl func_8009CF8C
/* 801C5330 0018E8F0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801C5334 0018E8F4  7C 00 18 40 */	cmplw r0, r3
/* 801C5338 0018E8F8  40 81 00 24 */	ble lbl_801C535C
lbl_801C533C:
/* 801C533C 0018E8FC  7F A3 EB 78 */	mr r3, r29
/* 801C5340 0018E900  38 9E 01 02 */	addi r4, r30, 0x102
/* 801C5344 0018E904  57 65 04 3E */	clrlwi r5, r27, 0x10
/* 801C5348 0018E908  4B F7 0F 0D */	bl func_80136254
/* 801C534C 0018E90C  54 64 04 3F */	clrlwi. r4, r3, 0x10
/* 801C5350 0018E910  41 82 00 0C */	beq lbl_801C535C
/* 801C5354 0018E914  7F 43 D3 78 */	mr r3, r26
/* 801C5358 0018E918  4B FF FE 01 */	bl func_801C5158
lbl_801C535C:
/* 801C535C 0018E91C  3B 7B 00 01 */	addi r27, r27, 1
lbl_801C5360:
/* 801C5360 0018E920  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 801C5364 0018E924  7C 00 E0 40 */	cmplw r0, r28
/* 801C5368 0018E928  40 81 FF 2C */	ble lbl_801C5294
lbl_801C536C:
/* 801C536C 0018E92C  BB 41 00 08 */	lmw r26, 8(r1)
/* 801C5370 0018E930  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C5374 0018E934  7C 08 03 A6 */	mtlr r0
/* 801C5378 0018E938  38 21 00 20 */	addi r1, r1, 0x20
/* 801C537C 0018E93C  4E 80 00 20 */	blr 