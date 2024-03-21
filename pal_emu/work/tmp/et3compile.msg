00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lib' on 03/19/2024 15:23:03
00 DATABASE | Parms: '-client'
00 ET3LIB   |                                    
00 ET3LIB   |                              ET3 LIBRARY
00 ET3LIB   |                            RELEASE 6.0.2.6
00 ET3LIB   |                           VXE, VEngineering
00 ET3LIB   | (c) 1995-2020 Cadence Design Systems, Inc. All rights reserved worldwide.
00 ET3LIB   |            See files in <rootdir>/share/vxe/install/Copyrights
00 ET3LIB   |                                    
00 ET3LIB   | ET3lib created on Aug  3 2023 at 22:13:09.
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lib' (Elapsed time 0.00s (0.00u+0.00s), Memory used 4193 Mb) on 03/19/2024 15:23:03
00 DATABASE | Calling 'ldproto' on 03/19/2024 15:23:03
00 DATABASE | Parms: 'qt_modular -combined PARTITIONS -rename xcva_top'
Info: 174273 ffDB boxes have been restored
Info: 182322 ffDB nets have been restored
00 DATABASE | Return from 'ldproto' (Elapsed time 0.39s (0.10u+0.02s), Memory used 4193 Mb) on 03/19/2024 15:23:03
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3confg' on 03/19/2024 15:23:03
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
00 ET3CONFG | ***** MB/XB wire table initialization took 0.000261 seconds.
00 ET3CONFG | ***** Found 0000000  MBO->MBI  possible links in this configuration.
00 ET3CONFG | ***** HIGHEST board found in emulation configuration is 5
00 ET3CONFG | load_module_version()          = 30
00 ET3CONFG | num_cycles_per_capture_frame   = 32
00 ET3CONFG | das_protocol()                 = 5
00 ET3CONFG | COMPILED ON 03/19/2024 AT 15:23:03
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
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/omlib' on 03/19/2024 15:23:03
00 DATABASE | Parms: ''
00 OMLIB    |                                    
00 OMLIB    |                           VXE, VEngineering
00 OMLIB    |             Copyright(C) 1995-2021, Cadence Design Systems
00 OMLIB    |                          All rights reserved
00 OMLIB    |                            RELEASE 6.0.2.6
00 OMLIB    |                                    
00 OMLIB    | omlib created on Aug  3 2023 at 22:05:33
00 OMLIB    | 
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/omlib' (Elapsed time 0.00s (0.00u+0.00s), Memory used 4193 Mb) on 03/19/2024 15:23:03
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3confg' (Elapsed time 0.04s (0.02u+0.00s), Memory used 4193 Mb) on 03/19/2024 15:23:03
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6ctl' on 03/19/2024 15:23:03
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6ctl' (Elapsed time 0.02s (0.00u+0.00s), Memory used 4193 Mb) on 03/19/2024 15:23:03
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5nlopt' on 03/19/2024 15:23:03
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5nlopt' (Elapsed time 0.14s (0.05u+0.01s), Memory used 4193 Mb) on 03/19/2024 15:23:04
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/SCsched' on 03/19/2024 15:23:04
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
00 SCSCHED  | Scheduling begins at 15:23:04...
00 SCSCHED  | 
00 SCSCHED  | Number of valid option entries for module SCsched = 0
00 SCSCHED  | Number of valid option entries for module SCsched = 0
00 SCSCHED  | Number of gates per domain is 4000000.
00 SCSCHED  | Number of chips is 1.
00 SCSCHED  | Number of domains is 1.0.
00 SCSCHED  | PrecompileDesignSizeOriginal = 643304
00 SCSCHED  | Design utilization: 16.1.
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6loada' on 03/19/2024 15:23:04
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
00 ET6LOADA | Average fan-out = 2.727614
00 ET6LOADA |  
00 ET6LOADA | Type                     Peak           Avg/Peak
00 ET6LOADA | Outputs per ec:          ec[  0,0]      Outputs=0/0
00 ET6LOADA | Weighted outputs per ec: ec[  0,0]      Outputs=0/0
00 ET6LOADA | Outputs per ep:          ep[  0,0,1448] Outputs=11/27
00 ET6LOADA | Weighted outputs per ep: ep[  0,0,1448] Outputs=11/27
00 ET6LOADA | Inputs per ec:           ec[  0,0]      Inputs= 0/0
00 ET6LOADA | Inputs per ep:           ep[  0,0,1072] Inputs= 19/35
00 ET6LOADA | dbis per chip:           ec[  0,0]      dbis=   250/250
00 ET6LOADA | dbos per chip:           ec[  0,0]      dbos=   321/321
00 ET6LOADA | xbos per chip:           ec[  0,0]      xbos=   1/1
00 ET6LOADA | Boxes per eb:            eb[  0]        Boxes=  188030/188030
00 ET6LOADA | Boxes per ec:            ec[  0,0]      Boxes=  188030/188030
00 ET6LOADA | Boxes per ep:            ep[  0,0,1416] Boxes=  61/82
00 ET6LOADA |                                         Peak from memory ports= 0
00 ET6LOADA | Adjusted boxes per ep:   ep[  0,0,1952] Boxes=  52/62
00 ET6LOADA | Adjusted instruction usage: 10.5%
00 ET6LOADA | The design requires at least 1 domain.
00 ET6LOADA |  
00 ET6LOADA |  
00 ET6LOADA |  
00 ET6LOADA | Total INTRAM Accesses: 419
00 ET6LOADA | Accesses per INTRAM:   1 / 8.7 / 33 (min/avg/max)
00 ET6LOADA |  
00 ET6LOADA | Total EXTRAM Accesses: 0
00 ET6LOADA | Accesses per EXTRAM:   0 / 0.0 / 0 (min/avg/max)
00 ET6LOADA |  
00 ET6LOADA |           Memory Accesses
00 ET6LOADA | eb  ec  RAM    word/assm/TCAM   banks
00 ET6LOADA |  0  0   i00     9 /  0 /  0     1   >   >   >   1   3   2   2 
00 ET6LOADA |         i01     9 /  0 /  0     1   >   >   >   1   3   2   2 
00 ET6LOADA |         i02     9 /  0 /  0     1   >   >   >   1   3   2   2 
00 ET6LOADA |         i03     9 /  0 /  0     1   >   >   >   1   3   2   2 
00 ET6LOADA |         i04     9 /  0 /  0     1   >   >   >   1   3   4   0 
00 ET6LOADA |         i05     9 /  0 /  0     1   >   >   >   1   3   2   2 
00 ET6LOADA |         i06    10 /  0 /  0     1   1   2   2   2   2   0   0 
00 ET6LOADA |         i07    12 /  0 /  0     1   1   2   8   0   0   0   0 
00 ET6LOADA |         i08     8 /  0 /  0     1   >   >   >   2   1   2   2 
00 ET6LOADA |         i09     8 /  0 /  0     1   >   >   >   2   2   2   1 
00 ET6LOADA |         i10     8 /  0 /  0     1   >   >   >   2   2   2   1 
00 ET6LOADA |         i11     8 /  0 /  0     1   1   2   2   2   0   0   0 
00 ET6LOADA |         i12     8 /  0 /  0     1   1   2   2   2   0   0   0 
00 ET6LOADA |         i13     8 /  0 /  0     1   1   2   2   2   0   0   0 
00 ET6LOADA |         i14     8 /  0 /  0     1   1   2   2   2   0   0   0 
00 ET6LOADA |         i15     8 /  0 /  0     1   1   1   2   2   1   0   0 
00 ET6LOADA |         i16     3 /  0 /  0     1   >   2   0   0   0   0   0 
00 ET6LOADA |         i17     3 /  0 /  0     1   >   2   0   0   0   0   0 
00 ET6LOADA |         i18     2 /  0 /  0     1   >   1   0   0   0   0   0 
00 ET6LOADA |         i19     2 /  0 /  0     1   >   1   0   0   0   0   0 
00 ET6LOADA |         i20     1 /  0 /  0     1   >   0   0   0   0   0   0 
00 ET6LOADA |         i21     2 /  0 /  0     1   1   0   0   0   0   0   0 
00 ET6LOADA |         i22    33 /  0 /  0     1  32   0   0   0   0   0   0 
00 ET6LOADA |         i23    33 /  0 /  0     1  32   0   0   0   0   0   0 
00 ET6LOADA |         i24     6 /  0 /  0     1   >   2   2   1   0   0   0 
00 ET6LOADA |         i25     7 /  0 /  0     1   >   2   2   2   0   0   0 
00 ET6LOADA |         i26     7 /  0 /  0     1   >   2   2   2   0   0   0 
00 ET6LOADA |         i27     6 /  0 /  0     1   1   2   2   0   0   0   0 
00 ET6LOADA |         i28    25 /  0 /  0     1  24   0   0   0   0   0   0 
00 ET6LOADA |         i29    17 /  0 /  0     1  16   0   0   0   0   0   0 
00 ET6LOADA |         i30     7 /  0 /  0     1   2   2   2   0   0   0   0 
00 ET6LOADA |         i31     7 /  0 /  0     1   2   2   2   0   0   0   0 
00 ET6LOADA |         i32     7 /  0 /  0     1   >   >   >   1   2   2   1 
00 ET6LOADA |         i33     8 /  0 /  0     1   >   >   2   2   2   0   0 
00 ET6LOADA |         i34     7 /  0 /  0     1   >   1   >   2   2   1   0 
00 ET6LOADA |         i35     7 /  0 /  0     1   >   1   >   2   2   1   0 
00 ET6LOADA |         i36     8 /  0 /  0     1   >   1   >   2   3   1   0 
00 ET6LOADA |         i37    11 /  0 /  0     1   >   1   1   8   0   0   0 
00 ET6LOADA |         i38     8 /  0 /  0     1   >   1   2   2   2   0   0 
00 ET6LOADA |         i39     8 /  0 /  0     1   >   1   2   2   2   0   0 
00 ET6LOADA |         i40     6 /  0 /  0     2   >   2   2   0   0   0   0 
00 ET6LOADA |         i41     7 /  0 /  0     1   3   2   1   0   0   0   0 
00 ET6LOADA |         i42     6 /  0 /  0     1   3   2   0   0   0   0   0 
00 ET6LOADA |         i43     7 /  0 /  0     1   2   2   2   0   0   0   0 
00 ET6LOADA |         i44     7 /  0 /  0     1   2   2   2   0   0   0   0 
00 ET6LOADA |         i45     7 /  0 /  0     2   2   2   1   0   0   0   0 
00 ET6LOADA |         i46     7 /  0 /  0     3   2   2   0   0   0   0   0 
00 ET6LOADA |         i47     7 /  0 /  0     3   2   2   0   0   0   0   0 
00 ET6LOADA |         x0      0 /  0          0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0 
00 ET6LOADA |  
00 ET6LOADA |  
00 ET6LOADA | Total ALU instructions: 0
00 ET6LOADA | Instructions per ALU:   0 / 0.0 / 0 (min/avg/max)
00 ET6LOADA |  
00 ET6LOADA | 0 seconds
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6loada' (Elapsed time 0.04s (0.10u+0.00s), Memory used 4193 Mb) on 03/19/2024 15:23:04
00 SCSCHED  |  
00 SCSCHED  | Boxes distribution by scheduling levels:
00 SCSCHED  | Level    165, boxes            9
00 SCSCHED  | Level    164, boxes            0
00 SCSCHED  | Level    163, boxes            1
00 SCSCHED  | Level    162, boxes            3
00 SCSCHED  | Level    161, boxes            2
00 SCSCHED  | Level    160, boxes            2
00 SCSCHED  | Level    159, boxes            1
00 SCSCHED  | Level    158, boxes            3
00 SCSCHED  | Level    157, boxes            4
00 SCSCHED  | Level    156, boxes            3
00 SCSCHED  | Level    155, boxes            4
00 SCSCHED  | Level    154, boxes           11
00 SCSCHED  | Level    153, boxes           17
00 SCSCHED  | Level    152, boxes           30
00 SCSCHED  | Level    151, boxes           49
00 SCSCHED  | Level    150, boxes           65
00 SCSCHED  | Level    149, boxes           50
00 SCSCHED  | Level    148, boxes           57
00 SCSCHED  | Level    147, boxes           60
00 SCSCHED  | Level    146, boxes           94
00 SCSCHED  | Level    145, boxes          131
00 SCSCHED  | Level    144, boxes          169
00 SCSCHED  | Level    143, boxes          187
00 SCSCHED  | Level    142, boxes          240
00 SCSCHED  | Level    141, boxes          409
00 SCSCHED  | Level    140, boxes          552
00 SCSCHED  | Level    139, boxes          553
00 SCSCHED  | Level    138, boxes          449
00 SCSCHED  | Level    137, boxes          370
00 SCSCHED  | Level    136, boxes          340
00 SCSCHED  | Level    135, boxes          361
00 SCSCHED  | Level    134, boxes          361
00 SCSCHED  | Level    133, boxes          308
00 SCSCHED  | Level    132, boxes          232
00 SCSCHED  | Level    131, boxes          171
00 SCSCHED  | Level    130, boxes          168
00 SCSCHED  | Level    129, boxes          171
00 SCSCHED  | Level    128, boxes          159
00 SCSCHED  | Level    127, boxes          115
00 SCSCHED  | Level    126, boxes          147
00 SCSCHED  | Level    125, boxes          174
00 SCSCHED  | Level    124, boxes          204
00 SCSCHED  | Level    123, boxes          170
00 SCSCHED  | Level    122, boxes          131
00 SCSCHED  | Level    121, boxes           68
00 SCSCHED  | Level    120, boxes           31
00 SCSCHED  | Level    119, boxes           17
00 SCSCHED  | Level    118, boxes           17
00 SCSCHED  | Level    117, boxes           27
00 SCSCHED  | Level    116, boxes           39
00 SCSCHED  | Level    115, boxes           27
00 SCSCHED  | Level    114, boxes           17
00 SCSCHED  | Level    113, boxes            8
00 SCSCHED  | Level    112, boxes            4
00 SCSCHED  | Level    111, boxes            2
00 SCSCHED  | Level    110, boxes            1
00 SCSCHED  | Level    109, boxes            1
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
00 SCSCHED  | Level     91, boxes            2
00 SCSCHED  | Level     90, boxes            0
00 SCSCHED  | Level     89, boxes            0
00 SCSCHED  | Level     88, boxes            0
00 SCSCHED  | Level     87, boxes            0
00 SCSCHED  | Level     86, boxes            2
00 SCSCHED  | Level     85, boxes            1
00 SCSCHED  | Level     84, boxes            2
00 SCSCHED  | Level     83, boxes            1
00 SCSCHED  | Level     82, boxes            0
00 SCSCHED  | Level     81, boxes            1
00 SCSCHED  | Level     80, boxes            0
00 SCSCHED  | Level     79, boxes            2
00 SCSCHED  | Level     78, boxes            0
00 SCSCHED  | Level     77, boxes            1
00 SCSCHED  | Level     76, boxes            1
00 SCSCHED  | Level     75, boxes            2
00 SCSCHED  | Level     74, boxes            2
00 SCSCHED  | Level     73, boxes            5
00 SCSCHED  | Level     72, boxes            4
00 SCSCHED  | Level     71, boxes          103
00 SCSCHED  | Level     70, boxes          100
00 SCSCHED  | Level     69, boxes          234
00 SCSCHED  | Level     68, boxes          106
00 SCSCHED  | Level     67, boxes          237
00 SCSCHED  | Level     66, boxes          173
00 SCSCHED  | Level     65, boxes          308
00 SCSCHED  | Level     64, boxes          188
00 SCSCHED  | Level     63, boxes          268
00 SCSCHED  | Level     62, boxes           74
00 SCSCHED  | Level     61, boxes          187
00 SCSCHED  | Level     60, boxes           74
00 SCSCHED  | Level     59, boxes          285
00 SCSCHED  | Level     58, boxes          160
00 SCSCHED  | Level     57, boxes          282
00 SCSCHED  | Level     56, boxes          180
00 SCSCHED  | Level     55, boxes          296
00 SCSCHED  | Level     54, boxes          102
00 SCSCHED  | Level     53, boxes          234
00 SCSCHED  | Level     52, boxes          142
00 SCSCHED  | Level     51, boxes          304
00 SCSCHED  | Level     50, boxes          228
00 SCSCHED  | Level     49, boxes          334
00 SCSCHED  | Level     48, boxes          188
00 SCSCHED  | Level     47, boxes          342
00 SCSCHED  | Level     46, boxes          171
00 SCSCHED  | Level     45, boxes          299
00 SCSCHED  | Level     44, boxes          273
00 SCSCHED  | Level     43, boxes          450
00 SCSCHED  | Level     42, boxes          319
00 SCSCHED  | Level     41, boxes          448
00 SCSCHED  | Level     40, boxes          380
00 SCSCHED  | Level     39, boxes          870
00 SCSCHED  | Level     38, boxes          880
00 SCSCHED  | Level     37, boxes          908
00 SCSCHED  | Level     36, boxes         1222
00 SCSCHED  | Level     35, boxes         1072
00 SCSCHED  | Level     34, boxes         1034
00 SCSCHED  | Level     33, boxes          969
00 SCSCHED  | Level     32, boxes          834
00 SCSCHED  | Level     31, boxes          824
00 SCSCHED  | Level     30, boxes          751
00 SCSCHED  | Level     29, boxes          819
00 SCSCHED  | Level     28, boxes         1062
00 SCSCHED  | Level     27, boxes         1121
00 SCSCHED  | Level     26, boxes          903
00 SCSCHED  | Level     25, boxes          906
00 SCSCHED  | Level     24, boxes         1414
00 SCSCHED  | Level     23, boxes         1636
00 SCSCHED  | Level     22, boxes         1680
00 SCSCHED  | Level     21, boxes         1683
00 SCSCHED  | Level     20, boxes         1715
00 SCSCHED  | Level     19, boxes         1784
00 SCSCHED  | Level     18, boxes         1921
00 SCSCHED  | Level     17, boxes         3029
00 SCSCHED  | Level     16, boxes         3250
00 SCSCHED  | Level     15, boxes         2255
00 SCSCHED  | Level     14, boxes         2280
00 SCSCHED  | Level     13, boxes         2300
00 SCSCHED  | Level     12, boxes         2410
00 SCSCHED  | Level     11, boxes         3211
00 SCSCHED  | Level     10, boxes         4269
00 SCSCHED  | Level      9, boxes         4995
00 SCSCHED  | Level      8, boxes         4644
00 SCSCHED  | Level      7, boxes         7053
00 SCSCHED  | Level      6, boxes         5211
00 SCSCHED  | Level      5, boxes         6731
00 SCSCHED  | Level      4, boxes         6870
00 SCSCHED  | Level      3, boxes        11168
00 SCSCHED  | Level      2, boxes        19408
00 SCSCHED  | Level      1, boxes        44687
00 SCSCHED  |  
00 SCSCHED  | Tail      25, boxes         2153
00 SCSCHED  | Mapped: 5459 5-input LUTs, 388 6-input LUTs, 0 others. Saved 5937
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
00 SCSCHED  | box scheduling begins at 15:23:04...
00 SCSCHED  | estimated number of boxes 174272
00 SCSCHED  | 
00 SCSCHED  | 100000 placed.  max step 87  15:23:04  [360.00]
00 SCSCHED  | box scheduling ends at 15:23:04, max step 92
00 SCSCHED  | 
00 SCSCHED  | Relocated 1573 logic boxes (0 between chips), 699 flops
00 SCSCHED  | Rescheduled in global scope 0 boxes
00 SCSCHED  | Unmapped 67 boxes
00 SCSCHED  | Compacted 25730 FD01 boxes
00 SCSCHED  | Chip two-hop tries 0, success 0
00 SCSCHED  | 
00 SCSCHED  | Found DBO_CAPTURE and used it to control SACB capturing.
00 SCSCHED  | Max DBO capture step = 2
00 SCSCHED  | Extra 0 step is inserted between max_DBO capture step and interrupt
00 SCSCHED  | SA DONE signal is routed to GP HCB 1
00 SCSCHED  | Routed to interrupt HCB at chip 0 (board 0, chip 0, ep 2957), at step 17 for signal 147652: xc_top._ET3_COMPILER_RESERVED_NAME_ORION_INTERRUPT_
00 SCSCHED  | Estimated IO probes = 9396, FF probes = 38351, DYNP probes = 240
00 SCSCHED  | extra probes per domain = 0
00 SCSCHED  | Trace control signals increase maxStep from 92 to 102
00 SCSCHED  | flops input routing begins at 15:23:04, max step 102...
00 SCSCHED  | 
00 SCSCHED  | flops input routing ends at 15:23:04, max step 102
00 SCSCHED  | 
00 SCSCHED  | data capturing begins at 15:23:04
00 SCSCHED  | 
00 SCSCHED  | 47683 nets to capture
00 SCSCHED  | Captured 64 qt_curr_emul_cycle nets in DCC 0
00 SCSCHED  | Captured 64 xc_top.simTime nets in DCC 0
00 SCSCHED  | set captured_nets_cycle_1 = 56320
00 SCSCHED  | set captured_nets_cycle_2_to_n = 14336
00 SCSCHED  | Trace depth = 4391552 cycles
00 SCSCHED  | Trace depth in DYNP mode = 4194304 cycles
00 SCSCHED  | Min step count due to probes is 88
00 SCSCHED  | building DCC_net table in et6confg
00 SCSCHED  | data capturing ends at 15:23:04, max step 102
00 SCSCHED  | Captured 47747 nets
00 SCSCHED  | used DCCs = 1, DCC utilization = 84%
00 SCSCHED  | 
00 SCSCHED  | scheduling complete
00 SCSCHED  | maximum step: 159.
00 SCSCHED  | step count: 160
00 SCSCHED  | 
00 SCSCHED  | 
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5analyzer' on 03/19/2024 15:23:04
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
00 ET5ANAL* | Instructions per cycle: 160
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
00 ET5ANAL* | Breakpoint 21056 will add 101 steps after it is scheduled.
00 ET5ANAL* | Critical net starts from an actual critical location.
00 ET5ANAL* |    . [000,000,273,6]   57 +   0         NET     145622      0  ET6_SYNC.QTLA%break_0
00 ET5ANAL* |    1 [000,000,273,6]   57 +   0    102  XBOB     21056   2: 1  ET6_XBOB_141
00 ET5ANAL* |    . [000,000,273,0]   56 +   1         NET     145623      1  QTLA%break
00 ET5ANAL* |    2 [000,000,309,1]   53 +   3    108  LOGIC    36508   2: 2  
00 ET5ANAL* |    . [000,000,309,0]   53 +   0         NET     145037      1  _ET3_COMPILER_RESERVED_NAME_COMBINED_BREAK_
00 ET5ANAL* |    3 [000,000,309,0]   53 +   0    109  LOGIC    38068   1: 1  
00 ET5ANAL* |    . [000,000,309,3]   52 +   1         NET     145904      2  _ET3_COMPILER_RESERVED_NAME_SDL_BREAK_
00 ET5ANAL* |    4 [000,000,309,3]   52 +   0    110  LOGIC    36507   3: 3  
00 ET5ANAL* |    . [000,000,309,0]   49 +   3         NET     136181      1  
00 ET5ANAL* |    5 [000,000,309,0]   49 +   0    111  LOGIC    36506   4: 3  
00 ET5ANAL* |    . [000,000,309,0]   48 +   1         NET     145660      2  QTLA%SDL.top.run_stop_ctl.sa_infini_break
00 ET5ANAL* |    6 [000,000,272,0]   45 +   3    115  LOGIC    33824   4: 4  
00 ET5ANAL* |    . [000,000,272,0]   44 +   1         NET     137253      1  _ABbLt
00 ET5ANAL* |    7 [000,000,263,0]   41 +   3    119  LOGIC    33823   4: 2  
00 ET5ANAL* |    . [000,000,260,0]   38 +   3         NET     137255      1  _ABbLv$inv2407
00 ET5ANAL* |    8 [000,000,260,0]   38 +   0    121  LOGIC    33822   3: 3  
00 ET5ANAL* |    . [000,000,260,0]   37 +   1         NET     137470      1  _ABcNG$inv2362
00 ET5ANAL* |    9 [000,000,280,5]   34 +   3    125  LOGIC    33534   4: 1  
00 ET5ANAL* |    . [000,000,280,7]   33 +   1         NET     137471      1  _ABbMU$inv2361
00 ET5ANAL* |   10 [000,000,280,7]   33 +   0    126  LOGIC    33533   4: 1  
00 ET5ANAL* |    . [000,000,280,2]   32 +   1         NET     137473      2  _ABbMa
00 ET5ANAL* |   11 [000,000,280,2]   32 +   0    127  LOGIC    33531   4: 1  
00 ET5ANAL* |    . [000,000,280,1]   32 +   0         NET     137474      2  _ABbRS
00 ET5ANAL* |   12 [000,000,280,1]   32 +   0    128  LOGIC    33530   3: 2  
00 ET5ANAL* |    . [000,000,280,0]   32 +   0         NET     137478      2  _ABbRb
00 ET5ANAL* |   13 [000,000,280,0]   32 +   0    129  LOGIC    33527   3: 2  
00 ET5ANAL* |    . [000,000,280,0]   31 +   1         NET     137480      2  _ABbRd
00 ET5ANAL* |   14 [000,000,257,1]   28 +   3    133  LOGIC    33526   4: 3  
00 ET5ANAL* |    . [000,000,257,0]   28 +   0         NET     168576     13  QTLA%cycle_num[47]
00 ET5ANAL* |   15 [000,000,257,0]   28 +   0    134  LOGIC    38227   1: 1  
00 ET5ANAL* |    . [000,000,260,0]   26 +   2         NET     148583      9  xc_top.simTime[47]
00 ET5ANAL* |   16 [000,000,277,0]   23 +   3    138  LOGIC    33513   3: 3  
00 ET5ANAL* |    . [000,000,277,0]   22 +   1         NET     137494      1  _AAAB[57938]
00 ET5ANAL* |   17 [000,000,281,2]   19 +   3    142  LOGIC    33512   3: 2  
00 ET5ANAL* |    . [000,000,281,1]   19 +   0         NET     141549      1  _AAAB[57939]$inv1162
00 ET5ANAL* |   18 [000,000,281,1]   19 +   0    143  LOGIC    25770   4: 1  
00 ET5ANAL* |    . [000,000,281,0]   19 +   0         NET     141550      1  
00 ET5ANAL* |   19 [000,000,281,0]   19 +   0    144  LOGIC    25769   4: 1  
00 ET5ANAL* |    . [000,000,287,4]   17 +   2         NET     141634     64  _AAAB[57895]$inv1125
00 ET5ANAL* |   20 [000,000,287,4]   17 +   0    146  LOGIC    25685   4: 2  
00 ET5ANAL* |    . [000,000,287,0]   16 +   1         NET     141653     12  _AAAB[54821]$inv1119
00 ET5ANAL* |   21 [000,000,340,2]   11 +   5    152  LOGIC    25656   4: 1  
00 ET5ANAL* |    . [000,000,340,1]   11 +   0         NET     141654      2  xc_top.callEmuPI
00 ET5ANAL* |   22 [000,000,340,1]   11 +   0    153  LOGIC    38614   1: 1  
00 ET5ANAL* |    . [000,000,340,0]   11 +   0         NET     147521      2  UA@.xc_top.callEmuPI
00 ET5ANAL* |   23 [000,000,340,0]   11 +   0    154  LOGIC    20956   3: 3  
00 ET5ANAL* |    . [000,000,340,0]   10 +   1         NET     147648    249  
00 ET5ANAL* |   24 [000,000,268,2]    5 +   5    160  LOGIC    24801   2: 1  
00 ET5ANAL* |    . [000,000,268,4]    0 +   5         NET     147412      2  _ET3_COMPILER_RESERVED_NAME_SLOW_MODE_ENABLE_
00 ET5ANAL* |   25 [000,000,268,4]    0 +   0    161  LOGIC    38008   1: 1  
00 ET5ANAL* |    . [000,000,268,4]    0 +   0         NET     176098      1  _ABHyN
00 ET5ANAL* |   26 [000,000,268,4]    0 +   0    165  FD01      3324   4: 0  
00 ET5ANAL* | ======================================================================================
00 ET5ANAL* | 
00 ET5ANAL* | Critical paths by steps
00 ET5ANAL* | 
00 ET5ANAL* | Critical path  1                               sinks
00 ET5ANAL* | Count  Location      Step  Jump  Type    ID     ins:cr      Name
00 ET5ANAL* | --------------------------------------------------------------------------------------
00 ET5ANAL* | Breakpoint 21056 will add 101 steps after it is scheduled.
00 ET5ANAL* | Critical net starts from an actual critical location.
00 ET5ANAL* |    . [000,000,273,6]   57 +   0  NET     145622      0  ET6_SYNC.QTLA%break_0
00 ET5ANAL* |    1 [000,000,273,6]   57 +   0  XBOB     21056   2: 1  ET6_XBOB_141
00 ET5ANAL* |    . [000,000,273,0]   56 +   1  NET     145623      1  QTLA%break
00 ET5ANAL* |    2 [000,000,309,1]   53 +   3  LOGIC    36508   2: 2  
00 ET5ANAL* |    . [000,000,309,0]   53 +   0  NET     145037      1  _ET3_COMPILER_RESERVED_NAME_COMBINED_BREAK_
00 ET5ANAL* |    3 [000,000,309,0]   53 +   0  LOGIC    38068   1: 1  
00 ET5ANAL* |    . [000,000,309,3]   52 +   1  NET     145904      2  _ET3_COMPILER_RESERVED_NAME_SDL_BREAK_
00 ET5ANAL* |    4 [000,000,309,3]   52 +   0  LOGIC    36507   3: 2  
00 ET5ANAL* |    . [000,000,309,2]   52 +   0  NET     136182      1  _ABbwf
00 ET5ANAL* |    5 [000,000,309,2]   52 +   0  LOGIC    36505   4: 1  
00 ET5ANAL* |    . [000,000,309,1]   52 +   0  NET     136183      1  
00 ET5ANAL* |    6 [000,000,309,1]   52 +   0  LOGIC    36504   3: 2  
00 ET5ANAL* |    . [000,000,309,0]   52 +   0  NET     167643      3  QTLA%SDL.top.run_stop_ctl.latched_exec
00 ET5ANAL* |    7 [000,000,309,0]   52 +   0  LOGIC    36503   4: 1  
00 ET5ANAL* |    . [000,000,309,0]   51 +   1  NET     136184      3  QTLA%SDL.top.run_stop_ctl.exec_p
00 ET5ANAL* |    8 [000,000,271,0]   48 +   3  LOGIC    36498   4: 2  
00 ET5ANAL* |    . [000,000,271,0]   47 +   1  NET     101729      1  QTLA%SDL.top.exec_sum
00 ET5ANAL* |    9 [000,000,291,1]   44 +   3  LOGIC    67869   3: 3  
00 ET5ANAL* |    . [000,000,291,0]   44 +   0  NET      98537      2  QTLA%SDL.top.tsm_0.lut_exec
00 ET5ANAL* |   10 [000,000,291,0]   44 +   0  LOGIC    86492   1: 1  
00 ET5ANAL* |    . [000,000,291,0]   43 +   1  NET     147151      1  _ABfnz
00 ET5ANAL* |   11 [000,000,000,0]   32 +  11  XMPRe   173959  18:17  ET5_V1_H1.QTLA%SDL.top.tsm_0.main_instr.tsm_lut_OPT
00 ET5ANAL* |    . [000,000,257,0]   32 +   0  NET     112069      7  QTLA%SDL.top.tsm_0.tc1
00 ET5ANAL* |   12 [000,000,257,0]   32 +   0  LOGIC    74541   4: 1  
00 ET5ANAL* |    . [000,000,257,0]   31 +   1  NET      95090      1  _ABfzX$inv4464
00 ET5ANAL* |   13 [000,000,097,0]   26 +   5  LOGIC    74505   4: 4  
00 ET5ANAL* |    . [000,000,097,0]   25 +   1  NET      95106      1  _ABfwj$inv4458
00 ET5ANAL* |   14 [000,000,126,1]   22 +   3  LOGIC    74489   4: 1  
00 ET5ANAL* |    . [000,000,126,0]   22 +   0  NET      95107      1  
00 ET5ANAL* |   15 [000,000,126,0]   22 +   0  LOGIC    74488   4: 1  
00 ET5ANAL* |    . [000,000,126,0]   21 +   1  NET      95109      2  _ABfwu
00 ET5ANAL* |   16 [000,000,107,0]   18 +   3  LOGIC    74486   4: 1  
00 ET5ANAL* |    . [000,000,107,0]   17 +   1  NET     101626      2  _ABfrm
00 ET5ANAL* |   17 [000,000,000,0]    6 +  11  XMPRe   174024  18:14  ET5_V1_H1.QTLA%SDL.top.tsm_0.main_instr.cnt1.cnt_cmpval_OPT.Merger1
00 ET5ANAL* |    . [000,000,098,0]    5 +   1  NET     163134     75  QTLA%SDL.top.tsm_0.tsm_state[3]
00 ET5ANAL* |   18 [000,000,339,0]    0 +   5  FD01     11611   4: 0  
00 ET5ANAL* | --------------------------------------------------------------------------------------
00 ET5ANAL* | Maximum jump of 11 steps occurs at step 32
00 ET5ANAL* | 0 inter-chip hops, 0 steps inter-chip delay
00 ET5ANAL* | ======================================================================================
00 ET5ANAL* | End of critical path
00 ET5ANAL* | 
00 ET5ANAL* | 
00 ET5ANAL* | 
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5analyzer' (Elapsed time 0.03s (0.09u+0.00s), Memory used 4193 Mb) on 03/19/2024 15:23:04
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/SCsched' (Elapsed time 0.70s (0.86u+0.04s), Memory used 4193 Mb) on 03/19/2024 15:23:04
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6xtime' on 03/19/2024 15:23:04
00 DATABASE | Parms: ''
00 ET6XTIME |                                    
00 ET6XTIME |                ET6 EXTERNAL TIMING ANALYZER AND BITGEN
00 ET6XTIME |                            RELEASE 6.0.2.6
00 ET6XTIME |                                    
00 ET6XTIME | et6xtime created on Aug  3 2023 at 22:13:09.
00 ET6XTIME | found breakpoint at ep 2190 box 21056 signal QTLA%break
00 ET6XTIME | There are no targets defined in the design
00 ET6XTIME | 
00 ET6XTIME | Generated xtime and ttime files
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6xtime' (Elapsed time 0.03s (0.00u+0.00s), Memory used 4193 Mb) on 03/19/2024 15:23:04
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lconf' on 03/19/2024 15:23:04
00 DATABASE | Parms: ''
00 ET3LCONF | * dbFiles/etapi.mem_slices creation file starts at 15:23:04, finishes at 15:23:04. Saved 191 slices, wrote 15280 bytes. (rc: 0)
00 ET3LCONF | * COMPILED without WIRE_DUPLICATION, for a SINGLE_SUBSET, with SIM_ACCEL 
00 ET3LCONF | COMPILED ON 03/19/2024 AT 15:23:03 WITH SEED 115188703
00 ET3LCONF | MINOR_CYCLES_PER_MAJOR_CYCLE  160
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lconf' (Elapsed time 0.01s (0.00u+0.00s), Memory used 4193 Mb) on 03/19/2024 15:23:04
00 DATABASE | Calling 'svproto' on 03/19/2024 15:23:04
00 DATABASE | Parms: 'xcva_top'
00 DATABASE | Return from 'svproto' (Elapsed time 0.16s (0.10u+0.03s), Memory used 4193 Mb) on 03/19/2024 15:23:04
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
