00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lib' on 04/17/2024 13:07:14
00 DATABASE | Parms: '-client'
00 ET3LIB   |                                    
00 ET3LIB   |                              ET3 LIBRARY
00 ET3LIB   |                            RELEASE 6.0.2.6
00 ET3LIB   |                           VXE, VEngineering
00 ET3LIB   | (c) 1995-2020 Cadence Design Systems, Inc. All rights reserved worldwide.
00 ET3LIB   |            See files in <rootdir>/share/vxe/install/Copyrights
00 ET3LIB   |                                    
00 ET3LIB   | ET3lib created on Aug  3 2023 at 22:13:09.
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lib' (Elapsed time 0.00s (0.00u+0.00s), Memory used 4209 Mb) on 04/17/2024 13:07:14
00 DATABASE | Calling 'ldproto' on 04/17/2024 13:07:14
00 DATABASE | Parms: 'qt_modular -combined PARTITIONS -rename xcva_top'
Info: 174463 ffDB boxes have been restored
Info: 182512 ffDB nets have been restored
00 DATABASE | Return from 'ldproto' (Elapsed time 0.14s (0.09u+0.05s), Memory used 4209 Mb) on 04/17/2024 13:07:14
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3confg' on 04/17/2024 13:07:14
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
00 ET3CONFG | ***** MB/XB wire table initialization took 0.000288 seconds.
00 ET3CONFG | ***** Found 0000000  MBO->MBI  possible links in this configuration.
00 ET3CONFG | ***** HIGHEST board found in emulation configuration is 5
00 ET3CONFG | load_module_version()          = 30
00 ET3CONFG | num_cycles_per_capture_frame   = 32
00 ET3CONFG | das_protocol()                 = 5
00 ET3CONFG | COMPILED ON 04/17/2024 AT 13:07:14
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
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/omlib' on 04/17/2024 13:07:14
00 DATABASE | Parms: ''
00 OMLIB    |                                    
00 OMLIB    |                           VXE, VEngineering
00 OMLIB    |             Copyright(C) 1995-2021, Cadence Design Systems
00 OMLIB    |                          All rights reserved
00 OMLIB    |                            RELEASE 6.0.2.6
00 OMLIB    |                                    
00 OMLIB    | omlib created on Aug  3 2023 at 22:05:33
00 OMLIB    | 
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/omlib' (Elapsed time 0.00s (0.00u+0.00s), Memory used 4209 Mb) on 04/17/2024 13:07:14
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3confg' (Elapsed time 0.03s (0.01u+0.00s), Memory used 4209 Mb) on 04/17/2024 13:07:14
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6ctl' on 04/17/2024 13:07:14
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6ctl' (Elapsed time 0.00s (0.00u+0.00s), Memory used 4209 Mb) on 04/17/2024 13:07:14
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5nlopt' on 04/17/2024 13:07:14
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5nlopt' (Elapsed time 0.07s (0.06u+0.02s), Memory used 4209 Mb) on 04/17/2024 13:07:15
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/SCsched' on 04/17/2024 13:07:15
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
00 SCSCHED  | Scheduling begins at 13:07:15...
00 SCSCHED  | 
00 SCSCHED  | Number of valid option entries for module SCsched = 0
00 SCSCHED  | Number of valid option entries for module SCsched = 0
00 SCSCHED  | Number of gates per domain is 4000000.
00 SCSCHED  | Number of chips is 1.
00 SCSCHED  | Number of domains is 1.0.
00 SCSCHED  | PrecompileDesignSizeOriginal = 643304
00 SCSCHED  | Design utilization: 16.1.
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6loada' on 04/17/2024 13:07:15
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
00 ET6LOADA | Outputs per ep:          ep[  0,0,2312] Outputs=10/29
00 ET6LOADA | Weighted outputs per ep: ep[  0,0,2312] Outputs=10/29
00 ET6LOADA | Inputs per ec:           ec[  0,0]      Inputs= 0/0
00 ET6LOADA | Inputs per ep:           ep[  0,0,2992] Inputs= 18/39
00 ET6LOADA | dbis per chip:           ec[  0,0]      dbis=   250/250
00 ET6LOADA | dbos per chip:           ec[  0,0]      dbos=   321/321
00 ET6LOADA | xbos per chip:           ec[  0,0]      xbos=   1/1
00 ET6LOADA | Boxes per eb:            eb[  0]        Boxes=  188220/188220
00 ET6LOADA | Boxes per ec:            ec[  0,0]      Boxes=  188220/188220
00 ET6LOADA | Boxes per ep:            ep[  0,0,2088] Boxes=  61/81
00 ET6LOADA |                                         Peak from memory ports= 1
00 ET6LOADA | Adjusted boxes per ep:   ep[  0,0,2968] Boxes=  52/61
00 ET6LOADA | Adjusted instruction usage: 10.5%
00 ET6LOADA | The design requires at least 1 domain.
00 ET6LOADA |  
00 ET6LOADA |  
00 ET6LOADA |  
00 ET6LOADA | Total INTRAM Accesses: 419
00 ET6LOADA | Accesses per INTRAM:   1 / 8.7 / 57 (min/avg/max)
00 ET6LOADA |  
00 ET6LOADA | Total EXTRAM Accesses: 0
00 ET6LOADA | Accesses per EXTRAM:   0 / 0.0 / 0 (min/avg/max)
00 ET6LOADA |  
00 ET6LOADA |           Memory Accesses
00 ET6LOADA | eb  ec  RAM    word/assm/TCAM   banks
00 ET6LOADA |  0  0   i00     3 /  0 /  0     1   >   >   >   1   >   1   > 
00 ET6LOADA |         i01     3 /  0 /  0     1   >   >   >   1   >   1   > 
00 ET6LOADA |         i02     4 /  0 /  0     1   >   >   >   1   >   1   1 
00 ET6LOADA |         i03     4 /  0 /  0     1   >   >   >   1   >   1   1 
00 ET6LOADA |         i04     4 /  0 /  0     1   >   >   >   1   >   1   1 
00 ET6LOADA |         i05     4 /  0 /  0     1   >   >   >   1   >   1   1 
00 ET6LOADA |         i06     4 /  0 /  0     1   >   >   >   1   >   1   1 
00 ET6LOADA |         i07    57 /  0 /  0     1   >   >   >   1   >   1  54 
00 ET6LOADA |         i08     8 /  0 /  0     1   >   >   >   1   1   2   3 
00 ET6LOADA |         i09     8 /  0 /  0     1   >   >   >   1   1   3   2 
00 ET6LOADA |         i10     9 /  0 /  0     1   >   >   2   2   2   1   0 
00 ET6LOADA |         i11     9 /  0 /  0     1   1   1   1   1   2   2   0 
00 ET6LOADA |         i12     9 /  0 /  0     1   1   1   2   2   2   0   0 
00 ET6LOADA |         i13     9 /  0 /  0     1   1   1   1   2   2   1   0 
00 ET6LOADA |         i14     9 /  0 /  0     1   1   1   2   2   1   1   0 
00 ET6LOADA |         i15     9 /  0 /  0     1   1   1   2   2   2   0   0 
00 ET6LOADA |         i16     4 /  0 /  0     1   2   1   0   0   0   0   0 
00 ET6LOADA |         i17     4 /  0 /  0     1   2   1   0   0   0   0   0 
00 ET6LOADA |         i18     5 /  0 /  0     1   2   2   0   0   0   0   0 
00 ET6LOADA |         i19     5 /  0 /  0     1   2   2   0   0   0   0   0 
00 ET6LOADA |         i20     5 /  0 /  0     1   2   2   0   0   0   0   0 
00 ET6LOADA |         i21     5 /  0 /  0     1   2   2   0   0   0   0   0 
00 ET6LOADA |         i22     5 /  0 /  0     2   2   1   0   0   0   0   0 
00 ET6LOADA |         i23     4 /  0 /  0     2   2   0   0   0   0   0   0 
00 ET6LOADA |         i24    10 /  0 /  0     1   >   3   2   2   2   0   0 
00 ET6LOADA |         i25     9 /  0 /  0     1   >   3   2   2   1   0   0 
00 ET6LOADA |         i26     9 /  0 /  0     1   >   2   2   2   2   0   0 
00 ET6LOADA |         i27     9 /  0 /  0     1   >   2   2   2   2   0   0 
00 ET6LOADA |         i28     9 /  0 /  0     1   >   2   2   2   2   0   0 
00 ET6LOADA |         i29    10 /  0 /  0     2   >   2   2   2   2   0   0 
00 ET6LOADA |         i30    10 /  0 /  0     1   3   2   2   2   0   0   0 
00 ET6LOADA |         i31     9 /  0 /  0     3   2   2   2   0   0   0   0 
00 ET6LOADA |         i32     1 /  0 /  0     1   >   0   0   0   0   0   0 
00 ET6LOADA |         i33     2 /  0 /  0     1   1   0   0   0   0   0   0 
00 ET6LOADA |         i34    32 /  0 /  0    32   0   0   0   0   0   0   0 
00 ET6LOADA |         i35    32 /  0 /  0    32   0   0   0   0   0   0   0 
00 ET6LOADA |         i36     2 /  0 /  0     2   0   0   0   0   0   0   0 
00 ET6LOADA |         i37     2 /  0 /  0     2   0   0   0   0   0   0   0 
00 ET6LOADA |         i38     2 /  0 /  0     2   0   0   0   0   0   0   0 
00 ET6LOADA |         i39     2 /  0 /  0     2   0   0   0   0   0   0   0 
00 ET6LOADA |         i40     5 /  0 /  0     1   >   3   1   0   0   0   0 
00 ET6LOADA |         i41     6 /  0 /  0     2   2   2   0   0   0   0   0 
00 ET6LOADA |         i42     6 /  0 /  0     2   2   2   0   0   0   0   0 
00 ET6LOADA |         i43    26 /  0 /  0     2  24   0   0   0   0   0   0 
00 ET6LOADA |         i44    18 /  0 /  0     2  16   0   0   0   0   0   0 
00 ET6LOADA |         i45     6 /  0 /  0     3   2   1   0   0   0   0   0 
00 ET6LOADA |         i46     6 /  0 /  0     3   2   1   0   0   0   0   0 
00 ET6LOADA |         i47     6 /  0 /  0     3   2   1   0   0   0   0   0 
00 ET6LOADA |         x0      0 /  0          0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0 
00 ET6LOADA |  
00 ET6LOADA |  
00 ET6LOADA | Total ALU instructions: 0
00 ET6LOADA | Instructions per ALU:   0 / 0.0 / 0 (min/avg/max)
00 ET6LOADA |  
00 ET6LOADA | 0 seconds
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6loada' (Elapsed time 0.04s (0.13u+0.00s), Memory used 4209 Mb) on 04/17/2024 13:07:15
00 SCSCHED  |  
00 SCSCHED  | Boxes distribution by scheduling levels:
00 SCSCHED  | Level    164, boxes            6
00 SCSCHED  | Level    163, boxes            1
00 SCSCHED  | Level    162, boxes            4
00 SCSCHED  | Level    161, boxes            9
00 SCSCHED  | Level    160, boxes           16
00 SCSCHED  | Level    159, boxes           19
00 SCSCHED  | Level    158, boxes            8
00 SCSCHED  | Level    157, boxes           11
00 SCSCHED  | Level    156, boxes           19
00 SCSCHED  | Level    155, boxes           25
00 SCSCHED  | Level    154, boxes           29
00 SCSCHED  | Level    153, boxes           54
00 SCSCHED  | Level    152, boxes           65
00 SCSCHED  | Level    151, boxes           62
00 SCSCHED  | Level    150, boxes           74
00 SCSCHED  | Level    149, boxes          116
00 SCSCHED  | Level    148, boxes          172
00 SCSCHED  | Level    147, boxes          201
00 SCSCHED  | Level    146, boxes          254
00 SCSCHED  | Level    145, boxes          301
00 SCSCHED  | Level    144, boxes          407
00 SCSCHED  | Level    143, boxes          418
00 SCSCHED  | Level    142, boxes          376
00 SCSCHED  | Level    141, boxes          269
00 SCSCHED  | Level    140, boxes          187
00 SCSCHED  | Level    139, boxes          217
00 SCSCHED  | Level    138, boxes          252
00 SCSCHED  | Level    137, boxes          255
00 SCSCHED  | Level    136, boxes          243
00 SCSCHED  | Level    135, boxes          251
00 SCSCHED  | Level    134, boxes          244
00 SCSCHED  | Level    133, boxes          207
00 SCSCHED  | Level    132, boxes          264
00 SCSCHED  | Level    131, boxes          266
00 SCSCHED  | Level    130, boxes          231
00 SCSCHED  | Level    129, boxes          187
00 SCSCHED  | Level    128, boxes          131
00 SCSCHED  | Level    127, boxes          140
00 SCSCHED  | Level    126, boxes          167
00 SCSCHED  | Level    125, boxes          214
00 SCSCHED  | Level    124, boxes          195
00 SCSCHED  | Level    123, boxes          138
00 SCSCHED  | Level    122, boxes           85
00 SCSCHED  | Level    121, boxes           47
00 SCSCHED  | Level    120, boxes           25
00 SCSCHED  | Level    119, boxes           13
00 SCSCHED  | Level    118, boxes            6
00 SCSCHED  | Level    117, boxes            7
00 SCSCHED  | Level    116, boxes            7
00 SCSCHED  | Level    115, boxes            7
00 SCSCHED  | Level    114, boxes           12
00 SCSCHED  | Level    113, boxes           20
00 SCSCHED  | Level    112, boxes           32
00 SCSCHED  | Level    111, boxes           21
00 SCSCHED  | Level    110, boxes            7
00 SCSCHED  | Level    109, boxes            3
00 SCSCHED  | Level    108, boxes            1
00 SCSCHED  | Level    107, boxes            0
00 SCSCHED  | Level    106, boxes            0
00 SCSCHED  | Level    105, boxes            1
00 SCSCHED  | Level    104, boxes            1
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
00 SCSCHED  | Level     88, boxes            0
00 SCSCHED  | Level     87, boxes            1
00 SCSCHED  | Level     86, boxes            0
00 SCSCHED  | Level     85, boxes            0
00 SCSCHED  | Level     84, boxes            6
00 SCSCHED  | Level     83, boxes            7
00 SCSCHED  | Level     82, boxes            3
00 SCSCHED  | Level     81, boxes            3
00 SCSCHED  | Level     80, boxes            5
00 SCSCHED  | Level     79, boxes           11
00 SCSCHED  | Level     78, boxes            8
00 SCSCHED  | Level     77, boxes           12
00 SCSCHED  | Level     76, boxes           10
00 SCSCHED  | Level     75, boxes            8
00 SCSCHED  | Level     74, boxes           50
00 SCSCHED  | Level     73, boxes           53
00 SCSCHED  | Level     72, boxes           25
00 SCSCHED  | Level     71, boxes           97
00 SCSCHED  | Level     70, boxes          133
00 SCSCHED  | Level     69, boxes          291
00 SCSCHED  | Level     68, boxes          128
00 SCSCHED  | Level     67, boxes          231
00 SCSCHED  | Level     66, boxes          138
00 SCSCHED  | Level     65, boxes          305
00 SCSCHED  | Level     64, boxes          136
00 SCSCHED  | Level     63, boxes          232
00 SCSCHED  | Level     62, boxes          160
00 SCSCHED  | Level     61, boxes          319
00 SCSCHED  | Level     60, boxes          135
00 SCSCHED  | Level     59, boxes          246
00 SCSCHED  | Level     58, boxes          149
00 SCSCHED  | Level     57, boxes          326
00 SCSCHED  | Level     56, boxes          172
00 SCSCHED  | Level     55, boxes          268
00 SCSCHED  | Level     54, boxes          166
00 SCSCHED  | Level     53, boxes          308
00 SCSCHED  | Level     52, boxes          146
00 SCSCHED  | Level     51, boxes          278
00 SCSCHED  | Level     50, boxes          178
00 SCSCHED  | Level     49, boxes          333
00 SCSCHED  | Level     48, boxes          167
00 SCSCHED  | Level     47, boxes          278
00 SCSCHED  | Level     46, boxes          280
00 SCSCHED  | Level     45, boxes          520
00 SCSCHED  | Level     44, boxes          324
00 SCSCHED  | Level     43, boxes          367
00 SCSCHED  | Level     42, boxes          425
00 SCSCHED  | Level     41, boxes          535
00 SCSCHED  | Level     40, boxes          348
00 SCSCHED  | Level     39, boxes          466
00 SCSCHED  | Level     38, boxes          538
00 SCSCHED  | Level     37, boxes          559
00 SCSCHED  | Level     36, boxes          610
00 SCSCHED  | Level     35, boxes          692
00 SCSCHED  | Level     34, boxes          578
00 SCSCHED  | Level     33, boxes          651
00 SCSCHED  | Level     32, boxes          726
00 SCSCHED  | Level     31, boxes          847
00 SCSCHED  | Level     30, boxes          931
00 SCSCHED  | Level     29, boxes         1135
00 SCSCHED  | Level     28, boxes         1364
00 SCSCHED  | Level     27, boxes         1489
00 SCSCHED  | Level     26, boxes         1211
00 SCSCHED  | Level     25, boxes         1344
00 SCSCHED  | Level     24, boxes         1819
00 SCSCHED  | Level     23, boxes         1514
00 SCSCHED  | Level     22, boxes         1729
00 SCSCHED  | Level     21, boxes         1871
00 SCSCHED  | Level     20, boxes         1668
00 SCSCHED  | Level     19, boxes         1585
00 SCSCHED  | Level     18, boxes         1861
00 SCSCHED  | Level     17, boxes         3222
00 SCSCHED  | Level     16, boxes         3281
00 SCSCHED  | Level     15, boxes         2193
00 SCSCHED  | Level     14, boxes         2325
00 SCSCHED  | Level     13, boxes         2176
00 SCSCHED  | Level     12, boxes         2272
00 SCSCHED  | Level     11, boxes         3015
00 SCSCHED  | Level     10, boxes         3735
00 SCSCHED  | Level      9, boxes         4484
00 SCSCHED  | Level      8, boxes         5255
00 SCSCHED  | Level      7, boxes         7540
00 SCSCHED  | Level      6, boxes         5499
00 SCSCHED  | Level      5, boxes         6702
00 SCSCHED  | Level      4, boxes         6796
00 SCSCHED  | Level      3, boxes        11192
00 SCSCHED  | Level      2, boxes        19659
00 SCSCHED  | Level      1, boxes        44606
00 SCSCHED  |  
00 SCSCHED  | Tail      20, boxes         1853
00 SCSCHED  | Mapped: 5514 5-input LUTs, 373 6-input LUTs, 2 others. Saved 5967
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
00 SCSCHED  | box scheduling begins at 13:07:15...
00 SCSCHED  | estimated number of boxes 174462
00 SCSCHED  | 
00 SCSCHED  | 100000 placed.  max step 79  13:07:15  [360.00]
00 SCSCHED  | box scheduling ends at 13:07:15, max step 84
00 SCSCHED  | 
00 SCSCHED  | Relocated 1300 logic boxes (0 between chips), 512 flops
00 SCSCHED  | Rescheduled in global scope 0 boxes
00 SCSCHED  | Unmapped 74 boxes
00 SCSCHED  | Compacted 25632 FD01 boxes
00 SCSCHED  | Chip two-hop tries 0, success 0
00 SCSCHED  | 
00 SCSCHED  | Found DBO_CAPTURE and used it to control SACB capturing.
00 SCSCHED  | Max DBO capture step = 2
00 SCSCHED  | Extra 0 step is inserted between max_DBO capture step and interrupt
00 SCSCHED  | SA DONE signal is routed to GP HCB 1
00 SCSCHED  | Routed to interrupt HCB at chip 0 (board 0, chip 0, ep 397), at step 11 for signal 150814: xc_top._ET3_COMPILER_RESERVED_NAME_ORION_INTERRUPT_
00 SCSCHED  | Estimated IO probes = 9396, FF probes = 38351, DYNP probes = 240
00 SCSCHED  | extra probes per domain = 0
00 SCSCHED  | Trace control signals increase maxStep from 84 to 109
00 SCSCHED  | flops input routing begins at 13:07:15, max step 109...
00 SCSCHED  | 
00 SCSCHED  | flops input routing ends at 13:07:15, max step 109
00 SCSCHED  | 
00 SCSCHED  | data capturing begins at 13:07:15
00 SCSCHED  | 
00 SCSCHED  | 47683 nets to capture
00 SCSCHED  | Captured 64 qt_curr_emul_cycle nets in DCC 0
00 SCSCHED  | Captured 64 xc_top.simTime nets in DCC 0
00 SCSCHED  | set captured_nets_cycle_1 = 56832
00 SCSCHED  | set captured_nets_cycle_2_to_n = 14336
00 SCSCHED  | Trace depth = 4387072 cycles
00 SCSCHED  | Trace depth in DYNP mode = 4628197 cycles
00 SCSCHED  | Min step count due to probes is 84
00 SCSCHED  | building DCC_net table in et6confg
00 SCSCHED  | data capturing ends at 13:07:15, max step 109
00 SCSCHED  | Captured 47747 nets
00 SCSCHED  | used DCCs = 1, DCC utilization = 84%
00 SCSCHED  | 
00 SCSCHED  | scheduling complete
00 SCSCHED  | maximum step: 163.
00 SCSCHED  | step count: 164
00 SCSCHED  | 
00 SCSCHED  | 
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5analyzer' on 04/17/2024 13:07:15
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
00 ET5ANAL* |    . [000,000,017,6]   62 +   0         NET      98230      0  ET6_SYNC.QTLA%break_0
00 ET5ANAL* |    1 [000,000,017,6]   62 +   0    102  XBOB     68198   2: 1  ET6_XBOB_141
00 ET5ANAL* |    . [000,000,017,0]   61 +   1         NET      98231      1  QTLA%break
00 ET5ANAL* |    2 [000,000,016,1]   60 +   1    104  LOGIC    82517   2: 2  
00 ET5ANAL* |    . [000,000,016,0]   60 +   0         NET      97781      1  _ET3_COMPILER_RESERVED_NAME_COMBINED_BREAK_
00 ET5ANAL* |    3 [000,000,016,0]   60 +   0    105  LOGIC    85486   1: 1  
00 ET5ANAL* |    . [000,000,016,0]   59 +   1         NET      98261      2  _ET3_COMPILER_RESERVED_NAME_SDL_BREAK_
00 ET5ANAL* |    4 [000,000,085,3]   54 +   5    111  LOGIC    82516   4: 1  
00 ET5ANAL* |    . [000,000,085,0]   47 +   7         NET      98451      2  QTLA%SDL.top.run_stop_ctl.sa_infini_break
00 ET5ANAL* |    5 [000,000,076,0]   44 +   3    115  LOGIC    82124   4: 4  
00 ET5ANAL* |    . [000,000,076,2]   43 +   1         NET      88902      1  _ABbEP
00 ET5ANAL* |    6 [000,000,114,0]   40 +   3    119  LOGIC    82123   4: 2  
00 ET5ANAL* |    . [000,000,112,0]   38 +   2         NET      89729      1  _ABbEQ$inv5248
00 ET5ANAL* |    7 [000,000,112,0]   38 +   0    121  LOGIC    81251   3: 1  
00 ET5ANAL* |    . [000,000,112,3]   37 +   1         NET      89730      1  
00 ET5ANAL* |    8 [000,000,112,3]   37 +   0    122  LOGIC    81250   4: 1  
00 ET5ANAL* |    . [000,000,112,2]   37 +   0         NET      90023      1  _ABbFD$inv5186
00 ET5ANAL* |    9 [000,000,112,2]   37 +   0    123  LOGIC    80970   4: 3  
00 ET5ANAL* |    . [000,000,112,1]   37 +   0         NET      90101      1  _ABbKh$inv5167
00 ET5ANAL* |   10 [000,000,112,1]   37 +   0    124  LOGIC    80896   4: 1  
00 ET5ANAL* |    . [000,000,112,0]   37 +   0         NET      90102      1  
00 ET5ANAL* |   11 [000,000,112,0]   37 +   0    125  LOGIC    80895   4: 3  
00 ET5ANAL* |    . [000,000,112,0]   36 +   1         NET      90139      1  _ABbKi$inv5160
00 ET5ANAL* |   12 [000,000,078,0]   33 +   3    129  LOGIC    80859   4: 3  
00 ET5ANAL* |    . [000,000,078,0]   32 +   1         NET     117555      4  QTLA%cycle_num_shadow[55]
00 ET5ANAL* |   13 [000,000,113,0]   29 +   3    133  LOGIC    85531   1: 1  
00 ET5ANAL* |    . [000,000,113,0]   28 +   1         NET     100787     10  xc_top.simTime[55]
00 ET5ANAL* |   14 [000,000,078,0]   25 +   3    137  LOGIC    80839   3: 1  
00 ET5ANAL* |    . [000,000,078,0]   24 +   1         NET     148970     64  _ABlnm
00 ET5ANAL* |   15 [000,000,117,0]   21 +   3    141  LOGIC    39335   4: 2  
00 ET5ANAL* |    . [000,000,117,0]   20 +   1         NET     147028      1  _AAAB[57897]
00 ET5ANAL* |   16 [000,000,080,0]   17 +   3    145  LOGIC    23885   4: 2  
00 ET5ANAL* |    . [000,000,080,0]   13 +   4         NET     147030     12  _AAAB[54821]$inv496
00 ET5ANAL* |   17 [000,000,049,2]    8 +   5    151  LOGIC    23874   4: 2  
00 ET5ANAL* |    . [000,000,049,1]    8 +   0         NET     147031      2  xc_top.callEmuPI
00 ET5ANAL* |   18 [000,000,049,1]    8 +   0    152  LOGIC    46139   1: 1  
00 ET5ANAL* |    . [000,000,049,0]    8 +   0         NET     150812      2  UA@.xc_top.callEmuPI
00 ET5ANAL* |   19 [000,000,049,0]    8 +   0    153  LOGIC    21608   3: 3  
00 ET5ANAL* |    . [000,000,049,2]    7 +   1         NET     100753    249  
00 ET5ANAL* |   20 [000,000,049,2]    7 +   0    157  LOGIC    80642   2: 1  
00 ET5ANAL* |    . [000,000,049,2]    5 +   2         NET     100533      2  _ET3_COMPILER_RESERVED_NAME_SLOW_MODE_ENABLE_
00 ET5ANAL* |   21 [000,000,080,4]    0 +   5    163  LOGIC    85444   1: 1  
00 ET5ANAL* |    . [000,000,080,4]    0 +   0         NET     131566      1  _ABHyN
00 ET5ANAL* |   22 [000,000,080,4]    0 +   0    164  FD01     47434   4: 0  
00 ET5ANAL* | ======================================================================================
00 ET5ANAL* | 
00 ET5ANAL* | Critical paths by steps
00 ET5ANAL* | 
00 ET5ANAL* | Critical path  1                               sinks
00 ET5ANAL* | Count  Location      Step  Jump  Type    ID     ins:cr      Name
00 ET5ANAL* | --------------------------------------------------------------------------------------
00 ET5ANAL* | Breakpoint 68198 will add 101 steps after it is scheduled.
00 ET5ANAL* | Critical net starts from an actual critical location.
00 ET5ANAL* |    . [000,000,017,6]   62 +   0  NET      98230      0  ET6_SYNC.QTLA%break_0
00 ET5ANAL* |    1 [000,000,017,6]   62 +   0  XBOB     68198   2: 1  ET6_XBOB_141
00 ET5ANAL* |    . [000,000,017,0]   61 +   1  NET      98231      1  QTLA%break
00 ET5ANAL* |    2 [000,000,016,1]   60 +   1  LOGIC    82517   2: 2  
00 ET5ANAL* |    . [000,000,016,0]   60 +   0  NET      97781      1  _ET3_COMPILER_RESERVED_NAME_COMBINED_BREAK_
00 ET5ANAL* |    3 [000,000,016,0]   60 +   0  LOGIC    85486   1: 1  
00 ET5ANAL* |    . [000,000,016,0]   59 +   1  NET      98261      2  _ET3_COMPILER_RESERVED_NAME_SDL_BREAK_
00 ET5ANAL* |    4 [000,000,085,3]   54 +   5  LOGIC    82516   4: 4  
00 ET5ANAL* |    . [000,000,085,2]   54 +   0  NET      88592      1  
00 ET5ANAL* |    5 [000,000,085,2]   54 +   0  LOGIC    82515   4: 1  
00 ET5ANAL* |    . [000,000,085,4]   54 +   0  NET      88593      1  _ABbwg$inv5462
00 ET5ANAL* |    6 [000,000,085,4]   54 +   0  LOGIC    82514   4: 3  
00 ET5ANAL* |    . [000,000,085,0]   53 +   1  NET     118119     12  QTLA%SDL.top.run_stop_ctl.stop_request
00 ET5ANAL* |    7 [000,000,074,0]   50 +   3  LOGIC    82209   4: 3  
00 ET5ANAL* |    . [000,000,074,3]   49 +   1  NET     117154      3  QTLA%SDL.top.run_stop_ctl.stop_request_sum
00 ET5ANAL* |    8 [000,000,074,3]   49 +   0  LOGIC    82206   3: 2  
00 ET5ANAL* |    . [000,000,074,2]   49 +   0  NET      88772      2  QTLA%SDL.top.run_stop_ctl.stop_on_trigger
00 ET5ANAL* |    9 [000,000,074,2]   49 +   0  LOGIC    82203   3: 1  
00 ET5ANAL* |    . [000,000,074,1]   49 +   0  NET     118123     67  QTLA%SDL.top.run_stop_ctl.latched_trigger
00 ET5ANAL* |   10 [000,000,074,1]   49 +   0  LOGIC    82143   4: 4  
00 ET5ANAL* |    . [000,000,074,0]   49 +   0  NET      88891      1  _ABbwN
00 ET5ANAL* |   11 [000,000,074,0]   49 +   0  LOGIC    82142   4: 3  
00 ET5ANAL* |    . [000,000,074,0]   48 +   1  NET      96385      1  QTLA%SDL.top.trigger_sum
00 ET5ANAL* |   12 [000,000,085,1]   45 +   3  LOGIC    70166   4: 3  
00 ET5ANAL* |    . [000,000,085,0]   45 +   0  NET      96387      2  QTLA%SDL.top.tsm_0.lut_trigger
00 ET5ANAL* |   13 [000,000,085,0]   45 +   0  LOGIC    91163   1: 1  
00 ET5ANAL* |    . [000,000,085,0]   44 +   1  NET      62008      1  _ABfoH
00 ET5ANAL* |   14 [000,000,000,0]   33 +  11  XMPRe   173916  18:16  ET5_V1_H1.QTLA%SDL.top.tsm_0.main_instr.tsm_lut_OPT
00 ET5ANAL* |    . [000,000,082,0]   32 +   1  NET      67030      7  QTLA%SDL.top.tsm_0.tc2
00 ET5ANAL* |   15 [000,000,034,0]   27 +   5  LOGIC   124069   4: 4  
00 ET5ANAL* |    . [000,000,034,0]   26 +   1  NET      44962      1  _ABgOI
00 ET5ANAL* |   16 [000,000,034,0]   26 +   0  LOGIC   124068   4: 3  
00 ET5ANAL* |    . [000,000,038,3]   24 +   2  NET      44974      1  
00 ET5ANAL* |   17 [000,000,038,3]   24 +   0  LOGIC   124056   4: 1  
00 ET5ANAL* |    . [000,000,038,5]   23 +   1  NET      45006      2  _ABgOa
00 ET5ANAL* |   18 [000,000,038,5]   23 +   0  LOGIC   124024   3: 2  
00 ET5ANAL* |    . [000,000,038,4]   22 +   1  NET      61887      2  _ABgLQ
00 ET5ANAL* |   19 [000,000,000,0]    8 +  14  XMPRe   174128  18:15  ET5_V1_H1.QTLA%SDL.top.tsm_0.main_instr.cnt1.cnt_cmpval_OPT.Merger1
00 ET5ANAL* |    . [000,000,018,0]    7 +   1  NET      67198     43  QTLA%SDL.top.tsm_0.tsm_state[2]
00 ET5ANAL* |   20 [000,000,080,3]    0 +   7  FD01    105773   4: 0  
00 ET5ANAL* | --------------------------------------------------------------------------------------
00 ET5ANAL* | Maximum jump of 14 steps occurs at step 8
00 ET5ANAL* | 0 inter-chip hops, 0 steps inter-chip delay
00 ET5ANAL* | ======================================================================================
00 ET5ANAL* | End of critical path
00 ET5ANAL* | 
00 ET5ANAL* | 
00 ET5ANAL* | 
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5analyzer' (Elapsed time 0.02s (0.07u+0.00s), Memory used 4209 Mb) on 04/17/2024 13:07:15
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/SCsched' (Elapsed time 0.67s (0.75u+0.13s), Memory used 4209 Mb) on 04/17/2024 13:07:15
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6xtime' on 04/17/2024 13:07:15
00 DATABASE | Parms: ''
00 ET6XTIME |                                    
00 ET6XTIME |                ET6 EXTERNAL TIMING ANALYZER AND BITGEN
00 ET6XTIME |                            RELEASE 6.0.2.6
00 ET6XTIME |                                    
00 ET6XTIME | et6xtime created on Aug  3 2023 at 22:13:09.
00 ET6XTIME | found breakpoint at ep 142 box 68198 signal QTLA%break
00 ET6XTIME | There are no targets defined in the design
00 ET6XTIME | 
00 ET6XTIME | Generated xtime and ttime files
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6xtime' (Elapsed time 0.00s (0.00u+0.00s), Memory used 4209 Mb) on 04/17/2024 13:07:15
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lconf' on 04/17/2024 13:07:15
00 DATABASE | Parms: ''
00 ET3LCONF | * dbFiles/etapi.mem_slices creation file starts at 13:07:15, finishes at 13:07:15. Saved 191 slices, wrote 15280 bytes. (rc: 0)
00 ET3LCONF | * COMPILED without WIRE_DUPLICATION, for a SINGLE_SUBSET, with SIM_ACCEL 
00 ET3LCONF | COMPILED ON 04/17/2024 AT 13:07:14 WITH SEED 96974518
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lconf' (Elapsed time 0.00s (0.01u+0.00s), Memory used 4209 Mb) on 04/17/2024 13:07:15
00 DATABASE | Calling 'svproto' on 04/17/2024 13:07:15
00 DATABASE | Parms: 'xcva_top'
00 DATABASE | Return from 'svproto' (Elapsed time 0.14s (0.08u+0.01s), Memory used 4209 Mb) on 04/17/2024 13:07:15
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
