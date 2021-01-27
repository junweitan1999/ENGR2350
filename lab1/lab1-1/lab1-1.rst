                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lab1_1
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _putchar
                                     13 	.globl _printf
                                     14 	.globl _getchar_nw
                                     15 	.globl _Sys_Init
                                     16 	.globl _UART0_Init
                                     17 	.globl _SYSCLK_Init
                                     18 	.globl _PB2
                                     19 	.globl _PB1
                                     20 	.globl _SS
                                     21 	.globl _Buzzer
                                     22 	.globl _BILED1
                                     23 	.globl _BILED0
                                     24 	.globl _LED0
                                     25 	.globl _SPIF
                                     26 	.globl _WCOL
                                     27 	.globl _MODF
                                     28 	.globl _RXOVRN
                                     29 	.globl _TXBSY
                                     30 	.globl _SLVSEL
                                     31 	.globl _MSTEN
                                     32 	.globl _SPIEN
                                     33 	.globl _AD0EN
                                     34 	.globl _ADCEN
                                     35 	.globl _AD0TM
                                     36 	.globl _ADCTM
                                     37 	.globl _AD0INT
                                     38 	.globl _ADCINT
                                     39 	.globl _AD0BUSY
                                     40 	.globl _ADBUSY
                                     41 	.globl _AD0CM1
                                     42 	.globl _ADSTM1
                                     43 	.globl _AD0CM0
                                     44 	.globl _ADSTM0
                                     45 	.globl _AD0WINT
                                     46 	.globl _ADWINT
                                     47 	.globl _AD0LJST
                                     48 	.globl _ADLJST
                                     49 	.globl _CF
                                     50 	.globl _CR
                                     51 	.globl _CCF4
                                     52 	.globl _CCF3
                                     53 	.globl _CCF2
                                     54 	.globl _CCF1
                                     55 	.globl _CCF0
                                     56 	.globl _CY
                                     57 	.globl _AC
                                     58 	.globl _F0
                                     59 	.globl _RS1
                                     60 	.globl _RS0
                                     61 	.globl _OV
                                     62 	.globl _F1
                                     63 	.globl _P
                                     64 	.globl _TF2
                                     65 	.globl _EXF2
                                     66 	.globl _RCLK
                                     67 	.globl _TCLK
                                     68 	.globl _EXEN2
                                     69 	.globl _TR2
                                     70 	.globl _CT2
                                     71 	.globl _CPRL2
                                     72 	.globl _BUSY
                                     73 	.globl _ENSMB
                                     74 	.globl _STA
                                     75 	.globl _STO
                                     76 	.globl _SI
                                     77 	.globl _AA
                                     78 	.globl _SMBFTE
                                     79 	.globl _SMBTOE
                                     80 	.globl _PT2
                                     81 	.globl _PS
                                     82 	.globl _PS0
                                     83 	.globl _PT1
                                     84 	.globl _PX1
                                     85 	.globl _PT0
                                     86 	.globl _PX0
                                     87 	.globl _P3_7
                                     88 	.globl _P3_6
                                     89 	.globl _P3_5
                                     90 	.globl _P3_4
                                     91 	.globl _P3_3
                                     92 	.globl _P3_2
                                     93 	.globl _P3_1
                                     94 	.globl _P3_0
                                     95 	.globl _EA
                                     96 	.globl _ET2
                                     97 	.globl _ES
                                     98 	.globl _ES0
                                     99 	.globl _ET1
                                    100 	.globl _EX1
                                    101 	.globl _ET0
                                    102 	.globl _EX0
                                    103 	.globl _P2_7
                                    104 	.globl _P2_6
                                    105 	.globl _P2_5
                                    106 	.globl _P2_4
                                    107 	.globl _P2_3
                                    108 	.globl _P2_2
                                    109 	.globl _P2_1
                                    110 	.globl _P2_0
                                    111 	.globl _S0MODE
                                    112 	.globl _SM00
                                    113 	.globl _SM0
                                    114 	.globl _SM10
                                    115 	.globl _SM1
                                    116 	.globl _MCE0
                                    117 	.globl _SM20
                                    118 	.globl _SM2
                                    119 	.globl _REN0
                                    120 	.globl _REN
                                    121 	.globl _TB80
                                    122 	.globl _TB8
                                    123 	.globl _RB80
                                    124 	.globl _RB8
                                    125 	.globl _TI0
                                    126 	.globl _TI
                                    127 	.globl _RI0
                                    128 	.globl _RI
                                    129 	.globl _P1_7
                                    130 	.globl _P1_6
                                    131 	.globl _P1_5
                                    132 	.globl _P1_4
                                    133 	.globl _P1_3
                                    134 	.globl _P1_2
                                    135 	.globl _P1_1
                                    136 	.globl _P1_0
                                    137 	.globl _TF1
                                    138 	.globl _TR1
                                    139 	.globl _TF0
                                    140 	.globl _TR0
                                    141 	.globl _IE1
                                    142 	.globl _IT1
                                    143 	.globl _IE0
                                    144 	.globl _IT0
                                    145 	.globl _P0_7
                                    146 	.globl _P0_6
                                    147 	.globl _P0_5
                                    148 	.globl _P0_4
                                    149 	.globl _P0_3
                                    150 	.globl _P0_2
                                    151 	.globl _P0_1
                                    152 	.globl _P0_0
                                    153 	.globl _PCA0CP4
                                    154 	.globl _PCA0CP3
                                    155 	.globl _PCA0CP2
                                    156 	.globl _PCA0CP1
                                    157 	.globl _PCA0CP0
                                    158 	.globl _PCA0
                                    159 	.globl _DAC1
                                    160 	.globl _DAC0
                                    161 	.globl _ADC0LT
                                    162 	.globl _ADC0GT
                                    163 	.globl _ADC0
                                    164 	.globl _RCAP4
                                    165 	.globl _TMR4
                                    166 	.globl _TMR3RL
                                    167 	.globl _TMR3
                                    168 	.globl _RCAP2
                                    169 	.globl _TMR2
                                    170 	.globl _TMR1
                                    171 	.globl _TMR0
                                    172 	.globl _WDTCN
                                    173 	.globl _PCA0CPH4
                                    174 	.globl _PCA0CPH3
                                    175 	.globl _PCA0CPH2
                                    176 	.globl _PCA0CPH1
                                    177 	.globl _PCA0CPH0
                                    178 	.globl _PCA0H
                                    179 	.globl _SPI0CN
                                    180 	.globl _EIP2
                                    181 	.globl _EIP1
                                    182 	.globl _TH4
                                    183 	.globl _TL4
                                    184 	.globl _SADDR1
                                    185 	.globl _SBUF1
                                    186 	.globl _SCON1
                                    187 	.globl _B
                                    188 	.globl _RSTSRC
                                    189 	.globl _PCA0CPL4
                                    190 	.globl _PCA0CPL3
                                    191 	.globl _PCA0CPL2
                                    192 	.globl _PCA0CPL1
                                    193 	.globl _PCA0CPL0
                                    194 	.globl _PCA0L
                                    195 	.globl _ADC0CN
                                    196 	.globl _EIE2
                                    197 	.globl _EIE1
                                    198 	.globl _RCAP4H
                                    199 	.globl _RCAP4L
                                    200 	.globl _XBR2
                                    201 	.globl _XBR1
                                    202 	.globl _XBR0
                                    203 	.globl _ACC
                                    204 	.globl _PCA0CPM4
                                    205 	.globl _PCA0CPM3
                                    206 	.globl _PCA0CPM2
                                    207 	.globl _PCA0CPM1
                                    208 	.globl _PCA0CPM0
                                    209 	.globl _PCA0MD
                                    210 	.globl _PCA0CN
                                    211 	.globl _DAC1CN
                                    212 	.globl _DAC1H
                                    213 	.globl _DAC1L
                                    214 	.globl _DAC0CN
                                    215 	.globl _DAC0H
                                    216 	.globl _DAC0L
                                    217 	.globl _REF0CN
                                    218 	.globl _PSW
                                    219 	.globl _SMB0CR
                                    220 	.globl _TH2
                                    221 	.globl _TL2
                                    222 	.globl _RCAP2H
                                    223 	.globl _RCAP2L
                                    224 	.globl _T4CON
                                    225 	.globl _T2CON
                                    226 	.globl _ADC0LTH
                                    227 	.globl _ADC0LTL
                                    228 	.globl _ADC0GTH
                                    229 	.globl _ADC0GTL
                                    230 	.globl _SMB0ADR
                                    231 	.globl _SMB0DAT
                                    232 	.globl _SMB0STA
                                    233 	.globl _SMB0CN
                                    234 	.globl _ADC0H
                                    235 	.globl _ADC0L
                                    236 	.globl _P1MDIN
                                    237 	.globl _ADC0CF
                                    238 	.globl _AMX0SL
                                    239 	.globl _AMX0CF
                                    240 	.globl _SADEN0
                                    241 	.globl _IP
                                    242 	.globl _FLACL
                                    243 	.globl _FLSCL
                                    244 	.globl _P74OUT
                                    245 	.globl _OSCICN
                                    246 	.globl _OSCXCN
                                    247 	.globl _P3
                                    248 	.globl __XPAGE
                                    249 	.globl _EMI0CN
                                    250 	.globl _SADEN1
                                    251 	.globl _P3IF
                                    252 	.globl _AMX1SL
                                    253 	.globl _ADC1CF
                                    254 	.globl _ADC1CN
                                    255 	.globl _SADDR0
                                    256 	.globl _IE
                                    257 	.globl _P3MDOUT
                                    258 	.globl _PRT3CF
                                    259 	.globl _P2MDOUT
                                    260 	.globl _PRT2CF
                                    261 	.globl _P1MDOUT
                                    262 	.globl _PRT1CF
                                    263 	.globl _P0MDOUT
                                    264 	.globl _PRT0CF
                                    265 	.globl _EMI0CF
                                    266 	.globl _EMI0TC
                                    267 	.globl _P2
                                    268 	.globl _CPT1CN
                                    269 	.globl _CPT0CN
                                    270 	.globl _SPI0CKR
                                    271 	.globl _ADC1
                                    272 	.globl _SPI0DAT
                                    273 	.globl _SPI0CFG
                                    274 	.globl _SBUF0
                                    275 	.globl _SBUF
                                    276 	.globl _SCON0
                                    277 	.globl _SCON
                                    278 	.globl _P7
                                    279 	.globl _TMR3H
                                    280 	.globl _TMR3L
                                    281 	.globl _TMR3RLH
                                    282 	.globl _TMR3RLL
                                    283 	.globl _TMR3CN
                                    284 	.globl _P1
                                    285 	.globl _PSCTL
                                    286 	.globl _CKCON
                                    287 	.globl _TH1
                                    288 	.globl _TH0
                                    289 	.globl _TL1
                                    290 	.globl _TL0
                                    291 	.globl _TMOD
                                    292 	.globl _TCON
                                    293 	.globl _PCON
                                    294 	.globl _P6
                                    295 	.globl _P5
                                    296 	.globl _P4
                                    297 	.globl _DPH
                                    298 	.globl _DPL
                                    299 	.globl _SP
                                    300 	.globl _P0
                                    301 	.globl _Port_Init
                                    302 	.globl _Set_outputs
                                    303 ;--------------------------------------------------------
                                    304 ; special function registers
                                    305 ;--------------------------------------------------------
                                    306 	.area RSEG    (ABS,DATA)
      000000                        307 	.org 0x0000
                           000080   308 G$P0$0$0 == 0x0080
                           000080   309 _P0	=	0x0080
                           000081   310 G$SP$0$0 == 0x0081
                           000081   311 _SP	=	0x0081
                           000082   312 G$DPL$0$0 == 0x0082
                           000082   313 _DPL	=	0x0082
                           000083   314 G$DPH$0$0 == 0x0083
                           000083   315 _DPH	=	0x0083
                           000084   316 G$P4$0$0 == 0x0084
                           000084   317 _P4	=	0x0084
                           000085   318 G$P5$0$0 == 0x0085
                           000085   319 _P5	=	0x0085
                           000086   320 G$P6$0$0 == 0x0086
                           000086   321 _P6	=	0x0086
                           000087   322 G$PCON$0$0 == 0x0087
                           000087   323 _PCON	=	0x0087
                           000088   324 G$TCON$0$0 == 0x0088
                           000088   325 _TCON	=	0x0088
                           000089   326 G$TMOD$0$0 == 0x0089
                           000089   327 _TMOD	=	0x0089
                           00008A   328 G$TL0$0$0 == 0x008a
                           00008A   329 _TL0	=	0x008a
                           00008B   330 G$TL1$0$0 == 0x008b
                           00008B   331 _TL1	=	0x008b
                           00008C   332 G$TH0$0$0 == 0x008c
                           00008C   333 _TH0	=	0x008c
                           00008D   334 G$TH1$0$0 == 0x008d
                           00008D   335 _TH1	=	0x008d
                           00008E   336 G$CKCON$0$0 == 0x008e
                           00008E   337 _CKCON	=	0x008e
                           00008F   338 G$PSCTL$0$0 == 0x008f
                           00008F   339 _PSCTL	=	0x008f
                           000090   340 G$P1$0$0 == 0x0090
                           000090   341 _P1	=	0x0090
                           000091   342 G$TMR3CN$0$0 == 0x0091
                           000091   343 _TMR3CN	=	0x0091
                           000092   344 G$TMR3RLL$0$0 == 0x0092
                           000092   345 _TMR3RLL	=	0x0092
                           000093   346 G$TMR3RLH$0$0 == 0x0093
                           000093   347 _TMR3RLH	=	0x0093
                           000094   348 G$TMR3L$0$0 == 0x0094
                           000094   349 _TMR3L	=	0x0094
                           000095   350 G$TMR3H$0$0 == 0x0095
                           000095   351 _TMR3H	=	0x0095
                           000096   352 G$P7$0$0 == 0x0096
                           000096   353 _P7	=	0x0096
                           000098   354 G$SCON$0$0 == 0x0098
                           000098   355 _SCON	=	0x0098
                           000098   356 G$SCON0$0$0 == 0x0098
                           000098   357 _SCON0	=	0x0098
                           000099   358 G$SBUF$0$0 == 0x0099
                           000099   359 _SBUF	=	0x0099
                           000099   360 G$SBUF0$0$0 == 0x0099
                           000099   361 _SBUF0	=	0x0099
                           00009A   362 G$SPI0CFG$0$0 == 0x009a
                           00009A   363 _SPI0CFG	=	0x009a
                           00009B   364 G$SPI0DAT$0$0 == 0x009b
                           00009B   365 _SPI0DAT	=	0x009b
                           00009C   366 G$ADC1$0$0 == 0x009c
                           00009C   367 _ADC1	=	0x009c
                           00009D   368 G$SPI0CKR$0$0 == 0x009d
                           00009D   369 _SPI0CKR	=	0x009d
                           00009E   370 G$CPT0CN$0$0 == 0x009e
                           00009E   371 _CPT0CN	=	0x009e
                           00009F   372 G$CPT1CN$0$0 == 0x009f
                           00009F   373 _CPT1CN	=	0x009f
                           0000A0   374 G$P2$0$0 == 0x00a0
                           0000A0   375 _P2	=	0x00a0
                           0000A1   376 G$EMI0TC$0$0 == 0x00a1
                           0000A1   377 _EMI0TC	=	0x00a1
                           0000A3   378 G$EMI0CF$0$0 == 0x00a3
                           0000A3   379 _EMI0CF	=	0x00a3
                           0000A4   380 G$PRT0CF$0$0 == 0x00a4
                           0000A4   381 _PRT0CF	=	0x00a4
                           0000A4   382 G$P0MDOUT$0$0 == 0x00a4
                           0000A4   383 _P0MDOUT	=	0x00a4
                           0000A5   384 G$PRT1CF$0$0 == 0x00a5
                           0000A5   385 _PRT1CF	=	0x00a5
                           0000A5   386 G$P1MDOUT$0$0 == 0x00a5
                           0000A5   387 _P1MDOUT	=	0x00a5
                           0000A6   388 G$PRT2CF$0$0 == 0x00a6
                           0000A6   389 _PRT2CF	=	0x00a6
                           0000A6   390 G$P2MDOUT$0$0 == 0x00a6
                           0000A6   391 _P2MDOUT	=	0x00a6
                           0000A7   392 G$PRT3CF$0$0 == 0x00a7
                           0000A7   393 _PRT3CF	=	0x00a7
                           0000A7   394 G$P3MDOUT$0$0 == 0x00a7
                           0000A7   395 _P3MDOUT	=	0x00a7
                           0000A8   396 G$IE$0$0 == 0x00a8
                           0000A8   397 _IE	=	0x00a8
                           0000A9   398 G$SADDR0$0$0 == 0x00a9
                           0000A9   399 _SADDR0	=	0x00a9
                           0000AA   400 G$ADC1CN$0$0 == 0x00aa
                           0000AA   401 _ADC1CN	=	0x00aa
                           0000AB   402 G$ADC1CF$0$0 == 0x00ab
                           0000AB   403 _ADC1CF	=	0x00ab
                           0000AC   404 G$AMX1SL$0$0 == 0x00ac
                           0000AC   405 _AMX1SL	=	0x00ac
                           0000AD   406 G$P3IF$0$0 == 0x00ad
                           0000AD   407 _P3IF	=	0x00ad
                           0000AE   408 G$SADEN1$0$0 == 0x00ae
                           0000AE   409 _SADEN1	=	0x00ae
                           0000AF   410 G$EMI0CN$0$0 == 0x00af
                           0000AF   411 _EMI0CN	=	0x00af
                           0000AF   412 G$_XPAGE$0$0 == 0x00af
                           0000AF   413 __XPAGE	=	0x00af
                           0000B0   414 G$P3$0$0 == 0x00b0
                           0000B0   415 _P3	=	0x00b0
                           0000B1   416 G$OSCXCN$0$0 == 0x00b1
                           0000B1   417 _OSCXCN	=	0x00b1
                           0000B2   418 G$OSCICN$0$0 == 0x00b2
                           0000B2   419 _OSCICN	=	0x00b2
                           0000B5   420 G$P74OUT$0$0 == 0x00b5
                           0000B5   421 _P74OUT	=	0x00b5
                           0000B6   422 G$FLSCL$0$0 == 0x00b6
                           0000B6   423 _FLSCL	=	0x00b6
                           0000B7   424 G$FLACL$0$0 == 0x00b7
                           0000B7   425 _FLACL	=	0x00b7
                           0000B8   426 G$IP$0$0 == 0x00b8
                           0000B8   427 _IP	=	0x00b8
                           0000B9   428 G$SADEN0$0$0 == 0x00b9
                           0000B9   429 _SADEN0	=	0x00b9
                           0000BA   430 G$AMX0CF$0$0 == 0x00ba
                           0000BA   431 _AMX0CF	=	0x00ba
                           0000BB   432 G$AMX0SL$0$0 == 0x00bb
                           0000BB   433 _AMX0SL	=	0x00bb
                           0000BC   434 G$ADC0CF$0$0 == 0x00bc
                           0000BC   435 _ADC0CF	=	0x00bc
                           0000BD   436 G$P1MDIN$0$0 == 0x00bd
                           0000BD   437 _P1MDIN	=	0x00bd
                           0000BE   438 G$ADC0L$0$0 == 0x00be
                           0000BE   439 _ADC0L	=	0x00be
                           0000BF   440 G$ADC0H$0$0 == 0x00bf
                           0000BF   441 _ADC0H	=	0x00bf
                           0000C0   442 G$SMB0CN$0$0 == 0x00c0
                           0000C0   443 _SMB0CN	=	0x00c0
                           0000C1   444 G$SMB0STA$0$0 == 0x00c1
                           0000C1   445 _SMB0STA	=	0x00c1
                           0000C2   446 G$SMB0DAT$0$0 == 0x00c2
                           0000C2   447 _SMB0DAT	=	0x00c2
                           0000C3   448 G$SMB0ADR$0$0 == 0x00c3
                           0000C3   449 _SMB0ADR	=	0x00c3
                           0000C4   450 G$ADC0GTL$0$0 == 0x00c4
                           0000C4   451 _ADC0GTL	=	0x00c4
                           0000C5   452 G$ADC0GTH$0$0 == 0x00c5
                           0000C5   453 _ADC0GTH	=	0x00c5
                           0000C6   454 G$ADC0LTL$0$0 == 0x00c6
                           0000C6   455 _ADC0LTL	=	0x00c6
                           0000C7   456 G$ADC0LTH$0$0 == 0x00c7
                           0000C7   457 _ADC0LTH	=	0x00c7
                           0000C8   458 G$T2CON$0$0 == 0x00c8
                           0000C8   459 _T2CON	=	0x00c8
                           0000C9   460 G$T4CON$0$0 == 0x00c9
                           0000C9   461 _T4CON	=	0x00c9
                           0000CA   462 G$RCAP2L$0$0 == 0x00ca
                           0000CA   463 _RCAP2L	=	0x00ca
                           0000CB   464 G$RCAP2H$0$0 == 0x00cb
                           0000CB   465 _RCAP2H	=	0x00cb
                           0000CC   466 G$TL2$0$0 == 0x00cc
                           0000CC   467 _TL2	=	0x00cc
                           0000CD   468 G$TH2$0$0 == 0x00cd
                           0000CD   469 _TH2	=	0x00cd
                           0000CF   470 G$SMB0CR$0$0 == 0x00cf
                           0000CF   471 _SMB0CR	=	0x00cf
                           0000D0   472 G$PSW$0$0 == 0x00d0
                           0000D0   473 _PSW	=	0x00d0
                           0000D1   474 G$REF0CN$0$0 == 0x00d1
                           0000D1   475 _REF0CN	=	0x00d1
                           0000D2   476 G$DAC0L$0$0 == 0x00d2
                           0000D2   477 _DAC0L	=	0x00d2
                           0000D3   478 G$DAC0H$0$0 == 0x00d3
                           0000D3   479 _DAC0H	=	0x00d3
                           0000D4   480 G$DAC0CN$0$0 == 0x00d4
                           0000D4   481 _DAC0CN	=	0x00d4
                           0000D5   482 G$DAC1L$0$0 == 0x00d5
                           0000D5   483 _DAC1L	=	0x00d5
                           0000D6   484 G$DAC1H$0$0 == 0x00d6
                           0000D6   485 _DAC1H	=	0x00d6
                           0000D7   486 G$DAC1CN$0$0 == 0x00d7
                           0000D7   487 _DAC1CN	=	0x00d7
                           0000D8   488 G$PCA0CN$0$0 == 0x00d8
                           0000D8   489 _PCA0CN	=	0x00d8
                           0000D9   490 G$PCA0MD$0$0 == 0x00d9
                           0000D9   491 _PCA0MD	=	0x00d9
                           0000DA   492 G$PCA0CPM0$0$0 == 0x00da
                           0000DA   493 _PCA0CPM0	=	0x00da
                           0000DB   494 G$PCA0CPM1$0$0 == 0x00db
                           0000DB   495 _PCA0CPM1	=	0x00db
                           0000DC   496 G$PCA0CPM2$0$0 == 0x00dc
                           0000DC   497 _PCA0CPM2	=	0x00dc
                           0000DD   498 G$PCA0CPM3$0$0 == 0x00dd
                           0000DD   499 _PCA0CPM3	=	0x00dd
                           0000DE   500 G$PCA0CPM4$0$0 == 0x00de
                           0000DE   501 _PCA0CPM4	=	0x00de
                           0000E0   502 G$ACC$0$0 == 0x00e0
                           0000E0   503 _ACC	=	0x00e0
                           0000E1   504 G$XBR0$0$0 == 0x00e1
                           0000E1   505 _XBR0	=	0x00e1
                           0000E2   506 G$XBR1$0$0 == 0x00e2
                           0000E2   507 _XBR1	=	0x00e2
                           0000E3   508 G$XBR2$0$0 == 0x00e3
                           0000E3   509 _XBR2	=	0x00e3
                           0000E4   510 G$RCAP4L$0$0 == 0x00e4
                           0000E4   511 _RCAP4L	=	0x00e4
                           0000E5   512 G$RCAP4H$0$0 == 0x00e5
                           0000E5   513 _RCAP4H	=	0x00e5
                           0000E6   514 G$EIE1$0$0 == 0x00e6
                           0000E6   515 _EIE1	=	0x00e6
                           0000E7   516 G$EIE2$0$0 == 0x00e7
                           0000E7   517 _EIE2	=	0x00e7
                           0000E8   518 G$ADC0CN$0$0 == 0x00e8
                           0000E8   519 _ADC0CN	=	0x00e8
                           0000E9   520 G$PCA0L$0$0 == 0x00e9
                           0000E9   521 _PCA0L	=	0x00e9
                           0000EA   522 G$PCA0CPL0$0$0 == 0x00ea
                           0000EA   523 _PCA0CPL0	=	0x00ea
                           0000EB   524 G$PCA0CPL1$0$0 == 0x00eb
                           0000EB   525 _PCA0CPL1	=	0x00eb
                           0000EC   526 G$PCA0CPL2$0$0 == 0x00ec
                           0000EC   527 _PCA0CPL2	=	0x00ec
                           0000ED   528 G$PCA0CPL3$0$0 == 0x00ed
                           0000ED   529 _PCA0CPL3	=	0x00ed
                           0000EE   530 G$PCA0CPL4$0$0 == 0x00ee
                           0000EE   531 _PCA0CPL4	=	0x00ee
                           0000EF   532 G$RSTSRC$0$0 == 0x00ef
                           0000EF   533 _RSTSRC	=	0x00ef
                           0000F0   534 G$B$0$0 == 0x00f0
                           0000F0   535 _B	=	0x00f0
                           0000F1   536 G$SCON1$0$0 == 0x00f1
                           0000F1   537 _SCON1	=	0x00f1
                           0000F2   538 G$SBUF1$0$0 == 0x00f2
                           0000F2   539 _SBUF1	=	0x00f2
                           0000F3   540 G$SADDR1$0$0 == 0x00f3
                           0000F3   541 _SADDR1	=	0x00f3
                           0000F4   542 G$TL4$0$0 == 0x00f4
                           0000F4   543 _TL4	=	0x00f4
                           0000F5   544 G$TH4$0$0 == 0x00f5
                           0000F5   545 _TH4	=	0x00f5
                           0000F6   546 G$EIP1$0$0 == 0x00f6
                           0000F6   547 _EIP1	=	0x00f6
                           0000F7   548 G$EIP2$0$0 == 0x00f7
                           0000F7   549 _EIP2	=	0x00f7
                           0000F8   550 G$SPI0CN$0$0 == 0x00f8
                           0000F8   551 _SPI0CN	=	0x00f8
                           0000F9   552 G$PCA0H$0$0 == 0x00f9
                           0000F9   553 _PCA0H	=	0x00f9
                           0000FA   554 G$PCA0CPH0$0$0 == 0x00fa
                           0000FA   555 _PCA0CPH0	=	0x00fa
                           0000FB   556 G$PCA0CPH1$0$0 == 0x00fb
                           0000FB   557 _PCA0CPH1	=	0x00fb
                           0000FC   558 G$PCA0CPH2$0$0 == 0x00fc
                           0000FC   559 _PCA0CPH2	=	0x00fc
                           0000FD   560 G$PCA0CPH3$0$0 == 0x00fd
                           0000FD   561 _PCA0CPH3	=	0x00fd
                           0000FE   562 G$PCA0CPH4$0$0 == 0x00fe
                           0000FE   563 _PCA0CPH4	=	0x00fe
                           0000FF   564 G$WDTCN$0$0 == 0x00ff
                           0000FF   565 _WDTCN	=	0x00ff
                           008C8A   566 G$TMR0$0$0 == 0x8c8a
                           008C8A   567 _TMR0	=	0x8c8a
                           008D8B   568 G$TMR1$0$0 == 0x8d8b
                           008D8B   569 _TMR1	=	0x8d8b
                           00CDCC   570 G$TMR2$0$0 == 0xcdcc
                           00CDCC   571 _TMR2	=	0xcdcc
                           00CBCA   572 G$RCAP2$0$0 == 0xcbca
                           00CBCA   573 _RCAP2	=	0xcbca
                           009594   574 G$TMR3$0$0 == 0x9594
                           009594   575 _TMR3	=	0x9594
                           009392   576 G$TMR3RL$0$0 == 0x9392
                           009392   577 _TMR3RL	=	0x9392
                           00F5F4   578 G$TMR4$0$0 == 0xf5f4
                           00F5F4   579 _TMR4	=	0xf5f4
                           00E5E4   580 G$RCAP4$0$0 == 0xe5e4
                           00E5E4   581 _RCAP4	=	0xe5e4
                           00BFBE   582 G$ADC0$0$0 == 0xbfbe
                           00BFBE   583 _ADC0	=	0xbfbe
                           00C5C4   584 G$ADC0GT$0$0 == 0xc5c4
                           00C5C4   585 _ADC0GT	=	0xc5c4
                           00C7C6   586 G$ADC0LT$0$0 == 0xc7c6
                           00C7C6   587 _ADC0LT	=	0xc7c6
                           00D3D2   588 G$DAC0$0$0 == 0xd3d2
                           00D3D2   589 _DAC0	=	0xd3d2
                           00D6D5   590 G$DAC1$0$0 == 0xd6d5
                           00D6D5   591 _DAC1	=	0xd6d5
                           00F9E9   592 G$PCA0$0$0 == 0xf9e9
                           00F9E9   593 _PCA0	=	0xf9e9
                           00FAEA   594 G$PCA0CP0$0$0 == 0xfaea
                           00FAEA   595 _PCA0CP0	=	0xfaea
                           00FBEB   596 G$PCA0CP1$0$0 == 0xfbeb
                           00FBEB   597 _PCA0CP1	=	0xfbeb
                           00FCEC   598 G$PCA0CP2$0$0 == 0xfcec
                           00FCEC   599 _PCA0CP2	=	0xfcec
                           00FDED   600 G$PCA0CP3$0$0 == 0xfded
                           00FDED   601 _PCA0CP3	=	0xfded
                           00FEEE   602 G$PCA0CP4$0$0 == 0xfeee
                           00FEEE   603 _PCA0CP4	=	0xfeee
                                    604 ;--------------------------------------------------------
                                    605 ; special function bits
                                    606 ;--------------------------------------------------------
                                    607 	.area RSEG    (ABS,DATA)
      000000                        608 	.org 0x0000
                           000080   609 G$P0_0$0$0 == 0x0080
                           000080   610 _P0_0	=	0x0080
                           000081   611 G$P0_1$0$0 == 0x0081
                           000081   612 _P0_1	=	0x0081
                           000082   613 G$P0_2$0$0 == 0x0082
                           000082   614 _P0_2	=	0x0082
                           000083   615 G$P0_3$0$0 == 0x0083
                           000083   616 _P0_3	=	0x0083
                           000084   617 G$P0_4$0$0 == 0x0084
                           000084   618 _P0_4	=	0x0084
                           000085   619 G$P0_5$0$0 == 0x0085
                           000085   620 _P0_5	=	0x0085
                           000086   621 G$P0_6$0$0 == 0x0086
                           000086   622 _P0_6	=	0x0086
                           000087   623 G$P0_7$0$0 == 0x0087
                           000087   624 _P0_7	=	0x0087
                           000088   625 G$IT0$0$0 == 0x0088
                           000088   626 _IT0	=	0x0088
                           000089   627 G$IE0$0$0 == 0x0089
                           000089   628 _IE0	=	0x0089
                           00008A   629 G$IT1$0$0 == 0x008a
                           00008A   630 _IT1	=	0x008a
                           00008B   631 G$IE1$0$0 == 0x008b
                           00008B   632 _IE1	=	0x008b
                           00008C   633 G$TR0$0$0 == 0x008c
                           00008C   634 _TR0	=	0x008c
                           00008D   635 G$TF0$0$0 == 0x008d
                           00008D   636 _TF0	=	0x008d
                           00008E   637 G$TR1$0$0 == 0x008e
                           00008E   638 _TR1	=	0x008e
                           00008F   639 G$TF1$0$0 == 0x008f
                           00008F   640 _TF1	=	0x008f
                           000090   641 G$P1_0$0$0 == 0x0090
                           000090   642 _P1_0	=	0x0090
                           000091   643 G$P1_1$0$0 == 0x0091
                           000091   644 _P1_1	=	0x0091
                           000092   645 G$P1_2$0$0 == 0x0092
                           000092   646 _P1_2	=	0x0092
                           000093   647 G$P1_3$0$0 == 0x0093
                           000093   648 _P1_3	=	0x0093
                           000094   649 G$P1_4$0$0 == 0x0094
                           000094   650 _P1_4	=	0x0094
                           000095   651 G$P1_5$0$0 == 0x0095
                           000095   652 _P1_5	=	0x0095
                           000096   653 G$P1_6$0$0 == 0x0096
                           000096   654 _P1_6	=	0x0096
                           000097   655 G$P1_7$0$0 == 0x0097
                           000097   656 _P1_7	=	0x0097
                           000098   657 G$RI$0$0 == 0x0098
                           000098   658 _RI	=	0x0098
                           000098   659 G$RI0$0$0 == 0x0098
                           000098   660 _RI0	=	0x0098
                           000099   661 G$TI$0$0 == 0x0099
                           000099   662 _TI	=	0x0099
                           000099   663 G$TI0$0$0 == 0x0099
                           000099   664 _TI0	=	0x0099
                           00009A   665 G$RB8$0$0 == 0x009a
                           00009A   666 _RB8	=	0x009a
                           00009A   667 G$RB80$0$0 == 0x009a
                           00009A   668 _RB80	=	0x009a
                           00009B   669 G$TB8$0$0 == 0x009b
                           00009B   670 _TB8	=	0x009b
                           00009B   671 G$TB80$0$0 == 0x009b
                           00009B   672 _TB80	=	0x009b
                           00009C   673 G$REN$0$0 == 0x009c
                           00009C   674 _REN	=	0x009c
                           00009C   675 G$REN0$0$0 == 0x009c
                           00009C   676 _REN0	=	0x009c
                           00009D   677 G$SM2$0$0 == 0x009d
                           00009D   678 _SM2	=	0x009d
                           00009D   679 G$SM20$0$0 == 0x009d
                           00009D   680 _SM20	=	0x009d
                           00009D   681 G$MCE0$0$0 == 0x009d
                           00009D   682 _MCE0	=	0x009d
                           00009E   683 G$SM1$0$0 == 0x009e
                           00009E   684 _SM1	=	0x009e
                           00009E   685 G$SM10$0$0 == 0x009e
                           00009E   686 _SM10	=	0x009e
                           00009F   687 G$SM0$0$0 == 0x009f
                           00009F   688 _SM0	=	0x009f
                           00009F   689 G$SM00$0$0 == 0x009f
                           00009F   690 _SM00	=	0x009f
                           00009F   691 G$S0MODE$0$0 == 0x009f
                           00009F   692 _S0MODE	=	0x009f
                           0000A0   693 G$P2_0$0$0 == 0x00a0
                           0000A0   694 _P2_0	=	0x00a0
                           0000A1   695 G$P2_1$0$0 == 0x00a1
                           0000A1   696 _P2_1	=	0x00a1
                           0000A2   697 G$P2_2$0$0 == 0x00a2
                           0000A2   698 _P2_2	=	0x00a2
                           0000A3   699 G$P2_3$0$0 == 0x00a3
                           0000A3   700 _P2_3	=	0x00a3
                           0000A4   701 G$P2_4$0$0 == 0x00a4
                           0000A4   702 _P2_4	=	0x00a4
                           0000A5   703 G$P2_5$0$0 == 0x00a5
                           0000A5   704 _P2_5	=	0x00a5
                           0000A6   705 G$P2_6$0$0 == 0x00a6
                           0000A6   706 _P2_6	=	0x00a6
                           0000A7   707 G$P2_7$0$0 == 0x00a7
                           0000A7   708 _P2_7	=	0x00a7
                           0000A8   709 G$EX0$0$0 == 0x00a8
                           0000A8   710 _EX0	=	0x00a8
                           0000A9   711 G$ET0$0$0 == 0x00a9
                           0000A9   712 _ET0	=	0x00a9
                           0000AA   713 G$EX1$0$0 == 0x00aa
                           0000AA   714 _EX1	=	0x00aa
                           0000AB   715 G$ET1$0$0 == 0x00ab
                           0000AB   716 _ET1	=	0x00ab
                           0000AC   717 G$ES0$0$0 == 0x00ac
                           0000AC   718 _ES0	=	0x00ac
                           0000AC   719 G$ES$0$0 == 0x00ac
                           0000AC   720 _ES	=	0x00ac
                           0000AD   721 G$ET2$0$0 == 0x00ad
                           0000AD   722 _ET2	=	0x00ad
                           0000AF   723 G$EA$0$0 == 0x00af
                           0000AF   724 _EA	=	0x00af
                           0000B0   725 G$P3_0$0$0 == 0x00b0
                           0000B0   726 _P3_0	=	0x00b0
                           0000B1   727 G$P3_1$0$0 == 0x00b1
                           0000B1   728 _P3_1	=	0x00b1
                           0000B2   729 G$P3_2$0$0 == 0x00b2
                           0000B2   730 _P3_2	=	0x00b2
                           0000B3   731 G$P3_3$0$0 == 0x00b3
                           0000B3   732 _P3_3	=	0x00b3
                           0000B4   733 G$P3_4$0$0 == 0x00b4
                           0000B4   734 _P3_4	=	0x00b4
                           0000B5   735 G$P3_5$0$0 == 0x00b5
                           0000B5   736 _P3_5	=	0x00b5
                           0000B6   737 G$P3_6$0$0 == 0x00b6
                           0000B6   738 _P3_6	=	0x00b6
                           0000B7   739 G$P3_7$0$0 == 0x00b7
                           0000B7   740 _P3_7	=	0x00b7
                           0000B8   741 G$PX0$0$0 == 0x00b8
                           0000B8   742 _PX0	=	0x00b8
                           0000B9   743 G$PT0$0$0 == 0x00b9
                           0000B9   744 _PT0	=	0x00b9
                           0000BA   745 G$PX1$0$0 == 0x00ba
                           0000BA   746 _PX1	=	0x00ba
                           0000BB   747 G$PT1$0$0 == 0x00bb
                           0000BB   748 _PT1	=	0x00bb
                           0000BC   749 G$PS0$0$0 == 0x00bc
                           0000BC   750 _PS0	=	0x00bc
                           0000BC   751 G$PS$0$0 == 0x00bc
                           0000BC   752 _PS	=	0x00bc
                           0000BD   753 G$PT2$0$0 == 0x00bd
                           0000BD   754 _PT2	=	0x00bd
                           0000C0   755 G$SMBTOE$0$0 == 0x00c0
                           0000C0   756 _SMBTOE	=	0x00c0
                           0000C1   757 G$SMBFTE$0$0 == 0x00c1
                           0000C1   758 _SMBFTE	=	0x00c1
                           0000C2   759 G$AA$0$0 == 0x00c2
                           0000C2   760 _AA	=	0x00c2
                           0000C3   761 G$SI$0$0 == 0x00c3
                           0000C3   762 _SI	=	0x00c3
                           0000C4   763 G$STO$0$0 == 0x00c4
                           0000C4   764 _STO	=	0x00c4
                           0000C5   765 G$STA$0$0 == 0x00c5
                           0000C5   766 _STA	=	0x00c5
                           0000C6   767 G$ENSMB$0$0 == 0x00c6
                           0000C6   768 _ENSMB	=	0x00c6
                           0000C7   769 G$BUSY$0$0 == 0x00c7
                           0000C7   770 _BUSY	=	0x00c7
                           0000C8   771 G$CPRL2$0$0 == 0x00c8
                           0000C8   772 _CPRL2	=	0x00c8
                           0000C9   773 G$CT2$0$0 == 0x00c9
                           0000C9   774 _CT2	=	0x00c9
                           0000CA   775 G$TR2$0$0 == 0x00ca
                           0000CA   776 _TR2	=	0x00ca
                           0000CB   777 G$EXEN2$0$0 == 0x00cb
                           0000CB   778 _EXEN2	=	0x00cb
                           0000CC   779 G$TCLK$0$0 == 0x00cc
                           0000CC   780 _TCLK	=	0x00cc
                           0000CD   781 G$RCLK$0$0 == 0x00cd
                           0000CD   782 _RCLK	=	0x00cd
                           0000CE   783 G$EXF2$0$0 == 0x00ce
                           0000CE   784 _EXF2	=	0x00ce
                           0000CF   785 G$TF2$0$0 == 0x00cf
                           0000CF   786 _TF2	=	0x00cf
                           0000D0   787 G$P$0$0 == 0x00d0
                           0000D0   788 _P	=	0x00d0
                           0000D1   789 G$F1$0$0 == 0x00d1
                           0000D1   790 _F1	=	0x00d1
                           0000D2   791 G$OV$0$0 == 0x00d2
                           0000D2   792 _OV	=	0x00d2
                           0000D3   793 G$RS0$0$0 == 0x00d3
                           0000D3   794 _RS0	=	0x00d3
                           0000D4   795 G$RS1$0$0 == 0x00d4
                           0000D4   796 _RS1	=	0x00d4
                           0000D5   797 G$F0$0$0 == 0x00d5
                           0000D5   798 _F0	=	0x00d5
                           0000D6   799 G$AC$0$0 == 0x00d6
                           0000D6   800 _AC	=	0x00d6
                           0000D7   801 G$CY$0$0 == 0x00d7
                           0000D7   802 _CY	=	0x00d7
                           0000D8   803 G$CCF0$0$0 == 0x00d8
                           0000D8   804 _CCF0	=	0x00d8
                           0000D9   805 G$CCF1$0$0 == 0x00d9
                           0000D9   806 _CCF1	=	0x00d9
                           0000DA   807 G$CCF2$0$0 == 0x00da
                           0000DA   808 _CCF2	=	0x00da
                           0000DB   809 G$CCF3$0$0 == 0x00db
                           0000DB   810 _CCF3	=	0x00db
                           0000DC   811 G$CCF4$0$0 == 0x00dc
                           0000DC   812 _CCF4	=	0x00dc
                           0000DE   813 G$CR$0$0 == 0x00de
                           0000DE   814 _CR	=	0x00de
                           0000DF   815 G$CF$0$0 == 0x00df
                           0000DF   816 _CF	=	0x00df
                           0000E8   817 G$ADLJST$0$0 == 0x00e8
                           0000E8   818 _ADLJST	=	0x00e8
                           0000E8   819 G$AD0LJST$0$0 == 0x00e8
                           0000E8   820 _AD0LJST	=	0x00e8
                           0000E9   821 G$ADWINT$0$0 == 0x00e9
                           0000E9   822 _ADWINT	=	0x00e9
                           0000E9   823 G$AD0WINT$0$0 == 0x00e9
                           0000E9   824 _AD0WINT	=	0x00e9
                           0000EA   825 G$ADSTM0$0$0 == 0x00ea
                           0000EA   826 _ADSTM0	=	0x00ea
                           0000EA   827 G$AD0CM0$0$0 == 0x00ea
                           0000EA   828 _AD0CM0	=	0x00ea
                           0000EB   829 G$ADSTM1$0$0 == 0x00eb
                           0000EB   830 _ADSTM1	=	0x00eb
                           0000EB   831 G$AD0CM1$0$0 == 0x00eb
                           0000EB   832 _AD0CM1	=	0x00eb
                           0000EC   833 G$ADBUSY$0$0 == 0x00ec
                           0000EC   834 _ADBUSY	=	0x00ec
                           0000EC   835 G$AD0BUSY$0$0 == 0x00ec
                           0000EC   836 _AD0BUSY	=	0x00ec
                           0000ED   837 G$ADCINT$0$0 == 0x00ed
                           0000ED   838 _ADCINT	=	0x00ed
                           0000ED   839 G$AD0INT$0$0 == 0x00ed
                           0000ED   840 _AD0INT	=	0x00ed
                           0000EE   841 G$ADCTM$0$0 == 0x00ee
                           0000EE   842 _ADCTM	=	0x00ee
                           0000EE   843 G$AD0TM$0$0 == 0x00ee
                           0000EE   844 _AD0TM	=	0x00ee
                           0000EF   845 G$ADCEN$0$0 == 0x00ef
                           0000EF   846 _ADCEN	=	0x00ef
                           0000EF   847 G$AD0EN$0$0 == 0x00ef
                           0000EF   848 _AD0EN	=	0x00ef
                           0000F8   849 G$SPIEN$0$0 == 0x00f8
                           0000F8   850 _SPIEN	=	0x00f8
                           0000F9   851 G$MSTEN$0$0 == 0x00f9
                           0000F9   852 _MSTEN	=	0x00f9
                           0000FA   853 G$SLVSEL$0$0 == 0x00fa
                           0000FA   854 _SLVSEL	=	0x00fa
                           0000FB   855 G$TXBSY$0$0 == 0x00fb
                           0000FB   856 _TXBSY	=	0x00fb
                           0000FC   857 G$RXOVRN$0$0 == 0x00fc
                           0000FC   858 _RXOVRN	=	0x00fc
                           0000FD   859 G$MODF$0$0 == 0x00fd
                           0000FD   860 _MODF	=	0x00fd
                           0000FE   861 G$WCOL$0$0 == 0x00fe
                           0000FE   862 _WCOL	=	0x00fe
                           0000FF   863 G$SPIF$0$0 == 0x00ff
                           0000FF   864 _SPIF	=	0x00ff
                           0000B6   865 G$LED0$0$0 == 0x00b6
                           0000B6   866 _LED0	=	0x00b6
                           0000B3   867 G$BILED0$0$0 == 0x00b3
                           0000B3   868 _BILED0	=	0x00b3
                           0000B4   869 G$BILED1$0$0 == 0x00b4
                           0000B4   870 _BILED1	=	0x00b4
                           0000B7   871 G$Buzzer$0$0 == 0x00b7
                           0000B7   872 _Buzzer	=	0x00b7
                           0000A0   873 G$SS$0$0 == 0x00a0
                           0000A0   874 _SS	=	0x00a0
                           0000B0   875 G$PB1$0$0 == 0x00b0
                           0000B0   876 _PB1	=	0x00b0
                           0000B1   877 G$PB2$0$0 == 0x00b1
                           0000B1   878 _PB2	=	0x00b1
                                    879 ;--------------------------------------------------------
                                    880 ; overlayable register banks
                                    881 ;--------------------------------------------------------
                                    882 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        883 	.ds 8
                                    884 ;--------------------------------------------------------
                                    885 ; internal ram data
                                    886 ;--------------------------------------------------------
                                    887 	.area DSEG    (DATA)
                                    888 ;--------------------------------------------------------
                                    889 ; overlayable items in internal ram 
                                    890 ;--------------------------------------------------------
                                    891 	.area	OSEG    (OVR,DATA)
                                    892 	.area	OSEG    (OVR,DATA)
                                    893 ;--------------------------------------------------------
                                    894 ; Stack segment in internal ram 
                                    895 ;--------------------------------------------------------
                                    896 	.area	SSEG
      00003C                        897 __start__stack:
      00003C                        898 	.ds	1
                                    899 
                                    900 ;--------------------------------------------------------
                                    901 ; indirectly addressable internal ram data
                                    902 ;--------------------------------------------------------
                                    903 	.area ISEG    (DATA)
                                    904 ;--------------------------------------------------------
                                    905 ; absolute internal ram data
                                    906 ;--------------------------------------------------------
                                    907 	.area IABS    (ABS,DATA)
                                    908 	.area IABS    (ABS,DATA)
                                    909 ;--------------------------------------------------------
                                    910 ; bit data
                                    911 ;--------------------------------------------------------
                                    912 	.area BSEG    (BIT)
                                    913 ;--------------------------------------------------------
                                    914 ; paged external ram data
                                    915 ;--------------------------------------------------------
                                    916 	.area PSEG    (PAG,XDATA)
                                    917 ;--------------------------------------------------------
                                    918 ; external ram data
                                    919 ;--------------------------------------------------------
                                    920 	.area XSEG    (XDATA)
                                    921 ;--------------------------------------------------------
                                    922 ; absolute external ram data
                                    923 ;--------------------------------------------------------
                                    924 	.area XABS    (ABS,XDATA)
                                    925 ;--------------------------------------------------------
                                    926 ; external initialized ram data
                                    927 ;--------------------------------------------------------
                                    928 	.area XISEG   (XDATA)
                                    929 	.area HOME    (CODE)
                                    930 	.area GSINIT0 (CODE)
                                    931 	.area GSINIT1 (CODE)
                                    932 	.area GSINIT2 (CODE)
                                    933 	.area GSINIT3 (CODE)
                                    934 	.area GSINIT4 (CODE)
                                    935 	.area GSINIT5 (CODE)
                                    936 	.area GSINIT  (CODE)
                                    937 	.area GSFINAL (CODE)
                                    938 	.area CSEG    (CODE)
                                    939 ;--------------------------------------------------------
                                    940 ; interrupt vector 
                                    941 ;--------------------------------------------------------
                                    942 	.area HOME    (CODE)
      000000                        943 __interrupt_vect:
      000000 02 00 06         [24]  944 	ljmp	__sdcc_gsinit_startup
                                    945 ;--------------------------------------------------------
                                    946 ; global & static initialisations
                                    947 ;--------------------------------------------------------
                                    948 	.area HOME    (CODE)
                                    949 	.area GSINIT  (CODE)
                                    950 	.area GSFINAL (CODE)
                                    951 	.area GSINIT  (CODE)
                                    952 	.globl __sdcc_gsinit_startup
                                    953 	.globl __sdcc_program_startup
                                    954 	.globl __start__stack
                                    955 	.globl __mcs51_genXINIT
                                    956 	.globl __mcs51_genXRAMCLEAR
                                    957 	.globl __mcs51_genRAMCLEAR
                                    958 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  959 	ljmp	__sdcc_program_startup
                                    960 ;--------------------------------------------------------
                                    961 ; Home
                                    962 ;--------------------------------------------------------
                                    963 	.area HOME    (CODE)
                                    964 	.area HOME    (CODE)
      000003                        965 __sdcc_program_startup:
      000003 02 00 DD         [24]  966 	ljmp	_main
                                    967 ;	return from main will return to caller
                                    968 ;--------------------------------------------------------
                                    969 ; code
                                    970 ;--------------------------------------------------------
                                    971 	.area CSEG    (CODE)
                                    972 ;------------------------------------------------------------
                                    973 ;Allocation info for local variables in function 'SYSCLK_Init'
                                    974 ;------------------------------------------------------------
                                    975 ;i                         Allocated to registers r6 r7 
                                    976 ;------------------------------------------------------------
                           000000   977 	G$SYSCLK_Init$0$0 ==.
                           000000   978 	C$c8051_SDCC.h$62$0$0 ==.
                                    979 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:62: void SYSCLK_Init(void)
                                    980 ;	-----------------------------------------
                                    981 ;	 function SYSCLK_Init
                                    982 ;	-----------------------------------------
      000062                        983 _SYSCLK_Init:
                           000007   984 	ar7 = 0x07
                           000006   985 	ar6 = 0x06
                           000005   986 	ar5 = 0x05
                           000004   987 	ar4 = 0x04
                           000003   988 	ar3 = 0x03
                           000002   989 	ar2 = 0x02
                           000001   990 	ar1 = 0x01
                           000000   991 	ar0 = 0x00
                           000000   992 	C$c8051_SDCC.h$66$1$2 ==.
                                    993 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:66: OSCXCN = 0x67;                      // start external oscillator with
      000062 75 B1 67         [24]  994 	mov	_OSCXCN,#0x67
                           000003   995 	C$c8051_SDCC.h$69$1$2 ==.
                                    996 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:69: for (i=0; i < 256; i++);            // wait for oscillator to start
      000065 7E 00            [12]  997 	mov	r6,#0x00
      000067 7F 01            [12]  998 	mov	r7,#0x01
      000069                        999 00107$:
      000069 EE               [12] 1000 	mov	a,r6
      00006A 24 FF            [12] 1001 	add	a,#0xff
      00006C FC               [12] 1002 	mov	r4,a
      00006D EF               [12] 1003 	mov	a,r7
      00006E 34 FF            [12] 1004 	addc	a,#0xff
      000070 FD               [12] 1005 	mov	r5,a
      000071 8C 06            [24] 1006 	mov	ar6,r4
      000073 8D 07            [24] 1007 	mov	ar7,r5
      000075 EC               [12] 1008 	mov	a,r4
      000076 4D               [12] 1009 	orl	a,r5
      000077 70 F0            [24] 1010 	jnz	00107$
                           000017  1011 	C$c8051_SDCC.h$71$1$2 ==.
                                   1012 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:71: while (!(OSCXCN & 0x80));           // Wait for crystal osc. to settle
      000079                       1013 00102$:
      000079 E5 B1            [12] 1014 	mov	a,_OSCXCN
      00007B 30 E7 FB         [24] 1015 	jnb	acc.7,00102$
                           00001C  1016 	C$c8051_SDCC.h$73$1$2 ==.
                                   1017 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:73: OSCICN = 0x88;                      // select external oscillator as SYSCLK
      00007E 75 B2 88         [24] 1018 	mov	_OSCICN,#0x88
                           00001F  1019 	C$c8051_SDCC.h$76$1$2 ==.
                           00001F  1020 	XG$SYSCLK_Init$0$0 ==.
      000081 22               [24] 1021 	ret
                                   1022 ;------------------------------------------------------------
                                   1023 ;Allocation info for local variables in function 'UART0_Init'
                                   1024 ;------------------------------------------------------------
                           000020  1025 	G$UART0_Init$0$0 ==.
                           000020  1026 	C$c8051_SDCC.h$84$1$2 ==.
                                   1027 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:84: void UART0_Init(void)
                                   1028 ;	-----------------------------------------
                                   1029 ;	 function UART0_Init
                                   1030 ;	-----------------------------------------
      000082                       1031 _UART0_Init:
                           000020  1032 	C$c8051_SDCC.h$86$1$4 ==.
                                   1033 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:86: SCON0  = 0x50;                      // SCON0: mode 1, 8-bit UART, enable RX
      000082 75 98 50         [24] 1034 	mov	_SCON0,#0x50
                           000023  1035 	C$c8051_SDCC.h$87$1$4 ==.
                                   1036 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:87: TMOD   = 0x20;                      // TMOD: timer 1, mode 2, 8-bit reload
      000085 75 89 20         [24] 1037 	mov	_TMOD,#0x20
                           000026  1038 	C$c8051_SDCC.h$88$1$4 ==.
                                   1039 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:88: TH1    = 0xFF&-(SYSCLK/BAUDRATE/16);     // set Timer1 reload value for baudrate
      000088 75 8D DC         [24] 1040 	mov	_TH1,#0xdc
                           000029  1041 	C$c8051_SDCC.h$89$1$4 ==.
                                   1042 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:89: TR1    = 1;                         // start Timer1
      00008B D2 8E            [12] 1043 	setb	_TR1
                           00002B  1044 	C$c8051_SDCC.h$90$1$4 ==.
                                   1045 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:90: CKCON |= 0x10;                      // Timer1 uses SYSCLK as time base
      00008D 43 8E 10         [24] 1046 	orl	_CKCON,#0x10
                           00002E  1047 	C$c8051_SDCC.h$91$1$4 ==.
                                   1048 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:91: PCON  |= 0x80;                      // SMOD00 = 1 (disable baud rate 
      000090 43 87 80         [24] 1049 	orl	_PCON,#0x80
                           000031  1050 	C$c8051_SDCC.h$93$1$4 ==.
                                   1051 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:93: TI0    = 1;                         // Indicate TX0 ready
      000093 D2 99            [12] 1052 	setb	_TI0
                           000033  1053 	C$c8051_SDCC.h$94$1$4 ==.
                                   1054 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:94: P0MDOUT |= 0x01;                    // Set TX0 to push/pull
      000095 43 A4 01         [24] 1055 	orl	_P0MDOUT,#0x01
                           000036  1056 	C$c8051_SDCC.h$95$1$4 ==.
                           000036  1057 	XG$UART0_Init$0$0 ==.
      000098 22               [24] 1058 	ret
                                   1059 ;------------------------------------------------------------
                                   1060 ;Allocation info for local variables in function 'Sys_Init'
                                   1061 ;------------------------------------------------------------
                           000037  1062 	G$Sys_Init$0$0 ==.
                           000037  1063 	C$c8051_SDCC.h$103$1$4 ==.
                                   1064 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:103: void Sys_Init(void)
                                   1065 ;	-----------------------------------------
                                   1066 ;	 function Sys_Init
                                   1067 ;	-----------------------------------------
      000099                       1068 _Sys_Init:
                           000037  1069 	C$c8051_SDCC.h$105$1$6 ==.
                                   1070 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:105: WDTCN = 0xde;			// disable watchdog timer
      000099 75 FF DE         [24] 1071 	mov	_WDTCN,#0xde
                           00003A  1072 	C$c8051_SDCC.h$106$1$6 ==.
                                   1073 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:106: WDTCN = 0xad;
      00009C 75 FF AD         [24] 1074 	mov	_WDTCN,#0xad
                           00003D  1075 	C$c8051_SDCC.h$108$1$6 ==.
                                   1076 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:108: SYSCLK_Init();			// initialize oscillator
      00009F 12 00 62         [24] 1077 	lcall	_SYSCLK_Init
                           000040  1078 	C$c8051_SDCC.h$109$1$6 ==.
                                   1079 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:109: UART0_Init();			// initialize UART0
      0000A2 12 00 82         [24] 1080 	lcall	_UART0_Init
                           000043  1081 	C$c8051_SDCC.h$111$1$6 ==.
                                   1082 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:111: XBR0 |= 0x04;
      0000A5 43 E1 04         [24] 1083 	orl	_XBR0,#0x04
                           000046  1084 	C$c8051_SDCC.h$112$1$6 ==.
                                   1085 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:112: XBR2 |= 0x40;                    	// Enable crossbar and weak pull-ups
      0000A8 43 E3 40         [24] 1086 	orl	_XBR2,#0x40
                           000049  1087 	C$c8051_SDCC.h$113$1$6 ==.
                           000049  1088 	XG$Sys_Init$0$0 ==.
      0000AB 22               [24] 1089 	ret
                                   1090 ;------------------------------------------------------------
                                   1091 ;Allocation info for local variables in function 'putchar'
                                   1092 ;------------------------------------------------------------
                                   1093 ;c                         Allocated to registers r7 
                                   1094 ;------------------------------------------------------------
                           00004A  1095 	G$putchar$0$0 ==.
                           00004A  1096 	C$c8051_SDCC.h$129$1$6 ==.
                                   1097 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:129: void putchar(char c)
                                   1098 ;	-----------------------------------------
                                   1099 ;	 function putchar
                                   1100 ;	-----------------------------------------
      0000AC                       1101 _putchar:
      0000AC AF 82            [24] 1102 	mov	r7,dpl
                           00004C  1103 	C$c8051_SDCC.h$132$1$8 ==.
                                   1104 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:132: while (!TI0); 
      0000AE                       1105 00101$:
                           00004C  1106 	C$c8051_SDCC.h$133$1$8 ==.
                                   1107 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:133: TI0 = 0;
      0000AE 10 99 02         [24] 1108 	jbc	_TI0,00112$
      0000B1 80 FB            [24] 1109 	sjmp	00101$
      0000B3                       1110 00112$:
                           000051  1111 	C$c8051_SDCC.h$134$1$8 ==.
                                   1112 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:134: SBUF0 = c;
      0000B3 8F 99            [24] 1113 	mov	_SBUF0,r7
                           000053  1114 	C$c8051_SDCC.h$135$1$8 ==.
                           000053  1115 	XG$putchar$0$0 ==.
      0000B5 22               [24] 1116 	ret
                                   1117 ;------------------------------------------------------------
                                   1118 ;Allocation info for local variables in function 'getchar'
                                   1119 ;------------------------------------------------------------
                                   1120 ;c                         Allocated to registers r7 
                                   1121 ;------------------------------------------------------------
                           000054  1122 	G$getchar$0$0 ==.
                           000054  1123 	C$c8051_SDCC.h$154$1$8 ==.
                                   1124 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:154: char getchar(void)
                                   1125 ;	-----------------------------------------
                                   1126 ;	 function getchar
                                   1127 ;	-----------------------------------------
      0000B6                       1128 _getchar:
                           000054  1129 	C$c8051_SDCC.h$157$1$10 ==.
                                   1130 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:157: while (!RI0);
      0000B6                       1131 00101$:
                           000054  1132 	C$c8051_SDCC.h$158$1$10 ==.
                                   1133 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:158: RI0 = 0;
      0000B6 10 98 02         [24] 1134 	jbc	_RI0,00112$
      0000B9 80 FB            [24] 1135 	sjmp	00101$
      0000BB                       1136 00112$:
                           000059  1137 	C$c8051_SDCC.h$159$1$10 ==.
                                   1138 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:159: c = SBUF0;
      0000BB AF 99            [24] 1139 	mov	r7,_SBUF0
                           00005B  1140 	C$c8051_SDCC.h$160$1$10 ==.
                                   1141 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:160: putchar(c);                          // echo to terminal
      0000BD 8F 82            [24] 1142 	mov	dpl,r7
      0000BF C0 07            [24] 1143 	push	ar7
      0000C1 12 00 AC         [24] 1144 	lcall	_putchar
      0000C4 D0 07            [24] 1145 	pop	ar7
                           000064  1146 	C$c8051_SDCC.h$161$1$10 ==.
                                   1147 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:161: return c;
      0000C6 8F 82            [24] 1148 	mov	dpl,r7
                           000066  1149 	C$c8051_SDCC.h$162$1$10 ==.
                           000066  1150 	XG$getchar$0$0 ==.
      0000C8 22               [24] 1151 	ret
                                   1152 ;------------------------------------------------------------
                                   1153 ;Allocation info for local variables in function 'getchar_nw'
                                   1154 ;------------------------------------------------------------
                                   1155 ;c                         Allocated to registers 
                                   1156 ;------------------------------------------------------------
                           000067  1157 	G$getchar_nw$0$0 ==.
                           000067  1158 	C$c8051_SDCC.h$168$1$10 ==.
                                   1159 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:168: char getchar_nw(void)
                                   1160 ;	-----------------------------------------
                                   1161 ;	 function getchar_nw
                                   1162 ;	-----------------------------------------
      0000C9                       1163 _getchar_nw:
                           000067  1164 	C$c8051_SDCC.h$171$1$12 ==.
                                   1165 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:171: if (!RI0) return 0xFF;
      0000C9 20 98 05         [24] 1166 	jb	_RI0,00102$
      0000CC 75 82 FF         [24] 1167 	mov	dpl,#0xff
      0000CF 80 0B            [24] 1168 	sjmp	00104$
      0000D1                       1169 00102$:
                           00006F  1170 	C$c8051_SDCC.h$174$2$13 ==.
                                   1171 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:174: RI0 = 0;
      0000D1 C2 98            [12] 1172 	clr	_RI0
                           000071  1173 	C$c8051_SDCC.h$175$2$13 ==.
                                   1174 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:175: c = SBUF0;
      0000D3 85 99 82         [24] 1175 	mov	dpl,_SBUF0
                           000074  1176 	C$c8051_SDCC.h$176$2$13 ==.
                                   1177 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:176: putchar(c);                          // echo to terminal
      0000D6 12 00 AC         [24] 1178 	lcall	_putchar
                           000077  1179 	C$c8051_SDCC.h$177$2$13 ==.
                                   1180 ;	C:/Program Files/SDCC/bin/../include/mcs51/c8051_SDCC.h:177: return SBUF0;
      0000D9 85 99 82         [24] 1181 	mov	dpl,_SBUF0
      0000DC                       1182 00104$:
                           00007A  1183 	C$c8051_SDCC.h$179$1$12 ==.
                           00007A  1184 	XG$getchar_nw$0$0 ==.
      0000DC 22               [24] 1185 	ret
                                   1186 ;------------------------------------------------------------
                                   1187 ;Allocation info for local variables in function 'main'
                                   1188 ;------------------------------------------------------------
                           00007B  1189 	G$main$0$0 ==.
                           00007B  1190 	C$lab1_1.c$36$1$12 ==.
                                   1191 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:36: void main(void)
                                   1192 ;	-----------------------------------------
                                   1193 ;	 function main
                                   1194 ;	-----------------------------------------
      0000DD                       1195 _main:
                           00007B  1196 	C$lab1_1.c$38$1$30 ==.
                                   1197 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:38: Sys_Init();        // System Initialization
      0000DD 12 00 99         [24] 1198 	lcall	_Sys_Init
                           00007E  1199 	C$lab1_1.c$39$1$30 ==.
                                   1200 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:39: putchar(' ');      // the quote fonts may not copy correctly into SiLabs IDE
      0000E0 75 82 20         [24] 1201 	mov	dpl,#0x20
      0000E3 12 00 AC         [24] 1202 	lcall	_putchar
                           000084  1203 	C$lab1_1.c$40$1$30 ==.
                                   1204 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:40: Port_Init();       // Initialize ports 2 and 3 
      0000E6 12 00 EF         [24] 1205 	lcall	_Port_Init
                           000087  1206 	C$lab1_1.c$42$1$30 ==.
                                   1207 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:42: while (1)          // infinite loop 
      0000E9                       1208 00102$:
                           000087  1209 	C$lab1_1.c$46$2$31 ==.
                                   1210 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:46: Set_outputs();
      0000E9 12 00 FF         [24] 1211 	lcall	_Set_outputs
      0000EC 80 FB            [24] 1212 	sjmp	00102$
                           00008C  1213 	C$lab1_1.c$48$1$30 ==.
                           00008C  1214 	XG$main$0$0 ==.
      0000EE 22               [24] 1215 	ret
                                   1216 ;------------------------------------------------------------
                                   1217 ;Allocation info for local variables in function 'Port_Init'
                                   1218 ;------------------------------------------------------------
                           00008D  1219 	G$Port_Init$0$0 ==.
                           00008D  1220 	C$lab1_1.c$54$1$30 ==.
                                   1221 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:54: void Port_Init(void)
                                   1222 ;	-----------------------------------------
                                   1223 ;	 function Port_Init
                                   1224 ;	-----------------------------------------
      0000EF                       1225 _Port_Init:
                           00008D  1226 	C$lab1_1.c$57$1$33 ==.
                                   1227 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:57: P3MDOUT |=0xD8; // set Port 3 output pins to push-pull mode (fill in the blank) 11101000
      0000EF 43 A7 D8         [24] 1228 	orl	_P3MDOUT,#0xd8
                           000090  1229 	C$lab1_1.c$58$1$33 ==.
                                   1230 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:58: P3MDOUT &=0xFC; // set Port 3 input pins to open drain mode (fill in the blank) 11111100
      0000F2 53 A7 FC         [24] 1231 	anl	_P3MDOUT,#0xfc
                           000093  1232 	C$lab1_1.c$59$1$33 ==.
                                   1233 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:59: P3 |=~0xFC; // set Port 3 input pins to high impedance state (fill in the blank)
      0000F5 43 B0 03         [24] 1234 	orl	_P3,#0x03
                           000096  1235 	C$lab1_1.c$63$1$33 ==.
                                   1236 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:63: P2MDOUT &= 0xFE;
      0000F8 53 A6 FE         [24] 1237 	anl	_P2MDOUT,#0xfe
                           000099  1238 	C$lab1_1.c$64$1$33 ==.
                                   1239 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:64: P2 |= 0x01;
      0000FB 43 A0 01         [24] 1240 	orl	_P2,#0x01
                           00009C  1241 	C$lab1_1.c$67$1$33 ==.
                           00009C  1242 	XG$Port_Init$0$0 ==.
      0000FE 22               [24] 1243 	ret
                                   1244 ;------------------------------------------------------------
                                   1245 ;Allocation info for local variables in function 'Set_outputs'
                                   1246 ;------------------------------------------------------------
                           00009D  1247 	G$Set_outputs$0$0 ==.
                           00009D  1248 	C$lab1_1.c$78$1$33 ==.
                                   1249 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:78: void Set_outputs(void)
                                   1250 ;	-----------------------------------------
                                   1251 ;	 function Set_outputs
                                   1252 ;	-----------------------------------------
      0000FF                       1253 _Set_outputs:
                           00009D  1254 	C$lab1_1.c$80$1$35 ==.
                                   1255 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:80: if (!SS)        // if Slide Switch activated (On position)
      0000FF 30 A0 03         [24] 1256 	jnb	_SS,00139$
      000102 02 01 90         [24] 1257 	ljmp	00114$
      000105                       1258 00139$:
                           0000A3  1259 	C$lab1_1.c$84$2$36 ==.
                                   1260 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:84: if (PB1==0 && PB2==0)
      000105 20 B0 23         [24] 1261 	jb	_PB1,00110$
      000108 20 B1 20         [24] 1262 	jb	_PB2,00110$
                           0000A9  1263 	C$lab1_1.c$86$3$37 ==.
                                   1264 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:86: LED0 = 1;
      00010B D2 B6            [12] 1265 	setb	_LED0
                           0000AB  1266 	C$lab1_1.c$87$3$37 ==.
                                   1267 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:87: Buzzer = 1;
      00010D D2 B7            [12] 1268 	setb	_Buzzer
                           0000AD  1269 	C$lab1_1.c$88$3$37 ==.
                                   1270 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:88: BILED0 = 0;
      00010F C2 B3            [12] 1271 	clr	_BILED0
                           0000AF  1272 	C$lab1_1.c$89$3$37 ==.
                                   1273 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:89: BILED1 = 1;
      000111 D2 B4            [12] 1274 	setb	_BILED1
                           0000B1  1275 	C$lab1_1.c$90$3$37 ==.
                                   1276 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:90: printf("biled is red 2 PBs pressed");
      000113 74 ED            [12] 1277 	mov	a,#___str_0
      000115 C0 E0            [24] 1278 	push	acc
      000117 74 07            [12] 1279 	mov	a,#(___str_0 >> 8)
      000119 C0 E0            [24] 1280 	push	acc
      00011B 74 80            [12] 1281 	mov	a,#0x80
      00011D C0 E0            [24] 1282 	push	acc
      00011F 12 01 D2         [24] 1283 	lcall	_printf
      000122 15 81            [12] 1284 	dec	sp
      000124 15 81            [12] 1285 	dec	sp
      000126 15 81            [12] 1286 	dec	sp
      000128 02 01 AD         [24] 1287 	ljmp	00116$
      00012B                       1288 00110$:
                           0000C9  1289 	C$lab1_1.c$92$2$36 ==.
                                   1290 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:92: else if (!PB1 && PB2==1)
      00012B 20 B0 22         [24] 1291 	jb	_PB1,00106$
      00012E 30 B1 1F         [24] 1292 	jnb	_PB2,00106$
                           0000CF  1293 	C$lab1_1.c$94$3$38 ==.
                                   1294 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:94: LED0 = 1;
      000131 D2 B6            [12] 1295 	setb	_LED0
                           0000D1  1296 	C$lab1_1.c$95$3$38 ==.
                                   1297 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:95: Buzzer = 0;
      000133 C2 B7            [12] 1298 	clr	_Buzzer
                           0000D3  1299 	C$lab1_1.c$96$3$38 ==.
                                   1300 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:96: BILED0=1;
      000135 D2 B3            [12] 1301 	setb	_BILED0
                           0000D5  1302 	C$lab1_1.c$97$3$38 ==.
                                   1303 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:97: BILED1=1;
      000137 D2 B4            [12] 1304 	setb	_BILED1
                           0000D7  1305 	C$lab1_1.c$98$3$38 ==.
                                   1306 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:98: printf("buzzer is on");
      000139 74 08            [12] 1307 	mov	a,#___str_1
      00013B C0 E0            [24] 1308 	push	acc
      00013D 74 08            [12] 1309 	mov	a,#(___str_1 >> 8)
      00013F C0 E0            [24] 1310 	push	acc
      000141 74 80            [12] 1311 	mov	a,#0x80
      000143 C0 E0            [24] 1312 	push	acc
      000145 12 01 D2         [24] 1313 	lcall	_printf
      000148 15 81            [12] 1314 	dec	sp
      00014A 15 81            [12] 1315 	dec	sp
      00014C 15 81            [12] 1316 	dec	sp
      00014E 80 5D            [24] 1317 	sjmp	00116$
      000150                       1318 00106$:
                           0000EE  1319 	C$lab1_1.c$100$2$36 ==.
                                   1320 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:100: else if (PB1==1 && !PB2)
      000150 30 B0 22         [24] 1321 	jnb	_PB1,00102$
      000153 20 B1 1F         [24] 1322 	jb	_PB2,00102$
                           0000F4  1323 	C$lab1_1.c$102$3$39 ==.
                                   1324 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:102: LED0 = 0;
      000156 C2 B6            [12] 1325 	clr	_LED0
                           0000F6  1326 	C$lab1_1.c$103$3$39 ==.
                                   1327 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:103: Buzzer = 1;
      000158 D2 B7            [12] 1328 	setb	_Buzzer
                           0000F8  1329 	C$lab1_1.c$104$3$39 ==.
                                   1330 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:104: BILED0=1;
      00015A D2 B3            [12] 1331 	setb	_BILED0
                           0000FA  1332 	C$lab1_1.c$105$3$39 ==.
                                   1333 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:105: BILED1=1;
      00015C D2 B4            [12] 1334 	setb	_BILED1
                           0000FC  1335 	C$lab1_1.c$106$3$39 ==.
                                   1336 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:106: printf("led is on");
      00015E 74 15            [12] 1337 	mov	a,#___str_2
      000160 C0 E0            [24] 1338 	push	acc
      000162 74 08            [12] 1339 	mov	a,#(___str_2 >> 8)
      000164 C0 E0            [24] 1340 	push	acc
      000166 74 80            [12] 1341 	mov	a,#0x80
      000168 C0 E0            [24] 1342 	push	acc
      00016A 12 01 D2         [24] 1343 	lcall	_printf
      00016D 15 81            [12] 1344 	dec	sp
      00016F 15 81            [12] 1345 	dec	sp
      000171 15 81            [12] 1346 	dec	sp
      000173 80 38            [24] 1347 	sjmp	00116$
      000175                       1348 00102$:
                           000113  1349 	C$lab1_1.c$110$3$40 ==.
                                   1350 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:110: BILED0 = 1;   // turn off BILED 
      000175 D2 B3            [12] 1351 	setb	_BILED0
                           000115  1352 	C$lab1_1.c$111$3$40 ==.
                                   1353 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:111: BILED1 = 1;
      000177 D2 B4            [12] 1354 	setb	_BILED1
                           000117  1355 	C$lab1_1.c$112$3$40 ==.
                                   1356 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:112: printf("\r biled off\n");
      000179 74 1F            [12] 1357 	mov	a,#___str_3
      00017B C0 E0            [24] 1358 	push	acc
      00017D 74 08            [12] 1359 	mov	a,#(___str_3 >> 8)
      00017F C0 E0            [24] 1360 	push	acc
      000181 74 80            [12] 1361 	mov	a,#0x80
      000183 C0 E0            [24] 1362 	push	acc
      000185 12 01 D2         [24] 1363 	lcall	_printf
      000188 15 81            [12] 1364 	dec	sp
      00018A 15 81            [12] 1365 	dec	sp
      00018C 15 81            [12] 1366 	dec	sp
      00018E 80 1D            [24] 1367 	sjmp	00116$
      000190                       1368 00114$:
                           00012E  1369 	C$lab1_1.c$118$2$41 ==.
                                   1370 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:118: LED0 = 1;   // turn off LED0 
      000190 D2 B6            [12] 1371 	setb	_LED0
                           000130  1372 	C$lab1_1.c$119$2$41 ==.
                                   1373 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:119: BILED1 = 0;
      000192 C2 B4            [12] 1374 	clr	_BILED1
                           000132  1375 	C$lab1_1.c$120$2$41 ==.
                                   1376 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:120: BILED0 = 1;
      000194 D2 B3            [12] 1377 	setb	_BILED0
                           000134  1378 	C$lab1_1.c$121$2$41 ==.
                                   1379 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:121: Buzzer = 1;
      000196 D2 B7            [12] 1380 	setb	_Buzzer
                           000136  1381 	C$lab1_1.c$123$2$41 ==.
                                   1382 ;	C:\Users\Ì´¿¡Î°\Desktop\litec\lab1-1.c:123: printf("\r Slide switch is off   \n");	
      000198 74 2C            [12] 1383 	mov	a,#___str_4
      00019A C0 E0            [24] 1384 	push	acc
      00019C 74 08            [12] 1385 	mov	a,#(___str_4 >> 8)
      00019E C0 E0            [24] 1386 	push	acc
      0001A0 74 80            [12] 1387 	mov	a,#0x80
      0001A2 C0 E0            [24] 1388 	push	acc
      0001A4 12 01 D2         [24] 1389 	lcall	_printf
      0001A7 15 81            [12] 1390 	dec	sp
      0001A9 15 81            [12] 1391 	dec	sp
      0001AB 15 81            [12] 1392 	dec	sp
      0001AD                       1393 00116$:
                           00014B  1394 	C$lab1_1.c$125$1$35 ==.
                           00014B  1395 	XG$Set_outputs$0$0 ==.
      0001AD 22               [24] 1396 	ret
                                   1397 	.area CSEG    (CODE)
                                   1398 	.area CONST   (CODE)
                           000000  1399 Flab1_1$__str_0$0$0 == .
      0007ED                       1400 ___str_0:
      0007ED 62 69 6C 65 64 20 69  1401 	.ascii "biled is red 2 PBs pressed"
             73 20 72 65 64 20 32
             20 50 42 73 20 70 72
             65 73 73 65 64
      000807 00                    1402 	.db 0x00
                           00001B  1403 Flab1_1$__str_1$0$0 == .
      000808                       1404 ___str_1:
      000808 62 75 7A 7A 65 72 20  1405 	.ascii "buzzer is on"
             69 73 20 6F 6E
      000814 00                    1406 	.db 0x00
                           000028  1407 Flab1_1$__str_2$0$0 == .
      000815                       1408 ___str_2:
      000815 6C 65 64 20 69 73 20  1409 	.ascii "led is on"
             6F 6E
      00081E 00                    1410 	.db 0x00
                           000032  1411 Flab1_1$__str_3$0$0 == .
      00081F                       1412 ___str_3:
      00081F 0D                    1413 	.db 0x0d
      000820 20 62 69 6C 65 64 20  1414 	.ascii " biled off"
             6F 66 66
      00082A 0A                    1415 	.db 0x0a
      00082B 00                    1416 	.db 0x00
                           00003F  1417 Flab1_1$__str_4$0$0 == .
      00082C                       1418 ___str_4:
      00082C 0D                    1419 	.db 0x0d
      00082D 20 53 6C 69 64 65 20  1420 	.ascii " Slide switch is off   "
             73 77 69 74 63 68 20
             69 73 20 6F 66 66 20
             20 20
      000844 0A                    1421 	.db 0x0a
      000845 00                    1422 	.db 0x00
                                   1423 	.area XINIT   (CODE)
                                   1424 	.area CABS    (ABS,CODE)
