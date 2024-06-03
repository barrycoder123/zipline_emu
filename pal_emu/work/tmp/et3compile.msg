00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lib' on 05/21/2024 16:19:14
00 DATABASE | Parms: '-client'
00 ET3LIB   |                                    
00 ET3LIB   |                              ET3 LIBRARY
00 ET3LIB   |                            RELEASE 6.0.2.6
00 ET3LIB   |                           VXE, VEngineering
00 ET3LIB   | (c) 1995-2020 Cadence Design Systems, Inc. All rights reserved worldwide.
00 ET3LIB   |            See files in <rootdir>/share/vxe/install/Copyrights
00 ET3LIB   |                                    
00 ET3LIB   | ET3lib created on Aug  3 2023 at 22:13:09.
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lib' (Elapsed time 0.00s (0.00u+0.00s), Memory used 4600 Mb) on 05/21/2024 16:19:14
00 DATABASE | Calling 'ldproto' on 05/21/2024 16:19:14
00 DATABASE | Parms: 'qt_modular -combined PARTITIONS -rename xcva_top'
Info: 367944 ffDB boxes have been restored
Info: 381031 ffDB nets have been restored
00 DATABASE | Return from 'ldproto' (Elapsed time 0.26s (0.20u+0.09s), Memory used 4600 Mb) on 05/21/2024 16:19:14
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3confg' on 05/21/2024 16:19:14
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
00 ET3CONFG | ***** MB/XB wire table initialization took 0.000266 seconds.
00 ET3CONFG | ***** Found 0000000  MBO->MBI  possible links in this configuration.
00 ET3CONFG | ***** HIGHEST board found in emulation configuration is 5
00 ET3CONFG | load_module_version()          = 30
00 ET3CONFG | num_cycles_per_capture_frame   = 32
00 ET3CONFG | das_protocol()                 = 5
00 ET3CONFG | COMPILED ON 05/21/2024 AT 16:19:14
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
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/omlib' on 05/21/2024 16:19:14
00 DATABASE | Parms: ''
00 OMLIB    |                                    
00 OMLIB    |                           VXE, VEngineering
00 OMLIB    |             Copyright(C) 1995-2021, Cadence Design Systems
00 OMLIB    |                          All rights reserved
00 OMLIB    |                            RELEASE 6.0.2.6
00 OMLIB    |                                    
00 OMLIB    | omlib created on Aug  3 2023 at 22:05:33
00 OMLIB    | 
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/omlib' (Elapsed time 0.00s (0.00u+0.00s), Memory used 4600 Mb) on 05/21/2024 16:19:14
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3confg' (Elapsed time 0.02s (0.02u+0.00s), Memory used 4600 Mb) on 05/21/2024 16:19:14
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6ctl' on 05/21/2024 16:19:14
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6ctl' (Elapsed time 0.00s (0.00u+0.00s), Memory used 4600 Mb) on 05/21/2024 16:19:14
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5nlopt' on 05/21/2024 16:19:14
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5nlopt' (Elapsed time 0.13s (0.23u+0.04s), Memory used 4600 Mb) on 05/21/2024 16:19:14
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/SCsched' on 05/21/2024 16:19:14
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
00 SCSCHED  | Scheduling begins at 16:19:14...
00 SCSCHED  | 
00 SCSCHED  | Number of valid option entries for module SCsched = 0
00 SCSCHED  | Number of valid option entries for module SCsched = 0
00 SCSCHED  | Number of gates per domain is 4000000.
00 SCSCHED  | Number of chips is 1.
00 SCSCHED  | Number of domains is 1.0.
00 SCSCHED  | PrecompileDesignSizeOriginal = 806767
00 SCSCHED  | Design utilization: 20.2.
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6loada' on 05/21/2024 16:19:14
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
00 ET6LOADA | Average fan-out = 2.865345
00 ET6LOADA |  
00 ET6LOADA | Type                     Peak           Avg/Peak
00 ET6LOADA | Outputs per ec:          ec[  0,0]      Outputs=0/0
00 ET6LOADA | Weighted outputs per ec: ec[  0,0]      Outputs=0/0
00 ET6LOADA | Outputs per ep:          ep[  0,0,1944] Outputs=23/52
00 ET6LOADA | Weighted outputs per ep: ep[  0,0,1944] Outputs=23/52
00 ET6LOADA | Inputs per ec:           ec[  0,0]      Inputs= 0/0
00 ET6LOADA | Inputs per ep:           ep[  0,0,1040] Inputs= 42/95
00 ET6LOADA | dbis per chip:           ec[  0,0]      dbis=   73/73
00 ET6LOADA | dbos per chip:           ec[  0,0]      dbos=   146/146
00 ET6LOADA | xbos per chip:           ec[  0,0]      xbos=   1/1
00 ET6LOADA | Boxes per eb:            eb[  0]        Boxes=  388811/388811
00 ET6LOADA | Boxes per ec:            ec[  0,0]      Boxes=  388811/388811
00 ET6LOADA | Boxes per ep:            ep[  0,0, 392] Boxes=  126/154
00 ET6LOADA |                                         Peak from memory ports= 5
00 ET6LOADA | Adjusted boxes per ep:   ep[  0,0, 536] Boxes=  118/136
00 ET6LOADA | Adjusted instruction usage: 23.5%
00 ET6LOADA | The design requires at least 1 domain.
00 ET6LOADA |  
00 ET6LOADA |  
00 ET6LOADA |  
00 ET6LOADA | Total INTRAM Accesses: 735
00 ET6LOADA | Accesses per INTRAM:   6 / 15.3 / 69 (min/avg/max)
00 ET6LOADA |  
00 ET6LOADA | Total EXTRAM Accesses: 0
00 ET6LOADA | Accesses per EXTRAM:   0 / 0.0 / 0 (min/avg/max)
00 ET6LOADA |  
00 ET6LOADA |           Memory Accesses
00 ET6LOADA | eb  ec  RAM    word/assm/TCAM   banks
00 ET6LOADA |  0  0   i00    18 /  0 /  0    18   >   >   >   >   >   >   > 
00 ET6LOADA |         i01    17 /  0 /  0     1   >   >   >   8   >   5   3 
00 ET6LOADA |         i02    17 /  0 /  0     1   >   >   >   8   >   5   3 
00 ET6LOADA |         i03    17 /  0 /  0     1   >   >   >   1   >   1  14 
00 ET6LOADA |         i04    18 /  0 /  0     1   >   >   >   1   >   1  15 
00 ET6LOADA |         i05    18 /  0 /  0     1   >   >   >   1   >   8   8 
00 ET6LOADA |         i06    17 /  0 /  0     1   >   >   >   1   1   8   6 
00 ET6LOADA |         i07    17 /  0 /  0     1   >   >   >   1   1   8   6 
00 ET6LOADA |         i08    13 /  0 /  0     8   >   3   2   0   0   0   0 
00 ET6LOADA |         i09    12 /  0 /  0     8   >   2   2   0   0   0   0 
00 ET6LOADA |         i10    36 /  0 /  0     1   3  32   0   0   0   0   0 
00 ET6LOADA |         i11    13 /  0 /  0     1   3   4   3   2   0   0   0 
00 ET6LOADA |         i12    13 /  0 /  0     1   3   4   3   2   0   0   0 
00 ET6LOADA |         i13    13 /  0 /  0     1   3   3   4   2   0   0   0 
00 ET6LOADA |         i14    28 /  0 /  0     1   3  24   0   0   0   0   0 
00 ET6LOADA |         i15    14 /  0 /  0     1   3   8   2   0   0   0   0 
00 ET6LOADA |         i16    15 /  0 /  0     1   >   >   2   3   3   3   2 
00 ET6LOADA |         i17    16 /  0 /  0     9   >   3   4   0   0   0   0 
00 ET6LOADA |         i18    15 /  0 /  0     9   >   4   2   0   0   0   0 
00 ET6LOADA |         i19    16 /  0 /  0     9   >   3   4   0   0   0   0 
00 ET6LOADA |         i20    16 /  0 /  0     9   >   3   4   0   0   0   0 
00 ET6LOADA |         i21    15 /  0 /  0     1   3   3   3   3   2   0   0 
00 ET6LOADA |         i22    15 /  0 /  0     1   3   3   3   3   2   0   0 
00 ET6LOADA |         i23    17 /  0 /  0     1   3   3   3   3   2   2   0 
00 ET6LOADA |         i24     9 /  0 /  0     1   >   >   >   3   3   2   0 
00 ET6LOADA |         i25    10 /  0 /  0     1   >   >   >   6   1   2   0 
00 ET6LOADA |         i26    10 /  0 /  0     1   >   1   3   3   2   0   0 
00 ET6LOADA |         i27    10 /  0 /  0     1   >   1   3   3   2   0   0 
00 ET6LOADA |         i28    11 /  0 /  0     1   >   8   2   0   0   0   0 
00 ET6LOADA |         i29    10 /  0 /  0     1   1   2   3   3   0   0   0 
00 ET6LOADA |         i30    10 /  0 /  0     1   1   8   0   0   0   0   0 
00 ET6LOADA |         i31    10 /  0 /  0     1   3   3   3   0   0   0   0 
00 ET6LOADA |         i32     8 /  0 /  0     1   >   1   3   3   0   0   0 
00 ET6LOADA |         i33     8 /  0 /  0     1   >   1   3   3   0   0   0 
00 ET6LOADA |         i34     8 /  0 /  0     1   >   1   3   3   0   0   0 
00 ET6LOADA |         i35    66 /  0 /  0     1   >   1  64   0   0   0   0 
00 ET6LOADA |         i36    10 /  0 /  0     1   >   1   3   3   2   0   0 
00 ET6LOADA |         i37     9 /  0 /  0     1   >   1   3   4   0   0   0 
00 ET6LOADA |         i38    10 /  0 /  0     1   >   3   3   3   0   0   0 
00 ET6LOADA |         i39    10 /  0 /  0     1   1   3   3   2   0   0   0 
00 ET6LOADA |         i40     7 /  0 /  0     6   >   1   0   0   0   0   0 
00 ET6LOADA |         i41    10 /  0 /  0     6   >   4   0   0   0   0   0 
00 ET6LOADA |         i42     6 /  0 /  0     6   >   0   0   0   0   0   0 
00 ET6LOADA |         i43     6 /  0 /  0     6   >   0   0   0   0   0   0 
00 ET6LOADA |         i44     8 /  0 /  0     1   >   1   >   1   1   1   3 
00 ET6LOADA |         i45     8 /  0 /  0     1   >   1   >   1   1   1   3 
00 ET6LOADA |         i46    69 /  0 /  0     1   >   1   >   1   1   1  64 
00 ET6LOADA |         i47     6 /  0 /  0     1   >   3   >   1   1   0   0 
00 ET6LOADA |         x0      0 /  0          0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0 
00 ET6LOADA |  
00 ET6LOADA |  
00 ET6LOADA | Total ALU instructions: 0
00 ET6LOADA | Instructions per ALU:   0 / 0.0 / 0 (min/avg/max)
00 ET6LOADA |  
00 ET6LOADA | 0 seconds
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6loada' (Elapsed time 0.11s (0.32u+0.01s), Memory used 4600 Mb) on 05/21/2024 16:19:14
00 SCSCHED  |  
00 SCSCHED  | Boxes distribution by scheduling levels:
00 SCSCHED  | Level    219, boxes            1
00 SCSCHED  | Level    218, boxes            0
00 SCSCHED  | Level    217, boxes           11
00 SCSCHED  | Level    216, boxes           21
00 SCSCHED  | Level    215, boxes            2
00 SCSCHED  | Level    214, boxes           93
00 SCSCHED  | Level    213, boxes          123
00 SCSCHED  | Level    212, boxes           82
00 SCSCHED  | Level    211, boxes          107
00 SCSCHED  | Level    210, boxes          135
00 SCSCHED  | Level    209, boxes            4
00 SCSCHED  | Level    208, boxes            6
00 SCSCHED  | Level    207, boxes           11
00 SCSCHED  | Level    206, boxes           10
00 SCSCHED  | Level    205, boxes           14
00 SCSCHED  | Level    204, boxes           13
00 SCSCHED  | Level    203, boxes           19
00 SCSCHED  | Level    202, boxes           32
00 SCSCHED  | Level    201, boxes           39
00 SCSCHED  | Level    200, boxes           45
00 SCSCHED  | Level    199, boxes           46
00 SCSCHED  | Level    198, boxes           56
00 SCSCHED  | Level    197, boxes           57
00 SCSCHED  | Level    196, boxes           62
00 SCSCHED  | Level    195, boxes           77
00 SCSCHED  | Level    194, boxes           87
00 SCSCHED  | Level    193, boxes           82
00 SCSCHED  | Level    192, boxes          113
00 SCSCHED  | Level    191, boxes           96
00 SCSCHED  | Level    190, boxes          104
00 SCSCHED  | Level    189, boxes          132
00 SCSCHED  | Level    188, boxes          134
00 SCSCHED  | Level    187, boxes          159
00 SCSCHED  | Level    186, boxes          153
00 SCSCHED  | Level    185, boxes          165
00 SCSCHED  | Level    184, boxes          166
00 SCSCHED  | Level    183, boxes          158
00 SCSCHED  | Level    182, boxes          136
00 SCSCHED  | Level    181, boxes          154
00 SCSCHED  | Level    180, boxes          184
00 SCSCHED  | Level    179, boxes          185
00 SCSCHED  | Level    178, boxes          188
00 SCSCHED  | Level    177, boxes          145
00 SCSCHED  | Level    176, boxes          146
00 SCSCHED  | Level    175, boxes          139
00 SCSCHED  | Level    174, boxes          121
00 SCSCHED  | Level    173, boxes          109
00 SCSCHED  | Level    172, boxes          226
00 SCSCHED  | Level    171, boxes          346
00 SCSCHED  | Level    170, boxes          398
00 SCSCHED  | Level    169, boxes          242
00 SCSCHED  | Level    168, boxes          118
00 SCSCHED  | Level    167, boxes           86
00 SCSCHED  | Level    166, boxes           74
00 SCSCHED  | Level    165, boxes           90
00 SCSCHED  | Level    164, boxes          147
00 SCSCHED  | Level    163, boxes          172
00 SCSCHED  | Level    162, boxes          244
00 SCSCHED  | Level    161, boxes          306
00 SCSCHED  | Level    160, boxes          310
00 SCSCHED  | Level    159, boxes          277
00 SCSCHED  | Level    158, boxes          343
00 SCSCHED  | Level    157, boxes          384
00 SCSCHED  | Level    156, boxes          340
00 SCSCHED  | Level    155, boxes          240
00 SCSCHED  | Level    154, boxes          165
00 SCSCHED  | Level    153, boxes          127
00 SCSCHED  | Level    152, boxes          169
00 SCSCHED  | Level    151, boxes          224
00 SCSCHED  | Level    150, boxes          199
00 SCSCHED  | Level    149, boxes          151
00 SCSCHED  | Level    148, boxes          114
00 SCSCHED  | Level    147, boxes          145
00 SCSCHED  | Level    146, boxes          185
00 SCSCHED  | Level    145, boxes          193
00 SCSCHED  | Level    144, boxes          147
00 SCSCHED  | Level    143, boxes          109
00 SCSCHED  | Level    142, boxes           78
00 SCSCHED  | Level    141, boxes           86
00 SCSCHED  | Level    140, boxes          145
00 SCSCHED  | Level    139, boxes          138
00 SCSCHED  | Level    138, boxes          235
00 SCSCHED  | Level    137, boxes          216
00 SCSCHED  | Level    136, boxes          267
00 SCSCHED  | Level    135, boxes          315
00 SCSCHED  | Level    134, boxes          289
00 SCSCHED  | Level    133, boxes          362
00 SCSCHED  | Level    132, boxes          199
00 SCSCHED  | Level    131, boxes          343
00 SCSCHED  | Level    130, boxes          303
00 SCSCHED  | Level    129, boxes          389
00 SCSCHED  | Level    128, boxes          225
00 SCSCHED  | Level    127, boxes          281
00 SCSCHED  | Level    126, boxes          163
00 SCSCHED  | Level    125, boxes          276
00 SCSCHED  | Level    124, boxes          132
00 SCSCHED  | Level    123, boxes          248
00 SCSCHED  | Level    122, boxes           88
00 SCSCHED  | Level    121, boxes          211
00 SCSCHED  | Level    120, boxes          112
00 SCSCHED  | Level    119, boxes          278
00 SCSCHED  | Level    118, boxes          146
00 SCSCHED  | Level    117, boxes          271
00 SCSCHED  | Level    116, boxes          129
00 SCSCHED  | Level    115, boxes          261
00 SCSCHED  | Level    114, boxes          221
00 SCSCHED  | Level    113, boxes          424
00 SCSCHED  | Level    112, boxes          305
00 SCSCHED  | Level    111, boxes          370
00 SCSCHED  | Level    110, boxes          215
00 SCSCHED  | Level    109, boxes          313
00 SCSCHED  | Level    108, boxes          165
00 SCSCHED  | Level    107, boxes          290
00 SCSCHED  | Level    106, boxes          145
00 SCSCHED  | Level    105, boxes          263
00 SCSCHED  | Level    104, boxes          118
00 SCSCHED  | Level    103, boxes          292
00 SCSCHED  | Level    102, boxes          141
00 SCSCHED  | Level    101, boxes          323
00 SCSCHED  | Level    100, boxes          173
00 SCSCHED  | Level     99, boxes          316
00 SCSCHED  | Level     98, boxes          226
00 SCSCHED  | Level     97, boxes          379
00 SCSCHED  | Level     96, boxes          176
00 SCSCHED  | Level     95, boxes          245
00 SCSCHED  | Level     94, boxes          168
00 SCSCHED  | Level     93, boxes          307
00 SCSCHED  | Level     92, boxes          197
00 SCSCHED  | Level     91, boxes          307
00 SCSCHED  | Level     90, boxes          236
00 SCSCHED  | Level     89, boxes          329
00 SCSCHED  | Level     88, boxes          417
00 SCSCHED  | Level     87, boxes          533
00 SCSCHED  | Level     86, boxes          334
00 SCSCHED  | Level     85, boxes          483
00 SCSCHED  | Level     84, boxes          293
00 SCSCHED  | Level     83, boxes          352
00 SCSCHED  | Level     82, boxes          282
00 SCSCHED  | Level     81, boxes          394
00 SCSCHED  | Level     80, boxes          291
00 SCSCHED  | Level     79, boxes          383
00 SCSCHED  | Level     78, boxes          248
00 SCSCHED  | Level     77, boxes          380
00 SCSCHED  | Level     76, boxes          369
00 SCSCHED  | Level     75, boxes          642
00 SCSCHED  | Level     74, boxes          492
00 SCSCHED  | Level     73, boxes          724
00 SCSCHED  | Level     72, boxes          599
00 SCSCHED  | Level     71, boxes          797
00 SCSCHED  | Level     70, boxes          802
00 SCSCHED  | Level     69, boxes          855
00 SCSCHED  | Level     68, boxes          848
00 SCSCHED  | Level     67, boxes         1036
00 SCSCHED  | Level     66, boxes         1050
00 SCSCHED  | Level     65, boxes         1038
00 SCSCHED  | Level     64, boxes          954
00 SCSCHED  | Level     63, boxes          992
00 SCSCHED  | Level     62, boxes          875
00 SCSCHED  | Level     61, boxes          933
00 SCSCHED  | Level     60, boxes          938
00 SCSCHED  | Level     59, boxes         1023
00 SCSCHED  | Level     58, boxes          921
00 SCSCHED  | Level     57, boxes          948
00 SCSCHED  | Level     56, boxes          807
00 SCSCHED  | Level     55, boxes         1028
00 SCSCHED  | Level     54, boxes         1008
00 SCSCHED  | Level     53, boxes         1102
00 SCSCHED  | Level     52, boxes         1204
00 SCSCHED  | Level     51, boxes         1100
00 SCSCHED  | Level     50, boxes          942
00 SCSCHED  | Level     49, boxes          998
00 SCSCHED  | Level     48, boxes          913
00 SCSCHED  | Level     47, boxes          962
00 SCSCHED  | Level     46, boxes          950
00 SCSCHED  | Level     45, boxes         1067
00 SCSCHED  | Level     44, boxes         1051
00 SCSCHED  | Level     43, boxes         1162
00 SCSCHED  | Level     42, boxes         1177
00 SCSCHED  | Level     41, boxes         1129
00 SCSCHED  | Level     40, boxes         1071
00 SCSCHED  | Level     39, boxes         1337
00 SCSCHED  | Level     38, boxes         1417
00 SCSCHED  | Level     37, boxes         1445
00 SCSCHED  | Level     36, boxes         1493
00 SCSCHED  | Level     35, boxes         1755
00 SCSCHED  | Level     34, boxes         1844
00 SCSCHED  | Level     33, boxes         2360
00 SCSCHED  | Level     32, boxes         2410
00 SCSCHED  | Level     31, boxes         2690
00 SCSCHED  | Level     30, boxes         3021
00 SCSCHED  | Level     29, boxes         3288
00 SCSCHED  | Level     28, boxes         3632
00 SCSCHED  | Level     27, boxes         3951
00 SCSCHED  | Level     26, boxes         3851
00 SCSCHED  | Level     25, boxes         4693
00 SCSCHED  | Level     24, boxes         4260
00 SCSCHED  | Level     23, boxes         4390
00 SCSCHED  | Level     22, boxes         5156
00 SCSCHED  | Level     21, boxes         6082
00 SCSCHED  | Level     20, boxes         5516
00 SCSCHED  | Level     19, boxes         5997
00 SCSCHED  | Level     18, boxes         5653
00 SCSCHED  | Level     17, boxes         7081
00 SCSCHED  | Level     16, boxes         6329
00 SCSCHED  | Level     15, boxes         7168
00 SCSCHED  | Level     14, boxes         7434
00 SCSCHED  | Level     13, boxes         8228
00 SCSCHED  | Level     12, boxes         8835
00 SCSCHED  | Level     11, boxes         9737
00 SCSCHED  | Level     10, boxes         9748
00 SCSCHED  | Level      9, boxes         9976
00 SCSCHED  | Level      8, boxes         9185
00 SCSCHED  | Level      7, boxes        11890
00 SCSCHED  | Level      6, boxes         8924
00 SCSCHED  | Level      5, boxes        13921
00 SCSCHED  | Level      4, boxes        13208
00 SCSCHED  | Level      3, boxes        17715
00 SCSCHED  | Level      2, boxes        23482
00 SCSCHED  | Level      1, boxes        55095
00 SCSCHED  |  
00 SCSCHED  | Tail      43, boxes         3753
00 SCSCHED  | Mapped: 16802 5-input LUTs, 1717 6-input LUTs, 437 others. Saved 19220
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
00 SCSCHED  | box scheduling begins at 16:19:14...
00 SCSCHED  | estimated number of boxes 366317
00 SCSCHED  | 
00 SCSCHED  | 100000 placed.  max step 149  16:19:14  [360.00]
00 SCSCHED  | 200000 placed.  max step 156  16:19:15  [720.00]
00 SCSCHED  | 300000 placed.  max step 162  16:19:15  [1080.00]
00 SCSCHED  | box scheduling ends at 16:19:15, max step 176
00 SCSCHED  | 
00 SCSCHED  | Relocated 4199 logic boxes (0 between chips), 315 flops
00 SCSCHED  | Rescheduled in global scope 0 boxes
00 SCSCHED  | Unmapped 78 boxes
00 SCSCHED  | Compacted 24413 FD01 boxes
00 SCSCHED  | Chip two-hop tries 0, success 0
00 SCSCHED  | 
00 SCSCHED  | Found DBO_CAPTURE and used it to control SACB capturing.
00 SCSCHED  | Max DBO capture step = 2
00 SCSCHED  | Extra 0 step is inserted between max_DBO capture step and interrupt
00 SCSCHED  | SA DONE signal is routed to GP HCB 1
00 SCSCHED  | Routed to interrupt HCB at chip 0 (board 0, chip 0, ep 397), at step 25 for signal 323397: xc_top._ET3_COMPILER_RESERVED_NAME_ORION_INTERRUPT_
00 SCSCHED  | Estimated IO probes = 15708, FF probes = 65072, DYNP probes = 174
00 SCSCHED  | extra probes per domain = 0
00 SCSCHED  | flops input routing begins at 16:19:15, max step 176...
00 SCSCHED  | 
00 SCSCHED  | flops input routing ends at 16:19:15, max step 176
00 SCSCHED  | 
00 SCSCHED  | data capturing begins at 16:19:15
00 SCSCHED  | 
00 SCSCHED  | 80716 nets to capture
00 SCSCHED  | Captured 64 qt_curr_emul_cycle nets in DCC 0
00 SCSCHED  | Captured 64 xc_top.simTime nets in DCC 0
00 SCSCHED  | Captured 64 xc_top.simTime@QTshadow nets in DCC 0
00 SCSCHED  | set captured_nets_cycle_1 = 88576
00 SCSCHED  | set captured_nets_cycle_2_to_n = 19968
00 SCSCHED  | Trace depth = 3107776 cycles
00 SCSCHED  | Trace depth in DYNP mode = 4194304 cycles
00 SCSCHED  | Min step count due to probes is 121
00 SCSCHED  | building DCC_net table in et6confg
00 SCSCHED  | data capturing ends at 16:19:16, max step 176
00 SCSCHED  | Captured 80780 nets
00 SCSCHED  | used DCCs = 1, DCC utilization = 91%
00 SCSCHED  | 
00 SCSCHED  | scheduling complete
00 SCSCHED  | maximum step: 191.
00 SCSCHED  | step count: 192
00 SCSCHED  | 
00 SCSCHED  | 
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5analyzer' on 05/21/2024 16:19:16
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
00 ET5ANAL* | Instructions per cycle: 192
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
00 ET5ANAL* | Critical net starts from an actual critical location.
00 ET5ANAL* |    . [000,000,145,6]   88 +   0         NET     318549      0  ET6_SYNC.QTLA%break_0
00 ET5ANAL* |    1 [000,000,145,6]   88 +   0    102  XBOB     30821   2: 1  ET6_XBOB_141
00 ET5ANAL* |    . [000,000,145,0]   87 +   1         NET     318550      1  QTLA%break
00 ET5ANAL* |    2 [000,000,135,1]   84 +   3    108  LOGIC    72343   2: 2  
00 ET5ANAL* |    . [000,000,135,0]   84 +   0         NET     318369      1  _ET3_COMPILER_RESERVED_NAME_COMBINED_BREAK_
00 ET5ANAL* |    3 [000,000,135,0]   84 +   0    109  LOGIC    85984   1: 1  
00 ET5ANAL* |    . [000,000,135,0]   83 +   1         NET     320951      2  _ET3_COMPILER_RESERVED_NAME_SDL_BREAK_
00 ET5ANAL* |    4 [000,000,198,3]   78 +   5    115  LOGIC    72342   4: 4  
00 ET5ANAL* |    . [000,000,198,2]   78 +   0         NET     287022      1  
00 ET5ANAL* |    5 [000,000,198,2]   78 +   0    116  LOGIC    72341   4: 1  
00 ET5ANAL* |    . [000,000,198,4]   78 +   0         NET     287023      1  _ADoqU$inv5381
00 ET5ANAL* |    6 [000,000,198,4]   78 +   0    117  LOGIC    72340   4: 3  
00 ET5ANAL* |    . [000,000,198,0]   77 +   1         NET     366265     12  QTLA%SDL.top.run_stop_ctl.stop_request
00 ET5ANAL* |    7 [000,000,238,1]   74 +   3    121  LOGIC    72285   4: 2  
00 ET5ANAL* |    . [000,000,238,0]   74 +   0         NET     366274      3  QTLA%SDL.top.run_stop_ctl.stop_request_sum
00 ET5ANAL* |    8 [000,000,238,0]   74 +   0    122  LOGIC    72282   3: 2  
00 ET5ANAL* |    . [000,000,238,0]   73 +   1         NET     287069      2  QTLA%SDL.top.run_stop_ctl.stop_on_trigger
00 ET5ANAL* |    9 [000,000,230,0]   70 +   3    126  LOGIC    72279   3: 1  
00 ET5ANAL* |    . [000,000,230,3]   69 +   1         NET     364145     67  QTLA%SDL.top.run_stop_ctl.latched_trigger
00 ET5ANAL* |   10 [000,000,230,3]   69 +   0    127  LOGIC    72219   4: 4  
00 ET5ANAL* |    . [000,000,230,2]   69 +   0         NET     287188      1  _ADoqf
00 ET5ANAL* |   11 [000,000,230,2]   69 +   0    128  LOGIC    72218   4: 2  
00 ET5ANAL* |    . [000,000,230,2]   68 +   1         NET     366604     10  QTLA%SDL.top.EN_P
00 ET5ANAL* |   12 [000,000,198,3]   65 +   3    132  LOGIC    72203   4: 2  
00 ET5ANAL* |    . [000,000,198,2]   65 +   0         NET     320993     19  QTLA%SDL.top.run_stop_ctl.tsm_init_restore
00 ET5ANAL* |   13 [000,000,198,2]   65 +   0    134  LOGIC    72189   2: 1  
00 ET5ANAL* |    . [000,000,198,1]   65 +   0         NET     321031     92  QTLA%SDL.top.tsm_restore
00 ET5ANAL* |   14 [000,000,198,1]   65 +   0    135  LOGIC    72064   2: 2  
00 ET5ANAL* |    . [000,000,198,0]   65 +   0         NET     321032     20  QTLA%SDL.top.tsm_init
00 ET5ANAL* |   15 [000,000,198,0]   65 +   0    136  LOGIC    72062   4: 4  
00 ET5ANAL* |    . [000,000,198,3]   64 +   1         NET     364645      2  QTLA%SDL.top.run_stop_ctl.tsx1
00 ET5ANAL* |   16 [000,000,198,3]   64 +   0    137  LOGIC    72061   4: 3  
00 ET5ANAL* |    . [000,000,198,2]   64 +   0         NET     287412      6  QTLA%SDL.top.run_stop_ctl.sim_or_rtl_data_valid
00 ET5ANAL* |   17 [000,000,198,2]   64 +   0    138  LOGIC    72055   3: 2  
00 ET5ANAL* |    . [000,000,198,1]   64 +   0         NET     364452      2  QTLA%SDL.top.run_stop_ctl.lbrOn_mask
00 ET5ANAL* |   18 [000,000,198,1]   64 +   0    139  LOGIC    72054   4: 4  
00 ET5ANAL* |    . [000,000,198,0]   64 +   0         NET     287413      1  QTLA%SDL.top.run_stop_ctl.lbrOn_posedge
00 ET5ANAL* |   19 [000,000,198,0]   64 +   0    140  LOGIC    72053   4: 3  
00 ET5ANAL* |    . [000,000,199,0]   62 +   2         NET     287415      2  CVA_UA_1X_ANY_PHASE_ACTIVE
00 ET5ANAL* |   20 [000,000,199,0]   62 +   0    142  LOGIC    72051   2: 2  
00 ET5ANAL* |    . [000,000,199,3]   61 +   1         NET     337771      3  xc_top.evalOn
00 ET5ANAL* |   21 [000,000,199,3]   61 +   0    143  LOGIC    72048   4: 3  
00 ET5ANAL* |    . [000,000,199,2]   61 +   0         NET     325794      2  _AAAC[27355]
00 ET5ANAL* |   22 [000,000,199,2]   61 +   0    144  LOGIC    37757   2: 1  
00 ET5ANAL* |    . [000,000,199,1]   61 +   0         NET     133033      3  _AAAC[28815]
00 ET5ANAL* |   23 [000,000,199,1]   61 +   0    145  LOGIC   275852   4: 1  
00 ET5ANAL* |    . [000,000,199,0]   61 +   0         NET      86613      1  _AAAC[27334]$inv18404
00 ET5ANAL* |   24 [000,000,199,0]   61 +   0    146  LOGIC   275851   4: 1  
00 ET5ANAL* |    . [000,000,199,3]   60 +   1         NET      86614      1  
00 ET5ANAL* |   25 [000,000,199,3]   60 +   0    147  LOGIC   275850   4: 4  
00 ET5ANAL* |    . [000,000,199,2]   60 +   0         NET     325315     24  _AAAA[6754]
00 ET5ANAL* |   26 [000,000,199,2]   60 +   0    148  LOGIC    77307   4: 4  
00 ET5ANAL* |    . [000,000,199,1]   60 +   0         NET     284103      1  _AAAA[5472]$inv6121
00 ET5ANAL* |   27 [000,000,199,1]   60 +   0    149  LOGIC    85353   3: 1  
00 ET5ANAL* |    . [000,000,199,0]   60 +   0         NET     285634      9  _AAAA[6084]
00 ET5ANAL* |   28 [000,000,199,0]   60 +   0    150  LOGIC    74085   3: 1  
00 ET5ANAL* |    . [000,000,199,0]   59 +   1         NET     285866      1  _AAAA[6086]
00 ET5ANAL* |   29 [000,000,199,0]   59 +   0    151  LOGIC    73740   4: 3  
00 ET5ANAL* |    . [000,000,199,6]   57 +   2         NET     333533     10  IXC_GFIFO.I.I.rptr[16]
00 ET5ANAL* |   30 [000,000,181,0]   52 +   5    157  LOGIC    86195   1: 1  
00 ET5ANAL* |    . [000,000,181,0]   51 +   1         NET     285875      2  _AAAE[2391]
00 ET5ANAL* |   31 [000,000,131,0]   48 +   3    161  LOGIC    73733   2: 2  
00 ET5ANAL* |    . [000,000,131,0]   47 +   1         NET     285876      9  _AAAE[253]
00 ET5ANAL* |   32 [000,000,181,2]   44 +   3    165  LOGIC    73732   4: 2  
00 ET5ANAL* |    . [000,000,181,0]   43 +   1         NET     285929      1  _AAAE[1675]$inv5545
00 ET5ANAL* |   33 [000,000,181,0]   43 +   0    166  LOGIC    73680   4: 2  
00 ET5ANAL* |    . [000,000,181,0]   37 +   6         NET     285931      1  _AAAE[1636]
00 ET5ANAL* |   34 [000,000,181,0]   37 +   0    167  LOGIC    73678   4: 4  
00 ET5ANAL* |    . [000,000,181,3]   36 +   1         NET     285933      4  _AAAE[1630]
00 ET5ANAL* |   35 [000,000,181,3]   36 +   0    168  LOGIC    73676   2: 2  
00 ET5ANAL* |    . [000,000,181,2]   36 +   0         NET     285934      2  _AAAE[1627]
00 ET5ANAL* |   36 [000,000,181,2]   36 +   0    169  LOGIC    73675   2: 2  
00 ET5ANAL* |    . [000,000,181,1]   36 +   0         NET     285935      2  _AAAE[1625]
00 ET5ANAL* |   37 [000,000,181,1]   36 +   0    170  LOGIC    73674   2: 1  
00 ET5ANAL* |    . [000,000,181,0]   36 +   0         NET     285936      2  _AAAE[1623]$inv5544
00 ET5ANAL* |   38 [000,000,181,0]   36 +   0    171  LOGIC    73673   3: 1  
00 ET5ANAL* |    . [000,000,181,3]   35 +   1         NET     285937      2  _ACxjN$inv5543
00 ET5ANAL* |   39 [000,000,181,3]   35 +   0    172  LOGIC    73672   3: 1  
00 ET5ANAL* |    . [000,000,181,2]   35 +   0         NET     285938      2  _AAAE[1620]$inv5542
00 ET5ANAL* |   40 [000,000,181,2]   35 +   0    173  LOGIC    73671   3: 1  
00 ET5ANAL* |    . [000,000,181,1]   35 +   0         NET     285939      2  _ACxjU$inv5541
00 ET5ANAL* |   41 [000,000,181,1]   35 +   0    174  LOGIC    73670   3: 1  
00 ET5ANAL* |    . [000,000,181,0]   35 +   0         NET     285940      2  _AAAE[1616]$inv5540
00 ET5ANAL* |   42 [000,000,181,0]   35 +   0    175  LOGIC    73669   3: 1  
00 ET5ANAL* |    . [000,000,181,3]   34 +   1         NET     285941      2  _ACxjb$inv5539
00 ET5ANAL* |   43 [000,000,181,3]   34 +   0    176  LOGIC    73668   3: 1  
00 ET5ANAL* |    . [000,000,181,2]   34 +   0         NET     285942      2  _AAAE[1613]$inv5538
00 ET5ANAL* |   44 [000,000,181,2]   34 +   0    177  LOGIC    73667   3: 1  
00 ET5ANAL* |    . [000,000,181,1]   34 +   0         NET     285943      2  _ACxji$inv5537
00 ET5ANAL* |   45 [000,000,181,1]   34 +   0    178  LOGIC    73666   3: 1  
00 ET5ANAL* |    . [000,000,181,0]   34 +   0         NET     285947      2  _AAAE[1610]$inv5535
00 ET5ANAL* |   46 [000,000,181,0]   34 +   0    179  LOGIC    73664   3: 1  
00 ET5ANAL* |    . [000,000,181,3]   33 +   1         NET     285951      2  _ACxjp$inv5533
00 ET5ANAL* |   47 [000,000,181,3]   33 +   0    180  LOGIC    73662   3: 3  
00 ET5ANAL* |    . [000,000,181,2]   33 +   0         NET     285956      2  _AAAE[1606]
00 ET5ANAL* |   48 [000,000,181,2]   33 +   0    181  LOGIC    73659   4: 1  
00 ET5ANAL* |    . [000,000,180,3]   31 +   2         NET     285970      2  _AAAE[1599]
00 ET5ANAL* |   49 [000,000,180,3]   31 +   0    183  LOGIC    73644   3: 3  
00 ET5ANAL* |    . [000,000,180,2]   31 +   0         NET     285977      2  _ACxjw$inv5521
00 ET5ANAL* |   50 [000,000,180,2]   31 +   0    185  LOGIC    73636   3: 3  
00 ET5ANAL* |    . [000,000,180,3]   28 +   3         NET     285986      2  _AAAE[1597]$inv5517
00 ET5ANAL* |   51 [000,000,180,3]   28 +   0    186  LOGIC    73627   3: 3  
00 ET5ANAL* |    . [000,000,180,2]   28 +   0         NET     285996      2  _ACxkD$inv5511
00 ET5ANAL* |   52 [000,000,180,2]   28 +   0    187  LOGIC    73617   3: 3  
00 ET5ANAL* |    . [000,000,180,4]   28 +   0         NET     286004      2  _AAAE[1593]$inv5507
00 ET5ANAL* |   53 [000,000,180,4]   28 +   0    188  LOGIC    73609   3: 3  
00 ET5ANAL* |    . [000,000,180,1]   27 +   1         NET     286013      2  _ACxkK$inv5503
00 ET5ANAL* |   54 [000,000,180,1]   27 +   0    189  LOGIC    73600   3: 3  
00 ET5ANAL* |    . [000,000,180,5]   26 +   1         NET     286019      2  _AAAE[1590]$inv5500
00 ET5ANAL* |   55 [000,000,180,5]   26 +   0    190  LOGIC    73594   3: 3  
00 ET5ANAL* |    . [000,000,180,3]   25 +   1         NET     286028      2  _ACxkR$inv5497
00 ET5ANAL* |   56 [000,000,180,3]   25 +   0    191  LOGIC    73586   3: 3  
00 ET5ANAL* |    . [000,000,180,0]   25 +   0         NET     286041      2  _AAAE[1587]$inv5491
00 ET5ANAL* |   57 [000,000,180,0]   25 +   0    192  LOGIC    73575   2: 2  
00 ET5ANAL* |    . [000,000,180,1]   24 +   1         NET     286516      8  _AAAE[5508]
00 ET5ANAL* |   58 [000,000,180,1]   24 +   0    193  LOGIC    73007   4: 1  
00 ET5ANAL* |    . [000,000,180,0]   24 +   0         NET     286517      1  
00 ET5ANAL* |   59 [000,000,180,0]   24 +   0    194  LOGIC    73006   4: 1  
00 ET5ANAL* |    . [000,000,180,0]   23 +   1         NET     324085      2  _AAAE[55918]
00 ET5ANAL* |   60 [000,000,132,0]   20 +   3    198  LOGIC    30417   3: 2  
00 ET5ANAL* |    . [000,000,132,0]   19 +   1         NET     324084      1  _ADmCf
00 ET5ANAL* |   61 [000,000,000,0]   11 +   8    205  XMPRe      456  18:18  ET5_V1_H1.IXC_GFIFO.I.I.U10464
00 ET5ANAL* |    . [000,000,000,0]   11 +   0         NET     323252      1  _ACxWX
00 ET5ANAL* |   62 [000,000,000,0]   10 +   1    207  XMPWe      459  91:90  ET5_V1_H1.IXC_GFIFO.I.I.ixc_gfm_ififo
00 ET5ANAL* |    . [000,000,176,0]    9 +   1         NET     322994      4  _ADmOF
00 ET5ANAL* |   63 [000,000,144,0]    6 +   3    213  LOGIC    80612   3: 2  
00 ET5ANAL* |    . [000,000,144,0]    5 +   1         NET     275099   3639  xc_top.hotSwapOnPI
00 ET5ANAL* |   64 [000,000,217,0]    0 +   5    219  FD01    367235   4: 0  
00 ET5ANAL* | ======================================================================================
00 ET5ANAL* | 
00 ET5ANAL* | Critical paths by steps
00 ET5ANAL* | 
00 ET5ANAL* | Critical path  1                               sinks
00 ET5ANAL* | Count  Location      Step  Jump  Type    ID     ins:cr      Name
00 ET5ANAL* | --------------------------------------------------------------------------------------
00 ET5ANAL* | Breakpoint 30821 will add 101 steps after it is scheduled.
00 ET5ANAL* | Critical net starts from an actual critical location.
00 ET5ANAL* |    . [000,000,145,6]   88 +   0  NET     318549      0  ET6_SYNC.QTLA%break_0
00 ET5ANAL* |    1 [000,000,145,6]   88 +   0  XBOB     30821   2: 1  ET6_XBOB_141
00 ET5ANAL* |    . [000,000,145,0]   87 +   1  NET     318550      1  QTLA%break
00 ET5ANAL* |    2 [000,000,135,1]   84 +   3  LOGIC    72343   2: 2  
00 ET5ANAL* |    . [000,000,135,0]   84 +   0  NET     318369      1  _ET3_COMPILER_RESERVED_NAME_COMBINED_BREAK_
00 ET5ANAL* |    3 [000,000,135,0]   84 +   0  LOGIC    85984   1: 1  
00 ET5ANAL* |    . [000,000,135,0]   83 +   1  NET     320951      2  _ET3_COMPILER_RESERVED_NAME_SDL_BREAK_
00 ET5ANAL* |    4 [000,000,198,3]   78 +   5  LOGIC    72342   4: 4  
00 ET5ANAL* |    . [000,000,198,2]   78 +   0  NET     287022      1  
00 ET5ANAL* |    5 [000,000,198,2]   78 +   0  LOGIC    72341   4: 1  
00 ET5ANAL* |    . [000,000,198,4]   78 +   0  NET     287023      1  _ADoqU$inv5381
00 ET5ANAL* |    6 [000,000,198,4]   78 +   0  LOGIC    72340   4: 3  
00 ET5ANAL* |    . [000,000,198,0]   77 +   1  NET     366265     12  QTLA%SDL.top.run_stop_ctl.stop_request
00 ET5ANAL* |    7 [000,000,238,1]   74 +   3  LOGIC    72285   4: 2  
00 ET5ANAL* |    . [000,000,238,0]   74 +   0  NET     366274      3  QTLA%SDL.top.run_stop_ctl.stop_request_sum
00 ET5ANAL* |    8 [000,000,238,0]   74 +   0  LOGIC    72282   3: 2  
00 ET5ANAL* |    . [000,000,238,0]   73 +   1  NET     287069      2  QTLA%SDL.top.run_stop_ctl.stop_on_trigger
00 ET5ANAL* |    9 [000,000,230,0]   70 +   3  LOGICx   72279   3: 1  
00 ET5ANAL* |    . [000,000,230,3]   69 +   1  NET     364145     67  QTLA%SDL.top.run_stop_ctl.latched_trigger
00 ET5ANAL* |   10 [000,000,230,3]   69 +   0  LOGIC    72219   4: 4  
00 ET5ANAL* |    . [000,000,230,2]   69 +   0  NET     287188      1  _ADoqf
00 ET5ANAL* |   11 [000,000,230,2]   69 +   0  LOGIC    72218   4: 4  
00 ET5ANAL* |    . [000,000,230,1]   69 +   0  NET     287197      3  _ADovA$inv5376
00 ET5ANAL* |   12 [000,000,230,1]   69 +   0  LOGIC    72199   2: 1  
00 ET5ANAL* |    . [000,000,230,0]   69 +   0  NET     287198      2  QTLA%SDL.top.run_stop_ctl.disable_acq_break
00 ET5ANAL* |   13 [000,000,230,0]   69 +   0  LOGIC    72198   2: 1  
00 ET5ANAL* |    . [000,000,230,0]   68 +   1  NET     320993     19  QTLA%SDL.top.run_stop_ctl.tsm_init_restore
00 ET5ANAL* |   14 [000,000,198,2]   65 +   3  LOGIC    72189   2: 1  
00 ET5ANAL* |    . [000,000,198,1]   65 +   0  NET     321031     92  QTLA%SDL.top.tsm_restore
00 ET5ANAL* |   15 [000,000,198,1]   65 +   0  LOGIC    72064   2: 2  
00 ET5ANAL* |    . [000,000,198,0]   65 +   0  NET     321032     20  QTLA%SDL.top.tsm_init
00 ET5ANAL* |   16 [000,000,198,0]   65 +   0  LOGIC    72062   4: 4  
00 ET5ANAL* |    . [000,000,198,3]   64 +   1  NET     364645      2  QTLA%SDL.top.run_stop_ctl.tsx1
00 ET5ANAL* |   17 [000,000,198,3]   64 +   0  LOGIC    72061   4: 3  
00 ET5ANAL* |    . [000,000,198,2]   64 +   0  NET     287412      6  QTLA%SDL.top.run_stop_ctl.sim_or_rtl_data_valid
00 ET5ANAL* |   18 [000,000,198,2]   64 +   0  LOGIC    72055   3: 2  
00 ET5ANAL* |    . [000,000,198,1]   64 +   0  NET     364452      2  QTLA%SDL.top.run_stop_ctl.lbrOn_mask
00 ET5ANAL* |   19 [000,000,198,1]   64 +   0  LOGIC    72054   4: 4  
00 ET5ANAL* |    . [000,000,198,0]   64 +   0  NET     287413      1  QTLA%SDL.top.run_stop_ctl.lbrOn_posedge
00 ET5ANAL* |   20 [000,000,198,0]   64 +   0  LOGIC    72053   4: 3  
00 ET5ANAL* |    . [000,000,199,0]   62 +   2  NET     287415      2  CVA_UA_1X_ANY_PHASE_ACTIVE
00 ET5ANAL* |   21 [000,000,199,0]   62 +   0  LOGIC    72051   2: 2  
00 ET5ANAL* |    . [000,000,199,3]   61 +   1  NET     337771      3  xc_top.evalOn
00 ET5ANAL* |   22 [000,000,199,3]   61 +   0  LOGIC    72048   4: 3  
00 ET5ANAL* |    . [000,000,199,2]   61 +   0  NET     325794      2  _AAAC[27355]
00 ET5ANAL* |   23 [000,000,199,2]   61 +   0  LOGIC    37757   2: 1  
00 ET5ANAL* |    . [000,000,199,1]   61 +   0  NET     133033      3  _AAAC[28815]
00 ET5ANAL* |   24 [000,000,199,1]   61 +   0  LOGIC   275852   4: 1  
00 ET5ANAL* |    . [000,000,199,0]   61 +   0  NET      86613      1  _AAAC[27334]$inv18404
00 ET5ANAL* |   25 [000,000,199,0]   61 +   0  LOGIC   275851   4: 1  
00 ET5ANAL* |    . [000,000,199,3]   60 +   1  NET      86614      1  
00 ET5ANAL* |   26 [000,000,199,3]   60 +   0  LOGIC   275850   4: 4  
00 ET5ANAL* |    . [000,000,199,2]   60 +   0  NET     325315     24  _AAAA[6754]
00 ET5ANAL* |   27 [000,000,199,2]   60 +   0  LOGIC    77307   4: 4  
00 ET5ANAL* |    . [000,000,199,1]   60 +   0  NET     284103      1  _AAAA[5472]$inv6121
00 ET5ANAL* |   28 [000,000,199,1]   60 +   0  LOGIC    85353   3: 1  
00 ET5ANAL* |    . [000,000,199,0]   60 +   0  NET     285634      9  _AAAA[6084]
00 ET5ANAL* |   29 [000,000,199,0]   60 +   0  LOGIC    74085   3: 1  
00 ET5ANAL* |    . [000,000,199,0]   59 +   1  NET     285866      1  _AAAA[6086]
00 ET5ANAL* |   30 [000,000,199,0]   59 +   0  LOGIC    73740   4: 1  
00 ET5ANAL* |    . [000,000,199,0]   58 +   1  NET     285867      1  
00 ET5ANAL* |   31 [000,000,186,0]   53 +   5  LOGIC    73739   4: 3  
00 ET5ANAL* |    . [000,000,186,0]   52 +   1  NET     333516    417  IXC_GFIFO.I.I.rptr[1]
00 ET5ANAL* |   32 [000,000,180,4]   49 +   3  LOGIC    73713   2: 2  
00 ET5ANAL* |    . [000,000,181,7]   47 +   2  NET     285897      6  _AAAE[252]
00 ET5ANAL* |   33 [000,000,181,7]   47 +   0  LOGIC    73712   3: 2  
00 ET5ANAL* |    . [000,000,181,5]   46 +   1  NET     285948      1  _AAAE[1642]$inv5534
00 ET5ANAL* |   34 [000,000,181,5]   46 +   0  LOGIC    73663   3: 2  
00 ET5ANAL* |    . [000,000,181,0]   46 +   0  NET     285950      1  
00 ET5ANAL* |   35 [000,000,181,0]   46 +   0  LOGIC    85195   4: 1  
00 ET5ANAL* |    . [000,000,181,3]   39 +   7  NET     286115      7  
00 ET5ANAL* |   36 [000,000,181,3]   39 +   0  LOGIC    73492   2: 1  
00 ET5ANAL* |    . [000,000,181,2]   39 +   0  NET     286116     44  _AAAE[1912]
00 ET5ANAL* |   37 [000,000,181,2]   39 +   0  LOGIC    73491   2: 1  
00 ET5ANAL* |    . [000,000,181,1]   39 +   0  NET     286117      1  _AAAE[1886]
00 ET5ANAL* |   38 [000,000,181,1]   39 +   0  LOGIC    73490   4: 1  
00 ET5ANAL* |    . [000,000,181,0]   39 +   0  NET     286177      2  _AAAE[1888]$inv5470
00 ET5ANAL* |   39 [000,000,181,0]   39 +   0  LOGIC    73419   2: 2  
00 ET5ANAL* |    . [000,000,181,0]   38 +   1  NET     286225      4  _AAAE[1921]
00 ET5ANAL* |   40 [000,000,132,4]   35 +   3  LOGICx   73360   3: 1  
00 ET5ANAL* |    . [000,000,132,0]   34 +   1  NET     286389      2  _AAAE[1498]
00 ET5ANAL* |   41 [000,000,132,0]   34 +   0  LOGIC    73150   4: 2  
00 ET5ANAL* |    . [000,000,130,1]   32 +   2  NET     286432      3  _AAAE[5520]
00 ET5ANAL* |   42 [000,000,130,1]   32 +   0  LOGIC    73102   4: 1  
00 ET5ANAL* |    . [000,000,130,0]   32 +   0  NET     286433      1  
00 ET5ANAL* |   43 [000,000,130,0]   32 +   0  LOGIC    73101   4: 2  
00 ET5ANAL* |    . [000,000,130,0]   31 +   1  NET     324191      3  _AAAE[55678]
00 ET5ANAL* |   44 [000,000,034,5]   25 +   6  LOGIC    30364   3: 2  
00 ET5ANAL* |    . [000,000,034,6]   24 +   1  NET     324190      1  _ADmDg
00 ET5ANAL* |   45 [000,000,000,0]   11 +  13  XMPRe   367493  18:18  ET5_V2_H1.IXC_GFIFO.I.I.U10464
00 ET5ANAL* |    . [000,000,000,0]   10 +   1  NET     132378      1  
00 ET5ANAL* |   46 [000,000,000,0]   10 +   0  XMPWe   367087  91:90  ET5_V2_H1.IXC_GFIFO.I.I.ixc_gfm_ififo
00 ET5ANAL* |    . [000,000,160,0]    9 +   1  NET     322994      4  _ADmOF
00 ET5ANAL* |   47 [000,000,144,0]    6 +   3  LOGIC    80612   3: 2  
00 ET5ANAL* |    . [000,000,144,0]    5 +   1  NET     275099   3639  xc_top.hotSwapOnPI
00 ET5ANAL* |   48 [000,000,217,0]    0 +   5  FD01    367235   4: 0  
00 ET5ANAL* | --------------------------------------------------------------------------------------
00 ET5ANAL* | Maximum jump of 13 steps occurs at step 11
00 ET5ANAL* | 0 inter-chip hops, 0 steps inter-chip delay
00 ET5ANAL* | ======================================================================================
00 ET5ANAL* | End of critical path
00 ET5ANAL* | 
00 ET5ANAL* | 
00 ET5ANAL* | 
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5analyzer' (Elapsed time 0.02s (0.14u+0.00s), Memory used 4600 Mb) on 05/21/2024 16:19:16
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/SCsched' (Elapsed time 1.65s (2.04u+0.11s), Memory used 4600 Mb) on 05/21/2024 16:19:16
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6xtime' on 05/21/2024 16:19:16
00 DATABASE | Parms: ''
00 ET6XTIME |                                    
00 ET6XTIME |                ET6 EXTERNAL TIMING ANALYZER AND BITGEN
00 ET6XTIME |                            RELEASE 6.0.2.6
00 ET6XTIME |                                    
00 ET6XTIME | et6xtime created on Aug  3 2023 at 22:13:09.
00 ET6XTIME | found breakpoint at ep 1166 box 30821 signal QTLA%break
00 ET6XTIME | There are no targets defined in the design
00 ET6XTIME | 
00 ET6XTIME | Generated xtime and ttime files
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6xtime' (Elapsed time 0.00s (0.00u+0.00s), Memory used 4600 Mb) on 05/21/2024 16:19:16
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lconf' on 05/21/2024 16:19:16
00 DATABASE | Parms: ''
00 ET3LCONF | * dbFiles/etapi.mem_slices creation file starts at 16:19:16, finishes at 16:19:16. Saved 213 slices, wrote 17040 bytes. (rc: 0)
00 ET3LCONF | * COMPILED without WIRE_DUPLICATION, for a SINGLE_SUBSET, with SIM_ACCEL 
00 ET3LCONF | COMPILED ON 05/21/2024 AT 16:19:14 WITH SEED 266172613
00 ET3LCONF | MINOR_CYCLES_PER_MAJOR_CYCLE  192
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lconf' (Elapsed time 0.00s (0.00u+0.01s), Memory used 4600 Mb) on 05/21/2024 16:19:16
00 DATABASE | Calling 'svproto' on 05/21/2024 16:19:16
00 DATABASE | Parms: 'xcva_top'
00 DATABASE | Return from 'svproto' (Elapsed time 0.27s (0.15u+0.03s), Memory used 4600 Mb) on 05/21/2024 16:19:16
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
