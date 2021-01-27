;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module mode3
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _blink
	.globl _Timer0_ISR
	.globl _main
	.globl _srand
	.globl _rand
	.globl _putchar
	.globl _printf
	.globl _getchar_nw
	.globl _Sys_Init
	.globl _UART0_Init
	.globl _SYSCLK_Init
	.globl _LED7
	.globl _LED6
	.globl _LED5
	.globl _LED4
	.globl _LED3
	.globl _LED2
	.globl _LED1
	.globl _LED0
	.globl _SS1
	.globl _SS0
	.globl _PB1
	.globl _PB0
	.globl _BILED1
	.globl _BILED0
	.globl _SPIF
	.globl _WCOL
	.globl _MODF
	.globl _RXOVRN
	.globl _TXBSY
	.globl _SLVSEL
	.globl _MSTEN
	.globl _SPIEN
	.globl _AD0EN
	.globl _ADCEN
	.globl _AD0TM
	.globl _ADCTM
	.globl _AD0INT
	.globl _ADCINT
	.globl _AD0BUSY
	.globl _ADBUSY
	.globl _AD0CM1
	.globl _ADSTM1
	.globl _AD0CM0
	.globl _ADSTM0
	.globl _AD0WINT
	.globl _ADWINT
	.globl _AD0LJST
	.globl _ADLJST
	.globl _CF
	.globl _CR
	.globl _CCF4
	.globl _CCF3
	.globl _CCF2
	.globl _CCF1
	.globl _CCF0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _CT2
	.globl _CPRL2
	.globl _BUSY
	.globl _ENSMB
	.globl _STA
	.globl _STO
	.globl _SI
	.globl _AA
	.globl _SMBFTE
	.globl _SMBTOE
	.globl _PT2
	.globl _PS
	.globl _PS0
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ES0
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _S0MODE
	.globl _SM00
	.globl _SM0
	.globl _SM10
	.globl _SM1
	.globl _MCE0
	.globl _SM20
	.globl _SM2
	.globl _REN0
	.globl _REN
	.globl _TB80
	.globl _TB8
	.globl _RB80
	.globl _RB8
	.globl _TI0
	.globl _TI
	.globl _RI0
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PCA0CP4
	.globl _PCA0CP3
	.globl _PCA0CP2
	.globl _PCA0CP1
	.globl _PCA0CP0
	.globl _PCA0
	.globl _DAC1
	.globl _DAC0
	.globl _ADC0LT
	.globl _ADC0GT
	.globl _ADC0
	.globl _RCAP4
	.globl _TMR4
	.globl _TMR3RL
	.globl _TMR3
	.globl _RCAP2
	.globl _TMR2
	.globl _TMR1
	.globl _TMR0
	.globl _WDTCN
	.globl _PCA0CPH4
	.globl _PCA0CPH3
	.globl _PCA0CPH2
	.globl _PCA0CPH1
	.globl _PCA0CPH0
	.globl _PCA0H
	.globl _SPI0CN
	.globl _EIP2
	.globl _EIP1
	.globl _TH4
	.globl _TL4
	.globl _SADDR1
	.globl _SBUF1
	.globl _SCON1
	.globl _B
	.globl _RSTSRC
	.globl _PCA0CPL4
	.globl _PCA0CPL3
	.globl _PCA0CPL2
	.globl _PCA0CPL1
	.globl _PCA0CPL0
	.globl _PCA0L
	.globl _ADC0CN
	.globl _EIE2
	.globl _EIE1
	.globl _RCAP4H
	.globl _RCAP4L
	.globl _XBR2
	.globl _XBR1
	.globl _XBR0
	.globl _ACC
	.globl _PCA0CPM4
	.globl _PCA0CPM3
	.globl _PCA0CPM2
	.globl _PCA0CPM1
	.globl _PCA0CPM0
	.globl _PCA0MD
	.globl _PCA0CN
	.globl _DAC1CN
	.globl _DAC1H
	.globl _DAC1L
	.globl _DAC0CN
	.globl _DAC0H
	.globl _DAC0L
	.globl _REF0CN
	.globl _PSW
	.globl _SMB0CR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T4CON
	.globl _T2CON
	.globl _ADC0LTH
	.globl _ADC0LTL
	.globl _ADC0GTH
	.globl _ADC0GTL
	.globl _SMB0ADR
	.globl _SMB0DAT
	.globl _SMB0STA
	.globl _SMB0CN
	.globl _ADC0H
	.globl _ADC0L
	.globl _P1MDIN
	.globl _ADC0CF
	.globl _AMX0SL
	.globl _AMX0CF
	.globl _SADEN0
	.globl _IP
	.globl _FLACL
	.globl _FLSCL
	.globl _P74OUT
	.globl _OSCICN
	.globl _OSCXCN
	.globl _P3
	.globl __XPAGE
	.globl _EMI0CN
	.globl _SADEN1
	.globl _P3IF
	.globl _AMX1SL
	.globl _ADC1CF
	.globl _ADC1CN
	.globl _SADDR0
	.globl _IE
	.globl _P3MDOUT
	.globl _PRT3CF
	.globl _P2MDOUT
	.globl _PRT2CF
	.globl _P1MDOUT
	.globl _PRT1CF
	.globl _P0MDOUT
	.globl _PRT0CF
	.globl _EMI0CF
	.globl _EMI0TC
	.globl _P2
	.globl _CPT1CN
	.globl _CPT0CN
	.globl _SPI0CKR
	.globl _ADC1
	.globl _SPI0DAT
	.globl _SPI0CFG
	.globl _SBUF0
	.globl _SBUF
	.globl _SCON0
	.globl _SCON
	.globl _P7
	.globl _TMR3H
	.globl _TMR3L
	.globl _TMR3RLH
	.globl _TMR3RLL
	.globl _TMR3CN
	.globl _P1
	.globl _PSCTL
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _P6
	.globl _P5
	.globl _P4
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _aligned_alloc_PARM_2
	.globl _counts
	.globl _Port_Init
	.globl _Interrupt_Init
	.globl _Timer_Init
	.globl _ADC_Init
	.globl _read_AD_input
	.globl _generate_random_number
	.globl _mode3
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$P4$0$0 == 0x0084
_P4	=	0x0084
G$P5$0$0 == 0x0085
_P5	=	0x0085
G$P6$0$0 == 0x0086
_P6	=	0x0086
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$CKCON$0$0 == 0x008e
_CKCON	=	0x008e
G$PSCTL$0$0 == 0x008f
_PSCTL	=	0x008f
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$TMR3CN$0$0 == 0x0091
_TMR3CN	=	0x0091
G$TMR3RLL$0$0 == 0x0092
_TMR3RLL	=	0x0092
G$TMR3RLH$0$0 == 0x0093
_TMR3RLH	=	0x0093
G$TMR3L$0$0 == 0x0094
_TMR3L	=	0x0094
G$TMR3H$0$0 == 0x0095
_TMR3H	=	0x0095
G$P7$0$0 == 0x0096
_P7	=	0x0096
G$SCON$0$0 == 0x0098
_SCON	=	0x0098
G$SCON0$0$0 == 0x0098
_SCON0	=	0x0098
G$SBUF$0$0 == 0x0099
_SBUF	=	0x0099
G$SBUF0$0$0 == 0x0099
_SBUF0	=	0x0099
G$SPI0CFG$0$0 == 0x009a
_SPI0CFG	=	0x009a
G$SPI0DAT$0$0 == 0x009b
_SPI0DAT	=	0x009b
G$ADC1$0$0 == 0x009c
_ADC1	=	0x009c
G$SPI0CKR$0$0 == 0x009d
_SPI0CKR	=	0x009d
G$CPT0CN$0$0 == 0x009e
_CPT0CN	=	0x009e
G$CPT1CN$0$0 == 0x009f
_CPT1CN	=	0x009f
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$EMI0TC$0$0 == 0x00a1
_EMI0TC	=	0x00a1
G$EMI0CF$0$0 == 0x00a3
_EMI0CF	=	0x00a3
G$PRT0CF$0$0 == 0x00a4
_PRT0CF	=	0x00a4
G$P0MDOUT$0$0 == 0x00a4
_P0MDOUT	=	0x00a4
G$PRT1CF$0$0 == 0x00a5
_PRT1CF	=	0x00a5
G$P1MDOUT$0$0 == 0x00a5
_P1MDOUT	=	0x00a5
G$PRT2CF$0$0 == 0x00a6
_PRT2CF	=	0x00a6
G$P2MDOUT$0$0 == 0x00a6
_P2MDOUT	=	0x00a6
G$PRT3CF$0$0 == 0x00a7
_PRT3CF	=	0x00a7
G$P3MDOUT$0$0 == 0x00a7
_P3MDOUT	=	0x00a7
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$SADDR0$0$0 == 0x00a9
_SADDR0	=	0x00a9
G$ADC1CN$0$0 == 0x00aa
_ADC1CN	=	0x00aa
G$ADC1CF$0$0 == 0x00ab
_ADC1CF	=	0x00ab
G$AMX1SL$0$0 == 0x00ac
_AMX1SL	=	0x00ac
G$P3IF$0$0 == 0x00ad
_P3IF	=	0x00ad
G$SADEN1$0$0 == 0x00ae
_SADEN1	=	0x00ae
G$EMI0CN$0$0 == 0x00af
_EMI0CN	=	0x00af
G$_XPAGE$0$0 == 0x00af
__XPAGE	=	0x00af
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$OSCXCN$0$0 == 0x00b1
_OSCXCN	=	0x00b1
G$OSCICN$0$0 == 0x00b2
_OSCICN	=	0x00b2
G$P74OUT$0$0 == 0x00b5
_P74OUT	=	0x00b5
G$FLSCL$0$0 == 0x00b6
_FLSCL	=	0x00b6
G$FLACL$0$0 == 0x00b7
_FLACL	=	0x00b7
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$SADEN0$0$0 == 0x00b9
_SADEN0	=	0x00b9
G$AMX0CF$0$0 == 0x00ba
_AMX0CF	=	0x00ba
G$AMX0SL$0$0 == 0x00bb
_AMX0SL	=	0x00bb
G$ADC0CF$0$0 == 0x00bc
_ADC0CF	=	0x00bc
G$P1MDIN$0$0 == 0x00bd
_P1MDIN	=	0x00bd
G$ADC0L$0$0 == 0x00be
_ADC0L	=	0x00be
G$ADC0H$0$0 == 0x00bf
_ADC0H	=	0x00bf
G$SMB0CN$0$0 == 0x00c0
_SMB0CN	=	0x00c0
G$SMB0STA$0$0 == 0x00c1
_SMB0STA	=	0x00c1
G$SMB0DAT$0$0 == 0x00c2
_SMB0DAT	=	0x00c2
G$SMB0ADR$0$0 == 0x00c3
_SMB0ADR	=	0x00c3
G$ADC0GTL$0$0 == 0x00c4
_ADC0GTL	=	0x00c4
G$ADC0GTH$0$0 == 0x00c5
_ADC0GTH	=	0x00c5
G$ADC0LTL$0$0 == 0x00c6
_ADC0LTL	=	0x00c6
G$ADC0LTH$0$0 == 0x00c7
_ADC0LTH	=	0x00c7
G$T2CON$0$0 == 0x00c8
_T2CON	=	0x00c8
G$T4CON$0$0 == 0x00c9
_T4CON	=	0x00c9
G$RCAP2L$0$0 == 0x00ca
_RCAP2L	=	0x00ca
G$RCAP2H$0$0 == 0x00cb
_RCAP2H	=	0x00cb
G$TL2$0$0 == 0x00cc
_TL2	=	0x00cc
G$TH2$0$0 == 0x00cd
_TH2	=	0x00cd
G$SMB0CR$0$0 == 0x00cf
_SMB0CR	=	0x00cf
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$REF0CN$0$0 == 0x00d1
_REF0CN	=	0x00d1
G$DAC0L$0$0 == 0x00d2
_DAC0L	=	0x00d2
G$DAC0H$0$0 == 0x00d3
_DAC0H	=	0x00d3
G$DAC0CN$0$0 == 0x00d4
_DAC0CN	=	0x00d4
G$DAC1L$0$0 == 0x00d5
_DAC1L	=	0x00d5
G$DAC1H$0$0 == 0x00d6
_DAC1H	=	0x00d6
G$DAC1CN$0$0 == 0x00d7
_DAC1CN	=	0x00d7
G$PCA0CN$0$0 == 0x00d8
_PCA0CN	=	0x00d8
G$PCA0MD$0$0 == 0x00d9
_PCA0MD	=	0x00d9
G$PCA0CPM0$0$0 == 0x00da
_PCA0CPM0	=	0x00da
G$PCA0CPM1$0$0 == 0x00db
_PCA0CPM1	=	0x00db
G$PCA0CPM2$0$0 == 0x00dc
_PCA0CPM2	=	0x00dc
G$PCA0CPM3$0$0 == 0x00dd
_PCA0CPM3	=	0x00dd
G$PCA0CPM4$0$0 == 0x00de
_PCA0CPM4	=	0x00de
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$XBR0$0$0 == 0x00e1
_XBR0	=	0x00e1
G$XBR1$0$0 == 0x00e2
_XBR1	=	0x00e2
G$XBR2$0$0 == 0x00e3
_XBR2	=	0x00e3
G$RCAP4L$0$0 == 0x00e4
_RCAP4L	=	0x00e4
G$RCAP4H$0$0 == 0x00e5
_RCAP4H	=	0x00e5
G$EIE1$0$0 == 0x00e6
_EIE1	=	0x00e6
G$EIE2$0$0 == 0x00e7
_EIE2	=	0x00e7
G$ADC0CN$0$0 == 0x00e8
_ADC0CN	=	0x00e8
G$PCA0L$0$0 == 0x00e9
_PCA0L	=	0x00e9
G$PCA0CPL0$0$0 == 0x00ea
_PCA0CPL0	=	0x00ea
G$PCA0CPL1$0$0 == 0x00eb
_PCA0CPL1	=	0x00eb
G$PCA0CPL2$0$0 == 0x00ec
_PCA0CPL2	=	0x00ec
G$PCA0CPL3$0$0 == 0x00ed
_PCA0CPL3	=	0x00ed
G$PCA0CPL4$0$0 == 0x00ee
_PCA0CPL4	=	0x00ee
G$RSTSRC$0$0 == 0x00ef
_RSTSRC	=	0x00ef
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$SCON1$0$0 == 0x00f1
_SCON1	=	0x00f1
G$SBUF1$0$0 == 0x00f2
_SBUF1	=	0x00f2
G$SADDR1$0$0 == 0x00f3
_SADDR1	=	0x00f3
G$TL4$0$0 == 0x00f4
_TL4	=	0x00f4
G$TH4$0$0 == 0x00f5
_TH4	=	0x00f5
G$EIP1$0$0 == 0x00f6
_EIP1	=	0x00f6
G$EIP2$0$0 == 0x00f7
_EIP2	=	0x00f7
G$SPI0CN$0$0 == 0x00f8
_SPI0CN	=	0x00f8
G$PCA0H$0$0 == 0x00f9
_PCA0H	=	0x00f9
G$PCA0CPH0$0$0 == 0x00fa
_PCA0CPH0	=	0x00fa
G$PCA0CPH1$0$0 == 0x00fb
_PCA0CPH1	=	0x00fb
G$PCA0CPH2$0$0 == 0x00fc
_PCA0CPH2	=	0x00fc
G$PCA0CPH3$0$0 == 0x00fd
_PCA0CPH3	=	0x00fd
G$PCA0CPH4$0$0 == 0x00fe
_PCA0CPH4	=	0x00fe
G$WDTCN$0$0 == 0x00ff
_WDTCN	=	0x00ff
G$TMR0$0$0 == 0x8c8a
_TMR0	=	0x8c8a
G$TMR1$0$0 == 0x8d8b
_TMR1	=	0x8d8b
G$TMR2$0$0 == 0xcdcc
_TMR2	=	0xcdcc
G$RCAP2$0$0 == 0xcbca
_RCAP2	=	0xcbca
G$TMR3$0$0 == 0x9594
_TMR3	=	0x9594
G$TMR3RL$0$0 == 0x9392
_TMR3RL	=	0x9392
G$TMR4$0$0 == 0xf5f4
_TMR4	=	0xf5f4
G$RCAP4$0$0 == 0xe5e4
_RCAP4	=	0xe5e4
G$ADC0$0$0 == 0xbfbe
_ADC0	=	0xbfbe
G$ADC0GT$0$0 == 0xc5c4
_ADC0GT	=	0xc5c4
G$ADC0LT$0$0 == 0xc7c6
_ADC0LT	=	0xc7c6
G$DAC0$0$0 == 0xd3d2
_DAC0	=	0xd3d2
G$DAC1$0$0 == 0xd6d5
_DAC1	=	0xd6d5
G$PCA0$0$0 == 0xf9e9
_PCA0	=	0xf9e9
G$PCA0CP0$0$0 == 0xfaea
_PCA0CP0	=	0xfaea
G$PCA0CP1$0$0 == 0xfbeb
_PCA0CP1	=	0xfbeb
G$PCA0CP2$0$0 == 0xfcec
_PCA0CP2	=	0xfcec
G$PCA0CP3$0$0 == 0xfded
_PCA0CP3	=	0xfded
G$PCA0CP4$0$0 == 0xfeee
_PCA0CP4	=	0xfeee
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0$0 == 0x0098
_RI	=	0x0098
G$RI0$0$0 == 0x0098
_RI0	=	0x0098
G$TI$0$0 == 0x0099
_TI	=	0x0099
G$TI0$0$0 == 0x0099
_TI0	=	0x0099
G$RB8$0$0 == 0x009a
_RB8	=	0x009a
G$RB80$0$0 == 0x009a
_RB80	=	0x009a
G$TB8$0$0 == 0x009b
_TB8	=	0x009b
G$TB80$0$0 == 0x009b
_TB80	=	0x009b
G$REN$0$0 == 0x009c
_REN	=	0x009c
G$REN0$0$0 == 0x009c
_REN0	=	0x009c
G$SM2$0$0 == 0x009d
_SM2	=	0x009d
G$SM20$0$0 == 0x009d
_SM20	=	0x009d
G$MCE0$0$0 == 0x009d
_MCE0	=	0x009d
G$SM1$0$0 == 0x009e
_SM1	=	0x009e
G$SM10$0$0 == 0x009e
_SM10	=	0x009e
G$SM0$0$0 == 0x009f
_SM0	=	0x009f
G$SM00$0$0 == 0x009f
_SM00	=	0x009f
G$S0MODE$0$0 == 0x009f
_S0MODE	=	0x009f
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$ES0$0$0 == 0x00ac
_ES0	=	0x00ac
G$ES$0$0 == 0x00ac
_ES	=	0x00ac
G$ET2$0$0 == 0x00ad
_ET2	=	0x00ad
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PS0$0$0 == 0x00bc
_PS0	=	0x00bc
G$PS$0$0 == 0x00bc
_PS	=	0x00bc
G$PT2$0$0 == 0x00bd
_PT2	=	0x00bd
G$SMBTOE$0$0 == 0x00c0
_SMBTOE	=	0x00c0
G$SMBFTE$0$0 == 0x00c1
_SMBFTE	=	0x00c1
G$AA$0$0 == 0x00c2
_AA	=	0x00c2
G$SI$0$0 == 0x00c3
_SI	=	0x00c3
G$STO$0$0 == 0x00c4
_STO	=	0x00c4
G$STA$0$0 == 0x00c5
_STA	=	0x00c5
G$ENSMB$0$0 == 0x00c6
_ENSMB	=	0x00c6
G$BUSY$0$0 == 0x00c7
_BUSY	=	0x00c7
G$CPRL2$0$0 == 0x00c8
_CPRL2	=	0x00c8
G$CT2$0$0 == 0x00c9
_CT2	=	0x00c9
G$TR2$0$0 == 0x00ca
_TR2	=	0x00ca
G$EXEN2$0$0 == 0x00cb
_EXEN2	=	0x00cb
G$TCLK$0$0 == 0x00cc
_TCLK	=	0x00cc
G$RCLK$0$0 == 0x00cd
_RCLK	=	0x00cd
G$EXF2$0$0 == 0x00ce
_EXF2	=	0x00ce
G$TF2$0$0 == 0x00cf
_TF2	=	0x00cf
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$CCF0$0$0 == 0x00d8
_CCF0	=	0x00d8
G$CCF1$0$0 == 0x00d9
_CCF1	=	0x00d9
G$CCF2$0$0 == 0x00da
_CCF2	=	0x00da
G$CCF3$0$0 == 0x00db
_CCF3	=	0x00db
G$CCF4$0$0 == 0x00dc
_CCF4	=	0x00dc
G$CR$0$0 == 0x00de
_CR	=	0x00de
G$CF$0$0 == 0x00df
_CF	=	0x00df
G$ADLJST$0$0 == 0x00e8
_ADLJST	=	0x00e8
G$AD0LJST$0$0 == 0x00e8
_AD0LJST	=	0x00e8
G$ADWINT$0$0 == 0x00e9
_ADWINT	=	0x00e9
G$AD0WINT$0$0 == 0x00e9
_AD0WINT	=	0x00e9
G$ADSTM0$0$0 == 0x00ea
_ADSTM0	=	0x00ea
G$AD0CM0$0$0 == 0x00ea
_AD0CM0	=	0x00ea
G$ADSTM1$0$0 == 0x00eb
_ADSTM1	=	0x00eb
G$AD0CM1$0$0 == 0x00eb
_AD0CM1	=	0x00eb
G$ADBUSY$0$0 == 0x00ec
_ADBUSY	=	0x00ec
G$AD0BUSY$0$0 == 0x00ec
_AD0BUSY	=	0x00ec
G$ADCINT$0$0 == 0x00ed
_ADCINT	=	0x00ed
G$AD0INT$0$0 == 0x00ed
_AD0INT	=	0x00ed
G$ADCTM$0$0 == 0x00ee
_ADCTM	=	0x00ee
G$AD0TM$0$0 == 0x00ee
_AD0TM	=	0x00ee
G$ADCEN$0$0 == 0x00ef
_ADCEN	=	0x00ef
G$AD0EN$0$0 == 0x00ef
_AD0EN	=	0x00ef
G$SPIEN$0$0 == 0x00f8
_SPIEN	=	0x00f8
G$MSTEN$0$0 == 0x00f9
_MSTEN	=	0x00f9
G$SLVSEL$0$0 == 0x00fa
_SLVSEL	=	0x00fa
G$TXBSY$0$0 == 0x00fb
_TXBSY	=	0x00fb
G$RXOVRN$0$0 == 0x00fc
_RXOVRN	=	0x00fc
G$MODF$0$0 == 0x00fd
_MODF	=	0x00fd
G$WCOL$0$0 == 0x00fe
_WCOL	=	0x00fe
G$SPIF$0$0 == 0x00ff
_SPIF	=	0x00ff
G$BILED0$0$0 == 0x00a4
_BILED0	=	0x00a4
G$BILED1$0$0 == 0x00a5
_BILED1	=	0x00a5
G$PB0$0$0 == 0x00a2
_PB0	=	0x00a2
G$PB1$0$0 == 0x00a3
_PB1	=	0x00a3
G$SS0$0$0 == 0x00a0
_SS0	=	0x00a0
G$SS1$0$0 == 0x00a1
_SS1	=	0x00a1
G$LED0$0$0 == 0x00b0
_LED0	=	0x00b0
G$LED1$0$0 == 0x00b1
_LED1	=	0x00b1
G$LED2$0$0 == 0x00b2
_LED2	=	0x00b2
G$LED3$0$0 == 0x00b3
_LED3	=	0x00b3
G$LED4$0$0 == 0x00b4
_LED4	=	0x00b4
G$LED5$0$0 == 0x00b5
_LED5	=	0x00b5
G$LED6$0$0 == 0x00b6
_LED6	=	0x00b6
G$LED7$0$0 == 0x00b7
_LED7	=	0x00b7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$counts$0$0==.
_counts::
	.ds 2
Lmode3.aligned_alloc$size$1$39==.
_aligned_alloc_PARM_2:
	.ds 2
Lmode3.mode3$var$1$74==.
_mode3_var_1_74:
	.ds 1
Lmode3.mode3$score_timer$1$74==.
_mode3_score_timer_1_74:
	.ds 2
Lmode3.mode3$submit_timer$1$74==.
_mode3_submit_timer_1_74:
	.ds 2
Lmode3.mode3$sloc0$1$0==.
_mode3_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_Timer0_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	C$mode3.c$34$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:34: int counts=0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'SYSCLK_Init'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$SYSCLK_Init$0$0 ==.
	C$c8051_SDCC.h$62$0$0 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
;	-----------------------------------------
;	 function SYSCLK_Init
;	-----------------------------------------
_SYSCLK_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$c8051_SDCC.h$66$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
	mov	_OSCXCN,#0x67
	C$c8051_SDCC.h$69$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
	mov	r6,#0x00
	mov	r7,#0x01
00107$:
	mov	a,r6
	add	a,#0xff
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r5,a
	mov	ar6,r4
	mov	ar7,r5
	mov	a,r4
	orl	a,r5
	jnz	00107$
	C$c8051_SDCC.h$71$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
00102$:
	mov	a,_OSCXCN
	jnb	acc.7,00102$
	C$c8051_SDCC.h$73$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
	mov	_OSCICN,#0x88
	C$c8051_SDCC.h$76$1$2 ==.
	XG$SYSCLK_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_Init'
;------------------------------------------------------------
	G$UART0_Init$0$0 ==.
	C$c8051_SDCC.h$84$1$2 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
;	-----------------------------------------
;	 function UART0_Init
;	-----------------------------------------
_UART0_Init:
	C$c8051_SDCC.h$86$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
	mov	_SCON0,#0x50
	C$c8051_SDCC.h$87$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
	mov	_TMOD,#0x20
	C$c8051_SDCC.h$88$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
	mov	_TH1,#0xdc
	C$c8051_SDCC.h$89$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
	setb	_TR1
	C$c8051_SDCC.h$90$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
	orl	_CKCON,#0x10
	C$c8051_SDCC.h$91$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
	orl	_PCON,#0x80
	C$c8051_SDCC.h$93$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
	setb	_TI0
	C$c8051_SDCC.h$94$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
	orl	_P0MDOUT,#0x01
	C$c8051_SDCC.h$95$1$4 ==.
	XG$UART0_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Sys_Init'
;------------------------------------------------------------
	G$Sys_Init$0$0 ==.
	C$c8051_SDCC.h$103$1$4 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
;	-----------------------------------------
;	 function Sys_Init
;	-----------------------------------------
_Sys_Init:
	C$c8051_SDCC.h$105$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
	mov	_WDTCN,#0xde
	C$c8051_SDCC.h$106$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
	mov	_WDTCN,#0xad
	C$c8051_SDCC.h$108$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
	lcall	_SYSCLK_Init
	C$c8051_SDCC.h$109$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
	lcall	_UART0_Init
	C$c8051_SDCC.h$111$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
	orl	_XBR0,#0x04
	C$c8051_SDCC.h$112$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
	orl	_XBR2,#0x40
	C$c8051_SDCC.h$113$1$6 ==.
	XG$Sys_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
	G$putchar$0$0 ==.
	C$c8051_SDCC.h$129$1$6 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r7,dpl
	C$c8051_SDCC.h$132$1$8 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
00101$:
	C$c8051_SDCC.h$133$1$8 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
	jbc	_TI0,00112$
	sjmp	00101$
00112$:
	C$c8051_SDCC.h$134$1$8 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
	mov	_SBUF0,r7
	C$c8051_SDCC.h$135$1$8 ==.
	XG$putchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
	G$getchar$0$0 ==.
	C$c8051_SDCC.h$154$1$8 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
	C$c8051_SDCC.h$157$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
00101$:
	C$c8051_SDCC.h$158$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
	jbc	_RI0,00112$
	sjmp	00101$
00112$:
	C$c8051_SDCC.h$159$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
	mov	r7,_SBUF0
	C$c8051_SDCC.h$160$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
	mov	dpl,r7
	push	ar7
	lcall	_putchar
	pop	ar7
	C$c8051_SDCC.h$161$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
	mov	dpl,r7
	C$c8051_SDCC.h$162$1$10 ==.
	XG$getchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar_nw'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
	G$getchar_nw$0$0 ==.
	C$c8051_SDCC.h$168$1$10 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
;	-----------------------------------------
;	 function getchar_nw
;	-----------------------------------------
_getchar_nw:
	C$c8051_SDCC.h$171$1$12 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
	jb	_RI0,00102$
	mov	dpl,#0xff
	sjmp	00104$
00102$:
	C$c8051_SDCC.h$174$2$13 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
	clr	_RI0
	C$c8051_SDCC.h$175$2$13 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
	mov	dpl,_SBUF0
	C$c8051_SDCC.h$176$2$13 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
	lcall	_putchar
	C$c8051_SDCC.h$177$2$13 ==.
;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
	mov	dpl,_SBUF0
00104$:
	C$c8051_SDCC.h$179$1$12 ==.
	XG$getchar_nw$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$mode3.c$36$1$12 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:36: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$mode3.c$38$1$53 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:38: Sys_Init();      // System Initialization
	lcall	_Sys_Init
	C$mode3.c$39$1$53 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:39: Port_Init();     // Initialize ports 2 and 3 
	lcall	_Port_Init
	C$mode3.c$40$1$53 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:40: Interrupt_Init();
	lcall	_Interrupt_Init
	C$mode3.c$41$1$53 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:41: Timer_Init();    // Initialize Timer 0 
	lcall	_Timer_Init
	C$mode3.c$42$1$53 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:42: ADC_Init();
	lcall	_ADC_Init
	C$mode3.c$43$1$53 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:43: putchar(' ');    // the quote fonts may not copy correctly into SiLabs IDE
	mov	dpl,#0x20
	lcall	_putchar
	C$mode3.c$44$1$53 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:44: printf("Start\r\n");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$mode3.c$45$1$53 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:45: mode3();
	lcall	_mode3
	C$mode3.c$47$1$53 ==.
	XG$main$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Port_Init'
;------------------------------------------------------------
	G$Port_Init$0$0 ==.
	C$mode3.c$50$1$53 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:50: void Port_Init(void){
;	-----------------------------------------
;	 function Port_Init
;	-----------------------------------------
_Port_Init:
	C$mode3.c$51$1$55 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:51: P1MDIN &= ~0x01;  //set p1.0 for analog input
	anl	_P1MDIN,#0xfe
	C$mode3.c$52$1$55 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:52: P1MDOUT &= ~0x01; //set p1.0 to open drain
	anl	_P1MDOUT,#0xfe
	C$mode3.c$53$1$55 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:53: P1 |= 0x01; //send logic 1 to input pin p1.0
	orl	_P1,#0x01
	C$mode3.c$56$1$55 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:56: P2MDOUT &= ~0x0F;
	anl	_P2MDOUT,#0xf0
	C$mode3.c$57$1$55 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:57: P2 |= 0x0F;
	orl	_P2,#0x0f
	C$mode3.c$59$1$55 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:59: P2MDOUT |= 0x30;
	orl	_P2MDOUT,#0x30
	C$mode3.c$61$1$55 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:61: P3MDOUT |= 0xFF;
	mov	a,_P3MDOUT
	mov	_P3MDOUT,#0xff
	C$mode3.c$62$1$55 ==.
	XG$Port_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Interrupt_Init'
;------------------------------------------------------------
	G$Interrupt_Init$0$0 ==.
	C$mode3.c$64$1$55 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:64: void Interrupt_Init(void)
;	-----------------------------------------
;	 function Interrupt_Init
;	-----------------------------------------
_Interrupt_Init:
	C$mode3.c$66$1$57 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:66: IE |= 0x02;      // enable Timer0 Interrupt request (by masking)
	orl	_IE,#0x02
	C$mode3.c$67$1$57 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:67: EA = 1;       // enable global interrupts (by sbit)
	setb	_EA
	C$mode3.c$68$1$57 ==.
	XG$Interrupt_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer_Init'
;------------------------------------------------------------
	G$Timer_Init$0$0 ==.
	C$mode3.c$70$1$57 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:70: void Timer_Init(void)
;	-----------------------------------------
;	 function Timer_Init
;	-----------------------------------------
_Timer_Init:
	C$mode3.c$73$1$59 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:73: CKCON |= 0x08;  // Timer0 uses SYSCLK as source
	orl	_CKCON,#0x08
	C$mode3.c$74$1$59 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:74: TMOD &= 0xF0;   // clear the 4 least significant bits
	anl	_TMOD,#0xf0
	C$mode3.c$75$1$59 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:75: TMOD |= 0x01;   // Timer0 in mode 1
	orl	_TMOD,#0x01
	C$mode3.c$76$1$59 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:76: TR0 = 0;           // Stop Timer0
	clr	_TR0
	C$mode3.c$77$1$59 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:77: TMR0 = 0;           // Clear high & low byte of T0
	clr	a
	mov	((_TMR0 >> 0) & 0xFF),a
	mov	((_TMR0 >> 8) & 0xFF),a
	C$mode3.c$79$1$59 ==.
	XG$Timer_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_ISR'
;------------------------------------------------------------
	G$Timer0_ISR$0$0 ==.
	C$mode3.c$83$1$59 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:83: void Timer0_ISR(void) __interrupt 1
;	-----------------------------------------
;	 function Timer0_ISR
;	-----------------------------------------
_Timer0_ISR:
	push	acc
	push	psw
	C$mode3.c$85$1$61 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:85: TF0=0;
	clr	_TF0
	C$mode3.c$86$1$61 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:86: counts++; 
	inc	_counts
	clr	a
	cjne	a,_counts,00103$
	inc	(_counts + 1)
00103$:
	pop	psw
	pop	acc
	C$mode3.c$89$1$61 ==.
	XG$Timer0_ISR$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_Init'
;------------------------------------------------------------
	G$ADC_Init$0$0 ==.
	C$mode3.c$91$1$61 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:91: void ADC_Init(void)
;	-----------------------------------------
;	 function ADC_Init
;	-----------------------------------------
_ADC_Init:
	C$mode3.c$93$1$63 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:93: REF0CN = 0x03;  //set Vref to use interal ref. voltage (2.4V)
	mov	_REF0CN,#0x03
	C$mode3.c$94$1$63 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:94: ADC1CN = 0x80; //enable A/D converter (ADC1)
	mov	_ADC1CN,#0x80
	C$mode3.c$95$1$63 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:95: ADC1CF &=~0x03;  //clear gain bits to 0
	anl	_ADC1CF,#0xfc
	C$mode3.c$96$1$63 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:96: ADC1CF |=0x00; //set A/D converter gain to 0.5
	mov	_ADC1CF,_ADC1CF
	C$mode3.c$97$1$63 ==.
	XG$ADC_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_AD_input'
;------------------------------------------------------------
;n                         Allocated to registers 
;------------------------------------------------------------
	G$read_AD_input$0$0 ==.
	C$mode3.c$99$1$63 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:99: unsigned char read_AD_input(unsigned char n){
;	-----------------------------------------
;	 function read_AD_input
;	-----------------------------------------
_read_AD_input:
	mov	_AMX1SL,dpl
	C$mode3.c$101$1$65 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:101: ADC1CN = ADC1CN & ~0x20; //clear the "conversion completed" flag
	anl	_ADC1CN,#0xdf
	C$mode3.c$102$1$65 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:102: ADC1CN = ADC1CN | 0x10;  //initiate A/D conversion 
	orl	_ADC1CN,#0x10
	C$mode3.c$104$1$65 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:104: while((ADC1CN & 0x20) == 0x00);  //wait for conversion to complete
00101$:
	mov	a,_ADC1CN
	jnb	acc.5,00101$
	C$mode3.c$106$1$65 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:106: return ADC1;  //return digital value in ADC1 register
	mov	dpl,_ADC1
	C$mode3.c$107$1$65 ==.
	XG$read_AD_input$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'blink'
;------------------------------------------------------------
;currentcounts             Allocated to registers r6 r7 
;------------------------------------------------------------
	G$blink$0$0 ==.
	C$mode3.c$114$1$65 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:114: void blink()
;	-----------------------------------------
;	 function blink
;	-----------------------------------------
_blink:
	C$mode3.c$117$1$66 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:117: TR0 = 1;
	setb	_TR0
	C$mode3.c$121$1$66 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:121: while ( PB1 && PB0 )
00108$:
	jnb	_PB1,00111$
	jnb	_PB0,00111$
	C$mode3.c$123$2$67 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:123: currentcounts=counts;
	mov	r6,_counts
	mov	r7,(_counts + 1)
	C$mode3.c$124$2$67 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:124: while (counts < currentcounts + 54 )
	mov	a,#0x36
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
00101$:
	clr	c
	mov	a,_counts
	subb	a,r6
	mov	a,(_counts + 1)
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
	C$mode3.c$126$3$68 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:126: LED0=0;  // turn on all LED for 160ms
	clr	_LED0
	C$mode3.c$127$3$68 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:127: LED1=0;
	clr	_LED1
	C$mode3.c$128$3$68 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:128: LED2=0;
	clr	_LED2
	C$mode3.c$129$3$68 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:129: LED3=0;
	clr	_LED3
	C$mode3.c$130$3$68 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:130: LED4=0;
	clr	_LED4
	C$mode3.c$131$3$68 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:131: LED5=0;
	clr	_LED5
	C$mode3.c$132$3$68 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:132: LED6=0;
	clr	_LED6
	C$mode3.c$133$3$68 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:133: LED7=0;
	clr	_LED7
	sjmp	00101$
00103$:
	C$mode3.c$137$2$67 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:137: while (counts < currentcounts + 54 )
	mov	a,#0x36
	add	a,_counts
	mov	r6,a
	clr	a
	addc	a,(_counts + 1)
	mov	r7,a
00104$:
	clr	c
	mov	a,_counts
	subb	a,r6
	mov	a,(_counts + 1)
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00108$
	C$mode3.c$139$3$69 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:139: LED0=1;	// turn off all LED FOR 160ms
	setb	_LED0
	C$mode3.c$140$3$69 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:140: LED1=1;
	setb	_LED1
	C$mode3.c$141$3$69 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:141: LED2=1;
	setb	_LED2
	C$mode3.c$142$3$69 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:142: LED3=1;
	setb	_LED3
	C$mode3.c$143$3$69 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:143: LED4=1;
	setb	_LED4
	C$mode3.c$144$3$69 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:144: LED5=1;
	setb	_LED5
	C$mode3.c$145$3$69 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:145: LED6=1;
	setb	_LED6
	C$mode3.c$146$3$69 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:146: LED7=1;
	setb	_LED7
	sjmp	00104$
00111$:
	C$mode3.c$149$1$66 ==.
	XG$blink$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'generate_random_number'
;------------------------------------------------------------
;var                       Allocated to registers r5 
;high_bits                 Allocated to registers r7 
;i                         Allocated to registers 
;------------------------------------------------------------
	G$generate_random_number$0$0 ==.
	C$mode3.c$151$1$66 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:151: unsigned char generate_random_number()
;	-----------------------------------------
;	 function generate_random_number
;	-----------------------------------------
_generate_random_number:
	C$mode3.c$154$1$66 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:154: unsigned char high_bits = 0;
	mov	r7,#0x00
	C$mode3.c$158$1$70 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:158: var= rand()%255;
	push	ar7
	lcall	_rand
	mov	__modsint_PARM_2,#0xff
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	C$mode3.c$159$1$70 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:159: while (high_bits < 3)
00102$:
	cjne	r7,#0x03,00122$
00122$:
	jnc	00104$
	C$mode3.c$161$2$71 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:161: srand(rand());
	push	ar7
	lcall	_rand
	lcall	_srand
	C$mode3.c$162$2$71 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:162: var= rand()%255;
	lcall	_rand
	mov	__modsint_PARM_2,#0xff
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r4,dpl
	pop	ar7
	mov	ar5,r4
	C$mode3.c$163$2$71 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:163: for(i=0;i<8;i++)
	mov	r4,#0x00
	mov	r6,#0x00
00105$:
	C$mode3.c$165$3$72 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:165: high_bits += (var>>i) & 0x01;
	mov	b,r4
	inc	b
	mov	a,r5
	sjmp	00125$
00124$:
	clr	c
	rrc	a
00125$:
	djnz	b,00124$
	anl	a,#0x01
	add	a,r7
	mov	r7,a
	C$mode3.c$163$2$71 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:163: for(i=0;i<8;i++)
	inc	r4
	cjne	r4,#0x00,00126$
	inc	r6
00126$:
	clr	c
	mov	a,r4
	subb	a,#0x08
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
	sjmp	00102$
00104$:
	C$mode3.c$168$1$70 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:168: printf("convert number : 0x%x", var);
	mov	ar6,r5
	mov	r7,#0x00
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	C$mode3.c$169$1$70 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:169: return var;
	mov	dpl,r5
	C$mode3.c$170$1$70 ==.
	XG$generate_random_number$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mode3'
;------------------------------------------------------------
;var                       Allocated with name '_mode3_var_1_74'
;input                     Allocated to registers r7 
;PoT                       Allocated to registers r2 
;score                     Allocated to registers r3 r4 
;overflow                  Allocated to registers r5 r6 
;temporarycount            Allocated to registers r5 r6 
;score_timer               Allocated with name '_mode3_score_timer_1_74'
;submit_timer              Allocated with name '_mode3_submit_timer_1_74'
;debounce_count            Allocated to registers r5 r6 
;mode                      Allocated to registers r4 
;lock_in_counts            Allocated to registers 
;sloc0                     Allocated with name '_mode3_sloc0_1_0'
;------------------------------------------------------------
	G$mode3$0$0 ==.
	C$mode3.c$172$1$70 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:172: void mode3(void)
;	-----------------------------------------
;	 function mode3
;	-----------------------------------------
_mode3:
	C$mode3.c$175$1$70 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:175: unsigned char input=0b00000000;
	C$mode3.c$182$1$70 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:182: int submit_timer = 0;
	C$mode3.c$184$1$70 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:184: char mode=0;  // 0 for bit select mode // 1 for lock in bits mode
	clr	a
	mov	r7,a
	mov	_mode3_submit_timer_1_74,a
	mov	(_mode3_submit_timer_1_74 + 1),a
	mov	r4,a
	C$mode3.c$186$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:186: blink();
	push	ar7
	push	ar4
	lcall	_blink
	C$mode3.c$187$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:187: var = generate_random_number();
	lcall	_generate_random_number
	mov	_mode3_var_1_74,dpl
	pop	ar4
	pop	ar7
	C$mode3.c$190$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:190: score_timer=counts;
	mov	_mode3_score_timer_1_74,_counts
	mov	(_mode3_score_timer_1_74 + 1),(_counts + 1)
	C$mode3.c$191$4$77 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:191: while ( counts < score_timer + 10125)  // wait for max time 30s
	mov	a,#0x8d
	add	a,_mode3_score_timer_1_74
	mov	r0,a
	mov	a,#0x27
	addc	a,(_mode3_score_timer_1_74 + 1)
	mov	r3,a
00197$:
	clr	c
	mov	a,_counts
	subb	a,r0
	mov	a,(_counts + 1)
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00357$
	ljmp	00199$
00357$:
	C$mode3.c$194$2$75 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:194: if (mode == 1)  // lock-in bit mode
	cjne	r4,#0x01,00358$
	sjmp	00359$
00358$:
	ljmp	00195$
00359$:
	C$mode3.c$198$3$76 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:198: printf("mode1\r");
	push	ar7
	push	ar4
	push	ar3
	push	ar0
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar3
	pop	ar4
	pop	ar7
	C$mode3.c$199$3$76 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:199: while ( counts < lock_in_counts + 168)   //show user input for 500ms
	mov	a,#0xa8
	add	a,_counts
	mov	r5,a
	clr	a
	addc	a,(_counts + 1)
	mov	r6,a
	clr	c
	mov	a,_counts
	subb	a,r5
	mov	a,(_counts + 1)
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
	C$mode3.c$201$4$77 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:201: BILED0 = 1;  //BILED RED
	setb	_BILED0
	C$mode3.c$202$4$77 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:202: BILED1 = 0;
	clr	_BILED1
	C$mode3.c$203$4$77 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:203: printf("display user input\n");
	push	ar7
	push	ar3
	push	ar0
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar3
	pop	ar7
	C$mode3.c$204$4$77 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:204: P3 = ~input;  // display the user input a LEDs   ????
	mov	a,r7
	cpl	a
	mov	_P3,a
	C$mode3.c$205$4$77 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:205: mode=0;
	mov	r4,#0x00
	C$mode3.c$206$3$76 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:206: break;
00103$:
	C$mode3.c$209$3$76 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:209: debounce_count = counts;
	mov	r5,_counts
	mov	r6,(_counts + 1)
	C$mode3.c$210$3$76 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:210: while ( counts < debounce_count + 54);
	mov	a,#0x36
	add	a,r5
	mov	_mode3_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_mode3_sloc0_1_0 + 1),a
00104$:
	clr	c
	mov	a,_counts
	subb	a,_mode3_sloc0_1_0
	mov	a,(_counts + 1)
	xrl	a,#0x80
	mov	b,(_mode3_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00104$
	C$mode3.c$211$3$76 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:211: if (!PB1) 
	jnb	_PB1,00362$
	ljmp	00197$
00362$:
	C$mode3.c$213$4$78 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:213: printf("submite\n");
	push	ar7
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
	C$mode3.c$214$4$78 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:214: submit_timer=counts;  // store the time break the loop
	mov	_mode3_submit_timer_1_74,_counts
	mov	(_mode3_submit_timer_1_74 + 1),(_counts + 1)
	C$mode3.c$215$4$78 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:215: break;
	ljmp	00199$
00195$:
	C$mode3.c$221$2$75 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:221: else if (mode == 0 )  //bit selecting mode
	mov	a,r4
	jz	00363$
	ljmp	00197$
00363$:
	C$mode3.c$225$3$79 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:225: printf("mode0\r\n");
	push	ar7
	push	ar4
	push	ar3
	push	ar0
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar3
	pop	ar4
	pop	ar7
	C$mode3.c$226$3$79 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:226: BILED0 = 0;
	clr	_BILED0
	C$mode3.c$227$3$79 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:227: BILED1 = 1;  //BILED GREEN
	setb	_BILED1
	C$mode3.c$229$3$79 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:229: debounce_count = counts;
	mov	r5,_counts
	mov	r6,(_counts + 1)
	C$mode3.c$230$3$79 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:230: while ( counts < debounce_count + 54);
	mov	a,#0x36
	add	a,r5
	mov	_mode3_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_mode3_sloc0_1_0 + 1),a
00109$:
	clr	c
	mov	a,_counts
	subb	a,_mode3_sloc0_1_0
	mov	a,(_counts + 1)
	xrl	a,#0x80
	mov	b,(_mode3_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00109$
	C$mode3.c$231$3$79 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:231: while (PB1 && PB0)
00134$:
	jb	_PB1,00365$
	ljmp	00136$
00365$:
	jb	_PB0,00366$
	ljmp	00136$
00366$:
	C$mode3.c$233$4$80 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:233: PoT = read_AD_input(0);
	mov	dpl,#0x00
	push	ar7
	push	ar4
	push	ar3
	push	ar0
	lcall	_read_AD_input
	mov	r2,dpl
	pop	ar0
	pop	ar3
	pop	ar4
	pop	ar7
	C$mode3.c$234$4$80 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:234: if (PoT < 17) 
	cjne	r2,#0x11,00367$
00367$:
	jnc	00131$
	C$mode3.c$236$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:236: P3|=0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$mode3.c$237$5$81 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:237: LED0=0;
	clr	_LED0
	sjmp	00134$
00131$:
	C$mode3.c$239$4$80 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:239: else if (PoT < 34) 
	cjne	r2,#0x22,00369$
00369$:
	jnc	00128$
	C$mode3.c$241$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:241: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$mode3.c$242$5$82 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:242: LED1=0;
	clr	_LED1
	sjmp	00134$
00128$:
	C$mode3.c$244$4$80 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:244: else if(PoT < 51) 
	cjne	r2,#0x33,00371$
00371$:
	jnc	00125$
	C$mode3.c$246$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:246: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$mode3.c$247$5$83 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:247: LED2=0;
	clr	_LED2
	sjmp	00134$
00125$:
	C$mode3.c$249$4$80 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:249: else if(PoT < 68) 
	cjne	r2,#0x44,00373$
00373$:
	jnc	00122$
	C$mode3.c$251$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:251: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$mode3.c$252$5$84 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:252: LED3=0;
	clr	_LED3
	sjmp	00134$
00122$:
	C$mode3.c$254$4$80 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:254: else if(PoT < 85)	 //light up correspond LED
	cjne	r2,#0x55,00375$
00375$:
	jnc	00119$
	C$mode3.c$256$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:256: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$mode3.c$257$5$85 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:257: LED4=0;
	clr	_LED4
	sjmp	00134$
00119$:
	C$mode3.c$259$4$80 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:259: else if(PoT < 102) 
	cjne	r2,#0x66,00377$
00377$:
	jnc	00116$
	C$mode3.c$261$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:261: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$mode3.c$262$5$86 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:262: LED5=0;\
	clr	_LED5
	sjmp	00134$
00116$:
	C$mode3.c$264$4$80 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:264: else if(PoT < 119) 
	cjne	r2,#0x77,00379$
00379$:
	jnc	00113$
	C$mode3.c$266$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:266: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$mode3.c$267$5$87 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:267: LED6=0;
	clr	_LED6
	ljmp	00134$
00113$:
	C$mode3.c$271$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:271: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$mode3.c$272$5$88 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:272: LED7=0;
	clr	_LED7
	ljmp	00134$
00136$:
	C$mode3.c$275$3$79 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:275: if (!PB0)
	jnb	_PB0,00381$
	ljmp	00186$
00381$:
	C$mode3.c$277$4$89 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:277: debounce_count = counts;
	mov	r5,_counts
	mov	r6,(_counts + 1)
	C$mode3.c$278$4$89 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:278: while ( counts < debounce_count + 54);
	mov	a,#0x36
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
00137$:
	clr	c
	mov	a,_counts
	subb	a,r5
	mov	a,(_counts + 1)
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jc	00137$
	C$mode3.c$279$4$89 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:279: PoT = read_AD_input(0);
	mov	dpl,#0x00
	push	ar7
	push	ar4
	push	ar3
	push	ar0
	lcall	_read_AD_input
	mov	r2,dpl
	pop	ar0
	pop	ar3
	pop	ar4
	C$mode3.c$280$4$89 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:280: BILED0 = 1;// BILED RED
	setb	_BILED0
	C$mode3.c$281$4$89 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:281: BILED1 = 0;
	clr	_BILED1
	C$mode3.c$282$4$89 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:282: temporarycount = counts;
	mov	r5,_counts
	mov	r6,(_counts + 1)
	C$mode3.c$283$4$89 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:283: printf("changing bits\n");
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$mode3.c$284$4$89 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:284: if (PoT < 17) 
	cjne	r2,#0x11,00383$
00383$:
	jnc	00183$
	C$mode3.c$286$5$90 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:286: input^=1<<0;
	xrl	ar7,#0x01
	C$mode3.c$287$5$90 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:287: while ( counts < temporarycount + 337)
	mov	a,#0x51
	add	a,r5
	mov	_mode3_sloc0_1_0,a
	mov	a,#0x01
	addc	a,r6
	mov	(_mode3_sloc0_1_0 + 1),a
00140$:
	clr	c
	mov	a,_counts
	subb	a,_mode3_sloc0_1_0
	mov	a,(_counts + 1)
	xrl	a,#0x80
	mov	b,(_mode3_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00385$
	ljmp	00186$
00385$:
	C$mode3.c$289$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:289: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$mode3.c$290$6$91 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:290: LED0=0;
	clr	_LED0
	sjmp	00140$
00183$:
	C$mode3.c$293$4$89 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:293: else if (PoT < 34) 
	cjne	r2,#0x22,00386$
00386$:
	jnc	00180$
	C$mode3.c$295$5$92 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:295: input^=1<<1;
	xrl	ar7,#0x02
	C$mode3.c$296$5$92 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:296: while ( counts < temporarycount + 337)
	mov	a,#0x51
	add	a,r5
	mov	_mode3_sloc0_1_0,a
	mov	a,#0x01
	addc	a,r6
	mov	(_mode3_sloc0_1_0 + 1),a
00143$:
	clr	c
	mov	a,_counts
	subb	a,_mode3_sloc0_1_0
	mov	a,(_counts + 1)
	xrl	a,#0x80
	mov	b,(_mode3_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00388$
	ljmp	00186$
00388$:
	C$mode3.c$298$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:298: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$mode3.c$299$6$93 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:299: LED1=0;
	clr	_LED1
	sjmp	00143$
00180$:
	C$mode3.c$302$4$89 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:302: else if(PoT < 51) 
	cjne	r2,#0x33,00389$
00389$:
	jnc	00177$
	C$mode3.c$304$5$94 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:304: input^=1<<2;
	xrl	ar7,#0x04
	C$mode3.c$305$5$94 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:305: while ( counts < temporarycount + 337)
	mov	a,#0x51
	add	a,r5
	mov	_mode3_sloc0_1_0,a
	mov	a,#0x01
	addc	a,r6
	mov	(_mode3_sloc0_1_0 + 1),a
00146$:
	clr	c
	mov	a,_counts
	subb	a,_mode3_sloc0_1_0
	mov	a,(_counts + 1)
	xrl	a,#0x80
	mov	b,(_mode3_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00391$
	ljmp	00186$
00391$:
	C$mode3.c$307$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:307: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$mode3.c$308$6$95 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:308: LED2=0;
	clr	_LED2
	sjmp	00146$
00177$:
	C$mode3.c$311$4$89 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:311: else if(PoT < 68) 
	cjne	r2,#0x44,00392$
00392$:
	jnc	00174$
	C$mode3.c$313$5$96 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:313: input^=1<<3;
	xrl	ar7,#0x08
	C$mode3.c$314$5$96 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:314: while ( counts < temporarycount + 337)
	mov	a,#0x51
	add	a,r5
	mov	_mode3_sloc0_1_0,a
	mov	a,#0x01
	addc	a,r6
	mov	(_mode3_sloc0_1_0 + 1),a
00149$:
	clr	c
	mov	a,_counts
	subb	a,_mode3_sloc0_1_0
	mov	a,(_counts + 1)
	xrl	a,#0x80
	mov	b,(_mode3_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00394$
	ljmp	00186$
00394$:
	C$mode3.c$316$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:316: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$mode3.c$317$6$97 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:317: LED3=0;
	clr	_LED3
	sjmp	00149$
00174$:
	C$mode3.c$320$4$89 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:320: else if(PoT < 85) 
	cjne	r2,#0x55,00395$
00395$:
	jnc	00171$
	C$mode3.c$322$5$98 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:322: input^=1<<4;
	xrl	ar7,#0x10
	C$mode3.c$323$5$98 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:323: while ( counts < temporarycount + 337)
	mov	a,#0x51
	add	a,r5
	mov	_mode3_sloc0_1_0,a
	mov	a,#0x01
	addc	a,r6
	mov	(_mode3_sloc0_1_0 + 1),a
00152$:
	clr	c
	mov	a,_counts
	subb	a,_mode3_sloc0_1_0
	mov	a,(_counts + 1)
	xrl	a,#0x80
	mov	b,(_mode3_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00397$
	ljmp	00186$
00397$:
	C$mode3.c$325$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:325: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$mode3.c$326$6$99 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:326: LED4=0;
	clr	_LED4
	sjmp	00152$
00171$:
	C$mode3.c$329$4$89 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:329: else if(PoT < 102)
	cjne	r2,#0x66,00398$
00398$:
	jnc	00168$
	C$mode3.c$331$5$100 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:331: input^=1<<5;
	xrl	ar7,#0x20
	C$mode3.c$332$5$100 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:332: while ( counts < temporarycount + 337)
	mov	a,#0x51
	add	a,r5
	mov	_mode3_sloc0_1_0,a
	mov	a,#0x01
	addc	a,r6
	mov	(_mode3_sloc0_1_0 + 1),a
00155$:
	clr	c
	mov	a,_counts
	subb	a,_mode3_sloc0_1_0
	mov	a,(_counts + 1)
	xrl	a,#0x80
	mov	b,(_mode3_sloc0_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00186$
	C$mode3.c$334$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:334: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$mode3.c$335$6$101 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:335: LED5=0;
	clr	_LED5
	sjmp	00155$
00168$:
	C$mode3.c$338$4$89 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:338: else if(PoT < 119) 
	cjne	r2,#0x77,00401$
00401$:
	jnc	00165$
	C$mode3.c$340$5$102 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:340: input^=1<<6;
	xrl	ar7,#0x40
	C$mode3.c$341$5$102 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:341: while ( counts < temporarycount + 337)
	mov	a,#0x51
	add	a,r5
	mov	r1,a
	mov	a,#0x01
	addc	a,r6
	mov	r2,a
00158$:
	clr	c
	mov	a,_counts
	subb	a,r1
	mov	a,(_counts + 1)
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00186$
	C$mode3.c$343$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:343: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$mode3.c$344$6$103 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:344: LED6=0;
	clr	_LED6
	sjmp	00158$
00165$:
	C$mode3.c$349$5$104 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:349: input^=1<<7;
	xrl	ar7,#0x80
	C$mode3.c$350$5$104 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:350: while ( counts < temporarycount + 337)
	mov	a,#0x51
	add	a,r5
	mov	r5,a
	mov	a,#0x01
	addc	a,r6
	mov	r6,a
00161$:
	clr	c
	mov	a,_counts
	subb	a,r5
	mov	a,(_counts + 1)
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00186$
	C$mode3.c$352$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:352: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$mode3.c$353$6$105 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:353: LED7=0;
	clr	_LED7
	sjmp	00161$
00186$:
	C$mode3.c$357$3$79 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:357: if (!PB1)
	jnb	_PB1,00405$
	ljmp	00197$
00405$:
	C$mode3.c$360$4$106 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:360: while ( counts < debounce_count + 54);
	mov	a,#0x36
	add	a,_counts
	mov	r5,a
	clr	a
	addc	a,(_counts + 1)
	mov	r6,a
00187$:
	clr	c
	mov	a,_counts
	subb	a,r5
	mov	a,(_counts + 1)
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jc	00187$
	C$mode3.c$361$4$106 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:361: mode =1; //toggle active display mode
	mov	r4,#0x01
	C$mode3.c$362$4$106 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:362: printf("mode switched\r");
	push	ar7
	push	ar4
	push	ar3
	push	ar0
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar3
	pop	ar4
	pop	ar7
	ljmp	00197$
00199$:
	C$mode3.c$368$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:368: if (var == input) 
	mov	a,r7
	cjne	a,_mode3_var_1_74,00203$
	C$mode3.c$370$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:370: overflow = score_timer + 10125 - submit_timer;
	mov	a,#0x8d
	add	a,_mode3_score_timer_1_74
	mov	r5,a
	mov	a,#0x27
	addc	a,(_mode3_score_timer_1_74 + 1)
	mov	r6,a
	mov	a,r5
	clr	c
	subb	a,_mode3_submit_timer_1_74
	mov	r5,a
	mov	a,r6
	subb	a,(_mode3_submit_timer_1_74 + 1)
	mov	r6,a
	C$mode3.c$371$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:371: score = overflow / 337;
	mov	__divsint_PARM_2,#0x51
	mov	(__divsint_PARM_2 + 1),#0x01
	mov	dpl,r5
	mov	dph,r6
	push	ar6
	push	ar5
	lcall	__divsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	C$mode3.c$372$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:372: printf("Answer correct! \n\t Overflows: %d Score: %d",overflow,score);
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	C$mode3.c$375$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:375: BILED0 = 0;
	clr	_BILED0
	C$mode3.c$376$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:376: BILED1 = 1;  //BILED GREEN INDICATE CONVERSION SUCCESS
	setb	_BILED1
	sjmp	00205$
00203$:
	C$mode3.c$379$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:379: else if(var != input)
	mov	a,r7
	cjne	a,_mode3_var_1_74,00409$
	sjmp	00205$
00409$:
	C$mode3.c$381$2$108 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:381: overflow = score_timer + 10125 - submit_timer;
	mov	a,#0x8d
	add	a,_mode3_score_timer_1_74
	mov	r3,a
	mov	a,#0x27
	addc	a,(_mode3_score_timer_1_74 + 1)
	mov	r4,a
	mov	a,r3
	clr	c
	subb	a,_mode3_submit_timer_1_74
	mov	r5,a
	mov	a,r4
	subb	a,(_mode3_submit_timer_1_74 + 1)
	mov	r6,a
	C$mode3.c$383$2$108 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:383: printf("Answer Incorrect! \n\t Overflows: %d Score: %d\n",overflow,score);
	push	ar7
	clr	a
	push	acc
	push	acc
	push	ar5
	push	ar6
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	C$mode3.c$385$2$108 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:385: printf("%x",input);
	mov	r6,#0x00
	push	ar6
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$mode3.c$386$2$108 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:386: BILED0 = 1;
	setb	_BILED0
	C$mode3.c$387$2$108 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\mode3.c:387: BILED1 = 0;  //BILED RED INDICATE FAILURE
	clr	_BILED1
00205$:
	C$mode3.c$390$1$74 ==.
	XG$mode3$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fmode3$__str_0$0$0 == .
___str_0:
	.ascii "Start"
	.db 0x0d
	.db 0x0a
	.db 0x00
Fmode3$__str_1$0$0 == .
___str_1:
	.ascii "convert number : 0x%x"
	.db 0x00
Fmode3$__str_2$0$0 == .
___str_2:
	.ascii "mode1"
	.db 0x0d
	.db 0x00
Fmode3$__str_3$0$0 == .
___str_3:
	.ascii "display user input"
	.db 0x0a
	.db 0x00
Fmode3$__str_4$0$0 == .
___str_4:
	.ascii "submite"
	.db 0x0a
	.db 0x00
Fmode3$__str_5$0$0 == .
___str_5:
	.ascii "mode0"
	.db 0x0d
	.db 0x0a
	.db 0x00
Fmode3$__str_6$0$0 == .
___str_6:
	.ascii "changing bits"
	.db 0x0a
	.db 0x00
Fmode3$__str_7$0$0 == .
___str_7:
	.ascii "mode switched"
	.db 0x0d
	.db 0x00
Fmode3$__str_8$0$0 == .
___str_8:
	.ascii "Answer correct! "
	.db 0x0a
	.db 0x09
	.ascii " Overflows: %d Score: %d"
	.db 0x00
Fmode3$__str_9$0$0 == .
___str_9:
	.ascii "Answer Incorrect! "
	.db 0x0a
	.db 0x09
	.ascii " Overflows: %d Score: %d"
	.db 0x0a
	.db 0x00
Fmode3$__str_10$0$0 == .
___str_10:
	.ascii "%x"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
