.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_8018C5FC, global
/* 8018C5FC 00155BBC  C0 02 9F 70 */	lfs f0, float_8066A2F0@sda21(r2)
/* 8018C600 00155BC0  38 00 00 00 */	li r0, 0
/* 8018C604 00155BC4  90 03 00 00 */	stw r0, 0(r3)
/* 8018C608 00155BC8  D0 03 00 04 */	stfs f0, 4(r3)
/* 8018C60C 00155BCC  4E 80 00 20 */	blr 
.endfn func_8018C5FC

.fn func_8018C610, global
/* 8018C610 00155BD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8018C614 00155BD4  7C 08 02 A6 */	mflr r0
/* 8018C618 00155BD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8018C61C 00155BDC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8018C620 00155BE0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8018C624 00155BE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018C628 00155BE8  7C 7F 1B 78 */	mr r31, r3
/* 8018C62C 00155BEC  38 60 33 57 */	li r3, 0x3357
/* 8018C630 00155BF0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8018C634 00155BF4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8018C638 00155BF8  93 81 00 10 */	stw r28, 0x10(r1)
/* 8018C63C 00155BFC  4B F1 09 51 */	bl func_8009CF8C
/* 8018C640 00155C00  7C 60 00 34 */	cntlzw r0, r3
/* 8018C644 00155C04  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 8018C648 00155C08  40 82 01 B0 */	bne .L_8018C7F8
/* 8018C64C 00155C0C  4B EF 63 6D */	bl func_800829B8
/* 8018C650 00155C10  2C 03 00 00 */	cmpwi r3, 0
/* 8018C654 00155C14  40 82 01 A4 */	bne .L_8018C7F8
/* 8018C658 00155C18  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 8018C65C 00155C1C  74 00 AF A4 */	andis. r0, r0, 0xafa4
/* 8018C660 00155C20  40 82 01 98 */	bne .L_8018C7F8
/* 8018C664 00155C24  80 6D A5 94 */	lwz r3, lbl_80666714@sda21(r13)
/* 8018C668 00155C28  48 30 9C 21 */	bl func_80496288
/* 8018C66C 00155C2C  FF E0 08 90 */	fmr f31, f1
/* 8018C670 00155C30  48 2B BD A5 */	bl func_80448414__9CDeviceVIFv
/* 8018C674 00155C34  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8018C678 00155C38  C0 02 9F 74 */	lfs f0, float_8066A2F4@sda21(r2)
/* 8018C67C 00155C3C  EC 21 17 FA */	fmadds f1, f1, f31, f2
/* 8018C680 00155C40  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8018C684 00155C44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8018C688 00155C48  4C 41 13 82 */	cror 2, 1, 2
/* 8018C68C 00155C4C  40 82 01 6C */	bne .L_8018C7F8
/* 8018C690 00155C50  C0 02 9F 70 */	lfs f0, float_8066A2F0@sda21(r2)
/* 8018C694 00155C54  3B 80 00 00 */	li r28, 0
/* 8018C698 00155C58  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8018C69C 00155C5C  4B F4 CA ED */	bl getInstance__Q22cf14CBattleManagerFv
/* 8018C6A0 00155C60  80 A3 00 08 */	lwz r5, 8(r3)
/* 8018C6A4 00155C64  38 80 00 00 */	li r4, 0
/* 8018C6A8 00155C68  80 65 00 00 */	lwz r3, 0(r5)
/* 8018C6AC 00155C6C  48 00 00 0C */	b .L_8018C6B8
.L_8018C6B0:
/* 8018C6B0 00155C70  80 63 00 00 */	lwz r3, 0(r3)
/* 8018C6B4 00155C74  38 84 00 01 */	addi r4, r4, 1
.L_8018C6B8:
/* 8018C6B8 00155C78  7C 03 28 40 */	cmplw r3, r5
/* 8018C6BC 00155C7C  40 82 FF F4 */	bne .L_8018C6B0
/* 8018C6C0 00155C80  2C 04 00 00 */	cmpwi r4, 0
/* 8018C6C4 00155C84  40 82 00 9C */	bne .L_8018C760
/* 8018C6C8 00155C88  4B F2 A4 DD */	bl func_800B6BA4__Fv
/* 8018C6CC 00155C8C  80 83 00 04 */	lwz r4, 4(r3)
/* 8018C6D0 00155C90  7C 7E 1B 78 */	mr r30, r3
/* 8018C6D4 00155C94  83 84 00 00 */	lwz r28, 0(r4)
/* 8018C6D8 00155C98  48 00 00 68 */	b .L_8018C740
.L_8018C6DC:
/* 8018C6DC 00155C9C  83 BC 00 08 */	lwz r29, 8(r28)
/* 8018C6E0 00155CA0  2C 1D 00 00 */	cmpwi r29, 0
/* 8018C6E4 00155CA4  41 82 00 08 */	beq .L_8018C6EC
/* 8018C6E8 00155CA8  3B BD C1 64 */	addi r29, r29, -16028
.L_8018C6EC:
/* 8018C6EC 00155CAC  81 9D 00 00 */	lwz r12, 0(r29)
/* 8018C6F0 00155CB0  7F A3 EB 78 */	mr r3, r29
/* 8018C6F4 00155CB4  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 8018C6F8 00155CB8  7D 89 03 A6 */	mtctr r12
/* 8018C6FC 00155CBC  4E 80 04 21 */	bctrl 
/* 8018C700 00155CC0  2C 03 00 00 */	cmpwi r3, 0
/* 8018C704 00155CC4  41 82 00 24 */	beq .L_8018C728
/* 8018C708 00155CC8  81 9D 00 00 */	lwz r12, 0(r29)
/* 8018C70C 00155CCC  7F A3 EB 78 */	mr r3, r29
/* 8018C710 00155CD0  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 8018C714 00155CD4  7D 89 03 A6 */	mtctr r12
/* 8018C718 00155CD8  4E 80 04 21 */	bctrl 
/* 8018C71C 00155CDC  38 80 00 69 */	li r4, 0x69
/* 8018C720 00155CE0  48 0D 50 6D */	bl func_8026178C
/* 8018C724 00155CE4  48 00 00 08 */	b .L_8018C72C
.L_8018C728:
/* 8018C728 00155CE8  38 60 00 00 */	li r3, 0
.L_8018C72C:
/* 8018C72C 00155CEC  2C 03 00 00 */	cmpwi r3, 0
/* 8018C730 00155CF0  41 82 00 0C */	beq .L_8018C73C
/* 8018C734 00155CF4  38 00 00 01 */	li r0, 1
/* 8018C738 00155CF8  48 00 00 18 */	b .L_8018C750
.L_8018C73C:
/* 8018C73C 00155CFC  83 9C 00 00 */	lwz r28, 0(r28)
.L_8018C740:
/* 8018C740 00155D00  80 1E 00 04 */	lwz r0, 4(r30)
/* 8018C744 00155D04  7C 1C 00 40 */	cmplw r28, r0
/* 8018C748 00155D08  40 82 FF 94 */	bne .L_8018C6DC
/* 8018C74C 00155D0C  38 00 00 00 */	li r0, 0
.L_8018C750:
/* 8018C750 00155D10  2C 00 00 00 */	cmpwi r0, 0
/* 8018C754 00155D14  3B 80 FF FE */	li r28, -2
/* 8018C758 00155D18  41 82 00 08 */	beq .L_8018C760
/* 8018C75C 00155D1C  3B 80 FF FF */	li r28, -1
.L_8018C760:
/* 8018C760 00155D20  2C 1C 00 00 */	cmpwi r28, 0
/* 8018C764 00155D24  41 82 00 94 */	beq .L_8018C7F8
/* 8018C768 00155D28  80 1F 00 00 */	lwz r0, 0(r31)
/* 8018C76C 00155D2C  38 60 33 57 */	li r3, 0x3357
/* 8018C770 00155D30  7F A0 E2 14 */	add r29, r0, r28
/* 8018C774 00155D34  4B F1 08 19 */	bl func_8009CF8C
/* 8018C778 00155D38  7C 60 00 34 */	cntlzw r0, r3
/* 8018C77C 00155D3C  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 8018C780 00155D40  40 82 00 78 */	bne .L_8018C7F8
/* 8018C784 00155D44  83 DF 00 00 */	lwz r30, 0(r31)
/* 8018C788 00155D48  2C 1D 00 00 */	cmpwi r29, 0
/* 8018C78C 00155D4C  93 BF 00 00 */	stw r29, 0(r31)
/* 8018C790 00155D50  40 80 00 10 */	bge .L_8018C7A0
/* 8018C794 00155D54  38 00 00 00 */	li r0, 0
/* 8018C798 00155D58  90 1F 00 00 */	stw r0, 0(r31)
/* 8018C79C 00155D5C  48 00 00 14 */	b .L_8018C7B0
.L_8018C7A0:
/* 8018C7A0 00155D60  2C 1D 01 2C */	cmpwi r29, 0x12c
/* 8018C7A4 00155D64  40 81 00 0C */	ble .L_8018C7B0
/* 8018C7A8 00155D68  38 00 01 2C */	li r0, 0x12c
/* 8018C7AC 00155D6C  90 1F 00 00 */	stw r0, 0(r31)
.L_8018C7B0:
/* 8018C7B0 00155D70  80 7F 00 00 */	lwz r3, 0(r31)
/* 8018C7B4 00155D74  7F C4 F3 78 */	mr r4, r30
/* 8018C7B8 00155D78  48 11 61 85 */	bl func_802A293C
/* 8018C7BC 00155D7C  2C 1E 00 64 */	cmpwi r30, 0x64
/* 8018C7C0 00155D80  80 1F 00 00 */	lwz r0, 0(r31)
/* 8018C7C4 00155D84  40 80 00 0C */	bge .L_8018C7D0
/* 8018C7C8 00155D88  2C 00 00 64 */	cmpwi r0, 0x64
/* 8018C7CC 00155D8C  40 80 00 14 */	bge .L_8018C7E0
.L_8018C7D0:
/* 8018C7D0 00155D90  2C 1E 00 C8 */	cmpwi r30, 0xc8
/* 8018C7D4 00155D94  40 80 00 24 */	bge .L_8018C7F8
/* 8018C7D8 00155D98  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 8018C7DC 00155D9C  41 80 00 1C */	blt .L_8018C7F8
.L_8018C7E0:
/* 8018C7E0 00155DA0  C0 22 9F 78 */	lfs f1, float_8066A2F8@sda21(r2)
/* 8018C7E4 00155DA4  38 60 00 00 */	li r3, 0
/* 8018C7E8 00155DA8  38 80 00 64 */	li r4, 0x64
/* 8018C7EC 00155DAC  38 A0 00 00 */	li r5, 0
/* 8018C7F0 00155DB0  38 C0 00 00 */	li r6, 0
/* 8018C7F4 00155DB4  48 03 34 45 */	bl func_801BFC38
.L_8018C7F8:
/* 8018C7F8 00155DB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8018C7FC 00155DBC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8018C800 00155DC0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8018C804 00155DC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018C808 00155DC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8018C80C 00155DCC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8018C810 00155DD0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8018C814 00155DD4  7C 08 03 A6 */	mtlr r0
/* 8018C818 00155DD8  38 21 00 30 */	addi r1, r1, 0x30
/* 8018C81C 00155DDC  4E 80 00 20 */	blr 
.endfn func_8018C610

.fn func_8018C820, global
/* 8018C820 00155DE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018C824 00155DE4  7C 08 02 A6 */	mflr r0
/* 8018C828 00155DE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018C82C 00155DEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018C830 00155DF0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8018C834 00155DF4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8018C838 00155DF8  7C 7D 1B 78 */	mr r29, r3
/* 8018C83C 00155DFC  80 03 00 00 */	lwz r0, 0(r3)
/* 8018C840 00155E00  38 60 33 57 */	li r3, 0x3357
/* 8018C844 00155E04  7F E0 22 14 */	add r31, r0, r4
/* 8018C848 00155E08  4B F1 07 45 */	bl func_8009CF8C
/* 8018C84C 00155E0C  7C 60 00 34 */	cntlzw r0, r3
/* 8018C850 00155E10  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 8018C854 00155E14  41 82 00 0C */	beq .L_8018C860
/* 8018C858 00155E18  80 7D 00 00 */	lwz r3, 0(r29)
/* 8018C85C 00155E1C  48 00 00 7C */	b .L_8018C8D8
.L_8018C860:
/* 8018C860 00155E20  83 DD 00 00 */	lwz r30, 0(r29)
/* 8018C864 00155E24  2C 1F 00 00 */	cmpwi r31, 0
/* 8018C868 00155E28  93 FD 00 00 */	stw r31, 0(r29)
/* 8018C86C 00155E2C  40 80 00 10 */	bge .L_8018C87C
/* 8018C870 00155E30  38 00 00 00 */	li r0, 0
/* 8018C874 00155E34  90 1D 00 00 */	stw r0, 0(r29)
/* 8018C878 00155E38  48 00 00 14 */	b .L_8018C88C
.L_8018C87C:
/* 8018C87C 00155E3C  2C 1F 01 2C */	cmpwi r31, 0x12c
/* 8018C880 00155E40  40 81 00 0C */	ble .L_8018C88C
/* 8018C884 00155E44  38 00 01 2C */	li r0, 0x12c
/* 8018C888 00155E48  90 1D 00 00 */	stw r0, 0(r29)
.L_8018C88C:
/* 8018C88C 00155E4C  80 7D 00 00 */	lwz r3, 0(r29)
/* 8018C890 00155E50  7F C4 F3 78 */	mr r4, r30
/* 8018C894 00155E54  48 11 60 A9 */	bl func_802A293C
/* 8018C898 00155E58  2C 1E 00 64 */	cmpwi r30, 0x64
/* 8018C89C 00155E5C  80 1D 00 00 */	lwz r0, 0(r29)
/* 8018C8A0 00155E60  40 80 00 0C */	bge .L_8018C8AC
/* 8018C8A4 00155E64  2C 00 00 64 */	cmpwi r0, 0x64
/* 8018C8A8 00155E68  40 80 00 14 */	bge .L_8018C8BC
.L_8018C8AC:
/* 8018C8AC 00155E6C  2C 1E 00 C8 */	cmpwi r30, 0xc8
/* 8018C8B0 00155E70  40 80 00 24 */	bge .L_8018C8D4
/* 8018C8B4 00155E74  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 8018C8B8 00155E78  41 80 00 1C */	blt .L_8018C8D4
.L_8018C8BC:
/* 8018C8BC 00155E7C  C0 22 9F 78 */	lfs f1, float_8066A2F8@sda21(r2)
/* 8018C8C0 00155E80  38 60 00 00 */	li r3, 0
/* 8018C8C4 00155E84  38 80 00 64 */	li r4, 0x64
/* 8018C8C8 00155E88  38 A0 00 00 */	li r5, 0
/* 8018C8CC 00155E8C  38 C0 00 00 */	li r6, 0
/* 8018C8D0 00155E90  48 03 33 69 */	bl func_801BFC38
.L_8018C8D4:
/* 8018C8D4 00155E94  80 7D 00 00 */	lwz r3, 0(r29)
.L_8018C8D8:
/* 8018C8D8 00155E98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018C8DC 00155E9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018C8E0 00155EA0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8018C8E4 00155EA4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8018C8E8 00155EA8  7C 08 03 A6 */	mtlr r0
/* 8018C8EC 00155EAC  38 21 00 20 */	addi r1, r1, 0x20
/* 8018C8F0 00155EB0  4E 80 00 20 */	blr 
.endfn func_8018C820

.fn func_8018C8F4, global
/* 8018C8F4 00155EB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018C8F8 00155EB8  7C 08 02 A6 */	mflr r0
/* 8018C8FC 00155EBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018C900 00155EC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018C904 00155EC4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8018C908 00155EC8  7C 9E 23 78 */	mr r30, r4
/* 8018C90C 00155ECC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8018C910 00155ED0  7C 7D 1B 78 */	mr r29, r3
/* 8018C914 00155ED4  38 60 33 57 */	li r3, 0x3357
/* 8018C918 00155ED8  4B F1 06 75 */	bl func_8009CF8C
/* 8018C91C 00155EDC  7C 60 00 34 */	cntlzw r0, r3
/* 8018C920 00155EE0  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 8018C924 00155EE4  41 82 00 0C */	beq .L_8018C930
/* 8018C928 00155EE8  80 7D 00 00 */	lwz r3, 0(r29)
/* 8018C92C 00155EEC  48 00 00 7C */	b .L_8018C9A8
.L_8018C930:
/* 8018C930 00155EF0  83 FD 00 00 */	lwz r31, 0(r29)
/* 8018C934 00155EF4  2C 1E 00 00 */	cmpwi r30, 0
/* 8018C938 00155EF8  93 DD 00 00 */	stw r30, 0(r29)
/* 8018C93C 00155EFC  40 80 00 10 */	bge .L_8018C94C
/* 8018C940 00155F00  38 00 00 00 */	li r0, 0
/* 8018C944 00155F04  90 1D 00 00 */	stw r0, 0(r29)
/* 8018C948 00155F08  48 00 00 14 */	b .L_8018C95C
.L_8018C94C:
/* 8018C94C 00155F0C  2C 1E 01 2C */	cmpwi r30, 0x12c
/* 8018C950 00155F10  40 81 00 0C */	ble .L_8018C95C
/* 8018C954 00155F14  38 00 01 2C */	li r0, 0x12c
/* 8018C958 00155F18  90 1D 00 00 */	stw r0, 0(r29)
.L_8018C95C:
/* 8018C95C 00155F1C  80 7D 00 00 */	lwz r3, 0(r29)
/* 8018C960 00155F20  7F E4 FB 78 */	mr r4, r31
/* 8018C964 00155F24  48 11 5F D9 */	bl func_802A293C
/* 8018C968 00155F28  2C 1F 00 64 */	cmpwi r31, 0x64
/* 8018C96C 00155F2C  80 1D 00 00 */	lwz r0, 0(r29)
/* 8018C970 00155F30  40 80 00 0C */	bge .L_8018C97C
/* 8018C974 00155F34  2C 00 00 64 */	cmpwi r0, 0x64
/* 8018C978 00155F38  40 80 00 14 */	bge .L_8018C98C
.L_8018C97C:
/* 8018C97C 00155F3C  2C 1F 00 C8 */	cmpwi r31, 0xc8
/* 8018C980 00155F40  40 80 00 24 */	bge .L_8018C9A4
/* 8018C984 00155F44  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 8018C988 00155F48  41 80 00 1C */	blt .L_8018C9A4
.L_8018C98C:
/* 8018C98C 00155F4C  C0 22 9F 78 */	lfs f1, float_8066A2F8@sda21(r2)
/* 8018C990 00155F50  38 60 00 00 */	li r3, 0
/* 8018C994 00155F54  38 80 00 64 */	li r4, 0x64
/* 8018C998 00155F58  38 A0 00 00 */	li r5, 0
/* 8018C99C 00155F5C  38 C0 00 00 */	li r6, 0
/* 8018C9A0 00155F60  48 03 32 99 */	bl func_801BFC38
.L_8018C9A4:
/* 8018C9A4 00155F64  80 7D 00 00 */	lwz r3, 0(r29)
.L_8018C9A8:
/* 8018C9A8 00155F68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018C9AC 00155F6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018C9B0 00155F70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8018C9B4 00155F74  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8018C9B8 00155F78  7C 08 03 A6 */	mtlr r0
/* 8018C9BC 00155F7C  38 21 00 20 */	addi r1, r1, 0x20
/* 8018C9C0 00155F80  4E 80 00 20 */	blr 
.endfn func_8018C8F4


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066A2F0, global
	.float 0
.endobj float_8066A2F0


.obj float_8066A2F4, global
	.float 1.0
.endobj float_8066A2F4


.obj float_8066A2F8, global
	.float 0.6
	.4byte 0
.endobj float_8066A2F8


.section extab, "a" # 0x800066E0 - 0x80021020

.obj "@etb_8000EFC8", local
.hidden "@etb_8000EFC8"
	.4byte 0x204A0000
	.4byte 0x00000000
.endobj "@etb_8000EFC8"

.obj "@etb_8000EFD0", local
.hidden "@etb_8000EFD0"
	.4byte 0x180A0000
	.4byte 0x00000000
.endobj "@etb_8000EFD0"

.obj "@etb_8000EFD8", local
.hidden "@etb_8000EFD8"
	.4byte 0x180A0000
	.4byte 0x00000000
.endobj "@etb_8000EFD8"

.section extabindex, "a" # 0x80021020 - 0x80039220

.obj "@eti_80029D68", local
.hidden "@eti_80029D68"
	.4byte func_8018C610
	.4byte 0x00000210
	.4byte "@etb_8000EFC8"
.endobj "@eti_80029D68"

.obj "@eti_80029D74", local
.hidden "@eti_80029D74"
	.4byte func_8018C820
	.4byte 0x000000D4
	.4byte "@etb_8000EFD0"
.endobj "@eti_80029D74"

.obj "@eti_80029D80", local
.hidden "@eti_80029D80"
	.4byte func_8018C8F4
	.4byte 0x000000D0
	.4byte "@etb_8000EFD8"
.endobj "@eti_80029D80"
