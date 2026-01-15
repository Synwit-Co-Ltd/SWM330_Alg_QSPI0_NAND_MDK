
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

    Program header offset: 50264 (0x0000c458)
    Section header offset: 50328 (0x0000c498)

    Section header string table index: 16

========================================================================

** Program header #0 (PT_LOAD) [PF_X + PF_W + PF_R + PF_ARM_SB + PF_ARM_PI]
    Size : 5580 bytes (5576 bytes in file)
    Virtual address: 0x00000000 (Alignment 4)


====================================

** Program header #1 (PT_LOAD) [PF_X + PF_R + PF_ARM_PI]
    Size : 4256 bytes
    Virtual address: 0x000015c8 (Alignment 4)


========================================================================

** Section #1 'PrgCode' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 5564 bytes (alignment 4)
    Address: 0x00000000

    $t.0
    Init
        0x00000000:    2a01        .*      CMP      r2,#1
        0x00000002:    d122        ".      BNE      0x4a ; Init + 74
        0x00000004:    b580        ..      PUSH     {r7,lr}
        0x00000006:    f3ef8010    ....    MRS      r0,PRIMASK
        0x0000000a:    b672        r.      CPSID    i
        0x0000000c:    f001f9cc    ....    BL       switchTo8MHz ; 0x13a8
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
        0x00000038:    f001f8c4    ....    BL       SystemInit ; 0x11c4
        0x0000003c:    f000f884    ....    BL       W25N01G_Init ; 0x148
        0x00000040:    2000        .       MOVS     r0,#0
        0x00000042:    f000facd    ....    BL       W25N01G_FlashProtect ; 0x5e0
        0x00000046:    e8bd4080    ...@    POP      {r7,lr}
        0x0000004a:    2000        .       MOVS     r0,#0
        0x0000004c:    4770        pG      BX       lr
        0x0000004e:    bf00        ..      NOP      
    UnInit
        0x00000050:    2000        .       MOVS     r0,#0
        0x00000052:    4770        pG      BX       lr
    EraseSector
        0x00000054:    f1004010    ...@    ADD      r0,r0,#0x90000000
        0x00000058:    f1b06f00    ...o    CMP      r0,#0x8000000
        0x0000005c:    bf84        ..      ITT      HI
        0x0000005e:    2001        .       MOVHI    r0,#1
        0x00000060:    4770        pG      BXHI     lr
        0x00000062:    b580        ..      PUSH     {r7,lr}
        0x00000064:    0ac0        ..      LSRS     r0,r0,#11
        0x00000066:    2101        .!      MOVS     r1,#1
        0x00000068:    f000f94e    ..N.    BL       W25N01G_Erase ; 0x308
        0x0000006c:    2000        .       MOVS     r0,#0
        0x0000006e:    bd80        ..      POP      {r7,pc}
    ProgramPage
        0x00000070:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x00000072:    f1004510    ...E    ADD      r5,r0,#0x90000000
        0x00000076:    f1b56f00    ...o    CMP      r5,#0x8000000
        0x0000007a:    bf84        ..      ITT      HI
        0x0000007c:    2001        .       MOVHI    r0,#1
        0x0000007e:    bdb0        ..      POPHI    {r4,r5,r7,pc}
        0x00000080:    4614        .F      MOV      r4,r2
        0x00000082:    f5b16f00    ...o    CMP      r1,#0x800
        0x00000086:    da05        ..      BGE      0x94 ; ProgramPage + 36
        0x00000088:    1860        `.      ADDS     r0,r4,r1
        0x0000008a:    f5c16100    ...a    RSB      r1,r1,#0x800
        0x0000008e:    22ff        ."      MOVS     r2,#0xff
        0x00000090:    f001fa77    ..w.    BL       __aeabi_memset ; 0x1582
        0x00000094:    0ae8        ..      LSRS     r0,r5,#11
        0x00000096:    4621        !F      MOV      r1,r4
        0x00000098:    2204        ."      MOVS     r2,#4
        0x0000009a:    2301        .#      MOVS     r3,#1
        0x0000009c:    f000f97a    ..z.    BL       W25N01G_Write_ ; 0x394
        0x000000a0:    2000        .       MOVS     r0,#0
        0x000000a2:    bdb0        ..      POP      {r4,r5,r7,pc}
    Verify
        0x000000a4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x000000a6:    b081        ..      SUB      sp,sp,#4
        0x000000a8:    4604        .F      MOV      r4,r0
        0x000000aa:    f1004010    ...@    ADD      r0,r0,#0x90000000
        0x000000ae:    f1b06f00    ...o    CMP      r0,#0x8000000
        0x000000b2:    d82e        ..      BHI      0x112 ; Verify + 110
        0x000000b4:    2700        .'      MOVS     r7,#0
        0x000000b6:    f2c20701    ....    MOVT     r7,#0x2001
        0x000000ba:    4616        .F      MOV      r6,r2
        0x000000bc:    460d        .F      MOV      r5,r1
        0x000000be:    0ac0        ..      LSRS     r0,r0,#11
        0x000000c0:    f04f0c01    O...    MOV      r12,#1
        0x000000c4:    4639        9F      MOV      r1,r7
        0x000000c6:    2201        ."      MOVS     r2,#1
        0x000000c8:    2304        .#      MOVS     r3,#4
        0x000000ca:    f8cdc000    ....    STR      r12,[sp,#0]
        0x000000ce:    f000f9ed    ....    BL       W25N01G_Read_ ; 0x4ac
        0x000000d2:    2d00        .-      CMP      r5,#0
        0x000000d4:    4628        (F      MOV      r0,r5
        0x000000d6:    bf18        ..      IT       NE
        0x000000d8:    2001        .       MOVNE    r0,#1
        0x000000da:    d016        ..      BEQ      0x10a ; Verify + 102
        0x000000dc:    7839        9x      LDRB     r1,[r7,#0]
        0x000000de:    7832        2x      LDRB     r2,[r6,#0]
        0x000000e0:    4291        .B      CMP      r1,r2
        0x000000e2:    f04f0100    O...    MOV      r1,#0
        0x000000e6:    d10e        ..      BNE      0x106 ; Verify + 98
        0x000000e8:    2101        .!      MOVS     r1,#1
        0x000000ea:    bf00        ..      NOP      
        0x000000ec:    42a9        .B      CMP      r1,r5
        0x000000ee:    f04f0000    O...    MOV      r0,#0
        0x000000f2:    bf38        8.      IT       CC
        0x000000f4:    2001        .       MOVCC    r0,#1
        0x000000f6:    428d        .B      CMP      r5,r1
        0x000000f8:    d007        ..      BEQ      0x10a ; Verify + 102
        0x000000fa:    5c7a        z\      LDRB     r2,[r7,r1]
        0x000000fc:    5c73        s\      LDRB     r3,[r6,r1]
        0x000000fe:    3101        .1      ADDS     r1,#1
        0x00000100:    429a        .B      CMP      r2,r3
        0x00000102:    d0f3        ..      BEQ      0xec ; Verify + 72
        0x00000104:    3901        .9      SUBS     r1,#1
        0x00000106:    4421        !D      ADD      r1,r1,r4
        0x00000108:    e7ff        ..      B        0x10a ; Verify + 102
        0x0000010a:    2800        .(      CMP      r0,#0
        0x0000010c:    bf08        ..      IT       EQ
        0x0000010e:    1929        ).      ADDEQ    r1,r5,r4
        0x00000110:    460c        .F      MOV      r4,r1
        0x00000112:    4620         F      MOV      r0,r4
        0x00000114:    b001        ..      ADD      sp,sp,#4
        0x00000116:    bdf0        ..      POP      {r4-r7,pc}
    Read
        0x00000118:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x0000011a:    b082        ..      SUB      sp,sp,#8
        0x0000011c:    4604        .F      MOV      r4,r0
        0x0000011e:    f1004010    ...@    ADD      r0,r0,#0x90000000
        0x00000122:    f1b06f00    ...o    CMP      r0,#0x8000000
        0x00000126:    d80b        ..      BHI      0x140 ; Read + 40
        0x00000128:    460d        .F      MOV      r5,r1
        0x0000012a:    0ac0        ..      LSRS     r0,r0,#11
        0x0000012c:    f04f0c01    O...    MOV      r12,#1
        0x00000130:    4611        .F      MOV      r1,r2
        0x00000132:    2201        ."      MOVS     r2,#1
        0x00000134:    2304        .#      MOVS     r3,#4
        0x00000136:    f8cdc000    ....    STR      r12,[sp,#0]
        0x0000013a:    f000f9b7    ....    BL       W25N01G_Read_ ; 0x4ac
        0x0000013e:    442c        ,D      ADD      r4,r4,r5
        0x00000140:    4620         F      MOV      r0,r4
        0x00000142:    b002        ..      ADD      sp,sp,#8
        0x00000144:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x00000146:    0000        ..      MOVS     r0,r0
    W25N01G_Init
        0x00000148:    b570        p.      PUSH     {r4-r6,lr}
        0x0000014a:    b082        ..      SUB      sp,sp,#8
        0x0000014c:    2410        .$      MOVS     r4,#0x10
        0x0000014e:    f2c4040a    ....    MOVT     r4,#0x400a
        0x00000152:    4620         F      MOV      r0,r4
        0x00000154:    2105        .!      MOVS     r1,#5
        0x00000156:    2202        ."      MOVS     r2,#2
        0x00000158:    2300        .#      MOVS     r3,#0
        0x0000015a:    2500        .%      MOVS     r5,#0
        0x0000015c:    f000fa5a    ..Z.    BL       PORT_Init ; 0x614
        0x00000160:    4620         F      MOV      r0,r4
        0x00000162:    2104        .!      MOVS     r1,#4
        0x00000164:    2202        ."      MOVS     r2,#2
        0x00000166:    2300        .#      MOVS     r3,#0
        0x00000168:    f000fa54    ..T.    BL       PORT_Init ; 0x614
        0x0000016c:    4620         F      MOV      r0,r4
        0x0000016e:    2103        .!      MOVS     r1,#3
        0x00000170:    2202        ."      MOVS     r2,#2
        0x00000172:    2301        .#      MOVS     r3,#1
        0x00000174:    2601        .&      MOVS     r6,#1
        0x00000176:    f000fa4d    ..M.    BL       PORT_Init ; 0x614
        0x0000017a:    4620         F      MOV      r0,r4
        0x0000017c:    2102        .!      MOVS     r1,#2
        0x0000017e:    2202        ."      MOVS     r2,#2
        0x00000180:    2301        .#      MOVS     r3,#1
        0x00000182:    f000fa47    ..G.    BL       PORT_Init ; 0x614
        0x00000186:    4620         F      MOV      r0,r4
        0x00000188:    2101        .!      MOVS     r1,#1
        0x0000018a:    2202        ."      MOVS     r2,#2
        0x0000018c:    2301        .#      MOVS     r3,#1
        0x0000018e:    f000fa41    ..A.    BL       PORT_Init ; 0x614
        0x00000192:    4620         F      MOV      r0,r4
        0x00000194:    2100        .!      MOVS     r1,#0
        0x00000196:    2202        ."      MOVS     r2,#2
        0x00000198:    2301        .#      MOVS     r3,#1
        0x0000019a:    f000fa3b    ..;.    BL       PORT_Init ; 0x614
        0x0000019e:    f8d40100    ....    LDR      r0,[r4,#0x100]
        0x000001a2:    4669        iF      MOV      r1,sp
        0x000001a4:    f0400001    @...    ORR      r0,r0,#1
        0x000001a8:    f8c40100    ....    STR      r0,[r4,#0x100]
        0x000001ac:    201a        .       MOVS     r0,#0x1a
        0x000001ae:    f2c00004    ....    MOVT     r0,#4
        0x000001b2:    9000        ..      STR      r0,[sp,#0]
        0x000001b4:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x000001b8:    f8ad6004    ...`    STRH     r6,[sp,#4]
        0x000001bc:    f88d5006    ...P    STRB     r5,[sp,#6]
        0x000001c0:    f000fb66    ..f.    BL       QSPI_Init ; 0x890
        0x000001c4:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x000001c8:    f000fbc4    ....    BL       QSPI_Open ; 0x954
        0x000001cc:    20b0        .       MOVS     r0,#0xb0
        0x000001ce:    f000f807    ....    BL       W25N01G_ReadReg ; 0x1e0
        0x000001d2:    f0400108    @...    ORR      r1,r0,#8
        0x000001d6:    20b0        .       MOVS     r0,#0xb0
        0x000001d8:    f000f82e    ....    BL       W25N01G_WriteReg ; 0x238
        0x000001dc:    b002        ..      ADD      sp,sp,#8
        0x000001de:    bd70        p.      POP      {r4-r6,pc}
    W25N01G_ReadReg
        0x000001e0:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x000001e2:    b088        ..      SUB      sp,sp,#0x20
        0x000001e4:    ad01        ..      ADD      r5,sp,#4
        0x000001e6:    4604        .F      MOV      r4,r0
        0x000001e8:    4628        (F      MOV      r0,r5
        0x000001ea:    f000fbb9    ....    BL       QSPI_CmdStructClear ; 0x960
        0x000001ee:    f2401005    @...    MOV      r0,#0x105
        0x000001f2:    2100        .!      MOVS     r1,#0
        0x000001f4:    f8ad0004    ....    STRH     r0,[sp,#4]
        0x000001f8:    2001        .       MOVS     r0,#1
        0x000001fa:    f88d1014    ....    STRB     r1,[sp,#0x14]
        0x000001fe:    f44f7180    O..q    MOV      r1,#0x100
        0x00000202:    f8ad000c    ....    STRH     r0,[sp,#0xc]
        0x00000206:    f8ad1016    ....    STRH     r1,[sp,#0x16]
        0x0000020a:    9006        ..      STR      r0,[sp,#0x18]
        0x0000020c:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x00000210:    2101        .!      MOVS     r1,#1
        0x00000212:    462a        *F      MOV      r2,r5
        0x00000214:    9402        ..      STR      r4,[sp,#8]
        0x00000216:    f000fbad    ....    BL       QSPI_Command ; 0x974
        0x0000021a:    f000f9f3    ....    BL       QSPI_FIFOEmpty ; 0x604
        0x0000021e:    b120         .      CBZ      r0,0x22a ; W25N01G_ReadReg + 74
        0x00000220:    bf00        ..      NOP      
        0x00000222:    f000f9ef    ....    BL       QSPI_FIFOEmpty ; 0x604
        0x00000226:    2800        .(      CMP      r0,#0
        0x00000228:    d1fa        ..      BNE      0x220 ; W25N01G_ReadReg + 64
        0x0000022a:    2020                MOVS     r0,#0x20
        0x0000022c:    f6c70000    ....    MOVT     r0,#0x7800
        0x00000230:    7800        .x      LDRB     r0,[r0,#0]
        0x00000232:    b008        ..      ADD      sp,sp,#0x20
        0x00000234:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x00000236:    bf00        ..      NOP      
    W25N01G_WriteReg
        0x00000238:    b570        p.      PUSH     {r4-r6,lr}
        0x0000023a:    b088        ..      SUB      sp,sp,#0x20
        0x0000023c:    ae01        ..      ADD      r6,sp,#4
        0x0000023e:    4605        .F      MOV      r5,r0
        0x00000240:    4630        0F      MOV      r0,r6
        0x00000242:    460c        .F      MOV      r4,r1
        0x00000244:    f000fb8c    ....    BL       QSPI_CmdStructClear ; 0x960
        0x00000248:    f2401001    @...    MOV      r0,#0x101
        0x0000024c:    2100        .!      MOVS     r1,#0
        0x0000024e:    f8ad0004    ....    STRH     r0,[sp,#4]
        0x00000252:    2001        .       MOVS     r0,#1
        0x00000254:    f88d1014    ....    STRB     r1,[sp,#0x14]
        0x00000258:    f44f7180    O..q    MOV      r1,#0x100
        0x0000025c:    f8ad000c    ....    STRH     r0,[sp,#0xc]
        0x00000260:    f8ad1016    ....    STRH     r1,[sp,#0x16]
        0x00000264:    9006        ..      STR      r0,[sp,#0x18]
        0x00000266:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x0000026a:    2100        .!      MOVS     r1,#0
        0x0000026c:    4632        2F      MOV      r2,r6
        0x0000026e:    9502        ..      STR      r5,[sp,#8]
        0x00000270:    f000fb80    ....    BL       QSPI_Command ; 0x974
        0x00000274:    2020                MOVS     r0,#0x20
        0x00000276:    f6c70000    ....    MOVT     r0,#0x7800
        0x0000027a:    7004        .p      STRB     r4,[r0,#0]
        0x0000027c:    f000f87a    ..z.    BL       QSPI_Busy ; 0x374
        0x00000280:    b128        (.      CBZ      r0,0x28e ; W25N01G_WriteReg + 86
        0x00000282:    bf00        ..      NOP      
        0x00000284:    bf00        ..      NOP      
        0x00000286:    f000f875    ..u.    BL       QSPI_Busy ; 0x374
        0x0000028a:    2800        .(      CMP      r0,#0
        0x0000028c:    d1fa        ..      BNE      0x284 ; W25N01G_WriteReg + 76
        0x0000028e:    b008        ..      ADD      sp,sp,#0x20
        0x00000290:    bd70        p.      POP      {r4-r6,pc}
        0x00000292:    bf00        ..      NOP      
    W25N01G_ReadJEDEC
        0x00000294:    b510        ..      PUSH     {r4,lr}
        0x00000296:    b088        ..      SUB      sp,sp,#0x20
        0x00000298:    ac01        ..      ADD      r4,sp,#4
        0x0000029a:    4620         F      MOV      r0,r4
        0x0000029c:    f000fb60    ..`.    BL       QSPI_CmdStructClear ; 0x960
        0x000002a0:    f240109f    @...    MOV      r0,#0x19f
        0x000002a4:    f8ad0004    ....    STRH     r0,[sp,#4]
        0x000002a8:    2000        .       MOVS     r0,#0
        0x000002aa:    f88d000c    ....    STRB     r0,[sp,#0xc]
        0x000002ae:    f88d0014    ....    STRB     r0,[sp,#0x14]
        0x000002b2:    f44f7084    O..p    MOV      r0,#0x108
        0x000002b6:    f8ad0016    ....    STRH     r0,[sp,#0x16]
        0x000002ba:    2003        .       MOVS     r0,#3
        0x000002bc:    9006        ..      STR      r0,[sp,#0x18]
        0x000002be:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x000002c2:    2101        .!      MOVS     r1,#1
        0x000002c4:    4622        "F      MOV      r2,r4
        0x000002c6:    f000fb55    ..U.    BL       QSPI_Command ; 0x974
        0x000002ca:    f000f815    ....    BL       QSPI_FIFOCount ; 0x2f8
        0x000002ce:    2802        .(      CMP      r0,#2
        0x000002d0:    d805        ..      BHI      0x2de ; W25N01G_ReadJEDEC + 74
        0x000002d2:    bf00        ..      NOP      
        0x000002d4:    bf00        ..      NOP      
        0x000002d6:    f000f80f    ....    BL       QSPI_FIFOCount ; 0x2f8
        0x000002da:    2803        .(      CMP      r0,#3
        0x000002dc:    d3fa        ..      BCC      0x2d4 ; W25N01G_ReadJEDEC + 64
        0x000002de:    2020                MOVS     r0,#0x20
        0x000002e0:    f6c70000    ....    MOVT     r0,#0x7800
        0x000002e4:    7801        .x      LDRB     r1,[r0,#0]
        0x000002e6:    7802        .x      LDRB     r2,[r0,#0]
        0x000002e8:    7800        .x      LDRB     r0,[r0,#0]
        0x000002ea:    0212        ..      LSLS     r2,r2,#8
        0x000002ec:    ea424101    B..A    ORR      r1,r2,r1,LSL #16
        0x000002f0:    4408        .D      ADD      r0,r0,r1
        0x000002f2:    b008        ..      ADD      sp,sp,#0x20
        0x000002f4:    bd10        ..      POP      {r4,pc}
        0x000002f6:    bf00        ..      NOP      
    QSPI_FIFOCount
        0x000002f8:    2008        .       MOVS     r0,#8
        0x000002fa:    f6c70000    ....    MOVT     r0,#0x7800
        0x000002fe:    6800        .h      LDR      r0,[r0,#0]
        0x00000300:    f3c02005    ...     UBFX     r0,r0,#8,#6
        0x00000304:    4770        pG      BX       lr
        0x00000306:    bf00        ..      NOP      
    W25N01G_Erase
        0x00000308:    b570        p.      PUSH     {r4-r6,lr}
        0x0000030a:    b088        ..      SUB      sp,sp,#0x20
        0x0000030c:    ae01        ..      ADD      r6,sp,#4
        0x0000030e:    4605        .F      MOV      r5,r0
        0x00000310:    4630        0F      MOV      r0,r6
        0x00000312:    460c        .F      MOV      r4,r1
        0x00000314:    f000fb24    ..$.    BL       QSPI_CmdStructClear ; 0x960
        0x00000318:    f44f70ec    O..p    MOV      r0,#0x1d8
        0x0000031c:    f8ad0004    ....    STRH     r0,[sp,#4]
        0x00000320:    f2402001    @..     MOV      r0,#0x201
        0x00000324:    f8ad000c    ....    STRH     r0,[sp,#0xc]
        0x00000328:    2000        .       MOVS     r0,#0
        0x0000032a:    f88d0014    ....    STRB     r0,[sp,#0x14]
        0x0000032e:    f8ad0016    ....    STRH     r0,[sp,#0x16]
        0x00000332:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x00000336:    2106        .!      MOVS     r1,#6
        0x00000338:    2200        ."      MOVS     r2,#0
        0x0000033a:    2300        .#      MOVS     r3,#0
        0x0000033c:    9502        ..      STR      r5,[sp,#8]
        0x0000033e:    f000fb9d    ....    BL       QSPI_WriteReg ; 0xa7c
        0x00000342:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x00000346:    2100        .!      MOVS     r1,#0
        0x00000348:    4632        2F      MOV      r2,r6
        0x0000034a:    f000fb13    ....    BL       QSPI_Command ; 0x974
        0x0000034e:    bf00        ..      NOP      
        0x00000350:    f000f810    ....    BL       QSPI_Busy ; 0x374
        0x00000354:    b108        ..      CBZ      r0,0x35a ; W25N01G_Erase + 82
        0x00000356:    bf00        ..      NOP      
        0x00000358:    e7fa        ..      B        0x350 ; W25N01G_Erase + 72
        0x0000035a:    b144        D.      CBZ      r4,0x36e ; W25N01G_Erase + 102
        0x0000035c:    f000f812    ....    BL       W25N01G_FlashBusy ; 0x384
        0x00000360:    b128        (.      CBZ      r0,0x36e ; W25N01G_Erase + 102
        0x00000362:    bf00        ..      NOP      
        0x00000364:    bf00        ..      NOP      
        0x00000366:    f000f80d    ....    BL       W25N01G_FlashBusy ; 0x384
        0x0000036a:    2800        .(      CMP      r0,#0
        0x0000036c:    d1fa        ..      BNE      0x364 ; W25N01G_Erase + 92
        0x0000036e:    b008        ..      ADD      sp,sp,#0x20
        0x00000370:    bd70        p.      POP      {r4-r6,pc}
        0x00000372:    bf00        ..      NOP      
    QSPI_Busy
        0x00000374:    2008        .       MOVS     r0,#8
        0x00000376:    f6c70000    ....    MOVT     r0,#0x7800
        0x0000037a:    6800        .h      LDR      r0,[r0,#0]
        0x0000037c:    f3c01040    ..@.    UBFX     r0,r0,#5,#1
        0x00000380:    4770        pG      BX       lr
        0x00000382:    bf00        ..      NOP      
    W25N01G_FlashBusy
        0x00000384:    b580        ..      PUSH     {r7,lr}
        0x00000386:    20c0        .       MOVS     r0,#0xc0
        0x00000388:    f7ffff2a    ..*.    BL       W25N01G_ReadReg ; 0x1e0
        0x0000038c:    f0000001    ....    AND      r0,r0,#1
        0x00000390:    bd80        ..      POP      {r7,pc}
        0x00000392:    bf00        ..      NOP      
    W25N01G_Write_
        0x00000394:    e92d41f0    -..A    PUSH     {r4-r8,lr}
        0x00000398:    b088        ..      SUB      sp,sp,#0x20
        0x0000039a:    af01        ..      ADD      r7,sp,#4
        0x0000039c:    4680        .F      MOV      r8,r0
        0x0000039e:    4638        8F      MOV      r0,r7
        0x000003a0:    461e        .F      MOV      r6,r3
        0x000003a2:    4614        .F      MOV      r4,r2
        0x000003a4:    460d        .F      MOV      r5,r1
        0x000003a6:    f000fadb    ....    BL       QSPI_CmdStructClear ; 0x960
        0x000003aa:    2001        .       MOVS     r0,#1
        0x000003ac:    2101        .!      MOVS     r1,#1
        0x000003ae:    2202        ."      MOVS     r2,#2
        0x000003b0:    2c04        .,      CMP      r4,#4
        0x000003b2:    bf08        ..      IT       EQ
        0x000003b4:    2103        .!      MOVEQ    r1,#3
        0x000003b6:    bf08        ..      IT       EQ
        0x000003b8:    2232        2"      MOVEQ    r2,#0x32
        0x000003ba:    f88d0005    ....    STRB     r0,[sp,#5]
        0x000003be:    f2401001    @...    MOV      r0,#0x101
        0x000003c2:    f8ad000c    ....    STRH     r0,[sp,#0xc]
        0x000003c6:    2000        .       MOVS     r0,#0
        0x000003c8:    9002        ..      STR      r0,[sp,#8]
        0x000003ca:    f88d0014    ....    STRB     r0,[sp,#0x14]
        0x000003ce:    f88d0016    ....    STRB     r0,[sp,#0x16]
        0x000003d2:    f44f6000    O..`    MOV      r0,#0x800
        0x000003d6:    f88d2004    ...     STRB     r2,[sp,#4]
        0x000003da:    f88d1017    ....    STRB     r1,[sp,#0x17]
        0x000003de:    9006        ..      STR      r0,[sp,#0x18]
        0x000003e0:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x000003e4:    2106        .!      MOVS     r1,#6
        0x000003e6:    2200        ."      MOVS     r2,#0
        0x000003e8:    2300        .#      MOVS     r3,#0
        0x000003ea:    f000fb47    ..G.    BL       QSPI_WriteReg ; 0xa7c
        0x000003ee:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x000003f2:    2100        .!      MOVS     r1,#0
        0x000003f4:    463a        :F      MOV      r2,r7
        0x000003f6:    f000fabd    ....    BL       QSPI_Command ; 0x974
        0x000003fa:    b346        F.      CBZ      r6,0x44e ; W25N01G_Write_ + 186
        0x000003fc:    2620         &      MOVS     r6,#0x20
        0x000003fe:    2400        .$      MOVS     r4,#0
        0x00000400:    f6c70600    ....    MOVT     r6,#0x7800
        0x00000404:    e007        ..      B        0x416 ; W25N01G_Write_ + 130
        0x00000406:    bf00        ..      NOP      
        0x00000408:    f8550024    U.$.    LDR      r0,[r5,r4,LSL #2]
        0x0000040c:    3401        .4      ADDS     r4,#1
        0x0000040e:    f5b47f00    ....    CMP      r4,#0x200
        0x00000412:    6030        0`      STR      r0,[r6,#0]
        0x00000414:    d00b        ..      BEQ      0x42e ; W25N01G_Write_ + 154
        0x00000416:    f000f81d    ....    BL       QSPI_FIFOSpace ; 0x454
        0x0000041a:    2803        .(      CMP      r0,#3
        0x0000041c:    d8f4        ..      BHI      0x408 ; W25N01G_Write_ + 116
        0x0000041e:    bf00        ..      NOP      
        0x00000420:    bf00        ..      NOP      
        0x00000422:    f000f817    ....    BL       QSPI_FIFOSpace ; 0x454
        0x00000426:    2804        .(      CMP      r0,#4
        0x00000428:    d3fa        ..      BCC      0x420 ; W25N01G_Write_ + 140
        0x0000042a:    e7ed        ..      B        0x408 ; W25N01G_Write_ + 116
        0x0000042c:    bf00        ..      NOP      
        0x0000042e:    f7ffffa1    ....    BL       QSPI_Busy ; 0x374
        0x00000432:    2800        .(      CMP      r0,#0
        0x00000434:    d1fa        ..      BNE      0x42c ; W25N01G_Write_ + 152
        0x00000436:    4640        @F      MOV      r0,r8
        0x00000438:    f000f812    ....    BL       W25N01G_Program_Execute ; 0x460
        0x0000043c:    f7ffffa2    ....    BL       W25N01G_FlashBusy ; 0x384
        0x00000440:    b128        (.      CBZ      r0,0x44e ; W25N01G_Write_ + 186
        0x00000442:    bf00        ..      NOP      
        0x00000444:    bf00        ..      NOP      
        0x00000446:    f7ffff9d    ....    BL       W25N01G_FlashBusy ; 0x384
        0x0000044a:    2800        .(      CMP      r0,#0
        0x0000044c:    d1fa        ..      BNE      0x444 ; W25N01G_Write_ + 176
        0x0000044e:    b008        ..      ADD      sp,sp,#0x20
        0x00000450:    e8bd81f0    ....    POP      {r4-r8,pc}
    QSPI_FIFOSpace
        0x00000454:    b580        ..      PUSH     {r7,lr}
        0x00000456:    f7ffff4f    ..O.    BL       QSPI_FIFOCount ; 0x2f8
        0x0000045a:    f1c00010    ....    RSB      r0,r0,#0x10
        0x0000045e:    bd80        ..      POP      {r7,pc}
    W25N01G_Program_Execute
        0x00000460:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x00000462:    b088        ..      SUB      sp,sp,#0x20
        0x00000464:    ad01        ..      ADD      r5,sp,#4
        0x00000466:    4604        .F      MOV      r4,r0
        0x00000468:    4628        (F      MOV      r0,r5
        0x0000046a:    f000fa79    ..y.    BL       QSPI_CmdStructClear ; 0x960
        0x0000046e:    f44f7088    O..p    MOV      r0,#0x110
        0x00000472:    f8ad0004    ....    STRH     r0,[sp,#4]
        0x00000476:    f2402001    @..     MOV      r0,#0x201
        0x0000047a:    f8ad000c    ....    STRH     r0,[sp,#0xc]
        0x0000047e:    2000        .       MOVS     r0,#0
        0x00000480:    f88d0014    ....    STRB     r0,[sp,#0x14]
        0x00000484:    f8ad0016    ....    STRH     r0,[sp,#0x16]
        0x00000488:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x0000048c:    2100        .!      MOVS     r1,#0
        0x0000048e:    462a        *F      MOV      r2,r5
        0x00000490:    9402        ..      STR      r4,[sp,#8]
        0x00000492:    f000fa6f    ..o.    BL       QSPI_Command ; 0x974
        0x00000496:    f7ffff6d    ..m.    BL       QSPI_Busy ; 0x374
        0x0000049a:    b120         .      CBZ      r0,0x4a6 ; W25N01G_Program_Execute + 70
        0x0000049c:    bf00        ..      NOP      
        0x0000049e:    f7ffff69    ..i.    BL       QSPI_Busy ; 0x374
        0x000004a2:    2800        .(      CMP      r0,#0
        0x000004a4:    d1fa        ..      BNE      0x49c ; W25N01G_Program_Execute + 60
        0x000004a6:    b008        ..      ADD      sp,sp,#0x20
        0x000004a8:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x000004aa:    bf00        ..      NOP      
    W25N01G_Read_
        0x000004ac:    e92d4df0    -..M    PUSH     {r4-r8,r10,r11,lr}
        0x000004b0:    b088        ..      SUB      sp,sp,#0x20
        0x000004b2:    ad01        ..      ADD      r5,sp,#4
        0x000004b4:    4607        .F      MOV      r7,r0
        0x000004b6:    4628        (F      MOV      r0,r5
        0x000004b8:    4698        .F      MOV      r8,r3
        0x000004ba:    4616        .F      MOV      r6,r2
        0x000004bc:    460c        .F      MOV      r4,r1
        0x000004be:    f000fa4f    ..O.    BL       QSPI_CmdStructClear ; 0x960
        0x000004c2:    f2401013    @...    MOV      r0,#0x113
        0x000004c6:    f8ad0004    ....    STRH     r0,[sp,#4]
        0x000004ca:    f2402001    @..     MOV      r0,#0x201
        0x000004ce:    f8ad000c    ....    STRH     r0,[sp,#0xc]
        0x000004d2:    2000        .       MOVS     r0,#0
        0x000004d4:    f88d0014    ....    STRB     r0,[sp,#0x14]
        0x000004d8:    f8ad0016    ....    STRH     r0,[sp,#0x16]
        0x000004dc:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x000004e0:    2100        .!      MOVS     r1,#0
        0x000004e2:    462a        *F      MOV      r2,r5
        0x000004e4:    9702        ..      STR      r7,[sp,#8]
        0x000004e6:    f000fa45    ..E.    BL       QSPI_Command ; 0x974
        0x000004ea:    bf00        ..      NOP      
        0x000004ec:    f7ffff42    ..B.    BL       QSPI_Busy ; 0x374
        0x000004f0:    b118        ..      CBZ      r0,0x4fa ; W25N01G_Read_ + 78
        0x000004f2:    bf00        ..      NOP      
        0x000004f4:    e7fa        ..      B        0x4ec ; W25N01G_Read_ + 64
        0x000004f6:    bf00        ..      NOP      
        0x000004f8:    bf00        ..      NOP      
        0x000004fa:    f7ffff43    ..C.    BL       W25N01G_FlashBusy ; 0x384
        0x000004fe:    2800        .(      CMP      r0,#0
        0x00000500:    d1fa        ..      BNE      0x4f8 ; W25N01G_Read_ + 76
        0x00000502:    ea481006    H...    ORR      r0,r8,r6,LSL #4
        0x00000506:    f8dda040    ..@.    LDR      r10,[sp,#0x40]
        0x0000050a:    f04f080b    O...    MOV      r8,#0xb
        0x0000050e:    f04f0b08    O...    MOV      r11,#8
        0x00000512:    2821        !(      CMP      r0,#0x21
        0x00000514:    f04f0601    O...    MOV      r6,#1
        0x00000518:    dc0c        ..      BGT      0x534 ; W25N01G_Read_ + 136
        0x0000051a:    2812        .(      CMP      r0,#0x12
        0x0000051c:    d017        ..      BEQ      0x54e ; W25N01G_Read_ + 162
        0x0000051e:    2814        .(      CMP      r0,#0x14
        0x00000520:    f04f0701    O...    MOV      r7,#1
        0x00000524:    d120         .      BNE      0x568 ; W25N01G_Read_ + 188
        0x00000526:    f04f086b    O.k.    MOV      r8,#0x6b
        0x0000052a:    f04f0b08    O...    MOV      r11,#8
        0x0000052e:    2703        .'      MOVS     r7,#3
        0x00000530:    2601        .&      MOVS     r6,#1
        0x00000532:    e019        ..      B        0x568 ; W25N01G_Read_ + 188
        0x00000534:    2822        "(      CMP      r0,#0x22
        0x00000536:    d011        ..      BEQ      0x55c ; W25N01G_Read_ + 176
        0x00000538:    2844        D(      CMP      r0,#0x44
        0x0000053a:    f04f0701    O...    MOV      r7,#1
        0x0000053e:    d113        ..      BNE      0x568 ; W25N01G_Read_ + 188
        0x00000540:    f04f08eb    O...    MOV      r8,#0xeb
        0x00000544:    f04f0b04    O...    MOV      r11,#4
        0x00000548:    2603        .&      MOVS     r6,#3
        0x0000054a:    2703        .'      MOVS     r7,#3
        0x0000054c:    e00c        ..      B        0x568 ; W25N01G_Read_ + 188
        0x0000054e:    f04f083b    O.;.    MOV      r8,#0x3b
        0x00000552:    f04f0b08    O...    MOV      r11,#8
        0x00000556:    2702        .'      MOVS     r7,#2
        0x00000558:    2601        .&      MOVS     r6,#1
        0x0000055a:    e005        ..      B        0x568 ; W25N01G_Read_ + 188
        0x0000055c:    f04f08bb    O...    MOV      r8,#0xbb
        0x00000560:    f04f0b04    O...    MOV      r11,#4
        0x00000564:    2602        .&      MOVS     r6,#2
        0x00000566:    2702        .'      MOVS     r7,#2
        0x00000568:    ad01        ..      ADD      r5,sp,#4
        0x0000056a:    4628        (F      MOV      r0,r5
        0x0000056c:    f000f9f8    ....    BL       QSPI_CmdStructClear ; 0x960
        0x00000570:    2001        .       MOVS     r0,#1
        0x00000572:    f88d0005    ....    STRB     r0,[sp,#5]
        0x00000576:    f88d000d    ....    STRB     r0,[sp,#0xd]
        0x0000057a:    2000        .       MOVS     r0,#0
        0x0000057c:    9002        ..      STR      r0,[sp,#8]
        0x0000057e:    f88d0014    ....    STRB     r0,[sp,#0x14]
        0x00000582:    f44f6000    O..`    MOV      r0,#0x800
        0x00000586:    9006        ..      STR      r0,[sp,#0x18]
        0x00000588:    f04f40f0    O..@    MOV      r0,#0x78000000
        0x0000058c:    2101        .!      MOVS     r1,#1
        0x0000058e:    462a        *F      MOV      r2,r5
        0x00000590:    f88d8004    ....    STRB     r8,[sp,#4]
        0x00000594:    f88d600c    ...`    STRB     r6,[sp,#0xc]
        0x00000598:    f88db016    ....    STRB     r11,[sp,#0x16]
        0x0000059c:    f88d7017    ...p    STRB     r7,[sp,#0x17]
        0x000005a0:    f000f9e8    ....    BL       QSPI_Command ; 0x974
        0x000005a4:    f1ba0f00    ....    CMP      r10,#0
        0x000005a8:    d016        ..      BEQ      0x5d8 ; W25N01G_Read_ + 300
        0x000005aa:    2620         &      MOVS     r6,#0x20
        0x000005ac:    2500        .%      MOVS     r5,#0
        0x000005ae:    f6c70600    ....    MOVT     r6,#0x7800
        0x000005b2:    e006        ..      B        0x5c2 ; W25N01G_Read_ + 278
        0x000005b4:    6830        0h      LDR      r0,[r6,#0]
        0x000005b6:    f8440025    D.%.    STR      r0,[r4,r5,LSL #2]
        0x000005ba:    3501        .5      ADDS     r5,#1
        0x000005bc:    f5b57f00    ....    CMP      r5,#0x200
        0x000005c0:    d00a        ..      BEQ      0x5d8 ; W25N01G_Read_ + 300
        0x000005c2:    f7fffe99    ....    BL       QSPI_FIFOCount ; 0x2f8
        0x000005c6:    2803        .(      CMP      r0,#3
        0x000005c8:    d8f4        ..      BHI      0x5b4 ; W25N01G_Read_ + 264
        0x000005ca:    bf00        ..      NOP      
        0x000005cc:    bf00        ..      NOP      
        0x000005ce:    f7fffe93    ....    BL       QSPI_FIFOCount ; 0x2f8
        0x000005d2:    2804        .(      CMP      r0,#4
        0x000005d4:    d3fa        ..      BCC      0x5cc ; W25N01G_Read_ + 288
        0x000005d6:    e7ed        ..      B        0x5b4 ; W25N01G_Read_ + 264
        0x000005d8:    b008        ..      ADD      sp,sp,#0x20
        0x000005da:    e8bd8df0    ....    POP      {r4-r8,r10,r11,pc}
        0x000005de:    bf00        ..      NOP      
    W25N01G_FlashProtect
        0x000005e0:    b510        ..      PUSH     {r4,lr}
        0x000005e2:    4604        .F      MOV      r4,r0
        0x000005e4:    20a0        .       MOVS     r0,#0xa0
        0x000005e6:    f7fffdfb    ....    BL       W25N01G_ReadReg ; 0x1e0
        0x000005ea:    08a1        ..      LSRS     r1,r4,#2
        0x000005ec:    ea4101c4    A...    ORR      r1,r1,r4,LSL #3
        0x000005f0:    f0000083    ....    AND      r0,r0,#0x83
        0x000005f4:    f001017c    ..|.    AND      r1,r1,#0x7c
        0x000005f8:    4401        .D      ADD      r1,r1,r0
        0x000005fa:    20a0        .       MOVS     r0,#0xa0
        0x000005fc:    f7fffe1c    ....    BL       W25N01G_WriteReg ; 0x238
        0x00000600:    bd10        ..      POP      {r4,pc}
        0x00000602:    bf00        ..      NOP      
    QSPI_FIFOEmpty
        0x00000604:    b580        ..      PUSH     {r7,lr}
        0x00000606:    f7fffe77    ..w.    BL       QSPI_FIFOCount ; 0x2f8
        0x0000060a:    fab0f080    ....    CLZ      r0,r0
        0x0000060e:    0940        @.      LSRS     r0,r0,#5
        0x00000610:    bd80        ..      POP      {r7,pc}
        0x00000612:    0000        ..      MOVS     r0,r0
    PORT_Init
        0x00000614:    b570        p.      PUSH     {r4-r6,lr}
        0x00000616:    2a64        d*      CMP      r2,#0x64
        0x00000618:    d323        #.      BCC      0x662 ; PORT_Init + 78
        0x0000061a:    2905        .)      CMP      r1,#5
        0x0000061c:    f1020c9c    ....    ADD      r12,r2,#0x9c
        0x00000620:    d804        ..      BHI      0x62c ; PORT_Init + 24
        0x00000622:    eb010e81    ....    ADD      lr,r1,r1,LSL #2
        0x00000626:    f50062e0    ...b    ADD      r2,r0,#0x700
        0x0000062a:    e00b        ..      B        0x644 ; PORT_Init + 48
        0x0000062c:    eb010281    ....    ADD      r2,r1,r1,LSL #2
        0x00000630:    290b        .)      CMP      r1,#0xb
        0x00000632:    bf87        ..      ITTEE    HI
        0x00000634:    f1a20e3c    ..<.    SUBHI    lr,r2,#0x3c
        0x00000638:    f50062e1    ...b    ADDHI    r2,r0,#0x708
        0x0000063c:    f1a20e1e    ....    SUBLS    lr,r2,#0x1e
        0x00000640:    f2007204    ...r    ADDLS    r2,r0,#0x704
        0x00000644:    241f        .$      MOVS     r4,#0x1f
        0x00000646:    6815        .h      LDR      r5,[r2,#0]
        0x00000648:    fa04f40e    ....    LSL      r4,r4,lr
        0x0000064c:    ea250404    %...    BIC      r4,r5,r4
        0x00000650:    6014        .`      STR      r4,[r2,#0]
        0x00000652:    fa5ff58c    _...    UXTB     r5,r12
        0x00000656:    6814        .h      LDR      r4,[r2,#0]
        0x00000658:    fa05f50e    ....    LSL      r5,r5,lr
        0x0000065c:    4325        %C      ORRS     r5,r5,r4
        0x0000065e:    6015        .`      STR      r5,[r2,#0]
        0x00000660:    2201        ."      MOVS     r2,#1
        0x00000662:    f06f051f    o...    MVN      r5,#0x1f
        0x00000666:    eb050681    ....    ADD      r6,r5,r1,LSL #2
        0x0000066a:    4604        .F      MOV      r4,r0
        0x0000066c:    2908        .)      CMP      r1,#8
        0x0000066e:    bf38        8.      IT       CC
        0x00000670:    008e        ..      LSLCC    r6,r1,#2
        0x00000672:    f04f0c0f    O...    MOV      r12,#0xf
        0x00000676:    bf28        (.      IT       CS
        0x00000678:    3404        .4      ADDCS    r4,#4
        0x0000067a:    f8d4e000    ....    LDR      lr,[r4,#0]
        0x0000067e:    fa0cf506    ....    LSL      r5,r12,r6
        0x00000682:    ea2e0505    ....    BIC      r5,lr,r5
        0x00000686:    6025        %`      STR      r5,[r4,#0]
        0x00000688:    6825        %h      LDR      r5,[r4,#0]
        0x0000068a:    40b2        .@      LSLS     r2,r2,r6
        0x0000068c:    432a        *C      ORRS     r2,r2,r5
        0x0000068e:    6022        "`      STR      r2,[r4,#0]
        0x00000690:    2201        ."      MOVS     r2,#1
        0x00000692:    fa02f101    ....    LSL      r1,r2,r1
        0x00000696:    2b00        .+      CMP      r3,#0
        0x00000698:    f8d02300    ...#    LDR      r2,[r0,#0x300]
        0x0000069c:    bf0c        ..      ITE      EQ
        0x0000069e:    ea220101    "...    BICEQ    r1,r2,r1
        0x000006a2:    4311        .C      ORRNE    r1,r1,r2
        0x000006a4:    f8c01300    ....    STR      r1,[r0,#0x300]
        0x000006a8:    bd70        p.      POP      {r4-r6,pc}
        0x000006aa:    0000        ..      MOVS     r0,r0
    GPIO_Init
        0x000006ac:    e92d45f0    -..E    PUSH     {r4-r8,r10,lr}
        0x000006b0:    b081        ..      SUB      sp,sp,#4
        0x000006b2:    4607        .F      MOV      r7,r0
        0x000006b4:    f64070ff    @..p    MOV      r0,#0xfff
        0x000006b8:    f2c40004    ....    MOVT     r0,#0x4004
        0x000006bc:    2400        .$      MOVS     r4,#0
        0x000006be:    4698        .F      MOV      r8,r3
        0x000006c0:    4692        .F      MOV      r10,r2
        0x000006c2:    4287        .B      CMP      r7,r0
        0x000006c4:    460d        .F      MOV      r5,r1
        0x000006c6:    f2c4040a    ....    MOVT     r4,#0x400a
        0x000006ca:    dd1a        ..      BLE      0x702 ; GPIO_Init + 86
        0x000006cc:    f2410000    A...    MOVW     r0,#0x1000
        0x000006d0:    f2c40004    ....    MOVT     r0,#0x4004
        0x000006d4:    4287        .B      CMP      r7,r0
        0x000006d6:    d028        (.      BEQ      0x72a ; GPIO_Init + 126
        0x000006d8:    f6410000    A...    MOVW     r0,#0x1800
        0x000006dc:    f2c40004    ....    MOVT     r0,#0x4004
        0x000006e0:    4287        .B      CMP      r7,r0
        0x000006e2:    d02b        +.      BEQ      0x73c ; GPIO_Init + 144
        0x000006e4:    f2460000    F...    MOVW     r0,#0x6000
        0x000006e8:    f2c4000a    ....    MOVT     r0,#0x400a
        0x000006ec:    4287        .B      CMP      r7,r0
        0x000006ee:    d135        5.      BNE      0x75c ; GPIO_Init + 176
        0x000006f0:    2008        .       MOVS     r0,#8
        0x000006f2:    f2c40000    ....    MOVT     r0,#0x4000
        0x000006f6:    6841        Ah      LDR      r1,[r0,#4]
        0x000006f8:    3440        @4      ADDS     r4,r4,#0x40
        0x000006fa:    f4416100    A..a    ORR      r1,r1,#0x800
        0x000006fe:    6041        A`      STR      r1,[r0,#4]
        0x00000700:    e02c        ,.      B        0x75c ; GPIO_Init + 176
        0x00000702:    2000        .       MOVS     r0,#0
        0x00000704:    f2c40004    ....    MOVT     r0,#0x4004
        0x00000708:    4287        .B      CMP      r7,r0
        0x0000070a:    d020         .      BEQ      0x74e ; GPIO_Init + 162
        0x0000070c:    f6400000    @...    MOVW     r0,#0x800
        0x00000710:    f2c40004    ....    MOVT     r0,#0x4004
        0x00000714:    4287        .B      CMP      r7,r0
        0x00000716:    d121        !.      BNE      0x75c ; GPIO_Init + 176
        0x00000718:    2008        .       MOVS     r0,#8
        0x0000071a:    f2c40000    ....    MOVT     r0,#0x4000
        0x0000071e:    6801        .h      LDR      r1,[r0,#0]
        0x00000720:    3410        .4      ADDS     r4,r4,#0x10
        0x00000722:    f0410102    A...    ORR      r1,r1,#2
        0x00000726:    6001        .`      STR      r1,[r0,#0]
        0x00000728:    e018        ..      B        0x75c ; GPIO_Init + 176
        0x0000072a:    2008        .       MOVS     r0,#8
        0x0000072c:    f2c40000    ....    MOVT     r0,#0x4000
        0x00000730:    6801        .h      LDR      r1,[r0,#0]
        0x00000732:    3420         4      ADDS     r4,r4,#0x20
        0x00000734:    f0410104    A...    ORR      r1,r1,#4
        0x00000738:    6001        .`      STR      r1,[r0,#0]
        0x0000073a:    e00f        ..      B        0x75c ; GPIO_Init + 176
        0x0000073c:    2008        .       MOVS     r0,#8
        0x0000073e:    f2c40000    ....    MOVT     r0,#0x4000
        0x00000742:    6801        .h      LDR      r1,[r0,#0]
        0x00000744:    3430        04      ADDS     r4,r4,#0x30
        0x00000746:    f0410108    A...    ORR      r1,r1,#8
        0x0000074a:    6001        .`      STR      r1,[r0,#0]
        0x0000074c:    e006        ..      B        0x75c ; GPIO_Init + 176
        0x0000074e:    2008        .       MOVS     r0,#8
        0x00000750:    f2c40000    ....    MOVT     r0,#0x4000
        0x00000754:    6801        .h      LDR      r1,[r0,#0]
        0x00000756:    f0410101    A...    ORR      r1,r1,#1
        0x0000075a:    6001        .`      STR      r1,[r0,#0]
        0x0000075c:    4620         F      MOV      r0,r4
        0x0000075e:    4629        )F      MOV      r1,r5
        0x00000760:    2200        ."      MOVS     r2,#0
        0x00000762:    2301        .#      MOVS     r3,#1
        0x00000764:    2601        .&      MOVS     r6,#1
        0x00000766:    f7ffff55    ..U.    BL       PORT_Init ; 0x614
        0x0000076a:    fa06f005    ....    LSL      r0,r6,r5
        0x0000076e:    6879        yh      LDR      r1,[r7,#4]
        0x00000770:    f1ba0f01    ....    CMP      r10,#1
        0x00000774:    bf14        ..      ITE      NE
        0x00000776:    ea210000    !...    BICNE    r0,r1,r0
        0x0000077a:    4308        .C      ORREQ    r0,r0,r1
        0x0000077c:    6078        x`      STR      r0,[r7,#4]
        0x0000077e:    2101        .!      MOVS     r1,#1
        0x00000780:    9808        ..      LDR      r0,[sp,#0x20]
        0x00000782:    40a9        .@      LSLS     r1,r1,r5
        0x00000784:    f8d42100    ...!    LDR      r2,[r4,#0x100]
        0x00000788:    f1b80f01    ....    CMP      r8,#1
        0x0000078c:    bf14        ..      ITE      NE
        0x0000078e:    ea220101    "...    BICNE    r1,r2,r1
        0x00000792:    4311        .C      ORREQ    r1,r1,r2
        0x00000794:    2201        ."      MOVS     r2,#1
        0x00000796:    f8c41100    ....    STR      r1,[r4,#0x100]
        0x0000079a:    2801        .(      CMP      r0,#1
        0x0000079c:    fa02f005    ....    LSL      r0,r2,r5
        0x000007a0:    f8d42200    ..."    LDR      r2,[r4,#0x200]
        0x000007a4:    bf14        ..      ITE      NE
        0x000007a6:    ea220000    "...    BICNE    r0,r2,r0
        0x000007aa:    4310        .C      ORREQ    r0,r0,r2
        0x000007ac:    9909        ..      LDR      r1,[sp,#0x24]
        0x000007ae:    f8c40200    ....    STR      r0,[r4,#0x200]
        0x000007b2:    2001        .       MOVS     r0,#1
        0x000007b4:    40a8        .@      LSLS     r0,r0,r5
        0x000007b6:    2901        .)      CMP      r1,#1
        0x000007b8:    f8d41400    ....    LDR      r1,[r4,#0x400]
        0x000007bc:    bf0c        ..      ITE      EQ
        0x000007be:    4308        .C      ORREQ    r0,r0,r1
        0x000007c0:    ea210000    !...    BICNE    r0,r1,r0
        0x000007c4:    f8c40400    ....    STR      r0,[r4,#0x400]
        0x000007c8:    b001        ..      ADD      sp,sp,#4
        0x000007ca:    e8bd85f0    ....    POP      {r4-r8,r10,pc}
        0x000007ce:    bf00        ..      NOP      
    GPIO_WriteBit
        0x000007d0:    eb000081    ....    ADD      r0,r0,r1,LSL #2
        0x000007d4:    6402        .d      STR      r2,[r0,#0x40]
        0x000007d6:    4770        pG      BX       lr
    GPIO_SetBit
        0x000007d8:    eb000081    ....    ADD      r0,r0,r1,LSL #2
        0x000007dc:    2101        .!      MOVS     r1,#1
        0x000007de:    6401        .d      STR      r1,[r0,#0x40]
        0x000007e0:    4770        pG      BX       lr
        0x000007e2:    bf00        ..      NOP      
    GPIO_ClrBit
        0x000007e4:    eb000081    ....    ADD      r0,r0,r1,LSL #2
        0x000007e8:    2100        .!      MOVS     r1,#0
        0x000007ea:    6401        .d      STR      r1,[r0,#0x40]
        0x000007ec:    4770        pG      BX       lr
        0x000007ee:    bf00        ..      NOP      
    GPIO_InvBit
        0x000007f0:    eb000081    ....    ADD      r0,r0,r1,LSL #2
        0x000007f4:    6c01        .l      LDR      r1,[r0,#0x40]
        0x000007f6:    f1c10101    ....    RSB      r1,r1,#1
        0x000007fa:    6401        .d      STR      r1,[r0,#0x40]
        0x000007fc:    4770        pG      BX       lr
        0x000007fe:    bf00        ..      NOP      
    GPIO_GetBit
        0x00000800:    eb000081    ....    ADD      r0,r0,r1,LSL #2
        0x00000804:    6c00        .l      LDR      r0,[r0,#0x40]
        0x00000806:    4770        pG      BX       lr
    GPIO_WriteBits
        0x00000808:    b580        ..      PUSH     {r7,lr}
        0x0000080a:    f1c20c10    ....    RSB      r12,r2,#0x10
        0x0000080e:    f64f72ff    O..r    MOV      r2,#0xffff
        0x00000812:    fa22fc0c    "...    LSR      r12,r2,r12
        0x00000816:    f8d0e000    ....    LDR      lr,[r0,#0]
        0x0000081a:    fa0cf201    ....    LSL      r2,r12,r1
        0x0000081e:    ea2e0202    ....    BIC      r2,lr,r2
        0x00000822:    6002        .`      STR      r2,[r0,#0]
        0x00000824:    6802        .h      LDR      r2,[r0,#0]
        0x00000826:    fa03f101    ....    LSL      r1,r3,r1
        0x0000082a:    4311        .C      ORRS     r1,r1,r2
        0x0000082c:    6001        .`      STR      r1,[r0,#0]
        0x0000082e:    bd80        ..      POP      {r7,pc}
    GPIO_SetBits
        0x00000830:    f1c20210    ....    RSB      r2,r2,#0x10
        0x00000834:    f64f73ff    O..s    MOV      r3,#0xffff
        0x00000838:    fa23f202    #...    LSR      r2,r3,r2
        0x0000083c:    6803        .h      LDR      r3,[r0,#0]
        0x0000083e:    fa02f101    ....    LSL      r1,r2,r1
        0x00000842:    4319        .C      ORRS     r1,r1,r3
        0x00000844:    6001        .`      STR      r1,[r0,#0]
        0x00000846:    4770        pG      BX       lr
    GPIO_ClrBits
        0x00000848:    f1c20210    ....    RSB      r2,r2,#0x10
        0x0000084c:    f64f73ff    O..s    MOV      r3,#0xffff
        0x00000850:    fa23f202    #...    LSR      r2,r3,r2
        0x00000854:    6803        .h      LDR      r3,[r0,#0]
        0x00000856:    fa02f101    ....    LSL      r1,r2,r1
        0x0000085a:    ea230101    #...    BIC      r1,r3,r1
        0x0000085e:    6001        .`      STR      r1,[r0,#0]
        0x00000860:    4770        pG      BX       lr
        0x00000862:    bf00        ..      NOP      
    GPIO_InvBits
        0x00000864:    f1c20210    ....    RSB      r2,r2,#0x10
        0x00000868:    f64f73ff    O..s    MOV      r3,#0xffff
        0x0000086c:    fa23f202    #...    LSR      r2,r3,r2
        0x00000870:    6803        .h      LDR      r3,[r0,#0]
        0x00000872:    fa02f101    ....    LSL      r1,r2,r1
        0x00000876:    4059        Y@      EORS     r1,r1,r3
        0x00000878:    6001        .`      STR      r1,[r0,#0]
        0x0000087a:    4770        pG      BX       lr
    GPIO_GetBits
        0x0000087c:    6b00        .k      LDR      r0,[r0,#0x30]
        0x0000087e:    f1c20210    ....    RSB      r2,r2,#0x10
        0x00000882:    f64f73ff    O..s    MOV      r3,#0xffff
        0x00000886:    fa23f202    #...    LSR      r2,r3,r2
        0x0000088a:    40c8        .@      LSRS     r0,r0,r1
        0x0000088c:    4010        .@      ANDS     r0,r0,r2
        0x0000088e:    4770        pG      BX       lr
    QSPI_Init
        0x00000890:    b5f0        ..      PUSH     {r4-r7,lr}
        0x00000892:    b081        ..      SUB      sp,sp,#4
        0x00000894:    f6400700    @...    MOVW     r7,#0x800
        0x00000898:    4604        .F      MOV      r4,r0
        0x0000089a:    f1b04ff0    ...O    CMP      r0,#0x78000000
        0x0000089e:    460d        .F      MOV      r5,r1
        0x000008a0:    f6c70700    ....    MOVT     r7,#0x7800
        0x000008a4:    d004        ..      BEQ      0x8b0 ; QSPI_Init + 32
        0x000008a6:    42bc        .B      CMP      r4,r7
        0x000008a8:    d10a        ..      BNE      0x8c0 ; QSPI_Init + 48
        0x000008aa:    f44f4000    O..@    MOV      r0,#0x8000
        0x000008ae:    e001        ..      B        0x8b4 ; QSPI_Init + 36
        0x000008b0:    f44f4080    O..@    MOV      r0,#0x4000
        0x000008b4:    2108        .!      MOVS     r1,#8
        0x000008b6:    f2c40100    ....    MOVT     r1,#0x4000
        0x000008ba:    680a        .h      LDR      r2,[r1,#0]
        0x000008bc:    4310        .C      ORRS     r0,r0,r2
        0x000008be:    6008        .`      STR      r0,[r1,#0]
        0x000008c0:    4620         F      MOV      r0,r4
        0x000008c2:    f000f835    ..5.    BL       QSPI_Close ; 0x930
        0x000008c6:    8869        i.      LDRH     r1,[r5,#2]
        0x000008c8:    79aa        .y      LDRB     r2,[r5,#6]
        0x000008ca:    0609        ..      LSLS     r1,r1,#24
        0x000008cc:    ea414102    A..A    ORR      r1,r1,r2,LSL #16
        0x000008d0:    f6400608    @...    MOV      r6,#0x808
        0x000008d4:    f6cf7600    ...v    MOVT     r6,#0xff00
        0x000008d8:    4431        1D      ADD      r1,r1,r6
        0x000008da:    7928        (y      LDRB     r0,[r5,#4]
        0x000008dc:    796b        ky      LDRB     r3,[r5,#5]
        0x000008de:    6021        !`      STR      r1,[r4,#0]
        0x000008e0:    8829        ).      LDRH     r1,[r5,#0]
        0x000008e2:    ea404001    @..@    ORR      r0,r0,r1,LSL #16
        0x000008e6:    f5007040    ..@p    ADD      r0,r0,#0x300
        0x000008ea:    6060        ``      STR      r0,[r4,#4]
        0x000008ec:    ea4f00d1    O...    LSR      r0,r1,#3
        0x000008f0:    f240010c    @...    MOVW     r1,#0xc
        0x000008f4:    f2c00100    ....    MOVT     r1,#0
        0x000008f8:    f8090001    ....    STRB     r0,[r9,r1]
        0x000008fc:    f003000f    ....    AND      r0,r3,#0xf
        0x00000900:    6420         d      STR      r0,[r4,#0x40]
        0x00000902:    f04f0064    O.d.    MOV      r0,#0x64
        0x00000906:    6320         c      STR      r0,[r4,#0x30]
        0x00000908:    f04f001b    O...    MOV      r0,#0x1b
        0x0000090c:    60e0        .`      STR      r0,[r4,#0xc]
        0x0000090e:    b162        b.      CBZ      r2,0x92a ; QSPI_Init + 154
        0x00000910:    42bc        .B      CMP      r4,r7
        0x00000912:    d007        ..      BEQ      0x924 ; QSPI_Init + 148
        0x00000914:    f1b44ff0    ...O    CMP      r4,#0x78000000
        0x00000918:    d107        ..      BNE      0x92a ; QSPI_Init + 154
        0x0000091a:    2017        .       MOVS     r0,#0x17
        0x0000091c:    f000f80e    ....    BL       __NVIC_EnableIRQ ; 0x93c
        0x00000920:    b001        ..      ADD      sp,sp,#4
        0x00000922:    bdf0        ..      POP      {r4-r7,pc}
        0x00000924:    2018        .       MOVS     r0,#0x18
        0x00000926:    f000f809    ....    BL       __NVIC_EnableIRQ ; 0x93c
        0x0000092a:    b001        ..      ADD      sp,sp,#4
        0x0000092c:    bdf0        ..      POP      {r4-r7,pc}
        0x0000092e:    bf00        ..      NOP      
    QSPI_Close
        0x00000930:    6801        .h      LDR      r1,[r0,#0]
        0x00000932:    f0210101    !...    BIC      r1,r1,#1
        0x00000936:    6001        .`      STR      r1,[r0,#0]
        0x00000938:    4770        pG      BX       lr
        0x0000093a:    bf00        ..      NOP      
    __NVIC_EnableIRQ
        0x0000093c:    f000001f    ....    AND      r0,r0,#0x1f
        0x00000940:    2101        .!      MOVS     r1,#1
        0x00000942:    fa01f000    ....    LSL      r0,r1,r0
        0x00000946:    f24e1100    N...    MOVW     r1,#0xe100
        0x0000094a:    f2ce0100    ....    MOVT     r1,#0xe000
        0x0000094e:    6008        .`      STR      r0,[r1,#0]
        0x00000950:    4770        pG      BX       lr
        0x00000952:    bf00        ..      NOP      
    QSPI_Open
        0x00000954:    6801        .h      LDR      r1,[r0,#0]
        0x00000956:    f0410101    A...    ORR      r1,r1,#1
        0x0000095a:    6001        .`      STR      r1,[r0,#0]
        0x0000095c:    4770        pG      BX       lr
        0x0000095e:    bf00        ..      NOP      
    QSPI_CmdStructClear
        0x00000960:    2100        .!      MOVS     r1,#0
        0x00000962:    8001        ..      STRH     r1,[r0,#0]
        0x00000964:    6041        A`      STR      r1,[r0,#4]
        0x00000966:    8101        ..      STRH     r1,[r0,#8]
        0x00000968:    e9c01103    ....    STRD     r1,r1,[r0,#0xc]
        0x0000096c:    6141        Aa      STR      r1,[r0,#0x14]
        0x0000096e:    7601        .v      STRB     r1,[r0,#0x18]
        0x00000970:    4770        pG      BX       lr
        0x00000972:    bf00        ..      NOP      
    QSPI_Command
        0x00000974:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x00000976:    f892c010    ....    LDRB     r12,[r2,#0x10]
        0x0000097a:    f1bc0f00    ....    CMP      r12,#0
        0x0000097e:    bf1c        ..      ITT      NE
        0x00000980:    68d3        .h      LDRNE    r3,[r2,#0xc]
        0x00000982:    61c3        .a      STRNE    r3,[r0,#0x1c]
        0x00000984:    f892e013    ....    LDRB     lr,[r2,#0x13]
        0x00000988:    f1be0f00    ....    CMP      lr,#0
        0x0000098c:    d002        ..      BEQ      0x994 ; QSPI_Command + 32
        0x0000098e:    6953        Si      LDR      r3,[r2,#0x14]
        0x00000990:    3b01        .;      SUBS     r3,#1
        0x00000992:    6103        .a      STR      r3,[r0,#0x10]
        0x00000994:    ea4f338c    O..3    LSL      r3,r12,#14
        0x00000998:    ea436181    C..a    ORR      r1,r3,r1,LSL #26
        0x0000099c:    7815        .x      LDRB     r5,[r2,#0]
        0x0000099e:    ea41610e    A..a    ORR      r1,r1,lr,LSL #24
        0x000009a2:    7853        Sx      LDRB     r3,[r2,#1]
        0x000009a4:    4429        )D      ADD      r1,r1,r5
        0x000009a6:    7a14        .z      LDRB     r4,[r2,#8]
        0x000009a8:    ea412103    A..!    ORR      r1,r1,r3,LSL #8
        0x000009ac:    7a53        Sz      LDRB     r3,[r2,#9]
        0x000009ae:    ea412184    A..!    ORR      r1,r1,r4,LSL #10
        0x000009b2:    7c55        U|      LDRB     r5,[r2,#0x11]
        0x000009b4:    ea413103    A..1    ORR      r1,r1,r3,LSL #12
        0x000009b8:    7c93        .|      LDRB     r3,[r2,#0x12]
        0x000009ba:    ea414105    A..A    ORR      r1,r1,r5,LSL #16
        0x000009be:    7e15        .~      LDRB     r5,[r2,#0x18]
        0x000009c0:    ea414183    A..A    ORR      r1,r1,r3,LSL #18
        0x000009c4:    ea417105    A..q    ORR      r1,r1,r5,LSL #28
        0x000009c8:    6141        Aa      STR      r1,[r0,#0x14]
        0x000009ca:    b10c        ..      CBZ      r4,0x9d0 ; QSPI_Command + 92
        0x000009cc:    6851        Qh      LDR      r1,[r2,#4]
        0x000009ce:    6181        .a      STR      r1,[r0,#0x18]
        0x000009d0:    2003        .       MOVS     r0,#3
        0x000009d2:    bf00        ..      NOP      
        0x000009d4:    3801        .8      SUBS     r0,#1
        0x000009d6:    bf00        ..      NOP      
        0x000009d8:    d1fc        ..      BNE      0x9d4 ; QSPI_Command + 96
        0x000009da:    bdb0        ..      POP      {r4,r5,r7,pc}
    QSPI_Erase_
        0x000009dc:    b5f0        ..      PUSH     {r4-r7,lr}
        0x000009de:    b087        ..      SUB      sp,sp,#0x1c
        0x000009e0:    4604        .F      MOV      r4,r0
        0x000009e2:    4668        hF      MOV      r0,sp
        0x000009e4:    461d        .F      MOV      r5,r3
        0x000009e6:    4617        .F      MOV      r7,r2
        0x000009e8:    460e        .F      MOV      r6,r1
        0x000009ea:    f7ffffb9    ....    BL       QSPI_CmdStructClear ; 0x960
        0x000009ee:    f240000c    @...    MOVW     r0,#0xc
        0x000009f2:    2f40        @/      CMP      r7,#0x40
        0x000009f4:    f2c00000    ....    MOVT     r0,#0
        0x000009f8:    d008        ..      BEQ      0xa0c ; QSPI_Erase_ + 48
        0x000009fa:    2f04        ./      CMP      r7,#4
        0x000009fc:    d10e        ..      BNE      0xa1c ; QSPI_Erase_ + 64
        0x000009fe:    f8192000    ...     LDRB     r2,[r9,r0]
        0x00000a02:    2120         !      MOVS     r1,#0x20
        0x00000a04:    2a03        .*      CMP      r2,#3
        0x00000a06:    bf08        ..      IT       EQ
        0x00000a08:    2121        !!      MOVEQ    r1,#0x21
        0x00000a0a:    e007        ..      B        0xa1c ; QSPI_Erase_ + 64
        0x00000a0c:    f8192000    ...     LDRB     r2,[r9,r0]
        0x00000a10:    f06f0127    o.'.    MVN      r1,#0x27
        0x00000a14:    2a03        .*      CMP      r2,#3
        0x00000a16:    bf08        ..      IT       EQ
        0x00000a18:    f06f0123    o.#.    MVNEQ    r1,#0x23
        0x00000a1c:    f8190000    ....    LDRB     r0,[r9,r0]
        0x00000a20:    2201        ."      MOVS     r2,#1
        0x00000a22:    f88d0009    ....    STRB     r0,[sp,#9]
        0x00000a26:    2000        .       MOVS     r0,#0
        0x00000a28:    f88d2001    ...     STRB     r2,[sp,#1]
        0x00000a2c:    f88d1000    ....    STRB     r1,[sp,#0]
        0x00000a30:    f88d2008    ...     STRB     r2,[sp,#8]
        0x00000a34:    f88d0010    ....    STRB     r0,[sp,#0x10]
        0x00000a38:    f8ad0012    ....    STRH     r0,[sp,#0x12]
        0x00000a3c:    4620         F      MOV      r0,r4
        0x00000a3e:    2106        .!      MOVS     r1,#6
        0x00000a40:    2200        ."      MOVS     r2,#0
        0x00000a42:    2300        .#      MOVS     r3,#0
        0x00000a44:    9601        ..      STR      r6,[sp,#4]
        0x00000a46:    f000f819    ....    BL       QSPI_WriteReg ; 0xa7c
        0x00000a4a:    466a        jF      MOV      r2,sp
        0x00000a4c:    4620         F      MOV      r0,r4
        0x00000a4e:    2100        .!      MOVS     r1,#0
        0x00000a50:    f7ffff90    ....    BL       QSPI_Command ; 0x974
        0x00000a54:    4620         F      MOV      r0,r4
        0x00000a56:    f000f849    ..I.    BL       QSPI_Busy ; 0xaec
        0x00000a5a:    b108        ..      CBZ      r0,0xa60 ; QSPI_Erase_ + 132
        0x00000a5c:    bf00        ..      NOP      
        0x00000a5e:    e7f9        ..      B        0xa54 ; QSPI_Erase_ + 120
        0x00000a60:    b155        U.      CBZ      r5,0xa78 ; QSPI_Erase_ + 156
        0x00000a62:    4620         F      MOV      r0,r4
        0x00000a64:    f000f846    ..F.    BL       QSPI_FlashBusy ; 0xaf4
        0x00000a68:    b130        0.      CBZ      r0,0xa78 ; QSPI_Erase_ + 156
        0x00000a6a:    bf00        ..      NOP      
        0x00000a6c:    4620         F      MOV      r0,r4
        0x00000a6e:    bf00        ..      NOP      
        0x00000a70:    f000f840    ..@.    BL       QSPI_FlashBusy ; 0xaf4
        0x00000a74:    2800        .(      CMP      r0,#0
        0x00000a76:    d1f9        ..      BNE      0xa6c ; QSPI_Erase_ + 144
        0x00000a78:    b007        ..      ADD      sp,sp,#0x1c
        0x00000a7a:    bdf0        ..      POP      {r4-r7,pc}
    QSPI_WriteReg
        0x00000a7c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x00000a7e:    b089        ..      SUB      sp,sp,#0x24
        0x00000a80:    af01        ..      ADD      r7,sp,#4
        0x00000a82:    4604        .F      MOV      r4,r0
        0x00000a84:    4638        8F      MOV      r0,r7
        0x00000a86:    461d        .F      MOV      r5,r3
        0x00000a88:    460e        .F      MOV      r6,r1
        0x00000a8a:    9208        ..      STR      r2,[sp,#0x20]
        0x00000a8c:    f7ffff68    ..h.    BL       QSPI_CmdStructClear ; 0x960
        0x00000a90:    2001        .       MOVS     r0,#1
        0x00000a92:    f88d0005    ....    STRB     r0,[sp,#5]
        0x00000a96:    2000        .       MOVS     r0,#0
        0x00000a98:    f88d000c    ....    STRB     r0,[sp,#0xc]
        0x00000a9c:    f88d0014    ....    STRB     r0,[sp,#0x14]
        0x00000aa0:    f88d0016    ....    STRB     r0,[sp,#0x16]
        0x00000aa4:    4628        (F      MOV      r0,r5
        0x00000aa6:    f88d6004    ...`    STRB     r6,[sp,#4]
        0x00000aaa:    2d00        .-      CMP      r5,#0
        0x00000aac:    bf18        ..      IT       NE
        0x00000aae:    2001        .       MOVNE    r0,#1
        0x00000ab0:    f88d0017    ....    STRB     r0,[sp,#0x17]
        0x00000ab4:    4620         F      MOV      r0,r4
        0x00000ab6:    2100        .!      MOVS     r1,#0
        0x00000ab8:    463a        :F      MOV      r2,r7
        0x00000aba:    9506        ..      STR      r5,[sp,#0x18]
        0x00000abc:    f7ffff5a    ..Z.    BL       QSPI_Command ; 0x974
        0x00000ac0:    b13d        =.      CBZ      r5,0xad2 ; QSPI_WriteReg + 86
        0x00000ac2:    a808        ..      ADD      r0,sp,#0x20
        0x00000ac4:    3801        .8      SUBS     r0,#1
        0x00000ac6:    bf00        ..      NOP      
        0x00000ac8:    5d41        A]      LDRB     r1,[r0,r5]
        0x00000aca:    3d01        .=      SUBS     r5,#1
        0x00000acc:    f8841020    .. .    STRB     r1,[r4,#0x20]
        0x00000ad0:    dcfa        ..      BGT      0xac8 ; QSPI_WriteReg + 76
        0x00000ad2:    4620         F      MOV      r0,r4
        0x00000ad4:    f000f80a    ....    BL       QSPI_Busy ; 0xaec
        0x00000ad8:    b130        0.      CBZ      r0,0xae8 ; QSPI_WriteReg + 108
        0x00000ada:    bf00        ..      NOP      
        0x00000adc:    4620         F      MOV      r0,r4
        0x00000ade:    bf00        ..      NOP      
        0x00000ae0:    f000f804    ....    BL       QSPI_Busy ; 0xaec
        0x00000ae4:    2800        .(      CMP      r0,#0
        0x00000ae6:    d1f9        ..      BNE      0xadc ; QSPI_WriteReg + 96
        0x00000ae8:    b009        ..      ADD      sp,sp,#0x24
        0x00000aea:    bdf0        ..      POP      {r4-r7,pc}
    QSPI_Busy
        0x00000aec:    6880        .h      LDR      r0,[r0,#8]
        0x00000aee:    f3c01040    ..@.    UBFX     r0,r0,#5,#1
        0x00000af2:    4770        pG      BX       lr
    QSPI_FlashBusy
        0x00000af4:    b580        ..      PUSH     {r7,lr}
        0x00000af6:    2105        .!      MOVS     r1,#5
        0x00000af8:    2201        ."      MOVS     r2,#1
        0x00000afa:    f000fa1f    ....    BL       QSPI_ReadReg ; 0xf3c
        0x00000afe:    f0000001    ....    AND      r0,r0,#1
        0x00000b02:    bd80        ..      POP      {r7,pc}
    QSPI_Write_
        0x00000b04:    e92d45f0    -..E    PUSH     {r4-r8,r10,lr}
        0x00000b08:    b087        ..      SUB      sp,sp,#0x1c
        0x00000b0a:    e9dd580e    ...X    LDRD     r5,r8,[sp,#0x38]
        0x00000b0e:    4604        .F      MOV      r4,r0
        0x00000b10:    4668        hF      MOV      r0,sp
        0x00000b12:    469a        .F      MOV      r10,r3
        0x00000b14:    4616        .F      MOV      r6,r2
        0x00000b16:    460f        .F      MOV      r7,r1
        0x00000b18:    f7ffff22    ..".    BL       QSPI_CmdStructClear ; 0x960
        0x00000b1c:    f240000c    @...    MOVW     r0,#0xc
        0x00000b20:    2d04        .-      CMP      r5,#4
        0x00000b22:    f2c00000    ....    MOVT     r0,#0
        0x00000b26:    d009        ..      BEQ      0xb3c ; QSPI_Write_ + 56
        0x00000b28:    2d01        .-      CMP      r5,#1
        0x00000b2a:    d10e        ..      BNE      0xb4a ; QSPI_Write_ + 70
        0x00000b2c:    f8191000    ....    LDRB     r1,[r9,r0]
        0x00000b30:    2202        ."      MOVS     r2,#2
        0x00000b32:    2903        .)      CMP      r1,#3
        0x00000b34:    bf08        ..      IT       EQ
        0x00000b36:    2212        ."      MOVEQ    r2,#0x12
        0x00000b38:    2101        .!      MOVS     r1,#1
        0x00000b3a:    e006        ..      B        0xb4a ; QSPI_Write_ + 70
        0x00000b3c:    f8191000    ....    LDRB     r1,[r9,r0]
        0x00000b40:    2232        2"      MOVS     r2,#0x32
        0x00000b42:    2903        .)      CMP      r1,#3
        0x00000b44:    bf08        ..      IT       EQ
        0x00000b46:    2234        4"      MOVEQ    r2,#0x34
        0x00000b48:    2103        .!      MOVS     r1,#3
        0x00000b4a:    f8190000    ....    LDRB     r0,[r9,r0]
        0x00000b4e:    2301        .#      MOVS     r3,#1
        0x00000b50:    f88d3001    ...0    STRB     r3,[sp,#1]
        0x00000b54:    f88d2000    ...     STRB     r2,[sp,#0]
        0x00000b58:    f88d3008    ...0    STRB     r3,[sp,#8]
        0x00000b5c:    f88d0009    ....    STRB     r0,[sp,#9]
        0x00000b60:    2500        .%      MOVS     r5,#0
        0x00000b62:    f88d1013    ....    STRB     r1,[sp,#0x13]
        0x00000b66:    4620         F      MOV      r0,r4
        0x00000b68:    2106        .!      MOVS     r1,#6
        0x00000b6a:    2200        ."      MOVS     r2,#0
        0x00000b6c:    2300        .#      MOVS     r3,#0
        0x00000b6e:    9701        ..      STR      r7,[sp,#4]
        0x00000b70:    f88d5010    ...P    STRB     r5,[sp,#0x10]
        0x00000b74:    f88d5012    ...P    STRB     r5,[sp,#0x12]
        0x00000b78:    f8cda014    ....    STR      r10,[sp,#0x14]
        0x00000b7c:    f7ffff7e    ..~.    BL       QSPI_WriteReg ; 0xa7c
        0x00000b80:    466a        jF      MOV      r2,sp
        0x00000b82:    4620         F      MOV      r0,r4
        0x00000b84:    2100        .!      MOVS     r1,#0
        0x00000b86:    f7fffef5    ....    BL       QSPI_Command ; 0x974
        0x00000b8a:    f1b80f00    ....    CMP      r8,#0
        0x00000b8e:    d04f        O.      BEQ      0xc30 ; QSPI_Write_ + 300
        0x00000b90:    ebb50f9a    ....    CMP      r5,r10,LSR #2
        0x00000b94:    d017        ..      BEQ      0xbc6 ; QSPI_Write_ + 194
        0x00000b96:    ea4f079a    O...    LSR      r7,r10,#2
        0x00000b9a:    2500        .%      MOVS     r5,#0
        0x00000b9c:    e006        ..      B        0xbac ; QSPI_Write_ + 168
        0x00000b9e:    bf00        ..      NOP      
        0x00000ba0:    f8560025    V.%.    LDR      r0,[r6,r5,LSL #2]
        0x00000ba4:    3501        .5      ADDS     r5,#1
        0x00000ba6:    42bd        .B      CMP      r5,r7
        0x00000ba8:    6220         b      STR      r0,[r4,#0x20]
        0x00000baa:    d00c        ..      BEQ      0xbc6 ; QSPI_Write_ + 194
        0x00000bac:    4620         F      MOV      r0,r4
        0x00000bae:    f000f843    ..C.    BL       QSPI_FIFOSpace ; 0xc38
        0x00000bb2:    2803        .(      CMP      r0,#3
        0x00000bb4:    d8f4        ..      BHI      0xba0 ; QSPI_Write_ + 156
        0x00000bb6:    bf00        ..      NOP      
        0x00000bb8:    4620         F      MOV      r0,r4
        0x00000bba:    bf00        ..      NOP      
        0x00000bbc:    f000f83c    ..<.    BL       QSPI_FIFOSpace ; 0xc38
        0x00000bc0:    2804        .(      CMP      r0,#4
        0x00000bc2:    d3f9        ..      BCC      0xbb8 ; QSPI_Write_ + 180
        0x00000bc4:    e7ec        ..      B        0xba0 ; QSPI_Write_ + 156
        0x00000bc6:    ea5f708a    _..p    LSLS     r0,r10,#30
        0x00000bca:    d50f        ..      BPL      0xbec ; QSPI_Write_ + 232
        0x00000bcc:    4620         F      MOV      r0,r4
        0x00000bce:    f02a0503    *...    BIC      r5,r10,#3
        0x00000bd2:    f000f831    ..1.    BL       QSPI_FIFOSpace ; 0xc38
        0x00000bd6:    2801        .(      CMP      r0,#1
        0x00000bd8:    d806        ..      BHI      0xbe8 ; QSPI_Write_ + 228
        0x00000bda:    bf00        ..      NOP      
        0x00000bdc:    4620         F      MOV      r0,r4
        0x00000bde:    bf00        ..      NOP      
        0x00000be0:    f000f82a    ..*.    BL       QSPI_FIFOSpace ; 0xc38
        0x00000be4:    2802        .(      CMP      r0,#2
        0x00000be6:    d3f9        ..      BCC      0xbdc ; QSPI_Write_ + 216
        0x00000be8:    5b70        p[      LDRH     r0,[r6,r5]
        0x00000bea:    8420         .      STRH     r0,[r4,#0x20]
        0x00000bec:    ea5f70ca    _..p    LSLS     r0,r10,#31
        0x00000bf0:    d00f        ..      BEQ      0xc12 ; QSPI_Write_ + 270
        0x00000bf2:    bf00        ..      NOP      
        0x00000bf4:    4620         F      MOV      r0,r4
        0x00000bf6:    f000f81f    ....    BL       QSPI_FIFOSpace ; 0xc38
        0x00000bfa:    b908        ..      CBNZ     r0,0xc00 ; QSPI_Write_ + 252
        0x00000bfc:    bf00        ..      NOP      
        0x00000bfe:    e7f9        ..      B        0xbf4 ; QSPI_Write_ + 240
        0x00000c00:    eb0a0006    ....    ADD      r0,r10,r6
        0x00000c04:    f8100c01    ....    LDRB     r0,[r0,#-1]
        0x00000c08:    f8840020    .. .    STRB     r0,[r4,#0x20]
        0x00000c0c:    e001        ..      B        0xc12 ; QSPI_Write_ + 270
        0x00000c0e:    bf00        ..      NOP      
        0x00000c10:    bf00        ..      NOP      
        0x00000c12:    4620         F      MOV      r0,r4
        0x00000c14:    f7ffff6a    ..j.    BL       QSPI_Busy ; 0xaec
        0x00000c18:    2800        .(      CMP      r0,#0
        0x00000c1a:    d1f9        ..      BNE      0xc10 ; QSPI_Write_ + 268
        0x00000c1c:    4620         F      MOV      r0,r4
        0x00000c1e:    f7ffff69    ..i.    BL       QSPI_FlashBusy ; 0xaf4
        0x00000c22:    b128        (.      CBZ      r0,0xc30 ; QSPI_Write_ + 300
        0x00000c24:    4620         F      MOV      r0,r4
        0x00000c26:    bf00        ..      NOP      
        0x00000c28:    f7ffff64    ..d.    BL       QSPI_FlashBusy ; 0xaf4
        0x00000c2c:    2800        .(      CMP      r0,#0
        0x00000c2e:    d1f9        ..      BNE      0xc24 ; QSPI_Write_ + 288
        0x00000c30:    b007        ..      ADD      sp,sp,#0x1c
        0x00000c32:    e8bd85f0    ....    POP      {r4-r8,r10,pc}
        0x00000c36:    bf00        ..      NOP      
    QSPI_FIFOSpace
        0x00000c38:    b580        ..      PUSH     {r7,lr}
        0x00000c3a:    f000f8c7    ....    BL       QSPI_FIFOCount ; 0xdcc
        0x00000c3e:    f1c00010    ....    RSB      r0,r0,#0x10
        0x00000c42:    bd80        ..      POP      {r7,pc}
    QSPI_Read_
        0x00000c44:    e92d4df0    -..M    PUSH     {r4-r8,r10,r11,lr}
        0x00000c48:    b088        ..      SUB      sp,sp,#0x20
        0x00000c4a:    f10d0840    ..@.    ADD      r8,sp,#0x40
        0x00000c4e:    4605        .F      MOV      r5,r0
        0x00000c50:    e8980190    ....    LDM      r8,{r4,r7,r8}
        0x00000c54:    a801        ..      ADD      r0,sp,#4
        0x00000c56:    469b        .F      MOV      r11,r3
        0x00000c58:    468a        .F      MOV      r10,r1
        0x00000c5a:    4616        .F      MOV      r6,r2
        0x00000c5c:    f7fffe80    ....    BL       QSPI_CmdStructClear ; 0x960
        0x00000c60:    ea471004    G...    ORR      r0,r7,r4,LSL #4
        0x00000c64:    f2400c0c    @...    MOVW     r12,#0xc
        0x00000c68:    f1a00411    ....    SUB      r4,r0,#0x11
        0x00000c6c:    2c11        .,      CMP      r4,#0x11
        0x00000c6e:    f2c00c00    ....    MOVT     r12,#0
        0x00000c72:    d816        ..      BHI      0xca2 ; QSPI_Read_ + 94
        0x00000c74:    e8dff004    ....    TBB      [pc,r4]
    $d.1
        0x00000c78:    2e472509    .%G.    DCD    776414473
        0x00000c7c:    47474747    GGGG    DCD    1195853639
        0x00000c80:    47474747    GGGG    DCD    1195853639
        0x00000c84:    47474747    GGGG    DCD    1195853639
        0x00000c88:    3a47        G:      DCW    14919
    $t.2
        0x00000c8a:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000c8e:    210b        .!      MOVS     r1,#0xb
        0x00000c90:    2803        .(      CMP      r0,#3
        0x00000c92:    bf08        ..      IT       EQ
        0x00000c94:    210c        .!      MOVEQ    r1,#0xc
        0x00000c96:    2001        .       MOVS     r0,#1
        0x00000c98:    f04f0e00    O...    MOV      lr,#0
        0x00000c9c:    2308        .#      MOVS     r3,#8
        0x00000c9e:    2701        .'      MOVS     r7,#1
        0x00000ca0:    e031        1.      B        0xd06 ; QSPI_Read_ + 194
        0x00000ca2:    2844        D(      CMP      r0,#0x44
        0x00000ca4:    d12f        /.      BNE      0xd06 ; QSPI_Read_ + 194
        0x00000ca6:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000caa:    f06f0114    o...    MVN      r1,#0x14
        0x00000cae:    2803        .(      CMP      r0,#3
        0x00000cb0:    bf08        ..      IT       EQ
        0x00000cb2:    f06f0113    o...    MVNEQ    r1,#0x13
        0x00000cb6:    f04f0e03    O...    MOV      lr,#3
        0x00000cba:    2304        .#      MOVS     r3,#4
        0x00000cbc:    2003        .       MOVS     r0,#3
        0x00000cbe:    2703        .'      MOVS     r7,#3
        0x00000cc0:    e021        !.      B        0xd06 ; QSPI_Read_ + 194
        0x00000cc2:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000cc6:    213b        ;!      MOVS     r1,#0x3b
        0x00000cc8:    2803        .(      CMP      r0,#3
        0x00000cca:    bf08        ..      IT       EQ
        0x00000ccc:    213c        <!      MOVEQ    r1,#0x3c
        0x00000cce:    2701        .'      MOVS     r7,#1
        0x00000cd0:    2002        .       MOVS     r0,#2
        0x00000cd2:    e007        ..      B        0xce4 ; QSPI_Read_ + 160
        0x00000cd4:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000cd8:    216b        k!      MOVS     r1,#0x6b
        0x00000cda:    2803        .(      CMP      r0,#3
        0x00000cdc:    bf08        ..      IT       EQ
        0x00000cde:    216c        l!      MOVEQ    r1,#0x6c
        0x00000ce0:    2701        .'      MOVS     r7,#1
        0x00000ce2:    2003        .       MOVS     r0,#3
        0x00000ce4:    f04f0e00    O...    MOV      lr,#0
        0x00000ce8:    2308        .#      MOVS     r3,#8
        0x00000cea:    e00c        ..      B        0xd06 ; QSPI_Read_ + 194
        0x00000cec:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000cf0:    f06f0144    o.D.    MVN      r1,#0x44
        0x00000cf4:    2803        .(      CMP      r0,#3
        0x00000cf6:    bf08        ..      IT       EQ
        0x00000cf8:    f06f0143    o.C.    MVNEQ    r1,#0x43
        0x00000cfc:    f04f0e02    O...    MOV      lr,#2
        0x00000d00:    2300        .#      MOVS     r3,#0
        0x00000d02:    2002        .       MOVS     r0,#2
        0x00000d04:    2702        .'      MOVS     r7,#2
        0x00000d06:    f88d1004    ....    STRB     r1,[sp,#4]
        0x00000d0a:    f819100c    ....    LDRB     r1,[r9,r12]
        0x00000d0e:    2201        ."      MOVS     r2,#1
        0x00000d10:    f88d100d    ....    STRB     r1,[sp,#0xd]
        0x00000d14:    21ff        .!      MOVS     r1,#0xff
        0x00000d16:    f88d2005    ...     STRB     r2,[sp,#5]
        0x00000d1a:    2400        .$      MOVS     r4,#0
        0x00000d1c:    9104        ..      STR      r1,[sp,#0x10]
        0x00000d1e:    f88d0017    ....    STRB     r0,[sp,#0x17]
        0x00000d22:    aa01        ..      ADD      r2,sp,#4
        0x00000d24:    4628        (F      MOV      r0,r5
        0x00000d26:    2101        .!      MOVS     r1,#1
        0x00000d28:    f88d700c    ...p    STRB     r7,[sp,#0xc]
        0x00000d2c:    f8cda008    ....    STR      r10,[sp,#8]
        0x00000d30:    f88de014    ....    STRB     lr,[sp,#0x14]
        0x00000d34:    f88d4015    ...@    STRB     r4,[sp,#0x15]
        0x00000d38:    f88d3016    ...0    STRB     r3,[sp,#0x16]
        0x00000d3c:    f8cdb018    ....    STR      r11,[sp,#0x18]
        0x00000d40:    f7fffe18    ....    BL       QSPI_Command ; 0x974
        0x00000d44:    f1b80f00    ....    CMP      r8,#0
        0x00000d48:    d03c        <.      BEQ      0xdc4 ; QSPI_Read_ + 384
        0x00000d4a:    ebb40f9b    ....    CMP      r4,r11,LSR #2
        0x00000d4e:    d016        ..      BEQ      0xd7e ; QSPI_Read_ + 314
        0x00000d50:    ea4f079b    O...    LSR      r7,r11,#2
        0x00000d54:    2400        .$      MOVS     r4,#0
        0x00000d56:    e005        ..      B        0xd64 ; QSPI_Read_ + 288
        0x00000d58:    6a28        (j      LDR      r0,[r5,#0x20]
        0x00000d5a:    f8460024    F.$.    STR      r0,[r6,r4,LSL #2]
        0x00000d5e:    3401        .4      ADDS     r4,#1
        0x00000d60:    42bc        .B      CMP      r4,r7
        0x00000d62:    d00c        ..      BEQ      0xd7e ; QSPI_Read_ + 314
        0x00000d64:    4628        (F      MOV      r0,r5
        0x00000d66:    f000f831    ..1.    BL       QSPI_FIFOCount ; 0xdcc
        0x00000d6a:    2803        .(      CMP      r0,#3
        0x00000d6c:    d8f4        ..      BHI      0xd58 ; QSPI_Read_ + 276
        0x00000d6e:    bf00        ..      NOP      
        0x00000d70:    4628        (F      MOV      r0,r5
        0x00000d72:    bf00        ..      NOP      
        0x00000d74:    f000f82a    ..*.    BL       QSPI_FIFOCount ; 0xdcc
        0x00000d78:    2804        .(      CMP      r0,#4
        0x00000d7a:    d3f9        ..      BCC      0xd70 ; QSPI_Read_ + 300
        0x00000d7c:    e7ec        ..      B        0xd58 ; QSPI_Read_ + 276
        0x00000d7e:    ea5f708b    _..p    LSLS     r0,r11,#30
        0x00000d82:    d50f        ..      BPL      0xda4 ; QSPI_Read_ + 352
        0x00000d84:    4628        (F      MOV      r0,r5
        0x00000d86:    f02b0403    +...    BIC      r4,r11,#3
        0x00000d8a:    f000f81f    ....    BL       QSPI_FIFOCount ; 0xdcc
        0x00000d8e:    2801        .(      CMP      r0,#1
        0x00000d90:    d806        ..      BHI      0xda0 ; QSPI_Read_ + 348
        0x00000d92:    bf00        ..      NOP      
        0x00000d94:    4628        (F      MOV      r0,r5
        0x00000d96:    bf00        ..      NOP      
        0x00000d98:    f000f818    ....    BL       QSPI_FIFOCount ; 0xdcc
        0x00000d9c:    2802        .(      CMP      r0,#2
        0x00000d9e:    d3f9        ..      BCC      0xd94 ; QSPI_Read_ + 336
        0x00000da0:    8c28        (.      LDRH     r0,[r5,#0x20]
        0x00000da2:    5330        0S      STRH     r0,[r6,r4]
        0x00000da4:    ea5f70cb    _..p    LSLS     r0,r11,#31
        0x00000da8:    d00c        ..      BEQ      0xdc4 ; QSPI_Read_ + 384
        0x00000daa:    bf00        ..      NOP      
        0x00000dac:    4628        (F      MOV      r0,r5
        0x00000dae:    f000f80d    ....    BL       QSPI_FIFOCount ; 0xdcc
        0x00000db2:    b908        ..      CBNZ     r0,0xdb8 ; QSPI_Read_ + 372
        0x00000db4:    bf00        ..      NOP      
        0x00000db6:    e7f9        ..      B        0xdac ; QSPI_Read_ + 360
        0x00000db8:    f8950020    .. .    LDRB     r0,[r5,#0x20]
        0x00000dbc:    eb0b0106    ....    ADD      r1,r11,r6
        0x00000dc0:    f8010c01    ....    STRB     r0,[r1,#-1]
        0x00000dc4:    b008        ..      ADD      sp,sp,#0x20
        0x00000dc6:    e8bd8df0    ....    POP      {r4-r8,r10,r11,pc}
        0x00000dca:    bf00        ..      NOP      
    QSPI_FIFOCount
        0x00000dcc:    6880        .h      LDR      r0,[r0,#8]
        0x00000dce:    f3c02005    ...     UBFX     r0,r0,#8,#6
        0x00000dd2:    4770        pG      BX       lr
    QSPI_MemoryMap
        0x00000dd4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x00000dd6:    b081        ..      SUB      sp,sp,#4
        0x00000dd8:    4615        .F      MOV      r5,r2
        0x00000dda:    460e        .F      MOV      r6,r1
        0x00000ddc:    4604        .F      MOV      r4,r0
        0x00000dde:    bf00        ..      NOP      
        0x00000de0:    f7fffe84    ....    BL       QSPI_Busy ; 0xaec
        0x00000de4:    b110        ..      CBZ      r0,0xdec ; QSPI_MemoryMap + 24
        0x00000de6:    4620         F      MOV      r0,r4
        0x00000de8:    bf00        ..      NOP      
        0x00000dea:    e7f9        ..      B        0xde0 ; QSPI_MemoryMap + 12
        0x00000dec:    6c60        `l      LDR      r0,[r4,#0x44]
        0x00000dee:    f0400001    @...    ORR      r0,r0,#1
        0x00000df2:    6460        `d      STR      r0,[r4,#0x44]
        0x00000df4:    f2400004    @...    MOVW     r0,#4
        0x00000df8:    f2c00000    ....    MOVT     r0,#0
        0x00000dfc:    f8591000    Y...    LDR      r1,[r9,r0]
        0x00000e00:    b131        1.      CBZ      r1,0xe10 ; QSPI_MemoryMap + 60
        0x00000e02:    2100        .!      MOVS     r1,#0
        0x00000e04:    bf00        ..      NOP      
        0x00000e06:    f8592000    Y..     LDR      r2,[r9,r0]
        0x00000e0a:    3101        .1      ADDS     r1,#1
        0x00000e0c:    4291        .B      CMP      r1,r2
        0x00000e0e:    d3f9        ..      BCC      0xe04 ; QSPI_MemoryMap + 48
        0x00000e10:    ea451006    E...    ORR      r0,r5,r6,LSL #4
        0x00000e14:    f2400c0c    @...    MOVW     r12,#0xc
        0x00000e18:    f1a00211    ....    SUB      r2,r0,#0x11
        0x00000e1c:    2301        .#      MOVS     r3,#1
        0x00000e1e:    2a11        .*      CMP      r2,#0x11
        0x00000e20:    f04f0100    O...    MOV      r1,#0
        0x00000e24:    f2c00c00    ....    MOVT     r12,#0
        0x00000e28:    d81d        ..      BHI      0xe66 ; QSPI_MemoryMap + 146
        0x00000e2a:    2000        .       MOVS     r0,#0
        0x00000e2c:    2500        .%      MOVS     r5,#0
        0x00000e2e:    2600        .&      MOVS     r6,#0
        0x00000e30:    f04f0e00    O...    MOV      lr,#0
        0x00000e34:    e8dff002    ....    TBB      [pc,r2]
    $d.3
        0x00000e38:    3f5d3109    .1]?    DCD    1063072009
        0x00000e3c:    5d5d5d5d    ]]]]    DCD    1566399837
        0x00000e40:    5d5d5d5d    ]]]]    DCD    1566399837
        0x00000e44:    5d5d5d5d    ]]]]    DCD    1566399837
        0x00000e48:    4f5d        ]O      DCW    20317
    $t.4
        0x00000e4a:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000e4e:    210b        .!      MOVS     r1,#0xb
        0x00000e50:    2803        .(      CMP      r0,#3
        0x00000e52:    bf08        ..      IT       EQ
        0x00000e54:    210c        .!      MOVEQ    r1,#0xc
        0x00000e56:    f04f0e00    O...    MOV      lr,#0
        0x00000e5a:    2301        .#      MOVS     r3,#1
        0x00000e5c:    f44f1600    O...    MOV      r6,#0x200000
        0x00000e60:    f04f7580    O..u    MOV      r5,#0x1000000
        0x00000e64:    e034        4.      B        0xed0 ; QSPI_MemoryMap + 252
        0x00000e66:    2844        D(      CMP      r0,#0x44
        0x00000e68:    f04f0000    O...    MOV      r0,#0
        0x00000e6c:    f04f0500    O...    MOV      r5,#0
        0x00000e70:    f04f0600    O...    MOV      r6,#0
        0x00000e74:    f04f0e00    O...    MOV      lr,#0
        0x00000e78:    d13b        ;.      BNE      0xef2 ; QSPI_MemoryMap + 286
        0x00000e7a:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000e7e:    21eb        .!      MOVS     r1,#0xeb
        0x00000e80:    2803        .(      CMP      r0,#3
        0x00000e82:    bf08        ..      IT       EQ
        0x00000e84:    21ec        .!      MOVEQ    r1,#0xec
        0x00000e86:    f44f4e40    O.@N    MOV      lr,#0xc000
        0x00000e8a:    2300        .#      MOVS     r3,#0
        0x00000e8c:    f44f1680    O...    MOV      r6,#0x100000
        0x00000e90:    f04f7540    O.@u    MOV      r5,#0x3000000
        0x00000e94:    f44f6040    O.@`    MOV      r0,#0xc00
        0x00000e98:    e02b        +.      B        0xef2 ; QSPI_MemoryMap + 286
        0x00000e9a:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000e9e:    213b        ;!      MOVS     r1,#0x3b
        0x00000ea0:    2803        .(      CMP      r0,#3
        0x00000ea2:    bf08        ..      IT       EQ
        0x00000ea4:    213c        <!      MOVEQ    r1,#0x3c
        0x00000ea6:    f04f0e00    O...    MOV      lr,#0
        0x00000eaa:    2301        .#      MOVS     r3,#1
        0x00000eac:    f44f1600    O...    MOV      r6,#0x200000
        0x00000eb0:    f04f7500    O..u    MOV      r5,#0x2000000
        0x00000eb4:    e00c        ..      B        0xed0 ; QSPI_MemoryMap + 252
        0x00000eb6:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000eba:    216b        k!      MOVS     r1,#0x6b
        0x00000ebc:    f04f0e00    O...    MOV      lr,#0
        0x00000ec0:    2301        .#      MOVS     r3,#1
        0x00000ec2:    f44f1600    O...    MOV      r6,#0x200000
        0x00000ec6:    f04f7540    O.@u    MOV      r5,#0x3000000
        0x00000eca:    2803        .(      CMP      r0,#3
        0x00000ecc:    bf08        ..      IT       EQ
        0x00000ece:    216c        l!      MOVEQ    r1,#0x6c
        0x00000ed0:    f44f6080    O..`    MOV      r0,#0x400
        0x00000ed4:    e00d        ..      B        0xef2 ; QSPI_MemoryMap + 286
        0x00000ed6:    f819000c    ....    LDRB     r0,[r9,r12]
        0x00000eda:    21bb        .!      MOVS     r1,#0xbb
        0x00000edc:    2803        .(      CMP      r0,#3
        0x00000ede:    bf08        ..      IT       EQ
        0x00000ee0:    21bc        .!      MOVEQ    r1,#0xbc
        0x00000ee2:    f44f4e00    O..N    MOV      lr,#0x8000
        0x00000ee6:    2600        .&      MOVS     r6,#0
        0x00000ee8:    f04f7500    O..u    MOV      r5,#0x2000000
        0x00000eec:    f44f6000    O..`    MOV      r0,#0x800
        0x00000ef0:    2300        .#      MOVS     r3,#0
        0x00000ef2:    4308        .C      ORRS     r0,r0,r1
        0x00000ef4:    2b00        .+      CMP      r3,#0
        0x00000ef6:    bf04        ..      ITT      EQ
        0x00000ef8:    22ff        ."      MOVEQ    r2,#0xff
        0x00000efa:    61e2        .a      STREQ    r2,[r4,#0x1c]
        0x00000efc:    4328        (C      ORRS     r0,r0,r5
        0x00000efe:    f819200c    ...     LDRB     r2,[r9,r12]
        0x00000f02:    4330        0C      ORRS     r0,r0,r6
        0x00000f04:    ea40000e    @...    ORR      r0,r0,lr
        0x00000f08:    ea403002    @..0    ORR      r0,r0,r2,LSL #12
        0x00000f0c:    f0406040    @.@`    ORR      r0,r0,#0xc000000
        0x00000f10:    f4407080    @..p    ORR      r0,r0,#0x100
        0x00000f14:    6160        `a      STR      r0,[r4,#0x14]
        0x00000f16:    b001        ..      ADD      sp,sp,#4
        0x00000f18:    bdf0        ..      POP      {r4-r7,pc}
        0x00000f1a:    bf00        ..      NOP      
    QSPI_MemoryMapClose
        0x00000f1c:    b510        ..      PUSH     {r4,lr}
        0x00000f1e:    4604        .F      MOV      r4,r0
        0x00000f20:    f7fffde4    ....    BL       QSPI_Busy ; 0xaec
        0x00000f24:    b130        0.      CBZ      r0,0xf34 ; QSPI_MemoryMapClose + 24
        0x00000f26:    bf00        ..      NOP      
        0x00000f28:    4620         F      MOV      r0,r4
        0x00000f2a:    bf00        ..      NOP      
        0x00000f2c:    f7fffdde    ....    BL       QSPI_Busy ; 0xaec
        0x00000f30:    2800        .(      CMP      r0,#0
        0x00000f32:    d1f9        ..      BNE      0xf28 ; QSPI_MemoryMapClose + 12
        0x00000f34:    4620         F      MOV      r0,r4
        0x00000f36:    f7fffddd    ....    BL       QSPI_FlashBusy ; 0xaf4
        0x00000f3a:    bd10        ..      POP      {r4,pc}
    QSPI_ReadReg
        0x00000f3c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x00000f3e:    b089        ..      SUB      sp,sp,#0x24
        0x00000f40:    af02        ..      ADD      r7,sp,#8
        0x00000f42:    4605        .F      MOV      r5,r0
        0x00000f44:    4638        8F      MOV      r0,r7
        0x00000f46:    4614        .F      MOV      r4,r2
        0x00000f48:    460e        .F      MOV      r6,r1
        0x00000f4a:    f7fffd09    ....    BL       QSPI_CmdStructClear ; 0x960
        0x00000f4e:    2001        .       MOVS     r0,#1
        0x00000f50:    f88d0009    ....    STRB     r0,[sp,#9]
        0x00000f54:    f44f7080    O..p    MOV      r0,#0x100
        0x00000f58:    f88d6008    ...`    STRB     r6,[sp,#8]
        0x00000f5c:    2600        .&      MOVS     r6,#0
        0x00000f5e:    f8ad001a    ....    STRH     r0,[sp,#0x1a]
        0x00000f62:    4628        (F      MOV      r0,r5
        0x00000f64:    2101        .!      MOVS     r1,#1
        0x00000f66:    463a        :F      MOV      r2,r7
        0x00000f68:    f88d6010    ...`    STRB     r6,[sp,#0x10]
        0x00000f6c:    f88d6018    ...`    STRB     r6,[sp,#0x18]
        0x00000f70:    9407        ..      STR      r4,[sp,#0x1c]
        0x00000f72:    f7fffcff    ....    BL       QSPI_Command ; 0x974
        0x00000f76:    bf00        ..      NOP      
        0x00000f78:    4628        (F      MOV      r0,r5
        0x00000f7a:    f7ffff27    ..'.    BL       QSPI_FIFOCount ; 0xdcc
        0x00000f7e:    42a0        .B      CMP      r0,r4
        0x00000f80:    d201        ..      BCS      0xf86 ; QSPI_ReadReg + 74
        0x00000f82:    bf00        ..      NOP      
        0x00000f84:    e7f8        ..      B        0xf78 ; QSPI_ReadReg + 60
        0x00000f86:    9601        ..      STR      r6,[sp,#4]
        0x00000f88:    b13c        <.      CBZ      r4,0xf9a ; QSPI_ReadReg + 94
        0x00000f8a:    a801        ..      ADD      r0,sp,#4
        0x00000f8c:    3801        .8      SUBS     r0,#1
        0x00000f8e:    bf00        ..      NOP      
        0x00000f90:    f8951020    .. .    LDRB     r1,[r5,#0x20]
        0x00000f94:    5501        .U      STRB     r1,[r0,r4]
        0x00000f96:    3c01        .<      SUBS     r4,#1
        0x00000f98:    dcfa        ..      BGT      0xf90 ; QSPI_ReadReg + 84
        0x00000f9a:    9801        ..      LDR      r0,[sp,#4]
        0x00000f9c:    b009        ..      ADD      sp,sp,#0x24
        0x00000f9e:    bdf0        ..      POP      {r4-r7,pc}
    QSPI_QuadState
        0x00000fa0:    b580        ..      PUSH     {r7,lr}
        0x00000fa2:    2135        5!      MOVS     r1,#0x35
        0x00000fa4:    2201        ."      MOVS     r2,#1
        0x00000fa6:    f7ffffc9    ....    BL       QSPI_ReadReg ; 0xf3c
        0x00000faa:    f3c00040    ..@.    UBFX     r0,r0,#1,#1
        0x00000fae:    bd80        ..      POP      {r7,pc}
    QSPI_QuadSwitch
        0x00000fb0:    b570        p.      PUSH     {r4-r6,lr}
        0x00000fb2:    460d        .F      MOV      r5,r1
        0x00000fb4:    2135        5!      MOVS     r1,#0x35
        0x00000fb6:    2201        ."      MOVS     r2,#1
        0x00000fb8:    4604        .F      MOV      r4,r0
        0x00000fba:    f7ffffbf    ....    BL       QSPI_ReadReg ; 0xf3c
        0x00000fbe:    f00006fd    ....    AND      r6,r0,#0xfd
        0x00000fc2:    4620         F      MOV      r0,r4
        0x00000fc4:    2106        .!      MOVS     r1,#6
        0x00000fc6:    2200        ."      MOVS     r2,#0
        0x00000fc8:    2300        .#      MOVS     r3,#0
        0x00000fca:    2d00        .-      CMP      r5,#0
        0x00000fcc:    bf18        ..      IT       NE
        0x00000fce:    3602        .6      ADDNE    r6,#2
        0x00000fd0:    f7fffd54    ..T.    BL       QSPI_WriteReg ; 0xa7c
        0x00000fd4:    4620         F      MOV      r0,r4
        0x00000fd6:    2131        1!      MOVS     r1,#0x31
        0x00000fd8:    4632        2F      MOV      r2,r6
        0x00000fda:    2301        .#      MOVS     r3,#1
        0x00000fdc:    f7fffd4e    ..N.    BL       QSPI_WriteReg ; 0xa7c
        0x00000fe0:    4620         F      MOV      r0,r4
        0x00000fe2:    f7fffd87    ....    BL       QSPI_FlashBusy ; 0xaf4
        0x00000fe6:    2800        .(      CMP      r0,#0
        0x00000fe8:    bf08        ..      IT       EQ
        0x00000fea:    bd70        p.      POPEQ    {r4-r6,pc}
        0x00000fec:    4620         F      MOV      r0,r4
        0x00000fee:    bf00        ..      NOP      
        0x00000ff0:    f7fffd80    ....    BL       QSPI_FlashBusy ; 0xaf4
        0x00000ff4:    2800        .(      CMP      r0,#0
        0x00000ff6:    d1f9        ..      BNE      0xfec ; QSPI_QuadSwitch + 60
        0x00000ff8:    bd70        p.      POP      {r4-r6,pc}
        0x00000ffa:    bf00        ..      NOP      
    QSPI_INTEn
        0x00000ffc:    6802        .h      LDR      r2,[r0,#0]
        0x00000ffe:    ea424101    B..A    ORR      r1,r2,r1,LSL #16
        0x00001002:    6001        .`      STR      r1,[r0,#0]
        0x00001004:    4770        pG      BX       lr
        0x00001006:    bf00        ..      NOP      
    QSPI_INTDis
        0x00001008:    6802        .h      LDR      r2,[r0,#0]
        0x0000100a:    ea224101    "..A    BIC      r1,r2,r1,LSL #16
        0x0000100e:    6001        .`      STR      r1,[r0,#0]
        0x00001010:    4770        pG      BX       lr
        0x00001012:    bf00        ..      NOP      
    QSPI_INTClr
        0x00001014:    60c1        .`      STR      r1,[r0,#0xc]
        0x00001016:    4770        pG      BX       lr
    QSPI_INTStat
        0x00001018:    6880        .h      LDR      r0,[r0,#8]
        0x0000101a:    4008        .@      ANDS     r0,r0,r1
        0x0000101c:    4770        pG      BX       lr
        0x0000101e:    0000        ..      MOVS     r0,r0
    FLASH_Erase
        0x00001020:    0581        ..      LSLS     r1,r0,#22
        0x00001022:    bf1c        ..      ITT      NE
        0x00001024:    2002        .       MOVNE    r0,#2
        0x00001026:    4770        pG      BXNE     lr
        0x00001028:    b580        ..      PUSH     {r7,lr}
        0x0000102a:    f3ef8110    ....    MRS      r1,PRIMASK
        0x0000102e:    b672        r.      CPSID    i
        0x00001030:    f2404201    @..B    MOV      r2,#0x401
        0x00001034:    f64f71ac    O..q    MOV      r1,#0xffac
        0x00001038:    0a80        ..      LSRS     r0,r0,#10
        0x0000103a:    f6c03111    ...1    MOVT     r1,#0xb11
        0x0000103e:    f2c01200    ....    MOVT     r2,#0x100
        0x00001042:    4790        .G      BLX      r2
        0x00001044:    f000f804    ....    BL       FLASH_CacheClear ; 0x1050
        0x00001048:    2000        .       MOVS     r0,#0
        0x0000104a:    b662        b.      CPSIE    i
        0x0000104c:    bd80        ..      POP      {r7,pc}
        0x0000104e:    bf00        ..      NOP      
    FLASH_CacheClear
        0x00001050:    b580        ..      PUSH     {r7,lr}
        0x00001052:    f645000c    E...    MOV      r0,#0x580c
        0x00001056:    f2c40004    ....    MOVT     r0,#0x4004
        0x0000105a:    6800        .h      LDR      r0,[r0,#0]
        0x0000105c:    f64f71ac    O..q    MOV      r1,#0xffac
        0x00001060:    f2406221    @.!b    MOV      r2,#0x621
        0x00001064:    f0404000    @..@    ORR      r0,r0,#0x80000000
        0x00001068:    f6c03111    ...1    MOVT     r1,#0xb11
        0x0000106c:    f2c01200    ....    MOVT     r2,#0x100
        0x00001070:    4790        .G      BLX      r2
        0x00001072:    bd80        ..      POP      {r7,pc}
    FLASH_Write
        0x00001074:    f0000c0f    ....    AND      r12,r0,#0xf
        0x00001078:    f0020303    ....    AND      r3,r2,#3
        0x0000107c:    ea53030c    S...    ORRS     r3,r3,r12
        0x00001080:    bf1c        ..      ITT      NE
        0x00001082:    2002        .       MOVNE    r0,#2
        0x00001084:    4770        pG      BXNE     lr
        0x00001086:    b580        ..      PUSH     {r7,lr}
        0x00001088:    f3ef8310    ....    MRS      r3,PRIMASK
        0x0000108c:    b672        r.      CPSID    i
        0x0000108e:    f2404c81    @..L    MOV      r12,#0x481
        0x00001092:    f64f73ac    O..s    MOV      r3,#0xffac
        0x00001096:    0892        ..      LSRS     r2,r2,#2
        0x00001098:    f6c03311    ...3    MOVT     r3,#0xb11
        0x0000109c:    f2c01c00    ....    MOVT     r12,#0x100
        0x000010a0:    47e0        .G      BLX      r12
        0x000010a2:    f7ffffd5    ....    BL       FLASH_CacheClear ; 0x1050
        0x000010a6:    2000        .       MOVS     r0,#0
        0x000010a8:    b662        b.      CPSIE    i
        0x000010aa:    bd80        ..      POP      {r7,pc}
    Flash_Param_at_xMHz
        0x000010ac:    b570        p.      PUSH     {r4-r6,lr}
        0x000010ae:    f64f74ac    O..t    MOV      r4,#0xffac
        0x000010b2:    4605        .F      MOV      r5,r0
        0x000010b4:    f3ef8010    ....    MRS      r0,PRIMASK
        0x000010b8:    b672        r.      CPSID    i
        0x000010ba:    f6c03411    ...4    MOVT     r4,#0xb11
        0x000010be:    f2405661    @.aV    MOV      r6,#0x561
        0x000010c2:    2005        .       MOVS     r0,#5
        0x000010c4:    f2c01600    ....    MOVT     r6,#0x100
        0x000010c8:    4621        !F      MOV      r1,r4
        0x000010ca:    47b0        .G      BLX      r6
        0x000010cc:    f44f707a    O.zp    MOV      r0,#0x3e8
        0x000010d0:    fbb0f0f5    ....    UDIV     r0,r0,r5
        0x000010d4:    f2405221    @.!R    MOV      r2,#0x521
        0x000010d8:    f2c01200    ....    MOVT     r2,#0x100
        0x000010dc:    4621        !F      MOV      r1,r4
        0x000010de:    4790        .G      BLX      r2
        0x000010e0:    2d30        0-      CMP      r5,#0x30
        0x000010e2:    d201        ..      BCS      0x10e8 ; Flash_Param_at_xMHz + 60
        0x000010e4:    2000        .       MOVS     r0,#0
        0x000010e6:    e00e        ..      B        0x1106 ; Flash_Param_at_xMHz + 90
        0x000010e8:    2d4c        L-      CMP      r5,#0x4c
        0x000010ea:    d201        ..      BCS      0x10f0 ; Flash_Param_at_xMHz + 68
        0x000010ec:    2001        .       MOVS     r0,#1
        0x000010ee:    e00a        ..      B        0x1106 ; Flash_Param_at_xMHz + 90
        0x000010f0:    2d66        f-      CMP      r5,#0x66
        0x000010f2:    d201        ..      BCS      0x10f8 ; Flash_Param_at_xMHz + 76
        0x000010f4:    2002        .       MOVS     r0,#2
        0x000010f6:    e006        ..      B        0x1106 ; Flash_Param_at_xMHz + 90
        0x000010f8:    2d80        .-      CMP      r5,#0x80
        0x000010fa:    d201        ..      BCS      0x1100 ; Flash_Param_at_xMHz + 84
        0x000010fc:    2003        .       MOVS     r0,#3
        0x000010fe:    e002        ..      B        0x1106 ; Flash_Param_at_xMHz + 90
        0x00001100:    2d97        .-      CMP      r5,#0x97
        0x00001102:    d802        ..      BHI      0x110a ; Flash_Param_at_xMHz + 94
        0x00001104:    2004        .       MOVS     r0,#4
        0x00001106:    4621        !F      MOV      r1,r4
        0x00001108:    47b0        .G      BLX      r6
        0x0000110a:    b662        b.      CPSIE    i
        0x0000110c:    bd70        p.      POP      {r4-r6,pc}
        0x0000110e:    0000        ..      MOVS     r0,r0
    SystemCoreClockUpdate
        0x00001110:    f04f4280    O..B    MOV      r2,#0x40000000
        0x00001114:    6810        .h      LDR      r0,[r2,#0]
        0x00001116:    f2412100    A..!    MOVW     r1,#0x1200
        0x0000111a:    f2400c08    @...    MOVW     r12,#8
        0x0000111e:    07c0        ..      LSLS     r0,r0,#31
        0x00001120:    f2c0017a    ..z.    MOVT     r1,#0x7a
        0x00001124:    f2c00c00    ....    MOVT     r12,#0
        0x00001128:    d133        3.      BNE      0x1192 ; SystemCoreClockUpdate + 130
        0x0000112a:    6812        .h      LDR      r2,[r2,#0]
        0x0000112c:    f3c20382    ....    UBFX     r3,r2,#2,#3
        0x00001130:    2b04        .+      CMP      r3,#4
        0x00001132:    d826        &.      BHI      0x1182 ; SystemCoreClockUpdate + 114
        0x00001134:    f44f42fa    O..B    MOV      r2,#0x7d00
        0x00001138:    e8dff003    ....    TBB      [pc,r3]
    $d.1
        0x0000113c:    031f0521    !...    DCD    52364577
        0x00001140:    0003        ..      DCW    3
    $t.2
        0x00001142:    460a        .F      MOV      r2,r1
        0x00001144:    e01b        ..      B        0x117e ; SystemCoreClockUpdate + 110
        0x00001146:    f6450014    E...    MOV      r0,#0x5814
        0x0000114a:    f2c4000a    ....    MOVT     r0,#0x400a
        0x0000114e:    f8502c04    P..,    LDR      r2,[r0,#-4]
        0x00001152:    f849100c    I...    STR      r1,[r9,r12]
        0x00001156:    6802        .h      LDR      r2,[r0,#0]
        0x00001158:    6803        .h      LDR      r3,[r0,#0]
        0x0000115a:    f3c24202    ...B    UBFX     r2,r2,#16,#3
        0x0000115e:    f3c32305    ...#    UBFX     r3,r3,#8,#6
        0x00001162:    3201        .2      ADDS     r2,#1
        0x00001164:    6800        .h      LDR      r0,[r0,#0]
        0x00001166:    fbb1f1f2    ....    UDIV     r1,r1,r2
        0x0000116a:    f0000007    ....    AND      r0,r0,#7
        0x0000116e:    fb01f103    ....    MUL      r1,r1,r3
        0x00001172:    3001        .0      ADDS     r0,#1
        0x00001174:    fbb1f2f0    ....    UDIV     r2,r1,r0
        0x00001178:    e001        ..      B        0x117e ; SystemCoreClockUpdate + 110
        0x0000117a:    f44f4200    O..B    MOV      r2,#0x8000
        0x0000117e:    f849200c    I..     STR      r2,[r9,r12]
        0x00001182:    f04f4080    O..@    MOV      r0,#0x40000000
        0x00001186:    6800        .h      LDR      r0,[r0,#0]
        0x00001188:    0780        ..      LSLS     r0,r0,#30
        0x0000118a:    d504        ..      BPL      0x1196 ; SystemCoreClockUpdate + 134
        0x0000118c:    f859000c    Y...    LDR      r0,[r9,r12]
        0x00001190:    08c1        ..      LSRS     r1,r0,#3
        0x00001192:    f849100c    I...    STR      r1,[r9,r12]
        0x00001196:    f859000c    Y...    LDR      r0,[r9,r12]
        0x0000119a:    f64d6183    M..a    MOV      r1,#0xde83
        0x0000119e:    f2c4311b    ...1    MOVT     r1,#0x431b
        0x000011a2:    fba01201    ....    UMULL    r1,r2,r0,r1
        0x000011a6:    0c91        ..      LSRS     r1,r2,#18
        0x000011a8:    f2442240    D.@"    MOV      r2,#0x4240
        0x000011ac:    f2c0020f    ....    MOVT     r2,#0xf
        0x000011b0:    4290        .B      CMP      r0,r2
        0x000011b2:    bf38        8.      IT       CC
        0x000011b4:    2101        .!      MOVCC    r1,#1
        0x000011b6:    f2400004    @...    MOVW     r0,#4
        0x000011ba:    f2c00000    ....    MOVT     r0,#0
        0x000011be:    f8491000    I...    STR      r1,[r9,r0]
        0x000011c2:    4770        pG      BX       lr
    SystemInit
        0x000011c4:    b510        ..      PUSH     {r4,lr}
        0x000011c6:    b082        ..      SUB      sp,sp,#8
        0x000011c8:    200c        .       MOVS     r0,#0xc
        0x000011ca:    f2c40000    ....    MOVT     r0,#0x4000
        0x000011ce:    6801        .h      LDR      r1,[r0,#0]
        0x000011d0:    2400        .$      MOVS     r4,#0
        0x000011d2:    f4416180    A..a    ORR      r1,r1,#0x400
        0x000011d6:    6001        .`      STR      r1,[r0,#0]
        0x000011d8:    2000        .       MOVS     r0,#0
        0x000011da:    f000f83f    ..?.    BL       LDO_1V8_On ; 0x125c
        0x000011de:    2096        .       MOVS     r0,#0x96
        0x000011e0:    f7ffff64    ..d.    BL       Flash_Param_at_xMHz ; 0x10ac
        0x000011e4:    2000        .       MOVS     r0,#0
        0x000011e6:    2102        .!      MOVS     r1,#2
        0x000011e8:    221e        ."      MOVS     r2,#0x1e
        0x000011ea:    2302        .#      MOVS     r3,#2
        0x000011ec:    9400        ..      STR      r4,[sp,#0]
        0x000011ee:    f000f86b    ..k.    BL       switchToPLL ; 0x12c8
        0x000011f2:    f7ffff8d    ....    BL       SystemCoreClockUpdate ; 0x1110
        0x000011f6:    f2400004    @...    MOVW     r0,#4
        0x000011fa:    f2c00000    ....    MOVT     r0,#0
        0x000011fe:    f8590000    Y...    LDR      r0,[r9,r0]
        0x00001202:    f7ffff53    ..S.    BL       Flash_Param_at_xMHz ; 0x10ac
        0x00001206:    f645000c    E...    MOV      r0,#0x580c
        0x0000120a:    f2c40004    ....    MOVT     r0,#0x4004
        0x0000120e:    f240318c    @..1    MOVW     r1,#0x38c
        0x00001212:    f2c00100    ....    MOVT     r1,#0
        0x00001216:    6800        .h      LDR      r0,[r0,#0]
        0x00001218:    4479        yD      ADD      r1,r1,pc
        0x0000121a:    680a        .h      LDR      r2,[r1,#0]
        0x0000121c:    f0404000    @..@    ORR      r0,r0,#0x80000000
        0x00001220:    f64f71ac    O..q    MOV      r1,#0xffac
        0x00001224:    f0400001    @...    ORR      r0,r0,#1
        0x00001228:    f6c03111    ...1    MOVT     r1,#0xb11
        0x0000122c:    4790        .G      BLX      r2
        0x0000122e:    f2401010    @...    MOVW     r0,#0x110
        0x00001232:    f2c4000a    ....    MOVT     r0,#0x400a
        0x00001236:    f8d01110    ....    LDR      r1,[r0,#0x110]
        0x0000123a:    f0210120    !. .    BIC      r1,r1,#0x20
        0x0000123e:    f8c01110    ....    STR      r1,[r0,#0x110]
        0x00001242:    f8d01100    ....    LDR      r1,[r0,#0x100]
        0x00001246:    f4217180    !..q    BIC      r1,r1,#0x100
        0x0000124a:    f8c01100    ....    STR      r1,[r0,#0x100]
        0x0000124e:    6801        .h      LDR      r1,[r0,#0]
        0x00001250:    f42161c0    !..a    BIC      r1,r1,#0x600
        0x00001254:    6001        .`      STR      r1,[r0,#0]
        0x00001256:    b002        ..      ADD      sp,sp,#8
        0x00001258:    bd10        ..      POP      {r4,pc}
        0x0000125a:    bf00        ..      NOP      
    LDO_1V8_On
        0x0000125c:    210c        .!      MOVS     r1,#0xc
        0x0000125e:    f2c40100    ....    MOVT     r1,#0x4000
        0x00001262:    680a        .h      LDR      r2,[r1,#0]
        0x00001264:    2801        .(      CMP      r0,#1
        0x00001266:    f64300a8    C...    MOV      r0,#0x38a8
        0x0000126a:    f0420240    B.@.    ORR      r2,r2,#0x40
        0x0000126e:    f2c4000a    ....    MOVT     r0,#0x400a
        0x00001272:    600a        .`      STR      r2,[r1,#0]
        0x00001274:    d104        ..      BNE      0x1280 ; LDO_1V8_On + 36
        0x00001276:    6801        .h      LDR      r1,[r0,#0]
        0x00001278:    f0410101    A...    ORR      r1,r1,#1
        0x0000127c:    6001        .`      STR      r1,[r0,#0]
        0x0000127e:    e007        ..      B        0x1290 ; LDO_1V8_On + 52
        0x00001280:    f6450100    E...    MOVW     r1,#0x5800
        0x00001284:    f2c4010a    ....    MOVT     r1,#0x400a
        0x00001288:    680a        .h      LDR      r2,[r1,#0]
        0x0000128a:    f0420202    B...    ORR      r2,r2,#2
        0x0000128e:    600a        .`      STR      r2,[r1,#0]
        0x00001290:    f2400104    @...    MOVW     r1,#4
        0x00001294:    f2c00100    ....    MOVT     r1,#0
        0x00001298:    f8592001    Y..     LDR      r2,[r9,r1]
        0x0000129c:    2300        .#      MOVS     r3,#0
        0x0000129e:    eb020282    ....    ADD      r2,r2,r2,LSL #2
        0x000012a2:    ebb30f42    ..B.    CMP      r3,r2,LSL #1
        0x000012a6:    d00a        ..      BEQ      0x12be ; LDO_1V8_On + 98
        0x000012a8:    2200        ."      MOVS     r2,#0
        0x000012aa:    bf00        ..      NOP      
        0x000012ac:    bf00        ..      NOP      
        0x000012ae:    f8593001    Y..0    LDR      r3,[r9,r1]
        0x000012b2:    3201        .2      ADDS     r2,#1
        0x000012b4:    eb030383    ....    ADD      r3,r3,r3,LSL #2
        0x000012b8:    ebb20f43    ..C.    CMP      r2,r3,LSL #1
        0x000012bc:    d3f6        ..      BCC      0x12ac ; LDO_1V8_On + 80
        0x000012be:    6841        Ah      LDR      r1,[r0,#4]
        0x000012c0:    f0410120    A. .    ORR      r1,r1,#0x20
        0x000012c4:    6041        A`      STR      r1,[r0,#4]
        0x000012c6:    4770        pG      BX       lr
    switchToPLL
        0x000012c8:    e92d41f0    -..A    PUSH     {r4-r8,lr}
        0x000012cc:    f6450410    E...    MOV      r4,#0x5810
        0x000012d0:    4698        .F      MOV      r8,r3
        0x000012d2:    4615        .F      MOV      r5,r2
        0x000012d4:    460e        .F      MOV      r6,r1
        0x000012d6:    4607        .F      MOV      r7,r0
        0x000012d8:    f2c4040a    ....    MOVT     r4,#0x400a
        0x000012dc:    f000f864    ..d.    BL       switchTo8MHz ; 0x13a8
        0x000012e0:    b1c7        ..      CBZ      r7,0x1314 ; switchToPLL + 76
        0x000012e2:    2700        .'      MOVS     r7,#0
        0x000012e4:    f2c4070a    ....    MOVT     r7,#0x400a
        0x000012e8:    4638        8F      MOV      r0,r7
        0x000012ea:    2103        .!      MOVS     r1,#3
        0x000012ec:    2207        ."      MOVS     r2,#7
        0x000012ee:    2300        .#      MOVS     r3,#0
        0x000012f0:    f7fff990    ....    BL       PORT_Init ; 0x614
        0x000012f4:    4638        8F      MOV      r0,r7
        0x000012f6:    2104        .!      MOVS     r1,#4
        0x000012f8:    2207        ."      MOVS     r2,#7
        0x000012fa:    2300        .#      MOVS     r3,#0
        0x000012fc:    f7fff98a    ....    BL       PORT_Init ; 0x614
        0x00001300:    f8540c08    T...    LDR      r0,[r4,#-8]
        0x00001304:    f0400001    @...    ORR      r0,r0,#1
        0x00001308:    f8440c08    D...    STR      r0,[r4,#-8]
        0x0000130c:    6820         h      LDR      r0,[r4,#0]
        0x0000130e:    f0400002    @...    ORR      r0,r0,#2
        0x00001312:    e008        ..      B        0x1326 ; switchToPLL + 94
        0x00001314:    f8540c10    T...    LDR      r0,[r4,#-0x10]
        0x00001318:    f0400001    @...    ORR      r0,r0,#1
        0x0000131c:    f8440c10    D...    STR      r0,[r4,#-0x10]
        0x00001320:    6820         h      LDR      r0,[r4,#0]
        0x00001322:    f0200002     ...    BIC      r0,r0,#2
        0x00001326:    6020         `      STR      r0,[r4,#0]
        0x00001328:    6860        `h      LDR      r0,[r4,#4]
        0x0000132a:    f24c01f8    L...    MOV      r1,#0xc0f8
        0x0000132e:    f6cf71f8    ...q    MOVT     r1,#0xfff8
        0x00001332:    4008        .@      ANDS     r0,r0,r1
        0x00001334:    2100        .!      MOVS     r1,#0
        0x00001336:    f6cf71ff    ...q    MOVT     r1,#0xffff
        0x0000133a:    eb014106    ...A    ADD      r1,r1,r6,LSL #16
        0x0000133e:    6060        ``      STR      r0,[r4,#4]
        0x00001340:    ea412005    A..     ORR      r0,r1,r5,LSL #8
        0x00001344:    f1a80101    ....    SUB      r1,r8,#1
        0x00001348:    6862        bh      LDR      r2,[r4,#4]
        0x0000134a:    4308        .C      ORRS     r0,r0,r1
        0x0000134c:    4310        .C      ORRS     r0,r0,r2
        0x0000134e:    6060        ``      STR      r0,[r4,#4]
        0x00001350:    6820         h      LDR      r0,[r4,#0]
        0x00001352:    f0200004     ...    BIC      r0,r0,#4
        0x00001356:    6020         `      STR      r0,[r4,#0]
        0x00001358:    6821        !h      LDR      r1,[r4,#0]
        0x0000135a:    9806        ..      LDR      r0,[sp,#0x18]
        0x0000135c:    0709        ..      LSLS     r1,r1,#28
        0x0000135e:    d403        ..      BMI      0x1368 ; switchToPLL + 160
        0x00001360:    bf00        ..      NOP      
        0x00001362:    6821        !h      LDR      r1,[r4,#0]
        0x00001364:    0709        ..      LSLS     r1,r1,#28
        0x00001366:    d5fb        ..      BPL      0x1360 ; switchToPLL + 152
        0x00001368:    6821        !h      LDR      r1,[r4,#0]
        0x0000136a:    2201        ."      MOVS     r2,#1
        0x0000136c:    f0410101    A...    ORR      r1,r1,#1
        0x00001370:    6021        !`      STR      r1,[r4,#0]
        0x00001372:    2104        .!      MOVS     r1,#4
        0x00001374:    f2c40100    ....    MOVT     r1,#0x4000
        0x00001378:    600a        .`      STR      r2,[r1,#0]
        0x0000137a:    f04f4180    O..A    MOV      r1,#0x40000000
        0x0000137e:    680a        .h      LDR      r2,[r1,#0]
        0x00001380:    2800        .(      CMP      r0,#0
        0x00001382:    f022021c    "...    BIC      r2,r2,#0x1c
        0x00001386:    600a        .`      STR      r2,[r1,#0]
        0x00001388:    680a        .h      LDR      r2,[r1,#0]
        0x0000138a:    f0420204    B...    ORR      r2,r2,#4
        0x0000138e:    600a        .`      STR      r2,[r1,#0]
        0x00001390:    680a        .h      LDR      r2,[r1,#0]
        0x00001392:    f0220202    "...    BIC      r2,r2,#2
        0x00001396:    bf18        ..      IT       NE
        0x00001398:    3202        .2      ADDNE    r2,#2
        0x0000139a:    600a        .`      STR      r2,[r1,#0]
        0x0000139c:    6808        .h      LDR      r0,[r1,#0]
        0x0000139e:    f0200001     ...    BIC      r0,r0,#1
        0x000013a2:    6008        .`      STR      r0,[r1,#0]
        0x000013a4:    e8bd81f0    ....    POP      {r4-r8,pc}
    switchTo8MHz
        0x000013a8:    b580        ..      PUSH     {r7,lr}
        0x000013aa:    f6450000    E...    MOVW     r0,#0x5800
        0x000013ae:    f2c4000a    ....    MOVT     r0,#0x400a
        0x000013b2:    6801        .h      LDR      r1,[r0,#0]
        0x000013b4:    f0410101    A...    ORR      r1,r1,#1
        0x000013b8:    6001        .`      STR      r1,[r0,#0]
        0x000013ba:    f000f807    ....    BL       delay_3ms ; 0x13cc
        0x000013be:    f04f4080    O..@    MOV      r0,#0x40000000
        0x000013c2:    6801        .h      LDR      r1,[r0,#0]
        0x000013c4:    f0410101    A...    ORR      r1,r1,#1
        0x000013c8:    6001        .`      STR      r1,[r0,#0]
        0x000013ca:    bd80        ..      POP      {r7,pc}
    delay_3ms
        0x000013cc:    f04f4080    O..@    MOV      r0,#0x40000000
        0x000013d0:    6801        .h      LDR      r1,[r0,#0]
        0x000013d2:    07c9        ..      LSLS     r1,r1,#31
        0x000013d4:    d110        ..      BNE      0x13f8 ; delay_3ms + 44
        0x000013d6:    6800        .h      LDR      r0,[r0,#0]
        0x000013d8:    f0100f1c    ....    TST      r0,#0x1c
        0x000013dc:    d006        ..      BEQ      0x13ec ; delay_3ms + 32
        0x000013de:    f04f4080    O..@    MOV      r0,#0x40000000
        0x000013e2:    6800        .h      LDR      r0,[r0,#0]
        0x000013e4:    f000001c    ....    AND      r0,r0,#0x1c
        0x000013e8:    2808        .(      CMP      r0,#8
        0x000013ea:    d105        ..      BNE      0x13f8 ; delay_3ms + 44
        0x000013ec:    2014        .       MOVS     r0,#0x14
        0x000013ee:    bf00        ..      NOP      
        0x000013f0:    3801        .8      SUBS     r0,#1
        0x000013f2:    bf00        ..      NOP      
        0x000013f4:    d1fc        ..      BNE      0x13f0 ; delay_3ms + 36
        0x000013f6:    e004        ..      B        0x1402 ; delay_3ms + 54
        0x000013f8:    f6446020    D. `    MOV      r0,#0x4e20
        0x000013fc:    3801        .8      SUBS     r0,#1
        0x000013fe:    bf00        ..      NOP      
        0x00001400:    d1fc        ..      BNE      0x13fc ; delay_3ms + 48
        0x00001402:    4770        pG      BX       lr
    switchTo1MHz
        0x00001404:    b510        ..      PUSH     {r4,lr}
        0x00001406:    f7ffffcf    ....    BL       switchTo8MHz ; 0x13a8
        0x0000140a:    2004        .       MOVS     r0,#4
        0x0000140c:    f2c40000    ....    MOVT     r0,#0x4000
        0x00001410:    2101        .!      MOVS     r1,#1
        0x00001412:    6001        .`      STR      r1,[r0,#0]
        0x00001414:    f04f4480    O..D    MOV      r4,#0x40000000
        0x00001418:    6820         h      LDR      r0,[r4,#0]
        0x0000141a:    f020001c     ...    BIC      r0,r0,#0x1c
        0x0000141e:    6020         `      STR      r0,[r4,#0]
        0x00001420:    6820         h      LDR      r0,[r4,#0]
        0x00001422:    f0400010    @...    ORR      r0,r0,#0x10
        0x00001426:    6020         `      STR      r0,[r4,#0]
        0x00001428:    6820         h      LDR      r0,[r4,#0]
        0x0000142a:    f0400002    @...    ORR      r0,r0,#2
        0x0000142e:    6020         `      STR      r0,[r4,#0]
        0x00001430:    f7ffffcc    ....    BL       delay_3ms ; 0x13cc
        0x00001434:    6820         h      LDR      r0,[r4,#0]
        0x00001436:    f0200001     ...    BIC      r0,r0,#1
        0x0000143a:    6020         `      STR      r0,[r4,#0]
        0x0000143c:    bd10        ..      POP      {r4,pc}
        0x0000143e:    bf00        ..      NOP      
    switchToXTAL
        0x00001440:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x00001442:    4604        .F      MOV      r4,r0
        0x00001444:    f7ffffb0    ....    BL       switchTo8MHz ; 0x13a8
        0x00001448:    2500        .%      MOVS     r5,#0
        0x0000144a:    f2c4050a    ....    MOVT     r5,#0x400a
        0x0000144e:    4628        (F      MOV      r0,r5
        0x00001450:    2103        .!      MOVS     r1,#3
        0x00001452:    2207        ."      MOVS     r2,#7
        0x00001454:    2300        .#      MOVS     r3,#0
        0x00001456:    f7fff8dd    ....    BL       PORT_Init ; 0x614
        0x0000145a:    4628        (F      MOV      r0,r5
        0x0000145c:    2104        .!      MOVS     r1,#4
        0x0000145e:    2207        ."      MOVS     r2,#7
        0x00001460:    2300        .#      MOVS     r3,#0
        0x00001462:    f7fff8d7    ....    BL       PORT_Init ; 0x614
        0x00001466:    f6450008    E...    MOV      r0,#0x5808
        0x0000146a:    f2c4000a    ....    MOVT     r0,#0x400a
        0x0000146e:    6801        .h      LDR      r1,[r0,#0]
        0x00001470:    f04f4580    O..E    MOV      r5,#0x40000000
        0x00001474:    f0410101    A...    ORR      r1,r1,#1
        0x00001478:    6001        .`      STR      r1,[r0,#0]
        0x0000147a:    2004        .       MOVS     r0,#4
        0x0000147c:    f2c40000    ....    MOVT     r0,#0x4000
        0x00001480:    2101        .!      MOVS     r1,#1
        0x00001482:    6001        .`      STR      r1,[r0,#0]
        0x00001484:    6828        (h      LDR      r0,[r5,#0]
        0x00001486:    2c00        .,      CMP      r4,#0
        0x00001488:    f020001c     ...    BIC      r0,r0,#0x1c
        0x0000148c:    6028        (`      STR      r0,[r5,#0]
        0x0000148e:    6828        (h      LDR      r0,[r5,#0]
        0x00001490:    f040000c    @...    ORR      r0,r0,#0xc
        0x00001494:    6028        (`      STR      r0,[r5,#0]
        0x00001496:    6828        (h      LDR      r0,[r5,#0]
        0x00001498:    f0200002     ...    BIC      r0,r0,#2
        0x0000149c:    bf18        ..      IT       NE
        0x0000149e:    3002        .0      ADDNE    r0,#2
        0x000014a0:    6028        (`      STR      r0,[r5,#0]
        0x000014a2:    f7ffff93    ....    BL       delay_3ms ; 0x13cc
        0x000014a6:    6828        (h      LDR      r0,[r5,#0]
        0x000014a8:    f0200001     ...    BIC      r0,r0,#1
        0x000014ac:    6028        (`      STR      r0,[r5,#0]
        0x000014ae:    bdb0        ..      POP      {r4,r5,r7,pc}
    switchTo32KHz
        0x000014b0:    b510        ..      PUSH     {r4,lr}
        0x000014b2:    f7ffff79    ..y.    BL       switchTo8MHz ; 0x13a8
        0x000014b6:    f6450000    E...    MOVW     r0,#0x5800
        0x000014ba:    f2c4000a    ....    MOVT     r0,#0x400a
        0x000014be:    6801        .h      LDR      r1,[r0,#0]
        0x000014c0:    f04f4480    O..D    MOV      r4,#0x40000000
        0x000014c4:    f0410102    A...    ORR      r1,r1,#2
        0x000014c8:    6001        .`      STR      r1,[r0,#0]
        0x000014ca:    2004        .       MOVS     r0,#4
        0x000014cc:    f2c40000    ....    MOVT     r0,#0x4000
        0x000014d0:    2101        .!      MOVS     r1,#1
        0x000014d2:    6001        .`      STR      r1,[r0,#0]
        0x000014d4:    6820         h      LDR      r0,[r4,#0]
        0x000014d6:    f020001c     ...    BIC      r0,r0,#0x1c
        0x000014da:    6020         `      STR      r0,[r4,#0]
        0x000014dc:    6820         h      LDR      r0,[r4,#0]
        0x000014de:    6020         `      STR      r0,[r4,#0]
        0x000014e0:    6820         h      LDR      r0,[r4,#0]
        0x000014e2:    f0200002     ...    BIC      r0,r0,#2
        0x000014e6:    6020         `      STR      r0,[r4,#0]
        0x000014e8:    f7ffff70    ..p.    BL       delay_3ms ; 0x13cc
        0x000014ec:    6820         h      LDR      r0,[r4,#0]
        0x000014ee:    f0200001     ...    BIC      r0,r0,#1
        0x000014f2:    6020         `      STR      r0,[r4,#0]
        0x000014f4:    bd10        ..      POP      {r4,pc}
        0x000014f6:    bf00        ..      NOP      
    switchToXTAL_32K
        0x000014f8:    b510        ..      PUSH     {r4,lr}
        0x000014fa:    f7ffff55    ..U.    BL       switchTo8MHz ; 0x13a8
        0x000014fe:    240c        .$      MOVS     r4,#0xc
        0x00001500:    f2c40400    ....    MOVT     r4,#0x4000
        0x00001504:    6820         h      LDR      r0,[r4,#0]
        0x00001506:    f0400040    @.@.    ORR      r0,r0,#0x40
        0x0000150a:    6020         `      STR      r0,[r4,#0]
        0x0000150c:    f000f822    ..".    BL       RTC_unlock ; 0x1554
        0x00001510:    f64300a8    C...    MOV      r0,#0x38a8
        0x00001514:    f2c4000a    ....    MOVT     r0,#0x400a
        0x00001518:    6801        .h      LDR      r1,[r0,#0]
        0x0000151a:    f0410101    A...    ORR      r1,r1,#1
        0x0000151e:    6001        .`      STR      r1,[r0,#0]
        0x00001520:    f000f828    ..(.    BL       RTC_lock ; 0x1574
        0x00001524:    2001        .       MOVS     r0,#1
        0x00001526:    f8440c08    D...    STR      r0,[r4,#-8]
        0x0000152a:    f04f4480    O..D    MOV      r4,#0x40000000
        0x0000152e:    6820         h      LDR      r0,[r4,#0]
        0x00001530:    f020001c     ...    BIC      r0,r0,#0x1c
        0x00001534:    6020         `      STR      r0,[r4,#0]
        0x00001536:    6820         h      LDR      r0,[r4,#0]
        0x00001538:    f0400008    @...    ORR      r0,r0,#8
        0x0000153c:    6020         `      STR      r0,[r4,#0]
        0x0000153e:    6820         h      LDR      r0,[r4,#0]
        0x00001540:    f0200002     ...    BIC      r0,r0,#2
        0x00001544:    6020         `      STR      r0,[r4,#0]
        0x00001546:    f7ffff41    ..A.    BL       delay_3ms ; 0x13cc
        0x0000154a:    6820         h      LDR      r0,[r4,#0]
        0x0000154c:    f0200001     ...    BIC      r0,r0,#1
        0x00001550:    6020         `      STR      r0,[r4,#0]
        0x00001552:    bd10        ..      POP      {r4,pc}
    RTC_unlock
        0x00001554:    2030        0       MOVS     r0,#0x30
        0x00001556:    f2c40000    ....    MOVT     r0,#0x4000
        0x0000155a:    6801        .h      LDR      r1,[r0,#0]
        0x0000155c:    f0410102    A...    ORR      r1,r1,#2
        0x00001560:    6001        .`      STR      r1,[r0,#0]
        0x00001562:    f6430024    C.$.    MOV      r0,#0x3824
        0x00001566:    f2c4000a    ....    MOVT     r0,#0x400a
        0x0000156a:    21ca        .!      MOVS     r1,#0xca
        0x0000156c:    6001        .`      STR      r1,[r0,#0]
        0x0000156e:    2153        S!      MOVS     r1,#0x53
        0x00001570:    6001        .`      STR      r1,[r0,#0]
        0x00001572:    4770        pG      BX       lr
    RTC_lock
        0x00001574:    f6430024    C.$.    MOV      r0,#0x3824
        0x00001578:    f2c4000a    ....    MOVT     r0,#0x400a
        0x0000157c:    2100        .!      MOVS     r1,#0
        0x0000157e:    6001        .`      STR      r1,[r0,#0]
        0x00001580:    4770        pG      BX       lr
    $t
    .text
    __aeabi_memset
    __aeabi_memset4
    __aeabi_memset8
        0x00001582:    b2d2        ..      UXTB     r2,r2
        0x00001584:    e001        ..      B        0x158a ; __aeabi_memset + 8
        0x00001586:    f8002b01    ...+    STRB     r2,[r0],#1
        0x0000158a:    1e49        I.      SUBS     r1,r1,#1
        0x0000158c:    d2fb        ..      BCS      0x1586 ; __aeabi_memset + 4
        0x0000158e:    4770        pG      BX       lr
    __aeabi_memclr
    __aeabi_memclr4
    __aeabi_memclr8
        0x00001590:    2200        ."      MOVS     r2,#0
        0x00001592:    e7f6        ..      B        __aeabi_memset ; 0x1582
    _memset$wrapper
        0x00001594:    b510        ..      PUSH     {r4,lr}
        0x00001596:    4613        .F      MOV      r3,r2
        0x00001598:    460a        .F      MOV      r2,r1
        0x0000159a:    4604        .F      MOV      r4,r0
        0x0000159c:    4619        .F      MOV      r1,r3
        0x0000159e:    f7fffff0    ....    BL       __aeabi_memset ; 0x1582
        0x000015a2:    4620         F      MOV      r0,r4
        0x000015a4:    bd10        ..      POP      {r4,pc}
        0x000015a6:    0000        ..      MOVS     r0,r0
    $d.realdata
    IAP_Cache_Config
        0x000015a8:    01000621    !...    DCD    16778785
    IAP_Flash_Erase
        0x000015ac:    01000401    ....    DCD    16778241
    IAP_Flash_Param
        0x000015b0:    01000521    !...    DCD    16778529
    IAP_Flash_ParamTAC
        0x000015b4:    01000561    a...    DCD    16778593
    IAP_Flash_Write
        0x000015b8:    01000481    ....    DCD    16778369

** Section #2 'PrgData' (SHT_PROGBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 12 bytes (alignment 4)
    Address: 0x000015bc


** Section #3 'PrgData' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 4 bytes
    Address: 0x000015c8


** Section #4 'DevDscr' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 4256 bytes (alignment 4)
    Address: 0x000015c8

    $d.realdata
    FlashDevice
        0x000015c8:    57530101    ..SW    DCD    1465057537
        0x000015cc:    3033334d    M330    DCD    808661837
        0x000015d0:    50535120     QSP    DCD    1347637536
        0x000015d4:    4e203049    I0 N    DCD    1310732361
        0x000015d8:    00444e41    AND.    DCD    4476481
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
        0x00001634:    00000000    ....    DCD    0
        0x00001638:    00000000    ....    DCD    0
        0x0000163c:    00000000    ....    DCD    0
        0x00001640:    00000000    ....    DCD    0
        0x00001644:    00000000    ....    DCD    0
        0x00001648:    00010000    ....    DCD    65536
        0x0000164c:    70000000    ...p    DCD    1879048192
        0x00001650:    08000000    ....    DCD    134217728
        0x00001654:    00000800    ....    DCD    2048
        0x00001658:    00000000    ....    DCD    0
        0x0000165c:    000000ff    ....    DCD    255
        0x00001660:    000003e8    ....    DCD    1000
        0x00001664:    000007d0    ....    DCD    2000
        0x00001668:    00020000    ....    DCD    131072
        0x0000166c:    00000000    ....    DCD    0
        0x00001670:    ffffffff    ....    DCD    4294967295
        0x00001674:    ffffffff    ....    DCD    4294967295
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
        0x00002654:    00000000    ....    DCD    0
        0x00002658:    00000000    ....    DCD    0
        0x0000265c:    00000000    ....    DCD    0
        0x00002660:    00000000    ....    DCD    0
        0x00002664:    00000000    ....    DCD    0

** Section #5 '.debug_abbrev' (SHT_PROGBITS)
    Size   : 2680 bytes


** Section #6 '.debug_frame' (SHT_PROGBITS)
    Size   : 1820 bytes


** Section #7 '.debug_info' (SHT_PROGBITS)
    Size   : 12978 bytes


** Section #8 '.debug_line' (SHT_PROGBITS)
    Size   : 5838 bytes


** Section #9 '.debug_loc' (SHT_PROGBITS)
    Size   : 5199 bytes


** Section #10 '.debug_str' (SHT_PROGBITS)
    Size   : 7272 bytes


** Section #11 '.debug_ranges' (SHT_PROGBITS)
    Size   : 112 bytes


** Section #12 '.symtab' (SHT_SYMTAB)
    Size   : 1776 bytes (alignment 4)
    String table #13 '.strtab'
    Last local symbol no. 35


** Section #13 '.strtab' (SHT_STRTAB)
    Size   : 1508 bytes


** Section #14 '.note' (SHT_NOTE)
    Size   : 32 bytes (alignment 4)


** Section #15 '.comment' (SHT_PROGBITS)
    Size   : 1008 bytes


** Section #16 '.shstrtab' (SHT_STRTAB)
    Size   : 156 bytes


address     size       variable name                            type
0x000015c0  0x4        CyclesPerUs                              uint32_t

address     size       variable name                            type
0x000015c4  0x4        SystemCoreClock                          uint32_t

address     size       variable name                            type
0x000015a8  0x4        IAP_Cache_Config                         const IAP_Cache_Config_t

address     size       variable name                            type
0x000015ac  0x4        IAP_Flash_Erase                          const IAP_Flash_Erase_t

address     size       variable name                            type
0x000015b0  0x4        IAP_Flash_Param                          const IAP_Flash_Param_t

address     size       variable name                            type
0x000015b4  0x4        IAP_Flash_ParamTAC                       const IAP_Flash_Param_t

address     size       variable name                            type
0x000015b8  0x4        IAP_Flash_Write                          const IAP_Flash_Write_t

address     size       variable name                            type
0x000015c8  0x1        AddressSize                              uint8_t

address     size       variable name                            type
0x000015c8  0x10a0     FlashDevice                              const FlashDevice
0x000015c8  0x2        FlashDevice.Vers                         unsigned short
0x000015ca  0x80       FlashDevice.DevName                      array[128] of char
0x0000164a  0x2        FlashDevice.DevType                      unsigned short
0x0000164c  0x4        FlashDevice.DevAdr                       long unsigned int
0x00001650  0x4        FlashDevice.szDev                        long unsigned int
0x00001654  0x4        FlashDevice.szPage                       long unsigned int
0x00001658  0x4        FlashDevice.Res                          long unsigned int
0x0000165c  0x1      * FlashDevice.valEmpty                     unsigned char
0x00001660  0x4        FlashDevice.toProg                       long unsigned int
0x00001664  0x4        FlashDevice.toErase                      long unsigned int
0x00001668  0x1000     FlashDevice.sectors                      array[512] of FlashSectors

