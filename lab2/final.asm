;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module final
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _blink
	.globl _speed_set
	.globl _main
	.globl _srand
	.globl _rand
	.globl _putchar
	.globl _printf
	.globl _getchar_nw
	.globl _Sys_Init
	.globl _UART0_Init
	.globl _SYSCLK_Init
	.globl _LED0
	.globl _LED1
	.globl _LED2
	.globl _LED3
	.globl _LED4
	.globl _LED5
	.globl _LED6
	.globl _LED7
	.globl _SS1
	.globl _SS0
	.globl _PB2
	.globl _PB1
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
	.globl _hit
	.globl _PB2_flag
	.globl _PB1_flag
	.globl _aligned_alloc_PARM_2
	.globl _score1
	.globl _score0
	.globl _magnitude
	.globl _sign
	.globl _rand_speed
	.globl _speedX
	.globl _speed
	.globl _counts
	.globl _AD_Value
	.globl _Port_Init
	.globl _Interrupt_Init
	.globl _Timer_Init
	.globl _Timer0_ISR
	.globl _random
	.globl _customWait
	.globl _ADC_Init
	.globl _read_AD_input
	.globl _bounce
	.globl _moveBall
	.globl _hit_or_miss
	.globl _player1_Serve
	.globl _player2_Serve
	.globl _startGame
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
G$PB1$0$0 == 0x00a2
_PB1	=	0x00a2
G$PB2$0$0 == 0x00a3
_PB2	=	0x00a3
G$SS0$0$0 == 0x00a0
_SS0	=	0x00a0
G$SS1$0$0 == 0x00a1
_SS1	=	0x00a1
G$LED7$0$0 == 0x00b0
_LED7	=	0x00b0
G$LED6$0$0 == 0x00b1
_LED6	=	0x00b1
G$LED5$0$0 == 0x00b2
_LED5	=	0x00b2
G$LED4$0$0 == 0x00b3
_LED4	=	0x00b3
G$LED3$0$0 == 0x00b4
_LED3	=	0x00b4
G$LED2$0$0 == 0x00b5
_LED2	=	0x00b5
G$LED1$0$0 == 0x00b6
_LED1	=	0x00b6
G$LED0$0$0 == 0x00b7
_LED0	=	0x00b7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$AD_Value$0$0==.
_AD_Value::
	.ds 1
G$counts$0$0==.
_counts::
	.ds 2
G$speed$0$0==.
_speed::
	.ds 2
G$speedX$0$0==.
_speedX::
	.ds 2
G$rand_speed$0$0==.
_rand_speed::
	.ds 2
G$sign$0$0==.
_sign::
	.ds 2
G$magnitude$0$0==.
_magnitude::
	.ds 2
G$score0$0$0==.
_score0::
	.ds 2
G$score1$0$0==.
_score1::
	.ds 2
Lfinal.aligned_alloc$size$1$39==.
_aligned_alloc_PARM_2:
	.ds 2
Lfinal.mode3$var$1$143==.
_mode3_var_1_143:
	.ds 1
Lfinal.mode3$input$1$143==.
_mode3_input_1_143:
	.ds 1
Lfinal.mode3$score_timer$1$143==.
_mode3_score_timer_1_143:
	.ds 2
Lfinal.mode3$submit_timer$1$143==.
_mode3_submit_timer_1_143:
	.ds 2
Lfinal.mode3$mode$1$143==.
_mode3_mode_1_143:
	.ds 1
Lfinal.mode3$sloc0$1$0==.
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
G$PB1_flag$0$0==.
_PB1_flag::
	.ds 1
G$PB2_flag$0$0==.
_PB2_flag::
	.ds 1
G$hit$0$0==.
_hit::
	.ds 1
Lfinal.main$sloc0$1$0==.
_main_sloc0_1_0:
	.ds 1
Lfinal.main$sloc1$1$0==.
_main_sloc1_1_0:
	.ds 1
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
	C$final.c$49$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:49: unsigned int counts=0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$final.c$50$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:50: int speed=0; //-5 to 5
	mov	_speed,a
	mov	(_speed + 1),a
	C$final.c$55$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:55: unsigned int score0=0;
	mov	_score0,a
	mov	(_score0 + 1),a
	C$final.c$56$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:56: unsigned int score1=0;
	mov	_score1,a
	mov	(_score1 + 1),a
	C$final.c$57$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:57: bool PB1_flag=false;
	clr	_PB1_flag
	C$final.c$58$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:58: bool PB2_flag=false;
	clr	_PB2_flag
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
	C$final.c$61$1$12 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:61: void main(void){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$final.c$62$1$63 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:62: Sys_Init();
	lcall	_Sys_Init
	C$final.c$63$1$63 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:63: putchar(0);
	mov	dpl,#0x00
	lcall	_putchar
	C$final.c$64$1$63 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:64: Port_Init();
	lcall	_Port_Init
	C$final.c$65$1$63 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:65: Interrupt_Init();
	lcall	_Interrupt_Init
	C$final.c$66$1$63 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:66: Timer_Init();
	lcall	_Timer_Init
	C$final.c$67$1$63 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:67: ADC_Init();
	lcall	_ADC_Init
	C$final.c$69$1$63 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:69: if (!SS0 & !SS1)
	mov	c,_SS0
	cpl	c
	mov	_main_sloc0_1_0,c
	mov	c,_SS1
	cpl	c
	mov	_main_sloc1_1_0,c
	mov	c,_main_sloc0_1_0
	anl	c,_main_sloc1_1_0
	jnc	00104$
	C$final.c$71$2$64 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:71: printf("mode1 start");
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
	C$final.c$72$2$64 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:72: startGame();   // exectue code for mode 1
	lcall	_startGame
	sjmp	00106$
00104$:
	C$final.c$74$1$63 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:74: else if (SS0 & SS1)
	mov	c,_SS0
	anl	c,_SS1
	jnc	00106$
	C$final.c$76$2$65 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:76: printf("mode3 start");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$final.c$77$2$65 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:77: mode3();  // execture code for mode2 
	lcall	_mode3
00106$:
	C$final.c$83$1$63 ==.
	XG$main$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Port_Init'
;------------------------------------------------------------
	G$Port_Init$0$0 ==.
	C$final.c$85$1$63 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:85: void Port_Init(void){
;	-----------------------------------------
;	 function Port_Init
;	-----------------------------------------
_Port_Init:
	C$final.c$86$1$68 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:86: P1MDIN &= ~0x01;  //set p1.0 for analog input
	anl	_P1MDIN,#0xfe
	C$final.c$87$1$68 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:87: P1MDOUT &= ~0x01; //set p1.0 to open drain
	anl	_P1MDOUT,#0xfe
	C$final.c$88$1$68 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:88: P1 |= 0x01; //send logic 1 to input pin p1.0
	orl	_P1,#0x01
	C$final.c$91$1$68 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:91: P2MDOUT &= ~0x0F;
	anl	_P2MDOUT,#0xf0
	C$final.c$92$1$68 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:92: P2 |= 0x0F;
	orl	_P2,#0x0f
	C$final.c$94$1$68 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:94: P2MDOUT |= 0x30;
	orl	_P2MDOUT,#0x30
	C$final.c$97$1$68 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:97: P3MDOUT |= 0xFF;
	mov	a,_P3MDOUT
	mov	_P3MDOUT,#0xff
	C$final.c$98$1$68 ==.
	XG$Port_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Interrupt_Init'
;------------------------------------------------------------
	G$Interrupt_Init$0$0 ==.
	C$final.c$100$1$68 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:100: void Interrupt_Init(void){
;	-----------------------------------------
;	 function Interrupt_Init
;	-----------------------------------------
_Interrupt_Init:
	C$final.c$101$1$70 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:101: IE |= 0x02;      // enable Timer0 Interrupt request (by masking)
	orl	_IE,#0x02
	C$final.c$102$1$70 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:102: EA = 1;       // enable global interrupts (by sbit)
	setb	_EA
	C$final.c$103$1$70 ==.
	XG$Interrupt_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer_Init'
;------------------------------------------------------------
	G$Timer_Init$0$0 ==.
	C$final.c$105$1$70 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:105: void Timer_Init(void){
;	-----------------------------------------
;	 function Timer_Init
;	-----------------------------------------
_Timer_Init:
	C$final.c$106$1$72 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:106: CKCON |= 0x08;  // Timer0 uses SYSCLK as source
	orl	_CKCON,#0x08
	C$final.c$107$1$72 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:107: TMOD &= 0xF0;   // clear the 4 least significant bits
	anl	_TMOD,#0xf0
	C$final.c$108$1$72 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:108: TMOD |= 0x01;   // Timer0 in mode 1
	orl	_TMOD,#0x01
	C$final.c$109$1$72 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:109: TR0 = 0;           // Stop Timer0
	clr	_TR0
	C$final.c$110$1$72 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:110: TMR0 = 0;           // Clear high & low byte of T0
	clr	a
	mov	((_TMR0 >> 0) & 0xFF),a
	mov	((_TMR0 >> 8) & 0xFF),a
	C$final.c$111$1$72 ==.
	XG$Timer_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_ISR'
;------------------------------------------------------------
	G$Timer0_ISR$0$0 ==.
	C$final.c$115$1$72 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:115: void Timer0_ISR(void) __interrupt 1{
;	-----------------------------------------
;	 function Timer0_ISR
;	-----------------------------------------
_Timer0_ISR:
	push	acc
	push	psw
	C$final.c$116$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:116: TF0=0;
	clr	_TF0
	C$final.c$117$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:117: counts++;
	inc	_counts
	clr	a
	cjne	a,_counts,00103$
	inc	(_counts + 1)
00103$:
	pop	psw
	pop	acc
	C$final.c$118$1$74 ==.
	XG$Timer0_ISR$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'random'
;------------------------------------------------------------
;x                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$random$0$0 ==.
	C$final.c$120$1$74 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:120: int random(int x){
;	-----------------------------------------
;	 function random
;	-----------------------------------------
_random:
	mov	r6,dpl
	mov	r7,dph
	C$final.c$121$1$76 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:121: srand(rand());
	push	ar7
	push	ar6
	lcall	_rand
	lcall	_srand
	C$final.c$122$1$76 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:122: return (rand()%x);
	lcall	_rand
	pop	ar6
	pop	ar7
	mov	__modsint_PARM_2,r6
	mov	(__modsint_PARM_2 + 1),r7
	lcall	__modsint
	C$final.c$123$1$76 ==.
	XG$random$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'customWait'
;------------------------------------------------------------
	G$customWait$0$0 ==.
	C$final.c$125$1$76 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:125: void customWait(void){
;	-----------------------------------------
;	 function customWait
;	-----------------------------------------
_customWait:
	C$final.c$126$1$78 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:126: counts=0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$final.c$127$1$78 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:127: if(speed>0){//will P2 hit early?
	clr	c
	subb	a,_speed
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_speed + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00114$
	C$final.c$128$2$79 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:128: while(counts<(unsigned int)(speed*34)){
00103$:
	mov	__mulint_PARM_2,_speed
	mov	(__mulint_PARM_2 + 1),(_speed + 1)
	mov	dptr,#0x0022
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,_counts
	subb	a,r6
	mov	a,(_counts + 1)
	subb	a,r7
	jnc	00116$
	C$final.c$129$3$80 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:129: if(!PB2){
	jb	_PB2,00103$
	C$final.c$130$4$81 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:130: PB2_flag=true;
	setb	_PB2_flag
	sjmp	00103$
00114$:
	C$final.c$134$1$78 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:134: else if(speed<0){//will P1 hit early?
	mov	a,(_speed + 1)
	jnb	acc.7,00116$
	C$final.c$135$2$82 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:135: while(counts<(unsigned int)(speed*-34)){
00108$:
	mov	__mulint_PARM_2,_speed
	mov	(__mulint_PARM_2 + 1),(_speed + 1)
	mov	dptr,#0xffde
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,_counts
	subb	a,r6
	mov	a,(_counts + 1)
	subb	a,r7
	jnc	00116$
	C$final.c$136$3$83 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:136: if(!PB1){
	jb	_PB1,00108$
	C$final.c$137$4$84 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:137: PB1_flag=true;
	setb	_PB1_flag
	sjmp	00108$
00116$:
	C$final.c$142$1$78 ==.
	XG$customWait$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_Init'
;------------------------------------------------------------
	G$ADC_Init$0$0 ==.
	C$final.c$145$1$78 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:145: void ADC_Init(void){
;	-----------------------------------------
;	 function ADC_Init
;	-----------------------------------------
_ADC_Init:
	C$final.c$146$1$86 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:146: REF0CN = 0x03;  //set Vref to use interal ref. voltage (2.4V)
	mov	_REF0CN,#0x03
	C$final.c$147$1$86 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:147: ADC1CN = 0x80; //enable A/D converter (ADC1)
	mov	_ADC1CN,#0x80
	C$final.c$148$1$86 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:148: ADC1CF &=~0x03;  //clear gain bits to 0
	anl	_ADC1CF,#0xfc
	C$final.c$149$1$86 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:149: ADC1CF |=0x00; //set A/D converter gain to 0.5
	mov	_ADC1CF,_ADC1CF
	C$final.c$150$1$86 ==.
	XG$ADC_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_AD_input'
;------------------------------------------------------------
;n                         Allocated to registers 
;------------------------------------------------------------
	G$read_AD_input$0$0 ==.
	C$final.c$152$1$86 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:152: unsigned char read_AD_input(unsigned char n){
;	-----------------------------------------
;	 function read_AD_input
;	-----------------------------------------
_read_AD_input:
	mov	_AMX1SL,dpl
	C$final.c$154$1$88 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:154: ADC1CN = ADC1CN & ~0x20; //clear the "conversion completed" flag
	anl	_ADC1CN,#0xdf
	C$final.c$155$1$88 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:155: ADC1CN = ADC1CN | 0x10;  //initiate A/D conversion 
	orl	_ADC1CN,#0x10
	C$final.c$157$1$88 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:157: while((ADC1CN & 0x20) == 0x00);  //wait for conversion to complete
00101$:
	mov	a,_ADC1CN
	jnb	acc.5,00101$
	C$final.c$158$1$88 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:158: return ADC1;
	mov	dpl,_ADC1
	C$final.c$159$1$88 ==.
	XG$read_AD_input$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'speed_set'
;------------------------------------------------------------
	G$speed_set$0$0 ==.
	C$final.c$161$1$88 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:161: int speed_set(void){
;	-----------------------------------------
;	 function speed_set
;	-----------------------------------------
_speed_set:
	C$final.c$162$1$90 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:162: AD_Value=read_AD_input(0);
	mov	dpl,#0x00
	lcall	_read_AD_input
	C$final.c$163$1$90 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:163: if(AD_Value<=63){
	mov	a,dpl
	mov	_AD_Value,a
	add	a,#0xff - 0x3f
	jc	00112$
	C$final.c$164$2$91 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:164: speedX=5;
	mov	_speedX,#0x05
	mov	(_speedX + 1),#0x00
	sjmp	00113$
00112$:
	C$final.c$166$1$90 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:166: else if(AD_Value>64&&AD_Value<=127){
	mov	a,_AD_Value
	add	a,#0xff - 0x40
	jnc	00108$
	mov	a,_AD_Value
	add	a,#0xff - 0x7f
	jc	00108$
	C$final.c$167$2$92 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:167: speedX=4;
	mov	_speedX,#0x04
	mov	(_speedX + 1),#0x00
	sjmp	00113$
00108$:
	C$final.c$169$1$90 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:169: else if(AD_Value>128&&AD_Value<=191){
	mov	a,_AD_Value
	add	a,#0xff - 0x80
	jnc	00104$
	mov	a,_AD_Value
	add	a,#0xff - 0xbf
	jc	00104$
	C$final.c$170$2$93 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:170: speedX=3;
	mov	_speedX,#0x03
	mov	(_speedX + 1),#0x00
	sjmp	00113$
00104$:
	C$final.c$172$1$90 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:172: else if(AD_Value>192){
	mov	a,_AD_Value
	add	a,#0xff - 0xc0
	jnc	00113$
	C$final.c$173$2$94 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:173: speedX=2;
	mov	_speedX,#0x02
	mov	(_speedX + 1),#0x00
00113$:
	C$final.c$175$1$90 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:175: return speedX;
	mov	dpl,_speedX
	mov	dph,(_speedX + 1)
	C$final.c$176$1$90 ==.
	XG$speed_set$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bounce'
;------------------------------------------------------------
	G$bounce$0$0 ==.
	C$final.c$179$1$90 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:179: void bounce(void){
;	-----------------------------------------
;	 function bounce
;	-----------------------------------------
_bounce:
	C$final.c$180$1$96 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:180: rand_speed=speed;
	mov	_rand_speed,_speed
	mov	(_rand_speed + 1),(_speed + 1)
	C$final.c$181$1$96 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:181: if(speed>0){//if travelling in positive, go negative
	clr	c
	clr	a
	subb	a,_speed
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_speed + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00150$
	ljmp	00122$
00150$:
	C$final.c$182$2$97 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:182: while(rand_speed>0||rand_speed<=-5){ //exit once valid speed
00107$:
	clr	c
	clr	a
	subb	a,_rand_speed
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_rand_speed + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00108$
	mov	a,#0xfb
	subb	a,_rand_speed
	mov	a,#(0xff ^ 0x80)
	mov	b,(_rand_speed + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00152$
	ljmp	00123$
00152$:
00108$:
	C$final.c$183$3$98 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:183: rand_speed=-1*speed;
	clr	c
	clr	a
	subb	a,_speed
	mov	_rand_speed,a
	clr	a
	subb	a,(_speed + 1)
	mov	(_rand_speed + 1),a
	C$final.c$184$3$98 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:184: sign=random(2); 
	mov	dptr,#0x0002
	lcall	_random
	mov	_sign,dpl
	mov	(_sign + 1),dph
	C$final.c$185$3$98 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:185: magnitude=random(3); //number from 0-2
	mov	dptr,#0x0003
	lcall	_random
	mov	_magnitude,dpl
	mov	(_magnitude + 1),dph
	C$final.c$186$3$98 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:186: if(sign==0){ //slower
	mov	a,_sign
	orl	a,(_sign + 1)
	jnz	00104$
	C$final.c$187$4$99 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:187: rand_speed-=magnitude;
	mov	a,_rand_speed
	clr	c
	subb	a,_magnitude
	mov	_rand_speed,a
	mov	a,(_rand_speed + 1)
	subb	a,(_magnitude + 1)
	mov	(_rand_speed + 1),a
	sjmp	00107$
00104$:
	C$final.c$189$3$98 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:189: else if(sign==1){ //faster
	mov	a,#0x01
	cjne	a,_sign,00154$
	dec	a
	cjne	a,(_sign + 1),00154$
	sjmp	00155$
00154$:
	sjmp	00107$
00155$:
	C$final.c$190$4$100 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:190: rand_speed+=magnitude;
	mov	a,_magnitude
	add	a,_rand_speed
	mov	_rand_speed,a
	mov	a,(_magnitude + 1)
	addc	a,(_rand_speed + 1)
	mov	(_rand_speed + 1),a
	ljmp	00107$
00122$:
	C$final.c$194$1$96 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:194: else if(speed<0){//if travelling in negative, go postiive
	mov	a,(_speed + 1)
	jnb	acc.7,00123$
	C$final.c$195$2$101 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:195: while(rand_speed<0||rand_speed>5){
00116$:
	mov	a,(_rand_speed + 1)
	jb	acc.7,00117$
	clr	c
	mov	a,#0x05
	subb	a,_rand_speed
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_rand_speed + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00123$
00117$:
	C$final.c$196$3$102 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:196: rand_speed=-1*speed;
	clr	c
	clr	a
	subb	a,_speed
	mov	_rand_speed,a
	clr	a
	subb	a,(_speed + 1)
	mov	(_rand_speed + 1),a
	C$final.c$197$3$102 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:197: sign=random(2);
	mov	dptr,#0x0002
	lcall	_random
	mov	_sign,dpl
	mov	(_sign + 1),dph
	C$final.c$198$3$102 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:198: magnitude=random(3);
	mov	dptr,#0x0003
	lcall	_random
	mov	_magnitude,dpl
	mov	(_magnitude + 1),dph
	C$final.c$199$3$102 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:199: if(sign==0){//slower
	mov	a,_sign
	orl	a,(_sign + 1)
	jnz	00113$
	C$final.c$200$4$103 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:200: rand_speed+=magnitude;
	mov	a,_magnitude
	add	a,_rand_speed
	mov	_rand_speed,a
	mov	a,(_magnitude + 1)
	addc	a,(_rand_speed + 1)
	mov	(_rand_speed + 1),a
	sjmp	00116$
00113$:
	C$final.c$202$3$102 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:202: else if(sign==1){//faster
	mov	a,#0x01
	cjne	a,_sign,00160$
	dec	a
	cjne	a,(_sign + 1),00160$
	sjmp	00161$
00160$:
	sjmp	00116$
00161$:
	C$final.c$203$4$104 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:203: rand_speed-=magnitude;
	mov	a,_rand_speed
	clr	c
	subb	a,_magnitude
	mov	_rand_speed,a
	mov	a,(_rand_speed + 1)
	subb	a,(_magnitude + 1)
	mov	(_rand_speed + 1),a
	sjmp	00116$
00123$:
	C$final.c$207$1$96 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:207: speed=rand_speed;
	mov	_speed,_rand_speed
	mov	(_speed + 1),(_rand_speed + 1)
	C$final.c$208$1$96 ==.
	XG$bounce$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'moveBall'
;------------------------------------------------------------
	G$moveBall$0$0 ==.
	C$final.c$210$1$96 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:210: bool moveBall(void){
;	-----------------------------------------
;	 function moveBall
;	-----------------------------------------
_moveBall:
	C$final.c$211$1$106 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:211: if(speed>0){ //to left
	clr	c
	clr	a
	subb	a,_speed
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_speed + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00120$
	C$final.c$212$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:212: LED2=0;
	clr	_LED2
	C$final.c$213$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:213: customWait();
	lcall	_customWait
	C$final.c$214$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:214: LED2=1;
	setb	_LED2
	C$final.c$215$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:215: LED3=0;
	clr	_LED3
	C$final.c$216$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:216: customWait();
	lcall	_customWait
	C$final.c$217$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:217: LED3=1;
	setb	_LED3
	C$final.c$218$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:218: LED4=0;
	clr	_LED4
	C$final.c$219$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:219: customWait();
	lcall	_customWait
	C$final.c$220$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:220: LED4=1;
	setb	_LED4
	C$final.c$221$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:221: LED5=0;
	clr	_LED5
	C$final.c$222$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:222: customWait();
	lcall	_customWait
	C$final.c$223$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:223: LED5=1;
	setb	_LED5
	C$final.c$224$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:224: hit=hit_or_miss(); //did P2 hit back?
	lcall	_hit_or_miss
	C$final.c$225$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:225: if(hit){ //bounce to right
	mov	_hit,c
	jnc	00107$
	C$final.c$226$3$108 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:226: bounce();
	lcall	_bounce
	C$final.c$227$3$108 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:227: return true;
	setb	c
	ljmp	00122$
00107$:
	C$final.c$229$2$107 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:229: else if(!hit){
	jnb	_hit,00156$
	ljmp	00121$
00156$:
	C$final.c$230$3$109 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:230: counts=0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$final.c$231$3$109 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:231: score0++;
	inc	_score0
;	genFromRTrack removed	clr	a
	cjne	a,_score0,00157$
	inc	(_score0 + 1)
00157$:
	C$final.c$232$3$109 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:232: while(counts<338){
00101$:
	clr	c
	mov	a,_counts
	subb	a,#0x52
	mov	a,(_counts + 1)
	subb	a,#0x01
	jnc	00103$
	C$final.c$233$4$110 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:233: LED7=0;
	clr	_LED7
	sjmp	00101$
00103$:
	C$final.c$235$3$109 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:235: printf("\r\nP1:%d,P2:%d",score0,score1);
	push	_score1
	push	(_score1 + 1)
	push	_score0
	push	(_score0 + 1)
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	C$final.c$236$3$109 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:236: LED7=1;
	setb	_LED7
	sjmp	00121$
00120$:
	C$final.c$239$1$106 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:239: else if(speed<0){ //to right
	mov	a,(_speed + 1)
	jnb	acc.7,00121$
	C$final.c$240$2$111 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:240: LED5=0;
	clr	_LED5
	C$final.c$241$2$111 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:241: customWait();
	lcall	_customWait
	C$final.c$242$2$111 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:242: LED5=1;
	setb	_LED5
	C$final.c$243$2$111 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:243: LED4=0;
	clr	_LED4
	C$final.c$244$2$111 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:244: customWait();
	lcall	_customWait
	C$final.c$245$2$111 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:245: LED4=1;
	setb	_LED4
	C$final.c$246$2$111 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:246: LED3=0;
	clr	_LED3
	C$final.c$247$2$111 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:247: customWait();
	lcall	_customWait
	C$final.c$248$2$111 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:248: LED3=1;
	setb	_LED3
	C$final.c$249$2$111 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:249: LED2=0;
	clr	_LED2
	C$final.c$250$2$111 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:250: customWait();
	lcall	_customWait
	C$final.c$251$2$111 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:251: LED2=1;
	setb	_LED2
	C$final.c$252$2$111 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:252: hit=hit_or_miss();
	lcall	_hit_or_miss
	C$final.c$253$2$111 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:253: if(hit){
	mov	_hit,c
	jnc	00115$
	C$final.c$254$3$112 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:254: bounce();
	lcall	_bounce
	C$final.c$255$3$112 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:255: return true;
	setb	c
	sjmp	00122$
00115$:
	C$final.c$257$2$111 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:257: else if(!hit){
	jb	_hit,00121$
	C$final.c$258$3$113 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:258: counts=0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$final.c$259$3$113 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:259: score1++;
	inc	_score1
;	genFromRTrack removed	clr	a
	cjne	a,_score1,00162$
	inc	(_score1 + 1)
00162$:
	C$final.c$260$3$113 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:260: while(counts<338){
00109$:
	clr	c
	mov	a,_counts
	subb	a,#0x52
	mov	a,(_counts + 1)
	subb	a,#0x01
	jnc	00111$
	C$final.c$261$4$114 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:261: LED0=0;
	clr	_LED0
	sjmp	00109$
00111$:
	C$final.c$263$3$113 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:263: printf("\r\nP1:%d,P2:%d",score0,score1);
	push	_score1
	push	(_score1 + 1)
	push	_score0
	push	(_score0 + 1)
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	C$final.c$264$3$113 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:264: LED0=1;
	setb	_LED0
00121$:
	C$final.c$267$1$106 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:267: return false;
	clr	c
00122$:
	C$final.c$268$1$106 ==.
	XG$moveBall$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'hit_or_miss'
;------------------------------------------------------------
	G$hit_or_miss$0$0 ==.
	C$final.c$270$1$106 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:270: bool hit_or_miss(void){ //i guess they never miss huh
;	-----------------------------------------
;	 function hit_or_miss
;	-----------------------------------------
_hit_or_miss:
	C$final.c$271$1$116 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:271: counts=0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$final.c$272$1$116 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:272: if(speed>0){ //P2 has to click
	clr	c
	subb	a,_speed
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_speed + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00116$
	C$final.c$273$2$117 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:273: while(counts<(unsigned int)(speed*34)){
00104$:
	mov	__mulint_PARM_2,_speed
	mov	(__mulint_PARM_2 + 1),(_speed + 1)
	mov	dptr,#0x0022
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,_counts
	subb	a,r6
	mov	a,(_counts + 1)
	subb	a,r7
	jnc	00106$
	C$final.c$274$3$118 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:274: LED6=0;
	clr	_LED6
	C$final.c$275$3$118 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:275: if(!PB2&&!PB2_flag){
	jb	_PB2,00104$
	jb	_PB2_flag,00104$
	C$final.c$276$4$119 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:276: LED6=1;
	setb	_LED6
	C$final.c$277$4$119 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:277: PB1_flag=false;
	clr	_PB1_flag
	C$final.c$278$4$119 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:278: return true;
	setb	c
	sjmp	00118$
00106$:
	C$final.c$281$2$117 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:281: LED6=1;
	setb	_LED6
	sjmp	00117$
00116$:
	C$final.c$283$1$116 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:283: else if(speed<0){ //P1 has to click
	mov	a,(_speed + 1)
	jnb	acc.7,00117$
	C$final.c$284$2$120 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:284: while(counts<(unsigned int)(speed*-1*34)){
00110$:
	clr	c
	clr	a
	subb	a,_speed
	mov	__mulint_PARM_2,a
	clr	a
	subb	a,(_speed + 1)
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x0022
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	clr	c
	mov	a,_counts
	subb	a,r6
	mov	a,(_counts + 1)
	subb	a,r7
	jnc	00112$
	C$final.c$285$3$121 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:285: LED1=0;
	clr	_LED1
	C$final.c$286$3$121 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:286: if(!PB1&&!PB1_flag){
	jb	_PB1,00110$
	jb	_PB1_flag,00110$
	C$final.c$287$4$122 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:287: LED1=1;
	setb	_LED1
	C$final.c$288$4$122 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:288: PB2_flag=false;
	clr	_PB2_flag
	C$final.c$289$4$122 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:289: return true;
	setb	c
	sjmp	00118$
00112$:
	C$final.c$292$2$120 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:292: LED1=1;
	setb	_LED1
00117$:
	C$final.c$294$1$116 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:294: return false;
	clr	c
00118$:
	C$final.c$295$1$116 ==.
	XG$hit_or_miss$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'player1_Serve'
;------------------------------------------------------------
	G$player1_Serve$0$0 ==.
	C$final.c$298$1$116 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:298: void player1_Serve(void){
;	-----------------------------------------
;	 function player1_Serve
;	-----------------------------------------
_player1_Serve:
	C$final.c$299$1$124 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:299: printf("Player 1 serving\r\n");
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
	C$final.c$300$1$124 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:300: PB1_flag=false;
	clr	_PB1_flag
	C$final.c$301$1$124 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:301: PB2_flag=false;
	clr	_PB2_flag
	C$final.c$302$1$124 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:302: counts=0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$final.c$303$1$124 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:303: while(counts<60);
00101$:
	clr	c
	mov	a,_counts
	subb	a,#0x3c
	mov	a,(_counts + 1)
	subb	a,#0x00
	jc	00101$
	C$final.c$304$1$124 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:304: while(PB1){
00104$:
	jnb	_PB1,00106$
	C$final.c$305$2$125 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:305: LED1=0;
	clr	_LED1
	C$final.c$306$2$125 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:306: speed=speed_set(); //positive serve speed
	lcall	_speed_set
	mov	_speed,dpl
	mov	(_speed + 1),dph
	sjmp	00104$
00106$:
	C$final.c$308$1$124 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:308: LED1=1;
	setb	_LED1
	C$final.c$309$1$124 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:309: while(moveBall());
00107$:
	lcall	_moveBall
	jc	00107$
	C$final.c$310$1$124 ==.
	XG$player1_Serve$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'player2_Serve'
;------------------------------------------------------------
	G$player2_Serve$0$0 ==.
	C$final.c$312$1$124 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:312: void player2_Serve(void){
;	-----------------------------------------
;	 function player2_Serve
;	-----------------------------------------
_player2_Serve:
	C$final.c$313$1$127 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:313: printf("Player 2 serving\r\n");
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
	C$final.c$314$1$127 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:314: PB1_flag=false;
	clr	_PB1_flag
	C$final.c$315$1$127 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:315: PB2_flag=false;
	clr	_PB2_flag
	C$final.c$316$1$127 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:316: counts=0;
	clr	a
	mov	_counts,a
	mov	(_counts + 1),a
	C$final.c$317$1$127 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:317: while(counts<60);
00101$:
	clr	c
	mov	a,_counts
	subb	a,#0x3c
	mov	a,(_counts + 1)
	subb	a,#0x00
	jc	00101$
	C$final.c$318$1$127 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:318: while(PB2){
00104$:
	jnb	_PB2,00106$
	C$final.c$319$2$128 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:319: LED6=0;
	clr	_LED6
	C$final.c$320$2$128 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:320: speed=-1*speed_set(); //negative serve speed
	lcall	_speed_set
	mov	r6,dpl
	mov	r7,dph
	clr	c
	clr	a
	subb	a,r6
	mov	_speed,a
	clr	a
	subb	a,r7
	mov	(_speed + 1),a
	sjmp	00104$
00106$:
	C$final.c$322$1$127 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:322: LED6=1;
	setb	_LED6
	C$final.c$323$1$127 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:323: while(moveBall());
00107$:
	lcall	_moveBall
	jc	00107$
	C$final.c$324$1$127 ==.
	XG$player2_Serve$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'startGame'
;------------------------------------------------------------
	G$startGame$0$0 ==.
	C$final.c$327$1$127 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:327: void startGame(void){
;	-----------------------------------------
;	 function startGame
;	-----------------------------------------
_startGame:
	C$final.c$328$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:328: TR0=1;
	setb	_TR0
	C$final.c$329$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:329: printf("Starting Ping Pong...\r\n");
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
	C$final.c$330$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:330: while(PB1){
00101$:
	jnb	_PB1,00103$
	C$final.c$331$2$131 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:331: LED0=0;
	clr	_LED0
	sjmp	00101$
00103$:
	C$final.c$333$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:333: LED0=1;
	setb	_LED0
	C$final.c$334$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:334: score0=0;
	clr	a
	mov	_score0,a
	mov	(_score0 + 1),a
	C$final.c$335$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:335: score1=0;
	mov	_score1,a
	mov	(_score1 + 1),a
	C$final.c$336$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:336: while(score0<5 && score1<5){ //while either play has less than 5 points
00105$:
	clr	c
	mov	a,_score0
	subb	a,#0x05
	mov	a,(_score0 + 1)
	subb	a,#0x00
	jnc	00107$
	clr	c
	mov	a,_score1
	subb	a,#0x05
	mov	a,(_score1 + 1)
	subb	a,#0x00
	jnc	00107$
	C$final.c$338$2$132 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:338: player1_Serve();
	lcall	_player1_Serve
	C$final.c$340$2$132 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:340: player2_Serve();
	lcall	_player2_Serve
	sjmp	00105$
00107$:
	C$final.c$342$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:342: LED0=0;
	clr	_LED0
	C$final.c$343$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:343: LED1=0;
	clr	_LED1
	C$final.c$344$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:344: LED2=0;
	clr	_LED2
	C$final.c$345$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:345: LED3=0;
	clr	_LED3
	C$final.c$346$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:346: LED4=0;
	clr	_LED4
	C$final.c$347$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:347: LED5=0;
	clr	_LED5
	C$final.c$348$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:348: LED6=0;
	clr	_LED6
	C$final.c$349$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:349: LED7=0;
	clr	_LED7
	C$final.c$350$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:350: printf("Game Over, Final Score:%d-%d\r\n",score0,score1);
	push	_score1
	push	(_score1 + 1)
	push	_score0
	push	(_score0 + 1)
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	C$final.c$351$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:351: if(score0>score1){
	clr	c
	mov	a,_score1
	subb	a,_score0
	mov	a,(_score1 + 1)
	subb	a,(_score0 + 1)
	jnc	00111$
	C$final.c$352$2$133 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:352: printf("Player 1 Wins!\r\n");
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
	sjmp	00113$
00111$:
	C$final.c$354$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:354: else if(score0<score1){
	clr	c
	mov	a,_score0
	subb	a,_score1
	mov	a,(_score0 + 1)
	subb	a,(_score1 + 1)
	jnc	00113$
	C$final.c$355$2$134 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:355: printf("Player 2 Wins!\r\n");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
00113$:
	C$final.c$357$1$130 ==.
	XG$startGame$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'blink'
;------------------------------------------------------------
;currentcounts             Allocated to registers r6 r7 
;------------------------------------------------------------
	G$blink$0$0 ==.
	C$final.c$359$1$130 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:359: void blink()
;	-----------------------------------------
;	 function blink
;	-----------------------------------------
_blink:
	C$final.c$362$1$135 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:362: TR0 = 1;
	setb	_TR0
	C$final.c$366$1$135 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:366: while ( PB1 && PB2 )
00108$:
	jnb	_PB1,00111$
	jnb	_PB2,00111$
	C$final.c$368$2$136 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:368: currentcounts=counts;
	mov	r6,_counts
	mov	r7,(_counts + 1)
	C$final.c$369$2$136 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:369: while (counts < currentcounts + 54 )
	mov	a,#0x36
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
00101$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,_counts
	subb	a,r4
	mov	a,(_counts + 1)
	subb	a,r5
	jnc	00103$
	C$final.c$371$3$137 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:371: LED0=0;  // turn on all LED for 160ms
	clr	_LED0
	C$final.c$372$3$137 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:372: LED1=0;
	clr	_LED1
	C$final.c$373$3$137 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:373: LED2=0;
	clr	_LED2
	C$final.c$374$3$137 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:374: LED3=0;
	clr	_LED3
	C$final.c$375$3$137 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:375: LED4=0;
	clr	_LED4
	C$final.c$376$3$137 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:376: LED5=0;
	clr	_LED5
	C$final.c$377$3$137 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:377: LED6=0;
	clr	_LED6
	C$final.c$378$3$137 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:378: LED7=0;
	clr	_LED7
	sjmp	00101$
00103$:
	C$final.c$382$2$136 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:382: while (counts < currentcounts + 54 )
	mov	a,#0x36
	add	a,_counts
	mov	r6,a
	clr	a
	addc	a,(_counts + 1)
	mov	r7,a
00104$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,_counts
	subb	a,r4
	mov	a,(_counts + 1)
	subb	a,r5
	jnc	00108$
	C$final.c$384$3$138 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:384: LED0=1;	// turn off all LED FOR 160ms
	setb	_LED0
	C$final.c$385$3$138 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:385: LED1=1;
	setb	_LED1
	C$final.c$386$3$138 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:386: LED2=1;
	setb	_LED2
	C$final.c$387$3$138 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:387: LED3=1;
	setb	_LED3
	C$final.c$388$3$138 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:388: LED4=1;
	setb	_LED4
	C$final.c$389$3$138 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:389: LED5=1;
	setb	_LED5
	C$final.c$390$3$138 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:390: LED6=1;
	setb	_LED6
	C$final.c$391$3$138 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:391: LED7=1;
	setb	_LED7
	sjmp	00104$
00111$:
	C$final.c$394$1$135 ==.
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
	C$final.c$399$1$135 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:399: unsigned char generate_random_number()
;	-----------------------------------------
;	 function generate_random_number
;	-----------------------------------------
_generate_random_number:
	C$final.c$402$1$135 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:402: unsigned char high_bits = 0;
	mov	r7,#0x00
	C$final.c$406$1$139 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:406: var= rand()%255;
	push	ar7
	lcall	_rand
	mov	__modsint_PARM_2,#0xff
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	C$final.c$407$1$139 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:407: while (high_bits < 3)
00102$:
	cjne	r7,#0x03,00122$
00122$:
	jnc	00104$
	C$final.c$409$2$140 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:409: srand(rand());
	push	ar7
	lcall	_rand
	lcall	_srand
	C$final.c$410$2$140 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:410: var= rand()%255;
	lcall	_rand
	mov	__modsint_PARM_2,#0xff
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r4,dpl
	pop	ar7
	mov	ar5,r4
	C$final.c$411$2$140 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:411: for(i=0;i<8;i++)
	mov	r4,#0x00
	mov	r6,#0x00
00105$:
	C$final.c$413$3$141 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:413: high_bits += (var>>i) & 0x01;
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
	C$final.c$411$2$140 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:411: for(i=0;i<8;i++)
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
	C$final.c$416$1$139 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:416: printf("convert number : 0x%x", var);
	mov	ar6,r5
	mov	r7,#0x00
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar5
	C$final.c$417$1$139 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:417: return var;
	mov	dpl,r5
	C$final.c$418$1$139 ==.
	XG$generate_random_number$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mode3'
;------------------------------------------------------------
;var                       Allocated with name '_mode3_var_1_143'
;input                     Allocated with name '_mode3_input_1_143'
;PoT                       Allocated to registers r7 
;score                     Allocated to registers r4 r5 
;overflow                  Allocated to registers r6 r7 
;temporarycount            Allocated to registers r5 r6 
;score_timer               Allocated with name '_mode3_score_timer_1_143'
;submit_timer              Allocated with name '_mode3_submit_timer_1_143'
;debounce_count            Allocated to registers r5 r6 
;mode                      Allocated with name '_mode3_mode_1_143'
;lock_in_counts            Allocated to registers 
;sloc0                     Allocated with name '_mode3_sloc0_1_0'
;------------------------------------------------------------
	G$mode3$0$0 ==.
	C$final.c$420$1$139 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:420: void mode3(void)
;	-----------------------------------------
;	 function mode3
;	-----------------------------------------
_mode3:
	C$final.c$423$1$139 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:423: unsigned char input=0b00000000;
	C$final.c$430$1$139 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:430: int submit_timer = 0;
	clr	a
	mov	_mode3_input_1_143,a
	mov	_mode3_submit_timer_1_143,a
	mov	(_mode3_submit_timer_1_143 + 1),a
	C$final.c$432$1$139 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:432: char mode=0;  // 0 for bit select mode // 1 for lock in bits mode
;	1-genFromRTrack replaced	mov	_mode3_mode_1_143,#0x00
	mov	_mode3_mode_1_143,a
	C$final.c$434$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:434: blink();
	lcall	_blink
	C$final.c$435$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:435: var = generate_random_number();
	lcall	_generate_random_number
	mov	_mode3_var_1_143,dpl
	C$final.c$438$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:438: score_timer=counts;
	mov	_mode3_score_timer_1_143,_counts
	mov	(_mode3_score_timer_1_143 + 1),(_counts + 1)
	C$final.c$439$4$146 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:439: while ( counts < score_timer + 10125)  // wait for max time 30s
	mov	a,#0x8d
	add	a,_mode3_score_timer_1_143
	mov	r0,a
	mov	a,#0x27
	addc	a,(_mode3_score_timer_1_143 + 1)
	mov	r3,a
00197$:
	mov	ar5,r0
	mov	ar6,r3
	clr	c
	mov	a,_counts
	subb	a,r5
	mov	a,(_counts + 1)
	subb	a,r6
	jc	00357$
	ljmp	00199$
00357$:
	C$final.c$442$2$144 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:442: if (mode == 1)  // lock-in bit mode
	mov	a,#0x01
	cjne	a,_mode3_mode_1_143,00358$
	sjmp	00359$
00358$:
	ljmp	00195$
00359$:
	C$final.c$446$3$145 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:446: printf("mode1\r");
	push	ar3
	push	ar0
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar3
	C$final.c$447$3$145 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:447: while ( counts < lock_in_counts + 168)   //show user input for 500ms
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
	subb	a,r6
	jnc	00103$
	C$final.c$449$4$146 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:449: BILED0 = 1;  //BILED RED
	setb	_BILED0
	C$final.c$450$4$146 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:450: BILED1 = 0;
	clr	_BILED1
	C$final.c$451$4$146 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:451: printf("display user input\n");
	push	ar3
	push	ar0
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar3
	C$final.c$452$4$146 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:452: P3 = ~input;  // display the user input a LEDs   ????
	mov	a,_mode3_input_1_143
	cpl	a
	mov	_P3,a
	C$final.c$453$4$146 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:453: mode=0;
	mov	_mode3_mode_1_143,#0x00
	C$final.c$454$3$145 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:454: break;
00103$:
	C$final.c$457$3$145 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:457: debounce_count = counts;
	mov	r5,_counts
	mov	r6,(_counts + 1)
	C$final.c$458$3$145 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:458: while ( counts < debounce_count + 54);
	mov	a,#0x36
	add	a,r5
	mov	_mode3_sloc0_1_0,a
	clr	a
	addc	a,r6
	mov	(_mode3_sloc0_1_0 + 1),a
00104$:
	mov	r1,_mode3_sloc0_1_0
	mov	r2,(_mode3_sloc0_1_0 + 1)
	clr	c
	mov	a,_counts
	subb	a,r1
	mov	a,(_counts + 1)
	subb	a,r2
	jc	00104$
	C$final.c$459$3$145 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:459: if (!PB2) 
	jnb	_PB2,00362$
	ljmp	00197$
00362$:
	C$final.c$461$4$147 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:461: printf("submite\n");
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$final.c$462$4$147 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:462: submit_timer=counts;  // store the time break the loop
	mov	_mode3_submit_timer_1_143,_counts
	mov	(_mode3_submit_timer_1_143 + 1),(_counts + 1)
	C$final.c$463$4$147 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:463: break;
	ljmp	00199$
00195$:
	C$final.c$469$2$144 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:469: else if (mode == 0 )  //bit selecting mode
	mov	a,_mode3_mode_1_143
	jz	00363$
	ljmp	00197$
00363$:
	C$final.c$473$3$148 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:473: printf("mode0\r\n");
	push	ar3
	push	ar0
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar3
	C$final.c$474$3$148 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:474: BILED0 = 0;
	clr	_BILED0
	C$final.c$475$3$148 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:475: BILED1 = 1;  //BILED GREEN
	setb	_BILED1
	C$final.c$477$3$148 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:477: debounce_count = counts;
	mov	r5,_counts
	mov	r6,(_counts + 1)
	C$final.c$478$3$148 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:478: while ( counts < debounce_count + 54);
	mov	a,#0x36
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
00109$:
	mov	ar4,r1
	mov	ar7,r2
	clr	c
	mov	a,_counts
	subb	a,r4
	mov	a,(_counts + 1)
	subb	a,r7
	jc	00109$
	C$final.c$479$3$148 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:479: while (PB1 && PB2)
00134$:
	jb	_PB1,00365$
	ljmp	00136$
00365$:
	jb	_PB2,00366$
	ljmp	00136$
00366$:
	C$final.c$481$4$149 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:481: PoT = read_AD_input(0);
	mov	dpl,#0x00
	push	ar3
	push	ar0
	lcall	_read_AD_input
	mov	r7,dpl
	pop	ar0
	pop	ar3
	C$final.c$482$4$149 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:482: if (PoT < 17) 
	cjne	r7,#0x11,00367$
00367$:
	jnc	00131$
	C$final.c$484$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:484: P3|=0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$final.c$485$5$150 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:485: LED0=0;
	clr	_LED0
	sjmp	00134$
00131$:
	C$final.c$487$4$149 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:487: else if (PoT < 34) 
	cjne	r7,#0x22,00369$
00369$:
	jnc	00128$
	C$final.c$489$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:489: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$final.c$490$5$151 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:490: LED1=0;
	clr	_LED1
	sjmp	00134$
00128$:
	C$final.c$492$4$149 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:492: else if(PoT < 51) 
	cjne	r7,#0x33,00371$
00371$:
	jnc	00125$
	C$final.c$494$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:494: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$final.c$495$5$152 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:495: LED2=0;
	clr	_LED2
	sjmp	00134$
00125$:
	C$final.c$497$4$149 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:497: else if(PoT < 68) 
	cjne	r7,#0x44,00373$
00373$:
	jnc	00122$
	C$final.c$499$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:499: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$final.c$500$5$153 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:500: LED3=0;
	clr	_LED3
	sjmp	00134$
00122$:
	C$final.c$502$4$149 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:502: else if(PoT < 85)	 //light up correspond LED
	cjne	r7,#0x55,00375$
00375$:
	jnc	00119$
	C$final.c$504$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:504: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$final.c$505$5$154 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:505: LED4=0;
	clr	_LED4
	sjmp	00134$
00119$:
	C$final.c$507$4$149 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:507: else if(PoT < 102) 
	cjne	r7,#0x66,00377$
00377$:
	jnc	00116$
	C$final.c$509$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:509: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$final.c$510$5$155 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:510: LED5=0;\
	clr	_LED5
	sjmp	00134$
00116$:
	C$final.c$512$4$149 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:512: else if(PoT < 119) 
	cjne	r7,#0x77,00379$
00379$:
	jnc	00113$
	C$final.c$514$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:514: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$final.c$515$5$156 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:515: LED6=0;
	clr	_LED6
	sjmp	00134$
00113$:
	C$final.c$519$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:519: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$final.c$520$5$157 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:520: LED7=0;
	clr	_LED7
	ljmp	00134$
00136$:
	C$final.c$523$3$148 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:523: if (!PB1)
	jnb	_PB1,00381$
	ljmp	00186$
00381$:
	C$final.c$525$4$158 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:525: debounce_count = counts;
	mov	r5,_counts
	mov	r6,(_counts + 1)
	C$final.c$526$4$158 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:526: while ( counts < debounce_count + 54);
	mov	a,#0x36
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
00137$:
	mov	ar2,r5
	mov	ar4,r6
	clr	c
	mov	a,_counts
	subb	a,r2
	mov	a,(_counts + 1)
	subb	a,r4
	jc	00137$
	C$final.c$527$4$158 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:527: PoT = read_AD_input(0);
	mov	dpl,#0x00
	push	ar3
	push	ar0
	lcall	_read_AD_input
	mov	r7,dpl
	pop	ar0
	pop	ar3
	C$final.c$528$4$158 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:528: BILED0 = 1;// BILED RED
	setb	_BILED0
	C$final.c$529$4$158 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:529: BILED1 = 0;
	clr	_BILED1
	C$final.c$530$4$158 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:530: temporarycount = counts;
	mov	r5,_counts
	mov	r6,(_counts + 1)
	C$final.c$531$4$158 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:531: printf("changing bits\n");
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar0
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	C$final.c$532$4$158 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:532: if (PoT < 17) 
	cjne	r7,#0x11,00383$
00383$:
	jnc	00183$
	C$final.c$534$5$159 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:534: input^=1<<0;
	xrl	_mode3_input_1_143,#0x01
	C$final.c$535$5$159 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:535: while ( counts < temporarycount + 337)
	mov	a,#0x51
	add	a,r5
	mov	r2,a
	mov	a,#0x01
	addc	a,r6
	mov	r4,a
00140$:
	push	ar0
	push	ar3
	mov	ar1,r2
	mov	ar3,r4
	clr	c
	mov	a,_counts
	subb	a,r1
	mov	a,(_counts + 1)
	subb	a,r3
	pop	ar3
	pop	ar0
	jc	00385$
	ljmp	00186$
00385$:
	C$final.c$537$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:537: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$final.c$538$6$160 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:538: LED0=0;
	clr	_LED0
	sjmp	00140$
00183$:
	C$final.c$541$4$158 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:541: else if (PoT < 34) 
	cjne	r7,#0x22,00386$
00386$:
	jnc	00180$
	C$final.c$543$5$161 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:543: input^=1<<1;
	xrl	_mode3_input_1_143,#0x02
	C$final.c$544$5$161 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:544: while ( counts < temporarycount + 337)
	mov	a,#0x51
	add	a,r5
	mov	r2,a
	mov	a,#0x01
	addc	a,r6
	mov	r4,a
00143$:
	push	ar0
	push	ar3
	mov	ar1,r2
	mov	ar3,r4
	clr	c
	mov	a,_counts
	subb	a,r1
	mov	a,(_counts + 1)
	subb	a,r3
	pop	ar3
	pop	ar0
	jc	00388$
	ljmp	00186$
00388$:
	C$final.c$546$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:546: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$final.c$547$6$162 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:547: LED1=0;
	clr	_LED1
	sjmp	00143$
00180$:
	C$final.c$550$4$158 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:550: else if(PoT < 51) 
	cjne	r7,#0x33,00389$
00389$:
	jnc	00177$
	C$final.c$552$5$163 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:552: input^=1<<2;
	xrl	_mode3_input_1_143,#0x04
	C$final.c$553$5$163 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:553: while ( counts < temporarycount + 337)
	mov	a,#0x51
	add	a,r5
	mov	r2,a
	mov	a,#0x01
	addc	a,r6
	mov	r4,a
00146$:
	push	ar0
	push	ar3
	mov	ar1,r2
	mov	ar3,r4
	clr	c
	mov	a,_counts
	subb	a,r1
	mov	a,(_counts + 1)
	subb	a,r3
	pop	ar3
	pop	ar0
	jc	00391$
	ljmp	00186$
00391$:
	C$final.c$555$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:555: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$final.c$556$6$164 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:556: LED2=0;
	clr	_LED2
	sjmp	00146$
00177$:
	C$final.c$559$4$158 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:559: else if(PoT < 68) 
	cjne	r7,#0x44,00392$
00392$:
	jnc	00174$
	C$final.c$561$5$165 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:561: input^=1<<3;
	xrl	_mode3_input_1_143,#0x08
	C$final.c$562$5$165 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:562: while ( counts < temporarycount + 337)
	mov	a,#0x51
	add	a,r5
	mov	r2,a
	mov	a,#0x01
	addc	a,r6
	mov	r4,a
00149$:
	push	ar0
	push	ar3
	mov	ar1,r2
	mov	ar3,r4
	clr	c
	mov	a,_counts
	subb	a,r1
	mov	a,(_counts + 1)
	subb	a,r3
	pop	ar3
	pop	ar0
	jc	00394$
	ljmp	00186$
00394$:
	C$final.c$564$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:564: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$final.c$565$6$166 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:565: LED3=0;
	clr	_LED3
	sjmp	00149$
00174$:
	C$final.c$568$4$158 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:568: else if(PoT < 85) 
	cjne	r7,#0x55,00395$
00395$:
	jnc	00171$
	C$final.c$570$5$167 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:570: input^=1<<4;
	xrl	_mode3_input_1_143,#0x10
	C$final.c$571$5$167 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:571: while ( counts < temporarycount + 337)
	mov	a,#0x51
	add	a,r5
	mov	r2,a
	mov	a,#0x01
	addc	a,r6
	mov	r4,a
00152$:
	push	ar0
	push	ar3
	mov	ar1,r2
	mov	ar3,r4
	clr	c
	mov	a,_counts
	subb	a,r1
	mov	a,(_counts + 1)
	subb	a,r3
	pop	ar3
	pop	ar0
	jc	00397$
	ljmp	00186$
00397$:
	C$final.c$573$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:573: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$final.c$574$6$168 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:574: LED4=0;
	clr	_LED4
	sjmp	00152$
00171$:
	C$final.c$577$4$158 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:577: else if(PoT < 102)
	cjne	r7,#0x66,00398$
00398$:
	jnc	00168$
	C$final.c$579$5$169 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:579: input^=1<<5;
	xrl	_mode3_input_1_143,#0x20
	C$final.c$580$5$169 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:580: while ( counts < temporarycount + 337)
	mov	a,#0x51
	add	a,r5
	mov	r2,a
	mov	a,#0x01
	addc	a,r6
	mov	r4,a
00155$:
	push	ar0
	push	ar3
	mov	ar1,r2
	mov	ar3,r4
	clr	c
	mov	a,_counts
	subb	a,r1
	mov	a,(_counts + 1)
	subb	a,r3
	pop	ar3
	pop	ar0
	jnc	00186$
	C$final.c$582$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:582: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$final.c$583$6$170 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:583: LED5=0;
	clr	_LED5
	sjmp	00155$
00168$:
	C$final.c$586$4$158 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:586: else if(PoT < 119) 
	cjne	r7,#0x77,00401$
00401$:
	jnc	00165$
	C$final.c$588$5$171 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:588: input^=1<<6;
	xrl	_mode3_input_1_143,#0x40
	C$final.c$589$5$171 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:589: while ( counts < temporarycount + 337)
	mov	a,#0x51
	add	a,r5
	mov	r4,a
	mov	a,#0x01
	addc	a,r6
	mov	r7,a
00158$:
	mov	ar1,r4
	mov	ar2,r7
	clr	c
	mov	a,_counts
	subb	a,r1
	mov	a,(_counts + 1)
	subb	a,r2
	jnc	00186$
	C$final.c$591$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:591: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$final.c$592$6$172 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:592: LED6=0;
	clr	_LED6
	sjmp	00158$
00165$:
	C$final.c$597$5$173 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:597: input^=1<<7;
	xrl	_mode3_input_1_143,#0x80
	C$final.c$598$5$173 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:598: while ( counts < temporarycount + 337)
	mov	a,#0x51
	add	a,r5
	mov	r7,a
	mov	a,#0x01
	addc	a,r6
	mov	r6,a
00161$:
	mov	ar4,r7
	mov	ar5,r6
	clr	c
	mov	a,_counts
	subb	a,r4
	mov	a,(_counts + 1)
	subb	a,r5
	jnc	00186$
	C$final.c$600$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:600: P3 |= 0xFF;
	mov	a,_P3
	mov	_P3,#0xff
	C$final.c$601$6$174 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:601: LED7=0;
	clr	_LED7
	sjmp	00161$
00186$:
	C$final.c$605$3$148 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:605: if (!PB2)
	jnb	_PB2,00405$
	ljmp	00197$
00405$:
	C$final.c$608$4$175 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:608: while ( counts < debounce_count + 54);
	mov	a,#0x36
	add	a,_counts
	mov	r6,a
	clr	a
	addc	a,(_counts + 1)
	mov	r7,a
00187$:
	mov	ar4,r6
	mov	ar5,r7
	clr	c
	mov	a,_counts
	subb	a,r4
	mov	a,(_counts + 1)
	subb	a,r5
	jc	00187$
	C$final.c$609$4$175 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:609: mode =1; //toggle active display mode
	mov	_mode3_mode_1_143,#0x01
	C$final.c$610$4$175 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:610: printf("mode switched\r");
	push	ar3
	push	ar0
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar3
	ljmp	00197$
00199$:
	C$final.c$616$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:616: if (var == input) 
	mov	a,_mode3_input_1_143
	cjne	a,_mode3_var_1_143,00203$
	C$final.c$618$2$176 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:618: overflow = score_timer + 10125 - submit_timer;
	mov	a,#0x8d
	add	a,_mode3_score_timer_1_143
	mov	r6,a
	mov	a,#0x27
	addc	a,(_mode3_score_timer_1_143 + 1)
	mov	r7,a
	mov	a,r6
	clr	c
	subb	a,_mode3_submit_timer_1_143
	mov	r6,a
	mov	a,r7
	subb	a,(_mode3_submit_timer_1_143 + 1)
	mov	r7,a
	C$final.c$619$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:619: score = overflow / 337;
	mov	__divsint_PARM_2,#0x51
	mov	(__divsint_PARM_2 + 1),#0x01
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	C$final.c$620$2$176 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:620: printf("Answer correct! \n\t Overflows: %d Score: %d",overflow,score);
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	C$final.c$623$2$176 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:623: BILED0 = 0;
	clr	_BILED0
	C$final.c$624$2$176 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:624: BILED1 = 1;  //BILED GREEN INDICATE CONVERSION SUCCESS
	setb	_BILED1
	sjmp	00205$
00203$:
	C$final.c$627$1$143 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:627: else if(var != input)
	mov	a,_mode3_input_1_143
	cjne	a,_mode3_var_1_143,00409$
	sjmp	00205$
00409$:
	C$final.c$629$2$177 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:629: overflow = score_timer + 10125 - submit_timer;
	mov	a,#0x8d
	add	a,_mode3_score_timer_1_143
	mov	r4,a
	mov	a,#0x27
	addc	a,(_mode3_score_timer_1_143 + 1)
	mov	r5,a
	mov	a,r4
	clr	c
	subb	a,_mode3_submit_timer_1_143
	mov	r6,a
	mov	a,r5
	subb	a,(_mode3_submit_timer_1_143 + 1)
	mov	r7,a
	C$final.c$631$2$177 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:631: printf("Answer Incorrect! \n\t Overflows: %d Score: %d\n",overflow,score);
	clr	a
	push	acc
	push	acc
	push	ar6
	push	ar7
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	C$final.c$633$2$177 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:633: printf("%x",input);
	mov	r6,_mode3_input_1_143
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	C$final.c$634$2$177 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:634: BILED0 = 1;
	setb	_BILED0
	C$final.c$635$2$177 ==.
;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:635: BILED1 = 0;  //BILED RED INDICATE FAILURE
	clr	_BILED1
00205$:
	C$final.c$638$1$143 ==.
	XG$mode3$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Ffinal$__str_0$0$0 == .
___str_0:
	.ascii "mode1 start"
	.db 0x00
Ffinal$__str_1$0$0 == .
___str_1:
	.ascii "mode3 start"
	.db 0x00
Ffinal$__str_2$0$0 == .
___str_2:
	.db 0x0d
	.db 0x0a
	.ascii "P1:%d,P2:%d"
	.db 0x00
Ffinal$__str_3$0$0 == .
___str_3:
	.ascii "Player 1 serving"
	.db 0x0d
	.db 0x0a
	.db 0x00
Ffinal$__str_4$0$0 == .
___str_4:
	.ascii "Player 2 serving"
	.db 0x0d
	.db 0x0a
	.db 0x00
Ffinal$__str_5$0$0 == .
___str_5:
	.ascii "Starting Ping Pong..."
	.db 0x0d
	.db 0x0a
	.db 0x00
Ffinal$__str_6$0$0 == .
___str_6:
	.ascii "Game Over, Final Score:%d-%d"
	.db 0x0d
	.db 0x0a
	.db 0x00
Ffinal$__str_7$0$0 == .
___str_7:
	.ascii "Player 1 Wins!"
	.db 0x0d
	.db 0x0a
	.db 0x00
Ffinal$__str_8$0$0 == .
___str_8:
	.ascii "Player 2 Wins!"
	.db 0x0d
	.db 0x0a
	.db 0x00
Ffinal$__str_9$0$0 == .
___str_9:
	.ascii "convert number : 0x%x"
	.db 0x00
Ffinal$__str_10$0$0 == .
___str_10:
	.ascii "mode1"
	.db 0x0d
	.db 0x00
Ffinal$__str_11$0$0 == .
___str_11:
	.ascii "display user input"
	.db 0x0a
	.db 0x00
Ffinal$__str_12$0$0 == .
___str_12:
	.ascii "submite"
	.db 0x0a
	.db 0x00
Ffinal$__str_13$0$0 == .
___str_13:
	.ascii "mode0"
	.db 0x0d
	.db 0x0a
	.db 0x00
Ffinal$__str_14$0$0 == .
___str_14:
	.ascii "changing bits"
	.db 0x0a
	.db 0x00
Ffinal$__str_15$0$0 == .
___str_15:
	.ascii "mode switched"
	.db 0x0d
	.db 0x00
Ffinal$__str_16$0$0 == .
___str_16:
	.ascii "Answer correct! "
	.db 0x0a
	.db 0x09
	.ascii " Overflows: %d Score: %d"
	.db 0x00
Ffinal$__str_17$0$0 == .
___str_17:
	.ascii "Answer Incorrect! "
	.db 0x0a
	.db 0x09
	.ascii " Overflows: %d Score: %d"
	.db 0x0a
	.db 0x00
Ffinal$__str_18$0$0 == .
___str_18:
	.ascii "%x"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
