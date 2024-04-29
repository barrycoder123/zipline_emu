00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lib' on 04/25/2024 16:50:47
00 DATABASE | Parms: '-client'
00 ET3LIB   |                                    
00 ET3LIB   |                              ET3 LIBRARY
00 ET3LIB   |                            RELEASE 6.0.2.6
00 ET3LIB   |                           VXE, VEngineering
00 ET3LIB   | (c) 1995-2020 Cadence Design Systems, Inc. All rights reserved worldwide.
00 ET3LIB   |            See files in <rootdir>/share/vxe/install/Copyrights
00 ET3LIB   |                                    
00 ET3LIB   | ET3lib created on Aug  3 2023 at 22:13:09.
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lib' (Elapsed time 0.00s (0.00u+0.00s), Memory used 4241 Mb) on 04/25/2024 16:50:47
00 DATABASE | Calling 'ldproto' on 04/25/2024 16:50:47
00 DATABASE | Parms: 'qt_modular -combined PARTITIONS -rename xcva_top'
Info: 174463 ffDB boxes have been restored
Info: 182512 ffDB nets have been restored
00 DATABASE | Return from 'ldproto' (Elapsed time 0.11s (0.09u+0.02s), Memory used 4241 Mb) on 04/25/2024 16:50:47
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3confg' on 04/25/2024 16:50:47
00 DATABASE | Parms: '-client xcva_top -reserve_epc 63 -compilerEffort 991010 -visionMode FV -num_cycles_per_capture_frame 32 -discard_proto_config'
00 ET3CONFG | THIS IS /lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/bin/64bit/xeCompile RUNNING.
00 ET3CONFG | Proto configuration has been discarded.
00 ET3CONFG | Reading configuration from ./dbFiles/xcva_top.et3confg
00 ET3CONFG |                       ET6 CONFIGURATION MANAGER
00 ET3CONFG |                                    
00 ET3CONFG |                            RELEASE 6.0.2.6
00 ET3CONFG |                           VXE, VEngineering
00 ET3CONFG |             Copyright(C) 1995-2021, Cadence Design Systems
00 ET3CONFG |                          All rights reserved
00 ET3CONFG |                                    
00 ET3CONFG | et6confg created on Aug  3 2023 at 22:13:09.
00 ET3CONFG | Reading configuration file "./dbFiles/xcva_top.et3confg"
00 ET3CONFG | --> USING LD8 CLUSTER TABLES
00 ET3CONFG | ***** MB/XB wire table initialization took 0.000220 seconds.
00 ET3CONFG | ***** Found 0000000  MBO->MBI  possible links in this configuration.
00 ET3CONFG | ***** HIGHEST board found in emulation configuration is 5
00 ET3CONFG | load_module_version()          = 30
00 ET3CONFG | num_cycles_per_capture_frame   = 32
00 ET3CONFG | das_protocol()                 = 5
00 ET3CONFG | COMPILED ON 04/25/2024 AT 16:50:47
00 ET3CONFG | +   1 BOARD ET6E
00 ET3CONFG | +   1 MEMORY_CARD_V1
00 ET3CONFG | +   1 MEMORY_CARD_V1  on BOARD 0
00 ET3CONFG | -   7 CHIPs
00 ET3CONFG |     8 installed chip(s)
00 ET3CONFG |     0 unused connectors out of 36 total
00 ET3CONFG | END of et6confg.........
00 ET3CONFG | BEDB loaded client et6confg
00 ET3CONFG | 
00 ET3CONFG |                            RELEASE 6.0.2.6
00 ET3CONFG |                           VXE, VEngineering
00 ET3CONFG |             Copyright(C) 1995-2021, Cadence Design Systems
00 ET3CONFG |                          All rights reserved
00 ET3CONFG | 
00 ET3CONFG | Shared library memutil created for ET6 on Aug  3 2023 at 22:13:09.
00 ET3CONFG | 
00 ET3CONFG | Running in little-endian mode
00 ET3CONFG | BEDB loaded client memutil
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/omlib' on 04/25/2024 16:50:47
00 DATABASE | Parms: ''
00 OMLIB    |                                    
00 OMLIB    |                           VXE, VEngineering
00 OMLIB    |             Copyright(C) 1995-2021, Cadence Design Systems
00 OMLIB    |                          All rights reserved
00 OMLIB    |                            RELEASE 6.0.2.6
00 OMLIB    |                                    
00 OMLIB    | omlib created on Aug  3 2023 at 22:05:33
00 OMLIB    | 
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/omlib' (Elapsed time 0.00s (0.00u+0.00s), Memory used 4241 Mb) on 04/25/2024 16:50:47
00 ET3CONFG |                                    
00 ET3CONFG |                           VXE, VEngineering
00 ET3CONFG |             Copyright(C) 1995-2021, Cadence Design Systems
00 ET3CONFG |                          All rights reserved
00 ET3CONFG |                              AP schedlib
00 ET3CONFG |                            RELEASE 6.0.2.6
00 ET3CONFG |                                    
00 ET3CONFG | SCschedlib created on Aug  3 2023 at 22:13:09
00 ET3CONFG | 
00 ET3CONFG | BEDB loaded client SCschedlib
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3confg' (Elapsed time 0.02s (0.01u+0.00s), Memory used 4241 Mb) on 04/25/2024 16:50:47
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6ctl' on 04/25/2024 16:50:47
00 DATABASE | Parms: '-ppcPhase2'
00 ET6CTL   | reading compOptions file
00 ET6CTL   | Number of valid option entries for module etctl = 0
00 ET6CTL   |                                    
00 ET6CTL   |                        ET6 CONTROL FILE READER
00 ET6CTL   |                            RELEASE 6.0.2.6
00 ET6CTL   |                           VXE, VEngineering
00 ET6CTL   |             Copyright(C) 1995-2021, Cadence Design Systems
00 ET6CTL   |                          All rights reserved
00 ET6CTL   |                                    
00 ET6CTL   | ET6CTL created on Aug  3 2023 at 22:13:10.
00 ET6CTL   | PARALLEL PHASE 2 COMPILATION
00 ET6CTL   | Reading "./dbFiles/xcva_top.ctl"
00 ET6CTL   | 
00 ET6CTL   | "xcva_top.iodelays": File not found
00 ET6CTL   | 
00 ET6CTL   | Reading "./dbFiles/xcva_top.ctl"
00 ET6CTL   | 
00 ET6CTL   | Handling ADC sync group section...
00 ET6CTL   | Handling I/O delay file...
00 ET6CTL   | "xcva_top.iodelays": File not found
00 ET6CTL   | 
00 ET6CTL   | Validating output sync group dependencies...
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6ctl' (Elapsed time 0.01s (0.00u+0.00s), Memory used 4241 Mb) on 04/25/2024 16:50:47
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5nlopt' on 04/25/2024 16:50:47
00 DATABASE | Parms: '-ppcPhase2 -min_post_merge_job -retiming ON'
00 ET5NLOPT |                                    
00 ET5NLOPT |                         ET5 NETLIST OPTIMIZER
00 ET5NLOPT |                            RELEASE 6.0.2.6
00 ET5NLOPT |                           VXE, VEngineering
00 ET5NLOPT |             Copyright(C) 1995-2021, Cadence Design Systems
00 ET5NLOPT |                          All rights reserved
00 ET5NLOPT |                                    
00 ET5NLOPT | et5nlopt created on Aug  3 2023 at 22:05:33.
00 ET5NLOPT | etutil library created on Aug  3 2023 at 22:05:33
00 ET5NLOPT | 
00 ET5NLOPT | Found configuration type ET6
00 ET5NLOPT | Optimization Effort is HIGH
00 ET5NLOPT | Number of valid option entries for module et5nlopt = 0
00 ET5NLOPT | System optimization effort = 10
00 ET5NLOPT | Acceleration sinks limit   = 1
00 ET5NLOPT | Backward compatible mode   = ON
00 ET5NLOPT | FAST mode                  = OFF
00 ET5NLOPT | Multipath mode             = OFF
00 ET5NLOPT | Propagation rounds         = 2
00 ET5NLOPT | Debug mode                 = OFF
00 ET5NLOPT | Mux Optimization           = ON
00 ET5NLOPT | Max Inputs                 = 4
00 ET5NLOPT | Push constant flops        = ON
00 ET5NLOPT | Optimize flops             = ON
00 ET5NLOPT | Do not optimize selfloop   = FALSE
00 ET5NLOPT | Early CBL mode             = ON
00 ET5NLOPT | CBL version                = 5
00 ET5NLOPT | CBL option                 = 2
00 ET5NLOPT | Retiming                   = ON
00 ET5NLOPT | Merge flop limit           = 0
00 ET5NLOPT | Logic merging              = ON
00 ET5NLOPT | SCBL rounds                = 0
00 ET5NLOPT | SCBL exe round             = 2
00 ET5NLOPT | SCBL max cuts              = 10
00 ET5NLOPT | SCBL merge logic           = OFF
00 ET5NLOPT | SCBL merge flop            = ON
00 ET5NLOPT | Max instruction usage      = 150%
00 ET5NLOPT | Max clken nets per chip    = 2147483647
00 ET5NLOPT | Min flops per clken net    = 0
00 ET5NLOPT | Reconnected 0 deep logic cones, created 0 boxes,
00 ET5NLOPT | deleted 0 boxes, optimized out cones 0
00 ET5NLOPT | Retiming is already done
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5nlopt' (Elapsed time 0.06s (0.06u+0.01s), Memory used 4241 Mb) on 04/25/2024 16:50:47
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/SCsched' on 04/25/2024 16:50:47
00 DATABASE | Parms: '-PPC -multithreadBoxSched'
00 SCSCHED  | Using DAS protocol 5
00 SCSCHED  |                                    
00 SCSCHED  |                           VXE, VEngineering
00 SCSCHED  |             Copyright(C) 1995-2021, Cadence Design Systems
00 SCSCHED  |                          All rights reserved
00 SCSCHED  |                            APOLLO SCHEDULER
00 SCSCHED  |                            RELEASE 6.0.2.6
00 SCSCHED  |                                    
00 SCSCHED  | SCSCHED created on Aug  3 2023 at 22:13:09
00 SCSCHED  | 
00 SCSCHED  | Scheduling begins at 16:50:47...
00 SCSCHED  | 
00 SCSCHED  | Number of valid option entries for module SCsched = 0
00 SCSCHED  | Number of valid option entries for module SCsched = 0
00 SCSCHED  | Number of gates per domain is 4000000.
00 SCSCHED  | Number of chips is 1.
00 SCSCHED  | Number of domains is 1.0.
00 SCSCHED  | PrecompileDesignSizeOriginal = 643304
00 SCSCHED  | Design utilization: 16.1.
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6loada' on 04/25/2024 16:50:47
00 DATABASE | Parms: ''
00 ET6LOADA |                                    
00 ET6LOADA |                           ET6 LOAD ANALYZER
00 ET6LOADA |                            RELEASE 6.0.2.6
00 ET6LOADA |                           VXE, VEngineering
00 ET6LOADA |             Copyright(C) 1995-2021, Cadence Design Systems
00 ET6LOADA |                          All rights reserved
00 ET6LOADA |                                    
00 ET6LOADA | ET6loada created on Aug  3 2023 at 22:13:09.
00 ET6LOADA |  
00 ET6LOADA | Detected architecture ET6
00 ET6LOADA |  
00 ET6LOADA | +========================================================+
00 ET6LOADA | |       ET LOAD ANALYZER LEGEND                          |
00 ET6LOADA | +========================================================+
00 ET6LOADA | |  eb[EB]       = emulation board                        |
00 ET6LOADA | |  ec[EB,EC]    = emulation chip                         |
00 ET6LOADA | |  ep[EB,EC,EP] = emulation processor                    |
00 ET6LOADA | |                                                        |
00 ET6LOADA | |  Where:                                                |
00 ET6LOADA | |  EB is the emulation board number                      |
00 ET6LOADA | |  EC is the emulation chip number                       |
00 ET6LOADA | |  EP is the emulation processor number                  |
00 ET6LOADA | |                                                        |
00 ET6LOADA | |  For example:                                          |
00 ET6LOADA | |  ep[ 1,5,252] denotes processor 252 on board 1,        |
00 ET6LOADA | |                        chip 5.                         |
00 ET6LOADA | |                                                        |
00 ET6LOADA | |  All numbers are displayed in decimal.                 |
00 ET6LOADA | +========================================================+
00 ET6LOADA |  
00 ET6LOADA | Average fan-out = 2.725717
00 ET6LOADA |  
00 ET6LOADA | Type                     Peak           Avg/Peak
00 ET6LOADA | Outputs per ec:          ec[  0,0]      Outputs=0/0
00 ET6LOADA | Weighted outputs per ec: ec[  0,0]      Outputs=0/0
00 ET6LOADA | Outputs per ep:          ep[  0,0,1184] Outputs=11/29
00 ET6LOADA | Weighted outputs per ep: ep[  0,0,1184] Outputs=11/29
00 ET6LOADA | Inputs per ec:           ec[  0,0]      Inputs= 0/0
00 ET6LOADA | Inputs per ep:           ep[  0,0,2360] Inputs= 19/36
00 ET6LOADA | dbis per chip:           ec[  0,0]      dbis=   250/250
00 ET6LOADA | dbos per chip:           ec[  0,0]      dbos=   321/321
00 ET6LOADA | xbos per chip:           ec[  0,0]      xbos=   1/1
00 ET6LOADA | Boxes per eb:            eb[  0]        Boxes=  188220/188220
00 ET6LOADA | Boxes per ec:            ec[  0,0]      Boxes=  188220/188220
00 ET6LOADA | Boxes per ep:            ep[  0,0,2984] Boxes=  61/80
00 ET6LOADA |                                         Peak from memory ports= 5
00 ET6LOADA | Adjusted boxes per ep:   ep[  0,0,1320] Boxes=  52/61
00 ET6LOADA | Adjusted instruction usage: 10.5%
00 ET6LOADA | The design requires at least 1 domain.
00 ET6LOADA |  
00 ET6LOADA |  
00 ET6LOADA |  
00 ET6LOADA | Total INTRAM Accesses: 419
00 ET6LOADA | Accesses per INTRAM:   4 / 8.7 / 33 (min/avg/max)
00 ET6LOADA |  
00 ET6LOADA | Total EXTRAM Accesses: 0
00 ET6LOADA | Accesses per EXTRAM:   0 / 0.0 / 0 (min/avg/max)
00 ET6LOADA |  
00 ET6LOADA |           Memory Accesses
00 ET6LOADA | eb  ec  RAM    word/assm/TCAM   banks
00 ET6LOADA |  0  0   i00     4 /  0 /  0     1   >   >   >   1   >   1   1 
00 ET6LOADA |         i01    11 /  0 /  0     1   >   >   >   1   1   1   7 
00 ET6LOADA |         i02    12 /  0 /  0     1   >   >   >   1   1   1   8 
00 ET6LOADA |         i03    12 /  0 /  0     1   >   >   >   1   1   1   8 
00 ET6LOADA |         i04    12 /  0 /  0     1   >   >   >   1   1   1   8 
00 ET6LOADA |         i05    10 /  0 /  0     1   >   >   >   1   1   1   6 
00 ET6LOADA |         i06    10 /  0 /  0     1   >   >   >   1   1   1   6 
00 ET6LOADA |         i07    12 /  0 /  0     1   >   >   >   1   1   1   8 
00 ET6LOADA |         i08     5 /  0 /  0     1   >   3   1   0   0   0   0 
00 ET6LOADA |         i09     6 /  0 /  0     1   >   2   2   1   0   0   0 
00 ET6LOADA |         i10     5 /  0 /  0     1   >   2   2   0   0   0   0 
00 ET6LOADA |         i11    33 /  0 /  0     1   >  32   0   0   0   0   0 
00 ET6LOADA |         i12     6 /  0 /  0     2   >   2   1   1   0   0   0 
00 ET6LOADA |         i13     6 /  0 /  0     1   3   2   0   0   0   0   0 
00 ET6LOADA |         i14     6 /  0 /  0     2   2   2   0   0   0   0   0 
00 ET6LOADA |         i15     6 /  0 /  0     3   2   1   0   0   0   0   0 
00 ET6LOADA |         i16     9 /  0 /  0     1   >   >   >   8   0   0   0 
00 ET6LOADA |         i17     6 /  0 /  0     1   >   >   >   2   2   1   0 
00 ET6LOADA |         i18     6 /  0 /  0     1   >   2   2   1   0   0   0 
00 ET6LOADA |         i19     6 /  0 /  0     1   >   2   3   0   0   0   0 
00 ET6LOADA |         i20     6 /  0 /  0     1   >   1   2   2   0   0   0 
00 ET6LOADA |         i21    33 /  0 /  0     1   >  32   0   0   0   0   0 
00 ET6LOADA |         i22     6 /  0 /  0     1   >   1   2   2   0   0   0 
00 ET6LOADA |         i23     7 /  0 /  0     1   1   2   2   1   0   0   0 
00 ET6LOADA |         i24     8 /  0 /  0     1   >   >   2   2   2   0   0 
00 ET6LOADA |         i25     7 /  0 /  0     1   >   1   1   2   2   0   0 
00 ET6LOADA |         i26     7 /  0 /  0     1   >   1   1   2   2   0   0 
00 ET6LOADA |         i27     7 /  0 /  0     1   >   1   1   2   2   0   0 
00 ET6LOADA |         i28     9 /  0 /  0     1   >   1   1   2   2   2   0 
00 ET6LOADA |         i29     9 /  0 /  0     1   >   1   1   2   2   2   0 
00 ET6LOADA |         i30     7 /  0 /  0     1   >   1   1   2   2   0   0 
00 ET6LOADA |         i31     9 /  0 /  0     1   >   1   3   2   2   0   0 
00 ET6LOADA |         i32     5 /  0 /  0     2   2   1   0   0   0   0   0 
00 ET6LOADA |         i33     4 /  0 /  0     2   2   0   0   0   0   0   0 
00 ET6LOADA |         i34     4 /  0 /  0     2   2   0   0   0   0   0   0 
00 ET6LOADA |         i35     5 /  0 /  0     2   3   0   0   0   0   0   0 
00 ET6LOADA |         i36     6 /  0 /  0     2   2   2   0   0   0   0   0 
00 ET6LOADA |         i37     5 /  0 /  0     2   2   1   0   0   0   0   0 
00 ET6LOADA |         i38     5 /  0 /  0     2   2   1   0   0   0   0   0 
00 ET6LOADA |         i39     5 /  0 /  0     2   2   1   0   0   0   0   0 
00 ET6LOADA |         i40     6 /  0 /  0     2   2   2   0   0   0   0   0 
00 ET6LOADA |         i41     6 /  0 /  0     2   2   2   0   0   0   0   0 
00 ET6LOADA |         i42     7 /  0 /  0     2   2   2   1   0   0   0   0 
00 ET6LOADA |         i43    18 /  0 /  0     2  16   0   0   0   0   0   0 
00 ET6LOADA |         i44     7 /  0 /  0     3   2   2   0   0   0   0   0 
00 ET6LOADA |         i45     7 /  0 /  0     3   2   1   1   0   0   0   0 
00 ET6LOADA |         i46     7 /  0 /  0     3   2   2   0   0   0   0   0 
00 ET6LOADA |         i47    24 /  0 /  0    24   0   0   0   0   0   0   0 
00 ET6LOADA |         x0      0 /  0          0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0 
00 ET6LOADA |  
00 ET6LOADA |  
00 ET6LOADA | Total ALU instructions: 0
00 ET6LOADA | Instructions per ALU:   0 / 0.0 / 0 (min/avg/max)
00 ET6LOADA |  
00 ET6LOADA | 0 seconds
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6loada' (Elapsed time 0.05s (0.12u+0.00s), Memory used 4241 Mb) on 04/25/2024 16:50:47
00 SCSCHED  |  
00 SCSCHED  | Boxes distribution by scheduling levels:
00 SCSCHED  | Level    168, boxes            1
00 SCSCHED  | Level    167, boxes            1
00 SCSCHED  | Level    166, boxes            1
00 SCSCHED  | Level    165, boxes            0
00 SCSCHED  | Level    164, boxes            0
00 SCSCHED  | Level    163, boxes            4
00 SCSCHED  | Level    162, boxes            7
00 SCSCHED  | Level    161, boxes            3
00 SCSCHED  | Level    160, boxes           20
00 SCSCHED  | Level    159, boxes           48
00 SCSCHED  | Level    158, boxes           57
00 SCSCHED  | Level    157, boxes           25
00 SCSCHED  | Level    156, boxes           12
00 SCSCHED  | Level    155, boxes            7
00 SCSCHED  | Level    154, boxes           21
00 SCSCHED  | Level    153, boxes           15
00 SCSCHED  | Level    152, boxes            9
00 SCSCHED  | Level    151, boxes           11
00 SCSCHED  | Level    150, boxes           12
00 SCSCHED  | Level    149, boxes           31
00 SCSCHED  | Level    148, boxes           89
00 SCSCHED  | Level    147, boxes          119
00 SCSCHED  | Level    146, boxes          125
00 SCSCHED  | Level    145, boxes          128
00 SCSCHED  | Level    144, boxes          231
00 SCSCHED  | Level    143, boxes          352
00 SCSCHED  | Level    142, boxes          408
00 SCSCHED  | Level    141, boxes          374
00 SCSCHED  | Level    140, boxes          336
00 SCSCHED  | Level    139, boxes          351
00 SCSCHED  | Level    138, boxes          363
00 SCSCHED  | Level    137, boxes          411
00 SCSCHED  | Level    136, boxes          467
00 SCSCHED  | Level    135, boxes          455
00 SCSCHED  | Level    134, boxes          374
00 SCSCHED  | Level    133, boxes          299
00 SCSCHED  | Level    132, boxes          248
00 SCSCHED  | Level    131, boxes          209
00 SCSCHED  | Level    130, boxes          223
00 SCSCHED  | Level    129, boxes          194
00 SCSCHED  | Level    128, boxes          170
00 SCSCHED  | Level    127, boxes          149
00 SCSCHED  | Level    126, boxes          147
00 SCSCHED  | Level    125, boxes          134
00 SCSCHED  | Level    124, boxes           97
00 SCSCHED  | Level    123, boxes           61
00 SCSCHED  | Level    122, boxes           38
00 SCSCHED  | Level    121, boxes           22
00 SCSCHED  | Level    120, boxes           16
00 SCSCHED  | Level    119, boxes            6
00 SCSCHED  | Level    118, boxes            4
00 SCSCHED  | Level    117, boxes            7
00 SCSCHED  | Level    116, boxes            4
00 SCSCHED  | Level    115, boxes           11
00 SCSCHED  | Level    114, boxes           23
00 SCSCHED  | Level    113, boxes           33
00 SCSCHED  | Level    112, boxes           22
00 SCSCHED  | Level    111, boxes            8
00 SCSCHED  | Level    110, boxes            4
00 SCSCHED  | Level    109, boxes            2
00 SCSCHED  | Level    108, boxes            1
00 SCSCHED  | Level    107, boxes            0
00 SCSCHED  | Level    106, boxes            0
00 SCSCHED  | Level    105, boxes            0
00 SCSCHED  | Level    104, boxes            0
00 SCSCHED  | Level    103, boxes            0
00 SCSCHED  | Level    102, boxes            1
00 SCSCHED  | Level    101, boxes            0
00 SCSCHED  | Level    100, boxes            0
00 SCSCHED  | Level     99, boxes            0
00 SCSCHED  | Level     98, boxes            0
00 SCSCHED  | Level     97, boxes            0
00 SCSCHED  | Level     96, boxes            0
00 SCSCHED  | Level     95, boxes            0
00 SCSCHED  | Level     94, boxes            0
00 SCSCHED  | Level     93, boxes            0
00 SCSCHED  | Level     92, boxes            0
00 SCSCHED  | Level     91, boxes            0
00 SCSCHED  | Level     90, boxes            0
00 SCSCHED  | Level     89, boxes            0
00 SCSCHED  | Level     88, boxes            3
00 SCSCHED  | Level     87, boxes            0
00 SCSCHED  | Level     86, boxes            0
00 SCSCHED  | Level     85, boxes            2
00 SCSCHED  | Level     84, boxes            0
00 SCSCHED  | Level     83, boxes            0
00 SCSCHED  | Level     82, boxes           10
00 SCSCHED  | Level     81, boxes            6
00 SCSCHED  | Level     80, boxes            0
00 SCSCHED  | Level     79, boxes            2
00 SCSCHED  | Level     78, boxes            0
00 SCSCHED  | Level     77, boxes            9
00 SCSCHED  | Level     76, boxes           24
00 SCSCHED  | Level     75, boxes           17
00 SCSCHED  | Level     74, boxes           50
00 SCSCHED  | Level     73, boxes           48
00 SCSCHED  | Level     72, boxes           13
00 SCSCHED  | Level     71, boxes           77
00 SCSCHED  | Level     70, boxes          140
00 SCSCHED  | Level     69, boxes          290
00 SCSCHED  | Level     68, boxes          108
00 SCSCHED  | Level     67, boxes          210
00 SCSCHED  | Level     66, boxes          124
00 SCSCHED  | Level     65, boxes          290
00 SCSCHED  | Level     64, boxes          130
00 SCSCHED  | Level     63, boxes          232
00 SCSCHED  | Level     62, boxes          149
00 SCSCHED  | Level     61, boxes          315
00 SCSCHED  | Level     60, boxes          140
00 SCSCHED  | Level     59, boxes          239
00 SCSCHED  | Level     58, boxes          110
00 SCSCHED  | Level     57, boxes          270
00 SCSCHED  | Level     56, boxes          124
00 SCSCHED  | Level     55, boxes          279
00 SCSCHED  | Level     54, boxes          167
00 SCSCHED  | Level     53, boxes          294
00 SCSCHED  | Level     52, boxes          156
00 SCSCHED  | Level     51, boxes          306
00 SCSCHED  | Level     50, boxes          234
00 SCSCHED  | Level     49, boxes          394
00 SCSCHED  | Level     48, boxes          261
00 SCSCHED  | Level     47, boxes          439
00 SCSCHED  | Level     46, boxes          416
00 SCSCHED  | Level     45, boxes          633
00 SCSCHED  | Level     44, boxes          407
00 SCSCHED  | Level     43, boxes          437
00 SCSCHED  | Level     42, boxes          354
00 SCSCHED  | Level     41, boxes          513
00 SCSCHED  | Level     40, boxes          526
00 SCSCHED  | Level     39, boxes          545
00 SCSCHED  | Level     38, boxes          592
00 SCSCHED  | Level     37, boxes          604
00 SCSCHED  | Level     36, boxes          619
00 SCSCHED  | Level     35, boxes          976
00 SCSCHED  | Level     34, boxes          940
00 SCSCHED  | Level     33, boxes         1321
00 SCSCHED  | Level     32, boxes         1214
00 SCSCHED  | Level     31, boxes         1153
00 SCSCHED  | Level     30, boxes         1180
00 SCSCHED  | Level     29, boxes          900
00 SCSCHED  | Level     28, boxes          704
00 SCSCHED  | Level     27, boxes          672
00 SCSCHED  | Level     26, boxes          650
00 SCSCHED  | Level     25, boxes         1029
00 SCSCHED  | Level     24, boxes         1888
00 SCSCHED  | Level     23, boxes         1913
00 SCSCHED  | Level     22, boxes         1288
00 SCSCHED  | Level     21, boxes         1376
00 SCSCHED  | Level     20, boxes         1859
00 SCSCHED  | Level     19, boxes         1668
00 SCSCHED  | Level     18, boxes         1956
00 SCSCHED  | Level     17, boxes         3429
00 SCSCHED  | Level     16, boxes         3314
00 SCSCHED  | Level     15, boxes         2503
00 SCSCHED  | Level     14, boxes         2671
00 SCSCHED  | Level     13, boxes         2215
00 SCSCHED  | Level     12, boxes         2094
00 SCSCHED  | Level     11, boxes         2734
00 SCSCHED  | Level     10, boxes         3486
00 SCSCHED  | Level      9, boxes         4219
00 SCSCHED  | Level      8, boxes         5312
00 SCSCHED  | Level      7, boxes         7059
00 SCSCHED  | Level      6, boxes         5615
00 SCSCHED  | Level      5, boxes         7251
00 SCSCHED  | Level      4, boxes         6805
00 SCSCHED  | Level      3, boxes        11061
00 SCSCHED  | Level      2, boxes        19297
00 SCSCHED  | Level      1, boxes        44401
00 SCSCHED  |  
00 SCSCHED  | Tail      27, boxes         2111
00 SCSCHED  | Mapped: 5512 5-input LUTs, 358 6-input LUTs, 0 others. Saved 5940
00 SCSCHED  |  
00 SCSCHED  | Options:
00 SCSCHED  |   min_steps                  0
00 SCSCHED  |   max_steps                  9999998
00 SCSCHED  |   num_critical_paths         1
00 SCSCHED  |  
00 SCSCHED  | Expert options:
00 SCSCHED  |   relocation                 yes
00 SCSCHED  |   extendedLUTs               yes
00 SCSCHED  |   indirection                yes
00 SCSCHED  |   extraLUT3                  yes
00 SCSCHED  |   compactFlops               yes
00 SCSCHED  |   flop relocation max util   80
00 SCSCHED  |   flop relocation            yes
00 SCSCHED  |   relocation restrict.factor 10
00 SCSCHED  |   DCC capture rate margin    90
00 SCSCHED  |   multithread                yes
00 SCSCHED  |   multithread relocation     less
00 SCSCHED  |   tailFraction               100
00 SCSCHED  |  
00 SCSCHED  | maxStep increased to 2 because of last SA buffer capture step on chip 0 on board 0
00 SCSCHED  | TIF_SYNC will reserve the entire slot 0 for its purpose
00 SCSCHED  | Generating 1 target test patterns 0xACE on all target output
00 SCSCHED  | 
00 SCSCHED  | box scheduling begins at 16:50:47...
00 SCSCHED  | estimated number of boxes 174462
00 SCSCHED  | 
00 SCSCHED  | 100000 placed.  max step 79  16:50:47  [360.00]
00 SCSCHED  | box scheduling ends at 16:50:47, max step 82
00 SCSCHED  | 
00 SCSCHED  | Relocated 913 logic boxes (0 between chips), 356 flops
00 SCSCHED  | Rescheduled in global scope 0 boxes
00 SCSCHED  | Unmapped 74 boxes
00 SCSCHED  | Compacted 25632 FD01 boxes
00 SCSCHED  | Chip two-hop tries 0, success 0
00 SCSCHED  | 
00 SCSCHED  | Found DBO_CAPTURE and used it to control SACB capturing.
00 SCSCHED  | Max DBO capture step = 2
00 SCSCHED  | Extra 0 step is inserted between max_DBO capture step and interrupt
00 SCSCHED  | SA DONE signal is routed to GP HCB 1
00 SCSCHED  | Routed to interrupt HCB at chip 0 (board 0, chip 0, ep 1933), at step 18 for signal 150814: xc_top._ET3_COMPILER_RESERVED_NAME_ORION_INTERRUPT_
00 SCSCHED  | Estimated IO probes = 9396, FF probes = 38351, DYNP probes = 240
00 SCSCHED  | extra probes per domain = 0
00 SCSCHED  | Trace control signals increase maxStep from 82 to 107
00 SCSCHED  | flops input routing begins at 16:50:47, max step 107...
00 SCSCHED  | 
00 SCSCHED  | flops input routing ends at 16:50:47, max step 107
00 SCSCHED  | 
00 SCSCHED  | data capturing begins at 16:50:47
00 SCSCHED  | 
00 SCSCHED  | 47683 nets to capture
00 SCSCHED  | Captured 64 qt_curr_emul_cycle nets in DCC 0
00 SCSCHED  | Captured 64 xc_top.simTime nets in DCC 0
00 SCSCHED  | set captured_nets_cycle_1 = 57344
00 SCSCHED  | set captured_nets_cycle_2_to_n = 14336
00 SCSCHED  | Trace depth = 4382592 cycles
00 SCSCHED  | Trace depth in DYNP mode = 4628197 cycles
00 SCSCHED  | Min step count due to probes is 84
00 SCSCHED  | building DCC_net table in et6confg
00 SCSCHED  | data capturing ends at 16:50:47, max step 107
00 SCSCHED  | Captured 47747 nets
00 SCSCHED  | used DCCs = 1, DCC utilization = 83%
00 SCSCHED  | 
00 SCSCHED  | scheduling complete
00 SCSCHED  | maximum step: 163.
00 SCSCHED  | step count: 164
00 SCSCHED  | 
00 SCSCHED  | 
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5analyzer' on 04/25/2024 16:50:47
00 DATABASE | Parms: '-num_paths 1 -from_scheduler'
00 ET5ANAL* |                                    
00 ET5ANAL* |                           VXE, VEngineering
00 ET5ANAL* |             Copyright(C) 1995-2021, Cadence Design Systems
00 ET5ANAL* |                          All rights reserved
00 ET5ANAL* |                      ET5 Post-Scheduler Analyzer
00 ET5ANAL* |                            RELEASE 6.0.2.6
00 ET5ANAL* |                                    
00 ET5ANAL* | et5analyzer created on Aug  3 2023 at 22:05:33
00 ET5ANAL* | 
00 ET5ANAL* | Memory placement and schedule details are written to xcva_top.memschedule
00 ET5ANAL* | ***********************
00 ET5ANAL* | Critical paths analysis
00 ET5ANAL* | ***********************
00 ET5ANAL* | Instructions per cycle: 164
00 ET5ANAL* | Post-scheduling critical path
00 ET5ANAL* | 
00 ET5ANAL* |   Location legend:  All values are in decimal.
00 ET5ANAL* |   [brd,chp,cls,ep]
00 ET5ANAL* |     |   |   |   |
00 ET5ANAL* |     |   |   |   +-- emulation processor index within the cluster
00 ET5ANAL* |     |   |   +------ processor cluster index within chip
00 ET5ANAL* |     |   +---------- chip index within board
00 ET5ANAL* |     +-------------- board index
00 ET5ANAL* | 
00 ET5ANAL* | 
00 ET5ANAL* | Critical paths by levels
00 ET5ANAL* | 
00 ET5ANAL* | Critical path  1                                      sinks
00 ET5ANAL* | Count  Location      Step  Jump  Level  Type    ID     ins:cr      Name
00 ET5ANAL* | --------------------------------------------------------------------------------------
00 ET5ANAL* | Breakpoint 68198 will add 101 steps after it is scheduled.
00 ET5ANAL* | Critical net starts from an actual critical location.
00 ET5ANAL* |    . [000,000,209,6]   63 +   0         NET      98230      0  ET6_SYNC.QTLA%break_0
00 ET5ANAL* |    1 [000,000,209,6]   63 +   0    102  XBOB     68198   2: 1  ET6_XBOB_141
00 ET5ANAL* |    . [000,000,209,0]   62 +   1         NET      98231      1  QTLA%break
00 ET5ANAL* |    2 [000,000,233,1]   59 +   3    108  LOGIC    82517   2: 2  
00 ET5ANAL* |    . [000,000,233,0]   59 +   0         NET      97781      1  _ET3_COMPILER_RESERVED_NAME_COMBINED_BREAK_
00 ET5ANAL* |    3 [000,000,233,0]   59 +   0    109  LOGIC    85486   1: 1  
00 ET5ANAL* |    . [000,000,233,3]   58 +   1         NET      98261      2  _ET3_COMPILER_RESERVED_NAME_SDL_BREAK_
00 ET5ANAL* |    4 [000,000,233,3]   58 +   0    110  LOGIC    82516   4: 1  
00 ET5ANAL* |    . [000,000,233,0]   50 +   8         NET      98451      2  QTLA%SDL.top.run_stop_ctl.sa_infini_break
00 ET5ANAL* |    5 [000,000,128,0]   45 +   5    116  LOGIC    82124   4: 4  
00 ET5ANAL* |    . [000,000,128,0]   44 +   1         NET      88902      1  _ABbEP
00 ET5ANAL* |    6 [000,000,141,0]   41 +   3    120  LOGIC    82123   4: 1  
00 ET5ANAL* |    . [000,000,141,0]   40 +   1         NET      88903      1  
00 ET5ANAL* |    7 [000,000,146,1]   37 +   3    124  LOGIC    85230   3: 3  
00 ET5ANAL* |    . [000,000,146,0]   37 +   0         NET      89443      1  _ABcaa$inv5309
00 ET5ANAL* |    8 [000,000,146,0]   37 +   0    125  LOGIC    81529   4: 1  
00 ET5ANAL* |    . [000,000,146,0]   36 +   1         NET      89444      1  _ABbEl$inv5308
00 ET5ANAL* |    9 [000,000,162,5]   33 +   3    129  LOGIC    81528   4: 4  
00 ET5ANAL* |    . [000,000,162,0]   32 +   1         NET      89590      2  _ABbEq
00 ET5ANAL* |   10 [000,000,146,3]   29 +   3    133  LOGIC    81386   4: 3  
00 ET5ANAL* |    . [000,000,146,3]   28 +   1         NET      89653      2  _ABbIG
00 ET5ANAL* |   11 [000,000,146,3]   28 +   0    134  LOGIC    81325   3: 2  
00 ET5ANAL* |    . [000,000,146,2]   28 +   0         NET      89679      2  _ABbIR
00 ET5ANAL* |   12 [000,000,146,2]   28 +   0    135  LOGIC    81300   3: 2  
00 ET5ANAL* |    . [000,000,146,1]   28 +   0         NET      89692      2  _ABbIS
00 ET5ANAL* |   13 [000,000,146,1]   28 +   0    136  LOGIC    81287   4: 4  
00 ET5ANAL* |    . [000,000,146,0]   28 +   0         NET     117609      4  QTLA%cycle_num_shadow[30]
00 ET5ANAL* |   14 [000,000,146,0]   28 +   0    137  LOGIC    85580   1: 1  
00 ET5ANAL* |    . [000,000,144,0]   26 +   2         NET     100841     11  xc_top.simTime[30]
00 ET5ANAL* |   15 [000,000,144,0]   26 +   0    139  LOGIC    81278   3: 3  
00 ET5ANAL* |    . [000,000,144,0]   25 +   1         NET      89702      1  _AAAB[57976]
00 ET5ANAL* |   16 [000,000,164,2]   22 +   3    143  LOGIC    81277   3: 1  
00 ET5ANAL* |    . [000,000,164,1]   22 +   0         NET      89703      1  _AAAB[57977]$inv5254
00 ET5ANAL* |   17 [000,000,164,1]   22 +   0    144  LOGIC    81276   4: 2  
00 ET5ANAL* |    . [000,000,164,0]   22 +   0         NET      90605      1  
00 ET5ANAL* |   18 [000,000,164,0]   22 +   0    145  LOGIC    79943   4: 3  
00 ET5ANAL* |    . [000,000,166,0]   20 +   2         NET     148611    128  _AAAB[57899]
00 ET5ANAL* |   19 [000,000,144,0]   17 +   3    149  LOGIC    23876   4: 2  
00 ET5ANAL* |    . [000,000,144,2]   16 +   1         NET     147030     12  _AAAB[54821]$inv496
00 ET5ANAL* |   20 [000,000,218,1]   11 +   5    155  LOGIC    23874   4: 2  
00 ET5ANAL* |    . [000,000,218,0]   11 +   0         NET     147031      2  xc_top.callEmuPI
00 ET5ANAL* |   21 [000,000,218,0]   11 +   0    156  LOGIC    46139   1: 1  
00 ET5ANAL* |    . [000,000,218,0]   10 +   1         NET     150812      2  UA@.xc_top.callEmuPI
00 ET5ANAL* |   22 [000,000,197,3]    7 +   3    157  LOGIC    21608   3: 3  
00 ET5ANAL* |    . [000,000,197,2]    7 +   0         NET     100753    249  
00 ET5ANAL* |   23 [000,000,197,2]    7 +   0    161  LOGIC    80642   2: 2  
00 ET5ANAL* |    . [000,000,197,0]    7 +   0         NET     100534      2  
00 ET5ANAL* |   24 [000,000,197,0]    7 +   0    162  LOGIC    84104   4: 4  
00 ET5ANAL* |    . [000,000,197,0]    6 +   1         NET     100538      2  DBI_APPLY
00 ET5ANAL* |   25 [000,000,128,0]    0 +   6    168  DBIB     68197   0: 0  ET6_DBIB_0_0_0
00 ET5ANAL* | ======================================================================================
00 ET5ANAL* | 
00 ET5ANAL* | Critical paths by steps
00 ET5ANAL* | 
00 ET5ANAL* | Critical path  1                               sinks
00 ET5ANAL* | Count  Location      Step  Jump  Type    ID     ins:cr      Name
00 ET5ANAL* | --------------------------------------------------------------------------------------
00 ET5ANAL* | Breakpoint 68198 will add 101 steps after it is scheduled.
00 ET5ANAL* | Critical net starts from an actual critical location.
00 ET5ANAL* |    . [000,000,209,6]   63 +   0  NET      98230      0  ET6_SYNC.QTLA%break_0
00 ET5ANAL* |    1 [000,000,209,6]   63 +   0  XBOB     68198   2: 1  ET6_XBOB_141
00 ET5ANAL* |    . [000,000,209,0]   62 +   1  NET      98231      1  QTLA%break
00 ET5ANAL* |    2 [000,000,233,1]   59 +   3  LOGIC    82517   2: 2  
00 ET5ANAL* |    . [000,000,233,0]   59 +   0  NET      97781      1  _ET3_COMPILER_RESERVED_NAME_COMBINED_BREAK_
00 ET5ANAL* |    3 [000,000,233,0]   59 +   0  LOGIC    85486   1: 1  
00 ET5ANAL* |    . [000,000,233,3]   58 +   1  NET      98261      2  _ET3_COMPILER_RESERVED_NAME_SDL_BREAK_
00 ET5ANAL* |    4 [000,000,233,3]   58 +   0  LOGIC    82516   4: 4  
00 ET5ANAL* |    . [000,000,233,2]   58 +   0  NET      88592      1  
00 ET5ANAL* |    5 [000,000,233,2]   58 +   0  LOGIC    82515   4: 1  
00 ET5ANAL* |    . [000,000,233,4]   58 +   0  NET      88593      1  _ABbwg$inv5462
00 ET5ANAL* |    6 [000,000,233,4]   58 +   0  LOGIC    82514   4: 3  
00 ET5ANAL* |    . [000,000,233,0]   57 +   1  NET     118119     12  QTLA%SDL.top.run_stop_ctl.stop_request
00 ET5ANAL* |    7 [000,000,223,1]   54 +   3  LOGIC    82209   4: 3  
00 ET5ANAL* |    . [000,000,223,0]   54 +   0  NET     117154      3  QTLA%SDL.top.run_stop_ctl.stop_request_sum
00 ET5ANAL* |    8 [000,000,223,0]   54 +   0  LOGIC    82206   3: 2  
00 ET5ANAL* |    . [000,000,223,3]   53 +   1  NET      88772      2  QTLA%SDL.top.run_stop_ctl.stop_on_trigger
00 ET5ANAL* |    9 [000,000,223,3]   53 +   0  LOGIC    82203   3: 1  
00 ET5ANAL* |    . [000,000,223,2]   53 +   0  NET     118123     67  QTLA%SDL.top.run_stop_ctl.latched_trigger
00 ET5ANAL* |   10 [000,000,223,2]   53 +   0  LOGIC    82143   4: 4  
00 ET5ANAL* |    . [000,000,223,1]   53 +   0  NET      88891      1  _ABbwN
00 ET5ANAL* |   11 [000,000,223,1]   53 +   0  LOGIC    82142   4: 3  
00 ET5ANAL* |    . [000,000,223,0]   53 +   0  NET      96385      1  QTLA%SDL.top.trigger_sum
00 ET5ANAL* |   12 [000,000,223,0]   53 +   0  LOGIC    70166   4: 3  
00 ET5ANAL* |    . [000,000,223,0]   52 +   1  NET      96387      2  QTLA%SDL.top.tsm_0.lut_trigger
00 ET5ANAL* |   13 [000,000,235,0]   49 +   3  LOGIC    91163   1: 1  
00 ET5ANAL* |    . [000,000,235,0]   48 +   1  NET      62008      1  _ABfoH
00 ET5ANAL* |   14 [000,000,000,0]   35 +  13  XMPRe   173916  18:14  ET5_V1_H1.QTLA%SDL.top.tsm_0.main_instr.tsm_lut_OPT
00 ET5ANAL* |    . [000,000,130,0]   34 +   1  NET      67032      7  QTLA%SDL.top.tsm_0.conditions[1]
00 ET5ANAL* |   15 [000,000,007,0]   29 +   5  LOGIC   109560   4: 2  
00 ET5ANAL* |    . [000,000,007,0]   28 +   1  NET      54681      1  _ABeaU$inv6082
00 ET5ANAL* |   16 [000,000,129,0]   23 +   5  LOGIC   109529   4: 3  
00 ET5ANAL* |    . [000,000,129,0]   18 +   5  NET      54934      1  _ABeYu$inv5959
00 ET5ANAL* |   17 [000,000,129,0]   18 +   0  LOGIC   109270   4: 3  
00 ET5ANAL* |    . [000,000,129,7]   17 +   1  NET      67395      1  QTLA%SDL.top.tsm_0.cond.ev1.B[58]
00 ET5ANAL* |   18 [000,000,129,7]   17 +   0  FD01    105674   4: 0  
00 ET5ANAL* | --------------------------------------------------------------------------------------
00 ET5ANAL* | Maximum jump of 13 steps occurs at step 35
00 ET5ANAL* | 0 inter-chip hops, 0 steps inter-chip delay
00 ET5ANAL* | ======================================================================================
00 ET5ANAL* | End of critical path
00 ET5ANAL* | 
00 ET5ANAL* | 
00 ET5ANAL* | 
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5analyzer' (Elapsed time 0.01s (0.06u+0.00s), Memory used 4241 Mb) on 04/25/2024 16:50:47
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/SCsched' (Elapsed time 0.58s (0.74u+0.02s), Memory used 4241 Mb) on 04/25/2024 16:50:47
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6xtime' on 04/25/2024 16:50:47
00 DATABASE | Parms: ''
00 ET6XTIME |                                    
00 ET6XTIME |                ET6 EXTERNAL TIMING ANALYZER AND BITGEN
00 ET6XTIME |                            RELEASE 6.0.2.6
00 ET6XTIME |                                    
00 ET6XTIME | et6xtime created on Aug  3 2023 at 22:13:09.
00 ET6XTIME | found breakpoint at ep 1678 box 68198 signal QTLA%break
00 ET6XTIME | There are no targets defined in the design
00 ET6XTIME | 
00 ET6XTIME | Generated xtime and ttime files
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6xtime' (Elapsed time 0.00s (0.00u+0.00s), Memory used 4241 Mb) on 04/25/2024 16:50:47
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lconf' on 04/25/2024 16:50:47
00 DATABASE | Parms: ''
00 ET3LCONF | * dbFiles/etapi.mem_slices creation file starts at 16:50:47, finishes at 16:50:47. Saved 191 slices, wrote 15280 bytes. (rc: 0)
00 ET3LCONF | * COMPILED without WIRE_DUPLICATION, for a SINGLE_SUBSET, with SIM_ACCEL 
00 ET3LCONF | COMPILED ON 04/25/2024 AT 16:50:47 WITH SEED 883221817
00 ET3LCONF | MINOR_CYCLES_PER_MAJOR_CYCLE  164
00 ET3LCONF | + 8_CHIP_BOARD           0 ET6E BRD000000000000 0
00 ET3LCONF | - MEMORY_CARD_V1  0  0
00 ET3LCONF | - CHIP  0   1
00 ET3LCONF | - CHIP  0   2
00 ET3LCONF | - CHIP  0   3
00 ET3LCONF | - CHIP  0   4
00 ET3LCONF | - CHIP  0   5
00 ET3LCONF | - CHIP  0   6
00 ET3LCONF | - CHIP  0   7
00 ET3LCONF | - XBI  0   0  87
00 ET3LCONF | - XBO  0   0  87
00 ET3LCONF | - TARGET_LANE  0 0 A
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lconf' (Elapsed time 0.00s (0.00u+0.00s), Memory used 4241 Mb) on 04/25/2024 16:50:47
00 DATABASE | Calling 'svproto' on 04/25/2024 16:50:47
00 DATABASE | Parms: 'xcva_top'
00 DATABASE | Return from 'svproto' (Elapsed time 0.14s (0.08u+0.02s), Memory used 4241 Mb) on 04/25/2024 16:50:48
00 DATABASE | Compiler Statistics:
00 DATABASE | ENVRN |  ModuleLast      | 8          | OTHER:et3lconf
00 DATABASE | ENVRN |  ModuleCurrent   | 8          | None
00 DATABASE | CONFG |  NumDomains      | 1          | 
00 DATABASE | CONFG |  NumASICs        | 1          | 
00 DATABASE | CONFG |  ModuleStatus    | 1          | Passed
00 DATABASE | CONFG |  EmType          | 4          | ET6
00 DATABASE | NLOPT |  ModuleStatus    | 1          | Passed
00 DATABASE | MPART |  totalXINTports  | 0          | 
00 DATABASE | MPART |  totalSINTports  | 0          | 
00 DATABASE | MPART |  totalLPDDRports | 0          | 
00 DATABASE | MPART |  totalBINTports  | 0          | 
00 DATABASE | MPART |  totalDDRports   | 0          | 
00 DATABASE | LOADA |  ModuleStatus    | 1          | Passed
00 DATABASE | SCHED |  ModuleStatus    | 1          | Passed
00 DATABASE | OTHER |  ModuleStatus    | 1          | Passed
00 DATABASE | Compile finished without errors, last module called was OTHER:et3lconf
00 DATABASE | 
BEDB: Cleaning all
BEDB: Cleaning SCschedlib
BEDB: Cleaning omlib
BEDB: Cleaning memutil
BEDB: Cleaning et6confg
00 DATABASE | et6confg called to clean-up and terminate.
BEDB: Cleaning et3confg
00 DATABASE | et3confg called to clean-up and terminate.
BEDB: Cleaning et3lib
