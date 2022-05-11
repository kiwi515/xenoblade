.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_80313D70
func_80313D70:
/* 80313D70 002DD330  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80313D74 002DD334  7C 08 02 A6 */	mflr r0
/* 80313D78 002DD338  90 01 00 24 */	stw r0, 0x24(r1)
/* 80313D7C 002DD33C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80313D80 002DD340  80 0D B7 48 */	lwz r0, lbl_806678C8@sda21(r13)
/* 80313D84 002DD344  2C 00 00 00 */	cmpwi r0, 0
/* 80313D88 002DD348  41 82 00 0C */	beq lbl_80313D94
/* 80313D8C 002DD34C  38 60 00 01 */	li r3, 1
/* 80313D90 002DD350  48 00 00 C8 */	b lbl_80313E58
lbl_80313D94:
/* 80313D94 002DD354  48 03 DC 8D */	bl OSGetConsoleType
/* 80313D98 002DD358  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 80313D9C 002DD35C  40 82 00 14 */	bne lbl_80313DB0
/* 80313DA0 002DD360  38 00 00 02 */	li r0, 2
/* 80313DA4 002DD364  90 0D B7 4C */	stw r0, lbl_806678CC@sda21(r13)
/* 80313DA8 002DD368  38 60 00 00 */	li r3, 0
/* 80313DAC 002DD36C  48 00 00 AC */	b lbl_80313E58
lbl_80313DB0:
/* 80313DB0 002DD370  48 04 4C 01 */	bl OSDisableInterrupts
/* 80313DB4 002DD374  38 00 00 F2 */	li r0, 0xf2
/* 80313DB8 002DD378  98 01 00 08 */	stb r0, 8(r1)
/* 80313DBC 002DD37C  7C 7F 1B 78 */	mr r31, r3
/* 80313DC0 002DD380  38 C1 00 08 */	addi r6, r1, 8
/* 80313DC4 002DD384  38 60 00 00 */	li r3, 0
/* 80313DC8 002DD388  38 80 00 01 */	li r4, 1
/* 80313DCC 002DD38C  3C A0 B0 00 */	lis r5, 0xb000
/* 80313DD0 002DD390  38 E0 00 01 */	li r7, 1
/* 80313DD4 002DD394  48 00 1F 5D */	bl func_80315D30
/* 80313DD8 002DD398  2C 03 00 00 */	cmpwi r3, 0
/* 80313DDC 002DD39C  40 82 00 1C */	bne lbl_80313DF8
/* 80313DE0 002DD3A0  38 00 00 05 */	li r0, 5
/* 80313DE4 002DD3A4  90 0D B7 4C */	stw r0, lbl_806678CC@sda21(r13)
/* 80313DE8 002DD3A8  7F E3 FB 78 */	mr r3, r31
/* 80313DEC 002DD3AC  48 04 4C 05 */	bl OSRestoreInterrupts
/* 80313DF0 002DD3B0  38 60 00 00 */	li r3, 0
/* 80313DF4 002DD3B4  48 00 00 64 */	b lbl_80313E58
lbl_80313DF8:
/* 80313DF8 002DD3B8  38 00 00 F3 */	li r0, 0xf3
/* 80313DFC 002DD3BC  98 01 00 08 */	stb r0, 8(r1)
/* 80313E00 002DD3C0  38 C1 00 08 */	addi r6, r1, 8
/* 80313E04 002DD3C4  38 60 00 00 */	li r3, 0
/* 80313E08 002DD3C8  38 80 00 01 */	li r4, 1
/* 80313E0C 002DD3CC  3C A0 B0 00 */	lis r5, 0xb000
/* 80313E10 002DD3D0  38 E0 00 01 */	li r7, 1
/* 80313E14 002DD3D4  48 00 1F 1D */	bl func_80315D30
/* 80313E18 002DD3D8  2C 03 00 00 */	cmpwi r3, 0
/* 80313E1C 002DD3DC  40 82 00 1C */	bne lbl_80313E38
/* 80313E20 002DD3E0  38 00 00 05 */	li r0, 5
/* 80313E24 002DD3E4  90 0D B7 4C */	stw r0, lbl_806678CC@sda21(r13)
/* 80313E28 002DD3E8  7F E3 FB 78 */	mr r3, r31
/* 80313E2C 002DD3EC  48 04 4B C5 */	bl OSRestoreInterrupts
/* 80313E30 002DD3F0  38 60 00 00 */	li r3, 0
/* 80313E34 002DD3F4  48 00 00 24 */	b lbl_80313E58
lbl_80313E38:
/* 80313E38 002DD3F8  7F E3 FB 78 */	mr r3, r31
/* 80313E3C 002DD3FC  48 04 4B B5 */	bl OSRestoreInterrupts
/* 80313E40 002DD400  38 00 00 00 */	li r0, 0
/* 80313E44 002DD404  38 60 00 01 */	li r3, 1
/* 80313E48 002DD408  90 6D B7 48 */	stw r3, lbl_806678C8@sda21(r13)
/* 80313E4C 002DD40C  38 60 00 01 */	li r3, 1
/* 80313E50 002DD410  90 0D B7 4C */	stw r0, lbl_806678CC@sda21(r13)
/* 80313E54 002DD414  90 0D B7 50 */	stw r0, lbl_806678D0@sda21(r13)
lbl_80313E58:
/* 80313E58 002DD418  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80313E5C 002DD41C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80313E60 002DD420  7C 08 03 A6 */	mtlr r0
/* 80313E64 002DD424  38 21 00 20 */	addi r1, r1, 0x20
/* 80313E68 002DD428  4E 80 00 20 */	blr 
/* 80313E6C 002DD42C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_80313E70
func_80313E70:
/* 80313E70 002DD430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80313E74 002DD434  7C 08 02 A6 */	mflr r0
/* 80313E78 002DD438  90 01 00 14 */	stw r0, 0x14(r1)
/* 80313E7C 002DD43C  48 03 DB A5 */	bl OSGetConsoleType
/* 80313E80 002DD440  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 80313E84 002DD444  40 82 00 14 */	bne lbl_80313E98
/* 80313E88 002DD448  38 00 00 00 */	li r0, 0
/* 80313E8C 002DD44C  90 0D B7 54 */	stw r0, lbl_806678D4@sda21(r13)
/* 80313E90 002DD450  38 60 00 02 */	li r3, 2
/* 80313E94 002DD454  48 00 00 14 */	b lbl_80313EA8
lbl_80313E98:
/* 80313E98 002DD458  3C 80 A5 FF */	lis r4, 0xA5FF005A@ha
/* 80313E9C 002DD45C  38 60 00 00 */	li r3, 0
/* 80313EA0 002DD460  38 04 00 5A */	addi r0, r4, 0xA5FF005A@l
/* 80313EA4 002DD464  90 0D B7 54 */	stw r0, lbl_806678D4@sda21(r13)
lbl_80313EA8:
/* 80313EA8 002DD468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80313EAC 002DD46C  7C 08 03 A6 */	mtlr r0
/* 80313EB0 002DD470  38 21 00 10 */	addi r1, r1, 0x10
/* 80313EB4 002DD474  4E 80 00 20 */	blr 
/* 80313EB8 002DD478  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80313EBC 002DD47C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_80313EC0
func_80313EC0:
/* 80313EC0 002DD480  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80313EC4 002DD484  7C 08 02 A6 */	mflr r0
/* 80313EC8 002DD488  90 01 00 34 */	stw r0, 0x34(r1)
/* 80313ECC 002DD48C  39 61 00 30 */	addi r11, r1, 0x30
/* 80313ED0 002DD490  4B FA 62 81 */	bl _savegpr_26
/* 80313ED4 002DD494  80 AD B7 54 */	lwz r5, lbl_806678D4@sda21(r13)
/* 80313ED8 002DD498  7C 7E 1B 78 */	mr r30, r3
/* 80313EDC 002DD49C  7C 9F 23 78 */	mr r31, r4
/* 80313EE0 002DD4A0  3C 05 5A 01 */	addis r0, r5, 0x5a01
/* 80313EE4 002DD4A4  28 00 00 5A */	cmplwi r0, 0x5a
/* 80313EE8 002DD4A8  41 82 00 0C */	beq lbl_80313EF4
/* 80313EEC 002DD4AC  38 60 00 02 */	li r3, 2
/* 80313EF0 002DD4B0  48 00 01 E8 */	b lbl_803140D8
lbl_80313EF4:
/* 80313EF4 002DD4B4  80 0D B7 48 */	lwz r0, lbl_806678C8@sda21(r13)
/* 80313EF8 002DD4B8  2C 00 00 00 */	cmpwi r0, 0
/* 80313EFC 002DD4BC  40 82 00 18 */	bne lbl_80313F14
/* 80313F00 002DD4C0  4B FF FE 71 */	bl func_80313D70
/* 80313F04 002DD4C4  2C 03 00 00 */	cmpwi r3, 0
/* 80313F08 002DD4C8  40 82 00 0C */	bne lbl_80313F14
/* 80313F0C 002DD4CC  38 60 00 02 */	li r3, 2
/* 80313F10 002DD4D0  48 00 01 C8 */	b lbl_803140D8
lbl_80313F14:
/* 80313F14 002DD4D4  80 0D B7 48 */	lwz r0, lbl_806678C8@sda21(r13)
/* 80313F18 002DD4D8  2C 00 00 00 */	cmpwi r0, 0
/* 80313F1C 002DD4DC  40 82 00 14 */	bne lbl_80313F30
/* 80313F20 002DD4E0  38 00 00 01 */	li r0, 1
/* 80313F24 002DD4E4  90 0D B7 4C */	stw r0, lbl_806678CC@sda21(r13)
/* 80313F28 002DD4E8  38 60 00 02 */	li r3, 2
/* 80313F2C 002DD4EC  48 00 01 AC */	b lbl_803140D8
lbl_80313F30:
/* 80313F30 002DD4F0  38 60 00 00 */	li r3, 0
/* 80313F34 002DD4F4  38 80 00 01 */	li r4, 1
/* 80313F38 002DD4F8  38 A0 00 00 */	li r5, 0
/* 80313F3C 002DD4FC  48 00 14 F5 */	bl func_80315430
/* 80313F40 002DD500  2C 03 00 00 */	cmpwi r3, 0
/* 80313F44 002DD504  40 82 00 0C */	bne lbl_80313F50
/* 80313F48 002DD508  38 60 00 00 */	li r3, 0
/* 80313F4C 002DD50C  48 00 01 8C */	b lbl_803140D8
lbl_80313F50:
/* 80313F50 002DD510  7F C4 F3 78 */	mr r4, r30
/* 80313F54 002DD514  38 60 00 0D */	li r3, 0xd
/* 80313F58 002DD518  48 00 00 1C */	b lbl_80313F74
/* 80313F5C 002DD51C  60 00 00 00 */	nop 
lbl_80313F60:
/* 80313F60 002DD520  88 04 00 00 */	lbz r0, 0(r4)
/* 80313F64 002DD524  2C 00 00 0A */	cmpwi r0, 0xa
/* 80313F68 002DD528  40 82 00 08 */	bne lbl_80313F70
/* 80313F6C 002DD52C  98 64 00 00 */	stb r3, 0(r4)
lbl_80313F70:
/* 80313F70 002DD530  38 84 00 01 */	addi r4, r4, 1
lbl_80313F74:
/* 80313F74 002DD534  7C 1E 20 50 */	subf r0, r30, r4
/* 80313F78 002DD538  7C 00 F8 40 */	cmplw r0, r31
/* 80313F7C 002DD53C  41 80 FF E4 */	blt lbl_80313F60
/* 80313F80 002DD540  3C 60 B0 00 */	lis r3, 0xB0000100@ha
/* 80313F84 002DD544  83 82 BC 18 */	lwz r28, lbl_8066BF98@sda21(r2)
/* 80313F88 002DD548  38 03 01 00 */	addi r0, r3, 0xB0000100@l
/* 80313F8C 002DD54C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80313F90 002DD550  3B 40 00 00 */	li r26, 0
/* 80313F94 002DD554  3F A0 30 00 */	lis r29, 0x3000
/* 80313F98 002DD558  48 00 01 2C */	b lbl_803140C4
lbl_80313F9C:
/* 80313F9C 002DD55C  7F 85 E3 78 */	mr r5, r28
/* 80313FA0 002DD560  38 60 00 00 */	li r3, 0
/* 80313FA4 002DD564  38 80 00 01 */	li r4, 1
/* 80313FA8 002DD568  48 00 0C D9 */	bl func_80314C80
/* 80313FAC 002DD56C  2C 03 00 00 */	cmpwi r3, 0
/* 80313FB0 002DD570  40 82 00 0C */	bne lbl_80313FBC
/* 80313FB4 002DD574  3B 60 FF FF */	li r27, -1
/* 80313FB8 002DD578  48 00 00 60 */	b lbl_80314018
lbl_80313FBC:
/* 80313FBC 002DD57C  38 1D 01 00 */	addi r0, r29, 0x100
/* 80313FC0 002DD580  90 01 00 08 */	stw r0, 8(r1)
/* 80313FC4 002DD584  38 81 00 08 */	addi r4, r1, 8
/* 80313FC8 002DD588  38 60 00 00 */	li r3, 0
/* 80313FCC 002DD58C  38 A0 00 04 */	li r5, 4
/* 80313FD0 002DD590  38 C0 00 01 */	li r6, 1
/* 80313FD4 002DD594  38 E0 00 00 */	li r7, 0
/* 80313FD8 002DD598  48 00 02 09 */	bl func_803141E0
/* 80313FDC 002DD59C  38 60 00 00 */	li r3, 0
/* 80313FE0 002DD5A0  48 00 06 31 */	bl func_80314610
/* 80313FE4 002DD5A4  38 81 00 0C */	addi r4, r1, 0xc
/* 80313FE8 002DD5A8  38 60 00 00 */	li r3, 0
/* 80313FEC 002DD5AC  38 A0 00 04 */	li r5, 4
/* 80313FF0 002DD5B0  38 C0 00 00 */	li r6, 0
/* 80313FF4 002DD5B4  38 E0 00 00 */	li r7, 0
/* 80313FF8 002DD5B8  48 00 01 E9 */	bl func_803141E0
/* 80313FFC 002DD5BC  38 60 00 00 */	li r3, 0
/* 80314000 002DD5C0  48 00 06 11 */	bl func_80314610
/* 80314004 002DD5C4  38 60 00 00 */	li r3, 0
/* 80314008 002DD5C8  48 00 0D A9 */	bl func_80314DB0
/* 8031400C 002DD5CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80314010 002DD5D0  54 00 46 BE */	rlwinm r0, r0, 8, 0x1a, 0x1f
/* 80314014 002DD5D4  23 60 00 20 */	subfic r27, r0, 0x20
lbl_80314018:
/* 80314018 002DD5D8  2C 1B 00 00 */	cmpwi r27, 0
/* 8031401C 002DD5DC  40 80 00 0C */	bge lbl_80314028
/* 80314020 002DD5E0  3B 40 00 03 */	li r26, 3
/* 80314024 002DD5E4  48 00 00 A8 */	b lbl_803140CC
lbl_80314028:
/* 80314028 002DD5E8  2C 1B 00 20 */	cmpwi r27, 0x20
/* 8031402C 002DD5EC  40 82 00 98 */	bne lbl_803140C4
/* 80314030 002DD5F0  7F 85 E3 78 */	mr r5, r28
/* 80314034 002DD5F4  38 60 00 00 */	li r3, 0
/* 80314038 002DD5F8  38 80 00 01 */	li r4, 1
/* 8031403C 002DD5FC  48 00 0C 45 */	bl func_80314C80
/* 80314040 002DD600  2C 03 00 00 */	cmpwi r3, 0
/* 80314044 002DD604  40 82 00 0C */	bne lbl_80314050
/* 80314048 002DD608  3B 40 00 03 */	li r26, 3
/* 8031404C 002DD60C  48 00 00 80 */	b lbl_803140CC
lbl_80314050:
/* 80314050 002DD610  38 81 00 14 */	addi r4, r1, 0x14
/* 80314054 002DD614  38 60 00 00 */	li r3, 0
/* 80314058 002DD618  38 A0 00 04 */	li r5, 4
/* 8031405C 002DD61C  38 C0 00 01 */	li r6, 1
/* 80314060 002DD620  38 E0 00 00 */	li r7, 0
/* 80314064 002DD624  48 00 01 7D */	bl func_803141E0
/* 80314068 002DD628  38 60 00 00 */	li r3, 0
/* 8031406C 002DD62C  48 00 05 A5 */	bl func_80314610
/* 80314070 002DD630  48 00 00 3C */	b lbl_803140AC
lbl_80314074:
/* 80314074 002DD634  88 1E 00 00 */	lbz r0, 0(r30)
/* 80314078 002DD638  38 81 00 10 */	addi r4, r1, 0x10
/* 8031407C 002DD63C  38 60 00 00 */	li r3, 0
/* 80314080 002DD640  38 A0 00 04 */	li r5, 4
/* 80314084 002DD644  54 00 C0 0E */	slwi r0, r0, 0x18
/* 80314088 002DD648  90 01 00 10 */	stw r0, 0x10(r1)
/* 8031408C 002DD64C  38 C0 00 01 */	li r6, 1
/* 80314090 002DD650  38 E0 00 00 */	li r7, 0
/* 80314094 002DD654  48 00 01 4D */	bl func_803141E0
/* 80314098 002DD658  38 60 00 00 */	li r3, 0
/* 8031409C 002DD65C  48 00 05 75 */	bl func_80314610
/* 803140A0 002DD660  3B DE 00 01 */	addi r30, r30, 1
/* 803140A4 002DD664  3B 7B FF FF */	addi r27, r27, -1
/* 803140A8 002DD668  3B FF FF FF */	addi r31, r31, -1
lbl_803140AC:
/* 803140AC 002DD66C  2C 1B 00 00 */	cmpwi r27, 0
/* 803140B0 002DD670  40 81 00 0C */	ble lbl_803140BC
/* 803140B4 002DD674  2C 1F 00 00 */	cmpwi r31, 0
/* 803140B8 002DD678  40 82 FF BC */	bne lbl_80314074
lbl_803140BC:
/* 803140BC 002DD67C  38 60 00 00 */	li r3, 0
/* 803140C0 002DD680  48 00 0C F1 */	bl func_80314DB0
lbl_803140C4:
/* 803140C4 002DD684  2C 1F 00 00 */	cmpwi r31, 0
/* 803140C8 002DD688  40 82 FE D4 */	bne lbl_80313F9C
lbl_803140CC:
/* 803140CC 002DD68C  38 60 00 00 */	li r3, 0
/* 803140D0 002DD690  48 00 14 61 */	bl func_80315530
/* 803140D4 002DD694  7F 43 D3 78 */	mr r3, r26
lbl_803140D8:
/* 803140D8 002DD698  39 61 00 30 */	addi r11, r1, 0x30
/* 803140DC 002DD69C  4B FA 60 C1 */	bl _restgpr_26
/* 803140E0 002DD6A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803140E4 002DD6A4  7C 08 03 A6 */	mtlr r0
/* 803140E8 002DD6A8  38 21 00 30 */	addi r1, r1, 0x30
/* 803140EC 002DD6AC  4E 80 00 20 */	blr 