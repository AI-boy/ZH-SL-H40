opt subtitle "Microchip Technology Omniscient Code Generator (PRO mode) build 55553"

opt pagewidth 120

	opt pm

	processor	16F1938
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 16 "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
psect eeprom_data,class=EEDATA,delta=2,space=3 ;# 
# 16 "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
db 0x02,0x58,0x00,0x21,0x64,0x64,0x64,0x64 ;# 
# 18 "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
psect eeprom_data,class=EEDATA,delta=2,space=3 ;# 
# 18 "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
db 0x64,0x01,0x01,0x01,0x05,0x05,0x01,0x01 ;# 
# 20 "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
psect eeprom_data,class=EEDATA,delta=2,space=3 ;# 
# 20 "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
db 0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00 ;# 
# 22 "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
psect eeprom_data,class=EEDATA,delta=2,space=3 ;# 
# 22 "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 ;# 
# 24 "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
psect eeprom_data,class=EEDATA,delta=2,space=3 ;# 
# 24 "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 ;# 
# 26 "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
psect eeprom_data,class=EEDATA,delta=2,space=3 ;# 
# 26 "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 ;# 
# 28 "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
psect eeprom_data,class=EEDATA,delta=2,space=3 ;# 
# 28 "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 ;# 
# 30 "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
psect eeprom_data,class=EEDATA,delta=2,space=3 ;# 
# 30 "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
DABS 1,1568,48	;_adc_buffer
DABS 1,1440,80	;_adc_buffer
	FNCALL	_main,_Key_Menu
	FNCALL	_main,_application_init
	FNCALL	_main,_driver_init
	FNCALL	_main,_handle_ad_loop
	FNCALL	_main,_handle_task_process
	FNCALL	_main,_handle_uart_rx_buf
	FNCALL	_main,_middle_init
	FNCALL	_main,_scan_key_value
	FNCALL	_scan_key_value,_Disable_Bost_Pwm
	FNCALL	_scan_key_value,_Disable_Buck_Pwm
	FNCALL	_scan_key_value,_Enable_Bost_Pwm
	FNCALL	_scan_key_value,_Set_Bost_Pwm_Duty
	FNCALL	_scan_key_value,_Set_Buck_Pwm_Duty
	FNCALL	_scan_key_value,_delay_ms
	FNCALL	_scan_key_value,_eeprom_write
	FNCALL	_middle_init,_auto_system
	FNCALL	_middle_init,_read_param_eeprom
	FNCALL	_read_param_eeprom,___awtoft
	FNCALL	_read_param_eeprom,___ftdiv
	FNCALL	_read_param_eeprom,___ftmul
	FNCALL	_read_param_eeprom,___lbtoft
	FNCALL	_read_param_eeprom,___lmul
	FNCALL	_read_param_eeprom,_eeprom_read
	FNCALL	_auto_system,___ftdiv
	FNCALL	_auto_system,___ftge
	FNCALL	_auto_system,___ftmul
	FNCALL	_auto_system,___lwtoft
	FNCALL	_auto_system,_delay_ms
	FNCALL	_auto_system,_eeprom_read
	FNCALL	_auto_system,_eeprom_write
	FNCALL	_auto_system,_start_ad_convert
	FNCALL	_handle_uart_rx_buf,_Disable_Bost_Pwm
	FNCALL	_handle_uart_rx_buf,_Disable_Buck_Pwm
	FNCALL	_handle_uart_rx_buf,_Enable_Bost_Pwm
	FNCALL	_handle_uart_rx_buf,_Set_Bost_Pwm_Duty
	FNCALL	_handle_uart_rx_buf,_Set_Buck_Pwm_Duty
	FNCALL	_handle_uart_rx_buf,___awtoft
	FNCALL	_handle_uart_rx_buf,___ftdiv
	FNCALL	_handle_uart_rx_buf,___ftge
	FNCALL	_handle_uart_rx_buf,___ftmul
	FNCALL	_handle_uart_rx_buf,___fttol
	FNCALL	_handle_uart_rx_buf,___lbtoft
	FNCALL	_handle_uart_rx_buf,___lwtoft
	FNCALL	_handle_uart_rx_buf,___wmul
	FNCALL	_handle_uart_rx_buf,_crc16
	FNCALL	_handle_uart_rx_buf,_delay_ms
	FNCALL	_handle_uart_rx_buf,_eeprom_read
	FNCALL	_handle_uart_rx_buf,_eeprom_write
	FNCALL	_handle_uart_rx_buf,_memset
	FNCALL	___lbtoft,___ftpack
	FNCALL	_handle_task_process,_Disable_Bost_Pwm
	FNCALL	_handle_task_process,_Disable_Buck_Pwm
	FNCALL	_handle_task_process,_Enable_Bost_Pwm
	FNCALL	_handle_task_process,_Set_Bost_Pwm_Duty
	FNCALL	_handle_task_process,_Set_Buck_Pwm_Duty
	FNCALL	_handle_task_process,___ftadd
	FNCALL	_handle_task_process,___ftdiv
	FNCALL	_handle_task_process,___ftmul
	FNCALL	_handle_task_process,___fttol
	FNCALL	_handle_task_process,_delay_ms
	FNCALL	_handle_task_process,_eeprom_write
	FNCALL	_handle_task_process,_pid_init
	FNCALL	_handle_ad_loop,_Disable_Bost_Pwm
	FNCALL	_handle_ad_loop,_Disable_Buck_Pwm
	FNCALL	_handle_ad_loop,_Enable_Bost_Pwm
	FNCALL	_handle_ad_loop,_Enable_Buck_Pwm
	FNCALL	_handle_ad_loop,_Mppt_Charge
	FNCALL	_handle_ad_loop,_Set_Bost_Pwm_Duty
	FNCALL	_handle_ad_loop,_Set_Buck_Pwm_Duty
	FNCALL	_handle_ad_loop,___awtoft
	FNCALL	_handle_ad_loop,___ftadd
	FNCALL	_handle_ad_loop,___ftdiv
	FNCALL	_handle_ad_loop,___ftge
	FNCALL	_handle_ad_loop,___ftmul
	FNCALL	_handle_ad_loop,___fttol
	FNCALL	_handle_ad_loop,___lldiv
	FNCALL	_handle_ad_loop,___lwdiv
	FNCALL	_handle_ad_loop,___lwtoft
	FNCALL	_handle_ad_loop,___wmul
	FNCALL	_handle_ad_loop,_delay_ms
	FNCALL	_handle_ad_loop,_pid_calc
	FNCALL	_handle_ad_loop,_start_ad_convert
	FNCALL	_start_ad_convert,___lwdiv
	FNCALL	_Mppt_Charge,_Set_Buck_Pwm_Duty
	FNCALL	_Mppt_Charge,___ftadd
	FNCALL	_Mppt_Charge,___ftge
	FNCALL	_Mppt_Charge,___fttol
	FNCALL	_Mppt_Charge,___lwtoft
	FNCALL	_Mppt_Charge,_pid_calc
	FNCALL	_pid_calc,___awtoft
	FNCALL	_pid_calc,___ftadd
	FNCALL	_pid_calc,___ftge
	FNCALL	_pid_calc,___ftmul
	FNCALL	_pid_calc,___ftsub
	FNCALL	___ftsub,___ftadd
	FNCALL	___awtoft,___ftpack
	FNCALL	___lwtoft,___ftpack
	FNCALL	_driver_init,_Init_Ird
	FNCALL	_driver_init,_init_adc
	FNCALL	_driver_init,_init_interrupt
	FNCALL	_driver_init,_init_key
	FNCALL	_driver_init,_init_osc
	FNCALL	_driver_init,_init_port
	FNCALL	_driver_init,_init_pwm
	FNCALL	_driver_init,_init_timer1
	FNCALL	_driver_init,_init_uart1
	FNCALL	_application_init,___ftadd
	FNCALL	_application_init,___ftdiv
	FNCALL	_application_init,___ftmul
	FNCALL	_application_init,_pid_init
	FNCALL	_pid_init,_memset
	FNCALL	_Key_Menu,_Disable_Bost_Pwm
	FNCALL	_Key_Menu,_Disable_Buck_Pwm
	FNCALL	_Key_Menu,_Enable_Bost_Pwm
	FNCALL	_Key_Menu,_Set_Bost_Pwm_Duty
	FNCALL	_Key_Menu,_Set_Buck_Pwm_Duty
	FNCALL	_Key_Menu,_delay_ms
	FNCALL	_Key_Menu,_eeprom_write
	FNCALL	___ftadd,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftmul,___ftpack
	FNROOT	_main
	FNCALL	_isr,i1_Disable_Bost_Pwm
	FNCALL	_isr,i1_Set_Bost_Pwm_Duty
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_dianchi_guoya_baohu
	global	_light_pv
	global	_load_cc_I
	global	_step_01_time_limit
	global	_step_02_time_limit
	global	_step_03_time_limit
	global	_step_04_time_limit
	global	_KEY_VALUE
	global	_bt_id
	global	_volt_id
	global	_voltage_adjust_index
	global	_dianchi_cv_level
	global	_dianchi_guoya_huifu
	global	_shuchu_shortout_voltage
	global	_step_01_load_percent
	global	_step_02_load_percent
	global	_step_03_load_percent
	global	_step_04_load_percent
	global	_step_05_load_percent
	global	_step_05_time_limit
	global	_sys_temper_flag
	global	_Load_Pmax
	global	_bt_volt_00
	global	_bt_volt_20
	global	_bt_volt_40
	global	_bt_volt_60
	global	_bt_volt_80
	global	_charge_i_limit
	global	_dianchi_qianya_baohu
	global	_dianchi_qianya_huifu
	global	_discharge_i_limit
	global	_light_off_pv_level
	global	_light_on_pv_level
	global	_ird_data
	global	_discharge_i_baohu
	global	_shuchu_open_voltage
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	127

;initializer for _dianchi_guoya_baohu
	retlw	0xcd
	retlw	0x44
	retlw	0x41

	line	73

;initializer for _light_pv
	retlw	0x0
	retlw	0x16
	retlw	0x44

	line	75

;initializer for _load_cc_I
	retlw	0x0
	retlw	0x4
	retlw	0x42

	line	89

;initializer for _step_01_time_limit
	retlw	01h
	retlw	0

	line	91

;initializer for _step_02_time_limit
	retlw	03h
	retlw	0

	line	93

;initializer for _step_03_time_limit
	retlw	04h
	retlw	0

	line	95

;initializer for _step_04_time_limit
	retlw	03h
	retlw	0

	file	"D:\MCUProject\ZH-SL-H40\src\key.c"
	line	17

;initializer for _KEY_VALUE
	retlw	010h
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	101

;initializer for _bt_id
	retlw	01h
	line	99

;initializer for _volt_id
	retlw	01h
	file	"D:\MCUProject\ZH-SL-H40\src\task.c"
	line	88

;initializer for _voltage_adjust_index
	retlw	01h
psect	idataBANK2,class=CODE,space=0,delta=2,noexec
global __pidataBANK2
__pidataBANK2:
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	135

;initializer for _dianchi_cv_level
	retlw	0x66
	retlw	0x42
	retlw	0x41

	line	129

;initializer for _dianchi_guoya_huifu
	retlw	0x66
	retlw	0x42
	retlw	0x41

	line	139

;initializer for _shuchu_shortout_voltage
	retlw	0x0
	retlw	0xf0
	retlw	0x40

	line	79

;initializer for _step_01_load_percent
	retlw	0x0
	retlw	0xc8
	retlw	0x42

	line	81

;initializer for _step_02_load_percent
	retlw	0x0
	retlw	0xc8
	retlw	0x42

	line	83

;initializer for _step_03_load_percent
	retlw	0x0
	retlw	0xc8
	retlw	0x42

	line	85

;initializer for _step_04_load_percent
	retlw	0x0
	retlw	0xc8
	retlw	0x42

	line	87

;initializer for _step_05_load_percent
	retlw	0x0
	retlw	0xc8
	retlw	0x42

	line	97

;initializer for _step_05_time_limit
	retlw	01h
	retlw	0

	file	"D:\MCUProject\ZH-SL-H40\src\task.c"
	line	74

;initializer for _sys_temper_flag
	retlw	01h
psect	idataBANK3,class=CODE,space=0,delta=2,noexec
global __pidataBANK3
__pidataBANK3:
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	156

;initializer for _Load_Pmax
	retlw	0x0
	retlw	0x24
	retlw	0x42

	line	123

;initializer for _bt_volt_00
	retlw	0x0
	retlw	0x10
	retlw	0x41

	line	121

;initializer for _bt_volt_20
	retlw	0x8f
	retlw	0x1a
	retlw	0x41

	line	119

;initializer for _bt_volt_40
	retlw	0x1f
	retlw	0x25
	retlw	0x41

	line	117

;initializer for _bt_volt_60
	retlw	0xae
	retlw	0x2f
	retlw	0x41

	line	115

;initializer for _bt_volt_80
	retlw	0x3d
	retlw	0x3a
	retlw	0x41

	line	137

;initializer for _charge_i_limit
	retlw	0x0
	retlw	0xa0
	retlw	0x40

	line	131

;initializer for _dianchi_qianya_baohu
	retlw	0x0
	retlw	0x10
	retlw	0x41

	line	133

;initializer for _dianchi_qianya_huifu
	retlw	0x0
	retlw	0x18
	retlw	0x41

	line	145

;initializer for _discharge_i_limit
	retlw	0x0
	retlw	0x80
	retlw	0x40

	line	149

;initializer for _light_off_pv_level
	retlw	0x0
	retlw	0x0
	retlw	0x41

	line	147

;initializer for _light_on_pv_level
	retlw	0x0
	retlw	0xc0
	retlw	0x40

psect	idataBANK4,class=CODE,space=0,delta=2,noexec
global __pidataBANK4
__pidataBANK4:
	line	168

;initializer for _ird_data
	retlw	0BFh
	retlw	040h
	retlw	0EDh
	retlw	010h

	line	143

;initializer for _discharge_i_baohu
	retlw	0x0
	retlw	0x90
	retlw	0x40

	line	141

;initializer for _shuchu_open_voltage
	retlw	0x0
	retlw	0x7c
	retlw	0x42

	global	_CRCHi
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
	global    __stringtab
__stringtab:
	retlw	0
psect	stringtext
	global    __end_of__stringtab
__end_of__stringtab:
	file	"D:\MCUProject\ZH-SL-H40\src\Modbus.c"
	line	10
_CRCHi:
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	global __end_of_CRCHi
__end_of_CRCHi:
	global	_CRCLo
psect	stringtext
	file	"D:\MCUProject\ZH-SL-H40\src\Modbus.c"
	line	40
_CRCLo:
	retlw	0
	retlw	0C0h
	retlw	0C1h
	retlw	01h
	retlw	0C3h
	retlw	03h
	retlw	02h
	retlw	0C2h
	retlw	0C6h
	retlw	06h
	retlw	07h
	retlw	0C7h
	retlw	05h
	retlw	0C5h
	retlw	0C4h
	retlw	04h
	retlw	0CCh
	retlw	0Ch
	retlw	0Dh
	retlw	0CDh
	retlw	0Fh
	retlw	0CFh
	retlw	0CEh
	retlw	0Eh
	retlw	0Ah
	retlw	0CAh
	retlw	0CBh
	retlw	0Bh
	retlw	0C9h
	retlw	09h
	retlw	08h
	retlw	0C8h
	retlw	0D8h
	retlw	018h
	retlw	019h
	retlw	0D9h
	retlw	01Bh
	retlw	0DBh
	retlw	0DAh
	retlw	01Ah
	retlw	01Eh
	retlw	0DEh
	retlw	0DFh
	retlw	01Fh
	retlw	0DDh
	retlw	01Dh
	retlw	01Ch
	retlw	0DCh
	retlw	014h
	retlw	0D4h
	retlw	0D5h
	retlw	015h
	retlw	0D7h
	retlw	017h
	retlw	016h
	retlw	0D6h
	retlw	0D2h
	retlw	012h
	retlw	013h
	retlw	0D3h
	retlw	011h
	retlw	0D1h
	retlw	0D0h
	retlw	010h
	retlw	0F0h
	retlw	030h
	retlw	031h
	retlw	0F1h
	retlw	033h
	retlw	0F3h
	retlw	0F2h
	retlw	032h
	retlw	036h
	retlw	0F6h
	retlw	0F7h
	retlw	037h
	retlw	0F5h
	retlw	035h
	retlw	034h
	retlw	0F4h
	retlw	03Ch
	retlw	0FCh
	retlw	0FDh
	retlw	03Dh
	retlw	0FFh
	retlw	03Fh
	retlw	03Eh
	retlw	0FEh
	retlw	0FAh
	retlw	03Ah
	retlw	03Bh
	retlw	0FBh
	retlw	039h
	retlw	0F9h
	retlw	0F8h
	retlw	038h
	retlw	028h
	retlw	0E8h
	retlw	0E9h
	retlw	029h
	retlw	0EBh
	retlw	02Bh
	retlw	02Ah
	retlw	0EAh
	retlw	0EEh
	retlw	02Eh
	retlw	02Fh
	retlw	0EFh
	retlw	02Dh
	retlw	0EDh
	retlw	0ECh
	retlw	02Ch
	retlw	0E4h
	retlw	024h
	retlw	025h
	retlw	0E5h
	retlw	027h
	retlw	0E7h
	retlw	0E6h
	retlw	026h
	retlw	022h
	retlw	0E2h
	retlw	0E3h
	retlw	023h
	retlw	0E1h
	retlw	021h
	retlw	020h
	retlw	0E0h
	retlw	0A0h
	retlw	060h
	retlw	061h
	retlw	0A1h
	retlw	063h
	retlw	0A3h
	retlw	0A2h
	retlw	062h
	retlw	066h
	retlw	0A6h
	retlw	0A7h
	retlw	067h
	retlw	0A5h
	retlw	065h
	retlw	064h
	retlw	0A4h
	retlw	06Ch
	retlw	0ACh
	retlw	0ADh
	retlw	06Dh
	retlw	0AFh
	retlw	06Fh
	retlw	06Eh
	retlw	0AEh
	retlw	0AAh
	retlw	06Ah
	retlw	06Bh
	retlw	0ABh
	retlw	069h
	retlw	0A9h
	retlw	0A8h
	retlw	068h
	retlw	078h
	retlw	0B8h
	retlw	0B9h
	retlw	079h
	retlw	0BBh
	retlw	07Bh
	retlw	07Ah
	retlw	0BAh
	retlw	0BEh
	retlw	07Eh
	retlw	07Fh
	retlw	0BFh
	retlw	07Dh
	retlw	0BDh
	retlw	0BCh
	retlw	07Ch
	retlw	0B4h
	retlw	074h
	retlw	075h
	retlw	0B5h
	retlw	077h
	retlw	0B7h
	retlw	0B6h
	retlw	076h
	retlw	072h
	retlw	0B2h
	retlw	0B3h
	retlw	073h
	retlw	0B1h
	retlw	071h
	retlw	070h
	retlw	0B0h
	retlw	050h
	retlw	090h
	retlw	091h
	retlw	051h
	retlw	093h
	retlw	053h
	retlw	052h
	retlw	092h
	retlw	096h
	retlw	056h
	retlw	057h
	retlw	097h
	retlw	055h
	retlw	095h
	retlw	094h
	retlw	054h
	retlw	09Ch
	retlw	05Ch
	retlw	05Dh
	retlw	09Dh
	retlw	05Fh
	retlw	09Fh
	retlw	09Eh
	retlw	05Eh
	retlw	05Ah
	retlw	09Ah
	retlw	09Bh
	retlw	05Bh
	retlw	099h
	retlw	059h
	retlw	058h
	retlw	098h
	retlw	088h
	retlw	048h
	retlw	049h
	retlw	089h
	retlw	04Bh
	retlw	08Bh
	retlw	08Ah
	retlw	04Ah
	retlw	04Eh
	retlw	08Eh
	retlw	08Fh
	retlw	04Fh
	retlw	08Dh
	retlw	04Dh
	retlw	04Ch
	retlw	08Ch
	retlw	044h
	retlw	084h
	retlw	085h
	retlw	045h
	retlw	087h
	retlw	047h
	retlw	046h
	retlw	086h
	retlw	082h
	retlw	042h
	retlw	043h
	retlw	083h
	retlw	041h
	retlw	081h
	retlw	080h
	retlw	040h
	global __end_of_CRCLo
__end_of_CRCLo:
	global	_CRCHi
	global	_CRCLo
	global	_crc_data
	global	_battery_voltage_value
	global	_buck_pwm_value
	global	_Adjust_Pout_Flag
	global	_device_status
	global	_today_index
	global	_PWM
	global	_bost_pwm_value
	global	_charge_current_value
	global	_discharge_current_value
	global	_ho_cnt
	global	_load_voltage_value
	global	_mcu_value
	global	_pv_voltage_value
	global	_KEY_STATE
	global	_charge_index
	global	_discharge_index
	global	_have_person1_flag
	global	_ird_receive_flag
	global	_ird_receive_time_count
	global	_ird_status
	global	_led_out_ctrl
	global	_light_mode
	global	_mcu_temp_index
	global	_nop_index
	global	_pid_index
	global	_pv_voltage_status
	global	_receive_bit_count
	global	_system_status
	global	_uart1_receive_byte_count
	global	_uart1_receive_flag
	global	_uart1_time_count
	global	_uart_send_byte_count
	global	_uart_send_delay_timer
	global	_work_mode
	global	_light_time
	global	_light_time_level
	global	_b_v
	global	_temperature_value
	global	_battery_voltage_status
	global	_bt_time_count
	global	_handle_an0_process_flag
	global	_handle_an10_process_flag
	global	_handle_an1_process_flag
	global	_handle_an2_process_flag
	global	_handle_an3_process_flag
	global	_handle_an4_process_flag
	global	_handle_an9_process_flag
	global	_handle_scan_key_flag
	global	_handle_short_flag
	global	_have_person1_time_count
	global	_key1_index
	global	_key1_time_count
	global	_limit_power_pid_flag
	global	_mcu_t00_time_count
	global	_mcu_t01_time_count
	global	_mcu_t02_time_count
	global	_mcu_t03_time_count
	global	_mppt_status
	global	_open_an0_time
	global	_open_an10_time
	global	_open_an1_time
	global	_open_an2_time
	global	_open_an3_time
	global	_open_an4_time
	global	_open_an9_time
	global	_open_discharge_time
	global	_open_sleep_time
	global	_over_temper_time_count
	global	_pv_index
	global	_rx_frame_kind
	global	_scan_key_time_count
	global	_sys_mode
	global	_system_check_time
	global	_t1
	global	_t2
	global	_t3
	global	_t4
	global	_t5
	global	_temper_time_count
	global	_uart_send_end_flag
	global	_uart_send_point
	global	_bt_00_hv
	global	_bt_00_lv
	global	_charge_I
	global	_load_I
	global	_load_v
	global	_p_v
	global	_I_prev
	global	_load_short_time_count
	global	_PID_CC_discharge
	global	_day_time_count
	global	_night_time_count
	global	_pv_time_count
	global	_PWM_I
	global	_an0_time_count
	global	_an10_time_count
	global	_an1_time_count
	global	_an2_time_count
	global	_an3_time_count
	global	_an4_time_count
	global	_an9_time_count
	global	_battery_low_time_count
	global	_cv_level_time_count
	global	_index_01_count
	global	_index_02_count
	global	_index_03_count
	global	_index_04_count
	global	_index_05_count
	global	_index_06_count
	global	_involid_time_count
	global	_load_open_time_count
	global	_mi_cnt
	global	_mppt_time_count
	global	_ms_cnt
	global	_over_load_time_count
	global	_se_cnt
	global	_sleep_time_count
	global	_system_time_count
	global	_PID_CC_charge
	global	_PID_CV_charge
	global	_uart1_tx_buf
	global	_uart1_rx_buf
	global	_adc_buffer
	global	_PIR1bits
_PIR1bits	set	0x11
	global	_PIR2bits
_PIR2bits	set	0x12
	global	_PORTBbits
_PORTBbits	set	0xD
	global	_PORTCbits
_PORTCbits	set	0xE
	global	_PR2
_PR2	set	0x1B
	global	_T1CON
_T1CON	set	0x18
	global	_T1GCONbits
_T1GCONbits	set	0x19
	global	_T2CONbits
_T2CONbits	set	0x1C
	global	_TMR0
_TMR0	set	0x15
	global	_TMR1H
_TMR1H	set	0x17
	global	_TMR1L
_TMR1L	set	0x16
	global	_C1IF
_C1IF	set	0x95
	global	_CARRY
_CARRY	set	0x18
	global	_GIE
_GIE	set	0x5F
	global	_IOCIE
_IOCIE	set	0x5B
	global	_IOCIF
_IOCIF	set	0x58
	global	_PEIE
_PEIE	set	0x5E
	global	_RC1
_RC1	set	0x71
	global	_RCIF
_RCIF	set	0x8D
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_TMR1IF
_TMR1IF	set	0x88
	global	_TMR1ON
_TMR1ON	set	0xC0
	global	_TMR2IF
_TMR2IF	set	0x89
	global	_TMR2ON
_TMR2ON	set	0xE2
	global	_TMR4IF
_TMR4IF	set	0x99
	global	_TMR6IF
_TMR6IF	set	0x9B
	global	_TXIF
_TXIF	set	0x8C
	global	_ADCON0bits
_ADCON0bits	set	0x9D
	global	_ADCON1bits
_ADCON1bits	set	0x9E
	global	_ADRESL
_ADRESL	set	0x9B
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x95
	global	_OSCCON
_OSCCON	set	0x99
	global	_PIE1bits
_PIE1bits	set	0x91
	global	_PIE2bits
_PIE2bits	set	0x92
	global	_TRISAbits
_TRISAbits	set	0x8C
	global	_TRISBbits
_TRISBbits	set	0x8D
	global	_TRISCbits
_TRISCbits	set	0x8E
	global	_WDTCONbits
_WDTCONbits	set	0x97
	global	_ADRESH
_ADRESH	set	0x9C
	global	_C1IE
_C1IE	set	0x495
	global	_PSA
_PSA	set	0x4AB
	global	_RCIE
_RCIE	set	0x48D
	global	_TMR0CS
_TMR0CS	set	0x4AD
	global	_TMR1IE
_TMR1IE	set	0x488
	global	_TXIE
_TXIE	set	0x48C
	global	_APFCONbits
_APFCONbits	set	0x11D
	global	_CM1CON0bits
_CM1CON0bits	set	0x111
	global	_CM1CON1bits
_CM1CON1bits	set	0x112
	global	_FVRCONbits
_FVRCONbits	set	0x117
	global	_LATCbits
_LATCbits	set	0x10E
	global	_EEADR
_EEADR	set	0x191
	global	_ANSELA
_ANSELA	set	0x18C
	global	_ANSELB
_ANSELB	set	0x18D
	global	_BAUDCON
_BAUDCON	set	0x19F
	global	_EECON1
_EECON1	set	0x195
	global	_EECON2
_EECON2	set	0x196
	global	_EEDATA
_EEDATA	set	0x193
	global	_RCREG
_RCREG	set	0x199
	global	_RCSTA
_RCSTA	set	0x19D
	global	_RCSTAbits
_RCSTAbits	set	0x19D
	global	_SP1BRGH
_SP1BRGH	set	0x19C
	global	_SP1BRGL
_SP1BRGL	set	0x19B
	global	_TXREG
_TXREG	set	0x19A
	global	_TXSTA
_TXSTA	set	0x19E
	global	_TXSTAbits
_TXSTAbits	set	0x19E
	global	_ANSA0
_ANSA0	set	0xC60
	global	_ANSA1
_ANSA1	set	0xC61
	global	_ANSA2
_ANSA2	set	0xC62
	global	_ANSA3
_ANSA3	set	0xC63
	global	_ANSA5
_ANSA5	set	0xC65
	global	_ANSB0
_ANSB0	set	0xC68
	global	_ANSB1
_ANSB1	set	0xC69
	global	_ANSB3
_ANSB3	set	0xC6B
	global	_RD
_RD	set	0xCA8
	global	_WR
_WR	set	0xCA9
	global	_WREN
_WREN	set	0xCAA
	global	_CCP1CONbits
_CCP1CONbits	set	0x293
	global	_CCPR1L
_CCPR1L	set	0x291
	global	_CCPTMRS0bits
_CCPTMRS0bits	set	0x29E
	global	_CCPTMRS1bits
_CCPTMRS1bits	set	0x29F
	global	_CCP3CONbits
_CCP3CONbits	set	0x313
	global	_CCP5CONbits
_CCP5CONbits	set	0x31E
	global	_CCPR3L
_CCPR3L	set	0x311
	global	_CCPR5L
_CCPR5L	set	0x31C
	global	_IOCBFbits
_IOCBFbits	set	0x396
	global	_IOCBNbits
_IOCBNbits	set	0x395
	global	_IOCBF4
_IOCBF4	set	0x1CB4
	global	_IOCBF7
_IOCBF7	set	0x1CB7
	global	_PR4
_PR4	set	0x416
	global	_PR6
_PR6	set	0x41D
	global	_T4CONbits
_T4CONbits	set	0x417
	global	_T6CONbits
_T6CONbits	set	0x41E
	global	_TMR4ON
_TMR4ON	set	0x20BA
	global	_TMR6ON
_TMR6ON	set	0x20F2
; #config settings
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_FOSC$INTOSC
__CFG_FOSC$INTOSC equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_WDTE$NSLEEP
__CFG_WDTE$NSLEEP equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_CLKOUTEN$OFF
__CFG_CLKOUTEN$OFF equ 0x0
global __CFG_PLLEN$ON
__CFG_PLLEN$ON equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_BORV$LO
__CFG_BORV$LO equ 0x0
global __CFG_VCAPEN$OFF
__CFG_VCAPEN$OFF equ 0x0
global __CFG_LVP$ON
__CFG_LVP$ON equ 0x0
	file	"ZH-SL-H40.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
DABS 1,9072,0,_adc_buffer	;BIGRAM
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_crc_data:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_battery_voltage_value:
       ds      2

_buck_pwm_value:
       ds      2

_Adjust_Pout_Flag:
       ds      1

_device_status:
       ds      1

_today_index:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_PWM:
       ds      3

_bost_pwm_value:
       ds      2

_charge_current_value:
       ds      2

_discharge_current_value:
       ds      2

_ho_cnt:
       ds      2

_load_voltage_value:
       ds      2

_mcu_value:
       ds      2

_pv_voltage_value:
       ds      2

_KEY_STATE:
       ds      1

_charge_index:
       ds      1

_discharge_index:
       ds      1

_have_person1_flag:
       ds      1

_ird_receive_flag:
       ds      1

_ird_receive_time_count:
       ds      1

_ird_status:
       ds      1

_led_out_ctrl:
       ds      1

_light_mode:
       ds      1

_mcu_temp_index:
       ds      1

_nop_index:
       ds      1

_pid_index:
       ds      1

_pv_voltage_status:
       ds      1

_receive_bit_count:
       ds      1

_system_status:
       ds      1

_uart1_receive_byte_count:
       ds      1

_uart1_receive_flag:
       ds      1

_uart1_time_count:
       ds      1

_uart_send_byte_count:
       ds      1

_uart_send_delay_timer:
       ds      1

_work_mode:
       ds      1

_light_time:
       ds      2

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	127
_dianchi_guoya_baohu:
       ds      3

psect	dataBANK1
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	73
_light_pv:
       ds      3

psect	dataBANK1
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	75
_load_cc_I:
       ds      3

psect	dataBANK1
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	89
_step_01_time_limit:
       ds      2

psect	dataBANK1
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	91
_step_02_time_limit:
       ds      2

psect	dataBANK1
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	93
_step_03_time_limit:
       ds      2

psect	dataBANK1
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	95
_step_04_time_limit:
       ds      2

psect	dataBANK1
	file	"D:\MCUProject\ZH-SL-H40\src\key.c"
	line	17
_KEY_VALUE:
       ds      1

psect	dataBANK1
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	101
_bt_id:
       ds      1

psect	dataBANK1
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	99
_volt_id:
       ds      1

psect	dataBANK1
	file	"D:\MCUProject\ZH-SL-H40\src\task.c"
	line	88
_voltage_adjust_index:
       ds      1

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_light_time_level:
       ds      4

_b_v:
       ds      3

_temperature_value:
       ds      2

_battery_voltage_status:
       ds      1

_bt_time_count:
       ds      1

_handle_an0_process_flag:
       ds      1

_handle_an10_process_flag:
       ds      1

_handle_an1_process_flag:
       ds      1

_handle_an2_process_flag:
       ds      1

_handle_an3_process_flag:
       ds      1

_handle_an4_process_flag:
       ds      1

_handle_an9_process_flag:
       ds      1

_handle_scan_key_flag:
       ds      1

_handle_short_flag:
       ds      1

_have_person1_time_count:
       ds      1

_key1_index:
       ds      1

_key1_time_count:
       ds      1

_limit_power_pid_flag:
       ds      1

_mcu_t00_time_count:
       ds      1

_mcu_t01_time_count:
       ds      1

_mcu_t02_time_count:
       ds      1

_mcu_t03_time_count:
       ds      1

_mppt_status:
       ds      1

_open_an0_time:
       ds      1

_open_an10_time:
       ds      1

_open_an1_time:
       ds      1

_open_an2_time:
       ds      1

_open_an3_time:
       ds      1

_open_an4_time:
       ds      1

_open_an9_time:
       ds      1

_open_discharge_time:
       ds      1

_open_sleep_time:
       ds      1

_over_temper_time_count:
       ds      1

_pv_index:
       ds      1

_rx_frame_kind:
       ds      1

_scan_key_time_count:
       ds      1

_sys_mode:
       ds      1

_system_check_time:
       ds      1

_t1:
       ds      1

_t2:
       ds      1

_t3:
       ds      1

_t4:
       ds      1

_t5:
       ds      1

_temper_time_count:
       ds      1

_uart_send_end_flag:
       ds      1

_uart_send_point:
       ds      1

psect	dataBANK2,class=BANK2,space=1,noexec
global __pdataBANK2
__pdataBANK2:
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	135
_dianchi_cv_level:
       ds      3

psect	dataBANK2
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	129
_dianchi_guoya_huifu:
       ds      3

psect	dataBANK2
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	139
_shuchu_shortout_voltage:
       ds      3

psect	dataBANK2
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	79
_step_01_load_percent:
       ds      3

psect	dataBANK2
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	81
_step_02_load_percent:
       ds      3

psect	dataBANK2
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	83
_step_03_load_percent:
       ds      3

psect	dataBANK2
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	85
_step_04_load_percent:
       ds      3

psect	dataBANK2
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	87
_step_05_load_percent:
       ds      3

psect	dataBANK2
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	97
_step_05_time_limit:
       ds      2

psect	dataBANK2
	file	"D:\MCUProject\ZH-SL-H40\src\task.c"
	line	74
_sys_temper_flag:
       ds      1

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_bt_00_hv:
       ds      3

_bt_00_lv:
       ds      3

_charge_I:
       ds      3

_load_I:
       ds      3

_load_v:
       ds      3

_p_v:
       ds      3

_I_prev:
       ds      2

_load_short_time_count:
       ds      2

_PID_CC_discharge:
       ds      21

psect	dataBANK3,class=BANK3,space=1,noexec
global __pdataBANK3
__pdataBANK3:
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	156
_Load_Pmax:
       ds      3

psect	dataBANK3
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	123
_bt_volt_00:
       ds      3

psect	dataBANK3
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	121
_bt_volt_20:
       ds      3

psect	dataBANK3
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	119
_bt_volt_40:
       ds      3

psect	dataBANK3
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	117
_bt_volt_60:
       ds      3

psect	dataBANK3
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	115
_bt_volt_80:
       ds      3

psect	dataBANK3
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	137
_charge_i_limit:
       ds      3

psect	dataBANK3
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	131
_dianchi_qianya_baohu:
       ds      3

psect	dataBANK3
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	133
_dianchi_qianya_huifu:
       ds      3

psect	dataBANK3
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	145
_discharge_i_limit:
       ds      3

psect	dataBANK3
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	149
_light_off_pv_level:
       ds      3

psect	dataBANK3
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	147
_light_on_pv_level:
       ds      3

psect	bssBANK4,class=BANK4,space=1,noexec
global __pbssBANK4
__pbssBANK4:
_day_time_count:
       ds      4

_night_time_count:
       ds      4

_pv_time_count:
       ds      4

_PWM_I:
       ds      3

_an0_time_count:
       ds      2

_an10_time_count:
       ds      2

_an1_time_count:
       ds      2

_an2_time_count:
       ds      2

_an3_time_count:
       ds      2

_an4_time_count:
       ds      2

_an9_time_count:
       ds      2

_battery_low_time_count:
       ds      2

_cv_level_time_count:
       ds      2

_index_01_count:
       ds      2

_index_02_count:
       ds      2

_index_03_count:
       ds      2

_index_04_count:
       ds      2

_index_05_count:
       ds      2

_index_06_count:
       ds      2

_involid_time_count:
       ds      2

_load_open_time_count:
       ds      2

_mi_cnt:
       ds      2

_mppt_time_count:
       ds      2

_ms_cnt:
       ds      2

_over_load_time_count:
       ds      2

_se_cnt:
       ds      2

_sleep_time_count:
       ds      2

_system_time_count:
       ds      2

psect	dataBANK4,class=BANK4,space=1,noexec
global __pdataBANK4
__pdataBANK4:
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	168
_ird_data:
       ds      4

psect	dataBANK4
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	143
_discharge_i_baohu:
       ds      3

psect	dataBANK4
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	141
_shuchu_open_voltage:
       ds      3

psect	bssBANK5,class=BANK5,space=1,noexec
global __pbssBANK5
__pbssBANK5:
_PID_CC_charge:
       ds      21

_PID_CV_charge:
       ds      21

psect	bssBANK6,class=BANK6,space=1,noexec
global __pbssBANK6
__pbssBANK6:
_uart1_tx_buf:
       ds      80

psect	bssBANK7,class=BANK7,space=1,noexec
global __pbssBANK7
__pbssBANK7:
_uart1_rx_buf:
       ds      80

	file	"ZH-SL-H40.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR0 containing the base address, and
;	btemp/btemp+1 has the size to clear
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	movlw	1
	subwf	btemp,f
	movlw	0
	subwfb btemp+1,f
	movf btemp+1,w
	iorwf btemp,w
	skipz
	goto clrloop0	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to BIGRAM
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBIGRAM
	movlw	low(__pbssBIGRAM)
	movwf	fsr0l
	movlw	high(__pbssBIGRAM)
	movwf	fsr0h
	movlw	low(080h)
	movwf	btemp
	movlw	high(080h)
	movwf	btemp+1
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	low(028h)
	movwf	btemp
	movlw	high(028h)
	movwf	btemp+1
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	low(034h)
	movwf	btemp
	movlw	high(034h)
	movwf	btemp+1
	fcall	clear_ram0
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK3
	movlw	low(__pbssBANK3)
	movwf	fsr0l
	movlw	high(__pbssBANK3)
	movwf	fsr0h
	movlw	low(02Bh)
	movwf	btemp
	movlw	high(02Bh)
	movwf	btemp+1
	fcall	clear_ram0
; Clear objects allocated to BANK4
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK4
	movlw	low(__pbssBANK4)
	movwf	fsr0l
	movlw	high(__pbssBANK4)
	movwf	fsr0h
	movlw	low(03Fh)
	movwf	btemp
	movlw	high(03Fh)
	movwf	btemp+1
	fcall	clear_ram0
; Clear objects allocated to BANK5
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK5
	movlw	low(__pbssBANK5)
	movwf	fsr0l
	movlw	high(__pbssBANK5)
	movwf	fsr0h
	movlw	low(02Ah)
	movwf	btemp
	movlw	high(02Ah)
	movwf	btemp+1
	fcall	clear_ram0
; Clear objects allocated to BANK6
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK6
	movlw	low(__pbssBANK6)
	movwf	fsr0l
	movlw	high(__pbssBANK6)
	movwf	fsr0h
	movlw	low(050h)
	movwf	btemp
	movlw	high(050h)
	movwf	btemp+1
	fcall	clear_ram0
; Clear objects allocated to BANK7
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK7
	movlw	low(__pbssBANK7)
	movwf	fsr0l
	movlw	high(__pbssBANK7)
	movwf	fsr0h
	movlw	low(050h)
	movwf	btemp
	movlw	high(050h)
	movwf	btemp+1
	fcall	clear_ram0
	line	#
psect inittext,class=CODE,delta=2
global init_ram,btemp
init_ram:
	movwf btemp,f
initloop:
	moviw fsr0++
	movwi fsr1++
	movlw 1
subwf btemp,f
movlw 0
subwfb btemp+1,f
	movf btemp+1,w
	iorwf btemp,w
	skipz
	goto initloop
	retlw 0
; Initialize objects allocated to BANK1
	global __pidataBANK1,__pdataBANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK1)
	movwf fsr0l
	movlw high(__pidataBANK1)|80h
	movwf fsr0h
	movlw low(__pdataBANK1)
	movwf fsr1l
	movlw high(__pdataBANK1)
	movwf fsr1h
	movlw high(015h)
	movwf btemp+1
	movlw low(015h)
	fcall init_ram
; Initialize objects allocated to BANK2
	global __pidataBANK2,__pdataBANK2
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK2)
	movwf fsr0l
	movlw high(__pidataBANK2)|80h
	movwf fsr0h
	movlw low(__pdataBANK2)
	movwf fsr1l
	movlw high(__pdataBANK2)
	movwf fsr1h
	movlw high(01Bh)
	movwf btemp+1
	movlw low(01Bh)
	fcall init_ram
; Initialize objects allocated to BANK3
	global __pidataBANK3,__pdataBANK3
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK3)
	movwf fsr0l
	movlw high(__pidataBANK3)|80h
	movwf fsr0h
	movlw low(__pdataBANK3)
	movwf fsr1l
	movlw high(__pdataBANK3)
	movwf fsr1h
	movlw high(024h)
	movwf btemp+1
	movlw low(024h)
	fcall init_ram
; Initialize objects allocated to BANK4
	global __pidataBANK4,__pdataBANK4
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK4)
	movwf fsr0l
	movlw high(__pidataBANK4)|80h
	movwf fsr0h
	movlw low(__pdataBANK4)
	movwf fsr1l
	movlw high(__pdataBANK4)
	movwf fsr1h
	movlw high(0Ah)
	movwf btemp+1
	movlw low(0Ah)
	fcall init_ram
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:movlb 0
ljmp _main	;jump to C main() function
psect	cstackBANK4,class=BANK4,space=1,noexec
global __pcstackBANK4
__pcstackBANK4:
	global	handle_ad_loop@data_cc_var
handle_ad_loop@data_cc_var:	; 3 bytes @ 0x0
	ds	3
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	start_ad_convert@ch
start_ad_convert@ch:	; 1 bytes @ 0x0
	global	scan_key_value@key_temp
scan_key_value@key_temp:	; 2 bytes @ 0x0
	global	pid_calc@dError
pid_calc@dError:	; 3 bytes @ 0x0
	ds	1
	global	start_ad_convert@ad_h
start_ad_convert@ad_h:	; 2 bytes @ 0x1
	ds	2
	global	start_ad_convert@ad_l
start_ad_convert@ad_l:	; 2 bytes @ 0x3
	global	_pid_calc$2834
_pid_calc$2834:	; 3 bytes @ 0x3
	ds	2
	global	start_ad_convert@temp
start_ad_convert@temp:	; 2 bytes @ 0x5
	ds	1
	global	_pid_calc$2835
_pid_calc$2835:	; 3 bytes @ 0x6
	ds	1
	global	start_ad_convert@ad_ch
start_ad_convert@ad_ch:	; 1 bytes @ 0x7
	ds	1
	global	start_ad_convert@j
start_ad_convert@j:	; 1 bytes @ 0x8
	ds	1
	global	start_ad_convert@i
start_ad_convert@i:	; 1 bytes @ 0x9
	global	pid_calc@dk
pid_calc@dk:	; 3 bytes @ 0x9
	ds	1
	global	auto_system@sys_bt_voltage
auto_system@sys_bt_voltage:	; 3 bytes @ 0xA
	ds	2
	global	pid_calc@PWM_var
pid_calc@PWM_var:	; 3 bytes @ 0xC
	ds	3
	global	pid_calc@Error
pid_calc@Error:	; 3 bytes @ 0xF
	ds	3
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_Disable_Bost_Pwm:	; 0 bytes @ 0x0
?_Disable_Buck_Pwm:	; 0 bytes @ 0x0
?_Enable_Bost_Pwm:	; 0 bytes @ 0x0
?_init_timer1:	; 0 bytes @ 0x0
?_init_uart1:	; 0 bytes @ 0x0
?_init_pwm:	; 0 bytes @ 0x0
?_handle_ad_loop:	; 0 bytes @ 0x0
?_handle_task_process:	; 0 bytes @ 0x0
?_handle_uart_rx_buf:	; 0 bytes @ 0x0
?_Mppt_Charge:	; 0 bytes @ 0x0
?_init_adc:	; 0 bytes @ 0x0
?_isr:	; 0 bytes @ 0x0
?_init_interrupt:	; 0 bytes @ 0x0
?_read_param_eeprom:	; 0 bytes @ 0x0
?_auto_system:	; 0 bytes @ 0x0
?_Init_Ird:	; 0 bytes @ 0x0
?_init_key:	; 0 bytes @ 0x0
?_scan_key_value:	; 0 bytes @ 0x0
?_init_osc:	; 0 bytes @ 0x0
?_init_port:	; 0 bytes @ 0x0
?_driver_init:	; 0 bytes @ 0x0
?_middle_init:	; 0 bytes @ 0x0
?_application_init:	; 0 bytes @ 0x0
?_Enable_Buck_Pwm:	; 0 bytes @ 0x0
?i1_Disable_Bost_Pwm:	; 0 bytes @ 0x0
??i1_Disable_Bost_Pwm:	; 0 bytes @ 0x0
?i1_Set_Bost_Pwm_Duty:	; 0 bytes @ 0x0
?_eeprom_read:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	i1Set_Bost_Pwm_Duty@dduty
i1Set_Bost_Pwm_Duty@dduty:	; 2 bytes @ 0x0
	ds	2
??i1_Set_Bost_Pwm_Duty:	; 0 bytes @ 0x2
	ds	2
??_isr:	; 0 bytes @ 0x4
	ds	8
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	isr@r1_data
isr@r1_data:	; 1 bytes @ 0x0
	ds	1
	global	isr@time_cnt
isr@time_cnt:	; 2 bytes @ 0x1
	ds	2
?_Set_Bost_Pwm_Duty:	; 0 bytes @ 0x3
??_Disable_Bost_Pwm:	; 0 bytes @ 0x3
??_eeprom_read:	; 0 bytes @ 0x3
??_Disable_Buck_Pwm:	; 0 bytes @ 0x3
?_Set_Buck_Pwm_Duty:	; 0 bytes @ 0x3
??_Enable_Bost_Pwm:	; 0 bytes @ 0x3
??_init_timer1:	; 0 bytes @ 0x3
??_init_uart1:	; 0 bytes @ 0x3
??_init_pwm:	; 0 bytes @ 0x3
??_init_adc:	; 0 bytes @ 0x3
?_delay_ms:	; 0 bytes @ 0x3
??_init_interrupt:	; 0 bytes @ 0x3
??_Init_Ird:	; 0 bytes @ 0x3
??_init_key:	; 0 bytes @ 0x3
??_init_osc:	; 0 bytes @ 0x3
??_init_port:	; 0 bytes @ 0x3
??_driver_init:	; 0 bytes @ 0x3
??_Enable_Buck_Pwm:	; 0 bytes @ 0x3
?_memset:	; 2 bytes @ 0x3
	global	?_crc16
?_crc16:	; 2 bytes @ 0x3
	global	?___wmul
?___wmul:	; 2 bytes @ 0x3
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x3
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x3
	global	?___lmul
?___lmul:	; 4 bytes @ 0x3
	global	crc16@usDataLen
crc16@usDataLen:	; 1 bytes @ 0x3
	global	eeprom_read@addr
eeprom_read@addr:	; 1 bytes @ 0x3
	global	delay_ms@count
delay_ms@count:	; 2 bytes @ 0x3
	global	Set_Buck_Pwm_Duty@duty
Set_Buck_Pwm_Duty@duty:	; 2 bytes @ 0x3
	global	Set_Bost_Pwm_Duty@dduty
Set_Bost_Pwm_Duty@dduty:	; 2 bytes @ 0x3
	global	memset@p1
memset@p1:	; 2 bytes @ 0x3
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x3
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x3
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x3
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x3
	ds	2
??_Set_Bost_Pwm_Duty:	; 0 bytes @ 0x5
??_Set_Buck_Pwm_Duty:	; 0 bytes @ 0x5
??_delay_ms:	; 0 bytes @ 0x5
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x5
	global	memset@c
memset@c:	; 2 bytes @ 0x5
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x5
	ds	1
??_crc16:	; 0 bytes @ 0x6
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x6
	global	crc16@uIndex
crc16@uIndex:	; 4 bytes @ 0x6
	ds	1
??___wmul:	; 0 bytes @ 0x7
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x7
	global	delay_ms@j
delay_ms@j:	; 2 bytes @ 0x7
	global	memset@n
memset@n:	; 2 bytes @ 0x7
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x7
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x7
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x7
	ds	1
??___ftpack:	; 0 bytes @ 0x8
	ds	1
??_memset:	; 0 bytes @ 0x9
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x9
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x9
	global	memset@p
memset@p:	; 2 bytes @ 0x9
	ds	1
	global	crc16@uchCRCHi
crc16@uchCRCHi:	; 1 bytes @ 0xA
	ds	1
?_pid_init:	; 0 bytes @ 0xB
??___lldiv:	; 0 bytes @ 0xB
??___lmul:	; 0 bytes @ 0xB
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0xB
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0xB
	global	crc16@uchCRCLo
crc16@uchCRCLo:	; 1 bytes @ 0xB
	global	pid_init@pp
pid_init@pp:	; 2 bytes @ 0xB
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0xB
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0xB
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0xB
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0xB
	ds	1
	global	crc16@puchMsg
crc16@puchMsg:	; 1 bytes @ 0xC
	ds	1
??_pid_init:	; 0 bytes @ 0xD
??___lwdiv:	; 0 bytes @ 0xD
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xD
	ds	1
??___awtoft:	; 0 bytes @ 0xE
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xE
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xE
	ds	1
??___lbtoft:	; 0 bytes @ 0xF
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0xF
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xF
	ds	1
	global	?_start_ad_convert
?_start_ad_convert:	; 2 bytes @ 0x10
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x10
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x10
	ds	2
??_start_ad_convert:	; 0 bytes @ 0x12
	ds	1
??___lwtoft:	; 0 bytes @ 0x13
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x13
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x13
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x16
	ds	3
??___ftmul:	; 0 bytes @ 0x19
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1C
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1D
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x20
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x21
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x22
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x22
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x22
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x22
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x25
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x25
	ds	3
??___ftadd:	; 0 bytes @ 0x28
??___ftdiv:	; 0 bytes @ 0x28
	ds	3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x2B
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x2B
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x2C
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x2C
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2D
	ds	1
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x2E
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x2E
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x2F
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x30
	ds	1
??_read_param_eeprom:	; 0 bytes @ 0x31
??_application_init:	; 0 bytes @ 0x31
?___ftge:	; 1 bit 
	global	?___fttol
?___fttol:	; 4 bytes @ 0x31
	global	read_param_eeprom@byte_h
read_param_eeprom@byte_h:	; 1 bytes @ 0x31
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x31
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x31
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x31
	ds	1
	global	read_param_eeprom@byte_l
read_param_eeprom@byte_l:	; 1 bytes @ 0x32
	ds	2
??___ftsub:	; 0 bytes @ 0x34
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x34
	ds	1
??___fttol:	; 0 bytes @ 0x35
	ds	2
??___ftge:	; 0 bytes @ 0x37
	global	?_pid_calc
?_pid_calc:	; 3 bytes @ 0x37
	global	pid_calc@pp
pid_calc@pp:	; 2 bytes @ 0x37
	ds	1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x38
	ds	1
	global	pid_calc@NowPoint
pid_calc@NowPoint:	; 2 bytes @ 0x39
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x39
	ds	2
??_pid_calc:	; 0 bytes @ 0x3B
	ds	2
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x3D
	ds	1
?_eeprom_write:	; 0 bytes @ 0x3E
??_Mppt_Charge:	; 0 bytes @ 0x3E
	global	eeprom_write@value
eeprom_write@value:	; 1 bytes @ 0x3E
	ds	1
??_eeprom_write:	; 0 bytes @ 0x3F
	global	eeprom_write@addr
eeprom_write@addr:	; 1 bytes @ 0x3F
	ds	1
??_handle_task_process:	; 0 bytes @ 0x40
??_handle_uart_rx_buf:	; 0 bytes @ 0x40
?_Key_Menu:	; 0 bytes @ 0x40
??_scan_key_value:	; 0 bytes @ 0x40
	global	handle_uart_rx_buf@crc_in
handle_uart_rx_buf@crc_in:	; 2 bytes @ 0x40
	global	Key_Menu@key_value
Key_Menu@key_value:	; 4 bytes @ 0x40
	ds	4
??_handle_ad_loop:	; 0 bytes @ 0x44
??_auto_system:	; 0 bytes @ 0x44
??_Key_Menu:	; 0 bytes @ 0x44
??_middle_init:	; 0 bytes @ 0x44
	global	Key_Menu@code
Key_Menu@code:	; 1 bytes @ 0x44
	ds	2
??_main:	; 0 bytes @ 0x46
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    512
;!    Data        94
;!    BSS         409
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     12      14
;!    BANK0            80     70      77
;!    BANK1            80     18      79
;!    BANK2            80      0      79
;!    BANK3            80      0      79
;!    BANK4            80      3      76
;!    BANK5            80      0      42
;!    BANK6            80      0      80
;!    BANK7            80      0      80
;!    BANK8            80      0       0
;!    BANK9            80      0       0
;!    BANK10           80      0       0
;!    BANK11            0      0       0
;!    BANK12            0      0       0

;!
;!Pointer List with Targets:
;!
;!    memset@p1	PTR void  size(2) Largest target is 80
;!		 -> PID_CC_discharge(BANK3[21]), PID_CV_charge(BANK5[21]), PID_CC_charge(BANK5[21]), uart1_rx_buf(BANK7[80]), 
;!
;!    memset@p	PTR unsigned char  size(2) Largest target is 80
;!		 -> PID_CC_discharge(BANK3[21]), PID_CV_charge(BANK5[21]), PID_CC_charge(BANK5[21]), uart1_rx_buf(BANK7[80]), 
;!
;!    sp__memset	PTR void  size(2) Largest target is 80
;!		 -> PID_CC_discharge(BANK3[21]), PID_CV_charge(BANK5[21]), PID_CC_charge(BANK5[21]), uart1_rx_buf(BANK7[80]), 
;!
;!    pid_init@pp	PTR struct PID_VAR size(2) Largest target is 21
;!		 -> PID_CC_discharge(BANK3[21]), PID_CV_charge(BANK5[21]), PID_CC_charge(BANK5[21]), 
;!
;!    pid_calc@pp	PTR struct PID_VAR size(2) Largest target is 21
;!		 -> PID_CC_discharge(BANK3[21]), PID_CV_charge(BANK5[21]), PID_CC_charge(BANK5[21]), 
;!
;!    crc16@puchMsg	PTR volatile unsigned char  size(1) Largest target is 80
;!		 -> uart1_tx_buf(BANK6[80]), uart1_rx_buf(BANK7[80]), 
;!
;!    uart_send_point	PTR unsigned char  size(1) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _isr in COMMON
;!
;!    _isr->i1_Set_Bost_Pwm_Duty
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_handle_ad_loop
;!    _main->_scan_key_value
;!    _scan_key_value->_eeprom_write
;!    _read_param_eeprom->___ftdiv
;!    _auto_system->_start_ad_convert
;!    _handle_uart_rx_buf->_eeprom_write
;!    ___lbtoft->___ftpack
;!    _handle_task_process->_eeprom_write
;!    _handle_ad_loop->_start_ad_convert
;!    _start_ad_convert->___lwdiv
;!    ___lwdiv->___wmul
;!    _Mppt_Charge->___fttol
;!    _Mppt_Charge->_pid_calc
;!    _pid_calc->___ftge
;!    ___ftsub->___ftadd
;!    ___ftge->___ftdiv
;!    ___awtoft->___ftpack
;!    ___lwtoft->___lwdiv
;!    ___fttol->___ftdiv
;!    _application_init->___ftdiv
;!    _pid_init->_memset
;!    _Key_Menu->_eeprom_write
;!    _eeprom_write->___fttol
;!    ___ftadd->___ftmul
;!    ___ftdiv->___ftmul
;!    ___ftmul->___lwtoft
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _middle_init->_auto_system
;!    _auto_system->_start_ad_convert
;!    _handle_ad_loop->_pid_calc
;!    _Mppt_Charge->_pid_calc
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    _main->_handle_ad_loop
;!
;!Critical Paths under _isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _isr in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _isr in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _isr in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _isr in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _isr in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _isr in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _isr in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _isr in BANK12
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0  421414
;!                           _Key_Menu
;!                   _application_init
;!                        _driver_init
;!                     _handle_ad_loop
;!                _handle_task_process
;!                 _handle_uart_rx_buf
;!                        _middle_init
;!                     _scan_key_value
;! ---------------------------------------------------------------------------------
;! (1) _scan_key_value                                       8     8      0   12529
;!                                             64 BANK0      6     6      0
;!                                              0 BANK1      2     2      0
;!                   _Disable_Bost_Pwm
;!                   _Disable_Buck_Pwm
;!                    _Enable_Bost_Pwm
;!                  _Set_Bost_Pwm_Duty
;!                  _Set_Buck_Pwm_Duty
;!                           _delay_ms
;!                       _eeprom_write
;! ---------------------------------------------------------------------------------
;! (1) _middle_init                                          0     0      0   75270
;!                        _auto_system
;!                  _read_param_eeprom
;! ---------------------------------------------------------------------------------
;! (2) _read_param_eeprom                                    2     2      0   28002
;!                                             49 BANK0      2     2      0
;!                           ___awtoft
;!                            ___ftdiv
;!                            ___ftmul
;!                           ___lbtoft
;!                             ___lmul
;!                        _eeprom_read
;! ---------------------------------------------------------------------------------
;! (3) ___lmul                                              12     4      8     220
;!                                              3 BANK0     12     4      8
;! ---------------------------------------------------------------------------------
;! (2) _auto_system                                          3     3      0   47268
;!                                             10 BANK1      3     3      0
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                           ___lwtoft
;!                           _delay_ms
;!                        _eeprom_read
;!                       _eeprom_write
;!                   _start_ad_convert
;! ---------------------------------------------------------------------------------
;! (1) _handle_uart_rx_buf                                   5     5      0   65676
;!                                             64 BANK0      2     2      0
;!                   _Disable_Bost_Pwm
;!                   _Disable_Buck_Pwm
;!                    _Enable_Bost_Pwm
;!                  _Set_Bost_Pwm_Duty
;!                  _Set_Buck_Pwm_Duty
;!                           ___awtoft
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___fttol
;!                           ___lbtoft
;!                           ___lwtoft
;!                             ___wmul
;!                              _crc16
;!                           _delay_ms
;!                        _eeprom_read
;!                       _eeprom_write
;!                             _memset
;! ---------------------------------------------------------------------------------
;! (3) _eeprom_read                                          1     1      0      31
;!                                              3 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _crc16                                               10     7      3    1122
;!                                              3 BANK0     10     7      3
;! ---------------------------------------------------------------------------------
;! (3) ___lbtoft                                             5     1      4    2584
;!                                             11 BANK0      5     1      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) _handle_task_process                                  0     0      0   41198
;!                   _Disable_Bost_Pwm
;!                   _Disable_Buck_Pwm
;!                    _Enable_Bost_Pwm
;!                  _Set_Bost_Pwm_Duty
;!                  _Set_Buck_Pwm_Duty
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___fttol
;!                           _delay_ms
;!                       _eeprom_write
;!                           _pid_init
;! ---------------------------------------------------------------------------------
;! (1) _handle_ad_loop                                       5     5      0  188799
;!                                             68 BANK0      2     2      0
;!                                              0 BANK4      3     3      0
;!                   _Disable_Bost_Pwm
;!                   _Disable_Buck_Pwm
;!                    _Enable_Bost_Pwm
;!                    _Enable_Buck_Pwm
;!                        _Mppt_Charge
;!                  _Set_Bost_Pwm_Duty
;!                  _Set_Buck_Pwm_Duty
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___fttol
;!                            ___lldiv
;!                            ___lwdiv
;!                           ___lwtoft
;!                             ___wmul
;!                           _delay_ms
;!                           _pid_calc
;!                   _start_ad_convert
;! ---------------------------------------------------------------------------------
;! (3) _start_ad_convert                                    63    61      2    1879
;!                                             16 BANK0     52    50      2
;!                                              0 BANK1     10    10      0
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              7     3      4     703
;!                                              9 BANK0      7     3      4
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     906
;!                                              3 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             13     5      8     395
;!                                              3 BANK0     13     5      8
;! ---------------------------------------------------------------------------------
;! (2) _Mppt_Charge                                          0     0      0   77100
;!                  _Set_Buck_Pwm_Duty
;!                            ___ftadd
;!                             ___ftge
;!                            ___fttol
;!                           ___lwtoft
;!                           _pid_calc
;! ---------------------------------------------------------------------------------
;! (2) _pid_calc                                            25    21      4   44055
;!                                             55 BANK0      7     3      4
;!                                              0 BANK1     18    18      0
;!                           ___awtoft
;!                            ___ftadd
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftsub
;! ---------------------------------------------------------------------------------
;! (3) ___ftsub                                              6     0      6    6689
;!                                             46 BANK0      6     0      6
;!                           ___awtoft (ARG)
;!                            ___ftadd
;! ---------------------------------------------------------------------------------
;! (3) ___ftge                                               6     0      6   14468
;!                                             49 BANK0      6     0      6
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                            ___lwdiv (ARG)
;!                           ___lwtoft (ARG)
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___awtoft                                             4     1      3    5015
;!                                             11 BANK0      4     1      3
;!                           ___ftpack
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___lwtoft                                             3     0      3    6930
;!                                             16 BANK0      3     0      3
;!                           ___ftpack
;!                            ___lwdiv (ARG)
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             13     9      4    3411
;!                                             49 BANK0     13     9      4
;!                            ___ftadd (ARG)
;!                            ___ftdiv (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _Enable_Buck_Pwm                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _driver_init                                          0     0      0       0
;!                           _Init_Ird
;!                           _init_adc
;!                     _init_interrupt
;!                           _init_key
;!                           _init_osc
;!                          _init_port
;!                           _init_pwm
;!                        _init_timer1
;!                         _init_uart1
;! ---------------------------------------------------------------------------------
;! (2) _init_uart1                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_timer1                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_pwm                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_port                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_osc                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_key                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_interrupt                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_adc                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Init_Ird                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _application_init                                     0     0      0   25428
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                           _pid_init
;! ---------------------------------------------------------------------------------
;! (2) _pid_init                                             2     0      2     778
;!                                             11 BANK0      2     0      2
;!                             _memset
;! ---------------------------------------------------------------------------------
;! (2) _memset                                               8     2      6     414
;!                                              3 BANK0      8     2      6
;! ---------------------------------------------------------------------------------
;! (1) _Key_Menu                                             7     3      4   12514
;!                                             64 BANK0      5     1      4
;!                   _Disable_Bost_Pwm
;!                   _Disable_Buck_Pwm
;!                    _Enable_Bost_Pwm
;!                  _Set_Bost_Pwm_Duty
;!                  _Set_Buck_Pwm_Duty
;!                           _delay_ms
;!                       _eeprom_write
;! ---------------------------------------------------------------------------------
;! (2) _eeprom_write                                         2     1      1    3450
;!                                             62 BANK0      2     1      1
;!                            ___ftdiv (ARG)
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _delay_ms                                             6     4      2    1984
;!                                              3 BANK0      6     4      2
;! ---------------------------------------------------------------------------------
;! (2) _Set_Buck_Pwm_Duty                                    4     2      2    1920
;!                                              3 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (2) _Set_Bost_Pwm_Duty                                    4     2      2    5005
;!                                              3 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (2) _Enable_Bost_Pwm                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Disable_Buck_Pwm                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Disable_Bost_Pwm                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) ___ftadd                                             12     6      6    6316
;!                                             34 BANK0     12     6      6
;!                           ___awtoft (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftdiv                                             15     9      6    8825
;!                                             34 BANK0     15     9      6
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                            ___lwdiv (ARG)
;!                           ___lwtoft (ARG)
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    2553
;!                                              3 BANK0      8     3      5
;! ---------------------------------------------------------------------------------
;! (3) ___ftmul                                             15     9      6    9509
;!                                             19 BANK0     15     9      6
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    2553
;!                                              3 BANK0      8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (7) _isr                                                 12    12      0     597
;!                                              4 COMMON     8     8      0
;!                                              0 BANK0      3     3      0
;!                 i1_Disable_Bost_Pwm
;!                i1_Set_Bost_Pwm_Duty
;! ---------------------------------------------------------------------------------
;! (8) i1_Set_Bost_Pwm_Duty                                  4     2      2     485
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (8) i1_Disable_Bost_Pwm                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Key_Menu
;!     _Disable_Bost_Pwm
;!     _Disable_Buck_Pwm
;!     _Enable_Bost_Pwm
;!     _Set_Bost_Pwm_Duty
;!     _Set_Buck_Pwm_Duty
;!     _delay_ms
;!     _eeprom_write
;!       ___ftdiv (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___fttol (ARG)
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftdiv (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!   _application_init
;!     ___ftadd
;!       ___awtoft (ARG)
;!         ___ftpack
;!         ___wmul (ARG)
;!       ___ftmul (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___ftdiv
;!       ___ftmul (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___ftpack (ARG)
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___ftmul
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!     _pid_init
;!       _memset
;!   _driver_init
;!     _Init_Ird
;!     _init_adc
;!     _init_interrupt
;!     _init_key
;!     _init_osc
;!     _init_port
;!     _init_pwm
;!     _init_timer1
;!     _init_uart1
;!   _handle_ad_loop
;!     _Disable_Bost_Pwm
;!     _Disable_Buck_Pwm
;!     _Enable_Bost_Pwm
;!     _Enable_Buck_Pwm
;!     _Mppt_Charge
;!       _Set_Buck_Pwm_Duty
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___ftge
;!         ___awtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftdiv (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___fttol
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftdiv (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___lwtoft
;!         ___ftpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       _pid_calc
;!         ___awtoft
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___ftadd
;!           ___awtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftge
;!           ___awtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!               ___wmul (ARG)
;!             ___ftmul (ARG)
;!               ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!                 ___lwdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftdiv (ARG)
;!             ___ftmul (ARG)
;!               ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!                 ___lwdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftmul
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftsub
;!           ___awtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!               ___wmul (ARG)
;!             ___ftmul (ARG)
;!               ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!                 ___lwdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!     _Set_Bost_Pwm_Duty
;!     _Set_Buck_Pwm_Duty
;!     ___awtoft
;!       ___ftpack
;!       ___wmul (ARG)
;!     ___ftadd
;!       ___awtoft (ARG)
;!         ___ftpack
;!         ___wmul (ARG)
;!       ___ftmul (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___ftdiv
;!       ___ftmul (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___ftpack (ARG)
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___ftge
;!       ___awtoft (ARG)
;!         ___ftpack
;!         ___wmul (ARG)
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___ftdiv (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___ftmul (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___ftmul
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!     ___fttol
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___ftdiv (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!     ___lldiv
;!     ___lwdiv
;!       ___wmul (ARG)
;!     ___lwtoft
;!       ___ftpack
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___wmul
;!     _delay_ms
;!     _pid_calc
;!       ___awtoft
;!         ___ftpack
;!         ___wmul (ARG)
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___ftge
;!         ___awtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftdiv (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___ftmul
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___ftsub
;!         ___awtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!     _start_ad_convert
;!       ___lwdiv
;!         ___wmul (ARG)
;!   _handle_task_process
;!     _Disable_Bost_Pwm
;!     _Disable_Buck_Pwm
;!     _Enable_Bost_Pwm
;!     _Set_Bost_Pwm_Duty
;!     _Set_Buck_Pwm_Duty
;!     ___ftadd
;!       ___awtoft (ARG)
;!         ___ftpack
;!         ___wmul (ARG)
;!       ___ftmul (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___ftdiv
;!       ___ftmul (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___ftpack (ARG)
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___ftmul
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!     ___fttol
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___ftdiv (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!     _delay_ms
;!     _eeprom_write
;!       ___ftdiv (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___fttol (ARG)
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftdiv (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!     _pid_init
;!       _memset
;!   _handle_uart_rx_buf
;!     _Disable_Bost_Pwm
;!     _Disable_Buck_Pwm
;!     _Enable_Bost_Pwm
;!     _Set_Bost_Pwm_Duty
;!     _Set_Buck_Pwm_Duty
;!     ___awtoft
;!       ___ftpack
;!       ___wmul (ARG)
;!     ___ftdiv
;!       ___ftmul (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___ftpack (ARG)
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___ftge
;!       ___awtoft (ARG)
;!         ___ftpack
;!         ___wmul (ARG)
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___ftdiv (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___ftmul (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___ftmul
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!     ___fttol
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___ftdiv (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!     ___lbtoft
;!       ___ftpack
;!     ___lwtoft
;!       ___ftpack
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___wmul
;!     _crc16
;!     _delay_ms
;!     _eeprom_read
;!     _eeprom_write
;!       ___ftdiv (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___fttol (ARG)
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftdiv (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!     _memset
;!   _middle_init
;!     _auto_system
;!       ___ftdiv
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___ftge
;!         ___awtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftdiv (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___ftmul
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___lwtoft
;!         ___ftpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       _delay_ms
;!       _eeprom_read
;!       _eeprom_write
;!         ___ftdiv (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___fttol (ARG)
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!               ___wmul (ARG)
;!             ___ftmul (ARG)
;!               ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!                 ___lwdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftdiv (ARG)
;!             ___ftmul (ARG)
;!               ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!                 ___lwdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!       _start_ad_convert
;!         ___lwdiv
;!           ___wmul (ARG)
;!     _read_param_eeprom
;!       ___awtoft
;!         ___ftpack
;!         ___wmul (ARG)
;!       ___ftdiv
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___ftmul
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___lbtoft
;!         ___ftpack
;!       ___lmul
;!       _eeprom_read
;!   _scan_key_value
;!     _Disable_Bost_Pwm
;!     _Disable_Buck_Pwm
;!     _Enable_Bost_Pwm
;!     _Set_Bost_Pwm_Duty
;!     _Set_Buck_Pwm_Duty
;!     _delay_ms
;!     _eeprom_write
;!       ___ftdiv (ARG)
;!         ___ftmul (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___fttol (ARG)
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftdiv (ARG)
;!           ___ftmul (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!
;! _isr (ROOT)
;!   i1_Disable_Bost_Pwm
;!   i1_Set_Bost_Pwm_Duty
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             3F0      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      C       E       2      100.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     46      4D       5       96.3%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BANK1               50     12      4F       7       98.8%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BITBANK2            50      0       0       8        0.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BANK2               50      0      4F       9       98.8%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BITBANK3            50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BANK3               50      0      4F      11       98.8%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BITBANK4            50      0       0      12        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BANK4               50      3      4C      13       95.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BITBANK5            50      0       0      14        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BANK5               50      0      2A      15       52.5%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BITBANK6            50      0       0      16        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BANK6               50      0      50      17      100.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BITBANK7            50      0       0      18        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BANK7               50      0      50      19      100.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!ABS                  0      0     25E      20        0.0%
;!BITBANK8            50      0       0      21        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BANK8               50      0       0      22        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITBANK9            50      0       0      23        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BANK9               50      0       0      24        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITBANK10           50      0       0      25        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BANK10              50      0       0      26        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITBANK11           50      0       0      27        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BANK11               0      0       0      28        0.0%
;!BITBANK12           30      0       0      29        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BANK12               0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!DATA                 0      0     25E      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 349 in file "D:\MCUProject\ZH-SL-H40\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  807[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Key_Menu
;;		_application_init
;;		_driver_init
;;		_handle_ad_loop
;;		_handle_task_process
;;		_handle_uart_rx_buf
;;		_middle_init
;;		_scan_key_value
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1
	file	"D:\MCUProject\ZH-SL-H40\src\main.c"
	line	349
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\MCUProject\ZH-SL-H40\src\main.c"
	line	349
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 8
; Regs used in _main: [allreg]
	line	351
	
l17344:	
;main.c: 351: driver_init();
	fcall	_driver_init
	line	352
	
l17346:	
;main.c: 352: middle_init();
	fcall	_middle_init
	line	353
	
l17348:	
;main.c: 353: application_init();
	fcall	_application_init
	line	356
;main.c: 356: while(1)
	
l808:	
	line	359
# 359 "D:\MCUProject\ZH-SL-H40\src\main.c"
clrwdt ;# 
psect	maintext
	line	361
	
l17350:	
;main.c: 361: if(handle_scan_key_flag==0x01)
	movlb 2	; select bank2
	decf	(_handle_scan_key_flag)^0100h,w
	skipz
	goto	u9521
	goto	u9520
u9521:
	goto	l17356
u9520:
	line	363
	
l17352:	
;main.c: 362: {
;main.c: 363: scan_key_value();
	fcall	_scan_key_value
	line	365
	
l17354:	
;main.c: 365: handle_scan_key_flag=0x00;
	movlb 2	; select bank2
	clrf	(_handle_scan_key_flag)^0100h
	line	368
	
l17356:	
;main.c: 366: }
;main.c: 368: if(ird_receive_flag==0x01)
	movlb 1	; select bank1
	decf	(_ird_receive_flag)^080h,w
	skipz
	goto	u9531
	goto	u9530
u9531:
	goto	l17372
u9530:
	line	370
	
l17358:	
;main.c: 369: {
;main.c: 370: Key_Menu(ird_data);
	movlb 4	; select bank4
	movf	(_ird_data+3)^0200h,w
	movlb 0	; select bank0
	movwf	(Key_Menu@key_value+3)
	movlb 4	; select bank4
	movf	(_ird_data+2)^0200h,w
	movlb 0	; select bank0
	movwf	(Key_Menu@key_value+2)
	movlb 4	; select bank4
	movf	(_ird_data+1)^0200h,w
	movlb 0	; select bank0
	movwf	(Key_Menu@key_value+1)
	movlb 4	; select bank4
	movf	(_ird_data)^0200h,w
	movlb 0	; select bank0
	movwf	(Key_Menu@key_value)

	fcall	_Key_Menu
	line	372
	
l17360:	
;main.c: 372: receive_bit_count=0x00;
	movlb 1	; select bank1
	clrf	(_receive_bit_count)^080h
	line	374
	
l17362:	
;main.c: 374: ird_status=0x00;
	clrf	(_ird_status)^080h
	line	376
	
l17364:	
;main.c: 376: ird_data=0x00;
	movlb 4	; select bank4
	clrf	(_ird_data)^0200h
	clrf	(_ird_data+1)^0200h
	clrf	(_ird_data+2)^0200h
	clrf	(_ird_data+3)^0200h
	line	378
	
l17366:	
;main.c: 378: TMR0=0;
	movlb 0	; select bank0
	clrf	(21)	;volatile
	line	380
	
l17368:	
;main.c: 380: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	382
	
l17370:	
;main.c: 382: ird_receive_flag=0x00;
	movlb 1	; select bank1
	clrf	(_ird_receive_flag)^080h
	line	386
	
l17372:	
;main.c: 384: }
;main.c: 386: handle_ad_loop();
	fcall	_handle_ad_loop
	line	388
	
l17374:	
;main.c: 388: handle_task_process();
	fcall	_handle_task_process
	line	390
	
l17376:	
;main.c: 390: if (RCSTAbits.FERR || RCSTAbits.OERR)
	movlb 3	; select bank3
	btfsc	(413)^0180h,2	;volatile
	goto	u9541
	goto	u9540
u9541:
	goto	l813
u9540:
	
l17378:	
	btfss	(413)^0180h,1	;volatile
	goto	u9551
	goto	u9550
u9551:
	goto	l17380
u9550:
	
l813:	
	line	392
;main.c: 391: {
;main.c: 392: RCSTAbits.CREN = 0x00;
	bcf	(413)^0180h,4	;volatile
	line	393
;main.c: 393: RCSTAbits.SPEN = 0x00;
	bcf	(413)^0180h,7	;volatile
	line	394
;main.c: 394: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	395
;main.c: 395: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	396
;main.c: 396: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	397
;main.c: 397: RCSTAbits.CREN = 0x01;
	movlb 3	; select bank3
	bsf	(413)^0180h,4	;volatile
	line	398
;main.c: 398: RCSTAbits.SPEN = 0x01;
	bsf	(413)^0180h,7	;volatile
	line	401
	
l17380:	
;main.c: 399: }
;main.c: 401: if(uart1_receive_flag==TRUE)
	movlb 1	; select bank1
	decf	(_uart1_receive_flag)^080h,w
	skipz
	goto	u9561
	goto	u9560
u9561:
	goto	l808
u9560:
	line	403
	
l17382:	
;main.c: 402: {
;main.c: 403: handle_uart_rx_buf();
	fcall	_handle_uart_rx_buf
	line	405
	
l17384:	
;main.c: 405: if (RCSTAbits.FERR || RCSTAbits.OERR)
	movlb 3	; select bank3
	btfsc	(413)^0180h,2	;volatile
	goto	u9571
	goto	u9570
u9571:
	goto	l817
u9570:
	
l17386:	
	btfss	(413)^0180h,1	;volatile
	goto	u9581
	goto	u9580
u9581:
	goto	l17388
u9580:
	
l817:	
	line	407
;main.c: 406: {
;main.c: 407: RCSTAbits.CREN = 0x00;
	bcf	(413)^0180h,4	;volatile
	line	408
;main.c: 408: RCSTAbits.SPEN = 0x00;
	bcf	(413)^0180h,7	;volatile
	line	409
;main.c: 409: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	410
;main.c: 410: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	411
;main.c: 411: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	412
;main.c: 412: RCSTAbits.CREN = 0x01;
	movlb 3	; select bank3
	bsf	(413)^0180h,4	;volatile
	line	413
;main.c: 413: RCSTAbits.SPEN = 0x01;
	bsf	(413)^0180h,7	;volatile
	line	416
	
l17388:	
;main.c: 414: }
;main.c: 416: uart1_receive_byte_count=0x00;
	movlb 1	; select bank1
	clrf	(_uart1_receive_byte_count)^080h
	line	418
;main.c: 418: uart1_receive_flag=FALSE;
	clrf	(_uart1_receive_flag)^080h
	goto	l808
	global	start
	ljmp	start
	opt stack 0
	line	425
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_scan_key_value

;; *************** function _scan_key_value *****************
;; Defined at:
;;		line 62 in file "D:\MCUProject\ZH-SL-H40\src\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key_temp        2    0[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1E/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       2       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       2       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Disable_Bost_Pwm
;;		_Disable_Buck_Pwm
;;		_Enable_Bost_Pwm
;;		_Set_Bost_Pwm_Duty
;;		_Set_Buck_Pwm_Duty
;;		_delay_ms
;;		_eeprom_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\key.c"
	line	62
global __ptext1
__ptext1:	;psect for function _scan_key_value
psect	text1
	file	"D:\MCUProject\ZH-SL-H40\src\key.c"
	line	62
	global	__size_of_scan_key_value
	__size_of_scan_key_value	equ	__end_of_scan_key_value-_scan_key_value
	
_scan_key_value:	
;incstack = 0
	opt	stack 12
; Regs used in _scan_key_value: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	66
	
l17024:	
;key.c: 64: unsigned int key_temp;
;key.c: 66: key_temp=0x00;
	movlb 1	; select bank1
	clrf	(scan_key_value@key_temp)^080h
	clrf	(scan_key_value@key_temp+1)^080h
	line	68
	
l17026:	
;key.c: 68: key_temp=(key_temp<<1)|(PORTBbits.RB4);
	movlb 0	; select bank0
	swapf	(13),w	;volatile
	andlw	(1<<1)-1
	movwf	(??_scan_key_value+0)+0
	clrf	(??_scan_key_value+0)+0+1
	movlb 1	; select bank1
	movf	(scan_key_value@key_temp+1)^080h,w
	movlb 0	; select bank0
	movwf	(??_scan_key_value+2)+0+1
	movlb 1	; select bank1
	movf	(scan_key_value@key_temp)^080h,w
	movlb 0	; select bank0
	movwf	(??_scan_key_value+2)+0
	lslf	(??_scan_key_value+2)+0,f
	rlf	(??_scan_key_value+2)+1,f
	movf	0+(??_scan_key_value+0)+0,w
	iorwf	0+(??_scan_key_value+2)+0,w
	movwf	(??_scan_key_value+4)+0
	movf	1+(??_scan_key_value+0)+0,w
	iorwf	1+(??_scan_key_value+2)+0,w
	movwf	1+(??_scan_key_value+4)+0
	movf	0+(??_scan_key_value+4)+0,w
	movlb 1	; select bank1
	movwf	(scan_key_value@key_temp)^080h
	movlb 0	; select bank0
	movf	1+(??_scan_key_value+4)+0,w
	movlb 1	; select bank1
	movwf	(scan_key_value@key_temp+1)^080h
	line	70
	
l17028:	
;key.c: 70: key_temp=(key_temp<<1)|(PORTCbits.RC6);
	movlb 0	; select bank0
	swapf	(14),w	;volatile
	rrf	wreg,f
	rrf	wreg,f
	andlw	(1<<1)-1
	movwf	(??_scan_key_value+0)+0
	clrf	(??_scan_key_value+0)+0+1
	movlb 1	; select bank1
	movf	(scan_key_value@key_temp+1)^080h,w
	movlb 0	; select bank0
	movwf	(??_scan_key_value+2)+0+1
	movlb 1	; select bank1
	movf	(scan_key_value@key_temp)^080h,w
	movlb 0	; select bank0
	movwf	(??_scan_key_value+2)+0
	lslf	(??_scan_key_value+2)+0,f
	rlf	(??_scan_key_value+2)+1,f
	movf	0+(??_scan_key_value+0)+0,w
	iorwf	0+(??_scan_key_value+2)+0,w
	movwf	(??_scan_key_value+4)+0
	movf	1+(??_scan_key_value+0)+0,w
	iorwf	1+(??_scan_key_value+2)+0,w
	movwf	1+(??_scan_key_value+4)+0
	movf	0+(??_scan_key_value+4)+0,w
	movlb 1	; select bank1
	movwf	(scan_key_value@key_temp)^080h
	movlb 0	; select bank0
	movf	1+(??_scan_key_value+4)+0,w
	movlb 1	; select bank1
	movwf	(scan_key_value@key_temp+1)^080h
	line	72
	
l17030:	
;key.c: 72: key_temp=(key_temp<<1)|(PORTCbits.RC5);
	movlb 0	; select bank0
	swapf	(14),w	;volatile
	rrf	wreg,f
	andlw	(1<<1)-1
	movwf	(??_scan_key_value+0)+0
	clrf	(??_scan_key_value+0)+0+1
	movlb 1	; select bank1
	movf	(scan_key_value@key_temp+1)^080h,w
	movlb 0	; select bank0
	movwf	(??_scan_key_value+2)+0+1
	movlb 1	; select bank1
	movf	(scan_key_value@key_temp)^080h,w
	movlb 0	; select bank0
	movwf	(??_scan_key_value+2)+0
	lslf	(??_scan_key_value+2)+0,f
	rlf	(??_scan_key_value+2)+1,f
	movf	0+(??_scan_key_value+0)+0,w
	iorwf	0+(??_scan_key_value+2)+0,w
	movwf	(??_scan_key_value+4)+0
	movf	1+(??_scan_key_value+0)+0,w
	iorwf	1+(??_scan_key_value+2)+0,w
	movwf	1+(??_scan_key_value+4)+0
	movf	0+(??_scan_key_value+4)+0,w
	movlb 1	; select bank1
	movwf	(scan_key_value@key_temp)^080h
	movlb 0	; select bank0
	movf	1+(??_scan_key_value+4)+0,w
	movlb 1	; select bank1
	movwf	(scan_key_value@key_temp+1)^080h
	line	74
	
l17032:	
;key.c: 74: key_temp=(key_temp<<1)|(PORTCbits.RC4);
	movlb 0	; select bank0
	swapf	(14),w	;volatile
	andlw	(1<<1)-1
	movwf	(??_scan_key_value+0)+0
	clrf	(??_scan_key_value+0)+0+1
	movlb 1	; select bank1
	movf	(scan_key_value@key_temp+1)^080h,w
	movlb 0	; select bank0
	movwf	(??_scan_key_value+2)+0+1
	movlb 1	; select bank1
	movf	(scan_key_value@key_temp)^080h,w
	movlb 0	; select bank0
	movwf	(??_scan_key_value+2)+0
	lslf	(??_scan_key_value+2)+0,f
	rlf	(??_scan_key_value+2)+1,f
	movf	0+(??_scan_key_value+0)+0,w
	iorwf	0+(??_scan_key_value+2)+0,w
	movwf	(??_scan_key_value+4)+0
	movf	1+(??_scan_key_value+0)+0,w
	iorwf	1+(??_scan_key_value+2)+0,w
	movwf	1+(??_scan_key_value+4)+0
	movf	0+(??_scan_key_value+4)+0,w
	movlb 1	; select bank1
	movwf	(scan_key_value@key_temp)^080h
	movlb 0	; select bank0
	movf	1+(??_scan_key_value+4)+0,w
	movlb 1	; select bank1
	movwf	(scan_key_value@key_temp+1)^080h
	line	78
;key.c: 78: switch(key_temp)
	goto	l17050
	line	80
	
l17034:	
	clrf	(_KEY_STATE)^080h
	goto	l17052
	line	82
;key.c: 82: case 0b0111: KEY_VALUE =K1;KEY_STATE =KEY_DOWN;break;
	
l643:	
	clrf	(_KEY_VALUE)^080h
	incf	(_KEY_VALUE)^080h,f
	clrf	(_KEY_STATE)^080h
	incf	(_KEY_STATE)^080h,f
	goto	l17052
	line	84
	
l17036:	
	movlw	(02h)
	movwf	(_KEY_VALUE)^080h
	
l17038:	
	clrf	(_KEY_STATE)^080h
	incf	(_KEY_STATE)^080h,f
	goto	l17052
	line	86
	
l17040:	
	movlw	(03h)
	movwf	(_KEY_VALUE)^080h
	goto	l17038
	line	88
	
l17044:	
	movlw	(04h)
	movwf	(_KEY_VALUE)^080h
	goto	l17038
	line	78
	
l17050:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            8     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (scan_key_value@key_temp+1)^080h,w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l19444
	goto	l17038
	opt asmopt_on
	
l19444:	
; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 7 to 15
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           27     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (scan_key_value@key_temp)^080h,w
	opt asmopt_off
	xorlw	7^0	; case 7
	skipnz
	goto	l643
	xorlw	11^7	; case 11
	skipnz
	goto	l17036
	xorlw	13^11	; case 13
	skipnz
	goto	l17040
	xorlw	14^13	; case 14
	skipnz
	goto	l17044
	xorlw	15^14	; case 15
	skipnz
	goto	l17034
	goto	l17038
	opt asmopt_on

	line	95
	
l17052:	
;key.c: 95: if(KEY_STATE==KEY_UP)
	movf	(_KEY_STATE)^080h,f
	skipz
	goto	u9411
	goto	u9410
u9411:
	goto	l648
u9410:
	line	97
	
l17054:	
;key.c: 96: {
;key.c: 97: if(KEY_VALUE!=KNOP)
	movf	(_KEY_VALUE)^080h,w
	xorlw	010h&0ffh
	skipnz
	goto	u9421
	goto	u9420
u9421:
	goto	l648
u9420:
	goto	l17198
	line	101
;key.c: 100: {
;key.c: 101: case K1:
	
l651:	
	line	102
;key.c: 102: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	103
	
l17058:	
;key.c: 103: key1_index=0x00;
	movlb 2	; select bank2
	clrf	(_key1_index)^0100h
	line	104
;key.c: 104: break;
	goto	l17200
	line	106
	
l17060:	
;key.c: 106: if(device_status==0x01)
	movlb 0	; select bank0
	decf	(_device_status),w
	skipz
	goto	u9431
	goto	u9430
u9431:
	goto	l17200
u9430:
	line	108
	
l17062:	
;key.c: 107: {
;key.c: 108: light_mode =0x00;
	movlb 1	; select bank1
	clrf	(_light_mode)^080h
	line	109
	
l17064:	
;key.c: 109: eeprom_write(0x36,(unsigned char)(light_mode));
	movf	(_light_mode)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(036h)
	fcall	_eeprom_write
	line	110
	
l17066:	
;key.c: 110: led_out_ctrl=0x00;
	movlb 1	; select bank1
	clrf	(_led_out_ctrl)^080h
	line	111
;key.c: 111: eeprom_write(0x39,(unsigned char)(led_out_ctrl));
	movf	(_led_out_ctrl)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(039h)
	fcall	_eeprom_write
	line	112
	
l17068:	
;key.c: 114: lr_cnt = 0x00;
	movlb 1	; select bank1
	clrf	(_work_mode)^080h
	line	116
	
l17070:	
;key.c: 116: nop_index=0x00;
	clrf	(_nop_index)^080h
	line	117
	
l17072:	
;key.c: 117: discharge_index=0x00;
	clrf	(_discharge_index)^080h
	line	118
	
l17074:	
;key.c: 118: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	120
	
l17076:	
;key.c: 120: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	121
	
l17078:	
;key.c: 121: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	122
;key.c: 122: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	123
	
l17080:	
;key.c: 123: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	124
	
l17082:	
;key.c: 124: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	127
	
l17084:	
;key.c: 127: (LATCbits.LATC3 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,3	;volatile
	line	129
	
l17086:	
;key.c: 129: Enable_Bost_Pwm();
	fcall	_Enable_Bost_Pwm
	line	131
;key.c: 131: Set_Bost_Pwm_Duty(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	133
;key.c: 133: delay_ms(1000);
	movlw	low(03E8h)
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	movlw	high(03E8h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	135
;key.c: 135: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	137
	
l17088:	
;key.c: 137: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	138
	
l17090:	
;key.c: 138: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	139
	
l17092:	
;key.c: 139: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	141
	
l17094:	
;key.c: 141: pv_voltage_status=0x00;
	movlb 1	; select bank1
	clrf	(_pv_voltage_status)^080h
	line	143
	
l17096:	
;key.c: 143: day_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_day_time_count)^0200h
	clrf	(_day_time_count+1)^0200h
	clrf	(_day_time_count+2)^0200h
	clrf	(_day_time_count+3)^0200h
	line	145
	
l17098:	
;key.c: 145: night_time_count=0x00;
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	line	147
	
l17100:	
;key.c: 147: pv_time_count=0x00;
	clrf	(_pv_time_count)^0200h
	clrf	(_pv_time_count+1)^0200h
	clrf	(_pv_time_count+2)^0200h
	clrf	(_pv_time_count+3)^0200h
	goto	l17200
	line	152
	
l17102:	
;key.c: 152: if(device_status==0x01)
	movlb 0	; select bank0
	decf	(_device_status),w
	skipz
	goto	u9441
	goto	u9440
u9441:
	goto	l17200
u9440:
	line	154
	
l17104:	
;key.c: 153: {
;key.c: 154: light_mode =0x01;
	movlb 1	; select bank1
	clrf	(_light_mode)^080h
	incf	(_light_mode)^080h,f
	line	155
	
l17106:	
;key.c: 155: eeprom_write(0x36,(unsigned char)(light_mode));
	movf	(_light_mode)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(036h)
	fcall	_eeprom_write
	line	156
	
l17108:	
;key.c: 156: led_out_ctrl=0x00;
	movlb 1	; select bank1
	clrf	(_led_out_ctrl)^080h
	line	157
	
l17110:	
;key.c: 157: eeprom_write(0x39,(unsigned char)(led_out_ctrl));
	movf	(_led_out_ctrl)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(039h)
	fcall	_eeprom_write
	line	158
;key.c: 160: lr_cnt = 0x00;
	movlb 1	; select bank1
	clrf	(_work_mode)^080h
	line	162
;key.c: 162: nop_index=0x00;
	clrf	(_nop_index)^080h
	line	163
;key.c: 163: discharge_index=0x00;
	clrf	(_discharge_index)^080h
	line	164
;key.c: 164: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	166
	
l17112:	
;key.c: 166: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	167
	
l17114:	
;key.c: 167: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	168
	
l17116:	
;key.c: 168: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	169
	
l17118:	
;key.c: 169: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	170
	
l17120:	
;key.c: 170: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	173
	
l17122:	
;key.c: 173: (LATCbits.LATC3 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,3	;volatile
	line	175
	
l17124:	
;key.c: 175: Enable_Bost_Pwm();
	fcall	_Enable_Bost_Pwm
	line	177
	
l17126:	
;key.c: 177: Set_Bost_Pwm_Duty(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	179
	
l17128:	
;key.c: 179: delay_ms(1000);
	movlw	low(03E8h)
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	movlw	high(03E8h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	181
	
l17130:	
;key.c: 181: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	183
	
l17132:	
;key.c: 183: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	184
	
l17134:	
;key.c: 184: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	185
	
l17136:	
;key.c: 185: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	187
;key.c: 187: pv_voltage_status=0x00;
	movlb 1	; select bank1
	clrf	(_pv_voltage_status)^080h
	goto	l17096
	line	198
	
l17144:	
;key.c: 198: if(device_status==0x01)
	movlb 0	; select bank0
	decf	(_device_status),w
	skipz
	goto	u9451
	goto	u9450
u9451:
	goto	l17200
u9450:
	line	200
	
l17146:	
;key.c: 199: {
;key.c: 200: light_mode =0x02;
	movlw	(02h)
	movlb 1	; select bank1
	movwf	(_light_mode)^080h
	line	201
	
l17148:	
;key.c: 201: eeprom_write(0x36,(unsigned char)(light_mode));
	movf	(_light_mode)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(036h)
	fcall	_eeprom_write
	line	203
	
l17150:	
;key.c: 203: led_out_ctrl=0x00;
	movlb 1	; select bank1
	clrf	(_led_out_ctrl)^080h
	line	204
	
l17152:	
;key.c: 204: eeprom_write(0x39,(unsigned char)(led_out_ctrl));
	movf	(_led_out_ctrl)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(039h)
	fcall	_eeprom_write
	line	206
	
l17154:	
;key.c: 208: lr_cnt = 0x00;
	movlb 1	; select bank1
	clrf	(_work_mode)^080h
	line	210
	
l17156:	
;key.c: 210: nop_index=0x00;
	clrf	(_nop_index)^080h
	line	211
	
l17158:	
;key.c: 211: discharge_index=0x00;
	clrf	(_discharge_index)^080h
	line	212
	
l17160:	
;key.c: 212: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	214
	
l17162:	
;key.c: 214: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	215
	
l17164:	
;key.c: 215: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	216
	
l17166:	
;key.c: 216: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	217
	
l17168:	
;key.c: 217: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	218
	
l17170:	
;key.c: 218: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	221
	
l17172:	
;key.c: 221: (LATCbits.LATC3 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,3	;volatile
	line	223
	
l17174:	
;key.c: 223: Enable_Bost_Pwm();
	fcall	_Enable_Bost_Pwm
	line	225
	
l17176:	
;key.c: 225: Set_Bost_Pwm_Duty(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	227
	
l17178:	
;key.c: 227: delay_ms(1000);
	movlw	low(03E8h)
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	movlw	high(03E8h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	229
	
l17180:	
;key.c: 229: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	goto	l17088
	line	99
	
l17198:	
	movf	(_KEY_VALUE)^080h,w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           17     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l651
	xorlw	2^1	; case 2
	skipnz
	goto	l17144
	xorlw	3^2	; case 3
	skipnz
	goto	l17060
	xorlw	4^3	; case 4
	skipnz
	goto	l17102
	goto	l17200
	opt asmopt_on

	line	248
	
l17200:	
;key.c: 248: KEY_VALUE=KNOP;
	movlw	(010h)
	movlb 1	; select bank1
	movwf	(_KEY_VALUE)^080h
	line	252
	
l648:	
	line	254
;key.c: 250: }
;key.c: 252: }
;key.c: 254: if((KEY_VALUE ==K1)&&(KEY_STATE == KEY_DOWN)&&(key1_index==0x00))
	decf	(_KEY_VALUE)^080h,w
	skipz
	goto	u9461
	goto	u9460
u9461:
	goto	l17286
u9460:
	
l17202:	
	decf	(_KEY_STATE)^080h,w
	skipz
	goto	u9471
	goto	u9470
u9471:
	goto	l17286
u9470:
	
l17204:	
	movlb 2	; select bank2
	movf	(_key1_index)^0100h,f
	skipz
	goto	u9481
	goto	u9480
u9481:
	goto	l17286
u9480:
	line	256
	
l17206:	
;key.c: 255: {
;key.c: 256: if(key1_time_count<80)
	movlw	(050h)
	subwf	(_key1_time_count)^0100h,w
	skipnc
	goto	u9491
	goto	u9490
u9491:
	goto	l17210
u9490:
	line	258
	
l17208:	
;key.c: 257: {
;key.c: 258: key1_time_count++;
	incf	(_key1_time_count)^0100h,f
	line	260
;key.c: 260: }
	goto	l17288
	line	263
	
l17210:	
;key.c: 261: else
;key.c: 262: {
;key.c: 263: key1_time_count=0x00;
	clrf	(_key1_time_count)^0100h
	line	265
	
l17212:	
;key.c: 265: device_status^=0x01;
	movlw	(01h)
	movlb 0	; select bank0
	xorwf	(_device_status),f
	line	267
	
l17214:	
;key.c: 267: eeprom_write(0x38,(unsigned char)(device_status));
	movf	(_device_status),w
	movwf	(eeprom_write@value)
	movlw	(038h)
	fcall	_eeprom_write
	line	269
	
l17216:	
;key.c: 269: key1_index=0x01;
	movlb 2	; select bank2
	clrf	(_key1_index)^0100h
	incf	(_key1_index)^0100h,f
	line	271
	
l17218:	
;key.c: 271: if(device_status==0x00)
	movlb 0	; select bank0
	movf	(_device_status),f
	skipz
	goto	u9501
	goto	u9500
u9501:
	goto	l17232
u9500:
	line	273
	
l17220:	
;key.c: 274: lr_cnt = 0x00;
	movlw	(04h)
	movlb 1	; select bank1
	movwf	(_work_mode)^080h
	line	276
	
l17222:	
;key.c: 276: nop_index=0x00;
	clrf	(_nop_index)^080h
	line	277
	
l17224:	
;key.c: 277: discharge_index=0x00;
	clrf	(_discharge_index)^080h
	line	278
	
l17226:	
;key.c: 278: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	280
	
l17228:	
;key.c: 280: led_out_ctrl=0x00;
	clrf	(_led_out_ctrl)^080h
	line	281
	
l17230:	
;key.c: 281: eeprom_write(0x39,(unsigned char)(led_out_ctrl));
	movf	(_led_out_ctrl)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(039h)
	fcall	_eeprom_write
	line	282
;key.c: 282: }
	goto	l17288
	line	285
	
l17232:	
;key.c: 283: else
;key.c: 284: {
;key.c: 285: work_mode =0x00;
	movlb 1	; select bank1
	clrf	(_work_mode)^080h
	line	286
	
l17234:	
;key.c: 286: (LATCbits.LATC0 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,0	;volatile
	line	288
;key.c: 288: open_sleep_time=0x00;
	clrf	(_open_sleep_time)^0100h
	line	289
;key.c: 290: lr_cnt = 0x00;
	movlb 4	; select bank4
	clrf	(_sleep_time_count)^0200h
	clrf	(_sleep_time_count+1)^0200h
	line	292
;key.c: 292: nop_index=0x00;
	movlb 1	; select bank1
	clrf	(_nop_index)^080h
	line	293
;key.c: 293: discharge_index=0x00;
	clrf	(_discharge_index)^080h
	line	294
;key.c: 294: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	296
;key.c: 296: led_out_ctrl=0x00;
	clrf	(_led_out_ctrl)^080h
	line	297
	
l17236:	
;key.c: 297: eeprom_write(0x39,(unsigned char)(led_out_ctrl));
	movf	(_led_out_ctrl)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(039h)
	fcall	_eeprom_write
	line	299
	
l17238:	
;key.c: 299: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	300
	
l17240:	
;key.c: 300: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	301
	
l17242:	
;key.c: 301: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	302
	
l17244:	
;key.c: 302: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	303
	
l17246:	
;key.c: 303: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	305
	
l17248:	
;key.c: 305: (LATCbits.LATC3 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,3	;volatile
	line	306
	
l17250:	
;key.c: 306: Enable_Bost_Pwm();
	fcall	_Enable_Bost_Pwm
	line	307
	
l17252:	
;key.c: 307: Set_Bost_Pwm_Duty(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	309
	
l17254:	
;key.c: 309: delay_ms(1000);
	movlw	low(03E8h)
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	movlw	high(03E8h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	311
	
l17256:	
;key.c: 311: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	313
	
l17258:	
;key.c: 313: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	314
	
l17260:	
;key.c: 314: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	315
	
l17262:	
;key.c: 315: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	317
	
l17264:	
;key.c: 317: open_an0_time=0x01;
	movlb 2	; select bank2
	clrf	(_open_an0_time)^0100h
	incf	(_open_an0_time)^0100h,f
	line	319
	
l17266:	
;key.c: 319: open_an1_time=0x01;
	clrf	(_open_an1_time)^0100h
	incf	(_open_an1_time)^0100h,f
	line	321
	
l17268:	
;key.c: 321: open_an2_time=0x01;
	clrf	(_open_an2_time)^0100h
	incf	(_open_an2_time)^0100h,f
	line	323
	
l17270:	
;key.c: 323: open_an3_time=0x01;
	clrf	(_open_an3_time)^0100h
	incf	(_open_an3_time)^0100h,f
	line	325
	
l17272:	
;key.c: 325: open_an4_time=0x01;
	clrf	(_open_an4_time)^0100h
	incf	(_open_an4_time)^0100h,f
	line	327
	
l17274:	
;key.c: 327: open_an9_time=0x01;
	clrf	(_open_an9_time)^0100h
	incf	(_open_an9_time)^0100h,f
	line	329
	
l17276:	
;key.c: 329: open_an10_time=0x01;
	clrf	(_open_an10_time)^0100h
	incf	(_open_an10_time)^0100h,f
	line	331
	
l17278:	
;key.c: 331: pv_voltage_status=0x00;
	movlb 1	; select bank1
	clrf	(_pv_voltage_status)^080h
	line	333
	
l17280:	
;key.c: 333: day_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_day_time_count)^0200h
	clrf	(_day_time_count+1)^0200h
	clrf	(_day_time_count+2)^0200h
	clrf	(_day_time_count+3)^0200h
	line	335
	
l17282:	
;key.c: 335: night_time_count=0x00;
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	line	337
	
l17284:	
;key.c: 337: pv_time_count=0x00;
	clrf	(_pv_time_count)^0200h
	clrf	(_pv_time_count+1)^0200h
	clrf	(_pv_time_count+2)^0200h
	clrf	(_pv_time_count+3)^0200h
	goto	l17288
	line	344
	
l17286:	
;key.c: 342: else
;key.c: 343: {
;key.c: 344: key1_time_count=0x00;
	movlb 2	; select bank2
	clrf	(_key1_time_count)^0100h
	line	347
	
l17288:	
;key.c: 345: }
;key.c: 347: if(RC1)
	movlb 0	; select bank0
	btfss	(113/8),(113)&7	;volatile
	goto	u9511
	goto	u9510
u9511:
	goto	l667
u9510:
	line	350
	
l17290:	
;key.c: 348: {
;key.c: 350: have_person1_time_count=0x00;
	movlb 2	; select bank2
	clrf	(_have_person1_time_count)^0100h
	line	352
	
l17292:	
;key.c: 352: have_person1_flag=0x01;
	movlb 1	; select bank1
	clrf	(_have_person1_flag)^080h
	incf	(_have_person1_flag)^080h,f
	line	357
	
l667:	
	return
	opt stack 0
GLOBAL	__end_of_scan_key_value
	__end_of_scan_key_value:
	signat	_scan_key_value,88
	global	_middle_init

;; *************** function _middle_init *****************
;; Defined at:
;;		line 246 in file "D:\MCUProject\ZH-SL-H40\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/2
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_auto_system
;;		_read_param_eeprom
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\main.c"
	line	246
global __ptext2
__ptext2:	;psect for function _middle_init
psect	text2
	file	"D:\MCUProject\ZH-SL-H40\src\main.c"
	line	246
	global	__size_of_middle_init
	__size_of_middle_init	equ	__end_of_middle_init-_middle_init
	
_middle_init:	
;incstack = 0
	opt	stack 10
; Regs used in _middle_init: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	249
	
l17300:	
;main.c: 249: auto_system();
	fcall	_auto_system
	line	251
	
l17302:	
;main.c: 251: read_param_eeprom();
	fcall	_read_param_eeprom
	line	252
	
l802:	
	return
	opt stack 0
GLOBAL	__end_of_middle_init
	__end_of_middle_init:
	signat	_middle_init,88
	global	_read_param_eeprom

;; *************** function _read_param_eeprom *****************
;; Defined at:
;;		line 181 in file "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byte_l          1   50[BANK0 ] unsigned char 
;;  byte_h          1   49[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___ftmul
;;		___lbtoft
;;		___lmul
;;		_eeprom_read
;; This function is called by:
;;		_middle_init
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	181
global __ptext3
__ptext3:	;psect for function _read_param_eeprom
psect	text3
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	181
	global	__size_of_read_param_eeprom
	__size_of_read_param_eeprom	equ	__end_of_read_param_eeprom-_read_param_eeprom
	
_read_param_eeprom:	
;incstack = 0
	opt	stack 10
; Regs used in _read_param_eeprom: [wreg+status,2+status,0+pclath+cstack]
	line	186
	
l16534:	
;ird_remote.c: 183: unsigned char byte_h,byte_l;
;ird_remote.c: 186: byte_h=eeprom_read(0x00);
	movlw	(0)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	188
;ird_remote.c: 188: byte_l=eeprom_read(0x01);
	movlw	(01h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	190
;ird_remote.c: 190: light_pv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtoft@c+1)
	clrf	(___awtoft@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtoft@c),f
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movlb 1	; select bank1
	movwf	(_light_pv)^080h
	movlb 0	; select bank0
	movf	(1+(?___awtoft)),w
	movlb 1	; select bank1
	movwf	(_light_pv+1)^080h
	movlb 0	; select bank0
	movf	(2+(?___awtoft)),w
	movlb 1	; select bank1
	movwf	(_light_pv+2)^080h
	line	194
;ird_remote.c: 194: byte_h=eeprom_read(0x02);
	movlw	(02h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	196
;ird_remote.c: 196: byte_l=eeprom_read(0x03);
	movlw	(03h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	198
;ird_remote.c: 198: load_cc_I=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtoft@c+1)
	clrf	(___awtoft@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtoft@c),f
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movlb 1	; select bank1
	movwf	(_load_cc_I)^080h
	movlb 0	; select bank0
	movf	(1+(?___awtoft)),w
	movlb 1	; select bank1
	movwf	(_load_cc_I+1)^080h
	movlb 0	; select bank0
	movf	(2+(?___awtoft)),w
	movlb 1	; select bank1
	movwf	(_load_cc_I+2)^080h
	line	202
;ird_remote.c: 202: byte_l=eeprom_read(0x04);
	movlw	(04h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	204
;ird_remote.c: 204: step_01_load_percent=byte_l;
	movf	(read_param_eeprom@byte_l),w
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_01_load_percent)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_01_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_01_load_percent+2)^0100h
	line	207
;ird_remote.c: 207: byte_l=eeprom_read(0x05);
	movlw	(05h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	209
;ird_remote.c: 209: step_02_load_percent=byte_l;
	movf	(read_param_eeprom@byte_l),w
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_02_load_percent)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_02_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_02_load_percent+2)^0100h
	line	212
;ird_remote.c: 212: byte_l=eeprom_read(0x06);
	movlw	(06h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	214
;ird_remote.c: 214: step_03_load_percent=byte_l;
	movf	(read_param_eeprom@byte_l),w
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_03_load_percent)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_03_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_03_load_percent+2)^0100h
	line	217
;ird_remote.c: 217: byte_l=eeprom_read(0x07);
	movlw	(07h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	219
;ird_remote.c: 219: step_04_load_percent=byte_l;
	movf	(read_param_eeprom@byte_l),w
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_04_load_percent)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_04_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_04_load_percent+2)^0100h
	line	222
;ird_remote.c: 222: byte_l=eeprom_read(0x08);
	movlw	(08h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	224
;ird_remote.c: 224: step_05_load_percent=byte_l;
	movf	(read_param_eeprom@byte_l),w
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_05_load_percent)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_05_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_05_load_percent+2)^0100h
	line	227
;ird_remote.c: 227: byte_l=eeprom_read(0x09);
	movlw	(09h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	229
	
l16536:	
;ird_remote.c: 229: volt_id=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 1	; select bank1
	movwf	(_volt_id)^080h
	line	232
	
l16538:	
;ird_remote.c: 232: byte_l=eeprom_read(0x0a);
	movlw	(0Ah)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	234
;ird_remote.c: 234: bt_id=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 1	; select bank1
	movwf	(_bt_id)^080h
	line	236
	
l16540:	
;ird_remote.c: 236: byte_l=eeprom_read(0x0b);
	movlw	(0Bh)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	238
	
l16542:	
;ird_remote.c: 238: light_time=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 1	; select bank1
	movwf	(_light_time)^080h
	clrf	(_light_time+1)^080h
	line	240
;ird_remote.c: 240: byte_l=eeprom_read(0x0c);
	movlw	(0Ch)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	242
	
l16544:	
;ird_remote.c: 242: step_01_time_limit=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 1	; select bank1
	movwf	(_step_01_time_limit)^080h
	clrf	(_step_01_time_limit+1)^080h
	line	244
	
l16546:	
;ird_remote.c: 244: byte_l=eeprom_read(0x0d);
	movlw	(0Dh)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	246
;ird_remote.c: 246: step_02_time_limit=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 1	; select bank1
	movwf	(_step_02_time_limit)^080h
	clrf	(_step_02_time_limit+1)^080h
	line	248
	
l16548:	
;ird_remote.c: 248: byte_l=eeprom_read(0x0e);
	movlw	(0Eh)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	250
	
l16550:	
;ird_remote.c: 250: step_03_time_limit=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 1	; select bank1
	movwf	(_step_03_time_limit)^080h
	clrf	(_step_03_time_limit+1)^080h
	line	252
;ird_remote.c: 252: byte_l=eeprom_read(0x0f);
	movlw	(0Fh)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	254
	
l16552:	
;ird_remote.c: 254: step_04_time_limit=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 1	; select bank1
	movwf	(_step_04_time_limit)^080h
	clrf	(_step_04_time_limit+1)^080h
	line	256
	
l16554:	
;ird_remote.c: 256: byte_l=eeprom_read(0x10);
	movlw	(010h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	258
;ird_remote.c: 258: step_05_time_limit=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 2	; select bank2
	movwf	(_step_05_time_limit)^0100h
	clrf	(_step_05_time_limit+1)^0100h
	line	260
	
l16556:	
;ird_remote.c: 260: byte_l=eeprom_read(0x11);
	movlw	(011h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	262
	
l16558:	
;ird_remote.c: 262: today_index=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movwf	(_today_index)
	line	264
;ird_remote.c: 264: byte_h=eeprom_read(0x12+4*( (today_index+8-0)%8 )+0 );
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	266
;ird_remote.c: 266: byte_l=eeprom_read(0x12+4*( (today_index+8-0)%8 )+1 );
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	268
;ird_remote.c: 268: bt_00_hv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtoft@c+1)
	clrf	(___awtoft@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtoft@c),f
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movlb 3	; select bank3
	movwf	(_bt_00_hv)^0180h
	movlb 0	; select bank0
	movf	(1+(?___awtoft)),w
	movlb 3	; select bank3
	movwf	(_bt_00_hv+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___awtoft)),w
	movlb 3	; select bank3
	movwf	(_bt_00_hv+2)^0180h
	line	270
;ird_remote.c: 270: byte_h=eeprom_read(0x12+4*( (today_index+8-0)%8 )+2 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	272
;ird_remote.c: 272: byte_l=eeprom_read(0x12+4*( (today_index+8-0)%8 )+3 );
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	274
;ird_remote.c: 274: bt_00_lv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtoft@c+1)
	clrf	(___awtoft@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtoft@c),f
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movlb 3	; select bank3
	movwf	(_bt_00_lv)^0180h
	movlb 0	; select bank0
	movf	(1+(?___awtoft)),w
	movlb 3	; select bank3
	movwf	(_bt_00_lv+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___awtoft)),w
	movlb 3	; select bank3
	movwf	(_bt_00_lv+2)^0180h
	line	277
;ird_remote.c: 277: byte_h=eeprom_read(0x12+4*( (today_index+8-1)%8 )+0 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	07h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	279
;ird_remote.c: 279: byte_l=eeprom_read(0x12+4*( (today_index+8-1)%8 )+1 );
	movf	(_today_index),w
	addlw	07h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	281
;ird_remote.c: 281: bt_01_hv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtoft@c+1)
	clrf	(___awtoft@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtoft@c),f
	fcall	___awtoft
	line	283
;ird_remote.c: 283: byte_h=eeprom_read(0x12+4*( (today_index+8-1)%8 )+2 );
	movf	(_today_index),w
	addlw	07h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	285
;ird_remote.c: 285: byte_l=eeprom_read(0x12+4*( (today_index+8-1)%8 )+3 );
	movf	(_today_index),w
	addlw	07h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	287
;ird_remote.c: 287: bt_01_lv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtoft@c+1)
	clrf	(___awtoft@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtoft@c),f
	fcall	___awtoft
	line	290
;ird_remote.c: 290: byte_h=eeprom_read(0x12+4*( (today_index+8-2)%8 )+0 );
	movf	(_today_index),w
	addlw	06h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	292
;ird_remote.c: 292: byte_l=eeprom_read(0x12+4*( (today_index+8-2)%8 )+1 );
	movf	(_today_index),w
	addlw	06h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	294
;ird_remote.c: 294: bt_02_hv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtoft@c+1)
	clrf	(___awtoft@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtoft@c),f
	fcall	___awtoft
	line	296
;ird_remote.c: 296: byte_h=eeprom_read(0x12+4*( (today_index+8-2)%8 )+2 );
	movf	(_today_index),w
	addlw	06h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	298
;ird_remote.c: 298: byte_l=eeprom_read(0x12+4*( (today_index+8-2)%8 )+3 );
	movf	(_today_index),w
	addlw	06h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	300
;ird_remote.c: 300: bt_02_lv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtoft@c+1)
	clrf	(___awtoft@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtoft@c),f
	fcall	___awtoft
	line	303
;ird_remote.c: 303: byte_h=eeprom_read(0x12+4*( (today_index+8-3)%8 )+0 );
	movf	(_today_index),w
	addlw	05h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	305
;ird_remote.c: 305: byte_l=eeprom_read(0x12+4*( (today_index+8-3)%8 )+1 );
	movf	(_today_index),w
	addlw	05h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	307
;ird_remote.c: 307: bt_03_hv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtoft@c+1)
	clrf	(___awtoft@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtoft@c),f
	fcall	___awtoft
	line	309
;ird_remote.c: 309: byte_h=eeprom_read(0x12+4*( (today_index+8-3)%8 )+2 );
	movf	(_today_index),w
	addlw	05h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	311
;ird_remote.c: 311: byte_l=eeprom_read(0x12+4*( (today_index+8-3)%8 )+3 );
	movf	(_today_index),w
	addlw	05h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	313
;ird_remote.c: 313: bt_03_lv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtoft@c+1)
	clrf	(___awtoft@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtoft@c),f
	fcall	___awtoft
	line	316
;ird_remote.c: 316: byte_h=eeprom_read(0x12+4*( (today_index+8-4)%8 )+0 );
	movf	(_today_index),w
	addlw	04h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	318
;ird_remote.c: 318: byte_l=eeprom_read(0x12+4*( (today_index+8-4)%8 )+1 );
	movf	(_today_index),w
	addlw	04h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	320
;ird_remote.c: 320: bt_04_hv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtoft@c+1)
	clrf	(___awtoft@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtoft@c),f
	fcall	___awtoft
	line	322
;ird_remote.c: 322: byte_h=eeprom_read(0x12+4*( (today_index+8-4)%8 )+2 );
	movf	(_today_index),w
	addlw	04h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	324
;ird_remote.c: 324: byte_l=eeprom_read(0x12+4*( (today_index+8-4)%8 )+3 );
	movf	(_today_index),w
	addlw	04h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	326
;ird_remote.c: 326: bt_04_lv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtoft@c+1)
	clrf	(___awtoft@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtoft@c),f
	fcall	___awtoft
	line	329
;ird_remote.c: 329: byte_h=eeprom_read(0x12+4*( (today_index+8-5)%8 )+0 );
	movf	(_today_index),w
	addlw	03h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	331
;ird_remote.c: 331: byte_l=eeprom_read(0x12+4*( (today_index+8-5)%8 )+1 );
	movf	(_today_index),w
	addlw	03h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	333
;ird_remote.c: 333: bt_05_hv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtoft@c+1)
	clrf	(___awtoft@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtoft@c),f
	fcall	___awtoft
	line	335
;ird_remote.c: 335: byte_h=eeprom_read(0x12+4*( (today_index+8-5)%8 )+2 );
	movf	(_today_index),w
	addlw	03h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	337
;ird_remote.c: 337: byte_l=eeprom_read(0x12+4*( (today_index+8-5)%8 )+3 );
	movf	(_today_index),w
	addlw	03h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	339
;ird_remote.c: 339: bt_05_lv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtoft@c+1)
	clrf	(___awtoft@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtoft@c),f
	fcall	___awtoft
	line	342
;ird_remote.c: 342: byte_h=eeprom_read(0x12+4*( (today_index+8-6)%8 )+0 );
	movf	(_today_index),w
	addlw	02h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	344
;ird_remote.c: 344: byte_l=eeprom_read(0x12+4*( (today_index+8-6)%8 )+1 );
	movf	(_today_index),w
	addlw	02h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	346
;ird_remote.c: 346: bt_06_hv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtoft@c+1)
	clrf	(___awtoft@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtoft@c),f
	fcall	___awtoft
	line	348
;ird_remote.c: 348: byte_h=eeprom_read(0x12+4*( (today_index+8-6)%8 )+2 );
	movf	(_today_index),w
	addlw	02h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	350
;ird_remote.c: 350: byte_l=eeprom_read(0x12+4*( (today_index+8-6)%8 )+3 );
	movf	(_today_index),w
	addlw	02h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	352
;ird_remote.c: 352: bt_06_lv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtoft@c+1)
	clrf	(___awtoft@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtoft@c),f
	fcall	___awtoft
	line	355
;ird_remote.c: 355: byte_h=eeprom_read(0x12+4*( (today_index+8-7)%8 )+0 );
	movf	(_today_index),w
	addlw	01h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	357
;ird_remote.c: 357: byte_l=eeprom_read(0x12+4*( (today_index+8-7)%8 )+1 );
	movf	(_today_index),w
	addlw	01h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	359
;ird_remote.c: 359: bt_07_hv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtoft@c+1)
	clrf	(___awtoft@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtoft@c),f
	fcall	___awtoft
	line	361
;ird_remote.c: 361: byte_h=eeprom_read(0x12+4*( (today_index+8-7)%8 )+2 );
	movf	(_today_index),w
	addlw	01h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	363
;ird_remote.c: 363: byte_l=eeprom_read(0x12+4*( (today_index+8-7)%8 )+3 );
	movf	(_today_index),w
	addlw	01h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	365
;ird_remote.c: 365: bt_07_lv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtoft@c+1)
	clrf	(___awtoft@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtoft@c),f
	fcall	___awtoft
	line	368
;ird_remote.c: 368: byte_l=eeprom_read(0x36);
	movlw	(036h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	370
	
l16560:	
;ird_remote.c: 370: light_mode=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 1	; select bank1
	movwf	(_light_mode)^080h
	line	372
	
l16562:	
	movlw	(037h)
	fcall	_eeprom_read
	line	377
	
l16564:	
;ird_remote.c: 377: byte_l=eeprom_read(0x38);
	movlw	(038h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	379
	
l16566:	
;ird_remote.c: 379: device_status=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movwf	(_device_status)
	line	381
	
l16568:	
;ird_remote.c: 381: if(device_status==0x00)
	movf	(_device_status),f
	skipz
	goto	u9051
	goto	u9050
u9051:
	goto	l16572
u9050:
	line	383
	
l16570:	
;ird_remote.c: 382: {
;ird_remote.c: 383: work_mode =0x04;
	movlw	(04h)
	movlb 1	; select bank1
	movwf	(_work_mode)^080h
	line	384
;ird_remote.c: 384: }
	goto	l16574
	line	387
	
l16572:	
;ird_remote.c: 385: else
;ird_remote.c: 386: {
;ird_remote.c: 387: work_mode =0x00;
	movlb 1	; select bank1
	clrf	(_work_mode)^080h
	line	390
	
l16574:	
;ird_remote.c: 388: }
;ird_remote.c: 390: byte_l=eeprom_read(0x39);
	movlw	(039h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	392
	
l16576:	
;ird_remote.c: 392: led_out_ctrl=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 1	; select bank1
	movwf	(_led_out_ctrl)^080h
	line	397
	
l16578:	
;ird_remote.c: 397: if(light_time==0x00)
	movf	((_light_time+1)^080h),w
	iorwf	((_light_time)^080h),w
	skipz
	goto	u9061
	goto	u9060
u9061:
	goto	l16582
u9060:
	line	399
	
l16580:	
;ird_remote.c: 398: {
;ird_remote.c: 399: light_time_level = 500;
	movlw	0
	movlb 2	; select bank2
	movwf	(_light_time_level+3)^0100h
	movlw	0
	movwf	(_light_time_level+2)^0100h
	movlw	01h
	movwf	(_light_time_level+1)^0100h
	movlw	0F4h
	movwf	(_light_time_level)^0100h

	line	400
;ird_remote.c: 400: }
	goto	l16584
	line	403
	
l16582:	
;ird_remote.c: 401: else
;ird_remote.c: 402: {
;ird_remote.c: 403: light_time_level = (unsigned long int)((unsigned long int)light_time*6*180);
	movf	(_light_time)^080h,w
	movlb 0	; select bank0
	movwf	(___lmul@multiplier)
	movlb 1	; select bank1
	movf	(_light_time+1)^080h,w
	movlb 0	; select bank0
	movwf	((___lmul@multiplier))+1
	clrf	2+((___lmul@multiplier))
	clrf	3+((___lmul@multiplier))
	movlw	0
	movwf	(___lmul@multiplicand+3)
	movlw	0
	movwf	(___lmul@multiplicand+2)
	movlw	04h
	movwf	(___lmul@multiplicand+1)
	movlw	038h
	movwf	(___lmul@multiplicand)

	fcall	___lmul
	movf	(3+(?___lmul)),w
	movlb 2	; select bank2
	movwf	(_light_time_level+3)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lmul)),w
	movlb 2	; select bank2
	movwf	(_light_time_level+2)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lmul)),w
	movlb 2	; select bank2
	movwf	(_light_time_level+1)^0100h
	movlb 0	; select bank0
	movf	(0+(?___lmul)),w
	movlb 2	; select bank2
	movwf	(_light_time_level)^0100h

	line	408
	
l16584:	
;ird_remote.c: 409: {
;ird_remote.c: 410: bt_volt_100 = (12.35/31.04)*1000;
	movlb 1	; select bank1
	decf	(_volt_id)^080h,w
	skipz
	goto	u9071
	goto	u9070
u9071:
	goto	l16594
u9070:
	line	412
	
l16586:	
;ird_remote.c: 412: bt_volt_80 = (11.80/31.04)*1000;
	movlw	0x14
	movlb 3	; select bank3
	movwf	(_bt_volt_80)^0180h
	movlw	0xbe
	movwf	(_bt_volt_80+1)^0180h
	movlw	0x43
	movwf	(_bt_volt_80+2)^0180h
	line	414
;ird_remote.c: 414: bt_volt_60 = (11.30/31.04)*1000;
	movlw	0x6
	movwf	(_bt_volt_60)^0180h
	movlw	0xb6
	movwf	(_bt_volt_60+1)^0180h
	movlw	0x43
	movwf	(_bt_volt_60+2)^0180h
	line	416
;ird_remote.c: 416: bt_volt_40 = (10.80/31.04)*1000;
	movlw	0xf8
	movwf	(_bt_volt_40)^0180h
	movlw	0xad
	movwf	(_bt_volt_40+1)^0180h
	movlw	0x43
	movwf	(_bt_volt_40+2)^0180h
	line	418
;ird_remote.c: 418: bt_volt_20 = (10.30/31.04)*1000;
	movlw	0xea
	movwf	(_bt_volt_20)^0180h
	movlw	0xa5
	movwf	(_bt_volt_20+1)^0180h
	movlw	0x43
	movwf	(_bt_volt_20+2)^0180h
	line	420
;ird_remote.c: 420: bt_volt_00 = (9.00/31.04)*1000;
	movlw	0xf9
	movwf	(_bt_volt_00)^0180h
	movlw	0x90
	movwf	(_bt_volt_00+1)^0180h
	movlw	0x43
	movwf	(_bt_volt_00+2)^0180h
	line	423
;ird_remote.c: 423: dianchi_guoya_baohu = (12.35/31.04)*1000;
	movlw	0xf0
	movlb 1	; select bank1
	movwf	(_dianchi_guoya_baohu)^080h
	movlw	0xc6
	movwf	(_dianchi_guoya_baohu+1)^080h
	movlw	0x43
	movwf	(_dianchi_guoya_baohu+2)^080h
	line	425
;ird_remote.c: 425: dianchi_guoya_huifu = (12.15/31.04)*1000;
	movlw	0xb7
	movlb 2	; select bank2
	movwf	(_dianchi_guoya_huifu)^0100h
	movlw	0xc3
	movwf	(_dianchi_guoya_huifu+1)^0100h
	movlw	0x43
	movwf	(_dianchi_guoya_huifu+2)^0100h
	line	427
;ird_remote.c: 427: dianchi_qianya_baohu = (9.00/31.04)*1000;
	movlw	0xf9
	movlb 3	; select bank3
	movwf	(_dianchi_qianya_baohu)^0180h
	movlw	0x90
	movwf	(_dianchi_qianya_baohu+1)^0180h
	movlw	0x43
	movwf	(_dianchi_qianya_baohu+2)^0180h
	line	429
;ird_remote.c: 429: dianchi_qianya_huifu = (9.50/31.04)*1000;
	movlw	0x7
	movwf	(_dianchi_qianya_huifu)^0180h
	movlw	0x99
	movwf	(_dianchi_qianya_huifu+1)^0180h
	movlw	0x43
	movwf	(_dianchi_qianya_huifu+2)^0180h
	line	431
;ird_remote.c: 431: dianchi_cv_level = (12.20/31.04)*1000;
	movlw	0x85
	movlb 2	; select bank2
	movwf	(_dianchi_cv_level)^0100h
	movlw	0xc4
	movwf	(_dianchi_cv_level+1)^0100h
	movlw	0x43
	movwf	(_dianchi_cv_level+2)^0100h
	line	433
;ird_remote.c: 433: charge_i_limit = 5.00*15.0;
	movlw	0x0
	movlb 3	; select bank3
	movwf	(_charge_i_limit)^0180h
	movlw	0x96
	movwf	(_charge_i_limit+1)^0180h
	movlw	0x42
	movwf	(_charge_i_limit+2)^0180h
	line	435
;ird_remote.c: 435: shuchu_shortout_voltage = (7.50/61)*1000;
	movlw	0xe7
	movlb 2	; select bank2
	movwf	(_shuchu_shortout_voltage)^0100h
	movlw	0xf5
	movwf	(_shuchu_shortout_voltage+1)^0100h
	movlw	0x42
	movwf	(_shuchu_shortout_voltage+2)^0100h
	line	437
;ird_remote.c: 437: shuchu_open_voltage = (61.00/61)*1000;
	movlw	0x0
	movlb 4	; select bank4
	movwf	(_shuchu_open_voltage)^0200h
	movlw	0x7a
	movwf	(_shuchu_open_voltage+1)^0200h
	movlw	0x44
	movwf	(_shuchu_open_voltage+2)^0200h
	line	439
;ird_remote.c: 439: discharge_i_baohu = 4.50*30.0;
	movlw	0x0
	movwf	(_discharge_i_baohu)^0200h
	movlw	0x7
	movwf	(_discharge_i_baohu+1)^0200h
	movlw	0x43
	movwf	(_discharge_i_baohu+2)^0200h
	line	441
;ird_remote.c: 441: discharge_i_limit = 4.00*30.0;
	movlw	0x0
	movlb 3	; select bank3
	movwf	(_discharge_i_limit)^0180h
	movlw	0xf0
	movwf	(_discharge_i_limit+1)^0180h
	movlw	0x42
	movwf	(_discharge_i_limit+2)^0180h
	line	443
	
l16588:	
;ird_remote.c: 443: light_on_pv_level = (light_pv*10)/61;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftdiv@f2)
	movlw	0x74
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x20
	movwf	(___ftmul@f1+1)
	movlw	0x41
	movwf	(___ftmul@f1+2)
	movlb 1	; select bank1
	movf	(_light_pv)^080h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 1	; select bank1
	movf	(_light_pv+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 1	; select bank1
	movf	(_light_pv+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_light_on_pv_level)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_light_on_pv_level+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_light_on_pv_level+2)^0180h
	line	445
	
l16590:	
;ird_remote.c: 445: light_off_pv_level = (10.0/61)*1000;
	movlw	0xef
	movwf	(_light_off_pv_level)^0180h
	movlw	0x23
	movwf	(_light_off_pv_level+1)^0180h
	movlw	0x43
	movwf	(_light_off_pv_level+2)^0180h
	line	447
	
l16592:	
;ird_remote.c: 447: Load_Pmax=41.00;
	movlw	0x0
	movwf	(_Load_Pmax)^0180h
	movlw	0x24
	movwf	(_Load_Pmax+1)^0180h
	movlw	0x42
	movwf	(_Load_Pmax+2)^0180h
	line	449
;ird_remote.c: 449: }
	goto	l510
	line	450
	
l16594:	
	line	452
	
l16596:	
;ird_remote.c: 451: {
;ird_remote.c: 452: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	459
;ird_remote.c: 453: }
	
l510:	
	return
	opt stack 0
GLOBAL	__end_of_read_param_eeprom
	__end_of_read_param_eeprom:
	signat	_read_param_eeprom,88
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 2 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    3[BANK0 ] unsigned long 
;;  multiplicand    4    7[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4   11[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    3[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      12       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_param_eeprom
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lmul.c"
	line	2
global __ptext4
__ptext4:	;psect for function ___lmul
psect	text4
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lmul.c"
	line	2
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
;incstack = 0
	opt	stack 11
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
l15442:	
	clrf	(___lmul@product)
	clrf	(___lmul@product+1)
	clrf	(___lmul@product+2)
	clrf	(___lmul@product+3)
	line	6
	
l2231:	
	line	7
	btfss	(___lmul@multiplier),(0)&7
	goto	u8111
	goto	u8110
u8111:
	goto	l15446
u8110:
	line	8
	
l15444:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	addwfc	(___lmul@product+1),f
	movf	(___lmul@multiplicand+2),w
	addwfc	(___lmul@product+2),f
	movf	(___lmul@multiplicand+3),w
	addwfc	(___lmul@product+3),f
	line	9
	
l15446:	
	lslf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	line	10
	
l15448:	
	lsrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	line	11
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u8121
	goto	u8120
u8121:
	goto	l2231
u8120:
	line	12
	
l15450:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	13
	
l2234:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	_auto_system

;; *************** function _auto_system *****************
;; Defined at:
;;		line 468 in file "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  sys_bt_volta    3   10[BANK1 ] float 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/2
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       3       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       3       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___lwtoft
;;		_delay_ms
;;		_eeprom_read
;;		_eeprom_write
;;		_start_ad_convert
;; This function is called by:
;;		_middle_init
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	468
global __ptext5
__ptext5:	;psect for function _auto_system
psect	text5
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	468
	global	__size_of_auto_system
	__size_of_auto_system	equ	__end_of_auto_system-_auto_system
	
_auto_system:	
;incstack = 0
	opt	stack 10
; Regs used in _auto_system: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	472
	
l16602:	
;ird_remote.c: 470: float sys_bt_voltage;
;ird_remote.c: 472: delay_ms(100);
	movlw	064h
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	475
;ird_remote.c: 475: bt_id=eeprom_read(0x0a);
	movlw	(0Ah)
	fcall	_eeprom_read
	movlb 1	; select bank1
	movwf	(_bt_id)^080h
	line	478
	
l16604:	
	line	480
	
l16606:	
;ird_remote.c: 480: battery_voltage_value=start_ad_convert(0b01100);
	movlw	(0Ch)
	fcall	_start_ad_convert
	movf	(1+(?_start_ad_convert)),w
	movwf	(_battery_voltage_value+1)
	movf	(0+(?_start_ad_convert)),w
	movwf	(_battery_voltage_value)
	line	482
	
l16608:	
;ird_remote.c: 482: sys_bt_voltage=(((float)battery_voltage_value)/1000)*31.04;
	movlw	0x52
	movwf	(___ftmul@f1)
	movlw	0xf8
	movwf	(___ftmul@f1+1)
	movlw	0x41
	movwf	(___ftmul@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x7a
	movwf	(___ftdiv@f2+1)
	movlw	0x44
	movwf	(___ftdiv@f2+2)
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 1	; select bank1
	movwf	(auto_system@sys_bt_voltage)^080h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 1	; select bank1
	movwf	(auto_system@sys_bt_voltage+1)^080h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 1	; select bank1
	movwf	(auto_system@sys_bt_voltage+2)^080h
	line	484
	
l16610:	
;ird_remote.c: 484: if(bt_id==0x01)
	decf	(_bt_id)^080h,w
	skipz
	goto	u9091
	goto	u9090
u9091:
	goto	l16620
u9090:
	line	486
	
l16612:	
;ird_remote.c: 485: {
;ird_remote.c: 486: if((sys_bt_voltage>=7.5)&&(sys_bt_voltage<=12.6))
	movf	(auto_system@sys_bt_voltage)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(auto_system@sys_bt_voltage+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(auto_system@sys_bt_voltage+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xf0
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u9101
	goto	u9100
u9101:
	goto	l514
u9100:
	
l16614:	
	movlw	0x9a
	movwf	(___ftge@ff1)
	movlw	0x49
	movwf	(___ftge@ff1+1)
	movlw	0x41
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(auto_system@sys_bt_voltage)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(auto_system@sys_bt_voltage+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(auto_system@sys_bt_voltage+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u9111
	goto	u9110
u9111:
	goto	l514
u9110:
	line	488
	
l16616:	
;ird_remote.c: 487: {
;ird_remote.c: 488: volt_id=0x01;
	movlb 1	; select bank1
	clrf	(_volt_id)^080h
	incf	(_volt_id)^080h,f
	line	490
	
l16618:	
;ird_remote.c: 490: eeprom_write(0x09,volt_id);
	movf	(_volt_id)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(09h)
	fcall	_eeprom_write
	line	491
;ird_remote.c: 491: }
	goto	l523
	line	492
	
l514:	
	line	494
;ird_remote.c: 492: else
;ird_remote.c: 493: {
;ird_remote.c: 494: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	goto	l523
	line	497
	
l16620:	
;ird_remote.c: 497: else if(bt_id==0x02)
	movf	(_bt_id)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u9121
	goto	u9120
u9121:
	goto	l16630
u9120:
	line	499
	
l16622:	
;ird_remote.c: 498: {
;ird_remote.c: 499: if((sys_bt_voltage>=7.5)&&(sys_bt_voltage<=12.6))
	movf	(auto_system@sys_bt_voltage)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(auto_system@sys_bt_voltage+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(auto_system@sys_bt_voltage+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xf0
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u9131
	goto	u9130
u9131:
	goto	l514
u9130:
	
l16624:	
	movlw	0x9a
	movwf	(___ftge@ff1)
	movlw	0x49
	movwf	(___ftge@ff1+1)
	movlw	0x41
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(auto_system@sys_bt_voltage)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(auto_system@sys_bt_voltage+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(auto_system@sys_bt_voltage+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u9141
	goto	u9140
u9141:
	goto	l514
u9140:
	line	501
	
l16626:	
;ird_remote.c: 500: {
;ird_remote.c: 501: volt_id=0x01;
	movlb 1	; select bank1
	clrf	(_volt_id)^080h
	incf	(_volt_id)^080h,f
	line	503
	
l16628:	
;ird_remote.c: 503: eeprom_write(0x09,volt_id);
	movf	(_volt_id)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(09h)
	fcall	_eeprom_write
	line	504
;ird_remote.c: 504: }
	goto	l523
	line	512
	
l16630:	
;ird_remote.c: 510: else
;ird_remote.c: 511: {
;ird_remote.c: 512: if((sys_bt_voltage>=7.5)&&(sys_bt_voltage<=12.6))
	movf	(auto_system@sys_bt_voltage)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(auto_system@sys_bt_voltage+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(auto_system@sys_bt_voltage+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xf0
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u9151
	goto	u9150
u9151:
	goto	l514
u9150:
	
l16632:	
	movlw	0x9a
	movwf	(___ftge@ff1)
	movlw	0x49
	movwf	(___ftge@ff1+1)
	movlw	0x41
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(auto_system@sys_bt_voltage)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(auto_system@sys_bt_voltage+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(auto_system@sys_bt_voltage+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u9161
	goto	u9160
u9161:
	goto	l514
u9160:
	line	514
	
l16634:	
;ird_remote.c: 513: {
;ird_remote.c: 514: volt_id=0x01;
	movlb 1	; select bank1
	clrf	(_volt_id)^080h
	incf	(_volt_id)^080h,f
	line	516
	
l16636:	
;ird_remote.c: 516: eeprom_write(0x09,volt_id);
	movf	(_volt_id)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(09h)
	fcall	_eeprom_write
	line	526
;ird_remote.c: 517: }
	
l523:	
	return
	opt stack 0
GLOBAL	__end_of_auto_system
	__end_of_auto_system:
	signat	_auto_system,88
	global	_handle_uart_rx_buf

;; *************** function _handle_uart_rx_buf *****************
;; Defined at:
;;		line 232 in file "D:\MCUProject\ZH-SL-H40\src\uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  crc_in          2   64[BANK0 ] unsigned int 
;;  byte_l          1    0        unsigned char 
;;  byte_h          1    0        unsigned char 
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Disable_Bost_Pwm
;;		_Disable_Buck_Pwm
;;		_Enable_Bost_Pwm
;;		_Set_Bost_Pwm_Duty
;;		_Set_Buck_Pwm_Duty
;;		___awtoft
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___fttol
;;		___lbtoft
;;		___lwtoft
;;		___wmul
;;		_crc16
;;		_delay_ms
;;		_eeprom_read
;;		_eeprom_write
;;		_memset
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\uart.c"
	line	232
global __ptext6
__ptext6:	;psect for function _handle_uart_rx_buf
psect	text6
	file	"D:\MCUProject\ZH-SL-H40\src\uart.c"
	line	232
	global	__size_of_handle_uart_rx_buf
	__size_of_handle_uart_rx_buf	equ	__end_of_handle_uart_rx_buf-_handle_uart_rx_buf
	
_handle_uart_rx_buf:	
;incstack = 0
	opt	stack 11
; Regs used in _handle_uart_rx_buf: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	240
	
l18462:	
;uart.c: 236: unsigned int crc_in;
;uart.c: 238: unsigned char byte_h,byte_l;
;uart.c: 240: switch(rx_frame_kind)
	goto	l18846
	line	243
	
l18464:	
;uart.c: 243: if(uart1_rx_buf[1]==0xA1)
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+01h,w
	xorlw	0A1h&0ffh
	skipz
	goto	u11351
	goto	u11350
u11351:
	goto	l18848
u11350:
	line	245
	
l18466:	
;uart.c: 244: {
;uart.c: 245: crc_in=crc16(&uart1_rx_buf[1],1);
	movlb 0	; select bank0
	clrf	(crc16@usDataLen)
	incf	(crc16@usDataLen),f
	movlw	(_uart1_rx_buf+01h)&0ffh
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movwf	(handle_uart_rx_buf@crc_in+1)
	movf	(0+(?_crc16)),w
	movwf	(handle_uart_rx_buf@crc_in)
	line	247
	
l18468:	
;uart.c: 247: if(crc_in==( (uart1_rx_buf[2]<<8) | uart1_rx_buf[3]) )
	movf	(handle_uart_rx_buf@crc_in+1),w
	movlb 7	; select bank7
	xorwf	0+(_uart1_rx_buf)^0380h+02h,w
	skipz
	goto	u11365
	movlb 0	; select bank0
	movf	(handle_uart_rx_buf@crc_in),w
	movlb 7	; select bank7
	xorwf	0+(_uart1_rx_buf)^0380h+03h,w
u11365:

	skipz
	goto	u11361
	goto	u11360
u11361:
	goto	l18848
u11360:
	line	250
	
l18470:	
;uart.c: 248: {
;uart.c: 250: p_v=(float)(((float)pv_voltage_value)/10)*61;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlw	0x74
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x20
	movwf	(___ftdiv@f2+1)
	movlw	0x41
	movwf	(___ftdiv@f2+2)
	movlb 1	; select bank1
	movf	(_pv_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c+1)
	movlb 1	; select bank1
	movf	(_pv_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_p_v)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_p_v+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_p_v+2)^0180h
	line	252
;uart.c: 252: b_v=(float)(((float)battery_voltage_value)/10)*31.04;
	movlw	0x52
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlw	0xf8
	movwf	(___ftmul@f1+1)
	movlw	0x41
	movwf	(___ftmul@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x20
	movwf	(___ftdiv@f2+1)
	movlw	0x41
	movwf	(___ftdiv@f2+2)
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 2	; select bank2
	movwf	(_b_v)^0100h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 2	; select bank2
	movwf	(_b_v+1)^0100h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 2	; select bank2
	movwf	(_b_v+2)^0100h
	line	254
;uart.c: 254: load_v=(float)(((float)load_voltage_value)/10)*61;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlw	0x74
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x20
	movwf	(___ftdiv@f2+1)
	movlw	0x41
	movwf	(___ftdiv@f2+2)
	movlb 1	; select bank1
	movf	(_load_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c+1)
	movlb 1	; select bank1
	movf	(_load_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_load_v)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_load_v+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_load_v+2)^0180h
	line	256
;uart.c: 256: charge_I=((float)charge_current_value)/0.15;
	movlw	0x9a
	movlb 0	; select bank0
	movwf	(___ftdiv@f2)
	movlw	0x19
	movwf	(___ftdiv@f2+1)
	movlw	0x3e
	movwf	(___ftdiv@f2+2)
	movlb 1	; select bank1
	movf	(_charge_current_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c+1)
	movlb 1	; select bank1
	movf	(_charge_current_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_charge_I)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_charge_I+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_charge_I+2)^0180h
	line	258
;uart.c: 258: load_I=((float)discharge_current_value)/0.30;
	movlw	0x9a
	movlb 0	; select bank0
	movwf	(___ftdiv@f2)
	movlw	0x99
	movwf	(___ftdiv@f2+1)
	movlw	0x3e
	movwf	(___ftdiv@f2+2)
	movlb 1	; select bank1
	movf	(_discharge_current_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c+1)
	movlb 1	; select bank1
	movf	(_discharge_current_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_load_I)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_load_I+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_load_I+2)^0180h
	line	260
	
l18472:	
;uart.c: 260: sys_mode=(volt_id<<4)|system_status;
	movlb 1	; select bank1
	swapf	(_volt_id)^080h,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	(_system_status)^080h,w
	movlb 2	; select bank2
	movwf	(_sys_mode)^0100h
	line	264
	
l18474:	
;uart.c: 264: uart1_tx_buf[0]=0x55;
	movlw	(055h)
	movlb 6	; select bank6
	movwf	(_uart1_tx_buf)^0300h
	line	266
	
l18476:	
;uart.c: 266: uart1_tx_buf[1]=0xB1;
	movlw	(0B1h)
	movwf	0+(_uart1_tx_buf)^0300h+01h
	line	268
	
l18478:	
;uart.c: 268: uart1_tx_buf[2]=(unsigned char )(p_v/256);
	movlb 3	; select bank3
	movf	(_p_v)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 3	; select bank3
	movf	(_p_v+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 3	; select bank3
	movf	(_p_v+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x43
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+02h
	line	269
	
l18480:	
;uart.c: 269: uart1_tx_buf[3]=(unsigned char )p_v;
	movlb 3	; select bank3
	movf	(_p_v)^0180h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 3	; select bank3
	movf	(_p_v+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 3	; select bank3
	movf	(_p_v+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+03h
	line	271
	
l18482:	
;uart.c: 271: uart1_tx_buf[4]=(unsigned char )(b_v/256);
	movlb 2	; select bank2
	movf	(_b_v)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 2	; select bank2
	movf	(_b_v+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 2	; select bank2
	movf	(_b_v+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x43
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+04h
	line	272
	
l18484:	
;uart.c: 272: uart1_tx_buf[5]=(unsigned char )b_v;
	movlb 2	; select bank2
	movf	(_b_v)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 2	; select bank2
	movf	(_b_v+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 2	; select bank2
	movf	(_b_v+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+05h
	line	274
	
l18486:	
;uart.c: 274: uart1_tx_buf[6]=(unsigned char )(load_v/256);
	movlb 3	; select bank3
	movf	(_load_v)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 3	; select bank3
	movf	(_load_v+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 3	; select bank3
	movf	(_load_v+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x43
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+06h
	line	275
	
l18488:	
;uart.c: 275: uart1_tx_buf[7]=(unsigned char )load_v;
	movlb 3	; select bank3
	movf	(_load_v)^0180h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 3	; select bank3
	movf	(_load_v+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 3	; select bank3
	movf	(_load_v+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+07h
	line	277
	
l18490:	
;uart.c: 277: uart1_tx_buf[8]=(unsigned char )(charge_I/256);
	movlb 3	; select bank3
	movf	(_charge_I)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 3	; select bank3
	movf	(_charge_I+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 3	; select bank3
	movf	(_charge_I+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x43
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+08h
	line	278
	
l18492:	
;uart.c: 278: uart1_tx_buf[9]=(unsigned char )charge_I;
	movlb 3	; select bank3
	movf	(_charge_I)^0180h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 3	; select bank3
	movf	(_charge_I+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 3	; select bank3
	movf	(_charge_I+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+09h
	line	280
	
l18494:	
;uart.c: 280: uart1_tx_buf[10]=(unsigned char )(load_I/256);
	movlb 3	; select bank3
	movf	(_load_I)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 3	; select bank3
	movf	(_load_I+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 3	; select bank3
	movf	(_load_I+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x43
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+0Ah
	line	281
	
l18496:	
;uart.c: 281: uart1_tx_buf[11]=(unsigned char )load_I;
	movlb 3	; select bank3
	movf	(_load_I)^0180h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 3	; select bank3
	movf	(_load_I+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 3	; select bank3
	movf	(_load_I+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+0Bh
	line	283
	
l18498:	
;uart.c: 283: uart1_tx_buf[12]=(unsigned char )sys_mode;
	movlb 2	; select bank2
	movf	(_sys_mode)^0100h,w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+0Ch
	line	285
	
l18500:	
;uart.c: 285: uart1_tx_buf[13]=(unsigned char )(mcu_value/256);
	movlb 1	; select bank1
	movf	(_mcu_value+1)^080h,w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+0Dh
	line	287
	
l18502:	
;uart.c: 287: uart1_tx_buf[14]=(unsigned char )(mcu_value);
	movlb 1	; select bank1
	movf	(_mcu_value)^080h,w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+0Eh
	line	289
	
l18504:	
;uart.c: 289: uart1_tx_buf[15]=(unsigned char )(discharge_current_value/256);
	movlb 1	; select bank1
	movf	(_discharge_current_value+1)^080h,w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+0Fh
	line	291
	
l18506:	
;uart.c: 291: uart1_tx_buf[16]=(unsigned char )(discharge_current_value);
	movlb 1	; select bank1
	movf	(_discharge_current_value)^080h,w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+010h
	line	293
	
l18508:	
;uart.c: 293: uart1_tx_buf[17]=(unsigned char )(temperature_value/256);
	movlb 2	; select bank2
	movf	(_temperature_value+1)^0100h,w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+011h
	line	295
	
l18510:	
;uart.c: 295: uart1_tx_buf[18]=(unsigned char )(temperature_value);
	movlb 2	; select bank2
	movf	(_temperature_value)^0100h,w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+012h
	line	298
	
l18512:	
;uart.c: 298: uart1_tx_buf[19]=eeprom_read(0x12+4*( (today_index+8-0)%8 )+0 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+013h
	line	300
	
l18514:	
;uart.c: 300: uart1_tx_buf[20]=eeprom_read(0x12+4*( (today_index+8-0)%8 )+1 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+014h
	line	302
	
l18516:	
;uart.c: 302: uart1_tx_buf[21]=eeprom_read(0x12+4*( (today_index+8-0)%8 )+2 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+015h
	line	304
	
l18518:	
;uart.c: 304: uart1_tx_buf[22]=eeprom_read(0x12+4*( (today_index+8-0)%8 )+3 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+016h
	line	307
	
l18520:	
;uart.c: 307: uart1_tx_buf[23]=eeprom_read(0x12+4*( (today_index+8-1)%8 )+0 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	07h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+017h
	line	309
	
l18522:	
;uart.c: 309: uart1_tx_buf[24]=eeprom_read(0x12+4*( (today_index+8-1)%8 )+1 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	07h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+018h
	line	311
	
l18524:	
;uart.c: 311: uart1_tx_buf[25]=eeprom_read(0x12+4*( (today_index+8-1)%8 )+2 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	07h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+019h
	line	313
	
l18526:	
;uart.c: 313: uart1_tx_buf[26]=eeprom_read(0x12+4*( (today_index+8-1)%8 )+3 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	07h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+01Ah
	line	316
	
l18528:	
;uart.c: 316: uart1_tx_buf[27]=eeprom_read(0x12+4*( (today_index+8-2)%8 )+0 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	06h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+01Bh
	line	318
	
l18530:	
;uart.c: 318: uart1_tx_buf[28]=eeprom_read(0x12+4*( (today_index+8-2)%8 )+1 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	06h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+01Ch
	line	320
	
l18532:	
;uart.c: 320: uart1_tx_buf[29]=eeprom_read(0x12+4*( (today_index+8-2)%8 )+2 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	06h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+01Dh
	line	322
	
l18534:	
;uart.c: 322: uart1_tx_buf[30]=eeprom_read(0x12+4*( (today_index+8-2)%8 )+3 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	06h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+01Eh
	line	325
	
l18536:	
;uart.c: 325: uart1_tx_buf[31]=eeprom_read(0x12+4*( (today_index+8-3)%8 )+0 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	05h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+01Fh
	line	327
	
l18538:	
;uart.c: 327: uart1_tx_buf[32]=eeprom_read(0x12+4*( (today_index+8-3)%8 )+1 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	05h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+020h
	line	329
	
l18540:	
;uart.c: 329: uart1_tx_buf[33]=eeprom_read(0x12+4*( (today_index+8-3)%8 )+2 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	05h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+021h
	line	331
	
l18542:	
;uart.c: 331: uart1_tx_buf[34]=eeprom_read(0x12+4*( (today_index+8-3)%8 )+3 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	05h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+022h
	line	334
	
l18544:	
;uart.c: 334: uart1_tx_buf[35]=eeprom_read(0x12+4*( (today_index+8-4)%8 )+0 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	04h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+023h
	line	336
	
l18546:	
;uart.c: 336: uart1_tx_buf[36]=eeprom_read(0x12+4*( (today_index+8-4)%8 )+1 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	04h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+024h
	line	338
	
l18548:	
;uart.c: 338: uart1_tx_buf[37]=eeprom_read(0x12+4*( (today_index+8-4)%8 )+2 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	04h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+025h
	line	340
	
l18550:	
;uart.c: 340: uart1_tx_buf[38]=eeprom_read(0x12+4*( (today_index+8-4)%8 )+3 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	04h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+026h
	line	343
	
l18552:	
;uart.c: 343: uart1_tx_buf[39]=eeprom_read(0x12+4*( (today_index+8-5)%8 )+0 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	03h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+027h
	line	345
	
l18554:	
;uart.c: 345: uart1_tx_buf[40]=eeprom_read(0x12+4*( (today_index+8-5)%8 )+1 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	03h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+028h
	line	347
	
l18556:	
;uart.c: 347: uart1_tx_buf[41]=eeprom_read(0x12+4*( (today_index+8-5)%8 )+2 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	03h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+029h
	line	349
	
l18558:	
;uart.c: 349: uart1_tx_buf[42]=eeprom_read(0x12+4*( (today_index+8-5)%8 )+3 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	03h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+02Ah
	line	352
	
l18560:	
;uart.c: 352: uart1_tx_buf[43]=eeprom_read(0x12+4*( (today_index+8-6)%8 )+0 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	02h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+02Bh
	line	354
	
l18562:	
;uart.c: 354: uart1_tx_buf[44]=eeprom_read(0x12+4*( (today_index+8-6)%8 )+1 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	02h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+02Ch
	line	356
	
l18564:	
;uart.c: 356: uart1_tx_buf[45]=eeprom_read(0x12+4*( (today_index+8-6)%8 )+2 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	02h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+02Dh
	line	358
	
l18566:	
;uart.c: 358: uart1_tx_buf[46]=eeprom_read(0x12+4*( (today_index+8-6)%8 )+3 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	02h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+02Eh
	line	361
	
l18568:	
;uart.c: 361: uart1_tx_buf[47]=eeprom_read(0x12+4*( (today_index+8-7)%8 )+0 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	01h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+02Fh
	line	363
	
l18570:	
;uart.c: 363: uart1_tx_buf[48]=eeprom_read(0x12+4*( (today_index+8-7)%8 )+1 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	01h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+030h
	line	365
	
l18572:	
;uart.c: 365: uart1_tx_buf[49]=eeprom_read(0x12+4*( (today_index+8-7)%8 )+2 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	01h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+031h
	line	367
	
l18574:	
;uart.c: 367: uart1_tx_buf[50]=eeprom_read(0x12+4*( (today_index+8-7)%8 )+3 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	01h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+032h
	line	370
	
l18576:	
;uart.c: 370: crc_data=crc16(&uart1_tx_buf[1],50);
	movlw	(032h)
	movlb 0	; select bank0
	movwf	(crc16@usDataLen)
	movlw	(_uart1_tx_buf+01h)&0ffh
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movwf	(_crc_data+1)
	movf	(0+(?_crc16)),w
	movwf	(_crc_data)
	line	372
	
l18578:	
;uart.c: 372: uart1_tx_buf[51]=crc_data/256;
	movf	(_crc_data+1),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+033h
	line	373
	
l18580:	
;uart.c: 373: uart1_tx_buf[52]=crc_data%256;
	movf	(_crc_data),w
	movwf	0+(_uart1_tx_buf)^0300h+034h
	line	375
	
l18582:	
;uart.c: 375: uart1_tx_buf[53]=0xAA;
	movlw	(0AAh)
	movwf	0+(_uart1_tx_buf)^0300h+035h
	goto	l18848
	line	384
	
l18584:	
;uart.c: 384: if(uart1_rx_buf[1]==0xA2)
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+01h,w
	xorlw	0A2h&0ffh
	skipz
	goto	u11371
	goto	u11370
u11371:
	goto	l18848
u11370:
	line	386
	
l18586:	
;uart.c: 385: {
;uart.c: 386: crc_in=crc16(&uart1_rx_buf[1],1);
	movlb 0	; select bank0
	clrf	(crc16@usDataLen)
	incf	(crc16@usDataLen),f
	movlw	(_uart1_rx_buf+01h)&0ffh
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movwf	(handle_uart_rx_buf@crc_in+1)
	movf	(0+(?_crc16)),w
	movwf	(handle_uart_rx_buf@crc_in)
	line	388
	
l18588:	
;uart.c: 388: if(crc_in==( (uart1_rx_buf[2]<<8) | uart1_rx_buf[3]) )
	movf	(handle_uart_rx_buf@crc_in+1),w
	movlb 7	; select bank7
	xorwf	0+(_uart1_rx_buf)^0380h+02h,w
	skipz
	goto	u11385
	movlb 0	; select bank0
	movf	(handle_uart_rx_buf@crc_in),w
	movlb 7	; select bank7
	xorwf	0+(_uart1_rx_buf)^0380h+03h,w
u11385:

	skipz
	goto	u11381
	goto	u11380
u11381:
	goto	l18848
u11380:
	line	392
	
l18590:	
;uart.c: 389: {
;uart.c: 392: uart1_tx_buf[0]=0x55;
	movlw	(055h)
	movlb 6	; select bank6
	movwf	(_uart1_tx_buf)^0300h
	line	394
;uart.c: 394: uart1_tx_buf[1]=0xB2;
	movlw	(0B2h)
	movwf	0+(_uart1_tx_buf)^0300h+01h
	line	396
	
l18592:	
;uart.c: 396: uart1_tx_buf[2] =(unsigned char )(light_pv/256);
	movlb 1	; select bank1
	movf	(_light_pv)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 1	; select bank1
	movf	(_light_pv+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 1	; select bank1
	movf	(_light_pv+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x43
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+02h
	line	398
	
l18594:	
;uart.c: 398: uart1_tx_buf[3] =(unsigned char )light_pv;
	movlb 1	; select bank1
	movf	(_light_pv)^080h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 1	; select bank1
	movf	(_light_pv+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 1	; select bank1
	movf	(_light_pv+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+03h
	line	400
	
l18596:	
;uart.c: 400: uart1_tx_buf[4] =(unsigned char )(load_cc_I/256);
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x43
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+04h
	line	402
	
l18598:	
;uart.c: 402: uart1_tx_buf[5] =(unsigned char )load_cc_I;
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+05h
	line	404
	
l18600:	
;uart.c: 404: uart1_tx_buf[6] =(unsigned char )(step_01_load_percent);
	movlb 2	; select bank2
	movf	(_step_01_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+06h
	line	406
	
l18602:	
;uart.c: 406: uart1_tx_buf[7] =(unsigned char )(step_02_load_percent);
	movlb 2	; select bank2
	movf	(_step_02_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+07h
	line	408
	
l18604:	
;uart.c: 408: uart1_tx_buf[8] =(unsigned char )(step_03_load_percent);
	movlb 2	; select bank2
	movf	(_step_03_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+08h
	line	410
	
l18606:	
;uart.c: 410: uart1_tx_buf[9] =(unsigned char )(step_04_load_percent);
	movlb 2	; select bank2
	movf	(_step_04_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+09h
	line	412
	
l18608:	
;uart.c: 412: uart1_tx_buf[10]=(unsigned char )(step_05_load_percent);
	movlb 2	; select bank2
	movf	(_step_05_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+0Ah
	line	414
	
l18610:	
;uart.c: 414: uart1_tx_buf[11]=(unsigned char )(bt_id);
	movlb 1	; select bank1
	movf	(_bt_id)^080h,w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+0Bh
	line	416
	
l18612:	
;uart.c: 416: uart1_tx_buf[12]=(unsigned char )(light_time);
	movlb 1	; select bank1
	movf	(_light_time)^080h,w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+0Ch
	line	418
	
l18614:	
;uart.c: 418: uart1_tx_buf[13] =(unsigned char )(step_01_time_limit);
	movlb 1	; select bank1
	movf	(_step_01_time_limit)^080h,w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+0Dh
	line	420
	
l18616:	
;uart.c: 420: uart1_tx_buf[14] =(unsigned char )(step_02_time_limit);
	movlb 1	; select bank1
	movf	(_step_02_time_limit)^080h,w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+0Eh
	line	422
	
l18618:	
;uart.c: 422: uart1_tx_buf[15] =(unsigned char )(step_03_time_limit);
	movlb 1	; select bank1
	movf	(_step_03_time_limit)^080h,w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+0Fh
	line	424
	
l18620:	
;uart.c: 424: uart1_tx_buf[16] =(unsigned char )(step_04_time_limit);
	movlb 1	; select bank1
	movf	(_step_04_time_limit)^080h,w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+010h
	line	426
	
l18622:	
;uart.c: 426: uart1_tx_buf[17] =(unsigned char )(step_05_time_limit);
	movlb 2	; select bank2
	movf	(_step_05_time_limit)^0100h,w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+011h
	line	429
	
l18624:	
;uart.c: 429: crc_data=crc16(&uart1_tx_buf[1],17);
	movlw	(011h)
	movlb 0	; select bank0
	movwf	(crc16@usDataLen)
	movlw	(_uart1_tx_buf+01h)&0ffh
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movwf	(_crc_data+1)
	movf	(0+(?_crc16)),w
	movwf	(_crc_data)
	line	431
	
l18626:	
;uart.c: 431: uart1_tx_buf[18]=crc_data/256;
	movf	(_crc_data+1),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+012h
	line	433
	
l18628:	
;uart.c: 433: uart1_tx_buf[19]=crc_data%256;
	movf	(_crc_data),w
	movwf	0+(_uart1_tx_buf)^0300h+013h
	line	435
	
l18630:	
;uart.c: 435: uart1_tx_buf[20]=0xAA;
	movlw	(0AAh)
	movwf	0+(_uart1_tx_buf)^0300h+014h
	goto	l18848
	line	443
	
l18632:	
;uart.c: 443: if(uart1_rx_buf[1]==0xA3)
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+01h,w
	xorlw	0A3h&0ffh
	skipz
	goto	u11391
	goto	u11390
u11391:
	goto	l18848
u11390:
	line	445
	
l18634:	
;uart.c: 444: {
;uart.c: 445: crc_in=crc16(&uart1_rx_buf[1],17);
	movlw	(011h)
	movlb 0	; select bank0
	movwf	(crc16@usDataLen)
	movlw	(_uart1_rx_buf+01h)&0ffh
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movwf	(handle_uart_rx_buf@crc_in+1)
	movf	(0+(?_crc16)),w
	movwf	(handle_uart_rx_buf@crc_in)
	line	447
	
l18636:	
;uart.c: 447: if(crc_in==( (uart1_rx_buf[18]<<8) | uart1_rx_buf[19]) )
	movf	(handle_uart_rx_buf@crc_in+1),w
	movlb 7	; select bank7
	xorwf	0+(_uart1_rx_buf)^0380h+012h,w
	skipz
	goto	u11405
	movlb 0	; select bank0
	movf	(handle_uart_rx_buf@crc_in),w
	movlb 7	; select bank7
	xorwf	0+(_uart1_rx_buf)^0380h+013h,w
u11405:

	skipz
	goto	u11401
	goto	u11400
u11401:
	goto	l18848
u11400:
	line	450
	
l18638:	
;uart.c: 448: {
;uart.c: 450: light_pv = (uart1_rx_buf[2]<<8) | uart1_rx_buf[3];
	movf	0+(_uart1_rx_buf)^0380h+02h,w
	movlb 0	; select bank0
	movwf	(___awtoft@c+1)
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+03h,w
	movlb 0	; select bank0
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movlb 1	; select bank1
	movwf	(_light_pv)^080h
	movlb 0	; select bank0
	movf	(1+(?___awtoft)),w
	movlb 1	; select bank1
	movwf	(_light_pv+1)^080h
	movlb 0	; select bank0
	movf	(2+(?___awtoft)),w
	movlb 1	; select bank1
	movwf	(_light_pv+2)^080h
	line	452
;uart.c: 452: load_cc_I = (uart1_rx_buf[4]<<8) | uart1_rx_buf[5];
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+04h,w
	movlb 0	; select bank0
	movwf	(___awtoft@c+1)
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+05h,w
	movlb 0	; select bank0
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movlb 1	; select bank1
	movwf	(_load_cc_I)^080h
	movlb 0	; select bank0
	movf	(1+(?___awtoft)),w
	movlb 1	; select bank1
	movwf	(_load_cc_I+1)^080h
	movlb 0	; select bank0
	movf	(2+(?___awtoft)),w
	movlb 1	; select bank1
	movwf	(_load_cc_I+2)^080h
	line	454
;uart.c: 454: step_01_load_percent = uart1_rx_buf[6];
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+06h,w
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_01_load_percent)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_01_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_01_load_percent+2)^0100h
	line	456
;uart.c: 456: step_02_load_percent = uart1_rx_buf[7];
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+07h,w
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_02_load_percent)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_02_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_02_load_percent+2)^0100h
	line	458
;uart.c: 458: step_03_load_percent = uart1_rx_buf[8];
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+08h,w
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_03_load_percent)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_03_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_03_load_percent+2)^0100h
	line	460
;uart.c: 460: step_04_load_percent = uart1_rx_buf[9];
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+09h,w
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_04_load_percent)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_04_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_04_load_percent+2)^0100h
	line	462
;uart.c: 462: step_05_load_percent = uart1_rx_buf[10];
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+0Ah,w
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_05_load_percent)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_05_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtoft)),w
	movlb 2	; select bank2
	movwf	(_step_05_load_percent+2)^0100h
	line	464
	
l18640:	
;uart.c: 464: Adjust_Pout_Flag=0x00;
	movlb 0	; select bank0
	clrf	(_Adjust_Pout_Flag)
	line	465
	
l18642:	
;uart.c: 465: voltage_adjust_index=0x01;
	movlb 1	; select bank1
	clrf	(_voltage_adjust_index)^080h
	incf	(_voltage_adjust_index)^080h,f
	line	467
	
l18644:	
;uart.c: 467: bt_id = uart1_rx_buf[11];
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+0Bh,w
	movlb 1	; select bank1
	movwf	(_bt_id)^080h
	line	469
	
l18646:	
;uart.c: 469: light_time = uart1_rx_buf[12];
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+0Ch,w
	movlb 1	; select bank1
	movwf	(_light_time)^080h
	clrf	(_light_time+1)^080h
	line	471
	
l18648:	
;uart.c: 471: step_01_time_limit = uart1_rx_buf[13];
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+0Dh,w
	movlb 1	; select bank1
	movwf	(_step_01_time_limit)^080h
	clrf	(_step_01_time_limit+1)^080h
	line	473
	
l18650:	
;uart.c: 473: step_02_time_limit = uart1_rx_buf[14];
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+0Eh,w
	movlb 1	; select bank1
	movwf	(_step_02_time_limit)^080h
	clrf	(_step_02_time_limit+1)^080h
	line	475
	
l18652:	
;uart.c: 475: step_03_time_limit = uart1_rx_buf[15];
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+0Fh,w
	movlb 1	; select bank1
	movwf	(_step_03_time_limit)^080h
	clrf	(_step_03_time_limit+1)^080h
	line	477
	
l18654:	
;uart.c: 477: step_04_time_limit = uart1_rx_buf[16];
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+010h,w
	movlb 1	; select bank1
	movwf	(_step_04_time_limit)^080h
	clrf	(_step_04_time_limit+1)^080h
	line	479
	
l18656:	
;uart.c: 479: step_05_time_limit = uart1_rx_buf[17];
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+011h,w
	movlb 2	; select bank2
	movwf	(_step_05_time_limit)^0100h
	clrf	(_step_05_time_limit+1)^0100h
	line	481
	
l18658:	
;uart.c: 481: if((light_pv>=100)&&(light_pv<=1200)&&(load_cc_I<=500)&&(step_01_load_percent<=100)&&(step_02_load_percent<=100) &&(step_03_load_percent<=100)&&(step_04_load_percent<=100)&&(step_05_load_percent<=100)&&(bt_id>=1)&&(bt_id<=2) &&(light_time<=60)&&(step
	movlb 1	; select bank1
	movf	(_light_pv)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(_light_pv+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(_light_pv+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xc8
	movwf	(___ftge@ff2+1)
	movlw	0x42
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11411
	goto	u11410
u11411:
	goto	l18740
u11410:
	
l18660:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x96
	movwf	(___ftge@ff1+1)
	movlw	0x44
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(_light_pv)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(_light_pv+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(_light_pv+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11421
	goto	u11420
u11421:
	goto	l18740
u11420:
	
l18662:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0xfa
	movwf	(___ftge@ff1+1)
	movlw	0x43
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11431
	goto	u11430
u11431:
	goto	l18740
u11430:
	
l18664:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0xc8
	movwf	(___ftge@ff1+1)
	movlw	0x42
	movwf	(___ftge@ff1+2)
	movlb 2	; select bank2
	movf	(_step_01_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11441
	goto	u11440
u11441:
	goto	l18740
u11440:
	
l18666:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0xc8
	movwf	(___ftge@ff1+1)
	movlw	0x42
	movwf	(___ftge@ff1+2)
	movlb 2	; select bank2
	movf	(_step_02_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11451
	goto	u11450
u11451:
	goto	l18740
u11450:
	
l18668:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0xc8
	movwf	(___ftge@ff1+1)
	movlw	0x42
	movwf	(___ftge@ff1+2)
	movlb 2	; select bank2
	movf	(_step_03_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11461
	goto	u11460
u11461:
	goto	l18740
u11460:
	
l18670:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0xc8
	movwf	(___ftge@ff1+1)
	movlw	0x42
	movwf	(___ftge@ff1+2)
	movlb 2	; select bank2
	movf	(_step_04_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11471
	goto	u11470
u11471:
	goto	l18740
u11470:
	
l18672:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0xc8
	movwf	(___ftge@ff1+1)
	movlw	0x42
	movwf	(___ftge@ff1+2)
	movlb 2	; select bank2
	movf	(_step_05_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11481
	goto	u11480
u11481:
	goto	l18740
u11480:
	
l18674:	
	movlb 1	; select bank1
	movf	(_bt_id)^080h,w
	skipz
	goto	u11490
	goto	l18740
u11490:
	
l18676:	
	movlw	(03h)
	subwf	(_bt_id)^080h,w
	skipnc
	goto	u11501
	goto	u11500
u11501:
	goto	l18740
u11500:
	
l18678:	
	movlw	high(03Dh)
	subwf	(_light_time+1)^080h,w
	movlw	low(03Dh)
	skipnz
	subwf	(_light_time)^080h,w
	skipnc
	goto	u11511
	goto	u11510
u11511:
	goto	l18740
u11510:
	
l18680:	
	movlw	high(019h)
	subwf	(_step_01_time_limit+1)^080h,w
	movlw	low(019h)
	skipnz
	subwf	(_step_01_time_limit)^080h,w
	skipnc
	goto	u11521
	goto	u11520
u11521:
	goto	l18740
u11520:
	
l18682:	
	movlw	high(019h)
	subwf	(_step_02_time_limit+1)^080h,w
	movlw	low(019h)
	skipnz
	subwf	(_step_02_time_limit)^080h,w
	skipnc
	goto	u11531
	goto	u11530
u11531:
	goto	l18740
u11530:
	
l18684:	
	movlw	high(019h)
	subwf	(_step_03_time_limit+1)^080h,w
	movlw	low(019h)
	skipnz
	subwf	(_step_03_time_limit)^080h,w
	skipnc
	goto	u11541
	goto	u11540
u11541:
	goto	l18740
u11540:
	
l18686:	
	movlw	high(019h)
	subwf	(_step_04_time_limit+1)^080h,w
	movlw	low(019h)
	skipnz
	subwf	(_step_04_time_limit)^080h,w
	skipnc
	goto	u11551
	goto	u11550
u11551:
	goto	l18740
u11550:
	
l18688:	
	movlw	high(019h)
	movlb 2	; select bank2
	subwf	(_step_05_time_limit+1)^0100h,w
	movlw	low(019h)
	skipnz
	subwf	(_step_05_time_limit)^0100h,w
	skipnc
	goto	u11561
	goto	u11560
u11561:
	movlb 1	; select bank1
	goto	l18740
u11560:
	line	486
	
l18690:	
;uart.c: 484: {
;uart.c: 486: eeprom_write(0x00,(unsigned char)(light_pv/256));
	movlb 1	; select bank1
	movf	(_light_pv)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 1	; select bank1
	movf	(_light_pv+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 1	; select bank1
	movf	(_light_pv+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x43
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movwf	(eeprom_write@value)
	movlw	(0)
	fcall	_eeprom_write
	line	488
;uart.c: 488: eeprom_write(0x01,(unsigned char)light_pv);
	movlb 1	; select bank1
	movf	(_light_pv)^080h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 1	; select bank1
	movf	(_light_pv+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 1	; select bank1
	movf	(_light_pv+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movwf	(eeprom_write@value)
	movlw	(01h)
	fcall	_eeprom_write
	line	491
;uart.c: 491: eeprom_write(0x02,(unsigned char)(load_cc_I/256));
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x43
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movwf	(eeprom_write@value)
	movlw	(02h)
	fcall	_eeprom_write
	line	493
;uart.c: 493: eeprom_write(0x03,(unsigned char)load_cc_I);
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movwf	(eeprom_write@value)
	movlw	(03h)
	fcall	_eeprom_write
	line	496
;uart.c: 496: eeprom_write(0x04,(unsigned char)(step_01_load_percent));
	movlb 2	; select bank2
	movf	(_step_01_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movwf	(eeprom_write@value)
	movlw	(04h)
	fcall	_eeprom_write
	line	498
;uart.c: 498: eeprom_write(0x05,(unsigned char)(step_02_load_percent));
	movlb 2	; select bank2
	movf	(_step_02_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movwf	(eeprom_write@value)
	movlw	(05h)
	fcall	_eeprom_write
	line	500
;uart.c: 500: eeprom_write(0x06,(unsigned char)(step_03_load_percent));
	movlb 2	; select bank2
	movf	(_step_03_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movwf	(eeprom_write@value)
	movlw	(06h)
	fcall	_eeprom_write
	line	502
;uart.c: 502: eeprom_write(0x07,(unsigned char)(step_04_load_percent));
	movlb 2	; select bank2
	movf	(_step_04_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movwf	(eeprom_write@value)
	movlw	(07h)
	fcall	_eeprom_write
	line	504
;uart.c: 504: eeprom_write(0x08,(unsigned char)(step_05_load_percent));
	movlb 2	; select bank2
	movf	(_step_05_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movwf	(eeprom_write@value)
	movlw	(08h)
	fcall	_eeprom_write
	line	506
;uart.c: 506: eeprom_write(0x0a,(unsigned char)(bt_id));
	movlb 1	; select bank1
	movf	(_bt_id)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(0Ah)
	fcall	_eeprom_write
	line	508
;uart.c: 508: eeprom_write(0x0b,(unsigned char)(light_time));
	movlb 1	; select bank1
	movf	(_light_time)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(0Bh)
	fcall	_eeprom_write
	line	510
;uart.c: 510: eeprom_write(0x0c,(unsigned char)(step_01_time_limit));
	movlb 1	; select bank1
	movf	(_step_01_time_limit)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(0Ch)
	fcall	_eeprom_write
	line	512
;uart.c: 512: eeprom_write(0x0d,(unsigned char)(step_02_time_limit));
	movlb 1	; select bank1
	movf	(_step_02_time_limit)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(0Dh)
	fcall	_eeprom_write
	line	514
;uart.c: 514: eeprom_write(0x0e,(unsigned char)(step_03_time_limit));
	movlb 1	; select bank1
	movf	(_step_03_time_limit)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(0Eh)
	fcall	_eeprom_write
	line	516
;uart.c: 516: eeprom_write(0x0f,(unsigned char)(step_04_time_limit));
	movlb 1	; select bank1
	movf	(_step_04_time_limit)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(0Fh)
	fcall	_eeprom_write
	line	518
;uart.c: 518: eeprom_write(0x10,(unsigned char)(step_05_time_limit));
	movlb 2	; select bank2
	movf	(_step_05_time_limit)^0100h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(010h)
	fcall	_eeprom_write
	line	521
;uart.c: 521: light_on_pv_level =(light_pv*10)/61;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftdiv@f2)
	movlw	0x74
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x20
	movwf	(___ftmul@f1+1)
	movlw	0x41
	movwf	(___ftmul@f1+2)
	movlb 1	; select bank1
	movf	(_light_pv)^080h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 1	; select bank1
	movf	(_light_pv+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 1	; select bank1
	movf	(_light_pv+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_light_on_pv_level)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_light_on_pv_level+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_light_on_pv_level+2)^0180h
	line	522
	
l18692:	
;uart.c: 522: light_off_pv_level =(10.0/61)*1000;
	movlw	0xef
	movwf	(_light_off_pv_level)^0180h
	movlw	0x23
	movwf	(_light_off_pv_level+1)^0180h
	movlw	0x43
	movwf	(_light_off_pv_level+2)^0180h
	line	524
	
l18694:	
;uart.c: 524: PID_CC_discharge.SetPoint = (load_cc_I/100)*30;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlw	0xf0
	movwf	(___ftmul@f1+1)
	movlw	0x41
	movwf	(___ftmul@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	526
	
l18696:	
;uart.c: 526: if(light_time==0x00)
	movlb 1	; select bank1
	movf	((_light_time+1)^080h),w
	iorwf	((_light_time)^080h),w
	skipz
	goto	u11571
	goto	u11570
u11571:
	goto	l18700
u11570:
	line	528
	
l18698:	
;uart.c: 527: {
;uart.c: 528: light_time_level = 500;
	movlw	0
	movlb 2	; select bank2
	movwf	(_light_time_level+3)^0100h
	movlw	0
	movwf	(_light_time_level+2)^0100h
	movlw	01h
	movwf	(_light_time_level+1)^0100h
	movlw	0F4h
	movwf	(_light_time_level)^0100h

	line	529
;uart.c: 529: }
	goto	l18702
	line	532
	
l18700:	
;uart.c: 530: else
;uart.c: 531: {
;uart.c: 532: light_time_level = (unsigned long int)(light_time*6*180);
	movf	(_light_time+1)^080h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplier+1)
	movlb 1	; select bank1
	movf	(_light_time)^080h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplier)
	movlw	low(0438h)
	movwf	(___wmul@multiplicand)
	movlw	high(0438h)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	movlb 2	; select bank2
	movwf	(_light_time_level)^0100h
	movlb 0	; select bank0
	movf	(1+(?___wmul)),w
	movlb 2	; select bank2
	movwf	((_light_time_level)^0100h)+1
	clrf	2+((_light_time_level)^0100h)
	clrf	3+((_light_time_level)^0100h)
	line	536
	
l18702:	
;uart.c: 533: }
;uart.c: 536: device_status=0x00;
	movlb 0	; select bank0
	clrf	(_device_status)
	line	538
	
l18704:	
;uart.c: 538: eeprom_write(0x38,(unsigned char)(device_status));
	movf	(_device_status),w
	movwf	(eeprom_write@value)
	movlw	(038h)
	fcall	_eeprom_write
	line	540
	
l18706:	
;uart.c: 542: lr_cnt = 0x00;
	movlw	(04h)
	movlb 1	; select bank1
	movwf	(_work_mode)^080h
	line	544
	
l18708:	
;uart.c: 544: nop_index=0x00;
	clrf	(_nop_index)^080h
	line	545
	
l18710:	
;uart.c: 545: discharge_index=0x00;
	clrf	(_discharge_index)^080h
	line	546
	
l18712:	
;uart.c: 546: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	548
	
l18714:	
;uart.c: 548: led_out_ctrl=0x00;
	clrf	(_led_out_ctrl)^080h
	line	549
	
l18716:	
;uart.c: 549: eeprom_write(0x39,(unsigned char)(led_out_ctrl));
	movf	(_led_out_ctrl)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(039h)
	fcall	_eeprom_write
	line	551
	
l18718:	
;uart.c: 551: pv_voltage_status=0x00;
	movlb 1	; select bank1
	clrf	(_pv_voltage_status)^080h
	line	553
	
l18720:	
;uart.c: 553: day_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_day_time_count)^0200h
	clrf	(_day_time_count+1)^0200h
	clrf	(_day_time_count+2)^0200h
	clrf	(_day_time_count+3)^0200h
	line	555
	
l18722:	
;uart.c: 555: night_time_count=0x00;
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	line	557
	
l18724:	
;uart.c: 557: pv_time_count=0x00;
	clrf	(_pv_time_count)^0200h
	clrf	(_pv_time_count+1)^0200h
	clrf	(_pv_time_count+2)^0200h
	clrf	(_pv_time_count+3)^0200h
	line	561
	
l18726:	
;uart.c: 561: uart1_tx_buf[0]=0x55;
	movlw	(055h)
	movlb 6	; select bank6
	movwf	(_uart1_tx_buf)^0300h
	line	563
	
l18728:	
;uart.c: 563: uart1_tx_buf[1]=0xB3;
	movlw	(0B3h)
	movwf	0+(_uart1_tx_buf)^0300h+01h
	line	565
	
l18730:	
;uart.c: 565: uart1_tx_buf[2]=0x01;
	clrf	0+(_uart1_tx_buf)^0300h+02h
	incf	0+(_uart1_tx_buf)^0300h+02h,f
	line	567
	
l18732:	
;uart.c: 567: crc_data=crc16(&uart1_tx_buf[1],2);
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(crc16@usDataLen)
	movlw	(_uart1_tx_buf+01h)&0ffh
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movwf	(_crc_data+1)
	movf	(0+(?_crc16)),w
	movwf	(_crc_data)
	line	569
	
l18734:	
;uart.c: 569: uart1_tx_buf[3]=crc_data/256;
	movf	(_crc_data+1),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+03h
	line	571
	
l18736:	
;uart.c: 571: uart1_tx_buf[4]=crc_data%256;
	movf	(_crc_data),w
	movwf	0+(_uart1_tx_buf)^0300h+04h
	line	573
	
l18738:	
;uart.c: 573: uart1_tx_buf[5]=0xAA;
	movlw	(0AAh)
	movwf	0+(_uart1_tx_buf)^0300h+05h
	line	577
;uart.c: 577: }
	goto	l18848
	line	580
	
l18740:	
;uart.c: 578: else
;uart.c: 579: {
;uart.c: 580: uart1_tx_buf[0]=0x55;
	movlw	(055h)
	movlb 6	; select bank6
	movwf	(_uart1_tx_buf)^0300h
	line	582
;uart.c: 582: uart1_tx_buf[1]=0xB3;
	movlw	(0B3h)
	movwf	0+(_uart1_tx_buf)^0300h+01h
	line	584
;uart.c: 584: uart1_tx_buf[2]=0x02;
	movlw	(02h)
	movwf	0+(_uart1_tx_buf)^0300h+02h
	line	586
	
l18742:	
;uart.c: 586: crc_data=crc16(&uart1_tx_buf[1],2);
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(crc16@usDataLen)
	movlw	(_uart1_tx_buf+01h)&0ffh
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movwf	(_crc_data+1)
	movf	(0+(?_crc16)),w
	movwf	(_crc_data)
	line	588
	
l18744:	
;uart.c: 588: uart1_tx_buf[3]=crc_data/256;
	movf	(_crc_data+1),w
	movlb 6	; select bank6
	movwf	0+(_uart1_tx_buf)^0300h+03h
	line	590
	
l18746:	
;uart.c: 590: uart1_tx_buf[4]=crc_data%256;
	movf	(_crc_data),w
	movwf	0+(_uart1_tx_buf)^0300h+04h
	line	592
	
l18748:	
;uart.c: 592: uart1_tx_buf[5]=0xAA;
	movlw	(0AAh)
	movwf	0+(_uart1_tx_buf)^0300h+05h
	line	596
# 596 "D:\MCUProject\ZH-SL-H40\src\uart.c"
reset ;# 
psect	text6
	goto	l18848
	line	604
;uart.c: 604: case 0x04:
	
l1816:	
	line	605
;uart.c: 605: work_mode=0x01;
	movlb 1	; select bank1
	clrf	(_work_mode)^080h
	incf	(_work_mode)^080h,f
	line	607
	
l18750:	
;uart.c: 607: uart1_tx_buf[0]=0x55;
	movlw	(055h)
	movlb 6	; select bank6
	movwf	(_uart1_tx_buf)^0300h
	line	609
;uart.c: 609: uart1_tx_buf[1]=0xB4;
	movlw	(0B4h)
	movwf	0+(_uart1_tx_buf)^0300h+01h
	line	611
	
l18752:	
;uart.c: 611: uart1_tx_buf[2]=0x01;
	clrf	0+(_uart1_tx_buf)^0300h+02h
	incf	0+(_uart1_tx_buf)^0300h+02h,f
	line	613
	
l18754:	
;uart.c: 613: crc_data=crc16(&uart1_tx_buf[1],2);
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(crc16@usDataLen)
	movlw	(_uart1_tx_buf+01h)&0ffh
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movwf	(_crc_data+1)
	movf	(0+(?_crc16)),w
	movwf	(_crc_data)
	goto	l18734
	line	625
	
l18762:	
;uart.c: 625: work_mode=0x02;
	movlw	(02h)
	movlb 1	; select bank1
	movwf	(_work_mode)^080h
	line	627
;uart.c: 627: uart1_tx_buf[0]=0x55;
	movlw	(055h)
	movlb 6	; select bank6
	movwf	(_uart1_tx_buf)^0300h
	line	629
;uart.c: 629: uart1_tx_buf[1]=0xB5;
	movlw	(0B5h)
	movwf	0+(_uart1_tx_buf)^0300h+01h
	line	631
	
l18764:	
;uart.c: 631: uart1_tx_buf[2]=0x01;
	clrf	0+(_uart1_tx_buf)^0300h+02h
	incf	0+(_uart1_tx_buf)^0300h+02h,f
	line	633
	
l18766:	
;uart.c: 633: crc_data=crc16(&uart1_tx_buf[1],2);
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(crc16@usDataLen)
	movlw	(_uart1_tx_buf+01h)&0ffh
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movwf	(_crc_data+1)
	movf	(0+(?_crc16)),w
	movwf	(_crc_data)
	goto	l18734
	line	644
	
l18774:	
;uart.c: 644: work_mode=0x00;
	movlb 1	; select bank1
	clrf	(_work_mode)^080h
	line	645
	
l18776:	
;uart.c: 645: (LATCbits.LATC0 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,0	;volatile
	line	647
;uart.c: 647: open_sleep_time=0x00;
	clrf	(_open_sleep_time)^0100h
	line	648
;uart.c: 649: lr_cnt=0x00;
	movlb 4	; select bank4
	clrf	(_sleep_time_count)^0200h
	clrf	(_sleep_time_count+1)^0200h
	line	651
;uart.c: 651: nop_index=0x00;
	movlb 1	; select bank1
	clrf	(_nop_index)^080h
	line	652
;uart.c: 652: discharge_index=0x00;
	clrf	(_discharge_index)^080h
	line	653
;uart.c: 653: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	655
;uart.c: 655: led_out_ctrl=0x00;
	clrf	(_led_out_ctrl)^080h
	line	656
	
l18778:	
;uart.c: 656: eeprom_write(0x39,(unsigned char)(led_out_ctrl));
	movf	(_led_out_ctrl)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(039h)
	fcall	_eeprom_write
	line	658
	
l18780:	
;uart.c: 658: device_status=0x01;
	movlb 0	; select bank0
	clrf	(_device_status)
	incf	(_device_status),f
	line	660
	
l18782:	
;uart.c: 660: eeprom_write(0x38,(unsigned char)(device_status));
	movf	(_device_status),w
	movwf	(eeprom_write@value)
	movlw	(038h)
	fcall	_eeprom_write
	line	662
	
l18784:	
;uart.c: 662: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	663
	
l18786:	
;uart.c: 663: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	664
	
l18788:	
;uart.c: 664: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	665
	
l18790:	
;uart.c: 665: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	666
	
l18792:	
;uart.c: 666: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	668
	
l18794:	
;uart.c: 668: (LATCbits.LATC3 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,3	;volatile
	line	669
	
l18796:	
;uart.c: 669: Enable_Bost_Pwm();
	fcall	_Enable_Bost_Pwm
	line	670
	
l18798:	
;uart.c: 670: Set_Bost_Pwm_Duty(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	672
	
l18800:	
;uart.c: 672: delay_ms(1000);
	movlw	low(03E8h)
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	movlw	high(03E8h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	674
	
l18802:	
;uart.c: 674: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	676
	
l18804:	
;uart.c: 676: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	677
	
l18806:	
;uart.c: 677: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	678
	
l18808:	
;uart.c: 678: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	680
	
l18810:	
;uart.c: 680: open_an0_time=0x01;
	movlb 2	; select bank2
	clrf	(_open_an0_time)^0100h
	incf	(_open_an0_time)^0100h,f
	line	682
	
l18812:	
;uart.c: 682: open_an1_time=0x01;
	clrf	(_open_an1_time)^0100h
	incf	(_open_an1_time)^0100h,f
	line	684
	
l18814:	
;uart.c: 684: open_an2_time=0x01;
	clrf	(_open_an2_time)^0100h
	incf	(_open_an2_time)^0100h,f
	line	686
	
l18816:	
;uart.c: 686: open_an3_time=0x01;
	clrf	(_open_an3_time)^0100h
	incf	(_open_an3_time)^0100h,f
	line	688
	
l18818:	
;uart.c: 688: open_an4_time=0x01;
	clrf	(_open_an4_time)^0100h
	incf	(_open_an4_time)^0100h,f
	line	690
	
l18820:	
;uart.c: 690: open_an9_time=0x01;
	clrf	(_open_an9_time)^0100h
	incf	(_open_an9_time)^0100h,f
	line	692
	
l18822:	
;uart.c: 692: open_an10_time=0x01;
	clrf	(_open_an10_time)^0100h
	incf	(_open_an10_time)^0100h,f
	line	694
;uart.c: 694: pv_voltage_status=0x00;
	movlb 1	; select bank1
	clrf	(_pv_voltage_status)^080h
	line	696
	
l18824:	
;uart.c: 696: day_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_day_time_count)^0200h
	clrf	(_day_time_count+1)^0200h
	clrf	(_day_time_count+2)^0200h
	clrf	(_day_time_count+3)^0200h
	line	698
	
l18826:	
;uart.c: 698: night_time_count=0x00;
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	line	700
	
l18828:	
;uart.c: 700: pv_time_count=0x00;
	clrf	(_pv_time_count)^0200h
	clrf	(_pv_time_count+1)^0200h
	clrf	(_pv_time_count+2)^0200h
	clrf	(_pv_time_count+3)^0200h
	line	703
	
l18830:	
;uart.c: 703: uart1_tx_buf[0]=0x55;
	movlw	(055h)
	movlb 6	; select bank6
	movwf	(_uart1_tx_buf)^0300h
	line	705
	
l18832:	
;uart.c: 705: uart1_tx_buf[1]=0xB6;
	movlw	(0B6h)
	movwf	0+(_uart1_tx_buf)^0300h+01h
	line	707
	
l18834:	
;uart.c: 707: uart1_tx_buf[2]=0x01;
	clrf	0+(_uart1_tx_buf)^0300h+02h
	incf	0+(_uart1_tx_buf)^0300h+02h,f
	line	709
	
l18836:	
;uart.c: 709: crc_data=crc16(&uart1_tx_buf[1],2);
	movlw	(02h)
	movlb 0	; select bank0
	movwf	(crc16@usDataLen)
	movlw	(_uart1_tx_buf+01h)&0ffh
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movwf	(_crc_data+1)
	movf	(0+(?_crc16)),w
	movwf	(_crc_data)
	goto	l18734
	line	240
	
l18846:	
	movlb 2	; select bank2
	movf	(_rx_frame_kind)^0100h,w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 1 to 6
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           21     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l18464
	xorlw	2^1	; case 2
	skipnz
	goto	l18584
	xorlw	3^2	; case 3
	skipnz
	goto	l18632
	xorlw	4^3	; case 4
	skipnz
	goto	l1816
	xorlw	5^4	; case 5
	skipnz
	goto	l18762
	xorlw	6^5	; case 6
	skipnz
	goto	l18774
	goto	l18848
	opt asmopt_on

	line	722
	
l18848:	
;uart.c: 722: rx_frame_kind=0x00;
	movlb 2	; select bank2
	clrf	(_rx_frame_kind)^0100h
	line	724
	
l18850:	
;uart.c: 724: memset (uart1_rx_buf,0,sizeof(uart1_rx_buf));
	movlw	low(_uart1_rx_buf)
	movlb 0	; select bank0
	movwf	(memset@p1)
	movlw	high(_uart1_rx_buf)
	movwf	(memset@p1+1)
	clrf	(memset@c)
	clrf	(memset@c+1)
	movlw	050h
	movwf	(memset@n)
	clrf	(memset@n+1)
	fcall	_memset
	line	725
	
l1820:	
	return
	opt stack 0
GLOBAL	__end_of_handle_uart_rx_buf
	__end_of_handle_uart_rx_buf:
	signat	_handle_uart_rx_buf,88
	global	_eeprom_read

;; *************** function _eeprom_read *****************
;; Defined at:
;;		line 6 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\eeread.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 1F/3
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_param_eeprom
;;		_auto_system
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\eeread.c"
	line	6
global __ptext7
__ptext7:	;psect for function _eeprom_read
psect	text7
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\eeread.c"
	line	6
	global	__size_of_eeprom_read
	__size_of_eeprom_read	equ	__end_of_eeprom_read-_eeprom_read
	
_eeprom_read:	
;incstack = 0
	opt	stack 11
; Regs used in _eeprom_read: [wreg+status,2+status,0]
;eeprom_read@addr stored from wreg
	movlb 0	; select bank0
	movwf	(eeprom_read@addr)
	line	8
	
l1833:	
	line	9
# 9 "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\eeread.c"
clrwdt ;# 
psect	text7
	line	10
	movlb 3	; select bank3
	btfsc	(3241/8)^0180h,(3241)&7	;volsfr
	goto	u9081
	goto	u9080
u9081:
	movlb 0	; select bank0
	goto	l1833
u9080:
	line	11
	
l16598:	
	movlb 0	; select bank0
	movf	(eeprom_read@addr),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	clrf	(401+1)^0180h	;volatile
	movlw	(03Fh)
	andwf	(405)^0180h,f	;volsfr
	bsf	(3240/8)^0180h,(3240)&7	;volsfr
	clrc
	btfsc	(3240/8)^0180h,(3240)&7	;volsfr
	setc
	movlw	0
	addwfc	wreg,w
	movf	(403)^0180h,w	;volatile
	line	12
	
l1835:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
	signat	_eeprom_read,4217
	global	_crc16

;; *************** function _crc16 *****************
;; Defined at:
;;		line 75 in file "D:\MCUProject\ZH-SL-H40\src\Modbus.c"
;; Parameters:    Size  Location     Type
;;  puchMsg         1    wreg     PTR volatile unsigned ch
;;		 -> uart1_tx_buf(80), uart1_rx_buf(80), 
;;  usDataLen       1    3[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  puchMsg         1   12[BANK0 ] PTR volatile unsigned ch
;;		 -> uart1_tx_buf(80), uart1_rx_buf(80), 
;;  uIndex          4    6[BANK0 ] unsigned long 
;;  uchCRCLo        1   11[BANK0 ] unsigned char 
;;  uchCRCHi        1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       7       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      10       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\Modbus.c"
	line	75
global __ptext8
__ptext8:	;psect for function _crc16
psect	text8
	file	"D:\MCUProject\ZH-SL-H40\src\Modbus.c"
	line	75
	global	__size_of_crc16
	__size_of_crc16	equ	__end_of_crc16-_crc16
	
_crc16:	
;incstack = 0
	opt	stack 12
; Regs used in _crc16: [wreg-fsr1h+status,2+status,0+pclath]
;crc16@puchMsg stored from wreg
	movwf	(crc16@puchMsg)
	line	77
	
l14902:	
;Modbus.c: 77: unsigned char uchCRCHi = 0xFF ;
	movlw	(0FFh)
	movwf	(crc16@uchCRCHi)
	line	78
;Modbus.c: 78: unsigned char uchCRCLo = 0xFF ;
	movlw	(0FFh)
	movwf	(crc16@uchCRCLo)
	line	80
;Modbus.c: 79: unsigned long uIndex ;
;Modbus.c: 80: while (usDataLen--)
	goto	l14912
	line	82
	
l14904:	
;Modbus.c: 81: {
;Modbus.c: 82: uIndex = uchCRCHi ^ *puchMsg++ ;
	movf	(crc16@puchMsg),w
	movwf	fsr1l
	movlw 3	; select bank6/7
	movwf fsr1h	
	
	movf	indf1,w
	xorwf	(crc16@uchCRCHi),w
	movwf	(crc16@uIndex)
	clrf	(crc16@uIndex+1)
	clrf	(crc16@uIndex+2)
	clrf	(crc16@uIndex+3)

	
l14906:	
	incf	(crc16@puchMsg),f
	line	83
	
l14908:	
;Modbus.c: 83: uchCRCHi = uchCRCLo ^ CRCHi[uIndex] ;
	movlw	low(_CRCHi|8000h)
	addwf	(crc16@uIndex),w
	movwf	fsr0l
	movlw	high(_CRCHi|8000h)
	addwfc	(crc16@uIndex+1),w
	movwf	fsr0h
	movf	indf0,w ;code access
	xorwf	(crc16@uchCRCLo),w
	movwf	(crc16@uchCRCHi)
	line	84
	
l14910:	
;Modbus.c: 84: uchCRCLo = CRCLo[uIndex] ;
	movlw	low(_CRCLo|8000h)
	addwf	(crc16@uIndex),w
	movwf	fsr0l
	movlw	high(_CRCLo|8000h)
	addwfc	(crc16@uIndex+1),w
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(crc16@uchCRCLo)
	line	80
	
l14912:	
	decf	(crc16@usDataLen),f
	movf	((crc16@usDataLen)),w
	xorlw	0FFh&0ffh
	skipz
	goto	u7081
	goto	u7080
u7081:
	goto	l14904
u7080:
	line	86
	
l14914:	
;Modbus.c: 85: }
;Modbus.c: 86: return ( uchCRCHi<< 8 | uchCRCLo);
	movf	(crc16@uchCRCHi),w
	movwf	(?_crc16+1)
	clrf	(?_crc16)
	movf	(crc16@uchCRCLo),w
	iorwf	(?_crc16),f
	line	87
	
l832:	
	return
	opt stack 0
GLOBAL	__end_of_crc16
	__end_of_crc16:
	signat	_crc16,8314
	global	___lbtoft

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 27 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   11[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 18/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_read_param_eeprom
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lbtoft.c"
	line	27
global __ptext9
__ptext9:	;psect for function ___lbtoft
psect	text9
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lbtoft.c"
	line	27
	global	__size_of___lbtoft
	__size_of___lbtoft	equ	__end_of___lbtoft-___lbtoft
	
___lbtoft:	
;incstack = 0
	opt	stack 10
; Regs used in ___lbtoft: [wreg+status,2+status,0+pclath+cstack]
;___lbtoft@c stored from wreg
	movlb 0	; select bank0
	movwf	(___lbtoft@c)
	line	29
	
l19338:	
	movf	(___lbtoft@c),w
	movwf	(___ftpack@arg)
	clrf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lbtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lbtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lbtoft+2)
	line	30
	
l2200:	
	return
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
	signat	___lbtoft,4219
	global	_handle_task_process

;; *************** function _handle_task_process *****************
;; Defined at:
;;		line 1152 in file "D:\MCUProject\ZH-SL-H40\src\task.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Disable_Bost_Pwm
;;		_Disable_Buck_Pwm
;;		_Enable_Bost_Pwm
;;		_Set_Bost_Pwm_Duty
;;		_Set_Buck_Pwm_Duty
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___fttol
;;		_delay_ms
;;		_eeprom_write
;;		_pid_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\task.c"
	line	1152
global __ptext10
__ptext10:	;psect for function _handle_task_process
psect	text10
	file	"D:\MCUProject\ZH-SL-H40\src\task.c"
	line	1152
	global	__size_of_handle_task_process
	__size_of_handle_task_process	equ	__end_of_handle_task_process-_handle_task_process
	
_handle_task_process:	
;incstack = 0
	opt	stack 11
; Regs used in _handle_task_process: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	1156
	
l18164:	
;task.c: 1156: if(handle_short_flag==0x01)
	decf	(_handle_short_flag)^0100h,w
	skipz
	goto	u11181
	goto	u11180
u11181:
	goto	l18168
u11180:
	line	1158
	
l18166:	
;task.c: 1160: load_voltage_status=0x01;
	movlb 4	; select bank4
	clrf	(_over_load_time_count)^0200h
	clrf	(_over_load_time_count+1)^0200h
	line	1162
;task.c: 1164: discharge_led_status=0x00;
	movlb 2	; select bank2
	clrf	(_handle_short_flag)^0100h
	line	1166
;task.c: 1166: while(1);
	
l1504:	
	
l1505:	
	goto	l1504
	line	1169
	
l18168:	
;task.c: 1167: }
;task.c: 1169: if(work_mode==0x00)
	movlb 1	; select bank1
	movf	(_work_mode)^080h,f
	skipz
	goto	u11191
	goto	u11190
u11191:
	goto	l18192
u11190:
	line	1171
	
l18170:	
;task.c: 1170: {
;task.c: 1171: if((pv_voltage_status==0x01)&&(battery_voltage_status==0x01)&&(sys_temper_flag==0x01)&&(mcu_temp_index<0x03))
	decf	(_pv_voltage_status)^080h,w
	skipz
	goto	u11201
	goto	u11200
u11201:
	goto	l18180
u11200:
	
l18172:	
	movlb 2	; select bank2
	decf	(_battery_voltage_status)^0100h,w
	skipz
	goto	u11211
	goto	u11210
u11211:
	goto	l18180
u11210:
	
l18174:	
	decf	(_sys_temper_flag)^0100h,w
	skipz
	goto	u11221
	goto	u11220
u11221:
	goto	l18180
u11220:
	
l18176:	
	movlw	(03h)
	movlb 1	; select bank1
	subwf	(_mcu_temp_index)^080h,w
	skipnc
	goto	u11231
	goto	u11230
u11231:
	goto	l18180
u11230:
	line	1174
	
l18178:	
;task.c: 1172: {
;task.c: 1174: system_status = 0x01;
	clrf	(_system_status)^080h
	incf	(_system_status)^080h,f
	line	1176
;task.c: 1176: }
	goto	l18460
	line	1177
	
l18180:	
;task.c: 1177: else if((pv_voltage_status==0x02)&&(battery_voltage_status==0x01)&&(sys_temper_flag==0x01)&&(mcu_temp_index<0x03))
	movlb 1	; select bank1
	movf	(_pv_voltage_status)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u11241
	goto	u11240
u11241:
	goto	l18190
u11240:
	
l18182:	
	movlb 2	; select bank2
	decf	(_battery_voltage_status)^0100h,w
	skipz
	goto	u11251
	goto	u11250
u11251:
	goto	l18190
u11250:
	
l18184:	
	decf	(_sys_temper_flag)^0100h,w
	skipz
	goto	u11261
	goto	u11260
u11261:
	goto	l18190
u11260:
	
l18186:	
	movlw	(03h)
	movlb 1	; select bank1
	subwf	(_mcu_temp_index)^080h,w
	skipnc
	goto	u11271
	goto	u11270
u11271:
	goto	l18190
u11270:
	line	1180
	
l18188:	
;task.c: 1178: {
;task.c: 1180: system_status = 0x02;
	movlw	(02h)
	movwf	(_system_status)^080h
	line	1182
;task.c: 1182: }
	goto	l18460
	line	1185
	
l18190:	
;task.c: 1183: else
;task.c: 1184: {
;task.c: 1185: system_status = 0x00;
	movlb 1	; select bank1
	clrf	(_system_status)^080h
	goto	l18460
	line	1188
	
l18192:	
;task.c: 1188: else if(work_mode==0x01)
	decf	(_work_mode)^080h,w
	skipz
	goto	u11281
	goto	u11280
u11281:
	goto	l18196
u11280:
	goto	l18178
	line	1192
	
l18196:	
;task.c: 1192: else if(work_mode==0x02)
	movf	(_work_mode)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u11291
	goto	u11290
u11291:
	goto	l18190
u11290:
	goto	l18188
	line	1205
	
l18202:	
;task.c: 1211: discharge_led_status=0x00;
	movf	(_nop_index)^080h,f
	skipz
	goto	u11301
	goto	u11300
u11301:
	goto	l18270
u11300:
	line	1213
	
l18204:	
;task.c: 1213: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	1215
	
l18206:	
;task.c: 1215: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	1217
	
l18208:	
;task.c: 1217: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	1219
;task.c: 1219: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	1221
	
l18210:	
;task.c: 1227: pv_prev=0;
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	1229
	
l18212:	
;task.c: 1229: buck_pwm_value=0;
	movlb 0	; select bank0
	clrf	(_buck_pwm_value)
	clrf	(_buck_pwm_value+1)
	line	1231
	
l18214:	
;task.c: 1231: bost_pwm_value=0;
	movlb 1	; select bank1
	clrf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	1233
	
l18216:	
;task.c: 1233: PWM =50;
	movlw	0x0
	movwf	(_PWM)^080h
	movlw	0x48
	movwf	(_PWM+1)^080h
	movlw	0x42
	movwf	(_PWM+2)^080h
	line	1235
	
l18218:	
;task.c: 1235: pid_init ( &PID_CC_charge);
	movlw	low(_PID_CC_charge)
	movlb 0	; select bank0
	movwf	(pid_init@pp)
	movlw	high(_PID_CC_charge)
	movwf	(pid_init@pp+1)
	fcall	_pid_init
	line	1237
	
l18220:	
;task.c: 1237: pid_init ( &PID_CV_charge);
	movlw	low(_PID_CV_charge)
	movwf	(pid_init@pp)
	movlw	high(_PID_CV_charge)
	movwf	(pid_init@pp+1)
	fcall	_pid_init
	line	1239
	
l18222:	
;task.c: 1239: pid_init ( &PID_CC_discharge);
	movlw	low(_PID_CC_discharge)
	movwf	(pid_init@pp)
	movlw	high(_PID_CC_discharge)
	movwf	(pid_init@pp+1)
	fcall	_pid_init
	line	1243
	
l18224:	
;task.c: 1243: PID_CC_charge.Proportion = 0.001;
	movlw	0x12
	movlb 5	; select bank5
	movwf	0+(_PID_CC_charge)^0280h+03h
	movlw	0x83
	movwf	1+(_PID_CC_charge)^0280h+03h
	movlw	0x3a
	movwf	2+(_PID_CC_charge)^0280h+03h
	line	1245
	
l18226:	
;task.c: 1245: PID_CC_charge.Integral = 0;
	clrf	0+(_PID_CC_charge)^0280h+06h
	clrf	1+(_PID_CC_charge)^0280h+06h
	clrf	2+(_PID_CC_charge)^0280h+06h
	line	1247
	
l18228:	
;task.c: 1247: PID_CC_charge.Derivative = 0;
	clrf	0+(_PID_CC_charge)^0280h+09h
	clrf	1+(_PID_CC_charge)^0280h+09h
	clrf	2+(_PID_CC_charge)^0280h+09h
	line	1249
	
l18230:	
;task.c: 1249: PID_CC_charge.SetPoint = 5.0*15.0;
	movlw	0x0
	movwf	(_PID_CC_charge)^0280h
	movlw	0x96
	movwf	(_PID_CC_charge+1)^0280h
	movlw	0x42
	movwf	(_PID_CC_charge+2)^0280h
	line	1254
	
l18232:	
;task.c: 1254: PID_CV_charge.Proportion = 0.001;
	movlw	0x12
	movwf	0+(_PID_CV_charge)^0280h+03h
	movlw	0x83
	movwf	1+(_PID_CV_charge)^0280h+03h
	movlw	0x3a
	movwf	2+(_PID_CV_charge)^0280h+03h
	line	1256
	
l18234:	
;task.c: 1256: PID_CV_charge.Integral = 0;
	clrf	0+(_PID_CV_charge)^0280h+06h
	clrf	1+(_PID_CV_charge)^0280h+06h
	clrf	2+(_PID_CV_charge)^0280h+06h
	line	1258
	
l18236:	
;task.c: 1258: PID_CV_charge.Derivative = 0;
	clrf	0+(_PID_CV_charge)^0280h+09h
	clrf	1+(_PID_CV_charge)^0280h+09h
	clrf	2+(_PID_CV_charge)^0280h+09h
	line	1260
	
l18238:	
;task.c: 1260: PID_CV_charge.SetPoint = dianchi_cv_level+1;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	movlb 2	; select bank2
	movf	(_dianchi_cv_level)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2)
	movlb 2	; select bank2
	movf	(_dianchi_cv_level+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2+1)
	movlb 2	; select bank2
	movf	(_dianchi_cv_level+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge)^0280h
	movlb 0	; select bank0
	movf	(1+(?___ftadd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge+1)^0280h
	movlb 0	; select bank0
	movf	(2+(?___ftadd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge+2)^0280h
	line	1264
	
l18240:	
;task.c: 1264: PID_CC_discharge.Proportion = 0.001;
	movlw	0x12
	movlb 3	; select bank3
	movwf	0+(_PID_CC_discharge)^0180h+03h
	movlw	0x83
	movwf	1+(_PID_CC_discharge)^0180h+03h
	movlw	0x3a
	movwf	2+(_PID_CC_discharge)^0180h+03h
	line	1266
	
l18242:	
;task.c: 1266: PID_CC_discharge.Integral = 0.;
	clrf	0+(_PID_CC_discharge)^0180h+06h
	clrf	1+(_PID_CC_discharge)^0180h+06h
	clrf	2+(_PID_CC_discharge)^0180h+06h
	line	1268
	
l18244:	
;task.c: 1268: PID_CC_discharge.Derivative = 0;
	clrf	0+(_PID_CC_discharge)^0180h+09h
	clrf	1+(_PID_CC_discharge)^0180h+09h
	clrf	2+(_PID_CC_discharge)^0180h+09h
	line	1270
	
l18246:	
;task.c: 1270: PID_CC_discharge.SetPoint = (load_cc_I/100)*30;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlw	0xf0
	movwf	(___ftmul@f1+1)
	movlw	0x41
	movwf	(___ftmul@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	1272
	
l18248:	
;task.c: 1272: open_discharge_time=0x00;
	movlb 2	; select bank2
	clrf	(_open_discharge_time)^0100h
	line	1274
	
l18250:	
;task.c: 1274: ms_cnt=0x00;
	movlb 4	; select bank4
	clrf	(_ms_cnt)^0200h
	clrf	(_ms_cnt+1)^0200h
	line	1275
	
l18252:	
;task.c: 1275: se_cnt=0x00;
	clrf	(_se_cnt)^0200h
	clrf	(_se_cnt+1)^0200h
	line	1276
	
l18254:	
;task.c: 1276: mi_cnt=0x00;
	clrf	(_mi_cnt)^0200h
	clrf	(_mi_cnt+1)^0200h
	line	1277
	
l18256:	
;task.c: 1277: ho_cnt=0x00;
	movlb 1	; select bank1
	clrf	(_ho_cnt)^080h
	clrf	(_ho_cnt+1)^080h
	line	1278
	
l18258:	
;task.c: 1278: limit_power_pid_flag=0x00;
	movlb 2	; select bank2
	clrf	(_limit_power_pid_flag)^0100h
	line	1279
	
l18260:	
;task.c: 1279: Adjust_Pout_Flag=0x00;
	movlb 0	; select bank0
	clrf	(_Adjust_Pout_Flag)
	line	1280
	
l18262:	
;task.c: 1280: voltage_adjust_index=0x01;
	movlb 1	; select bank1
	clrf	(_voltage_adjust_index)^080h
	incf	(_voltage_adjust_index)^080h,f
	line	1282
	
l18264:	
;task.c: 1282: nop_index=0x01;
	clrf	(_nop_index)^080h
	incf	(_nop_index)^080h,f
	line	1284
	
l18266:	
;task.c: 1284: discharge_index=0x00;
	clrf	(_discharge_index)^080h
	line	1286
	
l18268:	
;task.c: 1286: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	1288
	
l18270:	
;task.c: 1287: }
;task.c: 1288: if(device_status==0x00 && nop_index==0x01)
	movlb 0	; select bank0
	movf	(_device_status),f
	skipz
	goto	u11311
	goto	u11310
u11311:
	goto	l1527
u11310:
	
l18272:	
	movlb 1	; select bank1
	decf	(_nop_index)^080h,w
	skipz
	goto	u11321
	goto	u11320
u11321:
	goto	l1527
u11320:
	line	1290
	
l18274:	
;task.c: 1289: {
;task.c: 1290: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	1291
	
l18276:	
;task.c: 1291: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	1293
	
l18278:	
;task.c: 1293: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	1294
	
l18280:	
;task.c: 1294: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	1295
;task.c: 1295: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	1297
	
l18282:	
;task.c: 1297: (LATCbits.LATC3 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,3	;volatile
	line	1298
	
l18284:	
;task.c: 1298: Enable_Bost_Pwm();
	fcall	_Enable_Bost_Pwm
	line	1299
	
l18286:	
;task.c: 1299: Set_Bost_Pwm_Duty(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	1301
	
l18288:	
;task.c: 1301: delay_ms(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	1303
	
l18290:	
;task.c: 1303: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	1305
	
l18292:	
;task.c: 1305: delay_ms(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	1307
	
l18294:	
;task.c: 1307: Set_Bost_Pwm_Duty(200);
	movlw	0C8h
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	1309
	
l18296:	
;task.c: 1309: delay_ms(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	1311
	
l18298:	
;task.c: 1311: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	1313
	
l18300:	
;task.c: 1313: delay_ms(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	1315
	
l18302:	
;task.c: 1315: Set_Bost_Pwm_Duty(200);
	movlw	0C8h
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	1317
	
l18304:	
;task.c: 1317: delay_ms(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	1319
	
l18306:	
;task.c: 1319: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	1321
;task.c: 1321: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	1322
	
l18308:	
;task.c: 1322: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	1323
	
l18310:	
;task.c: 1323: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	1325
;task.c: 1325: nop_index=0x02;
	movlw	(02h)
	movlb 1	; select bank1
	movwf	(_nop_index)^080h
	line	1327
	
l18312:	
;task.c: 1327: open_an0_time=0x00;
	movlb 2	; select bank2
	clrf	(_open_an0_time)^0100h
	line	1329
	
l18314:	
;task.c: 1329: open_an1_time=0x00;
	clrf	(_open_an1_time)^0100h
	line	1331
	
l18316:	
;task.c: 1331: open_an2_time=0x00;
	clrf	(_open_an2_time)^0100h
	line	1333
	
l18318:	
;task.c: 1333: open_an3_time=0x00;
	clrf	(_open_an3_time)^0100h
	line	1335
	
l18320:	
;task.c: 1335: open_an4_time=0x00;
	clrf	(_open_an4_time)^0100h
	line	1337
	
l18322:	
;task.c: 1337: open_an9_time=0x00;
	clrf	(_open_an9_time)^0100h
	line	1339
	
l18324:	
;task.c: 1339: open_an10_time=0x00;
	clrf	(_open_an10_time)^0100h
	line	1341
	
l18326:	
;task.c: 1341: key1_index=0x00;
	clrf	(_key1_index)^0100h
	line	1343
	
l18328:	
;task.c: 1343: (LATCbits.LATC0 = 0x00);
	bcf	(270)^0100h,0	;volatile
	line	1345
	
l18330:	
;task.c: 1345: open_sleep_time = 0x01;
	clrf	(_open_sleep_time)^0100h
	incf	(_open_sleep_time)^0100h,f
	line	1347
# 1347 "D:\MCUProject\ZH-SL-H40\src\task.c"
sleep ;# 
psect	text10
	line	1349
	
l18332:	
;task.c: 1349: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	1350
	
l18334:	
;task.c: 1350: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	1351
	
l18336:	
;task.c: 1351: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	goto	l1527
	line	1360
	
l18338:	
;task.c: 1361: {
;task.c: 1363: discharge_led_status=0x01;
	decf	(_charge_index)^080h,w
	skipz
	goto	u11331
	goto	u11330
u11331:
	goto	l1527
u11330:
	line	1365
	
l18340:	
;task.c: 1365: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	1367
	
l18342:	
;task.c: 1367: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	1369
	
l18344:	
;task.c: 1369: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	1371
	
l18346:	
;task.c: 1371: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	1373
	
l18348:	
;task.c: 1373: PWM =50;
	movlw	0x0
	movlb 1	; select bank1
	movwf	(_PWM)^080h
	movlw	0x48
	movwf	(_PWM+1)^080h
	movlw	0x42
	movwf	(_PWM+2)^080h
	line	1375
	
l18350:	
;task.c: 1375: buck_pwm_value=50;
	movlw	032h
	movlb 0	; select bank0
	movwf	(_buck_pwm_value)
	clrf	(_buck_pwm_value+1)
	line	1377
;task.c: 1377: Set_Buck_Pwm_Duty(buck_pwm_value);
	movf	(_buck_pwm_value+1),w
	movwf	(Set_Buck_Pwm_Duty@duty+1)
	movf	(_buck_pwm_value),w
	movwf	(Set_Buck_Pwm_Duty@duty)
	fcall	_Set_Buck_Pwm_Duty
	line	1395
	
l18352:	
;task.c: 1395: pid_init ( &PID_CC_charge);
	movlw	low(_PID_CC_charge)
	movlb 0	; select bank0
	movwf	(pid_init@pp)
	movlw	high(_PID_CC_charge)
	movwf	(pid_init@pp+1)
	fcall	_pid_init
	line	1397
	
l18354:	
;task.c: 1397: pid_init ( &PID_CV_charge);
	movlw	low(_PID_CV_charge)
	movwf	(pid_init@pp)
	movlw	high(_PID_CV_charge)
	movwf	(pid_init@pp+1)
	fcall	_pid_init
	line	1400
	
l18356:	
;task.c: 1400: PID_CC_charge.Proportion = 0.001;
	movlw	0x12
	movlb 5	; select bank5
	movwf	0+(_PID_CC_charge)^0280h+03h
	movlw	0x83
	movwf	1+(_PID_CC_charge)^0280h+03h
	movlw	0x3a
	movwf	2+(_PID_CC_charge)^0280h+03h
	line	1402
	
l18358:	
;task.c: 1402: PID_CC_charge.Integral = 0;
	clrf	0+(_PID_CC_charge)^0280h+06h
	clrf	1+(_PID_CC_charge)^0280h+06h
	clrf	2+(_PID_CC_charge)^0280h+06h
	line	1404
	
l18360:	
;task.c: 1404: PID_CC_charge.Derivative = 0;
	clrf	0+(_PID_CC_charge)^0280h+09h
	clrf	1+(_PID_CC_charge)^0280h+09h
	clrf	2+(_PID_CC_charge)^0280h+09h
	line	1406
	
l18362:	
;task.c: 1406: PID_CC_charge.SetPoint = 5.0*15.0;
	movlw	0x0
	movwf	(_PID_CC_charge)^0280h
	movlw	0x96
	movwf	(_PID_CC_charge+1)^0280h
	movlw	0x42
	movwf	(_PID_CC_charge+2)^0280h
	line	1410
	
l18364:	
;task.c: 1410: PID_CV_charge.Proportion = 0.001;
	movlw	0x12
	movwf	0+(_PID_CV_charge)^0280h+03h
	movlw	0x83
	movwf	1+(_PID_CV_charge)^0280h+03h
	movlw	0x3a
	movwf	2+(_PID_CV_charge)^0280h+03h
	line	1412
	
l18366:	
;task.c: 1412: PID_CV_charge.Integral = 0;
	clrf	0+(_PID_CV_charge)^0280h+06h
	clrf	1+(_PID_CV_charge)^0280h+06h
	clrf	2+(_PID_CV_charge)^0280h+06h
	line	1414
	
l18368:	
;task.c: 1414: PID_CV_charge.Derivative = 0;
	clrf	0+(_PID_CV_charge)^0280h+09h
	clrf	1+(_PID_CV_charge)^0280h+09h
	clrf	2+(_PID_CV_charge)^0280h+09h
	line	1416
	
l18370:	
;task.c: 1421: P_last=0;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	movlb 2	; select bank2
	movf	(_dianchi_cv_level)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2)
	movlb 2	; select bank2
	movf	(_dianchi_cv_level+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2+1)
	movlb 2	; select bank2
	movf	(_dianchi_cv_level+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge)^0280h
	movlb 0	; select bank0
	movf	(1+(?___ftadd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge+1)^0280h
	movlb 0	; select bank0
	movf	(2+(?___ftadd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge+2)^0280h
	line	1423
	
l18372:	
;task.c: 1423: open_discharge_time=0x00;
	movlb 2	; select bank2
	clrf	(_open_discharge_time)^0100h
	line	1425
	
l18374:	
;task.c: 1425: ms_cnt=0x00;
	movlb 4	; select bank4
	clrf	(_ms_cnt)^0200h
	clrf	(_ms_cnt+1)^0200h
	line	1426
	
l18376:	
;task.c: 1426: se_cnt=0x00;
	clrf	(_se_cnt)^0200h
	clrf	(_se_cnt+1)^0200h
	line	1427
	
l18378:	
;task.c: 1427: mi_cnt=0x00;
	clrf	(_mi_cnt)^0200h
	clrf	(_mi_cnt+1)^0200h
	line	1428
	
l18380:	
;task.c: 1428: ho_cnt=0x00;
	movlb 1	; select bank1
	clrf	(_ho_cnt)^080h
	clrf	(_ho_cnt+1)^080h
	line	1430
	
l18382:	
;task.c: 1430: limit_power_pid_flag=0x00;
	movlb 2	; select bank2
	clrf	(_limit_power_pid_flag)^0100h
	line	1431
	
l18384:	
;task.c: 1431: Adjust_Pout_Flag=0x00;
	movlb 0	; select bank0
	clrf	(_Adjust_Pout_Flag)
	line	1432
	
l18386:	
;task.c: 1432: voltage_adjust_index=0x01;
	movlb 1	; select bank1
	clrf	(_voltage_adjust_index)^080h
	incf	(_voltage_adjust_index)^080h,f
	line	1434
	
l18388:	
;task.c: 1434: nop_index=0x00;
	clrf	(_nop_index)^080h
	line	1436
	
l18390:	
;task.c: 1436: discharge_index=0x00;
	clrf	(_discharge_index)^080h
	line	1438
	
l18392:	
;task.c: 1438: charge_index=0x02;
	movlw	(02h)
	movwf	(_charge_index)^080h
	line	1441
	
l18394:	
;task.c: 1441: today_index = today_index+1;
	movlb 0	; select bank0
	incf	(_today_index),f
	line	1443
	
l18396:	
;task.c: 1443: today_index = today_index%8;
	movlw	(07h)
	andwf	(_today_index),f
	line	1445
	
l18398:	
;task.c: 1445: eeprom_write(0x11,(unsigned char)today_index);
	movf	(_today_index),w
	movwf	(eeprom_write@value)
	movlw	(011h)
	fcall	_eeprom_write
	line	1447
	
l18400:	
;task.c: 1447: bt_00_lv = b_v;
	movlb 2	; select bank2
	movf	(_b_v)^0100h,w
	movlb 3	; select bank3
	movwf	(_bt_00_lv)^0180h
	movlb 2	; select bank2
	movf	(_b_v+1)^0100h,w
	movlb 3	; select bank3
	movwf	(_bt_00_lv+1)^0180h
	movlb 2	; select bank2
	movf	(_b_v+2)^0100h,w
	movlb 3	; select bank3
	movwf	(_bt_00_lv+2)^0180h
	goto	l1527
	line	1454
	
l18402:	
;task.c: 1455: {
;task.c: 1457: charge_led_status=0x01;
	movf	(_discharge_index)^080h,f
	skipz
	goto	u11341
	goto	u11340
u11341:
	goto	l1527
u11340:
	line	1460
	
l18404:	
;task.c: 1460: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	1462
	
l18406:	
;task.c: 1462: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	1464
	
l18408:	
;task.c: 1464: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	1466
	
l18410:	
;task.c: 1466: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	1468
	
l18412:	
;task.c: 1468: PWM =50;
	movlw	0x0
	movlb 1	; select bank1
	movwf	(_PWM)^080h
	movlw	0x48
	movwf	(_PWM+1)^080h
	movlw	0x42
	movwf	(_PWM+2)^080h
	line	1470
	
l18414:	
;task.c: 1470: bost_pwm_value=50;
	movlw	032h
	movwf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	1472
;task.c: 1472: Set_Bost_Pwm_Duty(bost_pwm_value);
	movf	(_bost_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty+1)
	movlb 1	; select bank1
	movf	(_bost_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	fcall	_Set_Bost_Pwm_Duty
	line	1494
	
l18416:	
;task.c: 1494: pid_init ( &PID_CC_discharge);
	movlw	low(_PID_CC_discharge)
	movlb 0	; select bank0
	movwf	(pid_init@pp)
	movlw	high(_PID_CC_discharge)
	movwf	(pid_init@pp+1)
	fcall	_pid_init
	line	1497
	
l18418:	
;task.c: 1497: PID_CC_discharge.Proportion = 0.001;
	movlw	0x12
	movlb 3	; select bank3
	movwf	0+(_PID_CC_discharge)^0180h+03h
	movlw	0x83
	movwf	1+(_PID_CC_discharge)^0180h+03h
	movlw	0x3a
	movwf	2+(_PID_CC_discharge)^0180h+03h
	line	1499
	
l18420:	
;task.c: 1499: PID_CC_discharge.Integral = 0;
	clrf	0+(_PID_CC_discharge)^0180h+06h
	clrf	1+(_PID_CC_discharge)^0180h+06h
	clrf	2+(_PID_CC_discharge)^0180h+06h
	line	1501
	
l18422:	
;task.c: 1501: PID_CC_discharge.Derivative = 0;
	clrf	0+(_PID_CC_discharge)^0180h+09h
	clrf	1+(_PID_CC_discharge)^0180h+09h
	clrf	2+(_PID_CC_discharge)^0180h+09h
	line	1503
	
l18424:	
;task.c: 1503: PID_CC_discharge.SetPoint = (load_cc_I/100)*30;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlw	0xf0
	movwf	(___ftmul@f1+1)
	movlw	0x41
	movwf	(___ftmul@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	1505
	
l18426:	
;task.c: 1505: open_discharge_time=0x00;
	movlb 2	; select bank2
	clrf	(_open_discharge_time)^0100h
	line	1507
	
l18428:	
;task.c: 1507: ms_cnt=0x00;
	movlb 4	; select bank4
	clrf	(_ms_cnt)^0200h
	clrf	(_ms_cnt+1)^0200h
	line	1508
	
l18430:	
;task.c: 1508: se_cnt=0x00;
	clrf	(_se_cnt)^0200h
	clrf	(_se_cnt+1)^0200h
	line	1509
	
l18432:	
;task.c: 1509: mi_cnt=0x00;
	clrf	(_mi_cnt)^0200h
	clrf	(_mi_cnt+1)^0200h
	line	1510
	
l18434:	
;task.c: 1510: ho_cnt=0x00;
	movlb 1	; select bank1
	clrf	(_ho_cnt)^080h
	clrf	(_ho_cnt+1)^080h
	line	1512
	
l18436:	
;task.c: 1512: limit_power_pid_flag=0x00;
	movlb 2	; select bank2
	clrf	(_limit_power_pid_flag)^0100h
	line	1513
	
l18438:	
;task.c: 1513: Adjust_Pout_Flag=0x00;
	movlb 0	; select bank0
	clrf	(_Adjust_Pout_Flag)
	line	1514
	
l18440:	
;task.c: 1514: voltage_adjust_index=0x01;
	movlb 1	; select bank1
	clrf	(_voltage_adjust_index)^080h
	incf	(_voltage_adjust_index)^080h,f
	line	1516
	
l18442:	
;task.c: 1516: nop_index=0x00;
	clrf	(_nop_index)^080h
	line	1518
	
l18444:	
;task.c: 1518: discharge_index=0x01;
	clrf	(_discharge_index)^080h
	incf	(_discharge_index)^080h,f
	line	1520
	
l18446:	
;task.c: 1520: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	1523
	
l18448:	
;task.c: 1523: bt_00_hv = b_v;
	movlb 2	; select bank2
	movf	(_b_v)^0100h,w
	movlb 3	; select bank3
	movwf	(_bt_00_hv)^0180h
	movlb 2	; select bank2
	movf	(_b_v+1)^0100h,w
	movlb 3	; select bank3
	movwf	(_bt_00_hv+1)^0180h
	movlb 2	; select bank2
	movf	(_b_v+2)^0100h,w
	movlb 3	; select bank3
	movwf	(_bt_00_hv+2)^0180h
	line	1525
	
l18450:	
;task.c: 1525: eeprom_write((0x12+4*( (today_index+8-0)%8 )+0),(unsigned char)(bt_00_hv/256));
	movf	(_bt_00_hv)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 3	; select bank3
	movf	(_bt_00_hv+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 3	; select bank3
	movf	(_bt_00_hv+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x43
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movwf	(eeprom_write@value)
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_write
	line	1527
	
l18452:	
;task.c: 1527: eeprom_write((0x12+4*( (today_index+8-0)%8 )+1),(unsigned char)bt_00_hv);
	movf	(_bt_00_hv)^0180h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 3	; select bank3
	movf	(_bt_00_hv+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 3	; select bank3
	movf	(_bt_00_hv+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movwf	(eeprom_write@value)
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_write
	line	1529
	
l18454:	
;task.c: 1529: eeprom_write((0x12+4*( (today_index+8-0)%8 )+2),(unsigned char)(bt_00_lv/256));
	movf	(_bt_00_lv)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 3	; select bank3
	movf	(_bt_00_lv+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 3	; select bank3
	movf	(_bt_00_lv+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x43
	movwf	(___ftdiv@f2+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftdiv)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movwf	(eeprom_write@value)
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_write
	line	1531
	
l18456:	
;task.c: 1531: eeprom_write((0x12+4*( (today_index+8-0)%8 )+3),(unsigned char)bt_00_lv);
	movf	(_bt_00_lv)^0180h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 3	; select bank3
	movf	(_bt_00_lv+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 3	; select bank3
	movf	(_bt_00_lv+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	0+(((0+(?___fttol)))),w
	movwf	(eeprom_write@value)
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_write
	goto	l1527
	line	1202
	
l18460:	
	movf	(_system_status)^080h,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           12     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l18202
	xorlw	1^0	; case 1
	skipnz
	goto	l18338
	xorlw	2^1	; case 2
	skipnz
	goto	l18402
	goto	l1527
	opt asmopt_on

	line	1544
	
l1527:	
	return
	opt stack 0
GLOBAL	__end_of_handle_task_process
	__end_of_handle_task_process:
	signat	_handle_task_process,88
	global	_handle_ad_loop

;; *************** function _handle_ad_loop *****************
;; Defined at:
;;		line 122 in file "D:\MCUProject\ZH-SL-H40\src\task.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data_cc_var     3    0[BANK4 ] float 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/2
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       3       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       3       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Disable_Bost_Pwm
;;		_Disable_Buck_Pwm
;;		_Enable_Bost_Pwm
;;		_Enable_Buck_Pwm
;;		_Mppt_Charge
;;		_Set_Bost_Pwm_Duty
;;		_Set_Buck_Pwm_Duty
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___fttol
;;		___lldiv
;;		___lwdiv
;;		___lwtoft
;;		___wmul
;;		_delay_ms
;;		_pid_calc
;;		_start_ad_convert
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	122
global __ptext11
__ptext11:	;psect for function _handle_ad_loop
psect	text11
	file	"D:\MCUProject\ZH-SL-H40\src\task.c"
	line	122
	global	__size_of_handle_ad_loop
	__size_of_handle_ad_loop	equ	__end_of_handle_ad_loop-_handle_ad_loop
	
_handle_ad_loop:	
;incstack = 0
	opt	stack 8
; Regs used in _handle_ad_loop: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	126
	
l17390:	
;task.c: 124: float data_cc_var;
;task.c: 126: if(handle_an0_process_flag==0x01)
	movlb 2	; select bank2
	decf	(_handle_an0_process_flag)^0100h,w
	skipz
	goto	u9591
	goto	u9590
u9591:
	goto	l17466
u9590:
	line	128
	
l17392:	
;task.c: 127: {
;task.c: 128: ADCON1bits.ADPREF =0b00;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	movlb 1	; select bank1
	andwf	(158)^080h,f	;volatile
	line	130
	
l17394:	
;task.c: 130: mcu_value=start_ad_convert(0b11101);
	movlw	(01Dh)
	fcall	_start_ad_convert
	movf	(1+(?_start_ad_convert)),w
	movlb 1	; select bank1
	movwf	(_mcu_value+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_start_ad_convert)),w
	movlb 1	; select bank1
	movwf	(_mcu_value)^080h
	line	132
	
l17396:	
;task.c: 132: ADCON1bits.ADPREF =0b11;
	movlw	(03h & ((1<<2)-1))<<0
	iorwf	(158)^080h,f	;volatile
	line	134
	
l17398:	
;task.c: 134: if(mcu_value<490)
	movlw	high(01EAh)
	subwf	(_mcu_value+1)^080h,w
	movlw	low(01EAh)
	skipnz
	subwf	(_mcu_value)^080h,w
	skipnc
	goto	u9601
	goto	u9600
u9601:
	goto	l17412
u9600:
	line	136
	
l17400:	
;task.c: 135: {
;task.c: 136: mcu_t00_time_count++;
	movlb 2	; select bank2
	incf	(_mcu_t00_time_count)^0100h,f
	line	137
	
l17402:	
;task.c: 137: mcu_t01_time_count=0x00;
	clrf	(_mcu_t01_time_count)^0100h
	line	138
	
l17404:	
;task.c: 138: mcu_t02_time_count=0x00;
	clrf	(_mcu_t02_time_count)^0100h
	line	139
	
l17406:	
;task.c: 139: mcu_t03_time_count=0x00;
	clrf	(_mcu_t03_time_count)^0100h
	line	141
	
l17408:	
;task.c: 141: if(mcu_t00_time_count>=120)
	movlw	(078h)
	subwf	(_mcu_t00_time_count)^0100h,w
	skipc
	goto	u9611
	goto	u9610
u9611:
	goto	l1289
u9610:
	line	143
	
l17410:	
;task.c: 142: {
;task.c: 143: mcu_t00_time_count=0x00;
	clrf	(_mcu_t00_time_count)^0100h
	line	145
;task.c: 145: mcu_temp_index=0x00;
	movlb 1	; select bank1
	clrf	(_mcu_temp_index)^080h
	goto	l1289
	line	148
	
l17412:	
;task.c: 148: else if(mcu_value>510 && mcu_value<530)
	movlw	high(01FFh)
	subwf	(_mcu_value+1)^080h,w
	movlw	low(01FFh)
	skipnz
	subwf	(_mcu_value)^080h,w
	skipc
	goto	u9621
	goto	u9620
u9621:
	goto	l17430
u9620:
	
l17414:	
	movlw	high(0212h)
	subwf	(_mcu_value+1)^080h,w
	movlw	low(0212h)
	skipnz
	subwf	(_mcu_value)^080h,w
	skipnc
	goto	u9631
	goto	u9630
u9631:
	goto	l17430
u9630:
	line	150
	
l17416:	
;task.c: 149: {
;task.c: 150: mcu_t01_time_count++;
	movlb 2	; select bank2
	incf	(_mcu_t01_time_count)^0100h,f
	line	151
	
l17418:	
;task.c: 151: mcu_t00_time_count=0x00;
	clrf	(_mcu_t00_time_count)^0100h
	line	152
	
l17420:	
;task.c: 152: mcu_t02_time_count=0x00;
	clrf	(_mcu_t02_time_count)^0100h
	line	153
	
l17422:	
;task.c: 153: mcu_t03_time_count=0x00;
	clrf	(_mcu_t03_time_count)^0100h
	line	155
	
l17424:	
;task.c: 155: if(mcu_t01_time_count>=60)
	movlw	(03Ch)
	subwf	(_mcu_t01_time_count)^0100h,w
	skipc
	goto	u9641
	goto	u9640
u9641:
	goto	l1289
u9640:
	line	157
	
l17426:	
;task.c: 156: {
;task.c: 157: mcu_t01_time_count=0x00;
	clrf	(_mcu_t01_time_count)^0100h
	line	159
	
l17428:	
;task.c: 159: mcu_temp_index=0x01;
	movlb 1	; select bank1
	clrf	(_mcu_temp_index)^080h
	incf	(_mcu_temp_index)^080h,f
	goto	l1289
	line	162
	
l17430:	
;task.c: 162: else if(mcu_value>530 && mcu_value<550)
	movlw	high(0213h)
	subwf	(_mcu_value+1)^080h,w
	movlw	low(0213h)
	skipnz
	subwf	(_mcu_value)^080h,w
	skipc
	goto	u9651
	goto	u9650
u9651:
	goto	l17448
u9650:
	
l17432:	
	movlw	high(0226h)
	subwf	(_mcu_value+1)^080h,w
	movlw	low(0226h)
	skipnz
	subwf	(_mcu_value)^080h,w
	skipnc
	goto	u9661
	goto	u9660
u9661:
	goto	l17448
u9660:
	line	164
	
l17434:	
;task.c: 163: {
;task.c: 164: mcu_t02_time_count++;
	movlb 2	; select bank2
	incf	(_mcu_t02_time_count)^0100h,f
	line	165
	
l17436:	
;task.c: 165: mcu_t00_time_count=0x00;
	clrf	(_mcu_t00_time_count)^0100h
	line	166
	
l17438:	
;task.c: 166: mcu_t01_time_count=0x00;
	clrf	(_mcu_t01_time_count)^0100h
	line	167
	
l17440:	
;task.c: 167: mcu_t03_time_count=0x00;
	clrf	(_mcu_t03_time_count)^0100h
	line	169
	
l17442:	
;task.c: 169: if(mcu_t02_time_count>=30)
	movlw	(01Eh)
	subwf	(_mcu_t02_time_count)^0100h,w
	skipc
	goto	u9671
	goto	u9670
u9671:
	goto	l1289
u9670:
	line	171
	
l17444:	
;task.c: 170: {
;task.c: 171: mcu_t02_time_count=0x00;
	clrf	(_mcu_t02_time_count)^0100h
	line	173
	
l17446:	
;task.c: 173: mcu_temp_index=0x02;
	movlw	(02h)
	movlb 1	; select bank1
	movwf	(_mcu_temp_index)^080h
	goto	l1289
	line	176
	
l17448:	
;task.c: 176: else if(mcu_value>=550)
	movlw	high(0226h)
	subwf	(_mcu_value+1)^080h,w
	movlw	low(0226h)
	skipnz
	subwf	(_mcu_value)^080h,w
	skipc
	goto	u9681
	goto	u9680
u9681:
	goto	l17464
u9680:
	line	178
	
l17450:	
;task.c: 177: {
;task.c: 178: mcu_t03_time_count++;
	movlb 2	; select bank2
	incf	(_mcu_t03_time_count)^0100h,f
	line	179
	
l17452:	
;task.c: 179: mcu_t00_time_count=0x00;
	clrf	(_mcu_t00_time_count)^0100h
	line	180
	
l17454:	
;task.c: 180: mcu_t01_time_count=0x00;
	clrf	(_mcu_t01_time_count)^0100h
	line	181
	
l17456:	
;task.c: 181: mcu_t02_time_count=0x00;
	clrf	(_mcu_t02_time_count)^0100h
	line	183
	
l17458:	
;task.c: 183: if(mcu_t03_time_count>=10)
	movlw	(0Ah)
	subwf	(_mcu_t03_time_count)^0100h,w
	skipc
	goto	u9691
	goto	u9690
u9691:
	goto	l1289
u9690:
	line	185
	
l17460:	
;task.c: 184: {
;task.c: 185: mcu_t03_time_count=0x00;
	clrf	(_mcu_t03_time_count)^0100h
	line	187
	
l17462:	
;task.c: 187: mcu_temp_index=0x03;
	movlw	(03h)
	movlb 1	; select bank1
	movwf	(_mcu_temp_index)^080h
	goto	l1289
	line	192
	
l17464:	
;task.c: 190: else
;task.c: 191: {
;task.c: 192: mcu_t00_time_count=0x00;
	movlb 2	; select bank2
	clrf	(_mcu_t00_time_count)^0100h
	line	193
;task.c: 193: mcu_t01_time_count=0x00;
	clrf	(_mcu_t01_time_count)^0100h
	line	194
;task.c: 194: mcu_t02_time_count=0x00;
	clrf	(_mcu_t02_time_count)^0100h
	line	195
;task.c: 195: mcu_t03_time_count=0x00;
	clrf	(_mcu_t03_time_count)^0100h
	line	196
	
l1289:	
	line	199
;task.c: 196: }
;task.c: 199: handle_an0_process_flag=0x00;
	movlb 2	; select bank2
	clrf	(_handle_an0_process_flag)^0100h
	line	205
	
l17466:	
;task.c: 201: }
;task.c: 205: if(handle_an1_process_flag==0x01)
	decf	(_handle_an1_process_flag)^0100h,w
	skipz
	goto	u9701
	goto	u9700
u9701:
	goto	l17492
u9700:
	line	208
	
l17468:	
;task.c: 206: {
;task.c: 208: temperature_value=start_ad_convert(0b00001);
	movlw	(01h)
	fcall	_start_ad_convert
	movf	(1+(?_start_ad_convert)),w
	movlb 2	; select bank2
	movwf	(_temperature_value+1)^0100h
	movlb 0	; select bank0
	movf	(0+(?_start_ad_convert)),w
	movlb 2	; select bank2
	movwf	(_temperature_value)^0100h
	line	210
	
l17470:	
;task.c: 210: if((temperature_value>4)&&(temperature_value<602))
	movlw	high(05h)
	subwf	(_temperature_value+1)^0100h,w
	movlw	low(05h)
	skipnz
	subwf	(_temperature_value)^0100h,w
	skipc
	goto	u9711
	goto	u9710
u9711:
	goto	l17484
u9710:
	
l17472:	
	movlw	high(025Ah)
	subwf	(_temperature_value+1)^0100h,w
	movlw	low(025Ah)
	skipnz
	subwf	(_temperature_value)^0100h,w
	skipnc
	goto	u9721
	goto	u9720
u9721:
	goto	l17484
u9720:
	line	212
	
l17474:	
;task.c: 211: {
;task.c: 212: temper_time_count++;
	incf	(_temper_time_count)^0100h,f
	line	214
	
l17476:	
;task.c: 214: over_temper_time_count=0x00;
	clrf	(_over_temper_time_count)^0100h
	line	216
	
l17478:	
;task.c: 216: if(temper_time_count>=10)
	movlw	(0Ah)
	subwf	(_temper_time_count)^0100h,w
	skipc
	goto	u9731
	goto	u9730
u9731:
	goto	l1302
u9730:
	line	218
	
l17480:	
;task.c: 217: {
;task.c: 218: temper_time_count=0x00;
	clrf	(_temper_time_count)^0100h
	line	220
	
l17482:	
;task.c: 220: sys_temper_flag=0x01;
	clrf	(_sys_temper_flag)^0100h
	incf	(_sys_temper_flag)^0100h,f
	goto	l1302
	line	225
	
l17484:	
;task.c: 223: else
;task.c: 224: {
;task.c: 225: over_temper_time_count++;
	incf	(_over_temper_time_count)^0100h,f
	line	227
	
l17486:	
;task.c: 227: temper_time_count=0x00;
	clrf	(_temper_time_count)^0100h
	line	229
	
l17488:	
;task.c: 229: if(over_temper_time_count>=10)
	movlw	(0Ah)
	subwf	(_over_temper_time_count)^0100h,w
	skipc
	goto	u9741
	goto	u9740
u9741:
	goto	l1302
u9740:
	line	231
	
l17490:	
;task.c: 230: {
;task.c: 231: over_temper_time_count=0x00;
	clrf	(_over_temper_time_count)^0100h
	line	233
;task.c: 233: sys_temper_flag=0x00;
	clrf	(_sys_temper_flag)^0100h
	line	235
	
l1302:	
	line	237
;task.c: 234: }
;task.c: 235: }
;task.c: 237: handle_an1_process_flag=0x00;
	clrf	(_handle_an1_process_flag)^0100h
	line	244
	
l17492:	
;task.c: 239: }
;task.c: 244: if(handle_an2_process_flag==0x01)
	decf	(_handle_an2_process_flag)^0100h,w
	skipz
	goto	u9751
	goto	u9750
u9751:
	goto	l17554
u9750:
	line	247
	
l17494:	
;task.c: 245: {
;task.c: 247: pv_voltage_value=start_ad_convert(0b00010);
	movlw	(02h)
	fcall	_start_ad_convert
	movf	(1+(?_start_ad_convert)),w
	movlb 1	; select bank1
	movwf	(_pv_voltage_value+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_start_ad_convert)),w
	movlb 1	; select bank1
	movwf	(_pv_voltage_value)^080h
	line	258
	
l17496:	
;task.c: 258: if(pv_index==0x00)
	movlb 2	; select bank2
	movf	(_pv_index)^0100h,f
	skipz
	goto	u9761
	goto	u9760
u9761:
	goto	l17522
u9760:
	line	260
	
l17498:	
;task.c: 259: {
;task.c: 260: if(pv_voltage_value<=light_on_pv_level)
	movlb 3	; select bank3
	movf	(_light_on_pv_level)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 3	; select bank3
	movf	(_light_on_pv_level+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 3	; select bank3
	movf	(_light_on_pv_level+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(_pv_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c+1)
	movlb 1	; select bank1
	movf	(_pv_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u9771
	goto	u9770
u9771:
	goto	l17510
u9770:
	line	262
	
l17500:	
;task.c: 261: {
;task.c: 262: night_time_count++;
	movlb 4	; select bank4
	incf	(_night_time_count)^0200h,f
	skipnz
	incf	(_night_time_count+1)^0200h,f
	skipnz
	incf	(_night_time_count+2)^0200h,f
	skipnz
	incf	(_night_time_count+3)^0200h,f
	line	264
	
l17502:	
;task.c: 264: day_time_count=0x00;
	clrf	(_day_time_count)^0200h
	clrf	(_day_time_count+1)^0200h
	clrf	(_day_time_count+2)^0200h
	clrf	(_day_time_count+3)^0200h
	line	266
	
l17504:	
;task.c: 266: if(night_time_count>light_time_level)
	movf	(_night_time_count+3)^0200h,w
	movlb 2	; select bank2
	subwf	(_light_time_level+3)^0100h,w
	skipz
	goto	u9785
	movlb 4	; select bank4
	movf	(_night_time_count+2)^0200h,w
	movlb 2	; select bank2
	subwf	(_light_time_level+2)^0100h,w
	skipz
	goto	u9785
	movlb 4	; select bank4
	movf	(_night_time_count+1)^0200h,w
	movlb 2	; select bank2
	subwf	(_light_time_level+1)^0100h,w
	skipz
	goto	u9785
	movlb 4	; select bank4
	movf	(_night_time_count)^0200h,w
	movlb 2	; select bank2
	subwf	(_light_time_level)^0100h,w
u9785:
	skipnc
	goto	u9781
	goto	u9780
u9781:
	goto	l17522
u9780:
	line	268
	
l17506:	
;task.c: 267: {
;task.c: 268: night_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	line	270
	
l17508:	
;task.c: 270: pv_voltage_status=0x02;
	movlw	(02h)
	movlb 1	; select bank1
	movwf	(_pv_voltage_status)^080h
	goto	l17522
	line	275
	
l17510:	
;task.c: 275: else if((pv_voltage_value>(light_off_pv_level)))
	movlb 3	; select bank3
	movf	(_light_off_pv_level)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 3	; select bank3
	movf	(_light_off_pv_level+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 3	; select bank3
	movf	(_light_off_pv_level+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(_pv_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c+1)
	movlb 1	; select bank1
	movf	(_pv_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u9791
	goto	u9790
u9791:
	goto	l1309
u9790:
	line	277
	
l17512:	
;task.c: 276: {
;task.c: 277: day_time_count++;
	movlb 4	; select bank4
	incf	(_day_time_count)^0200h,f
	skipnz
	incf	(_day_time_count+1)^0200h,f
	skipnz
	incf	(_day_time_count+2)^0200h,f
	skipnz
	incf	(_day_time_count+3)^0200h,f
	line	279
	
l17514:	
;task.c: 279: night_time_count=0x00;
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	line	281
	
l17516:	
;task.c: 281: if(day_time_count>light_time_level)
	movf	(_day_time_count+3)^0200h,w
	movlb 2	; select bank2
	subwf	(_light_time_level+3)^0100h,w
	skipz
	goto	u9805
	movlb 4	; select bank4
	movf	(_day_time_count+2)^0200h,w
	movlb 2	; select bank2
	subwf	(_light_time_level+2)^0100h,w
	skipz
	goto	u9805
	movlb 4	; select bank4
	movf	(_day_time_count+1)^0200h,w
	movlb 2	; select bank2
	subwf	(_light_time_level+1)^0100h,w
	skipz
	goto	u9805
	movlb 4	; select bank4
	movf	(_day_time_count)^0200h,w
	movlb 2	; select bank2
	subwf	(_light_time_level)^0100h,w
u9805:
	skipnc
	goto	u9801
	goto	u9800
u9801:
	goto	l1308
u9800:
	line	283
	
l17518:	
;task.c: 282: {
;task.c: 283: day_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_day_time_count)^0200h
	clrf	(_day_time_count+1)^0200h
	clrf	(_day_time_count+2)^0200h
	clrf	(_day_time_count+3)^0200h
	line	285
	
l17520:	
;task.c: 285: pv_voltage_status=0x00;
	movlb 1	; select bank1
	clrf	(_pv_voltage_status)^080h
	goto	l17522
	line	289
	
l1309:	
	line	291
;task.c: 289: else
;task.c: 290: {
;task.c: 291: day_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_day_time_count)^0200h
	clrf	(_day_time_count+1)^0200h
	clrf	(_day_time_count+2)^0200h
	clrf	(_day_time_count+3)^0200h
	line	293
;task.c: 293: night_time_count=0x00;
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	goto	l17522
	line	294
	
l1308:	
	line	297
	
l17522:	
;task.c: 294: }
;task.c: 295: }
;task.c: 297: if((pv_voltage_value>=light_off_pv_level)&&(pv_voltage_value<1000))
	movlb 1	; select bank1
	movf	(_pv_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c+1)
	movlb 1	; select bank1
	movf	(_pv_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlb 3	; select bank3
	movf	(_light_off_pv_level)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 3	; select bank3
	movf	(_light_off_pv_level+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 3	; select bank3
	movf	(_light_off_pv_level+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u9811
	goto	u9810
u9811:
	goto	l17532
u9810:
	
l17524:	
	movlw	high(03E8h)
	movlb 1	; select bank1
	subwf	(_pv_voltage_value+1)^080h,w
	movlw	low(03E8h)
	skipnz
	subwf	(_pv_voltage_value)^080h,w
	skipnc
	goto	u9821
	goto	u9820
u9821:
	goto	l17532
u9820:
	line	299
	
l17526:	
;task.c: 298: {
;task.c: 299: pv_time_count++;
	movlb 4	; select bank4
	incf	(_pv_time_count)^0200h,f
	skipnz
	incf	(_pv_time_count+1)^0200h,f
	skipnz
	incf	(_pv_time_count+2)^0200h,f
	skipnz
	incf	(_pv_time_count+3)^0200h,f
	line	301
	
l17528:	
;task.c: 301: if(pv_time_count>(light_time_level/5))
	movlw	05h
	movlb 0	; select bank0
	movwf	(___lldiv@divisor)
	clrf	(___lldiv@divisor+1)
	clrf	(___lldiv@divisor+2)
	clrf	(___lldiv@divisor+3)

	movlb 2	; select bank2
	movf	(_light_time_level+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___lldiv@dividend+3)
	movlb 2	; select bank2
	movf	(_light_time_level+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___lldiv@dividend+2)
	movlb 2	; select bank2
	movf	(_light_time_level+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___lldiv@dividend+1)
	movlb 2	; select bank2
	movf	(_light_time_level)^0100h,w
	movlb 0	; select bank0
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	movlb 4	; select bank4
	movf	(_pv_time_count+3)^0200h,w
	movlb 0	; select bank0
	subwf	(3+(?___lldiv)),w
	skipz
	goto	u9835
	movlb 4	; select bank4
	movf	(_pv_time_count+2)^0200h,w
	movlb 0	; select bank0
	subwf	(2+(?___lldiv)),w
	skipz
	goto	u9835
	movlb 4	; select bank4
	movf	(_pv_time_count+1)^0200h,w
	movlb 0	; select bank0
	subwf	(1+(?___lldiv)),w
	skipz
	goto	u9835
	movlb 4	; select bank4
	movf	(_pv_time_count)^0200h,w
	movlb 0	; select bank0
	subwf	(0+(?___lldiv)),w
u9835:
	skipnc
	goto	u9831
	goto	u9830
u9831:
	goto	l17538
u9830:
	line	303
	
l17530:	
;task.c: 302: {
;task.c: 303: pv_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_pv_time_count)^0200h
	clrf	(_pv_time_count+1)^0200h
	clrf	(_pv_time_count+2)^0200h
	clrf	(_pv_time_count+3)^0200h
	line	305
;task.c: 305: pv_voltage_status=0x01;
	movlb 1	; select bank1
	clrf	(_pv_voltage_status)^080h
	incf	(_pv_voltage_status)^080h,f
	line	307
;task.c: 307: day_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_day_time_count)^0200h
	clrf	(_day_time_count+1)^0200h
	clrf	(_day_time_count+2)^0200h
	clrf	(_day_time_count+3)^0200h
	line	309
;task.c: 309: night_time_count=0x00;
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	line	311
;task.c: 311: pv_index=0x01;
	movlb 2	; select bank2
	clrf	(_pv_index)^0100h
	incf	(_pv_index)^0100h,f
	goto	l17538
	line	316
	
l17532:	
;task.c: 316: else if(pv_voltage_value>=1000)
	movlw	high(03E8h)
	movlb 1	; select bank1
	subwf	(_pv_voltage_value+1)^080h,w
	movlw	low(03E8h)
	skipnz
	subwf	(_pv_voltage_value)^080h,w
	skipc
	goto	u9841
	goto	u9840
u9841:
	goto	l1315
u9840:
	line	318
	
l17534:	
;task.c: 317: {
;task.c: 318: pv_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_pv_time_count)^0200h
	clrf	(_pv_time_count+1)^0200h
	clrf	(_pv_time_count+2)^0200h
	clrf	(_pv_time_count+3)^0200h
	line	320
	
l17536:	
;task.c: 320: pv_voltage_status=0x00;
	movlb 1	; select bank1
	clrf	(_pv_voltage_status)^080h
	line	321
;task.c: 321: }
	goto	l17538
	line	322
	
l1315:	
	line	324
;task.c: 322: else
;task.c: 323: {
;task.c: 324: pv_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_pv_time_count)^0200h
	clrf	(_pv_time_count+1)^0200h
	clrf	(_pv_time_count+2)^0200h
	clrf	(_pv_time_count+3)^0200h
	line	328
	
l17538:	
;task.c: 326: }
;task.c: 328: if(pv_index==0x01)
	movlb 2	; select bank2
	decf	(_pv_index)^0100h,w
	skipz
	goto	u9851
	goto	u9850
u9851:
	goto	l17552
u9850:
	line	330
	
l17540:	
;task.c: 329: {
;task.c: 330: if(pv_voltage_value<=light_on_pv_level)
	movlb 3	; select bank3
	movf	(_light_on_pv_level)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 3	; select bank3
	movf	(_light_on_pv_level+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 3	; select bank3
	movf	(_light_on_pv_level+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(_pv_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c+1)
	movlb 1	; select bank1
	movf	(_pv_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u9861
	goto	u9860
u9861:
	goto	l1318
u9860:
	line	332
	
l17542:	
;task.c: 331: {
;task.c: 332: night_time_count++;
	movlb 4	; select bank4
	incf	(_night_time_count)^0200h,f
	skipnz
	incf	(_night_time_count+1)^0200h,f
	skipnz
	incf	(_night_time_count+2)^0200h,f
	skipnz
	incf	(_night_time_count+3)^0200h,f
	line	334
	
l17544:	
;task.c: 334: if(night_time_count>light_time_level)
	movf	(_night_time_count+3)^0200h,w
	movlb 2	; select bank2
	subwf	(_light_time_level+3)^0100h,w
	skipz
	goto	u9875
	movlb 4	; select bank4
	movf	(_night_time_count+2)^0200h,w
	movlb 2	; select bank2
	subwf	(_light_time_level+2)^0100h,w
	skipz
	goto	u9875
	movlb 4	; select bank4
	movf	(_night_time_count+1)^0200h,w
	movlb 2	; select bank2
	subwf	(_light_time_level+1)^0100h,w
	skipz
	goto	u9875
	movlb 4	; select bank4
	movf	(_night_time_count)^0200h,w
	movlb 2	; select bank2
	subwf	(_light_time_level)^0100h,w
u9875:
	skipnc
	goto	u9871
	goto	u9870
u9871:
	goto	l17552
u9870:
	line	336
	
l17546:	
;task.c: 335: {
;task.c: 336: night_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	line	338
	
l17548:	
;task.c: 338: pv_voltage_status=0x02;
	movlw	(02h)
	movlb 1	; select bank1
	movwf	(_pv_voltage_status)^080h
	line	340
	
l17550:	
;task.c: 340: pv_index=0x00;
	movlb 2	; select bank2
	clrf	(_pv_index)^0100h
	goto	l17552
	line	344
	
l1318:	
	line	346
;task.c: 344: else
;task.c: 345: {
;task.c: 346: night_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	line	353
	
l17552:	
;task.c: 347: }
;task.c: 349: }
;task.c: 353: handle_an2_process_flag=0x00;
	movlb 2	; select bank2
	clrf	(_handle_an2_process_flag)^0100h
	line	358
	
l17554:	
;task.c: 355: }
;task.c: 358: if(handle_an9_process_flag==0x01)
	decf	(_handle_an9_process_flag)^0100h,w
	skipz
	goto	u9881
	goto	u9880
u9881:
	goto	l17574
u9880:
	line	360
	
l17556:	
;task.c: 359: {
;task.c: 360: charge_current_value=0x00;
	movlb 1	; select bank1
	clrf	(_charge_current_value)^080h
	clrf	(_charge_current_value+1)^080h
	line	362
	
l17558:	
;task.c: 362: if(system_status == 0x01)
	decf	(_system_status)^080h,w
	skipz
	goto	u9891
	goto	u9890
u9891:
	goto	l17572
u9890:
	line	364
	
l17560:	
;task.c: 363: {
;task.c: 364: charge_current_value=start_ad_convert(0b01001);
	movlw	(09h)
	fcall	_start_ad_convert
	movf	(1+(?_start_ad_convert)),w
	movlb 1	; select bank1
	movwf	(_charge_current_value+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_start_ad_convert)),w
	movlb 1	; select bank1
	movwf	(_charge_current_value)^080h
	line	374
	
l17562:	
;task.c: 374: if((charge_current_value>=charge_i_limit)&&(charge_index>=0x03))
	movf	(_charge_current_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c+1)
	movlb 1	; select bank1
	movf	(_charge_current_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlb 3	; select bank3
	movf	(_charge_i_limit)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 3	; select bank3
	movf	(_charge_i_limit+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 3	; select bank3
	movf	(_charge_i_limit+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u9901
	goto	u9900
u9901:
	goto	l17572
u9900:
	
l17564:	
	movlw	(03h)
	movlb 1	; select bank1
	subwf	(_charge_index)^080h,w
	skipc
	goto	u9911
	goto	u9910
u9911:
	goto	l17572
u9910:
	line	377
	
l17566:	
;task.c: 375: {
;task.c: 377: if(buck_pwm_value>50)
	movlw	high(033h)
	movlb 0	; select bank0
	subwf	(_buck_pwm_value+1),w
	movlw	low(033h)
	skipnz
	subwf	(_buck_pwm_value),w
	skipc
	goto	u9921
	goto	u9920
u9921:
	goto	l17570
u9920:
	line	379
	
l17568:	
;task.c: 378: {
;task.c: 379: buck_pwm_value = buck_pwm_value - 1;
	movlw	low(0FFFFh)
	addwf	(_buck_pwm_value),f
	movlw	high(0FFFFh)
	addwfc	(_buck_pwm_value+1),f
	line	381
	
l17570:	
;task.c: 380: }
;task.c: 381: Set_Buck_Pwm_Duty(buck_pwm_value);
	movf	(_buck_pwm_value+1),w
	movwf	(Set_Buck_Pwm_Duty@duty+1)
	movf	(_buck_pwm_value),w
	movwf	(Set_Buck_Pwm_Duty@duty)
	fcall	_Set_Buck_Pwm_Duty
	line	387
	
l17572:	
;task.c: 383: }
;task.c: 385: }
;task.c: 387: handle_an9_process_flag=0x00;
	movlb 2	; select bank2
	clrf	(_handle_an9_process_flag)^0100h
	line	394
	
l17574:	
;task.c: 389: }
;task.c: 394: if(handle_an3_process_flag==0x01)
	decf	(_handle_an3_process_flag)^0100h,w
	skipz
	goto	u9931
	goto	u9930
u9931:
	goto	l17652
u9930:
	line	397
	
l17576:	
;task.c: 395: {
;task.c: 397: battery_voltage_value=start_ad_convert(0b01100);
	movlw	(0Ch)
	fcall	_start_ad_convert
	movf	(1+(?_start_ad_convert)),w
	movwf	(_battery_voltage_value+1)
	movf	(0+(?_start_ad_convert)),w
	movwf	(_battery_voltage_value)
	line	400
	
l17578:	
;task.c: 400: b_v=(float)(((float)battery_voltage_value)/10)*31.04;
	movlw	0x52
	movwf	(___ftmul@f1)
	movlw	0xf8
	movwf	(___ftmul@f1+1)
	movlw	0x41
	movwf	(___ftmul@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x20
	movwf	(___ftdiv@f2+1)
	movlw	0x41
	movwf	(___ftdiv@f2+2)
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 2	; select bank2
	movwf	(_b_v)^0100h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 2	; select bank2
	movwf	(_b_v+1)^0100h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 2	; select bank2
	movwf	(_b_v+2)^0100h
	line	404
	
l17580:	
;task.c: 404: if((battery_voltage_value<(dianchi_guoya_baohu+volt_id*5))&&(charge_index==0x00))
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlw	05h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	movlb 1	; select bank1
	movf	(_volt_id)^080h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(___awtoft@c+1)
	movf	(0+(?___wmul)),w
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftadd@f2+2)
	movlb 1	; select bank1
	movf	(_dianchi_guoya_baohu)^080h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlb 1	; select bank1
	movf	(_dianchi_guoya_baohu+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f1+1)
	movlb 1	; select bank1
	movf	(_dianchi_guoya_baohu+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u9941
	goto	u9940
u9941:
	goto	l17594
u9940:
	
l17582:	
	movlb 1	; select bank1
	movf	(_charge_index)^080h,f
	skipz
	goto	u9951
	goto	u9950
u9951:
	goto	l17594
u9950:
	line	406
	
l17584:	
;task.c: 405: {
;task.c: 406: bt_time_count++;
	movlb 2	; select bank2
	incf	(_bt_time_count)^0100h,f
	line	408
	
l17586:	
;task.c: 408: if(bt_time_count>=100)
	movlw	(064h)
	subwf	(_bt_time_count)^0100h,w
	skipc
	goto	u9961
	goto	u9960
u9961:
	goto	l17600
u9960:
	line	410
	
l17588:	
;task.c: 412: bt_led_status=0x01;
	clrf	(_bt_time_count)^0100h
	line	414
	
l17590:	
;task.c: 414: charge_index=0x01;
	movlb 1	; select bank1
	clrf	(_charge_index)^080h
	incf	(_charge_index)^080h,f
	line	416
	
l17592:	
;task.c: 416: battery_voltage_status=0x01;
	movlb 2	; select bank2
	clrf	(_battery_voltage_status)^0100h
	incf	(_battery_voltage_status)^0100h,f
	goto	l17600
	line	420
	
l17594:	
;task.c: 420: else if((battery_voltage_value>=(dianchi_guoya_baohu+volt_id*5))&&(charge_index<=0x01))
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlw	05h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	movlb 1	; select bank1
	movf	(_volt_id)^080h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(___awtoft@c+1)
	movf	(0+(?___wmul)),w
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftadd@f2+2)
	movlb 1	; select bank1
	movf	(_dianchi_guoya_baohu)^080h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlb 1	; select bank1
	movf	(_dianchi_guoya_baohu+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f1+1)
	movlb 1	; select bank1
	movf	(_dianchi_guoya_baohu+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u9971
	goto	u9970
u9971:
	goto	l17600
u9970:
	
l17596:	
;task.c: 421: {
;task.c: 422: bt_led_status=0x00;
	movlw	(02h)
	movlb 1	; select bank1
	subwf	(_charge_index)^080h,w
	skipnc
	goto	u9981
	goto	u9980
u9981:
	goto	l17600
u9980:
	line	424
	
l17598:	
;task.c: 424: bt_time_count=0x00;
	movlb 2	; select bank2
	clrf	(_bt_time_count)^0100h
	line	426
;task.c: 426: battery_voltage_status=0x00;
	clrf	(_battery_voltage_status)^0100h
	line	430
	
l17600:	
;task.c: 427: }
;task.c: 430: if( (battery_voltage_value<dianchi_guoya_huifu) && (charge_index==0x02) )
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_huifu)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_huifu+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_huifu+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u9991
	goto	u9990
u9991:
	goto	l17608
u9990:
	
l17602:	
	movlb 1	; select bank1
	movf	(_charge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10001
	goto	u10000
u10001:
	goto	l17608
u10000:
	line	434
	
l17604:	
;task.c: 436: charge_led_status=0x01;
	movlw	(03h)
	movwf	(_charge_index)^080h
	line	438
	
l17606:	
;task.c: 438: Enable_Buck_Pwm();
	fcall	_Enable_Buck_Pwm
	line	440
;task.c: 440: }
	goto	l17650
	line	441
	
l17608:	
;task.c: 441: else if( (battery_voltage_value>=dianchi_guoya_huifu) && (charge_index==0x02) )
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_huifu)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_huifu+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_huifu+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u10011
	goto	u10010
u10011:
	goto	l17614
u10010:
	
l17610:	
	movlb 1	; select bank1
	movf	(_charge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10021
	goto	u10020
u10021:
	goto	l17614
u10020:
	line	443
	
l17612:	
;task.c: 445: charge_led_status=0x00;
	movlb 2	; select bank2
	movf	(_b_v)^0100h,w
	movlb 3	; select bank3
	movwf	(_bt_00_lv)^0180h
	movlb 2	; select bank2
	movf	(_b_v+1)^0100h,w
	movlb 3	; select bank3
	movwf	(_bt_00_lv+1)^0180h
	movlb 2	; select bank2
	movf	(_b_v+2)^0100h,w
	movlb 3	; select bank3
	movwf	(_bt_00_lv+2)^0180h
	line	447
;task.c: 447: }
	goto	l17650
	line	448
	
l17614:	
;task.c: 448: else if( (battery_voltage_value<dianchi_guoya_baohu) && (charge_index>=0x03) )
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(_dianchi_guoya_baohu)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(_dianchi_guoya_baohu+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(_dianchi_guoya_baohu+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u10031
	goto	u10030
u10031:
	goto	l17634
u10030:
	
l17616:	
	movlw	(03h)
	movlb 1	; select bank1
	subwf	(_charge_index)^080h,w
	skipc
	goto	u10041
	goto	u10040
u10041:
	goto	l17634
u10040:
	line	451
	
l17618:	
;task.c: 449: {
;task.c: 451: if((charge_current_value<charge_i_limit)&&(charge_index>=0x03))
	movf	(_charge_current_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c+1)
	movlb 1	; select bank1
	movf	(_charge_current_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlb 3	; select bank3
	movf	(_charge_i_limit)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 3	; select bank3
	movf	(_charge_i_limit+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 3	; select bank3
	movf	(_charge_i_limit+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u10051
	goto	u10050
u10051:
	goto	l17632
u10050:
	
l17620:	
	movlw	(03h)
	movlb 1	; select bank1
	subwf	(_charge_index)^080h,w
	skipc
	goto	u10061
	goto	u10060
u10061:
	goto	l17632
u10060:
	line	453
	
l17622:	
;task.c: 452: {
;task.c: 453: mppt_time_count++;
	movlb 4	; select bank4
	incf	(_mppt_time_count)^0200h,f
	skipnz
	incf	(_mppt_time_count+1)^0200h,f
	line	455
	
l17624:	
;task.c: 455: if(mppt_time_count>5)
	movlw	high(06h)
	subwf	(_mppt_time_count+1)^0200h,w
	movlw	low(06h)
	skipnz
	subwf	(_mppt_time_count)^0200h,w
	skipc
	goto	u10071
	goto	u10070
u10071:
	goto	l17632
u10070:
	line	457
	
l17626:	
;task.c: 456: {
;task.c: 457: mppt_time_count=0x00;
	clrf	(_mppt_time_count)^0200h
	clrf	(_mppt_time_count+1)^0200h
	line	459
	
l17628:	
;task.c: 459: Mppt_Charge();
	fcall	_Mppt_Charge
	line	461
	
l17630:	
;task.c: 461: I_prev=charge_current_value;
	movlb 1	; select bank1
	movf	(_charge_current_value+1)^080h,w
	movlb 3	; select bank3
	movwf	(_I_prev+1)^0180h
	movlb 1	; select bank1
	movf	(_charge_current_value)^080h,w
	movlb 3	; select bank3
	movwf	(_I_prev)^0180h
	line	466
	
l17632:	
;task.c: 462: }
;task.c: 464: }
;task.c: 466: involid_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_involid_time_count)^0200h
	clrf	(_involid_time_count+1)^0200h
	line	468
;task.c: 468: }
	goto	l17650
	line	469
	
l17634:	
;task.c: 469: else if( (battery_voltage_value>=dianchi_guoya_baohu) && (charge_index>=0x03) )
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(_dianchi_guoya_baohu)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(_dianchi_guoya_baohu+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(_dianchi_guoya_baohu+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u10081
	goto	u10080
u10081:
	goto	l17650
u10080:
	
l17636:	
	movlw	(03h)
	movlb 1	; select bank1
	subwf	(_charge_index)^080h,w
	skipc
	goto	u10091
	goto	u10090
u10091:
	goto	l17650
u10090:
	line	471
	
l17638:	
;task.c: 470: {
;task.c: 471: involid_time_count++;
	movlb 4	; select bank4
	incf	(_involid_time_count)^0200h,f
	skipnz
	incf	(_involid_time_count+1)^0200h,f
	line	473
	
l17640:	
;task.c: 473: if(involid_time_count>200)
	movlw	high(0C9h)
	subwf	(_involid_time_count+1)^0200h,w
	movlw	low(0C9h)
	skipnz
	subwf	(_involid_time_count)^0200h,w
	skipc
	goto	u10101
	goto	u10100
u10101:
	goto	l17650
u10100:
	line	475
	
l17642:	
;task.c: 474: {
;task.c: 475: involid_time_count=0x00;
	clrf	(_involid_time_count)^0200h
	clrf	(_involid_time_count+1)^0200h
	line	477
	
l17644:	
;task.c: 477: if(charge_index>=0x03)
	movlw	(03h)
	movlb 1	; select bank1
	subwf	(_charge_index)^080h,w
	skipc
	goto	u10111
	goto	u10110
u10111:
	goto	l1337
u10110:
	line	479
	
l17646:	
;task.c: 478: {
;task.c: 479: charge_index=0x05;
	movlw	(05h)
	movwf	(_charge_index)^080h
	line	481
	
l17648:	
;task.c: 481: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	483
;task.c: 485: charge_led_status=0x00;
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	487
;task.c: 487: while(1);
	
l1341:	
	
l1342:	
	goto	l1341
	line	494
	
l1337:	
	line	498
	
l17650:	
;task.c: 498: handle_an3_process_flag=0x00;
	movlb 2	; select bank2
	clrf	(_handle_an3_process_flag)^0100h
	line	507
	
l17652:	
;task.c: 500: }
;task.c: 507: if(handle_an4_process_flag==0x01)
	decf	(_handle_an4_process_flag)^0100h,w
	skipz
	goto	u10121
	goto	u10120
u10121:
	goto	l17734
u10120:
	line	509
	
l17654:	
;task.c: 508: {
;task.c: 509: load_voltage_value=0x00;
	movlb 1	; select bank1
	clrf	(_load_voltage_value)^080h
	clrf	(_load_voltage_value+1)^080h
	line	511
	
l17656:	
;task.c: 511: if(system_status == 0x02)
	movf	(_system_status)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10131
	goto	u10130
u10131:
	goto	l1345
u10130:
	line	513
	
l17658:	
;task.c: 512: {
;task.c: 513: load_voltage_value=start_ad_convert(0b00100);
	movlw	(04h)
	fcall	_start_ad_convert
	movf	(1+(?_start_ad_convert)),w
	movlb 1	; select bank1
	movwf	(_load_voltage_value+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_start_ad_convert)),w
	movlb 1	; select bank1
	movwf	(_load_voltage_value)^080h
	line	516
	
l17660:	
;task.c: 516: if((load_voltage_value<shuchu_shortout_voltage)&&(discharge_index==0x02)&&(PID_CC_discharge.SetPoint>0))
	movf	(_load_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c+1)
	movlb 1	; select bank1
	movf	(_load_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlb 2	; select bank2
	movf	(_shuchu_shortout_voltage)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 2	; select bank2
	movf	(_shuchu_shortout_voltage+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 2	; select bank2
	movf	(_shuchu_shortout_voltage+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u10141
	goto	u10140
u10141:
	goto	l17682
u10140:
	
l17662:	
	movlb 1	; select bank1
	movf	(_discharge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10151
	goto	u10150
u10151:
	goto	l17682
u10150:
	
l17664:	
	movlb 0	; select bank0
	clrf	(___ftge@ff1)
	clrf	(___ftge@ff1+1)
	clrf	(___ftge@ff1+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u10161
	goto	u10160
u10161:
	goto	l17682
u10160:
	line	518
	
l17666:	
;task.c: 517: {
;task.c: 518: load_short_time_count++;
	movlb 3	; select bank3
	incf	(_load_short_time_count)^0180h,f
	skipnz
	incf	(_load_short_time_count+1)^0180h,f
	line	520
	
l17668:	
;task.c: 520: if(load_short_time_count>100)
	movlw	high(065h)
	subwf	(_load_short_time_count+1)^0180h,w
	movlw	low(065h)
	skipnz
	subwf	(_load_short_time_count)^0180h,w
	skipc
	goto	u10171
	goto	u10170
u10171:
	goto	l17710
u10170:
	line	522
	
l17670:	
;task.c: 521: {
;task.c: 522: load_short_time_count=0x00;
	clrf	(_load_short_time_count)^0180h
	clrf	(_load_short_time_count+1)^0180h
	line	524
	
l17672:	
;task.c: 524: bost_pwm_value=2;
	movlw	02h
	movlb 1	; select bank1
	movwf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	526
	
l17674:	
;task.c: 528: discharge_led_status=0x00;
	movf	(_bost_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty+1)
	movlb 1	; select bank1
	movf	(_bost_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	fcall	_Set_Bost_Pwm_Duty
	line	530
	
l17676:	
;task.c: 530: delay_ms(1);
	movlb 0	; select bank0
	clrf	(delay_ms@count)
	incf	(delay_ms@count),f
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	532
	
l17678:	
;task.c: 532: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	534
	
l17680:	
;task.c: 534: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	536
;task.c: 536: while(1);
	
l1348:	
	
l1349:	
	goto	l1348
	line	540
	
l17682:	
;task.c: 540: else if((load_voltage_value>=shuchu_shortout_voltage)&&(load_voltage_value<(shuchu_shortout_voltage*2))&&(discharge_index==0x02)&&(PID_CC_discharge.SetPoint>0))
	movlb 1	; select bank1
	movf	(_load_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c+1)
	movlb 1	; select bank1
	movf	(_load_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlb 2	; select bank2
	movf	(_shuchu_shortout_voltage)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 2	; select bank2
	movf	(_shuchu_shortout_voltage+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 2	; select bank2
	movf	(_shuchu_shortout_voltage+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u10181
	goto	u10180
u10181:
	goto	l17708
u10180:
	
l17684:	
	movlb 1	; select bank1
	movf	(_load_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c+1)
	movlb 1	; select bank1
	movf	(_load_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlb 2	; select bank2
	movf	(_shuchu_shortout_voltage)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 2	; select bank2
	movf	(_shuchu_shortout_voltage+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 2	; select bank2
	movf	(_shuchu_shortout_voltage+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x40
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u10191
	goto	u10190
u10191:
	goto	l17708
u10190:
	
l17686:	
	movlb 1	; select bank1
	movf	(_discharge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10201
	goto	u10200
u10201:
	goto	l17708
u10200:
	
l17688:	
	movlb 0	; select bank0
	clrf	(___ftge@ff1)
	clrf	(___ftge@ff1+1)
	clrf	(___ftge@ff1+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u10211
	goto	u10210
u10211:
	goto	l17708
u10210:
	line	542
	
l17690:	
;task.c: 541: {
;task.c: 542: load_short_time_count++;
	movlb 3	; select bank3
	incf	(_load_short_time_count)^0180h,f
	skipnz
	incf	(_load_short_time_count+1)^0180h,f
	line	544
	
l17692:	
;task.c: 544: if(load_short_time_count>100)
	movlw	high(065h)
	subwf	(_load_short_time_count+1)^0180h,w
	movlw	low(065h)
	skipnz
	subwf	(_load_short_time_count)^0180h,w
	skipc
	goto	u10221
	goto	u10220
u10221:
	goto	l17710
u10220:
	line	546
	
l17694:	
;task.c: 545: {
;task.c: 546: load_short_time_count=0x00;
	clrf	(_load_short_time_count)^0180h
	clrf	(_load_short_time_count+1)^0180h
	line	548
	
l17696:	
;task.c: 548: discharge_index=0x03;
	movlw	(03h)
	movlb 1	; select bank1
	movwf	(_discharge_index)^080h
	line	550
	
l17698:	
;task.c: 550: bost_pwm_value=2;
	movlw	02h
	movwf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	552
	
l17700:	
;task.c: 554: discharge_led_status=0x00;
	movf	(_bost_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty+1)
	movlb 1	; select bank1
	movf	(_bost_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	fcall	_Set_Bost_Pwm_Duty
	line	556
	
l17702:	
;task.c: 556: delay_ms(1);
	movlb 0	; select bank0
	clrf	(delay_ms@count)
	incf	(delay_ms@count),f
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	558
	
l17704:	
;task.c: 558: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	560
	
l17706:	
;task.c: 560: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	562
;task.c: 562: while(1);
	
l1354:	
	
l1355:	
	goto	l1354
	line	568
	
l17708:	
;task.c: 566: else
;task.c: 567: {
;task.c: 568: load_short_time_count=0x00;
	movlb 3	; select bank3
	clrf	(_load_short_time_count)^0180h
	clrf	(_load_short_time_count+1)^0180h
	line	572
	
l17710:	
;task.c: 569: }
;task.c: 572: if((load_voltage_value>shuchu_open_voltage)&&(discharge_index==0x02))
	movlb 4	; select bank4
	movf	(_shuchu_open_voltage)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 4	; select bank4
	movf	(_shuchu_open_voltage+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 4	; select bank4
	movf	(_shuchu_open_voltage+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(_load_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c+1)
	movlb 1	; select bank1
	movf	(_load_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u10231
	goto	u10230
u10231:
	goto	l17732
u10230:
	
l17712:	
	movlb 1	; select bank1
	movf	(_discharge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10241
	goto	u10240
u10241:
	goto	l17732
u10240:
	line	574
	
l17714:	
;task.c: 573: {
;task.c: 574: load_open_time_count++;
	movlb 4	; select bank4
	incf	(_load_open_time_count)^0200h,f
	skipnz
	incf	(_load_open_time_count+1)^0200h,f
	line	576
	
l17716:	
;task.c: 576: if(load_open_time_count>100)
	movlw	high(065h)
	subwf	(_load_open_time_count+1)^0200h,w
	movlw	low(065h)
	skipnz
	subwf	(_load_open_time_count)^0200h,w
	skipc
	goto	u10251
	goto	u10250
u10251:
	goto	l1345
u10250:
	line	578
	
l17718:	
;task.c: 577: {
;task.c: 578: discharge_index=0x03;
	movlw	(03h)
	movlb 1	; select bank1
	movwf	(_discharge_index)^080h
	line	580
	
l17720:	
;task.c: 580: load_open_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_load_open_time_count)^0200h
	clrf	(_load_open_time_count+1)^0200h
	line	582
	
l17722:	
;task.c: 582: bost_pwm_value=5;
	movlw	05h
	movlb 1	; select bank1
	movwf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	584
	
l17724:	
;task.c: 586: discharge_led_status=0x00;
	movf	(_bost_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty+1)
	movlb 1	; select bank1
	movf	(_bost_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	fcall	_Set_Bost_Pwm_Duty
	line	588
	
l17726:	
;task.c: 588: delay_ms(1);
	movlb 0	; select bank0
	clrf	(delay_ms@count)
	incf	(delay_ms@count),f
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	590
	
l17728:	
;task.c: 590: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	592
	
l17730:	
;task.c: 592: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	594
;task.c: 594: while(1);
	
l1360:	
	
l1361:	
	goto	l1360
	line	600
	
l17732:	
;task.c: 598: else
;task.c: 599: {
;task.c: 600: load_open_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_load_open_time_count)^0200h
	clrf	(_load_open_time_count+1)^0200h
	line	604
	
l1345:	
	line	606
;task.c: 601: }
;task.c: 604: }
;task.c: 606: handle_an4_process_flag=0x00;
	movlb 2	; select bank2
	clrf	(_handle_an4_process_flag)^0100h
	line	612
	
l17734:	
;task.c: 608: }
;task.c: 612: if(handle_an10_process_flag==0x01)
	decf	(_handle_an10_process_flag)^0100h,w
	skipz
	goto	u10261
	goto	u10260
u10261:
	goto	l1472
u10260:
	line	614
	
l17736:	
;task.c: 613: {
;task.c: 614: discharge_current_value=0x00;
	movlb 1	; select bank1
	clrf	(_discharge_current_value)^080h
	clrf	(_discharge_current_value+1)^080h
	line	616
	
l17738:	
;task.c: 616: if(system_status == 0x02)
	movf	(_system_status)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10271
	goto	u10270
u10271:
	goto	l1365
u10270:
	line	618
	
l17740:	
;task.c: 617: {
;task.c: 618: discharge_current_value=start_ad_convert(0b01010);
	movlw	(0Ah)
	fcall	_start_ad_convert
	movf	(1+(?_start_ad_convert)),w
	movlb 1	; select bank1
	movwf	(_discharge_current_value+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_start_ad_convert)),w
	movlb 1	; select bank1
	movwf	(_discharge_current_value)^080h
	line	620
	
l17742:	
;task.c: 620: if((discharge_current_value>discharge_i_baohu)&&(discharge_index==0x02))
	movlb 4	; select bank4
	movf	(_discharge_i_baohu)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 4	; select bank4
	movf	(_discharge_i_baohu+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 4	; select bank4
	movf	(_discharge_i_baohu+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(_discharge_current_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c+1)
	movlb 1	; select bank1
	movf	(_discharge_current_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u10281
	goto	u10280
u10281:
	goto	l17762
u10280:
	
l17744:	
	movlb 1	; select bank1
	movf	(_discharge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10291
	goto	u10290
u10291:
	goto	l17762
u10290:
	line	622
	
l17746:	
;task.c: 621: {
;task.c: 622: over_load_time_count++;
	movlb 4	; select bank4
	incf	(_over_load_time_count)^0200h,f
	skipnz
	incf	(_over_load_time_count+1)^0200h,f
	line	624
	
l17748:	
;task.c: 624: if(over_load_time_count>20)
	movlw	high(015h)
	subwf	(_over_load_time_count+1)^0200h,w
	movlw	low(015h)
	skipnz
	subwf	(_over_load_time_count)^0200h,w
	skipc
	goto	u10301
	goto	u10300
u10301:
	goto	l17764
u10300:
	line	626
	
l17750:	
;task.c: 625: {
;task.c: 626: discharge_index=0x03;
	movlw	(03h)
	movlb 1	; select bank1
	movwf	(_discharge_index)^080h
	line	628
;task.c: 628: bost_pwm_value=2;
	movlw	02h
	movwf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	630
	
l17752:	
;task.c: 630: Set_Bost_Pwm_Duty(bost_pwm_value);
	movf	(_bost_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty+1)
	movlb 1	; select bank1
	movf	(_bost_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	fcall	_Set_Bost_Pwm_Duty
	line	632
	
l17754:	
;task.c: 632: delay_ms(1);
	movlb 0	; select bank0
	clrf	(delay_ms@count)
	incf	(delay_ms@count),f
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	634
	
l17756:	
;task.c: 634: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	636
	
l17758:	
;task.c: 636: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	638
	
l17760:	
;task.c: 640: discharge_led_status=0x00;
	movlb 4	; select bank4
	clrf	(_over_load_time_count)^0200h
	clrf	(_over_load_time_count+1)^0200h
	line	642
;task.c: 642: while(1);
	
l1368:	
	
l1369:	
	goto	l1368
	line	648
	
l17762:	
;task.c: 646: else
;task.c: 647: {
;task.c: 648: over_load_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_over_load_time_count)^0200h
	clrf	(_over_load_time_count+1)^0200h
	line	651
	
l17764:	
;task.c: 649: }
;task.c: 651: if((battery_voltage_value>dianchi_qianya_huifu)&&(discharge_index==0x01))
	movlb 3	; select bank3
	movf	(_dianchi_qianya_huifu)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 3	; select bank3
	movf	(_dianchi_qianya_huifu+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 3	; select bank3
	movf	(_dianchi_qianya_huifu+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u10311
	goto	u10310
u10311:
	goto	l17776
u10310:
	
l17766:	
	movlb 1	; select bank1
	decf	(_discharge_index)^080h,w
	skipz
	goto	u10321
	goto	u10320
u10321:
	goto	l17776
u10320:
	line	653
	
l17768:	
;task.c: 655: discharge_led_status=0x01;
	movlw	(02h)
	movwf	(_discharge_index)^080h
	line	657
	
l17770:	
;task.c: 657: open_discharge_time=0x01;
	movlb 2	; select bank2
	clrf	(_open_discharge_time)^0100h
	incf	(_open_discharge_time)^0100h,f
	line	659
	
l17772:	
;task.c: 659: (LATCbits.LATC3 = 0x01);
	bsf	(270)^0100h,3	;volatile
	line	661
	
l17774:	
;task.c: 661: Enable_Bost_Pwm();
	fcall	_Enable_Bost_Pwm
	line	663
;task.c: 663: }
	goto	l17782
	line	664
	
l17776:	
;task.c: 664: else if((battery_voltage_value<=dianchi_qianya_huifu)&&(discharge_index==0x01))
	movlb 3	; select bank3
	movf	(_dianchi_qianya_huifu)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 3	; select bank3
	movf	(_dianchi_qianya_huifu+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 3	; select bank3
	movf	(_dianchi_qianya_huifu+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u10331
	goto	u10330
u10331:
	goto	l17782
u10330:
	
l17778:	
;task.c: 665: {
;task.c: 666: discharge_led_status=0x00;
	movlb 1	; select bank1
	decf	(_discharge_index)^080h,w
	skipz
	goto	u10341
	goto	u10340
u10341:
	goto	l17782
u10340:
	line	668
	
l17780:	
;task.c: 668: open_discharge_time=0x00;
	movlb 2	; select bank2
	clrf	(_open_discharge_time)^0100h
	line	672
	
l17782:	
;task.c: 669: }
;task.c: 672: if((battery_voltage_value>=dianchi_qianya_baohu)&&(discharge_index==0x02))
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlb 3	; select bank3
	movf	(_dianchi_qianya_baohu)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 3	; select bank3
	movf	(_dianchi_qianya_baohu+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 3	; select bank3
	movf	(_dianchi_qianya_baohu+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u10351
	goto	u10350
u10351:
	goto	l18148
u10350:
	
l17784:	
	movlb 1	; select bank1
	movf	(_discharge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10361
	goto	u10360
u10361:
	goto	l18148
u10360:
	line	675
	
l17786:	
;task.c: 673: {
;task.c: 675: if((discharge_current_value<=discharge_i_limit)&&(discharge_index==0x02))
	movlb 3	; select bank3
	movf	(_discharge_i_limit)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 3	; select bank3
	movf	(_discharge_i_limit+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 3	; select bank3
	movf	(_discharge_i_limit+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(_discharge_current_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c+1)
	movlb 1	; select bank1
	movf	(_discharge_current_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u10371
	goto	u10370
u10371:
	goto	l18136
u10370:
	
l17788:	
	movlb 1	; select bank1
	movf	(_discharge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10381
	goto	u10380
u10381:
	goto	l18136
u10380:
	line	679
	
l17790:	
;task.c: 676: {
;task.c: 679: t1=step_01_time_limit;
	movf	(_step_01_time_limit)^080h,w
	movlb 2	; select bank2
	movwf	(_t1)^0100h
	line	680
	
l17792:	
;task.c: 680: t2=step_01_time_limit+step_02_time_limit;
	movlb 1	; select bank1
	movf	(_step_01_time_limit)^080h,w
	addwf	(_step_02_time_limit)^080h,w
	movlb 2	; select bank2
	movwf	(_t2)^0100h
	line	681
	
l17794:	
;task.c: 681: t3=step_01_time_limit+step_02_time_limit+step_03_time_limit;
	movlb 1	; select bank1
	movf	(_step_01_time_limit)^080h,w
	addwf	(_step_02_time_limit)^080h,w
	addwf	(_step_03_time_limit)^080h,w
	movlb 2	; select bank2
	movwf	(_t3)^0100h
	line	682
	
l17796:	
;task.c: 682: t4=step_01_time_limit+step_02_time_limit+step_03_time_limit+step_04_time_limit;
	movlb 1	; select bank1
	movf	(_step_01_time_limit)^080h,w
	addwf	(_step_02_time_limit)^080h,w
	addwf	(_step_03_time_limit)^080h,w
	addwf	(_step_04_time_limit)^080h,w
	movlb 2	; select bank2
	movwf	(_t4)^0100h
	line	683
	
l17798:	
;task.c: 683: t5=step_01_time_limit+step_02_time_limit+step_03_time_limit+step_04_time_limit+step_05_time_limit;
	movlb 1	; select bank1
	movf	(_step_01_time_limit)^080h,w
	addwf	(_step_02_time_limit)^080h,w
	addwf	(_step_03_time_limit)^080h,w
	addwf	(_step_04_time_limit)^080h,w
	movlb 2	; select bank2
	addwf	(_step_05_time_limit)^0100h,w
	movwf	(_t5)^0100h
	line	685
;task.c: 685: if((ho_cnt<t1) && (Adjust_Pout_Flag<=0x01))
	movf	(_t1)^0100h,w
	movlb 0	; select bank0
	movwf	(??_handle_ad_loop+0)+0
	clrf	(??_handle_ad_loop+0)+0+1
	movf	1+(??_handle_ad_loop+0)+0,w
	movlb 1	; select bank1
	subwf	(_ho_cnt+1)^080h,w
	skipz
	goto	u10395
	movlb 0	; select bank0
	movf	0+(??_handle_ad_loop+0)+0,w
	movlb 1	; select bank1
	subwf	(_ho_cnt)^080h,w
u10395:
	skipnc
	goto	u10391
	goto	u10390
u10391:
	goto	l17804
u10390:
	
l17800:	
	movlw	(02h)
	movlb 0	; select bank0
	subwf	(_Adjust_Pout_Flag),w
	skipnc
	goto	u10401
	goto	u10400
u10401:
	goto	l17804
u10400:
	line	687
	
l17802:	
;task.c: 686: {
;task.c: 687: Adjust_Pout_Flag=0x01;
	clrf	(_Adjust_Pout_Flag)
	incf	(_Adjust_Pout_Flag),f
	line	688
;task.c: 688: }
	goto	l17838
	line	689
	
l17804:	
;task.c: 689: else if((ho_cnt>=t1) && (ho_cnt<t2) && (Adjust_Pout_Flag<=0x02))
	movlb 2	; select bank2
	movf	(_t1)^0100h,w
	movlb 0	; select bank0
	movwf	(??_handle_ad_loop+0)+0
	clrf	(??_handle_ad_loop+0)+0+1
	movf	1+(??_handle_ad_loop+0)+0,w
	movlb 1	; select bank1
	subwf	(_ho_cnt+1)^080h,w
	skipz
	goto	u10415
	movlb 0	; select bank0
	movf	0+(??_handle_ad_loop+0)+0,w
	movlb 1	; select bank1
	subwf	(_ho_cnt)^080h,w
u10415:
	skipc
	goto	u10411
	goto	u10410
u10411:
	goto	l17812
u10410:
	
l17806:	
	movlb 2	; select bank2
	movf	(_t2)^0100h,w
	movlb 0	; select bank0
	movwf	(??_handle_ad_loop+0)+0
	clrf	(??_handle_ad_loop+0)+0+1
	movf	1+(??_handle_ad_loop+0)+0,w
	movlb 1	; select bank1
	subwf	(_ho_cnt+1)^080h,w
	skipz
	goto	u10425
	movlb 0	; select bank0
	movf	0+(??_handle_ad_loop+0)+0,w
	movlb 1	; select bank1
	subwf	(_ho_cnt)^080h,w
u10425:
	skipnc
	goto	u10421
	goto	u10420
u10421:
	goto	l17812
u10420:
	
l17808:	
	movlw	(03h)
	movlb 0	; select bank0
	subwf	(_Adjust_Pout_Flag),w
	skipnc
	goto	u10431
	goto	u10430
u10431:
	goto	l17812
u10430:
	line	691
	
l17810:	
;task.c: 690: {
;task.c: 691: Adjust_Pout_Flag=0x02;
	movlw	(02h)
	movwf	(_Adjust_Pout_Flag)
	line	692
;task.c: 692: }
	goto	l17838
	line	693
	
l17812:	
;task.c: 693: else if((ho_cnt>=t2) && (ho_cnt<t3) && (Adjust_Pout_Flag<=0x03))
	movlb 2	; select bank2
	movf	(_t2)^0100h,w
	movlb 0	; select bank0
	movwf	(??_handle_ad_loop+0)+0
	clrf	(??_handle_ad_loop+0)+0+1
	movf	1+(??_handle_ad_loop+0)+0,w
	movlb 1	; select bank1
	subwf	(_ho_cnt+1)^080h,w
	skipz
	goto	u10445
	movlb 0	; select bank0
	movf	0+(??_handle_ad_loop+0)+0,w
	movlb 1	; select bank1
	subwf	(_ho_cnt)^080h,w
u10445:
	skipc
	goto	u10441
	goto	u10440
u10441:
	goto	l17820
u10440:
	
l17814:	
	movlb 2	; select bank2
	movf	(_t3)^0100h,w
	movlb 0	; select bank0
	movwf	(??_handle_ad_loop+0)+0
	clrf	(??_handle_ad_loop+0)+0+1
	movf	1+(??_handle_ad_loop+0)+0,w
	movlb 1	; select bank1
	subwf	(_ho_cnt+1)^080h,w
	skipz
	goto	u10455
	movlb 0	; select bank0
	movf	0+(??_handle_ad_loop+0)+0,w
	movlb 1	; select bank1
	subwf	(_ho_cnt)^080h,w
u10455:
	skipnc
	goto	u10451
	goto	u10450
u10451:
	goto	l17820
u10450:
	
l17816:	
	movlw	(04h)
	movlb 0	; select bank0
	subwf	(_Adjust_Pout_Flag),w
	skipnc
	goto	u10461
	goto	u10460
u10461:
	goto	l17820
u10460:
	line	695
	
l17818:	
;task.c: 694: {
;task.c: 695: Adjust_Pout_Flag=0x03;
	movlw	(03h)
	movwf	(_Adjust_Pout_Flag)
	line	696
;task.c: 696: }
	goto	l17838
	line	697
	
l17820:	
;task.c: 697: else if((ho_cnt>=t3) && (ho_cnt<t4) && (Adjust_Pout_Flag<=0x04))
	movlb 2	; select bank2
	movf	(_t3)^0100h,w
	movlb 0	; select bank0
	movwf	(??_handle_ad_loop+0)+0
	clrf	(??_handle_ad_loop+0)+0+1
	movf	1+(??_handle_ad_loop+0)+0,w
	movlb 1	; select bank1
	subwf	(_ho_cnt+1)^080h,w
	skipz
	goto	u10475
	movlb 0	; select bank0
	movf	0+(??_handle_ad_loop+0)+0,w
	movlb 1	; select bank1
	subwf	(_ho_cnt)^080h,w
u10475:
	skipc
	goto	u10471
	goto	u10470
u10471:
	goto	l17828
u10470:
	
l17822:	
	movlb 2	; select bank2
	movf	(_t4)^0100h,w
	movlb 0	; select bank0
	movwf	(??_handle_ad_loop+0)+0
	clrf	(??_handle_ad_loop+0)+0+1
	movf	1+(??_handle_ad_loop+0)+0,w
	movlb 1	; select bank1
	subwf	(_ho_cnt+1)^080h,w
	skipz
	goto	u10485
	movlb 0	; select bank0
	movf	0+(??_handle_ad_loop+0)+0,w
	movlb 1	; select bank1
	subwf	(_ho_cnt)^080h,w
u10485:
	skipnc
	goto	u10481
	goto	u10480
u10481:
	goto	l17828
u10480:
	
l17824:	
	movlw	(05h)
	movlb 0	; select bank0
	subwf	(_Adjust_Pout_Flag),w
	skipnc
	goto	u10491
	goto	u10490
u10491:
	goto	l17828
u10490:
	line	699
	
l17826:	
;task.c: 698: {
;task.c: 699: Adjust_Pout_Flag=0x04;
	movlw	(04h)
	movwf	(_Adjust_Pout_Flag)
	line	700
;task.c: 700: }
	goto	l17838
	line	701
	
l17828:	
;task.c: 701: else if((ho_cnt>=t4) && (ho_cnt<t5) && (Adjust_Pout_Flag<=0x05))
	movlb 2	; select bank2
	movf	(_t4)^0100h,w
	movlb 0	; select bank0
	movwf	(??_handle_ad_loop+0)+0
	clrf	(??_handle_ad_loop+0)+0+1
	movf	1+(??_handle_ad_loop+0)+0,w
	movlb 1	; select bank1
	subwf	(_ho_cnt+1)^080h,w
	skipz
	goto	u10505
	movlb 0	; select bank0
	movf	0+(??_handle_ad_loop+0)+0,w
	movlb 1	; select bank1
	subwf	(_ho_cnt)^080h,w
u10505:
	skipc
	goto	u10501
	goto	u10500
u10501:
	goto	l17836
u10500:
	
l17830:	
	movlb 2	; select bank2
	movf	(_t5)^0100h,w
	movlb 0	; select bank0
	movwf	(??_handle_ad_loop+0)+0
	clrf	(??_handle_ad_loop+0)+0+1
	movf	1+(??_handle_ad_loop+0)+0,w
	movlb 1	; select bank1
	subwf	(_ho_cnt+1)^080h,w
	skipz
	goto	u10515
	movlb 0	; select bank0
	movf	0+(??_handle_ad_loop+0)+0,w
	movlb 1	; select bank1
	subwf	(_ho_cnt)^080h,w
u10515:
	skipnc
	goto	u10511
	goto	u10510
u10511:
	goto	l17836
u10510:
	
l17832:	
	movlw	(06h)
	movlb 0	; select bank0
	subwf	(_Adjust_Pout_Flag),w
	skipnc
	goto	u10521
	goto	u10520
u10521:
	goto	l17836
u10520:
	line	703
	
l17834:	
;task.c: 702: {
;task.c: 703: Adjust_Pout_Flag=0x05;
	movlw	(05h)
	movwf	(_Adjust_Pout_Flag)
	line	704
;task.c: 704: }
	goto	l17838
	line	707
	
l17836:	
;task.c: 705: else
;task.c: 706: {
;task.c: 707: Adjust_Pout_Flag=0x00;
	movlb 0	; select bank0
	clrf	(_Adjust_Pout_Flag)
	line	710
	
l17838:	
;task.c: 708: }
;task.c: 710: if(battery_voltage_value>bt_volt_80 && voltage_adjust_index<=0x01)
	movlb 3	; select bank3
	movf	(_bt_volt_80)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 3	; select bank3
	movf	(_bt_volt_80+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 3	; select bank3
	movf	(_bt_volt_80+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u10531
	goto	u10530
u10531:
	goto	l17860
u10530:
	
l17840:	
	movlw	(02h)
	movlb 1	; select bank1
	subwf	(_voltage_adjust_index)^080h,w
	skipnc
	goto	u10541
	goto	u10540
u10541:
	goto	l17860
u10540:
	line	712
	
l17842:	
;task.c: 711: {
;task.c: 712: index_01_count++;
	movlb 4	; select bank4
	incf	(_index_01_count)^0200h,f
	skipnz
	incf	(_index_01_count+1)^0200h,f
	line	713
	
l17844:	
;task.c: 713: index_02_count=0x00;
	clrf	(_index_02_count)^0200h
	clrf	(_index_02_count+1)^0200h
	line	714
	
l17846:	
;task.c: 714: index_03_count=0x00;
	clrf	(_index_03_count)^0200h
	clrf	(_index_03_count+1)^0200h
	line	715
	
l17848:	
;task.c: 715: index_04_count=0x00;
	clrf	(_index_04_count)^0200h
	clrf	(_index_04_count+1)^0200h
	line	716
	
l17850:	
;task.c: 716: index_05_count=0x00;
	clrf	(_index_05_count)^0200h
	clrf	(_index_05_count+1)^0200h
	line	717
	
l17852:	
;task.c: 717: index_06_count=0x00;
	clrf	(_index_06_count)^0200h
	clrf	(_index_06_count+1)^0200h
	line	718
	
l17854:	
;task.c: 718: if(index_01_count>1500)
	movlw	high(05DDh)
	subwf	(_index_01_count+1)^0200h,w
	movlw	low(05DDh)
	skipnz
	subwf	(_index_01_count)^0200h,w
	skipc
	goto	u10551
	goto	u10550
u10551:
	goto	l17980
u10550:
	line	720
	
l17856:	
;task.c: 719: {
;task.c: 720: voltage_adjust_index=0x01;
	movlb 1	; select bank1
	clrf	(_voltage_adjust_index)^080h
	incf	(_voltage_adjust_index)^080h,f
	line	721
	
l17858:	
;task.c: 721: index_01_count=0x00;
	movlb 4	; select bank4
	clrf	(_index_01_count)^0200h
	clrf	(_index_01_count+1)^0200h
	goto	l17980
	line	725
	
l17860:	
;task.c: 725: else if(battery_voltage_value>bt_volt_60 && battery_voltage_value<=bt_volt_80 && voltage_adjust_index<=0x02)
	movlb 3	; select bank3
	movf	(_bt_volt_60)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 3	; select bank3
	movf	(_bt_volt_60+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 3	; select bank3
	movf	(_bt_volt_60+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u10561
	goto	u10560
u10561:
	goto	l17884
u10560:
	
l17862:	
	movlb 3	; select bank3
	movf	(_bt_volt_80)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 3	; select bank3
	movf	(_bt_volt_80+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 3	; select bank3
	movf	(_bt_volt_80+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u10571
	goto	u10570
u10571:
	goto	l17884
u10570:
	
l17864:	
	movlw	(03h)
	movlb 1	; select bank1
	subwf	(_voltage_adjust_index)^080h,w
	skipnc
	goto	u10581
	goto	u10580
u10581:
	goto	l17884
u10580:
	line	727
	
l17866:	
;task.c: 726: {
;task.c: 727: index_02_count++;
	movlb 4	; select bank4
	incf	(_index_02_count)^0200h,f
	skipnz
	incf	(_index_02_count+1)^0200h,f
	line	728
	
l17868:	
;task.c: 728: index_01_count=0x00;
	clrf	(_index_01_count)^0200h
	clrf	(_index_01_count+1)^0200h
	line	729
	
l17870:	
;task.c: 729: index_03_count=0x00;
	clrf	(_index_03_count)^0200h
	clrf	(_index_03_count+1)^0200h
	line	730
	
l17872:	
;task.c: 730: index_04_count=0x00;
	clrf	(_index_04_count)^0200h
	clrf	(_index_04_count+1)^0200h
	line	731
	
l17874:	
;task.c: 731: index_05_count=0x00;
	clrf	(_index_05_count)^0200h
	clrf	(_index_05_count+1)^0200h
	line	732
	
l17876:	
;task.c: 732: index_06_count=0x00;
	clrf	(_index_06_count)^0200h
	clrf	(_index_06_count+1)^0200h
	line	733
	
l17878:	
;task.c: 733: if(index_02_count>1500)
	movlw	high(05DDh)
	subwf	(_index_02_count+1)^0200h,w
	movlw	low(05DDh)
	skipnz
	subwf	(_index_02_count)^0200h,w
	skipc
	goto	u10591
	goto	u10590
u10591:
	goto	l17980
u10590:
	line	735
	
l17880:	
;task.c: 734: {
;task.c: 735: voltage_adjust_index=0x02;
	movlw	(02h)
	movlb 1	; select bank1
	movwf	(_voltage_adjust_index)^080h
	line	736
	
l17882:	
;task.c: 736: index_02_count=0x00;
	movlb 4	; select bank4
	clrf	(_index_02_count)^0200h
	clrf	(_index_02_count+1)^0200h
	goto	l17980
	line	739
	
l17884:	
;task.c: 739: else if(battery_voltage_value>bt_volt_40 && battery_voltage_value<=bt_volt_60 && voltage_adjust_index<=0x03)
	movlb 3	; select bank3
	movf	(_bt_volt_40)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 3	; select bank3
	movf	(_bt_volt_40+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 3	; select bank3
	movf	(_bt_volt_40+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u10601
	goto	u10600
u10601:
	goto	l17908
u10600:
	
l17886:	
	movlb 3	; select bank3
	movf	(_bt_volt_60)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 3	; select bank3
	movf	(_bt_volt_60+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 3	; select bank3
	movf	(_bt_volt_60+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u10611
	goto	u10610
u10611:
	goto	l17908
u10610:
	
l17888:	
	movlw	(04h)
	movlb 1	; select bank1
	subwf	(_voltage_adjust_index)^080h,w
	skipnc
	goto	u10621
	goto	u10620
u10621:
	goto	l17908
u10620:
	line	741
	
l17890:	
;task.c: 740: {
;task.c: 741: index_03_count++;
	movlb 4	; select bank4
	incf	(_index_03_count)^0200h,f
	skipnz
	incf	(_index_03_count+1)^0200h,f
	line	742
	
l17892:	
;task.c: 742: index_02_count=0x00;
	clrf	(_index_02_count)^0200h
	clrf	(_index_02_count+1)^0200h
	line	743
	
l17894:	
;task.c: 743: index_01_count=0x00;
	clrf	(_index_01_count)^0200h
	clrf	(_index_01_count+1)^0200h
	line	744
	
l17896:	
;task.c: 744: index_04_count=0x00;
	clrf	(_index_04_count)^0200h
	clrf	(_index_04_count+1)^0200h
	line	745
	
l17898:	
;task.c: 745: index_05_count=0x00;
	clrf	(_index_05_count)^0200h
	clrf	(_index_05_count+1)^0200h
	line	746
	
l17900:	
;task.c: 746: index_06_count=0x00;
	clrf	(_index_06_count)^0200h
	clrf	(_index_06_count+1)^0200h
	line	747
	
l17902:	
;task.c: 747: if(index_03_count>1500)
	movlw	high(05DDh)
	subwf	(_index_03_count+1)^0200h,w
	movlw	low(05DDh)
	skipnz
	subwf	(_index_03_count)^0200h,w
	skipc
	goto	u10631
	goto	u10630
u10631:
	goto	l17980
u10630:
	line	749
	
l17904:	
;task.c: 748: {
;task.c: 749: voltage_adjust_index=0x03;
	movlw	(03h)
	movlb 1	; select bank1
	movwf	(_voltage_adjust_index)^080h
	line	750
	
l17906:	
;task.c: 750: index_03_count=0x00;
	movlb 4	; select bank4
	clrf	(_index_03_count)^0200h
	clrf	(_index_03_count+1)^0200h
	goto	l17980
	line	753
	
l17908:	
;task.c: 753: else if(battery_voltage_value>bt_volt_20 && battery_voltage_value<=bt_volt_40 && voltage_adjust_index<=0x04)
	movlb 3	; select bank3
	movf	(_bt_volt_20)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 3	; select bank3
	movf	(_bt_volt_20+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 3	; select bank3
	movf	(_bt_volt_20+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u10641
	goto	u10640
u10641:
	goto	l17932
u10640:
	
l17910:	
	movlb 3	; select bank3
	movf	(_bt_volt_40)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 3	; select bank3
	movf	(_bt_volt_40+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 3	; select bank3
	movf	(_bt_volt_40+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u10651
	goto	u10650
u10651:
	goto	l17932
u10650:
	
l17912:	
	movlw	(05h)
	movlb 1	; select bank1
	subwf	(_voltage_adjust_index)^080h,w
	skipnc
	goto	u10661
	goto	u10660
u10661:
	goto	l17932
u10660:
	line	755
	
l17914:	
;task.c: 754: {
;task.c: 755: index_04_count++;
	movlb 4	; select bank4
	incf	(_index_04_count)^0200h,f
	skipnz
	incf	(_index_04_count+1)^0200h,f
	line	756
	
l17916:	
;task.c: 756: index_02_count=0x00;
	clrf	(_index_02_count)^0200h
	clrf	(_index_02_count+1)^0200h
	line	757
	
l17918:	
;task.c: 757: index_03_count=0x00;
	clrf	(_index_03_count)^0200h
	clrf	(_index_03_count+1)^0200h
	line	758
	
l17920:	
;task.c: 758: index_01_count=0x00;
	clrf	(_index_01_count)^0200h
	clrf	(_index_01_count+1)^0200h
	line	759
	
l17922:	
;task.c: 759: index_05_count=0x00;
	clrf	(_index_05_count)^0200h
	clrf	(_index_05_count+1)^0200h
	line	760
	
l17924:	
;task.c: 760: index_06_count=0x00;
	clrf	(_index_06_count)^0200h
	clrf	(_index_06_count+1)^0200h
	line	761
	
l17926:	
;task.c: 761: if(index_04_count>1500)
	movlw	high(05DDh)
	subwf	(_index_04_count+1)^0200h,w
	movlw	low(05DDh)
	skipnz
	subwf	(_index_04_count)^0200h,w
	skipc
	goto	u10671
	goto	u10670
u10671:
	goto	l17980
u10670:
	line	763
	
l17928:	
;task.c: 762: {
;task.c: 763: voltage_adjust_index=0x04;
	movlw	(04h)
	movlb 1	; select bank1
	movwf	(_voltage_adjust_index)^080h
	line	764
	
l17930:	
;task.c: 764: index_04_count=0x00;
	movlb 4	; select bank4
	clrf	(_index_04_count)^0200h
	clrf	(_index_04_count+1)^0200h
	goto	l17980
	line	767
	
l17932:	
;task.c: 767: else if(battery_voltage_value>bt_volt_00 && battery_voltage_value<=bt_volt_20 && voltage_adjust_index<=0x05)
	movlb 3	; select bank3
	movf	(_bt_volt_00)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 3	; select bank3
	movf	(_bt_volt_00+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 3	; select bank3
	movf	(_bt_volt_00+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u10681
	goto	u10680
u10681:
	goto	l17956
u10680:
	
l17934:	
	movlb 3	; select bank3
	movf	(_bt_volt_20)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 3	; select bank3
	movf	(_bt_volt_20+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 3	; select bank3
	movf	(_bt_volt_20+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u10691
	goto	u10690
u10691:
	goto	l17956
u10690:
	
l17936:	
	movlw	(06h)
	movlb 1	; select bank1
	subwf	(_voltage_adjust_index)^080h,w
	skipnc
	goto	u10701
	goto	u10700
u10701:
	goto	l17956
u10700:
	line	769
	
l17938:	
;task.c: 768: {
;task.c: 769: index_05_count++;
	movlb 4	; select bank4
	incf	(_index_05_count)^0200h,f
	skipnz
	incf	(_index_05_count+1)^0200h,f
	line	770
	
l17940:	
;task.c: 770: index_02_count=0x00;
	clrf	(_index_02_count)^0200h
	clrf	(_index_02_count+1)^0200h
	line	771
	
l17942:	
;task.c: 771: index_03_count=0x00;
	clrf	(_index_03_count)^0200h
	clrf	(_index_03_count+1)^0200h
	line	772
	
l17944:	
;task.c: 772: index_04_count=0x00;
	clrf	(_index_04_count)^0200h
	clrf	(_index_04_count+1)^0200h
	line	773
	
l17946:	
;task.c: 773: index_01_count=0x00;
	clrf	(_index_01_count)^0200h
	clrf	(_index_01_count+1)^0200h
	line	774
	
l17948:	
;task.c: 774: index_06_count=0x00;
	clrf	(_index_06_count)^0200h
	clrf	(_index_06_count+1)^0200h
	line	775
	
l17950:	
;task.c: 775: if(index_05_count>1500)
	movlw	high(05DDh)
	subwf	(_index_05_count+1)^0200h,w
	movlw	low(05DDh)
	skipnz
	subwf	(_index_05_count)^0200h,w
	skipc
	goto	u10711
	goto	u10710
u10711:
	goto	l17980
u10710:
	line	777
	
l17952:	
;task.c: 776: {
;task.c: 777: voltage_adjust_index=0x05;
	movlw	(05h)
	movlb 1	; select bank1
	movwf	(_voltage_adjust_index)^080h
	line	778
	
l17954:	
;task.c: 778: index_05_count=0x00;
	movlb 4	; select bank4
	clrf	(_index_05_count)^0200h
	clrf	(_index_05_count+1)^0200h
	goto	l17980
	line	781
	
l17956:	
;task.c: 781: else if(battery_voltage_value<bt_volt_00 && voltage_adjust_index<=0x06)
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlb 3	; select bank3
	movf	(_bt_volt_00)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 3	; select bank3
	movf	(_bt_volt_00+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 3	; select bank3
	movf	(_bt_volt_00+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u10721
	goto	u10720
u10721:
	goto	l17978
u10720:
	
l17958:	
	movlw	(07h)
	movlb 1	; select bank1
	subwf	(_voltage_adjust_index)^080h,w
	skipnc
	goto	u10731
	goto	u10730
u10731:
	goto	l17978
u10730:
	line	783
	
l17960:	
;task.c: 782: {
;task.c: 783: index_06_count++;
	movlb 4	; select bank4
	incf	(_index_06_count)^0200h,f
	skipnz
	incf	(_index_06_count+1)^0200h,f
	line	784
	
l17962:	
;task.c: 784: index_02_count=0x00;
	clrf	(_index_02_count)^0200h
	clrf	(_index_02_count+1)^0200h
	line	785
	
l17964:	
;task.c: 785: index_03_count=0x00;
	clrf	(_index_03_count)^0200h
	clrf	(_index_03_count+1)^0200h
	line	786
	
l17966:	
;task.c: 786: index_04_count=0x00;
	clrf	(_index_04_count)^0200h
	clrf	(_index_04_count+1)^0200h
	line	787
	
l17968:	
;task.c: 787: index_05_count=0x00;
	clrf	(_index_05_count)^0200h
	clrf	(_index_05_count+1)^0200h
	line	788
	
l17970:	
;task.c: 788: index_01_count=0x00;
	clrf	(_index_01_count)^0200h
	clrf	(_index_01_count+1)^0200h
	line	789
	
l17972:	
;task.c: 789: if(index_06_count>1500)
	movlw	high(05DDh)
	subwf	(_index_06_count+1)^0200h,w
	movlw	low(05DDh)
	skipnz
	subwf	(_index_06_count)^0200h,w
	skipc
	goto	u10741
	goto	u10740
u10741:
	goto	l17980
u10740:
	line	791
	
l17974:	
;task.c: 790: {
;task.c: 791: voltage_adjust_index=0x06;
	movlw	(06h)
	movlb 1	; select bank1
	movwf	(_voltage_adjust_index)^080h
	line	792
	
l17976:	
;task.c: 792: index_06_count=0x00;
	movlb 4	; select bank4
	clrf	(_index_06_count)^0200h
	clrf	(_index_06_count+1)^0200h
	goto	l17980
	line	797
	
l17978:	
;task.c: 795: else
;task.c: 796: {
;task.c: 797: index_01_count=0x00;
	movlb 4	; select bank4
	clrf	(_index_01_count)^0200h
	clrf	(_index_01_count+1)^0200h
	line	798
;task.c: 798: index_02_count=0x00;
	clrf	(_index_02_count)^0200h
	clrf	(_index_02_count+1)^0200h
	line	799
;task.c: 799: index_03_count=0x00;
	clrf	(_index_03_count)^0200h
	clrf	(_index_03_count+1)^0200h
	line	800
;task.c: 800: index_04_count=0x00;
	clrf	(_index_04_count)^0200h
	clrf	(_index_04_count+1)^0200h
	line	801
;task.c: 801: index_05_count=0x00;
	clrf	(_index_05_count)^0200h
	clrf	(_index_05_count+1)^0200h
	line	802
;task.c: 802: index_06_count=0x00;
	clrf	(_index_06_count)^0200h
	clrf	(_index_06_count+1)^0200h
	line	805
	
l17980:	
;task.c: 803: }
;task.c: 805: if( ((load_cc_I/100)*30) > (Load_Pmax*30/(load_voltage_value*61/1000)) )
	movlw	low(03E8h)
	movlb 0	; select bank0
	movwf	(___lwdiv@divisor)
	movlw	high(03E8h)
	movwf	((___lwdiv@divisor))+1
	movlb 1	; select bank1
	movf	(_load_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplier+1)
	movlb 1	; select bank1
	movf	(_load_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplier)
	movlw	03Dh
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(___lwdiv@dividend+1)
	movf	(0+(?___wmul)),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(___lwtoft@c+1)
	movf	(0+(?___lwdiv)),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftdiv@f2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xf0
	movwf	(___ftmul@f1+1)
	movlw	0x41
	movwf	(___ftmul@f1+2)
	movlb 3	; select bank3
	movf	(_Load_Pmax)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 3	; select bank3
	movf	(_Load_Pmax+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 3	; select bank3
	movf	(_Load_Pmax+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xf0
	movwf	(___ftmul@f1+1)
	movlw	0x41
	movwf	(___ftmul@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u10751
	goto	u10750
u10751:
	goto	l18012
u10750:
	line	807
	
l17982:	
;task.c: 806: {
;task.c: 807: PID_CC_discharge.SetPoint=(Load_Pmax*30)/(load_voltage_value*61/1000);
	movlw	low(03E8h)
	movwf	(___lwdiv@divisor)
	movlw	high(03E8h)
	movwf	((___lwdiv@divisor))+1
	movlb 1	; select bank1
	movf	(_load_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplier+1)
	movlb 1	; select bank1
	movf	(_load_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplier)
	movlw	03Dh
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(___lwdiv@dividend+1)
	movf	(0+(?___wmul)),w
	movwf	(___lwdiv@dividend)
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(___lwtoft@c+1)
	movf	(0+(?___lwdiv)),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftdiv@f2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xf0
	movwf	(___ftmul@f1+1)
	movlw	0x41
	movwf	(___ftmul@f1+2)
	movlb 3	; select bank3
	movf	(_Load_Pmax)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 3	; select bank3
	movf	(_Load_Pmax+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 3	; select bank3
	movf	(_Load_Pmax+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	809
	
l17984:	
;task.c: 809: limit_power_pid_flag=0x01;
	movlb 2	; select bank2
	clrf	(_limit_power_pid_flag)^0100h
	incf	(_limit_power_pid_flag)^0100h,f
	line	811
	
l17986:	
;task.c: 811: data_cc_var = PID_CC_discharge.SetPoint;
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 4	; select bank4
	movwf	(handle_ad_loop@data_cc_var)^0200h
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 4	; select bank4
	movwf	(handle_ad_loop@data_cc_var+1)^0200h
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 4	; select bank4
	movwf	(handle_ad_loop@data_cc_var+2)^0200h
	line	813
	
l17988:	
;task.c: 813: if(Adjust_Pout_Flag==0x01)
	movlb 0	; select bank0
	decf	(_Adjust_Pout_Flag),w
	skipz
	goto	u10761
	goto	u10760
u10761:
	goto	l17992
u10760:
	line	815
	
l17990:	
;task.c: 814: {
;task.c: 815: PID_CC_discharge.SetPoint = (data_cc_var)*step_01_load_percent/100;
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 2	; select bank2
	movf	(_step_01_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	816
;task.c: 816: }
	goto	l18040
	line	817
	
l17992:	
;task.c: 817: else if(Adjust_Pout_Flag==0x02)
	movf	(_Adjust_Pout_Flag),w
	xorlw	02h&0ffh
	skipz
	goto	u10771
	goto	u10770
u10771:
	goto	l17996
u10770:
	line	819
	
l17994:	
;task.c: 818: {
;task.c: 819: PID_CC_discharge.SetPoint = (data_cc_var)*step_02_load_percent/100;
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 2	; select bank2
	movf	(_step_02_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	820
;task.c: 820: }
	goto	l18040
	line	821
	
l17996:	
;task.c: 821: else if(Adjust_Pout_Flag==0x03)
	movf	(_Adjust_Pout_Flag),w
	xorlw	03h&0ffh
	skipz
	goto	u10781
	goto	u10780
u10781:
	goto	l18000
u10780:
	line	823
	
l17998:	
;task.c: 822: {
;task.c: 823: PID_CC_discharge.SetPoint = (data_cc_var)*step_03_load_percent/100;
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 2	; select bank2
	movf	(_step_03_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	824
;task.c: 824: }
	goto	l18040
	line	825
	
l18000:	
;task.c: 825: else if(Adjust_Pout_Flag==0x04)
	movf	(_Adjust_Pout_Flag),w
	xorlw	04h&0ffh
	skipz
	goto	u10791
	goto	u10790
u10791:
	goto	l18004
u10790:
	line	827
	
l18002:	
;task.c: 826: {
;task.c: 827: PID_CC_discharge.SetPoint = (data_cc_var)*step_04_load_percent/100;
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 2	; select bank2
	movf	(_step_04_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	828
;task.c: 828: }
	goto	l18040
	line	829
	
l18004:	
;task.c: 829: else if(Adjust_Pout_Flag==0x05)
	movf	(_Adjust_Pout_Flag),w
	xorlw	05h&0ffh
	skipz
	goto	u10801
	goto	u10800
u10801:
	goto	l18008
u10800:
	line	831
	
l18006:	
;task.c: 830: {
;task.c: 831: PID_CC_discharge.SetPoint = (data_cc_var)*step_05_load_percent/100;
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 2	; select bank2
	movf	(_step_05_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	832
;task.c: 832: }
	goto	l18040
	line	833
	
l18008:	
;task.c: 833: else if(Adjust_Pout_Flag==0x00)
	movf	(_Adjust_Pout_Flag),f
	skipz
	goto	u10811
	goto	u10810
u10811:
	goto	l1411
u10810:
	line	835
	
l18010:	
;task.c: 834: {
;task.c: 835: PID_CC_discharge.SetPoint =0;
	movlb 3	; select bank3
	clrf	(_PID_CC_discharge)^0180h
	clrf	(_PID_CC_discharge+1)^0180h
	clrf	(_PID_CC_discharge+2)^0180h
	goto	l18040
	line	838
	
l1411:	
	goto	l18040
	line	841
	
l18012:	
;task.c: 839: else
;task.c: 840: {
;task.c: 841: PID_CC_discharge.SetPoint=(load_cc_I/100)*30;
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xf0
	movwf	(___ftmul@f1+1)
	movlw	0x41
	movwf	(___ftmul@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	843
	
l18014:	
;task.c: 843: data_cc_var = PID_CC_discharge.SetPoint;
	movf	(_PID_CC_discharge)^0180h,w
	movlb 4	; select bank4
	movwf	(handle_ad_loop@data_cc_var)^0200h
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 4	; select bank4
	movwf	(handle_ad_loop@data_cc_var+1)^0200h
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 4	; select bank4
	movwf	(handle_ad_loop@data_cc_var+2)^0200h
	line	845
	
l18016:	
;task.c: 845: if(Adjust_Pout_Flag==0x01)
	movlb 0	; select bank0
	decf	(_Adjust_Pout_Flag),w
	skipz
	goto	u10821
	goto	u10820
u10821:
	goto	l18020
u10820:
	line	847
	
l18018:	
;task.c: 846: {
;task.c: 847: PID_CC_discharge.SetPoint = (data_cc_var)*step_01_load_percent/100;
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 2	; select bank2
	movf	(_step_01_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	848
;task.c: 848: }
	goto	l18040
	line	849
	
l18020:	
;task.c: 849: else if(Adjust_Pout_Flag==0x02)
	movf	(_Adjust_Pout_Flag),w
	xorlw	02h&0ffh
	skipz
	goto	u10831
	goto	u10830
u10831:
	goto	l18024
u10830:
	line	851
	
l18022:	
;task.c: 850: {
;task.c: 851: PID_CC_discharge.SetPoint = (data_cc_var)*step_02_load_percent/100;
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 2	; select bank2
	movf	(_step_02_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	852
;task.c: 852: }
	goto	l18040
	line	853
	
l18024:	
;task.c: 853: else if(Adjust_Pout_Flag==0x03)
	movf	(_Adjust_Pout_Flag),w
	xorlw	03h&0ffh
	skipz
	goto	u10841
	goto	u10840
u10841:
	goto	l18028
u10840:
	line	855
	
l18026:	
;task.c: 854: {
;task.c: 855: PID_CC_discharge.SetPoint = (data_cc_var)*step_03_load_percent/100;
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 2	; select bank2
	movf	(_step_03_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	856
;task.c: 856: }
	goto	l18040
	line	857
	
l18028:	
;task.c: 857: else if(Adjust_Pout_Flag==0x04)
	movf	(_Adjust_Pout_Flag),w
	xorlw	04h&0ffh
	skipz
	goto	u10851
	goto	u10850
u10851:
	goto	l18032
u10850:
	line	859
	
l18030:	
;task.c: 858: {
;task.c: 859: PID_CC_discharge.SetPoint = (data_cc_var)*step_04_load_percent/100;
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 2	; select bank2
	movf	(_step_04_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	860
;task.c: 860: }
	goto	l18040
	line	861
	
l18032:	
;task.c: 861: else if(Adjust_Pout_Flag==0x05)
	movf	(_Adjust_Pout_Flag),w
	xorlw	05h&0ffh
	skipz
	goto	u10861
	goto	u10860
u10861:
	goto	l18036
u10860:
	line	863
	
l18034:	
;task.c: 862: {
;task.c: 863: PID_CC_discharge.SetPoint = (data_cc_var)*step_05_load_percent/100;
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 2	; select bank2
	movf	(_step_05_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftdiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	864
;task.c: 864: }
	goto	l18040
	line	865
	
l18036:	
;task.c: 865: else if(Adjust_Pout_Flag==0x00)
	movf	(_Adjust_Pout_Flag),f
	skipz
	goto	u10871
	goto	u10870
u10871:
	goto	l1411
u10870:
	line	867
	
l18038:	
;task.c: 866: {
;task.c: 867: PID_CC_discharge.SetPoint =0;
	movlb 3	; select bank3
	clrf	(_PID_CC_discharge)^0180h
	clrf	(_PID_CC_discharge+1)^0180h
	clrf	(_PID_CC_discharge+2)^0180h
	line	872
	
l18040:	
;task.c: 868: }
;task.c: 870: }
;task.c: 872: if(voltage_adjust_index==0x01)
	movlb 1	; select bank1
	decf	(_voltage_adjust_index)^080h,w
	skipz
	goto	u10881
	goto	u10880
u10881:
	goto	l18044
u10880:
	line	874
	
l18042:	
;task.c: 873: {
;task.c: 874: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*1.0;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlw	0x80
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	875
;task.c: 875: }
	goto	l18064
	line	876
	
l18044:	
;task.c: 876: else if(voltage_adjust_index==0x02)
	movf	(_voltage_adjust_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10891
	goto	u10890
u10891:
	goto	l18048
u10890:
	line	878
	
l18046:	
;task.c: 877: {
;task.c: 878: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.70;
	movlw	0x33
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlw	0x33
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	879
;task.c: 879: }
	goto	l18064
	line	880
	
l18048:	
;task.c: 880: else if(voltage_adjust_index==0x03)
	movf	(_voltage_adjust_index)^080h,w
	xorlw	03h&0ffh
	skipz
	goto	u10901
	goto	u10900
u10901:
	goto	l18052
u10900:
	line	882
	
l18050:	
;task.c: 881: {
;task.c: 882: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.45;
	movlw	0x66
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlw	0xe6
	movwf	(___ftmul@f1+1)
	movlw	0x3e
	movwf	(___ftmul@f1+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	883
;task.c: 883: }
	goto	l18064
	line	884
	
l18052:	
;task.c: 884: else if(voltage_adjust_index==0x04)
	movf	(_voltage_adjust_index)^080h,w
	xorlw	04h&0ffh
	skipz
	goto	u10911
	goto	u10910
u10911:
	goto	l18056
u10910:
	line	886
	
l18054:	
;task.c: 885: {
;task.c: 886: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.25;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlw	0x80
	movwf	(___ftmul@f1+1)
	movlw	0x3e
	movwf	(___ftmul@f1+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	887
;task.c: 887: }
	goto	l18064
	line	888
	
l18056:	
;task.c: 888: else if(voltage_adjust_index==0x05)
	movf	(_voltage_adjust_index)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u10921
	goto	u10920
u10921:
	goto	l18060
u10920:
	line	890
	
l18058:	
;task.c: 889: {
;task.c: 890: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.15;
	movlw	0x9a
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlw	0x19
	movwf	(___ftmul@f1+1)
	movlw	0x3e
	movwf	(___ftmul@f1+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	891
;task.c: 891: }
	goto	l18064
	line	892
	
l18060:	
;task.c: 892: else if(voltage_adjust_index==0x06)
	movf	(_voltage_adjust_index)^080h,w
	xorlw	06h&0ffh
	skipz
	goto	u10931
	goto	u10930
u10931:
	goto	l1434
u10930:
	line	894
	
l18062:	
;task.c: 893: {
;task.c: 894: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.05;
	movlw	0xcd
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlw	0x4c
	movwf	(___ftmul@f1+1)
	movlw	0x3d
	movwf	(___ftmul@f1+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	goto	l18064
	line	897
	
l1434:	
	
l18064:	
;task.c: 895: }
;task.c: 897: if(mcu_temp_index==0x01)
	movlb 1	; select bank1
	decf	(_mcu_temp_index)^080h,w
	skipz
	goto	u10941
	goto	u10940
u10941:
	goto	l18068
u10940:
	line	899
	
l18066:	
;task.c: 898: {
;task.c: 899: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.5;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	900
;task.c: 900: }
	goto	l18076
	line	901
	
l18068:	
;task.c: 901: else if(mcu_temp_index==0x02)
	movf	(_mcu_temp_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10951
	goto	u10950
u10951:
	goto	l18072
u10950:
	line	903
	
l18070:	
;task.c: 902: {
;task.c: 903: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.2;
	movlw	0xcd
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlw	0x4c
	movwf	(___ftmul@f1+1)
	movlw	0x3e
	movwf	(___ftmul@f1+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	904
;task.c: 904: }
	goto	l18076
	line	905
	
l18072:	
;task.c: 905: else if(mcu_temp_index==0x03)
	movf	(_mcu_temp_index)^080h,w
	xorlw	03h&0ffh
	skipz
	goto	u10961
	goto	u10960
u10961:
	goto	l18076
u10960:
	line	907
	
l18074:	
;task.c: 906: {
;task.c: 907: PID_CC_discharge.SetPoint =0;
	movlb 3	; select bank3
	clrf	(_PID_CC_discharge)^0180h
	clrf	(_PID_CC_discharge+1)^0180h
	clrf	(_PID_CC_discharge+2)^0180h
	line	911
	
l18076:	
;task.c: 908: }
;task.c: 911: if(light_mode==0x00 && work_mode==0x00)
	movlb 1	; select bank1
	movf	(_light_mode)^080h,f
	skipz
	goto	u10971
	goto	u10970
u10971:
	goto	l18082
u10970:
	
l18078:	
	movf	(_work_mode)^080h,f
	skipz
	goto	u10981
	goto	u10980
u10981:
	goto	l18082
u10980:
	line	913
	
l18080:	
;task.c: 912: {
;task.c: 913: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.5;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	914
;task.c: 914: }
	goto	l18108
	line	915
	
l18082:	
;task.c: 915: else if(light_mode==0x01 && work_mode==0x00)
	decf	(_light_mode)^080h,w
	skipz
	goto	u10991
	goto	u10990
u10991:
	goto	l18092
u10990:
	
l18084:	
	movf	(_work_mode)^080h,f
	skipz
	goto	u11001
	goto	u11000
u11001:
	goto	l18092
u11000:
	line	917
	
l18086:	
;task.c: 916: {
;task.c: 917: if(have_person1_flag==0x01)
	decf	(_have_person1_flag)^080h,w
	skipz
	goto	u11011
	goto	u11010
u11011:
	goto	l18090
u11010:
	line	919
	
l18088:	
;task.c: 918: {
;task.c: 919: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	920
;task.c: 920: }
	goto	l18108
	line	923
	
l18090:	
;task.c: 921: else
;task.c: 922: {
;task.c: 923: PID_CC_discharge.SetPoint = data_cc_var*0.05;
	movlw	0xcd
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlw	0x4c
	movwf	(___ftmul@f1+1)
	movlw	0x3d
	movwf	(___ftmul@f1+2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	goto	l18108
	line	926
	
l18092:	
;task.c: 926: else if(light_mode==0x02 && work_mode==0x00)
	movf	(_light_mode)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u11021
	goto	u11020
u11021:
	goto	l18108
u11020:
	
l18094:	
	movf	(_work_mode)^080h,f
	skipz
	goto	u11031
	goto	u11030
u11031:
	goto	l18108
u11030:
	line	928
	
l18096:	
;task.c: 927: {
;task.c: 928: if(Adjust_Pout_Flag==0x01)
	movlb 0	; select bank0
	decf	(_Adjust_Pout_Flag),w
	skipz
	goto	u11041
	goto	u11040
u11041:
	goto	l18100
u11040:
	line	930
	
l18098:	
;task.c: 929: {
;task.c: 930: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.5;
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	931
;task.c: 931: }
	goto	l18108
	line	932
	
l18100:	
;task.c: 932: else if(Adjust_Pout_Flag>=0x02)
	movlw	(02h)
	subwf	(_Adjust_Pout_Flag),w
	skipc
	goto	u11051
	goto	u11050
u11051:
	goto	l18108
u11050:
	line	934
	
l18102:	
;task.c: 933: {
;task.c: 934: if(have_person1_flag==0x01)
	movlb 1	; select bank1
	decf	(_have_person1_flag)^080h,w
	skipz
	goto	u11061
	goto	u11060
u11061:
	goto	l18106
u11060:
	goto	l18088
	line	940
	
l18106:	
;task.c: 938: else
;task.c: 939: {
;task.c: 940: PID_CC_discharge.SetPoint = data_cc_var*0.05;
	movlw	0xcd
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlw	0x4c
	movwf	(___ftmul@f1+1)
	movlw	0x3d
	movwf	(___ftmul@f1+2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 4	; select bank4
	movf	(handle_ad_loop@data_cc_var+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	945
	
l18108:	
;task.c: 941: }
;task.c: 942: }
;task.c: 943: }
;task.c: 945: if(led_out_ctrl==0x01 && work_mode==0x00)
	movlb 1	; select bank1
	decf	(_led_out_ctrl)^080h,w
	skipz
	goto	u11071
	goto	u11070
u11071:
	goto	l1457
u11070:
	
l18110:	
	movf	(_work_mode)^080h,f
	skipz
	goto	u11081
	goto	u11080
u11081:
	goto	l1457
u11080:
	line	947
	
l18112:	
;task.c: 946: {
;task.c: 947: PID_CC_discharge.SetPoint = 0;
	movlb 3	; select bank3
	clrf	(_PID_CC_discharge)^0180h
	clrf	(_PID_CC_discharge+1)^0180h
	clrf	(_PID_CC_discharge+2)^0180h
	line	948
	
l1457:	
	line	950
;task.c: 948: }
;task.c: 950: pid_index = 0x01;
	movlb 1	; select bank1
	clrf	(_pid_index)^080h
	incf	(_pid_index)^080h,f
	line	952
	
l18114:	
;task.c: 952: PWM_I=pid_calc(&PID_CC_discharge,discharge_current_value);
	movlw	low(_PID_CC_discharge)
	movlb 0	; select bank0
	movwf	(pid_calc@pp)
	movlw	high(_PID_CC_discharge)
	movwf	(pid_calc@pp+1)
	movlb 1	; select bank1
	movf	(_discharge_current_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(pid_calc@NowPoint+1)
	movlb 1	; select bank1
	movf	(_discharge_current_value)^080h,w
	movlb 0	; select bank0
	movwf	(pid_calc@NowPoint)
	fcall	_pid_calc
	movf	(0+(?_pid_calc)),w
	movlb 4	; select bank4
	movwf	(_PWM_I)^0200h
	movlb 0	; select bank0
	movf	(1+(?_pid_calc)),w
	movlb 4	; select bank4
	movwf	(_PWM_I+1)^0200h
	movlb 0	; select bank0
	movf	(2+(?_pid_calc)),w
	movlb 4	; select bank4
	movwf	(_PWM_I+2)^0200h
	line	954
	
l18116:	
;task.c: 954: PWM = PWM+PWM_I;
	movf	(_PWM_I)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlb 4	; select bank4
	movf	(_PWM_I+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f1+1)
	movlb 4	; select bank4
	movf	(_PWM_I+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f1+2)
	movlb 1	; select bank1
	movf	(_PWM)^080h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2)
	movlb 1	; select bank1
	movf	(_PWM+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2+1)
	movlb 1	; select bank1
	movf	(_PWM+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movlb 1	; select bank1
	movwf	(_PWM)^080h
	movlb 0	; select bank0
	movf	(1+(?___ftadd)),w
	movlb 1	; select bank1
	movwf	(_PWM+1)^080h
	movlb 0	; select bank0
	movf	(2+(?___ftadd)),w
	movlb 1	; select bank1
	movwf	(_PWM+2)^080h
	line	956
	
l18118:	
;task.c: 956: if( PWM>=488)
	movf	(_PWM)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(_PWM+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(_PWM+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xf4
	movwf	(___ftge@ff2+1)
	movlw	0x43
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11091
	goto	u11090
u11091:
	goto	l18122
u11090:
	line	958
	
l18120:	
;task.c: 957: {
;task.c: 958: PWM=488;
	movlw	0x0
	movlb 1	; select bank1
	movwf	(_PWM)^080h
	movlw	0xf4
	movwf	(_PWM+1)^080h
	movlw	0x43
	movwf	(_PWM+2)^080h
	line	959
;task.c: 959: }
	goto	l18126
	line	960
	
l18122:	
;task.c: 960: else if(PWM<=5)
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0xa0
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(_PWM)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(_PWM+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(_PWM+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11101
	goto	u11100
u11101:
	goto	l18126
u11100:
	line	962
	
l18124:	
;task.c: 961: {
;task.c: 962: PWM=5;
	movlw	0x0
	movlb 1	; select bank1
	movwf	(_PWM)^080h
	movlw	0xa0
	movwf	(_PWM+1)^080h
	movlw	0x40
	movwf	(_PWM+2)^080h
	line	965
	
l18126:	
;task.c: 963: }
;task.c: 965: bost_pwm_value = (unsigned int)PWM;
	movlb 1	; select bank1
	movf	(_PWM)^080h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 1	; select bank1
	movf	(_PWM+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 1	; select bank1
	movf	(_PWM+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	movlb 1	; select bank1
	movwf	(_bost_pwm_value+1)^080h
	movlb 0	; select bank0
	movf	0+(((0+(?___fttol)))),w
	movlb 1	; select bank1
	movwf	(_bost_pwm_value)^080h
	line	967
	
l18128:	
;task.c: 967: if(PID_CC_discharge.SetPoint==0)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	iorwf	(_PID_CC_discharge+1)^0180h,w
	iorwf	(_PID_CC_discharge)^0180h,w
	skipz
	goto	u11111
	goto	u11110
u11111:
	goto	l18132
u11110:
	line	969
	
l18130:	
;task.c: 968: {
;task.c: 969: bost_pwm_value = 0;
	movlb 1	; select bank1
	clrf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	972
	
l18132:	
;task.c: 970: }
;task.c: 972: Set_Bost_Pwm_Duty(bost_pwm_value);
	movlb 1	; select bank1
	movf	(_bost_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty+1)
	movlb 1	; select bank1
	movf	(_bost_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	fcall	_Set_Bost_Pwm_Duty
	line	974
	
l18134:	
;task.c: 974: limit_power_pid_flag=0x00;
	movlb 2	; select bank2
	clrf	(_limit_power_pid_flag)^0100h
	line	977
;task.c: 977: }
	goto	l18146
	line	978
	
l18136:	
;task.c: 978: else if((discharge_current_value>discharge_i_limit)&&(discharge_index==0x02))
	movlb 3	; select bank3
	movf	(_discharge_i_limit)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 3	; select bank3
	movf	(_discharge_i_limit+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 3	; select bank3
	movf	(_discharge_i_limit+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(_discharge_current_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c+1)
	movlb 1	; select bank1
	movf	(_discharge_current_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u11121
	goto	u11120
u11121:
	goto	l18146
u11120:
	
l18138:	
	movlb 1	; select bank1
	movf	(_discharge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u11131
	goto	u11130
u11131:
	goto	l18146
u11130:
	line	980
	
l18140:	
;task.c: 979: {
;task.c: 980: if(bost_pwm_value>10)
	movlw	high(0Bh)
	subwf	(_bost_pwm_value+1)^080h,w
	movlw	low(0Bh)
	skipnz
	subwf	(_bost_pwm_value)^080h,w
	skipc
	goto	u11141
	goto	u11140
u11141:
	goto	l18144
u11140:
	line	982
	
l18142:	
;task.c: 981: {
;task.c: 982: bost_pwm_value = bost_pwm_value-1;
	movlw	low(0FFFFh)
	addwf	(_bost_pwm_value)^080h,f
	movlw	high(0FFFFh)
	addwfc	(_bost_pwm_value+1)^080h,f
	line	985
	
l18144:	
;task.c: 983: }
;task.c: 985: Set_Bost_Pwm_Duty(bost_pwm_value);
	movf	(_bost_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty+1)
	movlb 1	; select bank1
	movf	(_bost_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	fcall	_Set_Bost_Pwm_Duty
	line	988
	
l18146:	
;task.c: 986: }
;task.c: 988: battery_low_time_count=0;
	movlb 4	; select bank4
	clrf	(_battery_low_time_count)^0200h
	clrf	(_battery_low_time_count+1)^0200h
	line	990
;task.c: 990: }
	goto	l1365
	line	991
	
l18148:	
;task.c: 991: else if((battery_voltage_value<dianchi_qianya_baohu)&&(discharge_index==0x02))
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlb 3	; select bank3
	movf	(_dianchi_qianya_baohu)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 3	; select bank3
	movf	(_dianchi_qianya_baohu+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 3	; select bank3
	movf	(_dianchi_qianya_baohu+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u11151
	goto	u11150
u11151:
	goto	l18146
u11150:
	
l18150:	
	movlb 1	; select bank1
	movf	(_discharge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u11161
	goto	u11160
u11161:
	goto	l18146
u11160:
	line	994
	
l18152:	
;task.c: 992: {
;task.c: 994: battery_low_time_count++;
	movlb 4	; select bank4
	incf	(_battery_low_time_count)^0200h,f
	skipnz
	incf	(_battery_low_time_count+1)^0200h,f
	line	996
	
l18154:	
;task.c: 996: if(battery_low_time_count>1000)
	movlw	high(03E9h)
	subwf	(_battery_low_time_count+1)^0200h,w
	movlw	low(03E9h)
	skipnz
	subwf	(_battery_low_time_count)^0200h,w
	skipc
	goto	u11171
	goto	u11170
u11171:
	goto	l1365
u11170:
	line	998
	
l18156:	
;task.c: 997: {
;task.c: 998: discharge_index=0x03;
	movlw	(03h)
	movlb 1	; select bank1
	movwf	(_discharge_index)^080h
	line	1000
;task.c: 1000: bost_pwm_value=2;
	movlw	02h
	movwf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	1002
	
l18158:	
;task.c: 1002: Set_Bost_Pwm_Duty(bost_pwm_value);
	movf	(_bost_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty+1)
	movlb 1	; select bank1
	movf	(_bost_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	fcall	_Set_Bost_Pwm_Duty
	line	1004
	
l18160:	
;task.c: 1006: discharge_led_status=0x00;
	movlb 4	; select bank4
	clrf	(_battery_low_time_count)^0200h
	clrf	(_battery_low_time_count+1)^0200h
	line	1008
;task.c: 1008: while(1);
	
l1468:	
	
l1469:	
	goto	l1468
	line	1017
	
l1365:	
	line	1019
;task.c: 1015: }
;task.c: 1017: }
;task.c: 1019: handle_an10_process_flag=0x00;
	movlb 2	; select bank2
	clrf	(_handle_an10_process_flag)^0100h
	line	1024
	
l1472:	
	return
	opt stack 0
GLOBAL	__end_of_handle_ad_loop
	__end_of_handle_ad_loop:
	signat	_handle_ad_loop,88
	global	_start_ad_convert

;; *************** function _start_ad_convert *****************
;; Defined at:
;;		line 1034 in file "D:\MCUProject\ZH-SL-H40\src\task.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    0[BANK1 ] unsigned char 
;;  temp            2    5[BANK1 ] unsigned int 
;;  ad_l            2    3[BANK1 ] unsigned int 
;;  ad_h            2    1[BANK1 ] unsigned int 
;;  i               1    9[BANK1 ] unsigned char 
;;  j               1    8[BANK1 ] unsigned char 
;;  ad_ch           1    7[BANK1 ] unsigned char 
;;  k               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   16[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1C/1
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0      10       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0      50       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      52      10       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       62 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;; This function is called by:
;;		_auto_system
;;		_handle_ad_loop
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	1034
global __ptext12
__ptext12:	;psect for function _start_ad_convert
psect	text12
	file	"D:\MCUProject\ZH-SL-H40\src\task.c"
	line	1034
	global	__size_of_start_ad_convert
	__size_of_start_ad_convert	equ	__end_of_start_ad_convert-_start_ad_convert
	
_start_ad_convert:	
;incstack = 0
	opt	stack 10
; Regs used in _start_ad_convert: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;start_ad_convert@ch stored from wreg
	movlb 1	; select bank1
	movwf	(start_ad_convert@ch)^080h
	line	1046
	
l16638:	
	line	1048
	
l16640:	
;task.c: 1048: ad_ch=ch;
	movf	(start_ad_convert@ch)^080h,w
	movwf	(start_ad_convert@ad_ch)^080h
	line	1050
	
l16642:	
;task.c: 1050: ADCON0bits.CHS =ch;
	movf	(start_ad_convert@ch)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	rlf	(??_start_ad_convert+0)+0,f
	rlf	(??_start_ad_convert+0)+0,f
	movlb 1	; select bank1
	movf	(157)^080h,w	;volatile
	movlb 0	; select bank0
	xorwf	(??_start_ad_convert+0)+0,w
	andlw	not (((1<<5)-1)<<2)
	xorwf	(??_start_ad_convert+0)+0,w
	movlb 1	; select bank1
	movwf	(157)^080h	;volatile
	line	1052
	
l16644:	
;task.c: 1052: ADCON0bits.ADON =1;
	bsf	(157)^080h,0	;volatile
	line	1054
	
l16646:	
;task.c: 1054: if((ad_ch==0b01010)||(ad_ch==0b01001))
	movf	(start_ad_convert@ad_ch)^080h,w
	xorlw	0Ah&0ffh
	skipnz
	goto	u9171
	goto	u9170
u9171:
	goto	l16650
u9170:
	
l16648:	
	movf	(start_ad_convert@ad_ch)^080h,w
	xorlw	09h&0ffh
	skipz
	goto	u9181
	goto	u9180
u9181:
	goto	l16698
u9180:
	line	1056
	
l16650:	
;task.c: 1055: {
;task.c: 1056: for(i=0;i<51;i++)
	clrf	(start_ad_convert@i)^080h
	line	1058
	
l16656:	
;task.c: 1057: {
;task.c: 1058: _delay((unsigned long)((5)*(32000000/4000000.0)));
	opt asmopt_off
movlw	13
	movlb 0	; select bank0
movwf	(??_start_ad_convert+0)+0,f
u12657:
decfsz	(??_start_ad_convert+0)+0,f
	goto	u12657
opt asmopt_on

	line	1060
	
l16658:	
;task.c: 1060: ADCON0bits.GO=1;
	movlb 1	; select bank1
	bsf	(157)^080h,1	;volatile
	line	1062
;task.c: 1062: while(ADCON0bits.nDONE);
	
l1480:	
	btfsc	(157)^080h,1	;volatile
	goto	u9191
	goto	u9190
u9191:
	goto	l1480
u9190:
	line	1064
	
l16660:	
;task.c: 1064: ad_h=0b00000011&ADRESH;
	movf	(156)^080h,w	;volatile
	andlw	03h
	movwf	(start_ad_convert@ad_h)^080h
	clrf	(start_ad_convert@ad_h+1)^080h
	line	1066
	
l16662:	
;task.c: 1066: ad_l=ADRESL;
	movf	(155)^080h,w	;volatile
	movwf	(start_ad_convert@ad_l)^080h
	clrf	(start_ad_convert@ad_l+1)^080h
	line	1068
	
l16664:	
;task.c: 1068: adc_buffer[i]=(ad_h<<8)|ad_l;
	movf	(start_ad_convert@ad_h)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0+1
	clrf	(??_start_ad_convert+0)+0
	movlb 1	; select bank1
	movf	(start_ad_convert@ad_l)^080h,w
	movlb 0	; select bank0
	iorwf	0+(??_start_ad_convert+0)+0,w
	movwf	(??_start_ad_convert+2)+0
	movlb 1	; select bank1
	movf	(start_ad_convert@ad_l+1)^080h,w
	movlb 0	; select bank0
	iorwf	1+(??_start_ad_convert+0)+0,w
	movwf	1+(??_start_ad_convert+2)+0
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+4)+0
	clrf	(??_start_ad_convert+4)+0+1
	lslf	(??_start_ad_convert+4)+0,f
	rlf	(??_start_ad_convert+4)+1,f
	movlw	low(9072)
	movwf	(??_start_ad_convert+6)+0
	movlw	high(9072)
	movwf	(??_start_ad_convert+6)+0+1
	movf	0+(??_start_ad_convert+4)+0,w
	addwf	0+(??_start_ad_convert+6)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+4)+0,w
	addwfc	1+(??_start_ad_convert+6)+0,w
	movwf	1+fsr1l
	movf	0+(??_start_ad_convert+2)+0,w
	movwi	[0]fsr1
	movf	1+(??_start_ad_convert+2)+0,w
	movwi	[1]fsr1
	line	1056
	
l16666:	
	movlb 1	; select bank1
	incf	(start_ad_convert@i)^080h,f
	
l16668:	
	movlw	(033h)
	subwf	(start_ad_convert@i)^080h,w
	skipc
	goto	u9201
	goto	u9200
u9201:
	goto	l16656
u9200:
	line	1070
	
l16670:	
;task.c: 1069: }
;task.c: 1070: for(j=0;j<50;j++)
	clrf	(start_ad_convert@j)^080h
	line	1072
	
l16676:	
;task.c: 1071: {
;task.c: 1072: for(i=0;i<50-j;i++)
	clrf	(start_ad_convert@i)^080h
	goto	l16688
	line	1074
	
l16678:	
;task.c: 1073: {
;task.c: 1074: if(adc_buffer[i]>adc_buffer[i+1])
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	clrf	(??_start_ad_convert+0)+0+1
	lslf	(??_start_ad_convert+0)+0,f
	rlf	(??_start_ad_convert+0)+1,f
	movlw	low(9072)
	movwf	(??_start_ad_convert+2)+0
	movlw	high(9072)
	movwf	(??_start_ad_convert+2)+0+1
	movf	0+(??_start_ad_convert+0)+0,w
	addwf	0+(??_start_ad_convert+2)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+0)+0,w
	addwfc	1+(??_start_ad_convert+2)+0,w
	movwf	1+fsr1l
	moviw	[0]fsr1
	movwf	(??_start_ad_convert+4)+0
	moviw	[1]fsr1
	movwf	(??_start_ad_convert+4)+0+1
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+6)+0
	clrf	(??_start_ad_convert+6)+0+1
	lslf	(??_start_ad_convert+6)+0,f
	rlf	(??_start_ad_convert+6)+1,f
	movlw	low(9072+02h)
	movwf	(??_start_ad_convert+8)+0
	movlw	high(9072+02h)
	movwf	(??_start_ad_convert+8)+0+1
	movf	0+(??_start_ad_convert+6)+0,w
	addwf	0+(??_start_ad_convert+8)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+6)+0,w
	addwfc	1+(??_start_ad_convert+8)+0,w
	movwf	1+fsr1l
	moviw	[0]fsr1
	movwf	(??_start_ad_convert+10)+0
	moviw	[1]fsr1
	movwf	(??_start_ad_convert+10)+0+1
	movf	1+(??_start_ad_convert+4)+0,w
	subwf	1+(??_start_ad_convert+10)+0,w
	skipz
	goto	u9215
	movf	0+(??_start_ad_convert+4)+0,w
	subwf	0+(??_start_ad_convert+10)+0,w
u9215:
	skipnc
	goto	u9211
	goto	u9210
u9211:
	goto	l16686
u9210:
	line	1076
	
l16680:	
;task.c: 1075: {
;task.c: 1076: temp=adc_buffer[i];
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	clrf	(??_start_ad_convert+0)+0+1
	lslf	(??_start_ad_convert+0)+0,f
	rlf	(??_start_ad_convert+0)+1,f
	movlw	low(9072)
	movwf	(??_start_ad_convert+2)+0
	movlw	high(9072)
	movwf	(??_start_ad_convert+2)+0+1
	movf	0+(??_start_ad_convert+0)+0,w
	addwf	0+(??_start_ad_convert+2)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+0)+0,w
	addwfc	1+(??_start_ad_convert+2)+0,w
	movwf	1+fsr1l
	moviw	[0]fsr1
	movlb 1	; select bank1
	movwf	(start_ad_convert@temp)^080h
	moviw	[1]fsr1
	movwf	(start_ad_convert@temp+1)^080h
	line	1078
	
l16682:	
;task.c: 1078: adc_buffer[i]=adc_buffer[i+1];
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	clrf	(??_start_ad_convert+0)+0+1
	lslf	(??_start_ad_convert+0)+0,f
	rlf	(??_start_ad_convert+0)+1,f
	movlw	low(9072+02h)
	movwf	(??_start_ad_convert+2)+0
	movlw	high(9072+02h)
	movwf	(??_start_ad_convert+2)+0+1
	movf	0+(??_start_ad_convert+0)+0,w
	addwf	0+(??_start_ad_convert+2)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+0)+0,w
	addwfc	1+(??_start_ad_convert+2)+0,w
	movwf	1+fsr1l
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+4)+0
	clrf	(??_start_ad_convert+4)+0+1
	lslf	(??_start_ad_convert+4)+0,f
	rlf	(??_start_ad_convert+4)+1,f
	movlw	low(9072)
	movwf	(??_start_ad_convert+6)+0
	movlw	high(9072)
	movwf	(??_start_ad_convert+6)+0+1
	movf	0+(??_start_ad_convert+4)+0,w
	addwf	0+(??_start_ad_convert+6)+0,w
	movwf	fsr0l
	movf	1+(??_start_ad_convert+4)+0,w
	addwfc	1+(??_start_ad_convert+6)+0,w
	movwf	1+fsr0l
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	1080
	
l16684:	
;task.c: 1080: adc_buffer[i+1]=temp;
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	clrf	(??_start_ad_convert+0)+0+1
	lslf	(??_start_ad_convert+0)+0,f
	rlf	(??_start_ad_convert+0)+1,f
	movlw	low(9072+02h)
	movwf	(??_start_ad_convert+2)+0
	movlw	high(9072+02h)
	movwf	(??_start_ad_convert+2)+0+1
	movf	0+(??_start_ad_convert+0)+0,w
	addwf	0+(??_start_ad_convert+2)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+0)+0,w
	addwfc	1+(??_start_ad_convert+2)+0,w
	movwf	1+fsr1l
	movlb 1	; select bank1
	movf	(start_ad_convert@temp)^080h,w
	movwi	[0]fsr1
	movf	(start_ad_convert@temp+1)^080h,w
	movwi	[1]fsr1
	line	1072
	
l16686:	
	movlb 1	; select bank1
	incf	(start_ad_convert@i)^080h,f
	
l16688:	
	movlw	high(032h)
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0+1
	movlb 1	; select bank1
	movf	(start_ad_convert@j)^080h,w
	sublw	low(032h)
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	skipc
	decf	(??_start_ad_convert+0)+0+1,f
	movf	1+(??_start_ad_convert+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u9225
	movf	0+(??_start_ad_convert+0)+0,w
	movlb 1	; select bank1
	subwf	(start_ad_convert@i)^080h,w
u9225:

	skipc
	goto	u9221
	goto	u9220
u9221:
	goto	l16678
u9220:
	line	1070
	
l16690:	
	movlb 1	; select bank1
	incf	(start_ad_convert@j)^080h,f
	
l16692:	
	movlw	(032h)
	subwf	(start_ad_convert@j)^080h,w
	skipc
	goto	u9231
	goto	u9230
u9231:
	goto	l16676
u9230:
	
l1484:	
	line	1086
;task.c: 1081: }
;task.c: 1083: }
;task.c: 1084: }
;task.c: 1086: ADCON0bits.ADON =0;
	bcf	(157)^080h,0	;volatile
	line	1100
	
l16694:	
;task.c: 1088: return((adc_buffer[24]+adc_buffer[26]+
;task.c: 1089: adc_buffer[22]+adc_buffer[28]+
;task.c: 1090: adc_buffer[20]+adc_buffer[30]+
;task.c: 1091: adc_buffer[18]+adc_buffer[32]+
;task.c: 1092: adc_buffer[16]+adc_buffer[34]+
;task.c: 1093: adc_buffer[14]+adc_buffer[36]+
;task.c: 1094: adc_buffer[12]+adc_buffer[38]+
;task.c: 1095: adc_buffer[10]+adc_buffer[40]+
;task.c: 1096: adc_buffer[8]+adc_buffer[42]+
;task.c: 1097: adc_buffer[6]+adc_buffer[44]+
;task.c: 1098: adc_buffer[4]+adc_buffer[46]+
;task.c: 1099: adc_buffer[2]+adc_buffer[48]+
	movlw	01Ah
	movlb 0	; select bank0
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movlw	low(9072)
	movwf	fsr1l
	movlw	high(9072)
	movwf	fsr1h
	movlw	low (9072+(030h))
	movwf	fsr0l
	movlw	high (9072+(030h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	movwf	(??_start_ad_convert+0)+0
	moviw	[1]fsr0
	movwf	(??_start_ad_convert+0)+0+1
	movlw	low (9072+(034h))
	movwf	fsr0l
	movlw	high (9072+(034h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+0)+0,w
	movwf	(??_start_ad_convert+2)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+0)+0,w
	movwf	(??_start_ad_convert+2)+0+1
	movlw	low (9072+(02Ch))
	movwf	fsr0l
	movlw	high (9072+(02Ch))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+2)+0,w
	movwf	(??_start_ad_convert+4)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+2)+0,w
	movwf	(??_start_ad_convert+4)+0+1
	movlw	low (9072+(038h))
	movwf	fsr0l
	movlw	high (9072+(038h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+4)+0,w
	movwf	(??_start_ad_convert+6)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+4)+0,w
	movwf	(??_start_ad_convert+6)+0+1
	movlw	low (9072+(028h))
	movwf	fsr0l
	movlw	high (9072+(028h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+6)+0,w
	movwf	(??_start_ad_convert+8)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+6)+0,w
	movwf	(??_start_ad_convert+8)+0+1
	movlw	low (9072+(03Ch))
	movwf	fsr0l
	movlw	high (9072+(03Ch))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+8)+0,w
	movwf	(??_start_ad_convert+10)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+8)+0,w
	movwf	(??_start_ad_convert+10)+0+1
	movlw	low (9072+(024h))
	movwf	fsr0l
	movlw	high (9072+(024h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+10)+0,w
	movwf	(??_start_ad_convert+12)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+10)+0,w
	movwf	(??_start_ad_convert+12)+0+1
	movlw	low (9072+(040h))
	movwf	fsr0l
	movlw	high (9072+(040h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+12)+0,w
	movwf	(??_start_ad_convert+14)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+12)+0,w
	movwf	(??_start_ad_convert+14)+0+1
	movlw	low (9072+(020h))
	movwf	fsr0l
	movlw	high (9072+(020h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+14)+0,w
	movwf	(??_start_ad_convert+16)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+14)+0,w
	movwf	(??_start_ad_convert+16)+0+1
	movlw	low (9072+(044h))
	movwf	fsr0l
	movlw	high (9072+(044h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+16)+0,w
	movwf	(??_start_ad_convert+18)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+16)+0,w
	movwf	(??_start_ad_convert+18)+0+1
	movlw	low(9072)
	movwf	fsr0l
	movlw	high(9072)
	movwf	fsr0h
	addfsr	fsr0,01Ch
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+18)+0,w
	movwf	(??_start_ad_convert+20)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+18)+0,w
	movwf	(??_start_ad_convert+20)+0+1
	movlw	low (9072+(048h))
	movwf	fsr0l
	movlw	high (9072+(048h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+20)+0,w
	movwf	(??_start_ad_convert+22)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+20)+0,w
	movwf	(??_start_ad_convert+22)+0+1
	movlw	low(9072)
	movwf	fsr0l
	movlw	high(9072)
	movwf	fsr0h
	addfsr	fsr0,018h
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+22)+0,w
	movwf	(??_start_ad_convert+24)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+22)+0,w
	movwf	(??_start_ad_convert+24)+0+1
	movlw	low (9072+(04Ch))
	movwf	fsr0l
	movlw	high (9072+(04Ch))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+24)+0,w
	movwf	(??_start_ad_convert+26)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+24)+0,w
	movwf	(??_start_ad_convert+26)+0+1
	movlw	low(9072)
	movwf	fsr0l
	movlw	high(9072)
	movwf	fsr0h
	addfsr	fsr0,014h
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+26)+0,w
	movwf	(??_start_ad_convert+28)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+26)+0,w
	movwf	(??_start_ad_convert+28)+0+1
	movlw	low (9072+(050h))
	movwf	fsr0l
	movlw	high (9072+(050h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+28)+0,w
	movwf	(??_start_ad_convert+30)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+28)+0,w
	movwf	(??_start_ad_convert+30)+0+1
	movlw	low(9072)
	movwf	fsr0l
	movlw	high(9072)
	movwf	fsr0h
	addfsr	fsr0,010h
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+30)+0,w
	movwf	(??_start_ad_convert+32)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+30)+0,w
	movwf	(??_start_ad_convert+32)+0+1
	movlw	low (9072+(054h))
	movwf	fsr0l
	movlw	high (9072+(054h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+32)+0,w
	movwf	(??_start_ad_convert+34)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+32)+0,w
	movwf	(??_start_ad_convert+34)+0+1
	movlw	low(9072)
	movwf	fsr0l
	movlw	high(9072)
	movwf	fsr0h
	addfsr	fsr0,0Ch
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+34)+0,w
	movwf	(??_start_ad_convert+36)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+34)+0,w
	movwf	(??_start_ad_convert+36)+0+1
	movlw	low (9072+(058h))
	movwf	fsr0l
	movlw	high (9072+(058h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+36)+0,w
	movwf	(??_start_ad_convert+38)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+36)+0,w
	movwf	(??_start_ad_convert+38)+0+1
	movlw	low(9072)
	movwf	fsr0l
	movlw	high(9072)
	movwf	fsr0h
	addfsr	fsr0,08h
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+38)+0,w
	movwf	(??_start_ad_convert+40)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+38)+0,w
	movwf	(??_start_ad_convert+40)+0+1
	movlw	low (9072+(05Ch))
	movwf	fsr0l
	movlw	high (9072+(05Ch))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+40)+0,w
	movwf	(??_start_ad_convert+42)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+40)+0,w
	movwf	(??_start_ad_convert+42)+0+1
	movlw	low(9072)
	movwf	fsr0l
	movlw	high(9072)
	movwf	fsr0h
	addfsr	fsr0,04h
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+42)+0,w
	movwf	(??_start_ad_convert+44)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+42)+0,w
	movwf	(??_start_ad_convert+44)+0+1
	movlw	low (9072+(060h))
	movwf	fsr0l
	movlw	high (9072+(060h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+44)+0,w
	movwf	(??_start_ad_convert+46)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+44)+0,w
	movwf	(??_start_ad_convert+46)+0+1
	movlw	low (9072+(064h))
	movwf	fsr0l
	movlw	high (9072+(064h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+46)+0,w
	movwf	(??_start_ad_convert+48)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+46)+0,w
	movwf	(??_start_ad_convert+48)+0+1
	moviw	[0]fsr1
	addwf	0+(??_start_ad_convert+48)+0,w
	movwf	(___lwdiv@dividend)
	moviw	[1]fsr1
	addwfc	1+(??_start_ad_convert+48)+0,w
	movwf	(___lwdiv@dividend)+1
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(?_start_ad_convert+1)
	movf	(0+(?___lwdiv)),w
	movwf	(?_start_ad_convert)
	goto	l1489
	line	1105
	
l16698:	
;task.c: 1101: }
;task.c: 1105: for(i=0;i<11;i++)
	clrf	(start_ad_convert@i)^080h
	line	1107
	
l16704:	
;task.c: 1106: {
;task.c: 1107: _delay((unsigned long)((10)*(32000000/4000000.0)));
	opt asmopt_off
movlw	26
	movlb 0	; select bank0
movwf	(??_start_ad_convert+0)+0,f
u12667:
decfsz	(??_start_ad_convert+0)+0,f
	goto	u12667
	nop
opt asmopt_on

	line	1109
	
l16706:	
;task.c: 1109: ADCON0bits.GO=1;
	movlb 1	; select bank1
	bsf	(157)^080h,1	;volatile
	line	1111
;task.c: 1111: while(ADCON0bits.nDONE);
	
l1492:	
	btfsc	(157)^080h,1	;volatile
	goto	u9241
	goto	u9240
u9241:
	goto	l1492
u9240:
	line	1113
	
l16708:	
;task.c: 1113: ad_h=0b00000011&ADRESH;
	movf	(156)^080h,w	;volatile
	andlw	03h
	movwf	(start_ad_convert@ad_h)^080h
	clrf	(start_ad_convert@ad_h+1)^080h
	line	1115
	
l16710:	
;task.c: 1115: ad_l=ADRESL;
	movf	(155)^080h,w	;volatile
	movwf	(start_ad_convert@ad_l)^080h
	clrf	(start_ad_convert@ad_l+1)^080h
	line	1117
	
l16712:	
;task.c: 1117: adc_buffer[i]=(ad_h<<8)|ad_l;
	movf	(start_ad_convert@ad_h)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0+1
	clrf	(??_start_ad_convert+0)+0
	movlb 1	; select bank1
	movf	(start_ad_convert@ad_l)^080h,w
	movlb 0	; select bank0
	iorwf	0+(??_start_ad_convert+0)+0,w
	movwf	(??_start_ad_convert+2)+0
	movlb 1	; select bank1
	movf	(start_ad_convert@ad_l+1)^080h,w
	movlb 0	; select bank0
	iorwf	1+(??_start_ad_convert+0)+0,w
	movwf	1+(??_start_ad_convert+2)+0
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+4)+0
	clrf	(??_start_ad_convert+4)+0+1
	lslf	(??_start_ad_convert+4)+0,f
	rlf	(??_start_ad_convert+4)+1,f
	movlw	low(9072)
	movwf	(??_start_ad_convert+6)+0
	movlw	high(9072)
	movwf	(??_start_ad_convert+6)+0+1
	movf	0+(??_start_ad_convert+4)+0,w
	addwf	0+(??_start_ad_convert+6)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+4)+0,w
	addwfc	1+(??_start_ad_convert+6)+0,w
	movwf	1+fsr1l
	movf	0+(??_start_ad_convert+2)+0,w
	movwi	[0]fsr1
	movf	1+(??_start_ad_convert+2)+0,w
	movwi	[1]fsr1
	line	1105
	
l16714:	
	movlb 1	; select bank1
	incf	(start_ad_convert@i)^080h,f
	
l16716:	
	movlw	(0Bh)
	subwf	(start_ad_convert@i)^080h,w
	skipc
	goto	u9251
	goto	u9250
u9251:
	goto	l16704
u9250:
	line	1120
	
l16718:	
;task.c: 1118: }
;task.c: 1120: for(j=0;j<11-1;j++)
	clrf	(start_ad_convert@j)^080h
	line	1122
	
l16724:	
;task.c: 1121: {
;task.c: 1122: for(i=0;i<11-j;i++)
	clrf	(start_ad_convert@i)^080h
	goto	l16736
	line	1124
	
l16726:	
;task.c: 1123: {
;task.c: 1124: if(adc_buffer[i]>adc_buffer[i+1])
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	clrf	(??_start_ad_convert+0)+0+1
	lslf	(??_start_ad_convert+0)+0,f
	rlf	(??_start_ad_convert+0)+1,f
	movlw	low(9072)
	movwf	(??_start_ad_convert+2)+0
	movlw	high(9072)
	movwf	(??_start_ad_convert+2)+0+1
	movf	0+(??_start_ad_convert+0)+0,w
	addwf	0+(??_start_ad_convert+2)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+0)+0,w
	addwfc	1+(??_start_ad_convert+2)+0,w
	movwf	1+fsr1l
	moviw	[0]fsr1
	movwf	(??_start_ad_convert+4)+0
	moviw	[1]fsr1
	movwf	(??_start_ad_convert+4)+0+1
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+6)+0
	clrf	(??_start_ad_convert+6)+0+1
	lslf	(??_start_ad_convert+6)+0,f
	rlf	(??_start_ad_convert+6)+1,f
	movlw	low(9072+02h)
	movwf	(??_start_ad_convert+8)+0
	movlw	high(9072+02h)
	movwf	(??_start_ad_convert+8)+0+1
	movf	0+(??_start_ad_convert+6)+0,w
	addwf	0+(??_start_ad_convert+8)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+6)+0,w
	addwfc	1+(??_start_ad_convert+8)+0,w
	movwf	1+fsr1l
	moviw	[0]fsr1
	movwf	(??_start_ad_convert+10)+0
	moviw	[1]fsr1
	movwf	(??_start_ad_convert+10)+0+1
	movf	1+(??_start_ad_convert+4)+0,w
	subwf	1+(??_start_ad_convert+10)+0,w
	skipz
	goto	u9265
	movf	0+(??_start_ad_convert+4)+0,w
	subwf	0+(??_start_ad_convert+10)+0,w
u9265:
	skipnc
	goto	u9261
	goto	u9260
u9261:
	goto	l16734
u9260:
	line	1126
	
l16728:	
;task.c: 1125: {
;task.c: 1126: temp=adc_buffer[i];
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	clrf	(??_start_ad_convert+0)+0+1
	lslf	(??_start_ad_convert+0)+0,f
	rlf	(??_start_ad_convert+0)+1,f
	movlw	low(9072)
	movwf	(??_start_ad_convert+2)+0
	movlw	high(9072)
	movwf	(??_start_ad_convert+2)+0+1
	movf	0+(??_start_ad_convert+0)+0,w
	addwf	0+(??_start_ad_convert+2)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+0)+0,w
	addwfc	1+(??_start_ad_convert+2)+0,w
	movwf	1+fsr1l
	moviw	[0]fsr1
	movlb 1	; select bank1
	movwf	(start_ad_convert@temp)^080h
	moviw	[1]fsr1
	movwf	(start_ad_convert@temp+1)^080h
	line	1128
	
l16730:	
;task.c: 1128: adc_buffer[i]=adc_buffer[i+1];
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	clrf	(??_start_ad_convert+0)+0+1
	lslf	(??_start_ad_convert+0)+0,f
	rlf	(??_start_ad_convert+0)+1,f
	movlw	low(9072+02h)
	movwf	(??_start_ad_convert+2)+0
	movlw	high(9072+02h)
	movwf	(??_start_ad_convert+2)+0+1
	movf	0+(??_start_ad_convert+0)+0,w
	addwf	0+(??_start_ad_convert+2)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+0)+0,w
	addwfc	1+(??_start_ad_convert+2)+0,w
	movwf	1+fsr1l
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+4)+0
	clrf	(??_start_ad_convert+4)+0+1
	lslf	(??_start_ad_convert+4)+0,f
	rlf	(??_start_ad_convert+4)+1,f
	movlw	low(9072)
	movwf	(??_start_ad_convert+6)+0
	movlw	high(9072)
	movwf	(??_start_ad_convert+6)+0+1
	movf	0+(??_start_ad_convert+4)+0,w
	addwf	0+(??_start_ad_convert+6)+0,w
	movwf	fsr0l
	movf	1+(??_start_ad_convert+4)+0,w
	addwfc	1+(??_start_ad_convert+6)+0,w
	movwf	1+fsr0l
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	1130
	
l16732:	
;task.c: 1130: adc_buffer[i+1]=temp;
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	clrf	(??_start_ad_convert+0)+0+1
	lslf	(??_start_ad_convert+0)+0,f
	rlf	(??_start_ad_convert+0)+1,f
	movlw	low(9072+02h)
	movwf	(??_start_ad_convert+2)+0
	movlw	high(9072+02h)
	movwf	(??_start_ad_convert+2)+0+1
	movf	0+(??_start_ad_convert+0)+0,w
	addwf	0+(??_start_ad_convert+2)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+0)+0,w
	addwfc	1+(??_start_ad_convert+2)+0,w
	movwf	1+fsr1l
	movlb 1	; select bank1
	movf	(start_ad_convert@temp)^080h,w
	movwi	[0]fsr1
	movf	(start_ad_convert@temp+1)^080h,w
	movwi	[1]fsr1
	line	1122
	
l16734:	
	movlb 1	; select bank1
	incf	(start_ad_convert@i)^080h,f
	
l16736:	
	movlw	high(0Bh)
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0+1
	movlb 1	; select bank1
	movf	(start_ad_convert@j)^080h,w
	sublw	low(0Bh)
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	skipc
	decf	(??_start_ad_convert+0)+0+1,f
	movf	1+(??_start_ad_convert+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u9275
	movf	0+(??_start_ad_convert+0)+0,w
	movlb 1	; select bank1
	subwf	(start_ad_convert@i)^080h,w
u9275:

	skipc
	goto	u9271
	goto	u9270
u9271:
	goto	l16726
u9270:
	line	1120
	
l16738:	
	movlb 1	; select bank1
	incf	(start_ad_convert@j)^080h,f
	
l16740:	
	movlw	(0Ah)
	subwf	(start_ad_convert@j)^080h,w
	skipc
	goto	u9281
	goto	u9280
u9281:
	goto	l16724
u9280:
	
l1496:	
	line	1136
;task.c: 1131: }
;task.c: 1133: }
;task.c: 1134: }
;task.c: 1136: ADCON0bits.ADON =0;
	bcf	(157)^080h,0	;volatile
	line	1138
	
l16742:	
;task.c: 1138: return((adc_buffer[((11-1)/2)-1]+adc_buffer[((11-1)/2)+1])/2);
	movlw	low(9072)
	movwf	fsr1l
	movlw	high(9072)
	movwf	fsr1h
	addfsr	fsr1,0Ch
	movlw	low(9072)
	movwf	fsr0l
	movlw	high(9072)
	movwf	fsr0h
	addfsr	fsr0,08h
	moviw	[0]fsr1
	addwf	indf0,w
	movlb 0	; select bank0
	movwf	(?_start_ad_convert)
	addfsr	fsr0,1
	moviw	[1]fsr1
	addwfc	indf0,w
	movwf	(?_start_ad_convert)+1
	
l16744:	
	lsrf	(?_start_ad_convert+1),f
	rrf	(?_start_ad_convert),f
	line	1141
	
l1489:	
	return
	opt stack 0
GLOBAL	__end_of_start_ad_convert
	__end_of_start_ad_convert:
	signat	_start_ad_convert,4218
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    9[BANK0 ] unsigned int 
;;  dividend        2   11[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   14[BANK0 ] unsigned int 
;;  counter         1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    9[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       7       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_ad_loop
;;		_start_ad_convert
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwdiv.c"
	line	6
global __ptext13
__ptext13:	;psect for function ___lwdiv
psect	text13
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 10
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l19368:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l19370:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u12591
	goto	u12590
u12591:
	goto	l19390
u12590:
	line	16
	
l19372:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l19376
	line	18
	
l19374:	
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l19376:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u12601
	goto	u12600
u12601:
	goto	l19374
u12600:
	line	22
	
l19378:	
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l19380:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u12615
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u12615:
	skipc
	goto	u12611
	goto	u12610
u12611:
	goto	l19386
u12610:
	line	24
	
l19382:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	25
	
l19384:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l19386:	
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l19388:	
	decfsz	(___lwdiv@counter),f
	goto	u12621
	goto	u12620
u12621:
	goto	l19378
u12620:
	line	30
	
l19390:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l2269:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 4 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    3[BANK0 ] unsigned int 
;;  multiplicand    2    5[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    7[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    3[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_ad_loop
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\wmul.c"
	line	4
global __ptext14
__ptext14:	;psect for function ___wmul
psect	text14
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\wmul.c"
	line	4
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 12
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	20
	
l19398:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	22
	
l19400:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u12631
	goto	u12630
u12631:
	goto	l19404
u12630:
	line	23
	
l19402:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	movf	(___wmul@multiplicand+1),w
	addwfc	(___wmul@product+1),f
	line	24
	
l19404:	
	lslf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	25
	
l19406:	
	lsrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	26
	
l19408:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u12641
	goto	u12640
u12641:
	goto	l19400
u12640:
	line	30
	
l19410:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	31
	
l2302:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 6 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    3[BANK0 ] unsigned long 
;;  dividend        4    7[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   11[BANK0 ] unsigned long 
;;  counter         1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    3[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      13       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_ad_loop
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lldiv.c"
	line	6
global __ptext15
__ptext15:	;psect for function ___lldiv
psect	text15
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lldiv.c"
	line	6
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
;incstack = 0
	opt	stack 12
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	14
	
l19342:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	15
	
l19344:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u12551
	goto	u12550
u12551:
	goto	l19364
u12550:
	line	16
	
l19346:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	17
	goto	l19350
	line	18
	
l19348:	
	lslf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	19
	incf	(___lldiv@counter),f
	line	17
	
l19350:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u12561
	goto	u12560
u12561:
	goto	l19348
u12560:
	line	22
	
l19352:	
	lslf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	23
	
l19354:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u12575
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u12575
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u12575
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u12575:
	skipc
	goto	u12571
	goto	u12570
u12571:
	goto	l19360
u12570:
	line	24
	
l19356:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	subwfb	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	subwfb	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	subwfb	(___lldiv@dividend+3),f
	line	25
	
l19358:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	27
	
l19360:	
	lsrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	28
	
l19362:	
	decfsz	(___lldiv@counter),f
	goto	u12581
	goto	u12580
u12581:
	goto	l19352
u12580:
	line	30
	
l19364:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	31
	
l2210:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	_Mppt_Charge

;; *************** function _Mppt_Charge *****************
;; Defined at:
;;		line 1547 in file "D:\MCUProject\ZH-SL-H40\src\task.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/4
;;		On exit  : 1A/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Set_Buck_Pwm_Duty
;;		___ftadd
;;		___ftge
;;		___fttol
;;		___lwtoft
;;		_pid_calc
;; This function is called by:
;;		_handle_ad_loop
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\task.c"
	line	1547
global __ptext16
__ptext16:	;psect for function _Mppt_Charge
psect	text16
	file	"D:\MCUProject\ZH-SL-H40\src\task.c"
	line	1547
	global	__size_of_Mppt_Charge
	__size_of_Mppt_Charge	equ	__end_of_Mppt_Charge-_Mppt_Charge
	
_Mppt_Charge:	
;incstack = 0
	opt	stack 8
; Regs used in _Mppt_Charge: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	1550
	
l18976:	
;task.c: 1550: if((battery_voltage_value<dianchi_guoya_huifu)&&(charge_index==0x03))
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_huifu)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_huifu+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_huifu+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u11901
	goto	u11900
u11901:
	goto	l19028
u11900:
	
l18978:	
	movlb 1	; select bank1
	movf	(_charge_index)^080h,w
	xorlw	03h&0ffh
	skipz
	goto	u11911
	goto	u11910
u11911:
	goto	l19028
u11910:
	line	1553
	
l18980:	
;task.c: 1551: {
;task.c: 1553: if(mppt_status==0x00)
	movlb 2	; select bank2
	movf	(_mppt_status)^0100h,f
	skipz
	goto	u11921
	goto	u11920
u11921:
	goto	l19002
u11920:
	line	1555
	
l18982:	
;task.c: 1554: {
;task.c: 1555: if (charge_current_value>=I_prev)
	movlb 3	; select bank3
	movf	(_I_prev+1)^0180h,w
	movlb 1	; select bank1
	subwf	(_charge_current_value+1)^080h,w
	skipz
	goto	u11935
	movlb 3	; select bank3
	movf	(_I_prev)^0180h,w
	movlb 1	; select bank1
	subwf	(_charge_current_value)^080h,w
u11935:
	skipc
	goto	u11931
	goto	u11930
u11931:
	goto	l1532
u11930:
	line	1558
	
l18984:	
;task.c: 1556: {
;task.c: 1558: buck_pwm_value=buck_pwm_value + 200 * 0.025;
	movlb 0	; select bank0
	movf	(_buck_pwm_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_buck_pwm_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftadd@f2+2)
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0xa0
	movwf	(___ftadd@f1+1)
	movlw	0x40
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	movwf	(_buck_pwm_value+1)
	movf	0+(((0+(?___fttol)))),w
	movwf	(_buck_pwm_value)
	line	1560
	
l18986:	
;task.c: 1560: if(buck_pwm_value>=900)
	movlw	high(0384h)
	subwf	(_buck_pwm_value+1),w
	movlw	low(0384h)
	skipnz
	subwf	(_buck_pwm_value),w
	skipc
	goto	u11941
	goto	u11940
u11941:
	goto	l18990
u11940:
	line	1562
	
l18988:	
;task.c: 1561: {
;task.c: 1562: buck_pwm_value=900;
	movlw	low(0384h)
	movwf	(_buck_pwm_value)
	movlw	high(0384h)
	movwf	((_buck_pwm_value))+1
	line	1565
	
l18990:	
;task.c: 1563: }
;task.c: 1565: Set_Buck_Pwm_Duty(buck_pwm_value);
	movlb 0	; select bank0
	movf	(_buck_pwm_value+1),w
	movwf	(Set_Buck_Pwm_Duty@duty+1)
	movf	(_buck_pwm_value),w
	movwf	(Set_Buck_Pwm_Duty@duty)
	fcall	_Set_Buck_Pwm_Duty
	line	1567
;task.c: 1567: }
	goto	l19024
	line	1568
	
l1532:	
	line	1570
;task.c: 1568: else
;task.c: 1569: {
;task.c: 1570: mppt_status=1;
	movlb 2	; select bank2
	clrf	(_mppt_status)^0100h
	incf	(_mppt_status)^0100h,f
	line	1572
	
l18992:	
;task.c: 1572: buck_pwm_value=buck_pwm_value - 200 * 0.025;
	movlb 0	; select bank0
	movf	(_buck_pwm_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_buck_pwm_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftadd@f2+2)
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0xa0
	movwf	(___ftadd@f1+1)
	movlw	0xc0
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	movwf	(_buck_pwm_value+1)
	movf	0+(((0+(?___fttol)))),w
	movwf	(_buck_pwm_value)
	line	1574
	
l18994:	
;task.c: 1574: if(buck_pwm_value<=50)
	movlw	high(033h)
	subwf	(_buck_pwm_value+1),w
	movlw	low(033h)
	skipnz
	subwf	(_buck_pwm_value),w
	skipnc
	goto	u11951
	goto	u11950
u11951:
	goto	l18990
u11950:
	line	1576
	
l18996:	
;task.c: 1575: {
;task.c: 1576: buck_pwm_value=50;
	movlw	032h
	movwf	(_buck_pwm_value)
	clrf	(_buck_pwm_value+1)
	line	1578
	
l18998:	
;task.c: 1578: mppt_status=0;
	movlb 2	; select bank2
	clrf	(_mppt_status)^0100h
	goto	l18990
	line	1587
	
l19002:	
;task.c: 1585: else
;task.c: 1586: {
;task.c: 1587: if (charge_current_value>=I_prev)
	movlb 3	; select bank3
	movf	(_I_prev+1)^0180h,w
	movlb 1	; select bank1
	subwf	(_charge_current_value+1)^080h,w
	skipz
	goto	u11965
	movlb 3	; select bank3
	movf	(_I_prev)^0180h,w
	movlb 1	; select bank1
	subwf	(_charge_current_value)^080h,w
u11965:
	skipc
	goto	u11961
	goto	u11960
u11961:
	goto	l19014
u11960:
	line	1590
	
l19004:	
;task.c: 1588: {
;task.c: 1590: buck_pwm_value=buck_pwm_value-200 * 0.025;
	movlb 0	; select bank0
	movf	(_buck_pwm_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_buck_pwm_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftadd@f2+2)
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0xa0
	movwf	(___ftadd@f1+1)
	movlw	0xc0
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	movwf	(_buck_pwm_value+1)
	movf	0+(((0+(?___fttol)))),w
	movwf	(_buck_pwm_value)
	line	1592
	
l19006:	
;task.c: 1592: if(buck_pwm_value<=50)
	movlw	high(033h)
	subwf	(_buck_pwm_value+1),w
	movlw	low(033h)
	skipnz
	subwf	(_buck_pwm_value),w
	skipnc
	goto	u11971
	goto	u11970
u11971:
	goto	l18990
u11970:
	goto	l18996
	line	1606
	
l19014:	
;task.c: 1604: else
;task.c: 1605: {
;task.c: 1606: mppt_status=0;
	movlb 2	; select bank2
	clrf	(_mppt_status)^0100h
	line	1608
	
l19016:	
;task.c: 1608: buck_pwm_value=buck_pwm_value+ 200 * 0.025;
	movlb 0	; select bank0
	movf	(_buck_pwm_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_buck_pwm_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftadd@f2+2)
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0xa0
	movwf	(___ftadd@f1+1)
	movlw	0x40
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	movwf	(_buck_pwm_value+1)
	movf	0+(((0+(?___fttol)))),w
	movwf	(_buck_pwm_value)
	line	1610
	
l19018:	
;task.c: 1610: if(buck_pwm_value>=900)
	movlw	high(0384h)
	subwf	(_buck_pwm_value+1),w
	movlw	low(0384h)
	skipnz
	subwf	(_buck_pwm_value),w
	skipc
	goto	u11981
	goto	u11980
u11981:
	goto	l18990
u11980:
	goto	l18988
	line	1623
	
l19024:	
;task.c: 1617: }
;task.c: 1621: }
;task.c: 1623: PWM = buck_pwm_value;
	movlb 0	; select bank0
	movf	(_buck_pwm_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_buck_pwm_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movlb 1	; select bank1
	movwf	(_PWM)^080h
	movlb 0	; select bank0
	movf	(1+(?___lwtoft)),w
	movlb 1	; select bank1
	movwf	(_PWM+1)^080h
	movlb 0	; select bank0
	movf	(2+(?___lwtoft)),w
	movlb 1	; select bank1
	movwf	(_PWM+2)^080h
	line	1625
	
l19026:	
;task.c: 1625: cv_level_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_cv_level_time_count)^0200h
	clrf	(_cv_level_time_count+1)^0200h
	line	1627
;task.c: 1627: }
	goto	l1550
	line	1628
	
l19028:	
;task.c: 1628: else if((battery_voltage_value>=dianchi_cv_level)&&(battery_voltage_value<dianchi_guoya_baohu)&&(charge_index==0x03))
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlb 2	; select bank2
	movf	(_dianchi_cv_level)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 2	; select bank2
	movf	(_dianchi_cv_level+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 2	; select bank2
	movf	(_dianchi_cv_level+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11991
	goto	u11990
u11991:
	goto	l19044
u11990:
	
l19030:	
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(_dianchi_guoya_baohu)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(_dianchi_guoya_baohu+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(_dianchi_guoya_baohu+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u12001
	goto	u12000
u12001:
	goto	l19044
u12000:
	
l19032:	
	movlb 1	; select bank1
	movf	(_charge_index)^080h,w
	xorlw	03h&0ffh
	skipz
	goto	u12011
	goto	u12010
u12011:
	goto	l19044
u12010:
	line	1630
	
l19034:	
;task.c: 1629: {
;task.c: 1630: cv_level_time_count++;
	movlb 4	; select bank4
	incf	(_cv_level_time_count)^0200h,f
	skipnz
	incf	(_cv_level_time_count+1)^0200h,f
	line	1632
	
l19036:	
;task.c: 1632: if(cv_level_time_count>=100)
	movlw	high(064h)
	subwf	(_cv_level_time_count+1)^0200h,w
	movlw	low(064h)
	skipnz
	subwf	(_cv_level_time_count)^0200h,w
	skipc
	goto	u12021
	goto	u12020
u12021:
	goto	l1550
u12020:
	line	1634
	
l19038:	
;task.c: 1633: {
;task.c: 1634: cv_level_time_count=0x00;
	clrf	(_cv_level_time_count)^0200h
	clrf	(_cv_level_time_count+1)^0200h
	line	1636
	
l19040:	
;task.c: 1636: charge_index=0x04;
	movlw	(04h)
	movlb 1	; select bank1
	movwf	(_charge_index)^080h
	line	1638
	
l19042:	
;task.c: 1638: PWM = buck_pwm_value;
	movlb 0	; select bank0
	movf	(_buck_pwm_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_buck_pwm_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movlb 1	; select bank1
	movwf	(_PWM)^080h
	movlb 0	; select bank0
	movf	(1+(?___lwtoft)),w
	movlb 1	; select bank1
	movwf	(_PWM+1)^080h
	movlb 0	; select bank0
	movf	(2+(?___lwtoft)),w
	movlb 1	; select bank1
	movwf	(_PWM+2)^080h
	goto	l1550
	line	1641
	
l19044:	
;task.c: 1641: else if( (battery_voltage_value<dianchi_guoya_baohu) && (charge_index==0x04) )
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtoft@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(_dianchi_guoya_baohu)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(_dianchi_guoya_baohu+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(_dianchi_guoya_baohu+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u12031
	goto	u12030
u12031:
	goto	l19026
u12030:
	
l19046:	
	movlb 1	; select bank1
	movf	(_charge_index)^080h,w
	xorlw	04h&0ffh
	skipz
	goto	u12041
	goto	u12040
u12041:
	goto	l19026
u12040:
	line	1643
	
l19048:	
;task.c: 1642: {
;task.c: 1643: pid_index = 0x02;
	movlw	(02h)
	movwf	(_pid_index)^080h
	line	1645
	
l19050:	
;task.c: 1645: PWM_I=pid_calc(&PID_CV_charge,battery_voltage_value);
	movlw	low(_PID_CV_charge)
	movlb 0	; select bank0
	movwf	(pid_calc@pp)
	movlw	high(_PID_CV_charge)
	movwf	(pid_calc@pp+1)
	movf	(_battery_voltage_value+1),w
	movwf	(pid_calc@NowPoint+1)
	movf	(_battery_voltage_value),w
	movwf	(pid_calc@NowPoint)
	fcall	_pid_calc
	movf	(0+(?_pid_calc)),w
	movlb 4	; select bank4
	movwf	(_PWM_I)^0200h
	movlb 0	; select bank0
	movf	(1+(?_pid_calc)),w
	movlb 4	; select bank4
	movwf	(_PWM_I+1)^0200h
	movlb 0	; select bank0
	movf	(2+(?_pid_calc)),w
	movlb 4	; select bank4
	movwf	(_PWM_I+2)^0200h
	line	1647
	
l19052:	
;task.c: 1647: PWM = PWM+PWM_I;
	movf	(_PWM_I)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlb 4	; select bank4
	movf	(_PWM_I+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f1+1)
	movlb 4	; select bank4
	movf	(_PWM_I+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f1+2)
	movlb 1	; select bank1
	movf	(_PWM)^080h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2)
	movlb 1	; select bank1
	movf	(_PWM+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2+1)
	movlb 1	; select bank1
	movf	(_PWM+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movlb 1	; select bank1
	movwf	(_PWM)^080h
	movlb 0	; select bank0
	movf	(1+(?___ftadd)),w
	movlb 1	; select bank1
	movwf	(_PWM+1)^080h
	movlb 0	; select bank0
	movf	(2+(?___ftadd)),w
	movlb 1	; select bank1
	movwf	(_PWM+2)^080h
	line	1649
	
l19054:	
;task.c: 1649: if( PWM>=900)
	movf	(_PWM)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(_PWM+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(_PWM+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x61
	movwf	(___ftge@ff2+1)
	movlw	0x44
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u12051
	goto	u12050
u12051:
	goto	l19058
u12050:
	line	1651
	
l19056:	
;task.c: 1650: {
;task.c: 1651: PWM=900;
	movlw	0x0
	movlb 1	; select bank1
	movwf	(_PWM)^080h
	movlw	0x61
	movwf	(_PWM+1)^080h
	movlw	0x44
	movwf	(_PWM+2)^080h
	line	1652
;task.c: 1652: }
	goto	l19062
	line	1653
	
l19058:	
;task.c: 1653: else if(PWM<=50)
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x48
	movwf	(___ftge@ff1+1)
	movlw	0x42
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(_PWM)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(_PWM+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(_PWM+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u12061
	goto	u12060
u12061:
	goto	l19062
u12060:
	line	1655
	
l19060:	
;task.c: 1654: {
;task.c: 1655: PWM=50;
	movlw	0x0
	movlb 1	; select bank1
	movwf	(_PWM)^080h
	movlw	0x48
	movwf	(_PWM+1)^080h
	movlw	0x42
	movwf	(_PWM+2)^080h
	line	1657
	
l19062:	
;task.c: 1656: }
;task.c: 1657: buck_pwm_value = (unsigned int)PWM;
	movlb 1	; select bank1
	movf	(_PWM)^080h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1)
	movlb 1	; select bank1
	movf	(_PWM+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+1)
	movlb 1	; select bank1
	movf	(_PWM+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	movwf	(_buck_pwm_value+1)
	movf	0+(((0+(?___fttol)))),w
	movwf	(_buck_pwm_value)
	line	1659
	
l19064:	
;task.c: 1659: Set_Buck_Pwm_Duty(buck_pwm_value);
	movf	(_buck_pwm_value+1),w
	movwf	(Set_Buck_Pwm_Duty@duty+1)
	movf	(_buck_pwm_value),w
	movwf	(Set_Buck_Pwm_Duty@duty)
	fcall	_Set_Buck_Pwm_Duty
	line	1666
;task.c: 1660: }
	
l1550:	
	return
	opt stack 0
GLOBAL	__end_of_Mppt_Charge
	__end_of_Mppt_Charge:
	signat	_Mppt_Charge,88
	global	_pid_calc

;; *************** function _pid_calc *****************
;; Defined at:
;;		line 24 in file "D:\MCUProject\ZH-SL-H40\src\PID.c"
;; Parameters:    Size  Location     Type
;;  pp              2   55[BANK0 ] PTR struct PID_VAR
;;		 -> PID_CC_discharge(21), PID_CV_charge(21), PID_CC_charge(21), 
;;  NowPoint        2   57[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  Error           3   15[BANK1 ] float 
;;  PWM_var         3   12[BANK1 ] float 
;;  dk              3    9[BANK1 ] float 
;;  dError          3    0[BANK1 ] float 
;; Return value:  Size  Location     Type
;;                  3   55[BANK0 ] float 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0      18       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       7      18       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       25 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftge
;;		___ftmul
;;		___ftsub
;; This function is called by:
;;		_handle_ad_loop
;;		_Mppt_Charge
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\PID.c"
	line	24
global __ptext17
__ptext17:	;psect for function _pid_calc
psect	text17
	file	"D:\MCUProject\ZH-SL-H40\src\PID.c"
	line	24
	global	__size_of_pid_calc
	__size_of_pid_calc	equ	__end_of_pid_calc-_pid_calc
	
_pid_calc:	
;incstack = 0
	opt	stack 9
; Regs used in _pid_calc: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	32
	
l18852:	
;PID.c: 26: float PWM_var;
;PID.c: 28: float dError, Error;
;PID.c: 30: float dk;
;PID.c: 32: dk=10.0;
	movlw	0x0
	movlb 1	; select bank1
	movwf	(pid_calc@dk)^080h
	movlw	0x20
	movwf	(pid_calc@dk+1)^080h
	movlw	0x41
	movwf	(pid_calc@dk+2)^080h
	line	34
	
l18854:	
;PID.c: 34: Error = pp->SetPoint - NowPoint;
	movlb 0	; select bank0
	movf	(pid_calc@NowPoint+1),w
	movwf	(___awtoft@c+1)
	movf	(pid_calc@NowPoint),w
	movwf	(___awtoft@c)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movwf	(___ftsub@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftsub@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftsub@f2+2)
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h

	moviw	[0]fsr1
	movwf	(___ftsub@f1)
	moviw	[1]fsr1
	movwf	(___ftsub@f1+1)
	moviw	[2]fsr1
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	movlb 1	; select bank1
	movwf	(pid_calc@Error)^080h
	movlb 0	; select bank0
	movf	(1+(?___ftsub)),w
	movlb 1	; select bank1
	movwf	(pid_calc@Error+1)^080h
	movlb 0	; select bank0
	movf	(2+(?___ftsub)),w
	movlb 1	; select bank1
	movwf	(pid_calc@Error+2)^080h
	line	36
	
l18856:	
;PID.c: 36: if(limit_power_pid_flag==0x01)
	movlb 2	; select bank2
	decf	(_limit_power_pid_flag)^0100h,w
	skipz
	goto	u11581
	goto	u11580
u11581:
	goto	l18872
u11580:
	line	38
	
l18858:	
;PID.c: 37: {
;PID.c: 38: if((Error<=2)&&(Error>=-2))
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11591
	goto	u11590
u11591:
	goto	l18864
u11590:
	
l18860:	
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0xc0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11601
	goto	u11600
u11601:
	goto	l18864
u11600:
	line	40
	
l18862:	
;PID.c: 39: {
;PID.c: 40: Error=0;
	movlb 1	; select bank1
	clrf	(pid_calc@Error)^080h
	clrf	(pid_calc@Error+1)^080h
	clrf	(pid_calc@Error+2)^080h
	line	41
;PID.c: 41: }
	goto	l18904
	line	42
	
l18864:	
;PID.c: 42: else if(Error>=4)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x80
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11611
	goto	u11610
u11611:
	goto	l18868
u11610:
	line	44
	
l18866:	
;PID.c: 43: {
;PID.c: 44: dk=200.0;
	movlw	0x0
	movlb 1	; select bank1
	movwf	(pid_calc@dk)^080h
	movlw	0x48
	movwf	(pid_calc@dk+1)^080h
	movlw	0x43
	movwf	(pid_calc@dk+2)^080h
	line	45
;PID.c: 45: }
	goto	l18904
	line	46
	
l18868:	
;PID.c: 46: else if(Error<=-4)
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0xc0
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11621
	goto	u11620
u11621:
	goto	l851
u11620:
	line	48
	
l18870:	
;PID.c: 47: {
;PID.c: 48: dk=200.0;
	movlw	0x0
	movlb 1	; select bank1
	movwf	(pid_calc@dk)^080h
	movlw	0x48
	movwf	(pid_calc@dk+1)^080h
	movlw	0x43
	movwf	(pid_calc@dk+2)^080h
	goto	l18904
	line	50
	
l851:	
;PID.c: 49: }
;PID.c: 50: }
	goto	l18904
	line	53
	
l18872:	
;PID.c: 51: else
;PID.c: 52: {
;PID.c: 53: if(pid_index==0x01)
	movlb 1	; select bank1
	decf	(_pid_index)^080h,w
	skipz
	goto	u11631
	goto	u11630
u11631:
	goto	l18890
u11630:
	line	55
	
l18874:	
;PID.c: 54: {
;PID.c: 55: if((Error<=1)&&(Error>=-1))
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11641
	goto	u11640
u11641:
	goto	l18880
u11640:
	
l18876:	
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x80
	movwf	(___ftge@ff2+1)
	movlw	0xbf
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11651
	goto	u11650
u11651:
	goto	l18880
u11650:
	line	57
	
l18878:	
;PID.c: 56: {
;PID.c: 57: Error=0;
	movlb 1	; select bank1
	clrf	(pid_calc@Error)^080h
	clrf	(pid_calc@Error+1)^080h
	clrf	(pid_calc@Error+2)^080h
	line	58
;PID.c: 58: }
	goto	l18904
	line	59
	
l18880:	
;PID.c: 59: else if(Error>=3)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x40
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11661
	goto	u11660
u11661:
	goto	l18884
u11660:
	line	61
	
l18882:	
;PID.c: 60: {
;PID.c: 61: dk=200.0;
	movlw	0x0
	movlb 1	; select bank1
	movwf	(pid_calc@dk)^080h
	movlw	0x48
	movwf	(pid_calc@dk+1)^080h
	movlw	0x43
	movwf	(pid_calc@dk+2)^080h
	line	62
;PID.c: 62: }
	goto	l18904
	line	63
	
l18884:	
;PID.c: 63: else if(Error<=-3)
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x40
	movwf	(___ftge@ff1+1)
	movlw	0xc0
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11671
	goto	u11670
u11671:
	goto	l18888
u11670:
	line	65
	
l18886:	
;PID.c: 64: {
;PID.c: 65: dk=200.0;
	movlw	0x0
	movlb 1	; select bank1
	movwf	(pid_calc@dk)^080h
	movlw	0x48
	movwf	(pid_calc@dk+1)^080h
	movlw	0x43
	movwf	(pid_calc@dk+2)^080h
	line	66
;PID.c: 66: }
	goto	l18904
	line	69
	
l18888:	
;PID.c: 67: else
;PID.c: 68: {
;PID.c: 69: dk=200.0;
	movlw	0x0
	movlb 1	; select bank1
	movwf	(pid_calc@dk)^080h
	movlw	0x48
	movwf	(pid_calc@dk+1)^080h
	movlw	0x43
	movwf	(pid_calc@dk+2)^080h
	goto	l18904
	line	72
	
l18890:	
;PID.c: 72: else if(pid_index==0x02)
	movf	(_pid_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u11681
	goto	u11680
u11681:
	goto	l18904
u11680:
	line	74
	
l18892:	
;PID.c: 73: {
;PID.c: 74: if((Error<=1)&&(Error>=-1))
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlw	0x80
	movwf	(___ftge@ff1+1)
	movlw	0x3f
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11691
	goto	u11690
u11691:
	goto	l18898
u11690:
	
l18894:	
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x80
	movwf	(___ftge@ff2+1)
	movlw	0xbf
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11701
	goto	u11700
u11701:
	goto	l18898
u11700:
	line	76
	
l18896:	
;PID.c: 75: {
;PID.c: 76: Error=0;
	movlb 1	; select bank1
	clrf	(pid_calc@Error)^080h
	clrf	(pid_calc@Error+1)^080h
	clrf	(pid_calc@Error+2)^080h
	line	77
;PID.c: 77: }
	goto	l18904
	line	78
	
l18898:	
;PID.c: 78: else if((Error>=2)||(Error<=-2))
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u11711
	goto	u11710
u11711:
	goto	l18902
u11710:
	
l18900:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0xc0
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11721
	goto	u11720
u11721:
	goto	l18904
u11720:
	line	80
	
l18902:	
;PID.c: 79: {
;PID.c: 80: dk=100.0;
	movlw	0x0
	movlb 1	; select bank1
	movwf	(pid_calc@dk)^080h
	movlw	0xc8
	movwf	(pid_calc@dk+1)^080h
	movlw	0x42
	movwf	(pid_calc@dk+2)^080h
	line	87
	
l18904:	
;PID.c: 81: }
;PID.c: 82: }
;PID.c: 84: }
;PID.c: 87: pp->SumError += Error;
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f1+2)
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,012h
	moviw	[0]fsr1
	movwf	(___ftadd@f2)
	moviw	[1]fsr1
	movwf	(___ftadd@f2+1)
	moviw	[2]fsr1
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,012h
	movf	(0+(?___ftadd)),w
	movwi	[0]fsr1
	movf	(1+(?___ftadd)),w
	movwi	[1]fsr1
	movf	(2+(?___ftadd)),w
	movwi	[2]fsr1
	line	91
	
l18906:	
;PID.c: 91: if((pp->SumError)>=2) pp->SumError= 2;
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,012h
	moviw	[0]fsr1
	movwf	(___ftge@ff1)
	moviw	[1]fsr1
	movwf	(___ftge@ff1+1)
	moviw	[2]fsr1
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11731
	goto	u11730
u11731:
	goto	l18910
u11730:
	
l18908:	
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,012h
	movlw	0x0
	movwi	[0]fsr1
	movlw	0x0
	movwi	[1]fsr1
	movlw	0x40
	movwi	[2]fsr1
	goto	l18914
	line	92
	
l18910:	
;PID.c: 92: else if((pp->SumError)<=-2) pp->SumError= -2;
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0xc0
	movwf	(___ftge@ff1+2)
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,012h
	moviw	[0]fsr1
	movwf	(___ftge@ff2)
	moviw	[1]fsr1
	movwf	(___ftge@ff2+1)
	moviw	[2]fsr1
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11741
	goto	u11740
u11741:
	goto	l18914
u11740:
	
l18912:	
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,012h
	movlw	0x0
	movwi	[0]fsr1
	movlw	0x0
	movwi	[1]fsr1
	movlw	0xc0
	movwi	[2]fsr1
	line	94
	
l18914:	
;PID.c: 94: dError = pp->LastError - pp->PrevError;
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,0Fh
	moviw	[0]fsr1
	movwf	(___ftsub@f2)
	moviw	[1]fsr1
	movwf	(___ftsub@f2+1)
	moviw	[2]fsr1
	movwf	(___ftsub@f2+2)
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,0Ch
	moviw	[0]fsr1
	movwf	(___ftsub@f1)
	moviw	[1]fsr1
	movwf	(___ftsub@f1+1)
	moviw	[2]fsr1
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	movlb 1	; select bank1
	movwf	(pid_calc@dError)^080h
	movlb 0	; select bank0
	movf	(1+(?___ftsub)),w
	movlb 1	; select bank1
	movwf	(pid_calc@dError+1)^080h
	movlb 0	; select bank0
	movf	(2+(?___ftsub)),w
	movlb 1	; select bank1
	movwf	(pid_calc@dError+2)^080h
	line	96
	
l18916:	
;PID.c: 96: pp->PrevError = pp->LastError;
	movlb 0	; select bank0
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,0Ch
	moviw	[0]fsr1
	movwf	((??_pid_calc+0)+0)
	moviw	[1]fsr1
	movwf	((??_pid_calc+0)+0+1)
	moviw	[2]fsr1
	movwf	((??_pid_calc+0)+0+2)
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,0Fh
	movf	0+(??_pid_calc+0)+0,w
	movwi	[0]fsr1
	movf	1+(??_pid_calc+0)+0,w
	movwi	[1]fsr1
	movf	2+(??_pid_calc+0)+0,w
	movwi	[2]fsr1
	line	98
	
l18918:	
;PID.c: 98: pp->LastError = Error;
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,0Ch
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movwi	[0]fsr1
	movf	(pid_calc@Error+1)^080h,w
	movwi	[1]fsr1
	movf	(pid_calc@Error+2)^080h,w
	movwi	[2]fsr1
	line	100
	
l18920:	
;PID.c: 100: PWM_var=(pp->Proportion * Error*dk + pp->Integral * pp->SumError + pp->Derivative * dError ) ;
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+2)
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,03h
	moviw	[0]fsr1
	movwf	(___ftmul@f2)
	moviw	[1]fsr1
	movwf	(___ftmul@f2+1)
	moviw	[2]fsr1
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 1	; select bank1
	movwf	(_pid_calc$2834)^080h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 1	; select bank1
	movwf	(_pid_calc$2834+1)^080h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 1	; select bank1
	movwf	(_pid_calc$2834+2)^080h
	
l18922:	
;PID.c: 100: PWM_var=(pp->Proportion * Error*dk + pp->Integral * pp->SumError + pp->Derivative * dError ) ;
	movlb 0	; select bank0
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,012h
	moviw	[0]fsr1
	movwf	(___ftmul@f1)
	moviw	[1]fsr1
	movwf	(___ftmul@f1+1)
	moviw	[2]fsr1
	movwf	(___ftmul@f1+2)
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,06h
	moviw	[0]fsr1
	movwf	(___ftmul@f2)
	moviw	[1]fsr1
	movwf	(___ftmul@f2+1)
	moviw	[2]fsr1
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f1+2)
	movlb 1	; select bank1
	movf	(pid_calc@dk)^080h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlb 1	; select bank1
	movf	(pid_calc@dk+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+1)
	movlb 1	; select bank1
	movf	(pid_calc@dk+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+2)
	movlb 1	; select bank1
	movf	(_pid_calc$2834)^080h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2)
	movlb 1	; select bank1
	movf	(_pid_calc$2834+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+1)
	movlb 1	; select bank1
	movf	(_pid_calc$2834+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movlb 1	; select bank1
	movwf	(_pid_calc$2835)^080h
	movlb 0	; select bank0
	movf	(1+(?___ftadd)),w
	movlb 1	; select bank1
	movwf	(_pid_calc$2835+1)^080h
	movlb 0	; select bank0
	movf	(2+(?___ftadd)),w
	movlb 1	; select bank1
	movwf	(_pid_calc$2835+2)^080h
	
l18924:	
;PID.c: 100: PWM_var=(pp->Proportion * Error*dk + pp->Integral * pp->SumError + pp->Derivative * dError ) ;
	movf	(pid_calc@dError)^080h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlb 1	; select bank1
	movf	(pid_calc@dError+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+1)
	movlb 1	; select bank1
	movf	(pid_calc@dError+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftmul@f1+2)
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,09h
	moviw	[0]fsr1
	movwf	(___ftmul@f2)
	moviw	[1]fsr1
	movwf	(___ftmul@f2+1)
	moviw	[2]fsr1
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f1+2)
	movlb 1	; select bank1
	movf	(_pid_calc$2835)^080h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2)
	movlb 1	; select bank1
	movf	(_pid_calc$2835+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2+1)
	movlb 1	; select bank1
	movf	(_pid_calc$2835+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var)^080h
	movlb 0	; select bank0
	movf	(1+(?___ftadd)),w
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+1)^080h
	movlb 0	; select bank0
	movf	(2+(?___ftadd)),w
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+2)^080h
	line	103
	
l18926:	
;PID.c: 103: if((Error>=3 && Error<=5)||(Error<=-3 && Error>=-5))
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x40
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11751
	goto	u11750
u11751:
	goto	l18930
u11750:
	
l18928:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0xa0
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u11761
	goto	u11760
u11761:
	goto	l18934
u11760:
	
l18930:	
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x40
	movwf	(___ftge@ff1+1)
	movlw	0xc0
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11771
	goto	u11770
u11771:
	goto	l18942
u11770:
	
l18932:	
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xa0
	movwf	(___ftge@ff2+1)
	movlw	0xc0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11781
	goto	u11780
u11781:
	goto	l18942
u11780:
	line	105
	
l18934:	
;PID.c: 104: {
;PID.c: 105: if(PWM_var>=2)PWM_var = 2;
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11791
	goto	u11790
u11791:
	goto	l18938
u11790:
	
l18936:	
	movlw	0x0
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0x40
	movwf	(pid_calc@PWM_var+2)^080h
	goto	l881
	line	106
	
l18938:	
;PID.c: 106: else if(PWM_var <= -2)PWM_var = -2;
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0xc0
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11801
	goto	u11800
u11801:
	goto	l881
u11800:
	
l18940:	
	movlw	0x0
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0xc0
	movwf	(pid_calc@PWM_var+2)^080h
	goto	l881
	line	108
	
l18942:	
;PID.c: 108: else if((Error>5)||(Error<-5))
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0xa0
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11811
	goto	u11810
u11811:
	goto	l18946
u11810:
	
l18944:	
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xa0
	movwf	(___ftge@ff2+1)
	movlw	0xc0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u11821
	goto	u11820
u11821:
	goto	l18954
u11820:
	line	110
	
l18946:	
;PID.c: 109: {
;PID.c: 110: if(PWM_var>=5)PWM_var = 5;
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xa0
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11831
	goto	u11830
u11831:
	goto	l18950
u11830:
	
l18948:	
	movlw	0x0
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var)^080h
	movlw	0xa0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0x40
	movwf	(pid_calc@PWM_var+2)^080h
	goto	l881
	line	111
	
l18950:	
;PID.c: 111: else if(PWM_var <= -5)PWM_var = -5;
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0xa0
	movwf	(___ftge@ff1+1)
	movlw	0xc0
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11841
	goto	u11840
u11841:
	goto	l881
u11840:
	
l18952:	
	movlw	0x0
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var)^080h
	movlw	0xa0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0xc0
	movwf	(pid_calc@PWM_var+2)^080h
	goto	l881
	line	115
	
l18954:	
;PID.c: 113: else
;PID.c: 114: {
;PID.c: 115: if(have_person1_flag)
	movlb 1	; select bank1
	movf	(_have_person1_flag)^080h,w
	skipz
	goto	u11850
	goto	l18964
u11850:
	line	117
	
l18956:	
;PID.c: 116: {
;PID.c: 117: if(PWM_var>=0.5)PWM_var = 2;
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x3f
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11861
	goto	u11860
u11861:
	goto	l18960
u11860:
	
l18958:	
	movlw	0x0
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0x40
	movwf	(pid_calc@PWM_var+2)^080h
	goto	l881
	line	118
	
l18960:	
;PID.c: 118: else if(PWM_var <= -0.5)PWM_var = -2;
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0xbf
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11871
	goto	u11870
u11871:
	goto	l881
u11870:
	
l18962:	
	movlw	0x0
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0xc0
	movwf	(pid_calc@PWM_var+2)^080h
	goto	l881
	line	122
	
l18964:	
;PID.c: 120: else
;PID.c: 121: {
;PID.c: 122: if(PWM_var>=0.5)PWM_var = 0.5;
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x3f
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11881
	goto	u11880
u11881:
	goto	l18968
u11880:
	
l18966:	
	movlw	0x0
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0x3f
	movwf	(pid_calc@PWM_var+2)^080h
	goto	l881
	line	123
	
l18968:	
;PID.c: 123: else if(PWM_var <= -0.5)PWM_var = -0.5;
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0xbf
	movwf	(___ftge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u11891
	goto	u11890
u11891:
	goto	l881
u11890:
	
l18970:	
	movlw	0x0
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0xbf
	movwf	(pid_calc@PWM_var+2)^080h
	line	126
	
l881:	
	line	129
;PID.c: 124: }
;PID.c: 126: }
;PID.c: 129: return (PWM_var );
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(?_pid_calc)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(?_pid_calc+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(?_pid_calc+2)
	line	130
	
l897:	
	return
	opt stack 0
GLOBAL	__end_of_pid_calc
	__end_of_pid_calc:
	signat	_pid_calc,8315
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 18 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   46[BANK0 ] float 
;;  f1              3   49[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   46[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_pid_calc
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftsub.c"
	line	18
global __ptext18
__ptext18:	;psect for function ___ftsub
psect	text18
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftsub.c"
	line	18
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
;incstack = 0
	opt	stack 9
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l19294:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	24
	
l19296:	
	movf	(___ftsub@f1),w
	movwf	(___ftadd@f1)
	movf	(___ftsub@f1+1),w
	movwf	(___ftadd@f1+1)
	movf	(___ftsub@f1+2),w
	movwf	(___ftadd@f1+2)
	movf	(___ftsub@f2),w
	movwf	(___ftadd@f2)
	movf	(___ftsub@f2+1),w
	movwf	(___ftadd@f2+1)
	movf	(___ftsub@f2+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	line	25
	
l2165:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3   49[BANK0 ] float 
;;  ff2             3   52[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_auto_system
;;		_pid_calc
;;		_handle_ad_loop
;;		_Mppt_Charge
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftge.c"
	line	4
global __ptext19
__ptext19:	;psect for function ___ftge
psect	text19
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 11
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l19222:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u12381
	goto	u12380
u12381:
	goto	l19226
u12380:
	line	7
	
l19224:	
	movf	(___ftge@ff1),w
	sublw	0
	movwf	(___ftge@ff1)
	movf	(___ftge@ff1+1),w
	skipc
	incfsz	(___ftge@ff1+1),w
	sublw	0
	movwf	1+(___ftge@ff1)
	movf	(___ftge@ff1+2),w
	skipc
	incfsz	(___ftge@ff1+2),w
	sublw	080h
	movwf	2+(___ftge@ff1)
	line	8
	
l19226:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u12391
	goto	u12390
u12391:
	goto	l19230
u12390:
	line	9
	
l19228:	
	movf	(___ftge@ff2),w
	sublw	0
	movwf	(___ftge@ff2)
	movf	(___ftge@ff2+1),w
	skipc
	incfsz	(___ftge@ff2+1),w
	sublw	0
	movwf	1+(___ftge@ff2)
	movf	(___ftge@ff2+2),w
	skipc
	incfsz	(___ftge@ff2+2),w
	sublw	080h
	movwf	2+(___ftge@ff2)
	line	10
	
l19230:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l19232:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l19234:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u12405
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u12405
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u12405:
	skipnc
	goto	u12401
	goto	u12400
u12401:
	goto	l19238
u12400:
	
l19236:	
	clrc
	
	goto	l2143
	
l19238:	
	setc
	
	line	13
	
l2143:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   11[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   11[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_read_param_eeprom
;;		_pid_calc
;;		_handle_ad_loop
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awtoft.c"
	line	32
global __ptext20
__ptext20:	;psect for function ___awtoft
psect	text20
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 10
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l19092:	
	clrf	(___awtoft@sign)
	line	37
	
l19094:	
	btfss	(___awtoft@c+1),7
	goto	u12141
	goto	u12140
u12141:
	goto	l19100
u12140:
	line	38
	
l19096:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l19098:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l19100:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	line	42
	
l2072:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   16[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_auto_system
;;		_handle_ad_loop
;;		_Mppt_Charge
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwtoft.c"
	line	28
global __ptext21
__ptext21:	;psect for function ___lwtoft
psect	text21
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 10
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l19394:	
	movf	(___lwtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lwtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	line	31
	
l2284:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   49[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   57[BANK0 ] unsigned long 
;;  exp1            1   61[BANK0 ] unsigned char 
;;  sign1           1   56[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   49[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      13       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_ad_loop
;;		_handle_task_process
;;		_Mppt_Charge
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\fttol.c"
	line	44
global __ptext22
__ptext22:	;psect for function ___fttol
psect	text22
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 12
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l19300:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u12471
	goto	u12470
u12471:
	goto	l19304
u12470:
	line	50
	
l19302:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l2169
	line	51
	
l19304:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u12485:
	lsrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u12480:
	decfsz	wreg,f
	goto	u12485
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l19306:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l19308:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l19310:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l19312:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l19314:	
	btfss	(___fttol@exp1),7
	goto	u12491
	goto	u12490
u12491:
	goto	l19324
u12490:
	line	57
	
l19316:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u12501
	goto	u12500
u12501:
	goto	l19320
u12500:
	goto	l19302
	line	60
	
l19320:	
	lsrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l19322:	
	incfsz	(___fttol@exp1),f
	goto	u12511
	goto	u12510
u12511:
	goto	l19320
u12510:
	goto	l19330
	line	63
	
l19324:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u12521
	goto	u12520
u12521:
	goto	l2176
u12520:
	goto	l19302
	line	66
	
l19328:	
	lslf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l2176:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u12531
	goto	u12530
u12531:
	goto	l19328
u12530:
	line	70
	
l19330:	
	movf	(___fttol@sign1),w
	skipz
	goto	u12540
	goto	l19334
u12540:
	line	71
	
l19332:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	line	72
	
l19334:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l2169:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	_Enable_Buck_Pwm

;; *************** function _Enable_Buck_Pwm *****************
;; Defined at:
;;		line 123 in file "D:\MCUProject\ZH-SL-H40\src\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/8
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_ad_loop
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\pwm.c"
	line	123
global __ptext23
__ptext23:	;psect for function _Enable_Buck_Pwm
psect	text23
	file	"D:\MCUProject\ZH-SL-H40\src\pwm.c"
	line	123
	global	__size_of_Enable_Buck_Pwm
	__size_of_Enable_Buck_Pwm	equ	__end_of_Enable_Buck_Pwm-_Enable_Buck_Pwm
	
_Enable_Buck_Pwm:	
;incstack = 0
	opt	stack 12
; Regs used in _Enable_Buck_Pwm: []
	line	125
	
l18974:	
;pwm.c: 125: TRISCbits.TRISC2=0;
	bcf	(142)^080h,2	;volatile
	line	127
;pwm.c: 127: TMR6ON=1;
	movlb 8	; select bank8
	bsf	(8434/8)^0400h,(8434)&7	;volatile
	line	129
	
l964:	
	return
	opt stack 0
GLOBAL	__end_of_Enable_Buck_Pwm
	__end_of_Enable_Buck_Pwm:
	signat	_Enable_Buck_Pwm,88
	global	_driver_init

;; *************** function _driver_init *****************
;; Defined at:
;;		line 214 in file "D:\MCUProject\ZH-SL-H40\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/2
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Init_Ird
;;		_init_adc
;;		_init_interrupt
;;		_init_key
;;		_init_osc
;;		_init_port
;;		_init_pwm
;;		_init_timer1
;;		_init_uart1
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\main.c"
	line	214
global __ptext24
__ptext24:	;psect for function _driver_init
psect	text24
	file	"D:\MCUProject\ZH-SL-H40\src\main.c"
	line	214
	global	__size_of_driver_init
	__size_of_driver_init	equ	__end_of_driver_init-_driver_init
	
_driver_init:	
;incstack = 0
	opt	stack 12
; Regs used in _driver_init: [wreg+status,2+status,0+pclath+cstack]
	line	216
	
l13268:	
;main.c: 216: init_osc();
	fcall	_init_osc
	line	218
	
l13270:	
;main.c: 218: init_port();
	fcall	_init_port
	line	220
	
l13272:	
;main.c: 220: init_key();
	fcall	_init_key
	line	222
;main.c: 222: init_timer1();
	fcall	_init_timer1
	line	224
;main.c: 224: init_uart1();
	fcall	_init_uart1
	line	226
;main.c: 226: Init_Ird();
	fcall	_Init_Ird
	line	228
;main.c: 228: init_adc();
	fcall	_init_adc
	line	230
;main.c: 230: init_pwm();
	fcall	_init_pwm
	line	232
;main.c: 232: init_interrupt();
	fcall	_init_interrupt
	line	235
	
l799:	
	return
	opt stack 0
GLOBAL	__end_of_driver_init
	__end_of_driver_init:
	signat	_driver_init,88
	global	_init_uart1

;; *************** function _init_uart1 *****************
;; Defined at:
;;		line 81 in file "D:\MCUProject\ZH-SL-H40\src\uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/1
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\uart.c"
	line	81
global __ptext25
__ptext25:	;psect for function _init_uart1
psect	text25
	file	"D:\MCUProject\ZH-SL-H40\src\uart.c"
	line	81
	global	__size_of_init_uart1
	__size_of_init_uart1	equ	__end_of_init_uart1-_init_uart1
	
_init_uart1:	
;incstack = 0
	opt	stack 12
; Regs used in _init_uart1: [wreg+status,2]
	line	84
	
l13282:	
;uart.c: 84: SP1BRGL = 0x40;
	movlw	(040h)
	movlb 3	; select bank3
	movwf	(411)^0180h	;volatile
	line	85
;uart.c: 85: SP1BRGH = 0x03;
	movlw	(03h)
	movwf	(412)^0180h	;volatile
	line	86
;uart.c: 86: BAUDCON = 0x08;
	movlw	(08h)
	movwf	(415)^0180h	;volatile
	line	96
	
l13284:	
;uart.c: 96: (TRISCbits.TRISC6) = 0x01;
	movlb 1	; select bank1
	bsf	(142)^080h,6	;volatile
	line	97
	
l13286:	
;uart.c: 97: (TRISCbits.TRISC7) = 0x01;
	bsf	(142)^080h,7	;volatile
	line	98
	
l13288:	
;uart.c: 98: TXSTA = 0x00;
	movlb 3	; select bank3
	clrf	(414)^0180h	;volatile
	line	107
	
l13290:	
;uart.c: 107: RCSTA = 0x90;
	movlw	(090h)
	movwf	(413)^0180h	;volatile
	line	108
	
l13292:	
;uart.c: 108: RCIE = 0x01;
	movlb 1	; select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	109
	
l1765:	
	return
	opt stack 0
GLOBAL	__end_of_init_uart1
	__end_of_init_uart1:
	signat	_init_uart1,88
	global	_init_timer1

;; *************** function _init_timer1 *****************
;; Defined at:
;;		line 42 in file "D:\MCUProject\ZH-SL-H40\src\timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17F/0
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\timer.c"
	line	42
global __ptext26
__ptext26:	;psect for function _init_timer1
psect	text26
	file	"D:\MCUProject\ZH-SL-H40\src\timer.c"
	line	42
	global	__size_of_init_timer1
	__size_of_init_timer1	equ	__end_of_init_timer1-_init_timer1
	
_init_timer1:	
;incstack = 0
	opt	stack 12
; Regs used in _init_timer1: [wreg]
	line	44
	
l13274:	
;timer.c: 44: TMR1H = 0xE0;
	movlw	(0E0h)
	movlb 0	; select bank0
	movwf	(23)	;volatile
	line	45
;timer.c: 45: TMR1L = 0xC0;
	movlw	(0C0h)
	movwf	(22)	;volatile
	line	46
;timer.c: 46: T1CON = 0x60;
	movlw	(060h)
	movwf	(24)	;volatile
	line	50
	
l13276:	
;timer.c: 50: T1GCONbits.TMR1GE=0;
	bcf	(25),7	;volatile
	line	52
	
l13278:	
;timer.c: 52: TMR1IE = 0x01;
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	53
	
l13280:	
;timer.c: 53: TMR1ON =0;
	movlb 0	; select bank0
	bcf	(192/8),(192)&7	;volatile
	line	54
	
l1580:	
	return
	opt stack 0
GLOBAL	__end_of_init_timer1
	__end_of_init_timer1:
	signat	_init_timer1,88
	global	_init_pwm

;; *************** function _init_pwm *****************
;; Defined at:
;;		line 30 in file "D:\MCUProject\ZH-SL-H40\src\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\pwm.c"
	line	30
global __ptext27
__ptext27:	;psect for function _init_pwm
psect	text27
	file	"D:\MCUProject\ZH-SL-H40\src\pwm.c"
	line	30
	global	__size_of_init_pwm
	__size_of_init_pwm	equ	__end_of_init_pwm-_init_pwm
	
_init_pwm:	
;incstack = 0
	opt	stack 12
; Regs used in _init_pwm: [wreg+status,2+status,0]
	line	33
	
l13294:	
;pwm.c: 33: TRISCbits.TRISC2=1;
	movlb 1	; select bank1
	bsf	(142)^080h,2	;volatile
	line	35
;pwm.c: 35: TRISBbits.TRISB2=1;
	bsf	(141)^080h,2	;volatile
	line	37
;pwm.c: 37: TRISBbits.TRISB5 =1;
	bsf	(141)^080h,5	;volatile
	line	39
;pwm.c: 39: APFCONbits.CCP3SEL=1;
	movlb 2	; select bank2
	bsf	(285)^0100h,6	;volatile
	line	45
	
l13296:	
;pwm.c: 45: PR6=0xFF;
	movlw	(0FFh)
	movlb 8	; select bank8
	movwf	(1053)^0400h	;volatile
	line	47
	
l13298:	
;pwm.c: 47: CCP1CONbits.CCP1M=0b1100;
	movlb 5	; select bank5
	movf	(659)^0280h,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	(659)^0280h	;volatile
	line	49
	
l13300:	
;pwm.c: 49: CCP1CONbits.P1M=0b10;
	movf	(659)^0280h,w	;volatile
	andlw	not (((1<<2)-1)<<6)
	iorlw	(02h & ((1<<2)-1))<<6
	movwf	(659)^0280h	;volatile
	line	51
	
l13302:	
;pwm.c: 51: CCPTMRS0bits.C1TSEL=0b10;
	movf	(670)^0280h,w	;volatile
	andlw	not (((1<<2)-1)<<0)
	iorlw	(02h & ((1<<2)-1))<<0
	movwf	(670)^0280h	;volatile
	line	53
	
l13304:	
;pwm.c: 53: CCPR1L=0x00;
	clrf	(657)^0280h	;volatile
	line	55
	
l13306:	
;pwm.c: 55: CCP1CONbits.DC1B=0b00;
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	(659)^0280h,f	;volatile
	line	57
	
l13308:	
;pwm.c: 57: TMR6IF=0;
	movlb 0	; select bank0
	bcf	(155/8),(155)&7	;volatile
	line	59
	
l13310:	
;pwm.c: 59: T6CONbits.T6OUTPS=0b0000;
	movlw	((0 & ((1<<4)-1))<<3)|not (((1<<4)-1)<<3)
	movlb 8	; select bank8
	andwf	(1054)^0400h,f	;volatile
	line	61
	
l13312:	
;pwm.c: 61: TMR6ON=0;
	bcf	(8434/8)^0400h,(8434)&7	;volatile
	line	63
	
l13314:	
;pwm.c: 63: T6CONbits.T6CKPS=0b00;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	(1054)^0400h,f	;volatile
	line	69
	
l13316:	
;pwm.c: 69: PR4=0x9F;
	movlw	(09Fh)
	movwf	(1046)^0400h	;volatile
	line	71
	
l13318:	
;pwm.c: 71: CCP3CONbits.CCP3M=0b1100;
	movlb 6	; select bank6
	movf	(787)^0300h,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	(787)^0300h	;volatile
	line	73
	
l13320:	
;pwm.c: 73: CCP3CONbits.P3M=0b00;
	movlw	((0 & ((1<<2)-1))<<6)|not (((1<<2)-1)<<6)
	andwf	(787)^0300h,f	;volatile
	line	75
	
l13322:	
;pwm.c: 75: CCPTMRS0bits.C3TSEL=0b01;
	movlb 5	; select bank5
	movf	(670)^0280h,w	;volatile
	andlw	not (((1<<2)-1)<<4)
	iorlw	(01h & ((1<<2)-1))<<4
	movwf	(670)^0280h	;volatile
	line	77
	
l13324:	
;pwm.c: 77: CCPR3L=0x00;
	movlb 6	; select bank6
	clrf	(785)^0300h	;volatile
	line	79
;pwm.c: 79: CCP3CONbits.DC3B=0b00;
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	(787)^0300h,f	;volatile
	line	81
	
l13326:	
;pwm.c: 81: TMR4IF=0;
	movlb 0	; select bank0
	bcf	(153/8),(153)&7	;volatile
	line	83
;pwm.c: 83: T4CONbits.T4OUTPS=0b0000;
	movlw	((0 & ((1<<4)-1))<<3)|not (((1<<4)-1)<<3)
	movlb 8	; select bank8
	andwf	(1047)^0400h,f	;volatile
	line	85
	
l13328:	
;pwm.c: 85: TMR4ON=0;
	bcf	(8378/8)^0400h,(8378)&7	;volatile
	line	87
;pwm.c: 87: T4CONbits.T4CKPS=0b00;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	(1047)^0400h,f	;volatile
	line	91
	
l13330:	
;pwm.c: 91: TRISAbits.TRISA4=0;
	movlb 1	; select bank1
	bcf	(140)^080h,4	;volatile
	line	93
	
l13332:	
;pwm.c: 93: PR2=0xCE;
	movlw	(0CEh)
	movlb 0	; select bank0
	movwf	(27)	;volatile
	line	95
	
l13334:	
;pwm.c: 95: CCP5CONbits.CCP5M=0b1100;
	movlb 6	; select bank6
	movf	(798)^0300h,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	(798)^0300h	;volatile
	line	97
	
l13336:	
;pwm.c: 97: CCP5CONbits.P5M=0b00;
	movlw	((0 & ((1<<2)-1))<<6)|not (((1<<2)-1)<<6)
	andwf	(798)^0300h,f	;volatile
	line	99
	
l13338:	
;pwm.c: 99: CCPTMRS1bits.C5TSEL=0b00;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	movlb 5	; select bank5
	andwf	(671)^0280h,f	;volatile
	line	101
;pwm.c: 101: CCPR5L=(unsigned char)(0x114>>2);
	movlw	(045h)
	movlb 6	; select bank6
	movwf	(796)^0300h	;volatile
	line	103
	
l13340:	
;pwm.c: 103: CCP5CONbits.DC5B=(unsigned char)(0x114&0b11);
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	(798)^0300h,f	;volatile
	line	105
	
l13342:	
;pwm.c: 105: TMR2IF=0;
	movlb 0	; select bank0
	bcf	(137/8),(137)&7	;volatile
	line	107
	
l13344:	
;pwm.c: 107: T2CONbits.T2OUTPS=0b0000;
	movlw	((0 & ((1<<4)-1))<<3)|not (((1<<4)-1)<<3)
	andwf	(28),f	;volatile
	line	109
	
l13346:	
;pwm.c: 109: TMR2ON=0;
	bcf	(226/8),(226)&7	;volatile
	line	111
	
l13348:	
;pwm.c: 111: T2CONbits.T2CKPS=0b00;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	(28),f	;volatile
	line	113
	
l961:	
	return
	opt stack 0
GLOBAL	__end_of_init_pwm
	__end_of_init_pwm:
	signat	_init_pwm,88
	global	_init_port

;; *************** function _init_port *****************
;; Defined at:
;;		line 174 in file "D:\MCUProject\ZH-SL-H40\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17F/2
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\main.c"
	line	174
global __ptext28
__ptext28:	;psect for function _init_port
psect	text28
	file	"D:\MCUProject\ZH-SL-H40\src\main.c"
	line	174
	global	__size_of_init_port
	__size_of_init_port	equ	__end_of_init_port-_init_port
	
_init_port:	
;incstack = 0
	opt	stack 12
; Regs used in _init_port: [status,2]
	line	176
	
l13234:	
;main.c: 176: ANSELA = 0x00;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	177
;main.c: 177: ANSELB = 0x00;
	clrf	(397)^0180h	;volatile
	line	179
	
l13236:	
;main.c: 179: ANSA0 = 1;
	bsf	(3168/8)^0180h,(3168)&7	;volatile
	line	180
	
l13238:	
;main.c: 180: ANSA1 = 1;
	bsf	(3169/8)^0180h,(3169)&7	;volatile
	line	181
	
l13240:	
;main.c: 181: ANSA2 = 1;
	bsf	(3170/8)^0180h,(3170)&7	;volatile
	line	182
	
l13242:	
;main.c: 182: ANSA3 = 1;
	bsf	(3171/8)^0180h,(3171)&7	;volatile
	line	183
	
l13244:	
;main.c: 183: ANSA5 = 1;
	bsf	(3173/8)^0180h,(3173)&7	;volatile
	line	185
	
l13246:	
;main.c: 185: ANSB1 = 1;
	bsf	(3177/8)^0180h,(3177)&7	;volatile
	line	186
	
l13248:	
;main.c: 186: ANSB3 = 1;
	bsf	(3179/8)^0180h,(3179)&7	;volatile
	line	187
	
l13250:	
;main.c: 187: ANSB0 = 1;
	bsf	(3176/8)^0180h,(3176)&7	;volatile
	line	189
	
l13252:	
;main.c: 189: TRISCbits.TRISC1=1;
	movlb 1	; select bank1
	bsf	(142)^080h,1	;volatile
	line	191
	
l13254:	
;main.c: 191: TRISCbits.TRISC3=0;
	bcf	(142)^080h,3	;volatile
	line	193
	
l13256:	
;main.c: 193: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	195
	
l13258:	
;main.c: 195: TRISCbits.TRISC2=1;
	movlb 1	; select bank1
	bsf	(142)^080h,2	;volatile
	line	197
	
l13260:	
;main.c: 197: TRISBbits.TRISB2=1;
	bsf	(141)^080h,2	;volatile
	line	199
	
l13262:	
;main.c: 199: TRISBbits.TRISB5 =1;
	bsf	(141)^080h,5	;volatile
	line	201
	
l13264:	
;main.c: 201: TRISCbits.TRISC0 = 0;
	bcf	(142)^080h,0	;volatile
	line	202
	
l13266:	
;main.c: 202: (LATCbits.LATC0 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,0	;volatile
	line	203
	
l796:	
	return
	opt stack 0
GLOBAL	__end_of_init_port
	__end_of_init_port:
	signat	_init_port,88
	global	_init_osc

;; *************** function _init_osc *****************
;; Defined at:
;;		line 157 in file "D:\MCUProject\ZH-SL-H40\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/1
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	line	157
global __ptext29
__ptext29:	;psect for function _init_osc
psect	text29
	file	"D:\MCUProject\ZH-SL-H40\src\main.c"
	line	157
	global	__size_of_init_osc
	__size_of_init_osc	equ	__end_of_init_osc-_init_osc
	
_init_osc:	
;incstack = 0
	opt	stack 12
; Regs used in _init_osc: [wreg+status,2+status,0]
	line	159
	
l13230:	
;main.c: 159: OSCCON = 0x70;
	movlw	(070h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	160
	
l13232:	
;main.c: 160: WDTCONbits.WDTPS=0b01110;
	movf	(151)^080h,w	;volatile
	andlw	not (((1<<5)-1)<<1)
	iorlw	(0Eh & ((1<<5)-1))<<1
	movwf	(151)^080h	;volatile
	line	161
	
l793:	
	return
	opt stack 0
GLOBAL	__end_of_init_osc
	__end_of_init_osc:
	signat	_init_osc,88
	global	_init_key

;; *************** function _init_key *****************
;; Defined at:
;;		line 46 in file "D:\MCUProject\ZH-SL-H40\src\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 17F/2
;;		On exit  : 17F/1
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\key.c"
	line	46
global __ptext30
__ptext30:	;psect for function _init_key
psect	text30
	file	"D:\MCUProject\ZH-SL-H40\src\key.c"
	line	46
	global	__size_of_init_key
	__size_of_init_key	equ	__end_of_init_key-_init_key
	
_init_key:	
;incstack = 0
	opt	stack 12
; Regs used in _init_key: []
	line	48
	
l12952:	
;key.c: 48: (TRISBbits.TRISB4) = 1;
	movlb 1	; select bank1
	bsf	(141)^080h,4	;volatile
	line	49
;key.c: 49: (TRISCbits.TRISC6) = 1;
	bsf	(142)^080h,6	;volatile
	line	50
;key.c: 50: (TRISCbits.TRISC5) = 1;
	bsf	(142)^080h,5	;volatile
	line	51
;key.c: 51: (TRISCbits.TRISC4) = 1;
	bsf	(142)^080h,4	;volatile
	line	54
	
l637:	
	return
	opt stack 0
GLOBAL	__end_of_init_key
	__end_of_init_key:
	signat	_init_key,88
	global	_init_interrupt

;; *************** function _init_interrupt *****************
;; Defined at:
;;		line 523 in file "D:\MCUProject\ZH-SL-H40\src\interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/2
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\interrupt.c"
	line	523
global __ptext31
__ptext31:	;psect for function _init_interrupt
psect	text31
	file	"D:\MCUProject\ZH-SL-H40\src\interrupt.c"
	line	523
	global	__size_of_init_interrupt
	__size_of_init_interrupt	equ	__end_of_init_interrupt-_init_interrupt
	
_init_interrupt:	
;incstack = 0
	opt	stack 12
; Regs used in _init_interrupt: [wreg+status,2+status,0]
	line	528
	
l12438:	
;interrupt.c: 528: CM1CON0bits.C1POL=0;
	movlb 2	; select bank2
	bcf	(273)^0100h,4	;volatile
	line	530
;interrupt.c: 530: CM1CON0bits.C1OE=0;
	bcf	(273)^0100h,5	;volatile
	line	532
;interrupt.c: 532: CM1CON0bits.C1SP=1;
	bsf	(273)^0100h,2	;volatile
	line	534
;interrupt.c: 534: CM1CON0bits.C1HYS=1;
	bsf	(273)^0100h,1	;volatile
	line	536
;interrupt.c: 536: CM1CON0bits.C1SYNC=0;
	bcf	(273)^0100h,0	;volatile
	line	538
;interrupt.c: 538: CM1CON1bits.C1INTN=1;
	bsf	(274)^0100h,6	;volatile
	line	540
	
l12440:	
;interrupt.c: 540: CM1CON1bits.C1PCH=0b00;
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	(274)^0100h,f	;volatile
	line	542
;interrupt.c: 542: CM1CON1bits.C1NCH=0b00;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	(274)^0100h,f	;volatile
	line	544
	
l12442:	
;interrupt.c: 544: PIE2bits.C1IE=1;
	movlb 1	; select bank1
	bsf	(146)^080h,5	;volatile
	line	546
	
l12444:	
;interrupt.c: 546: PIR2bits.C1IF=0;
	movlb 0	; select bank0
	bcf	(18),5	;volatile
	line	548
	
l12446:	
;interrupt.c: 548: CM1CON0bits.C1ON=1;
	movlb 2	; select bank2
	bsf	(273)^0100h,7	;volatile
	line	550
	
l12448:	
;interrupt.c: 550: PEIE = 0x01;
	bsf	(94/8),(94)&7	;volatile
	line	551
	
l12450:	
;interrupt.c: 551: GIE = 0x01;
	bsf	(95/8),(95)&7	;volatile
	line	552
	
l295:	
	return
	opt stack 0
GLOBAL	__end_of_init_interrupt
	__end_of_init_interrupt:
	signat	_init_interrupt,88
	global	_init_adc

;; *************** function _init_adc *****************
;; Defined at:
;;		line 37 in file "D:\MCUProject\ZH-SL-H40\src\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\adc.c"
	line	37
global __ptext32
__ptext32:	;psect for function _init_adc
psect	text32
	file	"D:\MCUProject\ZH-SL-H40\src\adc.c"
	line	37
	global	__size_of_init_adc
	__size_of_init_adc	equ	__end_of_init_adc-_init_adc
	
_init_adc:	
;incstack = 0
	opt	stack 12
; Regs used in _init_adc: [wreg+status,2+status,0]
	line	40
	
l12392:	
;adc.c: 40: TRISAbits.TRISA0 = 1;
	movlb 1	; select bank1
	bsf	(140)^080h,0	;volatile
	line	42
;adc.c: 42: TRISAbits.TRISA1 = 1;
	bsf	(140)^080h,1	;volatile
	line	44
;adc.c: 44: TRISAbits.TRISA2 = 1;
	bsf	(140)^080h,2	;volatile
	line	46
;adc.c: 46: TRISAbits.TRISA3 = 1;
	bsf	(140)^080h,3	;volatile
	line	48
;adc.c: 48: TRISAbits.TRISA5 = 1;
	bsf	(140)^080h,5	;volatile
	line	50
;adc.c: 50: TRISBbits.TRISB3 = 1;
	bsf	(141)^080h,3	;volatile
	line	52
;adc.c: 52: TRISBbits.TRISB1 = 1;
	bsf	(141)^080h,1	;volatile
	line	54
;adc.c: 54: TRISBbits.TRISB0 = 1;
	bsf	(141)^080h,0	;volatile
	line	58
;adc.c: 58: ADCON1bits.ADFM =0b1;
	bsf	(158)^080h,7	;volatile
	line	60
	
l12394:	
;adc.c: 60: ADCON1bits.ADCS =0b110;
	movf	(158)^080h,w	;volatile
	andlw	not (((1<<3)-1)<<4)
	iorlw	(06h & ((1<<3)-1))<<4
	movwf	(158)^080h	;volatile
	line	62
	
l12396:	
;adc.c: 62: ADCON1bits.ADNREF =0b0;
	bcf	(158)^080h,2	;volatile
	line	64
;adc.c: 64: ADCON1bits.ADPREF =0b11;
	movlw	(03h & ((1<<2)-1))<<0
	iorwf	(158)^080h,f	;volatile
	line	66
;adc.c: 66: FVRCONbits.ADFVR =0b01;
	movlb 2	; select bank2
	movf	(279)^0100h,w	;volatile
	andlw	not (((1<<2)-1)<<0)
	iorlw	(01h & ((1<<2)-1))<<0
	movwf	(279)^0100h	;volatile
	line	68
	
l12398:	
;adc.c: 68: FVRCONbits.FVREN =0b1;
	bsf	(279)^0100h,7	;volatile
	line	70
	
l12400:	
;adc.c: 70: FVRCONbits.TSEN =0b1;
	bsf	(279)^0100h,5	;volatile
	line	72
	
l12402:	
;adc.c: 72: FVRCONbits.TSRNG=0b1;
	bsf	(279)^0100h,4	;volatile
	line	74
;adc.c: 74: ADCON0bits.CHS =0b11101;
	movlb 1	; select bank1
	movf	(157)^080h,w	;volatile
	andlw	not (((1<<5)-1)<<2)
	iorlw	(01Dh & ((1<<5)-1))<<2
	movwf	(157)^080h	;volatile
	line	76
	
l12404:	
;adc.c: 76: ADCON0bits.ADON =0b0;
	bcf	(157)^080h,0	;volatile
	line	78
	
l12406:	
;adc.c: 78: PIE1bits.ADIE=0;
	bcf	(145)^080h,6	;volatile
	line	80
	
l12408:	
;adc.c: 80: PIR1bits.ADIF=0;
	movlb 0	; select bank0
	bcf	(17),6	;volatile
	line	84
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_init_adc
	__end_of_init_adc:
	signat	_init_adc,88
	global	_Init_Ird

;; *************** function _Init_Ird *****************
;; Defined at:
;;		line 529 in file "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17F/0
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	529
global __ptext33
__ptext33:	;psect for function _Init_Ird
psect	text33
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	529
	global	__size_of_Init_Ird
	__size_of_Init_Ird	equ	__end_of_Init_Ird-_Init_Ird
	
_Init_Ird:	
;incstack = 0
	opt	stack 12
; Regs used in _Init_Ird: [wreg+status,2+status,0]
	line	531
	
l12686:	
;ird_remote.c: 531: TRISBbits.TRISB7 = 1;
	bsf	(141)^080h,7	;volatile
	line	533
;ird_remote.c: 533: IOCBNbits.IOCBN7 = 1;
	movlb 7	; select bank7
	bsf	(917)^0380h,7	;volatile
	line	535
;ird_remote.c: 535: IOCBFbits.IOCBF7 = 0;
	bcf	(918)^0380h,7	;volatile
	line	537
;ird_remote.c: 537: TRISBbits.TRISB4 = 1;
	movlb 1	; select bank1
	bsf	(141)^080h,4	;volatile
	line	539
;ird_remote.c: 539: IOCBNbits.IOCBN4 = 1;
	movlb 7	; select bank7
	bsf	(917)^0380h,4	;volatile
	line	541
;ird_remote.c: 541: IOCBFbits.IOCBF4 = 0;
	bcf	(918)^0380h,4	;volatile
	line	543
;ird_remote.c: 543: IOCIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	545
;ird_remote.c: 545: IOCIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	548
;ird_remote.c: 548: TMR0CS = 0;
	movlb 1	; select bank1
	bcf	(1197/8)^080h,(1197)&7	;volatile
	line	550
;ird_remote.c: 550: PSA = 0;
	bcf	(1195/8)^080h,(1195)&7	;volatile
	line	552
	
l12688:	
;ird_remote.c: 552: OPTION_REGbits.PS = 0b111;
	movlw	(07h & ((1<<3)-1))<<0
	iorwf	(149)^080h,f	;volatile
	line	554
	
l12690:	
;ird_remote.c: 554: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	556
	
l12692:	
;ird_remote.c: 556: TMR0 = 0;
	movlb 0	; select bank0
	clrf	(21)	;volatile
	line	558
	
l12694:	
;ird_remote.c: 558: TMR0IE = 0;
	bcf	(93/8),(93)&7	;volatile
	line	560
	
l526:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Ird
	__end_of_Init_Ird:
	signat	_Init_Ird,88
	global	_application_init

;; *************** function _application_init *****************
;; Defined at:
;;		line 266 in file "D:\MCUProject\ZH-SL-H40\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 1F/1
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		_pid_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\main.c"
	line	266
global __ptext34
__ptext34:	;psect for function _application_init
psect	text34
	file	"D:\MCUProject\ZH-SL-H40\src\main.c"
	line	266
	global	__size_of_application_init
	__size_of_application_init	equ	__end_of_application_init-_application_init
	
_application_init:	
;incstack = 0
	opt	stack 11
; Regs used in _application_init: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	269
	
l17304:	
;main.c: 269: TMR1ON =1;
	movlb 0	; select bank0
	bsf	(192/8),(192)&7	;volatile
	line	271
;main.c: 271: system_check_time=0x01;
	movlb 2	; select bank2
	clrf	(_system_check_time)^0100h
	incf	(_system_check_time)^0100h,f
	line	273
;main.c: 273: open_an0_time=0x01;
	clrf	(_open_an0_time)^0100h
	incf	(_open_an0_time)^0100h,f
	line	275
;main.c: 275: open_an1_time=0x01;
	clrf	(_open_an1_time)^0100h
	incf	(_open_an1_time)^0100h,f
	line	277
;main.c: 277: open_an2_time=0x01;
	clrf	(_open_an2_time)^0100h
	incf	(_open_an2_time)^0100h,f
	line	279
;main.c: 279: open_an3_time=0x01;
	clrf	(_open_an3_time)^0100h
	incf	(_open_an3_time)^0100h,f
	line	281
;main.c: 281: open_an4_time=0x01;
	clrf	(_open_an4_time)^0100h
	incf	(_open_an4_time)^0100h,f
	line	283
;main.c: 283: open_an9_time=0x01;
	clrf	(_open_an9_time)^0100h
	incf	(_open_an9_time)^0100h,f
	line	285
;main.c: 285: open_an10_time=0x01;
	clrf	(_open_an10_time)^0100h
	incf	(_open_an10_time)^0100h,f
	line	289
	
l17306:	
;main.c: 289: pid_init ( &PID_CC_charge);
	movlw	low(_PID_CC_charge)
	movlb 0	; select bank0
	movwf	(pid_init@pp)
	movlw	high(_PID_CC_charge)
	movwf	(pid_init@pp+1)
	fcall	_pid_init
	line	291
;main.c: 291: pid_init ( &PID_CV_charge);
	movlw	low(_PID_CV_charge)
	movwf	(pid_init@pp)
	movlw	high(_PID_CV_charge)
	movwf	(pid_init@pp+1)
	fcall	_pid_init
	line	293
;main.c: 293: pid_init ( &PID_CC_discharge);
	movlw	low(_PID_CC_discharge)
	movwf	(pid_init@pp)
	movlw	high(_PID_CC_discharge)
	movwf	(pid_init@pp+1)
	fcall	_pid_init
	line	298
	
l17308:	
;main.c: 298: PID_CC_charge.Proportion = 0.001;
	movlw	0x12
	movlb 5	; select bank5
	movwf	0+(_PID_CC_charge)^0280h+03h
	movlw	0x83
	movwf	1+(_PID_CC_charge)^0280h+03h
	movlw	0x3a
	movwf	2+(_PID_CC_charge)^0280h+03h
	line	300
	
l17310:	
;main.c: 300: PID_CC_charge.Integral = 0;
	clrf	0+(_PID_CC_charge)^0280h+06h
	clrf	1+(_PID_CC_charge)^0280h+06h
	clrf	2+(_PID_CC_charge)^0280h+06h
	line	302
	
l17312:	
;main.c: 302: PID_CC_charge.Derivative = 0;
	clrf	0+(_PID_CC_charge)^0280h+09h
	clrf	1+(_PID_CC_charge)^0280h+09h
	clrf	2+(_PID_CC_charge)^0280h+09h
	line	304
	
l17314:	
;main.c: 304: PID_CC_charge.SetPoint = 5.0*15.0;
	movlw	0x0
	movwf	(_PID_CC_charge)^0280h
	movlw	0x96
	movwf	(_PID_CC_charge+1)^0280h
	movlw	0x42
	movwf	(_PID_CC_charge+2)^0280h
	line	309
	
l17316:	
;main.c: 309: PID_CV_charge.Proportion = 0.001;
	movlw	0x12
	movwf	0+(_PID_CV_charge)^0280h+03h
	movlw	0x83
	movwf	1+(_PID_CV_charge)^0280h+03h
	movlw	0x3a
	movwf	2+(_PID_CV_charge)^0280h+03h
	line	311
	
l17318:	
;main.c: 311: PID_CV_charge.Integral = 0;
	clrf	0+(_PID_CV_charge)^0280h+06h
	clrf	1+(_PID_CV_charge)^0280h+06h
	clrf	2+(_PID_CV_charge)^0280h+06h
	line	313
	
l17320:	
;main.c: 313: PID_CV_charge.Derivative = 0;
	clrf	0+(_PID_CV_charge)^0280h+09h
	clrf	1+(_PID_CV_charge)^0280h+09h
	clrf	2+(_PID_CV_charge)^0280h+09h
	line	315
	
l17322:	
;main.c: 315: PID_CV_charge.SetPoint = dianchi_cv_level+1;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	movlb 2	; select bank2
	movf	(_dianchi_cv_level)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2)
	movlb 2	; select bank2
	movf	(_dianchi_cv_level+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2+1)
	movlb 2	; select bank2
	movf	(_dianchi_cv_level+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge)^0280h
	movlb 0	; select bank0
	movf	(1+(?___ftadd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge+1)^0280h
	movlb 0	; select bank0
	movf	(2+(?___ftadd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge+2)^0280h
	line	319
	
l17324:	
;main.c: 319: PID_CC_discharge.Proportion = 0.001;
	movlw	0x12
	movlb 3	; select bank3
	movwf	0+(_PID_CC_discharge)^0180h+03h
	movlw	0x83
	movwf	1+(_PID_CC_discharge)^0180h+03h
	movlw	0x3a
	movwf	2+(_PID_CC_discharge)^0180h+03h
	line	321
	
l17326:	
;main.c: 321: PID_CC_discharge.Integral = 0;
	clrf	0+(_PID_CC_discharge)^0180h+06h
	clrf	1+(_PID_CC_discharge)^0180h+06h
	clrf	2+(_PID_CC_discharge)^0180h+06h
	line	323
	
l17328:	
;main.c: 323: PID_CC_discharge.Derivative = 0;
	clrf	0+(_PID_CC_discharge)^0180h+09h
	clrf	1+(_PID_CC_discharge)^0180h+09h
	clrf	2+(_PID_CC_discharge)^0180h+09h
	line	325
	
l17330:	
;main.c: 325: PID_CC_discharge.SetPoint = (load_cc_I/100)*30;
	movlw	0x0
	movlb 0	; select bank0
	movwf	(___ftmul@f1)
	movlw	0xf0
	movwf	(___ftmul@f1+1)
	movlw	0x41
	movwf	(___ftmul@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h
	movlb 0	; select bank0
	movf	(1+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(2+(?___ftmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	line	327
	
l17332:	
;main.c: 327: open_discharge_time=0x00;
	movlb 2	; select bank2
	clrf	(_open_discharge_time)^0100h
	line	329
	
l17334:	
;main.c: 329: ms_cnt=0x00;
	movlb 4	; select bank4
	clrf	(_ms_cnt)^0200h
	clrf	(_ms_cnt+1)^0200h
	line	330
	
l17336:	
;main.c: 330: se_cnt=0x00;
	clrf	(_se_cnt)^0200h
	clrf	(_se_cnt+1)^0200h
	line	331
	
l17338:	
;main.c: 331: mi_cnt=0x00;
	clrf	(_mi_cnt)^0200h
	clrf	(_mi_cnt+1)^0200h
	line	332
	
l17340:	
;main.c: 332: ho_cnt=0x00;
	movlb 1	; select bank1
	clrf	(_ho_cnt)^080h
	clrf	(_ho_cnt+1)^080h
	line	335
	
l805:	
	return
	opt stack 0
GLOBAL	__end_of_application_init
	__end_of_application_init:
	signat	_application_init,88
	global	_pid_init

;; *************** function _pid_init *****************
;; Defined at:
;;		line 138 in file "D:\MCUProject\ZH-SL-H40\src\PID.c"
;; Parameters:    Size  Location     Type
;;  pp              2   11[BANK0 ] PTR struct PID_VAR
;;		 -> PID_CC_discharge(21), PID_CV_charge(21), PID_CC_charge(21), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_memset
;; This function is called by:
;;		_application_init
;;		_handle_task_process
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\PID.c"
	line	138
global __ptext35
__ptext35:	;psect for function _pid_init
psect	text35
	file	"D:\MCUProject\ZH-SL-H40\src\PID.c"
	line	138
	global	__size_of_pid_init
	__size_of_pid_init	equ	__end_of_pid_init-_pid_init
	
_pid_init:	
;incstack = 0
	opt	stack 11
; Regs used in _pid_init: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	140
	
l17342:	
;PID.c: 140: memset (pp,0,sizeof(PID));
	movf	(pid_init@pp+1),w
	movwf	(memset@p1+1)
	movf	(pid_init@pp),w
	movwf	(memset@p1)
	clrf	(memset@c)
	clrf	(memset@c+1)
	movlw	015h
	movwf	(memset@n)
	clrf	(memset@n+1)
	fcall	_memset
	line	141
	
l900:	
	return
	opt stack 0
GLOBAL	__end_of_pid_init
	__end_of_pid_init:
	signat	_pid_init,4216
	global	_memset

;; *************** function _memset *****************
;; Defined at:
;;		line 8 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\memset.c"
;; Parameters:    Size  Location     Type
;;  p1              2    3[BANK0 ] PTR void 
;;		 -> PID_CC_discharge(21), PID_CV_charge(21), PID_CC_charge(21), uart1_rx_buf(80), 
;;  c               2    5[BANK0 ] int 
;;  n               2    7[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  p               2    9[BANK0 ] PTR unsigned char 
;;		 -> PID_CC_discharge(21), PID_CV_charge(21), PID_CC_charge(21), uart1_rx_buf(80), 
;; Return value:  Size  Location     Type
;;                  2    3[BANK0 ] PTR void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pid_init
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\memset.c"
	line	8
global __ptext36
__ptext36:	;psect for function _memset
psect	text36
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\memset.c"
	line	8
	global	__size_of_memset
	__size_of_memset	equ	__end_of_memset-_memset
	
_memset:	
;incstack = 0
	opt	stack 12
; Regs used in _memset: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	18
	
l15040:	
	movf	(memset@p1+1),w
	movwf	(memset@p+1)
	movf	(memset@p1),w
	movwf	(memset@p)
	line	19
	goto	l15046
	line	20
	
l15042:	
	movf	(memset@p),w
	movwf	fsr1l
	movf	(memset@p+1),w
	movwf	fsr1h
	movf	(memset@c),w
	movwf	indf1
	
l15044:	
	incf	(memset@p),f
	skipnz
	incf	(memset@p+1),f
	line	19
	
l15046:	
	movlw	low(01h)
	subwf	(memset@n),f
	movlw	high(01h)
	subwfb	(memset@n+1),f
	incf	((memset@n)),w
	skipnz
	incf	((memset@n+1)),w

	skipz
	goto	u7411
	goto	u7410
u7411:
	goto	l15042
u7410:
	line	22
	
l2290:	
	return
	opt stack 0
GLOBAL	__end_of_memset
	__end_of_memset:
	signat	_memset,12409
	global	_Key_Menu

;; *************** function _Key_Menu *****************
;; Defined at:
;;		line 565 in file "D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
;; Parameters:    Size  Location     Type
;;  key_value       4   64[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  remote_mac      2    0        unsigned int 
;;  code            1   68[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Disable_Bost_Pwm
;;		_Disable_Buck_Pwm
;;		_Enable_Bost_Pwm
;;		_Set_Bost_Pwm_Duty
;;		_Set_Buck_Pwm_Duty
;;		_delay_ms
;;		_eeprom_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	565
global __ptext37
__ptext37:	;psect for function _Key_Menu
psect	text37
	file	"D:\MCUProject\ZH-SL-H40\src\ird_remote.c"
	line	565
	global	__size_of_Key_Menu
	__size_of_Key_Menu	equ	__end_of_Key_Menu-_Key_Menu
	
_Key_Menu:	
;incstack = 0
	opt	stack 12
; Regs used in _Key_Menu: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	571
	
l16768:	
;ird_remote.c: 575: remote_mac=key_value>>16;
	movf	0+(((Key_Menu@key_value))+1),w
	movwf	(Key_Menu@code)
	line	583
;ird_remote.c: 583: switch(code)
	goto	l17008
	line	585
;ird_remote.c: 584: {
;ird_remote.c: 585: case 0x00:
	
l530:	
	line	586
;ird_remote.c: 586: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	587
;ird_remote.c: 587: break;
	goto	l544
	line	589
	
l16770:	
;ird_remote.c: 589: if(device_status==0x01)
	decf	(_device_status),w
	skipz
	goto	u9321
	goto	u9320
u9321:
	goto	l544
u9320:
	line	591
	
l16772:	
;ird_remote.c: 590: {
;ird_remote.c: 591: light_mode =0x00;
	movlb 1	; select bank1
	clrf	(_light_mode)^080h
	line	592
	
l16774:	
;ird_remote.c: 592: eeprom_write(0x36,(unsigned char)(light_mode));
	movf	(_light_mode)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(036h)
	fcall	_eeprom_write
	line	593
	
l16776:	
;ird_remote.c: 593: led_out_ctrl=0x00;
	movlb 1	; select bank1
	clrf	(_led_out_ctrl)^080h
	line	594
;ird_remote.c: 594: eeprom_write(0x39,(unsigned char)(led_out_ctrl));
	movf	(_led_out_ctrl)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(039h)
	fcall	_eeprom_write
	line	595
	
l16778:	
;ird_remote.c: 597: lr_cnt = 0x00;
	movlb 1	; select bank1
	clrf	(_work_mode)^080h
	line	599
	
l16780:	
;ird_remote.c: 599: nop_index=0x00;
	clrf	(_nop_index)^080h
	line	600
	
l16782:	
;ird_remote.c: 600: discharge_index=0x00;
	clrf	(_discharge_index)^080h
	line	601
	
l16784:	
;ird_remote.c: 601: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	603
	
l16786:	
;ird_remote.c: 603: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	604
	
l16788:	
;ird_remote.c: 604: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	605
;ird_remote.c: 605: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	606
	
l16790:	
;ird_remote.c: 606: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	607
	
l16792:	
;ird_remote.c: 607: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	610
	
l16794:	
;ird_remote.c: 610: (LATCbits.LATC3 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,3	;volatile
	line	612
	
l16796:	
;ird_remote.c: 612: Enable_Bost_Pwm();
	fcall	_Enable_Bost_Pwm
	line	614
;ird_remote.c: 614: Set_Bost_Pwm_Duty(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	616
;ird_remote.c: 616: delay_ms(1000);
	movlw	low(03E8h)
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	movlw	high(03E8h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	618
;ird_remote.c: 618: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	620
	
l16798:	
;ird_remote.c: 620: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	621
	
l16800:	
;ird_remote.c: 621: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	622
	
l16802:	
;ird_remote.c: 622: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	624
	
l16804:	
;ird_remote.c: 624: pv_voltage_status=0x00;
	movlb 1	; select bank1
	clrf	(_pv_voltage_status)^080h
	line	626
	
l16806:	
;ird_remote.c: 626: day_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_day_time_count)^0200h
	clrf	(_day_time_count+1)^0200h
	clrf	(_day_time_count+2)^0200h
	clrf	(_day_time_count+3)^0200h
	line	628
	
l16808:	
;ird_remote.c: 628: night_time_count=0x00;
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	line	630
	
l16810:	
;ird_remote.c: 630: pv_time_count=0x00;
	clrf	(_pv_time_count)^0200h
	clrf	(_pv_time_count+1)^0200h
	clrf	(_pv_time_count+2)^0200h
	clrf	(_pv_time_count+3)^0200h
	goto	l544
	line	634
	
l16812:	
;ird_remote.c: 634: if(device_status==0x01)
	decf	(_device_status),w
	skipz
	goto	u9331
	goto	u9330
u9331:
	goto	l544
u9330:
	line	636
	
l16814:	
;ird_remote.c: 635: {
;ird_remote.c: 636: light_mode =0x01;
	movlb 1	; select bank1
	clrf	(_light_mode)^080h
	incf	(_light_mode)^080h,f
	line	637
	
l16816:	
;ird_remote.c: 637: eeprom_write(0x36,(unsigned char)(light_mode));
	movf	(_light_mode)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(036h)
	fcall	_eeprom_write
	line	638
	
l16818:	
;ird_remote.c: 638: led_out_ctrl=0x00;
	movlb 1	; select bank1
	clrf	(_led_out_ctrl)^080h
	line	639
	
l16820:	
;ird_remote.c: 639: eeprom_write(0x39,(unsigned char)(led_out_ctrl));
	movf	(_led_out_ctrl)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(039h)
	fcall	_eeprom_write
	line	640
;ird_remote.c: 642: lr_cnt = 0x00;
	movlb 1	; select bank1
	clrf	(_work_mode)^080h
	line	644
;ird_remote.c: 644: nop_index=0x00;
	clrf	(_nop_index)^080h
	line	645
;ird_remote.c: 645: discharge_index=0x00;
	clrf	(_discharge_index)^080h
	line	646
;ird_remote.c: 646: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	648
	
l16822:	
;ird_remote.c: 648: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	649
	
l16824:	
;ird_remote.c: 649: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	650
	
l16826:	
;ird_remote.c: 650: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	651
	
l16828:	
;ird_remote.c: 651: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	652
	
l16830:	
;ird_remote.c: 652: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	655
	
l16832:	
;ird_remote.c: 655: (LATCbits.LATC3 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,3	;volatile
	line	657
	
l16834:	
;ird_remote.c: 657: Enable_Bost_Pwm();
	fcall	_Enable_Bost_Pwm
	line	659
	
l16836:	
;ird_remote.c: 659: Set_Bost_Pwm_Duty(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	661
	
l16838:	
;ird_remote.c: 661: delay_ms(1000);
	movlw	low(03E8h)
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	movlw	high(03E8h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	663
	
l16840:	
;ird_remote.c: 663: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	665
	
l16842:	
;ird_remote.c: 665: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	666
	
l16844:	
;ird_remote.c: 666: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	667
	
l16846:	
;ird_remote.c: 667: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	669
;ird_remote.c: 669: pv_voltage_status=0x00;
	movlb 1	; select bank1
	clrf	(_pv_voltage_status)^080h
	goto	l16806
	line	679
	
l16854:	
;ird_remote.c: 679: if(device_status==0x01)
	decf	(_device_status),w
	skipz
	goto	u9341
	goto	u9340
u9341:
	goto	l544
u9340:
	line	681
	
l16856:	
;ird_remote.c: 680: {
;ird_remote.c: 681: light_mode =0x02;
	movlw	(02h)
	movlb 1	; select bank1
	movwf	(_light_mode)^080h
	line	682
	
l16858:	
;ird_remote.c: 682: eeprom_write(0x36,(unsigned char)(light_mode));
	movf	(_light_mode)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(036h)
	fcall	_eeprom_write
	line	683
	
l16860:	
;ird_remote.c: 683: led_out_ctrl=0x00;
	movlb 1	; select bank1
	clrf	(_led_out_ctrl)^080h
	line	684
	
l16862:	
;ird_remote.c: 684: eeprom_write(0x39,(unsigned char)(led_out_ctrl));
	movf	(_led_out_ctrl)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(039h)
	fcall	_eeprom_write
	line	685
	
l16864:	
;ird_remote.c: 687: lr_cnt = 0x00;
	movlb 1	; select bank1
	clrf	(_work_mode)^080h
	line	689
	
l16866:	
;ird_remote.c: 689: nop_index=0x00;
	clrf	(_nop_index)^080h
	line	690
	
l16868:	
;ird_remote.c: 690: discharge_index=0x00;
	clrf	(_discharge_index)^080h
	line	691
	
l16870:	
;ird_remote.c: 691: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	693
	
l16872:	
;ird_remote.c: 693: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	694
	
l16874:	
;ird_remote.c: 694: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	695
	
l16876:	
;ird_remote.c: 695: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	696
	
l16878:	
;ird_remote.c: 696: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	697
	
l16880:	
;ird_remote.c: 697: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	700
	
l16882:	
;ird_remote.c: 700: (LATCbits.LATC3 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,3	;volatile
	line	702
	
l16884:	
;ird_remote.c: 702: Enable_Bost_Pwm();
	fcall	_Enable_Bost_Pwm
	line	704
	
l16886:	
;ird_remote.c: 704: Set_Bost_Pwm_Duty(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	706
	
l16888:	
;ird_remote.c: 706: delay_ms(1000);
	movlw	low(03E8h)
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	movlw	high(03E8h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	708
	
l16890:	
;ird_remote.c: 708: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	goto	l16798
	line	724
	
l16906:	
;ird_remote.c: 724: if(device_status==0x01)
	decf	(_device_status),w
	skipz
	goto	u9351
	goto	u9350
u9351:
	goto	l16914
u9350:
	line	726
	
l16908:	
;ird_remote.c: 725: {
;ird_remote.c: 726: led_out_ctrl=led_out_ctrl+1;
	movlb 1	; select bank1
	incf	(_led_out_ctrl)^080h,f
	line	728
	
l16910:	
;ird_remote.c: 728: led_out_ctrl=led_out_ctrl%2;
	movlw	(01h)
	andwf	(_led_out_ctrl)^080h,f
	line	730
	
l16912:	
;ird_remote.c: 730: eeprom_write(0x39,(unsigned char)(led_out_ctrl));
	movf	(_led_out_ctrl)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(039h)
	fcall	_eeprom_write
	line	732
	
l16914:	
;ird_remote.c: 731: }
;ird_remote.c: 732: if(led_out_ctrl==0x00 && device_status==0x01)
	movlb 1	; select bank1
	movf	(_led_out_ctrl)^080h,f
	skipz
	goto	u9361
	goto	u9360
u9361:
	goto	l16952
u9360:
	
l16916:	
	movlb 0	; select bank0
	decf	(_device_status),w
	skipz
	goto	u9371
	goto	u9370
u9371:
	goto	l16952
u9370:
	line	734
	
l16918:	
;ird_remote.c: 736: lr_cnt = 0x00;
	movlb 1	; select bank1
	clrf	(_work_mode)^080h
	line	738
;ird_remote.c: 738: nop_index=0x00;
	clrf	(_nop_index)^080h
	line	739
;ird_remote.c: 739: discharge_index=0x00;
	clrf	(_discharge_index)^080h
	line	740
;ird_remote.c: 740: charge_index=0x00;
	clrf	(_charge_index)^080h
	goto	l16822
	line	771
	
l16952:	
;ird_remote.c: 771: else if(led_out_ctrl==0x01 && device_status==0x01)
	movlb 1	; select bank1
	decf	(_led_out_ctrl)^080h,w
	skipz
	goto	u9381
	goto	u9380
u9381:
	goto	l544
u9380:
	
l16954:	
	movlb 0	; select bank0
	decf	(_device_status),w
	skipz
	goto	u9391
	goto	u9390
u9391:
	goto	l544
u9390:
	line	773
	
l16956:	
;ird_remote.c: 775: lr_cnt = 0x00;
	movlb 1	; select bank1
	clrf	(_work_mode)^080h
	line	777
;ird_remote.c: 777: nop_index=0x00;
	clrf	(_nop_index)^080h
	line	778
;ird_remote.c: 778: discharge_index=0x00;
	clrf	(_discharge_index)^080h
	line	779
;ird_remote.c: 779: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	781
	
l16958:	
;ird_remote.c: 781: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	782
	
l16960:	
;ird_remote.c: 782: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	784
	
l16962:	
;ird_remote.c: 784: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	785
	
l16964:	
;ird_remote.c: 785: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	786
	
l16966:	
;ird_remote.c: 786: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	789
	
l16968:	
;ird_remote.c: 789: (LATCbits.LATC3 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,3	;volatile
	line	790
	
l16970:	
;ird_remote.c: 790: Enable_Bost_Pwm();
	fcall	_Enable_Bost_Pwm
	line	793
	
l16972:	
;ird_remote.c: 793: Set_Bost_Pwm_Duty(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	795
	
l16974:	
;ird_remote.c: 795: delay_ms(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	797
	
l16976:	
;ird_remote.c: 797: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	799
	
l16978:	
;ird_remote.c: 799: delay_ms(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	801
	
l16980:	
;ird_remote.c: 801: Set_Bost_Pwm_Duty(200);
	movlw	0C8h
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	803
	
l16982:	
;ird_remote.c: 803: delay_ms(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	805
	
l16984:	
;ird_remote.c: 805: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	807
	
l16986:	
;ird_remote.c: 807: delay_ms(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	809
	
l16988:	
;ird_remote.c: 809: Set_Bost_Pwm_Duty(200);
	movlw	0C8h
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	811
	
l16990:	
;ird_remote.c: 811: delay_ms(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	goto	l16840
	line	583
	
l17008:	
	movf	(Key_Menu@code),w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 136
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l530
	xorlw	16^0	; case 16
	skipnz
	goto	l16812
	xorlw	64^16	; case 64
	skipnz
	goto	l16770
	xorlw	80^64	; case 80
	skipnz
	goto	l16854
	xorlw	136^80	; case 136
	skipnz
	goto	l16906
	goto	l544
	opt asmopt_on

	line	834
	
l544:	
	return
	opt stack 0
GLOBAL	__end_of_Key_Menu
	__end_of_Key_Menu:
	signat	_Key_Menu,4216
	global	_eeprom_write

;; *************** function _eeprom_write *****************
;; Defined at:
;;		line 6 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\eewrite.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  value           1   62[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1   63[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/3
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_auto_system
;;		_Key_Menu
;;		_scan_key_value
;;		_handle_task_process
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\eewrite.c"
	line	6
global __ptext38
__ptext38:	;psect for function _eeprom_write
psect	text38
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\eewrite.c"
	line	6
	global	__size_of_eeprom_write
	__size_of_eeprom_write	equ	__end_of_eeprom_write-_eeprom_write
	
_eeprom_write:	
;incstack = 0
	opt	stack 12
; Regs used in _eeprom_write: [wreg+status,2+status,0]
;eeprom_write@addr stored from wreg
	movwf	(eeprom_write@addr)
	line	8
	
l1854:	
	
l1855:	
	movlb 3	; select bank3
	btfsc	(3241/8)^0180h,(3241)&7	;volsfr
	goto	u9291
	goto	u9290
u9291:
	goto	l1855
u9290:
	
l16748:	
	movlb 0	; select bank0
	movf	(eeprom_write@addr),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	clrf	(401+1)^0180h	;volatile
	movlb 0	; select bank0
	movf	(eeprom_write@value),w
	movlb 3	; select bank3
	movwf	(403)^0180h	;volatile
	
l16750:	
	movlw	(03Fh)
	andwf	(405)^0180h,f	;volsfr
	
l16752:	
	bcf	(24/8),(24)&7	;volatile
	
l16754:	
	btfss	(95/8),(95)&7	;volatile
	goto	u9301
	goto	u9300
u9301:
	goto	l1858
u9300:
	
l16756:	
	bsf	(24/8),(24)&7	;volatile
	
l1858:	
	bcf	(95/8),(95)&7	;volatile
	bsf	(3242/8)^0180h,(3242)&7	;volsfr
	
l16758:	
	movlw	(055h)
	movwf	(406)^0180h	;volsfr
	movlw	(0AAh)
	movwf	(406)^0180h	;volsfr
	
l16760:	
	bsf	(3241/8)^0180h,(3241)&7	;volsfr
	
l16762:	
	bcf	(3242/8)^0180h,(3242)&7	;volsfr
	
l16764:	
	btfss	(24/8),(24)&7	;volatile
	goto	u9311
	goto	u9310
u9311:
	goto	l1861
u9310:
	
l16766:	
	bsf	(95/8),(95)&7	;volatile
	line	9
	
l1861:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_write
	__end_of_eeprom_write:
	signat	_eeprom_write,8312
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 64 in file "D:\MCUProject\ZH-SL-H40\src\delay.c"
;; Parameters:    Size  Location     Type
;;  count           2    3[BANK0 ] unsigned short 
;; Auto vars:     Size  Location     Type
;;  j               2    7[BANK0 ] unsigned short 
;;  i               2    5[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_auto_system
;;		_Key_Menu
;;		_scan_key_value
;;		_handle_ad_loop
;;		_handle_task_process
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\delay.c"
	line	64
global __ptext39
__ptext39:	;psect for function _delay_ms
psect	text39
	file	"D:\MCUProject\ZH-SL-H40\src\delay.c"
	line	64
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	stack 12
; Regs used in _delay_ms: [wreg+status,2+status,0]
	line	68
	
l16506:	
;delay.c: 66: WORD i, j;
;delay.c: 68: for (i = 0; i < count; i++)
	clrf	(delay_ms@i)
	clrf	(delay_ms@i+1)
	goto	l16520
	line	70
	
l16508:	
;delay.c: 69: {
;delay.c: 70: for (j = 0; j < 1000; j++)
	clrf	(delay_ms@j)
	clrf	(delay_ms@j+1)
	line	71
	
l43:	
	line	72
;delay.c: 71: {
;delay.c: 72: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	73
;delay.c: 73: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	74
;delay.c: 74: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	75
;delay.c: 75: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	76
;delay.c: 76: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	77
;delay.c: 77: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	78
;delay.c: 78: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	79
;delay.c: 79: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	70
	
l16514:	
	movlb 0	; select bank0
	incf	(delay_ms@j),f
	skipnz
	incf	(delay_ms@j+1),f
	
l16516:	
	movlw	high(03E8h)
	subwf	(delay_ms@j+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(delay_ms@j),w
	skipc
	goto	u9021
	goto	u9020
u9021:
	goto	l43
u9020:
	line	68
	
l16518:	
	incf	(delay_ms@i),f
	skipnz
	incf	(delay_ms@i+1),f
	
l16520:	
	movf	(delay_ms@count+1),w
	subwf	(delay_ms@i+1),w
	skipz
	goto	u9035
	movf	(delay_ms@count),w
	subwf	(delay_ms@i),w
u9035:
	skipc
	goto	u9031
	goto	u9030
u9031:
	goto	l16508
u9030:
	line	82
	
l46:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4216
	global	_Set_Buck_Pwm_Duty

;; *************** function _Set_Buck_Pwm_Duty *****************
;; Defined at:
;;		line 157 in file "D:\MCUProject\ZH-SL-H40\src\pwm.c"
;; Parameters:    Size  Location     Type
;;  duty            2    3[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/5
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Key_Menu
;;		_scan_key_value
;;		_handle_ad_loop
;;		_handle_task_process
;;		_Mppt_Charge
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\pwm.c"
	line	157
global __ptext40
__ptext40:	;psect for function _Set_Buck_Pwm_Duty
psect	text40
	file	"D:\MCUProject\ZH-SL-H40\src\pwm.c"
	line	157
	global	__size_of_Set_Buck_Pwm_Duty
	__size_of_Set_Buck_Pwm_Duty	equ	__end_of_Set_Buck_Pwm_Duty-_Set_Buck_Pwm_Duty
	
_Set_Buck_Pwm_Duty:	
;incstack = 0
	opt	stack 12
; Regs used in _Set_Buck_Pwm_Duty: [wreg+status,2+status,0]
	line	159
	
l17012:	
;pwm.c: 159: buck_pwm_value=duty;
	movf	(Set_Buck_Pwm_Duty@duty+1),w
	movwf	(_buck_pwm_value+1)
	movf	(Set_Buck_Pwm_Duty@duty),w
	movwf	(_buck_pwm_value)
	line	161
;pwm.c: 161: if(duty<=900)
	movlw	high(0385h)
	subwf	(Set_Buck_Pwm_Duty@duty+1),w
	movlw	low(0385h)
	skipnz
	subwf	(Set_Buck_Pwm_Duty@duty),w
	skipnc
	goto	u9401
	goto	u9400
u9401:
	goto	l17016
u9400:
	line	163
	
l17014:	
;pwm.c: 162: {
;pwm.c: 163: CCPR1L=(unsigned char)(duty>>2);
	movf	(Set_Buck_Pwm_Duty@duty+1),w
	movwf	(??_Set_Buck_Pwm_Duty+0)+0+1
	movf	(Set_Buck_Pwm_Duty@duty),w
	movwf	(??_Set_Buck_Pwm_Duty+0)+0
	lsrf	(??_Set_Buck_Pwm_Duty+0)+1,f
	rrf	(??_Set_Buck_Pwm_Duty+0)+0,f
	lsrf	(??_Set_Buck_Pwm_Duty+0)+1,f
	rrf	(??_Set_Buck_Pwm_Duty+0)+0,f
	movf	0+(??_Set_Buck_Pwm_Duty+0)+0,w
	movlb 5	; select bank5
	movwf	(657)^0280h	;volatile
	line	165
;pwm.c: 165: CCP1CONbits.DC1B=(unsigned char)(duty&0b11);
	movlb 0	; select bank0
	movf	(Set_Buck_Pwm_Duty@duty),w
	andlw	03h
	movwf	(??_Set_Buck_Pwm_Duty+0)+0
	swapf	(??_Set_Buck_Pwm_Duty+0)+0,f
	movlb 5	; select bank5
	movf	(659)^0280h,w	;volatile
	movlb 0	; select bank0
	xorwf	(??_Set_Buck_Pwm_Duty+0)+0,w
	andlw	not (((1<<2)-1)<<4)
	xorwf	(??_Set_Buck_Pwm_Duty+0)+0,w
	movlb 5	; select bank5
	movwf	(659)^0280h	;volatile
	line	166
;pwm.c: 166: }
	goto	l972
	line	169
	
l17016:	
	line	171
	
l17018:	
;pwm.c: 171: CCPR1L=(unsigned char)(duty>>2);
	movlw	(0E1h)
	movlb 5	; select bank5
	movwf	(657)^0280h	;volatile
	line	173
	
l17020:	
;pwm.c: 173: CCP1CONbits.DC1B=(unsigned char)(duty&0b11);
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	(659)^0280h,f	;volatile
	line	176
	
l972:	
	return
	opt stack 0
GLOBAL	__end_of_Set_Buck_Pwm_Duty
	__end_of_Set_Buck_Pwm_Duty:
	signat	_Set_Buck_Pwm_Duty,4216
	global	_Set_Bost_Pwm_Duty

;; *************** function _Set_Bost_Pwm_Duty *****************
;; Defined at:
;;		line 216 in file "D:\MCUProject\ZH-SL-H40\src\pwm.c"
;; Parameters:    Size  Location     Type
;;  dduty           2    3[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/6
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Key_Menu
;;		_scan_key_value
;;		_handle_ad_loop
;;		_handle_task_process
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1
	line	216
global __ptext41
__ptext41:	;psect for function _Set_Bost_Pwm_Duty
psect	text41
	file	"D:\MCUProject\ZH-SL-H40\src\pwm.c"
	line	216
	global	__size_of_Set_Bost_Pwm_Duty
	__size_of_Set_Bost_Pwm_Duty	equ	__end_of_Set_Bost_Pwm_Duty-_Set_Bost_Pwm_Duty
	
_Set_Bost_Pwm_Duty:	
;incstack = 0
	opt	stack 12
; Regs used in _Set_Bost_Pwm_Duty: [wreg+status,2+status,0]
	line	219
	
l16522:	
;pwm.c: 219: bost_pwm_value=dduty;
	movf	(Set_Bost_Pwm_Duty@dduty+1),w
	movlb 1	; select bank1
	movwf	(_bost_pwm_value+1)^080h
	movlb 0	; select bank0
	movf	(Set_Bost_Pwm_Duty@dduty),w
	movlb 1	; select bank1
	movwf	(_bost_pwm_value)^080h
	line	221
;pwm.c: 221: if(dduty<=488)
	movlw	high(01E9h)
	movlb 0	; select bank0
	subwf	(Set_Bost_Pwm_Duty@dduty+1),w
	movlw	low(01E9h)
	skipnz
	subwf	(Set_Bost_Pwm_Duty@dduty),w
	skipnc
	goto	u9041
	goto	u9040
u9041:
	goto	l16526
u9040:
	line	223
	
l16524:	
;pwm.c: 222: {
;pwm.c: 223: CCPR3L=(unsigned char)(dduty>>2);
	movf	(Set_Bost_Pwm_Duty@dduty+1),w
	movwf	(??_Set_Bost_Pwm_Duty+0)+0+1
	movf	(Set_Bost_Pwm_Duty@dduty),w
	movwf	(??_Set_Bost_Pwm_Duty+0)+0
	lsrf	(??_Set_Bost_Pwm_Duty+0)+1,f
	rrf	(??_Set_Bost_Pwm_Duty+0)+0,f
	lsrf	(??_Set_Bost_Pwm_Duty+0)+1,f
	rrf	(??_Set_Bost_Pwm_Duty+0)+0,f
	movf	0+(??_Set_Bost_Pwm_Duty+0)+0,w
	movlb 6	; select bank6
	movwf	(785)^0300h	;volatile
	line	225
;pwm.c: 225: CCP3CONbits.DC3B=(unsigned char)(dduty&0b11);
	movlb 0	; select bank0
	movf	(Set_Bost_Pwm_Duty@dduty),w
	andlw	03h
	movwf	(??_Set_Bost_Pwm_Duty+0)+0
	swapf	(??_Set_Bost_Pwm_Duty+0)+0,f
	movlb 6	; select bank6
	movf	(787)^0300h,w	;volatile
	movlb 0	; select bank0
	xorwf	(??_Set_Bost_Pwm_Duty+0)+0,w
	andlw	not (((1<<2)-1)<<4)
	xorwf	(??_Set_Bost_Pwm_Duty+0)+0,w
	movlb 6	; select bank6
	movwf	(787)^0300h	;volatile
	line	226
;pwm.c: 226: }
	goto	l983
	line	229
	
l16526:	
	line	231
	
l16528:	
;pwm.c: 231: CCPR3L=(unsigned char)(dduty>>2);
	movlw	(07Ah)
	movlb 6	; select bank6
	movwf	(785)^0300h	;volatile
	line	233
	
l16530:	
;pwm.c: 233: CCP3CONbits.DC3B=(unsigned char)(dduty&0b11);
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	(787)^0300h,f	;volatile
	line	236
	
l983:	
	return
	opt stack 0
GLOBAL	__end_of_Set_Bost_Pwm_Duty
	__end_of_Set_Bost_Pwm_Duty:
	signat	_Set_Bost_Pwm_Duty,4216
	global	_Enable_Bost_Pwm

;; *************** function _Enable_Bost_Pwm *****************
;; Defined at:
;;		line 186 in file "D:\MCUProject\ZH-SL-H40\src\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1F/8
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Key_Menu
;;		_scan_key_value
;;		_handle_ad_loop
;;		_handle_task_process
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1
	line	186
global __ptext42
__ptext42:	;psect for function _Enable_Bost_Pwm
psect	text42
	file	"D:\MCUProject\ZH-SL-H40\src\pwm.c"
	line	186
	global	__size_of_Enable_Bost_Pwm
	__size_of_Enable_Bost_Pwm	equ	__end_of_Enable_Bost_Pwm-_Enable_Bost_Pwm
	
_Enable_Bost_Pwm:	
;incstack = 0
	opt	stack 12
; Regs used in _Enable_Bost_Pwm: []
	line	188
	
l17022:	
;pwm.c: 188: TRISBbits.TRISB5 =0;
	movlb 1	; select bank1
	bcf	(141)^080h,5	;volatile
	line	190
;pwm.c: 190: TMR4ON=1;
	movlb 8	; select bank8
	bsf	(8378/8)^0400h,(8378)&7	;volatile
	line	191
	
l975:	
	return
	opt stack 0
GLOBAL	__end_of_Enable_Bost_Pwm
	__end_of_Enable_Bost_Pwm:
	signat	_Enable_Bost_Pwm,88
	global	_Disable_Buck_Pwm

;; *************** function _Disable_Buck_Pwm *****************
;; Defined at:
;;		line 139 in file "D:\MCUProject\ZH-SL-H40\src\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1C/1
;;		On exit  : 1F/8
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Key_Menu
;;		_scan_key_value
;;		_handle_ad_loop
;;		_handle_task_process
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1
	line	139
global __ptext43
__ptext43:	;psect for function _Disable_Buck_Pwm
psect	text43
	file	"D:\MCUProject\ZH-SL-H40\src\pwm.c"
	line	139
	global	__size_of_Disable_Buck_Pwm
	__size_of_Disable_Buck_Pwm	equ	__end_of_Disable_Buck_Pwm-_Disable_Buck_Pwm
	
_Disable_Buck_Pwm:	
;incstack = 0
	opt	stack 12
; Regs used in _Disable_Buck_Pwm: []
	line	141
	
l17010:	
;pwm.c: 141: TRISCbits.TRISC2=1;
	movlb 1	; select bank1
	bsf	(142)^080h,2	;volatile
	line	143
;pwm.c: 143: TRISBbits.TRISB2=1;
	bsf	(141)^080h,2	;volatile
	line	145
;pwm.c: 145: TMR6ON=0;
	movlb 8	; select bank8
	bcf	(8434/8)^0400h,(8434)&7	;volatile
	line	147
	
l967:	
	return
	opt stack 0
GLOBAL	__end_of_Disable_Buck_Pwm
	__end_of_Disable_Buck_Pwm:
	signat	_Disable_Buck_Pwm,88
	global	_Disable_Bost_Pwm

;; *************** function _Disable_Bost_Pwm *****************
;; Defined at:
;;		line 201 in file "D:\MCUProject\ZH-SL-H40\src\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 18/5
;;		On exit  : 1F/8
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Key_Menu
;;		_scan_key_value
;;		_handle_ad_loop
;;		_handle_task_process
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1
	line	201
global __ptext44
__ptext44:	;psect for function _Disable_Bost_Pwm
psect	text44
	file	"D:\MCUProject\ZH-SL-H40\src\pwm.c"
	line	201
	global	__size_of_Disable_Bost_Pwm
	__size_of_Disable_Bost_Pwm	equ	__end_of_Disable_Bost_Pwm-_Disable_Bost_Pwm
	
_Disable_Bost_Pwm:	
;incstack = 0
	opt	stack 12
; Regs used in _Disable_Bost_Pwm: []
	line	203
	
l16532:	
;pwm.c: 203: TRISBbits.TRISB5 =1;
	movlb 1	; select bank1
	bsf	(141)^080h,5	;volatile
	line	205
;pwm.c: 205: TMR4ON=0;
	movlb 8	; select bank8
	bcf	(8378/8)^0400h,(8378)&7	;volatile
	line	207
	
l978:	
	return
	opt stack 0
GLOBAL	__end_of_Disable_Bost_Pwm
	__end_of_Disable_Bost_Pwm:
	signat	_Disable_Bost_Pwm,88
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   34[BANK0 ] float 
;;  f2              3   37[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   45[BANK0 ] unsigned char 
;;  exp2            1   44[BANK0 ] unsigned char 
;;  sign            1   43[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   34[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      12       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_application_init
;;		_pid_calc
;;		_handle_ad_loop
;;		_handle_task_process
;;		_Mppt_Charge
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text45,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftadd.c"
	line	86
global __ptext45
__ptext45:	;psect for function ___ftadd
psect	text45
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 11
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l19104:	
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(___ftadd@exp2)
	line	92
	
l19106:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u12150
	goto	l19112
u12150:
	
l19108:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u12161
	goto	u12160
u12161:
	goto	l19116
u12160:
	
l19110:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u12171
	goto	u12170
u12171:
	goto	l19116
u12170:
	line	93
	
l19112:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l2103
	line	94
	
l19116:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u12180
	goto	l2106
u12180:
	
l19118:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u12191
	goto	u12190
u12191:
	goto	l19122
u12190:
	
l19120:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u12201
	goto	u12200
u12201:
	goto	l19122
u12200:
	
l2106:	
	line	95
	goto	l2103
	line	96
	
l19122:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l19124:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u12211
	goto	u12210
u12211:
	goto	l2107
u12210:
	line	98
	
l19126:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l2107:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u12221
	goto	u12220
u12221:
	goto	l2108
u12220:
	line	100
	
l19128:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l2108:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l19130:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l19132:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u12231
	goto	u12230
u12231:
	goto	l19144
u12230:
	line	110
	
l19134:	
	lslf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l19136:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u12241
	goto	u12240
u12241:
	goto	l19142
u12240:
	
l19138:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u12251
	goto	u12250
u12251:
	goto	l19134
u12250:
	goto	l19142
	line	114
	
l19140:	
	lsrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l19142:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u12261
	goto	u12260
u12261:
	goto	l19140
u12260:
	goto	l2117
	line	117
	
l19144:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u12271
	goto	u12270
u12271:
	goto	l2117
u12270:
	line	121
	
l19146:	
	lslf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l19148:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u12281
	goto	u12280
u12281:
	goto	l19154
u12280:
	
l19150:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u12291
	goto	u12290
u12291:
	goto	l19146
u12290:
	goto	l19154
	line	125
	
l19152:	
	lsrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l19154:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u12301
	goto	u12300
u12301:
	goto	l19152
u12300:
	line	129
	
l2117:	
	btfss	(___ftadd@sign),(7)&7
	goto	u12311
	goto	u12310
u12311:
	goto	l19160
u12310:
	line	131
	
l19156:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l19158:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l19160:	
	btfss	(___ftadd@sign),(6)&7
	goto	u12321
	goto	u12320
u12321:
	goto	l19166
u12320:
	line	136
	
l19162:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l19164:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l19166:	
	clrf	(___ftadd@sign)
	line	140
	
l19168:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	addwfc	(___ftadd@f2+1),f
	movf	(___ftadd@f1+2),w
	addwfc	(___ftadd@f2+2),f
	line	141
	
l19170:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u12331
	goto	u12330
u12331:
	goto	l19178
u12330:
	line	142
	
l19172:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l19174:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l19176:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l19178:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	line	148
	
l2103:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   34[BANK0 ] float 
;;  f1              3   37[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   44[BANK0 ] float 
;;  sign            1   48[BANK0 ] unsigned char 
;;  exp             1   47[BANK0 ] unsigned char 
;;  cntr            1   43[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   34[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      15       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_read_param_eeprom
;;		_auto_system
;;		_application_init
;;		_handle_ad_loop
;;		_handle_task_process
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\ftdiv.c"
	line	49
global __ptext46
__ptext46:	;psect for function ___ftdiv
psect	text46
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 10
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l19182:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u12341
	goto	u12340
u12341:
	goto	l19186
u12340:
	line	56
	
l19184:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l2134
	line	57
	
l19186:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u12351
	goto	u12350
u12351:
	goto	l2135
u12350:
	line	58
	
l19188:	
	clrf	(?___ftdiv)
	clrf	(?___ftdiv+1)
	clrf	(?___ftdiv+2)
	goto	l2134
	
l2135:	
	line	59
	clrf	(___ftdiv@f3)
	clrf	(___ftdiv@f3+1)
	clrf	(___ftdiv@f3+2)
	line	60
	
l19190:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l19192:	
	movf	0+(((___ftdiv@f1))+2),w
	movwf	(___ftdiv@sign)
	line	62
	
l19194:	
	movf	0+(((___ftdiv@f2))+2),w
	xorwf	(___ftdiv@sign),f
	line	63
	
l19196:	
	movlw	(080h)
	andwf	(___ftdiv@sign),f
	line	64
	
l19198:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	
l19200:	
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l19202:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	
l19204:	
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	
l19206:	
	movlw	(018h)
	movwf	(___ftdiv@cntr)
	line	70
	
l19208:	
	lslf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	line	71
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u12365
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u12365
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u12365:
	skipc
	goto	u12361
	goto	u12360
u12361:
	goto	l19214
u12360:
	line	72
	
l19210:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	subwfb	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	subwfb	(___ftdiv@f1+2),f
	line	73
	
l19212:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	line	75
	
l19214:	
	lslf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	line	76
	
l19216:	
	decfsz	(___ftdiv@cntr),f
	goto	u12371
	goto	u12370
u12371:
	goto	l19208
u12370:
	line	77
	
l19218:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	line	78
	
l2134:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    3[BANK0 ] unsigned um
;;  exp             1    6[BANK0 ] unsigned char 
;;  sign            1    7[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    3[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lbtoft
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text47,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\float.c"
	line	62
global __ptext47
__ptext47:	;psect for function ___ftpack
psect	text47
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 10
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l19068:	
	movf	(___ftpack@exp),w
	skipz
	goto	u12070
	goto	l2083
u12070:
	
l19070:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u12081
	goto	u12080
u12081:
	goto	l19074
u12080:
	
l2083:	
	line	65
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l2084
	line	67
	
l19072:	
	incf	(___ftpack@exp),f
	line	68
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l19074:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u12091
	goto	u12090
u12091:
	goto	l19072
u12090:
	goto	l19078
	line	71
	
l19076:	
	incf	(___ftpack@exp),f
	line	72
	incf	(___ftpack@arg),f
	skipnz
	incf	(___ftpack@arg+1),f
	skipnz
	incf	(___ftpack@arg+2),f
	line	73
	lsrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	70
	
l19078:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u12101
	goto	u12100
u12101:
	goto	l19076
u12100:
	goto	l19082
	line	76
	
l19080:	
	decf	(___ftpack@exp),f
	line	77
	lslf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l19082:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u12111
	goto	u12110
u12111:
	goto	l19080
u12110:
	
l2093:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u12121
	goto	u12120
u12121:
	goto	l2094
u12120:
	line	80
	
l19084:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l2094:	
	line	81
	lsrf	(___ftpack@exp),f
	line	82
	
l19086:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0+2)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+0)
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l19088:	
	movf	(___ftpack@sign),w
	skipz
	goto	u12130
	goto	l2095
u12130:
	line	84
	
l19090:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2095:	
	line	85
	line	86
	
l2084:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 51 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   19[BANK0 ] float 
;;  f2              3   22[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   29[BANK0 ] unsigned um
;;  sign            1   33[BANK0 ] unsigned char 
;;  cntr            1   32[BANK0 ] unsigned char 
;;  exp             1   28[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   19[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      15       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_read_param_eeprom
;;		_auto_system
;;		_application_init
;;		_pid_calc
;;		_handle_ad_loop
;;		_handle_task_process
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text48,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftmul.c"
	line	51
global __ptext48
__ptext48:	;psect for function ___ftmul
psect	text48
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\ftmul.c"
	line	51
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 10
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l19242:	
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u12411
	goto	u12410
u12411:
	goto	l19246
u12410:
	line	57
	
l19244:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2149
	line	58
	
l19246:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u12421
	goto	u12420
u12421:
	goto	l19250
u12420:
	line	59
	
l19248:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2149
	line	60
	
l19250:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l19252:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l19254:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l19256:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l19258:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l19260:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l19262:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l19264:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l19266:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l19268:	
	btfss	(___ftmul@f1),(0)&7
	goto	u12431
	goto	u12430
u12431:
	goto	l19272
u12430:
	line	72
	
l19270:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	line	73
	
l19272:	
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l19274:	
	lslf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l19276:	
	decfsz	(___ftmul@cntr),f
	goto	u12441
	goto	u12440
u12441:
	goto	l19268
u12440:
	line	76
	
l19278:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l19280:	
	btfss	(___ftmul@f1),(0)&7
	goto	u12451
	goto	u12450
u12451:
	goto	l19284
u12450:
	line	79
	
l19282:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	addwfc	(___ftmul@f3_as_product+1),f
	movf	(___ftmul@f2+2),w
	addwfc	(___ftmul@f3_as_product+2),f
	line	80
	
l19284:	
	lsrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l19286:	
	lsrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l19288:	
	decfsz	(___ftmul@cntr),f
	goto	u12461
	goto	u12460
u12461:
	goto	l19280
u12460:
	line	83
	
l19290:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	line	84
	
l2149:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 62 in file "D:\MCUProject\ZH-SL-H40\src\interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  time_cnt        2    1[BANK0 ] unsigned int 
;;  r1_data         1    0[BANK0 ] unsigned char 
;;  r2_data         1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 10/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          8       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_Disable_Bost_Pwm
;;		i1_Set_Bost_Pwm_Duty
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"D:\MCUProject\ZH-SL-H40\src\interrupt.c"
	line	62
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
;incstack = 0
	opt	stack 8
; Regs used in _isr: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
psect	intentry
	pagesel	$
	line	67
	
i1l15512:	
;interrupt.c: 64: unsigned char r1_data,r2_data;
;interrupt.c: 67: if (TMR1IE && TMR1IF)
	movlb 1	; select bank1
	btfss	(1160/8)^080h,(1160)&7	;volatile
	goto	u820_21
	goto	u820_20
u820_21:
	goto	i1l15746
u820_20:
	
i1l15514:	
	movlb 0	; select bank0
	btfss	(136/8),(136)&7	;volatile
	goto	u821_21
	goto	u821_20
u821_21:
	goto	i1l15746
u821_20:
	line	69
	
i1l15516:	
;interrupt.c: 68: {
;interrupt.c: 69: TMR1IF = 0x00;
	bcf	(136/8),(136)&7	;volatile
	line	70
	
i1l15518:	
;interrupt.c: 70: TMR1H = 0xE0;
	movlw	(0E0h)
	movwf	(23)	;volatile
	line	71
;interrupt.c: 71: TMR1L = 0xC0;
	movlw	(0C0h)
	movwf	(22)	;volatile
	line	74
;interrupt.c: 74: if(system_check_time==0x01)
	movlb 2	; select bank2
	decf	(_system_check_time)^0100h,w
	skipz
	goto	u822_21
	goto	u822_20
u822_21:
	goto	i1l15558
u822_20:
	line	76
	
i1l15520:	
;interrupt.c: 75: {
;interrupt.c: 76: system_time_count++;
	movlb 4	; select bank4
	incf	(_system_time_count)^0200h,f
	skipnz
	incf	(_system_time_count+1)^0200h,f
	line	78
	
i1l15522:	
;interrupt.c: 78: if(system_time_count>800)
	movlw	high(0321h)
	subwf	(_system_time_count+1)^0200h,w
	movlw	low(0321h)
	skipnz
	subwf	(_system_time_count)^0200h,w
	skipc
	goto	u823_21
	goto	u823_20
u823_21:
	goto	i1l15550
u823_20:
	line	80
	
i1l15524:	
;interrupt.c: 82: set_1HZ_flag^=0x01;
	clrf	(_system_time_count)^0200h
	clrf	(_system_time_count+1)^0200h
	line	84
	
i1l15526:	
;interrupt.c: 84: if(have_person1_flag==0x01)
	movlb 1	; select bank1
	decf	(_have_person1_flag)^080h,w
	skipz
	goto	u824_21
	goto	u824_20
u824_21:
	goto	i1l15534
u824_20:
	line	86
	
i1l15528:	
;interrupt.c: 85: {
;interrupt.c: 86: have_person1_time_count++;
	movlb 2	; select bank2
	incf	(_have_person1_time_count)^0100h,f
	line	88
	
i1l15530:	
;interrupt.c: 88: if(have_person1_time_count>20)
	movlw	(015h)
	subwf	(_have_person1_time_count)^0100h,w
	skipc
	goto	u825_21
	goto	u825_20
u825_21:
	goto	i1l15534
u825_20:
	line	90
	
i1l15532:	
;interrupt.c: 89: {
;interrupt.c: 90: have_person1_time_count=0x00;
	clrf	(_have_person1_time_count)^0100h
	line	92
;interrupt.c: 92: have_person1_flag=0x00;
	movlb 1	; select bank1
	clrf	(_have_person1_flag)^080h
	line	96
	
i1l15534:	
;interrupt.c: 93: }
;interrupt.c: 94: }
;interrupt.c: 96: if(open_sleep_time==0x01 && device_status==0x00)
	movlb 2	; select bank2
	decf	(_open_sleep_time)^0100h,w
	skipz
	goto	u826_21
	goto	u826_20
u826_21:
	goto	i1l15550
u826_20:
	
i1l15536:	
	movlb 0	; select bank0
	movf	(_device_status),f
	skipz
	goto	u827_21
	goto	u827_20
u827_21:
	goto	i1l15550
u827_20:
	line	98
	
i1l15538:	
;interrupt.c: 97: {
;interrupt.c: 98: sleep_time_count++;
	movlb 4	; select bank4
	incf	(_sleep_time_count)^0200h,f
	skipnz
	incf	(_sleep_time_count+1)^0200h,f
	line	100
	
i1l15540:	
;interrupt.c: 100: if(sleep_time_count>=20)
	movlw	high(014h)
	subwf	(_sleep_time_count+1)^0200h,w
	movlw	low(014h)
	skipnz
	subwf	(_sleep_time_count)^0200h,w
	skipc
	goto	u828_21
	goto	u828_20
u828_21:
	goto	i1l15550
u828_20:
	line	102
	
i1l15542:	
;interrupt.c: 101: {
;interrupt.c: 102: sleep_time_count=0x00;
	clrf	(_sleep_time_count)^0200h
	clrf	(_sleep_time_count+1)^0200h
	line	104
# 104 "D:\MCUProject\ZH-SL-H40\src\interrupt.c"
sleep ;# 
psect	intentry
	line	106
	
i1l15544:	
;interrupt.c: 106: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	107
	
i1l15546:	
;interrupt.c: 107: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	108
	
i1l15548:	
;interrupt.c: 108: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	114
	
i1l15550:	
;interrupt.c: 109: }
;interrupt.c: 110: }
;interrupt.c: 112: }
;interrupt.c: 114: scan_key_time_count++;
	movlb 2	; select bank2
	incf	(_scan_key_time_count)^0100h,f
	line	116
	
i1l15552:	
;interrupt.c: 116: if(scan_key_time_count>=40)
	movlw	(028h)
	subwf	(_scan_key_time_count)^0100h,w
	skipc
	goto	u829_21
	goto	u829_20
u829_21:
	goto	i1l15558
u829_20:
	line	118
	
i1l15554:	
;interrupt.c: 117: {
;interrupt.c: 118: scan_key_time_count=0x00;
	clrf	(_scan_key_time_count)^0100h
	line	120
	
i1l15556:	
;interrupt.c: 120: handle_scan_key_flag=0x01;
	clrf	(_handle_scan_key_flag)^0100h
	incf	(_handle_scan_key_flag)^0100h,f
	line	125
	
i1l15558:	
;interrupt.c: 121: }
;interrupt.c: 123: }
;interrupt.c: 125: if(open_discharge_time==0x01)
	decf	(_open_discharge_time)^0100h,w
	skipz
	goto	u830_21
	goto	u830_20
u830_21:
	goto	i1l15584
u830_20:
	line	127
	
i1l15560:	
;interrupt.c: 126: {
;interrupt.c: 127: if(ms_cnt<1000)
	movlw	high(03E8h)
	movlb 4	; select bank4
	subwf	(_ms_cnt+1)^0200h,w
	movlw	low(03E8h)
	skipnz
	subwf	(_ms_cnt)^0200h,w
	skipnc
	goto	u831_21
	goto	u831_20
u831_21:
	goto	i1l15564
u831_20:
	line	129
	
i1l15562:	
;interrupt.c: 128: {
;interrupt.c: 129: ms_cnt++;
	incf	(_ms_cnt)^0200h,f
	skipnz
	incf	(_ms_cnt+1)^0200h,f
	line	130
;interrupt.c: 130: }
	goto	i1l15584
	line	133
	
i1l15564:	
;interrupt.c: 131: else
;interrupt.c: 132: {
;interrupt.c: 133: ms_cnt=0x00;
	clrf	(_ms_cnt)^0200h
	clrf	(_ms_cnt+1)^0200h
	line	135
	
i1l15566:	
;interrupt.c: 135: if(se_cnt<60)
	movlw	high(03Ch)
	subwf	(_se_cnt+1)^0200h,w
	movlw	low(03Ch)
	skipnz
	subwf	(_se_cnt)^0200h,w
	skipnc
	goto	u832_21
	goto	u832_20
u832_21:
	goto	i1l15570
u832_20:
	line	137
	
i1l15568:	
;interrupt.c: 136: {
;interrupt.c: 137: se_cnt++;
	incf	(_se_cnt)^0200h,f
	skipnz
	incf	(_se_cnt+1)^0200h,f
	line	138
;interrupt.c: 138: }
	goto	i1l15584
	line	141
	
i1l15570:	
;interrupt.c: 139: else
;interrupt.c: 140: {
;interrupt.c: 141: se_cnt=0x00;
	clrf	(_se_cnt)^0200h
	clrf	(_se_cnt+1)^0200h
	line	143
	
i1l15572:	
;interrupt.c: 143: if(mi_cnt<60)
	movlw	high(03Ch)
	subwf	(_mi_cnt+1)^0200h,w
	movlw	low(03Ch)
	skipnz
	subwf	(_mi_cnt)^0200h,w
	skipnc
	goto	u833_21
	goto	u833_20
u833_21:
	goto	i1l15576
u833_20:
	line	145
	
i1l15574:	
;interrupt.c: 144: {
;interrupt.c: 145: mi_cnt++;
	incf	(_mi_cnt)^0200h,f
	skipnz
	incf	(_mi_cnt+1)^0200h,f
	line	146
;interrupt.c: 146: }
	goto	i1l15584
	line	149
	
i1l15576:	
;interrupt.c: 147: else
;interrupt.c: 148: {
;interrupt.c: 149: mi_cnt=0x00;
	clrf	(_mi_cnt)^0200h
	clrf	(_mi_cnt+1)^0200h
	line	151
	
i1l15578:	
;interrupt.c: 151: if(ho_cnt<24)
	movlw	high(018h)
	movlb 1	; select bank1
	subwf	(_ho_cnt+1)^080h,w
	movlw	low(018h)
	skipnz
	subwf	(_ho_cnt)^080h,w
	skipnc
	goto	u834_21
	goto	u834_20
u834_21:
	goto	i1l15582
u834_20:
	line	153
	
i1l15580:	
;interrupt.c: 152: {
;interrupt.c: 153: ho_cnt++;
	incf	(_ho_cnt)^080h,f
	skipnz
	incf	(_ho_cnt+1)^080h,f
	line	154
;interrupt.c: 154: }
	goto	i1l15584
	line	157
	
i1l15582:	
;interrupt.c: 155: else
;interrupt.c: 156: {
;interrupt.c: 157: ho_cnt=0x00;
	clrf	(_ho_cnt)^080h
	clrf	(_ho_cnt+1)^080h
	line	164
	
i1l15584:	
;interrupt.c: 158: }
;interrupt.c: 159: }
;interrupt.c: 160: }
;interrupt.c: 161: }
;interrupt.c: 162: }
;interrupt.c: 164: if(open_an0_time==0x01)
	movlb 2	; select bank2
	decf	(_open_an0_time)^0100h,w
	skipz
	goto	u835_21
	goto	u835_20
u835_21:
	goto	i1l15594
u835_20:
	line	166
	
i1l15586:	
;interrupt.c: 165: {
;interrupt.c: 166: an0_time_count++;
	movlb 4	; select bank4
	incf	(_an0_time_count)^0200h,f
	skipnz
	incf	(_an0_time_count+1)^0200h,f
	line	168
	
i1l15588:	
;interrupt.c: 168: if(an0_time_count>=1000)
	movlw	high(03E8h)
	subwf	(_an0_time_count+1)^0200h,w
	movlw	low(03E8h)
	skipnz
	subwf	(_an0_time_count)^0200h,w
	skipc
	goto	u836_21
	goto	u836_20
u836_21:
	goto	i1l15594
u836_20:
	line	170
	
i1l15590:	
;interrupt.c: 169: {
;interrupt.c: 170: an0_time_count=0x00;
	clrf	(_an0_time_count)^0200h
	clrf	(_an0_time_count+1)^0200h
	line	172
	
i1l15592:	
;interrupt.c: 172: handle_an0_process_flag=0x01;
	movlb 2	; select bank2
	clrf	(_handle_an0_process_flag)^0100h
	incf	(_handle_an0_process_flag)^0100h,f
	line	176
	
i1l15594:	
;interrupt.c: 173: }
;interrupt.c: 175: }
;interrupt.c: 176: if(open_an1_time==0x01)
	movlb 2	; select bank2
	decf	(_open_an1_time)^0100h,w
	skipz
	goto	u837_21
	goto	u837_20
u837_21:
	goto	i1l15604
u837_20:
	line	178
	
i1l15596:	
;interrupt.c: 177: {
;interrupt.c: 178: an1_time_count++;
	movlb 4	; select bank4
	incf	(_an1_time_count)^0200h,f
	skipnz
	incf	(_an1_time_count+1)^0200h,f
	line	180
	
i1l15598:	
;interrupt.c: 180: if(an1_time_count>=1000)
	movlw	high(03E8h)
	subwf	(_an1_time_count+1)^0200h,w
	movlw	low(03E8h)
	skipnz
	subwf	(_an1_time_count)^0200h,w
	skipc
	goto	u838_21
	goto	u838_20
u838_21:
	goto	i1l15604
u838_20:
	line	182
	
i1l15600:	
;interrupt.c: 181: {
;interrupt.c: 182: an1_time_count=0x00;
	clrf	(_an1_time_count)^0200h
	clrf	(_an1_time_count+1)^0200h
	line	184
	
i1l15602:	
;interrupt.c: 184: handle_an1_process_flag=0x01;
	movlb 2	; select bank2
	clrf	(_handle_an1_process_flag)^0100h
	incf	(_handle_an1_process_flag)^0100h,f
	line	188
	
i1l15604:	
;interrupt.c: 185: }
;interrupt.c: 187: }
;interrupt.c: 188: if(open_an2_time==0x01)
	movlb 2	; select bank2
	decf	(_open_an2_time)^0100h,w
	skipz
	goto	u839_21
	goto	u839_20
u839_21:
	goto	i1l15614
u839_20:
	line	190
	
i1l15606:	
;interrupt.c: 189: {
;interrupt.c: 190: an2_time_count++;
	movlb 4	; select bank4
	incf	(_an2_time_count)^0200h,f
	skipnz
	incf	(_an2_time_count+1)^0200h,f
	line	192
	
i1l15608:	
;interrupt.c: 192: if(an2_time_count>=5)
	movlw	high(05h)
	subwf	(_an2_time_count+1)^0200h,w
	movlw	low(05h)
	skipnz
	subwf	(_an2_time_count)^0200h,w
	skipc
	goto	u840_21
	goto	u840_20
u840_21:
	goto	i1l15614
u840_20:
	line	194
	
i1l15610:	
;interrupt.c: 193: {
;interrupt.c: 194: an2_time_count=0x00;
	clrf	(_an2_time_count)^0200h
	clrf	(_an2_time_count+1)^0200h
	line	196
	
i1l15612:	
;interrupt.c: 196: handle_an2_process_flag=0x01;
	movlb 2	; select bank2
	clrf	(_handle_an2_process_flag)^0100h
	incf	(_handle_an2_process_flag)^0100h,f
	line	201
	
i1l15614:	
;interrupt.c: 197: }
;interrupt.c: 199: }
;interrupt.c: 201: if(open_an3_time==0x01)
	movlb 2	; select bank2
	decf	(_open_an3_time)^0100h,w
	skipz
	goto	u841_21
	goto	u841_20
u841_21:
	goto	i1l15624
u841_20:
	line	203
	
i1l15616:	
;interrupt.c: 202: {
;interrupt.c: 203: an3_time_count++;
	movlb 4	; select bank4
	incf	(_an3_time_count)^0200h,f
	skipnz
	incf	(_an3_time_count+1)^0200h,f
	line	205
	
i1l15618:	
;interrupt.c: 205: if(an3_time_count>=5)
	movlw	high(05h)
	subwf	(_an3_time_count+1)^0200h,w
	movlw	low(05h)
	skipnz
	subwf	(_an3_time_count)^0200h,w
	skipc
	goto	u842_21
	goto	u842_20
u842_21:
	goto	i1l15624
u842_20:
	line	207
	
i1l15620:	
;interrupt.c: 206: {
;interrupt.c: 207: an3_time_count=0x00;
	clrf	(_an3_time_count)^0200h
	clrf	(_an3_time_count+1)^0200h
	line	209
	
i1l15622:	
;interrupt.c: 209: handle_an3_process_flag=0x01;
	movlb 2	; select bank2
	clrf	(_handle_an3_process_flag)^0100h
	incf	(_handle_an3_process_flag)^0100h,f
	line	215
	
i1l15624:	
;interrupt.c: 210: }
;interrupt.c: 212: }
;interrupt.c: 215: if(open_an9_time==0x01)
	movlb 2	; select bank2
	decf	(_open_an9_time)^0100h,w
	skipz
	goto	u843_21
	goto	u843_20
u843_21:
	goto	i1l15634
u843_20:
	line	217
	
i1l15626:	
;interrupt.c: 216: {
;interrupt.c: 217: an9_time_count++;
	movlb 4	; select bank4
	incf	(_an9_time_count)^0200h,f
	skipnz
	incf	(_an9_time_count+1)^0200h,f
	line	219
	
i1l15628:	
;interrupt.c: 219: if(an9_time_count>=5)
	movlw	high(05h)
	subwf	(_an9_time_count+1)^0200h,w
	movlw	low(05h)
	skipnz
	subwf	(_an9_time_count)^0200h,w
	skipc
	goto	u844_21
	goto	u844_20
u844_21:
	goto	i1l15634
u844_20:
	line	221
	
i1l15630:	
;interrupt.c: 220: {
;interrupt.c: 221: an9_time_count=0x00;
	clrf	(_an9_time_count)^0200h
	clrf	(_an9_time_count+1)^0200h
	line	223
	
i1l15632:	
;interrupt.c: 223: handle_an9_process_flag=0x01;
	movlb 2	; select bank2
	clrf	(_handle_an9_process_flag)^0100h
	incf	(_handle_an9_process_flag)^0100h,f
	line	230
	
i1l15634:	
;interrupt.c: 226: }
;interrupt.c: 228: }
;interrupt.c: 230: if(open_an4_time==0x01)
	movlb 2	; select bank2
	decf	(_open_an4_time)^0100h,w
	skipz
	goto	u845_21
	goto	u845_20
u845_21:
	goto	i1l15644
u845_20:
	line	232
	
i1l15636:	
;interrupt.c: 231: {
;interrupt.c: 232: an4_time_count++;
	movlb 4	; select bank4
	incf	(_an4_time_count)^0200h,f
	skipnz
	incf	(_an4_time_count+1)^0200h,f
	line	234
	
i1l15638:	
;interrupt.c: 234: if(an4_time_count>=5)
	movlw	high(05h)
	subwf	(_an4_time_count+1)^0200h,w
	movlw	low(05h)
	skipnz
	subwf	(_an4_time_count)^0200h,w
	skipc
	goto	u846_21
	goto	u846_20
u846_21:
	goto	i1l15644
u846_20:
	line	236
	
i1l15640:	
;interrupt.c: 235: {
;interrupt.c: 236: an4_time_count=0x00;
	clrf	(_an4_time_count)^0200h
	clrf	(_an4_time_count+1)^0200h
	line	238
	
i1l15642:	
;interrupt.c: 238: handle_an4_process_flag=0x01;
	movlb 2	; select bank2
	clrf	(_handle_an4_process_flag)^0100h
	incf	(_handle_an4_process_flag)^0100h,f
	line	243
	
i1l15644:	
;interrupt.c: 239: }
;interrupt.c: 241: }
;interrupt.c: 243: if(open_an10_time==0x01)
	movlb 2	; select bank2
	decf	(_open_an10_time)^0100h,w
	skipz
	goto	u847_21
	goto	u847_20
u847_21:
	goto	i1l15654
u847_20:
	line	245
	
i1l15646:	
;interrupt.c: 244: {
;interrupt.c: 245: an10_time_count++;
	movlb 4	; select bank4
	incf	(_an10_time_count)^0200h,f
	skipnz
	incf	(_an10_time_count+1)^0200h,f
	line	247
	
i1l15648:	
;interrupt.c: 247: if(an10_time_count>=2)
	movlw	high(02h)
	subwf	(_an10_time_count+1)^0200h,w
	movlw	low(02h)
	skipnz
	subwf	(_an10_time_count)^0200h,w
	skipc
	goto	u848_21
	goto	u848_20
u848_21:
	goto	i1l15654
u848_20:
	line	249
	
i1l15650:	
;interrupt.c: 248: {
;interrupt.c: 249: an10_time_count=0x00;
	clrf	(_an10_time_count)^0200h
	clrf	(_an10_time_count+1)^0200h
	line	251
	
i1l15652:	
;interrupt.c: 251: handle_an10_process_flag=0x01;
	movlb 2	; select bank2
	clrf	(_handle_an10_process_flag)^0100h
	incf	(_handle_an10_process_flag)^0100h,f
	line	257
	
i1l15654:	
;interrupt.c: 252: }
;interrupt.c: 254: }
;interrupt.c: 257: if (uart1_time_count > 0x00)
	movlb 1	; select bank1
	movf	(_uart1_time_count)^080h,w
	skipz
	goto	u849_20
	goto	i1l15720
u849_20:
	line	259
	
i1l15656:	
;interrupt.c: 258: {
;interrupt.c: 259: uart1_time_count--;
	decf	(_uart1_time_count)^080h,f
	line	261
;interrupt.c: 261: if(uart1_time_count==0)
	movf	(_uart1_time_count)^080h,f
	skipz
	goto	u850_21
	goto	u850_20
u850_21:
	goto	i1l15720
u850_20:
	line	263
	
i1l15658:	
;interrupt.c: 262: {
;interrupt.c: 263: if((uart1_receive_byte_count==5)&&(uart1_rx_buf[1]==0xA1)&&(uart1_rx_buf[4]==0xAA))
	movf	(_uart1_receive_byte_count)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u851_21
	goto	u851_20
u851_21:
	goto	i1l15666
u851_20:
	
i1l15660:	
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+01h,w
	xorlw	0A1h&0ffh
	skipz
	goto	u852_21
	goto	u852_20
u852_21:
	goto	i1l15666
u852_20:
	
i1l15662:	
	movf	0+(_uart1_rx_buf)^0380h+04h,w
	xorlw	0AAh&0ffh
	skipz
	goto	u853_21
	goto	u853_20
u853_21:
	goto	i1l15666
u853_20:
	line	265
	
i1l15664:	
;interrupt.c: 264: {
;interrupt.c: 265: rx_frame_kind=0x01;
	movlb 2	; select bank2
	clrf	(_rx_frame_kind)^0100h
	incf	(_rx_frame_kind)^0100h,f
	line	267
;interrupt.c: 267: uart1_receive_flag=TRUE;
	movlb 1	; select bank1
	clrf	(_uart1_receive_flag)^080h
	incf	(_uart1_receive_flag)^080h,f
	line	268
;interrupt.c: 268: }
	goto	i1l15720
	line	269
	
i1l15666:	
;interrupt.c: 269: else if((uart1_receive_byte_count==5)&&(uart1_rx_buf[1]==0xA2)&&(uart1_rx_buf[4]==0xAA))
	movlb 1	; select bank1
	movf	(_uart1_receive_byte_count)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u854_21
	goto	u854_20
u854_21:
	goto	i1l15676
u854_20:
	
i1l15668:	
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+01h,w
	xorlw	0A2h&0ffh
	skipz
	goto	u855_21
	goto	u855_20
u855_21:
	goto	i1l15676
u855_20:
	
i1l15670:	
	movf	0+(_uart1_rx_buf)^0380h+04h,w
	xorlw	0AAh&0ffh
	skipz
	goto	u856_21
	goto	u856_20
u856_21:
	goto	i1l15676
u856_20:
	line	271
	
i1l15672:	
;interrupt.c: 270: {
;interrupt.c: 271: rx_frame_kind=0x02;
	movlw	(02h)
	movlb 2	; select bank2
	movwf	(_rx_frame_kind)^0100h
	line	273
	
i1l15674:	
;interrupt.c: 273: uart1_receive_flag=TRUE;
	movlb 1	; select bank1
	clrf	(_uart1_receive_flag)^080h
	incf	(_uart1_receive_flag)^080h,f
	line	274
;interrupt.c: 274: }
	goto	i1l15720
	line	275
	
i1l15676:	
;interrupt.c: 275: else if((uart1_receive_byte_count==21)&&(uart1_rx_buf[1]==0xA3)&&(uart1_rx_buf[20]==0xAA))
	movlb 1	; select bank1
	movf	(_uart1_receive_byte_count)^080h,w
	xorlw	015h&0ffh
	skipz
	goto	u857_21
	goto	u857_20
u857_21:
	goto	i1l15686
u857_20:
	
i1l15678:	
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+01h,w
	xorlw	0A3h&0ffh
	skipz
	goto	u858_21
	goto	u858_20
u858_21:
	goto	i1l15686
u858_20:
	
i1l15680:	
	movf	0+(_uart1_rx_buf)^0380h+014h,w
	xorlw	0AAh&0ffh
	skipz
	goto	u859_21
	goto	u859_20
u859_21:
	goto	i1l15686
u859_20:
	line	277
	
i1l15682:	
;interrupt.c: 276: {
;interrupt.c: 277: rx_frame_kind=0x03;
	movlw	(03h)
	movlb 2	; select bank2
	movwf	(_rx_frame_kind)^0100h
	goto	i1l15674
	line	281
	
i1l15686:	
;interrupt.c: 281: else if((uart1_receive_byte_count==5)&&(uart1_rx_buf[1]==0xA4)&&(uart1_rx_buf[4]==0xAA))
	movlb 1	; select bank1
	movf	(_uart1_receive_byte_count)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u860_21
	goto	u860_20
u860_21:
	goto	i1l15696
u860_20:
	
i1l15688:	
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+01h,w
	xorlw	0A4h&0ffh
	skipz
	goto	u861_21
	goto	u861_20
u861_21:
	goto	i1l15696
u861_20:
	
i1l15690:	
	movf	0+(_uart1_rx_buf)^0380h+04h,w
	xorlw	0AAh&0ffh
	skipz
	goto	u862_21
	goto	u862_20
u862_21:
	goto	i1l15696
u862_20:
	line	283
	
i1l15692:	
;interrupt.c: 282: {
;interrupt.c: 283: rx_frame_kind=0x04;
	movlw	(04h)
	movlb 2	; select bank2
	movwf	(_rx_frame_kind)^0100h
	goto	i1l15674
	line	287
	
i1l15696:	
;interrupt.c: 287: else if((uart1_receive_byte_count==5)&&(uart1_rx_buf[1]==0xA5)&&(uart1_rx_buf[4]==0xAA))
	movlb 1	; select bank1
	movf	(_uart1_receive_byte_count)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u863_21
	goto	u863_20
u863_21:
	goto	i1l15706
u863_20:
	
i1l15698:	
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+01h,w
	xorlw	0A5h&0ffh
	skipz
	goto	u864_21
	goto	u864_20
u864_21:
	goto	i1l15706
u864_20:
	
i1l15700:	
	movf	0+(_uart1_rx_buf)^0380h+04h,w
	xorlw	0AAh&0ffh
	skipz
	goto	u865_21
	goto	u865_20
u865_21:
	goto	i1l15706
u865_20:
	line	289
	
i1l15702:	
;interrupt.c: 288: {
;interrupt.c: 289: rx_frame_kind=0x05;
	movlw	(05h)
	movlb 2	; select bank2
	movwf	(_rx_frame_kind)^0100h
	goto	i1l15674
	line	293
	
i1l15706:	
;interrupt.c: 293: else if((uart1_receive_byte_count==5)&&(uart1_rx_buf[1]==0xA6)&&(uart1_rx_buf[4]==0xAA))
	movlb 1	; select bank1
	movf	(_uart1_receive_byte_count)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u866_21
	goto	u866_20
u866_21:
	goto	i1l258
u866_20:
	
i1l15708:	
	movlb 7	; select bank7
	movf	0+(_uart1_rx_buf)^0380h+01h,w
	xorlw	0A6h&0ffh
	skipz
	goto	u867_21
	goto	u867_20
u867_21:
	goto	i1l258
u867_20:
	
i1l15710:	
	movf	0+(_uart1_rx_buf)^0380h+04h,w
	xorlw	0AAh&0ffh
	skipz
	goto	u868_21
	goto	u868_20
u868_21:
	goto	i1l258
u868_20:
	line	295
	
i1l15712:	
;interrupt.c: 294: {
;interrupt.c: 295: rx_frame_kind=0x06;
	movlw	(06h)
	movlb 2	; select bank2
	movwf	(_rx_frame_kind)^0100h
	goto	i1l15674
	line	299
	
i1l258:	
	line	301
;interrupt.c: 299: else
;interrupt.c: 300: {
;interrupt.c: 301: if (RCSTAbits.FERR || RCSTAbits.OERR)
	movlb 3	; select bank3
	btfsc	(413)^0180h,2	;volatile
	goto	u869_21
	goto	u869_20
u869_21:
	goto	i1l262
u869_20:
	
i1l15716:	
	btfss	(413)^0180h,1	;volatile
	goto	u870_21
	goto	u870_20
u870_21:
	goto	i1l15718
u870_20:
	
i1l262:	
	line	303
;interrupt.c: 302: {
;interrupt.c: 303: RCSTAbits.CREN = 0x00;
	bcf	(413)^0180h,4	;volatile
	line	304
;interrupt.c: 304: RCSTAbits.SPEN = 0x00;
	bcf	(413)^0180h,7	;volatile
	line	305
;interrupt.c: 305: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	306
;interrupt.c: 306: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	307
;interrupt.c: 307: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	308
;interrupt.c: 308: RCSTAbits.CREN = 0x01;
	movlb 3	; select bank3
	bsf	(413)^0180h,4	;volatile
	line	309
;interrupt.c: 309: RCSTAbits.SPEN = 0x01;
	bsf	(413)^0180h,7	;volatile
	line	312
	
i1l15718:	
;interrupt.c: 310: }
;interrupt.c: 312: uart1_receive_byte_count=0x00;
	movlb 1	; select bank1
	clrf	(_uart1_receive_byte_count)^080h
	line	319
	
i1l15720:	
;interrupt.c: 313: }
;interrupt.c: 314: }
;interrupt.c: 316: }
;interrupt.c: 319: if (uart_send_delay_timer > 0x00)
	movf	(_uart_send_delay_timer)^080h,w
	skipz
	goto	u871_20
	goto	i1l15726
u871_20:
	line	321
	
i1l15722:	
;interrupt.c: 320: {
;interrupt.c: 321: uart_send_delay_timer--;
	decf	(_uart_send_delay_timer)^080h,f
	line	323
;interrupt.c: 323: if (uart_send_delay_timer == 0x00)
	movf	(_uart_send_delay_timer)^080h,f
	skipz
	goto	u872_21
	goto	u872_20
u872_21:
	goto	i1l15726
u872_20:
	line	325
	
i1l15724:	
;interrupt.c: 324: {
;interrupt.c: 325: TXIE = 0x01;
	bsf	(1164/8)^080h,(1164)&7	;volatile
	line	330
	
i1l15726:	
;interrupt.c: 326: }
;interrupt.c: 328: }
;interrupt.c: 330: if (uart_send_end_flag == 0x01)
	movlb 2	; select bank2
	decf	(_uart_send_end_flag)^0100h,w
	skipz
	goto	u873_21
	goto	u873_20
u873_21:
	goto	i1l15732
u873_20:
	line	332
	
i1l15728:	
;interrupt.c: 331: {
;interrupt.c: 332: if (TXSTAbits.TRMT)
	movlb 3	; select bank3
	btfss	(414)^0180h,1	;volatile
	goto	u874_21
	goto	u874_20
u874_21:
	goto	i1l15732
u874_20:
	line	335
	
i1l15730:	
;interrupt.c: 333: {
;interrupt.c: 335: uart_send_end_flag = 0x00;
	movlb 2	; select bank2
	clrf	(_uart_send_end_flag)^0100h
	line	343
	
i1l15732:	
;interrupt.c: 337: }
;interrupt.c: 339: }
;interrupt.c: 343: if(ird_receive_time_count>0)
	movlb 1	; select bank1
	movf	(_ird_receive_time_count)^080h,w
	skipz
	goto	u875_20
	goto	i1l15746
u875_20:
	line	345
	
i1l15734:	
;interrupt.c: 344: {
;interrupt.c: 345: ird_receive_time_count--;
	decf	(_ird_receive_time_count)^080h,f
	line	347
;interrupt.c: 347: if(ird_receive_time_count==0x00)
	movf	(_ird_receive_time_count)^080h,f
	skipz
	goto	u876_21
	goto	u876_20
u876_21:
	goto	i1l15746
u876_20:
	line	349
	
i1l15736:	
;interrupt.c: 348: {
;interrupt.c: 349: if(receive_bit_count==32)
	movf	(_receive_bit_count)^080h,w
	xorlw	020h&0ffh
	skipz
	goto	u877_21
	goto	u877_20
u877_21:
	goto	i1l15742
u877_20:
	line	351
	
i1l15738:	
;interrupt.c: 350: {
;interrupt.c: 351: ird_receive_flag=0x01;
	clrf	(_ird_receive_flag)^080h
	incf	(_ird_receive_flag)^080h,f
	line	353
	
i1l15740:	
;interrupt.c: 353: receive_bit_count=0x00;
	clrf	(_receive_bit_count)^080h
	line	354
;interrupt.c: 354: }
	goto	i1l15746
	line	357
	
i1l15742:	
;interrupt.c: 355: else
;interrupt.c: 356: {
;interrupt.c: 357: receive_bit_count=0x00;
	clrf	(_receive_bit_count)^080h
	line	359
;interrupt.c: 359: ird_status=0x00;
	clrf	(_ird_status)^080h
	line	361
;interrupt.c: 361: TMR0=0;
	movlb 0	; select bank0
	clrf	(21)	;volatile
	line	363
	
i1l15744:	
;interrupt.c: 363: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	375
	
i1l15746:	
;interrupt.c: 365: }
;interrupt.c: 366: }
;interrupt.c: 367: }
;interrupt.c: 371: }
;interrupt.c: 375: if (TXIE && TXIF)
	movlb 1	; select bank1
	btfss	(1164/8)^080h,(1164)&7	;volatile
	goto	u878_21
	goto	u878_20
u878_21:
	goto	i1l271
u878_20:
	
i1l15748:	
	movlb 0	; select bank0
	btfss	(140/8),(140)&7	;volatile
	goto	u879_21
	goto	u879_20
u879_21:
	goto	i1l271
u879_20:
	line	377
	
i1l15750:	
;interrupt.c: 376: {
;interrupt.c: 377: if (uart_send_byte_count > 0x00)
	movlb 1	; select bank1
	movf	(_uart_send_byte_count)^080h,w
	skipz
	goto	u880_20
	goto	i1l15758
u880_20:
	line	379
	
i1l15752:	
;interrupt.c: 378: {
;interrupt.c: 379: uart_send_byte_count--;
	decf	(_uart_send_byte_count)^080h,f
	line	380
	
i1l15754:	
;interrupt.c: 380: TXREG = *uart_send_point;
	movlb 2	; select bank2
	movf	(_uart_send_point)^0100h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	381
	
i1l15756:	
;interrupt.c: 381: uart_send_point++;
	movlb 2	; select bank2
	incf	(_uart_send_point)^0100h,f
	line	382
;interrupt.c: 382: }
	goto	i1l271
	line	383
	
i1l15758:	
;interrupt.c: 383: else if (uart_send_byte_count == 0x00)
	movf	(_uart_send_byte_count)^080h,f
	skipz
	goto	u881_21
	goto	u881_20
u881_21:
	goto	i1l274
u881_20:
	line	385
	
i1l15760:	
;interrupt.c: 384: {
;interrupt.c: 385: uart_send_end_flag = 0x01;
	movlb 2	; select bank2
	clrf	(_uart_send_end_flag)^0100h
	incf	(_uart_send_end_flag)^0100h,f
	line	386
;interrupt.c: 386: TXIE = 0x00;
	movlb 1	; select bank1
	bcf	(1164/8)^080h,(1164)&7	;volatile
	line	387
;interrupt.c: 387: }
	goto	i1l271
	line	388
	
i1l274:	
	line	390
;interrupt.c: 388: else
;interrupt.c: 389: {
;interrupt.c: 390: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	392
	
i1l271:	
	line	394
;interrupt.c: 391: }
;interrupt.c: 392: }
;interrupt.c: 394: if(RCIF && RCIE)
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u882_21
	goto	u882_20
u882_21:
	goto	i1l15774
u882_20:
	
i1l15762:	
	movlb 1	; select bank1
	btfss	(1165/8)^080h,(1165)&7	;volatile
	goto	u883_21
	goto	u883_20
u883_21:
	goto	i1l15774
u883_20:
	line	397
	
i1l15764:	
;interrupt.c: 395: {
;interrupt.c: 397: r1_data=RCREG;
	movlb 3	; select bank3
	movf	(409)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(isr@r1_data)
	line	399
;interrupt.c: 399: uart1_time_count=0x0A;
	movlw	(0Ah)
	movlb 1	; select bank1
	movwf	(_uart1_time_count)^080h
	line	401
;interrupt.c: 401: if( (uart1_receive_byte_count<21)&&(uart1_receive_flag==FALSE) )
	movlw	(015h)
	subwf	(_uart1_receive_byte_count)^080h,w
	skipnc
	goto	u884_21
	goto	u884_20
u884_21:
	goto	i1l15774
u884_20:
	
i1l15766:	
	movf	(_uart1_receive_flag)^080h,f
	skipz
	goto	u885_21
	goto	u885_20
u885_21:
	goto	i1l15774
u885_20:
	line	403
	
i1l15768:	
;interrupt.c: 402: {
;interrupt.c: 403: uart1_rx_buf[uart1_receive_byte_count]=r1_data;
	movf	(_uart1_receive_byte_count)^080h,w
	addlw	_uart1_rx_buf&0ffh
	movwf	fsr1l
	movlw 3	; select bank7/8
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(isr@r1_data),w
	movwf	indf1
	line	405
	
i1l15770:	
;interrupt.c: 405: if(uart1_rx_buf[0]==0x55)
	movlb 7	; select bank7
	movf	(_uart1_rx_buf)^0380h,w
	xorlw	055h&0ffh
	skipz
	goto	u886_21
	goto	u886_20
u886_21:
	goto	i1l15774
u886_20:
	line	407
	
i1l15772:	
;interrupt.c: 406: {
;interrupt.c: 407: uart1_receive_byte_count++;
	movlb 1	; select bank1
	incf	(_uart1_receive_byte_count)^080h,f
	line	416
	
i1l15774:	
;interrupt.c: 408: }
;interrupt.c: 409: }
;interrupt.c: 413: }
;interrupt.c: 416: if(C1IE && C1IF)
	movlb 1	; select bank1
	btfss	(1173/8)^080h,(1173)&7	;volatile
	goto	u887_21
	goto	u887_20
u887_21:
	goto	i1l15786
u887_20:
	
i1l15776:	
	movlb 0	; select bank0
	btfss	(149/8),(149)&7	;volatile
	goto	u888_21
	goto	u888_20
u888_21:
	goto	i1l15786
u888_20:
	line	418
	
i1l15778:	
;interrupt.c: 417: {
;interrupt.c: 418: C1IF=0;
	bcf	(149/8),(149)&7	;volatile
	line	420
;interrupt.c: 420: handle_short_flag=0x01;
	movlb 2	; select bank2
	clrf	(_handle_short_flag)^0100h
	incf	(_handle_short_flag)^0100h,f
	line	424
	
i1l15780:	
;interrupt.c: 424: discharge_index=0x03;
	movlw	(03h)
	movlb 1	; select bank1
	movwf	(_discharge_index)^080h
	line	426
	
i1l15782:	
;interrupt.c: 426: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	428
;interrupt.c: 428: bost_pwm_value=2;
	movlw	02h
	movlb 1	; select bank1
	movwf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	430
	
i1l15784:	
;interrupt.c: 430: Set_Bost_Pwm_Duty(bost_pwm_value);
	movf	(_bost_pwm_value+1)^080h,w
	movwf	(i1Set_Bost_Pwm_Duty@dduty+1)
	movf	(_bost_pwm_value)^080h,w
	movwf	(i1Set_Bost_Pwm_Duty@dduty)
	fcall	i1_Set_Bost_Pwm_Duty
	line	432
;interrupt.c: 432: Disable_Bost_Pwm();
	fcall	i1_Disable_Bost_Pwm
	line	438
	
i1l15786:	
;interrupt.c: 436: }
;interrupt.c: 438: if(IOCIE && IOCIF)
	btfss	(91/8),(91)&7	;volatile
	goto	u889_21
	goto	u889_20
u889_21:
	goto	i1l292
u889_20:
	
i1l15788:	
	btfss	(88/8),(88)&7	;volatile
	goto	u890_21
	goto	u890_20
u890_21:
	goto	i1l292
u890_20:
	line	442
	
i1l15790:	
;interrupt.c: 439: {
;interrupt.c: 440: unsigned int time_cnt;
;interrupt.c: 442: if(IOCBF4)
	movlb 7	; select bank7
	btfss	(7348/8)^0380h,(7348)&7	;volatile
	goto	u891_21
	goto	u891_20
u891_21:
	goto	i1l281
u891_20:
	line	444
	
i1l15792:	
;interrupt.c: 443: {
;interrupt.c: 444: IOCBF4=0;
	bcf	(7348/8)^0380h,(7348)&7	;volatile
	line	445
	
i1l281:	
	line	447
;interrupt.c: 445: }
;interrupt.c: 447: if(IOCBF7)
	btfss	(7351/8)^0380h,(7351)&7	;volatile
	goto	u892_21
	goto	u892_20
u892_21:
	goto	i1l292
u892_20:
	line	449
	
i1l15794:	
;interrupt.c: 448: {
;interrupt.c: 449: IOCBF7 = 0;
	bcf	(7351/8)^0380h,(7351)&7	;volatile
	line	451
	
i1l15796:	
;interrupt.c: 451: ird_receive_time_count=150;
	movlw	(096h)
	movlb 1	; select bank1
	movwf	(_ird_receive_time_count)^080h
	line	453
;interrupt.c: 453: if((receive_bit_count<32)&&(ird_receive_flag==0x00))
	movlw	(020h)
	subwf	(_receive_bit_count)^080h,w
	skipnc
	goto	u893_21
	goto	u893_20
u893_21:
	goto	i1l292
u893_20:
	
i1l15798:	
	movf	(_ird_receive_flag)^080h,f
	skipz
	goto	u894_21
	goto	u894_20
u894_21:
	goto	i1l292
u894_20:
	line	455
	
i1l15800:	
;interrupt.c: 454: {
;interrupt.c: 455: if(ird_status==0x00)
	movf	(_ird_status)^080h,f
	skipz
	goto	u895_21
	goto	u895_20
u895_21:
	goto	i1l15808
u895_20:
	line	457
	
i1l15802:	
;interrupt.c: 456: {
;interrupt.c: 457: ird_status=0x01;
	clrf	(_ird_status)^080h
	incf	(_ird_status)^080h,f
	line	459
	
i1l15804:	
;interrupt.c: 459: TMR0=0;
	movlb 0	; select bank0
	clrf	(21)	;volatile
	line	461
	
i1l15806:	
;interrupt.c: 461: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	463
;interrupt.c: 463: }
	goto	i1l292
	line	464
	
i1l15808:	
;interrupt.c: 464: else if(ird_status==0x01)
	decf	(_ird_status)^080h,w
	skipz
	goto	u896_21
	goto	u896_20
u896_21:
	goto	i1l292
u896_20:
	line	466
	
i1l15810:	
;interrupt.c: 465: {
;interrupt.c: 466: time_cnt=TMR0;
	movlb 0	; select bank0
	movf	(21),w	;volatile
	movwf	(isr@time_cnt)
	clrf	(isr@time_cnt+1)
	line	468
	
i1l15812:	
;interrupt.c: 468: if(TMR0IF==1)
	btfss	(90/8),(90)&7	;volatile
	goto	u897_21
	goto	u897_20
u897_21:
	goto	i1l15820
u897_20:
	line	470
	
i1l15814:	
;interrupt.c: 469: {
;interrupt.c: 470: receive_bit_count=0x00;
	movlb 1	; select bank1
	clrf	(_receive_bit_count)^080h
	line	472
	
i1l15816:	
;interrupt.c: 472: ird_data=0x00;
	movlb 4	; select bank4
	clrf	(_ird_data)^0200h
	clrf	(_ird_data+1)^0200h
	clrf	(_ird_data+2)^0200h
	clrf	(_ird_data+3)^0200h
	line	474
;interrupt.c: 474: TMR0=0;
	movlb 0	; select bank0
	clrf	(21)	;volatile
	goto	i1l15806
	line	480
	
i1l15820:	
;interrupt.c: 480: else if((time_cnt>20)&&(time_cnt<50))
	movlw	high(015h)
	subwf	(isr@time_cnt+1),w
	movlw	low(015h)
	skipnz
	subwf	(isr@time_cnt),w
	skipc
	goto	u898_21
	goto	u898_20
u898_21:
	goto	i1l15830
u898_20:
	
i1l15822:	
	movlw	high(032h)
	subwf	(isr@time_cnt+1),w
	movlw	low(032h)
	skipnz
	subwf	(isr@time_cnt),w
	skipnc
	goto	u899_21
	goto	u899_20
u899_21:
	goto	i1l15830
u899_20:
	line	482
	
i1l15824:	
;interrupt.c: 481: {
;interrupt.c: 482: receive_bit_count++;
	movlb 1	; select bank1
	incf	(_receive_bit_count)^080h,f
	line	484
;interrupt.c: 484: ird_data=ird_data<<1;
	movlb 4	; select bank4
	lslf	(_ird_data)^0200h,f
	rlf	(_ird_data+1)^0200h,f
	rlf	(_ird_data+2)^0200h,f
	rlf	(_ird_data+3)^0200h,f
	goto	i1l15804
	line	490
	
i1l15830:	
;interrupt.c: 490: else if((time_cnt>50)&&(time_cnt<90))
	movlw	high(033h)
	subwf	(isr@time_cnt+1),w
	movlw	low(033h)
	skipnz
	subwf	(isr@time_cnt),w
	skipc
	goto	u900_21
	goto	u900_20
u900_21:
	goto	i1l286
u900_20:
	
i1l15832:	
	movlw	high(05Ah)
	subwf	(isr@time_cnt+1),w
	movlw	low(05Ah)
	skipnz
	subwf	(isr@time_cnt),w
	skipnc
	goto	u901_21
	goto	u901_20
u901_21:
	goto	i1l286
u901_20:
	line	492
	
i1l15834:	
;interrupt.c: 491: {
;interrupt.c: 492: receive_bit_count++;
	movlb 1	; select bank1
	incf	(_receive_bit_count)^080h,f
	line	494
	
i1l15836:	
;interrupt.c: 494: ird_data=(ird_data<<1)+1;
	movlw	01h
	movwf	((??_isr+0)+0)
	movlw	0
	movwf	((??_isr+0)+0+1)
	movlw	0
	movwf	((??_isr+0)+0+2)
	movlw	0
	movwf	((??_isr+0)+0+3)
	movlb 4	; select bank4
	movf	(_ird_data)^0200h,w
	movwf	(??_isr+4)+0
	movf	(_ird_data+1)^0200h,w
	movwf	((??_isr+4)+0+1)
	movf	(_ird_data+2)^0200h,w
	movwf	((??_isr+4)+0+2)
	movf	(_ird_data+3)^0200h,w
	movwf	((??_isr+4)+0+3)
	lslf	(??_isr+4)+0,f
	rlf	(??_isr+4)+1,f
	rlf	(??_isr+4)+2,f
	rlf	(??_isr+4)+3,f
	movf	0+(??_isr+4)+0,w
	addwf	(??_isr+0)+0,f
	movf	1+(??_isr+4)+0,w
	addwfc	(??_isr+0)+1,f
	movf	2+(??_isr+4)+0,w
	addwfc	(??_isr+0)+2,f
	movf	3+(??_isr+4)+0,w
	addwfc	(??_isr+0)+3,f
	movf	3+(??_isr+0)+0,w
	movwf	(_ird_data+3)^0200h
	movf	2+(??_isr+0)+0,w
	movwf	(_ird_data+2)^0200h
	movf	1+(??_isr+0)+0,w
	movwf	(_ird_data+1)^0200h
	movf	0+(??_isr+0)+0,w
	movwf	(_ird_data)^0200h

	goto	i1l15804
	line	500
	
i1l286:	
	line	508
	
i1l292:	
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,88
	global	i1_Set_Bost_Pwm_Duty

;; *************** function i1_Set_Bost_Pwm_Duty *****************
;; Defined at:
;;		line 216 in file "D:\MCUProject\ZH-SL-H40\src\pwm.c"
;; Parameters:    Size  Location     Type
;;  dduty           2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/6
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text50,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-H40\src\pwm.c"
	line	216
global __ptext50
__ptext50:	;psect for function i1_Set_Bost_Pwm_Duty
psect	text50
	file	"D:\MCUProject\ZH-SL-H40\src\pwm.c"
	line	216
	global	__size_ofi1_Set_Bost_Pwm_Duty
	__size_ofi1_Set_Bost_Pwm_Duty	equ	__end_ofi1_Set_Bost_Pwm_Duty-i1_Set_Bost_Pwm_Duty
	
i1_Set_Bost_Pwm_Duty:	
;incstack = 0
	opt	stack 8
; Regs used in i1_Set_Bost_Pwm_Duty: [wreg+status,2+status,0]
	line	219
	
i1l15502:	
;pwm.c: 219: bost_pwm_value=dduty;
	movf	(i1Set_Bost_Pwm_Duty@dduty+1),w
	movwf	(_bost_pwm_value+1)^080h
	movf	(i1Set_Bost_Pwm_Duty@dduty),w
	movwf	(_bost_pwm_value)^080h
	line	221
;pwm.c: 221: if(dduty<=488)
	movlw	high(01E9h)
	subwf	(i1Set_Bost_Pwm_Duty@dduty+1),w
	movlw	low(01E9h)
	skipnz
	subwf	(i1Set_Bost_Pwm_Duty@dduty),w
	skipnc
	goto	u819_21
	goto	u819_20
u819_21:
	goto	i1l15506
u819_20:
	line	223
	
i1l15504:	
;pwm.c: 222: {
;pwm.c: 223: CCPR3L=(unsigned char)(dduty>>2);
	movf	(i1Set_Bost_Pwm_Duty@dduty+1),w
	movwf	(??i1_Set_Bost_Pwm_Duty+0)+0+1
	movf	(i1Set_Bost_Pwm_Duty@dduty),w
	movwf	(??i1_Set_Bost_Pwm_Duty+0)+0
	lsrf	(??i1_Set_Bost_Pwm_Duty+0)+1,f
	rrf	(??i1_Set_Bost_Pwm_Duty+0)+0,f
	lsrf	(??i1_Set_Bost_Pwm_Duty+0)+1,f
	rrf	(??i1_Set_Bost_Pwm_Duty+0)+0,f
	movf	0+(??i1_Set_Bost_Pwm_Duty+0)+0,w
	movlb 6	; select bank6
	movwf	(785)^0300h	;volatile
	line	225
;pwm.c: 225: CCP3CONbits.DC3B=(unsigned char)(dduty&0b11);
	movf	(i1Set_Bost_Pwm_Duty@dduty),w
	andlw	03h
	movwf	(??i1_Set_Bost_Pwm_Duty+0)+0
	swapf	(??i1_Set_Bost_Pwm_Duty+0)+0,f
	movf	(787)^0300h,w	;volatile
	xorwf	(??i1_Set_Bost_Pwm_Duty+0)+0,w
	andlw	not (((1<<2)-1)<<4)
	xorwf	(??i1_Set_Bost_Pwm_Duty+0)+0,w
	movwf	(787)^0300h	;volatile
	line	226
;pwm.c: 226: }
	goto	i1l983
	line	229
	
i1l15506:	
	line	231
	
i1l15508:	
;pwm.c: 231: CCPR3L=(unsigned char)(dduty>>2);
	movlw	(07Ah)
	movlb 6	; select bank6
	movwf	(785)^0300h	;volatile
	line	233
	
i1l15510:	
;pwm.c: 233: CCP3CONbits.DC3B=(unsigned char)(dduty&0b11);
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	(787)^0300h,f	;volatile
	line	236
	
i1l983:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Set_Bost_Pwm_Duty
	__end_ofi1_Set_Bost_Pwm_Duty:
	signat	i1_Set_Bost_Pwm_Duty,88
	global	i1_Disable_Bost_Pwm

;; *************** function i1_Disable_Bost_Pwm *****************
;; Defined at:
;;		line 201 in file "D:\MCUProject\ZH-SL-H40\src\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1F/6
;;		On exit  : 1F/8
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text51,local,class=CODE,delta=2,merge=1
	line	201
global __ptext51
__ptext51:	;psect for function i1_Disable_Bost_Pwm
psect	text51
	file	"D:\MCUProject\ZH-SL-H40\src\pwm.c"
	line	201
	global	__size_ofi1_Disable_Bost_Pwm
	__size_ofi1_Disable_Bost_Pwm	equ	__end_ofi1_Disable_Bost_Pwm-i1_Disable_Bost_Pwm
	
i1_Disable_Bost_Pwm:	
;incstack = 0
	opt	stack 8
; Regs used in i1_Disable_Bost_Pwm: []
	line	203
	
i1l15500:	
;pwm.c: 203: TRISBbits.TRISB5 =1;
	movlb 1	; select bank1
	bsf	(141)^080h,5	;volatile
	line	205
;pwm.c: 205: TMR4ON=0;
	movlb 8	; select bank8
	bcf	(8378/8)^0400h,(8378)&7	;volatile
	line	207
	
i1l978:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Disable_Bost_Pwm
	__end_ofi1_Disable_Bost_Pwm:
	signat	i1_Disable_Bost_Pwm,88
global	___latbits
___latbits	equ	3
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
global __pbssBIGRAM
__pbssBIGRAM	equ	9072
	end
