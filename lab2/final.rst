                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module final
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _blink
                                     12 	.globl _speed_set
                                     13 	.globl _main
                                     14 	.globl _srand
                                     15 	.globl _rand
                                     16 	.globl _putchar
                                     17 	.globl _printf
                                     18 	.globl _getchar_nw
                                     19 	.globl _Sys_Init
                                     20 	.globl _UART0_Init
                                     21 	.globl _SYSCLK_Init
                                     22 	.globl _LED0
                                     23 	.globl _LED1
                                     24 	.globl _LED2
                                     25 	.globl _LED3
                                     26 	.globl _LED4
                                     27 	.globl _LED5
                                     28 	.globl _LED6
                                     29 	.globl _LED7
                                     30 	.globl _SS1
                                     31 	.globl _SS0
                                     32 	.globl _PB2
                                     33 	.globl _PB1
                                     34 	.globl _BILED1
                                     35 	.globl _BILED0
                                     36 	.globl _SPIF
                                     37 	.globl _WCOL
                                     38 	.globl _MODF
                                     39 	.globl _RXOVRN
                                     40 	.globl _TXBSY
                                     41 	.globl _SLVSEL
                                     42 	.globl _MSTEN
                                     43 	.globl _SPIEN
                                     44 	.globl _AD0EN
                                     45 	.globl _ADCEN
                                     46 	.globl _AD0TM
                                     47 	.globl _ADCTM
                                     48 	.globl _AD0INT
                                     49 	.globl _ADCINT
                                     50 	.globl _AD0BUSY
                                     51 	.globl _ADBUSY
                                     52 	.globl _AD0CM1
                                     53 	.globl _ADSTM1
                                     54 	.globl _AD0CM0
                                     55 	.globl _ADSTM0
                                     56 	.globl _AD0WINT
                                     57 	.globl _ADWINT
                                     58 	.globl _AD0LJST
                                     59 	.globl _ADLJST
                                     60 	.globl _CF
                                     61 	.globl _CR
                                     62 	.globl _CCF4
                                     63 	.globl _CCF3
                                     64 	.globl _CCF2
                                     65 	.globl _CCF1
                                     66 	.globl _CCF0
                                     67 	.globl _CY
                                     68 	.globl _AC
                                     69 	.globl _F0
                                     70 	.globl _RS1
                                     71 	.globl _RS0
                                     72 	.globl _OV
                                     73 	.globl _F1
                                     74 	.globl _P
                                     75 	.globl _TF2
                                     76 	.globl _EXF2
                                     77 	.globl _RCLK
                                     78 	.globl _TCLK
                                     79 	.globl _EXEN2
                                     80 	.globl _TR2
                                     81 	.globl _CT2
                                     82 	.globl _CPRL2
                                     83 	.globl _BUSY
                                     84 	.globl _ENSMB
                                     85 	.globl _STA
                                     86 	.globl _STO
                                     87 	.globl _SI
                                     88 	.globl _AA
                                     89 	.globl _SMBFTE
                                     90 	.globl _SMBTOE
                                     91 	.globl _PT2
                                     92 	.globl _PS
                                     93 	.globl _PS0
                                     94 	.globl _PT1
                                     95 	.globl _PX1
                                     96 	.globl _PT0
                                     97 	.globl _PX0
                                     98 	.globl _P3_7
                                     99 	.globl _P3_6
                                    100 	.globl _P3_5
                                    101 	.globl _P3_4
                                    102 	.globl _P3_3
                                    103 	.globl _P3_2
                                    104 	.globl _P3_1
                                    105 	.globl _P3_0
                                    106 	.globl _EA
                                    107 	.globl _ET2
                                    108 	.globl _ES
                                    109 	.globl _ES0
                                    110 	.globl _ET1
                                    111 	.globl _EX1
                                    112 	.globl _ET0
                                    113 	.globl _EX0
                                    114 	.globl _P2_7
                                    115 	.globl _P2_6
                                    116 	.globl _P2_5
                                    117 	.globl _P2_4
                                    118 	.globl _P2_3
                                    119 	.globl _P2_2
                                    120 	.globl _P2_1
                                    121 	.globl _P2_0
                                    122 	.globl _S0MODE
                                    123 	.globl _SM00
                                    124 	.globl _SM0
                                    125 	.globl _SM10
                                    126 	.globl _SM1
                                    127 	.globl _MCE0
                                    128 	.globl _SM20
                                    129 	.globl _SM2
                                    130 	.globl _REN0
                                    131 	.globl _REN
                                    132 	.globl _TB80
                                    133 	.globl _TB8
                                    134 	.globl _RB80
                                    135 	.globl _RB8
                                    136 	.globl _TI0
                                    137 	.globl _TI
                                    138 	.globl _RI0
                                    139 	.globl _RI
                                    140 	.globl _P1_7
                                    141 	.globl _P1_6
                                    142 	.globl _P1_5
                                    143 	.globl _P1_4
                                    144 	.globl _P1_3
                                    145 	.globl _P1_2
                                    146 	.globl _P1_1
                                    147 	.globl _P1_0
                                    148 	.globl _TF1
                                    149 	.globl _TR1
                                    150 	.globl _TF0
                                    151 	.globl _TR0
                                    152 	.globl _IE1
                                    153 	.globl _IT1
                                    154 	.globl _IE0
                                    155 	.globl _IT0
                                    156 	.globl _P0_7
                                    157 	.globl _P0_6
                                    158 	.globl _P0_5
                                    159 	.globl _P0_4
                                    160 	.globl _P0_3
                                    161 	.globl _P0_2
                                    162 	.globl _P0_1
                                    163 	.globl _P0_0
                                    164 	.globl _PCA0CP4
                                    165 	.globl _PCA0CP3
                                    166 	.globl _PCA0CP2
                                    167 	.globl _PCA0CP1
                                    168 	.globl _PCA0CP0
                                    169 	.globl _PCA0
                                    170 	.globl _DAC1
                                    171 	.globl _DAC0
                                    172 	.globl _ADC0LT
                                    173 	.globl _ADC0GT
                                    174 	.globl _ADC0
                                    175 	.globl _RCAP4
                                    176 	.globl _TMR4
                                    177 	.globl _TMR3RL
                                    178 	.globl _TMR3
                                    179 	.globl _RCAP2
                                    180 	.globl _TMR2
                                    181 	.globl _TMR1
                                    182 	.globl _TMR0
                                    183 	.globl _WDTCN
                                    184 	.globl _PCA0CPH4
                                    185 	.globl _PCA0CPH3
                                    186 	.globl _PCA0CPH2
                                    187 	.globl _PCA0CPH1
                                    188 	.globl _PCA0CPH0
                                    189 	.globl _PCA0H
                                    190 	.globl _SPI0CN
                                    191 	.globl _EIP2
                                    192 	.globl _EIP1
                                    193 	.globl _TH4
                                    194 	.globl _TL4
                                    195 	.globl _SADDR1
                                    196 	.globl _SBUF1
                                    197 	.globl _SCON1
                                    198 	.globl _B
                                    199 	.globl _RSTSRC
                                    200 	.globl _PCA0CPL4
                                    201 	.globl _PCA0CPL3
                                    202 	.globl _PCA0CPL2
                                    203 	.globl _PCA0CPL1
                                    204 	.globl _PCA0CPL0
                                    205 	.globl _PCA0L
                                    206 	.globl _ADC0CN
                                    207 	.globl _EIE2
                                    208 	.globl _EIE1
                                    209 	.globl _RCAP4H
                                    210 	.globl _RCAP4L
                                    211 	.globl _XBR2
                                    212 	.globl _XBR1
                                    213 	.globl _XBR0
                                    214 	.globl _ACC
                                    215 	.globl _PCA0CPM4
                                    216 	.globl _PCA0CPM3
                                    217 	.globl _PCA0CPM2
                                    218 	.globl _PCA0CPM1
                                    219 	.globl _PCA0CPM0
                                    220 	.globl _PCA0MD
                                    221 	.globl _PCA0CN
                                    222 	.globl _DAC1CN
                                    223 	.globl _DAC1H
                                    224 	.globl _DAC1L
                                    225 	.globl _DAC0CN
                                    226 	.globl _DAC0H
                                    227 	.globl _DAC0L
                                    228 	.globl _REF0CN
                                    229 	.globl _PSW
                                    230 	.globl _SMB0CR
                                    231 	.globl _TH2
                                    232 	.globl _TL2
                                    233 	.globl _RCAP2H
                                    234 	.globl _RCAP2L
                                    235 	.globl _T4CON
                                    236 	.globl _T2CON
                                    237 	.globl _ADC0LTH
                                    238 	.globl _ADC0LTL
                                    239 	.globl _ADC0GTH
                                    240 	.globl _ADC0GTL
                                    241 	.globl _SMB0ADR
                                    242 	.globl _SMB0DAT
                                    243 	.globl _SMB0STA
                                    244 	.globl _SMB0CN
                                    245 	.globl _ADC0H
                                    246 	.globl _ADC0L
                                    247 	.globl _P1MDIN
                                    248 	.globl _ADC0CF
                                    249 	.globl _AMX0SL
                                    250 	.globl _AMX0CF
                                    251 	.globl _SADEN0
                                    252 	.globl _IP
                                    253 	.globl _FLACL
                                    254 	.globl _FLSCL
                                    255 	.globl _P74OUT
                                    256 	.globl _OSCICN
                                    257 	.globl _OSCXCN
                                    258 	.globl _P3
                                    259 	.globl __XPAGE
                                    260 	.globl _EMI0CN
                                    261 	.globl _SADEN1
                                    262 	.globl _P3IF
                                    263 	.globl _AMX1SL
                                    264 	.globl _ADC1CF
                                    265 	.globl _ADC1CN
                                    266 	.globl _SADDR0
                                    267 	.globl _IE
                                    268 	.globl _P3MDOUT
                                    269 	.globl _PRT3CF
                                    270 	.globl _P2MDOUT
                                    271 	.globl _PRT2CF
                                    272 	.globl _P1MDOUT
                                    273 	.globl _PRT1CF
                                    274 	.globl _P0MDOUT
                                    275 	.globl _PRT0CF
                                    276 	.globl _EMI0CF
                                    277 	.globl _EMI0TC
                                    278 	.globl _P2
                                    279 	.globl _CPT1CN
                                    280 	.globl _CPT0CN
                                    281 	.globl _SPI0CKR
                                    282 	.globl _ADC1
                                    283 	.globl _SPI0DAT
                                    284 	.globl _SPI0CFG
                                    285 	.globl _SBUF0
                                    286 	.globl _SBUF
                                    287 	.globl _SCON0
                                    288 	.globl _SCON
                                    289 	.globl _P7
                                    290 	.globl _TMR3H
                                    291 	.globl _TMR3L
                                    292 	.globl _TMR3RLH
                                    293 	.globl _TMR3RLL
                                    294 	.globl _TMR3CN
                                    295 	.globl _P1
                                    296 	.globl _PSCTL
                                    297 	.globl _CKCON
                                    298 	.globl _TH1
                                    299 	.globl _TH0
                                    300 	.globl _TL1
                                    301 	.globl _TL0
                                    302 	.globl _TMOD
                                    303 	.globl _TCON
                                    304 	.globl _PCON
                                    305 	.globl _P6
                                    306 	.globl _P5
                                    307 	.globl _P4
                                    308 	.globl _DPH
                                    309 	.globl _DPL
                                    310 	.globl _SP
                                    311 	.globl _P0
                                    312 	.globl _hit
                                    313 	.globl _PB2_flag
                                    314 	.globl _PB1_flag
                                    315 	.globl _aligned_alloc_PARM_2
                                    316 	.globl _score1
                                    317 	.globl _score0
                                    318 	.globl _magnitude
                                    319 	.globl _sign
                                    320 	.globl _rand_speed
                                    321 	.globl _speedX
                                    322 	.globl _speed
                                    323 	.globl _counts
                                    324 	.globl _AD_Value
                                    325 	.globl _Port_Init
                                    326 	.globl _Interrupt_Init
                                    327 	.globl _Timer_Init
                                    328 	.globl _Timer0_ISR
                                    329 	.globl _random
                                    330 	.globl _customWait
                                    331 	.globl _ADC_Init
                                    332 	.globl _read_AD_input
                                    333 	.globl _bounce
                                    334 	.globl _moveBall
                                    335 	.globl _hit_or_miss
                                    336 	.globl _player1_Serve
                                    337 	.globl _player2_Serve
                                    338 	.globl _startGame
                                    339 	.globl _generate_random_number
                                    340 	.globl _mode3
                                    341 ;--------------------------------------------------------
                                    342 ; special function registers
                                    343 ;--------------------------------------------------------
                                    344 	.area RSEG    (ABS,DATA)
      000000                        345 	.org 0x0000
                           000080   346 G$P0$0$0 == 0x0080
                           000080   347 _P0	=	0x0080
                           000081   348 G$SP$0$0 == 0x0081
                           000081   349 _SP	=	0x0081
                           000082   350 G$DPL$0$0 == 0x0082
                           000082   351 _DPL	=	0x0082
                           000083   352 G$DPH$0$0 == 0x0083
                           000083   353 _DPH	=	0x0083
                           000084   354 G$P4$0$0 == 0x0084
                           000084   355 _P4	=	0x0084
                           000085   356 G$P5$0$0 == 0x0085
                           000085   357 _P5	=	0x0085
                           000086   358 G$P6$0$0 == 0x0086
                           000086   359 _P6	=	0x0086
                           000087   360 G$PCON$0$0 == 0x0087
                           000087   361 _PCON	=	0x0087
                           000088   362 G$TCON$0$0 == 0x0088
                           000088   363 _TCON	=	0x0088
                           000089   364 G$TMOD$0$0 == 0x0089
                           000089   365 _TMOD	=	0x0089
                           00008A   366 G$TL0$0$0 == 0x008a
                           00008A   367 _TL0	=	0x008a
                           00008B   368 G$TL1$0$0 == 0x008b
                           00008B   369 _TL1	=	0x008b
                           00008C   370 G$TH0$0$0 == 0x008c
                           00008C   371 _TH0	=	0x008c
                           00008D   372 G$TH1$0$0 == 0x008d
                           00008D   373 _TH1	=	0x008d
                           00008E   374 G$CKCON$0$0 == 0x008e
                           00008E   375 _CKCON	=	0x008e
                           00008F   376 G$PSCTL$0$0 == 0x008f
                           00008F   377 _PSCTL	=	0x008f
                           000090   378 G$P1$0$0 == 0x0090
                           000090   379 _P1	=	0x0090
                           000091   380 G$TMR3CN$0$0 == 0x0091
                           000091   381 _TMR3CN	=	0x0091
                           000092   382 G$TMR3RLL$0$0 == 0x0092
                           000092   383 _TMR3RLL	=	0x0092
                           000093   384 G$TMR3RLH$0$0 == 0x0093
                           000093   385 _TMR3RLH	=	0x0093
                           000094   386 G$TMR3L$0$0 == 0x0094
                           000094   387 _TMR3L	=	0x0094
                           000095   388 G$TMR3H$0$0 == 0x0095
                           000095   389 _TMR3H	=	0x0095
                           000096   390 G$P7$0$0 == 0x0096
                           000096   391 _P7	=	0x0096
                           000098   392 G$SCON$0$0 == 0x0098
                           000098   393 _SCON	=	0x0098
                           000098   394 G$SCON0$0$0 == 0x0098
                           000098   395 _SCON0	=	0x0098
                           000099   396 G$SBUF$0$0 == 0x0099
                           000099   397 _SBUF	=	0x0099
                           000099   398 G$SBUF0$0$0 == 0x0099
                           000099   399 _SBUF0	=	0x0099
                           00009A   400 G$SPI0CFG$0$0 == 0x009a
                           00009A   401 _SPI0CFG	=	0x009a
                           00009B   402 G$SPI0DAT$0$0 == 0x009b
                           00009B   403 _SPI0DAT	=	0x009b
                           00009C   404 G$ADC1$0$0 == 0x009c
                           00009C   405 _ADC1	=	0x009c
                           00009D   406 G$SPI0CKR$0$0 == 0x009d
                           00009D   407 _SPI0CKR	=	0x009d
                           00009E   408 G$CPT0CN$0$0 == 0x009e
                           00009E   409 _CPT0CN	=	0x009e
                           00009F   410 G$CPT1CN$0$0 == 0x009f
                           00009F   411 _CPT1CN	=	0x009f
                           0000A0   412 G$P2$0$0 == 0x00a0
                           0000A0   413 _P2	=	0x00a0
                           0000A1   414 G$EMI0TC$0$0 == 0x00a1
                           0000A1   415 _EMI0TC	=	0x00a1
                           0000A3   416 G$EMI0CF$0$0 == 0x00a3
                           0000A3   417 _EMI0CF	=	0x00a3
                           0000A4   418 G$PRT0CF$0$0 == 0x00a4
                           0000A4   419 _PRT0CF	=	0x00a4
                           0000A4   420 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   421 _P0MDOUT	=	0x00a4
                           0000A5   422 G$PRT1CF$0$0 == 0x00a5
                           0000A5   423 _PRT1CF	=	0x00a5
                           0000A5   424 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   425 _P1MDOUT	=	0x00a5
                           0000A6   426 G$PRT2CF$0$0 == 0x00a6
                           0000A6   427 _PRT2CF	=	0x00a6
                           0000A6   428 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   429 _P2MDOUT	=	0x00a6
                           0000A7   430 G$PRT3CF$0$0 == 0x00a7
                           0000A7   431 _PRT3CF	=	0x00a7
                           0000A7   432 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   433 _P3MDOUT	=	0x00a7
                           0000A8   434 G$IE$0$0 == 0x00a8
                           0000A8   435 _IE	=	0x00a8
                           0000A9   436 G$SADDR0$0$0 == 0x00a9
                           0000A9   437 _SADDR0	=	0x00a9
                           0000AA   438 G$ADC1CN$0$0 == 0x00aa
                           0000AA   439 _ADC1CN	=	0x00aa
                           0000AB   440 G$ADC1CF$0$0 == 0x00ab
                           0000AB   441 _ADC1CF	=	0x00ab
                           0000AC   442 G$AMX1SL$0$0 == 0x00ac
                           0000AC   443 _AMX1SL	=	0x00ac
                           0000AD   444 G$P3IF$0$0 == 0x00ad
                           0000AD   445 _P3IF	=	0x00ad
                           0000AE   446 G$SADEN1$0$0 == 0x00ae
                           0000AE   447 _SADEN1	=	0x00ae
                           0000AF   448 G$EMI0CN$0$0 == 0x00af
                           0000AF   449 _EMI0CN	=	0x00af
                           0000AF   450 G$_XPAGE$0$0 == 0x00af
                           0000AF   451 __XPAGE	=	0x00af
                           0000B0   452 G$P3$0$0 == 0x00b0
                           0000B0   453 _P3	=	0x00b0
                           0000B1   454 G$OSCXCN$0$0 == 0x00b1
                           0000B1   455 _OSCXCN	=	0x00b1
                           0000B2   456 G$OSCICN$0$0 == 0x00b2
                           0000B2   457 _OSCICN	=	0x00b2
                           0000B5   458 G$P74OUT$0$0 == 0x00b5
                           0000B5   459 _P74OUT	=	0x00b5
                           0000B6   460 G$FLSCL$0$0 == 0x00b6
                           0000B6   461 _FLSCL	=	0x00b6
                           0000B7   462 G$FLACL$0$0 == 0x00b7
                           0000B7   463 _FLACL	=	0x00b7
                           0000B8   464 G$IP$0$0 == 0x00b8
                           0000B8   465 _IP	=	0x00b8
                           0000B9   466 G$SADEN0$0$0 == 0x00b9
                           0000B9   467 _SADEN0	=	0x00b9
                           0000BA   468 G$AMX0CF$0$0 == 0x00ba
                           0000BA   469 _AMX0CF	=	0x00ba
                           0000BB   470 G$AMX0SL$0$0 == 0x00bb
                           0000BB   471 _AMX0SL	=	0x00bb
                           0000BC   472 G$ADC0CF$0$0 == 0x00bc
                           0000BC   473 _ADC0CF	=	0x00bc
                           0000BD   474 G$P1MDIN$0$0 == 0x00bd
                           0000BD   475 _P1MDIN	=	0x00bd
                           0000BE   476 G$ADC0L$0$0 == 0x00be
                           0000BE   477 _ADC0L	=	0x00be
                           0000BF   478 G$ADC0H$0$0 == 0x00bf
                           0000BF   479 _ADC0H	=	0x00bf
                           0000C0   480 G$SMB0CN$0$0 == 0x00c0
                           0000C0   481 _SMB0CN	=	0x00c0
                           0000C1   482 G$SMB0STA$0$0 == 0x00c1
                           0000C1   483 _SMB0STA	=	0x00c1
                           0000C2   484 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   485 _SMB0DAT	=	0x00c2
                           0000C3   486 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   487 _SMB0ADR	=	0x00c3
                           0000C4   488 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   489 _ADC0GTL	=	0x00c4
                           0000C5   490 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   491 _ADC0GTH	=	0x00c5
                           0000C6   492 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   493 _ADC0LTL	=	0x00c6
                           0000C7   494 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   495 _ADC0LTH	=	0x00c7
                           0000C8   496 G$T2CON$0$0 == 0x00c8
                           0000C8   497 _T2CON	=	0x00c8
                           0000C9   498 G$T4CON$0$0 == 0x00c9
                           0000C9   499 _T4CON	=	0x00c9
                           0000CA   500 G$RCAP2L$0$0 == 0x00ca
                           0000CA   501 _RCAP2L	=	0x00ca
                           0000CB   502 G$RCAP2H$0$0 == 0x00cb
                           0000CB   503 _RCAP2H	=	0x00cb
                           0000CC   504 G$TL2$0$0 == 0x00cc
                           0000CC   505 _TL2	=	0x00cc
                           0000CD   506 G$TH2$0$0 == 0x00cd
                           0000CD   507 _TH2	=	0x00cd
                           0000CF   508 G$SMB0CR$0$0 == 0x00cf
                           0000CF   509 _SMB0CR	=	0x00cf
                           0000D0   510 G$PSW$0$0 == 0x00d0
                           0000D0   511 _PSW	=	0x00d0
                           0000D1   512 G$REF0CN$0$0 == 0x00d1
                           0000D1   513 _REF0CN	=	0x00d1
                           0000D2   514 G$DAC0L$0$0 == 0x00d2
                           0000D2   515 _DAC0L	=	0x00d2
                           0000D3   516 G$DAC0H$0$0 == 0x00d3
                           0000D3   517 _DAC0H	=	0x00d3
                           0000D4   518 G$DAC0CN$0$0 == 0x00d4
                           0000D4   519 _DAC0CN	=	0x00d4
                           0000D5   520 G$DAC1L$0$0 == 0x00d5
                           0000D5   521 _DAC1L	=	0x00d5
                           0000D6   522 G$DAC1H$0$0 == 0x00d6
                           0000D6   523 _DAC1H	=	0x00d6
                           0000D7   524 G$DAC1CN$0$0 == 0x00d7
                           0000D7   525 _DAC1CN	=	0x00d7
                           0000D8   526 G$PCA0CN$0$0 == 0x00d8
                           0000D8   527 _PCA0CN	=	0x00d8
                           0000D9   528 G$PCA0MD$0$0 == 0x00d9
                           0000D9   529 _PCA0MD	=	0x00d9
                           0000DA   530 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   531 _PCA0CPM0	=	0x00da
                           0000DB   532 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   533 _PCA0CPM1	=	0x00db
                           0000DC   534 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   535 _PCA0CPM2	=	0x00dc
                           0000DD   536 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   537 _PCA0CPM3	=	0x00dd
                           0000DE   538 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   539 _PCA0CPM4	=	0x00de
                           0000E0   540 G$ACC$0$0 == 0x00e0
                           0000E0   541 _ACC	=	0x00e0
                           0000E1   542 G$XBR0$0$0 == 0x00e1
                           0000E1   543 _XBR0	=	0x00e1
                           0000E2   544 G$XBR1$0$0 == 0x00e2
                           0000E2   545 _XBR1	=	0x00e2
                           0000E3   546 G$XBR2$0$0 == 0x00e3
                           0000E3   547 _XBR2	=	0x00e3
                           0000E4   548 G$RCAP4L$0$0 == 0x00e4
                           0000E4   549 _RCAP4L	=	0x00e4
                           0000E5   550 G$RCAP4H$0$0 == 0x00e5
                           0000E5   551 _RCAP4H	=	0x00e5
                           0000E6   552 G$EIE1$0$0 == 0x00e6
                           0000E6   553 _EIE1	=	0x00e6
                           0000E7   554 G$EIE2$0$0 == 0x00e7
                           0000E7   555 _EIE2	=	0x00e7
                           0000E8   556 G$ADC0CN$0$0 == 0x00e8
                           0000E8   557 _ADC0CN	=	0x00e8
                           0000E9   558 G$PCA0L$0$0 == 0x00e9
                           0000E9   559 _PCA0L	=	0x00e9
                           0000EA   560 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   561 _PCA0CPL0	=	0x00ea
                           0000EB   562 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   563 _PCA0CPL1	=	0x00eb
                           0000EC   564 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   565 _PCA0CPL2	=	0x00ec
                           0000ED   566 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   567 _PCA0CPL3	=	0x00ed
                           0000EE   568 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   569 _PCA0CPL4	=	0x00ee
                           0000EF   570 G$RSTSRC$0$0 == 0x00ef
                           0000EF   571 _RSTSRC	=	0x00ef
                           0000F0   572 G$B$0$0 == 0x00f0
                           0000F0   573 _B	=	0x00f0
                           0000F1   574 G$SCON1$0$0 == 0x00f1
                           0000F1   575 _SCON1	=	0x00f1
                           0000F2   576 G$SBUF1$0$0 == 0x00f2
                           0000F2   577 _SBUF1	=	0x00f2
                           0000F3   578 G$SADDR1$0$0 == 0x00f3
                           0000F3   579 _SADDR1	=	0x00f3
                           0000F4   580 G$TL4$0$0 == 0x00f4
                           0000F4   581 _TL4	=	0x00f4
                           0000F5   582 G$TH4$0$0 == 0x00f5
                           0000F5   583 _TH4	=	0x00f5
                           0000F6   584 G$EIP1$0$0 == 0x00f6
                           0000F6   585 _EIP1	=	0x00f6
                           0000F7   586 G$EIP2$0$0 == 0x00f7
                           0000F7   587 _EIP2	=	0x00f7
                           0000F8   588 G$SPI0CN$0$0 == 0x00f8
                           0000F8   589 _SPI0CN	=	0x00f8
                           0000F9   590 G$PCA0H$0$0 == 0x00f9
                           0000F9   591 _PCA0H	=	0x00f9
                           0000FA   592 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   593 _PCA0CPH0	=	0x00fa
                           0000FB   594 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   595 _PCA0CPH1	=	0x00fb
                           0000FC   596 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   597 _PCA0CPH2	=	0x00fc
                           0000FD   598 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   599 _PCA0CPH3	=	0x00fd
                           0000FE   600 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   601 _PCA0CPH4	=	0x00fe
                           0000FF   602 G$WDTCN$0$0 == 0x00ff
                           0000FF   603 _WDTCN	=	0x00ff
                           008C8A   604 G$TMR0$0$0 == 0x8c8a
                           008C8A   605 _TMR0	=	0x8c8a
                           008D8B   606 G$TMR1$0$0 == 0x8d8b
                           008D8B   607 _TMR1	=	0x8d8b
                           00CDCC   608 G$TMR2$0$0 == 0xcdcc
                           00CDCC   609 _TMR2	=	0xcdcc
                           00CBCA   610 G$RCAP2$0$0 == 0xcbca
                           00CBCA   611 _RCAP2	=	0xcbca
                           009594   612 G$TMR3$0$0 == 0x9594
                           009594   613 _TMR3	=	0x9594
                           009392   614 G$TMR3RL$0$0 == 0x9392
                           009392   615 _TMR3RL	=	0x9392
                           00F5F4   616 G$TMR4$0$0 == 0xf5f4
                           00F5F4   617 _TMR4	=	0xf5f4
                           00E5E4   618 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   619 _RCAP4	=	0xe5e4
                           00BFBE   620 G$ADC0$0$0 == 0xbfbe
                           00BFBE   621 _ADC0	=	0xbfbe
                           00C5C4   622 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   623 _ADC0GT	=	0xc5c4
                           00C7C6   624 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   625 _ADC0LT	=	0xc7c6
                           00D3D2   626 G$DAC0$0$0 == 0xd3d2
                           00D3D2   627 _DAC0	=	0xd3d2
                           00D6D5   628 G$DAC1$0$0 == 0xd6d5
                           00D6D5   629 _DAC1	=	0xd6d5
                           00F9E9   630 G$PCA0$0$0 == 0xf9e9
                           00F9E9   631 _PCA0	=	0xf9e9
                           00FAEA   632 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   633 _PCA0CP0	=	0xfaea
                           00FBEB   634 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   635 _PCA0CP1	=	0xfbeb
                           00FCEC   636 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   637 _PCA0CP2	=	0xfcec
                           00FDED   638 G$PCA0CP3$0$0 == 0xfded
                           00FDED   639 _PCA0CP3	=	0xfded
                           00FEEE   640 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   641 _PCA0CP4	=	0xfeee
                                    642 ;--------------------------------------------------------
                                    643 ; special function bits
                                    644 ;--------------------------------------------------------
                                    645 	.area RSEG    (ABS,DATA)
      000000                        646 	.org 0x0000
                           000080   647 G$P0_0$0$0 == 0x0080
                           000080   648 _P0_0	=	0x0080
                           000081   649 G$P0_1$0$0 == 0x0081
                           000081   650 _P0_1	=	0x0081
                           000082   651 G$P0_2$0$0 == 0x0082
                           000082   652 _P0_2	=	0x0082
                           000083   653 G$P0_3$0$0 == 0x0083
                           000083   654 _P0_3	=	0x0083
                           000084   655 G$P0_4$0$0 == 0x0084
                           000084   656 _P0_4	=	0x0084
                           000085   657 G$P0_5$0$0 == 0x0085
                           000085   658 _P0_5	=	0x0085
                           000086   659 G$P0_6$0$0 == 0x0086
                           000086   660 _P0_6	=	0x0086
                           000087   661 G$P0_7$0$0 == 0x0087
                           000087   662 _P0_7	=	0x0087
                           000088   663 G$IT0$0$0 == 0x0088
                           000088   664 _IT0	=	0x0088
                           000089   665 G$IE0$0$0 == 0x0089
                           000089   666 _IE0	=	0x0089
                           00008A   667 G$IT1$0$0 == 0x008a
                           00008A   668 _IT1	=	0x008a
                           00008B   669 G$IE1$0$0 == 0x008b
                           00008B   670 _IE1	=	0x008b
                           00008C   671 G$TR0$0$0 == 0x008c
                           00008C   672 _TR0	=	0x008c
                           00008D   673 G$TF0$0$0 == 0x008d
                           00008D   674 _TF0	=	0x008d
                           00008E   675 G$TR1$0$0 == 0x008e
                           00008E   676 _TR1	=	0x008e
                           00008F   677 G$TF1$0$0 == 0x008f
                           00008F   678 _TF1	=	0x008f
                           000090   679 G$P1_0$0$0 == 0x0090
                           000090   680 _P1_0	=	0x0090
                           000091   681 G$P1_1$0$0 == 0x0091
                           000091   682 _P1_1	=	0x0091
                           000092   683 G$P1_2$0$0 == 0x0092
                           000092   684 _P1_2	=	0x0092
                           000093   685 G$P1_3$0$0 == 0x0093
                           000093   686 _P1_3	=	0x0093
                           000094   687 G$P1_4$0$0 == 0x0094
                           000094   688 _P1_4	=	0x0094
                           000095   689 G$P1_5$0$0 == 0x0095
                           000095   690 _P1_5	=	0x0095
                           000096   691 G$P1_6$0$0 == 0x0096
                           000096   692 _P1_6	=	0x0096
                           000097   693 G$P1_7$0$0 == 0x0097
                           000097   694 _P1_7	=	0x0097
                           000098   695 G$RI$0$0 == 0x0098
                           000098   696 _RI	=	0x0098
                           000098   697 G$RI0$0$0 == 0x0098
                           000098   698 _RI0	=	0x0098
                           000099   699 G$TI$0$0 == 0x0099
                           000099   700 _TI	=	0x0099
                           000099   701 G$TI0$0$0 == 0x0099
                           000099   702 _TI0	=	0x0099
                           00009A   703 G$RB8$0$0 == 0x009a
                           00009A   704 _RB8	=	0x009a
                           00009A   705 G$RB80$0$0 == 0x009a
                           00009A   706 _RB80	=	0x009a
                           00009B   707 G$TB8$0$0 == 0x009b
                           00009B   708 _TB8	=	0x009b
                           00009B   709 G$TB80$0$0 == 0x009b
                           00009B   710 _TB80	=	0x009b
                           00009C   711 G$REN$0$0 == 0x009c
                           00009C   712 _REN	=	0x009c
                           00009C   713 G$REN0$0$0 == 0x009c
                           00009C   714 _REN0	=	0x009c
                           00009D   715 G$SM2$0$0 == 0x009d
                           00009D   716 _SM2	=	0x009d
                           00009D   717 G$SM20$0$0 == 0x009d
                           00009D   718 _SM20	=	0x009d
                           00009D   719 G$MCE0$0$0 == 0x009d
                           00009D   720 _MCE0	=	0x009d
                           00009E   721 G$SM1$0$0 == 0x009e
                           00009E   722 _SM1	=	0x009e
                           00009E   723 G$SM10$0$0 == 0x009e
                           00009E   724 _SM10	=	0x009e
                           00009F   725 G$SM0$0$0 == 0x009f
                           00009F   726 _SM0	=	0x009f
                           00009F   727 G$SM00$0$0 == 0x009f
                           00009F   728 _SM00	=	0x009f
                           00009F   729 G$S0MODE$0$0 == 0x009f
                           00009F   730 _S0MODE	=	0x009f
                           0000A0   731 G$P2_0$0$0 == 0x00a0
                           0000A0   732 _P2_0	=	0x00a0
                           0000A1   733 G$P2_1$0$0 == 0x00a1
                           0000A1   734 _P2_1	=	0x00a1
                           0000A2   735 G$P2_2$0$0 == 0x00a2
                           0000A2   736 _P2_2	=	0x00a2
                           0000A3   737 G$P2_3$0$0 == 0x00a3
                           0000A3   738 _P2_3	=	0x00a3
                           0000A4   739 G$P2_4$0$0 == 0x00a4
                           0000A4   740 _P2_4	=	0x00a4
                           0000A5   741 G$P2_5$0$0 == 0x00a5
                           0000A5   742 _P2_5	=	0x00a5
                           0000A6   743 G$P2_6$0$0 == 0x00a6
                           0000A6   744 _P2_6	=	0x00a6
                           0000A7   745 G$P2_7$0$0 == 0x00a7
                           0000A7   746 _P2_7	=	0x00a7
                           0000A8   747 G$EX0$0$0 == 0x00a8
                           0000A8   748 _EX0	=	0x00a8
                           0000A9   749 G$ET0$0$0 == 0x00a9
                           0000A9   750 _ET0	=	0x00a9
                           0000AA   751 G$EX1$0$0 == 0x00aa
                           0000AA   752 _EX1	=	0x00aa
                           0000AB   753 G$ET1$0$0 == 0x00ab
                           0000AB   754 _ET1	=	0x00ab
                           0000AC   755 G$ES0$0$0 == 0x00ac
                           0000AC   756 _ES0	=	0x00ac
                           0000AC   757 G$ES$0$0 == 0x00ac
                           0000AC   758 _ES	=	0x00ac
                           0000AD   759 G$ET2$0$0 == 0x00ad
                           0000AD   760 _ET2	=	0x00ad
                           0000AF   761 G$EA$0$0 == 0x00af
                           0000AF   762 _EA	=	0x00af
                           0000B0   763 G$P3_0$0$0 == 0x00b0
                           0000B0   764 _P3_0	=	0x00b0
                           0000B1   765 G$P3_1$0$0 == 0x00b1
                           0000B1   766 _P3_1	=	0x00b1
                           0000B2   767 G$P3_2$0$0 == 0x00b2
                           0000B2   768 _P3_2	=	0x00b2
                           0000B3   769 G$P3_3$0$0 == 0x00b3
                           0000B3   770 _P3_3	=	0x00b3
                           0000B4   771 G$P3_4$0$0 == 0x00b4
                           0000B4   772 _P3_4	=	0x00b4
                           0000B5   773 G$P3_5$0$0 == 0x00b5
                           0000B5   774 _P3_5	=	0x00b5
                           0000B6   775 G$P3_6$0$0 == 0x00b6
                           0000B6   776 _P3_6	=	0x00b6
                           0000B7   777 G$P3_7$0$0 == 0x00b7
                           0000B7   778 _P3_7	=	0x00b7
                           0000B8   779 G$PX0$0$0 == 0x00b8
                           0000B8   780 _PX0	=	0x00b8
                           0000B9   781 G$PT0$0$0 == 0x00b9
                           0000B9   782 _PT0	=	0x00b9
                           0000BA   783 G$PX1$0$0 == 0x00ba
                           0000BA   784 _PX1	=	0x00ba
                           0000BB   785 G$PT1$0$0 == 0x00bb
                           0000BB   786 _PT1	=	0x00bb
                           0000BC   787 G$PS0$0$0 == 0x00bc
                           0000BC   788 _PS0	=	0x00bc
                           0000BC   789 G$PS$0$0 == 0x00bc
                           0000BC   790 _PS	=	0x00bc
                           0000BD   791 G$PT2$0$0 == 0x00bd
                           0000BD   792 _PT2	=	0x00bd
                           0000C0   793 G$SMBTOE$0$0 == 0x00c0
                           0000C0   794 _SMBTOE	=	0x00c0
                           0000C1   795 G$SMBFTE$0$0 == 0x00c1
                           0000C1   796 _SMBFTE	=	0x00c1
                           0000C2   797 G$AA$0$0 == 0x00c2
                           0000C2   798 _AA	=	0x00c2
                           0000C3   799 G$SI$0$0 == 0x00c3
                           0000C3   800 _SI	=	0x00c3
                           0000C4   801 G$STO$0$0 == 0x00c4
                           0000C4   802 _STO	=	0x00c4
                           0000C5   803 G$STA$0$0 == 0x00c5
                           0000C5   804 _STA	=	0x00c5
                           0000C6   805 G$ENSMB$0$0 == 0x00c6
                           0000C6   806 _ENSMB	=	0x00c6
                           0000C7   807 G$BUSY$0$0 == 0x00c7
                           0000C7   808 _BUSY	=	0x00c7
                           0000C8   809 G$CPRL2$0$0 == 0x00c8
                           0000C8   810 _CPRL2	=	0x00c8
                           0000C9   811 G$CT2$0$0 == 0x00c9
                           0000C9   812 _CT2	=	0x00c9
                           0000CA   813 G$TR2$0$0 == 0x00ca
                           0000CA   814 _TR2	=	0x00ca
                           0000CB   815 G$EXEN2$0$0 == 0x00cb
                           0000CB   816 _EXEN2	=	0x00cb
                           0000CC   817 G$TCLK$0$0 == 0x00cc
                           0000CC   818 _TCLK	=	0x00cc
                           0000CD   819 G$RCLK$0$0 == 0x00cd
                           0000CD   820 _RCLK	=	0x00cd
                           0000CE   821 G$EXF2$0$0 == 0x00ce
                           0000CE   822 _EXF2	=	0x00ce
                           0000CF   823 G$TF2$0$0 == 0x00cf
                           0000CF   824 _TF2	=	0x00cf
                           0000D0   825 G$P$0$0 == 0x00d0
                           0000D0   826 _P	=	0x00d0
                           0000D1   827 G$F1$0$0 == 0x00d1
                           0000D1   828 _F1	=	0x00d1
                           0000D2   829 G$OV$0$0 == 0x00d2
                           0000D2   830 _OV	=	0x00d2
                           0000D3   831 G$RS0$0$0 == 0x00d3
                           0000D3   832 _RS0	=	0x00d3
                           0000D4   833 G$RS1$0$0 == 0x00d4
                           0000D4   834 _RS1	=	0x00d4
                           0000D5   835 G$F0$0$0 == 0x00d5
                           0000D5   836 _F0	=	0x00d5
                           0000D6   837 G$AC$0$0 == 0x00d6
                           0000D6   838 _AC	=	0x00d6
                           0000D7   839 G$CY$0$0 == 0x00d7
                           0000D7   840 _CY	=	0x00d7
                           0000D8   841 G$CCF0$0$0 == 0x00d8
                           0000D8   842 _CCF0	=	0x00d8
                           0000D9   843 G$CCF1$0$0 == 0x00d9
                           0000D9   844 _CCF1	=	0x00d9
                           0000DA   845 G$CCF2$0$0 == 0x00da
                           0000DA   846 _CCF2	=	0x00da
                           0000DB   847 G$CCF3$0$0 == 0x00db
                           0000DB   848 _CCF3	=	0x00db
                           0000DC   849 G$CCF4$0$0 == 0x00dc
                           0000DC   850 _CCF4	=	0x00dc
                           0000DE   851 G$CR$0$0 == 0x00de
                           0000DE   852 _CR	=	0x00de
                           0000DF   853 G$CF$0$0 == 0x00df
                           0000DF   854 _CF	=	0x00df
                           0000E8   855 G$ADLJST$0$0 == 0x00e8
                           0000E8   856 _ADLJST	=	0x00e8
                           0000E8   857 G$AD0LJST$0$0 == 0x00e8
                           0000E8   858 _AD0LJST	=	0x00e8
                           0000E9   859 G$ADWINT$0$0 == 0x00e9
                           0000E9   860 _ADWINT	=	0x00e9
                           0000E9   861 G$AD0WINT$0$0 == 0x00e9
                           0000E9   862 _AD0WINT	=	0x00e9
                           0000EA   863 G$ADSTM0$0$0 == 0x00ea
                           0000EA   864 _ADSTM0	=	0x00ea
                           0000EA   865 G$AD0CM0$0$0 == 0x00ea
                           0000EA   866 _AD0CM0	=	0x00ea
                           0000EB   867 G$ADSTM1$0$0 == 0x00eb
                           0000EB   868 _ADSTM1	=	0x00eb
                           0000EB   869 G$AD0CM1$0$0 == 0x00eb
                           0000EB   870 _AD0CM1	=	0x00eb
                           0000EC   871 G$ADBUSY$0$0 == 0x00ec
                           0000EC   872 _ADBUSY	=	0x00ec
                           0000EC   873 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   874 _AD0BUSY	=	0x00ec
                           0000ED   875 G$ADCINT$0$0 == 0x00ed
                           0000ED   876 _ADCINT	=	0x00ed
                           0000ED   877 G$AD0INT$0$0 == 0x00ed
                           0000ED   878 _AD0INT	=	0x00ed
                           0000EE   879 G$ADCTM$0$0 == 0x00ee
                           0000EE   880 _ADCTM	=	0x00ee
                           0000EE   881 G$AD0TM$0$0 == 0x00ee
                           0000EE   882 _AD0TM	=	0x00ee
                           0000EF   883 G$ADCEN$0$0 == 0x00ef
                           0000EF   884 _ADCEN	=	0x00ef
                           0000EF   885 G$AD0EN$0$0 == 0x00ef
                           0000EF   886 _AD0EN	=	0x00ef
                           0000F8   887 G$SPIEN$0$0 == 0x00f8
                           0000F8   888 _SPIEN	=	0x00f8
                           0000F9   889 G$MSTEN$0$0 == 0x00f9
                           0000F9   890 _MSTEN	=	0x00f9
                           0000FA   891 G$SLVSEL$0$0 == 0x00fa
                           0000FA   892 _SLVSEL	=	0x00fa
                           0000FB   893 G$TXBSY$0$0 == 0x00fb
                           0000FB   894 _TXBSY	=	0x00fb
                           0000FC   895 G$RXOVRN$0$0 == 0x00fc
                           0000FC   896 _RXOVRN	=	0x00fc
                           0000FD   897 G$MODF$0$0 == 0x00fd
                           0000FD   898 _MODF	=	0x00fd
                           0000FE   899 G$WCOL$0$0 == 0x00fe
                           0000FE   900 _WCOL	=	0x00fe
                           0000FF   901 G$SPIF$0$0 == 0x00ff
                           0000FF   902 _SPIF	=	0x00ff
                           0000A4   903 G$BILED0$0$0 == 0x00a4
                           0000A4   904 _BILED0	=	0x00a4
                           0000A5   905 G$BILED1$0$0 == 0x00a5
                           0000A5   906 _BILED1	=	0x00a5
                           0000A2   907 G$PB1$0$0 == 0x00a2
                           0000A2   908 _PB1	=	0x00a2
                           0000A3   909 G$PB2$0$0 == 0x00a3
                           0000A3   910 _PB2	=	0x00a3
                           0000A0   911 G$SS0$0$0 == 0x00a0
                           0000A0   912 _SS0	=	0x00a0
                           0000A1   913 G$SS1$0$0 == 0x00a1
                           0000A1   914 _SS1	=	0x00a1
                           0000B0   915 G$LED7$0$0 == 0x00b0
                           0000B0   916 _LED7	=	0x00b0
                           0000B1   917 G$LED6$0$0 == 0x00b1
                           0000B1   918 _LED6	=	0x00b1
                           0000B2   919 G$LED5$0$0 == 0x00b2
                           0000B2   920 _LED5	=	0x00b2
                           0000B3   921 G$LED4$0$0 == 0x00b3
                           0000B3   922 _LED4	=	0x00b3
                           0000B4   923 G$LED3$0$0 == 0x00b4
                           0000B4   924 _LED3	=	0x00b4
                           0000B5   925 G$LED2$0$0 == 0x00b5
                           0000B5   926 _LED2	=	0x00b5
                           0000B6   927 G$LED1$0$0 == 0x00b6
                           0000B6   928 _LED1	=	0x00b6
                           0000B7   929 G$LED0$0$0 == 0x00b7
                           0000B7   930 _LED0	=	0x00b7
                                    931 ;--------------------------------------------------------
                                    932 ; overlayable register banks
                                    933 ;--------------------------------------------------------
                                    934 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        935 	.ds 8
                                    936 ;--------------------------------------------------------
                                    937 ; internal ram data
                                    938 ;--------------------------------------------------------
                                    939 	.area DSEG    (DATA)
                           000000   940 G$AD_Value$0$0==.
      000022                        941 _AD_Value::
      000022                        942 	.ds 1
                           000001   943 G$counts$0$0==.
      000023                        944 _counts::
      000023                        945 	.ds 2
                           000003   946 G$speed$0$0==.
      000025                        947 _speed::
      000025                        948 	.ds 2
                           000005   949 G$speedX$0$0==.
      000027                        950 _speedX::
      000027                        951 	.ds 2
                           000007   952 G$rand_speed$0$0==.
      000029                        953 _rand_speed::
      000029                        954 	.ds 2
                           000009   955 G$sign$0$0==.
      00002B                        956 _sign::
      00002B                        957 	.ds 2
                           00000B   958 G$magnitude$0$0==.
      00002D                        959 _magnitude::
      00002D                        960 	.ds 2
                           00000D   961 G$score0$0$0==.
      00002F                        962 _score0::
      00002F                        963 	.ds 2
                           00000F   964 G$score1$0$0==.
      000031                        965 _score1::
      000031                        966 	.ds 2
                           000011   967 Lfinal.aligned_alloc$size$1$39==.
      000033                        968 _aligned_alloc_PARM_2:
      000033                        969 	.ds 2
                           000013   970 Lfinal.mode3$var$1$143==.
      000035                        971 _mode3_var_1_143:
      000035                        972 	.ds 1
                           000014   973 Lfinal.mode3$input$1$143==.
      000036                        974 _mode3_input_1_143:
      000036                        975 	.ds 1
                           000015   976 Lfinal.mode3$score_timer$1$143==.
      000037                        977 _mode3_score_timer_1_143:
      000037                        978 	.ds 2
                           000017   979 Lfinal.mode3$submit_timer$1$143==.
      000039                        980 _mode3_submit_timer_1_143:
      000039                        981 	.ds 2
                           000019   982 Lfinal.mode3$mode$1$143==.
      00003B                        983 _mode3_mode_1_143:
      00003B                        984 	.ds 1
                           00001A   985 Lfinal.mode3$sloc0$1$0==.
      00003C                        986 _mode3_sloc0_1_0:
      00003C                        987 	.ds 2
                                    988 ;--------------------------------------------------------
                                    989 ; overlayable items in internal ram 
                                    990 ;--------------------------------------------------------
                                    991 	.area	OSEG    (OVR,DATA)
                                    992 	.area	OSEG    (OVR,DATA)
                                    993 	.area	OSEG    (OVR,DATA)
                                    994 	.area	OSEG    (OVR,DATA)
                                    995 ;--------------------------------------------------------
                                    996 ; Stack segment in internal ram 
                                    997 ;--------------------------------------------------------
                                    998 	.area	SSEG
      000058                        999 __start__stack:
      000058                       1000 	.ds	1
                                   1001 
                                   1002 ;--------------------------------------------------------
                                   1003 ; indirectly addressable internal ram data
                                   1004 ;--------------------------------------------------------
                                   1005 	.area ISEG    (DATA)
                                   1006 ;--------------------------------------------------------
                                   1007 ; absolute internal ram data
                                   1008 ;--------------------------------------------------------
                                   1009 	.area IABS    (ABS,DATA)
                                   1010 	.area IABS    (ABS,DATA)
                                   1011 ;--------------------------------------------------------
                                   1012 ; bit data
                                   1013 ;--------------------------------------------------------
                                   1014 	.area BSEG    (BIT)
                           000000  1015 G$PB1_flag$0$0==.
      000000                       1016 _PB1_flag::
      000000                       1017 	.ds 1
                           000001  1018 G$PB2_flag$0$0==.
      000001                       1019 _PB2_flag::
      000001                       1020 	.ds 1
                           000002  1021 G$hit$0$0==.
      000002                       1022 _hit::
      000002                       1023 	.ds 1
                           000003  1024 Lfinal.main$sloc0$1$0==.
      000003                       1025 _main_sloc0_1_0:
      000003                       1026 	.ds 1
                           000004  1027 Lfinal.main$sloc1$1$0==.
      000004                       1028 _main_sloc1_1_0:
      000004                       1029 	.ds 1
                                   1030 ;--------------------------------------------------------
                                   1031 ; paged external ram data
                                   1032 ;--------------------------------------------------------
                                   1033 	.area PSEG    (PAG,XDATA)
                                   1034 ;--------------------------------------------------------
                                   1035 ; external ram data
                                   1036 ;--------------------------------------------------------
                                   1037 	.area XSEG    (XDATA)
                                   1038 ;--------------------------------------------------------
                                   1039 ; absolute external ram data
                                   1040 ;--------------------------------------------------------
                                   1041 	.area XABS    (ABS,XDATA)
                                   1042 ;--------------------------------------------------------
                                   1043 ; external initialized ram data
                                   1044 ;--------------------------------------------------------
                                   1045 	.area XISEG   (XDATA)
                                   1046 	.area HOME    (CODE)
                                   1047 	.area GSINIT0 (CODE)
                                   1048 	.area GSINIT1 (CODE)
                                   1049 	.area GSINIT2 (CODE)
                                   1050 	.area GSINIT3 (CODE)
                                   1051 	.area GSINIT4 (CODE)
                                   1052 	.area GSINIT5 (CODE)
                                   1053 	.area GSINIT  (CODE)
                                   1054 	.area GSFINAL (CODE)
                                   1055 	.area CSEG    (CODE)
                                   1056 ;--------------------------------------------------------
                                   1057 ; interrupt vector 
                                   1058 ;--------------------------------------------------------
                                   1059 	.area HOME    (CODE)
      000000                       1060 __interrupt_vect:
      000000 02 00 11         [24] 1061 	ljmp	__sdcc_gsinit_startup
      000003 32               [24] 1062 	reti
      000004                       1063 	.ds	7
      00000B 02 01 94         [24] 1064 	ljmp	_Timer0_ISR
                                   1065 ;--------------------------------------------------------
                                   1066 ; global & static initialisations
                                   1067 ;--------------------------------------------------------
                                   1068 	.area HOME    (CODE)
                                   1069 	.area GSINIT  (CODE)
                                   1070 	.area GSFINAL (CODE)
                                   1071 	.area GSINIT  (CODE)
                                   1072 	.globl __sdcc_gsinit_startup
                                   1073 	.globl __sdcc_program_startup
                                   1074 	.globl __start__stack
                                   1075 	.globl __mcs51_genXINIT
                                   1076 	.globl __mcs51_genXRAMCLEAR
                                   1077 	.globl __mcs51_genRAMCLEAR
                           000000  1078 	C$final.c$49$1$143 ==.
                                   1079 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:49: unsigned int counts=0;
      00006A E4               [12] 1080 	clr	a
      00006B F5 23            [12] 1081 	mov	_counts,a
      00006D F5 24            [12] 1082 	mov	(_counts + 1),a
                           000005  1083 	C$final.c$50$1$143 ==.
                                   1084 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:50: int speed=0; //-5 to 5
      00006F F5 25            [12] 1085 	mov	_speed,a
      000071 F5 26            [12] 1086 	mov	(_speed + 1),a
                           000009  1087 	C$final.c$55$1$143 ==.
                                   1088 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:55: unsigned int score0=0;
      000073 F5 2F            [12] 1089 	mov	_score0,a
      000075 F5 30            [12] 1090 	mov	(_score0 + 1),a
                           00000D  1091 	C$final.c$56$1$143 ==.
                                   1092 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:56: unsigned int score1=0;
      000077 F5 31            [12] 1093 	mov	_score1,a
      000079 F5 32            [12] 1094 	mov	(_score1 + 1),a
                           000011  1095 	C$final.c$57$1$143 ==.
                                   1096 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:57: bool PB1_flag=false;
      00007B C2 00            [12] 1097 	clr	_PB1_flag
                           000013  1098 	C$final.c$58$1$143 ==.
                                   1099 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:58: bool PB2_flag=false;
      00007D C2 01            [12] 1100 	clr	_PB2_flag
                                   1101 	.area GSFINAL (CODE)
      000089 02 00 0E         [24] 1102 	ljmp	__sdcc_program_startup
                                   1103 ;--------------------------------------------------------
                                   1104 ; Home
                                   1105 ;--------------------------------------------------------
                                   1106 	.area HOME    (CODE)
                                   1107 	.area HOME    (CODE)
      00000E                       1108 __sdcc_program_startup:
      00000E 02 01 07         [24] 1109 	ljmp	_main
                                   1110 ;	return from main will return to caller
                                   1111 ;--------------------------------------------------------
                                   1112 ; code
                                   1113 ;--------------------------------------------------------
                                   1114 	.area CSEG    (CODE)
                                   1115 ;------------------------------------------------------------
                                   1116 ;Allocation info for local variables in function 'SYSCLK_Init'
                                   1117 ;------------------------------------------------------------
                                   1118 ;i                         Allocated to registers r6 r7 
                                   1119 ;------------------------------------------------------------
                           000000  1120 	G$SYSCLK_Init$0$0 ==.
                           000000  1121 	C$c8051_SDCC.h$62$0$0 ==.
                                   1122 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                   1123 ;	-----------------------------------------
                                   1124 ;	 function SYSCLK_Init
                                   1125 ;	-----------------------------------------
      00008C                       1126 _SYSCLK_Init:
                           000007  1127 	ar7 = 0x07
                           000006  1128 	ar6 = 0x06
                           000005  1129 	ar5 = 0x05
                           000004  1130 	ar4 = 0x04
                           000003  1131 	ar3 = 0x03
                           000002  1132 	ar2 = 0x02
                           000001  1133 	ar1 = 0x01
                           000000  1134 	ar0 = 0x00
                           000000  1135 	C$c8051_SDCC.h$66$1$2 ==.
                                   1136 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      00008C 75 B1 67         [24] 1137 	mov	_OSCXCN,#0x67
                           000003  1138 	C$c8051_SDCC.h$69$1$2 ==.
                                   1139 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      00008F 7E 00            [12] 1140 	mov	r6,#0x00
      000091 7F 01            [12] 1141 	mov	r7,#0x01
      000093                       1142 00107$:
      000093 EE               [12] 1143 	mov	a,r6
      000094 24 FF            [12] 1144 	add	a,#0xff
      000096 FC               [12] 1145 	mov	r4,a
      000097 EF               [12] 1146 	mov	a,r7
      000098 34 FF            [12] 1147 	addc	a,#0xff
      00009A FD               [12] 1148 	mov	r5,a
      00009B 8C 06            [24] 1149 	mov	ar6,r4
      00009D 8D 07            [24] 1150 	mov	ar7,r5
      00009F EC               [12] 1151 	mov	a,r4
      0000A0 4D               [12] 1152 	orl	a,r5
      0000A1 70 F0            [24] 1153 	jnz	00107$
                           000017  1154 	C$c8051_SDCC.h$71$1$2 ==.
                                   1155 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      0000A3                       1156 00102$:
      0000A3 E5 B1            [12] 1157 	mov	a,_OSCXCN
      0000A5 30 E7 FB         [24] 1158 	jnb	acc.7,00102$
                           00001C  1159 	C$c8051_SDCC.h$73$1$2 ==.
                                   1160 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      0000A8 75 B2 88         [24] 1161 	mov	_OSCICN,#0x88
                           00001F  1162 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1163 	XG$SYSCLK_Init$0$0 ==.
      0000AB 22               [24] 1164 	ret
                                   1165 ;------------------------------------------------------------
                                   1166 ;Allocation info for local variables in function 'UART0_Init'
                                   1167 ;------------------------------------------------------------
                           000020  1168 	G$UART0_Init$0$0 ==.
                           000020  1169 	C$c8051_SDCC.h$84$1$2 ==.
                                   1170 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1171 ;	-----------------------------------------
                                   1172 ;	 function UART0_Init
                                   1173 ;	-----------------------------------------
      0000AC                       1174 _UART0_Init:
                           000020  1175 	C$c8051_SDCC.h$86$1$4 ==.
                                   1176 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      0000AC 75 98 50         [24] 1177 	mov	_SCON0,#0x50
                           000023  1178 	C$c8051_SDCC.h$87$1$4 ==.
                                   1179 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      0000AF 75 89 20         [24] 1180 	mov	_TMOD,#0x20
                           000026  1181 	C$c8051_SDCC.h$88$1$4 ==.
                                   1182 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      0000B2 75 8D DC         [24] 1183 	mov	_TH1,#0xdc
                           000029  1184 	C$c8051_SDCC.h$89$1$4 ==.
                                   1185 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      0000B5 D2 8E            [12] 1186 	setb	_TR1
                           00002B  1187 	C$c8051_SDCC.h$90$1$4 ==.
                                   1188 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      0000B7 43 8E 10         [24] 1189 	orl	_CKCON,#0x10
                           00002E  1190 	C$c8051_SDCC.h$91$1$4 ==.
                                   1191 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      0000BA 43 87 80         [24] 1192 	orl	_PCON,#0x80
                           000031  1193 	C$c8051_SDCC.h$93$1$4 ==.
                                   1194 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      0000BD D2 99            [12] 1195 	setb	_TI0
                           000033  1196 	C$c8051_SDCC.h$94$1$4 ==.
                                   1197 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      0000BF 43 A4 01         [24] 1198 	orl	_P0MDOUT,#0x01
                           000036  1199 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1200 	XG$UART0_Init$0$0 ==.
      0000C2 22               [24] 1201 	ret
                                   1202 ;------------------------------------------------------------
                                   1203 ;Allocation info for local variables in function 'Sys_Init'
                                   1204 ;------------------------------------------------------------
                           000037  1205 	G$Sys_Init$0$0 ==.
                           000037  1206 	C$c8051_SDCC.h$103$1$4 ==.
                                   1207 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1208 ;	-----------------------------------------
                                   1209 ;	 function Sys_Init
                                   1210 ;	-----------------------------------------
      0000C3                       1211 _Sys_Init:
                           000037  1212 	C$c8051_SDCC.h$105$1$6 ==.
                                   1213 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      0000C3 75 FF DE         [24] 1214 	mov	_WDTCN,#0xde
                           00003A  1215 	C$c8051_SDCC.h$106$1$6 ==.
                                   1216 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      0000C6 75 FF AD         [24] 1217 	mov	_WDTCN,#0xad
                           00003D  1218 	C$c8051_SDCC.h$108$1$6 ==.
                                   1219 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      0000C9 12 00 8C         [24] 1220 	lcall	_SYSCLK_Init
                           000040  1221 	C$c8051_SDCC.h$109$1$6 ==.
                                   1222 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      0000CC 12 00 AC         [24] 1223 	lcall	_UART0_Init
                           000043  1224 	C$c8051_SDCC.h$111$1$6 ==.
                                   1225 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      0000CF 43 E1 04         [24] 1226 	orl	_XBR0,#0x04
                           000046  1227 	C$c8051_SDCC.h$112$1$6 ==.
                                   1228 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      0000D2 43 E3 40         [24] 1229 	orl	_XBR2,#0x40
                           000049  1230 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1231 	XG$Sys_Init$0$0 ==.
      0000D5 22               [24] 1232 	ret
                                   1233 ;------------------------------------------------------------
                                   1234 ;Allocation info for local variables in function 'putchar'
                                   1235 ;------------------------------------------------------------
                                   1236 ;c                         Allocated to registers r7 
                                   1237 ;------------------------------------------------------------
                           00004A  1238 	G$putchar$0$0 ==.
                           00004A  1239 	C$c8051_SDCC.h$129$1$6 ==.
                                   1240 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1241 ;	-----------------------------------------
                                   1242 ;	 function putchar
                                   1243 ;	-----------------------------------------
      0000D6                       1244 _putchar:
      0000D6 AF 82            [24] 1245 	mov	r7,dpl
                           00004C  1246 	C$c8051_SDCC.h$132$1$8 ==.
                                   1247 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      0000D8                       1248 00101$:
                           00004C  1249 	C$c8051_SDCC.h$133$1$8 ==.
                                   1250 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      0000D8 10 99 02         [24] 1251 	jbc	_TI0,00112$
      0000DB 80 FB            [24] 1252 	sjmp	00101$
      0000DD                       1253 00112$:
                           000051  1254 	C$c8051_SDCC.h$134$1$8 ==.
                                   1255 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      0000DD 8F 99            [24] 1256 	mov	_SBUF0,r7
                           000053  1257 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1258 	XG$putchar$0$0 ==.
      0000DF 22               [24] 1259 	ret
                                   1260 ;------------------------------------------------------------
                                   1261 ;Allocation info for local variables in function 'getchar'
                                   1262 ;------------------------------------------------------------
                                   1263 ;c                         Allocated to registers r7 
                                   1264 ;------------------------------------------------------------
                           000054  1265 	G$getchar$0$0 ==.
                           000054  1266 	C$c8051_SDCC.h$154$1$8 ==.
                                   1267 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1268 ;	-----------------------------------------
                                   1269 ;	 function getchar
                                   1270 ;	-----------------------------------------
      0000E0                       1271 _getchar:
                           000054  1272 	C$c8051_SDCC.h$157$1$10 ==.
                                   1273 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      0000E0                       1274 00101$:
                           000054  1275 	C$c8051_SDCC.h$158$1$10 ==.
                                   1276 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      0000E0 10 98 02         [24] 1277 	jbc	_RI0,00112$
      0000E3 80 FB            [24] 1278 	sjmp	00101$
      0000E5                       1279 00112$:
                           000059  1280 	C$c8051_SDCC.h$159$1$10 ==.
                                   1281 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      0000E5 AF 99            [24] 1282 	mov	r7,_SBUF0
                           00005B  1283 	C$c8051_SDCC.h$160$1$10 ==.
                                   1284 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      0000E7 8F 82            [24] 1285 	mov	dpl,r7
      0000E9 C0 07            [24] 1286 	push	ar7
      0000EB 12 00 D6         [24] 1287 	lcall	_putchar
      0000EE D0 07            [24] 1288 	pop	ar7
                           000064  1289 	C$c8051_SDCC.h$161$1$10 ==.
                                   1290 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      0000F0 8F 82            [24] 1291 	mov	dpl,r7
                           000066  1292 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1293 	XG$getchar$0$0 ==.
      0000F2 22               [24] 1294 	ret
                                   1295 ;------------------------------------------------------------
                                   1296 ;Allocation info for local variables in function 'getchar_nw'
                                   1297 ;------------------------------------------------------------
                                   1298 ;c                         Allocated to registers 
                                   1299 ;------------------------------------------------------------
                           000067  1300 	G$getchar_nw$0$0 ==.
                           000067  1301 	C$c8051_SDCC.h$168$1$10 ==.
                                   1302 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1303 ;	-----------------------------------------
                                   1304 ;	 function getchar_nw
                                   1305 ;	-----------------------------------------
      0000F3                       1306 _getchar_nw:
                           000067  1307 	C$c8051_SDCC.h$171$1$12 ==.
                                   1308 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      0000F3 20 98 05         [24] 1309 	jb	_RI0,00102$
      0000F6 75 82 FF         [24] 1310 	mov	dpl,#0xff
      0000F9 80 0B            [24] 1311 	sjmp	00104$
      0000FB                       1312 00102$:
                           00006F  1313 	C$c8051_SDCC.h$174$2$13 ==.
                                   1314 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      0000FB C2 98            [12] 1315 	clr	_RI0
                           000071  1316 	C$c8051_SDCC.h$175$2$13 ==.
                                   1317 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      0000FD 85 99 82         [24] 1318 	mov	dpl,_SBUF0
                           000074  1319 	C$c8051_SDCC.h$176$2$13 ==.
                                   1320 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      000100 12 00 D6         [24] 1321 	lcall	_putchar
                           000077  1322 	C$c8051_SDCC.h$177$2$13 ==.
                                   1323 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      000103 85 99 82         [24] 1324 	mov	dpl,_SBUF0
      000106                       1325 00104$:
                           00007A  1326 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1327 	XG$getchar_nw$0$0 ==.
      000106 22               [24] 1328 	ret
                                   1329 ;------------------------------------------------------------
                                   1330 ;Allocation info for local variables in function 'main'
                                   1331 ;------------------------------------------------------------
                           00007B  1332 	G$main$0$0 ==.
                           00007B  1333 	C$final.c$61$1$12 ==.
                                   1334 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:61: void main(void){
                                   1335 ;	-----------------------------------------
                                   1336 ;	 function main
                                   1337 ;	-----------------------------------------
      000107                       1338 _main:
                           00007B  1339 	C$final.c$62$1$63 ==.
                                   1340 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:62: Sys_Init();
      000107 12 00 C3         [24] 1341 	lcall	_Sys_Init
                           00007E  1342 	C$final.c$63$1$63 ==.
                                   1343 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:63: putchar(0);
      00010A 75 82 00         [24] 1344 	mov	dpl,#0x00
      00010D 12 00 D6         [24] 1345 	lcall	_putchar
                           000084  1346 	C$final.c$64$1$63 ==.
                                   1347 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:64: Port_Init();
      000110 12 01 65         [24] 1348 	lcall	_Port_Init
                           000087  1349 	C$final.c$65$1$63 ==.
                                   1350 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:65: Interrupt_Init();
      000113 12 01 7D         [24] 1351 	lcall	_Interrupt_Init
                           00008A  1352 	C$final.c$66$1$63 ==.
                                   1353 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:66: Timer_Init();
      000116 12 01 83         [24] 1354 	lcall	_Timer_Init
                           00008D  1355 	C$final.c$67$1$63 ==.
                                   1356 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:67: ADC_Init();
      000119 12 02 1E         [24] 1357 	lcall	_ADC_Init
                           000090  1358 	C$final.c$69$1$63 ==.
                                   1359 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:69: if (!SS0 & !SS1)
      00011C A2 A0            [12] 1360 	mov	c,_SS0
      00011E B3               [12] 1361 	cpl	c
      00011F 92 03            [24] 1362 	mov	_main_sloc0_1_0,c
      000121 A2 A1            [12] 1363 	mov	c,_SS1
      000123 B3               [12] 1364 	cpl	c
      000124 92 04            [24] 1365 	mov	_main_sloc1_1_0,c
      000126 A2 03            [12] 1366 	mov	c,_main_sloc0_1_0
      000128 82 04            [24] 1367 	anl	c,_main_sloc1_1_0
      00012A 50 1A            [24] 1368 	jnc	00104$
                           0000A0  1369 	C$final.c$71$2$64 ==.
                                   1370 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:71: printf("mode1 start");
      00012C 74 55            [12] 1371 	mov	a,#___str_0
      00012E C0 E0            [24] 1372 	push	acc
      000130 74 13            [12] 1373 	mov	a,#(___str_0 >> 8)
      000132 C0 E0            [24] 1374 	push	acc
      000134 74 80            [12] 1375 	mov	a,#0x80
      000136 C0 E0            [24] 1376 	push	acc
      000138 12 0C CC         [24] 1377 	lcall	_printf
      00013B 15 81            [12] 1378 	dec	sp
      00013D 15 81            [12] 1379 	dec	sp
      00013F 15 81            [12] 1380 	dec	sp
                           0000B5  1381 	C$final.c$72$2$64 ==.
                                   1382 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:72: startGame();   // exectue code for mode 1
      000141 12 05 7B         [24] 1383 	lcall	_startGame
      000144 80 1E            [24] 1384 	sjmp	00106$
      000146                       1385 00104$:
                           0000BA  1386 	C$final.c$74$1$63 ==.
                                   1387 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:74: else if (SS0 & SS1)
      000146 A2 A0            [12] 1388 	mov	c,_SS0
      000148 82 A1            [24] 1389 	anl	c,_SS1
      00014A 50 18            [24] 1390 	jnc	00106$
                           0000C0  1391 	C$final.c$76$2$65 ==.
                                   1392 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:76: printf("mode3 start");
      00014C 74 61            [12] 1393 	mov	a,#___str_1
      00014E C0 E0            [24] 1394 	push	acc
      000150 74 13            [12] 1395 	mov	a,#(___str_1 >> 8)
      000152 C0 E0            [24] 1396 	push	acc
      000154 74 80            [12] 1397 	mov	a,#0x80
      000156 C0 E0            [24] 1398 	push	acc
      000158 12 0C CC         [24] 1399 	lcall	_printf
      00015B 15 81            [12] 1400 	dec	sp
      00015D 15 81            [12] 1401 	dec	sp
      00015F 15 81            [12] 1402 	dec	sp
                           0000D5  1403 	C$final.c$77$2$65 ==.
                                   1404 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:77: mode3();  // execture code for mode2 
      000161 12 07 0C         [24] 1405 	lcall	_mode3
      000164                       1406 00106$:
                           0000D8  1407 	C$final.c$83$1$63 ==.
                           0000D8  1408 	XG$main$0$0 ==.
      000164 22               [24] 1409 	ret
                                   1410 ;------------------------------------------------------------
                                   1411 ;Allocation info for local variables in function 'Port_Init'
                                   1412 ;------------------------------------------------------------
                           0000D9  1413 	G$Port_Init$0$0 ==.
                           0000D9  1414 	C$final.c$85$1$63 ==.
                                   1415 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:85: void Port_Init(void){
                                   1416 ;	-----------------------------------------
                                   1417 ;	 function Port_Init
                                   1418 ;	-----------------------------------------
      000165                       1419 _Port_Init:
                           0000D9  1420 	C$final.c$86$1$68 ==.
                                   1421 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:86: P1MDIN &= ~0x01;  //set p1.0 for analog input
      000165 53 BD FE         [24] 1422 	anl	_P1MDIN,#0xfe
                           0000DC  1423 	C$final.c$87$1$68 ==.
                                   1424 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:87: P1MDOUT &= ~0x01; //set p1.0 to open drain
      000168 53 A5 FE         [24] 1425 	anl	_P1MDOUT,#0xfe
                           0000DF  1426 	C$final.c$88$1$68 ==.
                                   1427 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:88: P1 |= 0x01; //send logic 1 to input pin p1.0
      00016B 43 90 01         [24] 1428 	orl	_P1,#0x01
                           0000E2  1429 	C$final.c$91$1$68 ==.
                                   1430 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:91: P2MDOUT &= ~0x0F;
      00016E 53 A6 F0         [24] 1431 	anl	_P2MDOUT,#0xf0
                           0000E5  1432 	C$final.c$92$1$68 ==.
                                   1433 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:92: P2 |= 0x0F;
      000171 43 A0 0F         [24] 1434 	orl	_P2,#0x0f
                           0000E8  1435 	C$final.c$94$1$68 ==.
                                   1436 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:94: P2MDOUT |= 0x30;
      000174 43 A6 30         [24] 1437 	orl	_P2MDOUT,#0x30
                           0000EB  1438 	C$final.c$97$1$68 ==.
                                   1439 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:97: P3MDOUT |= 0xFF;
      000177 E5 A7            [12] 1440 	mov	a,_P3MDOUT
      000179 75 A7 FF         [24] 1441 	mov	_P3MDOUT,#0xff
                           0000F0  1442 	C$final.c$98$1$68 ==.
                           0000F0  1443 	XG$Port_Init$0$0 ==.
      00017C 22               [24] 1444 	ret
                                   1445 ;------------------------------------------------------------
                                   1446 ;Allocation info for local variables in function 'Interrupt_Init'
                                   1447 ;------------------------------------------------------------
                           0000F1  1448 	G$Interrupt_Init$0$0 ==.
                           0000F1  1449 	C$final.c$100$1$68 ==.
                                   1450 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:100: void Interrupt_Init(void){
                                   1451 ;	-----------------------------------------
                                   1452 ;	 function Interrupt_Init
                                   1453 ;	-----------------------------------------
      00017D                       1454 _Interrupt_Init:
                           0000F1  1455 	C$final.c$101$1$70 ==.
                                   1456 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:101: IE |= 0x02;      // enable Timer0 Interrupt request (by masking)
      00017D 43 A8 02         [24] 1457 	orl	_IE,#0x02
                           0000F4  1458 	C$final.c$102$1$70 ==.
                                   1459 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:102: EA = 1;       // enable global interrupts (by sbit)
      000180 D2 AF            [12] 1460 	setb	_EA
                           0000F6  1461 	C$final.c$103$1$70 ==.
                           0000F6  1462 	XG$Interrupt_Init$0$0 ==.
      000182 22               [24] 1463 	ret
                                   1464 ;------------------------------------------------------------
                                   1465 ;Allocation info for local variables in function 'Timer_Init'
                                   1466 ;------------------------------------------------------------
                           0000F7  1467 	G$Timer_Init$0$0 ==.
                           0000F7  1468 	C$final.c$105$1$70 ==.
                                   1469 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:105: void Timer_Init(void){
                                   1470 ;	-----------------------------------------
                                   1471 ;	 function Timer_Init
                                   1472 ;	-----------------------------------------
      000183                       1473 _Timer_Init:
                           0000F7  1474 	C$final.c$106$1$72 ==.
                                   1475 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:106: CKCON |= 0x08;  // Timer0 uses SYSCLK as source
      000183 43 8E 08         [24] 1476 	orl	_CKCON,#0x08
                           0000FA  1477 	C$final.c$107$1$72 ==.
                                   1478 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:107: TMOD &= 0xF0;   // clear the 4 least significant bits
      000186 53 89 F0         [24] 1479 	anl	_TMOD,#0xf0
                           0000FD  1480 	C$final.c$108$1$72 ==.
                                   1481 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:108: TMOD |= 0x01;   // Timer0 in mode 1
      000189 43 89 01         [24] 1482 	orl	_TMOD,#0x01
                           000100  1483 	C$final.c$109$1$72 ==.
                                   1484 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:109: TR0 = 0;           // Stop Timer0
      00018C C2 8C            [12] 1485 	clr	_TR0
                           000102  1486 	C$final.c$110$1$72 ==.
                                   1487 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:110: TMR0 = 0;           // Clear high & low byte of T0
      00018E E4               [12] 1488 	clr	a
      00018F F5 8A            [12] 1489 	mov	((_TMR0 >> 0) & 0xFF),a
      000191 F5 8C            [12] 1490 	mov	((_TMR0 >> 8) & 0xFF),a
                           000107  1491 	C$final.c$111$1$72 ==.
                           000107  1492 	XG$Timer_Init$0$0 ==.
      000193 22               [24] 1493 	ret
                                   1494 ;------------------------------------------------------------
                                   1495 ;Allocation info for local variables in function 'Timer0_ISR'
                                   1496 ;------------------------------------------------------------
                           000108  1497 	G$Timer0_ISR$0$0 ==.
                           000108  1498 	C$final.c$115$1$72 ==.
                                   1499 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:115: void Timer0_ISR(void) __interrupt 1{
                                   1500 ;	-----------------------------------------
                                   1501 ;	 function Timer0_ISR
                                   1502 ;	-----------------------------------------
      000194                       1503 _Timer0_ISR:
      000194 C0 E0            [24] 1504 	push	acc
      000196 C0 D0            [24] 1505 	push	psw
                           00010C  1506 	C$final.c$116$1$74 ==.
                                   1507 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:116: TF0=0;
      000198 C2 8D            [12] 1508 	clr	_TF0
                           00010E  1509 	C$final.c$117$1$74 ==.
                                   1510 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:117: counts++;
      00019A 05 23            [12] 1511 	inc	_counts
      00019C E4               [12] 1512 	clr	a
      00019D B5 23 02         [24] 1513 	cjne	a,_counts,00103$
      0001A0 05 24            [12] 1514 	inc	(_counts + 1)
      0001A2                       1515 00103$:
      0001A2 D0 D0            [24] 1516 	pop	psw
      0001A4 D0 E0            [24] 1517 	pop	acc
                           00011A  1518 	C$final.c$118$1$74 ==.
                           00011A  1519 	XG$Timer0_ISR$0$0 ==.
      0001A6 32               [24] 1520 	reti
                                   1521 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   1522 ;	eliminated unneeded push/pop dpl
                                   1523 ;	eliminated unneeded push/pop dph
                                   1524 ;	eliminated unneeded push/pop b
                                   1525 ;------------------------------------------------------------
                                   1526 ;Allocation info for local variables in function 'random'
                                   1527 ;------------------------------------------------------------
                                   1528 ;x                         Allocated to registers r6 r7 
                                   1529 ;------------------------------------------------------------
                           00011B  1530 	G$random$0$0 ==.
                           00011B  1531 	C$final.c$120$1$74 ==.
                                   1532 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:120: int random(int x){
                                   1533 ;	-----------------------------------------
                                   1534 ;	 function random
                                   1535 ;	-----------------------------------------
      0001A7                       1536 _random:
      0001A7 AE 82            [24] 1537 	mov	r6,dpl
      0001A9 AF 83            [24] 1538 	mov	r7,dph
                           00011F  1539 	C$final.c$121$1$76 ==.
                                   1540 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:121: srand(rand());
      0001AB C0 07            [24] 1541 	push	ar7
      0001AD C0 06            [24] 1542 	push	ar6
      0001AF 12 0B 5C         [24] 1543 	lcall	_rand
      0001B2 12 0B 98         [24] 1544 	lcall	_srand
                           000129  1545 	C$final.c$122$1$76 ==.
                                   1546 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:122: return (rand()%x);
      0001B5 12 0B 5C         [24] 1547 	lcall	_rand
      0001B8 D0 06            [24] 1548 	pop	ar6
      0001BA D0 07            [24] 1549 	pop	ar7
      0001BC 8E 0E            [24] 1550 	mov	__modsint_PARM_2,r6
      0001BE 8F 0F            [24] 1551 	mov	(__modsint_PARM_2 + 1),r7
      0001C0 12 12 E3         [24] 1552 	lcall	__modsint
                           000137  1553 	C$final.c$123$1$76 ==.
                           000137  1554 	XG$random$0$0 ==.
      0001C3 22               [24] 1555 	ret
                                   1556 ;------------------------------------------------------------
                                   1557 ;Allocation info for local variables in function 'customWait'
                                   1558 ;------------------------------------------------------------
                           000138  1559 	G$customWait$0$0 ==.
                           000138  1560 	C$final.c$125$1$76 ==.
                                   1561 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:125: void customWait(void){
                                   1562 ;	-----------------------------------------
                                   1563 ;	 function customWait
                                   1564 ;	-----------------------------------------
      0001C4                       1565 _customWait:
                           000138  1566 	C$final.c$126$1$78 ==.
                                   1567 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:126: counts=0;
      0001C4 E4               [12] 1568 	clr	a
      0001C5 F5 23            [12] 1569 	mov	_counts,a
      0001C7 F5 24            [12] 1570 	mov	(_counts + 1),a
                           00013D  1571 	C$final.c$127$1$78 ==.
                                   1572 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:127: if(speed>0){//will P2 hit early?
      0001C9 C3               [12] 1573 	clr	c
      0001CA 95 25            [12] 1574 	subb	a,_speed
      0001CC 74 80            [12] 1575 	mov	a,#(0x00 ^ 0x80)
      0001CE 85 26 F0         [24] 1576 	mov	b,(_speed + 1)
      0001D1 63 F0 80         [24] 1577 	xrl	b,#0x80
      0001D4 95 F0            [12] 1578 	subb	a,b
      0001D6 50 20            [24] 1579 	jnc	00114$
                           00014C  1580 	C$final.c$128$2$79 ==.
                                   1581 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:128: while(counts<(unsigned int)(speed*34)){
      0001D8                       1582 00103$:
      0001D8 85 25 0E         [24] 1583 	mov	__mulint_PARM_2,_speed
      0001DB 85 26 0F         [24] 1584 	mov	(__mulint_PARM_2 + 1),(_speed + 1)
      0001DE 90 00 22         [24] 1585 	mov	dptr,#0x0022
      0001E1 12 0B A7         [24] 1586 	lcall	__mulint
      0001E4 AE 82            [24] 1587 	mov	r6,dpl
      0001E6 AF 83            [24] 1588 	mov	r7,dph
      0001E8 C3               [12] 1589 	clr	c
      0001E9 E5 23            [12] 1590 	mov	a,_counts
      0001EB 9E               [12] 1591 	subb	a,r6
      0001EC E5 24            [12] 1592 	mov	a,(_counts + 1)
      0001EE 9F               [12] 1593 	subb	a,r7
      0001EF 50 2C            [24] 1594 	jnc	00116$
                           000165  1595 	C$final.c$129$3$80 ==.
                                   1596 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:129: if(!PB2){
      0001F1 20 A3 E4         [24] 1597 	jb	_PB2,00103$
                           000168  1598 	C$final.c$130$4$81 ==.
                                   1599 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:130: PB2_flag=true;
      0001F4 D2 01            [12] 1600 	setb	_PB2_flag
      0001F6 80 E0            [24] 1601 	sjmp	00103$
      0001F8                       1602 00114$:
                           00016C  1603 	C$final.c$134$1$78 ==.
                                   1604 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:134: else if(speed<0){//will P1 hit early?
      0001F8 E5 26            [12] 1605 	mov	a,(_speed + 1)
      0001FA 30 E7 20         [24] 1606 	jnb	acc.7,00116$
                           000171  1607 	C$final.c$135$2$82 ==.
                                   1608 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:135: while(counts<(unsigned int)(speed*-34)){
      0001FD                       1609 00108$:
      0001FD 85 25 0E         [24] 1610 	mov	__mulint_PARM_2,_speed
      000200 85 26 0F         [24] 1611 	mov	(__mulint_PARM_2 + 1),(_speed + 1)
      000203 90 FF DE         [24] 1612 	mov	dptr,#0xffde
      000206 12 0B A7         [24] 1613 	lcall	__mulint
      000209 AE 82            [24] 1614 	mov	r6,dpl
      00020B AF 83            [24] 1615 	mov	r7,dph
      00020D C3               [12] 1616 	clr	c
      00020E E5 23            [12] 1617 	mov	a,_counts
      000210 9E               [12] 1618 	subb	a,r6
      000211 E5 24            [12] 1619 	mov	a,(_counts + 1)
      000213 9F               [12] 1620 	subb	a,r7
      000214 50 07            [24] 1621 	jnc	00116$
                           00018A  1622 	C$final.c$136$3$83 ==.
                                   1623 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:136: if(!PB1){
      000216 20 A2 E4         [24] 1624 	jb	_PB1,00108$
                           00018D  1625 	C$final.c$137$4$84 ==.
                                   1626 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:137: PB1_flag=true;
      000219 D2 00            [12] 1627 	setb	_PB1_flag
      00021B 80 E0            [24] 1628 	sjmp	00108$
      00021D                       1629 00116$:
                           000191  1630 	C$final.c$142$1$78 ==.
                           000191  1631 	XG$customWait$0$0 ==.
      00021D 22               [24] 1632 	ret
                                   1633 ;------------------------------------------------------------
                                   1634 ;Allocation info for local variables in function 'ADC_Init'
                                   1635 ;------------------------------------------------------------
                           000192  1636 	G$ADC_Init$0$0 ==.
                           000192  1637 	C$final.c$145$1$78 ==.
                                   1638 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:145: void ADC_Init(void){
                                   1639 ;	-----------------------------------------
                                   1640 ;	 function ADC_Init
                                   1641 ;	-----------------------------------------
      00021E                       1642 _ADC_Init:
                           000192  1643 	C$final.c$146$1$86 ==.
                                   1644 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:146: REF0CN = 0x03;  //set Vref to use interal ref. voltage (2.4V)
      00021E 75 D1 03         [24] 1645 	mov	_REF0CN,#0x03
                           000195  1646 	C$final.c$147$1$86 ==.
                                   1647 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:147: ADC1CN = 0x80; //enable A/D converter (ADC1)
      000221 75 AA 80         [24] 1648 	mov	_ADC1CN,#0x80
                           000198  1649 	C$final.c$148$1$86 ==.
                                   1650 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:148: ADC1CF &=~0x03;  //clear gain bits to 0
      000224 53 AB FC         [24] 1651 	anl	_ADC1CF,#0xfc
                           00019B  1652 	C$final.c$149$1$86 ==.
                                   1653 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:149: ADC1CF |=0x00; //set A/D converter gain to 0.5
      000227 85 AB AB         [24] 1654 	mov	_ADC1CF,_ADC1CF
                           00019E  1655 	C$final.c$150$1$86 ==.
                           00019E  1656 	XG$ADC_Init$0$0 ==.
      00022A 22               [24] 1657 	ret
                                   1658 ;------------------------------------------------------------
                                   1659 ;Allocation info for local variables in function 'read_AD_input'
                                   1660 ;------------------------------------------------------------
                                   1661 ;n                         Allocated to registers 
                                   1662 ;------------------------------------------------------------
                           00019F  1663 	G$read_AD_input$0$0 ==.
                           00019F  1664 	C$final.c$152$1$86 ==.
                                   1665 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:152: unsigned char read_AD_input(unsigned char n){
                                   1666 ;	-----------------------------------------
                                   1667 ;	 function read_AD_input
                                   1668 ;	-----------------------------------------
      00022B                       1669 _read_AD_input:
      00022B 85 82 AC         [24] 1670 	mov	_AMX1SL,dpl
                           0001A2  1671 	C$final.c$154$1$88 ==.
                                   1672 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:154: ADC1CN = ADC1CN & ~0x20; //clear the "conversion completed" flag
      00022E 53 AA DF         [24] 1673 	anl	_ADC1CN,#0xdf
                           0001A5  1674 	C$final.c$155$1$88 ==.
                                   1675 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:155: ADC1CN = ADC1CN | 0x10;  //initiate A/D conversion 
      000231 43 AA 10         [24] 1676 	orl	_ADC1CN,#0x10
                           0001A8  1677 	C$final.c$157$1$88 ==.
                                   1678 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:157: while((ADC1CN & 0x20) == 0x00);  //wait for conversion to complete
      000234                       1679 00101$:
      000234 E5 AA            [12] 1680 	mov	a,_ADC1CN
      000236 30 E5 FB         [24] 1681 	jnb	acc.5,00101$
                           0001AD  1682 	C$final.c$158$1$88 ==.
                                   1683 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:158: return ADC1;
      000239 85 9C 82         [24] 1684 	mov	dpl,_ADC1
                           0001B0  1685 	C$final.c$159$1$88 ==.
                           0001B0  1686 	XG$read_AD_input$0$0 ==.
      00023C 22               [24] 1687 	ret
                                   1688 ;------------------------------------------------------------
                                   1689 ;Allocation info for local variables in function 'speed_set'
                                   1690 ;------------------------------------------------------------
                           0001B1  1691 	G$speed_set$0$0 ==.
                           0001B1  1692 	C$final.c$161$1$88 ==.
                                   1693 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:161: int speed_set(void){
                                   1694 ;	-----------------------------------------
                                   1695 ;	 function speed_set
                                   1696 ;	-----------------------------------------
      00023D                       1697 _speed_set:
                           0001B1  1698 	C$final.c$162$1$90 ==.
                                   1699 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:162: AD_Value=read_AD_input(0);
      00023D 75 82 00         [24] 1700 	mov	dpl,#0x00
      000240 12 02 2B         [24] 1701 	lcall	_read_AD_input
                           0001B7  1702 	C$final.c$163$1$90 ==.
                                   1703 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:163: if(AD_Value<=63){
      000243 E5 82            [12] 1704 	mov	a,dpl
      000245 F5 22            [12] 1705 	mov	_AD_Value,a
      000247 24 C0            [12] 1706 	add	a,#0xff - 0x3f
      000249 40 08            [24] 1707 	jc	00112$
                           0001BF  1708 	C$final.c$164$2$91 ==.
                                   1709 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:164: speedX=5;
      00024B 75 27 05         [24] 1710 	mov	_speedX,#0x05
      00024E 75 28 00         [24] 1711 	mov	(_speedX + 1),#0x00
      000251 80 34            [24] 1712 	sjmp	00113$
      000253                       1713 00112$:
                           0001C7  1714 	C$final.c$166$1$90 ==.
                                   1715 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:166: else if(AD_Value>64&&AD_Value<=127){
      000253 E5 22            [12] 1716 	mov	a,_AD_Value
      000255 24 BF            [12] 1717 	add	a,#0xff - 0x40
      000257 50 0E            [24] 1718 	jnc	00108$
      000259 E5 22            [12] 1719 	mov	a,_AD_Value
      00025B 24 80            [12] 1720 	add	a,#0xff - 0x7f
      00025D 40 08            [24] 1721 	jc	00108$
                           0001D3  1722 	C$final.c$167$2$92 ==.
                                   1723 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:167: speedX=4;
      00025F 75 27 04         [24] 1724 	mov	_speedX,#0x04
      000262 75 28 00         [24] 1725 	mov	(_speedX + 1),#0x00
      000265 80 20            [24] 1726 	sjmp	00113$
      000267                       1727 00108$:
                           0001DB  1728 	C$final.c$169$1$90 ==.
                                   1729 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:169: else if(AD_Value>128&&AD_Value<=191){
      000267 E5 22            [12] 1730 	mov	a,_AD_Value
      000269 24 7F            [12] 1731 	add	a,#0xff - 0x80
      00026B 50 0E            [24] 1732 	jnc	00104$
      00026D E5 22            [12] 1733 	mov	a,_AD_Value
      00026F 24 40            [12] 1734 	add	a,#0xff - 0xbf
      000271 40 08            [24] 1735 	jc	00104$
                           0001E7  1736 	C$final.c$170$2$93 ==.
                                   1737 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:170: speedX=3;
      000273 75 27 03         [24] 1738 	mov	_speedX,#0x03
      000276 75 28 00         [24] 1739 	mov	(_speedX + 1),#0x00
      000279 80 0C            [24] 1740 	sjmp	00113$
      00027B                       1741 00104$:
                           0001EF  1742 	C$final.c$172$1$90 ==.
                                   1743 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:172: else if(AD_Value>192){
      00027B E5 22            [12] 1744 	mov	a,_AD_Value
      00027D 24 3F            [12] 1745 	add	a,#0xff - 0xc0
      00027F 50 06            [24] 1746 	jnc	00113$
                           0001F5  1747 	C$final.c$173$2$94 ==.
                                   1748 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:173: speedX=2;
      000281 75 27 02         [24] 1749 	mov	_speedX,#0x02
      000284 75 28 00         [24] 1750 	mov	(_speedX + 1),#0x00
      000287                       1751 00113$:
                           0001FB  1752 	C$final.c$175$1$90 ==.
                                   1753 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:175: return speedX;
      000287 85 27 82         [24] 1754 	mov	dpl,_speedX
      00028A 85 28 83         [24] 1755 	mov	dph,(_speedX + 1)
                           000201  1756 	C$final.c$176$1$90 ==.
                           000201  1757 	XG$speed_set$0$0 ==.
      00028D 22               [24] 1758 	ret
                                   1759 ;------------------------------------------------------------
                                   1760 ;Allocation info for local variables in function 'bounce'
                                   1761 ;------------------------------------------------------------
                           000202  1762 	G$bounce$0$0 ==.
                           000202  1763 	C$final.c$179$1$90 ==.
                                   1764 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:179: void bounce(void){
                                   1765 ;	-----------------------------------------
                                   1766 ;	 function bounce
                                   1767 ;	-----------------------------------------
      00028E                       1768 _bounce:
                           000202  1769 	C$final.c$180$1$96 ==.
                                   1770 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:180: rand_speed=speed;
      00028E 85 25 29         [24] 1771 	mov	_rand_speed,_speed
      000291 85 26 2A         [24] 1772 	mov	(_rand_speed + 1),(_speed + 1)
                           000208  1773 	C$final.c$181$1$96 ==.
                                   1774 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:181: if(speed>0){//if travelling in positive, go negative
      000294 C3               [12] 1775 	clr	c
      000295 E4               [12] 1776 	clr	a
      000296 95 25            [12] 1777 	subb	a,_speed
      000298 74 80            [12] 1778 	mov	a,#(0x00 ^ 0x80)
      00029A 85 26 F0         [24] 1779 	mov	b,(_speed + 1)
      00029D 63 F0 80         [24] 1780 	xrl	b,#0x80
      0002A0 95 F0            [12] 1781 	subb	a,b
      0002A2 40 03            [24] 1782 	jc	00150$
      0002A4 02 03 1E         [24] 1783 	ljmp	00122$
      0002A7                       1784 00150$:
                           00021B  1785 	C$final.c$182$2$97 ==.
                                   1786 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:182: while(rand_speed>0||rand_speed<=-5){ //exit once valid speed
      0002A7                       1787 00107$:
      0002A7 C3               [12] 1788 	clr	c
      0002A8 E4               [12] 1789 	clr	a
      0002A9 95 29            [12] 1790 	subb	a,_rand_speed
      0002AB 74 80            [12] 1791 	mov	a,#(0x00 ^ 0x80)
      0002AD 85 2A F0         [24] 1792 	mov	b,(_rand_speed + 1)
      0002B0 63 F0 80         [24] 1793 	xrl	b,#0x80
      0002B3 95 F0            [12] 1794 	subb	a,b
      0002B5 40 13            [24] 1795 	jc	00108$
      0002B7 74 FB            [12] 1796 	mov	a,#0xfb
      0002B9 95 29            [12] 1797 	subb	a,_rand_speed
      0002BB 74 7F            [12] 1798 	mov	a,#(0xff ^ 0x80)
      0002BD 85 2A F0         [24] 1799 	mov	b,(_rand_speed + 1)
      0002C0 63 F0 80         [24] 1800 	xrl	b,#0x80
      0002C3 95 F0            [12] 1801 	subb	a,b
      0002C5 50 03            [24] 1802 	jnc	00152$
      0002C7 02 03 8C         [24] 1803 	ljmp	00123$
      0002CA                       1804 00152$:
      0002CA                       1805 00108$:
                           00023E  1806 	C$final.c$183$3$98 ==.
                                   1807 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:183: rand_speed=-1*speed;
      0002CA C3               [12] 1808 	clr	c
      0002CB E4               [12] 1809 	clr	a
      0002CC 95 25            [12] 1810 	subb	a,_speed
      0002CE F5 29            [12] 1811 	mov	_rand_speed,a
      0002D0 E4               [12] 1812 	clr	a
      0002D1 95 26            [12] 1813 	subb	a,(_speed + 1)
      0002D3 F5 2A            [12] 1814 	mov	(_rand_speed + 1),a
                           000249  1815 	C$final.c$184$3$98 ==.
                                   1816 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:184: sign=random(2); 
      0002D5 90 00 02         [24] 1817 	mov	dptr,#0x0002
      0002D8 12 01 A7         [24] 1818 	lcall	_random
      0002DB 85 82 2B         [24] 1819 	mov	_sign,dpl
      0002DE 85 83 2C         [24] 1820 	mov	(_sign + 1),dph
                           000255  1821 	C$final.c$185$3$98 ==.
                                   1822 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:185: magnitude=random(3); //number from 0-2
      0002E1 90 00 03         [24] 1823 	mov	dptr,#0x0003
      0002E4 12 01 A7         [24] 1824 	lcall	_random
      0002E7 85 82 2D         [24] 1825 	mov	_magnitude,dpl
      0002EA 85 83 2E         [24] 1826 	mov	(_magnitude + 1),dph
                           000261  1827 	C$final.c$186$3$98 ==.
                                   1828 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:186: if(sign==0){ //slower
      0002ED E5 2B            [12] 1829 	mov	a,_sign
      0002EF 45 2C            [12] 1830 	orl	a,(_sign + 1)
      0002F1 70 0F            [24] 1831 	jnz	00104$
                           000267  1832 	C$final.c$187$4$99 ==.
                                   1833 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:187: rand_speed-=magnitude;
      0002F3 E5 29            [12] 1834 	mov	a,_rand_speed
      0002F5 C3               [12] 1835 	clr	c
      0002F6 95 2D            [12] 1836 	subb	a,_magnitude
      0002F8 F5 29            [12] 1837 	mov	_rand_speed,a
      0002FA E5 2A            [12] 1838 	mov	a,(_rand_speed + 1)
      0002FC 95 2E            [12] 1839 	subb	a,(_magnitude + 1)
      0002FE F5 2A            [12] 1840 	mov	(_rand_speed + 1),a
      000300 80 A5            [24] 1841 	sjmp	00107$
      000302                       1842 00104$:
                           000276  1843 	C$final.c$189$3$98 ==.
                                   1844 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:189: else if(sign==1){ //faster
      000302 74 01            [12] 1845 	mov	a,#0x01
      000304 B5 2B 06         [24] 1846 	cjne	a,_sign,00154$
      000307 14               [12] 1847 	dec	a
      000308 B5 2C 02         [24] 1848 	cjne	a,(_sign + 1),00154$
      00030B 80 02            [24] 1849 	sjmp	00155$
      00030D                       1850 00154$:
      00030D 80 98            [24] 1851 	sjmp	00107$
      00030F                       1852 00155$:
                           000283  1853 	C$final.c$190$4$100 ==.
                                   1854 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:190: rand_speed+=magnitude;
      00030F E5 2D            [12] 1855 	mov	a,_magnitude
      000311 25 29            [12] 1856 	add	a,_rand_speed
      000313 F5 29            [12] 1857 	mov	_rand_speed,a
      000315 E5 2E            [12] 1858 	mov	a,(_magnitude + 1)
      000317 35 2A            [12] 1859 	addc	a,(_rand_speed + 1)
      000319 F5 2A            [12] 1860 	mov	(_rand_speed + 1),a
      00031B 02 02 A7         [24] 1861 	ljmp	00107$
      00031E                       1862 00122$:
                           000292  1863 	C$final.c$194$1$96 ==.
                                   1864 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:194: else if(speed<0){//if travelling in negative, go postiive
      00031E E5 26            [12] 1865 	mov	a,(_speed + 1)
      000320 30 E7 69         [24] 1866 	jnb	acc.7,00123$
                           000297  1867 	C$final.c$195$2$101 ==.
                                   1868 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:195: while(rand_speed<0||rand_speed>5){
      000323                       1869 00116$:
      000323 E5 2A            [12] 1870 	mov	a,(_rand_speed + 1)
      000325 20 E7 11         [24] 1871 	jb	acc.7,00117$
      000328 C3               [12] 1872 	clr	c
      000329 74 05            [12] 1873 	mov	a,#0x05
      00032B 95 29            [12] 1874 	subb	a,_rand_speed
      00032D 74 80            [12] 1875 	mov	a,#(0x00 ^ 0x80)
      00032F 85 2A F0         [24] 1876 	mov	b,(_rand_speed + 1)
      000332 63 F0 80         [24] 1877 	xrl	b,#0x80
      000335 95 F0            [12] 1878 	subb	a,b
      000337 50 53            [24] 1879 	jnc	00123$
      000339                       1880 00117$:
                           0002AD  1881 	C$final.c$196$3$102 ==.
                                   1882 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:196: rand_speed=-1*speed;
      000339 C3               [12] 1883 	clr	c
      00033A E4               [12] 1884 	clr	a
      00033B 95 25            [12] 1885 	subb	a,_speed
      00033D F5 29            [12] 1886 	mov	_rand_speed,a
      00033F E4               [12] 1887 	clr	a
      000340 95 26            [12] 1888 	subb	a,(_speed + 1)
      000342 F5 2A            [12] 1889 	mov	(_rand_speed + 1),a
                           0002B8  1890 	C$final.c$197$3$102 ==.
                                   1891 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:197: sign=random(2);
      000344 90 00 02         [24] 1892 	mov	dptr,#0x0002
      000347 12 01 A7         [24] 1893 	lcall	_random
      00034A 85 82 2B         [24] 1894 	mov	_sign,dpl
      00034D 85 83 2C         [24] 1895 	mov	(_sign + 1),dph
                           0002C4  1896 	C$final.c$198$3$102 ==.
                                   1897 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:198: magnitude=random(3);
      000350 90 00 03         [24] 1898 	mov	dptr,#0x0003
      000353 12 01 A7         [24] 1899 	lcall	_random
      000356 85 82 2D         [24] 1900 	mov	_magnitude,dpl
      000359 85 83 2E         [24] 1901 	mov	(_magnitude + 1),dph
                           0002D0  1902 	C$final.c$199$3$102 ==.
                                   1903 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:199: if(sign==0){//slower
      00035C E5 2B            [12] 1904 	mov	a,_sign
      00035E 45 2C            [12] 1905 	orl	a,(_sign + 1)
      000360 70 0E            [24] 1906 	jnz	00113$
                           0002D6  1907 	C$final.c$200$4$103 ==.
                                   1908 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:200: rand_speed+=magnitude;
      000362 E5 2D            [12] 1909 	mov	a,_magnitude
      000364 25 29            [12] 1910 	add	a,_rand_speed
      000366 F5 29            [12] 1911 	mov	_rand_speed,a
      000368 E5 2E            [12] 1912 	mov	a,(_magnitude + 1)
      00036A 35 2A            [12] 1913 	addc	a,(_rand_speed + 1)
      00036C F5 2A            [12] 1914 	mov	(_rand_speed + 1),a
      00036E 80 B3            [24] 1915 	sjmp	00116$
      000370                       1916 00113$:
                           0002E4  1917 	C$final.c$202$3$102 ==.
                                   1918 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:202: else if(sign==1){//faster
      000370 74 01            [12] 1919 	mov	a,#0x01
      000372 B5 2B 06         [24] 1920 	cjne	a,_sign,00160$
      000375 14               [12] 1921 	dec	a
      000376 B5 2C 02         [24] 1922 	cjne	a,(_sign + 1),00160$
      000379 80 02            [24] 1923 	sjmp	00161$
      00037B                       1924 00160$:
      00037B 80 A6            [24] 1925 	sjmp	00116$
      00037D                       1926 00161$:
                           0002F1  1927 	C$final.c$203$4$104 ==.
                                   1928 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:203: rand_speed-=magnitude;
      00037D E5 29            [12] 1929 	mov	a,_rand_speed
      00037F C3               [12] 1930 	clr	c
      000380 95 2D            [12] 1931 	subb	a,_magnitude
      000382 F5 29            [12] 1932 	mov	_rand_speed,a
      000384 E5 2A            [12] 1933 	mov	a,(_rand_speed + 1)
      000386 95 2E            [12] 1934 	subb	a,(_magnitude + 1)
      000388 F5 2A            [12] 1935 	mov	(_rand_speed + 1),a
      00038A 80 97            [24] 1936 	sjmp	00116$
      00038C                       1937 00123$:
                           000300  1938 	C$final.c$207$1$96 ==.
                                   1939 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:207: speed=rand_speed;
      00038C 85 29 25         [24] 1940 	mov	_speed,_rand_speed
      00038F 85 2A 26         [24] 1941 	mov	(_speed + 1),(_rand_speed + 1)
                           000306  1942 	C$final.c$208$1$96 ==.
                           000306  1943 	XG$bounce$0$0 ==.
      000392 22               [24] 1944 	ret
                                   1945 ;------------------------------------------------------------
                                   1946 ;Allocation info for local variables in function 'moveBall'
                                   1947 ;------------------------------------------------------------
                           000307  1948 	G$moveBall$0$0 ==.
                           000307  1949 	C$final.c$210$1$96 ==.
                                   1950 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:210: bool moveBall(void){
                                   1951 ;	-----------------------------------------
                                   1952 ;	 function moveBall
                                   1953 ;	-----------------------------------------
      000393                       1954 _moveBall:
                           000307  1955 	C$final.c$211$1$106 ==.
                                   1956 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:211: if(speed>0){ //to left
      000393 C3               [12] 1957 	clr	c
      000394 E4               [12] 1958 	clr	a
      000395 95 25            [12] 1959 	subb	a,_speed
      000397 74 80            [12] 1960 	mov	a,#(0x00 ^ 0x80)
      000399 85 26 F0         [24] 1961 	mov	b,(_speed + 1)
      00039C 63 F0 80         [24] 1962 	xrl	b,#0x80
      00039F 95 F0            [12] 1963 	subb	a,b
      0003A1 50 6C            [24] 1964 	jnc	00120$
                           000317  1965 	C$final.c$212$2$107 ==.
                                   1966 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:212: LED2=0;
      0003A3 C2 B5            [12] 1967 	clr	_LED2
                           000319  1968 	C$final.c$213$2$107 ==.
                                   1969 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:213: customWait();
      0003A5 12 01 C4         [24] 1970 	lcall	_customWait
                           00031C  1971 	C$final.c$214$2$107 ==.
                                   1972 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:214: LED2=1;
      0003A8 D2 B5            [12] 1973 	setb	_LED2
                           00031E  1974 	C$final.c$215$2$107 ==.
                                   1975 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:215: LED3=0;
      0003AA C2 B4            [12] 1976 	clr	_LED3
                           000320  1977 	C$final.c$216$2$107 ==.
                                   1978 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:216: customWait();
      0003AC 12 01 C4         [24] 1979 	lcall	_customWait
                           000323  1980 	C$final.c$217$2$107 ==.
                                   1981 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:217: LED3=1;
      0003AF D2 B4            [12] 1982 	setb	_LED3
                           000325  1983 	C$final.c$218$2$107 ==.
                                   1984 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:218: LED4=0;
      0003B1 C2 B3            [12] 1985 	clr	_LED4
                           000327  1986 	C$final.c$219$2$107 ==.
                                   1987 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:219: customWait();
      0003B3 12 01 C4         [24] 1988 	lcall	_customWait
                           00032A  1989 	C$final.c$220$2$107 ==.
                                   1990 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:220: LED4=1;
      0003B6 D2 B3            [12] 1991 	setb	_LED4
                           00032C  1992 	C$final.c$221$2$107 ==.
                                   1993 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:221: LED5=0;
      0003B8 C2 B2            [12] 1994 	clr	_LED5
                           00032E  1995 	C$final.c$222$2$107 ==.
                                   1996 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:222: customWait();
      0003BA 12 01 C4         [24] 1997 	lcall	_customWait
                           000331  1998 	C$final.c$223$2$107 ==.
                                   1999 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:223: LED5=1;
      0003BD D2 B2            [12] 2000 	setb	_LED5
                           000333  2001 	C$final.c$224$2$107 ==.
                                   2002 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:224: hit=hit_or_miss(); //did P2 hit back?
      0003BF 12 04 7C         [24] 2003 	lcall	_hit_or_miss
                           000336  2004 	C$final.c$225$2$107 ==.
                                   2005 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:225: if(hit){ //bounce to right
      0003C2 92 02            [24] 2006 	mov	_hit,c
      0003C4 50 07            [24] 2007 	jnc	00107$
                           00033A  2008 	C$final.c$226$3$108 ==.
                                   2009 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:226: bounce();
      0003C6 12 02 8E         [24] 2010 	lcall	_bounce
                           00033D  2011 	C$final.c$227$3$108 ==.
                                   2012 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:227: return true;
      0003C9 D3               [12] 2013 	setb	c
      0003CA 02 04 7B         [24] 2014 	ljmp	00122$
      0003CD                       2015 00107$:
                           000341  2016 	C$final.c$229$2$107 ==.
                                   2017 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:229: else if(!hit){
      0003CD 30 02 03         [24] 2018 	jnb	_hit,00156$
      0003D0 02 04 7A         [24] 2019 	ljmp	00121$
      0003D3                       2020 00156$:
                           000347  2021 	C$final.c$230$3$109 ==.
                                   2022 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:230: counts=0;
      0003D3 E4               [12] 2023 	clr	a
      0003D4 F5 23            [12] 2024 	mov	_counts,a
      0003D6 F5 24            [12] 2025 	mov	(_counts + 1),a
                           00034C  2026 	C$final.c$231$3$109 ==.
                                   2027 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:231: score0++;
      0003D8 05 2F            [12] 2028 	inc	_score0
                                   2029 ;	genFromRTrack removed	clr	a
      0003DA B5 2F 02         [24] 2030 	cjne	a,_score0,00157$
      0003DD 05 30            [12] 2031 	inc	(_score0 + 1)
      0003DF                       2032 00157$:
                           000353  2033 	C$final.c$232$3$109 ==.
                                   2034 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:232: while(counts<338){
      0003DF                       2035 00101$:
      0003DF C3               [12] 2036 	clr	c
      0003E0 E5 23            [12] 2037 	mov	a,_counts
      0003E2 94 52            [12] 2038 	subb	a,#0x52
      0003E4 E5 24            [12] 2039 	mov	a,(_counts + 1)
      0003E6 94 01            [12] 2040 	subb	a,#0x01
      0003E8 50 04            [24] 2041 	jnc	00103$
                           00035E  2042 	C$final.c$233$4$110 ==.
                                   2043 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:233: LED7=0;
      0003EA C2 B0            [12] 2044 	clr	_LED7
      0003EC 80 F1            [24] 2045 	sjmp	00101$
      0003EE                       2046 00103$:
                           000362  2047 	C$final.c$235$3$109 ==.
                                   2048 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:235: printf("\r\nP1:%d,P2:%d",score0,score1);
      0003EE C0 31            [24] 2049 	push	_score1
      0003F0 C0 32            [24] 2050 	push	(_score1 + 1)
      0003F2 C0 2F            [24] 2051 	push	_score0
      0003F4 C0 30            [24] 2052 	push	(_score0 + 1)
      0003F6 74 6D            [12] 2053 	mov	a,#___str_2
      0003F8 C0 E0            [24] 2054 	push	acc
      0003FA 74 13            [12] 2055 	mov	a,#(___str_2 >> 8)
      0003FC C0 E0            [24] 2056 	push	acc
      0003FE 74 80            [12] 2057 	mov	a,#0x80
      000400 C0 E0            [24] 2058 	push	acc
      000402 12 0C CC         [24] 2059 	lcall	_printf
      000405 E5 81            [12] 2060 	mov	a,sp
      000407 24 F9            [12] 2061 	add	a,#0xf9
      000409 F5 81            [12] 2062 	mov	sp,a
                           00037F  2063 	C$final.c$236$3$109 ==.
                                   2064 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:236: LED7=1;
      00040B D2 B0            [12] 2065 	setb	_LED7
      00040D 80 6B            [24] 2066 	sjmp	00121$
      00040F                       2067 00120$:
                           000383  2068 	C$final.c$239$1$106 ==.
                                   2069 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:239: else if(speed<0){ //to right
      00040F E5 26            [12] 2070 	mov	a,(_speed + 1)
      000411 30 E7 66         [24] 2071 	jnb	acc.7,00121$
                           000388  2072 	C$final.c$240$2$111 ==.
                                   2073 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:240: LED5=0;
      000414 C2 B2            [12] 2074 	clr	_LED5
                           00038A  2075 	C$final.c$241$2$111 ==.
                                   2076 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:241: customWait();
      000416 12 01 C4         [24] 2077 	lcall	_customWait
                           00038D  2078 	C$final.c$242$2$111 ==.
                                   2079 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:242: LED5=1;
      000419 D2 B2            [12] 2080 	setb	_LED5
                           00038F  2081 	C$final.c$243$2$111 ==.
                                   2082 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:243: LED4=0;
      00041B C2 B3            [12] 2083 	clr	_LED4
                           000391  2084 	C$final.c$244$2$111 ==.
                                   2085 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:244: customWait();
      00041D 12 01 C4         [24] 2086 	lcall	_customWait
                           000394  2087 	C$final.c$245$2$111 ==.
                                   2088 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:245: LED4=1;
      000420 D2 B3            [12] 2089 	setb	_LED4
                           000396  2090 	C$final.c$246$2$111 ==.
                                   2091 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:246: LED3=0;
      000422 C2 B4            [12] 2092 	clr	_LED3
                           000398  2093 	C$final.c$247$2$111 ==.
                                   2094 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:247: customWait();
      000424 12 01 C4         [24] 2095 	lcall	_customWait
                           00039B  2096 	C$final.c$248$2$111 ==.
                                   2097 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:248: LED3=1;
      000427 D2 B4            [12] 2098 	setb	_LED3
                           00039D  2099 	C$final.c$249$2$111 ==.
                                   2100 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:249: LED2=0;
      000429 C2 B5            [12] 2101 	clr	_LED2
                           00039F  2102 	C$final.c$250$2$111 ==.
                                   2103 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:250: customWait();
      00042B 12 01 C4         [24] 2104 	lcall	_customWait
                           0003A2  2105 	C$final.c$251$2$111 ==.
                                   2106 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:251: LED2=1;
      00042E D2 B5            [12] 2107 	setb	_LED2
                           0003A4  2108 	C$final.c$252$2$111 ==.
                                   2109 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:252: hit=hit_or_miss();
      000430 12 04 7C         [24] 2110 	lcall	_hit_or_miss
                           0003A7  2111 	C$final.c$253$2$111 ==.
                                   2112 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:253: if(hit){
      000433 92 02            [24] 2113 	mov	_hit,c
      000435 50 06            [24] 2114 	jnc	00115$
                           0003AB  2115 	C$final.c$254$3$112 ==.
                                   2116 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:254: bounce();
      000437 12 02 8E         [24] 2117 	lcall	_bounce
                           0003AE  2118 	C$final.c$255$3$112 ==.
                                   2119 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:255: return true;
      00043A D3               [12] 2120 	setb	c
      00043B 80 3E            [24] 2121 	sjmp	00122$
      00043D                       2122 00115$:
                           0003B1  2123 	C$final.c$257$2$111 ==.
                                   2124 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:257: else if(!hit){
      00043D 20 02 3A         [24] 2125 	jb	_hit,00121$
                           0003B4  2126 	C$final.c$258$3$113 ==.
                                   2127 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:258: counts=0;
      000440 E4               [12] 2128 	clr	a
      000441 F5 23            [12] 2129 	mov	_counts,a
      000443 F5 24            [12] 2130 	mov	(_counts + 1),a
                           0003B9  2131 	C$final.c$259$3$113 ==.
                                   2132 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:259: score1++;
      000445 05 31            [12] 2133 	inc	_score1
                                   2134 ;	genFromRTrack removed	clr	a
      000447 B5 31 02         [24] 2135 	cjne	a,_score1,00162$
      00044A 05 32            [12] 2136 	inc	(_score1 + 1)
      00044C                       2137 00162$:
                           0003C0  2138 	C$final.c$260$3$113 ==.
                                   2139 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:260: while(counts<338){
      00044C                       2140 00109$:
      00044C C3               [12] 2141 	clr	c
      00044D E5 23            [12] 2142 	mov	a,_counts
      00044F 94 52            [12] 2143 	subb	a,#0x52
      000451 E5 24            [12] 2144 	mov	a,(_counts + 1)
      000453 94 01            [12] 2145 	subb	a,#0x01
      000455 50 04            [24] 2146 	jnc	00111$
                           0003CB  2147 	C$final.c$261$4$114 ==.
                                   2148 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:261: LED0=0;
      000457 C2 B7            [12] 2149 	clr	_LED0
      000459 80 F1            [24] 2150 	sjmp	00109$
      00045B                       2151 00111$:
                           0003CF  2152 	C$final.c$263$3$113 ==.
                                   2153 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:263: printf("\r\nP1:%d,P2:%d",score0,score1);
      00045B C0 31            [24] 2154 	push	_score1
      00045D C0 32            [24] 2155 	push	(_score1 + 1)
      00045F C0 2F            [24] 2156 	push	_score0
      000461 C0 30            [24] 2157 	push	(_score0 + 1)
      000463 74 6D            [12] 2158 	mov	a,#___str_2
      000465 C0 E0            [24] 2159 	push	acc
      000467 74 13            [12] 2160 	mov	a,#(___str_2 >> 8)
      000469 C0 E0            [24] 2161 	push	acc
      00046B 74 80            [12] 2162 	mov	a,#0x80
      00046D C0 E0            [24] 2163 	push	acc
      00046F 12 0C CC         [24] 2164 	lcall	_printf
      000472 E5 81            [12] 2165 	mov	a,sp
      000474 24 F9            [12] 2166 	add	a,#0xf9
      000476 F5 81            [12] 2167 	mov	sp,a
                           0003EC  2168 	C$final.c$264$3$113 ==.
                                   2169 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:264: LED0=1;
      000478 D2 B7            [12] 2170 	setb	_LED0
      00047A                       2171 00121$:
                           0003EE  2172 	C$final.c$267$1$106 ==.
                                   2173 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:267: return false;
      00047A C3               [12] 2174 	clr	c
      00047B                       2175 00122$:
                           0003EF  2176 	C$final.c$268$1$106 ==.
                           0003EF  2177 	XG$moveBall$0$0 ==.
      00047B 22               [24] 2178 	ret
                                   2179 ;------------------------------------------------------------
                                   2180 ;Allocation info for local variables in function 'hit_or_miss'
                                   2181 ;------------------------------------------------------------
                           0003F0  2182 	G$hit_or_miss$0$0 ==.
                           0003F0  2183 	C$final.c$270$1$106 ==.
                                   2184 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:270: bool hit_or_miss(void){ //i guess they never miss huh
                                   2185 ;	-----------------------------------------
                                   2186 ;	 function hit_or_miss
                                   2187 ;	-----------------------------------------
      00047C                       2188 _hit_or_miss:
                           0003F0  2189 	C$final.c$271$1$116 ==.
                                   2190 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:271: counts=0;
      00047C E4               [12] 2191 	clr	a
      00047D F5 23            [12] 2192 	mov	_counts,a
      00047F F5 24            [12] 2193 	mov	(_counts + 1),a
                           0003F5  2194 	C$final.c$272$1$116 ==.
                                   2195 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:272: if(speed>0){ //P2 has to click
      000481 C3               [12] 2196 	clr	c
      000482 95 25            [12] 2197 	subb	a,_speed
      000484 74 80            [12] 2198 	mov	a,#(0x00 ^ 0x80)
      000486 85 26 F0         [24] 2199 	mov	b,(_speed + 1)
      000489 63 F0 80         [24] 2200 	xrl	b,#0x80
      00048C 95 F0            [12] 2201 	subb	a,b
      00048E 50 2C            [24] 2202 	jnc	00116$
                           000404  2203 	C$final.c$273$2$117 ==.
                                   2204 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:273: while(counts<(unsigned int)(speed*34)){
      000490                       2205 00104$:
      000490 85 25 0E         [24] 2206 	mov	__mulint_PARM_2,_speed
      000493 85 26 0F         [24] 2207 	mov	(__mulint_PARM_2 + 1),(_speed + 1)
      000496 90 00 22         [24] 2208 	mov	dptr,#0x0022
      000499 12 0B A7         [24] 2209 	lcall	__mulint
      00049C AE 82            [24] 2210 	mov	r6,dpl
      00049E AF 83            [24] 2211 	mov	r7,dph
      0004A0 C3               [12] 2212 	clr	c
      0004A1 E5 23            [12] 2213 	mov	a,_counts
      0004A3 9E               [12] 2214 	subb	a,r6
      0004A4 E5 24            [12] 2215 	mov	a,(_counts + 1)
      0004A6 9F               [12] 2216 	subb	a,r7
      0004A7 50 0F            [24] 2217 	jnc	00106$
                           00041D  2218 	C$final.c$274$3$118 ==.
                                   2219 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:274: LED6=0;
      0004A9 C2 B1            [12] 2220 	clr	_LED6
                           00041F  2221 	C$final.c$275$3$118 ==.
                                   2222 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:275: if(!PB2&&!PB2_flag){
      0004AB 20 A3 E2         [24] 2223 	jb	_PB2,00104$
      0004AE 20 01 DF         [24] 2224 	jb	_PB2_flag,00104$
                           000425  2225 	C$final.c$276$4$119 ==.
                                   2226 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:276: LED6=1;
      0004B1 D2 B1            [12] 2227 	setb	_LED6
                           000427  2228 	C$final.c$277$4$119 ==.
                                   2229 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:277: PB1_flag=false;
      0004B3 C2 00            [12] 2230 	clr	_PB1_flag
                           000429  2231 	C$final.c$278$4$119 ==.
                                   2232 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:278: return true;
      0004B5 D3               [12] 2233 	setb	c
      0004B6 80 39            [24] 2234 	sjmp	00118$
      0004B8                       2235 00106$:
                           00042C  2236 	C$final.c$281$2$117 ==.
                                   2237 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:281: LED6=1;
      0004B8 D2 B1            [12] 2238 	setb	_LED6
      0004BA 80 34            [24] 2239 	sjmp	00117$
      0004BC                       2240 00116$:
                           000430  2241 	C$final.c$283$1$116 ==.
                                   2242 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:283: else if(speed<0){ //P1 has to click
      0004BC E5 26            [12] 2243 	mov	a,(_speed + 1)
      0004BE 30 E7 2F         [24] 2244 	jnb	acc.7,00117$
                           000435  2245 	C$final.c$284$2$120 ==.
                                   2246 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:284: while(counts<(unsigned int)(speed*-1*34)){
      0004C1                       2247 00110$:
      0004C1 C3               [12] 2248 	clr	c
      0004C2 E4               [12] 2249 	clr	a
      0004C3 95 25            [12] 2250 	subb	a,_speed
      0004C5 F5 0E            [12] 2251 	mov	__mulint_PARM_2,a
      0004C7 E4               [12] 2252 	clr	a
      0004C8 95 26            [12] 2253 	subb	a,(_speed + 1)
      0004CA F5 0F            [12] 2254 	mov	(__mulint_PARM_2 + 1),a
      0004CC 90 00 22         [24] 2255 	mov	dptr,#0x0022
      0004CF 12 0B A7         [24] 2256 	lcall	__mulint
      0004D2 AE 82            [24] 2257 	mov	r6,dpl
      0004D4 AF 83            [24] 2258 	mov	r7,dph
      0004D6 C3               [12] 2259 	clr	c
      0004D7 E5 23            [12] 2260 	mov	a,_counts
      0004D9 9E               [12] 2261 	subb	a,r6
      0004DA E5 24            [12] 2262 	mov	a,(_counts + 1)
      0004DC 9F               [12] 2263 	subb	a,r7
      0004DD 50 0F            [24] 2264 	jnc	00112$
                           000453  2265 	C$final.c$285$3$121 ==.
                                   2266 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:285: LED1=0;
      0004DF C2 B6            [12] 2267 	clr	_LED1
                           000455  2268 	C$final.c$286$3$121 ==.
                                   2269 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:286: if(!PB1&&!PB1_flag){
      0004E1 20 A2 DD         [24] 2270 	jb	_PB1,00110$
      0004E4 20 00 DA         [24] 2271 	jb	_PB1_flag,00110$
                           00045B  2272 	C$final.c$287$4$122 ==.
                                   2273 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:287: LED1=1;
      0004E7 D2 B6            [12] 2274 	setb	_LED1
                           00045D  2275 	C$final.c$288$4$122 ==.
                                   2276 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:288: PB2_flag=false;
      0004E9 C2 01            [12] 2277 	clr	_PB2_flag
                           00045F  2278 	C$final.c$289$4$122 ==.
                                   2279 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:289: return true;
      0004EB D3               [12] 2280 	setb	c
      0004EC 80 03            [24] 2281 	sjmp	00118$
      0004EE                       2282 00112$:
                           000462  2283 	C$final.c$292$2$120 ==.
                                   2284 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:292: LED1=1;
      0004EE D2 B6            [12] 2285 	setb	_LED1
      0004F0                       2286 00117$:
                           000464  2287 	C$final.c$294$1$116 ==.
                                   2288 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:294: return false;
      0004F0 C3               [12] 2289 	clr	c
      0004F1                       2290 00118$:
                           000465  2291 	C$final.c$295$1$116 ==.
                           000465  2292 	XG$hit_or_miss$0$0 ==.
      0004F1 22               [24] 2293 	ret
                                   2294 ;------------------------------------------------------------
                                   2295 ;Allocation info for local variables in function 'player1_Serve'
                                   2296 ;------------------------------------------------------------
                           000466  2297 	G$player1_Serve$0$0 ==.
                           000466  2298 	C$final.c$298$1$116 ==.
                                   2299 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:298: void player1_Serve(void){
                                   2300 ;	-----------------------------------------
                                   2301 ;	 function player1_Serve
                                   2302 ;	-----------------------------------------
      0004F2                       2303 _player1_Serve:
                           000466  2304 	C$final.c$299$1$124 ==.
                                   2305 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:299: printf("Player 1 serving\r\n");
      0004F2 74 7B            [12] 2306 	mov	a,#___str_3
      0004F4 C0 E0            [24] 2307 	push	acc
      0004F6 74 13            [12] 2308 	mov	a,#(___str_3 >> 8)
      0004F8 C0 E0            [24] 2309 	push	acc
      0004FA 74 80            [12] 2310 	mov	a,#0x80
      0004FC C0 E0            [24] 2311 	push	acc
      0004FE 12 0C CC         [24] 2312 	lcall	_printf
      000501 15 81            [12] 2313 	dec	sp
      000503 15 81            [12] 2314 	dec	sp
      000505 15 81            [12] 2315 	dec	sp
                           00047B  2316 	C$final.c$300$1$124 ==.
                                   2317 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:300: PB1_flag=false;
      000507 C2 00            [12] 2318 	clr	_PB1_flag
                           00047D  2319 	C$final.c$301$1$124 ==.
                                   2320 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:301: PB2_flag=false;
      000509 C2 01            [12] 2321 	clr	_PB2_flag
                           00047F  2322 	C$final.c$302$1$124 ==.
                                   2323 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:302: counts=0;
      00050B E4               [12] 2324 	clr	a
      00050C F5 23            [12] 2325 	mov	_counts,a
      00050E F5 24            [12] 2326 	mov	(_counts + 1),a
                           000484  2327 	C$final.c$303$1$124 ==.
                                   2328 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:303: while(counts<60);
      000510                       2329 00101$:
      000510 C3               [12] 2330 	clr	c
      000511 E5 23            [12] 2331 	mov	a,_counts
      000513 94 3C            [12] 2332 	subb	a,#0x3c
      000515 E5 24            [12] 2333 	mov	a,(_counts + 1)
      000517 94 00            [12] 2334 	subb	a,#0x00
      000519 40 F5            [24] 2335 	jc	00101$
                           00048F  2336 	C$final.c$304$1$124 ==.
                                   2337 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:304: while(PB1){
      00051B                       2338 00104$:
      00051B 30 A2 0D         [24] 2339 	jnb	_PB1,00106$
                           000492  2340 	C$final.c$305$2$125 ==.
                                   2341 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:305: LED1=0;
      00051E C2 B6            [12] 2342 	clr	_LED1
                           000494  2343 	C$final.c$306$2$125 ==.
                                   2344 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:306: speed=speed_set(); //positive serve speed
      000520 12 02 3D         [24] 2345 	lcall	_speed_set
      000523 85 82 25         [24] 2346 	mov	_speed,dpl
      000526 85 83 26         [24] 2347 	mov	(_speed + 1),dph
      000529 80 F0            [24] 2348 	sjmp	00104$
      00052B                       2349 00106$:
                           00049F  2350 	C$final.c$308$1$124 ==.
                                   2351 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:308: LED1=1;
      00052B D2 B6            [12] 2352 	setb	_LED1
                           0004A1  2353 	C$final.c$309$1$124 ==.
                                   2354 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:309: while(moveBall());
      00052D                       2355 00107$:
      00052D 12 03 93         [24] 2356 	lcall	_moveBall
      000530 40 FB            [24] 2357 	jc	00107$
                           0004A6  2358 	C$final.c$310$1$124 ==.
                           0004A6  2359 	XG$player1_Serve$0$0 ==.
      000532 22               [24] 2360 	ret
                                   2361 ;------------------------------------------------------------
                                   2362 ;Allocation info for local variables in function 'player2_Serve'
                                   2363 ;------------------------------------------------------------
                           0004A7  2364 	G$player2_Serve$0$0 ==.
                           0004A7  2365 	C$final.c$312$1$124 ==.
                                   2366 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:312: void player2_Serve(void){
                                   2367 ;	-----------------------------------------
                                   2368 ;	 function player2_Serve
                                   2369 ;	-----------------------------------------
      000533                       2370 _player2_Serve:
                           0004A7  2371 	C$final.c$313$1$127 ==.
                                   2372 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:313: printf("Player 2 serving\r\n");
      000533 74 8E            [12] 2373 	mov	a,#___str_4
      000535 C0 E0            [24] 2374 	push	acc
      000537 74 13            [12] 2375 	mov	a,#(___str_4 >> 8)
      000539 C0 E0            [24] 2376 	push	acc
      00053B 74 80            [12] 2377 	mov	a,#0x80
      00053D C0 E0            [24] 2378 	push	acc
      00053F 12 0C CC         [24] 2379 	lcall	_printf
      000542 15 81            [12] 2380 	dec	sp
      000544 15 81            [12] 2381 	dec	sp
      000546 15 81            [12] 2382 	dec	sp
                           0004BC  2383 	C$final.c$314$1$127 ==.
                                   2384 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:314: PB1_flag=false;
      000548 C2 00            [12] 2385 	clr	_PB1_flag
                           0004BE  2386 	C$final.c$315$1$127 ==.
                                   2387 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:315: PB2_flag=false;
      00054A C2 01            [12] 2388 	clr	_PB2_flag
                           0004C0  2389 	C$final.c$316$1$127 ==.
                                   2390 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:316: counts=0;
      00054C E4               [12] 2391 	clr	a
      00054D F5 23            [12] 2392 	mov	_counts,a
      00054F F5 24            [12] 2393 	mov	(_counts + 1),a
                           0004C5  2394 	C$final.c$317$1$127 ==.
                                   2395 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:317: while(counts<60);
      000551                       2396 00101$:
      000551 C3               [12] 2397 	clr	c
      000552 E5 23            [12] 2398 	mov	a,_counts
      000554 94 3C            [12] 2399 	subb	a,#0x3c
      000556 E5 24            [12] 2400 	mov	a,(_counts + 1)
      000558 94 00            [12] 2401 	subb	a,#0x00
      00055A 40 F5            [24] 2402 	jc	00101$
                           0004D0  2403 	C$final.c$318$1$127 ==.
                                   2404 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:318: while(PB2){
      00055C                       2405 00104$:
      00055C 30 A3 14         [24] 2406 	jnb	_PB2,00106$
                           0004D3  2407 	C$final.c$319$2$128 ==.
                                   2408 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:319: LED6=0;
      00055F C2 B1            [12] 2409 	clr	_LED6
                           0004D5  2410 	C$final.c$320$2$128 ==.
                                   2411 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:320: speed=-1*speed_set(); //negative serve speed
      000561 12 02 3D         [24] 2412 	lcall	_speed_set
      000564 AE 82            [24] 2413 	mov	r6,dpl
      000566 AF 83            [24] 2414 	mov	r7,dph
      000568 C3               [12] 2415 	clr	c
      000569 E4               [12] 2416 	clr	a
      00056A 9E               [12] 2417 	subb	a,r6
      00056B F5 25            [12] 2418 	mov	_speed,a
      00056D E4               [12] 2419 	clr	a
      00056E 9F               [12] 2420 	subb	a,r7
      00056F F5 26            [12] 2421 	mov	(_speed + 1),a
      000571 80 E9            [24] 2422 	sjmp	00104$
      000573                       2423 00106$:
                           0004E7  2424 	C$final.c$322$1$127 ==.
                                   2425 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:322: LED6=1;
      000573 D2 B1            [12] 2426 	setb	_LED6
                           0004E9  2427 	C$final.c$323$1$127 ==.
                                   2428 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:323: while(moveBall());
      000575                       2429 00107$:
      000575 12 03 93         [24] 2430 	lcall	_moveBall
      000578 40 FB            [24] 2431 	jc	00107$
                           0004EE  2432 	C$final.c$324$1$127 ==.
                           0004EE  2433 	XG$player2_Serve$0$0 ==.
      00057A 22               [24] 2434 	ret
                                   2435 ;------------------------------------------------------------
                                   2436 ;Allocation info for local variables in function 'startGame'
                                   2437 ;------------------------------------------------------------
                           0004EF  2438 	G$startGame$0$0 ==.
                           0004EF  2439 	C$final.c$327$1$127 ==.
                                   2440 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:327: void startGame(void){
                                   2441 ;	-----------------------------------------
                                   2442 ;	 function startGame
                                   2443 ;	-----------------------------------------
      00057B                       2444 _startGame:
                           0004EF  2445 	C$final.c$328$1$130 ==.
                                   2446 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:328: TR0=1;
      00057B D2 8C            [12] 2447 	setb	_TR0
                           0004F1  2448 	C$final.c$329$1$130 ==.
                                   2449 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:329: printf("Starting Ping Pong...\r\n");
      00057D 74 A1            [12] 2450 	mov	a,#___str_5
      00057F C0 E0            [24] 2451 	push	acc
      000581 74 13            [12] 2452 	mov	a,#(___str_5 >> 8)
      000583 C0 E0            [24] 2453 	push	acc
      000585 74 80            [12] 2454 	mov	a,#0x80
      000587 C0 E0            [24] 2455 	push	acc
      000589 12 0C CC         [24] 2456 	lcall	_printf
      00058C 15 81            [12] 2457 	dec	sp
      00058E 15 81            [12] 2458 	dec	sp
      000590 15 81            [12] 2459 	dec	sp
                           000506  2460 	C$final.c$330$1$130 ==.
                                   2461 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:330: while(PB1){
      000592                       2462 00101$:
      000592 30 A2 04         [24] 2463 	jnb	_PB1,00103$
                           000509  2464 	C$final.c$331$2$131 ==.
                                   2465 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:331: LED0=0;
      000595 C2 B7            [12] 2466 	clr	_LED0
      000597 80 F9            [24] 2467 	sjmp	00101$
      000599                       2468 00103$:
                           00050D  2469 	C$final.c$333$1$130 ==.
                                   2470 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:333: LED0=1;
      000599 D2 B7            [12] 2471 	setb	_LED0
                           00050F  2472 	C$final.c$334$1$130 ==.
                                   2473 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:334: score0=0;
      00059B E4               [12] 2474 	clr	a
      00059C F5 2F            [12] 2475 	mov	_score0,a
      00059E F5 30            [12] 2476 	mov	(_score0 + 1),a
                           000514  2477 	C$final.c$335$1$130 ==.
                                   2478 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:335: score1=0;
      0005A0 F5 31            [12] 2479 	mov	_score1,a
      0005A2 F5 32            [12] 2480 	mov	(_score1 + 1),a
                           000518  2481 	C$final.c$336$1$130 ==.
                                   2482 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:336: while(score0<5 && score1<5){ //while either play has less than 5 points
      0005A4                       2483 00105$:
      0005A4 C3               [12] 2484 	clr	c
      0005A5 E5 2F            [12] 2485 	mov	a,_score0
      0005A7 94 05            [12] 2486 	subb	a,#0x05
      0005A9 E5 30            [12] 2487 	mov	a,(_score0 + 1)
      0005AB 94 00            [12] 2488 	subb	a,#0x00
      0005AD 50 13            [24] 2489 	jnc	00107$
      0005AF C3               [12] 2490 	clr	c
      0005B0 E5 31            [12] 2491 	mov	a,_score1
      0005B2 94 05            [12] 2492 	subb	a,#0x05
      0005B4 E5 32            [12] 2493 	mov	a,(_score1 + 1)
      0005B6 94 00            [12] 2494 	subb	a,#0x00
      0005B8 50 08            [24] 2495 	jnc	00107$
                           00052E  2496 	C$final.c$338$2$132 ==.
                                   2497 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:338: player1_Serve();
      0005BA 12 04 F2         [24] 2498 	lcall	_player1_Serve
                           000531  2499 	C$final.c$340$2$132 ==.
                                   2500 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:340: player2_Serve();
      0005BD 12 05 33         [24] 2501 	lcall	_player2_Serve
      0005C0 80 E2            [24] 2502 	sjmp	00105$
      0005C2                       2503 00107$:
                           000536  2504 	C$final.c$342$1$130 ==.
                                   2505 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:342: LED0=0;
      0005C2 C2 B7            [12] 2506 	clr	_LED0
                           000538  2507 	C$final.c$343$1$130 ==.
                                   2508 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:343: LED1=0;
      0005C4 C2 B6            [12] 2509 	clr	_LED1
                           00053A  2510 	C$final.c$344$1$130 ==.
                                   2511 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:344: LED2=0;
      0005C6 C2 B5            [12] 2512 	clr	_LED2
                           00053C  2513 	C$final.c$345$1$130 ==.
                                   2514 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:345: LED3=0;
      0005C8 C2 B4            [12] 2515 	clr	_LED3
                           00053E  2516 	C$final.c$346$1$130 ==.
                                   2517 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:346: LED4=0;
      0005CA C2 B3            [12] 2518 	clr	_LED4
                           000540  2519 	C$final.c$347$1$130 ==.
                                   2520 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:347: LED5=0;
      0005CC C2 B2            [12] 2521 	clr	_LED5
                           000542  2522 	C$final.c$348$1$130 ==.
                                   2523 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:348: LED6=0;
      0005CE C2 B1            [12] 2524 	clr	_LED6
                           000544  2525 	C$final.c$349$1$130 ==.
                                   2526 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:349: LED7=0;
      0005D0 C2 B0            [12] 2527 	clr	_LED7
                           000546  2528 	C$final.c$350$1$130 ==.
                                   2529 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:350: printf("Game Over, Final Score:%d-%d\r\n",score0,score1);
      0005D2 C0 31            [24] 2530 	push	_score1
      0005D4 C0 32            [24] 2531 	push	(_score1 + 1)
      0005D6 C0 2F            [24] 2532 	push	_score0
      0005D8 C0 30            [24] 2533 	push	(_score0 + 1)
      0005DA 74 B9            [12] 2534 	mov	a,#___str_6
      0005DC C0 E0            [24] 2535 	push	acc
      0005DE 74 13            [12] 2536 	mov	a,#(___str_6 >> 8)
      0005E0 C0 E0            [24] 2537 	push	acc
      0005E2 74 80            [12] 2538 	mov	a,#0x80
      0005E4 C0 E0            [24] 2539 	push	acc
      0005E6 12 0C CC         [24] 2540 	lcall	_printf
      0005E9 E5 81            [12] 2541 	mov	a,sp
      0005EB 24 F9            [12] 2542 	add	a,#0xf9
      0005ED F5 81            [12] 2543 	mov	sp,a
                           000563  2544 	C$final.c$351$1$130 ==.
                                   2545 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:351: if(score0>score1){
      0005EF C3               [12] 2546 	clr	c
      0005F0 E5 31            [12] 2547 	mov	a,_score1
      0005F2 95 2F            [12] 2548 	subb	a,_score0
      0005F4 E5 32            [12] 2549 	mov	a,(_score1 + 1)
      0005F6 95 30            [12] 2550 	subb	a,(_score0 + 1)
      0005F8 50 17            [24] 2551 	jnc	00111$
                           00056E  2552 	C$final.c$352$2$133 ==.
                                   2553 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:352: printf("Player 1 Wins!\r\n");
      0005FA 74 D8            [12] 2554 	mov	a,#___str_7
      0005FC C0 E0            [24] 2555 	push	acc
      0005FE 74 13            [12] 2556 	mov	a,#(___str_7 >> 8)
      000600 C0 E0            [24] 2557 	push	acc
      000602 74 80            [12] 2558 	mov	a,#0x80
      000604 C0 E0            [24] 2559 	push	acc
      000606 12 0C CC         [24] 2560 	lcall	_printf
      000609 15 81            [12] 2561 	dec	sp
      00060B 15 81            [12] 2562 	dec	sp
      00060D 15 81            [12] 2563 	dec	sp
      00060F 80 20            [24] 2564 	sjmp	00113$
      000611                       2565 00111$:
                           000585  2566 	C$final.c$354$1$130 ==.
                                   2567 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:354: else if(score0<score1){
      000611 C3               [12] 2568 	clr	c
      000612 E5 2F            [12] 2569 	mov	a,_score0
      000614 95 31            [12] 2570 	subb	a,_score1
      000616 E5 30            [12] 2571 	mov	a,(_score0 + 1)
      000618 95 32            [12] 2572 	subb	a,(_score1 + 1)
      00061A 50 15            [24] 2573 	jnc	00113$
                           000590  2574 	C$final.c$355$2$134 ==.
                                   2575 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:355: printf("Player 2 Wins!\r\n");
      00061C 74 E9            [12] 2576 	mov	a,#___str_8
      00061E C0 E0            [24] 2577 	push	acc
      000620 74 13            [12] 2578 	mov	a,#(___str_8 >> 8)
      000622 C0 E0            [24] 2579 	push	acc
      000624 74 80            [12] 2580 	mov	a,#0x80
      000626 C0 E0            [24] 2581 	push	acc
      000628 12 0C CC         [24] 2582 	lcall	_printf
      00062B 15 81            [12] 2583 	dec	sp
      00062D 15 81            [12] 2584 	dec	sp
      00062F 15 81            [12] 2585 	dec	sp
      000631                       2586 00113$:
                           0005A5  2587 	C$final.c$357$1$130 ==.
                           0005A5  2588 	XG$startGame$0$0 ==.
      000631 22               [24] 2589 	ret
                                   2590 ;------------------------------------------------------------
                                   2591 ;Allocation info for local variables in function 'blink'
                                   2592 ;------------------------------------------------------------
                                   2593 ;currentcounts             Allocated to registers r6 r7 
                                   2594 ;------------------------------------------------------------
                           0005A6  2595 	G$blink$0$0 ==.
                           0005A6  2596 	C$final.c$359$1$130 ==.
                                   2597 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:359: void blink()
                                   2598 ;	-----------------------------------------
                                   2599 ;	 function blink
                                   2600 ;	-----------------------------------------
      000632                       2601 _blink:
                           0005A6  2602 	C$final.c$362$1$135 ==.
                                   2603 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:362: TR0 = 1;
      000632 D2 8C            [12] 2604 	setb	_TR0
                           0005A8  2605 	C$final.c$366$1$135 ==.
                                   2606 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:366: while ( PB1 && PB2 )
      000634                       2607 00108$:
      000634 30 A2 55         [24] 2608 	jnb	_PB1,00111$
      000637 30 A3 52         [24] 2609 	jnb	_PB2,00111$
                           0005AE  2610 	C$final.c$368$2$136 ==.
                                   2611 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:368: currentcounts=counts;
      00063A AE 23            [24] 2612 	mov	r6,_counts
      00063C AF 24            [24] 2613 	mov	r7,(_counts + 1)
                           0005B2  2614 	C$final.c$369$2$136 ==.
                                   2615 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:369: while (counts < currentcounts + 54 )
      00063E 74 36            [12] 2616 	mov	a,#0x36
      000640 2E               [12] 2617 	add	a,r6
      000641 FE               [12] 2618 	mov	r6,a
      000642 E4               [12] 2619 	clr	a
      000643 3F               [12] 2620 	addc	a,r7
      000644 FF               [12] 2621 	mov	r7,a
      000645                       2622 00101$:
      000645 8E 04            [24] 2623 	mov	ar4,r6
      000647 8F 05            [24] 2624 	mov	ar5,r7
      000649 C3               [12] 2625 	clr	c
      00064A E5 23            [12] 2626 	mov	a,_counts
      00064C 9C               [12] 2627 	subb	a,r4
      00064D E5 24            [12] 2628 	mov	a,(_counts + 1)
      00064F 9D               [12] 2629 	subb	a,r5
      000650 50 12            [24] 2630 	jnc	00103$
                           0005C6  2631 	C$final.c$371$3$137 ==.
                                   2632 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:371: LED0=0;  // turn on all LED for 160ms
      000652 C2 B7            [12] 2633 	clr	_LED0
                           0005C8  2634 	C$final.c$372$3$137 ==.
                                   2635 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:372: LED1=0;
      000654 C2 B6            [12] 2636 	clr	_LED1
                           0005CA  2637 	C$final.c$373$3$137 ==.
                                   2638 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:373: LED2=0;
      000656 C2 B5            [12] 2639 	clr	_LED2
                           0005CC  2640 	C$final.c$374$3$137 ==.
                                   2641 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:374: LED3=0;
      000658 C2 B4            [12] 2642 	clr	_LED3
                           0005CE  2643 	C$final.c$375$3$137 ==.
                                   2644 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:375: LED4=0;
      00065A C2 B3            [12] 2645 	clr	_LED4
                           0005D0  2646 	C$final.c$376$3$137 ==.
                                   2647 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:376: LED5=0;
      00065C C2 B2            [12] 2648 	clr	_LED5
                           0005D2  2649 	C$final.c$377$3$137 ==.
                                   2650 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:377: LED6=0;
      00065E C2 B1            [12] 2651 	clr	_LED6
                           0005D4  2652 	C$final.c$378$3$137 ==.
                                   2653 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:378: LED7=0;
      000660 C2 B0            [12] 2654 	clr	_LED7
      000662 80 E1            [24] 2655 	sjmp	00101$
      000664                       2656 00103$:
                           0005D8  2657 	C$final.c$382$2$136 ==.
                                   2658 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:382: while (counts < currentcounts + 54 )
      000664 74 36            [12] 2659 	mov	a,#0x36
      000666 25 23            [12] 2660 	add	a,_counts
      000668 FE               [12] 2661 	mov	r6,a
      000669 E4               [12] 2662 	clr	a
      00066A 35 24            [12] 2663 	addc	a,(_counts + 1)
      00066C FF               [12] 2664 	mov	r7,a
      00066D                       2665 00104$:
      00066D 8E 04            [24] 2666 	mov	ar4,r6
      00066F 8F 05            [24] 2667 	mov	ar5,r7
      000671 C3               [12] 2668 	clr	c
      000672 E5 23            [12] 2669 	mov	a,_counts
      000674 9C               [12] 2670 	subb	a,r4
      000675 E5 24            [12] 2671 	mov	a,(_counts + 1)
      000677 9D               [12] 2672 	subb	a,r5
      000678 50 BA            [24] 2673 	jnc	00108$
                           0005EE  2674 	C$final.c$384$3$138 ==.
                                   2675 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:384: LED0=1;	// turn off all LED FOR 160ms
      00067A D2 B7            [12] 2676 	setb	_LED0
                           0005F0  2677 	C$final.c$385$3$138 ==.
                                   2678 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:385: LED1=1;
      00067C D2 B6            [12] 2679 	setb	_LED1
                           0005F2  2680 	C$final.c$386$3$138 ==.
                                   2681 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:386: LED2=1;
      00067E D2 B5            [12] 2682 	setb	_LED2
                           0005F4  2683 	C$final.c$387$3$138 ==.
                                   2684 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:387: LED3=1;
      000680 D2 B4            [12] 2685 	setb	_LED3
                           0005F6  2686 	C$final.c$388$3$138 ==.
                                   2687 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:388: LED4=1;
      000682 D2 B3            [12] 2688 	setb	_LED4
                           0005F8  2689 	C$final.c$389$3$138 ==.
                                   2690 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:389: LED5=1;
      000684 D2 B2            [12] 2691 	setb	_LED5
                           0005FA  2692 	C$final.c$390$3$138 ==.
                                   2693 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:390: LED6=1;
      000686 D2 B1            [12] 2694 	setb	_LED6
                           0005FC  2695 	C$final.c$391$3$138 ==.
                                   2696 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:391: LED7=1;
      000688 D2 B0            [12] 2697 	setb	_LED7
      00068A 80 E1            [24] 2698 	sjmp	00104$
      00068C                       2699 00111$:
                           000600  2700 	C$final.c$394$1$135 ==.
                           000600  2701 	XG$blink$0$0 ==.
      00068C 22               [24] 2702 	ret
                                   2703 ;------------------------------------------------------------
                                   2704 ;Allocation info for local variables in function 'generate_random_number'
                                   2705 ;------------------------------------------------------------
                                   2706 ;var                       Allocated to registers r5 
                                   2707 ;high_bits                 Allocated to registers r7 
                                   2708 ;i                         Allocated to registers 
                                   2709 ;------------------------------------------------------------
                           000601  2710 	G$generate_random_number$0$0 ==.
                           000601  2711 	C$final.c$399$1$135 ==.
                                   2712 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:399: unsigned char generate_random_number()
                                   2713 ;	-----------------------------------------
                                   2714 ;	 function generate_random_number
                                   2715 ;	-----------------------------------------
      00068D                       2716 _generate_random_number:
                           000601  2717 	C$final.c$402$1$135 ==.
                                   2718 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:402: unsigned char high_bits = 0;
      00068D 7F 00            [12] 2719 	mov	r7,#0x00
                           000603  2720 	C$final.c$406$1$139 ==.
                                   2721 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:406: var= rand()%255;
      00068F C0 07            [24] 2722 	push	ar7
      000691 12 0B 5C         [24] 2723 	lcall	_rand
      000694 75 0E FF         [24] 2724 	mov	__modsint_PARM_2,#0xff
      000697 75 0F 00         [24] 2725 	mov	(__modsint_PARM_2 + 1),#0x00
      00069A 12 12 E3         [24] 2726 	lcall	__modsint
      00069D AD 82            [24] 2727 	mov	r5,dpl
      00069F AE 83            [24] 2728 	mov	r6,dph
      0006A1 D0 07            [24] 2729 	pop	ar7
                           000617  2730 	C$final.c$407$1$139 ==.
                                   2731 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:407: while (high_bits < 3)
      0006A3                       2732 00102$:
      0006A3 BF 03 00         [24] 2733 	cjne	r7,#0x03,00122$
      0006A6                       2734 00122$:
      0006A6 50 40            [24] 2735 	jnc	00104$
                           00061C  2736 	C$final.c$409$2$140 ==.
                                   2737 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:409: srand(rand());
      0006A8 C0 07            [24] 2738 	push	ar7
      0006AA 12 0B 5C         [24] 2739 	lcall	_rand
      0006AD 12 0B 98         [24] 2740 	lcall	_srand
                           000624  2741 	C$final.c$410$2$140 ==.
                                   2742 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:410: var= rand()%255;
      0006B0 12 0B 5C         [24] 2743 	lcall	_rand
      0006B3 75 0E FF         [24] 2744 	mov	__modsint_PARM_2,#0xff
      0006B6 75 0F 00         [24] 2745 	mov	(__modsint_PARM_2 + 1),#0x00
      0006B9 12 12 E3         [24] 2746 	lcall	__modsint
      0006BC AC 82            [24] 2747 	mov	r4,dpl
      0006BE D0 07            [24] 2748 	pop	ar7
      0006C0 8C 05            [24] 2749 	mov	ar5,r4
                           000636  2750 	C$final.c$411$2$140 ==.
                                   2751 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:411: for(i=0;i<8;i++)
      0006C2 7C 00            [12] 2752 	mov	r4,#0x00
      0006C4 7E 00            [12] 2753 	mov	r6,#0x00
      0006C6                       2754 00105$:
                           00063A  2755 	C$final.c$413$3$141 ==.
                                   2756 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:413: high_bits += (var>>i) & 0x01;
      0006C6 8C F0            [24] 2757 	mov	b,r4
      0006C8 05 F0            [12] 2758 	inc	b
      0006CA ED               [12] 2759 	mov	a,r5
      0006CB 80 02            [24] 2760 	sjmp	00125$
      0006CD                       2761 00124$:
      0006CD C3               [12] 2762 	clr	c
      0006CE 13               [12] 2763 	rrc	a
      0006CF                       2764 00125$:
      0006CF D5 F0 FB         [24] 2765 	djnz	b,00124$
      0006D2 54 01            [12] 2766 	anl	a,#0x01
      0006D4 2F               [12] 2767 	add	a,r7
      0006D5 FF               [12] 2768 	mov	r7,a
                           00064A  2769 	C$final.c$411$2$140 ==.
                                   2770 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:411: for(i=0;i<8;i++)
      0006D6 0C               [12] 2771 	inc	r4
      0006D7 BC 00 01         [24] 2772 	cjne	r4,#0x00,00126$
      0006DA 0E               [12] 2773 	inc	r6
      0006DB                       2774 00126$:
      0006DB C3               [12] 2775 	clr	c
      0006DC EC               [12] 2776 	mov	a,r4
      0006DD 94 08            [12] 2777 	subb	a,#0x08
      0006DF EE               [12] 2778 	mov	a,r6
      0006E0 64 80            [12] 2779 	xrl	a,#0x80
      0006E2 94 80            [12] 2780 	subb	a,#0x80
      0006E4 40 E0            [24] 2781 	jc	00105$
      0006E6 80 BB            [24] 2782 	sjmp	00102$
      0006E8                       2783 00104$:
                           00065C  2784 	C$final.c$416$1$139 ==.
                                   2785 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:416: printf("convert number : 0x%x", var);
      0006E8 8D 06            [24] 2786 	mov	ar6,r5
      0006EA 7F 00            [12] 2787 	mov	r7,#0x00
      0006EC C0 05            [24] 2788 	push	ar5
      0006EE C0 06            [24] 2789 	push	ar6
      0006F0 C0 07            [24] 2790 	push	ar7
      0006F2 74 FA            [12] 2791 	mov	a,#___str_9
      0006F4 C0 E0            [24] 2792 	push	acc
      0006F6 74 13            [12] 2793 	mov	a,#(___str_9 >> 8)
      0006F8 C0 E0            [24] 2794 	push	acc
      0006FA 74 80            [12] 2795 	mov	a,#0x80
      0006FC C0 E0            [24] 2796 	push	acc
      0006FE 12 0C CC         [24] 2797 	lcall	_printf
      000701 E5 81            [12] 2798 	mov	a,sp
      000703 24 FB            [12] 2799 	add	a,#0xfb
      000705 F5 81            [12] 2800 	mov	sp,a
      000707 D0 05            [24] 2801 	pop	ar5
                           00067D  2802 	C$final.c$417$1$139 ==.
                                   2803 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:417: return var;
      000709 8D 82            [24] 2804 	mov	dpl,r5
                           00067F  2805 	C$final.c$418$1$139 ==.
                           00067F  2806 	XG$generate_random_number$0$0 ==.
      00070B 22               [24] 2807 	ret
                                   2808 ;------------------------------------------------------------
                                   2809 ;Allocation info for local variables in function 'mode3'
                                   2810 ;------------------------------------------------------------
                                   2811 ;var                       Allocated with name '_mode3_var_1_143'
                                   2812 ;input                     Allocated with name '_mode3_input_1_143'
                                   2813 ;PoT                       Allocated to registers r7 
                                   2814 ;score                     Allocated to registers r4 r5 
                                   2815 ;overflow                  Allocated to registers r6 r7 
                                   2816 ;temporarycount            Allocated to registers r5 r6 
                                   2817 ;score_timer               Allocated with name '_mode3_score_timer_1_143'
                                   2818 ;submit_timer              Allocated with name '_mode3_submit_timer_1_143'
                                   2819 ;debounce_count            Allocated to registers r5 r6 
                                   2820 ;mode                      Allocated with name '_mode3_mode_1_143'
                                   2821 ;lock_in_counts            Allocated to registers 
                                   2822 ;sloc0                     Allocated with name '_mode3_sloc0_1_0'
                                   2823 ;------------------------------------------------------------
                           000680  2824 	G$mode3$0$0 ==.
                           000680  2825 	C$final.c$420$1$139 ==.
                                   2826 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:420: void mode3(void)
                                   2827 ;	-----------------------------------------
                                   2828 ;	 function mode3
                                   2829 ;	-----------------------------------------
      00070C                       2830 _mode3:
                           000680  2831 	C$final.c$423$1$139 ==.
                                   2832 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:423: unsigned char input=0b00000000;
                           000680  2833 	C$final.c$430$1$139 ==.
                                   2834 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:430: int submit_timer = 0;
      00070C E4               [12] 2835 	clr	a
      00070D F5 36            [12] 2836 	mov	_mode3_input_1_143,a
      00070F F5 39            [12] 2837 	mov	_mode3_submit_timer_1_143,a
      000711 F5 3A            [12] 2838 	mov	(_mode3_submit_timer_1_143 + 1),a
                           000687  2839 	C$final.c$432$1$139 ==.
                                   2840 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:432: char mode=0;  // 0 for bit select mode // 1 for lock in bits mode
                                   2841 ;	1-genFromRTrack replaced	mov	_mode3_mode_1_143,#0x00
      000713 F5 3B            [12] 2842 	mov	_mode3_mode_1_143,a
                           000689  2843 	C$final.c$434$1$143 ==.
                                   2844 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:434: blink();
      000715 12 06 32         [24] 2845 	lcall	_blink
                           00068C  2846 	C$final.c$435$1$143 ==.
                                   2847 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:435: var = generate_random_number();
      000718 12 06 8D         [24] 2848 	lcall	_generate_random_number
      00071B 85 82 35         [24] 2849 	mov	_mode3_var_1_143,dpl
                           000692  2850 	C$final.c$438$1$143 ==.
                                   2851 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:438: score_timer=counts;
      00071E 85 23 37         [24] 2852 	mov	_mode3_score_timer_1_143,_counts
      000721 85 24 38         [24] 2853 	mov	(_mode3_score_timer_1_143 + 1),(_counts + 1)
                           000698  2854 	C$final.c$439$4$146 ==.
                                   2855 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:439: while ( counts < score_timer + 10125)  // wait for max time 30s
      000724 74 8D            [12] 2856 	mov	a,#0x8d
      000726 25 37            [12] 2857 	add	a,_mode3_score_timer_1_143
      000728 F8               [12] 2858 	mov	r0,a
      000729 74 27            [12] 2859 	mov	a,#0x27
      00072B 35 38            [12] 2860 	addc	a,(_mode3_score_timer_1_143 + 1)
      00072D FB               [12] 2861 	mov	r3,a
      00072E                       2862 00197$:
      00072E 88 05            [24] 2863 	mov	ar5,r0
      000730 8B 06            [24] 2864 	mov	ar6,r3
      000732 C3               [12] 2865 	clr	c
      000733 E5 23            [12] 2866 	mov	a,_counts
      000735 9D               [12] 2867 	subb	a,r5
      000736 E5 24            [12] 2868 	mov	a,(_counts + 1)
      000738 9E               [12] 2869 	subb	a,r6
      000739 40 03            [24] 2870 	jc	00357$
      00073B 02 0A AE         [24] 2871 	ljmp	00199$
      00073E                       2872 00357$:
                           0006B2  2873 	C$final.c$442$2$144 ==.
                                   2874 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:442: if (mode == 1)  // lock-in bit mode
      00073E 74 01            [12] 2875 	mov	a,#0x01
      000740 B5 3B 02         [24] 2876 	cjne	a,_mode3_mode_1_143,00358$
      000743 80 03            [24] 2877 	sjmp	00359$
      000745                       2878 00358$:
      000745 02 07 DE         [24] 2879 	ljmp	00195$
      000748                       2880 00359$:
                           0006BC  2881 	C$final.c$446$3$145 ==.
                                   2882 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:446: printf("mode1\r");
      000748 C0 03            [24] 2883 	push	ar3
      00074A C0 00            [24] 2884 	push	ar0
      00074C 74 10            [12] 2885 	mov	a,#___str_10
      00074E C0 E0            [24] 2886 	push	acc
      000750 74 14            [12] 2887 	mov	a,#(___str_10 >> 8)
      000752 C0 E0            [24] 2888 	push	acc
      000754 74 80            [12] 2889 	mov	a,#0x80
      000756 C0 E0            [24] 2890 	push	acc
      000758 12 0C CC         [24] 2891 	lcall	_printf
      00075B 15 81            [12] 2892 	dec	sp
      00075D 15 81            [12] 2893 	dec	sp
      00075F 15 81            [12] 2894 	dec	sp
      000761 D0 00            [24] 2895 	pop	ar0
      000763 D0 03            [24] 2896 	pop	ar3
                           0006D9  2897 	C$final.c$447$3$145 ==.
                                   2898 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:447: while ( counts < lock_in_counts + 168)   //show user input for 500ms
      000765 74 A8            [12] 2899 	mov	a,#0xa8
      000767 25 23            [12] 2900 	add	a,_counts
      000769 FD               [12] 2901 	mov	r5,a
      00076A E4               [12] 2902 	clr	a
      00076B 35 24            [12] 2903 	addc	a,(_counts + 1)
      00076D FE               [12] 2904 	mov	r6,a
      00076E C3               [12] 2905 	clr	c
      00076F E5 23            [12] 2906 	mov	a,_counts
      000771 9D               [12] 2907 	subb	a,r5
      000772 E5 24            [12] 2908 	mov	a,(_counts + 1)
      000774 9E               [12] 2909 	subb	a,r6
      000775 50 29            [24] 2910 	jnc	00103$
                           0006EB  2911 	C$final.c$449$4$146 ==.
                                   2912 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:449: BILED0 = 1;  //BILED RED
      000777 D2 A4            [12] 2913 	setb	_BILED0
                           0006ED  2914 	C$final.c$450$4$146 ==.
                                   2915 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:450: BILED1 = 0;
      000779 C2 A5            [12] 2916 	clr	_BILED1
                           0006EF  2917 	C$final.c$451$4$146 ==.
                                   2918 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:451: printf("display user input\n");
      00077B C0 03            [24] 2919 	push	ar3
      00077D C0 00            [24] 2920 	push	ar0
      00077F 74 17            [12] 2921 	mov	a,#___str_11
      000781 C0 E0            [24] 2922 	push	acc
      000783 74 14            [12] 2923 	mov	a,#(___str_11 >> 8)
      000785 C0 E0            [24] 2924 	push	acc
      000787 74 80            [12] 2925 	mov	a,#0x80
      000789 C0 E0            [24] 2926 	push	acc
      00078B 12 0C CC         [24] 2927 	lcall	_printf
      00078E 15 81            [12] 2928 	dec	sp
      000790 15 81            [12] 2929 	dec	sp
      000792 15 81            [12] 2930 	dec	sp
      000794 D0 00            [24] 2931 	pop	ar0
      000796 D0 03            [24] 2932 	pop	ar3
                           00070C  2933 	C$final.c$452$4$146 ==.
                                   2934 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:452: P3 = ~input;  // display the user input a LEDs   ????
      000798 E5 36            [12] 2935 	mov	a,_mode3_input_1_143
      00079A F4               [12] 2936 	cpl	a
      00079B F5 B0            [12] 2937 	mov	_P3,a
                           000711  2938 	C$final.c$453$4$146 ==.
                                   2939 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:453: mode=0;
      00079D 75 3B 00         [24] 2940 	mov	_mode3_mode_1_143,#0x00
                           000714  2941 	C$final.c$454$3$145 ==.
                                   2942 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:454: break;
      0007A0                       2943 00103$:
                           000714  2944 	C$final.c$457$3$145 ==.
                                   2945 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:457: debounce_count = counts;
      0007A0 AD 23            [24] 2946 	mov	r5,_counts
      0007A2 AE 24            [24] 2947 	mov	r6,(_counts + 1)
                           000718  2948 	C$final.c$458$3$145 ==.
                                   2949 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:458: while ( counts < debounce_count + 54);
      0007A4 74 36            [12] 2950 	mov	a,#0x36
      0007A6 2D               [12] 2951 	add	a,r5
      0007A7 F5 3C            [12] 2952 	mov	_mode3_sloc0_1_0,a
      0007A9 E4               [12] 2953 	clr	a
      0007AA 3E               [12] 2954 	addc	a,r6
      0007AB F5 3D            [12] 2955 	mov	(_mode3_sloc0_1_0 + 1),a
      0007AD                       2956 00104$:
      0007AD A9 3C            [24] 2957 	mov	r1,_mode3_sloc0_1_0
      0007AF AA 3D            [24] 2958 	mov	r2,(_mode3_sloc0_1_0 + 1)
      0007B1 C3               [12] 2959 	clr	c
      0007B2 E5 23            [12] 2960 	mov	a,_counts
      0007B4 99               [12] 2961 	subb	a,r1
      0007B5 E5 24            [12] 2962 	mov	a,(_counts + 1)
      0007B7 9A               [12] 2963 	subb	a,r2
      0007B8 40 F3            [24] 2964 	jc	00104$
                           00072E  2965 	C$final.c$459$3$145 ==.
                                   2966 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:459: if (!PB2) 
      0007BA 30 A3 03         [24] 2967 	jnb	_PB2,00362$
      0007BD 02 07 2E         [24] 2968 	ljmp	00197$
      0007C0                       2969 00362$:
                           000734  2970 	C$final.c$461$4$147 ==.
                                   2971 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:461: printf("submite\n");
      0007C0 74 2B            [12] 2972 	mov	a,#___str_12
      0007C2 C0 E0            [24] 2973 	push	acc
      0007C4 74 14            [12] 2974 	mov	a,#(___str_12 >> 8)
      0007C6 C0 E0            [24] 2975 	push	acc
      0007C8 74 80            [12] 2976 	mov	a,#0x80
      0007CA C0 E0            [24] 2977 	push	acc
      0007CC 12 0C CC         [24] 2978 	lcall	_printf
      0007CF 15 81            [12] 2979 	dec	sp
      0007D1 15 81            [12] 2980 	dec	sp
      0007D3 15 81            [12] 2981 	dec	sp
                           000749  2982 	C$final.c$462$4$147 ==.
                                   2983 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:462: submit_timer=counts;  // store the time break the loop
      0007D5 85 23 39         [24] 2984 	mov	_mode3_submit_timer_1_143,_counts
      0007D8 85 24 3A         [24] 2985 	mov	(_mode3_submit_timer_1_143 + 1),(_counts + 1)
                           00074F  2986 	C$final.c$463$4$147 ==.
                                   2987 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:463: break;
      0007DB 02 0A AE         [24] 2988 	ljmp	00199$
      0007DE                       2989 00195$:
                           000752  2990 	C$final.c$469$2$144 ==.
                                   2991 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:469: else if (mode == 0 )  //bit selecting mode
      0007DE E5 3B            [12] 2992 	mov	a,_mode3_mode_1_143
      0007E0 60 03            [24] 2993 	jz	00363$
      0007E2 02 07 2E         [24] 2994 	ljmp	00197$
      0007E5                       2995 00363$:
                           000759  2996 	C$final.c$473$3$148 ==.
                                   2997 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:473: printf("mode0\r\n");
      0007E5 C0 03            [24] 2998 	push	ar3
      0007E7 C0 00            [24] 2999 	push	ar0
      0007E9 74 34            [12] 3000 	mov	a,#___str_13
      0007EB C0 E0            [24] 3001 	push	acc
      0007ED 74 14            [12] 3002 	mov	a,#(___str_13 >> 8)
      0007EF C0 E0            [24] 3003 	push	acc
      0007F1 74 80            [12] 3004 	mov	a,#0x80
      0007F3 C0 E0            [24] 3005 	push	acc
      0007F5 12 0C CC         [24] 3006 	lcall	_printf
      0007F8 15 81            [12] 3007 	dec	sp
      0007FA 15 81            [12] 3008 	dec	sp
      0007FC 15 81            [12] 3009 	dec	sp
      0007FE D0 00            [24] 3010 	pop	ar0
      000800 D0 03            [24] 3011 	pop	ar3
                           000776  3012 	C$final.c$474$3$148 ==.
                                   3013 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:474: BILED0 = 0;
      000802 C2 A4            [12] 3014 	clr	_BILED0
                           000778  3015 	C$final.c$475$3$148 ==.
                                   3016 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:475: BILED1 = 1;  //BILED GREEN
      000804 D2 A5            [12] 3017 	setb	_BILED1
                           00077A  3018 	C$final.c$477$3$148 ==.
                                   3019 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:477: debounce_count = counts;
      000806 AD 23            [24] 3020 	mov	r5,_counts
      000808 AE 24            [24] 3021 	mov	r6,(_counts + 1)
                           00077E  3022 	C$final.c$478$3$148 ==.
                                   3023 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:478: while ( counts < debounce_count + 54);
      00080A 74 36            [12] 3024 	mov	a,#0x36
      00080C 2D               [12] 3025 	add	a,r5
      00080D F9               [12] 3026 	mov	r1,a
      00080E E4               [12] 3027 	clr	a
      00080F 3E               [12] 3028 	addc	a,r6
      000810 FA               [12] 3029 	mov	r2,a
      000811                       3030 00109$:
      000811 89 04            [24] 3031 	mov	ar4,r1
      000813 8A 07            [24] 3032 	mov	ar7,r2
      000815 C3               [12] 3033 	clr	c
      000816 E5 23            [12] 3034 	mov	a,_counts
      000818 9C               [12] 3035 	subb	a,r4
      000819 E5 24            [12] 3036 	mov	a,(_counts + 1)
      00081B 9F               [12] 3037 	subb	a,r7
      00081C 40 F3            [24] 3038 	jc	00109$
                           000792  3039 	C$final.c$479$3$148 ==.
                                   3040 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:479: while (PB1 && PB2)
      00081E                       3041 00134$:
      00081E 20 A2 03         [24] 3042 	jb	_PB1,00365$
      000821 02 08 A6         [24] 3043 	ljmp	00136$
      000824                       3044 00365$:
      000824 20 A3 03         [24] 3045 	jb	_PB2,00366$
      000827 02 08 A6         [24] 3046 	ljmp	00136$
      00082A                       3047 00366$:
                           00079E  3048 	C$final.c$481$4$149 ==.
                                   3049 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:481: PoT = read_AD_input(0);
      00082A 75 82 00         [24] 3050 	mov	dpl,#0x00
      00082D C0 03            [24] 3051 	push	ar3
      00082F C0 00            [24] 3052 	push	ar0
      000831 12 02 2B         [24] 3053 	lcall	_read_AD_input
      000834 AF 82            [24] 3054 	mov	r7,dpl
      000836 D0 00            [24] 3055 	pop	ar0
      000838 D0 03            [24] 3056 	pop	ar3
                           0007AE  3057 	C$final.c$482$4$149 ==.
                                   3058 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:482: if (PoT < 17) 
      00083A BF 11 00         [24] 3059 	cjne	r7,#0x11,00367$
      00083D                       3060 00367$:
      00083D 50 09            [24] 3061 	jnc	00131$
                           0007B3  3062 	C$final.c$484$1$143 ==.
                                   3063 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:484: P3|=0xFF;
      00083F E5 B0            [12] 3064 	mov	a,_P3
      000841 75 B0 FF         [24] 3065 	mov	_P3,#0xff
                           0007B8  3066 	C$final.c$485$5$150 ==.
                                   3067 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:485: LED0=0;
      000844 C2 B7            [12] 3068 	clr	_LED0
      000846 80 D6            [24] 3069 	sjmp	00134$
      000848                       3070 00131$:
                           0007BC  3071 	C$final.c$487$4$149 ==.
                                   3072 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:487: else if (PoT < 34) 
      000848 BF 22 00         [24] 3073 	cjne	r7,#0x22,00369$
      00084B                       3074 00369$:
      00084B 50 09            [24] 3075 	jnc	00128$
                           0007C1  3076 	C$final.c$489$1$143 ==.
                                   3077 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:489: P3 |= 0xFF;
      00084D E5 B0            [12] 3078 	mov	a,_P3
      00084F 75 B0 FF         [24] 3079 	mov	_P3,#0xff
                           0007C6  3080 	C$final.c$490$5$151 ==.
                                   3081 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:490: LED1=0;
      000852 C2 B6            [12] 3082 	clr	_LED1
      000854 80 C8            [24] 3083 	sjmp	00134$
      000856                       3084 00128$:
                           0007CA  3085 	C$final.c$492$4$149 ==.
                                   3086 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:492: else if(PoT < 51) 
      000856 BF 33 00         [24] 3087 	cjne	r7,#0x33,00371$
      000859                       3088 00371$:
      000859 50 09            [24] 3089 	jnc	00125$
                           0007CF  3090 	C$final.c$494$1$143 ==.
                                   3091 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:494: P3 |= 0xFF;
      00085B E5 B0            [12] 3092 	mov	a,_P3
      00085D 75 B0 FF         [24] 3093 	mov	_P3,#0xff
                           0007D4  3094 	C$final.c$495$5$152 ==.
                                   3095 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:495: LED2=0;
      000860 C2 B5            [12] 3096 	clr	_LED2
      000862 80 BA            [24] 3097 	sjmp	00134$
      000864                       3098 00125$:
                           0007D8  3099 	C$final.c$497$4$149 ==.
                                   3100 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:497: else if(PoT < 68) 
      000864 BF 44 00         [24] 3101 	cjne	r7,#0x44,00373$
      000867                       3102 00373$:
      000867 50 09            [24] 3103 	jnc	00122$
                           0007DD  3104 	C$final.c$499$1$143 ==.
                                   3105 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:499: P3 |= 0xFF;
      000869 E5 B0            [12] 3106 	mov	a,_P3
      00086B 75 B0 FF         [24] 3107 	mov	_P3,#0xff
                           0007E2  3108 	C$final.c$500$5$153 ==.
                                   3109 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:500: LED3=0;
      00086E C2 B4            [12] 3110 	clr	_LED3
      000870 80 AC            [24] 3111 	sjmp	00134$
      000872                       3112 00122$:
                           0007E6  3113 	C$final.c$502$4$149 ==.
                                   3114 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:502: else if(PoT < 85)	 //light up correspond LED
      000872 BF 55 00         [24] 3115 	cjne	r7,#0x55,00375$
      000875                       3116 00375$:
      000875 50 09            [24] 3117 	jnc	00119$
                           0007EB  3118 	C$final.c$504$1$143 ==.
                                   3119 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:504: P3 |= 0xFF;
      000877 E5 B0            [12] 3120 	mov	a,_P3
      000879 75 B0 FF         [24] 3121 	mov	_P3,#0xff
                           0007F0  3122 	C$final.c$505$5$154 ==.
                                   3123 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:505: LED4=0;
      00087C C2 B3            [12] 3124 	clr	_LED4
      00087E 80 9E            [24] 3125 	sjmp	00134$
      000880                       3126 00119$:
                           0007F4  3127 	C$final.c$507$4$149 ==.
                                   3128 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:507: else if(PoT < 102) 
      000880 BF 66 00         [24] 3129 	cjne	r7,#0x66,00377$
      000883                       3130 00377$:
      000883 50 09            [24] 3131 	jnc	00116$
                           0007F9  3132 	C$final.c$509$1$143 ==.
                                   3133 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:509: P3 |= 0xFF;
      000885 E5 B0            [12] 3134 	mov	a,_P3
      000887 75 B0 FF         [24] 3135 	mov	_P3,#0xff
                           0007FE  3136 	C$final.c$510$5$155 ==.
                                   3137 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:510: LED5=0;\
      00088A C2 B2            [12] 3138 	clr	_LED5
      00088C 80 90            [24] 3139 	sjmp	00134$
      00088E                       3140 00116$:
                           000802  3141 	C$final.c$512$4$149 ==.
                                   3142 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:512: else if(PoT < 119) 
      00088E BF 77 00         [24] 3143 	cjne	r7,#0x77,00379$
      000891                       3144 00379$:
      000891 50 09            [24] 3145 	jnc	00113$
                           000807  3146 	C$final.c$514$1$143 ==.
                                   3147 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:514: P3 |= 0xFF;
      000893 E5 B0            [12] 3148 	mov	a,_P3
      000895 75 B0 FF         [24] 3149 	mov	_P3,#0xff
                           00080C  3150 	C$final.c$515$5$156 ==.
                                   3151 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:515: LED6=0;
      000898 C2 B1            [12] 3152 	clr	_LED6
      00089A 80 82            [24] 3153 	sjmp	00134$
      00089C                       3154 00113$:
                           000810  3155 	C$final.c$519$1$143 ==.
                                   3156 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:519: P3 |= 0xFF;
      00089C E5 B0            [12] 3157 	mov	a,_P3
      00089E 75 B0 FF         [24] 3158 	mov	_P3,#0xff
                           000815  3159 	C$final.c$520$5$157 ==.
                                   3160 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:520: LED7=0;
      0008A1 C2 B0            [12] 3161 	clr	_LED7
      0008A3 02 08 1E         [24] 3162 	ljmp	00134$
      0008A6                       3163 00136$:
                           00081A  3164 	C$final.c$523$3$148 ==.
                                   3165 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:523: if (!PB1)
      0008A6 30 A2 03         [24] 3166 	jnb	_PB1,00381$
      0008A9 02 0A 6F         [24] 3167 	ljmp	00186$
      0008AC                       3168 00381$:
                           000820  3169 	C$final.c$525$4$158 ==.
                                   3170 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:525: debounce_count = counts;
      0008AC AD 23            [24] 3171 	mov	r5,_counts
      0008AE AE 24            [24] 3172 	mov	r6,(_counts + 1)
                           000824  3173 	C$final.c$526$4$158 ==.
                                   3174 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:526: while ( counts < debounce_count + 54);
      0008B0 74 36            [12] 3175 	mov	a,#0x36
      0008B2 2D               [12] 3176 	add	a,r5
      0008B3 FD               [12] 3177 	mov	r5,a
      0008B4 E4               [12] 3178 	clr	a
      0008B5 3E               [12] 3179 	addc	a,r6
      0008B6 FE               [12] 3180 	mov	r6,a
      0008B7                       3181 00137$:
      0008B7 8D 02            [24] 3182 	mov	ar2,r5
      0008B9 8E 04            [24] 3183 	mov	ar4,r6
      0008BB C3               [12] 3184 	clr	c
      0008BC E5 23            [12] 3185 	mov	a,_counts
      0008BE 9A               [12] 3186 	subb	a,r2
      0008BF E5 24            [12] 3187 	mov	a,(_counts + 1)
      0008C1 9C               [12] 3188 	subb	a,r4
      0008C2 40 F3            [24] 3189 	jc	00137$
                           000838  3190 	C$final.c$527$4$158 ==.
                                   3191 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:527: PoT = read_AD_input(0);
      0008C4 75 82 00         [24] 3192 	mov	dpl,#0x00
      0008C7 C0 03            [24] 3193 	push	ar3
      0008C9 C0 00            [24] 3194 	push	ar0
      0008CB 12 02 2B         [24] 3195 	lcall	_read_AD_input
      0008CE AF 82            [24] 3196 	mov	r7,dpl
      0008D0 D0 00            [24] 3197 	pop	ar0
      0008D2 D0 03            [24] 3198 	pop	ar3
                           000848  3199 	C$final.c$528$4$158 ==.
                                   3200 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:528: BILED0 = 1;// BILED RED
      0008D4 D2 A4            [12] 3201 	setb	_BILED0
                           00084A  3202 	C$final.c$529$4$158 ==.
                                   3203 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:529: BILED1 = 0;
      0008D6 C2 A5            [12] 3204 	clr	_BILED1
                           00084C  3205 	C$final.c$530$4$158 ==.
                                   3206 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:530: temporarycount = counts;
      0008D8 AD 23            [24] 3207 	mov	r5,_counts
      0008DA AE 24            [24] 3208 	mov	r6,(_counts + 1)
                           000850  3209 	C$final.c$531$4$158 ==.
                                   3210 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:531: printf("changing bits\n");
      0008DC C0 07            [24] 3211 	push	ar7
      0008DE C0 06            [24] 3212 	push	ar6
      0008E0 C0 05            [24] 3213 	push	ar5
      0008E2 C0 03            [24] 3214 	push	ar3
      0008E4 C0 00            [24] 3215 	push	ar0
      0008E6 74 3C            [12] 3216 	mov	a,#___str_14
      0008E8 C0 E0            [24] 3217 	push	acc
      0008EA 74 14            [12] 3218 	mov	a,#(___str_14 >> 8)
      0008EC C0 E0            [24] 3219 	push	acc
      0008EE 74 80            [12] 3220 	mov	a,#0x80
      0008F0 C0 E0            [24] 3221 	push	acc
      0008F2 12 0C CC         [24] 3222 	lcall	_printf
      0008F5 15 81            [12] 3223 	dec	sp
      0008F7 15 81            [12] 3224 	dec	sp
      0008F9 15 81            [12] 3225 	dec	sp
      0008FB D0 00            [24] 3226 	pop	ar0
      0008FD D0 03            [24] 3227 	pop	ar3
      0008FF D0 05            [24] 3228 	pop	ar5
      000901 D0 06            [24] 3229 	pop	ar6
      000903 D0 07            [24] 3230 	pop	ar7
                           000879  3231 	C$final.c$532$4$158 ==.
                                   3232 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:532: if (PoT < 17) 
      000905 BF 11 00         [24] 3233 	cjne	r7,#0x11,00383$
      000908                       3234 00383$:
      000908 50 2C            [24] 3235 	jnc	00183$
                           00087E  3236 	C$final.c$534$5$159 ==.
                                   3237 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:534: input^=1<<0;
      00090A 63 36 01         [24] 3238 	xrl	_mode3_input_1_143,#0x01
                           000881  3239 	C$final.c$535$5$159 ==.
                                   3240 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:535: while ( counts < temporarycount + 337)
      00090D 74 51            [12] 3241 	mov	a,#0x51
      00090F 2D               [12] 3242 	add	a,r5
      000910 FA               [12] 3243 	mov	r2,a
      000911 74 01            [12] 3244 	mov	a,#0x01
      000913 3E               [12] 3245 	addc	a,r6
      000914 FC               [12] 3246 	mov	r4,a
      000915                       3247 00140$:
      000915 C0 00            [24] 3248 	push	ar0
      000917 C0 03            [24] 3249 	push	ar3
      000919 8A 01            [24] 3250 	mov	ar1,r2
      00091B 8C 03            [24] 3251 	mov	ar3,r4
      00091D C3               [12] 3252 	clr	c
      00091E E5 23            [12] 3253 	mov	a,_counts
      000920 99               [12] 3254 	subb	a,r1
      000921 E5 24            [12] 3255 	mov	a,(_counts + 1)
      000923 9B               [12] 3256 	subb	a,r3
      000924 D0 03            [24] 3257 	pop	ar3
      000926 D0 00            [24] 3258 	pop	ar0
      000928 40 03            [24] 3259 	jc	00385$
      00092A 02 0A 6F         [24] 3260 	ljmp	00186$
      00092D                       3261 00385$:
                           0008A1  3262 	C$final.c$537$1$143 ==.
                                   3263 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:537: P3 |= 0xFF;
      00092D E5 B0            [12] 3264 	mov	a,_P3
      00092F 75 B0 FF         [24] 3265 	mov	_P3,#0xff
                           0008A6  3266 	C$final.c$538$6$160 ==.
                                   3267 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:538: LED0=0;
      000932 C2 B7            [12] 3268 	clr	_LED0
      000934 80 DF            [24] 3269 	sjmp	00140$
      000936                       3270 00183$:
                           0008AA  3271 	C$final.c$541$4$158 ==.
                                   3272 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:541: else if (PoT < 34) 
      000936 BF 22 00         [24] 3273 	cjne	r7,#0x22,00386$
      000939                       3274 00386$:
      000939 50 2C            [24] 3275 	jnc	00180$
                           0008AF  3276 	C$final.c$543$5$161 ==.
                                   3277 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:543: input^=1<<1;
      00093B 63 36 02         [24] 3278 	xrl	_mode3_input_1_143,#0x02
                           0008B2  3279 	C$final.c$544$5$161 ==.
                                   3280 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:544: while ( counts < temporarycount + 337)
      00093E 74 51            [12] 3281 	mov	a,#0x51
      000940 2D               [12] 3282 	add	a,r5
      000941 FA               [12] 3283 	mov	r2,a
      000942 74 01            [12] 3284 	mov	a,#0x01
      000944 3E               [12] 3285 	addc	a,r6
      000945 FC               [12] 3286 	mov	r4,a
      000946                       3287 00143$:
      000946 C0 00            [24] 3288 	push	ar0
      000948 C0 03            [24] 3289 	push	ar3
      00094A 8A 01            [24] 3290 	mov	ar1,r2
      00094C 8C 03            [24] 3291 	mov	ar3,r4
      00094E C3               [12] 3292 	clr	c
      00094F E5 23            [12] 3293 	mov	a,_counts
      000951 99               [12] 3294 	subb	a,r1
      000952 E5 24            [12] 3295 	mov	a,(_counts + 1)
      000954 9B               [12] 3296 	subb	a,r3
      000955 D0 03            [24] 3297 	pop	ar3
      000957 D0 00            [24] 3298 	pop	ar0
      000959 40 03            [24] 3299 	jc	00388$
      00095B 02 0A 6F         [24] 3300 	ljmp	00186$
      00095E                       3301 00388$:
                           0008D2  3302 	C$final.c$546$1$143 ==.
                                   3303 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:546: P3 |= 0xFF;
      00095E E5 B0            [12] 3304 	mov	a,_P3
      000960 75 B0 FF         [24] 3305 	mov	_P3,#0xff
                           0008D7  3306 	C$final.c$547$6$162 ==.
                                   3307 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:547: LED1=0;
      000963 C2 B6            [12] 3308 	clr	_LED1
      000965 80 DF            [24] 3309 	sjmp	00143$
      000967                       3310 00180$:
                           0008DB  3311 	C$final.c$550$4$158 ==.
                                   3312 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:550: else if(PoT < 51) 
      000967 BF 33 00         [24] 3313 	cjne	r7,#0x33,00389$
      00096A                       3314 00389$:
      00096A 50 2C            [24] 3315 	jnc	00177$
                           0008E0  3316 	C$final.c$552$5$163 ==.
                                   3317 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:552: input^=1<<2;
      00096C 63 36 04         [24] 3318 	xrl	_mode3_input_1_143,#0x04
                           0008E3  3319 	C$final.c$553$5$163 ==.
                                   3320 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:553: while ( counts < temporarycount + 337)
      00096F 74 51            [12] 3321 	mov	a,#0x51
      000971 2D               [12] 3322 	add	a,r5
      000972 FA               [12] 3323 	mov	r2,a
      000973 74 01            [12] 3324 	mov	a,#0x01
      000975 3E               [12] 3325 	addc	a,r6
      000976 FC               [12] 3326 	mov	r4,a
      000977                       3327 00146$:
      000977 C0 00            [24] 3328 	push	ar0
      000979 C0 03            [24] 3329 	push	ar3
      00097B 8A 01            [24] 3330 	mov	ar1,r2
      00097D 8C 03            [24] 3331 	mov	ar3,r4
      00097F C3               [12] 3332 	clr	c
      000980 E5 23            [12] 3333 	mov	a,_counts
      000982 99               [12] 3334 	subb	a,r1
      000983 E5 24            [12] 3335 	mov	a,(_counts + 1)
      000985 9B               [12] 3336 	subb	a,r3
      000986 D0 03            [24] 3337 	pop	ar3
      000988 D0 00            [24] 3338 	pop	ar0
      00098A 40 03            [24] 3339 	jc	00391$
      00098C 02 0A 6F         [24] 3340 	ljmp	00186$
      00098F                       3341 00391$:
                           000903  3342 	C$final.c$555$1$143 ==.
                                   3343 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:555: P3 |= 0xFF;
      00098F E5 B0            [12] 3344 	mov	a,_P3
      000991 75 B0 FF         [24] 3345 	mov	_P3,#0xff
                           000908  3346 	C$final.c$556$6$164 ==.
                                   3347 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:556: LED2=0;
      000994 C2 B5            [12] 3348 	clr	_LED2
      000996 80 DF            [24] 3349 	sjmp	00146$
      000998                       3350 00177$:
                           00090C  3351 	C$final.c$559$4$158 ==.
                                   3352 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:559: else if(PoT < 68) 
      000998 BF 44 00         [24] 3353 	cjne	r7,#0x44,00392$
      00099B                       3354 00392$:
      00099B 50 2C            [24] 3355 	jnc	00174$
                           000911  3356 	C$final.c$561$5$165 ==.
                                   3357 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:561: input^=1<<3;
      00099D 63 36 08         [24] 3358 	xrl	_mode3_input_1_143,#0x08
                           000914  3359 	C$final.c$562$5$165 ==.
                                   3360 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:562: while ( counts < temporarycount + 337)
      0009A0 74 51            [12] 3361 	mov	a,#0x51
      0009A2 2D               [12] 3362 	add	a,r5
      0009A3 FA               [12] 3363 	mov	r2,a
      0009A4 74 01            [12] 3364 	mov	a,#0x01
      0009A6 3E               [12] 3365 	addc	a,r6
      0009A7 FC               [12] 3366 	mov	r4,a
      0009A8                       3367 00149$:
      0009A8 C0 00            [24] 3368 	push	ar0
      0009AA C0 03            [24] 3369 	push	ar3
      0009AC 8A 01            [24] 3370 	mov	ar1,r2
      0009AE 8C 03            [24] 3371 	mov	ar3,r4
      0009B0 C3               [12] 3372 	clr	c
      0009B1 E5 23            [12] 3373 	mov	a,_counts
      0009B3 99               [12] 3374 	subb	a,r1
      0009B4 E5 24            [12] 3375 	mov	a,(_counts + 1)
      0009B6 9B               [12] 3376 	subb	a,r3
      0009B7 D0 03            [24] 3377 	pop	ar3
      0009B9 D0 00            [24] 3378 	pop	ar0
      0009BB 40 03            [24] 3379 	jc	00394$
      0009BD 02 0A 6F         [24] 3380 	ljmp	00186$
      0009C0                       3381 00394$:
                           000934  3382 	C$final.c$564$1$143 ==.
                                   3383 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:564: P3 |= 0xFF;
      0009C0 E5 B0            [12] 3384 	mov	a,_P3
      0009C2 75 B0 FF         [24] 3385 	mov	_P3,#0xff
                           000939  3386 	C$final.c$565$6$166 ==.
                                   3387 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:565: LED3=0;
      0009C5 C2 B4            [12] 3388 	clr	_LED3
      0009C7 80 DF            [24] 3389 	sjmp	00149$
      0009C9                       3390 00174$:
                           00093D  3391 	C$final.c$568$4$158 ==.
                                   3392 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:568: else if(PoT < 85) 
      0009C9 BF 55 00         [24] 3393 	cjne	r7,#0x55,00395$
      0009CC                       3394 00395$:
      0009CC 50 2C            [24] 3395 	jnc	00171$
                           000942  3396 	C$final.c$570$5$167 ==.
                                   3397 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:570: input^=1<<4;
      0009CE 63 36 10         [24] 3398 	xrl	_mode3_input_1_143,#0x10
                           000945  3399 	C$final.c$571$5$167 ==.
                                   3400 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:571: while ( counts < temporarycount + 337)
      0009D1 74 51            [12] 3401 	mov	a,#0x51
      0009D3 2D               [12] 3402 	add	a,r5
      0009D4 FA               [12] 3403 	mov	r2,a
      0009D5 74 01            [12] 3404 	mov	a,#0x01
      0009D7 3E               [12] 3405 	addc	a,r6
      0009D8 FC               [12] 3406 	mov	r4,a
      0009D9                       3407 00152$:
      0009D9 C0 00            [24] 3408 	push	ar0
      0009DB C0 03            [24] 3409 	push	ar3
      0009DD 8A 01            [24] 3410 	mov	ar1,r2
      0009DF 8C 03            [24] 3411 	mov	ar3,r4
      0009E1 C3               [12] 3412 	clr	c
      0009E2 E5 23            [12] 3413 	mov	a,_counts
      0009E4 99               [12] 3414 	subb	a,r1
      0009E5 E5 24            [12] 3415 	mov	a,(_counts + 1)
      0009E7 9B               [12] 3416 	subb	a,r3
      0009E8 D0 03            [24] 3417 	pop	ar3
      0009EA D0 00            [24] 3418 	pop	ar0
      0009EC 40 03            [24] 3419 	jc	00397$
      0009EE 02 0A 6F         [24] 3420 	ljmp	00186$
      0009F1                       3421 00397$:
                           000965  3422 	C$final.c$573$1$143 ==.
                                   3423 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:573: P3 |= 0xFF;
      0009F1 E5 B0            [12] 3424 	mov	a,_P3
      0009F3 75 B0 FF         [24] 3425 	mov	_P3,#0xff
                           00096A  3426 	C$final.c$574$6$168 ==.
                                   3427 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:574: LED4=0;
      0009F6 C2 B3            [12] 3428 	clr	_LED4
      0009F8 80 DF            [24] 3429 	sjmp	00152$
      0009FA                       3430 00171$:
                           00096E  3431 	C$final.c$577$4$158 ==.
                                   3432 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:577: else if(PoT < 102)
      0009FA BF 66 00         [24] 3433 	cjne	r7,#0x66,00398$
      0009FD                       3434 00398$:
      0009FD 50 29            [24] 3435 	jnc	00168$
                           000973  3436 	C$final.c$579$5$169 ==.
                                   3437 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:579: input^=1<<5;
      0009FF 63 36 20         [24] 3438 	xrl	_mode3_input_1_143,#0x20
                           000976  3439 	C$final.c$580$5$169 ==.
                                   3440 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:580: while ( counts < temporarycount + 337)
      000A02 74 51            [12] 3441 	mov	a,#0x51
      000A04 2D               [12] 3442 	add	a,r5
      000A05 FA               [12] 3443 	mov	r2,a
      000A06 74 01            [12] 3444 	mov	a,#0x01
      000A08 3E               [12] 3445 	addc	a,r6
      000A09 FC               [12] 3446 	mov	r4,a
      000A0A                       3447 00155$:
      000A0A C0 00            [24] 3448 	push	ar0
      000A0C C0 03            [24] 3449 	push	ar3
      000A0E 8A 01            [24] 3450 	mov	ar1,r2
      000A10 8C 03            [24] 3451 	mov	ar3,r4
      000A12 C3               [12] 3452 	clr	c
      000A13 E5 23            [12] 3453 	mov	a,_counts
      000A15 99               [12] 3454 	subb	a,r1
      000A16 E5 24            [12] 3455 	mov	a,(_counts + 1)
      000A18 9B               [12] 3456 	subb	a,r3
      000A19 D0 03            [24] 3457 	pop	ar3
      000A1B D0 00            [24] 3458 	pop	ar0
      000A1D 50 50            [24] 3459 	jnc	00186$
                           000993  3460 	C$final.c$582$1$143 ==.
                                   3461 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:582: P3 |= 0xFF;
      000A1F E5 B0            [12] 3462 	mov	a,_P3
      000A21 75 B0 FF         [24] 3463 	mov	_P3,#0xff
                           000998  3464 	C$final.c$583$6$170 ==.
                                   3465 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:583: LED5=0;
      000A24 C2 B2            [12] 3466 	clr	_LED5
      000A26 80 E2            [24] 3467 	sjmp	00155$
      000A28                       3468 00168$:
                           00099C  3469 	C$final.c$586$4$158 ==.
                                   3470 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:586: else if(PoT < 119) 
      000A28 BF 77 00         [24] 3471 	cjne	r7,#0x77,00401$
      000A2B                       3472 00401$:
      000A2B 50 21            [24] 3473 	jnc	00165$
                           0009A1  3474 	C$final.c$588$5$171 ==.
                                   3475 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:588: input^=1<<6;
      000A2D 63 36 40         [24] 3476 	xrl	_mode3_input_1_143,#0x40
                           0009A4  3477 	C$final.c$589$5$171 ==.
                                   3478 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:589: while ( counts < temporarycount + 337)
      000A30 74 51            [12] 3479 	mov	a,#0x51
      000A32 2D               [12] 3480 	add	a,r5
      000A33 FC               [12] 3481 	mov	r4,a
      000A34 74 01            [12] 3482 	mov	a,#0x01
      000A36 3E               [12] 3483 	addc	a,r6
      000A37 FF               [12] 3484 	mov	r7,a
      000A38                       3485 00158$:
      000A38 8C 01            [24] 3486 	mov	ar1,r4
      000A3A 8F 02            [24] 3487 	mov	ar2,r7
      000A3C C3               [12] 3488 	clr	c
      000A3D E5 23            [12] 3489 	mov	a,_counts
      000A3F 99               [12] 3490 	subb	a,r1
      000A40 E5 24            [12] 3491 	mov	a,(_counts + 1)
      000A42 9A               [12] 3492 	subb	a,r2
      000A43 50 2A            [24] 3493 	jnc	00186$
                           0009B9  3494 	C$final.c$591$1$143 ==.
                                   3495 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:591: P3 |= 0xFF;
      000A45 E5 B0            [12] 3496 	mov	a,_P3
      000A47 75 B0 FF         [24] 3497 	mov	_P3,#0xff
                           0009BE  3498 	C$final.c$592$6$172 ==.
                                   3499 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:592: LED6=0;
      000A4A C2 B1            [12] 3500 	clr	_LED6
      000A4C 80 EA            [24] 3501 	sjmp	00158$
      000A4E                       3502 00165$:
                           0009C2  3503 	C$final.c$597$5$173 ==.
                                   3504 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:597: input^=1<<7;
      000A4E 63 36 80         [24] 3505 	xrl	_mode3_input_1_143,#0x80
                           0009C5  3506 	C$final.c$598$5$173 ==.
                                   3507 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:598: while ( counts < temporarycount + 337)
      000A51 74 51            [12] 3508 	mov	a,#0x51
      000A53 2D               [12] 3509 	add	a,r5
      000A54 FF               [12] 3510 	mov	r7,a
      000A55 74 01            [12] 3511 	mov	a,#0x01
      000A57 3E               [12] 3512 	addc	a,r6
      000A58 FE               [12] 3513 	mov	r6,a
      000A59                       3514 00161$:
      000A59 8F 04            [24] 3515 	mov	ar4,r7
      000A5B 8E 05            [24] 3516 	mov	ar5,r6
      000A5D C3               [12] 3517 	clr	c
      000A5E E5 23            [12] 3518 	mov	a,_counts
      000A60 9C               [12] 3519 	subb	a,r4
      000A61 E5 24            [12] 3520 	mov	a,(_counts + 1)
      000A63 9D               [12] 3521 	subb	a,r5
      000A64 50 09            [24] 3522 	jnc	00186$
                           0009DA  3523 	C$final.c$600$1$143 ==.
                                   3524 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:600: P3 |= 0xFF;
      000A66 E5 B0            [12] 3525 	mov	a,_P3
      000A68 75 B0 FF         [24] 3526 	mov	_P3,#0xff
                           0009DF  3527 	C$final.c$601$6$174 ==.
                                   3528 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:601: LED7=0;
      000A6B C2 B0            [12] 3529 	clr	_LED7
      000A6D 80 EA            [24] 3530 	sjmp	00161$
      000A6F                       3531 00186$:
                           0009E3  3532 	C$final.c$605$3$148 ==.
                                   3533 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:605: if (!PB2)
      000A6F 30 A3 03         [24] 3534 	jnb	_PB2,00405$
      000A72 02 07 2E         [24] 3535 	ljmp	00197$
      000A75                       3536 00405$:
                           0009E9  3537 	C$final.c$608$4$175 ==.
                                   3538 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:608: while ( counts < debounce_count + 54);
      000A75 74 36            [12] 3539 	mov	a,#0x36
      000A77 25 23            [12] 3540 	add	a,_counts
      000A79 FE               [12] 3541 	mov	r6,a
      000A7A E4               [12] 3542 	clr	a
      000A7B 35 24            [12] 3543 	addc	a,(_counts + 1)
      000A7D FF               [12] 3544 	mov	r7,a
      000A7E                       3545 00187$:
      000A7E 8E 04            [24] 3546 	mov	ar4,r6
      000A80 8F 05            [24] 3547 	mov	ar5,r7
      000A82 C3               [12] 3548 	clr	c
      000A83 E5 23            [12] 3549 	mov	a,_counts
      000A85 9C               [12] 3550 	subb	a,r4
      000A86 E5 24            [12] 3551 	mov	a,(_counts + 1)
      000A88 9D               [12] 3552 	subb	a,r5
      000A89 40 F3            [24] 3553 	jc	00187$
                           0009FF  3554 	C$final.c$609$4$175 ==.
                                   3555 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:609: mode =1; //toggle active display mode
      000A8B 75 3B 01         [24] 3556 	mov	_mode3_mode_1_143,#0x01
                           000A02  3557 	C$final.c$610$4$175 ==.
                                   3558 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:610: printf("mode switched\r");
      000A8E C0 03            [24] 3559 	push	ar3
      000A90 C0 00            [24] 3560 	push	ar0
      000A92 74 4B            [12] 3561 	mov	a,#___str_15
      000A94 C0 E0            [24] 3562 	push	acc
      000A96 74 14            [12] 3563 	mov	a,#(___str_15 >> 8)
      000A98 C0 E0            [24] 3564 	push	acc
      000A9A 74 80            [12] 3565 	mov	a,#0x80
      000A9C C0 E0            [24] 3566 	push	acc
      000A9E 12 0C CC         [24] 3567 	lcall	_printf
      000AA1 15 81            [12] 3568 	dec	sp
      000AA3 15 81            [12] 3569 	dec	sp
      000AA5 15 81            [12] 3570 	dec	sp
      000AA7 D0 00            [24] 3571 	pop	ar0
      000AA9 D0 03            [24] 3572 	pop	ar3
      000AAB 02 07 2E         [24] 3573 	ljmp	00197$
      000AAE                       3574 00199$:
                           000A22  3575 	C$final.c$616$1$143 ==.
                                   3576 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:616: if (var == input) 
      000AAE E5 36            [12] 3577 	mov	a,_mode3_input_1_143
      000AB0 B5 35 4F         [24] 3578 	cjne	a,_mode3_var_1_143,00203$
                           000A27  3579 	C$final.c$618$2$176 ==.
                                   3580 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:618: overflow = score_timer + 10125 - submit_timer;
      000AB3 74 8D            [12] 3581 	mov	a,#0x8d
      000AB5 25 37            [12] 3582 	add	a,_mode3_score_timer_1_143
      000AB7 FE               [12] 3583 	mov	r6,a
      000AB8 74 27            [12] 3584 	mov	a,#0x27
      000ABA 35 38            [12] 3585 	addc	a,(_mode3_score_timer_1_143 + 1)
      000ABC FF               [12] 3586 	mov	r7,a
      000ABD EE               [12] 3587 	mov	a,r6
      000ABE C3               [12] 3588 	clr	c
      000ABF 95 39            [12] 3589 	subb	a,_mode3_submit_timer_1_143
      000AC1 FE               [12] 3590 	mov	r6,a
      000AC2 EF               [12] 3591 	mov	a,r7
      000AC3 95 3A            [12] 3592 	subb	a,(_mode3_submit_timer_1_143 + 1)
      000AC5 FF               [12] 3593 	mov	r7,a
                           000A3A  3594 	C$final.c$619$1$143 ==.
                                   3595 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:619: score = overflow / 337;
      000AC6 75 0E 51         [24] 3596 	mov	__divsint_PARM_2,#0x51
      000AC9 75 0F 01         [24] 3597 	mov	(__divsint_PARM_2 + 1),#0x01
      000ACC 8E 82            [24] 3598 	mov	dpl,r6
      000ACE 8F 83            [24] 3599 	mov	dph,r7
      000AD0 C0 07            [24] 3600 	push	ar7
      000AD2 C0 06            [24] 3601 	push	ar6
      000AD4 12 13 19         [24] 3602 	lcall	__divsint
      000AD7 AC 82            [24] 3603 	mov	r4,dpl
      000AD9 AD 83            [24] 3604 	mov	r5,dph
      000ADB D0 06            [24] 3605 	pop	ar6
      000ADD D0 07            [24] 3606 	pop	ar7
                           000A53  3607 	C$final.c$620$2$176 ==.
                                   3608 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:620: printf("Answer correct! \n\t Overflows: %d Score: %d",overflow,score);
      000ADF C0 04            [24] 3609 	push	ar4
      000AE1 C0 05            [24] 3610 	push	ar5
      000AE3 C0 06            [24] 3611 	push	ar6
      000AE5 C0 07            [24] 3612 	push	ar7
      000AE7 74 5A            [12] 3613 	mov	a,#___str_16
      000AE9 C0 E0            [24] 3614 	push	acc
      000AEB 74 14            [12] 3615 	mov	a,#(___str_16 >> 8)
      000AED C0 E0            [24] 3616 	push	acc
      000AEF 74 80            [12] 3617 	mov	a,#0x80
      000AF1 C0 E0            [24] 3618 	push	acc
      000AF3 12 0C CC         [24] 3619 	lcall	_printf
      000AF6 E5 81            [12] 3620 	mov	a,sp
      000AF8 24 F9            [12] 3621 	add	a,#0xf9
      000AFA F5 81            [12] 3622 	mov	sp,a
                           000A70  3623 	C$final.c$623$2$176 ==.
                                   3624 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:623: BILED0 = 0;
      000AFC C2 A4            [12] 3625 	clr	_BILED0
                           000A72  3626 	C$final.c$624$2$176 ==.
                                   3627 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:624: BILED1 = 1;  //BILED GREEN INDICATE CONVERSION SUCCESS
      000AFE D2 A5            [12] 3628 	setb	_BILED1
      000B00 80 59            [24] 3629 	sjmp	00205$
      000B02                       3630 00203$:
                           000A76  3631 	C$final.c$627$1$143 ==.
                                   3632 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:627: else if(var != input)
      000B02 E5 36            [12] 3633 	mov	a,_mode3_input_1_143
      000B04 B5 35 02         [24] 3634 	cjne	a,_mode3_var_1_143,00409$
      000B07 80 52            [24] 3635 	sjmp	00205$
      000B09                       3636 00409$:
                           000A7D  3637 	C$final.c$629$2$177 ==.
                                   3638 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:629: overflow = score_timer + 10125 - submit_timer;
      000B09 74 8D            [12] 3639 	mov	a,#0x8d
      000B0B 25 37            [12] 3640 	add	a,_mode3_score_timer_1_143
      000B0D FC               [12] 3641 	mov	r4,a
      000B0E 74 27            [12] 3642 	mov	a,#0x27
      000B10 35 38            [12] 3643 	addc	a,(_mode3_score_timer_1_143 + 1)
      000B12 FD               [12] 3644 	mov	r5,a
      000B13 EC               [12] 3645 	mov	a,r4
      000B14 C3               [12] 3646 	clr	c
      000B15 95 39            [12] 3647 	subb	a,_mode3_submit_timer_1_143
      000B17 FE               [12] 3648 	mov	r6,a
      000B18 ED               [12] 3649 	mov	a,r5
      000B19 95 3A            [12] 3650 	subb	a,(_mode3_submit_timer_1_143 + 1)
      000B1B FF               [12] 3651 	mov	r7,a
                           000A90  3652 	C$final.c$631$2$177 ==.
                                   3653 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:631: printf("Answer Incorrect! \n\t Overflows: %d Score: %d\n",overflow,score);
      000B1C E4               [12] 3654 	clr	a
      000B1D C0 E0            [24] 3655 	push	acc
      000B1F C0 E0            [24] 3656 	push	acc
      000B21 C0 06            [24] 3657 	push	ar6
      000B23 C0 07            [24] 3658 	push	ar7
      000B25 74 85            [12] 3659 	mov	a,#___str_17
      000B27 C0 E0            [24] 3660 	push	acc
      000B29 74 14            [12] 3661 	mov	a,#(___str_17 >> 8)
      000B2B C0 E0            [24] 3662 	push	acc
      000B2D 74 80            [12] 3663 	mov	a,#0x80
      000B2F C0 E0            [24] 3664 	push	acc
      000B31 12 0C CC         [24] 3665 	lcall	_printf
      000B34 E5 81            [12] 3666 	mov	a,sp
      000B36 24 F9            [12] 3667 	add	a,#0xf9
      000B38 F5 81            [12] 3668 	mov	sp,a
                           000AAE  3669 	C$final.c$633$2$177 ==.
                                   3670 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:633: printf("%x",input);
      000B3A AE 36            [24] 3671 	mov	r6,_mode3_input_1_143
      000B3C 7F 00            [12] 3672 	mov	r7,#0x00
      000B3E C0 06            [24] 3673 	push	ar6
      000B40 C0 07            [24] 3674 	push	ar7
      000B42 74 B3            [12] 3675 	mov	a,#___str_18
      000B44 C0 E0            [24] 3676 	push	acc
      000B46 74 14            [12] 3677 	mov	a,#(___str_18 >> 8)
      000B48 C0 E0            [24] 3678 	push	acc
      000B4A 74 80            [12] 3679 	mov	a,#0x80
      000B4C C0 E0            [24] 3680 	push	acc
      000B4E 12 0C CC         [24] 3681 	lcall	_printf
      000B51 E5 81            [12] 3682 	mov	a,sp
      000B53 24 FB            [12] 3683 	add	a,#0xfb
      000B55 F5 81            [12] 3684 	mov	sp,a
                           000ACB  3685 	C$final.c$634$2$177 ==.
                                   3686 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:634: BILED0 = 1;
      000B57 D2 A4            [12] 3687 	setb	_BILED0
                           000ACD  3688 	C$final.c$635$2$177 ==.
                                   3689 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\test\final.c:635: BILED1 = 0;  //BILED RED INDICATE FAILURE
      000B59 C2 A5            [12] 3690 	clr	_BILED1
      000B5B                       3691 00205$:
                           000ACF  3692 	C$final.c$638$1$143 ==.
                           000ACF  3693 	XG$mode3$0$0 ==.
      000B5B 22               [24] 3694 	ret
                                   3695 	.area CSEG    (CODE)
                                   3696 	.area CONST   (CODE)
                           000000  3697 Ffinal$__str_0$0$0 == .
      001355                       3698 ___str_0:
      001355 6D 6F 64 65 31 20 73  3699 	.ascii "mode1 start"
             74 61 72 74
      001360 00                    3700 	.db 0x00
                           00000C  3701 Ffinal$__str_1$0$0 == .
      001361                       3702 ___str_1:
      001361 6D 6F 64 65 33 20 73  3703 	.ascii "mode3 start"
             74 61 72 74
      00136C 00                    3704 	.db 0x00
                           000018  3705 Ffinal$__str_2$0$0 == .
      00136D                       3706 ___str_2:
      00136D 0D                    3707 	.db 0x0d
      00136E 0A                    3708 	.db 0x0a
      00136F 50 31 3A 25 64 2C 50  3709 	.ascii "P1:%d,P2:%d"
             32 3A 25 64
      00137A 00                    3710 	.db 0x00
                           000026  3711 Ffinal$__str_3$0$0 == .
      00137B                       3712 ___str_3:
      00137B 50 6C 61 79 65 72 20  3713 	.ascii "Player 1 serving"
             31 20 73 65 72 76 69
             6E 67
      00138B 0D                    3714 	.db 0x0d
      00138C 0A                    3715 	.db 0x0a
      00138D 00                    3716 	.db 0x00
                           000039  3717 Ffinal$__str_4$0$0 == .
      00138E                       3718 ___str_4:
      00138E 50 6C 61 79 65 72 20  3719 	.ascii "Player 2 serving"
             32 20 73 65 72 76 69
             6E 67
      00139E 0D                    3720 	.db 0x0d
      00139F 0A                    3721 	.db 0x0a
      0013A0 00                    3722 	.db 0x00
                           00004C  3723 Ffinal$__str_5$0$0 == .
      0013A1                       3724 ___str_5:
      0013A1 53 74 61 72 74 69 6E  3725 	.ascii "Starting Ping Pong..."
             67 20 50 69 6E 67 20
             50 6F 6E 67 2E 2E 2E
      0013B6 0D                    3726 	.db 0x0d
      0013B7 0A                    3727 	.db 0x0a
      0013B8 00                    3728 	.db 0x00
                           000064  3729 Ffinal$__str_6$0$0 == .
      0013B9                       3730 ___str_6:
      0013B9 47 61 6D 65 20 4F 76  3731 	.ascii "Game Over, Final Score:%d-%d"
             65 72 2C 20 46 69 6E
             61 6C 20 53 63 6F 72
             65 3A 25 64 2D 25 64
      0013D5 0D                    3732 	.db 0x0d
      0013D6 0A                    3733 	.db 0x0a
      0013D7 00                    3734 	.db 0x00
                           000083  3735 Ffinal$__str_7$0$0 == .
      0013D8                       3736 ___str_7:
      0013D8 50 6C 61 79 65 72 20  3737 	.ascii "Player 1 Wins!"
             31 20 57 69 6E 73 21
      0013E6 0D                    3738 	.db 0x0d
      0013E7 0A                    3739 	.db 0x0a
      0013E8 00                    3740 	.db 0x00
                           000094  3741 Ffinal$__str_8$0$0 == .
      0013E9                       3742 ___str_8:
      0013E9 50 6C 61 79 65 72 20  3743 	.ascii "Player 2 Wins!"
             32 20 57 69 6E 73 21
      0013F7 0D                    3744 	.db 0x0d
      0013F8 0A                    3745 	.db 0x0a
      0013F9 00                    3746 	.db 0x00
                           0000A5  3747 Ffinal$__str_9$0$0 == .
      0013FA                       3748 ___str_9:
      0013FA 63 6F 6E 76 65 72 74  3749 	.ascii "convert number : 0x%x"
             20 6E 75 6D 62 65 72
             20 3A 20 30 78 25 78
      00140F 00                    3750 	.db 0x00
                           0000BB  3751 Ffinal$__str_10$0$0 == .
      001410                       3752 ___str_10:
      001410 6D 6F 64 65 31        3753 	.ascii "mode1"
      001415 0D                    3754 	.db 0x0d
      001416 00                    3755 	.db 0x00
                           0000C2  3756 Ffinal$__str_11$0$0 == .
      001417                       3757 ___str_11:
      001417 64 69 73 70 6C 61 79  3758 	.ascii "display user input"
             20 75 73 65 72 20 69
             6E 70 75 74
      001429 0A                    3759 	.db 0x0a
      00142A 00                    3760 	.db 0x00
                           0000D6  3761 Ffinal$__str_12$0$0 == .
      00142B                       3762 ___str_12:
      00142B 73 75 62 6D 69 74 65  3763 	.ascii "submite"
      001432 0A                    3764 	.db 0x0a
      001433 00                    3765 	.db 0x00
                           0000DF  3766 Ffinal$__str_13$0$0 == .
      001434                       3767 ___str_13:
      001434 6D 6F 64 65 30        3768 	.ascii "mode0"
      001439 0D                    3769 	.db 0x0d
      00143A 0A                    3770 	.db 0x0a
      00143B 00                    3771 	.db 0x00
                           0000E7  3772 Ffinal$__str_14$0$0 == .
      00143C                       3773 ___str_14:
      00143C 63 68 61 6E 67 69 6E  3774 	.ascii "changing bits"
             67 20 62 69 74 73
      001449 0A                    3775 	.db 0x0a
      00144A 00                    3776 	.db 0x00
                           0000F6  3777 Ffinal$__str_15$0$0 == .
      00144B                       3778 ___str_15:
      00144B 6D 6F 64 65 20 73 77  3779 	.ascii "mode switched"
             69 74 63 68 65 64
      001458 0D                    3780 	.db 0x0d
      001459 00                    3781 	.db 0x00
                           000105  3782 Ffinal$__str_16$0$0 == .
      00145A                       3783 ___str_16:
      00145A 41 6E 73 77 65 72 20  3784 	.ascii "Answer correct! "
             63 6F 72 72 65 63 74
             21 20
      00146A 0A                    3785 	.db 0x0a
      00146B 09                    3786 	.db 0x09
      00146C 20 4F 76 65 72 66 6C  3787 	.ascii " Overflows: %d Score: %d"
             6F 77 73 3A 20 25 64
             20 53 63 6F 72 65 3A
             20 25 64
      001484 00                    3788 	.db 0x00
                           000130  3789 Ffinal$__str_17$0$0 == .
      001485                       3790 ___str_17:
      001485 41 6E 73 77 65 72 20  3791 	.ascii "Answer Incorrect! "
             49 6E 63 6F 72 72 65
             63 74 21 20
      001497 0A                    3792 	.db 0x0a
      001498 09                    3793 	.db 0x09
      001499 20 4F 76 65 72 66 6C  3794 	.ascii " Overflows: %d Score: %d"
             6F 77 73 3A 20 25 64
             20 53 63 6F 72 65 3A
             20 25 64
      0014B1 0A                    3795 	.db 0x0a
      0014B2 00                    3796 	.db 0x00
                           00015E  3797 Ffinal$__str_18$0$0 == .
      0014B3                       3798 ___str_18:
      0014B3 25 78                 3799 	.ascii "%x"
      0014B5 00                    3800 	.db 0x00
                                   3801 	.area XINIT   (CODE)
                                   3802 	.area CABS    (ABS,CODE)
