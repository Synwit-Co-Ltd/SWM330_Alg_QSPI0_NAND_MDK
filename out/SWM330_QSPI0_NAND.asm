
========================================================================

** ELF Header Information

    File Name: D:\Ubuntu\github\SWM330_Alg_QSPI0_NAND_MDK\out\SWM330_QSPI0_NAND.axf

    Machine class: ELFCLASS32 (32-bit)
    Data encoding: ELFDATA2LSB (Little endian)
    Header version: EV_CURRENT (Current version)
    Operating System ABI: none
    ABI Version: 0
    File Type: ET_EXEC (Executable) (2)
    Machine: EM_ARM (ARM)

    Image Entry point: Not specified
    Flags: EF_ARM_ABI_FLOAT_SOFT (0x05000200)

    ARM ELF revision: 5 (ABI version 2)

    Conforms to Soft float procedure-call standard

    Built with
    Component: ARM Compiler 6.16 Tool: armlink [5dfeaa00]

    Header size: 52 bytes (0x34)
    Program header entry size: 32 bytes (0x20)
    Section header entry size: 40 bytes (0x28)

    Program header entries: 2
    Section header entries: 17

    Program header offset: 49348 (0x0000c0c4)
    Section header offset: 49412 (0x0000c104)

    Section header string table index: 16

========================================================================

** Program header #0 (PT_LOAD) [PF_X + PF_W + PF_R + PF_ARM_SB + PF_ARM_PI]
    Size : 7608 bytes (5556 bytes in file)
    Virtual address: 0x00000000 (Alignment 4)


====================================

** Program header #1 (PT_LOAD) [PF_X + PF_R + PF_ARM_PI]
    Size : 4256 bytes
    Virtual address: 0x000015b4 (Alignment 4)


========================================================================

** Section #1 'PrgCode' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 5544 bytes (alignment 4)
    Address: 0x00000000

    $t.0
    Init
        0x00000000:    2a01        .*      CMP      r2,#1
        0x00000002:    d11f        ..      BNE      0x44 ; Init + 68
        0x00000004:    b580        ..      PUSH     {r7,lr}
        0x00000006:    f3ef8010    ....    MRS      r0,PRIMASK
        0x0000000a:    b672        r.      CPSID    i
        0x0000000c:    f001f9d4    ....    BL       switchTo8MHz ; 0x13b8
        0x00000010:    f2407020    @. p    MOVW     r0,#0x720
        0x00000014:    f2c40000    ....    MOVT     r0,#0x4000
        0x00000018:    2155        U!      MOVS     r1,#0x55
        0x0000001a:    6001        .`      STR      r1,[r0,#0]
        0x0000001c:    f04f31ff    O..1    MOV      r1,#0xffffffff
        0x00000020:    6041        A`      STR      r1,[r0,#4]
        0x00000022:    6081        .`      STR      r1,[r0,#8]
        0x00000024:    f3bf8f4f    ..O.    DSB      
        0x00000028:    f3bf8f6f    ..o.    ISB      
        0x0000002c:    bf00        ..      NOP      
        0x0000002e:    2100        .!      MOVS     r1,#0
        0x00000030:    bf00        ..      NOP      
        0x00000032:    6041        A`      STR      r1,[r0,#4]
        0x00000034:    6081        .`      STR      r1,[r0,#8]
        0x00000036:    6001        .`      STR      r1,[r0,#0]
        0x00000038:    f001f8cc    ....    BL       SystemInit ; 0x11d4
        0x0000003c:    f000f88a    ....    BL       W25N01G_Init ; 0x154
        0x00000040:    e8bd4080    ...@    POP      {r7,lr}
        0x00000044:    2000        .       MOVS     r0,#0
        0x00000046:    4770        pG      BX       lr
    UnInit
        0x00000048:    2000        .       MOVS     r0,#0
        0x0000004a:    4770        pG      BX       lr
    EraseSector
        0x0000004c:    f1004110    ...A    ADD      r1,r0,#0x90000000
        0x00000050:    f1b16f00    ...o    CMP      r1,#0x8000000
        0x00000054:    bf84        ..      ITT      HI
        0x00000056:    2001        .       MOVHI    r0,#1
        0x00000058:    4770        pG      BXHI     lr
        0x0000005a:    b580        ..      PUSH     {r7,lr}
        0x0000005c:    f04f5100    O..Q    MOV      r1,#0x20000000
        0x00000060:    eb010040    ..@.    ADD      r0,r1,r0,LSL #1
        0x00000064:    2101        .!      MOVS     r1,#1
        0x00000066:    f000f955    ..U.    BL       W25N01G_Erase ; 0x314
        0x0000006a:    2000        .       MOVS     r0,#0
        0x0000006c:    bd80        ..      POP      {r7,pc}
        0x0000006e:    bf00        ..      NOP      
    ProgramPage
        0x00000070:    f1004110    ...A    ADD      r1,r0,#0x90000000
        0x00000074:    f1b16f00    ...o    CMP      r1,#0x8000000
        0x00000078:    bf84        ..      ITT      HI
        0x0000007a:    2001        .       MOVHI    r0,#1
        0x0000007c:    4770        pG      BXHI     lr
        0x0000007e:    b580        ..      PUSH     {r7,lr}
        0x00000080:    f04f5100    O..Q    MOV      r1,#0x20000000
        0x00000084:    eb010040    ..@.    ADD      r0,r1,r0,LSL #1
        0x00000088:    4611        .F      MOV      r1,r2
        0x0000008a:    2204        ."      MOVS     r2,#4
        0x0000008c:    2301        .#      MOVS     r3,#1
        0x0000008e:    f000f987    ....    BL       W25N01G_Write_ ; 0x3a0
        0x00000092:    2000        .       MOVS     r0,#0
        0x00000094:    bd80        ..      POP      {r7,pc}
        0x00000096:    bf00        ..      NOP      
    Verify
        0x00000098:    b5f0        ..      PUSH     {r4-r7,lr}
        0x0000009a:    b081        ..      SUB      sp,sp,#4
        0x0000009c:    4604        .F      MOV      r4,r0
        0x0000009e:    f1004010    ...@    ADD      r0,r0,#0x90000000
        0x000000a2:    f1b06f00    ...o    CMP      r0,#0x8000000
        0x000000a6:    bf82        ..      ITTT     HI
        0x000000a8:    4620         F      MOVHI    r0,r4
        0x000000aa:    b001        ..      ADDHI    sp,sp,#4
        0x000000ac:    bdf0        ..      POPHI    {r4-r7,pc}
        0x000000ae:    f04f5000    O..P    MOV      r0,#0x20000000
        0x000000b2:    f240070d    @...    MOVW     r7,#0xd
        0x000000b6:    eb000044    ..D.    ADD      r0,r0,r4,LSL #1
        0x000000ba:    f2c00700    ....    MOVT     r7,#0
        0x000000be:    4616        .F      MOV      r6,r2
        0x000000c0:    460d        .F      MOV      r5,r1
        0x000000c2:    f04f0c01    O...    MOV      r12,#1
        0x000000c6:    eb090107    ....    ADD      r1,r9,r7
        0x000000ca:    2201        ."      MOVS     r2,#1
        0x000000cc:    2304        .#      MOVS     r3,#4
        0x000000ce:    f8cdc000    ....    STR      r12,[sp,#0]
        0x000000d2:    f000f9f3    ....    BL       W25N01G_Read_ ; 0x4bc
        0x000000d6:    2d00        .-      CMP      r5,#0
        0x000000d8:    4629        )F      MOV      r1,r5
        0x000000da:    bf18        ..      IT       NE
        0x000000dc:    2101        .!      MOVNE    r1,#1
        0x000000de:    d018        ..      BEQ      0x112 ; Verify + 122
        0x000000e0:    f8190007    ....    LDRB     r0,[r9,r7]
        0x000000e4:    7832        2x      LDRB     r2,[r6,#0]
        0x000000e6:    4290        .B      CMP      r0,r2
        0x000000e8:    f04f0000    O...    MOV      r0,#0
        0x000000ec:    d10f        ..      BNE      0x10e ; Verify + 118
        0x000000ee:    2001        .       MOVS     r0,#1
        0x000000f0:    42a8        .B      CMP      r0,r5
        0x000000f2:    f04f0100    O...    MOV      r1,#0
        0x000000f6:    bf38        8.      IT       CC
        0x000000f8:    2101        .!      MOVCC    r1,#1
        0x000000fa:    4285        .B      CMP      r5,r0
        0x000000fc:    d00a        ..      BEQ      0x114 ; Verify + 124
        0x000000fe:    eb090207    ....    ADD      r2,r9,r7
        0x00000102:    5c12        .\      LDRB     r2,[r2,r0]
        0x00000104:    5c33        3\      LDRB     r3,[r6,r0]
        0x00000106:    3001        .0      ADDS     r0,#1
        0x00000108:    429a        .B      CMP      r2,r3
        0x0000010a:    d0f1        ..      BEQ      0xf0 ; Verify + 88
        0x0000010c:    3801        .8      SUBS     r0,#1
        0x0000010e:    4420         D      ADD      r0,r0,r4
        0x00000110:    e000        ..      B        0x114 ; Verify + 124
        0x00000112:    e7ff        ..      B        0x114 ; Verify + 124
        0x00000114:    2900        .)      CMP      r1,#0
        0x00000116:    bf08        ..      IT       EQ
        0x00000118:    1928        (.      ADDEQ    r0,r5,r4
        0x0000011a:    b001        ..      ADD      sp,sp,#4
        0x0000011c:    bdf0        ..      POP      {r4-r7,pc}
        0x0000011e:    bf00        ..      NOP      
    Read
        0x00000120:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x00000122:    b082        ..      SUB      sp,sp,#8
        0x00000124:    4604        .F      MOV      r4,r0
        0x00000126:    f1004010    ...@    ADD      r0,r0,#0x90000000
        0x0000012a:    f1b06f00    ...o    CMP      r0,#0x8000000
        0x0000012e:    d80e        ..      BHI      0x14e ; Read + 46
        0x00000130:    f04f5000    O..P    MOV      r0,#0x20000000
        0x00000134:    eb000044    ..D.    ADD      r0,r0,r4,LSL #1
        0x00000138:    460d        .F      MOV      r5,r1
        0x0000013a:    f04f0c01    O...    MOV      r12,#1
        0x0000013e:    4611        .F      MOV      r1,r2
        0x00000140:    2201        ."      MOVS     r2,#1
        0x00000142:    2304        .#      MOVS     r3,#4
        0x00000144:    f8cdc000    ....    STR      r12,[sp,#0]
        0x00000148:    f000f9b8    ....    BL       W25N01G_Read_ ; 0x4bc
        0x0000014c:    442c        ,D      ADD      r4,r4,r5
        0x0000014e:    4620         F      MOV      r0,r4
        0x00000150:    b002        ..      ADD      sp,sp,#8
        0x00000152:    bdb0        ..      POP      {r4,r5,r7,pc}
    W25N01G_Init
        0x00000154:    b570        p.      PUSH     {r4-r6,lr}
        0x00000156:    b082        ..      SUB      sp,sp,#8
        0x00000158:    2410        .$      MOVS     r4,#0x10
        0x0000015a:    f2c4040a    ....    MOVT     r4,#0x400a
        0x0000015e:    4620         F      MOV      r0,r4
        0x00000160:    2105        .!      MOVS     r1,#5
        0x00000162:    2202        ."      MOVS     r2,#2
        0x00000164:    2300        .#      MOVS     r3,#0
        0x00000166:    2500        .%      MOVS     r5,#0
        0x00000168:    f000fa5c    ..\.    BL       PORT_Init ; 0x624
        0x0000016c:    4620         F      MOV      r0,r4
        0x0000016e:    2104        .!      MOVS     r1,#4
        0x00000170:    2202        ."      MOVS     r2,#2
        0x00000172:    2300        .#      MOVS     r3,#0
        0x00000174:    f000fa56    ..V.    BL       PORT_Init ; 0x624
        0x00000178:    4620         F      MOV      r0,r4
        0x0000017a:    2103        .!      MOVS     r1,#3
        0x0000017c:    2202        ."      MOVS     r2,#2
        0x0000017e:    2301        .#      MOVS     r3,#1
        0x00000180:    2601        .&      MOVS     r6,#1
        0x00000182:    f000fa4f    ..O.    BL       PORT_Init ; 0x624
        0x00000186:    4620         F      MOV      r0,r4
        0x00000188:    2102        .!      MOVS     r1,#2
        0x0000018a:    2202        ."      MOVS     r2,#2
        0x0000018c:    2301        .#      MOVS     r3,#1
        0x0000018e:    f000fa49    ..I.    BL       PORT_Init ; 0x624
        0x00000192:    4620         F      MOV      r0,r4
        0x00000194:    2101        .!      MOVS     r1,#1
        0x00000196:    2202        ."      MOVS     r2,#2
        0x00000198:    2301        .#      MOVS     r3,#1
        0x0000019a:    f000fa43    ..C.    BL       PORT_Init ; 0x624
        0x0000019e:    4620         F      MOV      r0,r4
        0x000001a0:    2100        .!      MOVS     r1,#0
        0x000001a2:    2202        ."      MOVS     r2,#2
        0x000001a4:    2301        .#      MOVS     r3,#1
        0x000001a6:    f000fa3d    ..=.    BL       PORT_Init ; 0x624
        0x000001aa:    f8d40100    ....    LDR      r0,[r4,#0x100]
        0x000001ae:    4669        iF      MOV      r1,sp
        0x000001b0:    f0400001    @...    ORR      r0,r0,#1
        0x000001b4:    f8c40100    ....    STR      r0,[r4,#0x100]
        0x000001b8:    201a        .       MOVS     r0,#0x1a
        0x000001ba:    f2c00003    ....    MOVT     r0,#3
        0x000001be:    9000        ..      STR      r0,[sp,#0]
        0x000001c0:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x000001c4:    f8ad6004    ...`    STRH     r6,[sp,#4]
        0x000001c8:    f88d5006    ...P    STRB     r5,[sp,#6]
        0x000001cc:    f000fb68    ..h.    BL       QSPI_Init ; 0x8a0
        0x000001d0:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x000001d4:    f000fbc6    ....    BL       QSPI_Open ; 0x964
        0x000001d8:    20b0        .       MOVS     r0,#0xb0
        0x000001da:    f000f807    ....    BL       W25N01G_ReadReg ; 0x1ec
        0x000001de:    f0400108    @...    ORR      r1,r0,#8
        0x000001e2:    20b0        .       MOVS     r0,#0xb0
        0x000001e4:    f000f82e    ....    BL       W25N01G_WriteReg ; 0x244
        0x000001e8:    b002        ..      ADD      sp,sp,#8
        0x000001ea:    bd70        p.      POP      {r4-r6,pc}
    W25N01G_ReadReg
        0x000001ec:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x000001ee:    b088        ..      SUB      sp,sp,#0x20
        0x000001f0:    ad01        ..      ADD      r5,sp,#4
        0x000001f2:    4604        .F      MOV      r4,r0
        0x000001f4:    4628        (F      MOV      r0,r5
        0x000001f6:    f000fbbb    ....    BL       QSPI_CmdStructClear ; 0x970
        0x000001fa:    f2401005    @...    MOV      r0,#0x105
        0x000001fe:    2100        .!      MOVS     r1,#0
        0x00000200:    f8ad0004    ....    STRH     r0,[sp,#4]
        0x00000204:    2001        .       MOVS     r0,#1
        0x00000206:    f88d1014    ....    STRB     r1,[sp,#0x14]
        0x0000020a:    f44f7180    O..q    MOV      r1,#0x100
        0x0000020e:    f8ad000c    ....    STRH     r0,[sp,#0xc]
        0x00000212:    f8ad1016    ....    STRH     r1,[sp,#0x16]
        0x00000216:    9006        ..      STR      r0,[sp,#0x18]
        0x00000218:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x0000021c:    2101        .!      MOVS     r1,#1
        0x0000021e:    462a        *F      MOV      r2,r5
        0x00000220:    9402        ..      STR      r4,[sp,#8]
        0x00000222:    f000fbaf    ....    BL       QSPI_Command ; 0x984
        0x00000226:    f000f9f5    ....    BL       QSPI_FIFOEmpty ; 0x614
        0x0000022a:    b120         .      CBZ      r0,0x236 ; W25N01G_ReadReg + 74
        0x0000022c:    bf00        ..      NOP      
        0x0000022e:    f000f9f1    ....    BL       QSPI_FIFOEmpty ; 0x614
        0x00000232:    2800        .(      CMP      r0,#0
        0x00000234:    d1fa        ..      BNE      0x22c ; W25N01G_ReadReg + 64
        0x00000236:    2020                MOVS     r0,#0x20
        0x00000238:    f6c70000    ....    MOVT     r0,#0x7800
        0x0000023c:    7800        .x      LDRB     r0,[r0,#0]
        0x0000023e:    b008        ..      ADD      sp,sp,#0x20
        0x00000240:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x00000242:    bf00        ..      NOP      
    W25N01G_WriteReg
        0x00000244:    b570        p.      PUSH     {r4-r6,lr}
        0x00000246:    b088        ..      SUB      sp,sp,#0x20
        0x00000248:    ae01        ..      ADD      r6,sp,#4
        0x0000024a:    4605        .F      MOV      r5,r0
        0x0000024c:    4630        0F      MOV      r0,r6
        0x0000024e:    460c        .F      MOV      r4,r1
        0x00000250:    f000fb8e    ....    BL       QSPI_CmdStructClear ; 0x970
        0x00000254:    f2401001    @...    MOV      r0,#0x101
        0x00000258:    2100        .!      MOVS     r1,#0
        0x0000025a:    f8ad0004    ....    STRH     r0,[sp,#4]
        0x0000025e:    2001        .       MOVS     r0,#1
        0x00000260:    f88d1014    ....    STRB     r1,[sp,#0x14]
        0x00000264:    f44f7180    O..q    MOV      r1,#0x100
        0x00000268:    f8ad000c    ....    STRH     r0,[sp,#0xc]
        0x0000026c:    f8ad1016    ....    STRH     r1,[sp,#0x16]
        0x00000270:    9006        ..      STR      r0,[sp,#0x18]
        0x00000272:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x00000276:    2100        .!      MOVS     r1,#0
        0x00000278:    4632        2F      MOV      r2,r6
        0x0000027a:    9502        ..      STR      r5,[sp,#8]
        0x0000027c:    f000fb82    ....    BL       QSPI_Command ; 0x984
        0x00000280:    2020                MOVS     r0,#0x20
        0x00000282:    f6c70000    ....    MOVT     r0,#0x7800
        0x00000286:    7004        .p      STRB     r4,[r0,#0]
        0x00000288:    f000f87a    ..z.    BL       QSPI_Busy ; 0x380
        0x0000028c:    b128        (.      CBZ      r0,0x29a ; W25N01G_WriteReg + 86
        0x0000028e:    bf00        ..      NOP      
        0x00000290:    bf00        ..      NOP      
        0x00000292:    f000f875    ..u.    BL       QSPI_Busy ; 0x380
        0x00000296:    2800        .(      CMP      r0,#0
        0x00000298:    d1fa        ..      BNE      0x290 ; W25N01G_WriteReg + 76
        0x0000029a:    b008        ..      ADD      sp,sp,#0x20
        0x0000029c:    bd70        p.      POP      {r4-r6,pc}
        0x0000029e:    bf00        ..      NOP      
    W25N01G_ReadJEDEC
        0x000002a0:    b510        ..      PUSH     {r4,lr}
        0x000002a2:    b088        ..      SUB      sp,sp,#0x20
        0x000002a4:    ac01        ..      ADD      r4,sp,#4
        0x000002a6:    4620         F      MOV      r0,r4
        0x000002a8:    f000fb62    ..b.    BL       QSPI_CmdStructClear ; 0x970
        0x000002ac:    f240109f    @...    MOV      r0,#0x19f
        0x000002b0:    f8ad0004    ....    STRH     r0,[sp,#4]
        0x000002b4:    2000        .       MOVS     r0,#0
        0x000002b6:    f88d000c    ....    STRB     r0,[sp,#0xc]
        0x000002ba:    f88d0014    ....    STRB     r0,[sp,#0x14]
        0x000002be:    f44f7084    O..p    MOV      r0,#0x108
        0x000002c2:    f8ad0016    ....    STRH     r0,[sp,#0x16]
        0x000002c6:    2003        .       MOVS     r0,#3
        0x000002c8:    9006        ..      STR      r0,[sp,#0x18]
        0x000002ca:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x000002ce:    2101        .!      MOVS     r1,#1
        0x000002d0:    4622        "F      MOV      r2,r4
        0x000002d2:    f000fb57    ..W.    BL       QSPI_Command ; 0x984
        0x000002d6:    f000f815    ....    BL       QSPI_FIFOCount ; 0x304
        0x000002da:    2802        .(      CMP      r0,#2
        0x000002dc:    d805        ..      BHI      0x2ea ; W25N01G_ReadJEDEC + 74
        0x000002de:    bf00        ..      NOP      
        0x000002e0:    bf00        ..      NOP      
        0x000002e2:    f000f80f    ....    BL       QSPI_FIFOCount ; 0x304
        0x000002e6:    2803        .(      CMP      r0,#3
        0x000002e8:    d3fa        ..      BCC      0x2e0 ; W25N01G_ReadJEDEC + 64
        0x000002ea:    2020                MOVS     r0,#0x20
        0x000002ec:    f6c70000    ....    MOVT     r0,#0x7800
        0x000002f0:    7801        .x      LDRB     r1,[r0,#0]
        0x000002f2:    7802        .x      LDRB     r2,[r0,#0]
        0x000002f4:    7800        .x      LDRB     r0,[r0,#0]
        0x000002f6:    0212        ..      LSLS     r2,r2,#8
        0x000002f8:    ea424101    B..A    ORR      r1,r2,r1,LSL #16
        0x000002fc:    4408        .D      ADD      r0,r0,r1
        0x000002fe:    b008        ..      ADD      sp,sp,#0x20
        0x00000300:    bd10        ..      POP      {r4,pc}
        0x00000302:    bf00        ..      NOP      
    QSPI_FIFOCount
        0x00000304:    2008        .       MOVS     r0,#8
        0x00000306:    f6c70000    ....    MOVT     r0,#0x7800
        0x0000030a:    6800        .h      LDR      r0,[r0,#0]
        0x0000030c:    f3c02005    ...     UBFX     r0,r0,#8,#6
        0x00000310:    4770        pG      BX       lr
        0x00000312:    bf00        ..      NOP      
    W25N01G_Erase
        0x00000314:    b570        p.      PUSH     {r4-r6,lr}
        0x00000316:    b088        ..      SUB      sp,sp,#0x20
        0x00000318:    ae01        ..      ADD      r6,sp,#4
        0x0000031a:    4605        .F      MOV      r5,r0
        0x0000031c:    4630        0F      MOV      r0,r6
        0x0000031e:    460c        .F      MOV      r4,r1
        0x00000320:    f000fb26    ..&.    BL       QSPI_CmdStructClear ; 0x970
        0x00000324:    f44f70ec    O..p    MOV      r0,#0x1d8
        0x00000328:    f8ad0004    ....    STRH     r0,[sp,#4]
        0x0000032c:    f2402001    @..     MOV      r0,#0x201
        0x00000330:    f8ad000c    ....    STRH     r0,[sp,#0xc]
        0x00000334:    0b28        (.      LSRS     r0,r5,#12
        0x00000336:    9002        ..      STR      r0,[sp,#8]
        0x00000338:    2000        .       MOVS     r0,#0
        0x0000033a:    f88d0014    ....    STRB     r0,[sp,#0x14]
        0x0000033e:    f8ad0016    ....    STRH     r0,[sp,#0x16]
        0x00000342:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x00000346:    2106        .!      MOVS     r1,#6
        0x00000348:    2200        ."      MOVS     r2,#0
        0x0000034a:    2300        .#      MOVS     r3,#0
        0x0000034c:    f000fb9e    ....    BL       QSPI_WriteReg ; 0xa8c
        0x00000350:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x00000354:    2100        .!      MOVS     r1,#0
        0x00000356:    4632        2F      MOV      r2,r6
        0x00000358:    f000fb14    ....    BL       QSPI_Command ; 0x984
        0x0000035c:    f000f810    ....    BL       QSPI_Busy ; 0x380
        0x00000360:    b108        ..      CBZ      r0,0x366 ; W25N01G_Erase + 82
        0x00000362:    bf00        ..      NOP      
        0x00000364:    e7fa        ..      B        0x35c ; W25N01G_Erase + 72
        0x00000366:    b144        D.      CBZ      r4,0x37a ; W25N01G_Erase + 102
        0x00000368:    f000f812    ....    BL       W25N01G_FlashBusy ; 0x390
        0x0000036c:    b128        (.      CBZ      r0,0x37a ; W25N01G_Erase + 102
        0x0000036e:    bf00        ..      NOP      
        0x00000370:    bf00        ..      NOP      
        0x00000372:    f000f80d    ....    BL       W25N01G_FlashBusy ; 0x390
        0x00000376:    2800        .(      CMP      r0,#0
        0x00000378:    d1fa        ..      BNE      0x370 ; W25N01G_Erase + 92
        0x0000037a:    b008        ..      ADD      sp,sp,#0x20
        0x0000037c:    bd70        p.      POP      {r4-r6,pc}
        0x0000037e:    bf00        ..      NOP      
    QSPI_Busy
        0x00000380:    2008        .       MOVS     r0,#8
        0x00000382:    f6c70000    ....    MOVT     r0,#0x7800
        0x00000386:    6800        .h      LDR      r0,[r0,#0]
        0x00000388:    f3c01040    ..@.    UBFX     r0,r0,#5,#1
        0x0000038c:    4770        pG      BX       lr
        0x0000038e:    bf00        ..      NOP      
    W25N01G_FlashBusy
        0x00000390:    b580        ..      PUSH     {r7,lr}
        0x00000392:    20c0        .       MOVS     r0,#0xc0
        0x00000394:    f7ffff2a    ..*.    BL       W25N01G_ReadReg ; 0x1ec
        0x00000398:    f0000001    ....    AND      r0,r0,#1
        0x0000039c:    bd80        ..      POP      {r7,pc}
        0x0000039e:    bf00        ..      NOP      
    W25N01G_Write_
        0x000003a0:    e92d41f0    -..A    PUSH     {r4-r8,lr}
        0x000003a4:    b088        ..      SUB      sp,sp,#0x20
        0x000003a6:    af01        ..      ADD      r7,sp,#4
        0x000003a8:    4680        .F      MOV      r8,r0
        0x000003aa:    4638        8F      MOV      r0,r7
        0x000003ac:    461e        .F      MOV      r6,r3
        0x000003ae:    4614        .F      MOV      r4,r2
        0x000003b0:    460d        .F      MOV      r5,r1
        0x000003b2:    f000fadd    ....    BL       QSPI_CmdStructClear ; 0x970
        0x000003b6:    2001        .       MOVS     r0,#1
        0x000003b8:    2101        .!      MOVS     r1,#1
        0x000003ba:    2202        ."      MOVS     r2,#2
        0x000003bc:    2c04        .,      CMP      r4,#4
        0x000003be:    bf08        ..      IT       EQ
        0x000003c0:    2103        .!      MOVEQ    r1,#3
        0x000003c2:    bf08        ..      IT       EQ
        0x000003c4:    2232        2"      MOVEQ    r2,#0x32
        0x000003c6:    f88d0005    ....    STRB     r0,[sp,#5]
        0x000003ca:    f2401001    @...    MOV      r0,#0x101
        0x000003ce:    f8ad000c    ....    STRH     r0,[sp,#0xc]
        0x000003d2:    2000        .       MOVS     r0,#0
        0x000003d4:    9002        ..      STR      r0,[sp,#8]
        0x000003d6:    f88d0014    ....    STRB     r0,[sp,#0x14]
        0x000003da:    f88d0016    ....    STRB     r0,[sp,#0x16]
        0x000003de:    f44f6000    O..`    MOV      r0,#0x800
        0x000003e2:    f88d2004    ...     STRB     r2,[sp,#4]
        0x000003e6:    f88d1017    ....    STRB     r1,[sp,#0x17]
        0x000003ea:    9006        ..      STR      r0,[sp,#0x18]
        0x000003ec:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x000003f0:    2106        .!      MOVS     r1,#6
        0x000003f2:    2200        ."      MOVS     r2,#0
        0x000003f4:    2300        .#      MOVS     r3,#0
        0x000003f6:    f000fb49    ..I.    BL       QSPI_WriteReg ; 0xa8c
        0x000003fa:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x000003fe:    2100        .!      MOVS     r1,#0
        0x00000400:    463a        :F      MOV      r2,r7
        0x00000402:    f000fabf    ....    BL       QSPI_Command ; 0x984
        0x00000406:    b346        F.      CBZ      r6,0x45a ; W25N01G_Write_ + 186
        0x00000408:    2620         &      MOVS     r6,#0x20
        0x0000040a:    2400        .$      MOVS     r4,#0
        0x0000040c:    f6c70600    ....    MOVT     r6,#0x7800
        0x00000410:    e007        ..      B        0x422 ; W25N01G_Write_ + 130
        0x00000412:    bf00        ..      NOP      
        0x00000414:    f8550024    U.$.    LDR      r0,[r5,r4,LSL #2]
        0x00000418:    3401        .4      ADDS     r4,#1
        0x0000041a:    f5b47f00    ....    CMP      r4,#0x200
        0x0000041e:    6030        0`      STR      r0,[r6,#0]
        0x00000420:    d00b        ..      BEQ      0x43a ; W25N01G_Write_ + 154
        0x00000422:    f000f81d    ....    BL       QSPI_FIFOSpace ; 0x460
        0x00000426:    2803        .(      CMP      r0,#3
        0x00000428:    d8f4        ..      BHI      0x414 ; W25N01G_Write_ + 116
        0x0000042a:    bf00        ..      NOP      
        0x0000042c:    bf00        ..      NOP      
        0x0000042e:    f000f817    ....    BL       QSPI_FIFOSpace ; 0x460
        0x00000432:    2804        .(      CMP      r0,#4
        0x00000434:    d3fa        ..      BCC      0x42c ; W25N01G_Write_ + 140
        0x00000436:    e7ed        ..      B        0x414 ; W25N01G_Write_ + 116
        0x00000438:    bf00        ..      NOP      
        0x0000043a:    f7ffffa1    ....    BL       QSPI_Busy ; 0x380
        0x0000043e:    2800        .(      CMP      r0,#0
        0x00000440:    d1fa        ..      BNE      0x438 ; W25N01G_Write_ + 152
        0x00000442:    4640        @F      MOV      r0,r8
        0x00000444:    f000f812    ....    BL       W25N01G_Program_Execute ; 0x46c
        0x00000448:    f7ffffa2    ....    BL       W25N01G_FlashBusy ; 0x390
        0x0000044c:    b128        (.      CBZ      r0,0x45a ; W25N01G_Write_ + 186
        0x0000044e:    bf00        ..      NOP      
        0x00000450:    bf00        ..      NOP      
        0x00000452:    f7ffff9d    ....    BL       W25N01G_FlashBusy ; 0x390
        0x00000456:    2800        .(      CMP      r0,#0
        0x00000458:    d1fa        ..      BNE      0x450 ; W25N01G_Write_ + 176
        0x0000045a:    b008        ..      ADD      sp,sp,#0x20
        0x0000045c:    e8bd81f0    ....    POP      {r4-r8,pc}
    QSPI_FIFOSpace
        0x00000460:    b580        ..      PUSH     {r7,lr}
        0x00000462:    f7ffff4f    ..O.    BL       QSPI_FIFOCount ; 0x304
        0x00000466:    f1c00010    ....    RSB      r0,r0,#0x10
        0x0000046a:    bd80        ..      POP      {r7,pc}
    W25N01G_Program_Execute
        0x0000046c:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x0000046e:    b088        ..      SUB      sp,sp,#0x20
        0x00000470:    ad01        ..      ADD      r5,sp,#4
        0x00000472:    4604        .F      MOV      r4,r0
        0x00000474:    4628        (F      MOV      r0,r5
        0x00000476:    f000fa7b    ..{.    BL       QSPI_CmdStructClear ; 0x970
        0x0000047a:    f44f7088    O..p    MOV      r0,#0x110
        0x0000047e:    f8ad0004    ....    STRH     r0,[sp,#4]
        0x00000482:    f2402001    @..     MOV      r0,#0x201
        0x00000486:    f8ad000c    ....    STRH     r0,[sp,#0xc]
        0x0000048a:    0b20         .      LSRS     r0,r4,#12
        0x0000048c:    9002        ..      STR      r0,[sp,#8]
        0x0000048e:    2000        .       MOVS     r0,#0
        0x00000490:    f88d0014    ....    STRB     r0,[sp,#0x14]
        0x00000494:    f8ad0016    ....    STRH     r0,[sp,#0x16]
        0x00000498:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x0000049c:    2100        .!      MOVS     r1,#0
        0x0000049e:    462a        *F      MOV      r2,r5
        0x000004a0:    f000fa70    ..p.    BL       QSPI_Command ; 0x984
        0x000004a4:    f7ffff6c    ..l.    BL       QSPI_Busy ; 0x380
        0x000004a8:    b128        (.      CBZ      r0,0x4b6 ; W25N01G_Program_Execute + 74
        0x000004aa:    bf00        ..      NOP      
        0x000004ac:    bf00        ..      NOP      
        0x000004ae:    f7ffff67    ..g.    BL       QSPI_Busy ; 0x380
        0x000004b2:    2800        .(      CMP      r0,#0
        0x000004b4:    d1fa        ..      BNE      0x4ac ; W25N01G_Program_Execute + 64
        0x000004b6:    b008        ..      ADD      sp,sp,#0x20
        0x000004b8:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x000004ba:    bf00        ..      NOP      
    W25N01G_Read_
        0x000004bc:    e92d4df0    -..M    PUSH     {r4-r8,r10,r11,lr}
        0x000004c0:    b088        ..      SUB      sp,sp,#0x20
        0x000004c2:    ad01        ..      ADD      r5,sp,#4
        0x000004c4:    4607        .F      MOV      r7,r0
        0x000004c6:    4628        (F      MOV      r0,r5
        0x000004c8:    4698        .F      MOV      r8,r3
        0x000004ca:    4616        .F      MOV      r6,r2
        0x000004cc:    460c        .F      MOV      r4,r1
        0x000004ce:    f000fa4f    ..O.    BL       QSPI_CmdStructClear ; 0x970
        0x000004d2:    f2401013    @...    MOV      r0,#0x113
        0x000004d6:    f8ad0004    ....    STRH     r0,[sp,#4]
        0x000004da:    f2402001    @..     MOV      r0,#0x201
        0x000004de:    f8ad000c    ....    STRH     r0,[sp,#0xc]
        0x000004e2:    0b38        8.      LSRS     r0,r7,#12
        0x000004e4:    9002        ..      STR      r0,[sp,#8]
        0x000004e6:    2000        .       MOVS     r0,#0
        0x000004e8:    f88d0014    ....    STRB     r0,[sp,#0x14]
        0x000004ec:    f8ad0016    ....    STRH     r0,[sp,#0x16]
        0x000004f0:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x000004f4:    2100        .!      MOVS     r1,#0
        0x000004f6:    462a        *F      MOV      r2,r5
        0x000004f8:    f000fa44    ..D.    BL       QSPI_Command ; 0x984
        0x000004fc:    f7ffff40    ..@.    BL       QSPI_Busy ; 0x380
        0x00000500:    b118        ..      CBZ      r0,0x50a ; W25N01G_Read_ + 78
        0x00000502:    bf00        ..      NOP      
        0x00000504:    e7fa        ..      B        0x4fc ; W25N01G_Read_ + 64
        0x00000506:    bf00        ..      NOP      
        0x00000508:    bf00        ..      NOP      
        0x0000050a:    f7ffff41    ..A.    BL       W25N01G_FlashBusy ; 0x390
        0x0000050e:    2800        .(      CMP      r0,#0
        0x00000510:    d1fa        ..      BNE      0x508 ; W25N01G_Read_ + 76
        0x00000512:    ea481006    H...    ORR      r0,r8,r6,LSL #4
        0x00000516:    f8dda040    ..@.    LDR      r10,[sp,#0x40]
        0x0000051a:    f04f080b    O...    MOV      r8,#0xb
        0x0000051e:    f04f0b08    O...    MOV      r11,#8
        0x00000522:    2821        !(      CMP      r0,#0x21
        0x00000524:    f04f0601    O...    MOV      r6,#1
        0x00000528:    dc0c        ..      BGT      0x544 ; W25N01G_Read_ + 136
        0x0000052a:    2812        .(      CMP      r0,#0x12
        0x0000052c:    d017        ..      BEQ      0x55e ; W25N01G_Read_ + 162
        0x0000052e:    2814        .(      CMP      r0,#0x14
        0x00000530:    f04f0701    O...    MOV      r7,#1
        0x00000534:    d120         .      BNE      0x578 ; W25N01G_Read_ + 188
        0x00000536:    f04f086b    O.k.    MOV      r8,#0x6b
        0x0000053a:    f04f0b08    O...    MOV      r11,#8
        0x0000053e:    2703        .'      MOVS     r7,#3
        0x00000540:    2601        .&      MOVS     r6,#1
        0x00000542:    e019        ..      B        0x578 ; W25N01G_Read_ + 188
        0x00000544:    2822        "(      CMP      r0,#0x22
        0x00000546:    d011        ..      BEQ      0x56c ; W25N01G_Read_ + 176
        0x00000548:    2844        D(      CMP      r0,#0x44
        0x0000054a:    f04f0701    O...    MOV      r7,#1
        0x0000054e:    d113        ..      BNE      0x578 ; W25N01G_Read_ + 188
        0x00000550:    f04f08eb    O...    MOV      r8,#0xeb
        0x00000554:    f04f0b04    O...    MOV      r11,#4
        0x00000558:    2603        .&      MOVS     r6,#3
        0x0000055a:    2703        .'      MOVS     r7,#3
        0x0000055c:    e00c        ..      B        0x578 ; W25N01G_Read_ + 188
        0x0000055e:    f04f083b    O.;.    MOV      r8,#0x3b
        0x00000562:    f04f0b08    O...    MOV      r11,#8
        0x00000566:    2702        .'      MOVS     r7,#2
        0x00000568:    2601        .&      MOVS     r6,#1
        0x0000056a:    e005        ..      B        0x578 ; W25N01G_Read_ + 188
        0x0000056c:    f04f08bb    O...    MOV      r8,#0xbb
        0x00000570:    f04f0b04    O...    MOV      r11,#4
        0x00000574:    2602        .&      MOVS     r6,#2
        0x00000576:    2702        .'      MOVS     r7,#2
        0x00000578:    ad01        ..      ADD      r5,sp,#4
        0x0000057a:    4628        (F      MOV      r0,r5
        0x0000057c:    f000f9f8    ....    BL       QSPI_CmdStructClear ; 0x970
        0x00000580:    2001        .       MOVS     r0,#1
        0x00000582:    f88d0005    ....    STRB     r0,[sp,#5]
        0x00000586:    f88d000d    ....    STRB     r0,[sp,#0xd]
        0x0000058a:    2000        .       MOVS     r0,#0
        0x0000058c:    9002        ..      STR      r0,[sp,#8]
        0x0000058e:    f88d0014    ....    STRB     r0,[sp,#0x14]
        0x00000592:    f44f6000    O..`    MOV      r0,#0x800
        0x00000596:    9006        ..      STR      r0,[sp,#0x18]
        0x00000598:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x0000059c:    2101        .!      MOVS     r1,#1
        0x0000059e:    462a        *F      MOV      r2,r5
        0x000005a0:    f88d8004    ....    STRB     r8,[sp,#4]
        0x000005a4:    f88d600c    ...`    STRB     r6,[sp,#0xc]
        0x000005a8:    f88db016    ....    STRB     r11,[sp,#0x16]
        0x000005ac:    f88d7017    ...p    STRB     r7,[sp,#0x17]
        0x000005b0:    f000f9e8    ....    BL       QSPI_Command ; 0x984
        0x000005b4:    f1ba0f00    ....    CMP      r10,#0
        0x000005b8:    d016        ..      BEQ      0x5e8 ; W25N01G_Read_ + 300
        0x000005ba:    2620         &      MOVS     r6,#0x20
        0x000005bc:    2500        .%      MOVS     r5,#0
        0x000005be:    f6c70600    ....    MOVT     r6,#0x7800
        0x000005c2:    e006        ..      B        0x5d2 ; W25N01G_Read_ + 278
        0x000005c4:    6830        0h      LDR      r0,[r6,#0]
        0x000005c6:    f8440025    D.%.    STR      r0,[r4,r5,LSL #2]
        0x000005ca:    3501        .5      ADDS     r5,#1
        0x000005cc:    f5b57f00    ....    CMP      r5,#0x200
        0x000005d0:    d00a        ..      BEQ      0x5e8 ; W25N01G_Read_ + 300
        0x000005d2:    f7fffe97    ....    BL       QSPI_FIFOCount ; 0x304
        0x000005d6:    2803        .(      CMP      r0,#3
        0x000005d8:    d8f4        ..      BHI      0x5c4 ; W25N01G_Read_ + 264
        0x000005da:    bf00        ..      NOP      
        0x000005dc:    bf00        ..      NOP      
        0x000005de:    f7fffe91    ....    BL       QSPI_FIFOCount ; 0x304
        0x000005e2:    2804        .(      CMP      r0,#4
        0x000005e4:    d3fa        ..      BCC      0x5dc ; W25N01G_Read_ + 288
        0x000005e6:    e7ed        ..      B        0x5c4 ; W25N01G_Read_ + 264
        0x000005e8:    b008        ..      ADD      sp,sp,#0x20
        0x000005ea:    e8bd8df0    ....    POP      {r4-r8,r10,r11,pc}
        0x000005ee:    bf00        ..      NOP      
    W25N01G_FlashProtect
        0x000005f0:    b510        ..      PUSH     {r4,lr}
        0x000005f2:    4604        .F      MOV      r4,r0
        0x000005f4:    20a0        .       MOVS     r0,#0xa0
        0x000005f6:    f7fffdf9    ....    BL       W25N01G_ReadReg ; 0x1ec
        0x000005fa:    08a1        ..      LSRS     r1,r4,#2
        0x000005fc:    ea4101c4    A...    ORR      r1,r1,r4,LSL #3
        0x00000600:    f0000083    ....    AND      r0,r0,#0x83
        0x00000604:    f001017c    ..|.    AND      r1,r1,#0x7c
        0x00000608:    4401        .D      ADD      r1,r1,r0
        0x0000060a:    20a0        .       MOVS     r0,#0xa0
        0x0000060c:    f7fffe1a    ....    BL       W25N01G_WriteReg ; 0x244
        0x00000610:    bd10        ..      POP      {r4,pc}
        0x00000612:    bf00        ..      NOP      
    QSPI_FIFOEmpty
        0x00000614:    b580        ..      PUSH     {r7,lr}
        0x00000616:    f7fffe75    ..u.    BL       QSPI_FIFOCount ; 0x304
        0x0000061a:    fab0f080    ....    CLZ      r0,r0
        0x0000061e:    0940        @.      LSRS     r0,r0,#5
        0x00000620:    bd80        ..      POP      {r7,pc}
        0x00000622:    0000        ..      MOVS     r0,r0
    PORT_Init
        0x00000624:    b570        p.      PUSH     {r4-r6,lr}
        0x00000626:    2a64        d*      CMP      r2,#0x64
        0x00000628:    d323        #.      BCC      0x672 ; PORT_Init + 78
        0x0000062a:    2905        .)      CMP      r1,#5
        0x0000062c:    f1020c9c    ....    ADD      r12,r2,#0x9c
        0x00000630:    d804        ..      BHI      0x63c ; PORT_Init + 24
        0x00000632:    eb010e81    ....    ADD      lr,r1,r1,LSL #2
        0x00000636:    f50062e0    ...b    ADD      r2,r0,#0x700
        0x0000063a:    e00b        ..      B        0x654 ; PORT_Init + 48
        0x0000063c:    eb010281    ....    ADD      r2,r1,r1,LSL #2
        0x00000640:    290b        .)      CMP      r1,#0xb
        0x00000642:    bf87        ..      ITTEE    HI
        0x00000644:    f1a20e3c    ..<.    SUBHI    lr,r2,#0x3c
        0x00000648:    f50062e1    ...b    ADDHI    r2,r0,#0x708
        0x0000064c:    f1a20e1e    ....    SUBLS    lr,r2,#0x1e
        0x00000650:    f2007204    ...r    ADDLS    r2,r0,#0x704
        0x00000654:    241f        .$      MOVS     r4,#0x1f
        0x00000656:    6815        .h      LDR      r5,[r2,#0]
        0x00000658:    fa04f40e    ....    LSL      r4,r4,lr
        0x0000065c:    ea250404    %...    BIC      r4,r5,r4
        0x00000660:    6014        .`      STR      r4,[r2,#0]
        0x00000662:    fa5ff58c    _...    UXTB     r5,r12
        0x00000666:    6814        .h      LDR      r4,[r2,#0]
        0x00000668:    fa05f50e    ....    LSL      r5,r5,lr
        0x0000066c:    4325        %C      ORRS     r5,r5,r4
        0x0000066e:    6015        .`      STR      r5,[r2,#0]
        0x00000670:    2201        ."      MOVS     r2,#1
        0x00000672:    f06f051f    o...    MVN      r5,#0x1f
        0x00000676:    eb050681    ....    ADD      r6,r5,r1,LSL #2
        0x0000067a:    4604        .F      MOV      r4,r0
        0x0000067c:    2908        .)      CMP      r1,#8
        0x0000067e:    bf38        8.      IT       CC
        0x00000680:    008e        ..      LSLCC    r6,r1,#2
        0x00000682:    f04f0c0f    O...    MOV      r12,#0xf
        0x00000686:    bf28        (.      IT       CS
        0x00000688:    3404        .4      ADDCS    r4,#4
        0x0000068a:    f8d4e000    ....    LDR      lr,[r4,#0]
        0x0000068e:    fa0cf506    ....    LSL      r5,r12,r6
        0x00000692:    ea2e0505    ....    BIC      r5,lr,r5
        0x00000696:    6025        %`      STR      r5,[r4,#0]
        0x00000698:    6825        %h      LDR      r5,[r4,#0]
        0x0000069a:    40b2        .@      LSLS     r2,r2,r6
        0x0000069c:    432a        *C      ORRS     r2,r2,r5
        0x0000069e:    6022        "`      STR      r2,[r4,#0]
        0x000006a0:    2201        ."      MOVS     r2,#1
        0x000006a2:    fa02f101    ....    LSL      r1,r2,r1
        0x000006a6:    2b00        .+      CMP      r3,#0
        0x000006a8:    f8d02300    ...#    LDR      r2,[r0,#0x300]
        0x000006ac:    bf0c        ..      ITE      EQ
        0x000006ae:    ea220101    "...    BICEQ    r1,r2,r1
        0x000006b2:    4311        .C      ORRNE    r1,r1,r2
        0x000006b4:    f8c01300    ....    STR      r1,[r0,#0x300]
        0x000006b8:    bd70        p.      POP      {r4-r6,pc}
        0x000006ba:    0000        ..      MOVS     r0,r0
    GPIO_Init
        0x000006bc:    e92d45f0    -..E    PUSH     {r4-r8,r10,lr}
        0x000006c0:    b081        ..      SUB      sp,sp,#4
        0x000006c2:    4607        .F      MOV      r7,r0
        0x000006c4:    f64070ff    @..p    MOV      r0,#0xfff
        0x000006c8:    f2c40004    ....    MOVT     r0,#0x4004
        0x000006cc:    2400        .$      MOVS     r4,#0
        0x000006ce:    4698        .F      MOV      r8,r3
        0x000006d0:    4692        .F      MOV      r10,r2
        0x000006d2:    4287        .B      CMP      r7,r0
        0x000006d4:    460d        .F      MOV      r5,r1
        0x000006d6:    f2c4040a    ....    MOVT     r4,#0x400a
        0x000006da:    dd1a        ..      BLE      0x712 ; GPIO_Init + 86
        0x000006dc:    f2410000    A...    MOVW     r0,#0x1000
        0x000006e0:    f2c40004    ....    MOVT     r0,#0x4004
        0x000006e4:    4287        .B      CMP      r7,r0
        0x000006e6:    d028        (.      BEQ      0x73a ; GPIO_Init + 126
        0x000006e8:    f6410000    A...    MOVW     r0,#0x1800
        0x000006ec:    f2c40004    ....    MOVT     r0,#0x4004
        0x000006f0:    4287        .B      CMP      r7,r0
        0x000006f2:    d02b        +.      BEQ      0x74c ; GPIO_Init + 144
        0x000006f4:    f2460000    F...    MOVW     r0,#0x6000
        0x000006f8:    f2c4000a    ....    MOVT     r0,#0x400a
        0x000006fc:    4287        .B      CMP      r7,r0
        0x000006fe:    d135        5.      BNE      0x76c ; GPIO_Init + 176
        0x00000700:    2008        .       MOVS     r0,#8
        0x00000702:    f2c40000    ....    MOVT     r0,#0x4000
        0x00000706:    6841        Ah      LDR      r1,[r0,#4]
        0x00000708:    3440        @4      ADDS     r4,r4,#0x40
        0x0000070a:    f4416100    A..a    ORR      r1,r1,#0x800
        0x0000070e:    6041        A`      STR      r1,[r0,#4]
        0x00000710:    e02c        ,.      B        0x76c ; GPIO_Init + 176
        0x00000712:    2000        .       MOVS     r0,#0
        0x00000714:    f2c40004    ....    MOVT     r0,#0x4004
        0x00000718:    4287        .B      CMP      r7,r0
        0x0000071a:    d020         .      BEQ      0x75e ; GPIO_Init + 162
        0x0000071c:    f6400000    @...    MOVW     r0,#0x800
        0x00000720:    f2c40004    ....    MOVT     r0,#0x4004
        0x00000724:    4287        .B      CMP      r7,r0
        0x00000726:    d121        !.      BNE      0x76c ; GPIO_Init + 176
        0x00000728:    2008        .       MOVS     r0,#8
        0x0000072a:    f2c40000    ....    MOVT     r0,#0x4000
        0x0000072e:    6801        .h      LDR      r1,[r0,#0]
        0x00000730:    3410        .4      ADDS     r4,r4,#0x10
        0x00000732:    f0410102    A...    ORR      r1,r1,#2
        0x00000736:    6001        .`      STR      r1,[r0,#0]
        0x00000738:    e018        ..      B        0x76c ; GPIO_Init + 176
        0x0000073a:    2008        .       MOVS     r0,#8
        0x0000073c:    f2c40000    ....    MOVT     r0,#0x4000
        0x00000740:    6801        .h      LDR      r1,[r0,#0]
        0x00000742:    3420         4      ADDS     r4,r4,#0x20
        0x00000744:    f0410104    A...    ORR      r1,r1,#4
        0x00000748:    6001        .`      STR      r1,[r0,#0]
        0x0000074a:    e00f        ..      B        0x76c ; GPIO_Init + 176
        0x0000074c:    2008        .       MOVS     r0,#8
        0x0000074e:    f2c40000    ....    MOVT     r0,#0x4000
        0x00000752:    6801        .h      LDR      r1,[r0,#0]
        0x00000754:    3430        04      ADDS     r4,r4,#0x30
        0x00000756:    f0410108    A...    ORR      r1,r1,#8
        0x0000075a:    6001        .`      STR      r1,[r0,#0]
        0x0000075c:    e006        ..      B        0x76c ; GPIO_Init + 176
        0x0000075e:    2008        .       MOVS     r0,#8
        0x00000760:    f2c40000    ....    MOVT     r0,#0x4000
        0x00000764:    6801        .h      LDR      r1,[r0,#0]
        0x00000766:    f0410101    A...    ORR      r1,r1,#1
        0x0000076a:    6001        .`      STR      r1,[r0,#0]
        0x0000076c:    4620         F      MOV      r0,r4
        0x0000076e:    4629        )F      MOV      r1,r5
        0x00000770:    2200        ."      MOVS     r2,#0
        0x00000772:    2301        .#      MOVS     r3,#1
        0x00000774:    2601        .&      MOVS     r6,#1
        0x00000776:    f7ffff55    ..U.    BL       PORT_Init ; 0x624
        0x0000077a:    fa06f005    ....    LSL      r0,r6,r5
        0x0000077e:    6879        yh      LDR      r1,[r7,#4]
        0x00000780:    f1ba0f01    ....    CMP      r10,#1
        0x00000784:    bf14        ..      ITE      NE
        0x00000786:    ea210000    !...    BICNE    r0,r1,r0
        0x0000078a:    4308        .C      ORREQ    r0,r0,r1
        0x0000078c:    6078        x`      STR      r0,[r7,#4]
        0x0000078e:    2101        .!      MOVS     r1,#1
        0x00000790:    9808        ..      LDR      r0,[sp,#0x20]
        0x00000792:    40a9        .@      LSLS     r1,r1,r5
        0x00000794:    f8d42100    ...!    LDR      r2,[r4,#0x100]
        0x00000798:    f1b80f01    ....    CMP      r8,#1
        0x0000079c:    bf14        ..      ITE      NE
        0x0000079e:    ea220101    "...    BICNE    r1,r2,r1
        0x000007a2:    4311        .C      ORREQ    r1,r1,r2
        0x000007a4:    2201        ."      MOVS     r2,#1
        0x000007a6:    f8c41100    ....    STR      r1,[r4,#0x100]
        0x000007aa:    2801        .(      CMP      r0,#1
        0x000007ac:    fa02f005    ....    LSL      r0,r2,r5
        0x000007b0:    f8d42200    ..."    LDR      r2,[r4,#0x200]
        0x000007b4:    bf14        ..      ITE      NE
        0x000007b6:    ea220000    "...    BICNE    r0,r2,r0
        0x000007ba:    4310        .C      ORREQ    r0,r0,r2
        0x000007bc:    9909        ..      LDR      r1,[sp,#0x24]
        0x000007be:    f8c40200    ....    STR      r0,[r4,#0x200]
        0x000007c2:    2001        .       MOVS     r0,#1
        0x000007c4:    40a8        .@      LSLS     r0,r0,r5
        0x000007c6:    2901        .)      CMP      r1,#1
        0x000007c8:    f8d41400    ....    LDR      r1,[r4,#0x400]
        0x000007cc:    bf0c        ..      ITE      EQ
        0x000007ce:    4308        .C      ORREQ    r0,r0,r1
        0x000007d0:    ea210000    !...    BICNE    r0,r1,r0
        0x000007d4:    f8c40400    ....    STR      r0,[r4,#0x400]
        0x000007d8:    b001        ..      ADD      sp,sp,#4
        0x000007da:    e8bd85f0    ....    POP      {r4-r8,r10,pc}
        0x000007de:    bf00        ..      NOP      
    GPIO_WriteBit
        0x000007e0:    eb000081    ....    ADD      r0,r0,r1,LSL #2
        0x000007e4:    6402        .d      STR      r2,[r0,#0x40]
        0x000007e6:    4770        pG      BX       lr
    GPIO_SetBit
        0x000007e8:    eb000081    ....    ADD      r0,r0,r1,LSL #2
        0x000007ec:    2101        .!      MOVS     r1,#1
        0x000007ee:    6401        .d      STR      r1,[r0,#0x40]
        0x000007f0:    4770        pG      BX       lr
        0x000007f2:    bf00        ..      NOP      
    GPIO_ClrBit
        0x000007f4:    eb000081    ....    ADD      r0,r0,r1,LSL #2
        0x000007f8:    2100        .!      MOVS     r1,#0
        0x000007fa:    6401        .d      STR      r1,[r0,#0x40]
        0x000007fc:    4770        pG      BX       lr
        0x000007fe:    bf00        ..      NOP      
    GPIO_InvBit
        0x00000800:    eb000081    ....    ADD      r0,r0,r1,LSL #2
        0x00000804:    6c01        .l      LDR      r1,[r0,#0x40]
        0x00000806:    f1c10101    ....    RSB      r1,r1,#1
        0x0000080a:    6401        .d      STR      r1,[r0,#0x40]
        0x0000080c:    4770        pG      BX       lr
        0x0000080e:    bf00        ..      NOP      
    GPIO_GetBit
        0x00000810:    eb000081    ....    ADD      r0,r0,r1,LSL #2
        0x00000814:    6c00        .l      LDR      r0,[r0,#0x40]
        0x00000816:    4770        pG      BX       lr
    GPIO_WriteBits
        0x00000818:    b580        ..      PUSH     {r7,lr}
        0x0000081a:    f1c20c10    ....    RSB      r12,r2,#0x10
        0x0000081e:    f64f72ff    O..r    MOV      r2,#0xffff
        0x00000822:    fa22fc0c    "...    LSR      r12,r2,r12
        0x00000826:    f8d0e000    ....    LDR      lr,[r0,#0]
        0x0000082a:    fa0cf201    ....    LSL      r2,r12,r1
        0x0000082e:    ea2e0202    ....    BIC      r2,lr,r2
        0x00000832:    6002        .`      STR      r2,[r0,#0]
        0x00000834:    6802        .h      LDR      r2,[r0,#0]
        0x00000836:    fa03f101    ....    LSL      r1,r3,r1
        0x0000083a:    4311        .C      ORRS     r1,r1,r2
        0x0000083c:    6001        .`      STR      r1,[r0,#0]
        0x0000083e:    bd80        ..      POP      {r7,pc}
    GPIO_SetBits
        0x00000840:    f1c20210    ....    RSB      r2,r2,#0x10
        0x00000844:    f64f73ff    O..s    MOV      r3,#0xffff
        0x00000848:    fa23f202    #...    LSR      r2,r3,r2
        0x0000084c:    6803        .h      LDR      r3,[r0,#0]
        0x0000084e:    fa02f101    ....    LSL      r1,r2,r1
        0x00000852:    4319        .C      ORRS     r1,r1,r3
        0x00000854:    6001        .`      STR      r1,[r0,#0]
        0x00000856:    4770        pG      BX       lr
    GPIO_ClrBits
        0x00000858:    f1c20210    ....    RSB      r2,r2,#0x10
        0x0000085c:    f64f73ff    O..s    MOV      r3,#0xffff
        0x00000860:    fa23f202    #...    LSR      r2,r3,r2
        0x00000864:    6803        .h      LDR      r3,[r0,#0]
        0x00000866:    fa02f101    ....    LSL      r1,r2,r1
        0x0000086a:    ea230101    #...    BIC      r1,r3,r1
        0x0000086e:    6001        .`      STR      r1,[r0,#0]
        0x00000870:    4770        pG      BX       lr
        0x00000872:    bf00        ..      NOP      
    GPIO_InvBits
        0x00000874:    f1c20210    ....    RSB      r2,r2,#0x10
        0x00000878:    f64f73ff    O..s    MOV      r3,#0xffff
        0x0000087c:    fa23f202    #...    LSR      r2,r3,r2
        0x00000880:    6803        .h      LDR      r3,[r0,#0]
        0x00000882:    fa02f101    ....    LSL      r1,r2,r1
        0x00000886:    4059        Y@      EORS     r1,r1,r3
        0x00000888:    6001        .`      STR      r1,[r0,#0]
        0x0000088a:    4770        pG      BX       lr
    GPIO_GetBits
        0x0000088c:    6b00        .k      LDR      r0,[r0,#0x30]
        0x0000088e:    f1c20210    ....    RSB      r2,r2,#0x10
        0x00000892:    f64f73ff    O..s    MOV      r3,#0xffff
        0x00000896:    fa23f202    #...    LSR      r2,r3,r2
        0x0000089a:    40c8        .@      LSRS     r0,r0,r1
        0x0000089c:    4010        .@      ANDS     r0,r0,r2
        0x0000089e:    4770        pG      BX       lr
    QSPI_Init
        0x000008a0:    b5f0        ..      PUSH     {r4-r7,lr}
        0x000008a2:    b081        ..      SUB      sp,sp,#4
        0x000008a4:    f6400700    @...    MOVW     r7,#0x800
        0x000008a8:    4604        .F      MOV      r4,r0
        0x000008aa:    f1b04ff0    ...O    CMP      r0,#0x78000000
        0x000008ae:    460d        .F      MOV      r5,r1
        0x000008b0:    f6c70700    ....    MOVT     r7,#0x7800
        0x000008b4:    d004        ..      BEQ      0x8c0 ; QSPI_Init + 32
        0x000008b6:    42bc        .B      CMP      r4,r7
        0x000008b8:    d10a        ..      BNE      0x8d0 ; QSPI_Init + 48
        0x000008ba:    f44f4000    O..@    MOV      r0,#0x8000
        0x000008be:    e001        ..      B        0x8c4 ; QSPI_Init + 36
        0x000008c0:    f44f4080    O..@    MOV      r0,#0x4000
        0x000008c4:    2108        .!      MOVS     r1,#8
        0x000008c6:    f2c40100    ....    MOVT     r1,#0x4000
        0x000008ca:    680a        .h      LDR      r2,[r1,#0]
        0x000008cc:    4310        .C      ORRS     r0,r0,r2
        0x000008ce:    6008        .`      STR      r0,[r1,#0]
        0x000008d0:    4620         F      MOV      r0,r4
        0x000008d2:    f000f835    ..5.    BL       QSPI_Close ; 0x940
        0x000008d6:    8869        i.      LDRH     r1,[r5,#2]
        0x000008d8:    79aa        .y      LDRB     r2,[r5,#6]
        0x000008da:    0609        ..      LSLS     r1,r1,#24
        0x000008dc:    ea414102    A..A    ORR      r1,r1,r2,LSL #16
        0x000008e0:    f6400608    @...    MOV      r6,#0x808
        0x000008e4:    f6cf7600    ...v    MOVT     r6,#0xff00
        0x000008e8:    4431        1D      ADD      r1,r1,r6
        0x000008ea:    7928        (y      LDRB     r0,[r5,#4]
        0x000008ec:    796b        ky      LDRB     r3,[r5,#5]
        0x000008ee:    6021        !`      STR      r1,[r4,#0]
        0x000008f0:    8829        ).      LDRH     r1,[r5,#0]
        0x000008f2:    ea404001    @..@    ORR      r0,r0,r1,LSL #16
        0x000008f6:    f5007040    ..@p    ADD      r0,r0,#0x300
        0x000008fa:    6060        ``      STR      r0,[r4,#4]
        0x000008fc:    ea4f00d1    O...    LSR      r0,r1,#3
        0x00000900:    f240010c    @...    MOVW     r1,#0xc
        0x00000904:    f2c00100    ....    MOVT     r1,#0
        0x00000908:    f8090001    ....    STRB     r0,[r9,r1]
        0x0000090c:    f003000f    ....    AND      r0,r3,#0xf
        0x00000910:    6420         d      STR      r0,[r4,#0x40]
        0x00000912:    f04f0064    O.d.    MOV      r0,#0x64
        0x00000916:    6320         c      STR      r0,[r4,#0x30]
        0x00000918:    f04f001b    O...    MOV      r0,#0x1b
        0x0000091c:    60e0        .`      STR      r0,[r4,#0xc]
        0x0000091e:    b162        b.      CBZ      r2,0x93a ; QSPI_Init + 154
        0x00000920:    42bc        .B      CMP      r4,r7
        0x00000922:    d007        ..      BEQ      0x934 ; QSPI_Init + 148
        0x00000924:    f1b44ff0    ...O    CMP      r4,#0x78000000
        0x00000928:    d107        ..      BNE      0x93a ; QSPI_Init + 154
        0x0000092a:    2017        .       MOVS     r0,#0x17
        0x0000092c:    f000f80e    ....    BL       __NVIC_EnableIRQ ; 0x94c
        0x00000930:    b001        ..      ADD      sp,sp,#4
        0x00000932:    bdf0        ..      POP      {r4-r7,pc}
        0x00000934:    2018        .       MOVS     r0,#0x18
        0x00000936:    f000f809    ....    BL       __NVIC_EnableIRQ ; 0x94c
        0x0000093a:    b001        ..      ADD      sp,sp,#4
        0x0000093c:    bdf0        ..      POP      {r4-r7,pc}
        0x0000093e:    bf00        ..      NOP      
    QSPI_Close
        0x00000940:    6801        .h      LDR      r1,[r0,#0]
        0x00000942:    f0210101    !...    BIC      r1,r1,#1
        0x00000946:    6001        .`      STR      r1,[r0,#0]
        0x00000948:    4770        pG      BX       lr
        0x0000094a:    bf00        ..      NOP      
    __NVIC_EnableIRQ
        0x0000094c:    f000001f    ....    AND      r0,r0,#0x1f
        0x00000950:    2101        .!      MOVS     r1,#1
        0x00000952:    fa01f000    ....    LSL      r0,r1,r0
        0x00000956:    f24e1100    N...    MOVW     r1,#0xe100
        0x0000095a:    f2ce0100    ....    MOVT     r1,#0xe000
        0x0000095e:    6008        .`      STR      r0,[r1,#0]
        0x00000960:    4770        pG      BX       lr
        0x00000962:    bf00        ..      NOP      
    QSPI_Open
        0x00000964:    6801        .h      LDR      r1,[r0,#0]
        0x00000966:    f0410101    A...    ORR      r1,r1,#1
        0x0000096a:    6001        .`      STR      r1,[r0,#0]
        0x0000096c:    4770        pG      BX       lr
        0x0000096e:    bf00        ..      NOP      
    QSPI_CmdStructClear
        0x00000970:    2100        .!      MOVS     r1,#0
        0x00000972:    8001        ..      STRH     r1,[r0,#0]
        0x00000974:    6041        A`      STR      r1,[r0,#4]
        0x00000976:    8101        ..      STRH     r1,[r0,#8]
        0x00000978:    e9c01103    ....    STRD     r1,r1,[r0,#0xc]
        0x0000097c:    6141        Aa      STR      r1,[r0,#0x14]
        0x0000097e:    7601        .v      STRB     r1,[r0,#0x18]
        0x00000980:    4770        pG      BX       lr
        0x00000982:    bf00        ..      NOP      
    QSPI_Command
        0x00000984:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x00000986:    f892c010    ....    LDRB     r12,[r2,#0x10]
        0x0000098a:    f1bc0f00    ....    CMP      r12,#0
        0x0000098e:    bf1c        ..      ITT      NE
        0x00000990:    68d3        .h      LDRNE    r3,[r2,#0xc]
        0x00000992:    61c3        .a      STRNE    r3,[r0,#0x1c]
        0x00000994:    f892e013    ....    LDRB     lr,[r2,#0x13]
        0x00000998:    f1be0f00    ....    CMP      lr,#0
        0x0000099c:    d002        ..      BEQ      0x9a4 ; QSPI_Command + 32
        0x0000099e:    6953        Si      LDR      r3,[r2,#0x14]
        0x000009a0:    3b01        .;      SUBS     r3,#1
        0x000009a2:    6103        .a      STR      r3,[r0,#0x10]
        0x000009a4:    ea4f338c    O..3    LSL      r3,r12,#14
        0x000009a8:    ea436181    C..a    ORR      r1,r3,r1,LSL #26
        0x000009ac:    7815        .x      LDRB     r5,[r2,#0]
        0x000009ae:    ea41610e    A..a    ORR      r1,r1,lr,LSL #24
        0x000009b2:    7853        Sx      LDRB     r3,[r2,#1]
        0x000009b4:    4429        )D      ADD      r1,r1,r5
        0x000009b6:    7a14        .z      LDRB     r4,[r2,#8]
        0x000009b8:    ea412103    A..!    ORR      r1,r1,r3,LSL #8
        0x000009bc:    7a53        Sz      LDRB     r3,[r2,#9]
        0x000009be:    ea412184    A..!    ORR      r1,r1,r4,LSL #10
        0x000009c2:    7c55        U|      LDRB     r5,[r2,#0x11]
        0x000009c4:    ea413103    A..1    ORR      r1,r1,r3,LSL #12
        0x000009c8:    7c93        .|      LDRB     r3,[r2,#0x12]
        0x000009ca:    ea414105    A..A    ORR      r1,r1,r5,LSL #16
        0x000009ce:    7e15        .~      LDRB     r5,[r2,#0x18]
        0x000009d0:    ea414183    A..A    ORR      r1,r1,r3,LSL #18
        0x000009d4:    ea417105    A..q    ORR      r1,r1,r5,LSL #28
        0x000009d8:    6141        Aa      STR      r1,[r0,#0x14]
        0x000009da:    b10c        ..      CBZ      r4,0x9e0 ; QSPI_Command + 92
        0x000009dc:    6851        Qh      LDR      r1,[r2,#4]
        0x000009de:    6181        .a      STR      r1,[r0,#0x18]
        0x000009e0:    2003        .       MOVS     r0,#3
        0x000009e2:    bf00        ..      NOP      
        0x000009e4:    3801        .8      SUBS     r0,#1
        0x000009e6:    bf00        ..      NOP      
        0x000009e8:    d1fc        ..      BNE      0x9e4 ; QSPI_Command + 96
        0x000009ea:    bdb0        ..      POP      {r4,r5,r7,pc}
    QSPI_Erase_
        0x000009ec:    b5f0        ..      PUSH     {r4-r7,lr}
        0x000009ee:    b087        ..      SUB      sp,sp,#0x1c
        0x000009f0:    4604        .F      MOV      r4,r0
        0x000009f2:    4668        hF      MOV      r0,sp
        0x000009f4:    461d        .F      MOV      r5,r3
        0x000009f6:    4617        .F      MOV      r7,r2
        0x000009f8:    460e        .F      MOV      r6,r1
        0x000009fa:    f7ffffb9    ....    BL       QSPI_CmdStructClear ; 0x970
        0x000009fe:    f240000c    @...    MOVW     r0,#0xc
        0x00000a02:    2f40        @/      CMP      r7,#0x40
        0x00000a04:    f2c00000    ....    MOVT     r0,#0
        0x00000a08:    d008        ..      BEQ      0xa1c ; QSPI_Erase_ + 48
        0x00000a0a:    2f04        ./      CMP      r7,#4
        0x00000a0c:    d10e        ..      BNE      0xa2c ; QSPI_Erase_ + 64
        0x00000a0e:    f8192000    ...     LDRB     r2,[r9,r0]
        0x00000a12:    2120         !      MOVS     r1,#0x20
        0x00000a14:    2a03        .*      CMP      r2,#3
        0x00000a16:    bf08        ..      IT       EQ
        0x00000a18:    2121        !!      MOVEQ    r1,#0x21
        0x00000a1a:    e007        ..      B        0xa2c ; QSPI_Erase_ + 64
        0x00000a1c:    f8192000    ...     LDRB     r2,[r9,r0]
        0x00000a20:    f06f0127    o.'.    MVN      r1,#0x27
        0x00000a24:    2a03        .*      CMP      r2,#3
        0x00000a26:    bf08        ..      IT       EQ
        0x00000a28:    f06f0123    o.#.    MVNEQ    r1,#0x23
        0x00000a2c:    f8190000    ....    LDRB     r0,[r9,r0]
        0x00000a30:    2201        ."      MOVS     r2,#1
        0x00000a32:    f88d0009    ....    STRB     r0,[sp,#9]
        0x00000a36:    2000        .       MOVS     r0,#0
        0x00000a38:    f88d2001    ...     STRB     r2,[sp,#1]
        0x00000a3c:    f88d1000    ....    STRB     r1,[sp,#0]
        0x00000a40:    f88d2008    ...     STRB     r2,[sp,#8]
        0x00000a44:    f88d0010    ....    STRB     r0,[sp,#0x10]
        0x00000a48:    f8ad0012    ....    STRH     r0,[sp,#0x12]
        0x00000a4c:    4620         F      MOV      r0,r4
        0x00000a4e:    2106        .!      MOVS     r1,#6
        0x00000a50:    2200        ."      MOVS     r2,#0
        0x00000a52:    2300        .#      MOVS     r3,#0
        0x00000a54:    9601        ..      STR      r6,[sp,#4]
        0x00000a56:    f000f819    ....    BL       QSPI_WriteReg ; 0xa8c
        0x00000a5a:    466a        jF      MOV      r2,sp
        0x00000a5c:    4620         F      MOV      r0,r4
        0x00000a5e:    2100        .!      MOVS     r1,#0
        0x00000a60:    f7ffff90    ....    BL       QSPI_Command ; 0x984
        0x00000a64:    4620         F      MOV      r0,r4
        0x00000a66:    f000f849    ..I.    BL       QSPI_Busy ; 0xafc
        0x00000a6a:    b108        ..      CBZ      r0,0xa70 ; QSPI_Erase_ + 132
        0x00000a6c:    bf00        ..      NOP      
        0x00000a6e:    e7f9        ..      B        0xa64 ; QSPI_Erase_ + 120
        0x00000a70:    b155        U.      CBZ      r5,0xa88 ; QSPI_Erase_ + 156
        0x00000a72:    4620         F      MOV      r0,r4
        0x00000a74:    f000f846    ..F.    BL       QSPI_FlashBusy ; 0xb04
        0x00000a78:    b130        0.      CBZ      r0,0xa88 ; QSPI_Erase_ + 156
        0x00000a7a:    bf00        ..      NOP      
        0x00000a7c:    4620         F      MOV      r0,r4
        0x00000a7e:    bf00        ..      NOP      
        0x00000a80:    f000f840    ..@.    BL       QSPI_FlashBusy ; 0xb04
        0x00000a84:    2800        .(      CMP      r0,#0
        0x00000a86:    d1f9        ..      BNE      0xa7c ; QSPI_Erase_ + 144
        0x00000a88:    b007        ..      ADD      sp,sp,#0x1c
        0x00000a8a:    bdf0        ..      POP      {r4-r7,pc}
    QSPI_WriteReg
        0x00000a8c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x00000a8e:    b089        ..      SUB      sp,sp,#0x24
        0x00000a90:    af01        ..      ADD      r7,sp,#4
        0x00000a92:    4604        .F      MOV      r4,r0
        0x00000a94:    4638        8F      MOV      r0,r7
        0x00000a96:    461d        .F      MOV      r5,r3
        0x00000a98:    460e        .F      MOV      r6,r1
        0x00000a9a:    9208        ..      STR      r2,[sp,#0x20]
        0x00000a9c:    f7ffff68    ..h.    BL       QSPI_CmdStructClear ; 0x970
        0x00000aa0:    2001        .       MOVS     r0,#1
        0x00000aa2:    f88d0005    ....    STRB     r0,[sp,#5]
        0x00000aa6:    2000        .       MOVS     r0,#0
        0x00000aa8:    f88d000c    ....    STRB     r0,[sp,#0xc]
        0x00000aac:    f88d0014    ....    STRB     r0,[sp,#0x14]
        0x00000ab0:    f88d0016    ....    STRB     r0,[sp,#0x16]
        0x00000ab4:    4628        (F      MOV      r0,r5
        0x00000ab6:    f88d6004    ...`    STRB     r6,[sp,#4]
        0x00000aba:    2d00        .-      CMP      r5,#0
        0x00000abc:    bf18        ..      IT       NE
        0x00000abe:    2001        .       MOVNE    r0,#1
        0x00000ac0:    f88d0017    ....    STRB     r0,[sp,#0x17]
        0x00000ac4:    4620         F      MOV      r0,r4
        0x00000ac6:    2100        .!      MOVS     r1,#0
        0x00000ac8:    463a        :F      MOV      r2,r7
        0x00000aca:    9506        ..      STR      r5,[sp,#0x18]
        0x00000acc:    f7ffff5a    ..Z.    BL       QSPI_Command ; 0x984
        0x00000ad0:    b13d        =.      CBZ      r5,0xae2 ; QSPI_WriteReg + 86
        0x00000ad2:    a808        ..      ADD      r0,sp,#0x20
        0x00000ad4:    3801        .8      SUBS     r0,#1
        0x00000ad6:    bf00        ..      NOP      
        0x00000ad8:    5d41        A]      LDRB     r1,[r0,r5]
        0x00000ada:    3d01        .=      SUBS     r5,#1
        0x00000adc:    f8841020    .. .    STRB     r1,[r4,#0x20]
        0x00000ae0:    dcfa        ..      BGT      0xad8 ; QSPI_WriteReg + 76
        0x00000ae2:    4620         F      MOV      r0,r4
        0x00000ae4:    f000f80a    ....    BL       QSPI_Busy ; 0xafc
        0x00000ae8:    b130        0.      CBZ      r0,0xaf8 ; QSPI_WriteReg + 108
        0x00000aea:    bf00        ..      NOP      
        0x00000aec:    4620         F      MOV      r0,r4
        0x00000aee:    bf00        ..      NOP      
        0x00000af0:    f000f804    ....    BL       QSPI_Busy ; 0xafc
        0x00000af4:    2800        .(      CMP      r0,#0
        0x00000af6:    d1f9        ..      BNE      0xaec ; QSPI_WriteReg + 96
        0x00000af8:    b009        ..      ADD      sp,sp,#0x24
        0x00000afa:    bdf0        ..      POP      {r4-r7,pc}
    QSPI_Busy
        0x00000afc:    6880        .h      LDR      r0,[r0,#8]
        0x00000afe:    f3c01040    ..@.    UBFX     r0,r0,#5,#1
        0x00000b02:    4770        pG      BX       lr
    QSPI_FlashBusy
        0x00000b04:    b580        ..      PUSH     {r7,lr}
        0x00000b06:    2105        .!      MOVS     r1,#5
        0x00000b08:    2201        ."      MOVS     r2,#1
        0x00000b0a:    f000fa1f    ....    BL       QSPI_ReadReg ; 0xf4c
        0x00000b0e:    f0000001    ....    AND      r0,r0,#1
        0x00000b12:    bd80        ..      POP      {r7,pc}
    QSPI_Write_
        0x00000b14:    e92d45f0    -..E    PUSH     {r4-r8,r10,lr}
        0x00000b18:    b087        ..      SUB      sp,sp,#0x1c
        0x00000b1a:    e9dd580e    ...X    LDRD     r5,r8,[sp,#0x38]
        0x00000b1e:    4604        .F      MOV      r4,r0
        0x00000b20:    4668        hF      MOV      r0,sp
        0x00000b22:    469a        .F      MOV      r10,r3
        0x00000b24:    4616        .F      MOV      r6,r2
        0x00000b26:    460f        .F      MOV      r7,r1
        0x00000b28:    f7ffff22    ..".    BL       QSPI_CmdStructClear ; 0x970
        0x00000b2c:    f240000c    @...    MOVW     r0,#0xc
        0x00000b30:    2d04        .-      CMP      r5,#4
        0x00000b32:    f2c00000    ....    MOVT     r0,#0
        0x00000b36:    d009        ..      BEQ      0xb4c ; QSPI_Write_ + 56
        0x00000b38:    2d01        .-      CMP      r5,#1
        0x00000b3a:    d10e        ..      BNE      0xb5a ; QSPI_Write_ + 70
        0x00000b3c:    f8191000    ....    LDRB     r1,[r9,r0]
        0x00000b40:    2202        ."      MOVS     r2,#2
        0x00000b42:    2903        .)      CMP      r1,#3
        0x00000b44:    bf08        ..      IT       EQ
        0x00000b46:    2212        ."      MOVEQ    r2,#0x12
        0x00000b48:    2101        .!      MOVS     r1,#1
        0x00000b4a:    e006        ..      B        0xb5a ; QSPI_Write_ + 70
        0x00000b4c:    f8191000    ....    LDRB     r1,[r9,r0]
        0x00000b50:    2232        2"      MOVS     r2,#0x32
        0x00000b52:    2903        .)      CMP      r1,#3
        0x00000b54:    bf08        ..      IT       EQ
        0x00000b56:    2234        4"      MOVEQ    r2,#0x34
        0x00000b58:    2103        .!      MOVS     r1,#3
        0x00000b5a:    f8190000    ....    LDRB     r0,[r9,r0]
        0x00000b5e:    2301        .#      MOVS     r3,#1
        0x00000b60:    f88d3001    ...0    STRB     r3,[sp,#1]
        0x00000b64:    f88d2000    ...     STRB     r2,[sp,#0]
        0x00000b68:    f88d3008    ...0    STRB     r3,[sp,#8]
        0x00000b6c:    f88d0009    ....    STRB     r0,[sp,#9]
        0x00000b70:    2500        .%      MOVS     r5,#0
        0x00000b72:    f88d1013    ....    STRB     r1,[sp,#0x13]
        0x00000b76:    4620         F      MOV      r0,r4
        0x00000b78:    2106        .!      MOVS     r1,#6
        0x00000b7a:    2200        ."      MOVS     r2,#0
        0x00000b7c:    2300        .#      MOVS     r3,#0
        0x00000b7e:    9701        ..      STR      r7,[sp,#4]
        0x00000b80:    f88d5010    ...P    STRB     r5,[sp,#0x10]
        0x00000b84:    f88d5012    ...P    STRB     r5,[sp,#0x12]
        0x00000b88:    f8cda014    ....    STR      r10,[sp,#0x14]
        0x00000b8c:    f7ffff7e    ..~.    BL       QSPI_WriteReg ; 0xa8c
        0x00000b90:    466a        jF      MOV      r2,sp
        0x00000b92:    4620         F      MOV      r0,r4
        0x00000b94:    2100        .!      MOVS     r1,#0
        0x00000b96:    f7fffef5    ....    BL       QSPI_Command ; 0x984
        0x00000b9a:    f1b80f00    ....    CMP      r8,#0
        0x00000b9e:    d04f        O.      BEQ      0xc40 ; QSPI_Write_ + 300
        0x00000ba0:    ebb50f9a    ....    CMP      r5,r10,LSR #2
        0x00000ba4:    d017        ..      BEQ      0xbd6 ; QSPI_Write_ + 194
        0x00000ba6:    ea4f079a    O...    LSR      r7,r10,#2
        0x00000baa:    2500        .%      MOVS     r5,#0
        0x00000bac:    e006        ..      B        0xbbc ; QSPI_Write_ + 168
        0x00000bae:    bf00        ..      NOP      
        0x00000bb0:    f8560025    V.%.    LDR      r0,[r6,r5,LSL #2]
        0x00000bb4:    3501        .5      ADDS     r5,#1
        0x00000bb6:    42bd        .B      CMP      r5,r7
        0x00000bb8:    6220         b      STR      r0,[r4,#0x20]
        0x00000bba:    d00c        ..      BEQ      0xbd6 ; QSPI_Write_ + 194
        0x00000bbc:    4620         F      MOV      r0,r4
        0x00000bbe:    f000f843    ..C.    BL       QSPI_FIFOSpace ; 0xc48
        0x00000bc2:    2803        .(      CMP      r0,#3
        0x00000bc4:    d8f4        ..      BHI      0xbb0 ; QSPI_Write_ + 156
        0x00000bc6:    bf00        ..      NOP      
        0x00000bc8:    4620         F      MOV      r0,r4
        0x00000bca:    bf00        ..      NOP      
        0x00000bcc:    f000f83c    ..<.    BL       QSPI_FIFOSpace ; 0xc48
        0x00000bd0:    2804        .(      CMP      r0,#4
        0x00000bd2:    d3f9        ..      BCC      0xbc8 ; QSPI_Write_ + 180
        0x00000bd4:    e7ec        ..      B        0xbb0 ; QSPI_Write_ + 156
        0x00000bd6:    ea5f708a    _..p    LSLS     r0,r10,#30
        0x00000bda:    d50f        ..      BPL      0xbfc ; QSPI_Write_ + 232
        0x00000bdc:    4620         F      MOV      r0,r4
        0x00000bde:    f02a0503    *...    BIC      r5,r10,#3
        0x00000be2:    f000f831    ..1.    BL       QSPI_FIFOSpace ; 0xc48
        0x00000be6:    2801        .(      CMP      r0,#1
        0x00000be8:    d806        ..      BHI      0xbf8 ; QSPI_Write_ + 228
        0x00000bea:    bf00        ..      NOP      
        0x00000bec:    4620         F      MOV      r0,r4
        0x00000bee:    bf00        ..      NOP      
        0x00000bf0:    f000f82a    ..*.    BL       QSPI_FIFOSpace ; 0xc48
        0x00000bf4:    2802        .(      CMP      r0,#2
        0x00000bf6:    d3f9        ..      BCC      0xbec ; QSPI_Write_ + 216
        0x00000bf8:    5b70        p[      LDRH     r0,[r6,r5]
        0x00000bfa:    8420         .      STRH     r0,[r4,#0x20]
        0x00000bfc:    ea5f70ca    _..p    LSLS     r0,r10,#31
        0x00000c00:    d00f        ..      BEQ      0xc22 ; QSPI_Write_ + 270
        0x00000c02:    bf00        ..      NOP      
        0x00000c04:    4620         F      MOV      r0,r4
        0x00000c06:    f000f81f    ....    BL       QSPI_FIFOSpace ; 0xc48
        0x00000c0a:    b908        ..      CBNZ     r0,0xc10 ; QSPI_Write_ + 252
        0x00000c0c:    bf00        ..      NOP      
        0x00000c0e:    e7f9        ..      B        0xc04 ; QSPI_Write_ + 240
        0x00000c10:    eb0a0006    ....    ADD      r0,r10,r6
        0x00000c14:    f8100c01    ....    LDRB     r0,[r0,#-1]
        0x00000c18:    f8840020    .. .    STRB     r0,[r4,#0x20]
        0x00000c1c:    e001        ..      B        0xc22 ; QSPI_Write_ + 270
        0x00000c1e:    bf00        ..      NOP      
        0x00000c20:    bf00        ..      NOP      
        0x00000c22:    4620         F      MOV      r0,r4
        0x00000c24:    f7ffff6a    ..j.    BL       QSPI_Busy ; 0xafc
        0x00000c28:    2800        .(      CMP      r0,#0
        0x00000c2a:    d1f9        ..      BNE      0xc20 ; QSPI_Write_ + 268
        0x00000c2c:    4620         F      MOV      r0,r4
        0x00000c2e:    f7ffff69    ..i.    BL       QSPI_FlashBusy ; 0xb04
        0x00000c32:    b128        (.      CBZ      r0,0xc40 ; QSPI_Write_ + 300
        0x00000c34:    4620         F      MOV      r0,r4
        0x00000c36:    bf00        ..      NOP      
        0x00000c38:    f7ffff64    ..d.    BL       QSPI_FlashBusy ; 0xb04
        0x00000c3c:    2800        .(      CMP      r0,#0
        0x00000c3e:    d1f9        ..      BNE      0xc34 ; QSPI_Write_ + 288
        0x00000c40:    b007        ..      ADD      sp,sp,#0x1c
        0x00000c42:    e8bd85f0    ....    POP      {r4-r8,r10,pc}
        0x00000c46:    bf00        ..      NOP      
    QSPI_FIFOSpace
        0x00000c48:    b580        ..      PUSH     {r7,lr}
        0x00000c4a:    f000f8c7    ....    BL       QSPI_FIFOCount ; 0xddc
        0x00000c4e:    f1c00010    ....    RSB      r0,r0,#0x10
        0x00000c52:    bd80        ..      POP      {r7,pc}
    QSPI_Read_
        0x00000c54:    e92d4df0    -..M    PUSH     {r4-r8,r10,r11,lr}
        0x00000c58:    b088        ..      SUB      sp,sp,#0x20
        0x00000c5a:    f10d0840    ..@.    ADD      r8,sp,#0x40
        0x00000c5e:    4605        .F      MOV      r5,r0
        0x00000c60:    e8980190    ....    LDM      r8,{r4,r7,r8}
        0x00000c64:    a801        ..      ADD      r0,sp,#4
        0x00000c66:    469b        .F      MOV      r11,r3
        0x00000c68:    468a        .F      MOV      r10,r1
        0x00000c6a:    4616        .F      MOV      r6,r2
        0x00000c6c:    f7fffe80    ....    BL       QSPI_CmdStructClear ; 0x970
        0x00000c70:    ea471004    G...    ORR      r0,r7,r4,LSL #4
        0x00000c74:    f2400c0c    @...    MOVW     r12,#0xc
        0x00000c78:    f1a00411    ....    SUB      r4,r0,#0x11
        0x00000c7c:    2c11        .,      CMP      r4,#0x11
        0x00000c7e:    f2c00c00    ....    MOVT     r12,#0
        0x00000c82:    d816        ..      BHI      0xcb2 ; QSPI_Read_ + 94
        0x00000c84:    e8dff004    ....    TBB      [pc,r4]
    $d.1
        0x00000c88:    2e472509    .%G.    DCD    776414473
        0x00000c8c:    47474747    GGGG    DCD    1195853639
        0x00000c90:    47474747    GGGG    DCD    1195853639
        0x00000c94:    47474747    GGGG    DCD    1195853639
        0x00000c98:    3a47        G:      DCW    14919
    $t.2
        0x00000c9a:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000c9e:    210b        .!      MOVS     r1,#0xb
        0x00000ca0:    2803        .(      CMP      r0,#3
        0x00000ca2:    bf08        ..      IT       EQ
        0x00000ca4:    210c        .!      MOVEQ    r1,#0xc
        0x00000ca6:    2001        .       MOVS     r0,#1
        0x00000ca8:    f04f0e00    O...    MOV      lr,#0
        0x00000cac:    2308        .#      MOVS     r3,#8
        0x00000cae:    2701        .'      MOVS     r7,#1
        0x00000cb0:    e031        1.      B        0xd16 ; QSPI_Read_ + 194
        0x00000cb2:    2844        D(      CMP      r0,#0x44
        0x00000cb4:    d12f        /.      BNE      0xd16 ; QSPI_Read_ + 194
        0x00000cb6:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000cba:    f06f0114    o...    MVN      r1,#0x14
        0x00000cbe:    2803        .(      CMP      r0,#3
        0x00000cc0:    bf08        ..      IT       EQ
        0x00000cc2:    f06f0113    o...    MVNEQ    r1,#0x13
        0x00000cc6:    f04f0e03    O...    MOV      lr,#3
        0x00000cca:    2304        .#      MOVS     r3,#4
        0x00000ccc:    2003        .       MOVS     r0,#3
        0x00000cce:    2703        .'      MOVS     r7,#3
        0x00000cd0:    e021        !.      B        0xd16 ; QSPI_Read_ + 194
        0x00000cd2:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000cd6:    213b        ;!      MOVS     r1,#0x3b
        0x00000cd8:    2803        .(      CMP      r0,#3
        0x00000cda:    bf08        ..      IT       EQ
        0x00000cdc:    213c        <!      MOVEQ    r1,#0x3c
        0x00000cde:    2701        .'      MOVS     r7,#1
        0x00000ce0:    2002        .       MOVS     r0,#2
        0x00000ce2:    e007        ..      B        0xcf4 ; QSPI_Read_ + 160
        0x00000ce4:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000ce8:    216b        k!      MOVS     r1,#0x6b
        0x00000cea:    2803        .(      CMP      r0,#3
        0x00000cec:    bf08        ..      IT       EQ
        0x00000cee:    216c        l!      MOVEQ    r1,#0x6c
        0x00000cf0:    2701        .'      MOVS     r7,#1
        0x00000cf2:    2003        .       MOVS     r0,#3
        0x00000cf4:    f04f0e00    O...    MOV      lr,#0
        0x00000cf8:    2308        .#      MOVS     r3,#8
        0x00000cfa:    e00c        ..      B        0xd16 ; QSPI_Read_ + 194
        0x00000cfc:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000d00:    f06f0144    o.D.    MVN      r1,#0x44
        0x00000d04:    2803        .(      CMP      r0,#3
        0x00000d06:    bf08        ..      IT       EQ
        0x00000d08:    f06f0143    o.C.    MVNEQ    r1,#0x43
        0x00000d0c:    f04f0e02    O...    MOV      lr,#2
        0x00000d10:    2300        .#      MOVS     r3,#0
        0x00000d12:    2002        .       MOVS     r0,#2
        0x00000d14:    2702        .'      MOVS     r7,#2
        0x00000d16:    f88d1004    ....    STRB     r1,[sp,#4]
        0x00000d1a:    f819100c    ....    LDRB     r1,[r9,r12]
        0x00000d1e:    2201        ."      MOVS     r2,#1
        0x00000d20:    f88d100d    ....    STRB     r1,[sp,#0xd]
        0x00000d24:    21ff        .!      MOVS     r1,#0xff
        0x00000d26:    f88d2005    ...     STRB     r2,[sp,#5]
        0x00000d2a:    2400        .$      MOVS     r4,#0
        0x00000d2c:    9104        ..      STR      r1,[sp,#0x10]
        0x00000d2e:    f88d0017    ....    STRB     r0,[sp,#0x17]
        0x00000d32:    aa01        ..      ADD      r2,sp,#4
        0x00000d34:    4628        (F      MOV      r0,r5
        0x00000d36:    2101        .!      MOVS     r1,#1
        0x00000d38:    f88d700c    ...p    STRB     r7,[sp,#0xc]
        0x00000d3c:    f8cda008    ....    STR      r10,[sp,#8]
        0x00000d40:    f88de014    ....    STRB     lr,[sp,#0x14]
        0x00000d44:    f88d4015    ...@    STRB     r4,[sp,#0x15]
        0x00000d48:    f88d3016    ...0    STRB     r3,[sp,#0x16]
        0x00000d4c:    f8cdb018    ....    STR      r11,[sp,#0x18]
        0x00000d50:    f7fffe18    ....    BL       QSPI_Command ; 0x984
        0x00000d54:    f1b80f00    ....    CMP      r8,#0
        0x00000d58:    d03c        <.      BEQ      0xdd4 ; QSPI_Read_ + 384
        0x00000d5a:    ebb40f9b    ....    CMP      r4,r11,LSR #2
        0x00000d5e:    d016        ..      BEQ      0xd8e ; QSPI_Read_ + 314
        0x00000d60:    ea4f079b    O...    LSR      r7,r11,#2
        0x00000d64:    2400        .$      MOVS     r4,#0
        0x00000d66:    e005        ..      B        0xd74 ; QSPI_Read_ + 288
        0x00000d68:    6a28        (j      LDR      r0,[r5,#0x20]
        0x00000d6a:    f8460024    F.$.    STR      r0,[r6,r4,LSL #2]
        0x00000d6e:    3401        .4      ADDS     r4,#1
        0x00000d70:    42bc        .B      CMP      r4,r7
        0x00000d72:    d00c        ..      BEQ      0xd8e ; QSPI_Read_ + 314
        0x00000d74:    4628        (F      MOV      r0,r5
        0x00000d76:    f000f831    ..1.    BL       QSPI_FIFOCount ; 0xddc
        0x00000d7a:    2803        .(      CMP      r0,#3
        0x00000d7c:    d8f4        ..      BHI      0xd68 ; QSPI_Read_ + 276
        0x00000d7e:    bf00        ..      NOP      
        0x00000d80:    4628        (F      MOV      r0,r5
        0x00000d82:    bf00        ..      NOP      
        0x00000d84:    f000f82a    ..*.    BL       QSPI_FIFOCount ; 0xddc
        0x00000d88:    2804        .(      CMP      r0,#4
        0x00000d8a:    d3f9        ..      BCC      0xd80 ; QSPI_Read_ + 300
        0x00000d8c:    e7ec        ..      B        0xd68 ; QSPI_Read_ + 276
        0x00000d8e:    ea5f708b    _..p    LSLS     r0,r11,#30
        0x00000d92:    d50f        ..      BPL      0xdb4 ; QSPI_Read_ + 352
        0x00000d94:    4628        (F      MOV      r0,r5
        0x00000d96:    f02b0403    +...    BIC      r4,r11,#3
        0x00000d9a:    f000f81f    ....    BL       QSPI_FIFOCount ; 0xddc
        0x00000d9e:    2801        .(      CMP      r0,#1
        0x00000da0:    d806        ..      BHI      0xdb0 ; QSPI_Read_ + 348
        0x00000da2:    bf00        ..      NOP      
        0x00000da4:    4628        (F      MOV      r0,r5
        0x00000da6:    bf00        ..      NOP      
        0x00000da8:    f000f818    ....    BL       QSPI_FIFOCount ; 0xddc
        0x00000dac:    2802        .(      CMP      r0,#2
        0x00000dae:    d3f9        ..      BCC      0xda4 ; QSPI_Read_ + 336
        0x00000db0:    8c28        (.      LDRH     r0,[r5,#0x20]
        0x00000db2:    5330        0S      STRH     r0,[r6,r4]
        0x00000db4:    ea5f70cb    _..p    LSLS     r0,r11,#31
        0x00000db8:    d00c        ..      BEQ      0xdd4 ; QSPI_Read_ + 384
        0x00000dba:    bf00        ..      NOP      
        0x00000dbc:    4628        (F      MOV      r0,r5
        0x00000dbe:    f000f80d    ....    BL       QSPI_FIFOCount ; 0xddc
        0x00000dc2:    b908        ..      CBNZ     r0,0xdc8 ; QSPI_Read_ + 372
        0x00000dc4:    bf00        ..      NOP      
        0x00000dc6:    e7f9        ..      B        0xdbc ; QSPI_Read_ + 360
        0x00000dc8:    f8950020    .. .    LDRB     r0,[r5,#0x20]
        0x00000dcc:    eb0b0106    ....    ADD      r1,r11,r6
        0x00000dd0:    f8010c01    ....    STRB     r0,[r1,#-1]
        0x00000dd4:    b008        ..      ADD      sp,sp,#0x20
        0x00000dd6:    e8bd8df0    ....    POP      {r4-r8,r10,r11,pc}
        0x00000dda:    bf00        ..      NOP      
    QSPI_FIFOCount
        0x00000ddc:    6880        .h      LDR      r0,[r0,#8]
        0x00000dde:    f3c02005    ...     UBFX     r0,r0,#8,#6
        0x00000de2:    4770        pG      BX       lr
    QSPI_MemoryMap
        0x00000de4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x00000de6:    b081        ..      SUB      sp,sp,#4
        0x00000de8:    4615        .F      MOV      r5,r2
        0x00000dea:    460e        .F      MOV      r6,r1
        0x00000dec:    4604        .F      MOV      r4,r0
        0x00000dee:    bf00        ..      NOP      
        0x00000df0:    f7fffe84    ....    BL       QSPI_Busy ; 0xafc
        0x00000df4:    b110        ..      CBZ      r0,0xdfc ; QSPI_MemoryMap + 24
        0x00000df6:    4620         F      MOV      r0,r4
        0x00000df8:    bf00        ..      NOP      
        0x00000dfa:    e7f9        ..      B        0xdf0 ; QSPI_MemoryMap + 12
        0x00000dfc:    6c60        `l      LDR      r0,[r4,#0x44]
        0x00000dfe:    f0400001    @...    ORR      r0,r0,#1
        0x00000e02:    6460        `d      STR      r0,[r4,#0x44]
        0x00000e04:    f2400004    @...    MOVW     r0,#4
        0x00000e08:    f2c00000    ....    MOVT     r0,#0
        0x00000e0c:    f8591000    Y...    LDR      r1,[r9,r0]
        0x00000e10:    b131        1.      CBZ      r1,0xe20 ; QSPI_MemoryMap + 60
        0x00000e12:    2100        .!      MOVS     r1,#0
        0x00000e14:    bf00        ..      NOP      
        0x00000e16:    f8592000    Y..     LDR      r2,[r9,r0]
        0x00000e1a:    3101        .1      ADDS     r1,#1
        0x00000e1c:    4291        .B      CMP      r1,r2
        0x00000e1e:    d3f9        ..      BCC      0xe14 ; QSPI_MemoryMap + 48
        0x00000e20:    ea451006    E...    ORR      r0,r5,r6,LSL #4
        0x00000e24:    f2400c0c    @...    MOVW     r12,#0xc
        0x00000e28:    f1a00211    ....    SUB      r2,r0,#0x11
        0x00000e2c:    2301        .#      MOVS     r3,#1
        0x00000e2e:    2a11        .*      CMP      r2,#0x11
        0x00000e30:    f04f0100    O...    MOV      r1,#0
        0x00000e34:    f2c00c00    ....    MOVT     r12,#0
        0x00000e38:    d81d        ..      BHI      0xe76 ; QSPI_MemoryMap + 146
        0x00000e3a:    2000        .       MOVS     r0,#0
        0x00000e3c:    2500        .%      MOVS     r5,#0
        0x00000e3e:    2600        .&      MOVS     r6,#0
        0x00000e40:    f04f0e00    O...    MOV      lr,#0
        0x00000e44:    e8dff002    ....    TBB      [pc,r2]
    $d.3
        0x00000e48:    3f5d3109    .1]?    DCD    1063072009
        0x00000e4c:    5d5d5d5d    ]]]]    DCD    1566399837
        0x00000e50:    5d5d5d5d    ]]]]    DCD    1566399837
        0x00000e54:    5d5d5d5d    ]]]]    DCD    1566399837
        0x00000e58:    4f5d        ]O      DCW    20317
    $t.4
        0x00000e5a:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000e5e:    210b        .!      MOVS     r1,#0xb
        0x00000e60:    2803        .(      CMP      r0,#3
        0x00000e62:    bf08        ..      IT       EQ
        0x00000e64:    210c        .!      MOVEQ    r1,#0xc
        0x00000e66:    f04f0e00    O...    MOV      lr,#0
        0x00000e6a:    2301        .#      MOVS     r3,#1
        0x00000e6c:    f44f1600    O...    MOV      r6,#0x200000
        0x00000e70:    f04f7580    O..u    MOV      r5,#0x1000000
        0x00000e74:    e034        4.      B        0xee0 ; QSPI_MemoryMap + 252
        0x00000e76:    2844        D(      CMP      r0,#0x44
        0x00000e78:    f04f0000    O...    MOV      r0,#0
        0x00000e7c:    f04f0500    O...    MOV      r5,#0
        0x00000e80:    f04f0600    O...    MOV      r6,#0
        0x00000e84:    f04f0e00    O...    MOV      lr,#0
        0x00000e88:    d13b        ;.      BNE      0xf02 ; QSPI_MemoryMap + 286
        0x00000e8a:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000e8e:    21eb        .!      MOVS     r1,#0xeb
        0x00000e90:    2803        .(      CMP      r0,#3
        0x00000e92:    bf08        ..      IT       EQ
        0x00000e94:    21ec        .!      MOVEQ    r1,#0xec
        0x00000e96:    f44f4e40    O.@N    MOV      lr,#0xc000
        0x00000e9a:    2300        .#      MOVS     r3,#0
        0x00000e9c:    f44f1680    O...    MOV      r6,#0x100000
        0x00000ea0:    f04f7540    O.@u    MOV      r5,#0x3000000
        0x00000ea4:    f44f6040    O.@`    MOV      r0,#0xc00
        0x00000ea8:    e02b        +.      B        0xf02 ; QSPI_MemoryMap + 286
        0x00000eaa:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000eae:    213b        ;!      MOVS     r1,#0x3b
        0x00000eb0:    2803        .(      CMP      r0,#3
        0x00000eb2:    bf08        ..      IT       EQ
        0x00000eb4:    213c        <!      MOVEQ    r1,#0x3c
        0x00000eb6:    f04f0e00    O...    MOV      lr,#0
        0x00000eba:    2301        .#      MOVS     r3,#1
        0x00000ebc:    f44f1600    O...    MOV      r6,#0x200000
        0x00000ec0:    f04f7500    O..u    MOV      r5,#0x2000000
        0x00000ec4:    e00c        ..      B        0xee0 ; QSPI_MemoryMap + 252
        0x00000ec6:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000eca:    216b        k!      MOVS     r1,#0x6b
        0x00000ecc:    f04f0e00    O...    MOV      lr,#0
        0x00000ed0:    2301        .#      MOVS     r3,#1
        0x00000ed2:    f44f1600    O...    MOV      r6,#0x200000
        0x00000ed6:    f04f7540    O.@u    MOV      r5,#0x3000000
        0x00000eda:    2803        .(      CMP      r0,#3
        0x00000edc:    bf08        ..      IT       EQ
        0x00000ede:    216c        l!      MOVEQ    r1,#0x6c
        0x00000ee0:    f44f6080    O..`    MOV      r0,#0x400
        0x00000ee4:    e00d        ..      B        0xf02 ; QSPI_MemoryMap + 286
        0x00000ee6:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000eea:    21bb        .!      MOVS     r1,#0xbb
        0x00000eec:    2803        .(      CMP      r0,#3
        0x00000eee:    bf08        ..      IT       EQ
        0x00000ef0:    21bc        .!      MOVEQ    r1,#0xbc
        0x00000ef2:    f44f4e00    O..N    MOV      lr,#0x8000
        0x00000ef6:    2600        .&      MOVS     r6,#0
        0x00000ef8:    f04f7500    O..u    MOV      r5,#0x2000000
        0x00000efc:    f44f6000    O..`    MOV      r0,#0x800
        0x00000f00:    2300        .#      MOVS     r3,#0
        0x00000f02:    4308        .C      ORRS     r0,r0,r1
        0x00000f04:    2b00        .+      CMP      r3,#0
        0x00000f06:    bf04        ..      ITT      EQ
        0x00000f08:    22ff        ."      MOVEQ    r2,#0xff
        0x00000f0a:    61e2        .a      STREQ    r2,[r4,#0x1c]
        0x00000f0c:    4328        (C      ORRS     r0,r0,r5
        0x00000f0e:    f819200c    ...     LDRB     r2,[r9,r12]
        0x00000f12:    4330        0C      ORRS     r0,r0,r6
        0x00000f14:    ea40000e    @...    ORR      r0,r0,lr
        0x00000f18:    ea403002    @..0    ORR      r0,r0,r2,LSL #12
        0x00000f1c:    f0406040    @.@`    ORR      r0,r0,#0xc000000
        0x00000f20:    f4407080    @..p    ORR      r0,r0,#0x100
        0x00000f24:    6160        `a      STR      r0,[r4,#0x14]
        0x00000f26:    b001        ..      ADD      sp,sp,#4
        0x00000f28:    bdf0        ..      POP      {r4-r7,pc}
        0x00000f2a:    bf00        ..      NOP      
    QSPI_MemoryMapClose
        0x00000f2c:    b510        ..      PUSH     {r4,lr}
        0x00000f2e:    4604        .F      MOV      r4,r0
        0x00000f30:    f7fffde4    ....    BL       QSPI_Busy ; 0xafc
        0x00000f34:    b130        0.      CBZ      r0,0xf44 ; QSPI_MemoryMapClose + 24
        0x00000f36:    bf00        ..      NOP      
        0x00000f38:    4620         F      MOV      r0,r4
        0x00000f3a:    bf00        ..      NOP      
        0x00000f3c:    f7fffdde    ....    BL       QSPI_Busy ; 0xafc
        0x00000f40:    2800        .(      CMP      r0,#0
        0x00000f42:    d1f9        ..      BNE      0xf38 ; QSPI_MemoryMapClose + 12
        0x00000f44:    4620         F      MOV      r0,r4
        0x00000f46:    f7fffddd    ....    BL       QSPI_FlashBusy ; 0xb04
        0x00000f4a:    bd10        ..      POP      {r4,pc}
    QSPI_ReadReg
        0x00000f4c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x00000f4e:    b089        ..      SUB      sp,sp,#0x24
        0x00000f50:    af02        ..      ADD      r7,sp,#8
        0x00000f52:    4605        .F      MOV      r5,r0
        0x00000f54:    4638        8F      MOV      r0,r7
        0x00000f56:    4614        .F      MOV      r4,r2
        0x00000f58:    460e        .F      MOV      r6,r1
        0x00000f5a:    f7fffd09    ....    BL       QSPI_CmdStructClear ; 0x970
        0x00000f5e:    2001        .       MOVS     r0,#1
        0x00000f60:    f88d0009    ....    STRB     r0,[sp,#9]
        0x00000f64:    f44f7080    O..p    MOV      r0,#0x100
        0x00000f68:    f88d6008    ...`    STRB     r6,[sp,#8]
        0x00000f6c:    2600        .&      MOVS     r6,#0
        0x00000f6e:    f8ad001a    ....    STRH     r0,[sp,#0x1a]
        0x00000f72:    4628        (F      MOV      r0,r5
        0x00000f74:    2101        .!      MOVS     r1,#1
        0x00000f76:    463a        :F      MOV      r2,r7
        0x00000f78:    f88d6010    ...`    STRB     r6,[sp,#0x10]
        0x00000f7c:    f88d6018    ...`    STRB     r6,[sp,#0x18]
        0x00000f80:    9407        ..      STR      r4,[sp,#0x1c]
        0x00000f82:    f7fffcff    ....    BL       QSPI_Command ; 0x984
        0x00000f86:    bf00        ..      NOP      
        0x00000f88:    4628        (F      MOV      r0,r5
        0x00000f8a:    f7ffff27    ..'.    BL       QSPI_FIFOCount ; 0xddc
        0x00000f8e:    42a0        .B      CMP      r0,r4
        0x00000f90:    d201        ..      BCS      0xf96 ; QSPI_ReadReg + 74
        0x00000f92:    bf00        ..      NOP      
        0x00000f94:    e7f8        ..      B        0xf88 ; QSPI_ReadReg + 60
        0x00000f96:    9601        ..      STR      r6,[sp,#4]
        0x00000f98:    b13c        <.      CBZ      r4,0xfaa ; QSPI_ReadReg + 94
        0x00000f9a:    a801        ..      ADD      r0,sp,#4
        0x00000f9c:    3801        .8      SUBS     r0,#1
        0x00000f9e:    bf00        ..      NOP      
        0x00000fa0:    f8951020    .. .    LDRB     r1,[r5,#0x20]
        0x00000fa4:    5501        .U      STRB     r1,[r0,r4]
        0x00000fa6:    3c01        .<      SUBS     r4,#1
        0x00000fa8:    dcfa        ..      BGT      0xfa0 ; QSPI_ReadReg + 84
        0x00000faa:    9801        ..      LDR      r0,[sp,#4]
        0x00000fac:    b009        ..      ADD      sp,sp,#0x24
        0x00000fae:    bdf0        ..      POP      {r4-r7,pc}
    QSPI_QuadState
        0x00000fb0:    b580        ..      PUSH     {r7,lr}
        0x00000fb2:    2135        5!      MOVS     r1,#0x35
        0x00000fb4:    2201        ."      MOVS     r2,#1
        0x00000fb6:    f7ffffc9    ....    BL       QSPI_ReadReg ; 0xf4c
        0x00000fba:    f3c00040    ..@.    UBFX     r0,r0,#1,#1
        0x00000fbe:    bd80        ..      POP      {r7,pc}
    QSPI_QuadSwitch
        0x00000fc0:    b570        p.      PUSH     {r4-r6,lr}
        0x00000fc2:    460d        .F      MOV      r5,r1
        0x00000fc4:    2135        5!      MOVS     r1,#0x35
        0x00000fc6:    2201        ."      MOVS     r2,#1
        0x00000fc8:    4604        .F      MOV      r4,r0
        0x00000fca:    f7ffffbf    ....    BL       QSPI_ReadReg ; 0xf4c
        0x00000fce:    f00006fd    ....    AND      r6,r0,#0xfd
        0x00000fd2:    4620         F      MOV      r0,r4
        0x00000fd4:    2106        .!      MOVS     r1,#6
        0x00000fd6:    2200        ."      MOVS     r2,#0
        0x00000fd8:    2300        .#      MOVS     r3,#0
        0x00000fda:    2d00        .-      CMP      r5,#0
        0x00000fdc:    bf18        ..      IT       NE
        0x00000fde:    3602        .6      ADDNE    r6,#2
        0x00000fe0:    f7fffd54    ..T.    BL       QSPI_WriteReg ; 0xa8c
        0x00000fe4:    4620         F      MOV      r0,r4
        0x00000fe6:    2131        1!      MOVS     r1,#0x31
        0x00000fe8:    4632        2F      MOV      r2,r6
        0x00000fea:    2301        .#      MOVS     r3,#1
        0x00000fec:    f7fffd4e    ..N.    BL       QSPI_WriteReg ; 0xa8c
        0x00000ff0:    4620         F      MOV      r0,r4
        0x00000ff2:    f7fffd87    ....    BL       QSPI_FlashBusy ; 0xb04
        0x00000ff6:    2800        .(      CMP      r0,#0
        0x00000ff8:    bf08        ..      IT       EQ
        0x00000ffa:    bd70        p.      POPEQ    {r4-r6,pc}
        0x00000ffc:    4620         F      MOV      r0,r4
        0x00000ffe:    bf00        ..      NOP      
        0x00001000:    f7fffd80    ....    BL       QSPI_FlashBusy ; 0xb04
        0x00001004:    2800        .(      CMP      r0,#0
        0x00001006:    d1f9        ..      BNE      0xffc ; QSPI_QuadSwitch + 60
        0x00001008:    bd70        p.      POP      {r4-r6,pc}
        0x0000100a:    bf00        ..      NOP      
    QSPI_INTEn
        0x0000100c:    6802        .h      LDR      r2,[r0,#0]
        0x0000100e:    ea424101    B..A    ORR      r1,r2,r1,LSL #16
        0x00001012:    6001        .`      STR      r1,[r0,#0]
        0x00001014:    4770        pG      BX       lr
        0x00001016:    bf00        ..      NOP      
    QSPI_INTDis
        0x00001018:    6802        .h      LDR      r2,[r0,#0]
        0x0000101a:    ea224101    "..A    BIC      r1,r2,r1,LSL #16
        0x0000101e:    6001        .`      STR      r1,[r0,#0]
        0x00001020:    4770        pG      BX       lr
        0x00001022:    bf00        ..      NOP      
    QSPI_INTClr
        0x00001024:    60c1        .`      STR      r1,[r0,#0xc]
        0x00001026:    4770        pG      BX       lr
    QSPI_INTStat
        0x00001028:    6880        .h      LDR      r0,[r0,#8]
        0x0000102a:    4008        .@      ANDS     r0,r0,r1
        0x0000102c:    4770        pG      BX       lr
        0x0000102e:    0000        ..      MOVS     r0,r0
    FLASH_Erase
        0x00001030:    0581        ..      LSLS     r1,r0,#22
        0x00001032:    bf1c        ..      ITT      NE
        0x00001034:    2002        .       MOVNE    r0,#2
        0x00001036:    4770        pG      BXNE     lr
        0x00001038:    b580        ..      PUSH     {r7,lr}
        0x0000103a:    f3ef8110    ....    MRS      r1,PRIMASK
        0x0000103e:    b672        r.      CPSID    i
        0x00001040:    f2404201    @..B    MOV      r2,#0x401
        0x00001044:    f64f71ac    O..q    MOV      r1,#0xffac
        0x00001048:    0a80        ..      LSRS     r0,r0,#10
        0x0000104a:    f6c03111    ...1    MOVT     r1,#0xb11
        0x0000104e:    f2c01200    ....    MOVT     r2,#0x100
        0x00001052:    4790        .G      BLX      r2
        0x00001054:    f000f804    ....    BL       FLASH_CacheClear ; 0x1060
        0x00001058:    2000        .       MOVS     r0,#0
        0x0000105a:    b662        b.      CPSIE    i
        0x0000105c:    bd80        ..      POP      {r7,pc}
        0x0000105e:    bf00        ..      NOP      
    FLASH_CacheClear
        0x00001060:    b580        ..      PUSH     {r7,lr}
        0x00001062:    f645000c    E...    MOV      r0,#0x580c
        0x00001066:    f2c40004    ....    MOVT     r0,#0x4004
        0x0000106a:    6800        .h      LDR      r0,[r0,#0]
        0x0000106c:    f64f71ac    O..q    MOV      r1,#0xffac
        0x00001070:    f2406221    @.!b    MOV      r2,#0x621
        0x00001074:    f0404000    @..@    ORR      r0,r0,#0x80000000
        0x00001078:    f6c03111    ...1    MOVT     r1,#0xb11
        0x0000107c:    f2c01200    ....    MOVT     r2,#0x100
        0x00001080:    4790        .G      BLX      r2
        0x00001082:    bd80        ..      POP      {r7,pc}
    FLASH_Write
        0x00001084:    f0000c0f    ....    AND      r12,r0,#0xf
        0x00001088:    f0020303    ....    AND      r3,r2,#3
        0x0000108c:    ea53030c    S...    ORRS     r3,r3,r12
        0x00001090:    bf1c        ..      ITT      NE
        0x00001092:    2002        .       MOVNE    r0,#2
        0x00001094:    4770        pG      BXNE     lr
        0x00001096:    b580        ..      PUSH     {r7,lr}
        0x00001098:    f3ef8310    ....    MRS      r3,PRIMASK
        0x0000109c:    b672        r.      CPSID    i
        0x0000109e:    f2404c81    @..L    MOV      r12,#0x481
        0x000010a2:    f64f73ac    O..s    MOV      r3,#0xffac
        0x000010a6:    0892        ..      LSRS     r2,r2,#2
        0x000010a8:    f6c03311    ...3    MOVT     r3,#0xb11
        0x000010ac:    f2c01c00    ....    MOVT     r12,#0x100
        0x000010b0:    47e0        .G      BLX      r12
        0x000010b2:    f7ffffd5    ....    BL       FLASH_CacheClear ; 0x1060
        0x000010b6:    2000        .       MOVS     r0,#0
        0x000010b8:    b662        b.      CPSIE    i
        0x000010ba:    bd80        ..      POP      {r7,pc}
    Flash_Param_at_xMHz
        0x000010bc:    b570        p.      PUSH     {r4-r6,lr}
        0x000010be:    f64f74ac    O..t    MOV      r4,#0xffac
        0x000010c2:    4605        .F      MOV      r5,r0
        0x000010c4:    f3ef8010    ....    MRS      r0,PRIMASK
        0x000010c8:    b672        r.      CPSID    i
        0x000010ca:    f6c03411    ...4    MOVT     r4,#0xb11
        0x000010ce:    f2405661    @.aV    MOV      r6,#0x561
        0x000010d2:    2005        .       MOVS     r0,#5
        0x000010d4:    f2c01600    ....    MOVT     r6,#0x100
        0x000010d8:    4621        !F      MOV      r1,r4
        0x000010da:    47b0        .G      BLX      r6
        0x000010dc:    f44f707a    O.zp    MOV      r0,#0x3e8
        0x000010e0:    fbb0f0f5    ....    UDIV     r0,r0,r5
        0x000010e4:    f2405221    @.!R    MOV      r2,#0x521
        0x000010e8:    f2c01200    ....    MOVT     r2,#0x100
        0x000010ec:    4621        !F      MOV      r1,r4
        0x000010ee:    4790        .G      BLX      r2
        0x000010f0:    2d30        0-      CMP      r5,#0x30
        0x000010f2:    d201        ..      BCS      0x10f8 ; Flash_Param_at_xMHz + 60
        0x000010f4:    2000        .       MOVS     r0,#0
        0x000010f6:    e00e        ..      B        0x1116 ; Flash_Param_at_xMHz + 90
        0x000010f8:    2d4c        L-      CMP      r5,#0x4c
        0x000010fa:    d201        ..      BCS      0x1100 ; Flash_Param_at_xMHz + 68
        0x000010fc:    2001        .       MOVS     r0,#1
        0x000010fe:    e00a        ..      B        0x1116 ; Flash_Param_at_xMHz + 90
        0x00001100:    2d66        f-      CMP      r5,#0x66
        0x00001102:    d201        ..      BCS      0x1108 ; Flash_Param_at_xMHz + 76
        0x00001104:    2002        .       MOVS     r0,#2
        0x00001106:    e006        ..      B        0x1116 ; Flash_Param_at_xMHz + 90
        0x00001108:    2d80        .-      CMP      r5,#0x80
        0x0000110a:    d201        ..      BCS      0x1110 ; Flash_Param_at_xMHz + 84
        0x0000110c:    2003        .       MOVS     r0,#3
        0x0000110e:    e002        ..      B        0x1116 ; Flash_Param_at_xMHz + 90
        0x00001110:    2d97        .-      CMP      r5,#0x97
        0x00001112:    d802        ..      BHI      0x111a ; Flash_Param_at_xMHz + 94
        0x00001114:    2004        .       MOVS     r0,#4
        0x00001116:    4621        !F      MOV      r1,r4
        0x00001118:    47b0        .G      BLX      r6
        0x0000111a:    b662        b.      CPSIE    i
        0x0000111c:    bd70        p.      POP      {r4-r6,pc}
        0x0000111e:    0000        ..      MOVS     r0,r0
    SystemCoreClockUpdate
        0x00001120:    f04f4280    O..B    MOV      r2,#0x40000000
        0x00001124:    6810        .h      LDR      r0,[r2,#0]
        0x00001126:    f2412100    A..!    MOVW     r1,#0x1200
        0x0000112a:    f2400c08    @...    MOVW     r12,#8
        0x0000112e:    07c0        ..      LSLS     r0,r0,#31
        0x00001130:    f2c0017a    ..z.    MOVT     r1,#0x7a
        0x00001134:    f2c00c00    ....    MOVT     r12,#0
        0x00001138:    d133        3.      BNE      0x11a2 ; SystemCoreClockUpdate + 130
        0x0000113a:    6812        .h      LDR      r2,[r2,#0]
        0x0000113c:    f3c20382    ....    UBFX     r3,r2,#2,#3
        0x00001140:    2b04        .+      CMP      r3,#4
        0x00001142:    d826        &.      BHI      0x1192 ; SystemCoreClockUpdate + 114
        0x00001144:    f44f42fa    O..B    MOV      r2,#0x7d00
        0x00001148:    e8dff003    ....    TBB      [pc,r3]
    $d.1
        0x0000114c:    031f0521    !...    DCD    52364577
        0x00001150:    0003        ..      DCW    3
    $t.2
        0x00001152:    460a        .F      MOV      r2,r1
        0x00001154:    e01b        ..      B        0x118e ; SystemCoreClockUpdate + 110
        0x00001156:    f6450014    E...    MOV      r0,#0x5814
        0x0000115a:    f2c4000a    ....    MOVT     r0,#0x400a
        0x0000115e:    f8502c04    P..,    LDR      r2,[r0,#-4]
        0x00001162:    f849100c    I...    STR      r1,[r9,r12]
        0x00001166:    6802        .h      LDR      r2,[r0,#0]
        0x00001168:    6803        .h      LDR      r3,[r0,#0]
        0x0000116a:    f3c24202    ...B    UBFX     r2,r2,#16,#3
        0x0000116e:    f3c32305    ...#    UBFX     r3,r3,#8,#6
        0x00001172:    3201        .2      ADDS     r2,#1
        0x00001174:    6800        .h      LDR      r0,[r0,#0]
        0x00001176:    fbb1f1f2    ....    UDIV     r1,r1,r2
        0x0000117a:    f0000007    ....    AND      r0,r0,#7
        0x0000117e:    fb01f103    ....    MUL      r1,r1,r3
        0x00001182:    3001        .0      ADDS     r0,#1
        0x00001184:    fbb1f2f0    ....    UDIV     r2,r1,r0
        0x00001188:    e001        ..      B        0x118e ; SystemCoreClockUpdate + 110
        0x0000118a:    f44f4200    O..B    MOV      r2,#0x8000
        0x0000118e:    f849200c    I..     STR      r2,[r9,r12]
        0x00001192:    f04f4080    O..@    MOV      r0,#0x40000000
        0x00001196:    6800        .h      LDR      r0,[r0,#0]
        0x00001198:    0780        ..      LSLS     r0,r0,#30
        0x0000119a:    d504        ..      BPL      0x11a6 ; SystemCoreClockUpdate + 134
        0x0000119c:    f859000c    Y...    LDR      r0,[r9,r12]
        0x000011a0:    08c1        ..      LSRS     r1,r0,#3
        0x000011a2:    f849100c    I...    STR      r1,[r9,r12]
        0x000011a6:    f859000c    Y...    LDR      r0,[r9,r12]
        0x000011aa:    f64d6183    M..a    MOV      r1,#0xde83
        0x000011ae:    f2c4311b    ...1    MOVT     r1,#0x431b
        0x000011b2:    fba01201    ....    UMULL    r1,r2,r0,r1
        0x000011b6:    0c91        ..      LSRS     r1,r2,#18
        0x000011b8:    f2442240    D.@"    MOV      r2,#0x4240
        0x000011bc:    f2c0020f    ....    MOVT     r2,#0xf
        0x000011c0:    4290        .B      CMP      r0,r2
        0x000011c2:    bf38        8.      IT       CC
        0x000011c4:    2101        .!      MOVCC    r1,#1
        0x000011c6:    f2400004    @...    MOVW     r0,#4
        0x000011ca:    f2c00000    ....    MOVT     r0,#0
        0x000011ce:    f8491000    I...    STR      r1,[r9,r0]
        0x000011d2:    4770        pG      BX       lr
    SystemInit
        0x000011d4:    b510        ..      PUSH     {r4,lr}
        0x000011d6:    b082        ..      SUB      sp,sp,#8
        0x000011d8:    200c        .       MOVS     r0,#0xc
        0x000011da:    f2c40000    ....    MOVT     r0,#0x4000
        0x000011de:    6801        .h      LDR      r1,[r0,#0]
        0x000011e0:    2400        .$      MOVS     r4,#0
        0x000011e2:    f4416180    A..a    ORR      r1,r1,#0x400
        0x000011e6:    6001        .`      STR      r1,[r0,#0]
        0x000011e8:    2000        .       MOVS     r0,#0
        0x000011ea:    f000f83f    ..?.    BL       LDO_1V8_On ; 0x126c
        0x000011ee:    2096        .       MOVS     r0,#0x96
        0x000011f0:    f7ffff64    ..d.    BL       Flash_Param_at_xMHz ; 0x10bc
        0x000011f4:    2000        .       MOVS     r0,#0
        0x000011f6:    2102        .!      MOVS     r1,#2
        0x000011f8:    221e        ."      MOVS     r2,#0x1e
        0x000011fa:    2302        .#      MOVS     r3,#2
        0x000011fc:    9400        ..      STR      r4,[sp,#0]
        0x000011fe:    f000f86b    ..k.    BL       switchToPLL ; 0x12d8
        0x00001202:    f7ffff8d    ....    BL       SystemCoreClockUpdate ; 0x1120
        0x00001206:    f2400004    @...    MOVW     r0,#4
        0x0000120a:    f2c00000    ....    MOVT     r0,#0
        0x0000120e:    f8590000    Y...    LDR      r0,[r9,r0]
        0x00001212:    f7ffff53    ..S.    BL       Flash_Param_at_xMHz ; 0x10bc
        0x00001216:    f645000c    E...    MOV      r0,#0x580c
        0x0000121a:    f2c40004    ....    MOVT     r0,#0x4004
        0x0000121e:    f2403168    @.h1    MOVW     r1,#0x368
        0x00001222:    f2c00100    ....    MOVT     r1,#0
        0x00001226:    6800        .h      LDR      r0,[r0,#0]
        0x00001228:    4479        yD      ADD      r1,r1,pc
        0x0000122a:    680a        .h      LDR      r2,[r1,#0]
        0x0000122c:    f0404000    @..@    ORR      r0,r0,#0x80000000
        0x00001230:    f64f71ac    O..q    MOV      r1,#0xffac
        0x00001234:    f0400001    @...    ORR      r0,r0,#1
        0x00001238:    f6c03111    ...1    MOVT     r1,#0xb11
        0x0000123c:    4790        .G      BLX      r2
        0x0000123e:    f2401010    @...    MOVW     r0,#0x110
        0x00001242:    f2c4000a    ....    MOVT     r0,#0x400a
        0x00001246:    f8d01110    ....    LDR      r1,[r0,#0x110]
        0x0000124a:    f0210120    !. .    BIC      r1,r1,#0x20
        0x0000124e:    f8c01110    ....    STR      r1,[r0,#0x110]
        0x00001252:    f8d01100    ....    LDR      r1,[r0,#0x100]
        0x00001256:    f4217180    !..q    BIC      r1,r1,#0x100
        0x0000125a:    f8c01100    ....    STR      r1,[r0,#0x100]
        0x0000125e:    6801        .h      LDR      r1,[r0,#0]
        0x00001260:    f42161c0    !..a    BIC      r1,r1,#0x600
        0x00001264:    6001        .`      STR      r1,[r0,#0]
        0x00001266:    b002        ..      ADD      sp,sp,#8
        0x00001268:    bd10        ..      POP      {r4,pc}
        0x0000126a:    bf00        ..      NOP      
    LDO_1V8_On
        0x0000126c:    210c        .!      MOVS     r1,#0xc
        0x0000126e:    f2c40100    ....    MOVT     r1,#0x4000
        0x00001272:    680a        .h      LDR      r2,[r1,#0]
        0x00001274:    2801        .(      CMP      r0,#1
        0x00001276:    f64300a8    C...    MOV      r0,#0x38a8
        0x0000127a:    f0420240    B.@.    ORR      r2,r2,#0x40
        0x0000127e:    f2c4000a    ....    MOVT     r0,#0x400a
        0x00001282:    600a        .`      STR      r2,[r1,#0]
        0x00001284:    d104        ..      BNE      0x1290 ; LDO_1V8_On + 36
        0x00001286:    6801        .h      LDR      r1,[r0,#0]
        0x00001288:    f0410101    A...    ORR      r1,r1,#1
        0x0000128c:    6001        .`      STR      r1,[r0,#0]
        0x0000128e:    e007        ..      B        0x12a0 ; LDO_1V8_On + 52
        0x00001290:    f6450100    E...    MOVW     r1,#0x5800
        0x00001294:    f2c4010a    ....    MOVT     r1,#0x400a
        0x00001298:    680a        .h      LDR      r2,[r1,#0]
        0x0000129a:    f0420202    B...    ORR      r2,r2,#2
        0x0000129e:    600a        .`      STR      r2,[r1,#0]
        0x000012a0:    f2400104    @...    MOVW     r1,#4
        0x000012a4:    f2c00100    ....    MOVT     r1,#0
        0x000012a8:    f8592001    Y..     LDR      r2,[r9,r1]
        0x000012ac:    2300        .#      MOVS     r3,#0
        0x000012ae:    eb020282    ....    ADD      r2,r2,r2,LSL #2
        0x000012b2:    ebb30f42    ..B.    CMP      r3,r2,LSL #1
        0x000012b6:    d00a        ..      BEQ      0x12ce ; LDO_1V8_On + 98
        0x000012b8:    2200        ."      MOVS     r2,#0
        0x000012ba:    bf00        ..      NOP      
        0x000012bc:    bf00        ..      NOP      
        0x000012be:    f8593001    Y..0    LDR      r3,[r9,r1]
        0x000012c2:    3201        .2      ADDS     r2,#1
        0x000012c4:    eb030383    ....    ADD      r3,r3,r3,LSL #2
        0x000012c8:    ebb20f43    ..C.    CMP      r2,r3,LSL #1
        0x000012cc:    d3f6        ..      BCC      0x12bc ; LDO_1V8_On + 80
        0x000012ce:    6841        Ah      LDR      r1,[r0,#4]
        0x000012d0:    f0410120    A. .    ORR      r1,r1,#0x20
        0x000012d4:    6041        A`      STR      r1,[r0,#4]
        0x000012d6:    4770        pG      BX       lr
    switchToPLL
        0x000012d8:    e92d41f0    -..A    PUSH     {r4-r8,lr}
        0x000012dc:    f6450410    E...    MOV      r4,#0x5810
        0x000012e0:    4698        .F      MOV      r8,r3
        0x000012e2:    4615        .F      MOV      r5,r2
        0x000012e4:    460e        .F      MOV      r6,r1
        0x000012e6:    4607        .F      MOV      r7,r0
        0x000012e8:    f2c4040a    ....    MOVT     r4,#0x400a
        0x000012ec:    f000f864    ..d.    BL       switchTo8MHz ; 0x13b8
        0x000012f0:    b1c7        ..      CBZ      r7,0x1324 ; switchToPLL + 76
        0x000012f2:    2700        .'      MOVS     r7,#0
        0x000012f4:    f2c4070a    ....    MOVT     r7,#0x400a
        0x000012f8:    4638        8F      MOV      r0,r7
        0x000012fa:    2103        .!      MOVS     r1,#3
        0x000012fc:    2207        ."      MOVS     r2,#7
        0x000012fe:    2300        .#      MOVS     r3,#0
        0x00001300:    f7fff990    ....    BL       PORT_Init ; 0x624
        0x00001304:    4638        8F      MOV      r0,r7
        0x00001306:    2104        .!      MOVS     r1,#4
        0x00001308:    2207        ."      MOVS     r2,#7
        0x0000130a:    2300        .#      MOVS     r3,#0
        0x0000130c:    f7fff98a    ....    BL       PORT_Init ; 0x624
        0x00001310:    f8540c08    T...    LDR      r0,[r4,#-8]
        0x00001314:    f0400001    @...    ORR      r0,r0,#1
        0x00001318:    f8440c08    D...    STR      r0,[r4,#-8]
        0x0000131c:    6820         h      LDR      r0,[r4,#0]
        0x0000131e:    f0400002    @...    ORR      r0,r0,#2
        0x00001322:    e008        ..      B        0x1336 ; switchToPLL + 94
        0x00001324:    f8540c10    T...    LDR      r0,[r4,#-0x10]
        0x00001328:    f0400001    @...    ORR      r0,r0,#1
        0x0000132c:    f8440c10    D...    STR      r0,[r4,#-0x10]
        0x00001330:    6820         h      LDR      r0,[r4,#0]
        0x00001332:    f0200002     ...    BIC      r0,r0,#2
        0x00001336:    6020         `      STR      r0,[r4,#0]
        0x00001338:    6860        `h      LDR      r0,[r4,#4]
        0x0000133a:    f24c01f8    L...    MOV      r1,#0xc0f8
        0x0000133e:    f6cf71f8    ...q    MOVT     r1,#0xfff8
        0x00001342:    4008        .@      ANDS     r0,r0,r1
        0x00001344:    2100        .!      MOVS     r1,#0
        0x00001346:    f6cf71ff    ...q    MOVT     r1,#0xffff
        0x0000134a:    eb014106    ...A    ADD      r1,r1,r6,LSL #16
        0x0000134e:    6060        ``      STR      r0,[r4,#4]
        0x00001350:    ea412005    A..     ORR      r0,r1,r5,LSL #8
        0x00001354:    f1a80101    ....    SUB      r1,r8,#1
        0x00001358:    6862        bh      LDR      r2,[r4,#4]
        0x0000135a:    4308        .C      ORRS     r0,r0,r1
        0x0000135c:    4310        .C      ORRS     r0,r0,r2
        0x0000135e:    6060        ``      STR      r0,[r4,#4]
        0x00001360:    6820         h      LDR      r0,[r4,#0]
        0x00001362:    f0200004     ...    BIC      r0,r0,#4
        0x00001366:    6020         `      STR      r0,[r4,#0]
        0x00001368:    6821        !h      LDR      r1,[r4,#0]
        0x0000136a:    9806        ..      LDR      r0,[sp,#0x18]
        0x0000136c:    0709        ..      LSLS     r1,r1,#28
        0x0000136e:    d403        ..      BMI      0x1378 ; switchToPLL + 160
        0x00001370:    bf00        ..      NOP      
        0x00001372:    6821        !h      LDR      r1,[r4,#0]
        0x00001374:    0709        ..      LSLS     r1,r1,#28
        0x00001376:    d5fb        ..      BPL      0x1370 ; switchToPLL + 152
        0x00001378:    6821        !h      LDR      r1,[r4,#0]
        0x0000137a:    2201        ."      MOVS     r2,#1
        0x0000137c:    f0410101    A...    ORR      r1,r1,#1
        0x00001380:    6021        !`      STR      r1,[r4,#0]
        0x00001382:    2104        .!      MOVS     r1,#4
        0x00001384:    f2c40100    ....    MOVT     r1,#0x4000
        0x00001388:    600a        .`      STR      r2,[r1,#0]
        0x0000138a:    f04f4180    O..A    MOV      r1,#0x40000000
        0x0000138e:    680a        .h      LDR      r2,[r1,#0]
        0x00001390:    2800        .(      CMP      r0,#0
        0x00001392:    f022021c    "...    BIC      r2,r2,#0x1c
        0x00001396:    600a        .`      STR      r2,[r1,#0]
        0x00001398:    680a        .h      LDR      r2,[r1,#0]
        0x0000139a:    f0420204    B...    ORR      r2,r2,#4
        0x0000139e:    600a        .`      STR      r2,[r1,#0]
        0x000013a0:    680a        .h      LDR      r2,[r1,#0]
        0x000013a2:    f0220202    "...    BIC      r2,r2,#2
        0x000013a6:    bf18        ..      IT       NE
        0x000013a8:    3202        .2      ADDNE    r2,#2
        0x000013aa:    600a        .`      STR      r2,[r1,#0]
        0x000013ac:    6808        .h      LDR      r0,[r1,#0]
        0x000013ae:    f0200001     ...    BIC      r0,r0,#1
        0x000013b2:    6008        .`      STR      r0,[r1,#0]
        0x000013b4:    e8bd81f0    ....    POP      {r4-r8,pc}
    switchTo8MHz
        0x000013b8:    b580        ..      PUSH     {r7,lr}
        0x000013ba:    f6450000    E...    MOVW     r0,#0x5800
        0x000013be:    f2c4000a    ....    MOVT     r0,#0x400a
        0x000013c2:    6801        .h      LDR      r1,[r0,#0]
        0x000013c4:    f0410101    A...    ORR      r1,r1,#1
        0x000013c8:    6001        .`      STR      r1,[r0,#0]
        0x000013ca:    f000f807    ....    BL       delay_3ms ; 0x13dc
        0x000013ce:    f04f4080    O..@    MOV      r0,#0x40000000
        0x000013d2:    6801        .h      LDR      r1,[r0,#0]
        0x000013d4:    f0410101    A...    ORR      r1,r1,#1
        0x000013d8:    6001        .`      STR      r1,[r0,#0]
        0x000013da:    bd80        ..      POP      {r7,pc}
    delay_3ms
        0x000013dc:    f04f4080    O..@    MOV      r0,#0x40000000
        0x000013e0:    6801        .h      LDR      r1,[r0,#0]
        0x000013e2:    07c9        ..      LSLS     r1,r1,#31
        0x000013e4:    d110        ..      BNE      0x1408 ; delay_3ms + 44
        0x000013e6:    6800        .h      LDR      r0,[r0,#0]
        0x000013e8:    f0100f1c    ....    TST      r0,#0x1c
        0x000013ec:    d006        ..      BEQ      0x13fc ; delay_3ms + 32
        0x000013ee:    f04f4080    O..@    MOV      r0,#0x40000000
        0x000013f2:    6800        .h      LDR      r0,[r0,#0]
        0x000013f4:    f000001c    ....    AND      r0,r0,#0x1c
        0x000013f8:    2808        .(      CMP      r0,#8
        0x000013fa:    d105        ..      BNE      0x1408 ; delay_3ms + 44
        0x000013fc:    2014        .       MOVS     r0,#0x14
        0x000013fe:    bf00        ..      NOP      
        0x00001400:    3801        .8      SUBS     r0,#1
        0x00001402:    bf00        ..      NOP      
        0x00001404:    d1fc        ..      BNE      0x1400 ; delay_3ms + 36
        0x00001406:    e004        ..      B        0x1412 ; delay_3ms + 54
        0x00001408:    f6446020    D. `    MOV      r0,#0x4e20
        0x0000140c:    3801        .8      SUBS     r0,#1
        0x0000140e:    bf00        ..      NOP      
        0x00001410:    d1fc        ..      BNE      0x140c ; delay_3ms + 48
        0x00001412:    4770        pG      BX       lr
    switchTo1MHz
        0x00001414:    b510        ..      PUSH     {r4,lr}
        0x00001416:    f7ffffcf    ....    BL       switchTo8MHz ; 0x13b8
        0x0000141a:    2004        .       MOVS     r0,#4
        0x0000141c:    f2c40000    ....    MOVT     r0,#0x4000
        0x00001420:    2101        .!      MOVS     r1,#1
        0x00001422:    6001        .`      STR      r1,[r0,#0]
        0x00001424:    f04f4480    O..D    MOV      r4,#0x40000000
        0x00001428:    6820         h      LDR      r0,[r4,#0]
        0x0000142a:    f020001c     ...    BIC      r0,r0,#0x1c
        0x0000142e:    6020         `      STR      r0,[r4,#0]
        0x00001430:    6820         h      LDR      r0,[r4,#0]
        0x00001432:    f0400010    @...    ORR      r0,r0,#0x10
        0x00001436:    6020         `      STR      r0,[r4,#0]
        0x00001438:    6820         h      LDR      r0,[r4,#0]
        0x0000143a:    f0400002    @...    ORR      r0,r0,#2
        0x0000143e:    6020         `      STR      r0,[r4,#0]
        0x00001440:    f7ffffcc    ....    BL       delay_3ms ; 0x13dc
        0x00001444:    6820         h      LDR      r0,[r4,#0]
        0x00001446:    f0200001     ...    BIC      r0,r0,#1
        0x0000144a:    6020         `      STR      r0,[r4,#0]
        0x0000144c:    bd10        ..      POP      {r4,pc}
        0x0000144e:    bf00        ..      NOP      
    switchToXTAL
        0x00001450:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x00001452:    4604        .F      MOV      r4,r0
        0x00001454:    f7ffffb0    ....    BL       switchTo8MHz ; 0x13b8
        0x00001458:    2500        .%      MOVS     r5,#0
        0x0000145a:    f2c4050a    ....    MOVT     r5,#0x400a
        0x0000145e:    4628        (F      MOV      r0,r5
        0x00001460:    2103        .!      MOVS     r1,#3
        0x00001462:    2207        ."      MOVS     r2,#7
        0x00001464:    2300        .#      MOVS     r3,#0
        0x00001466:    f7fff8dd    ....    BL       PORT_Init ; 0x624
        0x0000146a:    4628        (F      MOV      r0,r5
        0x0000146c:    2104        .!      MOVS     r1,#4
        0x0000146e:    2207        ."      MOVS     r2,#7
        0x00001470:    2300        .#      MOVS     r3,#0
        0x00001472:    f7fff8d7    ....    BL       PORT_Init ; 0x624
        0x00001476:    f6450008    E...    MOV      r0,#0x5808
        0x0000147a:    f2c4000a    ....    MOVT     r0,#0x400a
        0x0000147e:    6801        .h      LDR      r1,[r0,#0]
        0x00001480:    f04f4580    O..E    MOV      r5,#0x40000000
        0x00001484:    f0410101    A...    ORR      r1,r1,#1
        0x00001488:    6001        .`      STR      r1,[r0,#0]
        0x0000148a:    2004        .       MOVS     r0,#4
        0x0000148c:    f2c40000    ....    MOVT     r0,#0x4000
        0x00001490:    2101        .!      MOVS     r1,#1
        0x00001492:    6001        .`      STR      r1,[r0,#0]
        0x00001494:    6828        (h      LDR      r0,[r5,#0]
        0x00001496:    2c00        .,      CMP      r4,#0
        0x00001498:    f020001c     ...    BIC      r0,r0,#0x1c
        0x0000149c:    6028        (`      STR      r0,[r5,#0]
        0x0000149e:    6828        (h      LDR      r0,[r5,#0]
        0x000014a0:    f040000c    @...    ORR      r0,r0,#0xc
        0x000014a4:    6028        (`      STR      r0,[r5,#0]
        0x000014a6:    6828        (h      LDR      r0,[r5,#0]
        0x000014a8:    f0200002     ...    BIC      r0,r0,#2
        0x000014ac:    bf18        ..      IT       NE
        0x000014ae:    3002        .0      ADDNE    r0,#2
        0x000014b0:    6028        (`      STR      r0,[r5,#0]
        0x000014b2:    f7ffff93    ....    BL       delay_3ms ; 0x13dc
        0x000014b6:    6828        (h      LDR      r0,[r5,#0]
        0x000014b8:    f0200001     ...    BIC      r0,r0,#1
        0x000014bc:    6028        (`      STR      r0,[r5,#0]
        0x000014be:    bdb0        ..      POP      {r4,r5,r7,pc}
    switchTo32KHz
        0x000014c0:    b510        ..      PUSH     {r4,lr}
        0x000014c2:    f7ffff79    ..y.    BL       switchTo8MHz ; 0x13b8
        0x000014c6:    f6450000    E...    MOVW     r0,#0x5800
        0x000014ca:    f2c4000a    ....    MOVT     r0,#0x400a
        0x000014ce:    6801        .h      LDR      r1,[r0,#0]
        0x000014d0:    f04f4480    O..D    MOV      r4,#0x40000000
        0x000014d4:    f0410102    A...    ORR      r1,r1,#2
        0x000014d8:    6001        .`      STR      r1,[r0,#0]
        0x000014da:    2004        .       MOVS     r0,#4
        0x000014dc:    f2c40000    ....    MOVT     r0,#0x4000
        0x000014e0:    2101        .!      MOVS     r1,#1
        0x000014e2:    6001        .`      STR      r1,[r0,#0]
        0x000014e4:    6820         h      LDR      r0,[r4,#0]
        0x000014e6:    f020001c     ...    BIC      r0,r0,#0x1c
        0x000014ea:    6020         `      STR      r0,[r4,#0]
        0x000014ec:    6820         h      LDR      r0,[r4,#0]
        0x000014ee:    6020         `      STR      r0,[r4,#0]
        0x000014f0:    6820         h      LDR      r0,[r4,#0]
        0x000014f2:    f0200002     ...    BIC      r0,r0,#2
        0x000014f6:    6020         `      STR      r0,[r4,#0]
        0x000014f8:    f7ffff70    ..p.    BL       delay_3ms ; 0x13dc
        0x000014fc:    6820         h      LDR      r0,[r4,#0]
        0x000014fe:    f0200001     ...    BIC      r0,r0,#1
        0x00001502:    6020         `      STR      r0,[r4,#0]
        0x00001504:    bd10        ..      POP      {r4,pc}
        0x00001506:    bf00        ..      NOP      
    switchToXTAL_32K
        0x00001508:    b510        ..      PUSH     {r4,lr}
        0x0000150a:    f7ffff55    ..U.    BL       switchTo8MHz ; 0x13b8
        0x0000150e:    240c        .$      MOVS     r4,#0xc
        0x00001510:    f2c40400    ....    MOVT     r4,#0x4000
        0x00001514:    6820         h      LDR      r0,[r4,#0]
        0x00001516:    f0400040    @.@.    ORR      r0,r0,#0x40
        0x0000151a:    6020         `      STR      r0,[r4,#0]
        0x0000151c:    f000f822    ..".    BL       RTC_unlock ; 0x1564
        0x00001520:    f64300a8    C...    MOV      r0,#0x38a8
        0x00001524:    f2c4000a    ....    MOVT     r0,#0x400a
        0x00001528:    6801        .h      LDR      r1,[r0,#0]
        0x0000152a:    f0410101    A...    ORR      r1,r1,#1
        0x0000152e:    6001        .`      STR      r1,[r0,#0]
        0x00001530:    f000f828    ..(.    BL       RTC_lock ; 0x1584
        0x00001534:    2001        .       MOVS     r0,#1
        0x00001536:    f8440c08    D...    STR      r0,[r4,#-8]
        0x0000153a:    f04f4480    O..D    MOV      r4,#0x40000000
        0x0000153e:    6820         h      LDR      r0,[r4,#0]
        0x00001540:    f020001c     ...    BIC      r0,r0,#0x1c
        0x00001544:    6020         `      STR      r0,[r4,#0]
        0x00001546:    6820         h      LDR      r0,[r4,#0]
        0x00001548:    f0400008    @...    ORR      r0,r0,#8
        0x0000154c:    6020         `      STR      r0,[r4,#0]
        0x0000154e:    6820         h      LDR      r0,[r4,#0]
        0x00001550:    f0200002     ...    BIC      r0,r0,#2
        0x00001554:    6020         `      STR      r0,[r4,#0]
        0x00001556:    f7ffff41    ..A.    BL       delay_3ms ; 0x13dc
        0x0000155a:    6820         h      LDR      r0,[r4,#0]
        0x0000155c:    f0200001     ...    BIC      r0,r0,#1
        0x00001560:    6020         `      STR      r0,[r4,#0]
        0x00001562:    bd10        ..      POP      {r4,pc}
    RTC_unlock
        0x00001564:    2030        0       MOVS     r0,#0x30
        0x00001566:    f2c40000    ....    MOVT     r0,#0x4000
        0x0000156a:    6801        .h      LDR      r1,[r0,#0]
        0x0000156c:    f0410102    A...    ORR      r1,r1,#2
        0x00001570:    6001        .`      STR      r1,[r0,#0]
        0x00001572:    f6430024    C.$.    MOV      r0,#0x3824
        0x00001576:    f2c4000a    ....    MOVT     r0,#0x400a
        0x0000157a:    21ca        .!      MOVS     r1,#0xca
        0x0000157c:    6001        .`      STR      r1,[r0,#0]
        0x0000157e:    2153        S!      MOVS     r1,#0x53
        0x00001580:    6001        .`      STR      r1,[r0,#0]
        0x00001582:    4770        pG      BX       lr
    RTC_lock
        0x00001584:    f6430024    C.$.    MOV      r0,#0x3824
        0x00001588:    f2c4000a    ....    MOVT     r0,#0x400a
        0x0000158c:    2100        .!      MOVS     r1,#0
        0x0000158e:    6001        .`      STR      r1,[r0,#0]
        0x00001590:    4770        pG      BX       lr
        0x00001592:    0000        ..      MOVS     r0,r0
    $d.realdata
    IAP_Cache_Config
        0x00001594:    01000621    !...    DCD    16778785
    IAP_Flash_Erase
        0x00001598:    01000401    ....    DCD    16778241
    IAP_Flash_Param
        0x0000159c:    01000521    !...    DCD    16778529
    IAP_Flash_ParamTAC
        0x000015a0:    01000561    a...    DCD    16778593
    IAP_Flash_Write
        0x000015a4:    01000481    ....    DCD    16778369

** Section #2 'PrgData' (SHT_PROGBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 12 bytes (alignment 4)
    Address: 0x000015a8


** Section #3 'PrgData' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 2052 bytes
    Address: 0x000015b4


** Section #4 'DevDscr' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 4256 bytes (alignment 4)
    Address: 0x000015b4

    $d.realdata
    FlashDevice
        0x000015b4:    57530101    ..SW    DCD    1465057537
        0x000015b8:    3033334d    M330    DCD    808661837
        0x000015bc:    50535120     QSP    DCD    1347637536
        0x000015c0:    4e203049    I0 N    DCD    1310732361
        0x000015c4:    00444e41    AND.    DCD    4476481
        0x000015c8:    00000000    ....    DCD    0
        0x000015cc:    00000000    ....    DCD    0
        0x000015d0:    00000000    ....    DCD    0
        0x000015d4:    00000000    ....    DCD    0
        0x000015d8:    00000000    ....    DCD    0
        0x000015dc:    00000000    ....    DCD    0
        0x000015e0:    00000000    ....    DCD    0
        0x000015e4:    00000000    ....    DCD    0
        0x000015e8:    00000000    ....    DCD    0
        0x000015ec:    00000000    ....    DCD    0
        0x000015f0:    00000000    ....    DCD    0
        0x000015f4:    00000000    ....    DCD    0
        0x000015f8:    00000000    ....    DCD    0
        0x000015fc:    00000000    ....    DCD    0
        0x00001600:    00000000    ....    DCD    0
        0x00001604:    00000000    ....    DCD    0
        0x00001608:    00000000    ....    DCD    0
        0x0000160c:    00000000    ....    DCD    0
        0x00001610:    00000000    ....    DCD    0
        0x00001614:    00000000    ....    DCD    0
        0x00001618:    00000000    ....    DCD    0
        0x0000161c:    00000000    ....    DCD    0
        0x00001620:    00000000    ....    DCD    0
        0x00001624:    00000000    ....    DCD    0
        0x00001628:    00000000    ....    DCD    0
        0x0000162c:    00000000    ....    DCD    0
        0x00001630:    00000000    ....    DCD    0
        0x00001634:    00010000    ....    DCD    65536
        0x00001638:    70000000    ...p    DCD    1879048192
        0x0000163c:    08000000    ....    DCD    134217728
        0x00001640:    00000800    ....    DCD    2048
        0x00001644:    00000000    ....    DCD    0
        0x00001648:    000000ff    ....    DCD    255
        0x0000164c:    000003e8    ....    DCD    1000
        0x00001650:    000007d0    ....    DCD    2000
        0x00001654:    00010000    ....    DCD    65536
        0x00001658:    00000000    ....    DCD    0
        0x0000165c:    ffffffff    ....    DCD    4294967295
        0x00001660:    ffffffff    ....    DCD    4294967295
        0x00001664:    00000000    ....    DCD    0
        0x00001668:    00000000    ....    DCD    0
        0x0000166c:    00000000    ....    DCD    0
        0x00001670:    00000000    ....    DCD    0
        0x00001674:    00000000    ....    DCD    0
        0x00001678:    00000000    ....    DCD    0
        0x0000167c:    00000000    ....    DCD    0
        0x00001680:    00000000    ....    DCD    0
        0x00001684:    00000000    ....    DCD    0
        0x00001688:    00000000    ....    DCD    0
        0x0000168c:    00000000    ....    DCD    0
        0x00001690:    00000000    ....    DCD    0
        0x00001694:    00000000    ....    DCD    0
        0x00001698:    00000000    ....    DCD    0
        0x0000169c:    00000000    ....    DCD    0
        0x000016a0:    00000000    ....    DCD    0
        0x000016a4:    00000000    ....    DCD    0
        0x000016a8:    00000000    ....    DCD    0
        0x000016ac:    00000000    ....    DCD    0
        0x000016b0:    00000000    ....    DCD    0
        0x000016b4:    00000000    ....    DCD    0
        0x000016b8:    00000000    ....    DCD    0
        0x000016bc:    00000000    ....    DCD    0
        0x000016c0:    00000000    ....    DCD    0
        0x000016c4:    00000000    ....    DCD    0
        0x000016c8:    00000000    ....    DCD    0
        0x000016cc:    00000000    ....    DCD    0
        0x000016d0:    00000000    ....    DCD    0
        0x000016d4:    00000000    ....    DCD    0
        0x000016d8:    00000000    ....    DCD    0
        0x000016dc:    00000000    ....    DCD    0
        0x000016e0:    00000000    ....    DCD    0
        0x000016e4:    00000000    ....    DCD    0
        0x000016e8:    00000000    ....    DCD    0
        0x000016ec:    00000000    ....    DCD    0
        0x000016f0:    00000000    ....    DCD    0
        0x000016f4:    00000000    ....    DCD    0
        0x000016f8:    00000000    ....    DCD    0
        0x000016fc:    00000000    ....    DCD    0
        0x00001700:    00000000    ....    DCD    0
        0x00001704:    00000000    ....    DCD    0
        0x00001708:    00000000    ....    DCD    0
        0x0000170c:    00000000    ....    DCD    0
        0x00001710:    00000000    ....    DCD    0
        0x00001714:    00000000    ....    DCD    0
        0x00001718:    00000000    ....    DCD    0
        0x0000171c:    00000000    ....    DCD    0
        0x00001720:    00000000    ....    DCD    0
        0x00001724:    00000000    ....    DCD    0
        0x00001728:    00000000    ....    DCD    0
        0x0000172c:    00000000    ....    DCD    0
        0x00001730:    00000000    ....    DCD    0
        0x00001734:    00000000    ....    DCD    0
        0x00001738:    00000000    ....    DCD    0
        0x0000173c:    00000000    ....    DCD    0
        0x00001740:    00000000    ....    DCD    0
        0x00001744:    00000000    ....    DCD    0
        0x00001748:    00000000    ....    DCD    0
        0x0000174c:    00000000    ....    DCD    0
        0x00001750:    00000000    ....    DCD    0
        0x00001754:    00000000    ....    DCD    0
        0x00001758:    00000000    ....    DCD    0
        0x0000175c:    00000000    ....    DCD    0
        0x00001760:    00000000    ....    DCD    0
        0x00001764:    00000000    ....    DCD    0
        0x00001768:    00000000    ....    DCD    0
        0x0000176c:    00000000    ....    DCD    0
        0x00001770:    00000000    ....    DCD    0
        0x00001774:    00000000    ....    DCD    0
        0x00001778:    00000000    ....    DCD    0
        0x0000177c:    00000000    ....    DCD    0
        0x00001780:    00000000    ....    DCD    0
        0x00001784:    00000000    ....    DCD    0
        0x00001788:    00000000    ....    DCD    0
        0x0000178c:    00000000    ....    DCD    0
        0x00001790:    00000000    ....    DCD    0
        0x00001794:    00000000    ....    DCD    0
        0x00001798:    00000000    ....    DCD    0
        0x0000179c:    00000000    ....    DCD    0
        0x000017a0:    00000000    ....    DCD    0
        0x000017a4:    00000000    ....    DCD    0
        0x000017a8:    00000000    ....    DCD    0
        0x000017ac:    00000000    ....    DCD    0
        0x000017b0:    00000000    ....    DCD    0
        0x000017b4:    00000000    ....    DCD    0
        0x000017b8:    00000000    ....    DCD    0
        0x000017bc:    00000000    ....    DCD    0
        0x000017c0:    00000000    ....    DCD    0
        0x000017c4:    00000000    ....    DCD    0
        0x000017c8:    00000000    ....    DCD    0
        0x000017cc:    00000000    ....    DCD    0
        0x000017d0:    00000000    ....    DCD    0
        0x000017d4:    00000000    ....    DCD    0
        0x000017d8:    00000000    ....    DCD    0
        0x000017dc:    00000000    ....    DCD    0
        0x000017e0:    00000000    ....    DCD    0
        0x000017e4:    00000000    ....    DCD    0
        0x000017e8:    00000000    ....    DCD    0
        0x000017ec:    00000000    ....    DCD    0
        0x000017f0:    00000000    ....    DCD    0
        0x000017f4:    00000000    ....    DCD    0
        0x000017f8:    00000000    ....    DCD    0
        0x000017fc:    00000000    ....    DCD    0
        0x00001800:    00000000    ....    DCD    0
        0x00001804:    00000000    ....    DCD    0
        0x00001808:    00000000    ....    DCD    0
        0x0000180c:    00000000    ....    DCD    0
        0x00001810:    00000000    ....    DCD    0
        0x00001814:    00000000    ....    DCD    0
        0x00001818:    00000000    ....    DCD    0
        0x0000181c:    00000000    ....    DCD    0
        0x00001820:    00000000    ....    DCD    0
        0x00001824:    00000000    ....    DCD    0
        0x00001828:    00000000    ....    DCD    0
        0x0000182c:    00000000    ....    DCD    0
        0x00001830:    00000000    ....    DCD    0
        0x00001834:    00000000    ....    DCD    0
        0x00001838:    00000000    ....    DCD    0
        0x0000183c:    00000000    ....    DCD    0
        0x00001840:    00000000    ....    DCD    0
        0x00001844:    00000000    ....    DCD    0
        0x00001848:    00000000    ....    DCD    0
        0x0000184c:    00000000    ....    DCD    0
        0x00001850:    00000000    ....    DCD    0
        0x00001854:    00000000    ....    DCD    0
        0x00001858:    00000000    ....    DCD    0
        0x0000185c:    00000000    ....    DCD    0
        0x00001860:    00000000    ....    DCD    0
        0x00001864:    00000000    ....    DCD    0
        0x00001868:    00000000    ....    DCD    0
        0x0000186c:    00000000    ....    DCD    0
        0x00001870:    00000000    ....    DCD    0
        0x00001874:    00000000    ....    DCD    0
        0x00001878:    00000000    ....    DCD    0
        0x0000187c:    00000000    ....    DCD    0
        0x00001880:    00000000    ....    DCD    0
        0x00001884:    00000000    ....    DCD    0
        0x00001888:    00000000    ....    DCD    0
        0x0000188c:    00000000    ....    DCD    0
        0x00001890:    00000000    ....    DCD    0
        0x00001894:    00000000    ....    DCD    0
        0x00001898:    00000000    ....    DCD    0
        0x0000189c:    00000000    ....    DCD    0
        0x000018a0:    00000000    ....    DCD    0
        0x000018a4:    00000000    ....    DCD    0
        0x000018a8:    00000000    ....    DCD    0
        0x000018ac:    00000000    ....    DCD    0
        0x000018b0:    00000000    ....    DCD    0
        0x000018b4:    00000000    ....    DCD    0
        0x000018b8:    00000000    ....    DCD    0
        0x000018bc:    00000000    ....    DCD    0
        0x000018c0:    00000000    ....    DCD    0
        0x000018c4:    00000000    ....    DCD    0
        0x000018c8:    00000000    ....    DCD    0
        0x000018cc:    00000000    ....    DCD    0
        0x000018d0:    00000000    ....    DCD    0
        0x000018d4:    00000000    ....    DCD    0
        0x000018d8:    00000000    ....    DCD    0
        0x000018dc:    00000000    ....    DCD    0
        0x000018e0:    00000000    ....    DCD    0
        0x000018e4:    00000000    ....    DCD    0
        0x000018e8:    00000000    ....    DCD    0
        0x000018ec:    00000000    ....    DCD    0
        0x000018f0:    00000000    ....    DCD    0
        0x000018f4:    00000000    ....    DCD    0
        0x000018f8:    00000000    ....    DCD    0
        0x000018fc:    00000000    ....    DCD    0
        0x00001900:    00000000    ....    DCD    0
        0x00001904:    00000000    ....    DCD    0
        0x00001908:    00000000    ....    DCD    0
        0x0000190c:    00000000    ....    DCD    0
        0x00001910:    00000000    ....    DCD    0
        0x00001914:    00000000    ....    DCD    0
        0x00001918:    00000000    ....    DCD    0
        0x0000191c:    00000000    ....    DCD    0
        0x00001920:    00000000    ....    DCD    0
        0x00001924:    00000000    ....    DCD    0
        0x00001928:    00000000    ....    DCD    0
        0x0000192c:    00000000    ....    DCD    0
        0x00001930:    00000000    ....    DCD    0
        0x00001934:    00000000    ....    DCD    0
        0x00001938:    00000000    ....    DCD    0
        0x0000193c:    00000000    ....    DCD    0
        0x00001940:    00000000    ....    DCD    0
        0x00001944:    00000000    ....    DCD    0
        0x00001948:    00000000    ....    DCD    0
        0x0000194c:    00000000    ....    DCD    0
        0x00001950:    00000000    ....    DCD    0
        0x00001954:    00000000    ....    DCD    0
        0x00001958:    00000000    ....    DCD    0
        0x0000195c:    00000000    ....    DCD    0
        0x00001960:    00000000    ....    DCD    0
        0x00001964:    00000000    ....    DCD    0
        0x00001968:    00000000    ....    DCD    0
        0x0000196c:    00000000    ....    DCD    0
        0x00001970:    00000000    ....    DCD    0
        0x00001974:    00000000    ....    DCD    0
        0x00001978:    00000000    ....    DCD    0
        0x0000197c:    00000000    ....    DCD    0
        0x00001980:    00000000    ....    DCD    0
        0x00001984:    00000000    ....    DCD    0
        0x00001988:    00000000    ....    DCD    0
        0x0000198c:    00000000    ....    DCD    0
        0x00001990:    00000000    ....    DCD    0
        0x00001994:    00000000    ....    DCD    0
        0x00001998:    00000000    ....    DCD    0
        0x0000199c:    00000000    ....    DCD    0
        0x000019a0:    00000000    ....    DCD    0
        0x000019a4:    00000000    ....    DCD    0
        0x000019a8:    00000000    ....    DCD    0
        0x000019ac:    00000000    ....    DCD    0
        0x000019b0:    00000000    ....    DCD    0
        0x000019b4:    00000000    ....    DCD    0
        0x000019b8:    00000000    ....    DCD    0
        0x000019bc:    00000000    ....    DCD    0
        0x000019c0:    00000000    ....    DCD    0
        0x000019c4:    00000000    ....    DCD    0
        0x000019c8:    00000000    ....    DCD    0
        0x000019cc:    00000000    ....    DCD    0
        0x000019d0:    00000000    ....    DCD    0
        0x000019d4:    00000000    ....    DCD    0
        0x000019d8:    00000000    ....    DCD    0
        0x000019dc:    00000000    ....    DCD    0
        0x000019e0:    00000000    ....    DCD    0
        0x000019e4:    00000000    ....    DCD    0
        0x000019e8:    00000000    ....    DCD    0
        0x000019ec:    00000000    ....    DCD    0
        0x000019f0:    00000000    ....    DCD    0
        0x000019f4:    00000000    ....    DCD    0
        0x000019f8:    00000000    ....    DCD    0
        0x000019fc:    00000000    ....    DCD    0
        0x00001a00:    00000000    ....    DCD    0
        0x00001a04:    00000000    ....    DCD    0
        0x00001a08:    00000000    ....    DCD    0
        0x00001a0c:    00000000    ....    DCD    0
        0x00001a10:    00000000    ....    DCD    0
        0x00001a14:    00000000    ....    DCD    0
        0x00001a18:    00000000    ....    DCD    0
        0x00001a1c:    00000000    ....    DCD    0
        0x00001a20:    00000000    ....    DCD    0
        0x00001a24:    00000000    ....    DCD    0
        0x00001a28:    00000000    ....    DCD    0
        0x00001a2c:    00000000    ....    DCD    0
        0x00001a30:    00000000    ....    DCD    0
        0x00001a34:    00000000    ....    DCD    0
        0x00001a38:    00000000    ....    DCD    0
        0x00001a3c:    00000000    ....    DCD    0
        0x00001a40:    00000000    ....    DCD    0
        0x00001a44:    00000000    ....    DCD    0
        0x00001a48:    00000000    ....    DCD    0
        0x00001a4c:    00000000    ....    DCD    0
        0x00001a50:    00000000    ....    DCD    0
        0x00001a54:    00000000    ....    DCD    0
        0x00001a58:    00000000    ....    DCD    0
        0x00001a5c:    00000000    ....    DCD    0
        0x00001a60:    00000000    ....    DCD    0
        0x00001a64:    00000000    ....    DCD    0
        0x00001a68:    00000000    ....    DCD    0
        0x00001a6c:    00000000    ....    DCD    0
        0x00001a70:    00000000    ....    DCD    0
        0x00001a74:    00000000    ....    DCD    0
        0x00001a78:    00000000    ....    DCD    0
        0x00001a7c:    00000000    ....    DCD    0
        0x00001a80:    00000000    ....    DCD    0
        0x00001a84:    00000000    ....    DCD    0
        0x00001a88:    00000000    ....    DCD    0
        0x00001a8c:    00000000    ....    DCD    0
        0x00001a90:    00000000    ....    DCD    0
        0x00001a94:    00000000    ....    DCD    0
        0x00001a98:    00000000    ....    DCD    0
        0x00001a9c:    00000000    ....    DCD    0
        0x00001aa0:    00000000    ....    DCD    0
        0x00001aa4:    00000000    ....    DCD    0
        0x00001aa8:    00000000    ....    DCD    0
        0x00001aac:    00000000    ....    DCD    0
        0x00001ab0:    00000000    ....    DCD    0
        0x00001ab4:    00000000    ....    DCD    0
        0x00001ab8:    00000000    ....    DCD    0
        0x00001abc:    00000000    ....    DCD    0
        0x00001ac0:    00000000    ....    DCD    0
        0x00001ac4:    00000000    ....    DCD    0
        0x00001ac8:    00000000    ....    DCD    0
        0x00001acc:    00000000    ....    DCD    0
        0x00001ad0:    00000000    ....    DCD    0
        0x00001ad4:    00000000    ....    DCD    0
        0x00001ad8:    00000000    ....    DCD    0
        0x00001adc:    00000000    ....    DCD    0
        0x00001ae0:    00000000    ....    DCD    0
        0x00001ae4:    00000000    ....    DCD    0
        0x00001ae8:    00000000    ....    DCD    0
        0x00001aec:    00000000    ....    DCD    0
        0x00001af0:    00000000    ....    DCD    0
        0x00001af4:    00000000    ....    DCD    0
        0x00001af8:    00000000    ....    DCD    0
        0x00001afc:    00000000    ....    DCD    0
        0x00001b00:    00000000    ....    DCD    0
        0x00001b04:    00000000    ....    DCD    0
        0x00001b08:    00000000    ....    DCD    0
        0x00001b0c:    00000000    ....    DCD    0
        0x00001b10:    00000000    ....    DCD    0
        0x00001b14:    00000000    ....    DCD    0
        0x00001b18:    00000000    ....    DCD    0
        0x00001b1c:    00000000    ....    DCD    0
        0x00001b20:    00000000    ....    DCD    0
        0x00001b24:    00000000    ....    DCD    0
        0x00001b28:    00000000    ....    DCD    0
        0x00001b2c:    00000000    ....    DCD    0
        0x00001b30:    00000000    ....    DCD    0
        0x00001b34:    00000000    ....    DCD    0
        0x00001b38:    00000000    ....    DCD    0
        0x00001b3c:    00000000    ....    DCD    0
        0x00001b40:    00000000    ....    DCD    0
        0x00001b44:    00000000    ....    DCD    0
        0x00001b48:    00000000    ....    DCD    0
        0x00001b4c:    00000000    ....    DCD    0
        0x00001b50:    00000000    ....    DCD    0
        0x00001b54:    00000000    ....    DCD    0
        0x00001b58:    00000000    ....    DCD    0
        0x00001b5c:    00000000    ....    DCD    0
        0x00001b60:    00000000    ....    DCD    0
        0x00001b64:    00000000    ....    DCD    0
        0x00001b68:    00000000    ....    DCD    0
        0x00001b6c:    00000000    ....    DCD    0
        0x00001b70:    00000000    ....    DCD    0
        0x00001b74:    00000000    ....    DCD    0
        0x00001b78:    00000000    ....    DCD    0
        0x00001b7c:    00000000    ....    DCD    0
        0x00001b80:    00000000    ....    DCD    0
        0x00001b84:    00000000    ....    DCD    0
        0x00001b88:    00000000    ....    DCD    0
        0x00001b8c:    00000000    ....    DCD    0
        0x00001b90:    00000000    ....    DCD    0
        0x00001b94:    00000000    ....    DCD    0
        0x00001b98:    00000000    ....    DCD    0
        0x00001b9c:    00000000    ....    DCD    0
        0x00001ba0:    00000000    ....    DCD    0
        0x00001ba4:    00000000    ....    DCD    0
        0x00001ba8:    00000000    ....    DCD    0
        0x00001bac:    00000000    ....    DCD    0
        0x00001bb0:    00000000    ....    DCD    0
        0x00001bb4:    00000000    ....    DCD    0
        0x00001bb8:    00000000    ....    DCD    0
        0x00001bbc:    00000000    ....    DCD    0
        0x00001bc0:    00000000    ....    DCD    0
        0x00001bc4:    00000000    ....    DCD    0
        0x00001bc8:    00000000    ....    DCD    0
        0x00001bcc:    00000000    ....    DCD    0
        0x00001bd0:    00000000    ....    DCD    0
        0x00001bd4:    00000000    ....    DCD    0
        0x00001bd8:    00000000    ....    DCD    0
        0x00001bdc:    00000000    ....    DCD    0
        0x00001be0:    00000000    ....    DCD    0
        0x00001be4:    00000000    ....    DCD    0
        0x00001be8:    00000000    ....    DCD    0
        0x00001bec:    00000000    ....    DCD    0
        0x00001bf0:    00000000    ....    DCD    0
        0x00001bf4:    00000000    ....    DCD    0
        0x00001bf8:    00000000    ....    DCD    0
        0x00001bfc:    00000000    ....    DCD    0
        0x00001c00:    00000000    ....    DCD    0
        0x00001c04:    00000000    ....    DCD    0
        0x00001c08:    00000000    ....    DCD    0
        0x00001c0c:    00000000    ....    DCD    0
        0x00001c10:    00000000    ....    DCD    0
        0x00001c14:    00000000    ....    DCD    0
        0x00001c18:    00000000    ....    DCD    0
        0x00001c1c:    00000000    ....    DCD    0
        0x00001c20:    00000000    ....    DCD    0
        0x00001c24:    00000000    ....    DCD    0
        0x00001c28:    00000000    ....    DCD    0
        0x00001c2c:    00000000    ....    DCD    0
        0x00001c30:    00000000    ....    DCD    0
        0x00001c34:    00000000    ....    DCD    0
        0x00001c38:    00000000    ....    DCD    0
        0x00001c3c:    00000000    ....    DCD    0
        0x00001c40:    00000000    ....    DCD    0
        0x00001c44:    00000000    ....    DCD    0
        0x00001c48:    00000000    ....    DCD    0
        0x00001c4c:    00000000    ....    DCD    0
        0x00001c50:    00000000    ....    DCD    0
        0x00001c54:    00000000    ....    DCD    0
        0x00001c58:    00000000    ....    DCD    0
        0x00001c5c:    00000000    ....    DCD    0
        0x00001c60:    00000000    ....    DCD    0
        0x00001c64:    00000000    ....    DCD    0
        0x00001c68:    00000000    ....    DCD    0
        0x00001c6c:    00000000    ....    DCD    0
        0x00001c70:    00000000    ....    DCD    0
        0x00001c74:    00000000    ....    DCD    0
        0x00001c78:    00000000    ....    DCD    0
        0x00001c7c:    00000000    ....    DCD    0
        0x00001c80:    00000000    ....    DCD    0
        0x00001c84:    00000000    ....    DCD    0
        0x00001c88:    00000000    ....    DCD    0
        0x00001c8c:    00000000    ....    DCD    0
        0x00001c90:    00000000    ....    DCD    0
        0x00001c94:    00000000    ....    DCD    0
        0x00001c98:    00000000    ....    DCD    0
        0x00001c9c:    00000000    ....    DCD    0
        0x00001ca0:    00000000    ....    DCD    0
        0x00001ca4:    00000000    ....    DCD    0
        0x00001ca8:    00000000    ....    DCD    0
        0x00001cac:    00000000    ....    DCD    0
        0x00001cb0:    00000000    ....    DCD    0
        0x00001cb4:    00000000    ....    DCD    0
        0x00001cb8:    00000000    ....    DCD    0
        0x00001cbc:    00000000    ....    DCD    0
        0x00001cc0:    00000000    ....    DCD    0
        0x00001cc4:    00000000    ....    DCD    0
        0x00001cc8:    00000000    ....    DCD    0
        0x00001ccc:    00000000    ....    DCD    0
        0x00001cd0:    00000000    ....    DCD    0
        0x00001cd4:    00000000    ....    DCD    0
        0x00001cd8:    00000000    ....    DCD    0
        0x00001cdc:    00000000    ....    DCD    0
        0x00001ce0:    00000000    ....    DCD    0
        0x00001ce4:    00000000    ....    DCD    0
        0x00001ce8:    00000000    ....    DCD    0
        0x00001cec:    00000000    ....    DCD    0
        0x00001cf0:    00000000    ....    DCD    0
        0x00001cf4:    00000000    ....    DCD    0
        0x00001cf8:    00000000    ....    DCD    0
        0x00001cfc:    00000000    ....    DCD    0
        0x00001d00:    00000000    ....    DCD    0
        0x00001d04:    00000000    ....    DCD    0
        0x00001d08:    00000000    ....    DCD    0
        0x00001d0c:    00000000    ....    DCD    0
        0x00001d10:    00000000    ....    DCD    0
        0x00001d14:    00000000    ....    DCD    0
        0x00001d18:    00000000    ....    DCD    0
        0x00001d1c:    00000000    ....    DCD    0
        0x00001d20:    00000000    ....    DCD    0
        0x00001d24:    00000000    ....    DCD    0
        0x00001d28:    00000000    ....    DCD    0
        0x00001d2c:    00000000    ....    DCD    0
        0x00001d30:    00000000    ....    DCD    0
        0x00001d34:    00000000    ....    DCD    0
        0x00001d38:    00000000    ....    DCD    0
        0x00001d3c:    00000000    ....    DCD    0
        0x00001d40:    00000000    ....    DCD    0
        0x00001d44:    00000000    ....    DCD    0
        0x00001d48:    00000000    ....    DCD    0
        0x00001d4c:    00000000    ....    DCD    0
        0x00001d50:    00000000    ....    DCD    0
        0x00001d54:    00000000    ....    DCD    0
        0x00001d58:    00000000    ....    DCD    0
        0x00001d5c:    00000000    ....    DCD    0
        0x00001d60:    00000000    ....    DCD    0
        0x00001d64:    00000000    ....    DCD    0
        0x00001d68:    00000000    ....    DCD    0
        0x00001d6c:    00000000    ....    DCD    0
        0x00001d70:    00000000    ....    DCD    0
        0x00001d74:    00000000    ....    DCD    0
        0x00001d78:    00000000    ....    DCD    0
        0x00001d7c:    00000000    ....    DCD    0
        0x00001d80:    00000000    ....    DCD    0
        0x00001d84:    00000000    ....    DCD    0
        0x00001d88:    00000000    ....    DCD    0
        0x00001d8c:    00000000    ....    DCD    0
        0x00001d90:    00000000    ....    DCD    0
        0x00001d94:    00000000    ....    DCD    0
        0x00001d98:    00000000    ....    DCD    0
        0x00001d9c:    00000000    ....    DCD    0
        0x00001da0:    00000000    ....    DCD    0
        0x00001da4:    00000000    ....    DCD    0
        0x00001da8:    00000000    ....    DCD    0
        0x00001dac:    00000000    ....    DCD    0
        0x00001db0:    00000000    ....    DCD    0
        0x00001db4:    00000000    ....    DCD    0
        0x00001db8:    00000000    ....    DCD    0
        0x00001dbc:    00000000    ....    DCD    0
        0x00001dc0:    00000000    ....    DCD    0
        0x00001dc4:    00000000    ....    DCD    0
        0x00001dc8:    00000000    ....    DCD    0
        0x00001dcc:    00000000    ....    DCD    0
        0x00001dd0:    00000000    ....    DCD    0
        0x00001dd4:    00000000    ....    DCD    0
        0x00001dd8:    00000000    ....    DCD    0
        0x00001ddc:    00000000    ....    DCD    0
        0x00001de0:    00000000    ....    DCD    0
        0x00001de4:    00000000    ....    DCD    0
        0x00001de8:    00000000    ....    DCD    0
        0x00001dec:    00000000    ....    DCD    0
        0x00001df0:    00000000    ....    DCD    0
        0x00001df4:    00000000    ....    DCD    0
        0x00001df8:    00000000    ....    DCD    0
        0x00001dfc:    00000000    ....    DCD    0
        0x00001e00:    00000000    ....    DCD    0
        0x00001e04:    00000000    ....    DCD    0
        0x00001e08:    00000000    ....    DCD    0
        0x00001e0c:    00000000    ....    DCD    0
        0x00001e10:    00000000    ....    DCD    0
        0x00001e14:    00000000    ....    DCD    0
        0x00001e18:    00000000    ....    DCD    0
        0x00001e1c:    00000000    ....    DCD    0
        0x00001e20:    00000000    ....    DCD    0
        0x00001e24:    00000000    ....    DCD    0
        0x00001e28:    00000000    ....    DCD    0
        0x00001e2c:    00000000    ....    DCD    0
        0x00001e30:    00000000    ....    DCD    0
        0x00001e34:    00000000    ....    DCD    0
        0x00001e38:    00000000    ....    DCD    0
        0x00001e3c:    00000000    ....    DCD    0
        0x00001e40:    00000000    ....    DCD    0
        0x00001e44:    00000000    ....    DCD    0
        0x00001e48:    00000000    ....    DCD    0
        0x00001e4c:    00000000    ....    DCD    0
        0x00001e50:    00000000    ....    DCD    0
        0x00001e54:    00000000    ....    DCD    0
        0x00001e58:    00000000    ....    DCD    0
        0x00001e5c:    00000000    ....    DCD    0
        0x00001e60:    00000000    ....    DCD    0
        0x00001e64:    00000000    ....    DCD    0
        0x00001e68:    00000000    ....    DCD    0
        0x00001e6c:    00000000    ....    DCD    0
        0x00001e70:    00000000    ....    DCD    0
        0x00001e74:    00000000    ....    DCD    0
        0x00001e78:    00000000    ....    DCD    0
        0x00001e7c:    00000000    ....    DCD    0
        0x00001e80:    00000000    ....    DCD    0
        0x00001e84:    00000000    ....    DCD    0
        0x00001e88:    00000000    ....    DCD    0
        0x00001e8c:    00000000    ....    DCD    0
        0x00001e90:    00000000    ....    DCD    0
        0x00001e94:    00000000    ....    DCD    0
        0x00001e98:    00000000    ....    DCD    0
        0x00001e9c:    00000000    ....    DCD    0
        0x00001ea0:    00000000    ....    DCD    0
        0x00001ea4:    00000000    ....    DCD    0
        0x00001ea8:    00000000    ....    DCD    0
        0x00001eac:    00000000    ....    DCD    0
        0x00001eb0:    00000000    ....    DCD    0
        0x00001eb4:    00000000    ....    DCD    0
        0x00001eb8:    00000000    ....    DCD    0
        0x00001ebc:    00000000    ....    DCD    0
        0x00001ec0:    00000000    ....    DCD    0
        0x00001ec4:    00000000    ....    DCD    0
        0x00001ec8:    00000000    ....    DCD    0
        0x00001ecc:    00000000    ....    DCD    0
        0x00001ed0:    00000000    ....    DCD    0
        0x00001ed4:    00000000    ....    DCD    0
        0x00001ed8:    00000000    ....    DCD    0
        0x00001edc:    00000000    ....    DCD    0
        0x00001ee0:    00000000    ....    DCD    0
        0x00001ee4:    00000000    ....    DCD    0
        0x00001ee8:    00000000    ....    DCD    0
        0x00001eec:    00000000    ....    DCD    0
        0x00001ef0:    00000000    ....    DCD    0
        0x00001ef4:    00000000    ....    DCD    0
        0x00001ef8:    00000000    ....    DCD    0
        0x00001efc:    00000000    ....    DCD    0
        0x00001f00:    00000000    ....    DCD    0
        0x00001f04:    00000000    ....    DCD    0
        0x00001f08:    00000000    ....    DCD    0
        0x00001f0c:    00000000    ....    DCD    0
        0x00001f10:    00000000    ....    DCD    0
        0x00001f14:    00000000    ....    DCD    0
        0x00001f18:    00000000    ....    DCD    0
        0x00001f1c:    00000000    ....    DCD    0
        0x00001f20:    00000000    ....    DCD    0
        0x00001f24:    00000000    ....    DCD    0
        0x00001f28:    00000000    ....    DCD    0
        0x00001f2c:    00000000    ....    DCD    0
        0x00001f30:    00000000    ....    DCD    0
        0x00001f34:    00000000    ....    DCD    0
        0x00001f38:    00000000    ....    DCD    0
        0x00001f3c:    00000000    ....    DCD    0
        0x00001f40:    00000000    ....    DCD    0
        0x00001f44:    00000000    ....    DCD    0
        0x00001f48:    00000000    ....    DCD    0
        0x00001f4c:    00000000    ....    DCD    0
        0x00001f50:    00000000    ....    DCD    0
        0x00001f54:    00000000    ....    DCD    0
        0x00001f58:    00000000    ....    DCD    0
        0x00001f5c:    00000000    ....    DCD    0
        0x00001f60:    00000000    ....    DCD    0
        0x00001f64:    00000000    ....    DCD    0
        0x00001f68:    00000000    ....    DCD    0
        0x00001f6c:    00000000    ....    DCD    0
        0x00001f70:    00000000    ....    DCD    0
        0x00001f74:    00000000    ....    DCD    0
        0x00001f78:    00000000    ....    DCD    0
        0x00001f7c:    00000000    ....    DCD    0
        0x00001f80:    00000000    ....    DCD    0
        0x00001f84:    00000000    ....    DCD    0
        0x00001f88:    00000000    ....    DCD    0
        0x00001f8c:    00000000    ....    DCD    0
        0x00001f90:    00000000    ....    DCD    0
        0x00001f94:    00000000    ....    DCD    0
        0x00001f98:    00000000    ....    DCD    0
        0x00001f9c:    00000000    ....    DCD    0
        0x00001fa0:    00000000    ....    DCD    0
        0x00001fa4:    00000000    ....    DCD    0
        0x00001fa8:    00000000    ....    DCD    0
        0x00001fac:    00000000    ....    DCD    0
        0x00001fb0:    00000000    ....    DCD    0
        0x00001fb4:    00000000    ....    DCD    0
        0x00001fb8:    00000000    ....    DCD    0
        0x00001fbc:    00000000    ....    DCD    0
        0x00001fc0:    00000000    ....    DCD    0
        0x00001fc4:    00000000    ....    DCD    0
        0x00001fc8:    00000000    ....    DCD    0
        0x00001fcc:    00000000    ....    DCD    0
        0x00001fd0:    00000000    ....    DCD    0
        0x00001fd4:    00000000    ....    DCD    0
        0x00001fd8:    00000000    ....    DCD    0
        0x00001fdc:    00000000    ....    DCD    0
        0x00001fe0:    00000000    ....    DCD    0
        0x00001fe4:    00000000    ....    DCD    0
        0x00001fe8:    00000000    ....    DCD    0
        0x00001fec:    00000000    ....    DCD    0
        0x00001ff0:    00000000    ....    DCD    0
        0x00001ff4:    00000000    ....    DCD    0
        0x00001ff8:    00000000    ....    DCD    0
        0x00001ffc:    00000000    ....    DCD    0
        0x00002000:    00000000    ....    DCD    0
        0x00002004:    00000000    ....    DCD    0
        0x00002008:    00000000    ....    DCD    0
        0x0000200c:    00000000    ....    DCD    0
        0x00002010:    00000000    ....    DCD    0
        0x00002014:    00000000    ....    DCD    0
        0x00002018:    00000000    ....    DCD    0
        0x0000201c:    00000000    ....    DCD    0
        0x00002020:    00000000    ....    DCD    0
        0x00002024:    00000000    ....    DCD    0
        0x00002028:    00000000    ....    DCD    0
        0x0000202c:    00000000    ....    DCD    0
        0x00002030:    00000000    ....    DCD    0
        0x00002034:    00000000    ....    DCD    0
        0x00002038:    00000000    ....    DCD    0
        0x0000203c:    00000000    ....    DCD    0
        0x00002040:    00000000    ....    DCD    0
        0x00002044:    00000000    ....    DCD    0
        0x00002048:    00000000    ....    DCD    0
        0x0000204c:    00000000    ....    DCD    0
        0x00002050:    00000000    ....    DCD    0
        0x00002054:    00000000    ....    DCD    0
        0x00002058:    00000000    ....    DCD    0
        0x0000205c:    00000000    ....    DCD    0
        0x00002060:    00000000    ....    DCD    0
        0x00002064:    00000000    ....    DCD    0
        0x00002068:    00000000    ....    DCD    0
        0x0000206c:    00000000    ....    DCD    0
        0x00002070:    00000000    ....    DCD    0
        0x00002074:    00000000    ....    DCD    0
        0x00002078:    00000000    ....    DCD    0
        0x0000207c:    00000000    ....    DCD    0
        0x00002080:    00000000    ....    DCD    0
        0x00002084:    00000000    ....    DCD    0
        0x00002088:    00000000    ....    DCD    0
        0x0000208c:    00000000    ....    DCD    0
        0x00002090:    00000000    ....    DCD    0
        0x00002094:    00000000    ....    DCD    0
        0x00002098:    00000000    ....    DCD    0
        0x0000209c:    00000000    ....    DCD    0
        0x000020a0:    00000000    ....    DCD    0
        0x000020a4:    00000000    ....    DCD    0
        0x000020a8:    00000000    ....    DCD    0
        0x000020ac:    00000000    ....    DCD    0
        0x000020b0:    00000000    ....    DCD    0
        0x000020b4:    00000000    ....    DCD    0
        0x000020b8:    00000000    ....    DCD    0
        0x000020bc:    00000000    ....    DCD    0
        0x000020c0:    00000000    ....    DCD    0
        0x000020c4:    00000000    ....    DCD    0
        0x000020c8:    00000000    ....    DCD    0
        0x000020cc:    00000000    ....    DCD    0
        0x000020d0:    00000000    ....    DCD    0
        0x000020d4:    00000000    ....    DCD    0
        0x000020d8:    00000000    ....    DCD    0
        0x000020dc:    00000000    ....    DCD    0
        0x000020e0:    00000000    ....    DCD    0
        0x000020e4:    00000000    ....    DCD    0
        0x000020e8:    00000000    ....    DCD    0
        0x000020ec:    00000000    ....    DCD    0
        0x000020f0:    00000000    ....    DCD    0
        0x000020f4:    00000000    ....    DCD    0
        0x000020f8:    00000000    ....    DCD    0
        0x000020fc:    00000000    ....    DCD    0
        0x00002100:    00000000    ....    DCD    0
        0x00002104:    00000000    ....    DCD    0
        0x00002108:    00000000    ....    DCD    0
        0x0000210c:    00000000    ....    DCD    0
        0x00002110:    00000000    ....    DCD    0
        0x00002114:    00000000    ....    DCD    0
        0x00002118:    00000000    ....    DCD    0
        0x0000211c:    00000000    ....    DCD    0
        0x00002120:    00000000    ....    DCD    0
        0x00002124:    00000000    ....    DCD    0
        0x00002128:    00000000    ....    DCD    0
        0x0000212c:    00000000    ....    DCD    0
        0x00002130:    00000000    ....    DCD    0
        0x00002134:    00000000    ....    DCD    0
        0x00002138:    00000000    ....    DCD    0
        0x0000213c:    00000000    ....    DCD    0
        0x00002140:    00000000    ....    DCD    0
        0x00002144:    00000000    ....    DCD    0
        0x00002148:    00000000    ....    DCD    0
        0x0000214c:    00000000    ....    DCD    0
        0x00002150:    00000000    ....    DCD    0
        0x00002154:    00000000    ....    DCD    0
        0x00002158:    00000000    ....    DCD    0
        0x0000215c:    00000000    ....    DCD    0
        0x00002160:    00000000    ....    DCD    0
        0x00002164:    00000000    ....    DCD    0
        0x00002168:    00000000    ....    DCD    0
        0x0000216c:    00000000    ....    DCD    0
        0x00002170:    00000000    ....    DCD    0
        0x00002174:    00000000    ....    DCD    0
        0x00002178:    00000000    ....    DCD    0
        0x0000217c:    00000000    ....    DCD    0
        0x00002180:    00000000    ....    DCD    0
        0x00002184:    00000000    ....    DCD    0
        0x00002188:    00000000    ....    DCD    0
        0x0000218c:    00000000    ....    DCD    0
        0x00002190:    00000000    ....    DCD    0
        0x00002194:    00000000    ....    DCD    0
        0x00002198:    00000000    ....    DCD    0
        0x0000219c:    00000000    ....    DCD    0
        0x000021a0:    00000000    ....    DCD    0
        0x000021a4:    00000000    ....    DCD    0
        0x000021a8:    00000000    ....    DCD    0
        0x000021ac:    00000000    ....    DCD    0
        0x000021b0:    00000000    ....    DCD    0
        0x000021b4:    00000000    ....    DCD    0
        0x000021b8:    00000000    ....    DCD    0
        0x000021bc:    00000000    ....    DCD    0
        0x000021c0:    00000000    ....    DCD    0
        0x000021c4:    00000000    ....    DCD    0
        0x000021c8:    00000000    ....    DCD    0
        0x000021cc:    00000000    ....    DCD    0
        0x000021d0:    00000000    ....    DCD    0
        0x000021d4:    00000000    ....    DCD    0
        0x000021d8:    00000000    ....    DCD    0
        0x000021dc:    00000000    ....    DCD    0
        0x000021e0:    00000000    ....    DCD    0
        0x000021e4:    00000000    ....    DCD    0
        0x000021e8:    00000000    ....    DCD    0
        0x000021ec:    00000000    ....    DCD    0
        0x000021f0:    00000000    ....    DCD    0
        0x000021f4:    00000000    ....    DCD    0
        0x000021f8:    00000000    ....    DCD    0
        0x000021fc:    00000000    ....    DCD    0
        0x00002200:    00000000    ....    DCD    0
        0x00002204:    00000000    ....    DCD    0
        0x00002208:    00000000    ....    DCD    0
        0x0000220c:    00000000    ....    DCD    0
        0x00002210:    00000000    ....    DCD    0
        0x00002214:    00000000    ....    DCD    0
        0x00002218:    00000000    ....    DCD    0
        0x0000221c:    00000000    ....    DCD    0
        0x00002220:    00000000    ....    DCD    0
        0x00002224:    00000000    ....    DCD    0
        0x00002228:    00000000    ....    DCD    0
        0x0000222c:    00000000    ....    DCD    0
        0x00002230:    00000000    ....    DCD    0
        0x00002234:    00000000    ....    DCD    0
        0x00002238:    00000000    ....    DCD    0
        0x0000223c:    00000000    ....    DCD    0
        0x00002240:    00000000    ....    DCD    0
        0x00002244:    00000000    ....    DCD    0
        0x00002248:    00000000    ....    DCD    0
        0x0000224c:    00000000    ....    DCD    0
        0x00002250:    00000000    ....    DCD    0
        0x00002254:    00000000    ....    DCD    0
        0x00002258:    00000000    ....    DCD    0
        0x0000225c:    00000000    ....    DCD    0
        0x00002260:    00000000    ....    DCD    0
        0x00002264:    00000000    ....    DCD    0
        0x00002268:    00000000    ....    DCD    0
        0x0000226c:    00000000    ....    DCD    0
        0x00002270:    00000000    ....    DCD    0
        0x00002274:    00000000    ....    DCD    0
        0x00002278:    00000000    ....    DCD    0
        0x0000227c:    00000000    ....    DCD    0
        0x00002280:    00000000    ....    DCD    0
        0x00002284:    00000000    ....    DCD    0
        0x00002288:    00000000    ....    DCD    0
        0x0000228c:    00000000    ....    DCD    0
        0x00002290:    00000000    ....    DCD    0
        0x00002294:    00000000    ....    DCD    0
        0x00002298:    00000000    ....    DCD    0
        0x0000229c:    00000000    ....    DCD    0
        0x000022a0:    00000000    ....    DCD    0
        0x000022a4:    00000000    ....    DCD    0
        0x000022a8:    00000000    ....    DCD    0
        0x000022ac:    00000000    ....    DCD    0
        0x000022b0:    00000000    ....    DCD    0
        0x000022b4:    00000000    ....    DCD    0
        0x000022b8:    00000000    ....    DCD    0
        0x000022bc:    00000000    ....    DCD    0
        0x000022c0:    00000000    ....    DCD    0
        0x000022c4:    00000000    ....    DCD    0
        0x000022c8:    00000000    ....    DCD    0
        0x000022cc:    00000000    ....    DCD    0
        0x000022d0:    00000000    ....    DCD    0
        0x000022d4:    00000000    ....    DCD    0
        0x000022d8:    00000000    ....    DCD    0
        0x000022dc:    00000000    ....    DCD    0
        0x000022e0:    00000000    ....    DCD    0
        0x000022e4:    00000000    ....    DCD    0
        0x000022e8:    00000000    ....    DCD    0
        0x000022ec:    00000000    ....    DCD    0
        0x000022f0:    00000000    ....    DCD    0
        0x000022f4:    00000000    ....    DCD    0
        0x000022f8:    00000000    ....    DCD    0
        0x000022fc:    00000000    ....    DCD    0
        0x00002300:    00000000    ....    DCD    0
        0x00002304:    00000000    ....    DCD    0
        0x00002308:    00000000    ....    DCD    0
        0x0000230c:    00000000    ....    DCD    0
        0x00002310:    00000000    ....    DCD    0
        0x00002314:    00000000    ....    DCD    0
        0x00002318:    00000000    ....    DCD    0
        0x0000231c:    00000000    ....    DCD    0
        0x00002320:    00000000    ....    DCD    0
        0x00002324:    00000000    ....    DCD    0
        0x00002328:    00000000    ....    DCD    0
        0x0000232c:    00000000    ....    DCD    0
        0x00002330:    00000000    ....    DCD    0
        0x00002334:    00000000    ....    DCD    0
        0x00002338:    00000000    ....    DCD    0
        0x0000233c:    00000000    ....    DCD    0
        0x00002340:    00000000    ....    DCD    0
        0x00002344:    00000000    ....    DCD    0
        0x00002348:    00000000    ....    DCD    0
        0x0000234c:    00000000    ....    DCD    0
        0x00002350:    00000000    ....    DCD    0
        0x00002354:    00000000    ....    DCD    0
        0x00002358:    00000000    ....    DCD    0
        0x0000235c:    00000000    ....    DCD    0
        0x00002360:    00000000    ....    DCD    0
        0x00002364:    00000000    ....    DCD    0
        0x00002368:    00000000    ....    DCD    0
        0x0000236c:    00000000    ....    DCD    0
        0x00002370:    00000000    ....    DCD    0
        0x00002374:    00000000    ....    DCD    0
        0x00002378:    00000000    ....    DCD    0
        0x0000237c:    00000000    ....    DCD    0
        0x00002380:    00000000    ....    DCD    0
        0x00002384:    00000000    ....    DCD    0
        0x00002388:    00000000    ....    DCD    0
        0x0000238c:    00000000    ....    DCD    0
        0x00002390:    00000000    ....    DCD    0
        0x00002394:    00000000    ....    DCD    0
        0x00002398:    00000000    ....    DCD    0
        0x0000239c:    00000000    ....    DCD    0
        0x000023a0:    00000000    ....    DCD    0
        0x000023a4:    00000000    ....    DCD    0
        0x000023a8:    00000000    ....    DCD    0
        0x000023ac:    00000000    ....    DCD    0
        0x000023b0:    00000000    ....    DCD    0
        0x000023b4:    00000000    ....    DCD    0
        0x000023b8:    00000000    ....    DCD    0
        0x000023bc:    00000000    ....    DCD    0
        0x000023c0:    00000000    ....    DCD    0
        0x000023c4:    00000000    ....    DCD    0
        0x000023c8:    00000000    ....    DCD    0
        0x000023cc:    00000000    ....    DCD    0
        0x000023d0:    00000000    ....    DCD    0
        0x000023d4:    00000000    ....    DCD    0
        0x000023d8:    00000000    ....    DCD    0
        0x000023dc:    00000000    ....    DCD    0
        0x000023e0:    00000000    ....    DCD    0
        0x000023e4:    00000000    ....    DCD    0
        0x000023e8:    00000000    ....    DCD    0
        0x000023ec:    00000000    ....    DCD    0
        0x000023f0:    00000000    ....    DCD    0
        0x000023f4:    00000000    ....    DCD    0
        0x000023f8:    00000000    ....    DCD    0
        0x000023fc:    00000000    ....    DCD    0
        0x00002400:    00000000    ....    DCD    0
        0x00002404:    00000000    ....    DCD    0
        0x00002408:    00000000    ....    DCD    0
        0x0000240c:    00000000    ....    DCD    0
        0x00002410:    00000000    ....    DCD    0
        0x00002414:    00000000    ....    DCD    0
        0x00002418:    00000000    ....    DCD    0
        0x0000241c:    00000000    ....    DCD    0
        0x00002420:    00000000    ....    DCD    0
        0x00002424:    00000000    ....    DCD    0
        0x00002428:    00000000    ....    DCD    0
        0x0000242c:    00000000    ....    DCD    0
        0x00002430:    00000000    ....    DCD    0
        0x00002434:    00000000    ....    DCD    0
        0x00002438:    00000000    ....    DCD    0
        0x0000243c:    00000000    ....    DCD    0
        0x00002440:    00000000    ....    DCD    0
        0x00002444:    00000000    ....    DCD    0
        0x00002448:    00000000    ....    DCD    0
        0x0000244c:    00000000    ....    DCD    0
        0x00002450:    00000000    ....    DCD    0
        0x00002454:    00000000    ....    DCD    0
        0x00002458:    00000000    ....    DCD    0
        0x0000245c:    00000000    ....    DCD    0
        0x00002460:    00000000    ....    DCD    0
        0x00002464:    00000000    ....    DCD    0
        0x00002468:    00000000    ....    DCD    0
        0x0000246c:    00000000    ....    DCD    0
        0x00002470:    00000000    ....    DCD    0
        0x00002474:    00000000    ....    DCD    0
        0x00002478:    00000000    ....    DCD    0
        0x0000247c:    00000000    ....    DCD    0
        0x00002480:    00000000    ....    DCD    0
        0x00002484:    00000000    ....    DCD    0
        0x00002488:    00000000    ....    DCD    0
        0x0000248c:    00000000    ....    DCD    0
        0x00002490:    00000000    ....    DCD    0
        0x00002494:    00000000    ....    DCD    0
        0x00002498:    00000000    ....    DCD    0
        0x0000249c:    00000000    ....    DCD    0
        0x000024a0:    00000000    ....    DCD    0
        0x000024a4:    00000000    ....    DCD    0
        0x000024a8:    00000000    ....    DCD    0
        0x000024ac:    00000000    ....    DCD    0
        0x000024b0:    00000000    ....    DCD    0
        0x000024b4:    00000000    ....    DCD    0
        0x000024b8:    00000000    ....    DCD    0
        0x000024bc:    00000000    ....    DCD    0
        0x000024c0:    00000000    ....    DCD    0
        0x000024c4:    00000000    ....    DCD    0
        0x000024c8:    00000000    ....    DCD    0
        0x000024cc:    00000000    ....    DCD    0
        0x000024d0:    00000000    ....    DCD    0
        0x000024d4:    00000000    ....    DCD    0
        0x000024d8:    00000000    ....    DCD    0
        0x000024dc:    00000000    ....    DCD    0
        0x000024e0:    00000000    ....    DCD    0
        0x000024e4:    00000000    ....    DCD    0
        0x000024e8:    00000000    ....    DCD    0
        0x000024ec:    00000000    ....    DCD    0
        0x000024f0:    00000000    ....    DCD    0
        0x000024f4:    00000000    ....    DCD    0
        0x000024f8:    00000000    ....    DCD    0
        0x000024fc:    00000000    ....    DCD    0
        0x00002500:    00000000    ....    DCD    0
        0x00002504:    00000000    ....    DCD    0
        0x00002508:    00000000    ....    DCD    0
        0x0000250c:    00000000    ....    DCD    0
        0x00002510:    00000000    ....    DCD    0
        0x00002514:    00000000    ....    DCD    0
        0x00002518:    00000000    ....    DCD    0
        0x0000251c:    00000000    ....    DCD    0
        0x00002520:    00000000    ....    DCD    0
        0x00002524:    00000000    ....    DCD    0
        0x00002528:    00000000    ....    DCD    0
        0x0000252c:    00000000    ....    DCD    0
        0x00002530:    00000000    ....    DCD    0
        0x00002534:    00000000    ....    DCD    0
        0x00002538:    00000000    ....    DCD    0
        0x0000253c:    00000000    ....    DCD    0
        0x00002540:    00000000    ....    DCD    0
        0x00002544:    00000000    ....    DCD    0
        0x00002548:    00000000    ....    DCD    0
        0x0000254c:    00000000    ....    DCD    0
        0x00002550:    00000000    ....    DCD    0
        0x00002554:    00000000    ....    DCD    0
        0x00002558:    00000000    ....    DCD    0
        0x0000255c:    00000000    ....    DCD    0
        0x00002560:    00000000    ....    DCD    0
        0x00002564:    00000000    ....    DCD    0
        0x00002568:    00000000    ....    DCD    0
        0x0000256c:    00000000    ....    DCD    0
        0x00002570:    00000000    ....    DCD    0
        0x00002574:    00000000    ....    DCD    0
        0x00002578:    00000000    ....    DCD    0
        0x0000257c:    00000000    ....    DCD    0
        0x00002580:    00000000    ....    DCD    0
        0x00002584:    00000000    ....    DCD    0
        0x00002588:    00000000    ....    DCD    0
        0x0000258c:    00000000    ....    DCD    0
        0x00002590:    00000000    ....    DCD    0
        0x00002594:    00000000    ....    DCD    0
        0x00002598:    00000000    ....    DCD    0
        0x0000259c:    00000000    ....    DCD    0
        0x000025a0:    00000000    ....    DCD    0
        0x000025a4:    00000000    ....    DCD    0
        0x000025a8:    00000000    ....    DCD    0
        0x000025ac:    00000000    ....    DCD    0
        0x000025b0:    00000000    ....    DCD    0
        0x000025b4:    00000000    ....    DCD    0
        0x000025b8:    00000000    ....    DCD    0
        0x000025bc:    00000000    ....    DCD    0
        0x000025c0:    00000000    ....    DCD    0
        0x000025c4:    00000000    ....    DCD    0
        0x000025c8:    00000000    ....    DCD    0
        0x000025cc:    00000000    ....    DCD    0
        0x000025d0:    00000000    ....    DCD    0
        0x000025d4:    00000000    ....    DCD    0
        0x000025d8:    00000000    ....    DCD    0
        0x000025dc:    00000000    ....    DCD    0
        0x000025e0:    00000000    ....    DCD    0
        0x000025e4:    00000000    ....    DCD    0
        0x000025e8:    00000000    ....    DCD    0
        0x000025ec:    00000000    ....    DCD    0
        0x000025f0:    00000000    ....    DCD    0
        0x000025f4:    00000000    ....    DCD    0
        0x000025f8:    00000000    ....    DCD    0
        0x000025fc:    00000000    ....    DCD    0
        0x00002600:    00000000    ....    DCD    0
        0x00002604:    00000000    ....    DCD    0
        0x00002608:    00000000    ....    DCD    0
        0x0000260c:    00000000    ....    DCD    0
        0x00002610:    00000000    ....    DCD    0
        0x00002614:    00000000    ....    DCD    0
        0x00002618:    00000000    ....    DCD    0
        0x0000261c:    00000000    ....    DCD    0
        0x00002620:    00000000    ....    DCD    0
        0x00002624:    00000000    ....    DCD    0
        0x00002628:    00000000    ....    DCD    0
        0x0000262c:    00000000    ....    DCD    0
        0x00002630:    00000000    ....    DCD    0
        0x00002634:    00000000    ....    DCD    0
        0x00002638:    00000000    ....    DCD    0
        0x0000263c:    00000000    ....    DCD    0
        0x00002640:    00000000    ....    DCD    0
        0x00002644:    00000000    ....    DCD    0
        0x00002648:    00000000    ....    DCD    0
        0x0000264c:    00000000    ....    DCD    0
        0x00002650:    00000000    ....    DCD    0

** Section #5 '.debug_abbrev' (SHT_PROGBITS)
    Size   : 2695 bytes


** Section #6 '.debug_frame' (SHT_PROGBITS)
    Size   : 1708 bytes


** Section #7 '.debug_info' (SHT_PROGBITS)
    Size   : 12967 bytes


** Section #8 '.debug_line' (SHT_PROGBITS)
    Size   : 5826 bytes


** Section #9 '.debug_loc' (SHT_PROGBITS)
    Size   : 5204 bytes


** Section #10 '.debug_str' (SHT_PROGBITS)
    Size   : 7272 bytes


** Section #11 '.debug_ranges' (SHT_PROGBITS)
    Size   : 112 bytes


** Section #12 '.symtab' (SHT_SYMTAB)
    Size   : 1616 bytes (alignment 4)
    String table #13 '.strtab'
    Last local symbol no. 32


** Section #13 '.strtab' (SHT_STRTAB)
    Size   : 1356 bytes


** Section #14 '.note' (SHT_NOTE)
    Size   : 32 bytes (alignment 4)


** Section #15 '.comment' (SHT_PROGBITS)
    Size   : 540 bytes


** Section #16 '.shstrtab' (SHT_STRTAB)
    Size   : 156 bytes


address     size       variable name                            type
0x000015ac  0x4        CyclesPerUs                              uint32_t

address     size       variable name                            type
0x000015b0  0x4        SystemCoreClock                          uint32_t

address     size       variable name                            type
0x00001594  0x4        IAP_Cache_Config                         const IAP_Cache_Config_t

address     size       variable name                            type
0x00001598  0x4        IAP_Flash_Erase                          const IAP_Flash_Erase_t

address     size       variable name                            type
0x0000159c  0x4        IAP_Flash_Param                          const IAP_Flash_Param_t

address     size       variable name                            type
0x000015a0  0x4        IAP_Flash_ParamTAC                       const IAP_Flash_Param_t

address     size       variable name                            type
0x000015a4  0x4        IAP_Flash_Write                          const IAP_Flash_Write_t

address     size       variable name                            type
0x000015b4  0x1        AddressSize                              uint8_t

address     size       variable name                            type
0x000015b4  0x10a0     FlashDevice                              const FlashDevice
0x000015b4  0x2        FlashDevice.Vers                         unsigned short
0x000015b6  0x80       FlashDevice.DevName                      array[128] of char
0x00001636  0x2        FlashDevice.DevType                      unsigned short
0x00001638  0x4        FlashDevice.DevAdr                       long unsigned int
0x0000163c  0x4        FlashDevice.szDev                        long unsigned int
0x00001640  0x4        FlashDevice.szPage                       long unsigned int
0x00001644  0x4        FlashDevice.Res                          long unsigned int
0x00001648  0x1      * FlashDevice.valEmpty                     unsigned char
0x0000164c  0x4        FlashDevice.toProg                       long unsigned int
0x00001650  0x4        FlashDevice.toErase                      long unsigned int
0x00001654  0x1000     FlashDevice.sectors                      array[512] of FlashSectors

