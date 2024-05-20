00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lib' on 05/20/2024 11:38:10
00 DATABASE | Parms: '-client'
00 ET3LIB   |                                    
00 ET3LIB   |                              ET3 LIBRARY
00 ET3LIB   |                            RELEASE 6.0.2.6
00 ET3LIB   |                           VXE, VEngineering
00 ET3LIB   | (c) 1995-2020 Cadence Design Systems, Inc. All rights reserved worldwide.
00 ET3LIB   |            See files in <rootdir>/share/vxe/install/Copyrights
00 ET3LIB   |                                    
00 ET3LIB   | ET3lib created on Aug  3 2023 at 22:13:09.
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lib' (Elapsed time 0.00s (0.00u+0.00s), Memory used 4584 Mb) on 05/20/2024 11:38:10
00 DATABASE | Calling 'ldproto' on 05/20/2024 11:38:10
00 DATABASE | Parms: 'qt_modular -combined PARTITIONS -rename xcva_top'
Info: 367941 ffDB boxes have been restored
Info: 381028 ffDB nets have been restored
00 DATABASE | Return from 'ldproto' (Elapsed time 0.26s (0.17u+0.03s), Memory used 4584 Mb) on 05/20/2024 11:38:10
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3confg' on 05/20/2024 11:38:10
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
00 ET3CONFG | ***** MB/XB wire table initialization took 0.000272 seconds.
00 ET3CONFG | ***** Found 0000000  MBO->MBI  possible links in this configuration.
00 ET3CONFG | ***** HIGHEST board found in emulation configuration is 5
00 ET3CONFG | load_module_version()          = 30
00 ET3CONFG | num_cycles_per_capture_frame   = 32
00 ET3CONFG | das_protocol()                 = 5
00 ET3CONFG | COMPILED ON 05/20/2024 AT 11:38:10
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
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/omlib' on 05/20/2024 11:38:10
00 DATABASE | Parms: ''
00 OMLIB    |                                    
00 OMLIB    |                           VXE, VEngineering
00 OMLIB    |             Copyright(C) 1995-2021, Cadence Design Systems
00 OMLIB    |                          All rights reserved
00 OMLIB    |                            RELEASE 6.0.2.6
00 OMLIB    |                                    
00 OMLIB    | omlib created on Aug  3 2023 at 22:05:33
00 OMLIB    | 
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/omlib' (Elapsed time 0.00s (0.00u+0.00s), Memory used 4584 Mb) on 05/20/2024 11:38:10
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3confg' (Elapsed time 0.03s (0.02u+0.00s), Memory used 4584 Mb) on 05/20/2024 11:38:10
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6ctl' on 05/20/2024 11:38:10
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6ctl' (Elapsed time 0.01s (0.00u+0.00s), Memory used 4584 Mb) on 05/20/2024 11:38:10
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5nlopt' on 05/20/2024 11:38:10
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
00 ET5NLOPT | Reconnected 68 deep logic cones, created 590 boxes,
00 ET5NLOPT | deleted 570 boxes, optimized out cones 0
00 ET5NLOPT | Retiming is already done
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5nlopt' (Elapsed time 0.08s (0.17u+0.02s), Memory used 4584 Mb) on 05/20/2024 11:38:10
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/SCsched' on 05/20/2024 11:38:10
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
00 SCSCHED  | Scheduling begins at 11:38:10...
00 SCSCHED  | 
00 SCSCHED  | Number of valid option entries for module SCsched = 0
00 SCSCHED  | Number of valid option entries for module SCsched = 0
00 SCSCHED  | Number of gates per domain is 4000000.
00 SCSCHED  | Number of chips is 1.
00 SCSCHED  | Number of domains is 1.0.
00 SCSCHED  | PrecompileDesignSizeOriginal = 806767
00 SCSCHED  | Design utilization: 20.2.
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6loada' on 05/20/2024 11:38:10
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
00 ET6LOADA | Average fan-out = 2.865148
00 ET6LOADA |  
00 ET6LOADA | Type                     Peak           Avg/Peak
00 ET6LOADA | Outputs per ec:          ec[  0,0]      Outputs=0/0
00 ET6LOADA | Weighted outputs per ec: ec[  0,0]      Outputs=0/0
00 ET6LOADA | Outputs per ep:          ep[  0,0,1024] Outputs=23/53
00 ET6LOADA | Weighted outputs per ep: ep[  0,0,1024] Outputs=23/53
00 ET6LOADA | Inputs per ec:           ec[  0,0]      Inputs= 0/0
00 ET6LOADA | Inputs per ep:           ep[  0,0, 960] Inputs= 41/85
00 ET6LOADA | dbis per chip:           ec[  0,0]      dbis=   73/73
00 ET6LOADA | dbos per chip:           ec[  0,0]      dbos=   146/146
00 ET6LOADA | xbos per chip:           ec[  0,0]      xbos=   1/1
00 ET6LOADA | Boxes per eb:            eb[  0]        Boxes=  388785/388785
00 ET6LOADA | Boxes per ec:            ec[  0,0]      Boxes=  388785/388785
00 ET6LOADA | Boxes per ep:            ep[  0,0,2432] Boxes=  126/180
00 ET6LOADA |                                         Peak from memory ports= 10
00 ET6LOADA | Adjusted boxes per ep:   ep[  0,0,2208] Boxes=  118/139
00 ET6LOADA | Adjusted instruction usage: 23.5%
00 ET6LOADA | The design requires at least 1 domain.
00 ET6LOADA |  
00 ET6LOADA |  
00 ET6LOADA |  
00 ET6LOADA | Total INTRAM Accesses: 734
00 ET6LOADA | Accesses per INTRAM:   1 / 15.3 / 65 (min/avg/max)
00 ET6LOADA |  
00 ET6LOADA | Total EXTRAM Accesses: 0
00 ET6LOADA | Accesses per EXTRAM:   0 / 0.0 / 0 (min/avg/max)
00 ET6LOADA |  
00 ET6LOADA |           Memory Accesses
00 ET6LOADA | eb  ec  RAM    word/assm/TCAM   banks
00 ET6LOADA |  0  0   i00    18 /  0 /  0    18   >   >   >   >   >   >   > 
00 ET6LOADA |         i01    16 /  0 /  0     1   >   >   >   8   >   3   4 
00 ET6LOADA |         i02    15 /  0 /  0     1   >   >   >   9   >   3   2 
00 ET6LOADA |         i03    17 /  0 /  0     1   >   >   >   9   >   3   4 
00 ET6LOADA |         i04    15 /  0 /  0     1   >   >   >   9   >   3   2 
00 ET6LOADA |         i05    15 /  0 /  0     1   >   >   >   9   >   3   2 
00 ET6LOADA |         i06    16 /  0 /  0     8   >   3   3   2   0   0   0 
00 ET6LOADA |         i07    17 /  0 /  0     8   >   3   2   2   2   0   0 
00 ET6LOADA |         i08    11 /  0 /  0     1   >   >   2   1   3   3   0 
00 ET6LOADA |         i09    13 /  0 /  0     6   >   4   3   0   0   0   0 
00 ET6LOADA |         i10    16 /  0 /  0     8   >   8   0   0   0   0   0 
00 ET6LOADA |         i11    11 /  0 /  0     1   1   1   1   1   3   3   0 
00 ET6LOADA |         i12    12 /  0 /  0     1   1   1   1   1   4   1   2 
00 ET6LOADA |         i13    13 /  0 /  0     1   1   1   1   1   3   3   2 
00 ET6LOADA |         i14    13 /  0 /  0     1   1   1   1   1   3   3   2 
00 ET6LOADA |         i15    13 /  0 /  0     1   1   1   1   3   4   2   0 
00 ET6LOADA |         i16     6 /  0 /  0     6   >   0   0   0   0   0   0 
00 ET6LOADA |         i17     1 /  0 /  0     1   >   0   0   0   0   0   0 
00 ET6LOADA |         i18     1 /  0 /  0     1   >   0   0   0   0   0   0 
00 ET6LOADA |         i19     2 /  0 /  0     1   1   0   0   0   0   0   0 
00 ET6LOADA |         i20     2 /  0 /  0     1   1   0   0   0   0   0   0 
00 ET6LOADA |         i21     4 /  0 /  0     1   3   0   0   0   0   0   0 
00 ET6LOADA |         i22    65 /  0 /  0     1  64   0   0   0   0   0   0 
00 ET6LOADA |         i23    65 /  0 /  0     1  64   0   0   0   0   0   0 
00 ET6LOADA |         i24    13 /  0 /  0     1   >   >   >   1   5   3   3 
00 ET6LOADA |         i25    14 /  0 /  0     1   >   >   >   1   6   3   3 
00 ET6LOADA |         i26    14 /  0 /  0     6   >   2   3   3   0   0   0 
00 ET6LOADA |         i27    13 /  0 /  0     6   >   4   3   0   0   0   0 
00 ET6LOADA |         i28    15 /  0 /  0     1   >   1   >   1   4   3   5 
00 ET6LOADA |         i29    14 /  0 /  0     1   >   1   >   1   1   8   2 
00 ET6LOADA |         i30    14 /  0 /  0     1   >   1   >   1   8   3   0 
00 ET6LOADA |         i31    14 /  0 /  0     1   >   1   1   3   2   3   3 
00 ET6LOADA |         i32    14 /  0 /  0     1   >   >   >   3   3   4   3 
00 ET6LOADA |         i33    14 /  0 /  0     1   >   >   >   3   3   4   3 
00 ET6LOADA |         i34    14 /  0 /  0     1   >   >   >   3   3   4   3 
00 ET6LOADA |         i35    35 /  0 /  0     3   >  32   0   0   0   0   0 
00 ET6LOADA |         i36    13 /  0 /  0     3   3   4   3   0   0   0   0 
00 ET6LOADA |         i37    15 /  0 /  0     3   3   4   3   2   0   0   0 
00 ET6LOADA |         i38    27 /  0 /  0     3  24   0   0   0   0   0   0 
00 ET6LOADA |         i39    14 /  0 /  0     3   3   3   3   2   0   0   0 
00 ET6LOADA |         i40    12 /  0 /  0     1   >   1   >   3   4   3   0 
00 ET6LOADA |         i41    12 /  0 /  0     1   >   1   3   4   3   0   0 
00 ET6LOADA |         i42    12 /  0 /  0     1   >   3   3   3   2   0   0 
00 ET6LOADA |         i43    12 /  0 /  0     1   >   3   3   3   2   0   0 
00 ET6LOADA |         i44    13 /  0 /  0     1   >   3   4   3   2   0   0 
00 ET6LOADA |         i45    13 /  0 /  0     1   >   3   4   3   2   0   0 
00 ET6LOADA |         i46    13 /  0 /  0     1   >   3   3   6   0   0   0 
00 ET6LOADA |         i47    13 /  0 /  0     1   >   3   3   3   3   0   0 
00 ET6LOADA |         x0      0 /  0          0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0 
00 ET6LOADA |  
00 ET6LOADA |  
00 ET6LOADA | Total ALU instructions: 0
00 ET6LOADA | Instructions per ALU:   0 / 0.0 / 0 (min/avg/max)
00 ET6LOADA |  
00 ET6LOADA | 0 seconds
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6loada' (Elapsed time 0.10s (0.21u+0.00s), Memory used 4584 Mb) on 05/20/2024 11:38:10
00 SCSCHED  |  
00 SCSCHED  | Boxes distribution by scheduling levels:
00 SCSCHED  | Level    213, boxes            1
00 SCSCHED  | Level    212, boxes            0
00 SCSCHED  | Level    211, boxes            1
00 SCSCHED  | Level    210, boxes            5
00 SCSCHED  | Level    209, boxes            0
00 SCSCHED  | Level    208, boxes           34
00 SCSCHED  | Level    207, boxes          206
00 SCSCHED  | Level    206, boxes          223
00 SCSCHED  | Level    205, boxes           72
00 SCSCHED  | Level    204, boxes           26
00 SCSCHED  | Level    203, boxes            6
00 SCSCHED  | Level    202, boxes           12
00 SCSCHED  | Level    201, boxes            9
00 SCSCHED  | Level    200, boxes           12
00 SCSCHED  | Level    199, boxes           13
00 SCSCHED  | Level    198, boxes           13
00 SCSCHED  | Level    197, boxes            9
00 SCSCHED  | Level    196, boxes           12
00 SCSCHED  | Level    195, boxes           33
00 SCSCHED  | Level    194, boxes           35
00 SCSCHED  | Level    193, boxes           29
00 SCSCHED  | Level    192, boxes           41
00 SCSCHED  | Level    191, boxes           49
00 SCSCHED  | Level    190, boxes           40
00 SCSCHED  | Level    189, boxes           47
00 SCSCHED  | Level    188, boxes           47
00 SCSCHED  | Level    187, boxes           43
00 SCSCHED  | Level    186, boxes           38
00 SCSCHED  | Level    185, boxes           48
00 SCSCHED  | Level    184, boxes           73
00 SCSCHED  | Level    183, boxes          103
00 SCSCHED  | Level    182, boxes          106
00 SCSCHED  | Level    181, boxes          115
00 SCSCHED  | Level    180, boxes          110
00 SCSCHED  | Level    179, boxes          128
00 SCSCHED  | Level    178, boxes          168
00 SCSCHED  | Level    177, boxes          164
00 SCSCHED  | Level    176, boxes          178
00 SCSCHED  | Level    175, boxes          194
00 SCSCHED  | Level    174, boxes          245
00 SCSCHED  | Level    173, boxes          236
00 SCSCHED  | Level    172, boxes          236
00 SCSCHED  | Level    171, boxes          194
00 SCSCHED  | Level    170, boxes          182
00 SCSCHED  | Level    169, boxes          151
00 SCSCHED  | Level    168, boxes          138
00 SCSCHED  | Level    167, boxes           95
00 SCSCHED  | Level    166, boxes           99
00 SCSCHED  | Level    165, boxes          114
00 SCSCHED  | Level    164, boxes          115
00 SCSCHED  | Level    163, boxes          131
00 SCSCHED  | Level    162, boxes          141
00 SCSCHED  | Level    161, boxes          129
00 SCSCHED  | Level    160, boxes          104
00 SCSCHED  | Level    159, boxes           66
00 SCSCHED  | Level    158, boxes          160
00 SCSCHED  | Level    157, boxes          218
00 SCSCHED  | Level    156, boxes          298
00 SCSCHED  | Level    155, boxes          179
00 SCSCHED  | Level    154, boxes          108
00 SCSCHED  | Level    153, boxes           86
00 SCSCHED  | Level    152, boxes           51
00 SCSCHED  | Level    151, boxes           61
00 SCSCHED  | Level    150, boxes           59
00 SCSCHED  | Level    149, boxes           45
00 SCSCHED  | Level    148, boxes           45
00 SCSCHED  | Level    147, boxes           48
00 SCSCHED  | Level    146, boxes           82
00 SCSCHED  | Level    145, boxes          141
00 SCSCHED  | Level    144, boxes          205
00 SCSCHED  | Level    143, boxes          193
00 SCSCHED  | Level    142, boxes          239
00 SCSCHED  | Level    141, boxes          290
00 SCSCHED  | Level    140, boxes          346
00 SCSCHED  | Level    139, boxes          405
00 SCSCHED  | Level    138, boxes          527
00 SCSCHED  | Level    137, boxes          499
00 SCSCHED  | Level    136, boxes          441
00 SCSCHED  | Level    135, boxes          390
00 SCSCHED  | Level    134, boxes          425
00 SCSCHED  | Level    133, boxes          489
00 SCSCHED  | Level    132, boxes          332
00 SCSCHED  | Level    131, boxes          484
00 SCSCHED  | Level    130, boxes          395
00 SCSCHED  | Level    129, boxes          496
00 SCSCHED  | Level    128, boxes          278
00 SCSCHED  | Level    127, boxes          362
00 SCSCHED  | Level    126, boxes          290
00 SCSCHED  | Level    125, boxes          434
00 SCSCHED  | Level    124, boxes          306
00 SCSCHED  | Level    123, boxes          372
00 SCSCHED  | Level    122, boxes          243
00 SCSCHED  | Level    121, boxes          343
00 SCSCHED  | Level    120, boxes          172
00 SCSCHED  | Level    119, boxes          278
00 SCSCHED  | Level    118, boxes          152
00 SCSCHED  | Level    117, boxes          287
00 SCSCHED  | Level    116, boxes          152
00 SCSCHED  | Level    115, boxes          277
00 SCSCHED  | Level    114, boxes          153
00 SCSCHED  | Level    113, boxes          288
00 SCSCHED  | Level    112, boxes          149
00 SCSCHED  | Level    111, boxes          272
00 SCSCHED  | Level    110, boxes          163
00 SCSCHED  | Level    109, boxes          326
00 SCSCHED  | Level    108, boxes          240
00 SCSCHED  | Level    107, boxes          416
00 SCSCHED  | Level    106, boxes          255
00 SCSCHED  | Level    105, boxes          337
00 SCSCHED  | Level    104, boxes          206
00 SCSCHED  | Level    103, boxes          331
00 SCSCHED  | Level    102, boxes          175
00 SCSCHED  | Level    101, boxes          310
00 SCSCHED  | Level    100, boxes          194
00 SCSCHED  | Level     99, boxes          322
00 SCSCHED  | Level     98, boxes          240
00 SCSCHED  | Level     97, boxes          311
00 SCSCHED  | Level     96, boxes          162
00 SCSCHED  | Level     95, boxes          231
00 SCSCHED  | Level     94, boxes           91
00 SCSCHED  | Level     93, boxes          264
00 SCSCHED  | Level     92, boxes          213
00 SCSCHED  | Level     91, boxes          353
00 SCSCHED  | Level     90, boxes          260
00 SCSCHED  | Level     89, boxes          372
00 SCSCHED  | Level     88, boxes          372
00 SCSCHED  | Level     87, boxes          455
00 SCSCHED  | Level     86, boxes          487
00 SCSCHED  | Level     85, boxes          598
00 SCSCHED  | Level     84, boxes          355
00 SCSCHED  | Level     83, boxes          428
00 SCSCHED  | Level     82, boxes          385
00 SCSCHED  | Level     81, boxes          512
00 SCSCHED  | Level     80, boxes          274
00 SCSCHED  | Level     79, boxes          414
00 SCSCHED  | Level     78, boxes          330
00 SCSCHED  | Level     77, boxes          489
00 SCSCHED  | Level     76, boxes          400
00 SCSCHED  | Level     75, boxes          512
00 SCSCHED  | Level     74, boxes          405
00 SCSCHED  | Level     73, boxes          665
00 SCSCHED  | Level     72, boxes          662
00 SCSCHED  | Level     71, boxes          896
00 SCSCHED  | Level     70, boxes          869
00 SCSCHED  | Level     69, boxes          868
00 SCSCHED  | Level     68, boxes          822
00 SCSCHED  | Level     67, boxes          875
00 SCSCHED  | Level     66, boxes          766
00 SCSCHED  | Level     65, boxes          739
00 SCSCHED  | Level     64, boxes          803
00 SCSCHED  | Level     63, boxes          925
00 SCSCHED  | Level     62, boxes          932
00 SCSCHED  | Level     61, boxes         1086
00 SCSCHED  | Level     60, boxes         1041
00 SCSCHED  | Level     59, boxes         1013
00 SCSCHED  | Level     58, boxes         1045
00 SCSCHED  | Level     57, boxes         1055
00 SCSCHED  | Level     56, boxes          933
00 SCSCHED  | Level     55, boxes          953
00 SCSCHED  | Level     54, boxes          955
00 SCSCHED  | Level     53, boxes          883
00 SCSCHED  | Level     52, boxes          778
00 SCSCHED  | Level     51, boxes          798
00 SCSCHED  | Level     50, boxes          780
00 SCSCHED  | Level     49, boxes          800
00 SCSCHED  | Level     48, boxes          787
00 SCSCHED  | Level     47, boxes          793
00 SCSCHED  | Level     46, boxes          871
00 SCSCHED  | Level     45, boxes          891
00 SCSCHED  | Level     44, boxes          972
00 SCSCHED  | Level     43, boxes         1100
00 SCSCHED  | Level     42, boxes         1216
00 SCSCHED  | Level     41, boxes         1208
00 SCSCHED  | Level     40, boxes         1189
00 SCSCHED  | Level     39, boxes         1196
00 SCSCHED  | Level     38, boxes         1174
00 SCSCHED  | Level     37, boxes         1317
00 SCSCHED  | Level     36, boxes         1334
00 SCSCHED  | Level     35, boxes         1634
00 SCSCHED  | Level     34, boxes         1978
00 SCSCHED  | Level     33, boxes         2444
00 SCSCHED  | Level     32, boxes         2690
00 SCSCHED  | Level     31, boxes         3148
00 SCSCHED  | Level     30, boxes         2982
00 SCSCHED  | Level     29, boxes         3375
00 SCSCHED  | Level     28, boxes         3467
00 SCSCHED  | Level     27, boxes         4080
00 SCSCHED  | Level     26, boxes         3969
00 SCSCHED  | Level     25, boxes         4140
00 SCSCHED  | Level     24, boxes         4408
00 SCSCHED  | Level     23, boxes         4667
00 SCSCHED  | Level     22, boxes         5576
00 SCSCHED  | Level     21, boxes         6000
00 SCSCHED  | Level     20, boxes         5660
00 SCSCHED  | Level     19, boxes         6407
00 SCSCHED  | Level     18, boxes         5970
00 SCSCHED  | Level     17, boxes         6723
00 SCSCHED  | Level     16, boxes         6146
00 SCSCHED  | Level     15, boxes         7286
00 SCSCHED  | Level     14, boxes         7584
00 SCSCHED  | Level     13, boxes         8672
00 SCSCHED  | Level     12, boxes         9076
00 SCSCHED  | Level     11, boxes        10128
00 SCSCHED  | Level     10, boxes        10347
00 SCSCHED  | Level      9, boxes        10060
00 SCSCHED  | Level      8, boxes         9222
00 SCSCHED  | Level      7, boxes        12563
00 SCSCHED  | Level      6, boxes         8692
00 SCSCHED  | Level      5, boxes        13157
00 SCSCHED  | Level      4, boxes        12676
00 SCSCHED  | Level      3, boxes        17373
00 SCSCHED  | Level      2, boxes        23276
00 SCSCHED  | Level      1, boxes        55196
00 SCSCHED  |  
00 SCSCHED  | Tail      44, boxes         3687
00 SCSCHED  | Mapped: 16807 5-input LUTs, 1737 6-input LUTs, 438 others. Saved 19227
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
00 SCSCHED  | box scheduling begins at 11:38:10...
00 SCSCHED  | estimated number of boxes 366314
00 SCSCHED  | 
00 SCSCHED  | 100000 placed.  max step 118  11:38:11  [360.00]
00 SCSCHED  | 200000 placed.  max step 133  11:38:11  [720.00]
00 SCSCHED  | 300000 placed.  max step 143  11:38:11  [1080.00]
00 SCSCHED  | box scheduling ends at 11:38:12, max step 145
00 SCSCHED  | 
00 SCSCHED  | Relocated 4742 logic boxes (0 between chips), 307 flops
00 SCSCHED  | Rescheduled in global scope 0 boxes
00 SCSCHED  | Unmapped 210 boxes
00 SCSCHED  | Compacted 24409 FD01 boxes
00 SCSCHED  | Chip two-hop tries 0, success 0
00 SCSCHED  | 
00 SCSCHED  | Found DBO_CAPTURE and used it to control SACB capturing.
00 SCSCHED  | Max DBO capture step = 2
00 SCSCHED  | Extra 0 step is inserted between max_DBO capture step and interrupt
00 SCSCHED  | SA DONE signal is routed to GP HCB 1
00 SCSCHED  | Routed to interrupt HCB at chip 0 (board 0, chip 0, ep 2957), at step 17 for signal 323397: xc_top._ET3_COMPILER_RESERVED_NAME_ORION_INTERRUPT_
00 SCSCHED  | Estimated IO probes = 15708, FF probes = 65072, DYNP probes = 174
00 SCSCHED  | extra probes per domain = 0
00 SCSCHED  | flops input routing begins at 11:38:12, max step 145...
00 SCSCHED  | 
00 SCSCHED  | flops input routing ends at 11:38:12, max step 145
00 SCSCHED  | 
00 SCSCHED  | data capturing begins at 11:38:12
00 SCSCHED  | 
00 SCSCHED  | 80716 nets to capture
00 SCSCHED  | Captured 64 qt_curr_emul_cycle nets in DCC 0
00 SCSCHED  | Captured 64 xc_top.simTime nets in DCC 0
00 SCSCHED  | Captured 64 xc_top.simTime@QTshadow nets in DCC 0
00 SCSCHED  | set captured_nets_cycle_1 = 88576
00 SCSCHED  | set captured_nets_cycle_2_to_n = 20480
00 SCSCHED  | Trace depth = 3039584 cycles
00 SCSCHED  | Trace depth in DYNP mode = 4194304 cycles
00 SCSCHED  | Min step count due to probes is 124
00 SCSCHED  | building DCC_net table in et6confg
00 SCSCHED  | data capturing ends at 11:38:12, max step 145
00 SCSCHED  | Captured 80780 nets
00 SCSCHED  | used DCCs = 1, DCC utilization = 91%
00 SCSCHED  | 
00 SCSCHED  | scheduling complete
00 SCSCHED  | maximum step: 183.
00 SCSCHED  | step count: 184
00 SCSCHED  | 
00 SCSCHED  | 
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5analyzer' on 05/20/2024 11:38:12
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
00 ET5ANAL* | Instructions per cycle: 184
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
00 ET5ANAL* | Breakpoint 30821 will add 101 steps after it is scheduled.
00 ET5ANAL* |    . [000,000,017,6]   83 +   0         NET     318549      0  ET6_SYNC.QTLA%break_0
00 ET5ANAL* |    1 [000,000,017,6]   83 +   0    102  XBOB     30821   2: 1  ET6_XBOB_141
00 ET5ANAL* |    . [000,000,017,1]   83 +   0         NET     318550      1  QTLA%break
00 ET5ANAL* |    2 [000,000,017,1]   83 +   0    103  LOGIC    72343   2: 2  
00 ET5ANAL* |    . [000,000,017,0]   83 +   0         NET     318369      1  _ET3_COMPILER_RESERVED_NAME_COMBINED_BREAK_
00 ET5ANAL* |    3 [000,000,017,0]   83 +   0    104  LOGIC    85984   1: 1  
00 ET5ANAL* |    . [000,000,017,0]   82 +   1         NET     320951      2  _ET3_COMPILER_RESERVED_NAME_SDL_BREAK_
00 ET5ANAL* |    4 [000,000,339,0]   77 +   5    110  LOGIC    72342   4: 4  
00 ET5ANAL* |    . [000,000,339,2]   76 +   1         NET     287022      1  
00 ET5ANAL* |    5 [000,000,339,2]   76 +   0    111  LOGIC    72341   4: 1  
00 ET5ANAL* |    . [000,000,339,4]   76 +   0         NET     287023      1  _ADoqU$inv5381
00 ET5ANAL* |    6 [000,000,339,4]   76 +   0    112  LOGIC    72340   4: 3  
00 ET5ANAL* |    . [000,000,339,3]   75 +   1         NET     366265     12  QTLA%SDL.top.run_stop_ctl.stop_request
00 ET5ANAL* |    7 [000,000,339,3]   75 +   0    113  LOGIC    72285   4: 2  
00 ET5ANAL* |    . [000,000,339,2]   75 +   0         NET     366274      3  QTLA%SDL.top.run_stop_ctl.stop_request_sum
00 ET5ANAL* |    8 [000,000,339,2]   75 +   0    114  LOGIC    72282   3: 2  
00 ET5ANAL* |    . [000,000,339,0]   75 +   0         NET     287069      2  QTLA%SDL.top.run_stop_ctl.stop_on_trigger
00 ET5ANAL* |    9 [000,000,339,0]   75 +   0    115  LOGIC    72279   3: 1  
00 ET5ANAL* |    . [000,000,339,3]   74 +   1         NET     364145     67  QTLA%SDL.top.run_stop_ctl.latched_trigger
00 ET5ANAL* |   10 [000,000,339,3]   74 +   0    116  LOGIC    72219   4: 4  
00 ET5ANAL* |    . [000,000,339,2]   74 +   0         NET     287188      1  _ADoqf
00 ET5ANAL* |   11 [000,000,339,2]   74 +   0    117  LOGIC    72218   4: 4  
00 ET5ANAL* |    . [000,000,339,0]   74 +   0         NET     287197      3  _ADovA$inv5376
00 ET5ANAL* |   12 [000,000,339,0]   74 +   0    118  LOGIC    72199   2: 1  
00 ET5ANAL* |    . [000,000,339,3]   73 +   1         NET     287198      2  QTLA%SDL.top.run_stop_ctl.disable_acq_break
00 ET5ANAL* |   13 [000,000,339,3]   73 +   0    119  LOGIC    72198   2: 1  
00 ET5ANAL* |    . [000,000,339,2]   73 +   0         NET     320993     19  QTLA%SDL.top.run_stop_ctl.tsm_init_restore
00 ET5ANAL* |   14 [000,000,339,2]   73 +   0    120  LOGIC    72189   2: 1  
00 ET5ANAL* |    . [000,000,339,1]   73 +   0         NET     321031     92  QTLA%SDL.top.tsm_restore
00 ET5ANAL* |   15 [000,000,339,1]   73 +   0    121  LOGIC    72064   2: 2  
00 ET5ANAL* |    . [000,000,339,0]   73 +   0         NET     321032     20  QTLA%SDL.top.tsm_init
00 ET5ANAL* |   16 [000,000,339,0]   73 +   0    122  LOGIC    72062   4: 4  
00 ET5ANAL* |    . [000,000,339,3]   72 +   1         NET     364645      2  QTLA%SDL.top.run_stop_ctl.tsx1
00 ET5ANAL* |   17 [000,000,339,3]   72 +   0    123  LOGIC    72061   4: 3  
00 ET5ANAL* |    . [000,000,339,2]   72 +   0         NET     287412      6  QTLA%SDL.top.run_stop_ctl.sim_or_rtl_data_valid
00 ET5ANAL* |   18 [000,000,339,2]   72 +   0    124  LOGIC    72055   3: 3  
00 ET5ANAL* |    . [000,000,339,2]   71 +   1         NET     287414      1  _ADozU$inv5373
00 ET5ANAL* |   19 [000,000,161,3]   66 +   5    130  LOGIC    72052   4: 4  
00 ET5ANAL* |    . [000,000,161,2]   66 +   0         NET     287415      2  CVA_UA_1X_ANY_PHASE_ACTIVE
00 ET5ANAL* |   20 [000,000,161,2]   66 +   0    132  LOGIC    72051   2: 2  
00 ET5ANAL* |    . [000,000,161,1]   66 +   0         NET     337771      3  xc_top.evalOn
00 ET5ANAL* |   21 [000,000,161,1]   66 +   0    133  LOGIC    72048   4: 3  
00 ET5ANAL* |    . [000,000,161,0]   66 +   0         NET     325794      2  _AAAC[27355]
00 ET5ANAL* |   22 [000,000,161,0]   66 +   0    134  LOGIC    37757   2: 1  
00 ET5ANAL* |    . [000,000,161,3]   65 +   1         NET     133033      3  _AAAC[28815]
00 ET5ANAL* |   23 [000,000,161,3]   65 +   0    135  LOGIC   275852   4: 1  
00 ET5ANAL* |    . [000,000,161,2]   65 +   0         NET      86613      1  _AAAC[27334]$inv18404
00 ET5ANAL* |   24 [000,000,161,2]   65 +   0    136  LOGIC   275851   4: 1  
00 ET5ANAL* |    . [000,000,161,1]   65 +   0         NET      86614      1  
00 ET5ANAL* |   25 [000,000,161,1]   65 +   0    137  LOGIC   275850   4: 4  
00 ET5ANAL* |    . [000,000,161,0]   65 +   0         NET     325315     24  _AAAA[6754]
00 ET5ANAL* |   26 [000,000,161,0]   65 +   0    138  LOGIC    77307   4: 4  
00 ET5ANAL* |    . [000,000,161,4]   64 +   1         NET     284103      1  _AAAA[5472]$inv6121
00 ET5ANAL* |   27 [000,000,029,0]   59 +   5    144  LOGIC    85353   3: 1  
00 ET5ANAL* |    . [000,000,029,0]   58 +   1         NET     285634      9  _AAAA[6084]
00 ET5ANAL* |   28 [000,000,051,0]   55 +   3    148  LOGIC    74085   3: 1  
00 ET5ANAL* |    . [000,000,051,0]   54 +   1         NET     285866      1  _AAAA[6086]
00 ET5ANAL* |   29 [000,000,009,1]   51 +   3    152  LOGIC    73740   4: 2  
00 ET5ANAL* |    . [000,000,009,0]   51 +   0         NET     285868      1  
00 ET5ANAL* |   30 [000,000,009,0]   51 +   0    153  LOGIC    73738   4: 4  
00 ET5ANAL* |    . [000,000,009,0]   49 +   2         NET     333531     18  IXC_GFIFO.I.I.rptr[14]
00 ET5ANAL* |   31 [000,000,055,0]   46 +   3    157  LOGIC    86197   1: 1  
00 ET5ANAL* |    . [000,000,055,0]   45 +   1         NET     285869      2  _AAAE[2389]
00 ET5ANAL* |   32 [000,000,003,1]   42 +   3    161  LOGIC    73737   2: 2  
00 ET5ANAL* |    . [000,000,003,0]   42 +   0         NET     285871     11  _AAAE[255]
00 ET5ANAL* |   33 [000,000,003,0]   42 +   0    162  LOGIC    85310   4: 2  
00 ET5ANAL* |    . [000,000,003,5]   41 +   1         NET     285925      1  _AAAE[1670]$inv5547
00 ET5ANAL* |   34 [000,000,003,5]   41 +   0    163  LOGIC    73684   4: 1  
00 ET5ANAL* |    . [000,000,003,4]   41 +   0         NET     285926      1  
00 ET5ANAL* |   35 [000,000,003,4]   41 +   0    164  LOGIC    73683   4: 1  
00 ET5ANAL* |    . [000,000,003,0]   40 +   1         NET     285933      4  _AAAE[1630]
00 ET5ANAL* |   36 [000,000,055,1]   37 +   3    168  LOGIC    73676   2: 2  
00 ET5ANAL* |    . [000,000,055,0]   37 +   0         NET     285934      2  _AAAE[1627]
00 ET5ANAL* |   37 [000,000,055,0]   37 +   0    169  LOGIC    73675   2: 2  
00 ET5ANAL* |    . [000,000,055,3]   36 +   1         NET     285935      2  _AAAE[1625]
00 ET5ANAL* |   38 [000,000,055,3]   36 +   0    170  LOGIC    73674   2: 1  
00 ET5ANAL* |    . [000,000,055,2]   36 +   0         NET     285936      2  _AAAE[1623]$inv5544
00 ET5ANAL* |   39 [000,000,055,2]   36 +   0    171  LOGIC    73673   3: 1  
00 ET5ANAL* |    . [000,000,055,1]   36 +   0         NET     285937      2  _ACxjN$inv5543
00 ET5ANAL* |   40 [000,000,055,1]   36 +   0    172  LOGIC    73672   3: 1  
00 ET5ANAL* |    . [000,000,055,0]   36 +   0         NET     285938      2  _AAAE[1620]$inv5542
00 ET5ANAL* |   41 [000,000,055,0]   36 +   0    173  LOGIC    73671   3: 1  
00 ET5ANAL* |    . [000,000,055,3]   35 +   1         NET     285939      2  _ACxjU$inv5541
00 ET5ANAL* |   42 [000,000,055,3]   35 +   0    174  LOGIC    73670   3: 1  
00 ET5ANAL* |    . [000,000,055,2]   35 +   0         NET     285940      2  _AAAE[1616]$inv5540
00 ET5ANAL* |   43 [000,000,055,2]   35 +   0    175  LOGIC    73669   3: 1  
00 ET5ANAL* |    . [000,000,055,1]   35 +   0         NET     285941      2  _ACxjb$inv5539
00 ET5ANAL* |   44 [000,000,055,1]   35 +   0    176  LOGIC    73668   3: 1  
00 ET5ANAL* |    . [000,000,055,0]   35 +   0         NET     285942      2  _AAAE[1613]$inv5538
00 ET5ANAL* |   45 [000,000,055,0]   35 +   0    177  LOGIC    73667   3: 1  
00 ET5ANAL* |    . [000,000,055,3]   34 +   1         NET     285943      2  _ACxji$inv5537
00 ET5ANAL* |   46 [000,000,055,3]   34 +   0    178  LOGIC    73666   3: 1  
00 ET5ANAL* |    . [000,000,055,2]   34 +   0         NET     285947      2  _AAAE[1610]$inv5535
00 ET5ANAL* |   47 [000,000,055,2]   34 +   0    179  LOGIC    73664   3: 1  
00 ET5ANAL* |    . [000,000,055,1]   34 +   0         NET     285951      2  _ACxjp$inv5533
00 ET5ANAL* |   48 [000,000,055,1]   34 +   0    180  LOGIC    73662   3: 3  
00 ET5ANAL* |    . [000,000,055,0]   34 +   0         NET     285956      2  _AAAE[1606]
00 ET5ANAL* |   49 [000,000,055,0]   34 +   0    181  LOGIC    73659   4: 1  
00 ET5ANAL* |    . [000,000,054,7]   31 +   3         NET     285970      2  _AAAE[1599]
00 ET5ANAL* |   50 [000,000,054,7]   31 +   0    183  LOGIC    73644   3: 3  
00 ET5ANAL* |    . [000,000,054,0]   31 +   0         NET     285977      2  _ACxjw$inv5521
00 ET5ANAL* |   51 [000,000,054,0]   31 +   0    185  LOGIC    73636   3: 3  
00 ET5ANAL* |    . [000,000,054,3]   30 +   1         NET     285986      2  _AAAE[1597]$inv5517
00 ET5ANAL* |   52 [000,000,054,3]   30 +   0    186  LOGIC    73627   3: 3  
00 ET5ANAL* |    . [000,000,054,2]   30 +   0         NET     285996      2  _ACxkD$inv5511
00 ET5ANAL* |   53 [000,000,054,2]   30 +   0    187  LOGIC    73617   3: 3  
00 ET5ANAL* |    . [000,000,054,1]   30 +   0         NET     286004      2  _AAAE[1593]$inv5507
00 ET5ANAL* |   54 [000,000,054,1]   30 +   0    188  LOGIC    73609   3: 3  
00 ET5ANAL* |    . [000,000,054,3]   29 +   1         NET     286013      2  _ACxkK$inv5503
00 ET5ANAL* |   55 [000,000,054,3]   29 +   0    189  LOGIC    73600   3: 3  
00 ET5ANAL* |    . [000,000,054,1]   29 +   0         NET     286019      2  _AAAE[1590]$inv5500
00 ET5ANAL* |   56 [000,000,054,1]   29 +   0    190  LOGIC    73594   3: 3  
00 ET5ANAL* |    . [000,000,054,6]   28 +   1         NET     286028      2  _ACxkR$inv5497
00 ET5ANAL* |   57 [000,000,054,6]   28 +   0    191  LOGIC    73586   3: 3  
00 ET5ANAL* |    . [000,000,054,0]   28 +   0         NET     286041      2  _AAAE[1587]$inv5491
00 ET5ANAL* |   58 [000,000,054,0]   28 +   0    192  LOGIC    73575   2: 1  
00 ET5ANAL* |    . [000,000,054,5]   27 +   1         NET     286043      4  _AAAE[1561]
00 ET5ANAL* |   59 [000,000,054,5]   27 +   0    193  LOGIC    73573   4: 1  
00 ET5ANAL* |    . [000,000,054,4]   23 +   4         NET     286044      2  
00 ET5ANAL* |   60 [000,000,054,4]   23 +   0    194  LOGIC    73572   4: 1  
00 ET5ANAL* |    . [000,000,050,0]   21 +   2         NET     324021      2  _AAAE[56173]
00 ET5ANAL* |   61 [000,000,050,0]   21 +   0    196  LOGIC    30449   3: 2  
00 ET5ANAL* |    . [000,000,048,0]   19 +   2         NET     324020      1  _ADmBz
00 ET5ANAL* |   62 [000,000,000,0]   11 +   8    201  XMPRe      456  18:18  ET5_V1_H1.IXC_GFIFO.I.I.U10464
00 ET5ANAL* |    . [000,000,000,0]   11 +   0         NET     323252      1  _ACxWX
00 ET5ANAL* |   63 [000,000,000,0]   10 +   1    203  XMPWe      459  91:90  ET5_V1_H1.IXC_GFIFO.I.I.ixc_gfm_ififo
00 ET5ANAL* |    . [000,000,032,0]    9 +   1         NET     322994      4  _ADmOF
00 ET5ANAL* |   64 [000,000,019,0]    6 +   3    207  LOGIC    80612   3: 2  
00 ET5ANAL* |    . [000,000,019,0]    5 +   1         NET     275099   3639  xc_top.hotSwapOnPI
00 ET5ANAL* |   65 [000,000,349,0]    0 +   5    213  FD01    367235   4: 0  
00 ET5ANAL* | ======================================================================================
00 ET5ANAL* | 
00 ET5ANAL* | Critical paths by steps
00 ET5ANAL* | 
00 ET5ANAL* | Critical path  1                               sinks
00 ET5ANAL* | Count  Location      Step  Jump  Type    ID     ins:cr      Name
00 ET5ANAL* | --------------------------------------------------------------------------------------
00 ET5ANAL* | Breakpoint 30821 will add 101 steps after it is scheduled.
00 ET5ANAL* |    . [000,000,017,6]   83 +   0  NET     318549      0  ET6_SYNC.QTLA%break_0
00 ET5ANAL* |    1 [000,000,017,6]   83 +   0  XBOB     30821   2: 1  ET6_XBOB_141
00 ET5ANAL* |    . [000,000,017,1]   83 +   0  NET     318550      1  QTLA%break
00 ET5ANAL* |    2 [000,000,017,1]   83 +   0  LOGIC    72343   2: 2  
00 ET5ANAL* |    . [000,000,017,0]   83 +   0  NET     318369      1  _ET3_COMPILER_RESERVED_NAME_COMBINED_BREAK_
00 ET5ANAL* |    3 [000,000,017,0]   83 +   0  LOGIC    85984   1: 1  
00 ET5ANAL* |    . [000,000,017,0]   82 +   1  NET     320951      2  _ET3_COMPILER_RESERVED_NAME_SDL_BREAK_
00 ET5ANAL* |    4 [000,000,339,0]   77 +   5  LOGIC    72342   4: 2  
00 ET5ANAL* |    . [000,000,339,0]   76 +   1  NET     321157      2  QTLA%SDL.top.run_stop_ctl.sa_infini_break
00 ET5ANAL* |    5 [000,000,351,2]   73 +   3  LOGIC    70189   4: 4  
00 ET5ANAL* |    . [000,000,351,0]   73 +   0  NET     288561      1  _ADpOg
00 ET5ANAL* |    6 [000,000,351,0]   73 +   0  LOGICx   70188   4: 2  
00 ET5ANAL* |    . [000,000,351,0]   72 +   1  NET     288741      1  
00 ET5ANAL* |    7 [000,000,339,1]   69 +   3  LOGIC    69811   4: 2  
00 ET5ANAL* |    . [000,000,339,0]   69 +   0  NET     288794      1  _ADpOR
00 ET5ANAL* |    8 [000,000,339,0]   69 +   0  LOGIC    69698   4: 2  
00 ET5ANAL* |    . [000,000,339,0]   68 +   1  NET     288840      2  _ADpOQ
00 ET5ANAL* |    9 [000,000,348,0]   65 +   3  LOGIC    69591   4: 1  
00 ET5ANAL* |    . [000,000,348,3]   64 +   1  NET     288859      2  _ADpMO
00 ET5ANAL* |   10 [000,000,348,3]   64 +   0  LOGIC    69557   3: 1  
00 ET5ANAL* |    . [000,000,348,2]   64 +   0  NET     288868      2  _ADpMN
00 ET5ANAL* |   11 [000,000,348,2]   64 +   0  LOGIC    69532   4: 3  
00 ET5ANAL* |    . [000,000,348,1]   64 +   0  NET     376433     13  QTLA%cycle_num[27]
00 ET5ANAL* |   12 [000,000,348,1]   64 +   0  LOGIC    86006   1: 1  
00 ET5ANAL* |    . [000,000,348,0]   64 +   0  NET     337337     10  xc_top.simTime[27]
00 ET5ANAL* |   13 [000,000,348,0]   64 +   0  LOGIC    69502   3: 3  
00 ET5ANAL* |    . [000,000,348,0]   63 +   1  NET     288881      1  _AAAC[29987]
00 ET5ANAL* |   14 [000,000,359,0]   60 +   3  LOGIC    69501   3: 2  
00 ET5ANAL* |    . [000,000,359,0]   59 +   1  NET     319472     10  _AAAC[27445]
00 ET5ANAL* |   15 [000,000,145,5]   54 +   5  LOGIC    69487   3: 3  
00 ET5ANAL* |    . [000,000,145,4]   54 +   0  NET     371537      3  ixc_time.simTime[27]
00 ET5ANAL* |   16 [000,000,145,4]   54 +   0  LOGIC    69485   3: 3  
00 ET5ANAL* |    . [000,000,145,0]   53 +   1  NET     319507    193  _ADHmk
00 ET5ANAL* |   17 [000,000,349,0]   48 +   5  LOGIC    68551   4: 4  
00 ET5ANAL* |    . [000,000,349,0]   47 +   1  NET     376325      9  xc_top.eClkR
00 ET5ANAL* |   18 [000,000,372,2]   44 +   3  LOGIC    65977   2: 1  
00 ET5ANAL* |    . [000,000,372,0]   44 +   0  NET     337107      4  xc_top.simTimeEnable@QTshadow
00 ET5ANAL* |   19 [000,000,372,0]   44 +   0  LOGICx   65881   4: 3  
00 ET5ANAL* |    . [000,000,372,2]   43 +   1  NET     290503      3  _AAAE[43082]
00 ET5ANAL* |   20 [000,000,372,2]   43 +   0  LOGIC    65864   4: 2  
00 ET5ANAL* |    . [000,000,372,1]   43 +   0  NET     290520      5  xc_top.xpHold@QTshadow
00 ET5ANAL* |   21 [000,000,372,1]   43 +   0  LOGIC    65721   4: 1  
00 ET5ANAL* |    . [000,000,372,0]   43 +   0  NET     290522      1  xc_top.holdEcmC@QTshadow
00 ET5ANAL* |   22 [000,000,372,0]   43 +   0  LOGIC    65720   2: 2  
00 ET5ANAL* |    . [000,000,372,3]   42 +   1  NET     290565      3  _AAAE[41775]
00 ET5ANAL* |   23 [000,000,372,3]   42 +   0  LOGIC    65676   3: 1  
00 ET5ANAL* |    . [000,000,372,2]   42 +   0  NET     290566      2  _AAAE[41776]$inv4542
00 ET5ANAL* |   24 [000,000,372,2]   42 +   0  LOGIC    65675   2: 1  
00 ET5ANAL* |    . [000,000,372,1]   42 +   0  NET     290569      2  _AAAE[6295]$inv4541
00 ET5ANAL* |   25 [000,000,372,1]   42 +   0  LOGIC    65670   4: 4  
00 ET5ANAL* |    . [000,000,372,0]   42 +   0  NET     290571      1  _AAAE[6294]
00 ET5ANAL* |   26 [000,000,372,0]   42 +   0  LOGIC    65669   4: 1  
00 ET5ANAL* |    . [000,000,372,0]   41 +   1  NET     290572      1  
00 ET5ANAL* |   27 [000,000,344,0]   38 +   3  LOGIC    83630   4: 1  
00 ET5ANAL* |    . [000,000,346,0]   36 +   2  NET     281925      1  
00 ET5ANAL* |   28 [000,000,346,0]   36 +   0  LOGIC    83629   4: 1  
00 ET5ANAL* |    . [000,000,345,1]   34 +   2  NET     290997      1  _ACxpN$inv4478
00 ET5ANAL* |   29 [000,000,345,1]   34 +   0  LOGIC    65129   4: 1  
00 ET5ANAL* |    . [000,000,345,0]   34 +   0  NET     290998      1  _AAAE[5823]$inv4477
00 ET5ANAL* |   30 [000,000,345,0]   34 +   0  LOGIC    65128   4: 2  
00 ET5ANAL* |    . [000,000,345,0]   33 +   1  NET     291193      1  _AAAE[5764]
00 ET5ANAL* |   31 [000,000,339,1]   30 +   3  LOGIC    64888   3: 1  
00 ET5ANAL* |    . [000,000,339,0]   30 +   0  NET     291196      3  _AAAE[5758]
00 ET5ANAL* |   32 [000,000,339,0]   30 +   0  LOGIC    64885   3: 3  
00 ET5ANAL* |    . [000,000,339,0]   29 +   1  NET     344351      7  xc_top.simTime[21]@QTshadow
00 ET5ANAL* |   33 [000,000,345,1]   26 +   3  LOGIC    64823   3: 3  
00 ET5ANAL* |    . [000,000,345,0]   26 +   0  NET     291251      1  _AAAE[43751]
00 ET5ANAL* |   34 [000,000,345,0]   26 +   0  LOGIC    64822   3: 3  
00 ET5ANAL* |    . [000,000,345,0]   25 +   1  NET     322108     10  _AAAE[41791]
00 ET5ANAL* |   35 [000,000,065,0]   20 +   5  LOGIC    64808   3: 3  
00 ET5ANAL* |    . [000,000,065,0]   19 +   1  NET     320125    266  _AAAC[31132]
00 ET5ANAL* |   36 [000,000,263,2]   14 +   5  LOGIC    38480   3: 2  
00 ET5ANAL* |    . [000,000,263,1]   14 +   0  NET     313024      1  xc_top.oneStepPI
00 ET5ANAL* |   37 [000,000,263,1]   14 +   0  LOGIC    87437   1: 1  
00 ET5ANAL* |    . [000,000,263,0]   14 +   0  NET     323289      2  UA@.xc_top.oneStepPI
00 ET5ANAL* |   38 [000,000,263,0]   14 +   0  LOGIC    30815   3: 3  
00 ET5ANAL* |    . [000,000,263,0]   13 +   1  NET     323395     72  
00 ET5ANAL* |   39 [000,000,344,2]    8 +   5  LOGIC    37750   2: 2  
00 ET5ANAL* |    . [000,000,344,0]    8 +   0  NET     323281      2  
00 ET5ANAL* |   40 [000,000,344,0]    8 +   0  LOGIC    80686   4: 4  
00 ET5ANAL* |    . [000,000,344,0]    7 +   1  NET     323285      2  DBI_APPLY
00 ET5ANAL* |   41 [000,000,000,0]    0 +   7  DBIB     30820   0: 0  ET6_DBIB_0_0_0
00 ET5ANAL* | --------------------------------------------------------------------------------------
00 ET5ANAL* | Maximum jump of 7 steps occurs at step 0
00 ET5ANAL* | 0 inter-chip hops, 0 steps inter-chip delay
00 ET5ANAL* | ======================================================================================
00 ET5ANAL* | End of critical path
00 ET5ANAL* | 
00 ET5ANAL* | 
00 ET5ANAL* | 
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5analyzer' (Elapsed time 0.02s (0.09u+0.01s), Memory used 4584 Mb) on 05/20/2024 11:38:12
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/SCsched' (Elapsed time 1.65s (1.96u+0.10s), Memory used 4584 Mb) on 05/20/2024 11:38:12
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6xtime' on 05/20/2024 11:38:12
00 DATABASE | Parms: ''
00 ET6XTIME |                                    
00 ET6XTIME |                ET6 EXTERNAL TIMING ANALYZER AND BITGEN
00 ET6XTIME |                            RELEASE 6.0.2.6
00 ET6XTIME |                                    
00 ET6XTIME | et6xtime created on Aug  3 2023 at 22:13:09.
00 ET6XTIME | found breakpoint at ep 142 box 30821 signal QTLA%break
00 ET6XTIME | There are no targets defined in the design
00 ET6XTIME | 
00 ET6XTIME | Generated xtime and ttime files
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6xtime' (Elapsed time 0.01s (0.01u+0.00s), Memory used 4584 Mb) on 05/20/2024 11:38:12
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lconf' on 05/20/2024 11:38:12
00 DATABASE | Parms: ''
00 ET3LCONF | * dbFiles/etapi.mem_slices creation file starts at 11:38:12, finishes at 11:38:12. Saved 212 slices, wrote 16960 bytes. (rc: 0)
00 ET3LCONF | * COMPILED without WIRE_DUPLICATION, for a SINGLE_SUBSET, with SIM_ACCEL 
00 ET3LCONF | COMPILED ON 05/20/2024 AT 11:38:10 WITH SEED 262034294
00 ET3LCONF | MINOR_CYCLES_PER_MAJOR_CYCLE  184
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lconf' (Elapsed time 0.01s (0.00u+0.00s), Memory used 4584 Mb) on 05/20/2024 11:38:12
00 DATABASE | Calling 'svproto' on 05/20/2024 11:38:12
00 DATABASE | Parms: 'xcva_top'
00 DATABASE | Return from 'svproto' (Elapsed time 0.27s (0.16u+0.03s), Memory used 4584 Mb) on 05/20/2024 11:38:12
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
