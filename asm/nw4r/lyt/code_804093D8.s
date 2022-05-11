.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_804093D8
func_804093D8:
/* 804093D8 003D2998  38 00 00 00 */	li r0, 0
/* 804093DC 003D299C  90 03 00 00 */	stw r0, 0(r3)
/* 804093E0 003D29A0  90 03 00 04 */	stw r0, 4(r3)
/* 804093E4 003D29A4  90 03 00 08 */	stw r0, 8(r3)
/* 804093E8 003D29A8  90 03 00 0C */	stw r0, 0xc(r3)
/* 804093EC 003D29AC  4E 80 00 20 */	blr 

.global func_804093F0
func_804093F0:
/* 804093F0 003D29B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804093F4 003D29B4  7C 08 02 A6 */	mflr r0
/* 804093F8 003D29B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804093FC 003D29BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80409400 003D29C0  7C 7F 1B 78 */	mr r31, r3
/* 80409404 003D29C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80409408 003D29C8  3B C0 00 00 */	li r30, 0
/* 8040940C 003D29CC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80409410 003D29D0  7C 9D 23 78 */	mr r29, r4
/* 80409414 003D29D4  3C 80 52 4C */	lis r4, 0x524C414E@ha
/* 80409418 003D29D8  93 C3 00 00 */	stw r30, 0(r3)
/* 8040941C 003D29DC  38 84 41 4E */	addi r4, r4, 0x524C414E@l
/* 80409420 003D29E0  93 C3 00 04 */	stw r30, 4(r3)
/* 80409424 003D29E4  93 C3 00 08 */	stw r30, 8(r3)
/* 80409428 003D29E8  93 C3 00 0C */	stw r30, 0xc(r3)
/* 8040942C 003D29EC  7F A3 EB 78 */	mr r3, r29
/* 80409430 003D29F0  48 00 0C 51 */	bl func_8040A080
/* 80409434 003D29F4  2C 03 00 00 */	cmpwi r3, 0
/* 80409438 003D29F8  41 82 00 AC */	beq lbl_804094E4
/* 8040943C 003D29FC  A0 7D 00 06 */	lhz r3, 6(r29)
/* 80409440 003D2A00  54 60 C6 3F */	rlwinm. r0, r3, 0x18, 0x18, 0x1f
/* 80409444 003D2A04  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80409448 003D2A08  40 82 00 18 */	bne lbl_80409460
/* 8040944C 003D2A0C  28 00 00 08 */	cmplwi r0, 8
/* 80409450 003D2A10  41 80 00 10 */	blt lbl_80409460
/* 80409454 003D2A14  28 00 00 0A */	cmplwi r0, 0xa
/* 80409458 003D2A18  41 81 00 08 */	bgt lbl_80409460
/* 8040945C 003D2A1C  3B C0 00 01 */	li r30, 1
lbl_80409460:
/* 80409460 003D2A20  2C 1E 00 00 */	cmpwi r30, 0
/* 80409464 003D2A24  41 82 00 80 */	beq lbl_804094E4
/* 80409468 003D2A28  A0 1D 00 0C */	lhz r0, 0xc(r29)
/* 8040946C 003D2A2C  3C 60 70 61 */	lis r3, 0x70616931@ha
/* 80409470 003D2A30  93 BF 00 00 */	stw r29, 0(r31)
/* 80409474 003D2A34  38 C3 69 31 */	addi r6, r3, 0x70616931@l
/* 80409478 003D2A38  7C FD 02 14 */	add r7, r29, r0
/* 8040947C 003D2A3C  38 83 74 31 */	addi r4, r3, 0x7431
/* 80409480 003D2A40  38 A3 68 31 */	addi r5, r3, 0x6831
/* 80409484 003D2A44  39 00 00 00 */	li r8, 0
/* 80409488 003D2A48  48 00 00 4C */	b lbl_804094D4
lbl_8040948C:
/* 8040948C 003D2A4C  80 07 00 00 */	lwz r0, 0(r7)
/* 80409490 003D2A50  7C 00 30 00 */	cmpw r0, r6
/* 80409494 003D2A54  41 82 00 30 */	beq lbl_804094C4
/* 80409498 003D2A58  40 80 00 10 */	bge lbl_804094A8
/* 8040949C 003D2A5C  7C 00 28 00 */	cmpw r0, r5
/* 804094A0 003D2A60  41 82 00 1C */	beq lbl_804094BC
/* 804094A4 003D2A64  48 00 00 24 */	b lbl_804094C8
lbl_804094A8:
/* 804094A8 003D2A68  7C 00 20 00 */	cmpw r0, r4
/* 804094AC 003D2A6C  41 82 00 08 */	beq lbl_804094B4
/* 804094B0 003D2A70  48 00 00 18 */	b lbl_804094C8
lbl_804094B4:
/* 804094B4 003D2A74  90 FF 00 08 */	stw r7, 8(r31)
/* 804094B8 003D2A78  48 00 00 10 */	b lbl_804094C8
lbl_804094BC:
/* 804094BC 003D2A7C  90 FF 00 0C */	stw r7, 0xc(r31)
/* 804094C0 003D2A80  48 00 00 08 */	b lbl_804094C8
lbl_804094C4:
/* 804094C4 003D2A84  90 FF 00 04 */	stw r7, 4(r31)
lbl_804094C8:
/* 804094C8 003D2A88  80 07 00 04 */	lwz r0, 4(r7)
/* 804094CC 003D2A8C  39 08 00 01 */	addi r8, r8, 1
/* 804094D0 003D2A90  7C E7 02 14 */	add r7, r7, r0
lbl_804094D4:
/* 804094D4 003D2A94  80 7F 00 00 */	lwz r3, 0(r31)
/* 804094D8 003D2A98  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 804094DC 003D2A9C  7C 08 00 00 */	cmpw r8, r0
/* 804094E0 003D2AA0  41 80 FF AC */	blt lbl_8040948C
lbl_804094E4:
/* 804094E4 003D2AA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804094E8 003D2AA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804094EC 003D2AAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804094F0 003D2AB0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 804094F4 003D2AB4  7C 08 03 A6 */	mtlr r0
/* 804094F8 003D2AB8  38 21 00 20 */	addi r1, r1, 0x20
/* 804094FC 003D2ABC  4E 80 00 20 */	blr 

.global func_80409500
func_80409500:
/* 80409500 003D2AC0  80 63 00 08 */	lwz r3, 8(r3)
/* 80409504 003D2AC4  2C 03 00 00 */	cmpwi r3, 0
/* 80409508 003D2AC8  41 82 00 0C */	beq lbl_80409514
/* 8040950C 003D2ACC  A0 63 00 0A */	lhz r3, 0xa(r3)
/* 80409510 003D2AD0  4E 80 00 20 */	blr

.global lbl_80409514
lbl_80409514:
/* 80409514 003D2AD4  38 60 00 00 */	li r3, 0
/* 80409518 003D2AD8  4E 80 00 20 */	blr 

.global func_8040951C
func_8040951C:
/* 8040951C 003D2ADC  80 63 00 08 */	lwz r3, 8(r3)
/* 80409520 003D2AE0  2C 03 00 00 */	cmpwi r3, 0
/* 80409524 003D2AE4  41 82 00 10 */	beq lbl_80409534
/* 80409528 003D2AE8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8040952C 003D2AEC  7C 63 02 14 */	add r3, r3, r0
/* 80409530 003D2AF0  4E 80 00 20 */	blr

.global lbl_80409534
lbl_80409534:
/* 80409534 003D2AF4  38 60 00 00 */	li r3, 0
/* 80409538 003D2AF8  4E 80 00 20 */	blr 

.global func_8040953C
func_8040953C:
/* 8040953C 003D2AFC  80 63 00 08 */	lwz r3, 8(r3)
/* 80409540 003D2B00  2C 03 00 00 */	cmpwi r3, 0
/* 80409544 003D2B04  41 82 00 10 */	beq lbl_80409554
/* 80409548 003D2B08  88 03 00 18 */	lbz r0, 0x18(r3)
/* 8040954C 003D2B0C  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 80409550 003D2B10  4E 80 00 20 */	blr

.global lbl_80409554
lbl_80409554:
/* 80409554 003D2B14  38 60 00 00 */	li r3, 0
/* 80409558 003D2B18  4E 80 00 20 */	blr 

.global func_8040955C
func_8040955C:
/* 8040955C 003D2B1C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80409560 003D2B20  2C 03 00 00 */	cmpwi r3, 0
/* 80409564 003D2B24  41 82 00 0C */	beq lbl_80409570
/* 80409568 003D2B28  A0 63 00 0C */	lhz r3, 0xc(r3)
/* 8040956C 003D2B2C  4E 80 00 20 */	blr

.global lbl_80409570
lbl_80409570:
/* 80409570 003D2B30  38 60 00 00 */	li r3, 0
/* 80409574 003D2B34  4E 80 00 20 */	blr 

.global func_80409578
func_80409578:
/* 80409578 003D2B38  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8040957C 003D2B3C  2C 03 00 00 */	cmpwi r3, 0
/* 80409580 003D2B40  41 82 00 10 */	beq lbl_80409590
/* 80409584 003D2B44  80 03 00 08 */	lwz r0, 8(r3)
/* 80409588 003D2B48  7C 63 02 14 */	add r3, r3, r0
/* 8040958C 003D2B4C  4E 80 00 20 */	blr

.global lbl_80409590
lbl_80409590:
/* 80409590 003D2B50  38 60 00 00 */	li r3, 0
/* 80409594 003D2B54  4E 80 00 20 */	blr 

.global func_80409598
func_80409598:
/* 80409598 003D2B58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040959C 003D2B5C  7C 08 02 A6 */	mflr r0
/* 804095A0 003D2B60  90 01 00 24 */	stw r0, 0x24(r1)
/* 804095A4 003D2B64  39 61 00 20 */	addi r11, r1, 0x20
/* 804095A8 003D2B68  4B EB 0B A9 */	bl _savegpr_26
/* 804095AC 003D2B6C  80 C3 00 04 */	lwz r6, 4(r3)
/* 804095B0 003D2B70  7C 7A 1B 78 */	mr r26, r3
/* 804095B4 003D2B74  7C 9B 23 78 */	mr r27, r4
/* 804095B8 003D2B78  7C BC 2B 78 */	mr r28, r5
/* 804095BC 003D2B7C  80 06 00 10 */	lwz r0, 0x10(r6)
/* 804095C0 003D2B80  3B E0 00 00 */	li r31, 0
/* 804095C4 003D2B84  3B A0 00 00 */	li r29, 0
/* 804095C8 003D2B88  7F C6 02 14 */	add r30, r6, r0
/* 804095CC 003D2B8C  48 00 00 74 */	b lbl_80409640
lbl_804095D0:
/* 804095D0 003D2B90  57 A0 13 BA */	rlwinm r0, r29, 2, 0xe, 0x1d
/* 804095D4 003D2B94  7C 1E 00 2E */	lwzx r0, r30, r0
/* 804095D8 003D2B98  7C 84 02 14 */	add r4, r4, r0
/* 804095DC 003D2B9C  88 04 00 15 */	lbz r0, 0x15(r4)
/* 804095E0 003D2BA0  2C 00 00 00 */	cmpwi r0, 0
/* 804095E4 003D2BA4  40 82 00 2C */	bne lbl_80409610
/* 804095E8 003D2BA8  81 9B 00 00 */	lwz r12, 0(r27)
/* 804095EC 003D2BAC  7F 63 DB 78 */	mr r3, r27
/* 804095F0 003D2BB0  7F 85 E3 78 */	mr r5, r28
/* 804095F4 003D2BB4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 804095F8 003D2BB8  7D 89 03 A6 */	mtctr r12
/* 804095FC 003D2BBC  4E 80 04 21 */	bctrl 
/* 80409600 003D2BC0  2C 03 00 00 */	cmpwi r3, 0
/* 80409604 003D2BC4  41 82 00 38 */	beq lbl_8040963C
/* 80409608 003D2BC8  3B FF 00 01 */	addi r31, r31, 1
/* 8040960C 003D2BCC  48 00 00 30 */	b lbl_8040963C
lbl_80409610:
/* 80409610 003D2BD0  81 9B 00 00 */	lwz r12, 0(r27)
/* 80409614 003D2BD4  7F 63 DB 78 */	mr r3, r27
/* 80409618 003D2BD8  7F 85 E3 78 */	mr r5, r28
/* 8040961C 003D2BDC  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80409620 003D2BE0  7D 89 03 A6 */	mtctr r12
/* 80409624 003D2BE4  4E 80 04 21 */	bctrl 
/* 80409628 003D2BE8  2C 03 00 00 */	cmpwi r3, 0
/* 8040962C 003D2BEC  41 82 00 10 */	beq lbl_8040963C
/* 80409630 003D2BF0  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 80409634 003D2BF4  38 03 00 01 */	addi r0, r3, 1
/* 80409638 003D2BF8  54 1F 04 3E */	clrlwi r31, r0, 0x10
lbl_8040963C:
/* 8040963C 003D2BFC  3B BD 00 01 */	addi r29, r29, 1
lbl_80409640:
/* 80409640 003D2C00  80 9A 00 04 */	lwz r4, 4(r26)
/* 80409644 003D2C04  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 80409648 003D2C08  A0 04 00 0E */	lhz r0, 0xe(r4)
/* 8040964C 003D2C0C  7C 03 00 40 */	cmplw r3, r0
/* 80409650 003D2C10  41 80 FF 80 */	blt lbl_804095D0
/* 80409654 003D2C14  39 61 00 20 */	addi r11, r1, 0x20
/* 80409658 003D2C18  7F E3 FB 78 */	mr r3, r31
/* 8040965C 003D2C1C  4B EB 0B 41 */	bl _restgpr_26
/* 80409660 003D2C20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80409664 003D2C24  7C 08 03 A6 */	mtlr r0
/* 80409668 003D2C28  38 21 00 20 */	addi r1, r1, 0x20
/* 8040966C 003D2C2C  4E 80 00 20 */	blr 

.global func_80409670
func_80409670:
/* 80409670 003D2C30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80409674 003D2C34  7C 08 02 A6 */	mflr r0
/* 80409678 003D2C38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8040967C 003D2C3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80409680 003D2C40  4B EB 0A D5 */	bl _savegpr_27
/* 80409684 003D2C44  83 E4 00 10 */	lwz r31, 0x10(r4)
/* 80409688 003D2C48  7C 7B 1B 78 */	mr r27, r3
/* 8040968C 003D2C4C  7C BC 2B 78 */	mr r28, r5
/* 80409690 003D2C50  3B C4 00 10 */	addi r30, r4, 0x10
/* 80409694 003D2C54  3B A0 00 00 */	li r29, 0
/* 80409698 003D2C58  48 00 00 1C */	b lbl_804096B4
lbl_8040969C:
/* 8040969C 003D2C5C  80 9F 00 08 */	lwz r4, 8(r31)
/* 804096A0 003D2C60  7F 63 DB 78 */	mr r3, r27
/* 804096A4 003D2C64  7F 85 E3 78 */	mr r5, r28
/* 804096A8 003D2C68  4B FF FE F1 */	bl func_80409598
/* 804096AC 003D2C6C  7F BD 1A 14 */	add r29, r29, r3
/* 804096B0 003D2C70  83 FF 00 00 */	lwz r31, 0(r31)
lbl_804096B4:
/* 804096B4 003D2C74  7C 1F F0 40 */	cmplw r31, r30
/* 804096B8 003D2C78  40 82 FF E4 */	bne lbl_8040969C
/* 804096BC 003D2C7C  39 61 00 20 */	addi r11, r1, 0x20
/* 804096C0 003D2C80  7F A3 EB 78 */	mr r3, r29
/* 804096C4 003D2C84  4B EB 0A DD */	bl _restgpr_27
/* 804096C8 003D2C88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804096CC 003D2C8C  7C 08 03 A6 */	mtlr r0
/* 804096D0 003D2C90  38 21 00 20 */	addi r1, r1, 0x20
/* 804096D4 003D2C94  4E 80 00 20 */	blr 

.global func_804096D8
func_804096D8:
/* 804096D8 003D2C98  38 00 00 00 */	li r0, 0
/* 804096DC 003D2C9C  B0 03 00 12 */	sth r0, 0x12(r3)
/* 804096E0 003D2CA0  B0 03 00 10 */	sth r0, 0x10(r3)
/* 804096E4 003D2CA4  98 03 00 26 */	stb r0, 0x26(r3)
/* 804096E8 003D2CA8  B0 03 00 14 */	sth r0, 0x14(r3)
/* 804096EC 003D2CAC  B0 03 00 16 */	sth r0, 0x16(r3)
/* 804096F0 003D2CB0  B0 03 00 18 */	sth r0, 0x18(r3)
/* 804096F4 003D2CB4  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 804096F8 003D2CB8  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 804096FC 003D2CBC  B0 03 00 1E */	sth r0, 0x1e(r3)
/* 80409700 003D2CC0  B0 03 00 20 */	sth r0, 0x20(r3)
/* 80409704 003D2CC4  B0 03 00 22 */	sth r0, 0x22(r3)
/* 80409708 003D2CC8  B0 03 00 24 */	sth r0, 0x24(r3)
/* 8040970C 003D2CCC  4E 80 00 20 */	blr 

.global func_80409710
func_80409710:
/* 80409710 003D2CD0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80409714 003D2CD4  7C 08 02 A6 */	mflr r0
/* 80409718 003D2CD8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8040971C 003D2CDC  39 61 00 60 */	addi r11, r1, 0x60
/* 80409720 003D2CE0  4B EB 0A 11 */	bl _savegpr_18
/* 80409724 003D2CE4  83 25 00 04 */	lwz r25, 4(r5)
/* 80409728 003D2CE8  7C 72 1B 78 */	mr r18, r3
/* 8040972C 003D2CEC  7C 93 23 78 */	mr r19, r4
/* 80409730 003D2CF0  7C B4 2B 78 */	mr r20, r5
/* 80409734 003D2CF4  80 19 00 10 */	lwz r0, 0x10(r25)
/* 80409738 003D2CF8  3A A4 00 BC */	addi r21, r4, 0xbc
/* 8040973C 003D2CFC  3A C0 00 00 */	li r22, 0
/* 80409740 003D2D00  3B 80 00 00 */	li r28, 0
/* 80409744 003D2D04  7E F9 02 14 */	add r23, r25, r0
/* 80409748 003D2D08  48 00 00 34 */	b lbl_8040977C
lbl_8040974C:
/* 8040974C 003D2D0C  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 80409750 003D2D10  7C 17 00 2E */	lwzx r0, r23, r0
/* 80409754 003D2D14  7C 79 02 14 */	add r3, r25, r0
/* 80409758 003D2D18  88 03 00 15 */	lbz r0, 0x15(r3)
/* 8040975C 003D2D1C  2C 00 00 00 */	cmpwi r0, 0
/* 80409760 003D2D20  40 82 00 18 */	bne lbl_80409778
/* 80409764 003D2D24  7E A4 AB 78 */	mr r4, r21
/* 80409768 003D2D28  48 00 08 ED */	bl func_8040A054
/* 8040976C 003D2D2C  2C 03 00 00 */	cmpwi r3, 0
/* 80409770 003D2D30  41 82 00 08 */	beq lbl_80409778
/* 80409774 003D2D34  48 00 00 20 */	b lbl_80409794
lbl_80409778:
/* 80409778 003D2D38  3B 9C 00 01 */	addi r28, r28, 1
lbl_8040977C:
/* 8040977C 003D2D3C  A0 19 00 0E */	lhz r0, 0xe(r25)
/* 80409780 003D2D40  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 80409784 003D2D44  7C 03 00 40 */	cmplw r3, r0
/* 80409788 003D2D48  41 80 FF C4 */	blt lbl_8040974C
/* 8040978C 003D2D4C  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 80409790 003D2D50  3B 83 FF FF */	addi r28, r3, 0x0000FFFF@l
lbl_80409794:
/* 80409794 003D2D54  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 80409798 003D2D58  28 00 FF FF */	cmplwi r0, 0xffff
/* 8040979C 003D2D5C  41 82 00 08 */	beq lbl_804097A4
/* 804097A0 003D2D60  3A C0 00 01 */	li r22, 1
lbl_804097A4:
/* 804097A4 003D2D64  81 93 00 00 */	lwz r12, 0(r19)
/* 804097A8 003D2D68  7E 63 9B 78 */	mr r3, r19
/* 804097AC 003D2D6C  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 804097B0 003D2D70  7D 89 03 A6 */	mtctr r12
/* 804097B4 003D2D74  4E 80 04 21 */	bctrl 
/* 804097B8 003D2D78  7C 7D 1B 78 */	mr r29, r3
/* 804097BC 003D2D7C  3A E1 00 08 */	addi r23, r1, 8
/* 804097C0 003D2D80  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 804097C4 003D2D84  3A A0 00 00 */	li r21, 0
/* 804097C8 003D2D88  3F C0 00 01 */	lis r30, 1
/* 804097CC 003D2D8C  48 00 00 94 */	b lbl_80409860
lbl_804097D0:
/* 804097D0 003D2D90  81 93 00 00 */	lwz r12, 0(r19)
/* 804097D4 003D2D94  7E 63 9B 78 */	mr r3, r19
/* 804097D8 003D2D98  56 A4 06 3E */	clrlwi r4, r21, 0x18
/* 804097DC 003D2D9C  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 804097E0 003D2DA0  7D 89 03 A6 */	mtctr r12
/* 804097E4 003D2DA4  4E 80 04 21 */	bctrl 
/* 804097E8 003D2DA8  80 19 00 10 */	lwz r0, 0x10(r25)
/* 804097EC 003D2DAC  3B 03 00 44 */	addi r24, r3, 0x44
/* 804097F0 003D2DB0  3B 60 00 00 */	li r27, 0
/* 804097F4 003D2DB4  7F 59 02 14 */	add r26, r25, r0
/* 804097F8 003D2DB8  48 00 00 34 */	b lbl_8040982C
lbl_804097FC:
/* 804097FC 003D2DBC  57 60 13 BA */	rlwinm r0, r27, 2, 0xe, 0x1d
/* 80409800 003D2DC0  7C 1A 00 2E */	lwzx r0, r26, r0
/* 80409804 003D2DC4  7C 79 02 14 */	add r3, r25, r0
/* 80409808 003D2DC8  88 03 00 15 */	lbz r0, 0x15(r3)
/* 8040980C 003D2DCC  28 00 00 01 */	cmplwi r0, 1
/* 80409810 003D2DD0  40 82 00 18 */	bne lbl_80409828
/* 80409814 003D2DD4  7F 04 C3 78 */	mr r4, r24
/* 80409818 003D2DD8  48 00 08 3D */	bl func_8040A054
/* 8040981C 003D2DDC  2C 03 00 00 */	cmpwi r3, 0
/* 80409820 003D2DE0  41 82 00 08 */	beq lbl_80409828
/* 80409824 003D2DE4  48 00 00 1C */	b lbl_80409840
lbl_80409828:
/* 80409828 003D2DE8  3B 7B 00 01 */	addi r27, r27, 1
lbl_8040982C:
/* 8040982C 003D2DEC  A0 19 00 0E */	lhz r0, 0xe(r25)
/* 80409830 003D2DF0  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 80409834 003D2DF4  7C 03 00 40 */	cmplw r3, r0
/* 80409838 003D2DF8  41 80 FF C4 */	blt lbl_804097FC
/* 8040983C 003D2DFC  3B 7E FF FF */	addi r27, r30, -1
lbl_80409840:
/* 80409840 003D2E00  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 80409844 003D2E04  56 A3 0D FC */	rlwinm r3, r21, 1, 0x17, 0x1e
/* 80409848 003D2E08  28 00 FF FF */	cmplwi r0, 0xffff
/* 8040984C 003D2E0C  7F 77 1B 2E */	sthx r27, r23, r3
/* 80409850 003D2E10  41 82 00 0C */	beq lbl_8040985C
/* 80409854 003D2E14  38 16 00 01 */	addi r0, r22, 1
/* 80409858 003D2E18  54 16 04 3E */	clrlwi r22, r0, 0x10
lbl_8040985C:
/* 8040985C 003D2E1C  3A B5 00 01 */	addi r21, r21, 1
lbl_80409860:
/* 80409860 003D2E20  56 A0 06 3E */	clrlwi r0, r21, 0x18
/* 80409864 003D2E24  7C 00 F8 40 */	cmplw r0, r31
/* 80409868 003D2E28  41 80 FF 68 */	blt lbl_804097D0
/* 8040986C 003D2E2C  2C 16 00 00 */	cmpwi r22, 0
/* 80409870 003D2E30  41 82 00 E8 */	beq lbl_80409958
/* 80409874 003D2E34  80 D4 00 00 */	lwz r6, 0(r20)
/* 80409878 003D2E38  2C 1F 00 00 */	cmpwi r31, 0
/* 8040987C 003D2E3C  80 B4 00 04 */	lwz r5, 4(r20)
/* 80409880 003D2E40  38 60 00 00 */	li r3, 0
/* 80409884 003D2E44  80 94 00 08 */	lwz r4, 8(r20)
/* 80409888 003D2E48  80 14 00 0C */	lwz r0, 0xc(r20)
/* 8040988C 003D2E4C  90 D2 00 00 */	stw r6, 0(r18)
/* 80409890 003D2E50  90 B2 00 04 */	stw r5, 4(r18)
/* 80409894 003D2E54  90 92 00 08 */	stw r4, 8(r18)
/* 80409898 003D2E58  90 12 00 0C */	stw r0, 0xc(r18)
/* 8040989C 003D2E5C  B3 92 00 10 */	sth r28, 0x10(r18)
/* 804098A0 003D2E60  9B B2 00 26 */	stb r29, 0x26(r18)
/* 804098A4 003D2E64  41 82 00 B0 */	beq lbl_80409954
/* 804098A8 003D2E68  28 1F 00 08 */	cmplwi r31, 8
/* 804098AC 003D2E6C  38 1D 00 F8 */	addi r0, r29, 0xf8
/* 804098B0 003D2E70  40 81 00 70 */	ble lbl_80409920
/* 804098B4 003D2E74  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 804098B8 003D2E78  38 04 00 07 */	addi r0, r4, 7
/* 804098BC 003D2E7C  54 00 E8 FE */	srwi r0, r0, 3
/* 804098C0 003D2E80  7C 09 03 A6 */	mtctr r0
/* 804098C4 003D2E84  28 04 00 00 */	cmplwi r4, 0
/* 804098C8 003D2E88  40 81 00 58 */	ble lbl_80409920
lbl_804098CC:
/* 804098CC 003D2E8C  54 60 0D FC */	rlwinm r0, r3, 1, 0x17, 0x1e
/* 804098D0 003D2E90  38 A1 00 08 */	addi r5, r1, 8
/* 804098D4 003D2E94  7C 85 02 6E */	lhzux r4, r5, r0
/* 804098D8 003D2E98  7C D2 02 14 */	add r6, r18, r0
/* 804098DC 003D2E9C  38 63 00 08 */	addi r3, r3, 8
/* 804098E0 003D2EA0  B0 86 00 14 */	sth r4, 0x14(r6)
/* 804098E4 003D2EA4  A0 05 00 02 */	lhz r0, 2(r5)
/* 804098E8 003D2EA8  A0 85 00 04 */	lhz r4, 4(r5)
/* 804098EC 003D2EAC  B0 06 00 16 */	sth r0, 0x16(r6)
/* 804098F0 003D2EB0  A0 05 00 06 */	lhz r0, 6(r5)
/* 804098F4 003D2EB4  B0 86 00 18 */	sth r4, 0x18(r6)
/* 804098F8 003D2EB8  A0 85 00 08 */	lhz r4, 8(r5)
/* 804098FC 003D2EBC  B0 06 00 1A */	sth r0, 0x1a(r6)
/* 80409900 003D2EC0  A0 05 00 0A */	lhz r0, 0xa(r5)
/* 80409904 003D2EC4  B0 86 00 1C */	sth r4, 0x1c(r6)
/* 80409908 003D2EC8  A0 85 00 0C */	lhz r4, 0xc(r5)
/* 8040990C 003D2ECC  B0 06 00 1E */	sth r0, 0x1e(r6)
/* 80409910 003D2ED0  A0 05 00 0E */	lhz r0, 0xe(r5)
/* 80409914 003D2ED4  B0 86 00 20 */	sth r4, 0x20(r6)
/* 80409918 003D2ED8  B0 06 00 22 */	sth r0, 0x22(r6)
/* 8040991C 003D2EDC  42 00 FF B0 */	bdnz lbl_804098CC
lbl_80409920:
/* 80409920 003D2EE0  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 80409924 003D2EE4  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80409928 003D2EE8  7C 05 20 50 */	subf r0, r5, r4
/* 8040992C 003D2EEC  38 C1 00 08 */	addi r6, r1, 8
/* 80409930 003D2EF0  7C 09 03 A6 */	mtctr r0
/* 80409934 003D2EF4  7C 05 20 40 */	cmplw r5, r4
/* 80409938 003D2EF8  40 80 00 1C */	bge lbl_80409954
lbl_8040993C:
/* 8040993C 003D2EFC  54 64 0D FC */	rlwinm r4, r3, 1, 0x17, 0x1e
/* 80409940 003D2F00  38 63 00 01 */	addi r3, r3, 1
/* 80409944 003D2F04  7C 06 22 2E */	lhzx r0, r6, r4
/* 80409948 003D2F08  7C 92 22 14 */	add r4, r18, r4
/* 8040994C 003D2F0C  B0 04 00 14 */	sth r0, 0x14(r4)
/* 80409950 003D2F10  42 00 FF EC */	bdnz lbl_8040993C
lbl_80409954:
/* 80409954 003D2F14  B2 D2 00 12 */	sth r22, 0x12(r18)
lbl_80409958:
/* 80409958 003D2F18  39 61 00 60 */	addi r11, r1, 0x60
/* 8040995C 003D2F1C  4B EB 08 21 */	bl _restgpr_18
/* 80409960 003D2F20  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80409964 003D2F24  7C 08 03 A6 */	mtlr r0
/* 80409968 003D2F28  38 21 00 60 */	addi r1, r1, 0x60
/* 8040996C 003D2F2C  4E 80 00 20 */	blr 

.global func_80409970
func_80409970:
/* 80409970 003D2F30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80409974 003D2F34  7C 08 02 A6 */	mflr r0
/* 80409978 003D2F38  90 01 00 34 */	stw r0, 0x34(r1)
/* 8040997C 003D2F3C  39 61 00 30 */	addi r11, r1, 0x30
/* 80409980 003D2F40  4B EB 07 C9 */	bl _savegpr_24
/* 80409984 003D2F44  81 84 00 00 */	lwz r12, 0(r4)
/* 80409988 003D2F48  7C 7B 1B 78 */	mr r27, r3
/* 8040998C 003D2F4C  7C 83 23 78 */	mr r3, r4
/* 80409990 003D2F50  7C BC 2B 78 */	mr r28, r5
/* 80409994 003D2F54  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80409998 003D2F58  7C D8 33 78 */	mr r24, r6
/* 8040999C 003D2F5C  7D 89 03 A6 */	mtctr r12
/* 804099A0 003D2F60  4E 80 04 21 */	bctrl 
/* 804099A4 003D2F64  81 83 00 00 */	lwz r12, 0(r3)
/* 804099A8 003D2F68  7C 7F 1B 78 */	mr r31, r3
/* 804099AC 003D2F6C  7F 05 C3 78 */	mr r5, r24
/* 804099B0 003D2F70  80 9B 00 04 */	lwz r4, 4(r27)
/* 804099B4 003D2F74  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804099B8 003D2F78  A0 DB 00 12 */	lhz r6, 0x12(r27)
/* 804099BC 003D2F7C  7D 89 03 A6 */	mtctr r12
/* 804099C0 003D2F80  4E 80 04 21 */	bctrl 
/* 804099C4 003D2F84  A0 BB 00 10 */	lhz r5, 0x10(r27)
/* 804099C8 003D2F88  3B C0 00 00 */	li r30, 0
/* 804099CC 003D2F8C  28 05 FF FF */	cmplwi r5, 0xffff
/* 804099D0 003D2F90  41 82 00 78 */	beq lbl_80409A48
/* 804099D4 003D2F94  A0 1F 00 1C */	lhz r0, 0x1c(r31)
/* 804099D8 003D2F98  83 3F 00 18 */	lwz r25, 0x18(r31)
/* 804099DC 003D2F9C  54 00 20 36 */	slwi r0, r0, 4
/* 804099E0 003D2FA0  7C 79 02 14 */	add r3, r25, r0
/* 804099E4 003D2FA4  38 03 00 0F */	addi r0, r3, 0xf
/* 804099E8 003D2FA8  7C 19 00 50 */	subf r0, r25, r0
/* 804099EC 003D2FAC  54 00 E1 3E */	srwi r0, r0, 4
/* 804099F0 003D2FB0  7C 09 03 A6 */	mtctr r0
/* 804099F4 003D2FB4  7C 19 18 40 */	cmplw r25, r3
/* 804099F8 003D2FB8  40 80 00 1C */	bge lbl_80409A14
lbl_804099FC:
/* 804099FC 003D2FBC  80 19 00 08 */	lwz r0, 8(r25)
/* 80409A00 003D2FC0  2C 00 00 00 */	cmpwi r0, 0
/* 80409A04 003D2FC4  40 82 00 08 */	bne lbl_80409A0C
/* 80409A08 003D2FC8  48 00 00 10 */	b lbl_80409A18
lbl_80409A0C:
/* 80409A0C 003D2FCC  3B 39 00 10 */	addi r25, r25, 0x10
/* 80409A10 003D2FD0  42 00 FF EC */	bdnz lbl_804099FC
lbl_80409A14:
/* 80409A14 003D2FD4  3B 20 00 00 */	li r25, 0
lbl_80409A18:
/* 80409A18 003D2FD8  2C 19 00 00 */	cmpwi r25, 0
/* 80409A1C 003D2FDC  40 82 00 0C */	bne lbl_80409A28
/* 80409A20 003D2FE0  3B C0 00 00 */	li r30, 0
/* 80409A24 003D2FE4  48 00 00 24 */	b lbl_80409A48
lbl_80409A28:
/* 80409A28 003D2FE8  93 F9 00 08 */	stw r31, 8(r25)
/* 80409A2C 003D2FEC  38 00 00 01 */	li r0, 1
/* 80409A30 003D2FF0  7F 83 E3 78 */	mr r3, r28
/* 80409A34 003D2FF4  7F 24 CB 78 */	mr r4, r25
/* 80409A38 003D2FF8  B0 B9 00 0C */	sth r5, 0xc(r25)
/* 80409A3C 003D2FFC  98 19 00 0E */	stb r0, 0xe(r25)
/* 80409A40 003D3000  4B FF 5B 25 */	bl func_803FF564
/* 80409A44 003D3004  3B D9 00 10 */	addi r30, r25, 0x10
lbl_80409A48:
/* 80409A48 003D3008  81 9C 00 00 */	lwz r12, 0(r28)
/* 80409A4C 003D300C  7F 83 E3 78 */	mr r3, r28
/* 80409A50 003D3010  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 80409A54 003D3014  7D 89 03 A6 */	mtctr r12
/* 80409A58 003D3018  4E 80 04 21 */	bctrl 
/* 80409A5C 003D301C  88 9B 00 26 */	lbz r4, 0x26(r27)
/* 80409A60 003D3020  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80409A64 003D3024  7C 04 00 40 */	cmplw r4, r0
/* 80409A68 003D3028  40 81 00 08 */	ble lbl_80409A70
/* 80409A6C 003D302C  7C 64 1B 78 */	mr r4, r3
lbl_80409A70:
/* 80409A70 003D3030  54 9A 06 3E */	clrlwi r26, r4, 0x18
/* 80409A74 003D3034  3B A0 00 00 */	li r29, 0
/* 80409A78 003D3038  3B 20 00 01 */	li r25, 1
/* 80409A7C 003D303C  48 00 00 B0 */	b lbl_80409B2C
lbl_80409A80:
/* 80409A80 003D3040  57 A0 0D FC */	rlwinm r0, r29, 1, 0x17, 0x1e
/* 80409A84 003D3044  7F 1B 02 14 */	add r24, r27, r0
/* 80409A88 003D3048  A0 18 00 14 */	lhz r0, 0x14(r24)
/* 80409A8C 003D304C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80409A90 003D3050  41 82 00 98 */	beq lbl_80409B28
/* 80409A94 003D3054  81 9C 00 00 */	lwz r12, 0(r28)
/* 80409A98 003D3058  7F 83 E3 78 */	mr r3, r28
/* 80409A9C 003D305C  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 80409AA0 003D3060  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 80409AA4 003D3064  7D 89 03 A6 */	mtctr r12
/* 80409AA8 003D3068  4E 80 04 21 */	bctrl 
/* 80409AAC 003D306C  2C 1E 00 00 */	cmpwi r30, 0
/* 80409AB0 003D3070  A0 B8 00 14 */	lhz r5, 0x14(r24)
/* 80409AB4 003D3074  40 82 00 08 */	bne lbl_80409ABC
/* 80409AB8 003D3078  83 DF 00 18 */	lwz r30, 0x18(r31)
lbl_80409ABC:
/* 80409ABC 003D307C  A0 1F 00 1C */	lhz r0, 0x1c(r31)
/* 80409AC0 003D3080  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 80409AC4 003D3084  54 00 20 36 */	slwi r0, r0, 4
/* 80409AC8 003D3088  7C 84 02 14 */	add r4, r4, r0
/* 80409ACC 003D308C  38 04 00 0F */	addi r0, r4, 0xf
/* 80409AD0 003D3090  7C 1E 00 50 */	subf r0, r30, r0
/* 80409AD4 003D3094  54 00 E1 3E */	srwi r0, r0, 4
/* 80409AD8 003D3098  7C 09 03 A6 */	mtctr r0
/* 80409ADC 003D309C  7C 1E 20 40 */	cmplw r30, r4
/* 80409AE0 003D30A0  40 80 00 1C */	bge lbl_80409AFC
lbl_80409AE4:
/* 80409AE4 003D30A4  80 1E 00 08 */	lwz r0, 8(r30)
/* 80409AE8 003D30A8  2C 00 00 00 */	cmpwi r0, 0
/* 80409AEC 003D30AC  40 82 00 08 */	bne lbl_80409AF4
/* 80409AF0 003D30B0  48 00 00 10 */	b lbl_80409B00
lbl_80409AF4:
/* 80409AF4 003D30B4  3B DE 00 10 */	addi r30, r30, 0x10
/* 80409AF8 003D30B8  42 00 FF EC */	bdnz lbl_80409AE4
lbl_80409AFC:
/* 80409AFC 003D30BC  3B C0 00 00 */	li r30, 0
lbl_80409B00:
/* 80409B00 003D30C0  2C 1E 00 00 */	cmpwi r30, 0
/* 80409B04 003D30C4  40 82 00 0C */	bne lbl_80409B10
/* 80409B08 003D30C8  3B C0 00 00 */	li r30, 0
/* 80409B0C 003D30CC  48 00 00 1C */	b lbl_80409B28
lbl_80409B10:
/* 80409B10 003D30D0  93 FE 00 08 */	stw r31, 8(r30)
/* 80409B14 003D30D4  7F C4 F3 78 */	mr r4, r30
/* 80409B18 003D30D8  B0 BE 00 0C */	sth r5, 0xc(r30)
/* 80409B1C 003D30DC  9B 3E 00 0E */	stb r25, 0xe(r30)
/* 80409B20 003D30E0  4B FF E6 91 */	bl func_804081B0
/* 80409B24 003D30E4  3B DE 00 10 */	addi r30, r30, 0x10
lbl_80409B28:
/* 80409B28 003D30E8  3B BD 00 01 */	addi r29, r29, 1
lbl_80409B2C:
/* 80409B2C 003D30EC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80409B30 003D30F0  7C 00 D0 40 */	cmplw r0, r26
/* 80409B34 003D30F4  41 80 FF 4C */	blt lbl_80409A80
/* 80409B38 003D30F8  39 61 00 30 */	addi r11, r1, 0x30
/* 80409B3C 003D30FC  7F E3 FB 78 */	mr r3, r31
/* 80409B40 003D3100  4B EB 06 55 */	bl _restgpr_24
/* 80409B44 003D3104  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80409B48 003D3108  7C 08 03 A6 */	mtlr r0
/* 80409B4C 003D310C  38 21 00 30 */	addi r1, r1, 0x30
/* 80409B50 003D3110  4E 80 00 20 */	blr

.global lbl_80409B54
lbl_80409B54:
/* 80409B54 003D3114  80 A3 00 04 */	lwz r5, 4(r3)
/* 80409B58 003D3118  38 03 00 04 */	addi r0, r3, 4
/* 80409B5C 003D311C  48 00 00 1C */	b lbl_80409B78
lbl_80409B60:
/* 80409B60 003D3120  80 65 00 08 */	lwz r3, 8(r5)
/* 80409B64 003D3124  7C 04 18 40 */	cmplw r4, r3
/* 80409B68 003D3128  40 82 00 0C */	bne lbl_80409B74
/* 80409B6C 003D312C  7C A3 2B 78 */	mr r3, r5
/* 80409B70 003D3130  4E 80 00 20 */	blr

.global lbl_80409B74
lbl_80409B74:
/* 80409B74 003D3134  80 A5 00 00 */	lwz r5, 0(r5)
lbl_80409B78:
/* 80409B78 003D3138  7C 05 00 40 */	cmplw r5, r0
/* 80409B7C 003D313C  40 82 FF E4 */	bne lbl_80409B60
/* 80409B80 003D3140  38 60 00 00 */	li r3, 0
/* 80409B84 003D3144  4E 80 00 20 */	blr

.global lbl_80409B88
lbl_80409B88:
/* 80409B88 003D3148  80 A3 00 04 */	lwz r5, 4(r3)
/* 80409B8C 003D314C  38 03 00 04 */	addi r0, r3, 4
/* 80409B90 003D3150  48 00 00 24 */	b lbl_80409BB4
lbl_80409B94:
/* 80409B94 003D3154  80 65 00 08 */	lwz r3, 8(r5)
/* 80409B98 003D3158  80 C4 00 04 */	lwz r6, 4(r4)
/* 80409B9C 003D315C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80409BA0 003D3160  7C 06 18 40 */	cmplw r6, r3
/* 80409BA4 003D3164  40 82 00 0C */	bne lbl_80409BB0
/* 80409BA8 003D3168  7C A3 2B 78 */	mr r3, r5
/* 80409BAC 003D316C  4E 80 00 20 */	blr

.global lbl_80409BB0
lbl_80409BB0:
/* 80409BB0 003D3170  80 A5 00 00 */	lwz r5, 0(r5)
lbl_80409BB4:
/* 80409BB4 003D3174  7C 05 00 40 */	cmplw r5, r0
/* 80409BB8 003D3178  40 82 FF DC */	bne lbl_80409B94
/* 80409BBC 003D317C  38 60 00 00 */	li r3, 0
/* 80409BC0 003D3180  4E 80 00 20 */	blr 

.global func_80409BC4
func_80409BC4:
/* 80409BC4 003D3184  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80409BC8 003D3188  7C 08 02 A6 */	mflr r0
/* 80409BCC 003D318C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80409BD0 003D3190  39 61 00 30 */	addi r11, r1, 0x30
/* 80409BD4 003D3194  4B EB 05 7D */	bl _savegpr_26
/* 80409BD8 003D3198  83 E3 00 04 */	lwz r31, 4(r3)
/* 80409BDC 003D319C  7C 7A 1B 78 */	mr r26, r3
/* 80409BE0 003D31A0  7C 9B 23 78 */	mr r27, r4
/* 80409BE4 003D31A4  3B C3 00 04 */	addi r30, r3, 4
/* 80409BE8 003D31A8  3B A0 00 00 */	li r29, 0
/* 80409BEC 003D31AC  48 00 00 3C */	b lbl_80409C28
lbl_80409BF0:
/* 80409BF0 003D31B0  2C 1B 00 00 */	cmpwi r27, 0
/* 80409BF4 003D31B4  7F FC FB 78 */	mr r28, r31
/* 80409BF8 003D31B8  83 FF 00 00 */	lwz r31, 0(r31)
/* 80409BFC 003D31BC  41 82 00 10 */	beq lbl_80409C0C
/* 80409C00 003D31C0  80 1C 00 08 */	lwz r0, 8(r28)
/* 80409C04 003D31C4  7C 00 D8 40 */	cmplw r0, r27
/* 80409C08 003D31C8  40 82 00 20 */	bne lbl_80409C28
lbl_80409C0C:
/* 80409C0C 003D31CC  93 81 00 08 */	stw r28, 8(r1)
/* 80409C10 003D31D0  7F 43 D3 78 */	mr r3, r26
/* 80409C14 003D31D4  38 81 00 08 */	addi r4, r1, 8
/* 80409C18 003D31D8  48 02 18 7D */	bl func_8042B494
/* 80409C1C 003D31DC  93 BC 00 08 */	stw r29, 8(r28)
/* 80409C20 003D31E0  B3 BC 00 0C */	sth r29, 0xc(r28)
/* 80409C24 003D31E4  9B BC 00 0E */	stb r29, 0xe(r28)
lbl_80409C28:
/* 80409C28 003D31E8  7C 1F F0 40 */	cmplw r31, r30
/* 80409C2C 003D31EC  40 82 FF C4 */	bne lbl_80409BF0
/* 80409C30 003D31F0  39 61 00 30 */	addi r11, r1, 0x30
/* 80409C34 003D31F4  4B EB 05 69 */	bl _restgpr_26
/* 80409C38 003D31F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80409C3C 003D31FC  7C 08 03 A6 */	mtlr r0
/* 80409C40 003D3200  38 21 00 30 */	addi r1, r1, 0x30
/* 80409C44 003D3204  4E 80 00 20 */	blr 