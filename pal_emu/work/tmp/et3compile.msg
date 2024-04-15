00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lib' on 04/15/2024 11:32:21
00 DATABASE | Parms: '-client'
00 ET3LIB   |                                    
00 ET3LIB   |                              ET3 LIBRARY
00 ET3LIB   |                            RELEASE 6.0.2.6
00 ET3LIB   |                           VXE, VEngineering
00 ET3LIB   | (c) 1995-2020 Cadence Design Systems, Inc. All rights reserved worldwide.
00 ET3LIB   |            See files in <rootdir>/share/vxe/install/Copyrights
00 ET3LIB   |                                    
00 ET3LIB   | ET3lib created on Aug  3 2023 at 22:13:09.
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lib' (Elapsed time 0.00s (0.00u+0.00s), Memory used 4225 Mb) on 04/15/2024 11:32:21
00 DATABASE | Calling 'ldproto' on 04/15/2024 11:32:21
00 DATABASE | Parms: 'qt_modular -combined PARTITIONS -rename xcva_top'
Info: 174463 ffDB boxes have been restored
Info: 182512 ffDB nets have been restored
00 DATABASE | Return from 'ldproto' (Elapsed time 0.13s (0.09u+0.02s), Memory used 4225 Mb) on 04/15/2024 11:32:21
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3confg' on 04/15/2024 11:32:21
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
00 ET3CONFG | ***** MB/XB wire table initialization took 0.000246 seconds.
00 ET3CONFG | ***** Found 0000000  MBO->MBI  possible links in this configuration.
00 ET3CONFG | ***** HIGHEST board found in emulation configuration is 5
00 ET3CONFG | load_module_version()          = 30
00 ET3CONFG | num_cycles_per_capture_frame   = 32
00 ET3CONFG | das_protocol()                 = 5
00 ET3CONFG | COMPILED ON 04/15/2024 AT 11:32:21
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
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/omlib' on 04/15/2024 11:32:21
00 DATABASE | Parms: ''
00 OMLIB    |                                    
00 OMLIB    |                           VXE, VEngineering
00 OMLIB    |             Copyright(C) 1995-2021, Cadence Design Systems
00 OMLIB    |                          All rights reserved
00 OMLIB    |                            RELEASE 6.0.2.6
00 OMLIB    |                                    
00 OMLIB    | omlib created on Aug  3 2023 at 22:05:33
00 OMLIB    | 
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/omlib' (Elapsed time 0.00s (0.00u+0.00s), Memory used 4225 Mb) on 04/15/2024 11:32:21
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3confg' (Elapsed time 0.03s (0.01u+0.00s), Memory used 4225 Mb) on 04/15/2024 11:32:21
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6ctl' on 04/15/2024 11:32:21
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6ctl' (Elapsed time 0.01s (0.01u+0.00s), Memory used 4225 Mb) on 04/15/2024 11:32:21
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5nlopt' on 04/15/2024 11:32:21
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5nlopt' (Elapsed time 0.07s (0.08u+0.02s), Memory used 4225 Mb) on 04/15/2024 11:32:21
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/SCsched' on 04/15/2024 11:32:21
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
00 SCSCHED  | Scheduling begins at 11:32:21...
00 SCSCHED  | 
00 SCSCHED  | Number of valid option entries for module SCsched = 0
00 SCSCHED  | Number of valid option entries for module SCsched = 0
00 SCSCHED  | Number of gates per domain is 4000000.
00 SCSCHED  | Number of chips is 1.
00 SCSCHED  | Number of domains is 1.0.
00 SCSCHED  | PrecompileDesignSizeOriginal = 643304
00 SCSCHED  | Design utilization: 16.1.
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6loada' on 04/15/2024 11:32:21
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
00 ET6LOADA | Outputs per ep:          ep[  0,0,2712] Outputs=11/26
00 ET6LOADA | Weighted outputs per ep: ep[  0,0,2712] Outputs=11/26
00 ET6LOADA | Inputs per ec:           ec[  0,0]      Inputs= 0/0
00 ET6LOADA | Inputs per ep:           ep[  0,0, 728] Inputs= 18/35
00 ET6LOADA | dbis per chip:           ec[  0,0]      dbis=   250/250
00 ET6LOADA | dbos per chip:           ec[  0,0]      dbos=   321/321
00 ET6LOADA | xbos per chip:           ec[  0,0]      xbos=   1/1
00 ET6LOADA | Boxes per eb:            eb[  0]        Boxes=  188220/188220
00 ET6LOADA | Boxes per ec:            ec[  0,0]      Boxes=  188220/188220
00 ET6LOADA | Boxes per ep:            ep[  0,0,2832] Boxes=  61/84
00 ET6LOADA |                                         Peak from memory ports= 1
00 ET6LOADA | Adjusted boxes per ep:   ep[  0,0,2840] Boxes=  52/60
00 ET6LOADA | Adjusted instruction usage: 10.5%
00 ET6LOADA | The design requires at least 1 domain.
00 ET6LOADA |  
00 ET6LOADA |  
00 ET6LOADA |  
00 ET6LOADA | Total INTRAM Accesses: 419
00 ET6LOADA | Accesses per INTRAM:   2 / 8.7 / 32 (min/avg/max)
00 ET6LOADA |  
00 ET6LOADA | Total EXTRAM Accesses: 0
00 ET6LOADA | Accesses per EXTRAM:   0 / 0.0 / 0 (min/avg/max)
00 ET6LOADA |  
00 ET6LOADA |           Memory Accesses
00 ET6LOADA | eb  ec  RAM    word/assm/TCAM   banks
00 ET6LOADA |  0  0   i00     7 /  0 /  0     1   >   1   >   1   2   2   0 
00 ET6LOADA |         i01     7 /  0 /  0     1   >   1   >   1   2   2   0 
00 ET6LOADA |         i02    26 /  0 /  0     1   >   1   >  24   0   0   0 
00 ET6LOADA |         i03    18 /  0 /  0     1   >   1   >  16   0   0   0 
00 ET6LOADA |         i04     6 /  0 /  0     1   >   1   >   2   2   0   0 
00 ET6LOADA |         i05     6 /  0 /  0     1   >   1   >   2   2   0   0 
00 ET6LOADA |         i06     6 /  0 /  0     1   >   1   >   2   2   0   0 
00 ET6LOADA |         i07     7 /  0 /  0     1   >   1   1   2   2   0   0 
00 ET6LOADA |         i08     7 /  0 /  0     1   >   >   >   2   2   2   0 
00 ET6LOADA |         i09     8 /  0 /  0     1   2   2   1   1   1   0   0 
00 ET6LOADA |         i10     8 /  0 /  0     1   2   2   2   1   0   0   0 
00 ET6LOADA |         i11     8 /  0 /  0     2   2   2   1   1   0   0   0 
00 ET6LOADA |         i12     8 /  0 /  0     2   2   2   1   1   0   0   0 
00 ET6LOADA |         i13     8 /  0 /  0     2   2   2   1   1   0   0   0 
00 ET6LOADA |         i14     8 /  0 /  0     2   1   2   2   1   0   0   0 
00 ET6LOADA |         i15     8 /  0 /  0     2   2   2   2   0   0   0   0 
00 ET6LOADA |         i16     2 /  0 /  0     1   >   >   >   1   >   >   > 
00 ET6LOADA |         i17     5 /  0 /  0     1   >   >   >   1   >   >   2 
00 ET6LOADA |         i18    10 /  0 /  0     1   >   >   >   1   1   3   4 
00 ET6LOADA |         i19    10 /  0 /  0     1   >   >   >   1   1   3   4 
00 ET6LOADA |         i20    11 /  0 /  0     1   >   >   >   1   2   4   3 
00 ET6LOADA |         i21    12 /  0 /  0     1   >   >   >   1   3   3   4 
00 ET6LOADA |         i22    11 /  0 /  0     1   >   >   >   1   4   3   2 
00 ET6LOADA |         i23    11 /  0 /  0     1   >   >   >   1   4   3   2 
00 ET6LOADA |         i24     9 /  0 /  0     1   >   1   3   2   2   0   0 
00 ET6LOADA |         i25    10 /  0 /  0     1   1   8   0   0   0   0   0 
00 ET6LOADA |         i26    10 /  0 /  0     1   1   8   0   0   0   0   0 
00 ET6LOADA |         i27    10 /  0 /  0     1   1   2   2   2   2   0   0 
00 ET6LOADA |         i28    10 /  0 /  0     1   1   2   2   2   2   0   0 
00 ET6LOADA |         i29    10 /  0 /  0     1   1   2   2   2   2   0   0 
00 ET6LOADA |         i30     8 /  0 /  0     1   1   2   2   2   0   0   0 
00 ET6LOADA |         i31    10 /  0 /  0     1   1   2   2   2   2   0   0 
00 ET6LOADA |         i32     5 /  0 /  0     1   >   3   1   0   0   0   0 
00 ET6LOADA |         i33     6 /  0 /  0     2   >   3   1   0   0   0   0 
00 ET6LOADA |         i34     6 /  0 /  0     1   1   2   2   0   0   0   0 
00 ET6LOADA |         i35     6 /  0 /  0     1   1   2   2   0   0   0   0 
00 ET6LOADA |         i36     6 /  0 /  0     1   1   2   2   0   0   0   0 
00 ET6LOADA |         i37     6 /  0 /  0     1   1   2   2   0   0   0   0 
00 ET6LOADA |         i38     6 /  0 /  0     1   1   2   2   0   0   0   0 
00 ET6LOADA |         i39     6 /  0 /  0     1   3   2   0   0   0   0   0 
00 ET6LOADA |         i40    32 /  0 /  0    32   0   0   0   0   0   0   0 
00 ET6LOADA |         i41    32 /  0 /  0    32   0   0   0   0   0   0   0 
00 ET6LOADA |         i42     2 /  0 /  0     2   0   0   0   0   0   0   0 
00 ET6LOADA |         i43     3 /  0 /  0     2   1   0   0   0   0   0   0 
00 ET6LOADA |         i44     2 /  0 /  0     2   0   0   0   0   0   0   0 
00 ET6LOADA |         i45     2 /  0 /  0     2   0   0   0   0   0   0   0 
00 ET6LOADA |         i46     2 /  0 /  0     2   0   0   0   0   0   0   0 
00 ET6LOADA |         i47     2 /  0 /  0     2   0   0   0   0   0   0   0 
00 ET6LOADA |         x0      0 /  0          0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0 
00 ET6LOADA |  
00 ET6LOADA |  
00 ET6LOADA | Total ALU instructions: 0
00 ET6LOADA | Instructions per ALU:   0 / 0.0 / 0 (min/avg/max)
00 ET6LOADA |  
00 ET6LOADA | 0 seconds
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6loada' (Elapsed time 0.04s (0.08u+0.00s), Memory used 4225 Mb) on 04/15/2024 11:32:21
00 SCSCHED  |  
00 SCSCHED  | Boxes distribution by scheduling levels:
00 SCSCHED  | Level    166, boxes            2
00 SCSCHED  | Level    165, boxes            1
00 SCSCHED  | Level    164, boxes            9
00 SCSCHED  | Level    163, boxes            0
00 SCSCHED  | Level    162, boxes            0
00 SCSCHED  | Level    161, boxes            0
00 SCSCHED  | Level    160, boxes            6
00 SCSCHED  | Level    159, boxes           17
00 SCSCHED  | Level    158, boxes           17
00 SCSCHED  | Level    157, boxes           25
00 SCSCHED  | Level    156, boxes           30
00 SCSCHED  | Level    155, boxes           40
00 SCSCHED  | Level    154, boxes           43
00 SCSCHED  | Level    153, boxes           63
00 SCSCHED  | Level    152, boxes           83
00 SCSCHED  | Level    151, boxes          128
00 SCSCHED  | Level    150, boxes          189
00 SCSCHED  | Level    149, boxes          246
00 SCSCHED  | Level    148, boxes          287
00 SCSCHED  | Level    147, boxes          329
00 SCSCHED  | Level    146, boxes          315
00 SCSCHED  | Level    145, boxes          348
00 SCSCHED  | Level    144, boxes          364
00 SCSCHED  | Level    143, boxes          377
00 SCSCHED  | Level    142, boxes          395
00 SCSCHED  | Level    141, boxes          387
00 SCSCHED  | Level    140, boxes          352
00 SCSCHED  | Level    139, boxes          285
00 SCSCHED  | Level    138, boxes          225
00 SCSCHED  | Level    137, boxes          209
00 SCSCHED  | Level    136, boxes          182
00 SCSCHED  | Level    135, boxes          171
00 SCSCHED  | Level    134, boxes          183
00 SCSCHED  | Level    133, boxes          150
00 SCSCHED  | Level    132, boxes          196
00 SCSCHED  | Level    131, boxes          235
00 SCSCHED  | Level    130, boxes          251
00 SCSCHED  | Level    129, boxes          170
00 SCSCHED  | Level    128, boxes          106
00 SCSCHED  | Level    127, boxes          110
00 SCSCHED  | Level    126, boxes           78
00 SCSCHED  | Level    125, boxes           74
00 SCSCHED  | Level    124, boxes           69
00 SCSCHED  | Level    123, boxes           54
00 SCSCHED  | Level    122, boxes           45
00 SCSCHED  | Level    121, boxes           23
00 SCSCHED  | Level    120, boxes           10
00 SCSCHED  | Level    119, boxes            4
00 SCSCHED  | Level    118, boxes            2
00 SCSCHED  | Level    117, boxes            5
00 SCSCHED  | Level    116, boxes            5
00 SCSCHED  | Level    115, boxes           16
00 SCSCHED  | Level    114, boxes           21
00 SCSCHED  | Level    113, boxes           33
00 SCSCHED  | Level    112, boxes           21
00 SCSCHED  | Level    111, boxes            8
00 SCSCHED  | Level    110, boxes            3
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
00 SCSCHED  | Level     88, boxes            0
00 SCSCHED  | Level     87, boxes            0
00 SCSCHED  | Level     86, boxes            0
00 SCSCHED  | Level     85, boxes            0
00 SCSCHED  | Level     84, boxes            0
00 SCSCHED  | Level     83, boxes            0
00 SCSCHED  | Level     82, boxes            0
00 SCSCHED  | Level     81, boxes            2
00 SCSCHED  | Level     80, boxes            0
00 SCSCHED  | Level     79, boxes            3
00 SCSCHED  | Level     78, boxes            0
00 SCSCHED  | Level     77, boxes            5
00 SCSCHED  | Level     76, boxes            3
00 SCSCHED  | Level     75, boxes            6
00 SCSCHED  | Level     74, boxes           50
00 SCSCHED  | Level     73, boxes           58
00 SCSCHED  | Level     72, boxes           37
00 SCSCHED  | Level     71, boxes           92
00 SCSCHED  | Level     70, boxes          109
00 SCSCHED  | Level     69, boxes          258
00 SCSCHED  | Level     68, boxes          103
00 SCSCHED  | Level     67, boxes          237
00 SCSCHED  | Level     66, boxes          155
00 SCSCHED  | Level     65, boxes          312
00 SCSCHED  | Level     64, boxes          141
00 SCSCHED  | Level     63, boxes          220
00 SCSCHED  | Level     62, boxes          118
00 SCSCHED  | Level     61, boxes          263
00 SCSCHED  | Level     60, boxes           99
00 SCSCHED  | Level     59, boxes          227
00 SCSCHED  | Level     58, boxes          159
00 SCSCHED  | Level     57, boxes          332
00 SCSCHED  | Level     56, boxes          197
00 SCSCHED  | Level     55, boxes          276
00 SCSCHED  | Level     54, boxes          109
00 SCSCHED  | Level     53, boxes          258
00 SCSCHED  | Level     52, boxes          189
00 SCSCHED  | Level     51, boxes          351
00 SCSCHED  | Level     50, boxes          278
00 SCSCHED  | Level     49, boxes          457
00 SCSCHED  | Level     48, boxes          292
00 SCSCHED  | Level     47, boxes          307
00 SCSCHED  | Level     46, boxes          143
00 SCSCHED  | Level     45, boxes          356
00 SCSCHED  | Level     44, boxes          315
00 SCSCHED  | Level     43, boxes          423
00 SCSCHED  | Level     42, boxes          220
00 SCSCHED  | Level     41, boxes          334
00 SCSCHED  | Level     40, boxes          322
00 SCSCHED  | Level     39, boxes          555
00 SCSCHED  | Level     38, boxes          503
00 SCSCHED  | Level     37, boxes          704
00 SCSCHED  | Level     36, boxes          738
00 SCSCHED  | Level     35, boxes          860
00 SCSCHED  | Level     34, boxes         1222
00 SCSCHED  | Level     33, boxes         1155
00 SCSCHED  | Level     32, boxes         1120
00 SCSCHED  | Level     31, boxes         1231
00 SCSCHED  | Level     30, boxes          896
00 SCSCHED  | Level     29, boxes          870
00 SCSCHED  | Level     28, boxes          779
00 SCSCHED  | Level     27, boxes          683
00 SCSCHED  | Level     26, boxes          617
00 SCSCHED  | Level     25, boxes          796
00 SCSCHED  | Level     24, boxes         1425
00 SCSCHED  | Level     23, boxes         1708
00 SCSCHED  | Level     22, boxes         1572
00 SCSCHED  | Level     21, boxes         1644
00 SCSCHED  | Level     20, boxes         2212
00 SCSCHED  | Level     19, boxes         2164
00 SCSCHED  | Level     18, boxes         2098
00 SCSCHED  | Level     17, boxes         3479
00 SCSCHED  | Level     16, boxes         3339
00 SCSCHED  | Level     15, boxes         1883
00 SCSCHED  | Level     14, boxes         2057
00 SCSCHED  | Level     13, boxes         2148
00 SCSCHED  | Level     12, boxes         2288
00 SCSCHED  | Level     11, boxes         2914
00 SCSCHED  | Level     10, boxes         4217
00 SCSCHED  | Level      9, boxes         4894
00 SCSCHED  | Level      8, boxes         4909
00 SCSCHED  | Level      7, boxes         8314
00 SCSCHED  | Level      6, boxes         5525
00 SCSCHED  | Level      5, boxes         5857
00 SCSCHED  | Level      4, boxes         7134
00 SCSCHED  | Level      3, boxes        11221
00 SCSCHED  | Level      2, boxes        19413
00 SCSCHED  | Level      1, boxes        44501
00 SCSCHED  |  
00 SCSCHED  | Tail      20, boxes         1830
00 SCSCHED  | Mapped: 5619 5-input LUTs, 398 6-input LUTs, 1 others. Saved 6096
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
00 SCSCHED  | box scheduling begins at 11:32:21...
00 SCSCHED  | estimated number of boxes 174462
00 SCSCHED  | 
00 SCSCHED  | 100000 placed.  max step 71  11:32:21  [360.00]
00 SCSCHED  | box scheduling ends at 11:32:22, max step 76
00 SCSCHED  | 
00 SCSCHED  | Relocated 1191 logic boxes (0 between chips), 335 flops
00 SCSCHED  | Rescheduled in global scope 0 boxes
00 SCSCHED  | Unmapped 232 boxes
00 SCSCHED  | Compacted 25632 FD01 boxes
00 SCSCHED  | Chip two-hop tries 0, success 0
00 SCSCHED  | 
00 SCSCHED  | Found DBO_CAPTURE and used it to control SACB capturing.
00 SCSCHED  | Max DBO capture step = 2
00 SCSCHED  | Extra 0 step is inserted between max_DBO capture step and interrupt
00 SCSCHED  | SA DONE signal is routed to GP HCB 1
00 SCSCHED  | Routed to interrupt HCB at chip 0 (board 0, chip 0, ep 397), at step 27 for signal 150814: xc_top._ET3_COMPILER_RESERVED_NAME_ORION_INTERRUPT_
00 SCSCHED  | Estimated IO probes = 9396, FF probes = 38351, DYNP probes = 240
00 SCSCHED  | extra probes per domain = 0
00 SCSCHED  | Trace control signals increase maxStep from 76 to 103
00 SCSCHED  | flops input routing begins at 11:32:22, max step 103...
00 SCSCHED  | 
00 SCSCHED  | flops input routing ends at 11:32:22, max step 103
00 SCSCHED  | 
00 SCSCHED  | data capturing begins at 11:32:22
00 SCSCHED  | 
00 SCSCHED  | 47683 nets to capture
00 SCSCHED  | Captured 64 qt_curr_emul_cycle nets in DCC 0
00 SCSCHED  | Captured 64 xc_top.simTime nets in DCC 0
00 SCSCHED  | set captured_nets_cycle_1 = 54784
00 SCSCHED  | set captured_nets_cycle_2_to_n = 13312
00 SCSCHED  | Trace depth = 4704224 cycles
00 SCSCHED  | Trace depth in DYNP mode = 4971026 cycles
00 SCSCHED  | Min step count due to probes is 77
00 SCSCHED  | building DCC_net table in et6confg
00 SCSCHED  | data capturing ends at 11:32:22, max step 103
00 SCSCHED  | Captured 47747 nets
00 SCSCHED  | used DCCs = 1, DCC utilization = 87%
00 SCSCHED  | 
00 SCSCHED  | scheduling complete
00 SCSCHED  | maximum step: 163.
00 SCSCHED  | step count: 164
00 SCSCHED  | 
00 SCSCHED  | 
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5analyzer' on 04/15/2024 11:32:22
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
00 ET5ANAL* |    . [000,000,273,6]   61 +   0         NET      98230      0  ET6_SYNC.QTLA%break_0
00 ET5ANAL* |    1 [000,000,273,6]   61 +   0    102  XBOB     68198   2: 1  ET6_XBOB_141
00 ET5ANAL* |    . [000,000,273,0]   60 +   1         NET      98231      1  QTLA%break
00 ET5ANAL* |    2 [000,000,259,1]   57 +   3    108  LOGIC    82517   2: 2  
00 ET5ANAL* |    . [000,000,259,0]   57 +   0         NET      97781      1  _ET3_COMPILER_RESERVED_NAME_COMBINED_BREAK_
00 ET5ANAL* |    3 [000,000,259,0]   57 +   0    109  LOGIC    85486   1: 1  
00 ET5ANAL* |    . [000,000,262,0]   55 +   2         NET      98261      2  _ET3_COMPILER_RESERVED_NAME_SDL_BREAK_
00 ET5ANAL* |    4 [000,000,262,0]   55 +   0    111  LOGIC    82516   4: 1  
00 ET5ANAL* |    . [000,000,262,0]   54 +   1         NET      98451      2  QTLA%SDL.top.run_stop_ctl.sa_infini_break
00 ET5ANAL* |    5 [000,000,245,2]   49 +   5    117  LOGIC    82124   4: 3  
00 ET5ANAL* |    . [000,000,245,0]   49 +   0         NET      89056      1  _ABbLt
00 ET5ANAL* |    6 [000,000,245,0]   49 +   0    118  LOGIC    82029   4: 1  
00 ET5ANAL* |    . [000,000,240,0]   44 +   5         NET      89737      1  
00 ET5ANAL* |    7 [000,000,240,0]   44 +   0    121  LOGICx   81243   4: 2  
00 ET5ANAL* |    . [000,000,240,0]   39 +   5         NET      90176      1  _ABbSg$inv5153
00 ET5ANAL* |    8 [000,000,228,0]   36 +   3    125  LOGIC    80824   4: 3  
00 ET5ANAL* |    . [000,000,228,1]   35 +   1         NET      90194      2  _ABbSo
00 ET5ANAL* |    9 [000,000,228,1]   35 +   0    128  LOGIC    80807   3: 2  
00 ET5ANAL* |    . [000,000,228,0]   35 +   0         NET      90210      2  _ABbSp
00 ET5ANAL* |   10 [000,000,228,0]   35 +   0    129  LOGIC    80791   4: 3  
00 ET5ANAL* |    . [000,000,228,0]   34 +   1         NET     118977     13  QTLA%cycle_num[59]
00 ET5ANAL* |   11 [000,000,270,0]   29 +   5    135  LOGIC    85522   1: 1  
00 ET5ANAL* |    . [000,000,270,0]   28 +   1         NET     100779      9  xc_top.simTime[59]
00 ET5ANAL* |   12 [000,000,240,0]   23 +   5    141  LOGIC    80775   3: 1  
00 ET5ANAL* |    . [000,000,243,0]   21 +   2         NET     148970     64  _ABlnm
00 ET5ANAL* |   13 [000,000,243,0]   21 +   0    143  LOGIC    39335   4: 2  
00 ET5ANAL* |    . [000,000,245,1]   19 +   2         NET     147028      1  _AAAB[57897]
00 ET5ANAL* |   14 [000,000,245,1]   19 +   0    145  LOGIC    23885   4: 3  
00 ET5ANAL* |    . [000,000,245,0]   19 +   0         NET     147032      4  _AAAB[54824]
00 ET5ANAL* |   15 [000,000,245,0]   19 +   0    146  LOGIC    23871   3: 2  
00 ET5ANAL* |    . [000,000,245,0]   18 +   1         NET     147033      2  xc_top.ckgHoldPI
00 ET5ANAL* |   16 [000,000,021,1]   13 +   5    147  LOGIC    46140   1: 1  
00 ET5ANAL* |    . [000,000,021,0]   13 +   0         NET     150810      2  UA@.xc_top.ckgHoldPI
00 ET5ANAL* |   17 [000,000,021,0]   13 +   0    153  LOGIC    21609   3: 3  
00 ET5ANAL* |    . [000,000,021,0]   12 +   1         NET     100753    249  
00 ET5ANAL* |   18 [000,000,198,2]    7 +   5    159  LOGIC    80642   2: 1  
00 ET5ANAL* |    . [000,000,198,0]    0 +   7         NET     100533      2  _ET3_COMPILER_RESERVED_NAME_SLOW_MODE_ENABLE_
00 ET5ANAL* |   19 [000,000,198,0]    0 +   0    160  LOGIC    85444   1: 1  
00 ET5ANAL* |    . [000,000,198,0]    0 +   0         NET     131566      1  _ABHyN
00 ET5ANAL* |   20 [000,000,198,0]    0 +   0    166  FD01     47434   4: 0  
00 ET5ANAL* | ======================================================================================
00 ET5ANAL* | 
00 ET5ANAL* | Critical paths by steps
00 ET5ANAL* | 
00 ET5ANAL* | Critical path  1                               sinks
00 ET5ANAL* | Count  Location      Step  Jump  Type    ID     ins:cr      Name
00 ET5ANAL* | --------------------------------------------------------------------------------------
00 ET5ANAL* | Breakpoint 68198 will add 101 steps after it is scheduled.
00 ET5ANAL* | Critical net starts from an actual critical location.
00 ET5ANAL* |    . [000,000,273,6]   61 +   0  NET      98230      0  ET6_SYNC.QTLA%break_0
00 ET5ANAL* |    1 [000,000,273,6]   61 +   0  XBOB     68198   2: 1  ET6_XBOB_141
00 ET5ANAL* |    . [000,000,273,0]   60 +   1  NET      98231      1  QTLA%break
00 ET5ANAL* |    2 [000,000,259,1]   57 +   3  LOGIC    82517   2: 2  
00 ET5ANAL* |    . [000,000,259,0]   57 +   0  NET      97781      1  _ET3_COMPILER_RESERVED_NAME_COMBINED_BREAK_
00 ET5ANAL* |    3 [000,000,259,0]   57 +   0  LOGIC    85486   1: 1  
00 ET5ANAL* |    . [000,000,262,0]   55 +   2  NET      98261      2  _ET3_COMPILER_RESERVED_NAME_SDL_BREAK_
00 ET5ANAL* |    4 [000,000,262,0]   55 +   0  LOGIC    82516   4: 1  
00 ET5ANAL* |    . [000,000,262,0]   54 +   1  NET      98451      2  QTLA%SDL.top.run_stop_ctl.sa_infini_break
00 ET5ANAL* |    5 [000,000,245,2]   49 +   5  LOGIC    82124   4: 3  
00 ET5ANAL* |    . [000,000,245,0]   49 +   0  NET      89056      1  _ABbLt
00 ET5ANAL* |    6 [000,000,245,0]   49 +   0  LOGICx   82029   4: 1  
00 ET5ANAL* |    . [000,000,245,3]   48 +   1  NET      89057      1  
00 ET5ANAL* |    7 [000,000,245,3]   48 +   0  LOGIC    85232   3: 2  
00 ET5ANAL* |    . [000,000,245,4]   48 +   0  NET      89448      1  
00 ET5ANAL* |    8 [000,000,245,4]   48 +   0  LOGIC    81524   4: 4  
00 ET5ANAL* |    . [000,000,245,0]   47 +   1  NET     119105     13  QTLA%cycle_num[16]
00 ET5ANAL* |    9 [000,000,266,0]   42 +   5  LOGIC    85608   1: 1  
00 ET5ANAL* |    . [000,000,266,0]   41 +   1  NET     100869     10  xc_top.simTime[16]
00 ET5ANAL* |   10 [000,000,246,0]   36 +   5  LOGICx   81511   3: 3  
00 ET5ANAL* |    . [000,000,246,0]   35 +   1  NET      89462      1  _AAAB[54913]
00 ET5ANAL* |   11 [000,000,000,3]   20 +  15  LOGIC    81508   3: 1  
00 ET5ANAL* |    . [000,000,000,4]   20 +   0  NET      89471      6  _AAAB[54840]
00 ET5ANAL* |   12 [000,000,000,4]   20 +   0  LOGIC    81503   3: 1  
00 ET5ANAL* |    . [000,000,000,0]   19 +   1  NET      89472      1  xc_top.evalStepPI[16]
00 ET5ANAL* |   13 [000,000,000,0]   19 +   0  LOGIC    85786   1: 1  
00 ET5ANAL* |    . [000,000,000,1]   18 +   1  NET     100722      2  UA@.xc_top.evalStepPI[16]
00 ET5ANAL* |   14 [000,000,000,1]   18 +   0  LOGIC    68059   3: 3  
00 ET5ANAL* |    . [000,000,000,0]   12 +   6  NET     100753    249  
00 ET5ANAL* |   15 [000,000,198,2]    7 +   5  LOGIC    80642   2: 2  
00 ET5ANAL* |    . [000,000,198,0]    7 +   0  NET     100534      2  
00 ET5ANAL* |   16 [000,000,198,0]    7 +   0  LOGIC    84104   4: 4  
00 ET5ANAL* |    . [000,000,198,0]    6 +   1  NET     100538      2  DBI_APPLY
00 ET5ANAL* |   17 [000,000,128,0]    0 +   6  DBIB     68197   0: 0  ET6_DBIB_0_0_0
00 ET5ANAL* | --------------------------------------------------------------------------------------
00 ET5ANAL* | Maximum jump of 15 steps occurs at step 20
00 ET5ANAL* | 0 inter-chip hops, 0 steps inter-chip delay
00 ET5ANAL* | ======================================================================================
00 ET5ANAL* | End of critical path
00 ET5ANAL* | 
00 ET5ANAL* | 
00 ET5ANAL* | 
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5analyzer' (Elapsed time 0.01s (0.04u+0.00s), Memory used 4225 Mb) on 04/15/2024 11:32:22
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/SCsched' (Elapsed time 0.68s (0.75u+0.05s), Memory used 4225 Mb) on 04/15/2024 11:32:22
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6xtime' on 04/15/2024 11:32:22
00 DATABASE | Parms: ''
00 ET6XTIME |                                    
00 ET6XTIME |                ET6 EXTERNAL TIMING ANALYZER AND BITGEN
00 ET6XTIME |                            RELEASE 6.0.2.6
00 ET6XTIME |                                    
00 ET6XTIME | et6xtime created on Aug  3 2023 at 22:13:09.
00 ET6XTIME | found breakpoint at ep 2190 box 68198 signal QTLA%break
00 ET6XTIME | There are no targets defined in the design
00 ET6XTIME | 
00 ET6XTIME | Generated xtime and ttime files
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6xtime' (Elapsed time 0.01s (0.00u+0.00s), Memory used 4225 Mb) on 04/15/2024 11:32:22
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lconf' on 04/15/2024 11:32:22
00 DATABASE | Parms: ''
00 ET3LCONF | * dbFiles/etapi.mem_slices creation file starts at 11:32:22, finishes at 11:32:22. Saved 191 slices, wrote 15280 bytes. (rc: 0)
00 ET3LCONF | * COMPILED without WIRE_DUPLICATION, for a SINGLE_SUBSET, with SIM_ACCEL 
00 ET3LCONF | COMPILED ON 04/15/2024 AT 11:32:21 WITH SEED 431122898
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lconf' (Elapsed time 0.01s (0.00u+0.00s), Memory used 4225 Mb) on 04/15/2024 11:32:22
00 DATABASE | Calling 'svproto' on 04/15/2024 11:32:22
00 DATABASE | Parms: 'xcva_top'
00 DATABASE | Return from 'svproto' (Elapsed time 0.12s (0.08u+0.02s), Memory used 4225 Mb) on 04/15/2024 11:32:22
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
